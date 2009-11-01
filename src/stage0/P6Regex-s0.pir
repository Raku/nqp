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
.sub "_block11"  :anon :subid("10_1257089954.58465")
.annotate "line", 0
    get_hll_global $P14, ["Regex";"P6Regex";"Grammar"], "_block13" 
    capture_lex $P14
.annotate "line", 3
    get_hll_global $P14, ["Regex";"P6Regex";"Grammar"], "_block13" 
    capture_lex $P14
    $P522 = $P14()
.annotate "line", 1
    .return ($P522)
.end


.namespace []
.sub "" :load :init :subid("post158") :outer("10_1257089954.58465")
.annotate "line", 0
    .const 'Sub' $P12 = "10_1257089954.58465" 
    .local pmc block
    set block, $P12
    $P523 = get_root_global ["parrot"], "P6metaclass"
    $P523."new_class"("Regex::P6Regex::Grammar", "HLL::Grammar" :named("parent"))
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block13"  :subid("11_1257089954.58465") :outer("10_1257089954.58465")
.annotate "line", 3
    .const 'Sub' $P515 = "156_1257089954.58465" 
    capture_lex $P515
    .const 'Sub' $P508 = "154_1257089954.58465" 
    capture_lex $P508
    .const 'Sub' $P501 = "152_1257089954.58465" 
    capture_lex $P501
    .const 'Sub' $P481 = "147_1257089954.58465" 
    capture_lex $P481
    .const 'Sub' $P447 = "141_1257089954.58465" 
    capture_lex $P447
    .const 'Sub' $P436 = "138_1257089954.58465" 
    capture_lex $P436
    .const 'Sub' $P424 = "135_1257089954.58465" 
    capture_lex $P424
    .const 'Sub' $P419 = "133_1257089954.58465" 
    capture_lex $P419
    .const 'Sub' $P409 = "130_1257089954.58465" 
    capture_lex $P409
    .const 'Sub' $P399 = "127_1257089954.58465" 
    capture_lex $P399
    .const 'Sub' $P391 = "123_1257089954.58465" 
    capture_lex $P391
    .const 'Sub' $P386 = "121_1257089954.58465" 
    capture_lex $P386
    .const 'Sub' $P381 = "119_1257089954.58465" 
    capture_lex $P381
    .const 'Sub' $P376 = "117_1257089954.58465" 
    capture_lex $P376
    .const 'Sub' $P371 = "115_1257089954.58465" 
    capture_lex $P371
    .const 'Sub' $P361 = "113_1257089954.58465" 
    capture_lex $P361
    .const 'Sub' $P351 = "111_1257089954.58465" 
    capture_lex $P351
    .const 'Sub' $P344 = "109_1257089954.58465" 
    capture_lex $P344
    .const 'Sub' $P339 = "107_1257089954.58465" 
    capture_lex $P339
    .const 'Sub' $P334 = "105_1257089954.58465" 
    capture_lex $P334
    .const 'Sub' $P329 = "103_1257089954.58465" 
    capture_lex $P329
    .const 'Sub' $P324 = "101_1257089954.58465" 
    capture_lex $P324
    .const 'Sub' $P319 = "99_1257089954.58465" 
    capture_lex $P319
    .const 'Sub' $P314 = "97_1257089954.58465" 
    capture_lex $P314
    .const 'Sub' $P309 = "95_1257089954.58465" 
    capture_lex $P309
    .const 'Sub' $P304 = "93_1257089954.58465" 
    capture_lex $P304
    .const 'Sub' $P293 = "89_1257089954.58465" 
    capture_lex $P293
    .const 'Sub' $P282 = "87_1257089954.58465" 
    capture_lex $P282
    .const 'Sub' $P276 = "85_1257089954.58465" 
    capture_lex $P276
    .const 'Sub' $P260 = "83_1257089954.58465" 
    capture_lex $P260
    .const 'Sub' $P254 = "81_1257089954.58465" 
    capture_lex $P254
    .const 'Sub' $P249 = "79_1257089954.58465" 
    capture_lex $P249
    .const 'Sub' $P244 = "77_1257089954.58465" 
    capture_lex $P244
    .const 'Sub' $P238 = "75_1257089954.58465" 
    capture_lex $P238
    .const 'Sub' $P232 = "73_1257089954.58465" 
    capture_lex $P232
    .const 'Sub' $P227 = "71_1257089954.58465" 
    capture_lex $P227
    .const 'Sub' $P222 = "69_1257089954.58465" 
    capture_lex $P222
    .const 'Sub' $P217 = "67_1257089954.58465" 
    capture_lex $P217
    .const 'Sub' $P212 = "65_1257089954.58465" 
    capture_lex $P212
    .const 'Sub' $P207 = "63_1257089954.58465" 
    capture_lex $P207
    .const 'Sub' $P202 = "61_1257089954.58465" 
    capture_lex $P202
    .const 'Sub' $P197 = "59_1257089954.58465" 
    capture_lex $P197
    .const 'Sub' $P192 = "57_1257089954.58465" 
    capture_lex $P192
    .const 'Sub' $P187 = "55_1257089954.58465" 
    capture_lex $P187
    .const 'Sub' $P182 = "53_1257089954.58465" 
    capture_lex $P182
    .const 'Sub' $P177 = "51_1257089954.58465" 
    capture_lex $P177
    .const 'Sub' $P162 = "46_1257089954.58465" 
    capture_lex $P162
    .const 'Sub' $P151 = "44_1257089954.58465" 
    capture_lex $P151
    .const 'Sub' $P145 = "42_1257089954.58465" 
    capture_lex $P145
    .const 'Sub' $P139 = "40_1257089954.58465" 
    capture_lex $P139
    .const 'Sub' $P133 = "38_1257089954.58465" 
    capture_lex $P133
    .const 'Sub' $P115 = "33_1257089954.58465" 
    capture_lex $P115
    .const 'Sub' $P103 = "30_1257089954.58465" 
    capture_lex $P103
    .const 'Sub' $P97 = "28_1257089954.58465" 
    capture_lex $P97
    .const 'Sub' $P86 = "26_1257089954.58465" 
    capture_lex $P86
    .const 'Sub' $P80 = "24_1257089954.58465" 
    capture_lex $P80
    .const 'Sub' $P68 = "22_1257089954.58465" 
    capture_lex $P68
    .const 'Sub' $P61 = "20_1257089954.58465" 
    capture_lex $P61
    .const 'Sub' $P54 = "18_1257089954.58465" 
    capture_lex $P54
    .const 'Sub' $P45 = "15_1257089954.58465" 
    capture_lex $P45
    .const 'Sub' $P38 = "13_1257089954.58465" 
    capture_lex $P38
    .const 'Sub' $P15 = "12_1257089954.58465" 
    capture_lex $P15
    .const 'Sub' $P515 = "156_1257089954.58465" 
    capture_lex $P515
    .return ($P515)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "obs"  :subid("12_1257089954.58465") :method :outer("11_1257089954.58465")
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
.sub "ws"  :subid("13_1257089954.58465") :method :outer("11_1257089954.58465")
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
.sub "!PREFIX__ws"  :subid("14_1257089954.58465") :method
.annotate "line", 3
    new $P41, "ResizablePMCArray"
    push $P41, ""
    .return ($P41)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "normspace"  :subid("15_1257089954.58465") :method :outer("11_1257089954.58465")
.annotate "line", 3
    .const 'Sub' $P50 = "17_1257089954.58465" 
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
    .const 'Sub' $P50 = "17_1257089954.58465" 
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
.sub "!PREFIX__normspace"  :subid("16_1257089954.58465") :method
.annotate "line", 3
    new $P48, "ResizablePMCArray"
    push $P48, ""
    .return ($P48)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block49"  :anon :subid("17_1257089954.58465") :method :outer("15_1257089954.58465")
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
.sub "quote"  :subid("18_1257089954.58465") :method :outer("11_1257089954.58465")
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
.sub "!PREFIX__quote"  :subid("19_1257089954.58465") :method
.annotate "line", 3
    new $P57, "ResizablePMCArray"
    push $P57, "'"
    .return ($P57)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "arg"  :subid("20_1257089954.58465") :method :outer("11_1257089954.58465")
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
  # rx subcapture "value"
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
    $P10."!cursor_names"("value")
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
.sub "!PREFIX__arg"  :subid("21_1257089954.58465") :method
.annotate "line", 3
    $P64 = self."!PREFIX__!subrule"("quote", "")
    new $P65, "ResizablePMCArray"
    push $P65, ""
    push $P65, $P64
    .return ($P65)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "arglist"  :subid("22_1257089954.58465") :method :outer("11_1257089954.58465")
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
    set_addr $I78, rxquantr74_done
    rx69_cur."!mark_push"(0, rx69_pos, $I78)
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
  # rx subrule "ws" subtype=method negate=
    rx69_cur."!cursor_pos"(rx69_pos)
    $P10 = rx69_cur."ws"()
    unless $P10, rx69_fail
    rx69_pos = $P10."pos"()
    (rx69_rep) = rx69_cur."!mark_commit"($I78)
    rx69_cur."!mark_push"(rx69_rep, rx69_pos, $I78)
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
.sub "!PREFIX__arglist"  :subid("23_1257089954.58465") :method
.annotate "line", 3
    new $P71, "ResizablePMCArray"
    push $P71, ""
    .return ($P71)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "TOP"  :subid("24_1257089954.58465") :method :outer("11_1257089954.58465")
.annotate "line", 3
    .local string rx81_tgt
    .local int rx81_pos
    .local int rx81_off
    .local int rx81_eos
    .local int rx81_rep
    .local pmc rx81_cur
    (rx81_cur, rx81_pos, rx81_tgt, $I10) = self."!cursor_start"()
    rx81_cur."!cursor_debug"("START ", "TOP")
    .lex unicode:"$\x{a2}", rx81_cur
    .local pmc match
    .lex "$/", match
    length rx81_eos, rx81_tgt
    set rx81_off, 0
    lt $I10, 2, rx81_start
    sub rx81_off, $I10, 1
    substr rx81_tgt, rx81_tgt, rx81_off
  rx81_start:
.annotate "line", 24
  # rx subrule "nibbler" subtype=capture negate=
    rx81_cur."!cursor_pos"(rx81_pos)
    $P10 = rx81_cur."nibbler"()
    unless $P10, rx81_fail
    rx81_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx81_pos = $P10."pos"()
  alt85_0:
.annotate "line", 25
    set_addr $I10, alt85_1
    rx81_cur."!mark_push"(0, rx81_pos, $I10)
  # rxanchor eos
    ne rx81_pos, rx81_eos, rx81_fail
    goto alt85_end
  alt85_1:
  # rx subrule "panic" subtype=method negate=
    rx81_cur."!cursor_pos"(rx81_pos)
    $P10 = rx81_cur."panic"("Confused")
    unless $P10, rx81_fail
    rx81_pos = $P10."pos"()
  alt85_end:
.annotate "line", 23
  # rx pass
    rx81_cur."!cursor_pass"(rx81_pos, "TOP")
    rx81_cur."!cursor_debug"("PASS  ", "TOP", " at pos=", rx81_pos)
    .return (rx81_cur)
  rx81_fail:
.annotate "line", 3
    (rx81_rep, rx81_pos, $I10, $P10) = rx81_cur."!mark_fail"(0)
    lt rx81_pos, -1, rx81_done
    eq rx81_pos, -1, rx81_fail
    jump $I10
  rx81_done:
    rx81_cur."!cursor_fail"()
    rx81_cur."!cursor_debug"("FAIL  ", "TOP")
    .return (rx81_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__TOP"  :subid("25_1257089954.58465") :method
.annotate "line", 3
    $P83 = self."!PREFIX__!subrule"("nibbler", "")
    new $P84, "ResizablePMCArray"
    push $P84, $P83
    .return ($P84)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "nibbler"  :subid("26_1257089954.58465") :method :outer("11_1257089954.58465")
.annotate "line", 3
    .local string rx87_tgt
    .local int rx87_pos
    .local int rx87_off
    .local int rx87_eos
    .local int rx87_rep
    .local pmc rx87_cur
    (rx87_cur, rx87_pos, rx87_tgt, $I10) = self."!cursor_start"()
    rx87_cur."!cursor_debug"("START ", "nibbler")
    rx87_cur."!cursor_caparray"("termish")
    .lex unicode:"$\x{a2}", rx87_cur
    .local pmc match
    .lex "$/", match
    length rx87_eos, rx87_tgt
    set rx87_off, 0
    lt $I10, 2, rx87_start
    sub rx87_off, $I10, 1
    substr rx87_tgt, rx87_tgt, rx87_off
  rx87_start:
.annotate "line", 29
  # rx reduce name="nibbler" key="open"
    rx87_cur."!cursor_pos"(rx87_pos)
    rx87_cur."!reduce"("nibbler", "open")
.annotate "line", 30
  # rx rxquantr90 ** 0..1
    set_addr $I92, rxquantr90_done
    rx87_cur."!mark_push"(0, rx87_pos, $I92)
  rxquantr90_loop:
  # rx subrule "ws" subtype=method negate=
    rx87_cur."!cursor_pos"(rx87_pos)
    $P10 = rx87_cur."ws"()
    unless $P10, rx87_fail
    rx87_pos = $P10."pos"()
  alt91_0:
    set_addr $I10, alt91_1
    rx87_cur."!mark_push"(0, rx87_pos, $I10)
  # rx literal  "||"
    add $I11, rx87_pos, 2
    gt $I11, rx87_eos, rx87_fail
    sub $I11, rx87_pos, rx87_off
    substr $S10, rx87_tgt, $I11, 2
    ne $S10, "||", rx87_fail
    add rx87_pos, 2
    goto alt91_end
  alt91_1:
    set_addr $I10, alt91_2
    rx87_cur."!mark_push"(0, rx87_pos, $I10)
  # rx literal  "|"
    add $I11, rx87_pos, 1
    gt $I11, rx87_eos, rx87_fail
    sub $I11, rx87_pos, rx87_off
    substr $S10, rx87_tgt, $I11, 1
    ne $S10, "|", rx87_fail
    add rx87_pos, 1
    goto alt91_end
  alt91_2:
    set_addr $I10, alt91_3
    rx87_cur."!mark_push"(0, rx87_pos, $I10)
  # rx literal  "&&"
    add $I11, rx87_pos, 2
    gt $I11, rx87_eos, rx87_fail
    sub $I11, rx87_pos, rx87_off
    substr $S10, rx87_tgt, $I11, 2
    ne $S10, "&&", rx87_fail
    add rx87_pos, 2
    goto alt91_end
  alt91_3:
  # rx literal  "&"
    add $I11, rx87_pos, 1
    gt $I11, rx87_eos, rx87_fail
    sub $I11, rx87_pos, rx87_off
    substr $S10, rx87_tgt, $I11, 1
    ne $S10, "&", rx87_fail
    add rx87_pos, 1
  alt91_end:
    (rx87_rep) = rx87_cur."!mark_commit"($I92)
  rxquantr90_done:
.annotate "line", 31
  # rx subrule "termish" subtype=capture negate=
    rx87_cur."!cursor_pos"(rx87_pos)
    $P10 = rx87_cur."termish"()
    unless $P10, rx87_fail
    rx87_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termish")
    rx87_pos = $P10."pos"()
.annotate "line", 34
  # rx rxquantr93 ** 0..*
    set_addr $I96, rxquantr93_done
    rx87_cur."!mark_push"(0, rx87_pos, $I96)
  rxquantr93_loop:
  alt94_0:
.annotate "line", 32
    set_addr $I10, alt94_1
    rx87_cur."!mark_push"(0, rx87_pos, $I10)
  # rx literal  "||"
    add $I11, rx87_pos, 2
    gt $I11, rx87_eos, rx87_fail
    sub $I11, rx87_pos, rx87_off
    substr $S10, rx87_tgt, $I11, 2
    ne $S10, "||", rx87_fail
    add rx87_pos, 2
    goto alt94_end
  alt94_1:
  # rx literal  "|"
    add $I11, rx87_pos, 1
    gt $I11, rx87_eos, rx87_fail
    sub $I11, rx87_pos, rx87_off
    substr $S10, rx87_tgt, $I11, 1
    ne $S10, "|", rx87_fail
    add rx87_pos, 1
  alt94_end:
  alt95_0:
.annotate "line", 33
    set_addr $I10, alt95_1
    rx87_cur."!mark_push"(0, rx87_pos, $I10)
  # rx subrule "termish" subtype=capture negate=
    rx87_cur."!cursor_pos"(rx87_pos)
    $P10 = rx87_cur."termish"()
    unless $P10, rx87_fail
    rx87_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termish")
    rx87_pos = $P10."pos"()
    goto alt95_end
  alt95_1:
  # rx subrule "panic" subtype=method negate=
    rx87_cur."!cursor_pos"(rx87_pos)
    $P10 = rx87_cur."panic"("Null pattern not allowed")
    unless $P10, rx87_fail
    rx87_pos = $P10."pos"()
  alt95_end:
.annotate "line", 34
    (rx87_rep) = rx87_cur."!mark_commit"($I96)
    rx87_cur."!mark_push"(rx87_rep, rx87_pos, $I96)
    goto rxquantr93_loop
  rxquantr93_done:
.annotate "line", 28
  # rx pass
    rx87_cur."!cursor_pass"(rx87_pos, "nibbler")
    rx87_cur."!cursor_debug"("PASS  ", "nibbler", " at pos=", rx87_pos)
    .return (rx87_cur)
  rx87_fail:
.annotate "line", 3
    (rx87_rep, rx87_pos, $I10, $P10) = rx87_cur."!mark_fail"(0)
    lt rx87_pos, -1, rx87_done
    eq rx87_pos, -1, rx87_fail
    jump $I10
  rx87_done:
    rx87_cur."!cursor_fail"()
    rx87_cur."!cursor_debug"("FAIL  ", "nibbler")
    .return (rx87_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__nibbler"  :subid("27_1257089954.58465") :method
.annotate "line", 3
    new $P89, "ResizablePMCArray"
    push $P89, ""
    .return ($P89)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "termish"  :subid("28_1257089954.58465") :method :outer("11_1257089954.58465")
.annotate "line", 3
    .local string rx98_tgt
    .local int rx98_pos
    .local int rx98_off
    .local int rx98_eos
    .local int rx98_rep
    .local pmc rx98_cur
    (rx98_cur, rx98_pos, rx98_tgt, $I10) = self."!cursor_start"()
    rx98_cur."!cursor_debug"("START ", "termish")
    rx98_cur."!cursor_caparray"("noun")
    .lex unicode:"$\x{a2}", rx98_cur
    .local pmc match
    .lex "$/", match
    length rx98_eos, rx98_tgt
    set rx98_off, 0
    lt $I10, 2, rx98_start
    sub rx98_off, $I10, 1
    substr rx98_tgt, rx98_tgt, rx98_off
  rx98_start:
.annotate "line", 38
  # rx rxquantr101 ** 1..*
    set_addr $I102, rxquantr101_done
    rx98_cur."!mark_push"(0, -1, $I102)
  rxquantr101_loop:
  # rx subrule "quantified_atom" subtype=capture negate=
    rx98_cur."!cursor_pos"(rx98_pos)
    $P10 = rx98_cur."quantified_atom"()
    unless $P10, rx98_fail
    rx98_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("noun")
    rx98_pos = $P10."pos"()
    (rx98_rep) = rx98_cur."!mark_commit"($I102)
    rx98_cur."!mark_push"(rx98_rep, rx98_pos, $I102)
    goto rxquantr101_loop
  rxquantr101_done:
.annotate "line", 37
  # rx pass
    rx98_cur."!cursor_pass"(rx98_pos, "termish")
    rx98_cur."!cursor_debug"("PASS  ", "termish", " at pos=", rx98_pos)
    .return (rx98_cur)
  rx98_fail:
.annotate "line", 3
    (rx98_rep, rx98_pos, $I10, $P10) = rx98_cur."!mark_fail"(0)
    lt rx98_pos, -1, rx98_done
    eq rx98_pos, -1, rx98_fail
    jump $I10
  rx98_done:
    rx98_cur."!cursor_fail"()
    rx98_cur."!cursor_debug"("FAIL  ", "termish")
    .return (rx98_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__termish"  :subid("29_1257089954.58465") :method
.annotate "line", 3
    new $P100, "ResizablePMCArray"
    push $P100, ""
    .return ($P100)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantified_atom"  :subid("30_1257089954.58465") :method :outer("11_1257089954.58465")
.annotate "line", 3
    .const 'Sub' $P111 = "32_1257089954.58465" 
    capture_lex $P111
    .local string rx104_tgt
    .local int rx104_pos
    .local int rx104_off
    .local int rx104_eos
    .local int rx104_rep
    .local pmc rx104_cur
    (rx104_cur, rx104_pos, rx104_tgt, $I10) = self."!cursor_start"()
    rx104_cur."!cursor_debug"("START ", "quantified_atom")
    rx104_cur."!cursor_caparray"("quantifier", "backmod")
    .lex unicode:"$\x{a2}", rx104_cur
    .local pmc match
    .lex "$/", match
    length rx104_eos, rx104_tgt
    set rx104_off, 0
    lt $I10, 2, rx104_start
    sub rx104_off, $I10, 1
    substr rx104_tgt, rx104_tgt, rx104_off
  rx104_start:
.annotate "line", 42
  # rx subrule "atom" subtype=capture negate=
    rx104_cur."!cursor_pos"(rx104_pos)
    $P10 = rx104_cur."atom"()
    unless $P10, rx104_fail
    rx104_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("atom")
    rx104_pos = $P10."pos"()
  # rx rxquantr108 ** 0..1
    set_addr $I114, rxquantr108_done
    rx104_cur."!mark_push"(0, rx104_pos, $I114)
  rxquantr108_loop:
  # rx subrule "ws" subtype=method negate=
    rx104_cur."!cursor_pos"(rx104_pos)
    $P10 = rx104_cur."ws"()
    unless $P10, rx104_fail
    rx104_pos = $P10."pos"()
  alt109_0:
    set_addr $I10, alt109_1
    rx104_cur."!mark_push"(0, rx104_pos, $I10)
  # rx subrule "quantifier" subtype=capture negate=
    rx104_cur."!cursor_pos"(rx104_pos)
    $P10 = rx104_cur."quantifier"()
    unless $P10, rx104_fail
    rx104_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantifier")
    rx104_pos = $P10."pos"()
    goto alt109_end
  alt109_1:
  # rx subrule "before" subtype=zerowidth negate=
    rx104_cur."!cursor_pos"(rx104_pos)
    .const 'Sub' $P111 = "32_1257089954.58465" 
    capture_lex $P111
    $P10 = rx104_cur."before"($P111)
    unless $P10, rx104_fail
  # rx subrule "backmod" subtype=capture negate=
    rx104_cur."!cursor_pos"(rx104_pos)
    $P10 = rx104_cur."backmod"()
    unless $P10, rx104_fail
    rx104_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx104_pos = $P10."pos"()
  # rx subrule "alpha" subtype=zerowidth negate=1
    rx104_cur."!cursor_pos"(rx104_pos)
    $P10 = rx104_cur."alpha"()
    if $P10, rx104_fail
  alt109_end:
    (rx104_rep) = rx104_cur."!mark_commit"($I114)
  rxquantr108_done:
.annotate "line", 41
  # rx pass
    rx104_cur."!cursor_pass"(rx104_pos, "quantified_atom")
    rx104_cur."!cursor_debug"("PASS  ", "quantified_atom", " at pos=", rx104_pos)
    .return (rx104_cur)
  rx104_fail:
.annotate "line", 3
    (rx104_rep, rx104_pos, $I10, $P10) = rx104_cur."!mark_fail"(0)
    lt rx104_pos, -1, rx104_done
    eq rx104_pos, -1, rx104_fail
    jump $I10
  rx104_done:
    rx104_cur."!cursor_fail"()
    rx104_cur."!cursor_debug"("FAIL  ", "quantified_atom")
    .return (rx104_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantified_atom"  :subid("31_1257089954.58465") :method
.annotate "line", 3
    $P106 = self."!PREFIX__!subrule"("atom", "")
    new $P107, "ResizablePMCArray"
    push $P107, $P106
    .return ($P107)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block110"  :anon :subid("32_1257089954.58465") :method :outer("30_1257089954.58465")
.annotate "line", 42
    .local string rx112_tgt
    .local int rx112_pos
    .local int rx112_off
    .local int rx112_eos
    .local int rx112_rep
    .local pmc rx112_cur
    (rx112_cur, rx112_pos, rx112_tgt, $I10) = self."!cursor_start"()
    rx112_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx112_cur
    .local pmc match
    .lex "$/", match
    length rx112_eos, rx112_tgt
    set rx112_off, 0
    lt $I10, 2, rx112_start
    sub rx112_off, $I10, 1
    substr rx112_tgt, rx112_tgt, rx112_off
  rx112_start:
    ge rx112_pos, 0, rxscan113_done
  rxscan113_loop:
    ($P10) = rx112_cur."from"()
    inc $P10
    set rx112_pos, $P10
    ge rx112_pos, rx112_eos, rxscan113_done
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
.sub "atom"  :subid("33_1257089954.58465") :method :outer("11_1257089954.58465")
.annotate "line", 3
    .const 'Sub' $P125 = "35_1257089954.58465" 
    capture_lex $P125
    .local string rx116_tgt
    .local int rx116_pos
    .local int rx116_off
    .local int rx116_eos
    .local int rx116_rep
    .local pmc rx116_cur
    (rx116_cur, rx116_pos, rx116_tgt, $I10) = self."!cursor_start"()
    rx116_cur."!cursor_debug"("START ", "atom")
    .lex unicode:"$\x{a2}", rx116_cur
    .local pmc match
    .lex "$/", match
    length rx116_eos, rx116_tgt
    set rx116_off, 0
    lt $I10, 2, rx116_start
    sub rx116_off, $I10, 1
    substr rx116_tgt, rx116_tgt, rx116_off
  rx116_start:
  alt120_0:
.annotate "line", 47
    set_addr $I10, alt120_1
    rx116_cur."!mark_push"(0, rx116_pos, $I10)
.annotate "line", 48
  # rx charclass w
    ge rx116_pos, rx116_eos, rx116_fail
    sub $I10, rx116_pos, rx116_off
    is_cclass $I11, 8192, rx116_tgt, $I10
    unless $I11, rx116_fail
    inc rx116_pos
  # rx rxquantr121 ** 0..1
    set_addr $I128, rxquantr121_done
    rx116_cur."!mark_push"(0, rx116_pos, $I128)
  rxquantr121_loop:
  # rx rxquantg122 ** 1..*
    set_addr $I123, rxquantg122_done
  rxquantg122_loop:
  # rx charclass w
    ge rx116_pos, rx116_eos, rx116_fail
    sub $I10, rx116_pos, rx116_off
    is_cclass $I11, 8192, rx116_tgt, $I10
    unless $I11, rx116_fail
    inc rx116_pos
    rx116_cur."!mark_push"(rx116_rep, rx116_pos, $I123)
    goto rxquantg122_loop
  rxquantg122_done:
  # rx subrule "before" subtype=zerowidth negate=
    rx116_cur."!cursor_pos"(rx116_pos)
    .const 'Sub' $P125 = "35_1257089954.58465" 
    capture_lex $P125
    $P10 = rx116_cur."before"($P125)
    unless $P10, rx116_fail
    (rx116_rep) = rx116_cur."!mark_commit"($I128)
  rxquantr121_done:
    goto alt120_end
  alt120_1:
.annotate "line", 49
  # rx subrule "metachar" subtype=capture negate=
    rx116_cur."!cursor_pos"(rx116_pos)
    $P10 = rx116_cur."metachar"()
    unless $P10, rx116_fail
    rx116_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("metachar")
    rx116_pos = $P10."pos"()
  alt120_end:
.annotate "line", 45
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
.sub "!PREFIX__atom"  :subid("34_1257089954.58465") :method
.annotate "line", 3
    $P118 = self."!PREFIX__!subrule"("metachar", "")
    new $P119, "ResizablePMCArray"
    push $P119, $P118
    push $P119, ""
    .return ($P119)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block124"  :anon :subid("35_1257089954.58465") :method :outer("33_1257089954.58465")
.annotate "line", 48
    .local string rx126_tgt
    .local int rx126_pos
    .local int rx126_off
    .local int rx126_eos
    .local int rx126_rep
    .local pmc rx126_cur
    (rx126_cur, rx126_pos, rx126_tgt, $I10) = self."!cursor_start"()
    rx126_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx126_cur
    .local pmc match
    .lex "$/", match
    length rx126_eos, rx126_tgt
    set rx126_off, 0
    lt $I10, 2, rx126_start
    sub rx126_off, $I10, 1
    substr rx126_tgt, rx126_tgt, rx126_off
  rx126_start:
    ge rx126_pos, 0, rxscan127_done
  rxscan127_loop:
    ($P10) = rx126_cur."from"()
    inc $P10
    set rx126_pos, $P10
    ge rx126_pos, rx126_eos, rxscan127_done
    set_addr $I10, rxscan127_loop
    rx126_cur."!mark_push"(0, rx126_pos, $I10)
  rxscan127_done:
  # rx charclass w
    ge rx126_pos, rx126_eos, rx126_fail
    sub $I10, rx126_pos, rx126_off
    is_cclass $I11, 8192, rx126_tgt, $I10
    unless $I11, rx126_fail
    inc rx126_pos
  # rx pass
    rx126_cur."!cursor_pass"(rx126_pos, "")
    rx126_cur."!cursor_debug"("PASS  ", "", " at pos=", rx126_pos)
    .return (rx126_cur)
  rx126_fail:
    (rx126_rep, rx126_pos, $I10, $P10) = rx126_cur."!mark_fail"(0)
    lt rx126_pos, -1, rx126_done
    eq rx126_pos, -1, rx126_fail
    jump $I10
  rx126_done:
    rx126_cur."!cursor_fail"()
    rx126_cur."!cursor_debug"("FAIL  ", "")
    .return (rx126_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier"  :subid("36_1257089954.58465") :method
.annotate "line", 53
    $P130 = self."!protoregex"("quantifier")
    .return ($P130)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier"  :subid("37_1257089954.58465") :method
.annotate "line", 53
    $P132 = self."!PREFIX__!protoregex"("quantifier")
    .return ($P132)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<*>"  :subid("38_1257089954.58465") :method :outer("11_1257089954.58465")
.annotate "line", 3
    .local string rx134_tgt
    .local int rx134_pos
    .local int rx134_off
    .local int rx134_eos
    .local int rx134_rep
    .local pmc rx134_cur
    (rx134_cur, rx134_pos, rx134_tgt, $I10) = self."!cursor_start"()
    rx134_cur."!cursor_debug"("START ", "quantifier:sym<*>")
    .lex unicode:"$\x{a2}", rx134_cur
    .local pmc match
    .lex "$/", match
    length rx134_eos, rx134_tgt
    set rx134_off, 0
    lt $I10, 2, rx134_start
    sub rx134_off, $I10, 1
    substr rx134_tgt, rx134_tgt, rx134_off
  rx134_start:
.annotate "line", 54
  # rx subcapture "sym"
    set_addr $I10, rxcap_138_fail
    rx134_cur."!mark_push"(0, rx134_pos, $I10)
  # rx literal  "*"
    add $I11, rx134_pos, 1
    gt $I11, rx134_eos, rx134_fail
    sub $I11, rx134_pos, rx134_off
    substr $S10, rx134_tgt, $I11, 1
    ne $S10, "*", rx134_fail
    add rx134_pos, 1
    set_addr $I10, rxcap_138_fail
    ($I12, $I11) = rx134_cur."!mark_peek"($I10)
    rx134_cur."!cursor_pos"($I11)
    ($P10) = rx134_cur."!cursor_start"()
    $P10."!cursor_pass"(rx134_pos, "")
    rx134_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_138_done
  rxcap_138_fail:
    goto rx134_fail
  rxcap_138_done:
  # rx subrule "backmod" subtype=capture negate=
    rx134_cur."!cursor_pos"(rx134_pos)
    $P10 = rx134_cur."backmod"()
    unless $P10, rx134_fail
    rx134_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx134_pos = $P10."pos"()
  # rx pass
    rx134_cur."!cursor_pass"(rx134_pos, "quantifier:sym<*>")
    rx134_cur."!cursor_debug"("PASS  ", "quantifier:sym<*>", " at pos=", rx134_pos)
    .return (rx134_cur)
  rx134_fail:
.annotate "line", 3
    (rx134_rep, rx134_pos, $I10, $P10) = rx134_cur."!mark_fail"(0)
    lt rx134_pos, -1, rx134_done
    eq rx134_pos, -1, rx134_fail
    jump $I10
  rx134_done:
    rx134_cur."!cursor_fail"()
    rx134_cur."!cursor_debug"("FAIL  ", "quantifier:sym<*>")
    .return (rx134_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<*>"  :subid("39_1257089954.58465") :method
.annotate "line", 3
    $P136 = self."!PREFIX__!subrule"("backmod", "*")
    new $P137, "ResizablePMCArray"
    push $P137, $P136
    .return ($P137)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<+>"  :subid("40_1257089954.58465") :method :outer("11_1257089954.58465")
.annotate "line", 3
    .local string rx140_tgt
    .local int rx140_pos
    .local int rx140_off
    .local int rx140_eos
    .local int rx140_rep
    .local pmc rx140_cur
    (rx140_cur, rx140_pos, rx140_tgt, $I10) = self."!cursor_start"()
    rx140_cur."!cursor_debug"("START ", "quantifier:sym<+>")
    .lex unicode:"$\x{a2}", rx140_cur
    .local pmc match
    .lex "$/", match
    length rx140_eos, rx140_tgt
    set rx140_off, 0
    lt $I10, 2, rx140_start
    sub rx140_off, $I10, 1
    substr rx140_tgt, rx140_tgt, rx140_off
  rx140_start:
.annotate "line", 55
  # rx subcapture "sym"
    set_addr $I10, rxcap_144_fail
    rx140_cur."!mark_push"(0, rx140_pos, $I10)
  # rx literal  "+"
    add $I11, rx140_pos, 1
    gt $I11, rx140_eos, rx140_fail
    sub $I11, rx140_pos, rx140_off
    substr $S10, rx140_tgt, $I11, 1
    ne $S10, "+", rx140_fail
    add rx140_pos, 1
    set_addr $I10, rxcap_144_fail
    ($I12, $I11) = rx140_cur."!mark_peek"($I10)
    rx140_cur."!cursor_pos"($I11)
    ($P10) = rx140_cur."!cursor_start"()
    $P10."!cursor_pass"(rx140_pos, "")
    rx140_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_144_done
  rxcap_144_fail:
    goto rx140_fail
  rxcap_144_done:
  # rx subrule "backmod" subtype=capture negate=
    rx140_cur."!cursor_pos"(rx140_pos)
    $P10 = rx140_cur."backmod"()
    unless $P10, rx140_fail
    rx140_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx140_pos = $P10."pos"()
  # rx pass
    rx140_cur."!cursor_pass"(rx140_pos, "quantifier:sym<+>")
    rx140_cur."!cursor_debug"("PASS  ", "quantifier:sym<+>", " at pos=", rx140_pos)
    .return (rx140_cur)
  rx140_fail:
.annotate "line", 3
    (rx140_rep, rx140_pos, $I10, $P10) = rx140_cur."!mark_fail"(0)
    lt rx140_pos, -1, rx140_done
    eq rx140_pos, -1, rx140_fail
    jump $I10
  rx140_done:
    rx140_cur."!cursor_fail"()
    rx140_cur."!cursor_debug"("FAIL  ", "quantifier:sym<+>")
    .return (rx140_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<+>"  :subid("41_1257089954.58465") :method
.annotate "line", 3
    $P142 = self."!PREFIX__!subrule"("backmod", "+")
    new $P143, "ResizablePMCArray"
    push $P143, $P142
    .return ($P143)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<?>"  :subid("42_1257089954.58465") :method :outer("11_1257089954.58465")
.annotate "line", 3
    .local string rx146_tgt
    .local int rx146_pos
    .local int rx146_off
    .local int rx146_eos
    .local int rx146_rep
    .local pmc rx146_cur
    (rx146_cur, rx146_pos, rx146_tgt, $I10) = self."!cursor_start"()
    rx146_cur."!cursor_debug"("START ", "quantifier:sym<?>")
    .lex unicode:"$\x{a2}", rx146_cur
    .local pmc match
    .lex "$/", match
    length rx146_eos, rx146_tgt
    set rx146_off, 0
    lt $I10, 2, rx146_start
    sub rx146_off, $I10, 1
    substr rx146_tgt, rx146_tgt, rx146_off
  rx146_start:
.annotate "line", 56
  # rx subcapture "sym"
    set_addr $I10, rxcap_150_fail
    rx146_cur."!mark_push"(0, rx146_pos, $I10)
  # rx literal  "?"
    add $I11, rx146_pos, 1
    gt $I11, rx146_eos, rx146_fail
    sub $I11, rx146_pos, rx146_off
    substr $S10, rx146_tgt, $I11, 1
    ne $S10, "?", rx146_fail
    add rx146_pos, 1
    set_addr $I10, rxcap_150_fail
    ($I12, $I11) = rx146_cur."!mark_peek"($I10)
    rx146_cur."!cursor_pos"($I11)
    ($P10) = rx146_cur."!cursor_start"()
    $P10."!cursor_pass"(rx146_pos, "")
    rx146_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_150_done
  rxcap_150_fail:
    goto rx146_fail
  rxcap_150_done:
  # rx subrule "backmod" subtype=capture negate=
    rx146_cur."!cursor_pos"(rx146_pos)
    $P10 = rx146_cur."backmod"()
    unless $P10, rx146_fail
    rx146_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx146_pos = $P10."pos"()
  # rx pass
    rx146_cur."!cursor_pass"(rx146_pos, "quantifier:sym<?>")
    rx146_cur."!cursor_debug"("PASS  ", "quantifier:sym<?>", " at pos=", rx146_pos)
    .return (rx146_cur)
  rx146_fail:
.annotate "line", 3
    (rx146_rep, rx146_pos, $I10, $P10) = rx146_cur."!mark_fail"(0)
    lt rx146_pos, -1, rx146_done
    eq rx146_pos, -1, rx146_fail
    jump $I10
  rx146_done:
    rx146_cur."!cursor_fail"()
    rx146_cur."!cursor_debug"("FAIL  ", "quantifier:sym<?>")
    .return (rx146_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<?>"  :subid("43_1257089954.58465") :method
.annotate "line", 3
    $P148 = self."!PREFIX__!subrule"("backmod", "?")
    new $P149, "ResizablePMCArray"
    push $P149, $P148
    .return ($P149)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<**>"  :subid("44_1257089954.58465") :method :outer("11_1257089954.58465")
.annotate "line", 3
    .local string rx152_tgt
    .local int rx152_pos
    .local int rx152_off
    .local int rx152_eos
    .local int rx152_rep
    .local pmc rx152_cur
    (rx152_cur, rx152_pos, rx152_tgt, $I10) = self."!cursor_start"()
    rx152_cur."!cursor_debug"("START ", "quantifier:sym<**>")
    rx152_cur."!cursor_caparray"("max")
    .lex unicode:"$\x{a2}", rx152_cur
    .local pmc match
    .lex "$/", match
    length rx152_eos, rx152_tgt
    set rx152_off, 0
    lt $I10, 2, rx152_start
    sub rx152_off, $I10, 1
    substr rx152_tgt, rx152_tgt, rx152_off
  rx152_start:
.annotate "line", 58
  # rx subcapture "sym"
    set_addr $I10, rxcap_155_fail
    rx152_cur."!mark_push"(0, rx152_pos, $I10)
  # rx literal  "**"
    add $I11, rx152_pos, 2
    gt $I11, rx152_eos, rx152_fail
    sub $I11, rx152_pos, rx152_off
    substr $S10, rx152_tgt, $I11, 2
    ne $S10, "**", rx152_fail
    add rx152_pos, 2
    set_addr $I10, rxcap_155_fail
    ($I12, $I11) = rx152_cur."!mark_peek"($I10)
    rx152_cur."!cursor_pos"($I11)
    ($P10) = rx152_cur."!cursor_start"()
    $P10."!cursor_pass"(rx152_pos, "")
    rx152_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_155_done
  rxcap_155_fail:
    goto rx152_fail
  rxcap_155_done:
  # rx charclass_q s r 0..-1
    sub $I10, rx152_pos, rx152_off
    find_not_cclass $I11, 32, rx152_tgt, $I10, rx152_eos
    add rx152_pos, rx152_off, $I11
  # rx subrule "backmod" subtype=capture negate=
    rx152_cur."!cursor_pos"(rx152_pos)
    $P10 = rx152_cur."backmod"()
    unless $P10, rx152_fail
    rx152_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx152_pos = $P10."pos"()
  # rx charclass_q s r 0..-1
    sub $I10, rx152_pos, rx152_off
    find_not_cclass $I11, 32, rx152_tgt, $I10, rx152_eos
    add rx152_pos, rx152_off, $I11
  alt156_0:
.annotate "line", 59
    set_addr $I10, alt156_1
    rx152_cur."!mark_push"(0, rx152_pos, $I10)
.annotate "line", 60
  # rx subcapture "min"
    set_addr $I10, rxcap_157_fail
    rx152_cur."!mark_push"(0, rx152_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx152_pos, rx152_off
    find_not_cclass $I11, 8, rx152_tgt, $I10, rx152_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx152_fail
    add rx152_pos, rx152_off, $I11
    set_addr $I10, rxcap_157_fail
    ($I12, $I11) = rx152_cur."!mark_peek"($I10)
    rx152_cur."!cursor_pos"($I11)
    ($P10) = rx152_cur."!cursor_start"()
    $P10."!cursor_pass"(rx152_pos, "")
    rx152_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("min")
    goto rxcap_157_done
  rxcap_157_fail:
    goto rx152_fail
  rxcap_157_done:
  # rx rxquantr158 ** 0..1
    set_addr $I161, rxquantr158_done
    rx152_cur."!mark_push"(0, rx152_pos, $I161)
  rxquantr158_loop:
  # rx literal  ".."
    add $I11, rx152_pos, 2
    gt $I11, rx152_eos, rx152_fail
    sub $I11, rx152_pos, rx152_off
    substr $S10, rx152_tgt, $I11, 2
    ne $S10, "..", rx152_fail
    add rx152_pos, 2
  # rx subcapture "max"
    set_addr $I10, rxcap_160_fail
    rx152_cur."!mark_push"(0, rx152_pos, $I10)
  alt159_0:
    set_addr $I10, alt159_1
    rx152_cur."!mark_push"(0, rx152_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx152_pos, rx152_off
    find_not_cclass $I11, 8, rx152_tgt, $I10, rx152_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx152_fail
    add rx152_pos, rx152_off, $I11
    goto alt159_end
  alt159_1:
  # rx literal  "*"
    add $I11, rx152_pos, 1
    gt $I11, rx152_eos, rx152_fail
    sub $I11, rx152_pos, rx152_off
    substr $S10, rx152_tgt, $I11, 1
    ne $S10, "*", rx152_fail
    add rx152_pos, 1
  alt159_end:
    set_addr $I10, rxcap_160_fail
    ($I12, $I11) = rx152_cur."!mark_peek"($I10)
    rx152_cur."!cursor_pos"($I11)
    ($P10) = rx152_cur."!cursor_start"()
    $P10."!cursor_pass"(rx152_pos, "")
    rx152_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("max")
    goto rxcap_160_done
  rxcap_160_fail:
    goto rx152_fail
  rxcap_160_done:
    (rx152_rep) = rx152_cur."!mark_commit"($I161)
  rxquantr158_done:
    goto alt156_end
  alt156_1:
.annotate "line", 61
  # rx subrule "quantified_atom" subtype=capture negate=
    rx152_cur."!cursor_pos"(rx152_pos)
    $P10 = rx152_cur."quantified_atom"()
    unless $P10, rx152_fail
    rx152_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantified_atom")
    rx152_pos = $P10."pos"()
  alt156_end:
.annotate "line", 57
  # rx pass
    rx152_cur."!cursor_pass"(rx152_pos, "quantifier:sym<**>")
    rx152_cur."!cursor_debug"("PASS  ", "quantifier:sym<**>", " at pos=", rx152_pos)
    .return (rx152_cur)
  rx152_fail:
.annotate "line", 3
    (rx152_rep, rx152_pos, $I10, $P10) = rx152_cur."!mark_fail"(0)
    lt rx152_pos, -1, rx152_done
    eq rx152_pos, -1, rx152_fail
    jump $I10
  rx152_done:
    rx152_cur."!cursor_fail"()
    rx152_cur."!cursor_debug"("FAIL  ", "quantifier:sym<**>")
    .return (rx152_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<**>"  :subid("45_1257089954.58465") :method
.annotate "line", 3
    new $P154, "ResizablePMCArray"
    push $P154, "**"
    .return ($P154)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backmod"  :subid("46_1257089954.58465") :method :outer("11_1257089954.58465")
.annotate "line", 3
    .const 'Sub' $P170 = "48_1257089954.58465" 
    capture_lex $P170
    .local string rx163_tgt
    .local int rx163_pos
    .local int rx163_off
    .local int rx163_eos
    .local int rx163_rep
    .local pmc rx163_cur
    (rx163_cur, rx163_pos, rx163_tgt, $I10) = self."!cursor_start"()
    rx163_cur."!cursor_debug"("START ", "backmod")
    .lex unicode:"$\x{a2}", rx163_cur
    .local pmc match
    .lex "$/", match
    length rx163_eos, rx163_tgt
    set rx163_off, 0
    lt $I10, 2, rx163_start
    sub rx163_off, $I10, 1
    substr rx163_tgt, rx163_tgt, rx163_off
  rx163_start:
.annotate "line", 65
  # rx rxquantr166 ** 0..1
    set_addr $I167, rxquantr166_done
    rx163_cur."!mark_push"(0, rx163_pos, $I167)
  rxquantr166_loop:
  # rx literal  ":"
    add $I11, rx163_pos, 1
    gt $I11, rx163_eos, rx163_fail
    sub $I11, rx163_pos, rx163_off
    substr $S10, rx163_tgt, $I11, 1
    ne $S10, ":", rx163_fail
    add rx163_pos, 1
    (rx163_rep) = rx163_cur."!mark_commit"($I167)
  rxquantr166_done:
  alt168_0:
    set_addr $I10, alt168_1
    rx163_cur."!mark_push"(0, rx163_pos, $I10)
  # rx literal  "?"
    add $I11, rx163_pos, 1
    gt $I11, rx163_eos, rx163_fail
    sub $I11, rx163_pos, rx163_off
    substr $S10, rx163_tgt, $I11, 1
    ne $S10, "?", rx163_fail
    add rx163_pos, 1
    goto alt168_end
  alt168_1:
    set_addr $I10, alt168_2
    rx163_cur."!mark_push"(0, rx163_pos, $I10)
  # rx literal  "!"
    add $I11, rx163_pos, 1
    gt $I11, rx163_eos, rx163_fail
    sub $I11, rx163_pos, rx163_off
    substr $S10, rx163_tgt, $I11, 1
    ne $S10, "!", rx163_fail
    add rx163_pos, 1
    goto alt168_end
  alt168_2:
  # rx subrule "before" subtype=zerowidth negate=1
    rx163_cur."!cursor_pos"(rx163_pos)
    .const 'Sub' $P170 = "48_1257089954.58465" 
    capture_lex $P170
    $P10 = rx163_cur."before"($P170)
    if $P10, rx163_fail
  alt168_end:
  # rx pass
    rx163_cur."!cursor_pass"(rx163_pos, "backmod")
    rx163_cur."!cursor_debug"("PASS  ", "backmod", " at pos=", rx163_pos)
    .return (rx163_cur)
  rx163_fail:
.annotate "line", 3
    (rx163_rep, rx163_pos, $I10, $P10) = rx163_cur."!mark_fail"(0)
    lt rx163_pos, -1, rx163_done
    eq rx163_pos, -1, rx163_fail
    jump $I10
  rx163_done:
    rx163_cur."!cursor_fail"()
    rx163_cur."!cursor_debug"("FAIL  ", "backmod")
    .return (rx163_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backmod"  :subid("47_1257089954.58465") :method
.annotate "line", 3
    new $P165, "ResizablePMCArray"
    push $P165, ""
    .return ($P165)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block169"  :anon :subid("48_1257089954.58465") :method :outer("46_1257089954.58465")
.annotate "line", 65
    .local string rx171_tgt
    .local int rx171_pos
    .local int rx171_off
    .local int rx171_eos
    .local int rx171_rep
    .local pmc rx171_cur
    (rx171_cur, rx171_pos, rx171_tgt, $I10) = self."!cursor_start"()
    rx171_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx171_cur
    .local pmc match
    .lex "$/", match
    length rx171_eos, rx171_tgt
    set rx171_off, 0
    lt $I10, 2, rx171_start
    sub rx171_off, $I10, 1
    substr rx171_tgt, rx171_tgt, rx171_off
  rx171_start:
    ge rx171_pos, 0, rxscan172_done
  rxscan172_loop:
    ($P10) = rx171_cur."from"()
    inc $P10
    set rx171_pos, $P10
    ge rx171_pos, rx171_eos, rxscan172_done
    set_addr $I10, rxscan172_loop
    rx171_cur."!mark_push"(0, rx171_pos, $I10)
  rxscan172_done:
  # rx literal  ":"
    add $I11, rx171_pos, 1
    gt $I11, rx171_eos, rx171_fail
    sub $I11, rx171_pos, rx171_off
    substr $S10, rx171_tgt, $I11, 1
    ne $S10, ":", rx171_fail
    add rx171_pos, 1
  # rx pass
    rx171_cur."!cursor_pass"(rx171_pos, "")
    rx171_cur."!cursor_debug"("PASS  ", "", " at pos=", rx171_pos)
    .return (rx171_cur)
  rx171_fail:
    (rx171_rep, rx171_pos, $I10, $P10) = rx171_cur."!mark_fail"(0)
    lt rx171_pos, -1, rx171_done
    eq rx171_pos, -1, rx171_fail
    jump $I10
  rx171_done:
    rx171_cur."!cursor_fail"()
    rx171_cur."!cursor_debug"("FAIL  ", "")
    .return (rx171_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar"  :subid("49_1257089954.58465") :method
.annotate "line", 67
    $P174 = self."!protoregex"("metachar")
    .return ($P174)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar"  :subid("50_1257089954.58465") :method
.annotate "line", 67
    $P176 = self."!PREFIX__!protoregex"("metachar")
    .return ($P176)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<ws>"  :subid("51_1257089954.58465") :method :outer("11_1257089954.58465")
.annotate "line", 3
    .local string rx178_tgt
    .local int rx178_pos
    .local int rx178_off
    .local int rx178_eos
    .local int rx178_rep
    .local pmc rx178_cur
    (rx178_cur, rx178_pos, rx178_tgt, $I10) = self."!cursor_start"()
    rx178_cur."!cursor_debug"("START ", "metachar:sym<ws>")
    .lex unicode:"$\x{a2}", rx178_cur
    .local pmc match
    .lex "$/", match
    length rx178_eos, rx178_tgt
    set rx178_off, 0
    lt $I10, 2, rx178_start
    sub rx178_off, $I10, 1
    substr rx178_tgt, rx178_tgt, rx178_off
  rx178_start:
.annotate "line", 68
  # rx subrule "normspace" subtype=method negate=
    rx178_cur."!cursor_pos"(rx178_pos)
    $P10 = rx178_cur."normspace"()
    unless $P10, rx178_fail
    rx178_pos = $P10."pos"()
  # rx pass
    rx178_cur."!cursor_pass"(rx178_pos, "metachar:sym<ws>")
    rx178_cur."!cursor_debug"("PASS  ", "metachar:sym<ws>", " at pos=", rx178_pos)
    .return (rx178_cur)
  rx178_fail:
.annotate "line", 3
    (rx178_rep, rx178_pos, $I10, $P10) = rx178_cur."!mark_fail"(0)
    lt rx178_pos, -1, rx178_done
    eq rx178_pos, -1, rx178_fail
    jump $I10
  rx178_done:
    rx178_cur."!cursor_fail"()
    rx178_cur."!cursor_debug"("FAIL  ", "metachar:sym<ws>")
    .return (rx178_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<ws>"  :subid("52_1257089954.58465") :method
.annotate "line", 3
    $P180 = self."!PREFIX__!subrule"("normspace", "")
    new $P181, "ResizablePMCArray"
    push $P181, $P180
    .return ($P181)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<[ ]>"  :subid("53_1257089954.58465") :method :outer("11_1257089954.58465")
.annotate "line", 3
    .local string rx183_tgt
    .local int rx183_pos
    .local int rx183_off
    .local int rx183_eos
    .local int rx183_rep
    .local pmc rx183_cur
    (rx183_cur, rx183_pos, rx183_tgt, $I10) = self."!cursor_start"()
    rx183_cur."!cursor_debug"("START ", "metachar:sym<[ ]>")
    .lex unicode:"$\x{a2}", rx183_cur
    .local pmc match
    .lex "$/", match
    length rx183_eos, rx183_tgt
    set rx183_off, 0
    lt $I10, 2, rx183_start
    sub rx183_off, $I10, 1
    substr rx183_tgt, rx183_tgt, rx183_off
  rx183_start:
.annotate "line", 69
  # rx literal  "["
    add $I11, rx183_pos, 1
    gt $I11, rx183_eos, rx183_fail
    sub $I11, rx183_pos, rx183_off
    substr $S10, rx183_tgt, $I11, 1
    ne $S10, "[", rx183_fail
    add rx183_pos, 1
  # rx subrule "nibbler" subtype=capture negate=
    rx183_cur."!cursor_pos"(rx183_pos)
    $P10 = rx183_cur."nibbler"()
    unless $P10, rx183_fail
    rx183_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx183_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx183_pos, 1
    gt $I11, rx183_eos, rx183_fail
    sub $I11, rx183_pos, rx183_off
    substr $S10, rx183_tgt, $I11, 1
    ne $S10, "]", rx183_fail
    add rx183_pos, 1
  # rx pass
    rx183_cur."!cursor_pass"(rx183_pos, "metachar:sym<[ ]>")
    rx183_cur."!cursor_debug"("PASS  ", "metachar:sym<[ ]>", " at pos=", rx183_pos)
    .return (rx183_cur)
  rx183_fail:
.annotate "line", 3
    (rx183_rep, rx183_pos, $I10, $P10) = rx183_cur."!mark_fail"(0)
    lt rx183_pos, -1, rx183_done
    eq rx183_pos, -1, rx183_fail
    jump $I10
  rx183_done:
    rx183_cur."!cursor_fail"()
    rx183_cur."!cursor_debug"("FAIL  ", "metachar:sym<[ ]>")
    .return (rx183_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<[ ]>"  :subid("54_1257089954.58465") :method
.annotate "line", 3
    $P185 = self."!PREFIX__!subrule"("nibbler", "[")
    new $P186, "ResizablePMCArray"
    push $P186, $P185
    .return ($P186)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<( )>"  :subid("55_1257089954.58465") :method :outer("11_1257089954.58465")
.annotate "line", 3
    .local string rx188_tgt
    .local int rx188_pos
    .local int rx188_off
    .local int rx188_eos
    .local int rx188_rep
    .local pmc rx188_cur
    (rx188_cur, rx188_pos, rx188_tgt, $I10) = self."!cursor_start"()
    rx188_cur."!cursor_debug"("START ", "metachar:sym<( )>")
    .lex unicode:"$\x{a2}", rx188_cur
    .local pmc match
    .lex "$/", match
    length rx188_eos, rx188_tgt
    set rx188_off, 0
    lt $I10, 2, rx188_start
    sub rx188_off, $I10, 1
    substr rx188_tgt, rx188_tgt, rx188_off
  rx188_start:
.annotate "line", 70
  # rx literal  "("
    add $I11, rx188_pos, 1
    gt $I11, rx188_eos, rx188_fail
    sub $I11, rx188_pos, rx188_off
    substr $S10, rx188_tgt, $I11, 1
    ne $S10, "(", rx188_fail
    add rx188_pos, 1
  # rx subrule "nibbler" subtype=capture negate=
    rx188_cur."!cursor_pos"(rx188_pos)
    $P10 = rx188_cur."nibbler"()
    unless $P10, rx188_fail
    rx188_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx188_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx188_pos, 1
    gt $I11, rx188_eos, rx188_fail
    sub $I11, rx188_pos, rx188_off
    substr $S10, rx188_tgt, $I11, 1
    ne $S10, ")", rx188_fail
    add rx188_pos, 1
  # rx pass
    rx188_cur."!cursor_pass"(rx188_pos, "metachar:sym<( )>")
    rx188_cur."!cursor_debug"("PASS  ", "metachar:sym<( )>", " at pos=", rx188_pos)
    .return (rx188_cur)
  rx188_fail:
.annotate "line", 3
    (rx188_rep, rx188_pos, $I10, $P10) = rx188_cur."!mark_fail"(0)
    lt rx188_pos, -1, rx188_done
    eq rx188_pos, -1, rx188_fail
    jump $I10
  rx188_done:
    rx188_cur."!cursor_fail"()
    rx188_cur."!cursor_debug"("FAIL  ", "metachar:sym<( )>")
    .return (rx188_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<( )>"  :subid("56_1257089954.58465") :method
.annotate "line", 3
    $P190 = self."!PREFIX__!subrule"("nibbler", "(")
    new $P191, "ResizablePMCArray"
    push $P191, $P190
    .return ($P191)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<'>"  :subid("57_1257089954.58465") :method :outer("11_1257089954.58465")
.annotate "line", 3
    .local string rx193_tgt
    .local int rx193_pos
    .local int rx193_off
    .local int rx193_eos
    .local int rx193_rep
    .local pmc rx193_cur
    (rx193_cur, rx193_pos, rx193_tgt, $I10) = self."!cursor_start"()
    rx193_cur."!cursor_debug"("START ", "metachar:sym<'>")
    .lex unicode:"$\x{a2}", rx193_cur
    .local pmc match
    .lex "$/", match
    length rx193_eos, rx193_tgt
    set rx193_off, 0
    lt $I10, 2, rx193_start
    sub rx193_off, $I10, 1
    substr rx193_tgt, rx193_tgt, rx193_off
  rx193_start:
.annotate "line", 71
  # rx subrule "quote" subtype=capture negate=
    rx193_cur."!cursor_pos"(rx193_pos)
    $P10 = rx193_cur."quote"()
    unless $P10, rx193_fail
    rx193_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote")
    rx193_pos = $P10."pos"()
  # rx pass
    rx193_cur."!cursor_pass"(rx193_pos, "metachar:sym<'>")
    rx193_cur."!cursor_debug"("PASS  ", "metachar:sym<'>", " at pos=", rx193_pos)
    .return (rx193_cur)
  rx193_fail:
.annotate "line", 3
    (rx193_rep, rx193_pos, $I10, $P10) = rx193_cur."!mark_fail"(0)
    lt rx193_pos, -1, rx193_done
    eq rx193_pos, -1, rx193_fail
    jump $I10
  rx193_done:
    rx193_cur."!cursor_fail"()
    rx193_cur."!cursor_debug"("FAIL  ", "metachar:sym<'>")
    .return (rx193_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<'>"  :subid("58_1257089954.58465") :method
.annotate "line", 3
    $P195 = self."!PREFIX__!subrule"("quote", "")
    new $P196, "ResizablePMCArray"
    push $P196, $P195
    .return ($P196)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<.>"  :subid("59_1257089954.58465") :method :outer("11_1257089954.58465")
.annotate "line", 3
    .local string rx198_tgt
    .local int rx198_pos
    .local int rx198_off
    .local int rx198_eos
    .local int rx198_rep
    .local pmc rx198_cur
    (rx198_cur, rx198_pos, rx198_tgt, $I10) = self."!cursor_start"()
    rx198_cur."!cursor_debug"("START ", "metachar:sym<.>")
    .lex unicode:"$\x{a2}", rx198_cur
    .local pmc match
    .lex "$/", match
    length rx198_eos, rx198_tgt
    set rx198_off, 0
    lt $I10, 2, rx198_start
    sub rx198_off, $I10, 1
    substr rx198_tgt, rx198_tgt, rx198_off
  rx198_start:
.annotate "line", 72
  # rx subcapture "sym"
    set_addr $I10, rxcap_201_fail
    rx198_cur."!mark_push"(0, rx198_pos, $I10)
  # rx literal  "."
    add $I11, rx198_pos, 1
    gt $I11, rx198_eos, rx198_fail
    sub $I11, rx198_pos, rx198_off
    substr $S10, rx198_tgt, $I11, 1
    ne $S10, ".", rx198_fail
    add rx198_pos, 1
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
  # rx pass
    rx198_cur."!cursor_pass"(rx198_pos, "metachar:sym<.>")
    rx198_cur."!cursor_debug"("PASS  ", "metachar:sym<.>", " at pos=", rx198_pos)
    .return (rx198_cur)
  rx198_fail:
.annotate "line", 3
    (rx198_rep, rx198_pos, $I10, $P10) = rx198_cur."!mark_fail"(0)
    lt rx198_pos, -1, rx198_done
    eq rx198_pos, -1, rx198_fail
    jump $I10
  rx198_done:
    rx198_cur."!cursor_fail"()
    rx198_cur."!cursor_debug"("FAIL  ", "metachar:sym<.>")
    .return (rx198_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<.>"  :subid("60_1257089954.58465") :method
.annotate "line", 3
    new $P200, "ResizablePMCArray"
    push $P200, "."
    .return ($P200)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<^>"  :subid("61_1257089954.58465") :method :outer("11_1257089954.58465")
.annotate "line", 3
    .local string rx203_tgt
    .local int rx203_pos
    .local int rx203_off
    .local int rx203_eos
    .local int rx203_rep
    .local pmc rx203_cur
    (rx203_cur, rx203_pos, rx203_tgt, $I10) = self."!cursor_start"()
    rx203_cur."!cursor_debug"("START ", "metachar:sym<^>")
    .lex unicode:"$\x{a2}", rx203_cur
    .local pmc match
    .lex "$/", match
    length rx203_eos, rx203_tgt
    set rx203_off, 0
    lt $I10, 2, rx203_start
    sub rx203_off, $I10, 1
    substr rx203_tgt, rx203_tgt, rx203_off
  rx203_start:
.annotate "line", 73
  # rx subcapture "sym"
    set_addr $I10, rxcap_206_fail
    rx203_cur."!mark_push"(0, rx203_pos, $I10)
  # rx literal  "^"
    add $I11, rx203_pos, 1
    gt $I11, rx203_eos, rx203_fail
    sub $I11, rx203_pos, rx203_off
    substr $S10, rx203_tgt, $I11, 1
    ne $S10, "^", rx203_fail
    add rx203_pos, 1
    set_addr $I10, rxcap_206_fail
    ($I12, $I11) = rx203_cur."!mark_peek"($I10)
    rx203_cur."!cursor_pos"($I11)
    ($P10) = rx203_cur."!cursor_start"()
    $P10."!cursor_pass"(rx203_pos, "")
    rx203_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_206_done
  rxcap_206_fail:
    goto rx203_fail
  rxcap_206_done:
  # rx pass
    rx203_cur."!cursor_pass"(rx203_pos, "metachar:sym<^>")
    rx203_cur."!cursor_debug"("PASS  ", "metachar:sym<^>", " at pos=", rx203_pos)
    .return (rx203_cur)
  rx203_fail:
.annotate "line", 3
    (rx203_rep, rx203_pos, $I10, $P10) = rx203_cur."!mark_fail"(0)
    lt rx203_pos, -1, rx203_done
    eq rx203_pos, -1, rx203_fail
    jump $I10
  rx203_done:
    rx203_cur."!cursor_fail"()
    rx203_cur."!cursor_debug"("FAIL  ", "metachar:sym<^>")
    .return (rx203_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<^>"  :subid("62_1257089954.58465") :method
.annotate "line", 3
    new $P205, "ResizablePMCArray"
    push $P205, "^"
    .return ($P205)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<^^>"  :subid("63_1257089954.58465") :method :outer("11_1257089954.58465")
.annotate "line", 3
    .local string rx208_tgt
    .local int rx208_pos
    .local int rx208_off
    .local int rx208_eos
    .local int rx208_rep
    .local pmc rx208_cur
    (rx208_cur, rx208_pos, rx208_tgt, $I10) = self."!cursor_start"()
    rx208_cur."!cursor_debug"("START ", "metachar:sym<^^>")
    .lex unicode:"$\x{a2}", rx208_cur
    .local pmc match
    .lex "$/", match
    length rx208_eos, rx208_tgt
    set rx208_off, 0
    lt $I10, 2, rx208_start
    sub rx208_off, $I10, 1
    substr rx208_tgt, rx208_tgt, rx208_off
  rx208_start:
.annotate "line", 74
  # rx subcapture "sym"
    set_addr $I10, rxcap_211_fail
    rx208_cur."!mark_push"(0, rx208_pos, $I10)
  # rx literal  "^^"
    add $I11, rx208_pos, 2
    gt $I11, rx208_eos, rx208_fail
    sub $I11, rx208_pos, rx208_off
    substr $S10, rx208_tgt, $I11, 2
    ne $S10, "^^", rx208_fail
    add rx208_pos, 2
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
  # rx pass
    rx208_cur."!cursor_pass"(rx208_pos, "metachar:sym<^^>")
    rx208_cur."!cursor_debug"("PASS  ", "metachar:sym<^^>", " at pos=", rx208_pos)
    .return (rx208_cur)
  rx208_fail:
.annotate "line", 3
    (rx208_rep, rx208_pos, $I10, $P10) = rx208_cur."!mark_fail"(0)
    lt rx208_pos, -1, rx208_done
    eq rx208_pos, -1, rx208_fail
    jump $I10
  rx208_done:
    rx208_cur."!cursor_fail"()
    rx208_cur."!cursor_debug"("FAIL  ", "metachar:sym<^^>")
    .return (rx208_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<^^>"  :subid("64_1257089954.58465") :method
.annotate "line", 3
    new $P210, "ResizablePMCArray"
    push $P210, "^^"
    .return ($P210)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<$>"  :subid("65_1257089954.58465") :method :outer("11_1257089954.58465")
.annotate "line", 3
    .local string rx213_tgt
    .local int rx213_pos
    .local int rx213_off
    .local int rx213_eos
    .local int rx213_rep
    .local pmc rx213_cur
    (rx213_cur, rx213_pos, rx213_tgt, $I10) = self."!cursor_start"()
    rx213_cur."!cursor_debug"("START ", "metachar:sym<$>")
    .lex unicode:"$\x{a2}", rx213_cur
    .local pmc match
    .lex "$/", match
    length rx213_eos, rx213_tgt
    set rx213_off, 0
    lt $I10, 2, rx213_start
    sub rx213_off, $I10, 1
    substr rx213_tgt, rx213_tgt, rx213_off
  rx213_start:
.annotate "line", 75
  # rx subcapture "sym"
    set_addr $I10, rxcap_216_fail
    rx213_cur."!mark_push"(0, rx213_pos, $I10)
  # rx literal  "$"
    add $I11, rx213_pos, 1
    gt $I11, rx213_eos, rx213_fail
    sub $I11, rx213_pos, rx213_off
    substr $S10, rx213_tgt, $I11, 1
    ne $S10, "$", rx213_fail
    add rx213_pos, 1
    set_addr $I10, rxcap_216_fail
    ($I12, $I11) = rx213_cur."!mark_peek"($I10)
    rx213_cur."!cursor_pos"($I11)
    ($P10) = rx213_cur."!cursor_start"()
    $P10."!cursor_pass"(rx213_pos, "")
    rx213_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_216_done
  rxcap_216_fail:
    goto rx213_fail
  rxcap_216_done:
  # rx pass
    rx213_cur."!cursor_pass"(rx213_pos, "metachar:sym<$>")
    rx213_cur."!cursor_debug"("PASS  ", "metachar:sym<$>", " at pos=", rx213_pos)
    .return (rx213_cur)
  rx213_fail:
.annotate "line", 3
    (rx213_rep, rx213_pos, $I10, $P10) = rx213_cur."!mark_fail"(0)
    lt rx213_pos, -1, rx213_done
    eq rx213_pos, -1, rx213_fail
    jump $I10
  rx213_done:
    rx213_cur."!cursor_fail"()
    rx213_cur."!cursor_debug"("FAIL  ", "metachar:sym<$>")
    .return (rx213_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<$>"  :subid("66_1257089954.58465") :method
.annotate "line", 3
    new $P215, "ResizablePMCArray"
    push $P215, "$"
    .return ($P215)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<$$>"  :subid("67_1257089954.58465") :method :outer("11_1257089954.58465")
.annotate "line", 3
    .local string rx218_tgt
    .local int rx218_pos
    .local int rx218_off
    .local int rx218_eos
    .local int rx218_rep
    .local pmc rx218_cur
    (rx218_cur, rx218_pos, rx218_tgt, $I10) = self."!cursor_start"()
    rx218_cur."!cursor_debug"("START ", "metachar:sym<$$>")
    .lex unicode:"$\x{a2}", rx218_cur
    .local pmc match
    .lex "$/", match
    length rx218_eos, rx218_tgt
    set rx218_off, 0
    lt $I10, 2, rx218_start
    sub rx218_off, $I10, 1
    substr rx218_tgt, rx218_tgt, rx218_off
  rx218_start:
.annotate "line", 76
  # rx subcapture "sym"
    set_addr $I10, rxcap_221_fail
    rx218_cur."!mark_push"(0, rx218_pos, $I10)
  # rx literal  "$$"
    add $I11, rx218_pos, 2
    gt $I11, rx218_eos, rx218_fail
    sub $I11, rx218_pos, rx218_off
    substr $S10, rx218_tgt, $I11, 2
    ne $S10, "$$", rx218_fail
    add rx218_pos, 2
    set_addr $I10, rxcap_221_fail
    ($I12, $I11) = rx218_cur."!mark_peek"($I10)
    rx218_cur."!cursor_pos"($I11)
    ($P10) = rx218_cur."!cursor_start"()
    $P10."!cursor_pass"(rx218_pos, "")
    rx218_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_221_done
  rxcap_221_fail:
    goto rx218_fail
  rxcap_221_done:
  # rx pass
    rx218_cur."!cursor_pass"(rx218_pos, "metachar:sym<$$>")
    rx218_cur."!cursor_debug"("PASS  ", "metachar:sym<$$>", " at pos=", rx218_pos)
    .return (rx218_cur)
  rx218_fail:
.annotate "line", 3
    (rx218_rep, rx218_pos, $I10, $P10) = rx218_cur."!mark_fail"(0)
    lt rx218_pos, -1, rx218_done
    eq rx218_pos, -1, rx218_fail
    jump $I10
  rx218_done:
    rx218_cur."!cursor_fail"()
    rx218_cur."!cursor_debug"("FAIL  ", "metachar:sym<$$>")
    .return (rx218_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<$$>"  :subid("68_1257089954.58465") :method
.annotate "line", 3
    new $P220, "ResizablePMCArray"
    push $P220, "$$"
    .return ($P220)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<:::>"  :subid("69_1257089954.58465") :method :outer("11_1257089954.58465")
.annotate "line", 3
    .local string rx223_tgt
    .local int rx223_pos
    .local int rx223_off
    .local int rx223_eos
    .local int rx223_rep
    .local pmc rx223_cur
    (rx223_cur, rx223_pos, rx223_tgt, $I10) = self."!cursor_start"()
    rx223_cur."!cursor_debug"("START ", "metachar:sym<:::>")
    .lex unicode:"$\x{a2}", rx223_cur
    .local pmc match
    .lex "$/", match
    length rx223_eos, rx223_tgt
    set rx223_off, 0
    lt $I10, 2, rx223_start
    sub rx223_off, $I10, 1
    substr rx223_tgt, rx223_tgt, rx223_off
  rx223_start:
.annotate "line", 77
  # rx subcapture "sym"
    set_addr $I10, rxcap_226_fail
    rx223_cur."!mark_push"(0, rx223_pos, $I10)
  # rx literal  ":::"
    add $I11, rx223_pos, 3
    gt $I11, rx223_eos, rx223_fail
    sub $I11, rx223_pos, rx223_off
    substr $S10, rx223_tgt, $I11, 3
    ne $S10, ":::", rx223_fail
    add rx223_pos, 3
    set_addr $I10, rxcap_226_fail
    ($I12, $I11) = rx223_cur."!mark_peek"($I10)
    rx223_cur."!cursor_pos"($I11)
    ($P10) = rx223_cur."!cursor_start"()
    $P10."!cursor_pass"(rx223_pos, "")
    rx223_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_226_done
  rxcap_226_fail:
    goto rx223_fail
  rxcap_226_done:
  # rx pass
    rx223_cur."!cursor_pass"(rx223_pos, "metachar:sym<:::>")
    rx223_cur."!cursor_debug"("PASS  ", "metachar:sym<:::>", " at pos=", rx223_pos)
    .return (rx223_cur)
  rx223_fail:
.annotate "line", 3
    (rx223_rep, rx223_pos, $I10, $P10) = rx223_cur."!mark_fail"(0)
    lt rx223_pos, -1, rx223_done
    eq rx223_pos, -1, rx223_fail
    jump $I10
  rx223_done:
    rx223_cur."!cursor_fail"()
    rx223_cur."!cursor_debug"("FAIL  ", "metachar:sym<:::>")
    .return (rx223_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<:::>"  :subid("70_1257089954.58465") :method
.annotate "line", 3
    new $P225, "ResizablePMCArray"
    push $P225, ":::"
    .return ($P225)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<::>"  :subid("71_1257089954.58465") :method :outer("11_1257089954.58465")
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
    set_addr $I10, rxcap_231_fail
    rx228_cur."!mark_push"(0, rx228_pos, $I10)
  # rx literal  "::"
    add $I11, rx228_pos, 2
    gt $I11, rx228_eos, rx228_fail
    sub $I11, rx228_pos, rx228_off
    substr $S10, rx228_tgt, $I11, 2
    ne $S10, "::", rx228_fail
    add rx228_pos, 2
    set_addr $I10, rxcap_231_fail
    ($I12, $I11) = rx228_cur."!mark_peek"($I10)
    rx228_cur."!cursor_pos"($I11)
    ($P10) = rx228_cur."!cursor_start"()
    $P10."!cursor_pass"(rx228_pos, "")
    rx228_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_231_done
  rxcap_231_fail:
    goto rx228_fail
  rxcap_231_done:
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
.sub "!PREFIX__metachar:sym<::>"  :subid("72_1257089954.58465") :method
.annotate "line", 3
    new $P230, "ResizablePMCArray"
    push $P230, "::"
    .return ($P230)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<lwb>"  :subid("73_1257089954.58465") :method :outer("11_1257089954.58465")
.annotate "line", 3
    .local string rx233_tgt
    .local int rx233_pos
    .local int rx233_off
    .local int rx233_eos
    .local int rx233_rep
    .local pmc rx233_cur
    (rx233_cur, rx233_pos, rx233_tgt, $I10) = self."!cursor_start"()
    rx233_cur."!cursor_debug"("START ", "metachar:sym<lwb>")
    .lex unicode:"$\x{a2}", rx233_cur
    .local pmc match
    .lex "$/", match
    length rx233_eos, rx233_tgt
    set rx233_off, 0
    lt $I10, 2, rx233_start
    sub rx233_off, $I10, 1
    substr rx233_tgt, rx233_tgt, rx233_off
  rx233_start:
.annotate "line", 79
  # rx subcapture "sym"
    set_addr $I10, rxcap_237_fail
    rx233_cur."!mark_push"(0, rx233_pos, $I10)
  alt236_0:
    set_addr $I10, alt236_1
    rx233_cur."!mark_push"(0, rx233_pos, $I10)
  # rx literal  "<<"
    add $I11, rx233_pos, 2
    gt $I11, rx233_eos, rx233_fail
    sub $I11, rx233_pos, rx233_off
    substr $S10, rx233_tgt, $I11, 2
    ne $S10, "<<", rx233_fail
    add rx233_pos, 2
    goto alt236_end
  alt236_1:
  # rx literal  unicode:"\x{ab}"
    add $I11, rx233_pos, 1
    gt $I11, rx233_eos, rx233_fail
    sub $I11, rx233_pos, rx233_off
    substr $S10, rx233_tgt, $I11, 1
    ne $S10, unicode:"\x{ab}", rx233_fail
    add rx233_pos, 1
  alt236_end:
    set_addr $I10, rxcap_237_fail
    ($I12, $I11) = rx233_cur."!mark_peek"($I10)
    rx233_cur."!cursor_pos"($I11)
    ($P10) = rx233_cur."!cursor_start"()
    $P10."!cursor_pass"(rx233_pos, "")
    rx233_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_237_done
  rxcap_237_fail:
    goto rx233_fail
  rxcap_237_done:
  # rx pass
    rx233_cur."!cursor_pass"(rx233_pos, "metachar:sym<lwb>")
    rx233_cur."!cursor_debug"("PASS  ", "metachar:sym<lwb>", " at pos=", rx233_pos)
    .return (rx233_cur)
  rx233_fail:
.annotate "line", 3
    (rx233_rep, rx233_pos, $I10, $P10) = rx233_cur."!mark_fail"(0)
    lt rx233_pos, -1, rx233_done
    eq rx233_pos, -1, rx233_fail
    jump $I10
  rx233_done:
    rx233_cur."!cursor_fail"()
    rx233_cur."!cursor_debug"("FAIL  ", "metachar:sym<lwb>")
    .return (rx233_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<lwb>"  :subid("74_1257089954.58465") :method
.annotate "line", 3
    new $P235, "ResizablePMCArray"
    push $P235, unicode:"\x{ab}"
    push $P235, "<<"
    .return ($P235)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<rwb>"  :subid("75_1257089954.58465") :method :outer("11_1257089954.58465")
.annotate "line", 3
    .local string rx239_tgt
    .local int rx239_pos
    .local int rx239_off
    .local int rx239_eos
    .local int rx239_rep
    .local pmc rx239_cur
    (rx239_cur, rx239_pos, rx239_tgt, $I10) = self."!cursor_start"()
    rx239_cur."!cursor_debug"("START ", "metachar:sym<rwb>")
    .lex unicode:"$\x{a2}", rx239_cur
    .local pmc match
    .lex "$/", match
    length rx239_eos, rx239_tgt
    set rx239_off, 0
    lt $I10, 2, rx239_start
    sub rx239_off, $I10, 1
    substr rx239_tgt, rx239_tgt, rx239_off
  rx239_start:
.annotate "line", 80
  # rx subcapture "sym"
    set_addr $I10, rxcap_243_fail
    rx239_cur."!mark_push"(0, rx239_pos, $I10)
  alt242_0:
    set_addr $I10, alt242_1
    rx239_cur."!mark_push"(0, rx239_pos, $I10)
  # rx literal  ">>"
    add $I11, rx239_pos, 2
    gt $I11, rx239_eos, rx239_fail
    sub $I11, rx239_pos, rx239_off
    substr $S10, rx239_tgt, $I11, 2
    ne $S10, ">>", rx239_fail
    add rx239_pos, 2
    goto alt242_end
  alt242_1:
  # rx literal  unicode:"\x{bb}"
    add $I11, rx239_pos, 1
    gt $I11, rx239_eos, rx239_fail
    sub $I11, rx239_pos, rx239_off
    substr $S10, rx239_tgt, $I11, 1
    ne $S10, unicode:"\x{bb}", rx239_fail
    add rx239_pos, 1
  alt242_end:
    set_addr $I10, rxcap_243_fail
    ($I12, $I11) = rx239_cur."!mark_peek"($I10)
    rx239_cur."!cursor_pos"($I11)
    ($P10) = rx239_cur."!cursor_start"()
    $P10."!cursor_pass"(rx239_pos, "")
    rx239_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_243_done
  rxcap_243_fail:
    goto rx239_fail
  rxcap_243_done:
  # rx pass
    rx239_cur."!cursor_pass"(rx239_pos, "metachar:sym<rwb>")
    rx239_cur."!cursor_debug"("PASS  ", "metachar:sym<rwb>", " at pos=", rx239_pos)
    .return (rx239_cur)
  rx239_fail:
.annotate "line", 3
    (rx239_rep, rx239_pos, $I10, $P10) = rx239_cur."!mark_fail"(0)
    lt rx239_pos, -1, rx239_done
    eq rx239_pos, -1, rx239_fail
    jump $I10
  rx239_done:
    rx239_cur."!cursor_fail"()
    rx239_cur."!cursor_debug"("FAIL  ", "metachar:sym<rwb>")
    .return (rx239_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<rwb>"  :subid("76_1257089954.58465") :method
.annotate "line", 3
    new $P241, "ResizablePMCArray"
    push $P241, unicode:"\x{bb}"
    push $P241, ">>"
    .return ($P241)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<bs>"  :subid("77_1257089954.58465") :method :outer("11_1257089954.58465")
.annotate "line", 3
    .local string rx245_tgt
    .local int rx245_pos
    .local int rx245_off
    .local int rx245_eos
    .local int rx245_rep
    .local pmc rx245_cur
    (rx245_cur, rx245_pos, rx245_tgt, $I10) = self."!cursor_start"()
    rx245_cur."!cursor_debug"("START ", "metachar:sym<bs>")
    .lex unicode:"$\x{a2}", rx245_cur
    .local pmc match
    .lex "$/", match
    length rx245_eos, rx245_tgt
    set rx245_off, 0
    lt $I10, 2, rx245_start
    sub rx245_off, $I10, 1
    substr rx245_tgt, rx245_tgt, rx245_off
  rx245_start:
.annotate "line", 81
  # rx literal  "\\"
    add $I11, rx245_pos, 1
    gt $I11, rx245_eos, rx245_fail
    sub $I11, rx245_pos, rx245_off
    substr $S10, rx245_tgt, $I11, 1
    ne $S10, "\\", rx245_fail
    add rx245_pos, 1
  # rx subrule "backslash" subtype=capture negate=
    rx245_cur."!cursor_pos"(rx245_pos)
    $P10 = rx245_cur."backslash"()
    unless $P10, rx245_fail
    rx245_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backslash")
    rx245_pos = $P10."pos"()
  # rx pass
    rx245_cur."!cursor_pass"(rx245_pos, "metachar:sym<bs>")
    rx245_cur."!cursor_debug"("PASS  ", "metachar:sym<bs>", " at pos=", rx245_pos)
    .return (rx245_cur)
  rx245_fail:
.annotate "line", 3
    (rx245_rep, rx245_pos, $I10, $P10) = rx245_cur."!mark_fail"(0)
    lt rx245_pos, -1, rx245_done
    eq rx245_pos, -1, rx245_fail
    jump $I10
  rx245_done:
    rx245_cur."!cursor_fail"()
    rx245_cur."!cursor_debug"("FAIL  ", "metachar:sym<bs>")
    .return (rx245_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<bs>"  :subid("78_1257089954.58465") :method
.annotate "line", 3
    $P247 = self."!PREFIX__!subrule"("backslash", "\\")
    new $P248, "ResizablePMCArray"
    push $P248, $P247
    .return ($P248)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<mod>"  :subid("79_1257089954.58465") :method :outer("11_1257089954.58465")
.annotate "line", 3
    .local string rx250_tgt
    .local int rx250_pos
    .local int rx250_off
    .local int rx250_eos
    .local int rx250_rep
    .local pmc rx250_cur
    (rx250_cur, rx250_pos, rx250_tgt, $I10) = self."!cursor_start"()
    rx250_cur."!cursor_debug"("START ", "metachar:sym<mod>")
    .lex unicode:"$\x{a2}", rx250_cur
    .local pmc match
    .lex "$/", match
    length rx250_eos, rx250_tgt
    set rx250_off, 0
    lt $I10, 2, rx250_start
    sub rx250_off, $I10, 1
    substr rx250_tgt, rx250_tgt, rx250_off
  rx250_start:
.annotate "line", 82
  # rx subrule "mod_internal" subtype=capture negate=
    rx250_cur."!cursor_pos"(rx250_pos)
    $P10 = rx250_cur."mod_internal"()
    unless $P10, rx250_fail
    rx250_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_internal")
    rx250_pos = $P10."pos"()
  # rx pass
    rx250_cur."!cursor_pass"(rx250_pos, "metachar:sym<mod>")
    rx250_cur."!cursor_debug"("PASS  ", "metachar:sym<mod>", " at pos=", rx250_pos)
    .return (rx250_cur)
  rx250_fail:
.annotate "line", 3
    (rx250_rep, rx250_pos, $I10, $P10) = rx250_cur."!mark_fail"(0)
    lt rx250_pos, -1, rx250_done
    eq rx250_pos, -1, rx250_fail
    jump $I10
  rx250_done:
    rx250_cur."!cursor_fail"()
    rx250_cur."!cursor_debug"("FAIL  ", "metachar:sym<mod>")
    .return (rx250_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<mod>"  :subid("80_1257089954.58465") :method
.annotate "line", 3
    $P252 = self."!PREFIX__!subrule"("mod_internal", "")
    new $P253, "ResizablePMCArray"
    push $P253, $P252
    .return ($P253)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<~>"  :subid("81_1257089954.58465") :method :outer("11_1257089954.58465")
.annotate "line", 3
    .local string rx255_tgt
    .local int rx255_pos
    .local int rx255_off
    .local int rx255_eos
    .local int rx255_rep
    .local pmc rx255_cur
    (rx255_cur, rx255_pos, rx255_tgt, $I10) = self."!cursor_start"()
    rx255_cur."!cursor_debug"("START ", "metachar:sym<~>")
    .lex unicode:"$\x{a2}", rx255_cur
    .local pmc match
    .lex "$/", match
    length rx255_eos, rx255_tgt
    set rx255_off, 0
    lt $I10, 2, rx255_start
    sub rx255_off, $I10, 1
    substr rx255_tgt, rx255_tgt, rx255_off
  rx255_start:
.annotate "line", 86
  # rx subcapture "sym"
    set_addr $I10, rxcap_259_fail
    rx255_cur."!mark_push"(0, rx255_pos, $I10)
  # rx literal  "~"
    add $I11, rx255_pos, 1
    gt $I11, rx255_eos, rx255_fail
    sub $I11, rx255_pos, rx255_off
    substr $S10, rx255_tgt, $I11, 1
    ne $S10, "~", rx255_fail
    add rx255_pos, 1
    set_addr $I10, rxcap_259_fail
    ($I12, $I11) = rx255_cur."!mark_peek"($I10)
    rx255_cur."!cursor_pos"($I11)
    ($P10) = rx255_cur."!cursor_start"()
    $P10."!cursor_pass"(rx255_pos, "")
    rx255_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_259_done
  rxcap_259_fail:
    goto rx255_fail
  rxcap_259_done:
.annotate "line", 87
  # rx subrule "ws" subtype=method negate=
    rx255_cur."!cursor_pos"(rx255_pos)
    $P10 = rx255_cur."ws"()
    unless $P10, rx255_fail
    rx255_pos = $P10."pos"()
  # rx subrule "quantified_atom" subtype=capture negate=
    rx255_cur."!cursor_pos"(rx255_pos)
    $P10 = rx255_cur."quantified_atom"()
    unless $P10, rx255_fail
    rx255_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("GOAL")
    rx255_pos = $P10."pos"()
.annotate "line", 88
  # rx subrule "ws" subtype=method negate=
    rx255_cur."!cursor_pos"(rx255_pos)
    $P10 = rx255_cur."ws"()
    unless $P10, rx255_fail
    rx255_pos = $P10."pos"()
  # rx subrule "quantified_atom" subtype=capture negate=
    rx255_cur."!cursor_pos"(rx255_pos)
    $P10 = rx255_cur."quantified_atom"()
    unless $P10, rx255_fail
    rx255_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx255_pos = $P10."pos"()
.annotate "line", 85
  # rx pass
    rx255_cur."!cursor_pass"(rx255_pos, "metachar:sym<~>")
    rx255_cur."!cursor_debug"("PASS  ", "metachar:sym<~>", " at pos=", rx255_pos)
    .return (rx255_cur)
  rx255_fail:
.annotate "line", 3
    (rx255_rep, rx255_pos, $I10, $P10) = rx255_cur."!mark_fail"(0)
    lt rx255_pos, -1, rx255_done
    eq rx255_pos, -1, rx255_fail
    jump $I10
  rx255_done:
    rx255_cur."!cursor_fail"()
    rx255_cur."!cursor_debug"("FAIL  ", "metachar:sym<~>")
    .return (rx255_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<~>"  :subid("82_1257089954.58465") :method
.annotate "line", 3
    $P257 = self."!PREFIX__!subrule"("ws", "~")
    new $P258, "ResizablePMCArray"
    push $P258, $P257
    .return ($P258)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<{*}>"  :subid("83_1257089954.58465") :method :outer("11_1257089954.58465")
.annotate "line", 3
    .local string rx261_tgt
    .local int rx261_pos
    .local int rx261_off
    .local int rx261_eos
    .local int rx261_rep
    .local pmc rx261_cur
    (rx261_cur, rx261_pos, rx261_tgt, $I10) = self."!cursor_start"()
    rx261_cur."!cursor_debug"("START ", "metachar:sym<{*}>")
    rx261_cur."!cursor_caparray"("key")
    .lex unicode:"$\x{a2}", rx261_cur
    .local pmc match
    .lex "$/", match
    length rx261_eos, rx261_tgt
    set rx261_off, 0
    lt $I10, 2, rx261_start
    sub rx261_off, $I10, 1
    substr rx261_tgt, rx261_tgt, rx261_off
  rx261_start:
.annotate "line", 92
  # rx subcapture "sym"
    set_addr $I10, rxcap_264_fail
    rx261_cur."!mark_push"(0, rx261_pos, $I10)
  # rx literal  "{*}"
    add $I11, rx261_pos, 3
    gt $I11, rx261_eos, rx261_fail
    sub $I11, rx261_pos, rx261_off
    substr $S10, rx261_tgt, $I11, 3
    ne $S10, "{*}", rx261_fail
    add rx261_pos, 3
    set_addr $I10, rxcap_264_fail
    ($I12, $I11) = rx261_cur."!mark_peek"($I10)
    rx261_cur."!cursor_pos"($I11)
    ($P10) = rx261_cur."!cursor_start"()
    $P10."!cursor_pass"(rx261_pos, "")
    rx261_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_264_done
  rxcap_264_fail:
    goto rx261_fail
  rxcap_264_done:
.annotate "line", 93
  # rx rxquantr265 ** 0..1
    set_addr $I275, rxquantr265_done
    rx261_cur."!mark_push"(0, rx261_pos, $I275)
  rxquantr265_loop:
  # rx rxquantr266 ** 0..*
    set_addr $I267, rxquantr266_done
    rx261_cur."!mark_push"(0, rx261_pos, $I267)
  rxquantr266_loop:
  # rx enumcharlist negate=0 
    ge rx261_pos, rx261_eos, rx261_fail
    sub $I10, rx261_pos, rx261_off
    substr $S10, rx261_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx261_fail
    inc rx261_pos
    (rx261_rep) = rx261_cur."!mark_commit"($I267)
    rx261_cur."!mark_push"(rx261_rep, rx261_pos, $I267)
    goto rxquantr266_loop
  rxquantr266_done:
  # rx literal  "#= "
    add $I11, rx261_pos, 3
    gt $I11, rx261_eos, rx261_fail
    sub $I11, rx261_pos, rx261_off
    substr $S10, rx261_tgt, $I11, 3
    ne $S10, "#= ", rx261_fail
    add rx261_pos, 3
  # rx rxquantr268 ** 0..*
    set_addr $I269, rxquantr268_done
    rx261_cur."!mark_push"(0, rx261_pos, $I269)
  rxquantr268_loop:
  # rx enumcharlist negate=0 
    ge rx261_pos, rx261_eos, rx261_fail
    sub $I10, rx261_pos, rx261_off
    substr $S10, rx261_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx261_fail
    inc rx261_pos
    (rx261_rep) = rx261_cur."!mark_commit"($I269)
    rx261_cur."!mark_push"(rx261_rep, rx261_pos, $I269)
    goto rxquantr268_loop
  rxquantr268_done:
  # rx subcapture "key"
    set_addr $I10, rxcap_274_fail
    rx261_cur."!mark_push"(0, rx261_pos, $I10)
  # rx charclass_q S r 1..-1
    sub $I10, rx261_pos, rx261_off
    find_cclass $I11, 32, rx261_tgt, $I10, rx261_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx261_fail
    add rx261_pos, rx261_off, $I11
  # rx rxquantr270 ** 0..*
    set_addr $I273, rxquantr270_done
    rx261_cur."!mark_push"(0, rx261_pos, $I273)
  rxquantr270_loop:
  # rx rxquantr271 ** 1..*
    set_addr $I272, rxquantr271_done
    rx261_cur."!mark_push"(0, -1, $I272)
  rxquantr271_loop:
  # rx enumcharlist negate=0 
    ge rx261_pos, rx261_eos, rx261_fail
    sub $I10, rx261_pos, rx261_off
    substr $S10, rx261_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rx261_fail
    inc rx261_pos
    (rx261_rep) = rx261_cur."!mark_commit"($I272)
    rx261_cur."!mark_push"(rx261_rep, rx261_pos, $I272)
    goto rxquantr271_loop
  rxquantr271_done:
  # rx charclass_q S r 1..-1
    sub $I10, rx261_pos, rx261_off
    find_cclass $I11, 32, rx261_tgt, $I10, rx261_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx261_fail
    add rx261_pos, rx261_off, $I11
    (rx261_rep) = rx261_cur."!mark_commit"($I273)
    rx261_cur."!mark_push"(rx261_rep, rx261_pos, $I273)
    goto rxquantr270_loop
  rxquantr270_done:
    set_addr $I10, rxcap_274_fail
    ($I12, $I11) = rx261_cur."!mark_peek"($I10)
    rx261_cur."!cursor_pos"($I11)
    ($P10) = rx261_cur."!cursor_start"()
    $P10."!cursor_pass"(rx261_pos, "")
    rx261_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("key")
    goto rxcap_274_done
  rxcap_274_fail:
    goto rx261_fail
  rxcap_274_done:
    (rx261_rep) = rx261_cur."!mark_commit"($I275)
  rxquantr265_done:
.annotate "line", 91
  # rx pass
    rx261_cur."!cursor_pass"(rx261_pos, "metachar:sym<{*}>")
    rx261_cur."!cursor_debug"("PASS  ", "metachar:sym<{*}>", " at pos=", rx261_pos)
    .return (rx261_cur)
  rx261_fail:
.annotate "line", 3
    (rx261_rep, rx261_pos, $I10, $P10) = rx261_cur."!mark_fail"(0)
    lt rx261_pos, -1, rx261_done
    eq rx261_pos, -1, rx261_fail
    jump $I10
  rx261_done:
    rx261_cur."!cursor_fail"()
    rx261_cur."!cursor_debug"("FAIL  ", "metachar:sym<{*}>")
    .return (rx261_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<{*}>"  :subid("84_1257089954.58465") :method
.annotate "line", 3
    new $P263, "ResizablePMCArray"
    push $P263, "{*}"
    .return ($P263)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<assert>"  :subid("85_1257089954.58465") :method :outer("11_1257089954.58465")
.annotate "line", 3
    .local string rx277_tgt
    .local int rx277_pos
    .local int rx277_off
    .local int rx277_eos
    .local int rx277_rep
    .local pmc rx277_cur
    (rx277_cur, rx277_pos, rx277_tgt, $I10) = self."!cursor_start"()
    rx277_cur."!cursor_debug"("START ", "metachar:sym<assert>")
    .lex unicode:"$\x{a2}", rx277_cur
    .local pmc match
    .lex "$/", match
    length rx277_eos, rx277_tgt
    set rx277_off, 0
    lt $I10, 2, rx277_start
    sub rx277_off, $I10, 1
    substr rx277_tgt, rx277_tgt, rx277_off
  rx277_start:
.annotate "line", 96
  # rx literal  "<"
    add $I11, rx277_pos, 1
    gt $I11, rx277_eos, rx277_fail
    sub $I11, rx277_pos, rx277_off
    substr $S10, rx277_tgt, $I11, 1
    ne $S10, "<", rx277_fail
    add rx277_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx277_cur."!cursor_pos"(rx277_pos)
    $P10 = rx277_cur."assertion"()
    unless $P10, rx277_fail
    rx277_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx277_pos = $P10."pos"()
  alt281_0:
.annotate "line", 97
    set_addr $I10, alt281_1
    rx277_cur."!mark_push"(0, rx277_pos, $I10)
  # rx literal  ">"
    add $I11, rx277_pos, 1
    gt $I11, rx277_eos, rx277_fail
    sub $I11, rx277_pos, rx277_off
    substr $S10, rx277_tgt, $I11, 1
    ne $S10, ">", rx277_fail
    add rx277_pos, 1
    goto alt281_end
  alt281_1:
  # rx subrule "panic" subtype=method negate=
    rx277_cur."!cursor_pos"(rx277_pos)
    $P10 = rx277_cur."panic"("regex assertion not terminated by angle bracket")
    unless $P10, rx277_fail
    rx277_pos = $P10."pos"()
  alt281_end:
.annotate "line", 95
  # rx pass
    rx277_cur."!cursor_pass"(rx277_pos, "metachar:sym<assert>")
    rx277_cur."!cursor_debug"("PASS  ", "metachar:sym<assert>", " at pos=", rx277_pos)
    .return (rx277_cur)
  rx277_fail:
.annotate "line", 3
    (rx277_rep, rx277_pos, $I10, $P10) = rx277_cur."!mark_fail"(0)
    lt rx277_pos, -1, rx277_done
    eq rx277_pos, -1, rx277_fail
    jump $I10
  rx277_done:
    rx277_cur."!cursor_fail"()
    rx277_cur."!cursor_debug"("FAIL  ", "metachar:sym<assert>")
    .return (rx277_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<assert>"  :subid("86_1257089954.58465") :method
.annotate "line", 3
    $P279 = self."!PREFIX__!subrule"("assertion", "<")
    new $P280, "ResizablePMCArray"
    push $P280, $P279
    .return ($P280)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<var>"  :subid("87_1257089954.58465") :method :outer("11_1257089954.58465")
.annotate "line", 3
    .local string rx283_tgt
    .local int rx283_pos
    .local int rx283_off
    .local int rx283_eos
    .local int rx283_rep
    .local pmc rx283_cur
    (rx283_cur, rx283_pos, rx283_tgt, $I10) = self."!cursor_start"()
    rx283_cur."!cursor_debug"("START ", "metachar:sym<var>")
    rx283_cur."!cursor_caparray"("quantified_atom")
    .lex unicode:"$\x{a2}", rx283_cur
    .local pmc match
    .lex "$/", match
    length rx283_eos, rx283_tgt
    set rx283_off, 0
    lt $I10, 2, rx283_start
    sub rx283_off, $I10, 1
    substr rx283_tgt, rx283_tgt, rx283_off
  rx283_start:
  alt286_0:
.annotate "line", 101
    set_addr $I10, alt286_1
    rx283_cur."!mark_push"(0, rx283_pos, $I10)
.annotate "line", 102
  # rx literal  "$<"
    add $I11, rx283_pos, 2
    gt $I11, rx283_eos, rx283_fail
    sub $I11, rx283_pos, rx283_off
    substr $S10, rx283_tgt, $I11, 2
    ne $S10, "$<", rx283_fail
    add rx283_pos, 2
  # rx subcapture "name"
    set_addr $I10, rxcap_289_fail
    rx283_cur."!mark_push"(0, rx283_pos, $I10)
  # rx rxquantr287 ** 1..*
    set_addr $I288, rxquantr287_done
    rx283_cur."!mark_push"(0, -1, $I288)
  rxquantr287_loop:
  # rx enumcharlist negate=1 
    ge rx283_pos, rx283_eos, rx283_fail
    sub $I10, rx283_pos, rx283_off
    substr $S10, rx283_tgt, $I10, 1
    index $I11, ">", $S10
    ge $I11, 0, rx283_fail
    inc rx283_pos
    (rx283_rep) = rx283_cur."!mark_commit"($I288)
    rx283_cur."!mark_push"(rx283_rep, rx283_pos, $I288)
    goto rxquantr287_loop
  rxquantr287_done:
    set_addr $I10, rxcap_289_fail
    ($I12, $I11) = rx283_cur."!mark_peek"($I10)
    rx283_cur."!cursor_pos"($I11)
    ($P10) = rx283_cur."!cursor_start"()
    $P10."!cursor_pass"(rx283_pos, "")
    rx283_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    goto rxcap_289_done
  rxcap_289_fail:
    goto rx283_fail
  rxcap_289_done:
  # rx literal  ">"
    add $I11, rx283_pos, 1
    gt $I11, rx283_eos, rx283_fail
    sub $I11, rx283_pos, rx283_off
    substr $S10, rx283_tgt, $I11, 1
    ne $S10, ">", rx283_fail
    add rx283_pos, 1
    goto alt286_end
  alt286_1:
.annotate "line", 103
  # rx literal  "$"
    add $I11, rx283_pos, 1
    gt $I11, rx283_eos, rx283_fail
    sub $I11, rx283_pos, rx283_off
    substr $S10, rx283_tgt, $I11, 1
    ne $S10, "$", rx283_fail
    add rx283_pos, 1
  # rx subcapture "pos"
    set_addr $I10, rxcap_290_fail
    rx283_cur."!mark_push"(0, rx283_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx283_pos, rx283_off
    find_not_cclass $I11, 8, rx283_tgt, $I10, rx283_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx283_fail
    add rx283_pos, rx283_off, $I11
    set_addr $I10, rxcap_290_fail
    ($I12, $I11) = rx283_cur."!mark_peek"($I10)
    rx283_cur."!cursor_pos"($I11)
    ($P10) = rx283_cur."!cursor_start"()
    $P10."!cursor_pass"(rx283_pos, "")
    rx283_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pos")
    goto rxcap_290_done
  rxcap_290_fail:
    goto rx283_fail
  rxcap_290_done:
  alt286_end:
.annotate "line", 106
  # rx rxquantr291 ** 0..1
    set_addr $I292, rxquantr291_done
    rx283_cur."!mark_push"(0, rx283_pos, $I292)
  rxquantr291_loop:
  # rx subrule "ws" subtype=method negate=
    rx283_cur."!cursor_pos"(rx283_pos)
    $P10 = rx283_cur."ws"()
    unless $P10, rx283_fail
    rx283_pos = $P10."pos"()
  # rx literal  "="
    add $I11, rx283_pos, 1
    gt $I11, rx283_eos, rx283_fail
    sub $I11, rx283_pos, rx283_off
    substr $S10, rx283_tgt, $I11, 1
    ne $S10, "=", rx283_fail
    add rx283_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx283_cur."!cursor_pos"(rx283_pos)
    $P10 = rx283_cur."ws"()
    unless $P10, rx283_fail
    rx283_pos = $P10."pos"()
  # rx subrule "quantified_atom" subtype=capture negate=
    rx283_cur."!cursor_pos"(rx283_pos)
    $P10 = rx283_cur."quantified_atom"()
    unless $P10, rx283_fail
    rx283_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantified_atom")
    rx283_pos = $P10."pos"()
    (rx283_rep) = rx283_cur."!mark_commit"($I292)
  rxquantr291_done:
.annotate "line", 100
  # rx pass
    rx283_cur."!cursor_pass"(rx283_pos, "metachar:sym<var>")
    rx283_cur."!cursor_debug"("PASS  ", "metachar:sym<var>", " at pos=", rx283_pos)
    .return (rx283_cur)
  rx283_fail:
.annotate "line", 3
    (rx283_rep, rx283_pos, $I10, $P10) = rx283_cur."!mark_fail"(0)
    lt rx283_pos, -1, rx283_done
    eq rx283_pos, -1, rx283_fail
    jump $I10
  rx283_done:
    rx283_cur."!cursor_fail"()
    rx283_cur."!cursor_debug"("FAIL  ", "metachar:sym<var>")
    .return (rx283_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<var>"  :subid("88_1257089954.58465") :method
.annotate "line", 3
    new $P285, "ResizablePMCArray"
    push $P285, "$"
    push $P285, "$<"
    .return ($P285)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<PIR>"  :subid("89_1257089954.58465") :method :outer("11_1257089954.58465")
.annotate "line", 3
    .local string rx294_tgt
    .local int rx294_pos
    .local int rx294_off
    .local int rx294_eos
    .local int rx294_rep
    .local pmc rx294_cur
    (rx294_cur, rx294_pos, rx294_tgt, $I10) = self."!cursor_start"()
    rx294_cur."!cursor_debug"("START ", "metachar:sym<PIR>")
    .lex unicode:"$\x{a2}", rx294_cur
    .local pmc match
    .lex "$/", match
    length rx294_eos, rx294_tgt
    set rx294_off, 0
    lt $I10, 2, rx294_start
    sub rx294_off, $I10, 1
    substr rx294_tgt, rx294_tgt, rx294_off
  rx294_start:
.annotate "line", 110
  # rx literal  ":PIR{{"
    add $I11, rx294_pos, 6
    gt $I11, rx294_eos, rx294_fail
    sub $I11, rx294_pos, rx294_off
    substr $S10, rx294_tgt, $I11, 6
    ne $S10, ":PIR{{", rx294_fail
    add rx294_pos, 6
  # rx subcapture "pir"
    set_addr $I10, rxcap_299_fail
    rx294_cur."!mark_push"(0, rx294_pos, $I10)
  # rx rxquantf297 ** 0..*
    set_addr $I10, rxquantf297_loop
    rx294_cur."!mark_push"(0, rx294_pos, $I10)
    goto rxquantf297_done
  rxquantf297_loop:
  # rx charclass .
    ge rx294_pos, rx294_eos, rx294_fail
    inc rx294_pos
    set_addr $I10, rxquantf297_loop
    rx294_cur."!mark_push"($I298, rx294_pos, $I10)
  rxquantf297_done:
    set_addr $I10, rxcap_299_fail
    ($I12, $I11) = rx294_cur."!mark_peek"($I10)
    rx294_cur."!cursor_pos"($I11)
    ($P10) = rx294_cur."!cursor_start"()
    $P10."!cursor_pass"(rx294_pos, "")
    rx294_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pir")
    goto rxcap_299_done
  rxcap_299_fail:
    goto rx294_fail
  rxcap_299_done:
  # rx literal  "}}"
    add $I11, rx294_pos, 2
    gt $I11, rx294_eos, rx294_fail
    sub $I11, rx294_pos, rx294_off
    substr $S10, rx294_tgt, $I11, 2
    ne $S10, "}}", rx294_fail
    add rx294_pos, 2
.annotate "line", 109
  # rx pass
    rx294_cur."!cursor_pass"(rx294_pos, "metachar:sym<PIR>")
    rx294_cur."!cursor_debug"("PASS  ", "metachar:sym<PIR>", " at pos=", rx294_pos)
    .return (rx294_cur)
  rx294_fail:
.annotate "line", 3
    (rx294_rep, rx294_pos, $I10, $P10) = rx294_cur."!mark_fail"(0)
    lt rx294_pos, -1, rx294_done
    eq rx294_pos, -1, rx294_fail
    jump $I10
  rx294_done:
    rx294_cur."!cursor_fail"()
    rx294_cur."!cursor_debug"("FAIL  ", "metachar:sym<PIR>")
    .return (rx294_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<PIR>"  :subid("90_1257089954.58465") :method
.annotate "line", 3
    new $P296, "ResizablePMCArray"
    push $P296, ":PIR{{"
    .return ($P296)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash"  :subid("91_1257089954.58465") :method
.annotate "line", 113
    $P301 = self."!protoregex"("backslash")
    .return ($P301)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash"  :subid("92_1257089954.58465") :method
.annotate "line", 113
    $P303 = self."!PREFIX__!protoregex"("backslash")
    .return ($P303)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<w>"  :subid("93_1257089954.58465") :method :outer("11_1257089954.58465")
.annotate "line", 3
    .local string rx305_tgt
    .local int rx305_pos
    .local int rx305_off
    .local int rx305_eos
    .local int rx305_rep
    .local pmc rx305_cur
    (rx305_cur, rx305_pos, rx305_tgt, $I10) = self."!cursor_start"()
    rx305_cur."!cursor_debug"("START ", "backslash:sym<w>")
    .lex unicode:"$\x{a2}", rx305_cur
    .local pmc match
    .lex "$/", match
    length rx305_eos, rx305_tgt
    set rx305_off, 0
    lt $I10, 2, rx305_start
    sub rx305_off, $I10, 1
    substr rx305_tgt, rx305_tgt, rx305_off
  rx305_start:
.annotate "line", 114
  # rx subcapture "sym"
    set_addr $I10, rxcap_308_fail
    rx305_cur."!mark_push"(0, rx305_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx305_pos, rx305_eos, rx305_fail
    sub $I10, rx305_pos, rx305_off
    substr $S10, rx305_tgt, $I10, 1
    index $I11, "dswnDSWN", $S10
    lt $I11, 0, rx305_fail
    inc rx305_pos
    set_addr $I10, rxcap_308_fail
    ($I12, $I11) = rx305_cur."!mark_peek"($I10)
    rx305_cur."!cursor_pos"($I11)
    ($P10) = rx305_cur."!cursor_start"()
    $P10."!cursor_pass"(rx305_pos, "")
    rx305_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_308_done
  rxcap_308_fail:
    goto rx305_fail
  rxcap_308_done:
  # rx pass
    rx305_cur."!cursor_pass"(rx305_pos, "backslash:sym<w>")
    rx305_cur."!cursor_debug"("PASS  ", "backslash:sym<w>", " at pos=", rx305_pos)
    .return (rx305_cur)
  rx305_fail:
.annotate "line", 3
    (rx305_rep, rx305_pos, $I10, $P10) = rx305_cur."!mark_fail"(0)
    lt rx305_pos, -1, rx305_done
    eq rx305_pos, -1, rx305_fail
    jump $I10
  rx305_done:
    rx305_cur."!cursor_fail"()
    rx305_cur."!cursor_debug"("FAIL  ", "backslash:sym<w>")
    .return (rx305_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<w>"  :subid("94_1257089954.58465") :method
.annotate "line", 3
    new $P307, "ResizablePMCArray"
    push $P307, "N"
    push $P307, "W"
    push $P307, "S"
    push $P307, "D"
    push $P307, "n"
    push $P307, "w"
    push $P307, "s"
    push $P307, "d"
    .return ($P307)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<b>"  :subid("95_1257089954.58465") :method :outer("11_1257089954.58465")
.annotate "line", 3
    .local string rx310_tgt
    .local int rx310_pos
    .local int rx310_off
    .local int rx310_eos
    .local int rx310_rep
    .local pmc rx310_cur
    (rx310_cur, rx310_pos, rx310_tgt, $I10) = self."!cursor_start"()
    rx310_cur."!cursor_debug"("START ", "backslash:sym<b>")
    .lex unicode:"$\x{a2}", rx310_cur
    .local pmc match
    .lex "$/", match
    length rx310_eos, rx310_tgt
    set rx310_off, 0
    lt $I10, 2, rx310_start
    sub rx310_off, $I10, 1
    substr rx310_tgt, rx310_tgt, rx310_off
  rx310_start:
.annotate "line", 115
  # rx subcapture "sym"
    set_addr $I10, rxcap_313_fail
    rx310_cur."!mark_push"(0, rx310_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx310_pos, rx310_eos, rx310_fail
    sub $I10, rx310_pos, rx310_off
    substr $S10, rx310_tgt, $I10, 1
    index $I11, "bB", $S10
    lt $I11, 0, rx310_fail
    inc rx310_pos
    set_addr $I10, rxcap_313_fail
    ($I12, $I11) = rx310_cur."!mark_peek"($I10)
    rx310_cur."!cursor_pos"($I11)
    ($P10) = rx310_cur."!cursor_start"()
    $P10."!cursor_pass"(rx310_pos, "")
    rx310_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_313_done
  rxcap_313_fail:
    goto rx310_fail
  rxcap_313_done:
  # rx pass
    rx310_cur."!cursor_pass"(rx310_pos, "backslash:sym<b>")
    rx310_cur."!cursor_debug"("PASS  ", "backslash:sym<b>", " at pos=", rx310_pos)
    .return (rx310_cur)
  rx310_fail:
.annotate "line", 3
    (rx310_rep, rx310_pos, $I10, $P10) = rx310_cur."!mark_fail"(0)
    lt rx310_pos, -1, rx310_done
    eq rx310_pos, -1, rx310_fail
    jump $I10
  rx310_done:
    rx310_cur."!cursor_fail"()
    rx310_cur."!cursor_debug"("FAIL  ", "backslash:sym<b>")
    .return (rx310_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<b>"  :subid("96_1257089954.58465") :method
.annotate "line", 3
    new $P312, "ResizablePMCArray"
    push $P312, "B"
    push $P312, "b"
    .return ($P312)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<e>"  :subid("97_1257089954.58465") :method :outer("11_1257089954.58465")
.annotate "line", 3
    .local string rx315_tgt
    .local int rx315_pos
    .local int rx315_off
    .local int rx315_eos
    .local int rx315_rep
    .local pmc rx315_cur
    (rx315_cur, rx315_pos, rx315_tgt, $I10) = self."!cursor_start"()
    rx315_cur."!cursor_debug"("START ", "backslash:sym<e>")
    .lex unicode:"$\x{a2}", rx315_cur
    .local pmc match
    .lex "$/", match
    length rx315_eos, rx315_tgt
    set rx315_off, 0
    lt $I10, 2, rx315_start
    sub rx315_off, $I10, 1
    substr rx315_tgt, rx315_tgt, rx315_off
  rx315_start:
.annotate "line", 116
  # rx subcapture "sym"
    set_addr $I10, rxcap_318_fail
    rx315_cur."!mark_push"(0, rx315_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx315_pos, rx315_eos, rx315_fail
    sub $I10, rx315_pos, rx315_off
    substr $S10, rx315_tgt, $I10, 1
    index $I11, "eE", $S10
    lt $I11, 0, rx315_fail
    inc rx315_pos
    set_addr $I10, rxcap_318_fail
    ($I12, $I11) = rx315_cur."!mark_peek"($I10)
    rx315_cur."!cursor_pos"($I11)
    ($P10) = rx315_cur."!cursor_start"()
    $P10."!cursor_pass"(rx315_pos, "")
    rx315_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_318_done
  rxcap_318_fail:
    goto rx315_fail
  rxcap_318_done:
  # rx pass
    rx315_cur."!cursor_pass"(rx315_pos, "backslash:sym<e>")
    rx315_cur."!cursor_debug"("PASS  ", "backslash:sym<e>", " at pos=", rx315_pos)
    .return (rx315_cur)
  rx315_fail:
.annotate "line", 3
    (rx315_rep, rx315_pos, $I10, $P10) = rx315_cur."!mark_fail"(0)
    lt rx315_pos, -1, rx315_done
    eq rx315_pos, -1, rx315_fail
    jump $I10
  rx315_done:
    rx315_cur."!cursor_fail"()
    rx315_cur."!cursor_debug"("FAIL  ", "backslash:sym<e>")
    .return (rx315_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<e>"  :subid("98_1257089954.58465") :method
.annotate "line", 3
    new $P317, "ResizablePMCArray"
    push $P317, "E"
    push $P317, "e"
    .return ($P317)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<f>"  :subid("99_1257089954.58465") :method :outer("11_1257089954.58465")
.annotate "line", 3
    .local string rx320_tgt
    .local int rx320_pos
    .local int rx320_off
    .local int rx320_eos
    .local int rx320_rep
    .local pmc rx320_cur
    (rx320_cur, rx320_pos, rx320_tgt, $I10) = self."!cursor_start"()
    rx320_cur."!cursor_debug"("START ", "backslash:sym<f>")
    .lex unicode:"$\x{a2}", rx320_cur
    .local pmc match
    .lex "$/", match
    length rx320_eos, rx320_tgt
    set rx320_off, 0
    lt $I10, 2, rx320_start
    sub rx320_off, $I10, 1
    substr rx320_tgt, rx320_tgt, rx320_off
  rx320_start:
.annotate "line", 117
  # rx subcapture "sym"
    set_addr $I10, rxcap_323_fail
    rx320_cur."!mark_push"(0, rx320_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx320_pos, rx320_eos, rx320_fail
    sub $I10, rx320_pos, rx320_off
    substr $S10, rx320_tgt, $I10, 1
    index $I11, "fF", $S10
    lt $I11, 0, rx320_fail
    inc rx320_pos
    set_addr $I10, rxcap_323_fail
    ($I12, $I11) = rx320_cur."!mark_peek"($I10)
    rx320_cur."!cursor_pos"($I11)
    ($P10) = rx320_cur."!cursor_start"()
    $P10."!cursor_pass"(rx320_pos, "")
    rx320_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_323_done
  rxcap_323_fail:
    goto rx320_fail
  rxcap_323_done:
  # rx pass
    rx320_cur."!cursor_pass"(rx320_pos, "backslash:sym<f>")
    rx320_cur."!cursor_debug"("PASS  ", "backslash:sym<f>", " at pos=", rx320_pos)
    .return (rx320_cur)
  rx320_fail:
.annotate "line", 3
    (rx320_rep, rx320_pos, $I10, $P10) = rx320_cur."!mark_fail"(0)
    lt rx320_pos, -1, rx320_done
    eq rx320_pos, -1, rx320_fail
    jump $I10
  rx320_done:
    rx320_cur."!cursor_fail"()
    rx320_cur."!cursor_debug"("FAIL  ", "backslash:sym<f>")
    .return (rx320_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<f>"  :subid("100_1257089954.58465") :method
.annotate "line", 3
    new $P322, "ResizablePMCArray"
    push $P322, "F"
    push $P322, "f"
    .return ($P322)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<h>"  :subid("101_1257089954.58465") :method :outer("11_1257089954.58465")
.annotate "line", 3
    .local string rx325_tgt
    .local int rx325_pos
    .local int rx325_off
    .local int rx325_eos
    .local int rx325_rep
    .local pmc rx325_cur
    (rx325_cur, rx325_pos, rx325_tgt, $I10) = self."!cursor_start"()
    rx325_cur."!cursor_debug"("START ", "backslash:sym<h>")
    .lex unicode:"$\x{a2}", rx325_cur
    .local pmc match
    .lex "$/", match
    length rx325_eos, rx325_tgt
    set rx325_off, 0
    lt $I10, 2, rx325_start
    sub rx325_off, $I10, 1
    substr rx325_tgt, rx325_tgt, rx325_off
  rx325_start:
.annotate "line", 118
  # rx subcapture "sym"
    set_addr $I10, rxcap_328_fail
    rx325_cur."!mark_push"(0, rx325_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx325_pos, rx325_eos, rx325_fail
    sub $I10, rx325_pos, rx325_off
    substr $S10, rx325_tgt, $I10, 1
    index $I11, "hH", $S10
    lt $I11, 0, rx325_fail
    inc rx325_pos
    set_addr $I10, rxcap_328_fail
    ($I12, $I11) = rx325_cur."!mark_peek"($I10)
    rx325_cur."!cursor_pos"($I11)
    ($P10) = rx325_cur."!cursor_start"()
    $P10."!cursor_pass"(rx325_pos, "")
    rx325_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_328_done
  rxcap_328_fail:
    goto rx325_fail
  rxcap_328_done:
  # rx pass
    rx325_cur."!cursor_pass"(rx325_pos, "backslash:sym<h>")
    rx325_cur."!cursor_debug"("PASS  ", "backslash:sym<h>", " at pos=", rx325_pos)
    .return (rx325_cur)
  rx325_fail:
.annotate "line", 3
    (rx325_rep, rx325_pos, $I10, $P10) = rx325_cur."!mark_fail"(0)
    lt rx325_pos, -1, rx325_done
    eq rx325_pos, -1, rx325_fail
    jump $I10
  rx325_done:
    rx325_cur."!cursor_fail"()
    rx325_cur."!cursor_debug"("FAIL  ", "backslash:sym<h>")
    .return (rx325_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<h>"  :subid("102_1257089954.58465") :method
.annotate "line", 3
    new $P327, "ResizablePMCArray"
    push $P327, "H"
    push $P327, "h"
    .return ($P327)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<r>"  :subid("103_1257089954.58465") :method :outer("11_1257089954.58465")
.annotate "line", 3
    .local string rx330_tgt
    .local int rx330_pos
    .local int rx330_off
    .local int rx330_eos
    .local int rx330_rep
    .local pmc rx330_cur
    (rx330_cur, rx330_pos, rx330_tgt, $I10) = self."!cursor_start"()
    rx330_cur."!cursor_debug"("START ", "backslash:sym<r>")
    .lex unicode:"$\x{a2}", rx330_cur
    .local pmc match
    .lex "$/", match
    length rx330_eos, rx330_tgt
    set rx330_off, 0
    lt $I10, 2, rx330_start
    sub rx330_off, $I10, 1
    substr rx330_tgt, rx330_tgt, rx330_off
  rx330_start:
.annotate "line", 119
  # rx subcapture "sym"
    set_addr $I10, rxcap_333_fail
    rx330_cur."!mark_push"(0, rx330_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx330_pos, rx330_eos, rx330_fail
    sub $I10, rx330_pos, rx330_off
    substr $S10, rx330_tgt, $I10, 1
    index $I11, "rR", $S10
    lt $I11, 0, rx330_fail
    inc rx330_pos
    set_addr $I10, rxcap_333_fail
    ($I12, $I11) = rx330_cur."!mark_peek"($I10)
    rx330_cur."!cursor_pos"($I11)
    ($P10) = rx330_cur."!cursor_start"()
    $P10."!cursor_pass"(rx330_pos, "")
    rx330_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_333_done
  rxcap_333_fail:
    goto rx330_fail
  rxcap_333_done:
  # rx pass
    rx330_cur."!cursor_pass"(rx330_pos, "backslash:sym<r>")
    rx330_cur."!cursor_debug"("PASS  ", "backslash:sym<r>", " at pos=", rx330_pos)
    .return (rx330_cur)
  rx330_fail:
.annotate "line", 3
    (rx330_rep, rx330_pos, $I10, $P10) = rx330_cur."!mark_fail"(0)
    lt rx330_pos, -1, rx330_done
    eq rx330_pos, -1, rx330_fail
    jump $I10
  rx330_done:
    rx330_cur."!cursor_fail"()
    rx330_cur."!cursor_debug"("FAIL  ", "backslash:sym<r>")
    .return (rx330_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<r>"  :subid("104_1257089954.58465") :method
.annotate "line", 3
    new $P332, "ResizablePMCArray"
    push $P332, "R"
    push $P332, "r"
    .return ($P332)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<t>"  :subid("105_1257089954.58465") :method :outer("11_1257089954.58465")
.annotate "line", 3
    .local string rx335_tgt
    .local int rx335_pos
    .local int rx335_off
    .local int rx335_eos
    .local int rx335_rep
    .local pmc rx335_cur
    (rx335_cur, rx335_pos, rx335_tgt, $I10) = self."!cursor_start"()
    rx335_cur."!cursor_debug"("START ", "backslash:sym<t>")
    .lex unicode:"$\x{a2}", rx335_cur
    .local pmc match
    .lex "$/", match
    length rx335_eos, rx335_tgt
    set rx335_off, 0
    lt $I10, 2, rx335_start
    sub rx335_off, $I10, 1
    substr rx335_tgt, rx335_tgt, rx335_off
  rx335_start:
.annotate "line", 120
  # rx subcapture "sym"
    set_addr $I10, rxcap_338_fail
    rx335_cur."!mark_push"(0, rx335_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx335_pos, rx335_eos, rx335_fail
    sub $I10, rx335_pos, rx335_off
    substr $S10, rx335_tgt, $I10, 1
    index $I11, "tT", $S10
    lt $I11, 0, rx335_fail
    inc rx335_pos
    set_addr $I10, rxcap_338_fail
    ($I12, $I11) = rx335_cur."!mark_peek"($I10)
    rx335_cur."!cursor_pos"($I11)
    ($P10) = rx335_cur."!cursor_start"()
    $P10."!cursor_pass"(rx335_pos, "")
    rx335_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_338_done
  rxcap_338_fail:
    goto rx335_fail
  rxcap_338_done:
  # rx pass
    rx335_cur."!cursor_pass"(rx335_pos, "backslash:sym<t>")
    rx335_cur."!cursor_debug"("PASS  ", "backslash:sym<t>", " at pos=", rx335_pos)
    .return (rx335_cur)
  rx335_fail:
.annotate "line", 3
    (rx335_rep, rx335_pos, $I10, $P10) = rx335_cur."!mark_fail"(0)
    lt rx335_pos, -1, rx335_done
    eq rx335_pos, -1, rx335_fail
    jump $I10
  rx335_done:
    rx335_cur."!cursor_fail"()
    rx335_cur."!cursor_debug"("FAIL  ", "backslash:sym<t>")
    .return (rx335_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<t>"  :subid("106_1257089954.58465") :method
.annotate "line", 3
    new $P337, "ResizablePMCArray"
    push $P337, "T"
    push $P337, "t"
    .return ($P337)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<v>"  :subid("107_1257089954.58465") :method :outer("11_1257089954.58465")
.annotate "line", 3
    .local string rx340_tgt
    .local int rx340_pos
    .local int rx340_off
    .local int rx340_eos
    .local int rx340_rep
    .local pmc rx340_cur
    (rx340_cur, rx340_pos, rx340_tgt, $I10) = self."!cursor_start"()
    rx340_cur."!cursor_debug"("START ", "backslash:sym<v>")
    .lex unicode:"$\x{a2}", rx340_cur
    .local pmc match
    .lex "$/", match
    length rx340_eos, rx340_tgt
    set rx340_off, 0
    lt $I10, 2, rx340_start
    sub rx340_off, $I10, 1
    substr rx340_tgt, rx340_tgt, rx340_off
  rx340_start:
.annotate "line", 121
  # rx subcapture "sym"
    set_addr $I10, rxcap_343_fail
    rx340_cur."!mark_push"(0, rx340_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx340_pos, rx340_eos, rx340_fail
    sub $I10, rx340_pos, rx340_off
    substr $S10, rx340_tgt, $I10, 1
    index $I11, "vV", $S10
    lt $I11, 0, rx340_fail
    inc rx340_pos
    set_addr $I10, rxcap_343_fail
    ($I12, $I11) = rx340_cur."!mark_peek"($I10)
    rx340_cur."!cursor_pos"($I11)
    ($P10) = rx340_cur."!cursor_start"()
    $P10."!cursor_pass"(rx340_pos, "")
    rx340_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_343_done
  rxcap_343_fail:
    goto rx340_fail
  rxcap_343_done:
  # rx pass
    rx340_cur."!cursor_pass"(rx340_pos, "backslash:sym<v>")
    rx340_cur."!cursor_debug"("PASS  ", "backslash:sym<v>", " at pos=", rx340_pos)
    .return (rx340_cur)
  rx340_fail:
.annotate "line", 3
    (rx340_rep, rx340_pos, $I10, $P10) = rx340_cur."!mark_fail"(0)
    lt rx340_pos, -1, rx340_done
    eq rx340_pos, -1, rx340_fail
    jump $I10
  rx340_done:
    rx340_cur."!cursor_fail"()
    rx340_cur."!cursor_debug"("FAIL  ", "backslash:sym<v>")
    .return (rx340_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<v>"  :subid("108_1257089954.58465") :method
.annotate "line", 3
    new $P342, "ResizablePMCArray"
    push $P342, "V"
    push $P342, "v"
    .return ($P342)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<c>"  :subid("109_1257089954.58465") :method :outer("11_1257089954.58465")
.annotate "line", 3
    .local string rx345_tgt
    .local int rx345_pos
    .local int rx345_off
    .local int rx345_eos
    .local int rx345_rep
    .local pmc rx345_cur
    (rx345_cur, rx345_pos, rx345_tgt, $I10) = self."!cursor_start"()
    rx345_cur."!cursor_debug"("START ", "backslash:sym<c>")
    .lex unicode:"$\x{a2}", rx345_cur
    .local pmc match
    .lex "$/", match
    length rx345_eos, rx345_tgt
    set rx345_off, 0
    lt $I10, 2, rx345_start
    sub rx345_off, $I10, 1
    substr rx345_tgt, rx345_tgt, rx345_off
  rx345_start:
.annotate "line", 122
  # rx subcapture "sym"
    set_addr $I10, rxcap_350_fail
    rx345_cur."!mark_push"(0, rx345_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx345_pos, rx345_eos, rx345_fail
    sub $I10, rx345_pos, rx345_off
    substr $S10, rx345_tgt, $I10, 1
    index $I11, "cC", $S10
    lt $I11, 0, rx345_fail
    inc rx345_pos
    set_addr $I10, rxcap_350_fail
    ($I12, $I11) = rx345_cur."!mark_peek"($I10)
    rx345_cur."!cursor_pos"($I11)
    ($P10) = rx345_cur."!cursor_start"()
    $P10."!cursor_pass"(rx345_pos, "")
    rx345_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_350_done
  rxcap_350_fail:
    goto rx345_fail
  rxcap_350_done:
  # rx subrule "charspec" subtype=capture negate=
    rx345_cur."!cursor_pos"(rx345_pos)
    $P10 = rx345_cur."charspec"()
    unless $P10, rx345_fail
    rx345_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charspec")
    rx345_pos = $P10."pos"()
  # rx pass
    rx345_cur."!cursor_pass"(rx345_pos, "backslash:sym<c>")
    rx345_cur."!cursor_debug"("PASS  ", "backslash:sym<c>", " at pos=", rx345_pos)
    .return (rx345_cur)
  rx345_fail:
.annotate "line", 3
    (rx345_rep, rx345_pos, $I10, $P10) = rx345_cur."!mark_fail"(0)
    lt rx345_pos, -1, rx345_done
    eq rx345_pos, -1, rx345_fail
    jump $I10
  rx345_done:
    rx345_cur."!cursor_fail"()
    rx345_cur."!cursor_debug"("FAIL  ", "backslash:sym<c>")
    .return (rx345_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<c>"  :subid("110_1257089954.58465") :method
.annotate "line", 3
    $P347 = self."!PREFIX__!subrule"("charspec", "C")
    $P348 = self."!PREFIX__!subrule"("charspec", "c")
    new $P349, "ResizablePMCArray"
    push $P349, $P347
    push $P349, $P348
    .return ($P349)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<o>"  :subid("111_1257089954.58465") :method :outer("11_1257089954.58465")
.annotate "line", 3
    .local string rx352_tgt
    .local int rx352_pos
    .local int rx352_off
    .local int rx352_eos
    .local int rx352_rep
    .local pmc rx352_cur
    (rx352_cur, rx352_pos, rx352_tgt, $I10) = self."!cursor_start"()
    rx352_cur."!cursor_debug"("START ", "backslash:sym<o>")
    .lex unicode:"$\x{a2}", rx352_cur
    .local pmc match
    .lex "$/", match
    length rx352_eos, rx352_tgt
    set rx352_off, 0
    lt $I10, 2, rx352_start
    sub rx352_off, $I10, 1
    substr rx352_tgt, rx352_tgt, rx352_off
  rx352_start:
.annotate "line", 123
  # rx subcapture "sym"
    set_addr $I10, rxcap_359_fail
    rx352_cur."!mark_push"(0, rx352_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx352_pos, rx352_eos, rx352_fail
    sub $I10, rx352_pos, rx352_off
    substr $S10, rx352_tgt, $I10, 1
    index $I11, "oO", $S10
    lt $I11, 0, rx352_fail
    inc rx352_pos
    set_addr $I10, rxcap_359_fail
    ($I12, $I11) = rx352_cur."!mark_peek"($I10)
    rx352_cur."!cursor_pos"($I11)
    ($P10) = rx352_cur."!cursor_start"()
    $P10."!cursor_pass"(rx352_pos, "")
    rx352_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_359_done
  rxcap_359_fail:
    goto rx352_fail
  rxcap_359_done:
  alt360_0:
    set_addr $I10, alt360_1
    rx352_cur."!mark_push"(0, rx352_pos, $I10)
  # rx subrule "octint" subtype=capture negate=
    rx352_cur."!cursor_pos"(rx352_pos)
    $P10 = rx352_cur."octint"()
    unless $P10, rx352_fail
    rx352_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octint")
    rx352_pos = $P10."pos"()
    goto alt360_end
  alt360_1:
  # rx literal  "["
    add $I11, rx352_pos, 1
    gt $I11, rx352_eos, rx352_fail
    sub $I11, rx352_pos, rx352_off
    substr $S10, rx352_tgt, $I11, 1
    ne $S10, "[", rx352_fail
    add rx352_pos, 1
  # rx subrule "octints" subtype=capture negate=
    rx352_cur."!cursor_pos"(rx352_pos)
    $P10 = rx352_cur."octints"()
    unless $P10, rx352_fail
    rx352_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octints")
    rx352_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx352_pos, 1
    gt $I11, rx352_eos, rx352_fail
    sub $I11, rx352_pos, rx352_off
    substr $S10, rx352_tgt, $I11, 1
    ne $S10, "]", rx352_fail
    add rx352_pos, 1
  alt360_end:
  # rx pass
    rx352_cur."!cursor_pass"(rx352_pos, "backslash:sym<o>")
    rx352_cur."!cursor_debug"("PASS  ", "backslash:sym<o>", " at pos=", rx352_pos)
    .return (rx352_cur)
  rx352_fail:
.annotate "line", 3
    (rx352_rep, rx352_pos, $I10, $P10) = rx352_cur."!mark_fail"(0)
    lt rx352_pos, -1, rx352_done
    eq rx352_pos, -1, rx352_fail
    jump $I10
  rx352_done:
    rx352_cur."!cursor_fail"()
    rx352_cur."!cursor_debug"("FAIL  ", "backslash:sym<o>")
    .return (rx352_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<o>"  :subid("112_1257089954.58465") :method
.annotate "line", 3
    $P354 = self."!PREFIX__!subrule"("octints", "O[")
    $P355 = self."!PREFIX__!subrule"("octint", "O")
    $P356 = self."!PREFIX__!subrule"("octints", "o[")
    $P357 = self."!PREFIX__!subrule"("octint", "o")
    new $P358, "ResizablePMCArray"
    push $P358, $P354
    push $P358, $P355
    push $P358, $P356
    push $P358, $P357
    .return ($P358)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<x>"  :subid("113_1257089954.58465") :method :outer("11_1257089954.58465")
.annotate "line", 3
    .local string rx362_tgt
    .local int rx362_pos
    .local int rx362_off
    .local int rx362_eos
    .local int rx362_rep
    .local pmc rx362_cur
    (rx362_cur, rx362_pos, rx362_tgt, $I10) = self."!cursor_start"()
    rx362_cur."!cursor_debug"("START ", "backslash:sym<x>")
    .lex unicode:"$\x{a2}", rx362_cur
    .local pmc match
    .lex "$/", match
    length rx362_eos, rx362_tgt
    set rx362_off, 0
    lt $I10, 2, rx362_start
    sub rx362_off, $I10, 1
    substr rx362_tgt, rx362_tgt, rx362_off
  rx362_start:
.annotate "line", 124
  # rx subcapture "sym"
    set_addr $I10, rxcap_369_fail
    rx362_cur."!mark_push"(0, rx362_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx362_pos, rx362_eos, rx362_fail
    sub $I10, rx362_pos, rx362_off
    substr $S10, rx362_tgt, $I10, 1
    index $I11, "xX", $S10
    lt $I11, 0, rx362_fail
    inc rx362_pos
    set_addr $I10, rxcap_369_fail
    ($I12, $I11) = rx362_cur."!mark_peek"($I10)
    rx362_cur."!cursor_pos"($I11)
    ($P10) = rx362_cur."!cursor_start"()
    $P10."!cursor_pass"(rx362_pos, "")
    rx362_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_369_done
  rxcap_369_fail:
    goto rx362_fail
  rxcap_369_done:
  alt370_0:
    set_addr $I10, alt370_1
    rx362_cur."!mark_push"(0, rx362_pos, $I10)
  # rx subrule "hexint" subtype=capture negate=
    rx362_cur."!cursor_pos"(rx362_pos)
    $P10 = rx362_cur."hexint"()
    unless $P10, rx362_fail
    rx362_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexint")
    rx362_pos = $P10."pos"()
    goto alt370_end
  alt370_1:
  # rx literal  "["
    add $I11, rx362_pos, 1
    gt $I11, rx362_eos, rx362_fail
    sub $I11, rx362_pos, rx362_off
    substr $S10, rx362_tgt, $I11, 1
    ne $S10, "[", rx362_fail
    add rx362_pos, 1
  # rx subrule "hexints" subtype=capture negate=
    rx362_cur."!cursor_pos"(rx362_pos)
    $P10 = rx362_cur."hexints"()
    unless $P10, rx362_fail
    rx362_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexints")
    rx362_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx362_pos, 1
    gt $I11, rx362_eos, rx362_fail
    sub $I11, rx362_pos, rx362_off
    substr $S10, rx362_tgt, $I11, 1
    ne $S10, "]", rx362_fail
    add rx362_pos, 1
  alt370_end:
  # rx pass
    rx362_cur."!cursor_pass"(rx362_pos, "backslash:sym<x>")
    rx362_cur."!cursor_debug"("PASS  ", "backslash:sym<x>", " at pos=", rx362_pos)
    .return (rx362_cur)
  rx362_fail:
.annotate "line", 3
    (rx362_rep, rx362_pos, $I10, $P10) = rx362_cur."!mark_fail"(0)
    lt rx362_pos, -1, rx362_done
    eq rx362_pos, -1, rx362_fail
    jump $I10
  rx362_done:
    rx362_cur."!cursor_fail"()
    rx362_cur."!cursor_debug"("FAIL  ", "backslash:sym<x>")
    .return (rx362_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<x>"  :subid("114_1257089954.58465") :method
.annotate "line", 3
    $P364 = self."!PREFIX__!subrule"("hexints", "X[")
    $P365 = self."!PREFIX__!subrule"("hexint", "X")
    $P366 = self."!PREFIX__!subrule"("hexints", "x[")
    $P367 = self."!PREFIX__!subrule"("hexint", "x")
    new $P368, "ResizablePMCArray"
    push $P368, $P364
    push $P368, $P365
    push $P368, $P366
    push $P368, $P367
    .return ($P368)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<A>"  :subid("115_1257089954.58465") :method :outer("11_1257089954.58465")
.annotate "line", 3
    .local string rx372_tgt
    .local int rx372_pos
    .local int rx372_off
    .local int rx372_eos
    .local int rx372_rep
    .local pmc rx372_cur
    (rx372_cur, rx372_pos, rx372_tgt, $I10) = self."!cursor_start"()
    rx372_cur."!cursor_debug"("START ", "backslash:sym<A>")
    .lex unicode:"$\x{a2}", rx372_cur
    .local pmc match
    .lex "$/", match
    length rx372_eos, rx372_tgt
    set rx372_off, 0
    lt $I10, 2, rx372_start
    sub rx372_off, $I10, 1
    substr rx372_tgt, rx372_tgt, rx372_off
  rx372_start:
.annotate "line", 125
  # rx literal  "A"
    add $I11, rx372_pos, 1
    gt $I11, rx372_eos, rx372_fail
    sub $I11, rx372_pos, rx372_off
    substr $S10, rx372_tgt, $I11, 1
    ne $S10, "A", rx372_fail
    add rx372_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx372_cur."!cursor_pos"(rx372_pos)
    $P10 = rx372_cur."obs"("\\\\A as beginning-of-string matcher", "^")
    unless $P10, rx372_fail
    rx372_pos = $P10."pos"()
  # rx pass
    rx372_cur."!cursor_pass"(rx372_pos, "backslash:sym<A>")
    rx372_cur."!cursor_debug"("PASS  ", "backslash:sym<A>", " at pos=", rx372_pos)
    .return (rx372_cur)
  rx372_fail:
.annotate "line", 3
    (rx372_rep, rx372_pos, $I10, $P10) = rx372_cur."!mark_fail"(0)
    lt rx372_pos, -1, rx372_done
    eq rx372_pos, -1, rx372_fail
    jump $I10
  rx372_done:
    rx372_cur."!cursor_fail"()
    rx372_cur."!cursor_debug"("FAIL  ", "backslash:sym<A>")
    .return (rx372_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<A>"  :subid("116_1257089954.58465") :method
.annotate "line", 3
    $P374 = self."!PREFIX__!subrule"("obs", "A")
    new $P375, "ResizablePMCArray"
    push $P375, $P374
    .return ($P375)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<z>"  :subid("117_1257089954.58465") :method :outer("11_1257089954.58465")
.annotate "line", 3
    .local string rx377_tgt
    .local int rx377_pos
    .local int rx377_off
    .local int rx377_eos
    .local int rx377_rep
    .local pmc rx377_cur
    (rx377_cur, rx377_pos, rx377_tgt, $I10) = self."!cursor_start"()
    rx377_cur."!cursor_debug"("START ", "backslash:sym<z>")
    .lex unicode:"$\x{a2}", rx377_cur
    .local pmc match
    .lex "$/", match
    length rx377_eos, rx377_tgt
    set rx377_off, 0
    lt $I10, 2, rx377_start
    sub rx377_off, $I10, 1
    substr rx377_tgt, rx377_tgt, rx377_off
  rx377_start:
.annotate "line", 126
  # rx literal  "z"
    add $I11, rx377_pos, 1
    gt $I11, rx377_eos, rx377_fail
    sub $I11, rx377_pos, rx377_off
    substr $S10, rx377_tgt, $I11, 1
    ne $S10, "z", rx377_fail
    add rx377_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx377_cur."!cursor_pos"(rx377_pos)
    $P10 = rx377_cur."obs"("\\\\z as end-of-string matcher", "$")
    unless $P10, rx377_fail
    rx377_pos = $P10."pos"()
  # rx pass
    rx377_cur."!cursor_pass"(rx377_pos, "backslash:sym<z>")
    rx377_cur."!cursor_debug"("PASS  ", "backslash:sym<z>", " at pos=", rx377_pos)
    .return (rx377_cur)
  rx377_fail:
.annotate "line", 3
    (rx377_rep, rx377_pos, $I10, $P10) = rx377_cur."!mark_fail"(0)
    lt rx377_pos, -1, rx377_done
    eq rx377_pos, -1, rx377_fail
    jump $I10
  rx377_done:
    rx377_cur."!cursor_fail"()
    rx377_cur."!cursor_debug"("FAIL  ", "backslash:sym<z>")
    .return (rx377_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<z>"  :subid("118_1257089954.58465") :method
.annotate "line", 3
    $P379 = self."!PREFIX__!subrule"("obs", "z")
    new $P380, "ResizablePMCArray"
    push $P380, $P379
    .return ($P380)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<Z>"  :subid("119_1257089954.58465") :method :outer("11_1257089954.58465")
.annotate "line", 3
    .local string rx382_tgt
    .local int rx382_pos
    .local int rx382_off
    .local int rx382_eos
    .local int rx382_rep
    .local pmc rx382_cur
    (rx382_cur, rx382_pos, rx382_tgt, $I10) = self."!cursor_start"()
    rx382_cur."!cursor_debug"("START ", "backslash:sym<Z>")
    .lex unicode:"$\x{a2}", rx382_cur
    .local pmc match
    .lex "$/", match
    length rx382_eos, rx382_tgt
    set rx382_off, 0
    lt $I10, 2, rx382_start
    sub rx382_off, $I10, 1
    substr rx382_tgt, rx382_tgt, rx382_off
  rx382_start:
.annotate "line", 127
  # rx literal  "Z"
    add $I11, rx382_pos, 1
    gt $I11, rx382_eos, rx382_fail
    sub $I11, rx382_pos, rx382_off
    substr $S10, rx382_tgt, $I11, 1
    ne $S10, "Z", rx382_fail
    add rx382_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx382_cur."!cursor_pos"(rx382_pos)
    $P10 = rx382_cur."obs"("\\\\Z as end-of-string matcher", "\\\\n?$")
    unless $P10, rx382_fail
    rx382_pos = $P10."pos"()
  # rx pass
    rx382_cur."!cursor_pass"(rx382_pos, "backslash:sym<Z>")
    rx382_cur."!cursor_debug"("PASS  ", "backslash:sym<Z>", " at pos=", rx382_pos)
    .return (rx382_cur)
  rx382_fail:
.annotate "line", 3
    (rx382_rep, rx382_pos, $I10, $P10) = rx382_cur."!mark_fail"(0)
    lt rx382_pos, -1, rx382_done
    eq rx382_pos, -1, rx382_fail
    jump $I10
  rx382_done:
    rx382_cur."!cursor_fail"()
    rx382_cur."!cursor_debug"("FAIL  ", "backslash:sym<Z>")
    .return (rx382_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<Z>"  :subid("120_1257089954.58465") :method
.annotate "line", 3
    $P384 = self."!PREFIX__!subrule"("obs", "Z")
    new $P385, "ResizablePMCArray"
    push $P385, $P384
    .return ($P385)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<Q>"  :subid("121_1257089954.58465") :method :outer("11_1257089954.58465")
.annotate "line", 3
    .local string rx387_tgt
    .local int rx387_pos
    .local int rx387_off
    .local int rx387_eos
    .local int rx387_rep
    .local pmc rx387_cur
    (rx387_cur, rx387_pos, rx387_tgt, $I10) = self."!cursor_start"()
    rx387_cur."!cursor_debug"("START ", "backslash:sym<Q>")
    .lex unicode:"$\x{a2}", rx387_cur
    .local pmc match
    .lex "$/", match
    length rx387_eos, rx387_tgt
    set rx387_off, 0
    lt $I10, 2, rx387_start
    sub rx387_off, $I10, 1
    substr rx387_tgt, rx387_tgt, rx387_off
  rx387_start:
.annotate "line", 128
  # rx literal  "Q"
    add $I11, rx387_pos, 1
    gt $I11, rx387_eos, rx387_fail
    sub $I11, rx387_pos, rx387_off
    substr $S10, rx387_tgt, $I11, 1
    ne $S10, "Q", rx387_fail
    add rx387_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx387_cur."!cursor_pos"(rx387_pos)
    $P10 = rx387_cur."obs"("\\\\Q as quotemeta", "quotes or literal variable match")
    unless $P10, rx387_fail
    rx387_pos = $P10."pos"()
  # rx pass
    rx387_cur."!cursor_pass"(rx387_pos, "backslash:sym<Q>")
    rx387_cur."!cursor_debug"("PASS  ", "backslash:sym<Q>", " at pos=", rx387_pos)
    .return (rx387_cur)
  rx387_fail:
.annotate "line", 3
    (rx387_rep, rx387_pos, $I10, $P10) = rx387_cur."!mark_fail"(0)
    lt rx387_pos, -1, rx387_done
    eq rx387_pos, -1, rx387_fail
    jump $I10
  rx387_done:
    rx387_cur."!cursor_fail"()
    rx387_cur."!cursor_debug"("FAIL  ", "backslash:sym<Q>")
    .return (rx387_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<Q>"  :subid("122_1257089954.58465") :method
.annotate "line", 3
    $P389 = self."!PREFIX__!subrule"("obs", "Q")
    new $P390, "ResizablePMCArray"
    push $P390, $P389
    .return ($P390)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<misc>"  :subid("123_1257089954.58465") :method :outer("11_1257089954.58465")
.annotate "line", 3
    .local string rx392_tgt
    .local int rx392_pos
    .local int rx392_off
    .local int rx392_eos
    .local int rx392_rep
    .local pmc rx392_cur
    (rx392_cur, rx392_pos, rx392_tgt, $I10) = self."!cursor_start"()
    rx392_cur."!cursor_debug"("START ", "backslash:sym<misc>")
    .lex unicode:"$\x{a2}", rx392_cur
    .local pmc match
    .lex "$/", match
    length rx392_eos, rx392_tgt
    set rx392_off, 0
    lt $I10, 2, rx392_start
    sub rx392_off, $I10, 1
    substr rx392_tgt, rx392_tgt, rx392_off
  rx392_start:
.annotate "line", 129
  # rx charclass W
    ge rx392_pos, rx392_eos, rx392_fail
    sub $I10, rx392_pos, rx392_off
    is_cclass $I11, 8192, rx392_tgt, $I10
    if $I11, rx392_fail
    inc rx392_pos
  # rx pass
    rx392_cur."!cursor_pass"(rx392_pos, "backslash:sym<misc>")
    rx392_cur."!cursor_debug"("PASS  ", "backslash:sym<misc>", " at pos=", rx392_pos)
    .return (rx392_cur)
  rx392_fail:
.annotate "line", 3
    (rx392_rep, rx392_pos, $I10, $P10) = rx392_cur."!mark_fail"(0)
    lt rx392_pos, -1, rx392_done
    eq rx392_pos, -1, rx392_fail
    jump $I10
  rx392_done:
    rx392_cur."!cursor_fail"()
    rx392_cur."!cursor_debug"("FAIL  ", "backslash:sym<misc>")
    .return (rx392_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<misc>"  :subid("124_1257089954.58465") :method
.annotate "line", 3
    new $P394, "ResizablePMCArray"
    push $P394, ""
    .return ($P394)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion"  :subid("125_1257089954.58465") :method
.annotate "line", 131
    $P396 = self."!protoregex"("assertion")
    .return ($P396)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion"  :subid("126_1257089954.58465") :method
.annotate "line", 131
    $P398 = self."!PREFIX__!protoregex"("assertion")
    .return ($P398)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<?>"  :subid("127_1257089954.58465") :method :outer("11_1257089954.58465")
.annotate "line", 3
    .const 'Sub' $P406 = "129_1257089954.58465" 
    capture_lex $P406
    .local string rx400_tgt
    .local int rx400_pos
    .local int rx400_off
    .local int rx400_eos
    .local int rx400_rep
    .local pmc rx400_cur
    (rx400_cur, rx400_pos, rx400_tgt, $I10) = self."!cursor_start"()
    rx400_cur."!cursor_debug"("START ", "assertion:sym<?>")
    .lex unicode:"$\x{a2}", rx400_cur
    .local pmc match
    .lex "$/", match
    length rx400_eos, rx400_tgt
    set rx400_off, 0
    lt $I10, 2, rx400_start
    sub rx400_off, $I10, 1
    substr rx400_tgt, rx400_tgt, rx400_off
  rx400_start:
.annotate "line", 133
  # rx literal  "?"
    add $I11, rx400_pos, 1
    gt $I11, rx400_eos, rx400_fail
    sub $I11, rx400_pos, rx400_off
    substr $S10, rx400_tgt, $I11, 1
    ne $S10, "?", rx400_fail
    add rx400_pos, 1
  alt404_0:
    set_addr $I10, alt404_1
    rx400_cur."!mark_push"(0, rx400_pos, $I10)
  # rx subrule "before" subtype=zerowidth negate=
    rx400_cur."!cursor_pos"(rx400_pos)
    .const 'Sub' $P406 = "129_1257089954.58465" 
    capture_lex $P406
    $P10 = rx400_cur."before"($P406)
    unless $P10, rx400_fail
    goto alt404_end
  alt404_1:
  # rx subrule "assertion" subtype=capture negate=
    rx400_cur."!cursor_pos"(rx400_pos)
    $P10 = rx400_cur."assertion"()
    unless $P10, rx400_fail
    rx400_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx400_pos = $P10."pos"()
  alt404_end:
  # rx pass
    rx400_cur."!cursor_pass"(rx400_pos, "assertion:sym<?>")
    rx400_cur."!cursor_debug"("PASS  ", "assertion:sym<?>", " at pos=", rx400_pos)
    .return (rx400_cur)
  rx400_fail:
.annotate "line", 3
    (rx400_rep, rx400_pos, $I10, $P10) = rx400_cur."!mark_fail"(0)
    lt rx400_pos, -1, rx400_done
    eq rx400_pos, -1, rx400_fail
    jump $I10
  rx400_done:
    rx400_cur."!cursor_fail"()
    rx400_cur."!cursor_debug"("FAIL  ", "assertion:sym<?>")
    .return (rx400_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<?>"  :subid("128_1257089954.58465") :method
.annotate "line", 3
    $P402 = self."!PREFIX__!subrule"("assertion", "?")
    new $P403, "ResizablePMCArray"
    push $P403, $P402
    push $P403, "?"
    .return ($P403)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block405"  :anon :subid("129_1257089954.58465") :method :outer("127_1257089954.58465")
.annotate "line", 133
    .local string rx407_tgt
    .local int rx407_pos
    .local int rx407_off
    .local int rx407_eos
    .local int rx407_rep
    .local pmc rx407_cur
    (rx407_cur, rx407_pos, rx407_tgt, $I10) = self."!cursor_start"()
    rx407_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx407_cur
    .local pmc match
    .lex "$/", match
    length rx407_eos, rx407_tgt
    set rx407_off, 0
    lt $I10, 2, rx407_start
    sub rx407_off, $I10, 1
    substr rx407_tgt, rx407_tgt, rx407_off
  rx407_start:
    ge rx407_pos, 0, rxscan408_done
  rxscan408_loop:
    ($P10) = rx407_cur."from"()
    inc $P10
    set rx407_pos, $P10
    ge rx407_pos, rx407_eos, rxscan408_done
    set_addr $I10, rxscan408_loop
    rx407_cur."!mark_push"(0, rx407_pos, $I10)
  rxscan408_done:
  # rx literal  ">"
    add $I11, rx407_pos, 1
    gt $I11, rx407_eos, rx407_fail
    sub $I11, rx407_pos, rx407_off
    substr $S10, rx407_tgt, $I11, 1
    ne $S10, ">", rx407_fail
    add rx407_pos, 1
  # rx pass
    rx407_cur."!cursor_pass"(rx407_pos, "")
    rx407_cur."!cursor_debug"("PASS  ", "", " at pos=", rx407_pos)
    .return (rx407_cur)
  rx407_fail:
    (rx407_rep, rx407_pos, $I10, $P10) = rx407_cur."!mark_fail"(0)
    lt rx407_pos, -1, rx407_done
    eq rx407_pos, -1, rx407_fail
    jump $I10
  rx407_done:
    rx407_cur."!cursor_fail"()
    rx407_cur."!cursor_debug"("FAIL  ", "")
    .return (rx407_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<!>"  :subid("130_1257089954.58465") :method :outer("11_1257089954.58465")
.annotate "line", 3
    .const 'Sub' $P416 = "132_1257089954.58465" 
    capture_lex $P416
    .local string rx410_tgt
    .local int rx410_pos
    .local int rx410_off
    .local int rx410_eos
    .local int rx410_rep
    .local pmc rx410_cur
    (rx410_cur, rx410_pos, rx410_tgt, $I10) = self."!cursor_start"()
    rx410_cur."!cursor_debug"("START ", "assertion:sym<!>")
    .lex unicode:"$\x{a2}", rx410_cur
    .local pmc match
    .lex "$/", match
    length rx410_eos, rx410_tgt
    set rx410_off, 0
    lt $I10, 2, rx410_start
    sub rx410_off, $I10, 1
    substr rx410_tgt, rx410_tgt, rx410_off
  rx410_start:
.annotate "line", 134
  # rx literal  "!"
    add $I11, rx410_pos, 1
    gt $I11, rx410_eos, rx410_fail
    sub $I11, rx410_pos, rx410_off
    substr $S10, rx410_tgt, $I11, 1
    ne $S10, "!", rx410_fail
    add rx410_pos, 1
  alt414_0:
    set_addr $I10, alt414_1
    rx410_cur."!mark_push"(0, rx410_pos, $I10)
  # rx subrule "before" subtype=zerowidth negate=
    rx410_cur."!cursor_pos"(rx410_pos)
    .const 'Sub' $P416 = "132_1257089954.58465" 
    capture_lex $P416
    $P10 = rx410_cur."before"($P416)
    unless $P10, rx410_fail
    goto alt414_end
  alt414_1:
  # rx subrule "assertion" subtype=capture negate=
    rx410_cur."!cursor_pos"(rx410_pos)
    $P10 = rx410_cur."assertion"()
    unless $P10, rx410_fail
    rx410_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx410_pos = $P10."pos"()
  alt414_end:
  # rx pass
    rx410_cur."!cursor_pass"(rx410_pos, "assertion:sym<!>")
    rx410_cur."!cursor_debug"("PASS  ", "assertion:sym<!>", " at pos=", rx410_pos)
    .return (rx410_cur)
  rx410_fail:
.annotate "line", 3
    (rx410_rep, rx410_pos, $I10, $P10) = rx410_cur."!mark_fail"(0)
    lt rx410_pos, -1, rx410_done
    eq rx410_pos, -1, rx410_fail
    jump $I10
  rx410_done:
    rx410_cur."!cursor_fail"()
    rx410_cur."!cursor_debug"("FAIL  ", "assertion:sym<!>")
    .return (rx410_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<!>"  :subid("131_1257089954.58465") :method
.annotate "line", 3
    $P412 = self."!PREFIX__!subrule"("assertion", "!")
    new $P413, "ResizablePMCArray"
    push $P413, $P412
    push $P413, "!"
    .return ($P413)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block415"  :anon :subid("132_1257089954.58465") :method :outer("130_1257089954.58465")
.annotate "line", 134
    .local string rx417_tgt
    .local int rx417_pos
    .local int rx417_off
    .local int rx417_eos
    .local int rx417_rep
    .local pmc rx417_cur
    (rx417_cur, rx417_pos, rx417_tgt, $I10) = self."!cursor_start"()
    rx417_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx417_cur
    .local pmc match
    .lex "$/", match
    length rx417_eos, rx417_tgt
    set rx417_off, 0
    lt $I10, 2, rx417_start
    sub rx417_off, $I10, 1
    substr rx417_tgt, rx417_tgt, rx417_off
  rx417_start:
    ge rx417_pos, 0, rxscan418_done
  rxscan418_loop:
    ($P10) = rx417_cur."from"()
    inc $P10
    set rx417_pos, $P10
    ge rx417_pos, rx417_eos, rxscan418_done
    set_addr $I10, rxscan418_loop
    rx417_cur."!mark_push"(0, rx417_pos, $I10)
  rxscan418_done:
  # rx literal  ">"
    add $I11, rx417_pos, 1
    gt $I11, rx417_eos, rx417_fail
    sub $I11, rx417_pos, rx417_off
    substr $S10, rx417_tgt, $I11, 1
    ne $S10, ">", rx417_fail
    add rx417_pos, 1
  # rx pass
    rx417_cur."!cursor_pass"(rx417_pos, "")
    rx417_cur."!cursor_debug"("PASS  ", "", " at pos=", rx417_pos)
    .return (rx417_cur)
  rx417_fail:
    (rx417_rep, rx417_pos, $I10, $P10) = rx417_cur."!mark_fail"(0)
    lt rx417_pos, -1, rx417_done
    eq rx417_pos, -1, rx417_fail
    jump $I10
  rx417_done:
    rx417_cur."!cursor_fail"()
    rx417_cur."!cursor_debug"("FAIL  ", "")
    .return (rx417_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<method>"  :subid("133_1257089954.58465") :method :outer("11_1257089954.58465")
.annotate "line", 3
    .local string rx420_tgt
    .local int rx420_pos
    .local int rx420_off
    .local int rx420_eos
    .local int rx420_rep
    .local pmc rx420_cur
    (rx420_cur, rx420_pos, rx420_tgt, $I10) = self."!cursor_start"()
    rx420_cur."!cursor_debug"("START ", "assertion:sym<method>")
    .lex unicode:"$\x{a2}", rx420_cur
    .local pmc match
    .lex "$/", match
    length rx420_eos, rx420_tgt
    set rx420_off, 0
    lt $I10, 2, rx420_start
    sub rx420_off, $I10, 1
    substr rx420_tgt, rx420_tgt, rx420_off
  rx420_start:
.annotate "line", 137
  # rx literal  "."
    add $I11, rx420_pos, 1
    gt $I11, rx420_eos, rx420_fail
    sub $I11, rx420_pos, rx420_off
    substr $S10, rx420_tgt, $I11, 1
    ne $S10, ".", rx420_fail
    add rx420_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx420_cur."!cursor_pos"(rx420_pos)
    $P10 = rx420_cur."assertion"()
    unless $P10, rx420_fail
    rx420_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx420_pos = $P10."pos"()
.annotate "line", 136
  # rx pass
    rx420_cur."!cursor_pass"(rx420_pos, "assertion:sym<method>")
    rx420_cur."!cursor_debug"("PASS  ", "assertion:sym<method>", " at pos=", rx420_pos)
    .return (rx420_cur)
  rx420_fail:
.annotate "line", 3
    (rx420_rep, rx420_pos, $I10, $P10) = rx420_cur."!mark_fail"(0)
    lt rx420_pos, -1, rx420_done
    eq rx420_pos, -1, rx420_fail
    jump $I10
  rx420_done:
    rx420_cur."!cursor_fail"()
    rx420_cur."!cursor_debug"("FAIL  ", "assertion:sym<method>")
    .return (rx420_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<method>"  :subid("134_1257089954.58465") :method
.annotate "line", 3
    $P422 = self."!PREFIX__!subrule"("assertion", ".")
    new $P423, "ResizablePMCArray"
    push $P423, $P422
    .return ($P423)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<name>"  :subid("135_1257089954.58465") :method :outer("11_1257089954.58465")
.annotate "line", 3
    .const 'Sub' $P432 = "137_1257089954.58465" 
    capture_lex $P432
    .local string rx425_tgt
    .local int rx425_pos
    .local int rx425_off
    .local int rx425_eos
    .local int rx425_rep
    .local pmc rx425_cur
    (rx425_cur, rx425_pos, rx425_tgt, $I10) = self."!cursor_start"()
    rx425_cur."!cursor_debug"("START ", "assertion:sym<name>")
    rx425_cur."!cursor_caparray"("nibbler", "arglist", "assertion")
    .lex unicode:"$\x{a2}", rx425_cur
    .local pmc match
    .lex "$/", match
    length rx425_eos, rx425_tgt
    set rx425_off, 0
    lt $I10, 2, rx425_start
    sub rx425_off, $I10, 1
    substr rx425_tgt, rx425_tgt, rx425_off
  rx425_start:
.annotate "line", 141
  # rx subcapture "longname"
    set_addr $I10, rxcap_428_fail
    rx425_cur."!mark_push"(0, rx425_pos, $I10)
  # rx charclass_q w r 1..-1
    sub $I10, rx425_pos, rx425_off
    find_not_cclass $I11, 8192, rx425_tgt, $I10, rx425_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx425_fail
    add rx425_pos, rx425_off, $I11
    set_addr $I10, rxcap_428_fail
    ($I12, $I11) = rx425_cur."!mark_peek"($I10)
    rx425_cur."!cursor_pos"($I11)
    ($P10) = rx425_cur."!cursor_start"()
    $P10."!cursor_pass"(rx425_pos, "")
    rx425_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("longname")
    goto rxcap_428_done
  rxcap_428_fail:
    goto rx425_fail
  rxcap_428_done:
.annotate "line", 148
  # rx rxquantr429 ** 0..1
    set_addr $I435, rxquantr429_done
    rx425_cur."!mark_push"(0, rx425_pos, $I435)
  rxquantr429_loop:
  alt430_0:
.annotate "line", 142
    set_addr $I10, alt430_1
    rx425_cur."!mark_push"(0, rx425_pos, $I10)
.annotate "line", 143
  # rx subrule "before" subtype=zerowidth negate=
    rx425_cur."!cursor_pos"(rx425_pos)
    .const 'Sub' $P432 = "137_1257089954.58465" 
    capture_lex $P432
    $P10 = rx425_cur."before"($P432)
    unless $P10, rx425_fail
    goto alt430_end
  alt430_1:
    set_addr $I10, alt430_2
    rx425_cur."!mark_push"(0, rx425_pos, $I10)
.annotate "line", 144
  # rx literal  "="
    add $I11, rx425_pos, 1
    gt $I11, rx425_eos, rx425_fail
    sub $I11, rx425_pos, rx425_off
    substr $S10, rx425_tgt, $I11, 1
    ne $S10, "=", rx425_fail
    add rx425_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx425_cur."!cursor_pos"(rx425_pos)
    $P10 = rx425_cur."assertion"()
    unless $P10, rx425_fail
    rx425_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx425_pos = $P10."pos"()
    goto alt430_end
  alt430_2:
    set_addr $I10, alt430_3
    rx425_cur."!mark_push"(0, rx425_pos, $I10)
.annotate "line", 145
  # rx literal  ":"
    add $I11, rx425_pos, 1
    gt $I11, rx425_eos, rx425_fail
    sub $I11, rx425_pos, rx425_off
    substr $S10, rx425_tgt, $I11, 1
    ne $S10, ":", rx425_fail
    add rx425_pos, 1
  # rx subrule "arglist" subtype=capture negate=
    rx425_cur."!cursor_pos"(rx425_pos)
    $P10 = rx425_cur."arglist"()
    unless $P10, rx425_fail
    rx425_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx425_pos = $P10."pos"()
    goto alt430_end
  alt430_3:
    set_addr $I10, alt430_4
    rx425_cur."!mark_push"(0, rx425_pos, $I10)
.annotate "line", 146
  # rx literal  "("
    add $I11, rx425_pos, 1
    gt $I11, rx425_eos, rx425_fail
    sub $I11, rx425_pos, rx425_off
    substr $S10, rx425_tgt, $I11, 1
    ne $S10, "(", rx425_fail
    add rx425_pos, 1
  # rx subrule "arglist" subtype=capture negate=
    rx425_cur."!cursor_pos"(rx425_pos)
    $P10 = rx425_cur."arglist"()
    unless $P10, rx425_fail
    rx425_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx425_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx425_pos, 1
    gt $I11, rx425_eos, rx425_fail
    sub $I11, rx425_pos, rx425_off
    substr $S10, rx425_tgt, $I11, 1
    ne $S10, ")", rx425_fail
    add rx425_pos, 1
    goto alt430_end
  alt430_4:
.annotate "line", 147
  # rx subrule "normspace" subtype=method negate=
    rx425_cur."!cursor_pos"(rx425_pos)
    $P10 = rx425_cur."normspace"()
    unless $P10, rx425_fail
    rx425_pos = $P10."pos"()
  # rx subrule "nibbler" subtype=capture negate=
    rx425_cur."!cursor_pos"(rx425_pos)
    $P10 = rx425_cur."nibbler"()
    unless $P10, rx425_fail
    rx425_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx425_pos = $P10."pos"()
  alt430_end:
.annotate "line", 148
    (rx425_rep) = rx425_cur."!mark_commit"($I435)
  rxquantr429_done:
.annotate "line", 140
  # rx pass
    rx425_cur."!cursor_pass"(rx425_pos, "assertion:sym<name>")
    rx425_cur."!cursor_debug"("PASS  ", "assertion:sym<name>", " at pos=", rx425_pos)
    .return (rx425_cur)
  rx425_fail:
.annotate "line", 3
    (rx425_rep, rx425_pos, $I10, $P10) = rx425_cur."!mark_fail"(0)
    lt rx425_pos, -1, rx425_done
    eq rx425_pos, -1, rx425_fail
    jump $I10
  rx425_done:
    rx425_cur."!cursor_fail"()
    rx425_cur."!cursor_debug"("FAIL  ", "assertion:sym<name>")
    .return (rx425_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<name>"  :subid("136_1257089954.58465") :method
.annotate "line", 3
    new $P427, "ResizablePMCArray"
    push $P427, ""
    .return ($P427)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block431"  :anon :subid("137_1257089954.58465") :method :outer("135_1257089954.58465")
.annotate "line", 143
    .local string rx433_tgt
    .local int rx433_pos
    .local int rx433_off
    .local int rx433_eos
    .local int rx433_rep
    .local pmc rx433_cur
    (rx433_cur, rx433_pos, rx433_tgt, $I10) = self."!cursor_start"()
    rx433_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx433_cur
    .local pmc match
    .lex "$/", match
    length rx433_eos, rx433_tgt
    set rx433_off, 0
    lt $I10, 2, rx433_start
    sub rx433_off, $I10, 1
    substr rx433_tgt, rx433_tgt, rx433_off
  rx433_start:
    ge rx433_pos, 0, rxscan434_done
  rxscan434_loop:
    ($P10) = rx433_cur."from"()
    inc $P10
    set rx433_pos, $P10
    ge rx433_pos, rx433_eos, rxscan434_done
    set_addr $I10, rxscan434_loop
    rx433_cur."!mark_push"(0, rx433_pos, $I10)
  rxscan434_done:
  # rx literal  ">"
    add $I11, rx433_pos, 1
    gt $I11, rx433_eos, rx433_fail
    sub $I11, rx433_pos, rx433_off
    substr $S10, rx433_tgt, $I11, 1
    ne $S10, ">", rx433_fail
    add rx433_pos, 1
  # rx pass
    rx433_cur."!cursor_pass"(rx433_pos, "")
    rx433_cur."!cursor_debug"("PASS  ", "", " at pos=", rx433_pos)
    .return (rx433_cur)
  rx433_fail:
    (rx433_rep, rx433_pos, $I10, $P10) = rx433_cur."!mark_fail"(0)
    lt rx433_pos, -1, rx433_done
    eq rx433_pos, -1, rx433_fail
    jump $I10
  rx433_done:
    rx433_cur."!cursor_fail"()
    rx433_cur."!cursor_debug"("FAIL  ", "")
    .return (rx433_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<[>"  :subid("138_1257089954.58465") :method :outer("11_1257089954.58465")
.annotate "line", 3
    .const 'Sub' $P441 = "140_1257089954.58465" 
    capture_lex $P441
    .local string rx437_tgt
    .local int rx437_pos
    .local int rx437_off
    .local int rx437_eos
    .local int rx437_rep
    .local pmc rx437_cur
    (rx437_cur, rx437_pos, rx437_tgt, $I10) = self."!cursor_start"()
    rx437_cur."!cursor_debug"("START ", "assertion:sym<[>")
    rx437_cur."!cursor_caparray"("cclass_elem")
    .lex unicode:"$\x{a2}", rx437_cur
    .local pmc match
    .lex "$/", match
    length rx437_eos, rx437_tgt
    set rx437_off, 0
    lt $I10, 2, rx437_start
    sub rx437_off, $I10, 1
    substr rx437_tgt, rx437_tgt, rx437_off
  rx437_start:
.annotate "line", 151
  # rx subrule "before" subtype=zerowidth negate=
    rx437_cur."!cursor_pos"(rx437_pos)
    .const 'Sub' $P441 = "140_1257089954.58465" 
    capture_lex $P441
    $P10 = rx437_cur."before"($P441)
    unless $P10, rx437_fail
  # rx rxquantr445 ** 1..*
    set_addr $I446, rxquantr445_done
    rx437_cur."!mark_push"(0, -1, $I446)
  rxquantr445_loop:
  # rx subrule "cclass_elem" subtype=capture negate=
    rx437_cur."!cursor_pos"(rx437_pos)
    $P10 = rx437_cur."cclass_elem"()
    unless $P10, rx437_fail
    rx437_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("cclass_elem")
    rx437_pos = $P10."pos"()
    (rx437_rep) = rx437_cur."!mark_commit"($I446)
    rx437_cur."!mark_push"(rx437_rep, rx437_pos, $I446)
    goto rxquantr445_loop
  rxquantr445_done:
  # rx pass
    rx437_cur."!cursor_pass"(rx437_pos, "assertion:sym<[>")
    rx437_cur."!cursor_debug"("PASS  ", "assertion:sym<[>", " at pos=", rx437_pos)
    .return (rx437_cur)
  rx437_fail:
.annotate "line", 3
    (rx437_rep, rx437_pos, $I10, $P10) = rx437_cur."!mark_fail"(0)
    lt rx437_pos, -1, rx437_done
    eq rx437_pos, -1, rx437_fail
    jump $I10
  rx437_done:
    rx437_cur."!cursor_fail"()
    rx437_cur."!cursor_debug"("FAIL  ", "assertion:sym<[>")
    .return (rx437_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<[>"  :subid("139_1257089954.58465") :method
.annotate "line", 3
    new $P439, "ResizablePMCArray"
    push $P439, ""
    .return ($P439)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block440"  :anon :subid("140_1257089954.58465") :method :outer("138_1257089954.58465")
.annotate "line", 151
    .local string rx442_tgt
    .local int rx442_pos
    .local int rx442_off
    .local int rx442_eos
    .local int rx442_rep
    .local pmc rx442_cur
    (rx442_cur, rx442_pos, rx442_tgt, $I10) = self."!cursor_start"()
    rx442_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx442_cur
    .local pmc match
    .lex "$/", match
    length rx442_eos, rx442_tgt
    set rx442_off, 0
    lt $I10, 2, rx442_start
    sub rx442_off, $I10, 1
    substr rx442_tgt, rx442_tgt, rx442_off
  rx442_start:
    ge rx442_pos, 0, rxscan443_done
  rxscan443_loop:
    ($P10) = rx442_cur."from"()
    inc $P10
    set rx442_pos, $P10
    ge rx442_pos, rx442_eos, rxscan443_done
    set_addr $I10, rxscan443_loop
    rx442_cur."!mark_push"(0, rx442_pos, $I10)
  rxscan443_done:
  alt444_0:
    set_addr $I10, alt444_1
    rx442_cur."!mark_push"(0, rx442_pos, $I10)
  # rx literal  "["
    add $I11, rx442_pos, 1
    gt $I11, rx442_eos, rx442_fail
    sub $I11, rx442_pos, rx442_off
    substr $S10, rx442_tgt, $I11, 1
    ne $S10, "[", rx442_fail
    add rx442_pos, 1
    goto alt444_end
  alt444_1:
    set_addr $I10, alt444_2
    rx442_cur."!mark_push"(0, rx442_pos, $I10)
  # rx literal  "+"
    add $I11, rx442_pos, 1
    gt $I11, rx442_eos, rx442_fail
    sub $I11, rx442_pos, rx442_off
    substr $S10, rx442_tgt, $I11, 1
    ne $S10, "+", rx442_fail
    add rx442_pos, 1
    goto alt444_end
  alt444_2:
  # rx literal  "-"
    add $I11, rx442_pos, 1
    gt $I11, rx442_eos, rx442_fail
    sub $I11, rx442_pos, rx442_off
    substr $S10, rx442_tgt, $I11, 1
    ne $S10, "-", rx442_fail
    add rx442_pos, 1
  alt444_end:
  # rx pass
    rx442_cur."!cursor_pass"(rx442_pos, "")
    rx442_cur."!cursor_debug"("PASS  ", "", " at pos=", rx442_pos)
    .return (rx442_cur)
  rx442_fail:
    (rx442_rep, rx442_pos, $I10, $P10) = rx442_cur."!mark_fail"(0)
    lt rx442_pos, -1, rx442_done
    eq rx442_pos, -1, rx442_fail
    jump $I10
  rx442_done:
    rx442_cur."!cursor_fail"()
    rx442_cur."!cursor_debug"("FAIL  ", "")
    .return (rx442_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "cclass_elem"  :subid("141_1257089954.58465") :method :outer("11_1257089954.58465")
.annotate "line", 3
    .const 'Sub' $P458 = "143_1257089954.58465" 
    capture_lex $P458
    .local string rx448_tgt
    .local int rx448_pos
    .local int rx448_off
    .local int rx448_eos
    .local int rx448_rep
    .local pmc rx448_cur
    (rx448_cur, rx448_pos, rx448_tgt, $I10) = self."!cursor_start"()
    rx448_cur."!cursor_debug"("START ", "cclass_elem")
    rx448_cur."!cursor_caparray"("charspec")
    .lex unicode:"$\x{a2}", rx448_cur
    .local pmc match
    .lex "$/", match
    length rx448_eos, rx448_tgt
    set rx448_off, 0
    lt $I10, 2, rx448_start
    sub rx448_off, $I10, 1
    substr rx448_tgt, rx448_tgt, rx448_off
  rx448_start:
.annotate "line", 154
  # rx subcapture "sign"
    set_addr $I10, rxcap_452_fail
    rx448_cur."!mark_push"(0, rx448_pos, $I10)
  alt451_0:
    set_addr $I10, alt451_1
    rx448_cur."!mark_push"(0, rx448_pos, $I10)
  # rx literal  "+"
    add $I11, rx448_pos, 1
    gt $I11, rx448_eos, rx448_fail
    sub $I11, rx448_pos, rx448_off
    substr $S10, rx448_tgt, $I11, 1
    ne $S10, "+", rx448_fail
    add rx448_pos, 1
    goto alt451_end
  alt451_1:
    set_addr $I10, alt451_2
    rx448_cur."!mark_push"(0, rx448_pos, $I10)
  # rx literal  "-"
    add $I11, rx448_pos, 1
    gt $I11, rx448_eos, rx448_fail
    sub $I11, rx448_pos, rx448_off
    substr $S10, rx448_tgt, $I11, 1
    ne $S10, "-", rx448_fail
    add rx448_pos, 1
    goto alt451_end
  alt451_2:
  alt451_end:
    set_addr $I10, rxcap_452_fail
    ($I12, $I11) = rx448_cur."!mark_peek"($I10)
    rx448_cur."!cursor_pos"($I11)
    ($P10) = rx448_cur."!cursor_start"()
    $P10."!cursor_pass"(rx448_pos, "")
    rx448_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sign")
    goto rxcap_452_done
  rxcap_452_fail:
    goto rx448_fail
  rxcap_452_done:
.annotate "line", 155
  # rx rxquantr453 ** 0..1
    set_addr $I454, rxquantr453_done
    rx448_cur."!mark_push"(0, rx448_pos, $I454)
  rxquantr453_loop:
  # rx subrule "normspace" subtype=method negate=
    rx448_cur."!cursor_pos"(rx448_pos)
    $P10 = rx448_cur."normspace"()
    unless $P10, rx448_fail
    rx448_pos = $P10."pos"()
    (rx448_rep) = rx448_cur."!mark_commit"($I454)
  rxquantr453_done:
  alt455_0:
.annotate "line", 156
    set_addr $I10, alt455_1
    rx448_cur."!mark_push"(0, rx448_pos, $I10)
.annotate "line", 157
  # rx literal  "["
    add $I11, rx448_pos, 1
    gt $I11, rx448_eos, rx448_fail
    sub $I11, rx448_pos, rx448_off
    substr $S10, rx448_tgt, $I11, 1
    ne $S10, "[", rx448_fail
    add rx448_pos, 1
.annotate "line", 160
  # rx rxquantr456 ** 0..*
    set_addr $I477, rxquantr456_done
    rx448_cur."!mark_push"(0, rx448_pos, $I477)
  rxquantr456_loop:
.annotate "line", 157
  # rx subrule $P458 subtype=capture negate=
    rx448_cur."!cursor_pos"(rx448_pos)
    .const 'Sub' $P458 = "143_1257089954.58465" 
    capture_lex $P458
    $P10 = rx448_cur.$P458()
    unless $P10, rx448_fail
    rx448_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charspec")
    rx448_pos = $P10."pos"()
.annotate "line", 160
    (rx448_rep) = rx448_cur."!mark_commit"($I477)
    rx448_cur."!mark_push"(rx448_rep, rx448_pos, $I477)
    goto rxquantr456_loop
  rxquantr456_done:
.annotate "line", 161
  # rx charclass_q s r 0..-1
    sub $I10, rx448_pos, rx448_off
    find_not_cclass $I11, 32, rx448_tgt, $I10, rx448_eos
    add rx448_pos, rx448_off, $I11
  # rx literal  "]"
    add $I11, rx448_pos, 1
    gt $I11, rx448_eos, rx448_fail
    sub $I11, rx448_pos, rx448_off
    substr $S10, rx448_tgt, $I11, 1
    ne $S10, "]", rx448_fail
    add rx448_pos, 1
.annotate "line", 157
    goto alt455_end
  alt455_1:
.annotate "line", 162
  # rx subcapture "name"
    set_addr $I10, rxcap_478_fail
    rx448_cur."!mark_push"(0, rx448_pos, $I10)
  # rx charclass_q w r 1..-1
    sub $I10, rx448_pos, rx448_off
    find_not_cclass $I11, 8192, rx448_tgt, $I10, rx448_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx448_fail
    add rx448_pos, rx448_off, $I11
    set_addr $I10, rxcap_478_fail
    ($I12, $I11) = rx448_cur."!mark_peek"($I10)
    rx448_cur."!cursor_pos"($I11)
    ($P10) = rx448_cur."!cursor_start"()
    $P10."!cursor_pass"(rx448_pos, "")
    rx448_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    goto rxcap_478_done
  rxcap_478_fail:
    goto rx448_fail
  rxcap_478_done:
  alt455_end:
.annotate "line", 164
  # rx rxquantr479 ** 0..1
    set_addr $I480, rxquantr479_done
    rx448_cur."!mark_push"(0, rx448_pos, $I480)
  rxquantr479_loop:
  # rx subrule "normspace" subtype=method negate=
    rx448_cur."!cursor_pos"(rx448_pos)
    $P10 = rx448_cur."normspace"()
    unless $P10, rx448_fail
    rx448_pos = $P10."pos"()
    (rx448_rep) = rx448_cur."!mark_commit"($I480)
  rxquantr479_done:
.annotate "line", 153
  # rx pass
    rx448_cur."!cursor_pass"(rx448_pos, "cclass_elem")
    rx448_cur."!cursor_debug"("PASS  ", "cclass_elem", " at pos=", rx448_pos)
    .return (rx448_cur)
  rx448_fail:
.annotate "line", 3
    (rx448_rep, rx448_pos, $I10, $P10) = rx448_cur."!mark_fail"(0)
    lt rx448_pos, -1, rx448_done
    eq rx448_pos, -1, rx448_fail
    jump $I10
  rx448_done:
    rx448_cur."!cursor_fail"()
    rx448_cur."!cursor_debug"("FAIL  ", "cclass_elem")
    .return (rx448_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__cclass_elem"  :subid("142_1257089954.58465") :method
.annotate "line", 3
    new $P450, "ResizablePMCArray"
    push $P450, ""
    push $P450, "-"
    push $P450, "+"
    .return ($P450)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block457"  :anon :subid("143_1257089954.58465") :method :outer("141_1257089954.58465")
.annotate "line", 157
    .const 'Sub' $P473 = "146_1257089954.58465" 
    capture_lex $P473
    .const 'Sub' $P468 = "145_1257089954.58465" 
    capture_lex $P468
    .const 'Sub' $P464 = "144_1257089954.58465" 
    capture_lex $P464
    .local string rx459_tgt
    .local int rx459_pos
    .local int rx459_off
    .local int rx459_eos
    .local int rx459_rep
    .local pmc rx459_cur
    (rx459_cur, rx459_pos, rx459_tgt, $I10) = self."!cursor_start"()
    rx459_cur."!cursor_debug"("START ", "")
    rx459_cur."!cursor_caparray"("1")
    .lex unicode:"$\x{a2}", rx459_cur
    .local pmc match
    .lex "$/", match
    length rx459_eos, rx459_tgt
    set rx459_off, 0
    lt $I10, 2, rx459_start
    sub rx459_off, $I10, 1
    substr rx459_tgt, rx459_tgt, rx459_off
  rx459_start:
    ge rx459_pos, 0, rxscan460_done
  rxscan460_loop:
    ($P10) = rx459_cur."from"()
    inc $P10
    set rx459_pos, $P10
    ge rx459_pos, rx459_eos, rxscan460_done
    set_addr $I10, rxscan460_loop
    rx459_cur."!mark_push"(0, rx459_pos, $I10)
  rxscan460_done:
  alt461_0:
    set_addr $I10, alt461_1
    rx459_cur."!mark_push"(0, rx459_pos, $I10)
.annotate "line", 158
  # rx charclass_q s r 0..-1
    sub $I10, rx459_pos, rx459_off
    find_not_cclass $I11, 32, rx459_tgt, $I10, rx459_eos
    add rx459_pos, rx459_off, $I11
  # rx literal  "-"
    add $I11, rx459_pos, 1
    gt $I11, rx459_eos, rx459_fail
    sub $I11, rx459_pos, rx459_off
    substr $S10, rx459_tgt, $I11, 1
    ne $S10, "-", rx459_fail
    add rx459_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx459_cur."!cursor_pos"(rx459_pos)
    $P10 = rx459_cur."obs"("hyphen in enumerated character class", "..")
    unless $P10, rx459_fail
    rx459_pos = $P10."pos"()
    goto alt461_end
  alt461_1:
.annotate "line", 159
  # rx charclass_q s r 0..-1
    sub $I10, rx459_pos, rx459_off
    find_not_cclass $I11, 32, rx459_tgt, $I10, rx459_eos
    add rx459_pos, rx459_off, $I11
  alt462_0:
    set_addr $I10, alt462_1
    rx459_cur."!mark_push"(0, rx459_pos, $I10)
  # rx literal  "\\"
    add $I11, rx459_pos, 1
    gt $I11, rx459_eos, rx459_fail
    sub $I11, rx459_pos, rx459_off
    substr $S10, rx459_tgt, $I11, 1
    ne $S10, "\\", rx459_fail
    add rx459_pos, 1
  # rx subrule $P464 subtype=capture negate=
    rx459_cur."!cursor_pos"(rx459_pos)
    .const 'Sub' $P464 = "144_1257089954.58465" 
    capture_lex $P464
    $P10 = rx459_cur.$P464()
    unless $P10, rx459_fail
    rx459_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"(0)
    rx459_pos = $P10."pos"()
    goto alt462_end
  alt462_1:
  # rx subrule $P468 subtype=capture negate=
    rx459_cur."!cursor_pos"(rx459_pos)
    .const 'Sub' $P468 = "145_1257089954.58465" 
    capture_lex $P468
    $P10 = rx459_cur.$P468()
    unless $P10, rx459_fail
    rx459_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"(0)
    rx459_pos = $P10."pos"()
  alt462_end:
  # rx rxquantr471 ** 0..1
    set_addr $I476, rxquantr471_done
    rx459_cur."!mark_push"(0, rx459_pos, $I476)
  rxquantr471_loop:
  # rx charclass_q s r 0..-1
    sub $I10, rx459_pos, rx459_off
    find_not_cclass $I11, 32, rx459_tgt, $I10, rx459_eos
    add rx459_pos, rx459_off, $I11
  # rx literal  ".."
    add $I11, rx459_pos, 2
    gt $I11, rx459_eos, rx459_fail
    sub $I11, rx459_pos, rx459_off
    substr $S10, rx459_tgt, $I11, 2
    ne $S10, "..", rx459_fail
    add rx459_pos, 2
  # rx charclass_q s r 0..-1
    sub $I10, rx459_pos, rx459_off
    find_not_cclass $I11, 32, rx459_tgt, $I10, rx459_eos
    add rx459_pos, rx459_off, $I11
  # rx subrule $P473 subtype=capture negate=
    rx459_cur."!cursor_pos"(rx459_pos)
    .const 'Sub' $P473 = "146_1257089954.58465" 
    capture_lex $P473
    $P10 = rx459_cur.$P473()
    unless $P10, rx459_fail
    rx459_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("1")
    rx459_pos = $P10."pos"()
    (rx459_rep) = rx459_cur."!mark_commit"($I476)
  rxquantr471_done:
  alt461_end:
.annotate "line", 157
  # rx pass
    rx459_cur."!cursor_pass"(rx459_pos, "")
    rx459_cur."!cursor_debug"("PASS  ", "", " at pos=", rx459_pos)
    .return (rx459_cur)
  rx459_fail:
    (rx459_rep, rx459_pos, $I10, $P10) = rx459_cur."!mark_fail"(0)
    lt rx459_pos, -1, rx459_done
    eq rx459_pos, -1, rx459_fail
    jump $I10
  rx459_done:
    rx459_cur."!cursor_fail"()
    rx459_cur."!cursor_debug"("FAIL  ", "")
    .return (rx459_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block463"  :anon :subid("144_1257089954.58465") :method :outer("143_1257089954.58465")
.annotate "line", 159
    .local string rx465_tgt
    .local int rx465_pos
    .local int rx465_off
    .local int rx465_eos
    .local int rx465_rep
    .local pmc rx465_cur
    (rx465_cur, rx465_pos, rx465_tgt, $I10) = self."!cursor_start"()
    rx465_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx465_cur
    .local pmc match
    .lex "$/", match
    length rx465_eos, rx465_tgt
    set rx465_off, 0
    lt $I10, 2, rx465_start
    sub rx465_off, $I10, 1
    substr rx465_tgt, rx465_tgt, rx465_off
  rx465_start:
    ge rx465_pos, 0, rxscan466_done
  rxscan466_loop:
    ($P10) = rx465_cur."from"()
    inc $P10
    set rx465_pos, $P10
    ge rx465_pos, rx465_eos, rxscan466_done
    set_addr $I10, rxscan466_loop
    rx465_cur."!mark_push"(0, rx465_pos, $I10)
  rxscan466_done:
  # rx charclass .
    ge rx465_pos, rx465_eos, rx465_fail
    inc rx465_pos
  # rx pass
    rx465_cur."!cursor_pass"(rx465_pos, "")
    rx465_cur."!cursor_debug"("PASS  ", "", " at pos=", rx465_pos)
    .return (rx465_cur)
  rx465_fail:
    (rx465_rep, rx465_pos, $I10, $P10) = rx465_cur."!mark_fail"(0)
    lt rx465_pos, -1, rx465_done
    eq rx465_pos, -1, rx465_fail
    jump $I10
  rx465_done:
    rx465_cur."!cursor_fail"()
    rx465_cur."!cursor_debug"("FAIL  ", "")
    .return (rx465_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block467"  :anon :subid("145_1257089954.58465") :method :outer("143_1257089954.58465")
.annotate "line", 159
    .local string rx469_tgt
    .local int rx469_pos
    .local int rx469_off
    .local int rx469_eos
    .local int rx469_rep
    .local pmc rx469_cur
    (rx469_cur, rx469_pos, rx469_tgt, $I10) = self."!cursor_start"()
    rx469_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx469_cur
    .local pmc match
    .lex "$/", match
    length rx469_eos, rx469_tgt
    set rx469_off, 0
    lt $I10, 2, rx469_start
    sub rx469_off, $I10, 1
    substr rx469_tgt, rx469_tgt, rx469_off
  rx469_start:
    ge rx469_pos, 0, rxscan470_done
  rxscan470_loop:
    ($P10) = rx469_cur."from"()
    inc $P10
    set rx469_pos, $P10
    ge rx469_pos, rx469_eos, rxscan470_done
    set_addr $I10, rxscan470_loop
    rx469_cur."!mark_push"(0, rx469_pos, $I10)
  rxscan470_done:
  # rx enumcharlist negate=1 
    ge rx469_pos, rx469_eos, rx469_fail
    sub $I10, rx469_pos, rx469_off
    substr $S10, rx469_tgt, $I10, 1
    index $I11, "]\\", $S10
    ge $I11, 0, rx469_fail
    inc rx469_pos
  # rx pass
    rx469_cur."!cursor_pass"(rx469_pos, "")
    rx469_cur."!cursor_debug"("PASS  ", "", " at pos=", rx469_pos)
    .return (rx469_cur)
  rx469_fail:
    (rx469_rep, rx469_pos, $I10, $P10) = rx469_cur."!mark_fail"(0)
    lt rx469_pos, -1, rx469_done
    eq rx469_pos, -1, rx469_fail
    jump $I10
  rx469_done:
    rx469_cur."!cursor_fail"()
    rx469_cur."!cursor_debug"("FAIL  ", "")
    .return (rx469_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block472"  :anon :subid("146_1257089954.58465") :method :outer("143_1257089954.58465")
.annotate "line", 159
    .local string rx474_tgt
    .local int rx474_pos
    .local int rx474_off
    .local int rx474_eos
    .local int rx474_rep
    .local pmc rx474_cur
    (rx474_cur, rx474_pos, rx474_tgt, $I10) = self."!cursor_start"()
    rx474_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx474_cur
    .local pmc match
    .lex "$/", match
    length rx474_eos, rx474_tgt
    set rx474_off, 0
    lt $I10, 2, rx474_start
    sub rx474_off, $I10, 1
    substr rx474_tgt, rx474_tgt, rx474_off
  rx474_start:
    ge rx474_pos, 0, rxscan475_done
  rxscan475_loop:
    ($P10) = rx474_cur."from"()
    inc $P10
    set rx474_pos, $P10
    ge rx474_pos, rx474_eos, rxscan475_done
    set_addr $I10, rxscan475_loop
    rx474_cur."!mark_push"(0, rx474_pos, $I10)
  rxscan475_done:
  # rx charclass .
    ge rx474_pos, rx474_eos, rx474_fail
    inc rx474_pos
  # rx pass
    rx474_cur."!cursor_pass"(rx474_pos, "")
    rx474_cur."!cursor_debug"("PASS  ", "", " at pos=", rx474_pos)
    .return (rx474_cur)
  rx474_fail:
    (rx474_rep, rx474_pos, $I10, $P10) = rx474_cur."!mark_fail"(0)
    lt rx474_pos, -1, rx474_done
    eq rx474_pos, -1, rx474_fail
    jump $I10
  rx474_done:
    rx474_cur."!cursor_fail"()
    rx474_cur."!cursor_debug"("FAIL  ", "")
    .return (rx474_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_internal"  :subid("147_1257089954.58465") :method :outer("11_1257089954.58465")
.annotate "line", 3
    .const 'Sub' $P489 = "149_1257089954.58465" 
    capture_lex $P489
    .local string rx482_tgt
    .local int rx482_pos
    .local int rx482_off
    .local int rx482_eos
    .local int rx482_rep
    .local pmc rx482_cur
    (rx482_cur, rx482_pos, rx482_tgt, $I10) = self."!cursor_start"()
    rx482_cur."!cursor_debug"("START ", "mod_internal")
    rx482_cur."!cursor_caparray"("n")
    .lex unicode:"$\x{a2}", rx482_cur
    .local pmc match
    .lex "$/", match
    length rx482_eos, rx482_tgt
    set rx482_off, 0
    lt $I10, 2, rx482_start
    sub rx482_off, $I10, 1
    substr rx482_tgt, rx482_tgt, rx482_off
  rx482_start:
  alt486_0:
.annotate "line", 168
    set_addr $I10, alt486_1
    rx482_cur."!mark_push"(0, rx482_pos, $I10)
.annotate "line", 169
  # rx literal  ":"
    add $I11, rx482_pos, 1
    gt $I11, rx482_eos, rx482_fail
    sub $I11, rx482_pos, rx482_off
    substr $S10, rx482_tgt, $I11, 1
    ne $S10, ":", rx482_fail
    add rx482_pos, 1
  # rx rxquantr487 ** 1..1
    set_addr $I493, rxquantr487_done
    rx482_cur."!mark_push"(0, -1, $I493)
  rxquantr487_loop:
  # rx subrule $P489 subtype=capture negate=
    rx482_cur."!cursor_pos"(rx482_pos)
    .const 'Sub' $P489 = "149_1257089954.58465" 
    capture_lex $P489
    $P10 = rx482_cur.$P489()
    unless $P10, rx482_fail
    rx482_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("n")
    rx482_pos = $P10."pos"()
    (rx482_rep) = rx482_cur."!mark_commit"($I493)
  rxquantr487_done:
  # rx subrule "mod_ident" subtype=capture negate=
    rx482_cur."!cursor_pos"(rx482_pos)
    $P10 = rx482_cur."mod_ident"()
    unless $P10, rx482_fail
    rx482_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_ident")
    rx482_pos = $P10."pos"()
  # rxanchor rwb
    le rx482_pos, 0, rx482_fail
    sub $I10, rx482_pos, rx482_off
    is_cclass $I11, 8192, rx482_tgt, $I10
    if $I11, rx482_fail
    dec $I10
    is_cclass $I11, 8192, rx482_tgt, $I10
    unless $I11, rx482_fail
    goto alt486_end
  alt486_1:
.annotate "line", 170
  # rx literal  ":"
    add $I11, rx482_pos, 1
    gt $I11, rx482_eos, rx482_fail
    sub $I11, rx482_pos, rx482_off
    substr $S10, rx482_tgt, $I11, 1
    ne $S10, ":", rx482_fail
    add rx482_pos, 1
  # rx subrule "mod_ident" subtype=capture negate=
    rx482_cur."!cursor_pos"(rx482_pos)
    $P10 = rx482_cur."mod_ident"()
    unless $P10, rx482_fail
    rx482_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_ident")
    rx482_pos = $P10."pos"()
  # rx rxquantr494 ** 0..1
    set_addr $I496, rxquantr494_done
    rx482_cur."!mark_push"(0, rx482_pos, $I496)
  rxquantr494_loop:
  # rx literal  "("
    add $I11, rx482_pos, 1
    gt $I11, rx482_eos, rx482_fail
    sub $I11, rx482_pos, rx482_off
    substr $S10, rx482_tgt, $I11, 1
    ne $S10, "(", rx482_fail
    add rx482_pos, 1
  # rx subcapture "n"
    set_addr $I10, rxcap_495_fail
    rx482_cur."!mark_push"(0, rx482_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx482_pos, rx482_off
    find_not_cclass $I11, 8, rx482_tgt, $I10, rx482_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx482_fail
    add rx482_pos, rx482_off, $I11
    set_addr $I10, rxcap_495_fail
    ($I12, $I11) = rx482_cur."!mark_peek"($I10)
    rx482_cur."!cursor_pos"($I11)
    ($P10) = rx482_cur."!cursor_start"()
    $P10."!cursor_pass"(rx482_pos, "")
    rx482_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("n")
    goto rxcap_495_done
  rxcap_495_fail:
    goto rx482_fail
  rxcap_495_done:
  # rx literal  ")"
    add $I11, rx482_pos, 1
    gt $I11, rx482_eos, rx482_fail
    sub $I11, rx482_pos, rx482_off
    substr $S10, rx482_tgt, $I11, 1
    ne $S10, ")", rx482_fail
    add rx482_pos, 1
    (rx482_rep) = rx482_cur."!mark_commit"($I496)
  rxquantr494_done:
  alt486_end:
.annotate "line", 167
  # rx pass
    rx482_cur."!cursor_pass"(rx482_pos, "mod_internal")
    rx482_cur."!cursor_debug"("PASS  ", "mod_internal", " at pos=", rx482_pos)
    .return (rx482_cur)
  rx482_fail:
.annotate "line", 3
    (rx482_rep, rx482_pos, $I10, $P10) = rx482_cur."!mark_fail"(0)
    lt rx482_pos, -1, rx482_done
    eq rx482_pos, -1, rx482_fail
    jump $I10
  rx482_done:
    rx482_cur."!cursor_fail"()
    rx482_cur."!cursor_debug"("FAIL  ", "mod_internal")
    .return (rx482_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_internal"  :subid("148_1257089954.58465") :method
.annotate "line", 3
    $P484 = self."!PREFIX__!subrule"("mod_ident", ":")
    new $P485, "ResizablePMCArray"
    push $P485, $P484
    push $P485, ":"
    .return ($P485)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block488"  :anon :subid("149_1257089954.58465") :method :outer("147_1257089954.58465")
.annotate "line", 169
    .local string rx490_tgt
    .local int rx490_pos
    .local int rx490_off
    .local int rx490_eos
    .local int rx490_rep
    .local pmc rx490_cur
    (rx490_cur, rx490_pos, rx490_tgt, $I10) = self."!cursor_start"()
    rx490_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx490_cur
    .local pmc match
    .lex "$/", match
    length rx490_eos, rx490_tgt
    set rx490_off, 0
    lt $I10, 2, rx490_start
    sub rx490_off, $I10, 1
    substr rx490_tgt, rx490_tgt, rx490_off
  rx490_start:
    ge rx490_pos, 0, rxscan491_done
  rxscan491_loop:
    ($P10) = rx490_cur."from"()
    inc $P10
    set rx490_pos, $P10
    ge rx490_pos, rx490_eos, rxscan491_done
    set_addr $I10, rxscan491_loop
    rx490_cur."!mark_push"(0, rx490_pos, $I10)
  rxscan491_done:
  alt492_0:
    set_addr $I10, alt492_1
    rx490_cur."!mark_push"(0, rx490_pos, $I10)
  # rx literal  "!"
    add $I11, rx490_pos, 1
    gt $I11, rx490_eos, rx490_fail
    sub $I11, rx490_pos, rx490_off
    substr $S10, rx490_tgt, $I11, 1
    ne $S10, "!", rx490_fail
    add rx490_pos, 1
    goto alt492_end
  alt492_1:
  # rx charclass_q d r 1..-1
    sub $I10, rx490_pos, rx490_off
    find_not_cclass $I11, 8, rx490_tgt, $I10, rx490_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx490_fail
    add rx490_pos, rx490_off, $I11
  alt492_end:
  # rx pass
    rx490_cur."!cursor_pass"(rx490_pos, "")
    rx490_cur."!cursor_debug"("PASS  ", "", " at pos=", rx490_pos)
    .return (rx490_cur)
  rx490_fail:
    (rx490_rep, rx490_pos, $I10, $P10) = rx490_cur."!mark_fail"(0)
    lt rx490_pos, -1, rx490_done
    eq rx490_pos, -1, rx490_fail
    jump $I10
  rx490_done:
    rx490_cur."!cursor_fail"()
    rx490_cur."!cursor_debug"("FAIL  ", "")
    .return (rx490_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident"  :subid("150_1257089954.58465") :method
.annotate "line", 174
    $P498 = self."!protoregex"("mod_ident")
    .return ($P498)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident"  :subid("151_1257089954.58465") :method
.annotate "line", 174
    $P500 = self."!PREFIX__!protoregex"("mod_ident")
    .return ($P500)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<ignorecase>"  :subid("152_1257089954.58465") :method :outer("11_1257089954.58465")
.annotate "line", 3
    .local string rx502_tgt
    .local int rx502_pos
    .local int rx502_off
    .local int rx502_eos
    .local int rx502_rep
    .local pmc rx502_cur
    (rx502_cur, rx502_pos, rx502_tgt, $I10) = self."!cursor_start"()
    rx502_cur."!cursor_debug"("START ", "mod_ident:sym<ignorecase>")
    .lex unicode:"$\x{a2}", rx502_cur
    .local pmc match
    .lex "$/", match
    length rx502_eos, rx502_tgt
    set rx502_off, 0
    lt $I10, 2, rx502_start
    sub rx502_off, $I10, 1
    substr rx502_tgt, rx502_tgt, rx502_off
  rx502_start:
.annotate "line", 175
  # rx subcapture "sym"
    set_addr $I10, rxcap_505_fail
    rx502_cur."!mark_push"(0, rx502_pos, $I10)
  # rx literal  "i"
    add $I11, rx502_pos, 1
    gt $I11, rx502_eos, rx502_fail
    sub $I11, rx502_pos, rx502_off
    substr $S10, rx502_tgt, $I11, 1
    ne $S10, "i", rx502_fail
    add rx502_pos, 1
    set_addr $I10, rxcap_505_fail
    ($I12, $I11) = rx502_cur."!mark_peek"($I10)
    rx502_cur."!cursor_pos"($I11)
    ($P10) = rx502_cur."!cursor_start"()
    $P10."!cursor_pass"(rx502_pos, "")
    rx502_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_505_done
  rxcap_505_fail:
    goto rx502_fail
  rxcap_505_done:
  # rx rxquantr506 ** 0..1
    set_addr $I507, rxquantr506_done
    rx502_cur."!mark_push"(0, rx502_pos, $I507)
  rxquantr506_loop:
  # rx literal  "gnorecase"
    add $I11, rx502_pos, 9
    gt $I11, rx502_eos, rx502_fail
    sub $I11, rx502_pos, rx502_off
    substr $S10, rx502_tgt, $I11, 9
    ne $S10, "gnorecase", rx502_fail
    add rx502_pos, 9
    (rx502_rep) = rx502_cur."!mark_commit"($I507)
  rxquantr506_done:
  # rx pass
    rx502_cur."!cursor_pass"(rx502_pos, "mod_ident:sym<ignorecase>")
    rx502_cur."!cursor_debug"("PASS  ", "mod_ident:sym<ignorecase>", " at pos=", rx502_pos)
    .return (rx502_cur)
  rx502_fail:
.annotate "line", 3
    (rx502_rep, rx502_pos, $I10, $P10) = rx502_cur."!mark_fail"(0)
    lt rx502_pos, -1, rx502_done
    eq rx502_pos, -1, rx502_fail
    jump $I10
  rx502_done:
    rx502_cur."!cursor_fail"()
    rx502_cur."!cursor_debug"("FAIL  ", "mod_ident:sym<ignorecase>")
    .return (rx502_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident:sym<ignorecase>"  :subid("153_1257089954.58465") :method
.annotate "line", 3
    new $P504, "ResizablePMCArray"
    push $P504, "i"
    .return ($P504)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<ratchet>"  :subid("154_1257089954.58465") :method :outer("11_1257089954.58465")
.annotate "line", 3
    .local string rx509_tgt
    .local int rx509_pos
    .local int rx509_off
    .local int rx509_eos
    .local int rx509_rep
    .local pmc rx509_cur
    (rx509_cur, rx509_pos, rx509_tgt, $I10) = self."!cursor_start"()
    rx509_cur."!cursor_debug"("START ", "mod_ident:sym<ratchet>")
    .lex unicode:"$\x{a2}", rx509_cur
    .local pmc match
    .lex "$/", match
    length rx509_eos, rx509_tgt
    set rx509_off, 0
    lt $I10, 2, rx509_start
    sub rx509_off, $I10, 1
    substr rx509_tgt, rx509_tgt, rx509_off
  rx509_start:
.annotate "line", 176
  # rx subcapture "sym"
    set_addr $I10, rxcap_512_fail
    rx509_cur."!mark_push"(0, rx509_pos, $I10)
  # rx literal  "r"
    add $I11, rx509_pos, 1
    gt $I11, rx509_eos, rx509_fail
    sub $I11, rx509_pos, rx509_off
    substr $S10, rx509_tgt, $I11, 1
    ne $S10, "r", rx509_fail
    add rx509_pos, 1
    set_addr $I10, rxcap_512_fail
    ($I12, $I11) = rx509_cur."!mark_peek"($I10)
    rx509_cur."!cursor_pos"($I11)
    ($P10) = rx509_cur."!cursor_start"()
    $P10."!cursor_pass"(rx509_pos, "")
    rx509_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_512_done
  rxcap_512_fail:
    goto rx509_fail
  rxcap_512_done:
  # rx rxquantr513 ** 0..1
    set_addr $I514, rxquantr513_done
    rx509_cur."!mark_push"(0, rx509_pos, $I514)
  rxquantr513_loop:
  # rx literal  "atchet"
    add $I11, rx509_pos, 6
    gt $I11, rx509_eos, rx509_fail
    sub $I11, rx509_pos, rx509_off
    substr $S10, rx509_tgt, $I11, 6
    ne $S10, "atchet", rx509_fail
    add rx509_pos, 6
    (rx509_rep) = rx509_cur."!mark_commit"($I514)
  rxquantr513_done:
  # rx pass
    rx509_cur."!cursor_pass"(rx509_pos, "mod_ident:sym<ratchet>")
    rx509_cur."!cursor_debug"("PASS  ", "mod_ident:sym<ratchet>", " at pos=", rx509_pos)
    .return (rx509_cur)
  rx509_fail:
.annotate "line", 3
    (rx509_rep, rx509_pos, $I10, $P10) = rx509_cur."!mark_fail"(0)
    lt rx509_pos, -1, rx509_done
    eq rx509_pos, -1, rx509_fail
    jump $I10
  rx509_done:
    rx509_cur."!cursor_fail"()
    rx509_cur."!cursor_debug"("FAIL  ", "mod_ident:sym<ratchet>")
    .return (rx509_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident:sym<ratchet>"  :subid("155_1257089954.58465") :method
.annotate "line", 3
    new $P511, "ResizablePMCArray"
    push $P511, "r"
    .return ($P511)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<sigspace>"  :subid("156_1257089954.58465") :method :outer("11_1257089954.58465")
.annotate "line", 3
    .local string rx516_tgt
    .local int rx516_pos
    .local int rx516_off
    .local int rx516_eos
    .local int rx516_rep
    .local pmc rx516_cur
    (rx516_cur, rx516_pos, rx516_tgt, $I10) = self."!cursor_start"()
    rx516_cur."!cursor_debug"("START ", "mod_ident:sym<sigspace>")
    .lex unicode:"$\x{a2}", rx516_cur
    .local pmc match
    .lex "$/", match
    length rx516_eos, rx516_tgt
    set rx516_off, 0
    lt $I10, 2, rx516_start
    sub rx516_off, $I10, 1
    substr rx516_tgt, rx516_tgt, rx516_off
  rx516_start:
.annotate "line", 177
  # rx subcapture "sym"
    set_addr $I10, rxcap_519_fail
    rx516_cur."!mark_push"(0, rx516_pos, $I10)
  # rx literal  "s"
    add $I11, rx516_pos, 1
    gt $I11, rx516_eos, rx516_fail
    sub $I11, rx516_pos, rx516_off
    substr $S10, rx516_tgt, $I11, 1
    ne $S10, "s", rx516_fail
    add rx516_pos, 1
    set_addr $I10, rxcap_519_fail
    ($I12, $I11) = rx516_cur."!mark_peek"($I10)
    rx516_cur."!cursor_pos"($I11)
    ($P10) = rx516_cur."!cursor_start"()
    $P10."!cursor_pass"(rx516_pos, "")
    rx516_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_519_done
  rxcap_519_fail:
    goto rx516_fail
  rxcap_519_done:
  # rx rxquantr520 ** 0..1
    set_addr $I521, rxquantr520_done
    rx516_cur."!mark_push"(0, rx516_pos, $I521)
  rxquantr520_loop:
  # rx literal  "igspace"
    add $I11, rx516_pos, 7
    gt $I11, rx516_eos, rx516_fail
    sub $I11, rx516_pos, rx516_off
    substr $S10, rx516_tgt, $I11, 7
    ne $S10, "igspace", rx516_fail
    add rx516_pos, 7
    (rx516_rep) = rx516_cur."!mark_commit"($I521)
  rxquantr520_done:
  # rx pass
    rx516_cur."!cursor_pass"(rx516_pos, "mod_ident:sym<sigspace>")
    rx516_cur."!cursor_debug"("PASS  ", "mod_ident:sym<sigspace>", " at pos=", rx516_pos)
    .return (rx516_cur)
  rx516_fail:
.annotate "line", 3
    (rx516_rep, rx516_pos, $I10, $P10) = rx516_cur."!mark_fail"(0)
    lt rx516_pos, -1, rx516_done
    eq rx516_pos, -1, rx516_fail
    jump $I10
  rx516_done:
    rx516_cur."!cursor_fail"()
    rx516_cur."!cursor_debug"("FAIL  ", "mod_ident:sym<sigspace>")
    .return (rx516_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident:sym<sigspace>"  :subid("157_1257089954.58465") :method
.annotate "line", 3
    new $P518, "ResizablePMCArray"
    push $P518, "s"
    .return ($P518)
.end

### .include 'gen/p6regex-actions.pir'

.namespace []
.sub "_block11"  :anon :subid("10_1257089963.27378")
.annotate "line", 0
    get_hll_global $P14, ["Regex";"P6Regex";"Actions"], "_block13" 
    capture_lex $P14
.annotate "line", 4
    get_hll_global $P14, ["Regex";"P6Regex";"Actions"], "_block13" 
    capture_lex $P14
    $P1483 = $P14()
.annotate "line", 1
    .return ($P1483)
.end


.namespace []
.sub "" :load :init :subid("post86") :outer("10_1257089963.27378")
.annotate "line", 0
    .const 'Sub' $P12 = "10_1257089963.27378" 
    .local pmc block
    set block, $P12
    $P1484 = get_root_global ["parrot"], "P6metaclass"
    $P1484."new_class"("Regex::P6Regex::Actions", "HLL::Actions" :named("parent"))
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block13"  :subid("11_1257089963.27378") :outer("10_1257089963.27378")
.annotate "line", 4
    .const 'Sub' $P1450 = "85_1257089963.27378" 
    capture_lex $P1450
    .const 'Sub' $P1381 = "81_1257089963.27378" 
    capture_lex $P1381
    .const 'Sub' $P1313 = "79_1257089963.27378" 
    capture_lex $P1313
    .const 'Sub' $P1240 = "76_1257089963.27378" 
    capture_lex $P1240
    .const 'Sub' $P1227 = "75_1257089963.27378" 
    capture_lex $P1227
    .const 'Sub' $P1203 = "74_1257089963.27378" 
    capture_lex $P1203
    .const 'Sub' $P1185 = "73_1257089963.27378" 
    capture_lex $P1185
    .const 'Sub' $P1171 = "72_1257089963.27378" 
    capture_lex $P1171
    .const 'Sub' $P1140 = "71_1257089963.27378" 
    capture_lex $P1140
    .const 'Sub' $P1109 = "70_1257089963.27378" 
    capture_lex $P1109
    .const 'Sub' $P1093 = "69_1257089963.27378" 
    capture_lex $P1093
    .const 'Sub' $P1077 = "68_1257089963.27378" 
    capture_lex $P1077
    .const 'Sub' $P1061 = "67_1257089963.27378" 
    capture_lex $P1061
    .const 'Sub' $P1045 = "66_1257089963.27378" 
    capture_lex $P1045
    .const 'Sub' $P1029 = "65_1257089963.27378" 
    capture_lex $P1029
    .const 'Sub' $P1013 = "64_1257089963.27378" 
    capture_lex $P1013
    .const 'Sub' $P997 = "63_1257089963.27378" 
    capture_lex $P997
    .const 'Sub' $P973 = "62_1257089963.27378" 
    capture_lex $P973
    .const 'Sub' $P958 = "61_1257089963.27378" 
    capture_lex $P958
    .const 'Sub' $P902 = "60_1257089963.27378" 
    capture_lex $P902
    .const 'Sub' $P881 = "59_1257089963.27378" 
    capture_lex $P881
    .const 'Sub' $P859 = "58_1257089963.27378" 
    capture_lex $P859
    .const 'Sub' $P849 = "57_1257089963.27378" 
    capture_lex $P849
    .const 'Sub' $P839 = "56_1257089963.27378" 
    capture_lex $P839
    .const 'Sub' $P829 = "55_1257089963.27378" 
    capture_lex $P829
    .const 'Sub' $P817 = "54_1257089963.27378" 
    capture_lex $P817
    .const 'Sub' $P805 = "53_1257089963.27378" 
    capture_lex $P805
    .const 'Sub' $P793 = "52_1257089963.27378" 
    capture_lex $P793
    .const 'Sub' $P781 = "51_1257089963.27378" 
    capture_lex $P781
    .const 'Sub' $P769 = "50_1257089963.27378" 
    capture_lex $P769
    .const 'Sub' $P757 = "49_1257089963.27378" 
    capture_lex $P757
    .const 'Sub' $P745 = "48_1257089963.27378" 
    capture_lex $P745
    .const 'Sub' $P733 = "47_1257089963.27378" 
    capture_lex $P733
    .const 'Sub' $P717 = "46_1257089963.27378" 
    capture_lex $P717
    .const 'Sub' $P699 = "45_1257089963.27378" 
    capture_lex $P699
    .const 'Sub' $P689 = "44_1257089963.27378" 
    capture_lex $P689
    .const 'Sub' $P671 = "43_1257089963.27378" 
    capture_lex $P671
    .const 'Sub' $P624 = "42_1257089963.27378" 
    capture_lex $P624
    .const 'Sub' $P607 = "41_1257089963.27378" 
    capture_lex $P607
    .const 'Sub' $P592 = "40_1257089963.27378" 
    capture_lex $P592
    .const 'Sub' $P577 = "39_1257089963.27378" 
    capture_lex $P577
    .const 'Sub' $P551 = "38_1257089963.27378" 
    capture_lex $P551
    .const 'Sub' $P501 = "36_1257089963.27378" 
    capture_lex $P501
    .const 'Sub' $P446 = "34_1257089963.27378" 
    capture_lex $P446
    .const 'Sub' $P389 = "31_1257089963.27378" 
    capture_lex $P389
    .const 'Sub' $P374 = "30_1257089963.27378" 
    capture_lex $P374
    .const 'Sub' $P356 = "29_1257089963.27378" 
    capture_lex $P356
    .const 'Sub' $P336 = "28_1257089963.27378" 
    capture_lex $P336
    .const 'Sub' $P304 = "27_1257089963.27378" 
    capture_lex $P304
    .const 'Sub' $P42 = "14_1257089963.27378" 
    capture_lex $P42
    .const 'Sub' $P21 = "13_1257089963.27378" 
    capture_lex $P21
    .const 'Sub' $P16 = "12_1257089963.27378" 
    capture_lex $P16
    get_global $P15, "@MODIFIERS"
    unless_null $P15, vivify_87
    new $P15, "ResizablePMCArray"
    set_global "@MODIFIERS", $P15
  vivify_87:
.annotate "line", 6
    .const 'Sub' $P16 = "12_1257089963.27378" 
    capture_lex $P16
    .lex "INIT", $P16
.annotate "line", 457
    .const 'Sub' $P21 = "13_1257089963.27378" 
    capture_lex $P21
    .lex "buildsub", $P21
.annotate "line", 470
    .const 'Sub' $P42 = "14_1257089963.27378" 
    capture_lex $P42
    .lex "capnames", $P42
.annotate "line", 536
    .const 'Sub' $P304 = "27_1257089963.27378" 
    capture_lex $P304
    .lex "backmod", $P304
.annotate "line", 543
    .const 'Sub' $P336 = "28_1257089963.27378" 
    capture_lex $P336
    .lex "subrule_alias", $P336
.annotate "line", 4
    get_global $P354, "@MODIFIERS"
    find_lex $P355, "INIT"
.annotate "line", 450
    find_lex $P1479, "buildsub"
    find_lex $P1480, "capnames"
    find_lex $P1481, "backmod"
    find_lex $P1482, "subrule_alias"
.annotate "line", 4
    .return ($P1482)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "INIT"  :subid("12_1257089963.27378") :outer("11_1257089963.27378")
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
.sub "buildsub"  :subid("13_1257089963.27378") :outer("11_1257089963.27378")
    .param pmc param_24
.annotate "line", 457
    new $P23, 'ExceptionHandler'
    set_addr $P23, control_22
    $P23."handle_types"(58)
    push_eh $P23
    .lex "$rpast", param_24
.annotate "line", 458
    new $P25, "Hash"
    .lex "%capnames", $P25
    find_lex $P26, "$rpast"
    $P27 = "capnames"($P26, 0)
    store_lex "%capnames", $P27
.annotate "line", 459
    new $P28, "Integer"
    assign $P28, 0
    find_lex $P29, "%capnames"
    unless_null $P29, vivify_88
    new $P29, "Hash"
    store_lex "%capnames", $P29
  vivify_88:
    set $P29[""], $P28
.annotate "line", 460
    get_hll_global $P30, ["PAST"], "Regex"
.annotate "line", 461
    get_hll_global $P31, ["PAST"], "Regex"
    $P32 = $P31."new"("scan" :named("pasttype"))
    find_lex $P33, "$rpast"
.annotate "line", 463
    get_hll_global $P34, ["PAST"], "Regex"
    $P35 = $P34."new"("pass" :named("pasttype"))
    find_lex $P36, "%capnames"
    $P37 = $P30."new"($P32, $P33, $P35, "concat" :named("pasttype"), $P36 :named("capnames"))
.annotate "line", 460
    store_lex "$rpast", $P37
.annotate "line", 467
    get_hll_global $P38, ["PAST"], "Block"
    find_lex $P39, "$rpast"
    $P40 = $P38."new"($P39, "method" :named("blocktype"))
.annotate "line", 457
    .return ($P40)
  control_22:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P41, exception, "payload"
    .return ($P41)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "capnames"  :subid("14_1257089963.27378") :outer("11_1257089963.27378")
    .param pmc param_45
    .param pmc param_46
.annotate "line", 470
    .const 'Sub' $P279 = "25_1257089963.27378" 
    capture_lex $P279
    .const 'Sub' $P214 = "22_1257089963.27378" 
    capture_lex $P214
    .const 'Sub' $P170 = "20_1257089963.27378" 
    capture_lex $P170
    .const 'Sub' $P128 = "18_1257089963.27378" 
    capture_lex $P128
    .const 'Sub' $P57 = "15_1257089963.27378" 
    capture_lex $P57
    new $P44, 'ExceptionHandler'
    set_addr $P44, control_43
    $P44."handle_types"(58)
    push_eh $P44
    .lex "$ast", param_45
    .lex "$count", param_46
.annotate "line", 471
    new $P47, "Hash"
    .lex "%capnames", $P47
.annotate "line", 472
    new $P48, "Undef"
    .lex "$pasttype", $P48
.annotate "line", 470
    find_lex $P49, "%capnames"
.annotate "line", 472
    find_lex $P50, "$ast"
    $P51 = $P50."pasttype"()
    store_lex "$pasttype", $P51
.annotate "line", 473
    find_lex $P53, "$pasttype"
    set $S54, $P53
    iseq $I55, $S54, "alt"
    if $I55, if_52
.annotate "line", 486
    find_lex $P119, "$pasttype"
    set $S120, $P119
    iseq $I121, $S120, "concat"
    if $I121, if_118
.annotate "line", 495
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
.annotate "line", 508
    find_lex $P210, "$pasttype"
    set $S211, $P210
    iseq $I212, $S211, "subcapture"
    if $I212, if_209
.annotate "line", 525
    find_lex $P275, "$pasttype"
    set $S276, $P275
    iseq $I277, $S276, "quant"
    unless $I277, if_274_end
    .const 'Sub' $P279 = "25_1257089963.27378" 
    capture_lex $P279
    $P279()
  if_274_end:
    goto if_209_end
  if_209:
.annotate "line", 508
    .const 'Sub' $P214 = "22_1257089963.27378" 
    capture_lex $P214
    $P214()
  if_209_end:
    goto if_160_end
  if_160:
.annotate "line", 495
    .const 'Sub' $P170 = "20_1257089963.27378" 
    capture_lex $P170
    $P170()
  if_160_end:
    goto if_118_end
  if_118:
.annotate "line", 487
    find_lex $P123, "$ast"
    $P124 = $P123."list"()
    defined $I125, $P124
    unless $I125, for_undef_109
    iter $P122, $P124
    new $P158, 'ExceptionHandler'
    set_addr $P158, loop157_handler
    $P158."handle_types"(65, 67, 66)
    push_eh $P158
  loop157_test:
    unless $P122, loop157_done
    shift $P126, $P122
  loop157_redo:
    .const 'Sub' $P128 = "18_1257089963.27378" 
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
  for_undef_109:
  if_118_end:
.annotate "line", 486
    goto if_52_end
  if_52:
.annotate "line", 473
    .const 'Sub' $P57 = "15_1257089963.27378" 
    capture_lex $P57
    $P57()
  if_52_end:
.annotate "line", 532
    find_lex $P300, "$count"
    find_lex $P301, "%capnames"
    unless_null $P301, vivify_129
    new $P301, "Hash"
    store_lex "%capnames", $P301
  vivify_129:
    set $P301[""], $P300
    find_lex $P302, "%capnames"
.annotate "line", 470
    .return ($P302)
  control_43:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P303, exception, "payload"
    .return ($P303)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block278"  :anon :subid("25_1257089963.27378") :outer("14_1257089963.27378")
.annotate "line", 525
    .const 'Sub' $P290 = "26_1257089963.27378" 
    capture_lex $P290
.annotate "line", 526
    new $P280, "Hash"
    .lex "%astcap", $P280
    find_lex $P281, "$ast"
    unless_null $P281, vivify_89
    new $P281, "ResizablePMCArray"
  vivify_89:
    set $P282, $P281[0]
    unless_null $P282, vivify_90
    new $P282, "Undef"
  vivify_90:
    find_lex $P283, "$count"
    $P284 = "capnames"($P282, $P283)
    store_lex "%astcap", $P284
.annotate "line", 527
    find_lex $P286, "%astcap"
    defined $I287, $P286
    unless $I287, for_undef_91
    iter $P285, $P286
    new $P296, 'ExceptionHandler'
    set_addr $P296, loop295_handler
    $P296."handle_types"(65, 67, 66)
    push_eh $P296
  loop295_test:
    unless $P285, loop295_done
    shift $P288, $P285
  loop295_redo:
    .const 'Sub' $P290 = "26_1257089963.27378" 
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
  for_undef_91:
.annotate "line", 530
    find_lex $P298, "%astcap"
    unless_null $P298, vivify_93
    new $P298, "Hash"
  vivify_93:
    set $P299, $P298[""]
    unless_null $P299, vivify_94
    new $P299, "Undef"
  vivify_94:
    store_lex "$count", $P299
.annotate "line", 525
    .return ($P299)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block289"  :anon :subid("26_1257089963.27378") :outer("25_1257089963.27378")
    .param pmc param_291
.annotate "line", 527
    .lex "$_", param_291
.annotate "line", 528
    new $P292, "Integer"
    assign $P292, 2
    find_lex $P293, "$_"
    find_lex $P294, "%capnames"
    unless_null $P294, vivify_92
    new $P294, "Hash"
    store_lex "%capnames", $P294
  vivify_92:
    set $P294[$P293], $P292
.annotate "line", 527
    .return ($P292)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block213"  :anon :subid("22_1257089963.27378") :outer("14_1257089963.27378")
.annotate "line", 508
    .const 'Sub' $P256 = "24_1257089963.27378" 
    capture_lex $P256
    .const 'Sub' $P226 = "23_1257089963.27378" 
    capture_lex $P226
.annotate "line", 509
    new $P215, "Undef"
    .lex "$name", $P215
.annotate "line", 510
    new $P216, "ResizablePMCArray"
    .lex "@names", $P216
.annotate "line", 519
    new $P217, "Hash"
    .lex "%x", $P217
.annotate "line", 509
    find_lex $P218, "$ast"
    $P219 = $P218."name"()
    store_lex "$name", $P219
.annotate "line", 510

            $P0 = find_lex '$name'
            $S0 = $P0
            $P220 = split '=', $S0
        
    store_lex "@names", $P220
.annotate "line", 515
    find_lex $P222, "@names"
    defined $I223, $P222
    unless $I223, for_undef_95
    iter $P221, $P222
    new $P245, 'ExceptionHandler'
    set_addr $P245, loop244_handler
    $P245."handle_types"(65, 67, 66)
    push_eh $P245
  loop244_test:
    unless $P221, loop244_done
    shift $P224, $P221
  loop244_redo:
    .const 'Sub' $P226 = "23_1257089963.27378" 
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
  for_undef_95:
.annotate "line", 519
    find_lex $P247, "$ast"
    unless_null $P247, vivify_97
    new $P247, "ResizablePMCArray"
  vivify_97:
    set $P248, $P247[0]
    unless_null $P248, vivify_98
    new $P248, "Undef"
  vivify_98:
    find_lex $P249, "$count"
    $P250 = "capnames"($P248, $P249)
    store_lex "%x", $P250
.annotate "line", 520
    find_lex $P252, "%x"
    defined $I253, $P252
    unless $I253, for_undef_99
    iter $P251, $P252
    new $P270, 'ExceptionHandler'
    set_addr $P270, loop269_handler
    $P270."handle_types"(65, 67, 66)
    push_eh $P270
  loop269_test:
    unless $P251, loop269_done
    shift $P254, $P251
  loop269_redo:
    .const 'Sub' $P256 = "24_1257089963.27378" 
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
  for_undef_99:
.annotate "line", 523
    find_lex $P272, "%x"
    unless_null $P272, vivify_105
    new $P272, "Hash"
  vivify_105:
    set $P273, $P272[""]
    unless_null $P273, vivify_106
    new $P273, "Undef"
  vivify_106:
    store_lex "$count", $P273
.annotate "line", 508
    .return ($P273)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block225"  :anon :subid("23_1257089963.27378") :outer("22_1257089963.27378")
    .param pmc param_227
.annotate "line", 515
    .lex "$_", param_227
.annotate "line", 516
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
.annotate "line", 517
    new $P241, "Integer"
    assign $P241, 1
    find_lex $P242, "$_"
    find_lex $P243, "%capnames"
    unless_null $P243, vivify_96
    new $P243, "Hash"
    store_lex "%capnames", $P243
  vivify_96:
    set $P243[$P242], $P241
.annotate "line", 515
    .return ($P241)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block255"  :anon :subid("24_1257089963.27378") :outer("22_1257089963.27378")
    .param pmc param_257
.annotate "line", 520
    .lex "$_", param_257
.annotate "line", 521
    find_lex $P258, "$_"
    find_lex $P259, "%capnames"
    unless_null $P259, vivify_100
    new $P259, "Hash"
  vivify_100:
    set $P260, $P259[$P258]
    unless_null $P260, vivify_101
    new $P260, "Undef"
  vivify_101:
    set $N261, $P260
    new $P262, 'Float'
    set $P262, $N261
    find_lex $P263, "$_"
    find_lex $P264, "%x"
    unless_null $P264, vivify_102
    new $P264, "Hash"
  vivify_102:
    set $P265, $P264[$P263]
    unless_null $P265, vivify_103
    new $P265, "Undef"
  vivify_103:
    add $P266, $P262, $P265
    find_lex $P267, "$_"
    find_lex $P268, "%capnames"
    unless_null $P268, vivify_104
    new $P268, "Hash"
    store_lex "%capnames", $P268
  vivify_104:
    set $P268[$P267], $P266
.annotate "line", 520
    .return ($P266)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block169"  :anon :subid("20_1257089963.27378") :outer("14_1257089963.27378")
.annotate "line", 495
    .const 'Sub' $P188 = "21_1257089963.27378" 
    capture_lex $P188
.annotate "line", 496
    new $P171, "Undef"
    .lex "$name", $P171
.annotate "line", 498
    new $P172, "ResizablePMCArray"
    .lex "@names", $P172
.annotate "line", 496
    find_lex $P173, "$ast"
    $P174 = $P173."name"()
    store_lex "$name", $P174
.annotate "line", 497
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
.annotate "line", 498

            $P0 = find_lex '$name'
            $S0 = $P0
            $P182 = split '=', $S0
        
    store_lex "@names", $P182
.annotate "line", 503
    find_lex $P184, "@names"
    defined $I185, $P184
    unless $I185, for_undef_107
    iter $P183, $P184
    new $P207, 'ExceptionHandler'
    set_addr $P207, loop206_handler
    $P207."handle_types"(65, 67, 66)
    push_eh $P207
  loop206_test:
    unless $P183, loop206_done
    shift $P186, $P183
  loop206_redo:
    .const 'Sub' $P188 = "21_1257089963.27378" 
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
  for_undef_107:
.annotate "line", 495
    .return ($P183)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block187"  :anon :subid("21_1257089963.27378") :outer("20_1257089963.27378")
    .param pmc param_189
.annotate "line", 503
    .lex "$_", param_189
.annotate "line", 504
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
.annotate "line", 505
    new $P203, "Integer"
    assign $P203, 1
    find_lex $P204, "$_"
    find_lex $P205, "%capnames"
    unless_null $P205, vivify_108
    new $P205, "Hash"
    store_lex "%capnames", $P205
  vivify_108:
    set $P205[$P204], $P203
.annotate "line", 503
    .return ($P203)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block127"  :anon :subid("18_1257089963.27378") :outer("14_1257089963.27378")
    .param pmc param_130
.annotate "line", 487
    .const 'Sub' $P139 = "19_1257089963.27378" 
    capture_lex $P139
.annotate "line", 488
    new $P129, "Hash"
    .lex "%x", $P129
    .lex "$_", param_130
    find_lex $P131, "$_"
    find_lex $P132, "$count"
    $P133 = "capnames"($P131, $P132)
    store_lex "%x", $P133
.annotate "line", 489
    find_lex $P135, "%x"
    defined $I136, $P135
    unless $I136, for_undef_110
    iter $P134, $P135
    new $P153, 'ExceptionHandler'
    set_addr $P153, loop152_handler
    $P153."handle_types"(65, 67, 66)
    push_eh $P153
  loop152_test:
    unless $P134, loop152_done
    shift $P137, $P134
  loop152_redo:
    .const 'Sub' $P139 = "19_1257089963.27378" 
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
  for_undef_110:
.annotate "line", 492
    find_lex $P155, "%x"
    unless_null $P155, vivify_116
    new $P155, "Hash"
  vivify_116:
    set $P156, $P155[""]
    unless_null $P156, vivify_117
    new $P156, "Undef"
  vivify_117:
    store_lex "$count", $P156
.annotate "line", 487
    .return ($P156)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block138"  :anon :subid("19_1257089963.27378") :outer("18_1257089963.27378")
    .param pmc param_140
.annotate "line", 489
    .lex "$_", param_140
.annotate "line", 490
    find_lex $P141, "$_"
    find_lex $P142, "%capnames"
    unless_null $P142, vivify_111
    new $P142, "Hash"
  vivify_111:
    set $P143, $P142[$P141]
    unless_null $P143, vivify_112
    new $P143, "Undef"
  vivify_112:
    set $N144, $P143
    new $P145, 'Float'
    set $P145, $N144
    find_lex $P146, "$_"
    find_lex $P147, "%x"
    unless_null $P147, vivify_113
    new $P147, "Hash"
  vivify_113:
    set $P148, $P147[$P146]
    unless_null $P148, vivify_114
    new $P148, "Undef"
  vivify_114:
    add $P149, $P145, $P148
    find_lex $P150, "$_"
    find_lex $P151, "%capnames"
    unless_null $P151, vivify_115
    new $P151, "Hash"
    store_lex "%capnames", $P151
  vivify_115:
    set $P151[$P150], $P149
.annotate "line", 489
    .return ($P149)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block56"  :anon :subid("15_1257089963.27378") :outer("14_1257089963.27378")
.annotate "line", 473
    .const 'Sub' $P66 = "16_1257089963.27378" 
    capture_lex $P66
.annotate "line", 474
    new $P58, "Undef"
    .lex "$max", $P58
    find_lex $P59, "$count"
    store_lex "$max", $P59
.annotate "line", 475
    find_lex $P61, "$ast"
    $P62 = $P61."list"()
    defined $I63, $P62
    unless $I63, for_undef_118
    iter $P60, $P62
    new $P115, 'ExceptionHandler'
    set_addr $P115, loop114_handler
    $P115."handle_types"(65, 67, 66)
    push_eh $P115
  loop114_test:
    unless $P60, loop114_done
    shift $P64, $P60
  loop114_redo:
    .const 'Sub' $P66 = "16_1257089963.27378" 
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
  for_undef_118:
.annotate "line", 484
    find_lex $P117, "$max"
    store_lex "$count", $P117
.annotate "line", 473
    .return ($P117)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block65"  :anon :subid("16_1257089963.27378") :outer("15_1257089963.27378")
    .param pmc param_68
.annotate "line", 475
    .const 'Sub' $P77 = "17_1257089963.27378" 
    capture_lex $P77
.annotate "line", 476
    new $P67, "Hash"
    .lex "%x", $P67
    .lex "$_", param_68
    find_lex $P69, "$_"
    find_lex $P70, "$count"
    $P71 = "capnames"($P69, $P70)
    store_lex "%x", $P71
.annotate "line", 477
    find_lex $P73, "%x"
    defined $I74, $P73
    unless $I74, for_undef_119
    iter $P72, $P73
    new $P102, 'ExceptionHandler'
    set_addr $P102, loop101_handler
    $P102."handle_types"(65, 67, 66)
    push_eh $P102
  loop101_test:
    unless $P72, loop101_done
    shift $P75, $P72
  loop101_redo:
    .const 'Sub' $P77 = "17_1257089963.27378" 
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
  for_undef_119:
.annotate "line", 482
    find_lex $P106, "%x"
    unless_null $P106, vivify_125
    new $P106, "Hash"
  vivify_125:
    set $P107, $P106[""]
    unless_null $P107, vivify_126
    new $P107, "Undef"
  vivify_126:
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
    unless_null $P112, vivify_127
    new $P112, "Hash"
  vivify_127:
    set $P113, $P112[""]
    unless_null $P113, vivify_128
    new $P113, "Undef"
  vivify_128:
    store_lex "$max", $P113
    set $P104, $P113
  if_105_end:
.annotate "line", 475
    .return ($P104)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block76"  :anon :subid("17_1257089963.27378") :outer("16_1257089963.27378")
    .param pmc param_78
.annotate "line", 477
    .lex "$_", param_78
.annotate "line", 478
    find_lex $P83, "$_"
    find_lex $P84, "%capnames"
    unless_null $P84, vivify_120
    new $P84, "Hash"
  vivify_120:
    set $P85, $P84[$P83]
    unless_null $P85, vivify_121
    new $P85, "Undef"
  vivify_121:
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
    unless_null $P91, vivify_122
    new $P91, "Hash"
  vivify_122:
    set $P92, $P91[$P90]
    unless_null $P92, vivify_123
    new $P92, "Undef"
  vivify_123:
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
.annotate "line", 479
    find_lex $P99, "$_"
    find_lex $P100, "%capnames"
    unless_null $P100, vivify_124
    new $P100, "Hash"
    store_lex "%capnames", $P100
  vivify_124:
    set $P100[$P99], $P79
.annotate "line", 477
    .return ($P79)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backmod"  :subid("27_1257089963.27378") :outer("11_1257089963.27378")
    .param pmc param_307
    .param pmc param_308
.annotate "line", 536
    new $P306, 'ExceptionHandler'
    set_addr $P306, control_305
    $P306."handle_types"(58)
    push_eh $P306
    .lex "$ast", param_307
    .lex "$backmod", param_308
.annotate "line", 537
    find_lex $P310, "$backmod"
    set $S311, $P310
    iseq $I312, $S311, ":"
    if $I312, if_309
.annotate "line", 538
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
.annotate "line", 539
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
.annotate "line", 538
    find_lex $P323, "$ast"
    $P323."backtrack"("f")
  if_314_end:
    goto if_309_end
  if_309:
.annotate "line", 537
    find_lex $P313, "$ast"
    $P313."backtrack"("r")
  if_309_end:
    find_lex $P334, "$ast"
.annotate "line", 536
    .return ($P334)
  control_305:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P335, exception, "payload"
    .return ($P335)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "subrule_alias"  :subid("28_1257089963.27378") :outer("11_1257089963.27378")
    .param pmc param_339
    .param pmc param_340
.annotate "line", 543
    new $P338, 'ExceptionHandler'
    set_addr $P338, control_337
    $P338."handle_types"(58)
    push_eh $P338
    .lex "$past", param_339
    .lex "$name", param_340
.annotate "line", 544
    find_lex $P342, "$past"
    unless_null $P342, vivify_130
    new $P342, "Hash"
  vivify_130:
    set $P343, $P342["aliased"]
    unless_null $P343, vivify_131
    new $P343, "Undef"
  vivify_131:
    unless $P343, if_341_end
    find_lex $P344, "$name"
    concat $P345, $P344, "="
    find_lex $P346, "$past"
    $S347 = $P346."name"()
    concat $P348, $P345, $S347
    store_lex "$name", $P348
  if_341_end:
.annotate "line", 545
    find_lex $P349, "$past"
    find_lex $P350, "$name"
    $P349."name"($P350)
.annotate "line", 546
    new $P351, "Integer"
    assign $P351, 1
    find_lex $P352, "$past"
    unless_null $P352, vivify_132
    new $P352, "Hash"
    store_lex "$past", $P352
  vivify_132:
    set $P352["aliased"], $P351
.annotate "line", 543
    .return ($P351)
  control_337:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P353, exception, "payload"
    .return ($P353)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "arg"  :subid("29_1257089963.27378") :method :outer("11_1257089963.27378")
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
    unless_null $P363, vivify_133
    new $P363, "Hash"
  vivify_133:
    set $P364, $P363["quote"]
    unless_null $P364, vivify_134
    new $P364, "Undef"
  vivify_134:
    if $P364, if_362
    find_lex $P369, "$/"
    unless_null $P369, vivify_135
    new $P369, "Hash"
  vivify_135:
    set $P370, $P369["val"]
    unless_null $P370, vivify_136
    new $P370, "Undef"
  vivify_136:
    set $N371, $P370
    new $P361, 'Float'
    set $P361, $N371
    goto if_362_end
  if_362:
    find_lex $P365, "$/"
    unless_null $P365, vivify_137
    new $P365, "Hash"
  vivify_137:
    set $P366, $P365["quote"]
    unless_null $P366, vivify_138
    new $P366, "Hash"
  vivify_138:
    set $P367, $P366["val"]
    unless_null $P367, vivify_139
    new $P367, "Undef"
  vivify_139:
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
.sub "TOP"  :subid("30_1257089963.27378") :method :outer("11_1257089963.27378")
    .param pmc param_377
.annotate "line", 18
    new $P376, 'ExceptionHandler'
    set_addr $P376, control_375
    $P376."handle_types"(58)
    push_eh $P376
    .lex "self", self
    .lex "$/", param_377
.annotate "line", 19
    new $P378, "Undef"
    .lex "$past", $P378
    find_lex $P379, "$/"
    unless_null $P379, vivify_140
    new $P379, "Hash"
  vivify_140:
    set $P380, $P379["nibbler"]
    unless_null $P380, vivify_141
    new $P380, "Undef"
  vivify_141:
    $P381 = $P380."ast"()
    $P382 = "buildsub"($P381)
    store_lex "$past", $P382
.annotate "line", 20
    find_lex $P383, "$past"
    find_lex $P384, "$/"
    $P383."node"($P384)
.annotate "line", 21
    find_lex $P385, "$/"
    find_lex $P386, "$past"
    $P387 = $P385."!make"($P386)
.annotate "line", 18
    .return ($P387)
  control_375:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P388, exception, "payload"
    .return ($P388)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "nibbler"  :subid("31_1257089963.27378") :method :outer("11_1257089963.27378")
    .param pmc param_392
    .param pmc param_393 :optional
    .param int has_param_393 :opt_flag
.annotate "line", 24
    .const 'Sub' $P429 = "33_1257089963.27378" 
    capture_lex $P429
    .const 'Sub' $P401 = "32_1257089963.27378" 
    capture_lex $P401
    new $P391, 'ExceptionHandler'
    set_addr $P391, control_390
    $P391."handle_types"(58)
    push_eh $P391
    .lex "self", self
    .lex "$/", param_392
    if has_param_393, optparam_142
    new $P394, "Undef"
    set param_393, $P394
  optparam_142:
    .lex "$key", param_393
.annotate "line", 36
    new $P395, "Undef"
    .lex "$past", $P395
.annotate "line", 25
    find_lex $P397, "$key"
    set $S398, $P397
    iseq $I399, $S398, "open"
    unless $I399, if_396_end
    .const 'Sub' $P401 = "32_1257089963.27378" 
    capture_lex $P401
    $P401()
  if_396_end:
.annotate "line", 35
    get_global $P411, "@MODIFIERS"
    $P411."shift"()
    find_lex $P412, "$past"
.annotate "line", 37
    find_lex $P414, "$/"
    unless_null $P414, vivify_145
    new $P414, "Hash"
  vivify_145:
    set $P415, $P414["termish"]
    unless_null $P415, vivify_146
    new $P415, "Undef"
  vivify_146:
    set $N416, $P415
    new $P417, "Integer"
    assign $P417, 1
    set $N418, $P417
    isgt $I419, $N416, $N418
    if $I419, if_413
.annotate "line", 44
    find_lex $P438, "$/"
    unless_null $P438, vivify_147
    new $P438, "Hash"
  vivify_147:
    set $P439, $P438["termish"]
    unless_null $P439, vivify_148
    new $P439, "ResizablePMCArray"
  vivify_148:
    set $P440, $P439[0]
    unless_null $P440, vivify_149
    new $P440, "Undef"
  vivify_149:
    $P441 = $P440."ast"()
    store_lex "$past", $P441
.annotate "line", 43
    goto if_413_end
  if_413:
.annotate "line", 38
    get_hll_global $P420, ["PAST"], "Regex"
    find_lex $P421, "$/"
    $P422 = $P420."new"("alt" :named("pasttype"), $P421 :named("node"))
    store_lex "$past", $P422
.annotate "line", 39
    find_lex $P424, "$/"
    unless_null $P424, vivify_150
    new $P424, "Hash"
  vivify_150:
    set $P425, $P424["termish"]
    unless_null $P425, vivify_151
    new $P425, "Undef"
  vivify_151:
    defined $I426, $P425
    unless $I426, for_undef_152
    iter $P423, $P425
    new $P436, 'ExceptionHandler'
    set_addr $P436, loop435_handler
    $P436."handle_types"(65, 67, 66)
    push_eh $P436
  loop435_test:
    unless $P423, loop435_done
    shift $P427, $P423
  loop435_redo:
    .const 'Sub' $P429 = "33_1257089963.27378" 
    capture_lex $P429
    $P429($P427)
  loop435_next:
    goto loop435_test
  loop435_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P437, exception, 'type'
    eq $P437, 65, loop435_next
    eq $P437, 67, loop435_redo
  loop435_done:
    pop_eh 
  for_undef_152:
  if_413_end:
.annotate "line", 46
    find_lex $P442, "$/"
    find_lex $P443, "$past"
    $P444 = $P442."!make"($P443)
.annotate "line", 24
    .return ($P444)
  control_390:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P445, exception, "payload"
    .return ($P445)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block400"  :anon :subid("32_1257089963.27378") :outer("31_1257089963.27378")
.annotate "line", 26
    new $P402, "Hash"
    .lex "%old", $P402
.annotate "line", 27
    new $P403, "Hash"
    .lex "%new", $P403
.annotate "line", 26
    get_global $P404, "@MODIFIERS"
    unless_null $P404, vivify_143
    new $P404, "ResizablePMCArray"
  vivify_143:
    set $P405, $P404[0]
    unless_null $P405, vivify_144
    new $P405, "Undef"
  vivify_144:
    store_lex "%old", $P405
.annotate "line", 27

                       $P0 = find_lex '%old'
                       $P406 = clone $P0
                   
    store_lex "%new", $P406
.annotate "line", 31
    get_global $P407, "@MODIFIERS"
    find_lex $P408, "%new"
    $P407."unshift"($P408)
.annotate "line", 32
    new $P409, "Exception"
    set $P409['type'], 58
    new $P410, "Integer"
    assign $P410, 1
    setattribute $P409, 'payload', $P410
    throw $P409
.annotate "line", 25
    .return ()
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block428"  :anon :subid("33_1257089963.27378") :outer("31_1257089963.27378")
    .param pmc param_430
.annotate "line", 39
    .lex "$_", param_430
.annotate "line", 40
    find_lex $P431, "$past"
    find_lex $P432, "$_"
    $P433 = $P432."ast"()
    $P434 = $P431."push"($P433)
.annotate "line", 39
    .return ($P434)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "termish"  :subid("34_1257089963.27378") :method :outer("11_1257089963.27378")
    .param pmc param_449
.annotate "line", 49
    .const 'Sub' $P462 = "35_1257089963.27378" 
    capture_lex $P462
    new $P448, 'ExceptionHandler'
    set_addr $P448, control_447
    $P448."handle_types"(58)
    push_eh $P448
    .lex "self", self
    .lex "$/", param_449
.annotate "line", 50
    new $P450, "Undef"
    .lex "$past", $P450
.annotate "line", 51
    new $P451, "Undef"
    .lex "$lastlit", $P451
.annotate "line", 50
    get_hll_global $P452, ["PAST"], "Regex"
    find_lex $P453, "$/"
    $P454 = $P452."new"("concat" :named("pasttype"), $P453 :named("node"))
    store_lex "$past", $P454
.annotate "line", 51
    new $P455, "Integer"
    assign $P455, 0
    store_lex "$lastlit", $P455
.annotate "line", 52
    find_lex $P457, "$/"
    unless_null $P457, vivify_153
    new $P457, "Hash"
  vivify_153:
    set $P458, $P457["noun"]
    unless_null $P458, vivify_154
    new $P458, "Undef"
  vivify_154:
    defined $I459, $P458
    unless $I459, for_undef_155
    iter $P456, $P458
    new $P495, 'ExceptionHandler'
    set_addr $P495, loop494_handler
    $P495."handle_types"(65, 67, 66)
    push_eh $P495
  loop494_test:
    unless $P456, loop494_done
    shift $P460, $P456
  loop494_redo:
    .const 'Sub' $P462 = "35_1257089963.27378" 
    capture_lex $P462
    $P462($P460)
  loop494_next:
    goto loop494_test
  loop494_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P496, exception, 'type'
    eq $P496, 65, loop494_next
    eq $P496, 67, loop494_redo
  loop494_done:
    pop_eh 
  for_undef_155:
.annotate "line", 63
    find_lex $P497, "$/"
    find_lex $P498, "$past"
    $P499 = $P497."!make"($P498)
.annotate "line", 49
    .return ($P499)
  control_447:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P500, exception, "payload"
    .return ($P500)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block461"  :anon :subid("35_1257089963.27378") :outer("34_1257089963.27378")
    .param pmc param_464
.annotate "line", 53
    new $P463, "Undef"
    .lex "$ast", $P463
    .lex "$_", param_464
    find_lex $P465, "$_"
    $P466 = $P465."ast"()
    store_lex "$ast", $P466
.annotate "line", 54
    find_lex $P469, "$ast"
    isfalse $I470, $P469
    if $I470, if_468
.annotate "line", 55
    find_lex $P475, "$lastlit"
    if $P475, if_474
    set $P473, $P475
    goto if_474_end
  if_474:
    find_lex $P476, "$ast"
    $S477 = $P476."pasttype"()
    iseq $I478, $S477, "literal"
    new $P473, 'Integer'
    set $P473, $I478
  if_474_end:
    if $P473, if_472
.annotate "line", 59
    find_lex $P485, "$past"
    find_lex $P486, "$ast"
    $P485."push"($P486)
.annotate "line", 60
    find_lex $P489, "$ast"
    $S490 = $P489."pasttype"()
    iseq $I491, $S490, "literal"
    if $I491, if_488
    new $P493, "Integer"
    assign $P493, 0
    set $P487, $P493
    goto if_488_end
  if_488:
    find_lex $P492, "$ast"
    set $P487, $P492
  if_488_end:
    store_lex "$lastlit", $P487
.annotate "line", 58
    set $P471, $P487
.annotate "line", 55
    goto if_472_end
  if_472:
.annotate "line", 56
    find_lex $P479, "$lastlit"
    unless_null $P479, vivify_156
    new $P479, "ResizablePMCArray"
  vivify_156:
    set $P480, $P479[0]
    unless_null $P480, vivify_157
    new $P480, "Undef"
  vivify_157:
    find_lex $P481, "$ast"
    unless_null $P481, vivify_158
    new $P481, "ResizablePMCArray"
  vivify_158:
    set $P482, $P481[0]
    unless_null $P482, vivify_159
    new $P482, "Undef"
  vivify_159:
    concat $P483, $P480, $P482
    find_lex $P484, "$lastlit"
    unless_null $P484, vivify_160
    new $P484, "ResizablePMCArray"
    store_lex "$lastlit", $P484
  vivify_160:
    set $P484[0], $P483
.annotate "line", 55
    set $P471, $P483
  if_472_end:
    set $P467, $P471
.annotate "line", 54
    goto if_468_end
  if_468:
  if_468_end:
.annotate "line", 52
    .return ($P467)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantified_atom"  :subid("36_1257089963.27378") :method :outer("11_1257089963.27378")
    .param pmc param_504
.annotate "line", 66
    .const 'Sub' $P513 = "37_1257089963.27378" 
    capture_lex $P513
    new $P503, 'ExceptionHandler'
    set_addr $P503, control_502
    $P503."handle_types"(58)
    push_eh $P503
    .lex "self", self
    .lex "$/", param_504
.annotate "line", 67
    new $P505, "Undef"
    .lex "$past", $P505
    find_lex $P506, "$/"
    unless_null $P506, vivify_161
    new $P506, "Hash"
  vivify_161:
    set $P507, $P506["atom"]
    unless_null $P507, vivify_162
    new $P507, "Undef"
  vivify_162:
    $P508 = $P507."ast"()
    store_lex "$past", $P508
.annotate "line", 68
    find_lex $P510, "$/"
    unless_null $P510, vivify_163
    new $P510, "Hash"
  vivify_163:
    set $P511, $P510["quantifier"]
    unless_null $P511, vivify_164
    new $P511, "Undef"
  vivify_164:
    if $P511, if_509
.annotate "line", 74
    find_lex $P527, "$/"
    unless_null $P527, vivify_165
    new $P527, "Hash"
  vivify_165:
    set $P528, $P527["backmod"]
    unless_null $P528, vivify_166
    new $P528, "ResizablePMCArray"
  vivify_166:
    set $P529, $P528[0]
    unless_null $P529, vivify_167
    new $P529, "Undef"
  vivify_167:
    unless $P529, if_526_end
    find_lex $P530, "$past"
    find_lex $P531, "$/"
    unless_null $P531, vivify_168
    new $P531, "Hash"
  vivify_168:
    set $P532, $P531["backmod"]
    unless_null $P532, vivify_169
    new $P532, "ResizablePMCArray"
  vivify_169:
    set $P533, $P532[0]
    unless_null $P533, vivify_170
    new $P533, "Undef"
  vivify_170:
    "backmod"($P530, $P533)
  if_526_end:
    goto if_509_end
  if_509:
.annotate "line", 68
    .const 'Sub' $P513 = "37_1257089963.27378" 
    capture_lex $P513
    $P513()
  if_509_end:
.annotate "line", 75
    find_lex $P539, "$past"
    if $P539, if_538
    set $P537, $P539
    goto if_538_end
  if_538:
    find_lex $P540, "$past"
    $P541 = $P540."backtrack"()
    isfalse $I542, $P541
    new $P537, 'Integer'
    set $P537, $I542
  if_538_end:
    if $P537, if_536
    set $P535, $P537
    goto if_536_end
  if_536:
    get_global $P543, "@MODIFIERS"
    unless_null $P543, vivify_174
    new $P543, "ResizablePMCArray"
  vivify_174:
    set $P544, $P543[0]
    unless_null $P544, vivify_175
    new $P544, "Hash"
  vivify_175:
    set $P545, $P544["r"]
    unless_null $P545, vivify_176
    new $P545, "Undef"
  vivify_176:
    set $P535, $P545
  if_536_end:
    unless $P535, if_534_end
.annotate "line", 76
    find_lex $P546, "$past"
    $P546."backtrack"("r")
  if_534_end:
.annotate "line", 78
    find_lex $P547, "$/"
    find_lex $P548, "$past"
    $P549 = $P547."!make"($P548)
.annotate "line", 66
    .return ($P549)
  control_502:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P550, exception, "payload"
    .return ($P550)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block512"  :anon :subid("37_1257089963.27378") :outer("36_1257089963.27378")
.annotate "line", 70
    new $P514, "Undef"
    .lex "$qast", $P514
.annotate "line", 69
    find_lex $P516, "$past"
    isfalse $I517, $P516
    unless $I517, if_515_end
    find_lex $P518, "$/"
    $P518."panic"("Can't quantify zero-width atom")
  if_515_end:
.annotate "line", 70
    find_lex $P519, "$/"
    unless_null $P519, vivify_171
    new $P519, "Hash"
  vivify_171:
    set $P520, $P519["quantifier"]
    unless_null $P520, vivify_172
    new $P520, "ResizablePMCArray"
  vivify_172:
    set $P521, $P520[0]
    unless_null $P521, vivify_173
    new $P521, "Undef"
  vivify_173:
    $P522 = $P521."ast"()
    store_lex "$qast", $P522
.annotate "line", 71
    find_lex $P523, "$qast"
    find_lex $P524, "$past"
    $P523."unshift"($P524)
.annotate "line", 72
    find_lex $P525, "$qast"
    store_lex "$past", $P525
.annotate "line", 68
    .return ($P525)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "atom"  :subid("38_1257089963.27378") :method :outer("11_1257089963.27378")
    .param pmc param_554
.annotate "line", 81
    new $P553, 'ExceptionHandler'
    set_addr $P553, control_552
    $P553."handle_types"(58)
    push_eh $P553
    .lex "self", self
    .lex "$/", param_554
.annotate "line", 82
    new $P555, "Undef"
    .lex "$past", $P555
.annotate "line", 81
    find_lex $P556, "$past"
.annotate "line", 83
    find_lex $P558, "$/"
    unless_null $P558, vivify_177
    new $P558, "Hash"
  vivify_177:
    set $P559, $P558["metachar"]
    unless_null $P559, vivify_178
    new $P559, "Undef"
  vivify_178:
    if $P559, if_557
.annotate "line", 85
    get_hll_global $P563, ["PAST"], "Regex"
    find_lex $P564, "$/"
    set $S565, $P564
    find_lex $P566, "$/"
    $P567 = $P563."new"($S565, "literal" :named("pasttype"), $P566 :named("node"))
    store_lex "$past", $P567
.annotate "line", 86
    get_global $P569, "@MODIFIERS"
    unless_null $P569, vivify_179
    new $P569, "ResizablePMCArray"
  vivify_179:
    set $P570, $P569[0]
    unless_null $P570, vivify_180
    new $P570, "Hash"
  vivify_180:
    set $P571, $P570["i"]
    unless_null $P571, vivify_181
    new $P571, "Undef"
  vivify_181:
    unless $P571, if_568_end
    find_lex $P572, "$past"
    $P572."subtype"("ignorecase")
  if_568_end:
.annotate "line", 84
    goto if_557_end
  if_557:
.annotate "line", 83
    find_lex $P560, "$/"
    unless_null $P560, vivify_182
    new $P560, "Hash"
  vivify_182:
    set $P561, $P560["metachar"]
    unless_null $P561, vivify_183
    new $P561, "Undef"
  vivify_183:
    $P562 = $P561."ast"()
    store_lex "$past", $P562
  if_557_end:
.annotate "line", 88
    find_lex $P573, "$/"
    find_lex $P574, "$past"
    $P575 = $P573."!make"($P574)
.annotate "line", 81
    .return ($P575)
  control_552:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P576, exception, "payload"
    .return ($P576)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<*>"  :subid("39_1257089963.27378") :method :outer("11_1257089963.27378")
    .param pmc param_580
.annotate "line", 91
    new $P579, 'ExceptionHandler'
    set_addr $P579, control_578
    $P579."handle_types"(58)
    push_eh $P579
    .lex "self", self
    .lex "$/", param_580
.annotate "line", 92
    new $P581, "Undef"
    .lex "$past", $P581
    get_hll_global $P582, ["PAST"], "Regex"
    find_lex $P583, "$/"
    $P584 = $P582."new"("quant" :named("pasttype"), $P583 :named("node"))
    store_lex "$past", $P584
.annotate "line", 93
    find_lex $P585, "$/"
    find_lex $P586, "$past"
    find_lex $P587, "$/"
    unless_null $P587, vivify_184
    new $P587, "Hash"
  vivify_184:
    set $P588, $P587["backmod"]
    unless_null $P588, vivify_185
    new $P588, "Undef"
  vivify_185:
    $P589 = "backmod"($P586, $P588)
    $P590 = $P585."!make"($P589)
.annotate "line", 91
    .return ($P590)
  control_578:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P591, exception, "payload"
    .return ($P591)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<+>"  :subid("40_1257089963.27378") :method :outer("11_1257089963.27378")
    .param pmc param_595
.annotate "line", 96
    new $P594, 'ExceptionHandler'
    set_addr $P594, control_593
    $P594."handle_types"(58)
    push_eh $P594
    .lex "self", self
    .lex "$/", param_595
.annotate "line", 97
    new $P596, "Undef"
    .lex "$past", $P596
    get_hll_global $P597, ["PAST"], "Regex"
    find_lex $P598, "$/"
    $P599 = $P597."new"("quant" :named("pasttype"), 1 :named("min"), $P598 :named("node"))
    store_lex "$past", $P599
.annotate "line", 98
    find_lex $P600, "$/"
    find_lex $P601, "$past"
    find_lex $P602, "$/"
    unless_null $P602, vivify_186
    new $P602, "Hash"
  vivify_186:
    set $P603, $P602["backmod"]
    unless_null $P603, vivify_187
    new $P603, "Undef"
  vivify_187:
    $P604 = "backmod"($P601, $P603)
    $P605 = $P600."!make"($P604)
.annotate "line", 96
    .return ($P605)
  control_593:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P606, exception, "payload"
    .return ($P606)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<?>"  :subid("41_1257089963.27378") :method :outer("11_1257089963.27378")
    .param pmc param_610
.annotate "line", 101
    new $P609, 'ExceptionHandler'
    set_addr $P609, control_608
    $P609."handle_types"(58)
    push_eh $P609
    .lex "self", self
    .lex "$/", param_610
.annotate "line", 102
    new $P611, "Undef"
    .lex "$past", $P611
    get_hll_global $P612, ["PAST"], "Regex"
    find_lex $P613, "$/"
    $P614 = $P612."new"("quant" :named("pasttype"), 0 :named("min"), 1 :named("max"), $P613 :named("node"))
    store_lex "$past", $P614
.annotate "line", 103
    find_lex $P615, "$/"
    find_lex $P616, "$past"
    find_lex $P617, "$/"
    unless_null $P617, vivify_188
    new $P617, "Hash"
  vivify_188:
    set $P618, $P617["backmod"]
    unless_null $P618, vivify_189
    new $P618, "Undef"
  vivify_189:
    $P619 = "backmod"($P616, $P618)
    $P615."!make"($P619)
.annotate "line", 104
    find_lex $P620, "$/"
    find_lex $P621, "$past"
    $P622 = $P620."!make"($P621)
.annotate "line", 101
    .return ($P622)
  control_608:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P623, exception, "payload"
    .return ($P623)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<**>"  :subid("42_1257089963.27378") :method :outer("11_1257089963.27378")
    .param pmc param_627
.annotate "line", 107
    new $P626, 'ExceptionHandler'
    set_addr $P626, control_625
    $P626."handle_types"(58)
    push_eh $P626
    .lex "self", self
    .lex "$/", param_627
.annotate "line", 108
    new $P628, "Undef"
    .lex "$past", $P628
.annotate "line", 107
    find_lex $P629, "$past"
.annotate "line", 109
    find_lex $P631, "$/"
    unless_null $P631, vivify_190
    new $P631, "Hash"
  vivify_190:
    set $P632, $P631["quantified_atom"]
    unless_null $P632, vivify_191
    new $P632, "Undef"
  vivify_191:
    if $P632, if_630
.annotate "line", 114
    get_hll_global $P639, ["PAST"], "Regex"
    find_lex $P640, "$/"
    unless_null $P640, vivify_192
    new $P640, "Hash"
  vivify_192:
    set $P641, $P640["min"]
    unless_null $P641, vivify_193
    new $P641, "Undef"
  vivify_193:
    set $N642, $P641
    find_lex $P643, "$/"
    $P644 = $P639."new"("quant" :named("pasttype"), $N642 :named("min"), $P643 :named("node"))
    store_lex "$past", $P644
.annotate "line", 115
    find_lex $P646, "$/"
    unless_null $P646, vivify_194
    new $P646, "Hash"
  vivify_194:
    set $P647, $P646["max"]
    unless_null $P647, vivify_195
    new $P647, "Undef"
  vivify_195:
    isfalse $I648, $P647
    if $I648, if_645
.annotate "line", 116
    find_lex $P654, "$/"
    unless_null $P654, vivify_196
    new $P654, "Hash"
  vivify_196:
    set $P655, $P654["max"]
    unless_null $P655, vivify_197
    new $P655, "ResizablePMCArray"
  vivify_197:
    set $P656, $P655[0]
    unless_null $P656, vivify_198
    new $P656, "Undef"
  vivify_198:
    set $S657, $P656
    isne $I658, $S657, "*"
    unless $I658, if_653_end
    find_lex $P659, "$past"
    find_lex $P660, "$/"
    unless_null $P660, vivify_199
    new $P660, "Hash"
  vivify_199:
    set $P661, $P660["max"]
    unless_null $P661, vivify_200
    new $P661, "ResizablePMCArray"
  vivify_200:
    set $P662, $P661[0]
    unless_null $P662, vivify_201
    new $P662, "Undef"
  vivify_201:
    set $N663, $P662
    $P659."max"($N663)
  if_653_end:
    goto if_645_end
  if_645:
.annotate "line", 115
    find_lex $P649, "$past"
    find_lex $P650, "$/"
    unless_null $P650, vivify_202
    new $P650, "Hash"
  vivify_202:
    set $P651, $P650["min"]
    unless_null $P651, vivify_203
    new $P651, "Undef"
  vivify_203:
    set $N652, $P651
    $P649."max"($N652)
  if_645_end:
.annotate "line", 113
    goto if_630_end
  if_630:
.annotate "line", 110
    get_hll_global $P633, ["PAST"], "Regex"
.annotate "line", 111
    find_lex $P634, "$/"
    unless_null $P634, vivify_204
    new $P634, "Hash"
  vivify_204:
    set $P635, $P634["quantified_atom"]
    unless_null $P635, vivify_205
    new $P635, "Undef"
  vivify_205:
    $P636 = $P635."ast"()
    find_lex $P637, "$/"
    $P638 = $P633."new"("quant" :named("pasttype"), 1 :named("min"), $P636 :named("sep"), $P637 :named("node"))
.annotate "line", 110
    store_lex "$past", $P638
  if_630_end:
.annotate "line", 118
    find_lex $P664, "$/"
    find_lex $P665, "$past"
    find_lex $P666, "$/"
    unless_null $P666, vivify_206
    new $P666, "Hash"
  vivify_206:
    set $P667, $P666["backmod"]
    unless_null $P667, vivify_207
    new $P667, "Undef"
  vivify_207:
    $P668 = "backmod"($P665, $P667)
    $P669 = $P664."!make"($P668)
.annotate "line", 107
    .return ($P669)
  control_625:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P670, exception, "payload"
    .return ($P670)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<ws>"  :subid("43_1257089963.27378") :method :outer("11_1257089963.27378")
    .param pmc param_674
.annotate "line", 121
    new $P673, 'ExceptionHandler'
    set_addr $P673, control_672
    $P673."handle_types"(58)
    push_eh $P673
    .lex "self", self
    .lex "$/", param_674
.annotate "line", 122
    new $P675, "Undef"
    .lex "$past", $P675
.annotate "line", 123
    get_global $P678, "@MODIFIERS"
    unless_null $P678, vivify_208
    new $P678, "ResizablePMCArray"
  vivify_208:
    set $P679, $P678[0]
    unless_null $P679, vivify_209
    new $P679, "Hash"
  vivify_209:
    set $P680, $P679["s"]
    unless_null $P680, vivify_210
    new $P680, "Undef"
  vivify_210:
    if $P680, if_677
    new $P684, "Integer"
    assign $P684, 0
    set $P676, $P684
    goto if_677_end
  if_677:
    get_hll_global $P681, ["PAST"], "Regex"
    find_lex $P682, "$/"
    $P683 = $P681."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"), $P682 :named("node"))
    set $P676, $P683
  if_677_end:
    store_lex "$past", $P676
.annotate "line", 126
    find_lex $P685, "$/"
    find_lex $P686, "$past"
    $P687 = $P685."!make"($P686)
.annotate "line", 121
    .return ($P687)
  control_672:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P688, exception, "payload"
    .return ($P688)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<[ ]>"  :subid("44_1257089963.27378") :method :outer("11_1257089963.27378")
    .param pmc param_692
.annotate "line", 130
    new $P691, 'ExceptionHandler'
    set_addr $P691, control_690
    $P691."handle_types"(58)
    push_eh $P691
    .lex "self", self
    .lex "$/", param_692
.annotate "line", 131
    find_lex $P693, "$/"
    find_lex $P694, "$/"
    unless_null $P694, vivify_211
    new $P694, "Hash"
  vivify_211:
    set $P695, $P694["nibbler"]
    unless_null $P695, vivify_212
    new $P695, "Undef"
  vivify_212:
    $P696 = $P695."ast"()
    $P697 = $P693."!make"($P696)
.annotate "line", 130
    .return ($P697)
  control_690:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P698, exception, "payload"
    .return ($P698)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<( )>"  :subid("45_1257089963.27378") :method :outer("11_1257089963.27378")
    .param pmc param_702
.annotate "line", 134
    new $P701, 'ExceptionHandler'
    set_addr $P701, control_700
    $P701."handle_types"(58)
    push_eh $P701
    .lex "self", self
    .lex "$/", param_702
.annotate "line", 135
    new $P703, "Undef"
    .lex "$subpast", $P703
.annotate "line", 136
    new $P704, "Undef"
    .lex "$past", $P704
.annotate "line", 135
    find_lex $P705, "$/"
    unless_null $P705, vivify_213
    new $P705, "Hash"
  vivify_213:
    set $P706, $P705["nibbler"]
    unless_null $P706, vivify_214
    new $P706, "Undef"
  vivify_214:
    $P707 = $P706."ast"()
    $P708 = "buildsub"($P707)
    store_lex "$subpast", $P708
.annotate "line", 136
    get_hll_global $P709, ["PAST"], "Regex"
    find_lex $P710, "$subpast"
    find_lex $P711, "$/"
    $P712 = $P709."new"($P710, "subrule" :named("pasttype"), "capture" :named("subtype"), $P711 :named("node"))
    store_lex "$past", $P712
.annotate "line", 138
    find_lex $P713, "$/"
    find_lex $P714, "$past"
    $P715 = $P713."!make"($P714)
.annotate "line", 134
    .return ($P715)
  control_700:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P716, exception, "payload"
    .return ($P716)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<'>"  :subid("46_1257089963.27378") :method :outer("11_1257089963.27378")
    .param pmc param_720
.annotate "line", 141
    new $P719, 'ExceptionHandler'
    set_addr $P719, control_718
    $P719."handle_types"(58)
    push_eh $P719
    .lex "self", self
    .lex "$/", param_720
.annotate "line", 142
    new $P721, "Undef"
    .lex "$past", $P721
    get_hll_global $P722, ["PAST"], "Regex"
    find_lex $P723, "$/"
    unless_null $P723, vivify_215
    new $P723, "Hash"
  vivify_215:
    set $P724, $P723["quote"]
    unless_null $P724, vivify_216
    new $P724, "Hash"
  vivify_216:
    set $P725, $P724["val"]
    unless_null $P725, vivify_217
    new $P725, "Undef"
  vivify_217:
    set $S726, $P725
    find_lex $P727, "$/"
    $P728 = $P722."new"($S726, "literal" :named("pasttype"), $P727 :named("node"))
    store_lex "$past", $P728
.annotate "line", 143
    find_lex $P729, "$/"
    find_lex $P730, "$past"
    $P731 = $P729."!make"($P730)
.annotate "line", 141
    .return ($P731)
  control_718:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P732, exception, "payload"
    .return ($P732)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<.>"  :subid("47_1257089963.27378") :method :outer("11_1257089963.27378")
    .param pmc param_736
.annotate "line", 146
    new $P735, 'ExceptionHandler'
    set_addr $P735, control_734
    $P735."handle_types"(58)
    push_eh $P735
    .lex "self", self
    .lex "$/", param_736
.annotate "line", 147
    new $P737, "Undef"
    .lex "$past", $P737
    get_hll_global $P738, ["PAST"], "Regex"
    find_lex $P739, "$/"
    $P740 = $P738."new"("charclass" :named("pasttype"), "." :named("subtype"), $P739 :named("node"))
    store_lex "$past", $P740
.annotate "line", 148
    find_lex $P741, "$/"
    find_lex $P742, "$past"
    $P743 = $P741."!make"($P742)
.annotate "line", 146
    .return ($P743)
  control_734:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P744, exception, "payload"
    .return ($P744)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<^>"  :subid("48_1257089963.27378") :method :outer("11_1257089963.27378")
    .param pmc param_748
.annotate "line", 151
    new $P747, 'ExceptionHandler'
    set_addr $P747, control_746
    $P747."handle_types"(58)
    push_eh $P747
    .lex "self", self
    .lex "$/", param_748
.annotate "line", 152
    new $P749, "Undef"
    .lex "$past", $P749
    get_hll_global $P750, ["PAST"], "Regex"
    find_lex $P751, "$/"
    $P752 = $P750."new"("anchor" :named("pasttype"), "bos" :named("subtype"), $P751 :named("node"))
    store_lex "$past", $P752
.annotate "line", 153
    find_lex $P753, "$/"
    find_lex $P754, "$past"
    $P755 = $P753."!make"($P754)
.annotate "line", 151
    .return ($P755)
  control_746:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P756, exception, "payload"
    .return ($P756)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<^^>"  :subid("49_1257089963.27378") :method :outer("11_1257089963.27378")
    .param pmc param_760
.annotate "line", 156
    new $P759, 'ExceptionHandler'
    set_addr $P759, control_758
    $P759."handle_types"(58)
    push_eh $P759
    .lex "self", self
    .lex "$/", param_760
.annotate "line", 157
    new $P761, "Undef"
    .lex "$past", $P761
    get_hll_global $P762, ["PAST"], "Regex"
    find_lex $P763, "$/"
    $P764 = $P762."new"("anchor" :named("pasttype"), "bol" :named("subtype"), $P763 :named("node"))
    store_lex "$past", $P764
.annotate "line", 158
    find_lex $P765, "$/"
    find_lex $P766, "$past"
    $P767 = $P765."!make"($P766)
.annotate "line", 156
    .return ($P767)
  control_758:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P768, exception, "payload"
    .return ($P768)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<$>"  :subid("50_1257089963.27378") :method :outer("11_1257089963.27378")
    .param pmc param_772
.annotate "line", 161
    new $P771, 'ExceptionHandler'
    set_addr $P771, control_770
    $P771."handle_types"(58)
    push_eh $P771
    .lex "self", self
    .lex "$/", param_772
.annotate "line", 162
    new $P773, "Undef"
    .lex "$past", $P773
    get_hll_global $P774, ["PAST"], "Regex"
    find_lex $P775, "$/"
    $P776 = $P774."new"("anchor" :named("pasttype"), "eos" :named("subtype"), $P775 :named("node"))
    store_lex "$past", $P776
.annotate "line", 163
    find_lex $P777, "$/"
    find_lex $P778, "$past"
    $P779 = $P777."!make"($P778)
.annotate "line", 161
    .return ($P779)
  control_770:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P780, exception, "payload"
    .return ($P780)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<$$>"  :subid("51_1257089963.27378") :method :outer("11_1257089963.27378")
    .param pmc param_784
.annotate "line", 166
    new $P783, 'ExceptionHandler'
    set_addr $P783, control_782
    $P783."handle_types"(58)
    push_eh $P783
    .lex "self", self
    .lex "$/", param_784
.annotate "line", 167
    new $P785, "Undef"
    .lex "$past", $P785
    get_hll_global $P786, ["PAST"], "Regex"
    find_lex $P787, "$/"
    $P788 = $P786."new"("anchor" :named("pasttype"), "eol" :named("subtype"), $P787 :named("node"))
    store_lex "$past", $P788
.annotate "line", 168
    find_lex $P789, "$/"
    find_lex $P790, "$past"
    $P791 = $P789."!make"($P790)
.annotate "line", 166
    .return ($P791)
  control_782:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P792, exception, "payload"
    .return ($P792)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<:::>"  :subid("52_1257089963.27378") :method :outer("11_1257089963.27378")
    .param pmc param_796
.annotate "line", 171
    new $P795, 'ExceptionHandler'
    set_addr $P795, control_794
    $P795."handle_types"(58)
    push_eh $P795
    .lex "self", self
    .lex "$/", param_796
.annotate "line", 172
    new $P797, "Undef"
    .lex "$past", $P797
    get_hll_global $P798, ["PAST"], "Regex"
    find_lex $P799, "$/"
    $P800 = $P798."new"("cut" :named("pasttype"), $P799 :named("node"))
    store_lex "$past", $P800
.annotate "line", 173
    find_lex $P801, "$/"
    find_lex $P802, "$past"
    $P803 = $P801."!make"($P802)
.annotate "line", 171
    .return ($P803)
  control_794:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P804, exception, "payload"
    .return ($P804)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<lwb>"  :subid("53_1257089963.27378") :method :outer("11_1257089963.27378")
    .param pmc param_808
.annotate "line", 176
    new $P807, 'ExceptionHandler'
    set_addr $P807, control_806
    $P807."handle_types"(58)
    push_eh $P807
    .lex "self", self
    .lex "$/", param_808
.annotate "line", 177
    new $P809, "Undef"
    .lex "$past", $P809
    get_hll_global $P810, ["PAST"], "Regex"
    find_lex $P811, "$/"
    $P812 = $P810."new"("anchor" :named("pasttype"), "lwb" :named("subtype"), $P811 :named("node"))
    store_lex "$past", $P812
.annotate "line", 178
    find_lex $P813, "$/"
    find_lex $P814, "$past"
    $P815 = $P813."!make"($P814)
.annotate "line", 176
    .return ($P815)
  control_806:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P816, exception, "payload"
    .return ($P816)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<rwb>"  :subid("54_1257089963.27378") :method :outer("11_1257089963.27378")
    .param pmc param_820
.annotate "line", 181
    new $P819, 'ExceptionHandler'
    set_addr $P819, control_818
    $P819."handle_types"(58)
    push_eh $P819
    .lex "self", self
    .lex "$/", param_820
.annotate "line", 182
    new $P821, "Undef"
    .lex "$past", $P821
    get_hll_global $P822, ["PAST"], "Regex"
    find_lex $P823, "$/"
    $P824 = $P822."new"("anchor" :named("pasttype"), "rwb" :named("subtype"), $P823 :named("node"))
    store_lex "$past", $P824
.annotate "line", 183
    find_lex $P825, "$/"
    find_lex $P826, "$past"
    $P827 = $P825."!make"($P826)
.annotate "line", 181
    .return ($P827)
  control_818:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P828, exception, "payload"
    .return ($P828)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<bs>"  :subid("55_1257089963.27378") :method :outer("11_1257089963.27378")
    .param pmc param_832
.annotate "line", 186
    new $P831, 'ExceptionHandler'
    set_addr $P831, control_830
    $P831."handle_types"(58)
    push_eh $P831
    .lex "self", self
    .lex "$/", param_832
.annotate "line", 187
    find_lex $P833, "$/"
    find_lex $P834, "$/"
    unless_null $P834, vivify_218
    new $P834, "Hash"
  vivify_218:
    set $P835, $P834["backslash"]
    unless_null $P835, vivify_219
    new $P835, "Undef"
  vivify_219:
    $P836 = $P835."ast"()
    $P837 = $P833."!make"($P836)
.annotate "line", 186
    .return ($P837)
  control_830:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P838, exception, "payload"
    .return ($P838)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<mod>"  :subid("56_1257089963.27378") :method :outer("11_1257089963.27378")
    .param pmc param_842
.annotate "line", 190
    new $P841, 'ExceptionHandler'
    set_addr $P841, control_840
    $P841."handle_types"(58)
    push_eh $P841
    .lex "self", self
    .lex "$/", param_842
.annotate "line", 191
    find_lex $P843, "$/"
    find_lex $P844, "$/"
    unless_null $P844, vivify_220
    new $P844, "Hash"
  vivify_220:
    set $P845, $P844["mod_internal"]
    unless_null $P845, vivify_221
    new $P845, "Undef"
  vivify_221:
    $P846 = $P845."ast"()
    $P847 = $P843."!make"($P846)
.annotate "line", 190
    .return ($P847)
  control_840:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P848, exception, "payload"
    .return ($P848)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<assert>"  :subid("57_1257089963.27378") :method :outer("11_1257089963.27378")
    .param pmc param_852
.annotate "line", 194
    new $P851, 'ExceptionHandler'
    set_addr $P851, control_850
    $P851."handle_types"(58)
    push_eh $P851
    .lex "self", self
    .lex "$/", param_852
.annotate "line", 195
    find_lex $P853, "$/"
    find_lex $P854, "$/"
    unless_null $P854, vivify_222
    new $P854, "Hash"
  vivify_222:
    set $P855, $P854["assertion"]
    unless_null $P855, vivify_223
    new $P855, "Undef"
  vivify_223:
    $P856 = $P855."ast"()
    $P857 = $P853."!make"($P856)
.annotate "line", 194
    .return ($P857)
  control_850:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P858, exception, "payload"
    .return ($P858)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<~>"  :subid("58_1257089963.27378") :method :outer("11_1257089963.27378")
    .param pmc param_862
.annotate "line", 198
    new $P861, 'ExceptionHandler'
    set_addr $P861, control_860
    $P861."handle_types"(58)
    push_eh $P861
    .lex "self", self
    .lex "$/", param_862
.annotate "line", 199
    find_lex $P863, "$/"
    get_hll_global $P864, ["PAST"], "Regex"
.annotate "line", 200
    find_lex $P865, "$/"
    unless_null $P865, vivify_224
    new $P865, "Hash"
  vivify_224:
    set $P866, $P865["EXPR"]
    unless_null $P866, vivify_225
    new $P866, "Undef"
  vivify_225:
    $P867 = $P866."ast"()
.annotate "line", 201
    get_hll_global $P868, ["PAST"], "Regex"
.annotate "line", 202
    find_lex $P869, "$/"
    unless_null $P869, vivify_226
    new $P869, "Hash"
  vivify_226:
    set $P870, $P869["GOAL"]
    unless_null $P870, vivify_227
    new $P870, "Undef"
  vivify_227:
    $P871 = $P870."ast"()
.annotate "line", 203
    get_hll_global $P872, ["PAST"], "Regex"
    find_lex $P873, "$/"
    unless_null $P873, vivify_228
    new $P873, "Hash"
  vivify_228:
    set $P874, $P873["GOAL"]
    unless_null $P874, vivify_229
    new $P874, "Undef"
  vivify_229:
    set $S875, $P874
    $P876 = $P872."new"("FAILGOAL", $S875, "subrule" :named("pasttype"), "method" :named("subtype"))
    $P877 = $P868."new"($P871, $P876, "alt" :named("pasttype"))
.annotate "line", 201
    $P878 = $P864."new"($P867, $P877, "concat" :named("pasttype"))
.annotate "line", 199
    $P879 = $P863."!make"($P878)
.annotate "line", 198
    .return ($P879)
  control_860:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P880, exception, "payload"
    .return ($P880)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<{*}>"  :subid("59_1257089963.27378") :method :outer("11_1257089963.27378")
    .param pmc param_884
.annotate "line", 211
    new $P883, 'ExceptionHandler'
    set_addr $P883, control_882
    $P883."handle_types"(58)
    push_eh $P883
    .lex "self", self
    .lex "$/", param_884
.annotate "line", 212
    new $P885, "Undef"
    .lex "$past", $P885
.annotate "line", 213
    find_lex $P888, "$/"
    unless_null $P888, vivify_230
    new $P888, "Hash"
  vivify_230:
    set $P889, $P888["key"]
    unless_null $P889, vivify_231
    new $P889, "Undef"
  vivify_231:
    if $P889, if_887
    new $P897, "Integer"
    assign $P897, 0
    set $P886, $P897
    goto if_887_end
  if_887:
    get_hll_global $P890, ["PAST"], "Regex"
    find_lex $P891, "$/"
    unless_null $P891, vivify_232
    new $P891, "Hash"
  vivify_232:
    set $P892, $P891["key"]
    unless_null $P892, vivify_233
    new $P892, "ResizablePMCArray"
  vivify_233:
    set $P893, $P892[0]
    unless_null $P893, vivify_234
    new $P893, "Undef"
  vivify_234:
    set $S894, $P893
    find_lex $P895, "$/"
    $P896 = $P890."new"($S894, "reduce" :named("pasttype"), $P895 :named("node"))
    set $P886, $P896
  if_887_end:
    store_lex "$past", $P886
.annotate "line", 215
    find_lex $P898, "$/"
    find_lex $P899, "$past"
    $P900 = $P898."!make"($P899)
.annotate "line", 211
    .return ($P900)
  control_882:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P901, exception, "payload"
    .return ($P901)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<var>"  :subid("60_1257089963.27378") :method :outer("11_1257089963.27378")
    .param pmc param_905
.annotate "line", 218
    new $P904, 'ExceptionHandler'
    set_addr $P904, control_903
    $P904."handle_types"(58)
    push_eh $P904
    .lex "self", self
    .lex "$/", param_905
.annotate "line", 219
    new $P906, "Undef"
    .lex "$past", $P906
.annotate "line", 220
    new $P907, "Undef"
    .lex "$name", $P907
.annotate "line", 218
    find_lex $P908, "$past"
.annotate "line", 220
    find_lex $P911, "$/"
    unless_null $P911, vivify_235
    new $P911, "Hash"
  vivify_235:
    set $P912, $P911["pos"]
    unless_null $P912, vivify_236
    new $P912, "Undef"
  vivify_236:
    if $P912, if_910
    find_lex $P916, "$/"
    unless_null $P916, vivify_237
    new $P916, "Hash"
  vivify_237:
    set $P917, $P916["name"]
    unless_null $P917, vivify_238
    new $P917, "Undef"
  vivify_238:
    set $S918, $P917
    new $P909, 'String'
    set $P909, $S918
    goto if_910_end
  if_910:
    find_lex $P913, "$/"
    unless_null $P913, vivify_239
    new $P913, "Hash"
  vivify_239:
    set $P914, $P913["pos"]
    unless_null $P914, vivify_240
    new $P914, "Undef"
  vivify_240:
    set $N915, $P914
    new $P909, 'Float'
    set $P909, $N915
  if_910_end:
    store_lex "$name", $P909
.annotate "line", 221
    find_lex $P920, "$/"
    unless_null $P920, vivify_241
    new $P920, "Hash"
  vivify_241:
    set $P921, $P920["quantified_atom"]
    unless_null $P921, vivify_242
    new $P921, "Undef"
  vivify_242:
    if $P921, if_919
.annotate "line", 232
    get_hll_global $P950, ["PAST"], "Regex"
    find_lex $P951, "$name"
    find_lex $P952, "$/"
    $P953 = $P950."new"("!BACKREF", $P951, "subrule" :named("pasttype"), "method" :named("subtype"), $P952 :named("node"))
    store_lex "$past", $P953
.annotate "line", 231
    goto if_919_end
  if_919:
.annotate "line", 222
    find_lex $P922, "$/"
    unless_null $P922, vivify_243
    new $P922, "Hash"
  vivify_243:
    set $P923, $P922["quantified_atom"]
    unless_null $P923, vivify_244
    new $P923, "ResizablePMCArray"
  vivify_244:
    set $P924, $P923[0]
    unless_null $P924, vivify_245
    new $P924, "Undef"
  vivify_245:
    $P925 = $P924."ast"()
    store_lex "$past", $P925
.annotate "line", 223
    find_lex $P929, "$past"
    $S930 = $P929."pasttype"()
    iseq $I931, $S930, "quant"
    if $I931, if_928
    new $P927, 'Integer'
    set $P927, $I931
    goto if_928_end
  if_928:
    find_lex $P932, "$past"
    unless_null $P932, vivify_246
    new $P932, "ResizablePMCArray"
  vivify_246:
    set $P933, $P932[0]
    unless_null $P933, vivify_247
    new $P933, "Undef"
  vivify_247:
    $S934 = $P933."pasttype"()
    iseq $I935, $S934, "subrule"
    new $P927, 'Integer'
    set $P927, $I935
  if_928_end:
    if $P927, if_926
.annotate "line", 226
    find_lex $P940, "$past"
    $S941 = $P940."pasttype"()
    iseq $I942, $S941, "subrule"
    if $I942, if_939
.annotate "line", 228
    get_hll_global $P945, ["PAST"], "Regex"
    find_lex $P946, "$past"
    find_lex $P947, "$name"
    find_lex $P948, "$/"
    $P949 = $P945."new"($P946, $P947 :named("name"), "subcapture" :named("pasttype"), $P948 :named("node"))
    store_lex "$past", $P949
.annotate "line", 227
    goto if_939_end
  if_939:
.annotate "line", 226
    find_lex $P943, "$past"
    find_lex $P944, "$name"
    "subrule_alias"($P943, $P944)
  if_939_end:
    goto if_926_end
  if_926:
.annotate "line", 224
    find_lex $P936, "$past"
    unless_null $P936, vivify_248
    new $P936, "ResizablePMCArray"
  vivify_248:
    set $P937, $P936[0]
    unless_null $P937, vivify_249
    new $P937, "Undef"
  vivify_249:
    find_lex $P938, "$name"
    "subrule_alias"($P937, $P938)
  if_926_end:
  if_919_end:
.annotate "line", 235
    find_lex $P954, "$/"
    find_lex $P955, "$past"
    $P956 = $P954."!make"($P955)
.annotate "line", 218
    .return ($P956)
  control_903:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P957, exception, "payload"
    .return ($P957)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<PIR>"  :subid("61_1257089963.27378") :method :outer("11_1257089963.27378")
    .param pmc param_961
.annotate "line", 238
    new $P960, 'ExceptionHandler'
    set_addr $P960, control_959
    $P960."handle_types"(58)
    push_eh $P960
    .lex "self", self
    .lex "$/", param_961
.annotate "line", 239
    find_lex $P962, "$/"
    get_hll_global $P963, ["PAST"], "Regex"
.annotate "line", 240
    get_hll_global $P964, ["PAST"], "Op"
    find_lex $P965, "$/"
    unless_null $P965, vivify_250
    new $P965, "Hash"
  vivify_250:
    set $P966, $P965["pir"]
    unless_null $P966, vivify_251
    new $P966, "Undef"
  vivify_251:
    set $S967, $P966
    $P968 = $P964."new"($S967 :named("inline"), "inline" :named("pasttype"))
    find_lex $P969, "$/"
    $P970 = $P963."new"($P968, "pastnode" :named("pasttype"), $P969 :named("node"))
.annotate "line", 239
    $P971 = $P962."!make"($P970)
.annotate "line", 238
    .return ($P971)
  control_959:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P972, exception, "payload"
    .return ($P972)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<w>"  :subid("62_1257089963.27378") :method :outer("11_1257089963.27378")
    .param pmc param_976
.annotate "line", 246
    new $P975, 'ExceptionHandler'
    set_addr $P975, control_974
    $P975."handle_types"(58)
    push_eh $P975
    .lex "self", self
    .lex "$/", param_976
.annotate "line", 247
    new $P977, "Undef"
    .lex "$subtype", $P977
.annotate "line", 248
    new $P978, "Undef"
    .lex "$past", $P978
.annotate "line", 247
    find_lex $P981, "$/"
    unless_null $P981, vivify_252
    new $P981, "Hash"
  vivify_252:
    set $P982, $P981["sym"]
    unless_null $P982, vivify_253
    new $P982, "Undef"
  vivify_253:
    set $S983, $P982
    iseq $I984, $S983, "n"
    if $I984, if_980
    find_lex $P986, "$/"
    unless_null $P986, vivify_254
    new $P986, "Hash"
  vivify_254:
    set $P987, $P986["sym"]
    unless_null $P987, vivify_255
    new $P987, "Undef"
  vivify_255:
    set $S988, $P987
    new $P979, 'String'
    set $P979, $S988
    goto if_980_end
  if_980:
    new $P985, "String"
    assign $P985, "nl"
    set $P979, $P985
  if_980_end:
    store_lex "$subtype", $P979
.annotate "line", 248
    get_hll_global $P989, ["PAST"], "Regex"
    find_lex $P990, "$subtype"
    find_lex $P991, "$/"
    $P992 = $P989."new"("charclass" :named("pasttype"), $P990 :named("subtype"), $P991 :named("node"))
    store_lex "$past", $P992
.annotate "line", 249
    find_lex $P993, "$/"
    find_lex $P994, "$past"
    $P995 = $P993."!make"($P994)
.annotate "line", 246
    .return ($P995)
  control_974:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P996, exception, "payload"
    .return ($P996)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<b>"  :subid("63_1257089963.27378") :method :outer("11_1257089963.27378")
    .param pmc param_1000
.annotate "line", 252
    new $P999, 'ExceptionHandler'
    set_addr $P999, control_998
    $P999."handle_types"(58)
    push_eh $P999
    .lex "self", self
    .lex "$/", param_1000
.annotate "line", 253
    new $P1001, "Undef"
    .lex "$past", $P1001
    get_hll_global $P1002, ["PAST"], "Regex"
.annotate "line", 254
    find_lex $P1003, "$/"
    unless_null $P1003, vivify_256
    new $P1003, "Hash"
  vivify_256:
    set $P1004, $P1003["sym"]
    unless_null $P1004, vivify_257
    new $P1004, "Undef"
  vivify_257:
    set $S1005, $P1004
    iseq $I1006, $S1005, "B"
    find_lex $P1007, "$/"
    $P1008 = $P1002."new"("\b", "enumcharlist" :named("pasttype"), $I1006 :named("negate"), $P1007 :named("node"))
.annotate "line", 253
    store_lex "$past", $P1008
.annotate "line", 255
    find_lex $P1009, "$/"
    find_lex $P1010, "$past"
    $P1011 = $P1009."!make"($P1010)
.annotate "line", 252
    .return ($P1011)
  control_998:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1012, exception, "payload"
    .return ($P1012)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<e>"  :subid("64_1257089963.27378") :method :outer("11_1257089963.27378")
    .param pmc param_1016
.annotate "line", 258
    new $P1015, 'ExceptionHandler'
    set_addr $P1015, control_1014
    $P1015."handle_types"(58)
    push_eh $P1015
    .lex "self", self
    .lex "$/", param_1016
.annotate "line", 259
    new $P1017, "Undef"
    .lex "$past", $P1017
    get_hll_global $P1018, ["PAST"], "Regex"
.annotate "line", 260
    find_lex $P1019, "$/"
    unless_null $P1019, vivify_258
    new $P1019, "Hash"
  vivify_258:
    set $P1020, $P1019["sym"]
    unless_null $P1020, vivify_259
    new $P1020, "Undef"
  vivify_259:
    set $S1021, $P1020
    iseq $I1022, $S1021, "E"
    find_lex $P1023, "$/"
    $P1024 = $P1018."new"("\\e", "enumcharlist" :named("pasttype"), $I1022 :named("negate"), $P1023 :named("node"))
.annotate "line", 259
    store_lex "$past", $P1024
.annotate "line", 261
    find_lex $P1025, "$/"
    find_lex $P1026, "$past"
    $P1027 = $P1025."!make"($P1026)
.annotate "line", 258
    .return ($P1027)
  control_1014:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1028, exception, "payload"
    .return ($P1028)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<f>"  :subid("65_1257089963.27378") :method :outer("11_1257089963.27378")
    .param pmc param_1032
.annotate "line", 264
    new $P1031, 'ExceptionHandler'
    set_addr $P1031, control_1030
    $P1031."handle_types"(58)
    push_eh $P1031
    .lex "self", self
    .lex "$/", param_1032
.annotate "line", 265
    new $P1033, "Undef"
    .lex "$past", $P1033
    get_hll_global $P1034, ["PAST"], "Regex"
.annotate "line", 266
    find_lex $P1035, "$/"
    unless_null $P1035, vivify_260
    new $P1035, "Hash"
  vivify_260:
    set $P1036, $P1035["sym"]
    unless_null $P1036, vivify_261
    new $P1036, "Undef"
  vivify_261:
    set $S1037, $P1036
    iseq $I1038, $S1037, "F"
    find_lex $P1039, "$/"
    $P1040 = $P1034."new"("\\f", "enumcharlist" :named("pasttype"), $I1038 :named("negate"), $P1039 :named("node"))
.annotate "line", 265
    store_lex "$past", $P1040
.annotate "line", 267
    find_lex $P1041, "$/"
    find_lex $P1042, "$past"
    $P1043 = $P1041."!make"($P1042)
.annotate "line", 264
    .return ($P1043)
  control_1030:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1044, exception, "payload"
    .return ($P1044)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<h>"  :subid("66_1257089963.27378") :method :outer("11_1257089963.27378")
    .param pmc param_1048
.annotate "line", 270
    new $P1047, 'ExceptionHandler'
    set_addr $P1047, control_1046
    $P1047."handle_types"(58)
    push_eh $P1047
    .lex "self", self
    .lex "$/", param_1048
.annotate "line", 271
    new $P1049, "Undef"
    .lex "$past", $P1049
    get_hll_global $P1050, ["PAST"], "Regex"
.annotate "line", 272
    find_lex $P1051, "$/"
    unless_null $P1051, vivify_262
    new $P1051, "Hash"
  vivify_262:
    set $P1052, $P1051["sym"]
    unless_null $P1052, vivify_263
    new $P1052, "Undef"
  vivify_263:
    set $S1053, $P1052
    iseq $I1054, $S1053, "H"
    find_lex $P1055, "$/"
    $P1056 = $P1050."new"(unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", "enumcharlist" :named("pasttype"), $I1054 :named("negate"), $P1055 :named("node"))
.annotate "line", 271
    store_lex "$past", $P1056
.annotate "line", 273
    find_lex $P1057, "$/"
    find_lex $P1058, "$past"
    $P1059 = $P1057."!make"($P1058)
.annotate "line", 270
    .return ($P1059)
  control_1046:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1060, exception, "payload"
    .return ($P1060)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<r>"  :subid("67_1257089963.27378") :method :outer("11_1257089963.27378")
    .param pmc param_1064
.annotate "line", 276
    new $P1063, 'ExceptionHandler'
    set_addr $P1063, control_1062
    $P1063."handle_types"(58)
    push_eh $P1063
    .lex "self", self
    .lex "$/", param_1064
.annotate "line", 277
    new $P1065, "Undef"
    .lex "$past", $P1065
    get_hll_global $P1066, ["PAST"], "Regex"
.annotate "line", 278
    find_lex $P1067, "$/"
    unless_null $P1067, vivify_264
    new $P1067, "Hash"
  vivify_264:
    set $P1068, $P1067["sym"]
    unless_null $P1068, vivify_265
    new $P1068, "Undef"
  vivify_265:
    set $S1069, $P1068
    iseq $I1070, $S1069, "R"
    find_lex $P1071, "$/"
    $P1072 = $P1066."new"("\r", "enumcharlist" :named("pasttype"), $I1070 :named("negate"), $P1071 :named("node"))
.annotate "line", 277
    store_lex "$past", $P1072
.annotate "line", 279
    find_lex $P1073, "$/"
    find_lex $P1074, "$past"
    $P1075 = $P1073."!make"($P1074)
.annotate "line", 276
    .return ($P1075)
  control_1062:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1076, exception, "payload"
    .return ($P1076)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<t>"  :subid("68_1257089963.27378") :method :outer("11_1257089963.27378")
    .param pmc param_1080
.annotate "line", 282
    new $P1079, 'ExceptionHandler'
    set_addr $P1079, control_1078
    $P1079."handle_types"(58)
    push_eh $P1079
    .lex "self", self
    .lex "$/", param_1080
.annotate "line", 283
    new $P1081, "Undef"
    .lex "$past", $P1081
    get_hll_global $P1082, ["PAST"], "Regex"
.annotate "line", 284
    find_lex $P1083, "$/"
    unless_null $P1083, vivify_266
    new $P1083, "Hash"
  vivify_266:
    set $P1084, $P1083["sym"]
    unless_null $P1084, vivify_267
    new $P1084, "Undef"
  vivify_267:
    set $S1085, $P1084
    iseq $I1086, $S1085, "T"
    find_lex $P1087, "$/"
    $P1088 = $P1082."new"("\t", "enumcharlist" :named("pasttype"), $I1086 :named("negate"), $P1087 :named("node"))
.annotate "line", 283
    store_lex "$past", $P1088
.annotate "line", 285
    find_lex $P1089, "$/"
    find_lex $P1090, "$past"
    $P1091 = $P1089."!make"($P1090)
.annotate "line", 282
    .return ($P1091)
  control_1078:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1092, exception, "payload"
    .return ($P1092)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<v>"  :subid("69_1257089963.27378") :method :outer("11_1257089963.27378")
    .param pmc param_1096
.annotate "line", 288
    new $P1095, 'ExceptionHandler'
    set_addr $P1095, control_1094
    $P1095."handle_types"(58)
    push_eh $P1095
    .lex "self", self
    .lex "$/", param_1096
.annotate "line", 289
    new $P1097, "Undef"
    .lex "$past", $P1097
    get_hll_global $P1098, ["PAST"], "Regex"
.annotate "line", 291
    find_lex $P1099, "$/"
    unless_null $P1099, vivify_268
    new $P1099, "Hash"
  vivify_268:
    set $P1100, $P1099["sym"]
    unless_null $P1100, vivify_269
    new $P1100, "Undef"
  vivify_269:
    set $S1101, $P1100
    iseq $I1102, $S1101, "V"
    find_lex $P1103, "$/"
    $P1104 = $P1098."new"(unicode:"\n\x{b}\f\r\x{85}\u2028\u2029", "enumcharlist" :named("pasttype"), $I1102 :named("negate"), $P1103 :named("node"))
.annotate "line", 289
    store_lex "$past", $P1104
.annotate "line", 292
    find_lex $P1105, "$/"
    find_lex $P1106, "$past"
    $P1107 = $P1105."!make"($P1106)
.annotate "line", 288
    .return ($P1107)
  control_1094:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1108, exception, "payload"
    .return ($P1108)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<o>"  :subid("70_1257089963.27378") :method :outer("11_1257089963.27378")
    .param pmc param_1112
.annotate "line", 295
    new $P1111, 'ExceptionHandler'
    set_addr $P1111, control_1110
    $P1111."handle_types"(58)
    push_eh $P1111
    .lex "self", self
    .lex "$/", param_1112
.annotate "line", 296
    new $P1113, "Undef"
    .lex "$octlit", $P1113
.annotate "line", 297
    get_hll_global $P1114, ["HLL";"Actions"], "ints_to_string"
    find_lex $P1117, "$/"
    unless_null $P1117, vivify_270
    new $P1117, "Hash"
  vivify_270:
    set $P1118, $P1117["octint"]
    unless_null $P1118, vivify_271
    new $P1118, "Undef"
  vivify_271:
    unless $P1118, unless_1116
    set $P1115, $P1118
    goto unless_1116_end
  unless_1116:
    find_lex $P1119, "$/"
    unless_null $P1119, vivify_272
    new $P1119, "Hash"
  vivify_272:
    set $P1120, $P1119["octints"]
    unless_null $P1120, vivify_273
    new $P1120, "Hash"
  vivify_273:
    set $P1121, $P1120["octint"]
    unless_null $P1121, vivify_274
    new $P1121, "Undef"
  vivify_274:
    set $P1115, $P1121
  unless_1116_end:
    $P1122 = $P1114($P1115)
    store_lex "$octlit", $P1122
.annotate "line", 298
    find_lex $P1123, "$/"
    find_lex $P1126, "$/"
    unless_null $P1126, vivify_275
    new $P1126, "Hash"
  vivify_275:
    set $P1127, $P1126["sym"]
    unless_null $P1127, vivify_276
    new $P1127, "Undef"
  vivify_276:
    set $S1128, $P1127
    iseq $I1129, $S1128, "O"
    if $I1129, if_1125
.annotate "line", 301
    get_hll_global $P1134, ["PAST"], "Regex"
    find_lex $P1135, "$octlit"
    find_lex $P1136, "$/"
    $P1137 = $P1134."new"($P1135, "literal" :named("pasttype"), $P1136 :named("node"))
    set $P1124, $P1137
.annotate "line", 298
    goto if_1125_end
  if_1125:
.annotate "line", 299
    get_hll_global $P1130, ["PAST"], "Regex"
    find_lex $P1131, "$octlit"
    find_lex $P1132, "$/"
    $P1133 = $P1130."new"($P1131, "enumcharlist" :named("pasttype"), 1 :named("negate"), $P1132 :named("node"))
    set $P1124, $P1133
  if_1125_end:
    $P1138 = $P1123."!make"($P1124)
.annotate "line", 295
    .return ($P1138)
  control_1110:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1139, exception, "payload"
    .return ($P1139)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<x>"  :subid("71_1257089963.27378") :method :outer("11_1257089963.27378")
    .param pmc param_1143
.annotate "line", 304
    new $P1142, 'ExceptionHandler'
    set_addr $P1142, control_1141
    $P1142."handle_types"(58)
    push_eh $P1142
    .lex "self", self
    .lex "$/", param_1143
.annotate "line", 305
    new $P1144, "Undef"
    .lex "$hexlit", $P1144
.annotate "line", 306
    get_hll_global $P1145, ["HLL";"Actions"], "ints_to_string"
    find_lex $P1148, "$/"
    unless_null $P1148, vivify_277
    new $P1148, "Hash"
  vivify_277:
    set $P1149, $P1148["hexint"]
    unless_null $P1149, vivify_278
    new $P1149, "Undef"
  vivify_278:
    unless $P1149, unless_1147
    set $P1146, $P1149
    goto unless_1147_end
  unless_1147:
    find_lex $P1150, "$/"
    unless_null $P1150, vivify_279
    new $P1150, "Hash"
  vivify_279:
    set $P1151, $P1150["hexints"]
    unless_null $P1151, vivify_280
    new $P1151, "Hash"
  vivify_280:
    set $P1152, $P1151["hexint"]
    unless_null $P1152, vivify_281
    new $P1152, "Undef"
  vivify_281:
    set $P1146, $P1152
  unless_1147_end:
    $P1153 = $P1145($P1146)
    store_lex "$hexlit", $P1153
.annotate "line", 307
    find_lex $P1154, "$/"
    find_lex $P1157, "$/"
    unless_null $P1157, vivify_282
    new $P1157, "Hash"
  vivify_282:
    set $P1158, $P1157["sym"]
    unless_null $P1158, vivify_283
    new $P1158, "Undef"
  vivify_283:
    set $S1159, $P1158
    iseq $I1160, $S1159, "X"
    if $I1160, if_1156
.annotate "line", 310
    get_hll_global $P1165, ["PAST"], "Regex"
    find_lex $P1166, "$hexlit"
    find_lex $P1167, "$/"
    $P1168 = $P1165."new"($P1166, "literal" :named("pasttype"), $P1167 :named("node"))
    set $P1155, $P1168
.annotate "line", 307
    goto if_1156_end
  if_1156:
.annotate "line", 308
    get_hll_global $P1161, ["PAST"], "Regex"
    find_lex $P1162, "$hexlit"
    find_lex $P1163, "$/"
    $P1164 = $P1161."new"($P1162, "enumcharlist" :named("pasttype"), 1 :named("negate"), $P1163 :named("node"))
    set $P1155, $P1164
  if_1156_end:
    $P1169 = $P1154."!make"($P1155)
.annotate "line", 304
    .return ($P1169)
  control_1141:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1170, exception, "payload"
    .return ($P1170)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<misc>"  :subid("72_1257089963.27378") :method :outer("11_1257089963.27378")
    .param pmc param_1174
.annotate "line", 313
    new $P1173, 'ExceptionHandler'
    set_addr $P1173, control_1172
    $P1173."handle_types"(58)
    push_eh $P1173
    .lex "self", self
    .lex "$/", param_1174
.annotate "line", 314
    new $P1175, "Undef"
    .lex "$past", $P1175
    get_hll_global $P1176, ["PAST"], "Regex"
    find_lex $P1177, "$/"
    set $S1178, $P1177
    find_lex $P1179, "$/"
    $P1180 = $P1176."new"($S1178, "literal" :named("pasttype"), $P1179 :named("node"))
    store_lex "$past", $P1180
.annotate "line", 315
    find_lex $P1181, "$/"
    find_lex $P1182, "$past"
    $P1183 = $P1181."!make"($P1182)
.annotate "line", 313
    .return ($P1183)
  control_1172:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1184, exception, "payload"
    .return ($P1184)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<?>"  :subid("73_1257089963.27378") :method :outer("11_1257089963.27378")
    .param pmc param_1188
.annotate "line", 319
    new $P1187, 'ExceptionHandler'
    set_addr $P1187, control_1186
    $P1187."handle_types"(58)
    push_eh $P1187
    .lex "self", self
    .lex "$/", param_1188
.annotate "line", 320
    new $P1189, "Undef"
    .lex "$past", $P1189
.annotate "line", 319
    find_lex $P1190, "$past"
.annotate "line", 321
    find_lex $P1192, "$/"
    unless_null $P1192, vivify_284
    new $P1192, "Hash"
  vivify_284:
    set $P1193, $P1192["assertion"]
    unless_null $P1193, vivify_285
    new $P1193, "Undef"
  vivify_285:
    if $P1193, if_1191
.annotate "line", 325
    new $P1198, "Integer"
    assign $P1198, 0
    store_lex "$past", $P1198
    goto if_1191_end
  if_1191:
.annotate "line", 322
    find_lex $P1194, "$/"
    unless_null $P1194, vivify_286
    new $P1194, "Hash"
  vivify_286:
    set $P1195, $P1194["assertion"]
    unless_null $P1195, vivify_287
    new $P1195, "Undef"
  vivify_287:
    $P1196 = $P1195."ast"()
    store_lex "$past", $P1196
.annotate "line", 323
    find_lex $P1197, "$past"
    $P1197."subtype"("zerowidth")
  if_1191_end:
.annotate "line", 326
    find_lex $P1199, "$/"
    find_lex $P1200, "$past"
    $P1201 = $P1199."!make"($P1200)
.annotate "line", 319
    .return ($P1201)
  control_1186:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1202, exception, "payload"
    .return ($P1202)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<!>"  :subid("74_1257089963.27378") :method :outer("11_1257089963.27378")
    .param pmc param_1206
.annotate "line", 329
    new $P1205, 'ExceptionHandler'
    set_addr $P1205, control_1204
    $P1205."handle_types"(58)
    push_eh $P1205
    .lex "self", self
    .lex "$/", param_1206
.annotate "line", 330
    new $P1207, "Undef"
    .lex "$past", $P1207
.annotate "line", 329
    find_lex $P1208, "$past"
.annotate "line", 331
    find_lex $P1210, "$/"
    unless_null $P1210, vivify_288
    new $P1210, "Hash"
  vivify_288:
    set $P1211, $P1210["assertion"]
    unless_null $P1211, vivify_289
    new $P1211, "Undef"
  vivify_289:
    if $P1211, if_1209
.annotate "line", 337
    get_hll_global $P1220, ["PAST"], "Regex"
    find_lex $P1221, "$/"
    $P1222 = $P1220."new"("anchor" :named("pasttype"), "fail" :named("subtype"), $P1221 :named("node"))
    store_lex "$past", $P1222
.annotate "line", 336
    goto if_1209_end
  if_1209:
.annotate "line", 332
    find_lex $P1212, "$/"
    unless_null $P1212, vivify_290
    new $P1212, "Hash"
  vivify_290:
    set $P1213, $P1212["assertion"]
    unless_null $P1213, vivify_291
    new $P1213, "Undef"
  vivify_291:
    $P1214 = $P1213."ast"()
    store_lex "$past", $P1214
.annotate "line", 333
    find_lex $P1215, "$past"
    find_lex $P1216, "$past"
    $P1217 = $P1216."negate"()
    isfalse $I1218, $P1217
    $P1215."negate"($I1218)
.annotate "line", 334
    find_lex $P1219, "$past"
    $P1219."subtype"("zerowidth")
  if_1209_end:
.annotate "line", 339
    find_lex $P1223, "$/"
    find_lex $P1224, "$past"
    $P1225 = $P1223."!make"($P1224)
.annotate "line", 329
    .return ($P1225)
  control_1204:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1226, exception, "payload"
    .return ($P1226)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<method>"  :subid("75_1257089963.27378") :method :outer("11_1257089963.27378")
    .param pmc param_1230
.annotate "line", 342
    new $P1229, 'ExceptionHandler'
    set_addr $P1229, control_1228
    $P1229."handle_types"(58)
    push_eh $P1229
    .lex "self", self
    .lex "$/", param_1230
.annotate "line", 343
    new $P1231, "Undef"
    .lex "$past", $P1231
    find_lex $P1232, "$/"
    unless_null $P1232, vivify_292
    new $P1232, "Hash"
  vivify_292:
    set $P1233, $P1232["assertion"]
    unless_null $P1233, vivify_293
    new $P1233, "Undef"
  vivify_293:
    $P1234 = $P1233."ast"()
    store_lex "$past", $P1234
.annotate "line", 344
    find_lex $P1235, "$past"
    $P1235."subtype"("method")
.annotate "line", 345
    find_lex $P1236, "$/"
    find_lex $P1237, "$past"
    $P1238 = $P1236."!make"($P1237)
.annotate "line", 342
    .return ($P1238)
  control_1228:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1239, exception, "payload"
    .return ($P1239)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<name>"  :subid("76_1257089963.27378") :method :outer("11_1257089963.27378")
    .param pmc param_1243
.annotate "line", 348
    .const 'Sub' $P1300 = "78_1257089963.27378" 
    capture_lex $P1300
    .const 'Sub' $P1265 = "77_1257089963.27378" 
    capture_lex $P1265
    new $P1242, 'ExceptionHandler'
    set_addr $P1242, control_1241
    $P1242."handle_types"(58)
    push_eh $P1242
    .lex "self", self
    .lex "$/", param_1243
.annotate "line", 349
    new $P1244, "Undef"
    .lex "$name", $P1244
.annotate "line", 350
    new $P1245, "Undef"
    .lex "$past", $P1245
.annotate "line", 349
    find_lex $P1246, "$/"
    unless_null $P1246, vivify_294
    new $P1246, "Hash"
  vivify_294:
    set $P1247, $P1246["longname"]
    unless_null $P1247, vivify_295
    new $P1247, "Undef"
  vivify_295:
    set $S1248, $P1247
    new $P1249, 'String'
    set $P1249, $S1248
    store_lex "$name", $P1249
    find_lex $P1250, "$past"
.annotate "line", 351
    find_lex $P1252, "$/"
    unless_null $P1252, vivify_296
    new $P1252, "Hash"
  vivify_296:
    set $P1253, $P1252["assertion"]
    unless_null $P1253, vivify_297
    new $P1253, "Undef"
  vivify_297:
    if $P1253, if_1251
.annotate "line", 355
    find_lex $P1261, "$name"
    set $S1262, $P1261
    iseq $I1263, $S1262, "sym"
    if $I1263, if_1260
.annotate "line", 371
    get_hll_global $P1275, ["PAST"], "Regex"
    find_lex $P1276, "$name"
    find_lex $P1277, "$name"
    find_lex $P1278, "$/"
    $P1279 = $P1275."new"($P1276, $P1277 :named("name"), "subrule" :named("pasttype"), "capture" :named("subtype"), $P1278 :named("node"))
    store_lex "$past", $P1279
.annotate "line", 373
    find_lex $P1281, "$/"
    unless_null $P1281, vivify_298
    new $P1281, "Hash"
  vivify_298:
    set $P1282, $P1281["nibbler"]
    unless_null $P1282, vivify_299
    new $P1282, "Undef"
  vivify_299:
    if $P1282, if_1280
.annotate "line", 376
    find_lex $P1290, "$/"
    unless_null $P1290, vivify_300
    new $P1290, "Hash"
  vivify_300:
    set $P1291, $P1290["arglist"]
    unless_null $P1291, vivify_301
    new $P1291, "Undef"
  vivify_301:
    unless $P1291, if_1289_end
.annotate "line", 377
    find_lex $P1293, "$/"
    unless_null $P1293, vivify_302
    new $P1293, "Hash"
  vivify_302:
    set $P1294, $P1293["arglist"]
    unless_null $P1294, vivify_303
    new $P1294, "ResizablePMCArray"
  vivify_303:
    set $P1295, $P1294[0]
    unless_null $P1295, vivify_304
    new $P1295, "Hash"
  vivify_304:
    set $P1296, $P1295["arg"]
    unless_null $P1296, vivify_305
    new $P1296, "Undef"
  vivify_305:
    defined $I1297, $P1296
    unless $I1297, for_undef_306
    iter $P1292, $P1296
    new $P1307, 'ExceptionHandler'
    set_addr $P1307, loop1306_handler
    $P1307."handle_types"(65, 67, 66)
    push_eh $P1307
  loop1306_test:
    unless $P1292, loop1306_done
    shift $P1298, $P1292
  loop1306_redo:
    .const 'Sub' $P1300 = "78_1257089963.27378" 
    capture_lex $P1300
    $P1300($P1298)
  loop1306_next:
    goto loop1306_test
  loop1306_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1308, exception, 'type'
    eq $P1308, 65, loop1306_next
    eq $P1308, 67, loop1306_redo
  loop1306_done:
    pop_eh 
  for_undef_306:
  if_1289_end:
.annotate "line", 376
    goto if_1280_end
  if_1280:
.annotate "line", 374
    find_lex $P1283, "$past"
    find_lex $P1284, "$/"
    unless_null $P1284, vivify_307
    new $P1284, "Hash"
  vivify_307:
    set $P1285, $P1284["nibbler"]
    unless_null $P1285, vivify_308
    new $P1285, "ResizablePMCArray"
  vivify_308:
    set $P1286, $P1285[0]
    unless_null $P1286, vivify_309
    new $P1286, "Undef"
  vivify_309:
    $P1287 = $P1286."ast"()
    $P1288 = "buildsub"($P1287)
    $P1283."push"($P1288)
  if_1280_end:
.annotate "line", 370
    goto if_1260_end
  if_1260:
.annotate "line", 355
    .const 'Sub' $P1265 = "77_1257089963.27378" 
    capture_lex $P1265
    $P1265()
  if_1260_end:
    goto if_1251_end
  if_1251:
.annotate "line", 352
    find_lex $P1254, "$/"
    unless_null $P1254, vivify_310
    new $P1254, "Hash"
  vivify_310:
    set $P1255, $P1254["assertion"]
    unless_null $P1255, vivify_311
    new $P1255, "ResizablePMCArray"
  vivify_311:
    set $P1256, $P1255[0]
    unless_null $P1256, vivify_312
    new $P1256, "Undef"
  vivify_312:
    $P1257 = $P1256."ast"()
    store_lex "$past", $P1257
.annotate "line", 353
    find_lex $P1258, "$past"
    find_lex $P1259, "$name"
    "subrule_alias"($P1258, $P1259)
  if_1251_end:
.annotate "line", 382
    find_lex $P1309, "$/"
    find_lex $P1310, "$past"
    $P1311 = $P1309."!make"($P1310)
.annotate "line", 348
    .return ($P1311)
  control_1241:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1312, exception, "payload"
    .return ($P1312)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1299"  :anon :subid("78_1257089963.27378") :outer("76_1257089963.27378")
    .param pmc param_1301
.annotate "line", 377
    .lex "$_", param_1301
.annotate "line", 378
    find_lex $P1302, "$past"
    find_lex $P1303, "$_"
    $P1304 = $P1303."ast"()
    $P1305 = $P1302."push"($P1304)
.annotate "line", 377
    .return ($P1305)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1264"  :anon :subid("77_1257089963.27378") :outer("76_1257089963.27378")
.annotate "line", 356
    new $P1266, "Undef"
    .lex "$regexsym", $P1266

            $P0 = get_global '$REGEXNAME'
            $S0 = $P0
            $I0 = index $S0, ':sym<'
            add $I0, 5
            $S0 = substr $S0, $I0
            chopn $S0, 1
            $P1267 = box $S0
        
    store_lex "$regexsym", $P1267
.annotate "line", 365
    get_hll_global $P1268, ["PAST"], "Regex"
.annotate "line", 366
    get_hll_global $P1269, ["PAST"], "Regex"
    find_lex $P1270, "$regexsym"
    $P1271 = $P1269."new"($P1270, "literal" :named("pasttype"))
    find_lex $P1272, "$name"
    find_lex $P1273, "$/"
    $P1274 = $P1268."new"($P1271, $P1272 :named("name"), "subcapture" :named("pasttype"), $P1273 :named("node"))
.annotate "line", 365
    store_lex "$past", $P1274
.annotate "line", 355
    .return ($P1274)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<[>"  :subid("79_1257089963.27378") :method :outer("11_1257089963.27378")
    .param pmc param_1316
.annotate "line", 385
    .const 'Sub' $P1351 = "80_1257089963.27378" 
    capture_lex $P1351
    new $P1315, 'ExceptionHandler'
    set_addr $P1315, control_1314
    $P1315."handle_types"(58)
    push_eh $P1315
    .lex "self", self
    .lex "$/", param_1316
.annotate "line", 386
    new $P1317, "Undef"
    .lex "$clist", $P1317
.annotate "line", 387
    new $P1318, "Undef"
    .lex "$past", $P1318
.annotate "line", 396
    new $P1319, "Undef"
    .lex "$i", $P1319
.annotate "line", 397
    new $P1320, "Undef"
    .lex "$n", $P1320
.annotate "line", 386
    find_lex $P1321, "$/"
    unless_null $P1321, vivify_313
    new $P1321, "Hash"
  vivify_313:
    set $P1322, $P1321["cclass_elem"]
    unless_null $P1322, vivify_314
    new $P1322, "Undef"
  vivify_314:
    store_lex "$clist", $P1322
.annotate "line", 387
    find_lex $P1323, "$clist"
    unless_null $P1323, vivify_315
    new $P1323, "ResizablePMCArray"
  vivify_315:
    set $P1324, $P1323[0]
    unless_null $P1324, vivify_316
    new $P1324, "Undef"
  vivify_316:
    $P1325 = $P1324."ast"()
    store_lex "$past", $P1325
.annotate "line", 388
    find_lex $P1329, "$past"
    $P1330 = $P1329."negate"()
    if $P1330, if_1328
    set $P1327, $P1330
    goto if_1328_end
  if_1328:
    find_lex $P1331, "$past"
    $S1332 = $P1331."pasttype"()
    iseq $I1333, $S1332, "subrule"
    new $P1327, 'Integer'
    set $P1327, $I1333
  if_1328_end:
    unless $P1327, if_1326_end
.annotate "line", 389
    find_lex $P1334, "$past"
    $P1334."subtype"("zerowidth")
.annotate "line", 390
    get_hll_global $P1335, ["PAST"], "Regex"
    find_lex $P1336, "$past"
.annotate "line", 392
    get_hll_global $P1337, ["PAST"], "Regex"
    $P1338 = $P1337."new"("charclass" :named("pasttype"), "." :named("subtype"))
    find_lex $P1339, "$/"
    $P1340 = $P1335."new"($P1336, $P1338, $P1339 :named("node"))
.annotate "line", 390
    store_lex "$past", $P1340
  if_1326_end:
.annotate "line", 396
    new $P1341, "Integer"
    assign $P1341, 1
    store_lex "$i", $P1341
.annotate "line", 397
    find_lex $P1342, "$clist"
    set $N1343, $P1342
    new $P1344, 'Float'
    set $P1344, $N1343
    store_lex "$n", $P1344
.annotate "line", 398
    new $P1375, 'ExceptionHandler'
    set_addr $P1375, loop1374_handler
    $P1375."handle_types"(65, 67, 66)
    push_eh $P1375
  loop1374_test:
    find_lex $P1345, "$i"
    set $N1346, $P1345
    find_lex $P1347, "$n"
    set $N1348, $P1347
    islt $I1349, $N1346, $N1348
    unless $I1349, loop1374_done
  loop1374_redo:
    .const 'Sub' $P1351 = "80_1257089963.27378" 
    capture_lex $P1351
    $P1351()
  loop1374_next:
    goto loop1374_test
  loop1374_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1376, exception, 'type'
    eq $P1376, 65, loop1374_next
    eq $P1376, 67, loop1374_redo
  loop1374_done:
    pop_eh 
.annotate "line", 409
    find_lex $P1377, "$/"
    find_lex $P1378, "$past"
    $P1379 = $P1377."!make"($P1378)
.annotate "line", 385
    .return ($P1379)
  control_1314:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1380, exception, "payload"
    .return ($P1380)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1350"  :anon :subid("80_1257089963.27378") :outer("79_1257089963.27378")
.annotate "line", 399
    new $P1352, "Undef"
    .lex "$ast", $P1352
    find_lex $P1353, "$i"
    set $I1354, $P1353
    find_lex $P1355, "$clist"
    unless_null $P1355, vivify_317
    new $P1355, "ResizablePMCArray"
  vivify_317:
    set $P1356, $P1355[$I1354]
    unless_null $P1356, vivify_318
    new $P1356, "Undef"
  vivify_318:
    $P1357 = $P1356."ast"()
    store_lex "$ast", $P1357
.annotate "line", 400
    find_lex $P1359, "$ast"
    $P1360 = $P1359."negate"()
    if $P1360, if_1358
.annotate "line", 405
    get_hll_global $P1367, ["PAST"], "Regex"
    find_lex $P1368, "$past"
    find_lex $P1369, "$ast"
    find_lex $P1370, "$/"
    $P1371 = $P1367."new"($P1368, $P1369, "alt" :named("pasttype"), $P1370 :named("node"))
    store_lex "$past", $P1371
.annotate "line", 404
    goto if_1358_end
  if_1358:
.annotate "line", 401
    find_lex $P1361, "$ast"
    $P1361."subtype"("zerowidth")
.annotate "line", 402
    get_hll_global $P1362, ["PAST"], "Regex"
    find_lex $P1363, "$ast"
    find_lex $P1364, "$past"
    find_lex $P1365, "$/"
    $P1366 = $P1362."new"($P1363, $P1364, "concat" :named("pasttype"), $P1365 :named("node"))
    store_lex "$past", $P1366
  if_1358_end:
.annotate "line", 407
    find_lex $P1372, "$i"
    add $P1373, $P1372, 1
    store_lex "$i", $P1373
.annotate "line", 398
    .return ($P1373)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "cclass_elem"  :subid("81_1257089963.27378") :method :outer("11_1257089963.27378")
    .param pmc param_1384
.annotate "line", 412
    .const 'Sub' $P1409 = "83_1257089963.27378" 
    capture_lex $P1409
    .const 'Sub' $P1393 = "82_1257089963.27378" 
    capture_lex $P1393
    new $P1383, 'ExceptionHandler'
    set_addr $P1383, control_1382
    $P1383."handle_types"(58)
    push_eh $P1383
    .lex "self", self
    .lex "$/", param_1384
.annotate "line", 413
    new $P1385, "Undef"
    .lex "$str", $P1385
.annotate "line", 414
    new $P1386, "Undef"
    .lex "$past", $P1386
.annotate "line", 413
    new $P1387, "String"
    assign $P1387, ""
    store_lex "$str", $P1387
    find_lex $P1388, "$past"
.annotate "line", 415
    find_lex $P1390, "$/"
    unless_null $P1390, vivify_319
    new $P1390, "Hash"
  vivify_319:
    set $P1391, $P1390["name"]
    unless_null $P1391, vivify_320
    new $P1391, "Undef"
  vivify_320:
    if $P1391, if_1389
.annotate "line", 419
    find_lex $P1404, "$/"
    unless_null $P1404, vivify_321
    new $P1404, "Hash"
  vivify_321:
    set $P1405, $P1404["charspec"]
    unless_null $P1405, vivify_322
    new $P1405, "Undef"
  vivify_322:
    defined $I1406, $P1405
    unless $I1406, for_undef_323
    iter $P1403, $P1405
    new $P1435, 'ExceptionHandler'
    set_addr $P1435, loop1434_handler
    $P1435."handle_types"(65, 67, 66)
    push_eh $P1435
  loop1434_test:
    unless $P1403, loop1434_done
    shift $P1407, $P1403
  loop1434_redo:
    .const 'Sub' $P1409 = "83_1257089963.27378" 
    capture_lex $P1409
    $P1409($P1407)
  loop1434_next:
    goto loop1434_test
  loop1434_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1436, exception, 'type'
    eq $P1436, 65, loop1434_next
    eq $P1436, 67, loop1434_redo
  loop1434_done:
    pop_eh 
  for_undef_323:
.annotate "line", 444
    get_hll_global $P1437, ["PAST"], "Regex"
    find_lex $P1438, "$str"
    find_lex $P1439, "$/"
    $P1440 = $P1437."new"($P1438, "enumcharlist" :named("pasttype"), $P1439 :named("node"))
    store_lex "$past", $P1440
.annotate "line", 418
    goto if_1389_end
  if_1389:
.annotate "line", 415
    .const 'Sub' $P1393 = "82_1257089963.27378" 
    capture_lex $P1393
    $P1393()
  if_1389_end:
.annotate "line", 446
    find_lex $P1441, "$past"
    find_lex $P1442, "$/"
    unless_null $P1442, vivify_335
    new $P1442, "Hash"
  vivify_335:
    set $P1443, $P1442["sign"]
    unless_null $P1443, vivify_336
    new $P1443, "Undef"
  vivify_336:
    set $S1444, $P1443
    iseq $I1445, $S1444, "-"
    $P1441."negate"($I1445)
.annotate "line", 447
    find_lex $P1446, "$/"
    find_lex $P1447, "$past"
    $P1448 = $P1446."!make"($P1447)
.annotate "line", 412
    .return ($P1448)
  control_1382:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1449, exception, "payload"
    .return ($P1449)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1408"  :anon :subid("83_1257089963.27378") :outer("81_1257089963.27378")
    .param pmc param_1410
.annotate "line", 419
    .const 'Sub' $P1416 = "84_1257089963.27378" 
    capture_lex $P1416
    .lex "$_", param_1410
.annotate "line", 420
    find_lex $P1413, "$_"
    unless_null $P1413, vivify_324
    new $P1413, "ResizablePMCArray"
  vivify_324:
    set $P1414, $P1413[1]
    unless_null $P1414, vivify_325
    new $P1414, "Undef"
  vivify_325:
    if $P1414, if_1412
.annotate "line", 442
    find_lex $P1430, "$str"
    find_lex $P1431, "$_"
    unless_null $P1431, vivify_326
    new $P1431, "ResizablePMCArray"
  vivify_326:
    set $P1432, $P1431[0]
    unless_null $P1432, vivify_327
    new $P1432, "Undef"
  vivify_327:
    concat $P1433, $P1430, $P1432
    store_lex "$str", $P1433
    set $P1411, $P1433
.annotate "line", 420
    goto if_1412_end
  if_1412:
    .const 'Sub' $P1416 = "84_1257089963.27378" 
    capture_lex $P1416
    $P1429 = $P1416()
    set $P1411, $P1429
  if_1412_end:
.annotate "line", 419
    .return ($P1411)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1415"  :anon :subid("84_1257089963.27378") :outer("83_1257089963.27378")
.annotate "line", 421
    new $P1417, "Undef"
    .lex "$a", $P1417
.annotate "line", 422
    new $P1418, "Undef"
    .lex "$b", $P1418
.annotate "line", 423
    new $P1419, "Undef"
    .lex "$c", $P1419
.annotate "line", 421
    find_lex $P1420, "$_"
    unless_null $P1420, vivify_328
    new $P1420, "ResizablePMCArray"
  vivify_328:
    set $P1421, $P1420[0]
    unless_null $P1421, vivify_329
    new $P1421, "Undef"
  vivify_329:
    store_lex "$a", $P1421
.annotate "line", 422
    find_lex $P1422, "$_"
    unless_null $P1422, vivify_330
    new $P1422, "ResizablePMCArray"
  vivify_330:
    set $P1423, $P1422[1]
    unless_null $P1423, vivify_331
    new $P1423, "ResizablePMCArray"
  vivify_331:
    set $P1424, $P1423[0]
    unless_null $P1424, vivify_332
    new $P1424, "Undef"
  vivify_332:
    store_lex "$b", $P1424
.annotate "line", 423

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
                             $P1425 = box $S2
                         
    store_lex "$c", $P1425
.annotate "line", 440
    find_lex $P1426, "$str"
    find_lex $P1427, "$c"
    concat $P1428, $P1426, $P1427
    store_lex "$str", $P1428
.annotate "line", 420
    .return ($P1428)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1392"  :anon :subid("82_1257089963.27378") :outer("81_1257089963.27378")
.annotate "line", 416
    new $P1394, "Undef"
    .lex "$name", $P1394
    find_lex $P1395, "$/"
    unless_null $P1395, vivify_333
    new $P1395, "Hash"
  vivify_333:
    set $P1396, $P1395["name"]
    unless_null $P1396, vivify_334
    new $P1396, "Undef"
  vivify_334:
    set $S1397, $P1396
    new $P1398, 'String'
    set $P1398, $S1397
    store_lex "$name", $P1398
.annotate "line", 417
    get_hll_global $P1399, ["PAST"], "Regex"
    find_lex $P1400, "$name"
    find_lex $P1401, "$/"
    $P1402 = $P1399."new"($P1400, "subrule" :named("pasttype"), "method" :named("subtype"), $P1401 :named("node"))
    store_lex "$past", $P1402
.annotate "line", 415
    .return ($P1402)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "mod_internal"  :subid("85_1257089963.27378") :method :outer("11_1257089963.27378")
    .param pmc param_1453
.annotate "line", 450
    new $P1452, 'ExceptionHandler'
    set_addr $P1452, control_1451
    $P1452."handle_types"(58)
    push_eh $P1452
    .lex "self", self
    .lex "$/", param_1453
.annotate "line", 451
    new $P1454, "Hash"
    .lex "%mods", $P1454
.annotate "line", 452
    new $P1455, "Undef"
    .lex "$n", $P1455
.annotate "line", 451
    get_global $P1456, "@MODIFIERS"
    unless_null $P1456, vivify_337
    new $P1456, "ResizablePMCArray"
  vivify_337:
    set $P1457, $P1456[0]
    unless_null $P1457, vivify_338
    new $P1457, "Undef"
  vivify_338:
    store_lex "%mods", $P1457
.annotate "line", 452
    find_lex $P1460, "$/"
    unless_null $P1460, vivify_339
    new $P1460, "Hash"
  vivify_339:
    set $P1461, $P1460["n"]
    unless_null $P1461, vivify_340
    new $P1461, "ResizablePMCArray"
  vivify_340:
    set $P1462, $P1461[0]
    unless_null $P1462, vivify_341
    new $P1462, "Undef"
  vivify_341:
    set $S1463, $P1462
    isgt $I1464, $S1463, ""
    if $I1464, if_1459
    new $P1469, "Integer"
    assign $P1469, 1
    set $P1458, $P1469
    goto if_1459_end
  if_1459:
    find_lex $P1465, "$/"
    unless_null $P1465, vivify_342
    new $P1465, "Hash"
  vivify_342:
    set $P1466, $P1465["n"]
    unless_null $P1466, vivify_343
    new $P1466, "ResizablePMCArray"
  vivify_343:
    set $P1467, $P1466[0]
    unless_null $P1467, vivify_344
    new $P1467, "Undef"
  vivify_344:
    set $N1468, $P1467
    new $P1458, 'Float'
    set $P1458, $N1468
  if_1459_end:
    store_lex "$n", $P1458
.annotate "line", 453
    find_lex $P1470, "$n"
    find_lex $P1471, "$/"
    unless_null $P1471, vivify_345
    new $P1471, "Hash"
  vivify_345:
    set $P1472, $P1471["mod_ident"]
    unless_null $P1472, vivify_346
    new $P1472, "Hash"
  vivify_346:
    set $P1473, $P1472["sym"]
    unless_null $P1473, vivify_347
    new $P1473, "Undef"
  vivify_347:
    set $S1474, $P1473
    find_lex $P1475, "%mods"
    unless_null $P1475, vivify_348
    new $P1475, "Hash"
    store_lex "%mods", $P1475
  vivify_348:
    set $P1475[$S1474], $P1470
.annotate "line", 454
    find_lex $P1476, "$/"
    $P1477 = $P1476."!make"(0)
.annotate "line", 450
    .return ($P1477)
  control_1451:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1478, exception, "payload"
    .return ($P1478)
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
