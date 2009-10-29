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
.sub "_block11"  :anon :subid("10_1256847888.72764")
.annotate "line", 0
    get_hll_global $P14, ["Regex";"P6Regex";"Grammar"], "_block13" 
    capture_lex $P14
.annotate "line", 3
    get_hll_global $P14, ["Regex";"P6Regex";"Grammar"], "_block13" 
    capture_lex $P14
    $P495 = $P14()
.annotate "line", 1
    .return ($P495)
.end


.namespace []
.sub "" :load :init :subid("post152") :outer("10_1256847888.72764")
.annotate "line", 0
    .const 'Sub' $P12 = "10_1256847888.72764" 
    .local pmc block
    set block, $P12
    $P496 = get_root_global ["parrot"], "P6metaclass"
    $P496."new_class"("Regex::P6Regex::Grammar", "HLL::Grammar" :named("parent"))
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block13"  :subid("11_1256847888.72764") :outer("10_1256847888.72764")
.annotate "line", 3
    .const 'Sub' $P488 = "150_1256847888.72764" 
    capture_lex $P488
    .const 'Sub' $P481 = "148_1256847888.72764" 
    capture_lex $P481
    .const 'Sub' $P474 = "146_1256847888.72764" 
    capture_lex $P474
    .const 'Sub' $P454 = "141_1256847888.72764" 
    capture_lex $P454
    .const 'Sub' $P420 = "135_1256847888.72764" 
    capture_lex $P420
    .const 'Sub' $P409 = "132_1256847888.72764" 
    capture_lex $P409
    .const 'Sub' $P397 = "129_1256847888.72764" 
    capture_lex $P397
    .const 'Sub' $P392 = "127_1256847888.72764" 
    capture_lex $P392
    .const 'Sub' $P382 = "124_1256847888.72764" 
    capture_lex $P382
    .const 'Sub' $P372 = "121_1256847888.72764" 
    capture_lex $P372
    .const 'Sub' $P364 = "117_1256847888.72764" 
    capture_lex $P364
    .const 'Sub' $P359 = "115_1256847888.72764" 
    capture_lex $P359
    .const 'Sub' $P354 = "113_1256847888.72764" 
    capture_lex $P354
    .const 'Sub' $P349 = "111_1256847888.72764" 
    capture_lex $P349
    .const 'Sub' $P344 = "109_1256847888.72764" 
    capture_lex $P344
    .const 'Sub' $P339 = "107_1256847888.72764" 
    capture_lex $P339
    .const 'Sub' $P334 = "105_1256847888.72764" 
    capture_lex $P334
    .const 'Sub' $P329 = "103_1256847888.72764" 
    capture_lex $P329
    .const 'Sub' $P324 = "101_1256847888.72764" 
    capture_lex $P324
    .const 'Sub' $P319 = "99_1256847888.72764" 
    capture_lex $P319
    .const 'Sub' $P314 = "97_1256847888.72764" 
    capture_lex $P314
    .const 'Sub' $P309 = "95_1256847888.72764" 
    capture_lex $P309
    .const 'Sub' $P304 = "93_1256847888.72764" 
    capture_lex $P304
    .const 'Sub' $P293 = "89_1256847888.72764" 
    capture_lex $P293
    .const 'Sub' $P282 = "87_1256847888.72764" 
    capture_lex $P282
    .const 'Sub' $P276 = "85_1256847888.72764" 
    capture_lex $P276
    .const 'Sub' $P260 = "83_1256847888.72764" 
    capture_lex $P260
    .const 'Sub' $P254 = "81_1256847888.72764" 
    capture_lex $P254
    .const 'Sub' $P249 = "79_1256847888.72764" 
    capture_lex $P249
    .const 'Sub' $P244 = "77_1256847888.72764" 
    capture_lex $P244
    .const 'Sub' $P238 = "75_1256847888.72764" 
    capture_lex $P238
    .const 'Sub' $P232 = "73_1256847888.72764" 
    capture_lex $P232
    .const 'Sub' $P227 = "71_1256847888.72764" 
    capture_lex $P227
    .const 'Sub' $P222 = "69_1256847888.72764" 
    capture_lex $P222
    .const 'Sub' $P217 = "67_1256847888.72764" 
    capture_lex $P217
    .const 'Sub' $P212 = "65_1256847888.72764" 
    capture_lex $P212
    .const 'Sub' $P207 = "63_1256847888.72764" 
    capture_lex $P207
    .const 'Sub' $P202 = "61_1256847888.72764" 
    capture_lex $P202
    .const 'Sub' $P197 = "59_1256847888.72764" 
    capture_lex $P197
    .const 'Sub' $P192 = "57_1256847888.72764" 
    capture_lex $P192
    .const 'Sub' $P187 = "55_1256847888.72764" 
    capture_lex $P187
    .const 'Sub' $P182 = "53_1256847888.72764" 
    capture_lex $P182
    .const 'Sub' $P177 = "51_1256847888.72764" 
    capture_lex $P177
    .const 'Sub' $P162 = "46_1256847888.72764" 
    capture_lex $P162
    .const 'Sub' $P151 = "44_1256847888.72764" 
    capture_lex $P151
    .const 'Sub' $P145 = "42_1256847888.72764" 
    capture_lex $P145
    .const 'Sub' $P139 = "40_1256847888.72764" 
    capture_lex $P139
    .const 'Sub' $P133 = "38_1256847888.72764" 
    capture_lex $P133
    .const 'Sub' $P115 = "33_1256847888.72764" 
    capture_lex $P115
    .const 'Sub' $P103 = "30_1256847888.72764" 
    capture_lex $P103
    .const 'Sub' $P97 = "28_1256847888.72764" 
    capture_lex $P97
    .const 'Sub' $P86 = "26_1256847888.72764" 
    capture_lex $P86
    .const 'Sub' $P80 = "24_1256847888.72764" 
    capture_lex $P80
    .const 'Sub' $P68 = "22_1256847888.72764" 
    capture_lex $P68
    .const 'Sub' $P61 = "20_1256847888.72764" 
    capture_lex $P61
    .const 'Sub' $P54 = "18_1256847888.72764" 
    capture_lex $P54
    .const 'Sub' $P45 = "15_1256847888.72764" 
    capture_lex $P45
    .const 'Sub' $P38 = "13_1256847888.72764" 
    capture_lex $P38
    .const 'Sub' $P15 = "12_1256847888.72764" 
    capture_lex $P15
    .const 'Sub' $P488 = "150_1256847888.72764" 
    capture_lex $P488
    .return ($P488)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "obs"  :subid("12_1256847888.72764") :method :outer("11_1256847888.72764")
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
    if has_param_20, optparam_153
    new $P21, "String"
    assign $P21, "in Perl 6"
    set param_20, $P21
  optparam_153:
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
.sub "ws"  :subid("13_1256847888.72764") :method :outer("11_1256847888.72764")
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
.sub "!PREFIX__ws"  :subid("14_1256847888.72764") :method
.annotate "line", 3
    new $P41, "ResizablePMCArray"
    push $P41, ""
    .return ($P41)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "normspace"  :subid("15_1256847888.72764") :method :outer("11_1256847888.72764")
.annotate "line", 3
    .const 'Sub' $P50 = "17_1256847888.72764" 
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
    .const 'Sub' $P50 = "17_1256847888.72764" 
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
.sub "!PREFIX__normspace"  :subid("16_1256847888.72764") :method
.annotate "line", 3
    new $P48, "ResizablePMCArray"
    push $P48, ""
    .return ($P48)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block49"  :anon :subid("17_1256847888.72764") :method :outer("15_1256847888.72764")
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
.sub "quote"  :subid("18_1256847888.72764") :method :outer("11_1256847888.72764")
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
.sub "!PREFIX__quote"  :subid("19_1256847888.72764") :method
.annotate "line", 3
    new $P57, "ResizablePMCArray"
    push $P57, "'"
    .return ($P57)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "arg"  :subid("20_1256847888.72764") :method :outer("11_1256847888.72764")
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
.sub "!PREFIX__arg"  :subid("21_1256847888.72764") :method
.annotate "line", 3
    $P64 = self."!PREFIX__!subrule"("quote", "")
    new $P65, "ResizablePMCArray"
    push $P65, ""
    push $P65, $P64
    .return ($P65)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "arglist"  :subid("22_1256847888.72764") :method :outer("11_1256847888.72764")
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
.sub "!PREFIX__arglist"  :subid("23_1256847888.72764") :method
.annotate "line", 3
    new $P71, "ResizablePMCArray"
    push $P71, ""
    .return ($P71)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "TOP"  :subid("24_1256847888.72764") :method :outer("11_1256847888.72764")
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
.sub "!PREFIX__TOP"  :subid("25_1256847888.72764") :method
.annotate "line", 3
    $P83 = self."!PREFIX__!subrule"("nibbler", "")
    new $P84, "ResizablePMCArray"
    push $P84, $P83
    .return ($P84)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "nibbler"  :subid("26_1256847888.72764") :method :outer("11_1256847888.72764")
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
.sub "!PREFIX__nibbler"  :subid("27_1256847888.72764") :method
.annotate "line", 3
    new $P89, "ResizablePMCArray"
    push $P89, ""
    .return ($P89)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "termish"  :subid("28_1256847888.72764") :method :outer("11_1256847888.72764")
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
.sub "!PREFIX__termish"  :subid("29_1256847888.72764") :method
.annotate "line", 3
    new $P100, "ResizablePMCArray"
    push $P100, ""
    .return ($P100)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantified_atom"  :subid("30_1256847888.72764") :method :outer("11_1256847888.72764")
.annotate "line", 3
    .const 'Sub' $P111 = "32_1256847888.72764" 
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
    .const 'Sub' $P111 = "32_1256847888.72764" 
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
.sub "!PREFIX__quantified_atom"  :subid("31_1256847888.72764") :method
.annotate "line", 3
    $P106 = self."!PREFIX__!subrule"("atom", "")
    new $P107, "ResizablePMCArray"
    push $P107, $P106
    .return ($P107)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block110"  :anon :subid("32_1256847888.72764") :method :outer("30_1256847888.72764")
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
.sub "atom"  :subid("33_1256847888.72764") :method :outer("11_1256847888.72764")
.annotate "line", 3
    .const 'Sub' $P125 = "35_1256847888.72764" 
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
    .const 'Sub' $P125 = "35_1256847888.72764" 
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
.sub "!PREFIX__atom"  :subid("34_1256847888.72764") :method
.annotate "line", 3
    $P118 = self."!PREFIX__!subrule"("metachar", "")
    new $P119, "ResizablePMCArray"
    push $P119, $P118
    push $P119, ""
    .return ($P119)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block124"  :anon :subid("35_1256847888.72764") :method :outer("33_1256847888.72764")
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
.sub "quantifier"  :subid("36_1256847888.72764") :method
.annotate "line", 53
    $P130 = self."!protoregex"("quantifier")
    .return ($P130)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier"  :subid("37_1256847888.72764") :method
.annotate "line", 53
    $P132 = self."!PREFIX__!protoregex"("quantifier")
    .return ($P132)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<*>"  :subid("38_1256847888.72764") :method :outer("11_1256847888.72764")
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
.sub "!PREFIX__quantifier:sym<*>"  :subid("39_1256847888.72764") :method
.annotate "line", 3
    $P136 = self."!PREFIX__!subrule"("backmod", "*")
    new $P137, "ResizablePMCArray"
    push $P137, $P136
    .return ($P137)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<+>"  :subid("40_1256847888.72764") :method :outer("11_1256847888.72764")
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
.sub "!PREFIX__quantifier:sym<+>"  :subid("41_1256847888.72764") :method
.annotate "line", 3
    $P142 = self."!PREFIX__!subrule"("backmod", "+")
    new $P143, "ResizablePMCArray"
    push $P143, $P142
    .return ($P143)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<?>"  :subid("42_1256847888.72764") :method :outer("11_1256847888.72764")
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
.sub "!PREFIX__quantifier:sym<?>"  :subid("43_1256847888.72764") :method
.annotate "line", 3
    $P148 = self."!PREFIX__!subrule"("backmod", "?")
    new $P149, "ResizablePMCArray"
    push $P149, $P148
    .return ($P149)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<**>"  :subid("44_1256847888.72764") :method :outer("11_1256847888.72764")
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
.sub "!PREFIX__quantifier:sym<**>"  :subid("45_1256847888.72764") :method
.annotate "line", 3
    new $P154, "ResizablePMCArray"
    push $P154, "**"
    .return ($P154)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backmod"  :subid("46_1256847888.72764") :method :outer("11_1256847888.72764")
.annotate "line", 3
    .const 'Sub' $P170 = "48_1256847888.72764" 
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
    .const 'Sub' $P170 = "48_1256847888.72764" 
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
.sub "!PREFIX__backmod"  :subid("47_1256847888.72764") :method
.annotate "line", 3
    new $P165, "ResizablePMCArray"
    push $P165, ""
    .return ($P165)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block169"  :anon :subid("48_1256847888.72764") :method :outer("46_1256847888.72764")
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
.sub "metachar"  :subid("49_1256847888.72764") :method
.annotate "line", 67
    $P174 = self."!protoregex"("metachar")
    .return ($P174)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar"  :subid("50_1256847888.72764") :method
.annotate "line", 67
    $P176 = self."!PREFIX__!protoregex"("metachar")
    .return ($P176)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<ws>"  :subid("51_1256847888.72764") :method :outer("11_1256847888.72764")
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
.sub "!PREFIX__metachar:sym<ws>"  :subid("52_1256847888.72764") :method
.annotate "line", 3
    $P180 = self."!PREFIX__!subrule"("normspace", "")
    new $P181, "ResizablePMCArray"
    push $P181, $P180
    .return ($P181)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<[ ]>"  :subid("53_1256847888.72764") :method :outer("11_1256847888.72764")
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
.sub "!PREFIX__metachar:sym<[ ]>"  :subid("54_1256847888.72764") :method
.annotate "line", 3
    $P185 = self."!PREFIX__!subrule"("nibbler", "[")
    new $P186, "ResizablePMCArray"
    push $P186, $P185
    .return ($P186)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<( )>"  :subid("55_1256847888.72764") :method :outer("11_1256847888.72764")
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
.sub "!PREFIX__metachar:sym<( )>"  :subid("56_1256847888.72764") :method
.annotate "line", 3
    $P190 = self."!PREFIX__!subrule"("nibbler", "(")
    new $P191, "ResizablePMCArray"
    push $P191, $P190
    .return ($P191)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<'>"  :subid("57_1256847888.72764") :method :outer("11_1256847888.72764")
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
.sub "!PREFIX__metachar:sym<'>"  :subid("58_1256847888.72764") :method
.annotate "line", 3
    $P195 = self."!PREFIX__!subrule"("quote", "")
    new $P196, "ResizablePMCArray"
    push $P196, $P195
    .return ($P196)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<.>"  :subid("59_1256847888.72764") :method :outer("11_1256847888.72764")
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
.sub "!PREFIX__metachar:sym<.>"  :subid("60_1256847888.72764") :method
.annotate "line", 3
    new $P200, "ResizablePMCArray"
    push $P200, "."
    .return ($P200)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<^>"  :subid("61_1256847888.72764") :method :outer("11_1256847888.72764")
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
.sub "!PREFIX__metachar:sym<^>"  :subid("62_1256847888.72764") :method
.annotate "line", 3
    new $P205, "ResizablePMCArray"
    push $P205, "^"
    .return ($P205)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<^^>"  :subid("63_1256847888.72764") :method :outer("11_1256847888.72764")
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
.sub "!PREFIX__metachar:sym<^^>"  :subid("64_1256847888.72764") :method
.annotate "line", 3
    new $P210, "ResizablePMCArray"
    push $P210, "^^"
    .return ($P210)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<$>"  :subid("65_1256847888.72764") :method :outer("11_1256847888.72764")
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
.sub "!PREFIX__metachar:sym<$>"  :subid("66_1256847888.72764") :method
.annotate "line", 3
    new $P215, "ResizablePMCArray"
    push $P215, "$"
    .return ($P215)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<$$>"  :subid("67_1256847888.72764") :method :outer("11_1256847888.72764")
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
.sub "!PREFIX__metachar:sym<$$>"  :subid("68_1256847888.72764") :method
.annotate "line", 3
    new $P220, "ResizablePMCArray"
    push $P220, "$$"
    .return ($P220)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<:::>"  :subid("69_1256847888.72764") :method :outer("11_1256847888.72764")
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
.sub "!PREFIX__metachar:sym<:::>"  :subid("70_1256847888.72764") :method
.annotate "line", 3
    new $P225, "ResizablePMCArray"
    push $P225, ":::"
    .return ($P225)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<::>"  :subid("71_1256847888.72764") :method :outer("11_1256847888.72764")
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
.sub "!PREFIX__metachar:sym<::>"  :subid("72_1256847888.72764") :method
.annotate "line", 3
    new $P230, "ResizablePMCArray"
    push $P230, "::"
    .return ($P230)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<lwb>"  :subid("73_1256847888.72764") :method :outer("11_1256847888.72764")
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
.sub "!PREFIX__metachar:sym<lwb>"  :subid("74_1256847888.72764") :method
.annotate "line", 3
    new $P235, "ResizablePMCArray"
    push $P235, unicode:"\x{ab}"
    push $P235, "<<"
    .return ($P235)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<rwb>"  :subid("75_1256847888.72764") :method :outer("11_1256847888.72764")
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
.sub "!PREFIX__metachar:sym<rwb>"  :subid("76_1256847888.72764") :method
.annotate "line", 3
    new $P241, "ResizablePMCArray"
    push $P241, unicode:"\x{bb}"
    push $P241, ">>"
    .return ($P241)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<bs>"  :subid("77_1256847888.72764") :method :outer("11_1256847888.72764")
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
.sub "!PREFIX__metachar:sym<bs>"  :subid("78_1256847888.72764") :method
.annotate "line", 3
    $P247 = self."!PREFIX__!subrule"("backslash", "\\")
    new $P248, "ResizablePMCArray"
    push $P248, $P247
    .return ($P248)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<mod>"  :subid("79_1256847888.72764") :method :outer("11_1256847888.72764")
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
.sub "!PREFIX__metachar:sym<mod>"  :subid("80_1256847888.72764") :method
.annotate "line", 3
    $P252 = self."!PREFIX__!subrule"("mod_internal", "")
    new $P253, "ResizablePMCArray"
    push $P253, $P252
    .return ($P253)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<~>"  :subid("81_1256847888.72764") :method :outer("11_1256847888.72764")
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
.sub "!PREFIX__metachar:sym<~>"  :subid("82_1256847888.72764") :method
.annotate "line", 3
    $P257 = self."!PREFIX__!subrule"("ws", "~")
    new $P258, "ResizablePMCArray"
    push $P258, $P257
    .return ($P258)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<{*}>"  :subid("83_1256847888.72764") :method :outer("11_1256847888.72764")
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
.sub "!PREFIX__metachar:sym<{*}>"  :subid("84_1256847888.72764") :method
.annotate "line", 3
    new $P263, "ResizablePMCArray"
    push $P263, "{*}"
    .return ($P263)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<assert>"  :subid("85_1256847888.72764") :method :outer("11_1256847888.72764")
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
.sub "!PREFIX__metachar:sym<assert>"  :subid("86_1256847888.72764") :method
.annotate "line", 3
    $P279 = self."!PREFIX__!subrule"("assertion", "<")
    new $P280, "ResizablePMCArray"
    push $P280, $P279
    .return ($P280)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<var>"  :subid("87_1256847888.72764") :method :outer("11_1256847888.72764")
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
.sub "!PREFIX__metachar:sym<var>"  :subid("88_1256847888.72764") :method
.annotate "line", 3
    new $P285, "ResizablePMCArray"
    push $P285, "$"
    push $P285, "$<"
    .return ($P285)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<PIR>"  :subid("89_1256847888.72764") :method :outer("11_1256847888.72764")
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
.sub "!PREFIX__metachar:sym<PIR>"  :subid("90_1256847888.72764") :method
.annotate "line", 3
    new $P296, "ResizablePMCArray"
    push $P296, ":PIR{{"
    .return ($P296)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash"  :subid("91_1256847888.72764") :method
.annotate "line", 113
    $P301 = self."!protoregex"("backslash")
    .return ($P301)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash"  :subid("92_1256847888.72764") :method
.annotate "line", 113
    $P303 = self."!PREFIX__!protoregex"("backslash")
    .return ($P303)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<w>"  :subid("93_1256847888.72764") :method :outer("11_1256847888.72764")
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
.sub "!PREFIX__backslash:sym<w>"  :subid("94_1256847888.72764") :method
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
.sub "backslash:sym<b>"  :subid("95_1256847888.72764") :method :outer("11_1256847888.72764")
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
.sub "!PREFIX__backslash:sym<b>"  :subid("96_1256847888.72764") :method
.annotate "line", 3
    new $P312, "ResizablePMCArray"
    push $P312, "B"
    push $P312, "b"
    .return ($P312)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<e>"  :subid("97_1256847888.72764") :method :outer("11_1256847888.72764")
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
.sub "!PREFIX__backslash:sym<e>"  :subid("98_1256847888.72764") :method
.annotate "line", 3
    new $P317, "ResizablePMCArray"
    push $P317, "E"
    push $P317, "e"
    .return ($P317)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<f>"  :subid("99_1256847888.72764") :method :outer("11_1256847888.72764")
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
.sub "!PREFIX__backslash:sym<f>"  :subid("100_1256847888.72764") :method
.annotate "line", 3
    new $P322, "ResizablePMCArray"
    push $P322, "F"
    push $P322, "f"
    .return ($P322)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<h>"  :subid("101_1256847888.72764") :method :outer("11_1256847888.72764")
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
.sub "!PREFIX__backslash:sym<h>"  :subid("102_1256847888.72764") :method
.annotate "line", 3
    new $P327, "ResizablePMCArray"
    push $P327, "H"
    push $P327, "h"
    .return ($P327)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<r>"  :subid("103_1256847888.72764") :method :outer("11_1256847888.72764")
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
.sub "!PREFIX__backslash:sym<r>"  :subid("104_1256847888.72764") :method
.annotate "line", 3
    new $P332, "ResizablePMCArray"
    push $P332, "R"
    push $P332, "r"
    .return ($P332)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<t>"  :subid("105_1256847888.72764") :method :outer("11_1256847888.72764")
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
.sub "!PREFIX__backslash:sym<t>"  :subid("106_1256847888.72764") :method
.annotate "line", 3
    new $P337, "ResizablePMCArray"
    push $P337, "T"
    push $P337, "t"
    .return ($P337)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<v>"  :subid("107_1256847888.72764") :method :outer("11_1256847888.72764")
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
.sub "!PREFIX__backslash:sym<v>"  :subid("108_1256847888.72764") :method
.annotate "line", 3
    new $P342, "ResizablePMCArray"
    push $P342, "V"
    push $P342, "v"
    .return ($P342)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<A>"  :subid("109_1256847888.72764") :method :outer("11_1256847888.72764")
.annotate "line", 3
    .local string rx345_tgt
    .local int rx345_pos
    .local int rx345_off
    .local int rx345_eos
    .local int rx345_rep
    .local pmc rx345_cur
    (rx345_cur, rx345_pos, rx345_tgt, $I10) = self."!cursor_start"()
    rx345_cur."!cursor_debug"("START ", "backslash:sym<A>")
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
  # rx literal  "A"
    add $I11, rx345_pos, 1
    gt $I11, rx345_eos, rx345_fail
    sub $I11, rx345_pos, rx345_off
    substr $S10, rx345_tgt, $I11, 1
    ne $S10, "A", rx345_fail
    add rx345_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx345_cur."!cursor_pos"(rx345_pos)
    $P10 = rx345_cur."obs"("\\\\A as beginning-of-string matcher", "^")
    unless $P10, rx345_fail
    rx345_pos = $P10."pos"()
  # rx pass
    rx345_cur."!cursor_pass"(rx345_pos, "backslash:sym<A>")
    rx345_cur."!cursor_debug"("PASS  ", "backslash:sym<A>", " at pos=", rx345_pos)
    .return (rx345_cur)
  rx345_fail:
.annotate "line", 3
    (rx345_rep, rx345_pos, $I10, $P10) = rx345_cur."!mark_fail"(0)
    lt rx345_pos, -1, rx345_done
    eq rx345_pos, -1, rx345_fail
    jump $I10
  rx345_done:
    rx345_cur."!cursor_fail"()
    rx345_cur."!cursor_debug"("FAIL  ", "backslash:sym<A>")
    .return (rx345_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<A>"  :subid("110_1256847888.72764") :method
.annotate "line", 3
    $P347 = self."!PREFIX__!subrule"("obs", "A")
    new $P348, "ResizablePMCArray"
    push $P348, $P347
    .return ($P348)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<z>"  :subid("111_1256847888.72764") :method :outer("11_1256847888.72764")
.annotate "line", 3
    .local string rx350_tgt
    .local int rx350_pos
    .local int rx350_off
    .local int rx350_eos
    .local int rx350_rep
    .local pmc rx350_cur
    (rx350_cur, rx350_pos, rx350_tgt, $I10) = self."!cursor_start"()
    rx350_cur."!cursor_debug"("START ", "backslash:sym<z>")
    .lex unicode:"$\x{a2}", rx350_cur
    .local pmc match
    .lex "$/", match
    length rx350_eos, rx350_tgt
    set rx350_off, 0
    lt $I10, 2, rx350_start
    sub rx350_off, $I10, 1
    substr rx350_tgt, rx350_tgt, rx350_off
  rx350_start:
.annotate "line", 123
  # rx literal  "z"
    add $I11, rx350_pos, 1
    gt $I11, rx350_eos, rx350_fail
    sub $I11, rx350_pos, rx350_off
    substr $S10, rx350_tgt, $I11, 1
    ne $S10, "z", rx350_fail
    add rx350_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx350_cur."!cursor_pos"(rx350_pos)
    $P10 = rx350_cur."obs"("\\\\z as end-of-string matcher", "$")
    unless $P10, rx350_fail
    rx350_pos = $P10."pos"()
  # rx pass
    rx350_cur."!cursor_pass"(rx350_pos, "backslash:sym<z>")
    rx350_cur."!cursor_debug"("PASS  ", "backslash:sym<z>", " at pos=", rx350_pos)
    .return (rx350_cur)
  rx350_fail:
.annotate "line", 3
    (rx350_rep, rx350_pos, $I10, $P10) = rx350_cur."!mark_fail"(0)
    lt rx350_pos, -1, rx350_done
    eq rx350_pos, -1, rx350_fail
    jump $I10
  rx350_done:
    rx350_cur."!cursor_fail"()
    rx350_cur."!cursor_debug"("FAIL  ", "backslash:sym<z>")
    .return (rx350_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<z>"  :subid("112_1256847888.72764") :method
.annotate "line", 3
    $P352 = self."!PREFIX__!subrule"("obs", "z")
    new $P353, "ResizablePMCArray"
    push $P353, $P352
    .return ($P353)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<Z>"  :subid("113_1256847888.72764") :method :outer("11_1256847888.72764")
.annotate "line", 3
    .local string rx355_tgt
    .local int rx355_pos
    .local int rx355_off
    .local int rx355_eos
    .local int rx355_rep
    .local pmc rx355_cur
    (rx355_cur, rx355_pos, rx355_tgt, $I10) = self."!cursor_start"()
    rx355_cur."!cursor_debug"("START ", "backslash:sym<Z>")
    .lex unicode:"$\x{a2}", rx355_cur
    .local pmc match
    .lex "$/", match
    length rx355_eos, rx355_tgt
    set rx355_off, 0
    lt $I10, 2, rx355_start
    sub rx355_off, $I10, 1
    substr rx355_tgt, rx355_tgt, rx355_off
  rx355_start:
.annotate "line", 124
  # rx literal  "Z"
    add $I11, rx355_pos, 1
    gt $I11, rx355_eos, rx355_fail
    sub $I11, rx355_pos, rx355_off
    substr $S10, rx355_tgt, $I11, 1
    ne $S10, "Z", rx355_fail
    add rx355_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx355_cur."!cursor_pos"(rx355_pos)
    $P10 = rx355_cur."obs"("\\\\Z as end-of-string matcher", "\\\\n?$")
    unless $P10, rx355_fail
    rx355_pos = $P10."pos"()
  # rx pass
    rx355_cur."!cursor_pass"(rx355_pos, "backslash:sym<Z>")
    rx355_cur."!cursor_debug"("PASS  ", "backslash:sym<Z>", " at pos=", rx355_pos)
    .return (rx355_cur)
  rx355_fail:
.annotate "line", 3
    (rx355_rep, rx355_pos, $I10, $P10) = rx355_cur."!mark_fail"(0)
    lt rx355_pos, -1, rx355_done
    eq rx355_pos, -1, rx355_fail
    jump $I10
  rx355_done:
    rx355_cur."!cursor_fail"()
    rx355_cur."!cursor_debug"("FAIL  ", "backslash:sym<Z>")
    .return (rx355_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<Z>"  :subid("114_1256847888.72764") :method
.annotate "line", 3
    $P357 = self."!PREFIX__!subrule"("obs", "Z")
    new $P358, "ResizablePMCArray"
    push $P358, $P357
    .return ($P358)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<Q>"  :subid("115_1256847888.72764") :method :outer("11_1256847888.72764")
.annotate "line", 3
    .local string rx360_tgt
    .local int rx360_pos
    .local int rx360_off
    .local int rx360_eos
    .local int rx360_rep
    .local pmc rx360_cur
    (rx360_cur, rx360_pos, rx360_tgt, $I10) = self."!cursor_start"()
    rx360_cur."!cursor_debug"("START ", "backslash:sym<Q>")
    .lex unicode:"$\x{a2}", rx360_cur
    .local pmc match
    .lex "$/", match
    length rx360_eos, rx360_tgt
    set rx360_off, 0
    lt $I10, 2, rx360_start
    sub rx360_off, $I10, 1
    substr rx360_tgt, rx360_tgt, rx360_off
  rx360_start:
.annotate "line", 125
  # rx literal  "Q"
    add $I11, rx360_pos, 1
    gt $I11, rx360_eos, rx360_fail
    sub $I11, rx360_pos, rx360_off
    substr $S10, rx360_tgt, $I11, 1
    ne $S10, "Q", rx360_fail
    add rx360_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx360_cur."!cursor_pos"(rx360_pos)
    $P10 = rx360_cur."obs"("\\\\Q as quotemeta", "quotes or literal variable match")
    unless $P10, rx360_fail
    rx360_pos = $P10."pos"()
  # rx pass
    rx360_cur."!cursor_pass"(rx360_pos, "backslash:sym<Q>")
    rx360_cur."!cursor_debug"("PASS  ", "backslash:sym<Q>", " at pos=", rx360_pos)
    .return (rx360_cur)
  rx360_fail:
.annotate "line", 3
    (rx360_rep, rx360_pos, $I10, $P10) = rx360_cur."!mark_fail"(0)
    lt rx360_pos, -1, rx360_done
    eq rx360_pos, -1, rx360_fail
    jump $I10
  rx360_done:
    rx360_cur."!cursor_fail"()
    rx360_cur."!cursor_debug"("FAIL  ", "backslash:sym<Q>")
    .return (rx360_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<Q>"  :subid("116_1256847888.72764") :method
.annotate "line", 3
    $P362 = self."!PREFIX__!subrule"("obs", "Q")
    new $P363, "ResizablePMCArray"
    push $P363, $P362
    .return ($P363)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<misc>"  :subid("117_1256847888.72764") :method :outer("11_1256847888.72764")
.annotate "line", 3
    .local string rx365_tgt
    .local int rx365_pos
    .local int rx365_off
    .local int rx365_eos
    .local int rx365_rep
    .local pmc rx365_cur
    (rx365_cur, rx365_pos, rx365_tgt, $I10) = self."!cursor_start"()
    rx365_cur."!cursor_debug"("START ", "backslash:sym<misc>")
    .lex unicode:"$\x{a2}", rx365_cur
    .local pmc match
    .lex "$/", match
    length rx365_eos, rx365_tgt
    set rx365_off, 0
    lt $I10, 2, rx365_start
    sub rx365_off, $I10, 1
    substr rx365_tgt, rx365_tgt, rx365_off
  rx365_start:
.annotate "line", 126
  # rx charclass W
    ge rx365_pos, rx365_eos, rx365_fail
    sub $I10, rx365_pos, rx365_off
    is_cclass $I11, 8192, rx365_tgt, $I10
    if $I11, rx365_fail
    inc rx365_pos
  # rx pass
    rx365_cur."!cursor_pass"(rx365_pos, "backslash:sym<misc>")
    rx365_cur."!cursor_debug"("PASS  ", "backslash:sym<misc>", " at pos=", rx365_pos)
    .return (rx365_cur)
  rx365_fail:
.annotate "line", 3
    (rx365_rep, rx365_pos, $I10, $P10) = rx365_cur."!mark_fail"(0)
    lt rx365_pos, -1, rx365_done
    eq rx365_pos, -1, rx365_fail
    jump $I10
  rx365_done:
    rx365_cur."!cursor_fail"()
    rx365_cur."!cursor_debug"("FAIL  ", "backslash:sym<misc>")
    .return (rx365_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<misc>"  :subid("118_1256847888.72764") :method
.annotate "line", 3
    new $P367, "ResizablePMCArray"
    push $P367, ""
    .return ($P367)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion"  :subid("119_1256847888.72764") :method
.annotate "line", 128
    $P369 = self."!protoregex"("assertion")
    .return ($P369)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion"  :subid("120_1256847888.72764") :method
.annotate "line", 128
    $P371 = self."!PREFIX__!protoregex"("assertion")
    .return ($P371)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<?>"  :subid("121_1256847888.72764") :method :outer("11_1256847888.72764")
.annotate "line", 3
    .const 'Sub' $P379 = "123_1256847888.72764" 
    capture_lex $P379
    .local string rx373_tgt
    .local int rx373_pos
    .local int rx373_off
    .local int rx373_eos
    .local int rx373_rep
    .local pmc rx373_cur
    (rx373_cur, rx373_pos, rx373_tgt, $I10) = self."!cursor_start"()
    rx373_cur."!cursor_debug"("START ", "assertion:sym<?>")
    .lex unicode:"$\x{a2}", rx373_cur
    .local pmc match
    .lex "$/", match
    length rx373_eos, rx373_tgt
    set rx373_off, 0
    lt $I10, 2, rx373_start
    sub rx373_off, $I10, 1
    substr rx373_tgt, rx373_tgt, rx373_off
  rx373_start:
.annotate "line", 130
  # rx literal  "?"
    add $I11, rx373_pos, 1
    gt $I11, rx373_eos, rx373_fail
    sub $I11, rx373_pos, rx373_off
    substr $S10, rx373_tgt, $I11, 1
    ne $S10, "?", rx373_fail
    add rx373_pos, 1
  alt377_0:
    set_addr $I10, alt377_1
    rx373_cur."!mark_push"(0, rx373_pos, $I10)
  # rx subrule "before" subtype=zerowidth negate=
    rx373_cur."!cursor_pos"(rx373_pos)
    .const 'Sub' $P379 = "123_1256847888.72764" 
    capture_lex $P379
    $P10 = rx373_cur."before"($P379)
    unless $P10, rx373_fail
    goto alt377_end
  alt377_1:
  # rx subrule "assertion" subtype=capture negate=
    rx373_cur."!cursor_pos"(rx373_pos)
    $P10 = rx373_cur."assertion"()
    unless $P10, rx373_fail
    rx373_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx373_pos = $P10."pos"()
  alt377_end:
  # rx pass
    rx373_cur."!cursor_pass"(rx373_pos, "assertion:sym<?>")
    rx373_cur."!cursor_debug"("PASS  ", "assertion:sym<?>", " at pos=", rx373_pos)
    .return (rx373_cur)
  rx373_fail:
.annotate "line", 3
    (rx373_rep, rx373_pos, $I10, $P10) = rx373_cur."!mark_fail"(0)
    lt rx373_pos, -1, rx373_done
    eq rx373_pos, -1, rx373_fail
    jump $I10
  rx373_done:
    rx373_cur."!cursor_fail"()
    rx373_cur."!cursor_debug"("FAIL  ", "assertion:sym<?>")
    .return (rx373_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<?>"  :subid("122_1256847888.72764") :method
.annotate "line", 3
    $P375 = self."!PREFIX__!subrule"("assertion", "?")
    new $P376, "ResizablePMCArray"
    push $P376, $P375
    push $P376, "?"
    .return ($P376)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block378"  :anon :subid("123_1256847888.72764") :method :outer("121_1256847888.72764")
.annotate "line", 130
    .local string rx380_tgt
    .local int rx380_pos
    .local int rx380_off
    .local int rx380_eos
    .local int rx380_rep
    .local pmc rx380_cur
    (rx380_cur, rx380_pos, rx380_tgt, $I10) = self."!cursor_start"()
    rx380_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx380_cur
    .local pmc match
    .lex "$/", match
    length rx380_eos, rx380_tgt
    set rx380_off, 0
    lt $I10, 2, rx380_start
    sub rx380_off, $I10, 1
    substr rx380_tgt, rx380_tgt, rx380_off
  rx380_start:
    ge rx380_pos, 0, rxscan381_done
  rxscan381_loop:
    ($P10) = rx380_cur."from"()
    inc $P10
    set rx380_pos, $P10
    ge rx380_pos, rx380_eos, rxscan381_done
    set_addr $I10, rxscan381_loop
    rx380_cur."!mark_push"(0, rx380_pos, $I10)
  rxscan381_done:
  # rx literal  ">"
    add $I11, rx380_pos, 1
    gt $I11, rx380_eos, rx380_fail
    sub $I11, rx380_pos, rx380_off
    substr $S10, rx380_tgt, $I11, 1
    ne $S10, ">", rx380_fail
    add rx380_pos, 1
  # rx pass
    rx380_cur."!cursor_pass"(rx380_pos, "")
    rx380_cur."!cursor_debug"("PASS  ", "", " at pos=", rx380_pos)
    .return (rx380_cur)
  rx380_fail:
    (rx380_rep, rx380_pos, $I10, $P10) = rx380_cur."!mark_fail"(0)
    lt rx380_pos, -1, rx380_done
    eq rx380_pos, -1, rx380_fail
    jump $I10
  rx380_done:
    rx380_cur."!cursor_fail"()
    rx380_cur."!cursor_debug"("FAIL  ", "")
    .return (rx380_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<!>"  :subid("124_1256847888.72764") :method :outer("11_1256847888.72764")
.annotate "line", 3
    .const 'Sub' $P389 = "126_1256847888.72764" 
    capture_lex $P389
    .local string rx383_tgt
    .local int rx383_pos
    .local int rx383_off
    .local int rx383_eos
    .local int rx383_rep
    .local pmc rx383_cur
    (rx383_cur, rx383_pos, rx383_tgt, $I10) = self."!cursor_start"()
    rx383_cur."!cursor_debug"("START ", "assertion:sym<!>")
    .lex unicode:"$\x{a2}", rx383_cur
    .local pmc match
    .lex "$/", match
    length rx383_eos, rx383_tgt
    set rx383_off, 0
    lt $I10, 2, rx383_start
    sub rx383_off, $I10, 1
    substr rx383_tgt, rx383_tgt, rx383_off
  rx383_start:
.annotate "line", 131
  # rx literal  "!"
    add $I11, rx383_pos, 1
    gt $I11, rx383_eos, rx383_fail
    sub $I11, rx383_pos, rx383_off
    substr $S10, rx383_tgt, $I11, 1
    ne $S10, "!", rx383_fail
    add rx383_pos, 1
  alt387_0:
    set_addr $I10, alt387_1
    rx383_cur."!mark_push"(0, rx383_pos, $I10)
  # rx subrule "before" subtype=zerowidth negate=
    rx383_cur."!cursor_pos"(rx383_pos)
    .const 'Sub' $P389 = "126_1256847888.72764" 
    capture_lex $P389
    $P10 = rx383_cur."before"($P389)
    unless $P10, rx383_fail
    goto alt387_end
  alt387_1:
  # rx subrule "assertion" subtype=capture negate=
    rx383_cur."!cursor_pos"(rx383_pos)
    $P10 = rx383_cur."assertion"()
    unless $P10, rx383_fail
    rx383_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx383_pos = $P10."pos"()
  alt387_end:
  # rx pass
    rx383_cur."!cursor_pass"(rx383_pos, "assertion:sym<!>")
    rx383_cur."!cursor_debug"("PASS  ", "assertion:sym<!>", " at pos=", rx383_pos)
    .return (rx383_cur)
  rx383_fail:
.annotate "line", 3
    (rx383_rep, rx383_pos, $I10, $P10) = rx383_cur."!mark_fail"(0)
    lt rx383_pos, -1, rx383_done
    eq rx383_pos, -1, rx383_fail
    jump $I10
  rx383_done:
    rx383_cur."!cursor_fail"()
    rx383_cur."!cursor_debug"("FAIL  ", "assertion:sym<!>")
    .return (rx383_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<!>"  :subid("125_1256847888.72764") :method
.annotate "line", 3
    $P385 = self."!PREFIX__!subrule"("assertion", "!")
    new $P386, "ResizablePMCArray"
    push $P386, $P385
    push $P386, "!"
    .return ($P386)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block388"  :anon :subid("126_1256847888.72764") :method :outer("124_1256847888.72764")
.annotate "line", 131
    .local string rx390_tgt
    .local int rx390_pos
    .local int rx390_off
    .local int rx390_eos
    .local int rx390_rep
    .local pmc rx390_cur
    (rx390_cur, rx390_pos, rx390_tgt, $I10) = self."!cursor_start"()
    rx390_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx390_cur
    .local pmc match
    .lex "$/", match
    length rx390_eos, rx390_tgt
    set rx390_off, 0
    lt $I10, 2, rx390_start
    sub rx390_off, $I10, 1
    substr rx390_tgt, rx390_tgt, rx390_off
  rx390_start:
    ge rx390_pos, 0, rxscan391_done
  rxscan391_loop:
    ($P10) = rx390_cur."from"()
    inc $P10
    set rx390_pos, $P10
    ge rx390_pos, rx390_eos, rxscan391_done
    set_addr $I10, rxscan391_loop
    rx390_cur."!mark_push"(0, rx390_pos, $I10)
  rxscan391_done:
  # rx literal  ">"
    add $I11, rx390_pos, 1
    gt $I11, rx390_eos, rx390_fail
    sub $I11, rx390_pos, rx390_off
    substr $S10, rx390_tgt, $I11, 1
    ne $S10, ">", rx390_fail
    add rx390_pos, 1
  # rx pass
    rx390_cur."!cursor_pass"(rx390_pos, "")
    rx390_cur."!cursor_debug"("PASS  ", "", " at pos=", rx390_pos)
    .return (rx390_cur)
  rx390_fail:
    (rx390_rep, rx390_pos, $I10, $P10) = rx390_cur."!mark_fail"(0)
    lt rx390_pos, -1, rx390_done
    eq rx390_pos, -1, rx390_fail
    jump $I10
  rx390_done:
    rx390_cur."!cursor_fail"()
    rx390_cur."!cursor_debug"("FAIL  ", "")
    .return (rx390_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<method>"  :subid("127_1256847888.72764") :method :outer("11_1256847888.72764")
.annotate "line", 3
    .local string rx393_tgt
    .local int rx393_pos
    .local int rx393_off
    .local int rx393_eos
    .local int rx393_rep
    .local pmc rx393_cur
    (rx393_cur, rx393_pos, rx393_tgt, $I10) = self."!cursor_start"()
    rx393_cur."!cursor_debug"("START ", "assertion:sym<method>")
    .lex unicode:"$\x{a2}", rx393_cur
    .local pmc match
    .lex "$/", match
    length rx393_eos, rx393_tgt
    set rx393_off, 0
    lt $I10, 2, rx393_start
    sub rx393_off, $I10, 1
    substr rx393_tgt, rx393_tgt, rx393_off
  rx393_start:
.annotate "line", 134
  # rx literal  "."
    add $I11, rx393_pos, 1
    gt $I11, rx393_eos, rx393_fail
    sub $I11, rx393_pos, rx393_off
    substr $S10, rx393_tgt, $I11, 1
    ne $S10, ".", rx393_fail
    add rx393_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx393_cur."!cursor_pos"(rx393_pos)
    $P10 = rx393_cur."assertion"()
    unless $P10, rx393_fail
    rx393_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx393_pos = $P10."pos"()
.annotate "line", 133
  # rx pass
    rx393_cur."!cursor_pass"(rx393_pos, "assertion:sym<method>")
    rx393_cur."!cursor_debug"("PASS  ", "assertion:sym<method>", " at pos=", rx393_pos)
    .return (rx393_cur)
  rx393_fail:
.annotate "line", 3
    (rx393_rep, rx393_pos, $I10, $P10) = rx393_cur."!mark_fail"(0)
    lt rx393_pos, -1, rx393_done
    eq rx393_pos, -1, rx393_fail
    jump $I10
  rx393_done:
    rx393_cur."!cursor_fail"()
    rx393_cur."!cursor_debug"("FAIL  ", "assertion:sym<method>")
    .return (rx393_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<method>"  :subid("128_1256847888.72764") :method
.annotate "line", 3
    $P395 = self."!PREFIX__!subrule"("assertion", ".")
    new $P396, "ResizablePMCArray"
    push $P396, $P395
    .return ($P396)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<name>"  :subid("129_1256847888.72764") :method :outer("11_1256847888.72764")
.annotate "line", 3
    .const 'Sub' $P405 = "131_1256847888.72764" 
    capture_lex $P405
    .local string rx398_tgt
    .local int rx398_pos
    .local int rx398_off
    .local int rx398_eos
    .local int rx398_rep
    .local pmc rx398_cur
    (rx398_cur, rx398_pos, rx398_tgt, $I10) = self."!cursor_start"()
    rx398_cur."!cursor_debug"("START ", "assertion:sym<name>")
    rx398_cur."!cursor_caparray"("nibbler", "arglist", "assertion")
    .lex unicode:"$\x{a2}", rx398_cur
    .local pmc match
    .lex "$/", match
    length rx398_eos, rx398_tgt
    set rx398_off, 0
    lt $I10, 2, rx398_start
    sub rx398_off, $I10, 1
    substr rx398_tgt, rx398_tgt, rx398_off
  rx398_start:
.annotate "line", 138
  # rx subcapture "longname"
    set_addr $I10, rxcap_401_fail
    rx398_cur."!mark_push"(0, rx398_pos, $I10)
  # rx charclass_q w r 1..-1
    sub $I10, rx398_pos, rx398_off
    find_not_cclass $I11, 8192, rx398_tgt, $I10, rx398_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx398_fail
    add rx398_pos, rx398_off, $I11
    set_addr $I10, rxcap_401_fail
    ($I12, $I11) = rx398_cur."!mark_peek"($I10)
    rx398_cur."!cursor_pos"($I11)
    ($P10) = rx398_cur."!cursor_start"()
    $P10."!cursor_pass"(rx398_pos, "")
    rx398_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("longname")
    goto rxcap_401_done
  rxcap_401_fail:
    goto rx398_fail
  rxcap_401_done:
.annotate "line", 145
  # rx rxquantr402 ** 0..1
    set_addr $I408, rxquantr402_done
    rx398_cur."!mark_push"(0, rx398_pos, $I408)
  rxquantr402_loop:
  alt403_0:
.annotate "line", 139
    set_addr $I10, alt403_1
    rx398_cur."!mark_push"(0, rx398_pos, $I10)
.annotate "line", 140
  # rx subrule "before" subtype=zerowidth negate=
    rx398_cur."!cursor_pos"(rx398_pos)
    .const 'Sub' $P405 = "131_1256847888.72764" 
    capture_lex $P405
    $P10 = rx398_cur."before"($P405)
    unless $P10, rx398_fail
    goto alt403_end
  alt403_1:
    set_addr $I10, alt403_2
    rx398_cur."!mark_push"(0, rx398_pos, $I10)
.annotate "line", 141
  # rx literal  "="
    add $I11, rx398_pos, 1
    gt $I11, rx398_eos, rx398_fail
    sub $I11, rx398_pos, rx398_off
    substr $S10, rx398_tgt, $I11, 1
    ne $S10, "=", rx398_fail
    add rx398_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx398_cur."!cursor_pos"(rx398_pos)
    $P10 = rx398_cur."assertion"()
    unless $P10, rx398_fail
    rx398_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx398_pos = $P10."pos"()
    goto alt403_end
  alt403_2:
    set_addr $I10, alt403_3
    rx398_cur."!mark_push"(0, rx398_pos, $I10)
.annotate "line", 142
  # rx literal  ":"
    add $I11, rx398_pos, 1
    gt $I11, rx398_eos, rx398_fail
    sub $I11, rx398_pos, rx398_off
    substr $S10, rx398_tgt, $I11, 1
    ne $S10, ":", rx398_fail
    add rx398_pos, 1
  # rx subrule "arglist" subtype=capture negate=
    rx398_cur."!cursor_pos"(rx398_pos)
    $P10 = rx398_cur."arglist"()
    unless $P10, rx398_fail
    rx398_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx398_pos = $P10."pos"()
    goto alt403_end
  alt403_3:
    set_addr $I10, alt403_4
    rx398_cur."!mark_push"(0, rx398_pos, $I10)
.annotate "line", 143
  # rx literal  "("
    add $I11, rx398_pos, 1
    gt $I11, rx398_eos, rx398_fail
    sub $I11, rx398_pos, rx398_off
    substr $S10, rx398_tgt, $I11, 1
    ne $S10, "(", rx398_fail
    add rx398_pos, 1
  # rx subrule "arglist" subtype=capture negate=
    rx398_cur."!cursor_pos"(rx398_pos)
    $P10 = rx398_cur."arglist"()
    unless $P10, rx398_fail
    rx398_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx398_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx398_pos, 1
    gt $I11, rx398_eos, rx398_fail
    sub $I11, rx398_pos, rx398_off
    substr $S10, rx398_tgt, $I11, 1
    ne $S10, ")", rx398_fail
    add rx398_pos, 1
    goto alt403_end
  alt403_4:
.annotate "line", 144
  # rx subrule "normspace" subtype=method negate=
    rx398_cur."!cursor_pos"(rx398_pos)
    $P10 = rx398_cur."normspace"()
    unless $P10, rx398_fail
    rx398_pos = $P10."pos"()
  # rx subrule "nibbler" subtype=capture negate=
    rx398_cur."!cursor_pos"(rx398_pos)
    $P10 = rx398_cur."nibbler"()
    unless $P10, rx398_fail
    rx398_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx398_pos = $P10."pos"()
  alt403_end:
.annotate "line", 145
    (rx398_rep) = rx398_cur."!mark_commit"($I408)
  rxquantr402_done:
.annotate "line", 137
  # rx pass
    rx398_cur."!cursor_pass"(rx398_pos, "assertion:sym<name>")
    rx398_cur."!cursor_debug"("PASS  ", "assertion:sym<name>", " at pos=", rx398_pos)
    .return (rx398_cur)
  rx398_fail:
.annotate "line", 3
    (rx398_rep, rx398_pos, $I10, $P10) = rx398_cur."!mark_fail"(0)
    lt rx398_pos, -1, rx398_done
    eq rx398_pos, -1, rx398_fail
    jump $I10
  rx398_done:
    rx398_cur."!cursor_fail"()
    rx398_cur."!cursor_debug"("FAIL  ", "assertion:sym<name>")
    .return (rx398_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<name>"  :subid("130_1256847888.72764") :method
.annotate "line", 3
    new $P400, "ResizablePMCArray"
    push $P400, ""
    .return ($P400)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block404"  :anon :subid("131_1256847888.72764") :method :outer("129_1256847888.72764")
.annotate "line", 140
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
.sub "assertion:sym<[>"  :subid("132_1256847888.72764") :method :outer("11_1256847888.72764")
.annotate "line", 3
    .const 'Sub' $P414 = "134_1256847888.72764" 
    capture_lex $P414
    .local string rx410_tgt
    .local int rx410_pos
    .local int rx410_off
    .local int rx410_eos
    .local int rx410_rep
    .local pmc rx410_cur
    (rx410_cur, rx410_pos, rx410_tgt, $I10) = self."!cursor_start"()
    rx410_cur."!cursor_debug"("START ", "assertion:sym<[>")
    rx410_cur."!cursor_caparray"("cclass_elem")
    .lex unicode:"$\x{a2}", rx410_cur
    .local pmc match
    .lex "$/", match
    length rx410_eos, rx410_tgt
    set rx410_off, 0
    lt $I10, 2, rx410_start
    sub rx410_off, $I10, 1
    substr rx410_tgt, rx410_tgt, rx410_off
  rx410_start:
.annotate "line", 148
  # rx subrule "before" subtype=zerowidth negate=
    rx410_cur."!cursor_pos"(rx410_pos)
    .const 'Sub' $P414 = "134_1256847888.72764" 
    capture_lex $P414
    $P10 = rx410_cur."before"($P414)
    unless $P10, rx410_fail
  # rx rxquantr418 ** 1..*
    set_addr $I419, rxquantr418_done
    rx410_cur."!mark_push"(0, -1, $I419)
  rxquantr418_loop:
  # rx subrule "cclass_elem" subtype=capture negate=
    rx410_cur."!cursor_pos"(rx410_pos)
    $P10 = rx410_cur."cclass_elem"()
    unless $P10, rx410_fail
    rx410_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("cclass_elem")
    rx410_pos = $P10."pos"()
    (rx410_rep) = rx410_cur."!mark_commit"($I419)
    rx410_cur."!mark_push"(rx410_rep, rx410_pos, $I419)
    goto rxquantr418_loop
  rxquantr418_done:
  # rx pass
    rx410_cur."!cursor_pass"(rx410_pos, "assertion:sym<[>")
    rx410_cur."!cursor_debug"("PASS  ", "assertion:sym<[>", " at pos=", rx410_pos)
    .return (rx410_cur)
  rx410_fail:
.annotate "line", 3
    (rx410_rep, rx410_pos, $I10, $P10) = rx410_cur."!mark_fail"(0)
    lt rx410_pos, -1, rx410_done
    eq rx410_pos, -1, rx410_fail
    jump $I10
  rx410_done:
    rx410_cur."!cursor_fail"()
    rx410_cur."!cursor_debug"("FAIL  ", "assertion:sym<[>")
    .return (rx410_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<[>"  :subid("133_1256847888.72764") :method
.annotate "line", 3
    new $P412, "ResizablePMCArray"
    push $P412, ""
    .return ($P412)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block413"  :anon :subid("134_1256847888.72764") :method :outer("132_1256847888.72764")
.annotate "line", 148
    .local string rx415_tgt
    .local int rx415_pos
    .local int rx415_off
    .local int rx415_eos
    .local int rx415_rep
    .local pmc rx415_cur
    (rx415_cur, rx415_pos, rx415_tgt, $I10) = self."!cursor_start"()
    rx415_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx415_cur
    .local pmc match
    .lex "$/", match
    length rx415_eos, rx415_tgt
    set rx415_off, 0
    lt $I10, 2, rx415_start
    sub rx415_off, $I10, 1
    substr rx415_tgt, rx415_tgt, rx415_off
  rx415_start:
    ge rx415_pos, 0, rxscan416_done
  rxscan416_loop:
    ($P10) = rx415_cur."from"()
    inc $P10
    set rx415_pos, $P10
    ge rx415_pos, rx415_eos, rxscan416_done
    set_addr $I10, rxscan416_loop
    rx415_cur."!mark_push"(0, rx415_pos, $I10)
  rxscan416_done:
  alt417_0:
    set_addr $I10, alt417_1
    rx415_cur."!mark_push"(0, rx415_pos, $I10)
  # rx literal  "["
    add $I11, rx415_pos, 1
    gt $I11, rx415_eos, rx415_fail
    sub $I11, rx415_pos, rx415_off
    substr $S10, rx415_tgt, $I11, 1
    ne $S10, "[", rx415_fail
    add rx415_pos, 1
    goto alt417_end
  alt417_1:
    set_addr $I10, alt417_2
    rx415_cur."!mark_push"(0, rx415_pos, $I10)
  # rx literal  "+"
    add $I11, rx415_pos, 1
    gt $I11, rx415_eos, rx415_fail
    sub $I11, rx415_pos, rx415_off
    substr $S10, rx415_tgt, $I11, 1
    ne $S10, "+", rx415_fail
    add rx415_pos, 1
    goto alt417_end
  alt417_2:
  # rx literal  "-"
    add $I11, rx415_pos, 1
    gt $I11, rx415_eos, rx415_fail
    sub $I11, rx415_pos, rx415_off
    substr $S10, rx415_tgt, $I11, 1
    ne $S10, "-", rx415_fail
    add rx415_pos, 1
  alt417_end:
  # rx pass
    rx415_cur."!cursor_pass"(rx415_pos, "")
    rx415_cur."!cursor_debug"("PASS  ", "", " at pos=", rx415_pos)
    .return (rx415_cur)
  rx415_fail:
    (rx415_rep, rx415_pos, $I10, $P10) = rx415_cur."!mark_fail"(0)
    lt rx415_pos, -1, rx415_done
    eq rx415_pos, -1, rx415_fail
    jump $I10
  rx415_done:
    rx415_cur."!cursor_fail"()
    rx415_cur."!cursor_debug"("FAIL  ", "")
    .return (rx415_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "cclass_elem"  :subid("135_1256847888.72764") :method :outer("11_1256847888.72764")
.annotate "line", 3
    .const 'Sub' $P431 = "137_1256847888.72764" 
    capture_lex $P431
    .local string rx421_tgt
    .local int rx421_pos
    .local int rx421_off
    .local int rx421_eos
    .local int rx421_rep
    .local pmc rx421_cur
    (rx421_cur, rx421_pos, rx421_tgt, $I10) = self."!cursor_start"()
    rx421_cur."!cursor_debug"("START ", "cclass_elem")
    rx421_cur."!cursor_caparray"("charspec")
    .lex unicode:"$\x{a2}", rx421_cur
    .local pmc match
    .lex "$/", match
    length rx421_eos, rx421_tgt
    set rx421_off, 0
    lt $I10, 2, rx421_start
    sub rx421_off, $I10, 1
    substr rx421_tgt, rx421_tgt, rx421_off
  rx421_start:
.annotate "line", 151
  # rx subcapture "sign"
    set_addr $I10, rxcap_425_fail
    rx421_cur."!mark_push"(0, rx421_pos, $I10)
  alt424_0:
    set_addr $I10, alt424_1
    rx421_cur."!mark_push"(0, rx421_pos, $I10)
  # rx literal  "+"
    add $I11, rx421_pos, 1
    gt $I11, rx421_eos, rx421_fail
    sub $I11, rx421_pos, rx421_off
    substr $S10, rx421_tgt, $I11, 1
    ne $S10, "+", rx421_fail
    add rx421_pos, 1
    goto alt424_end
  alt424_1:
    set_addr $I10, alt424_2
    rx421_cur."!mark_push"(0, rx421_pos, $I10)
  # rx literal  "-"
    add $I11, rx421_pos, 1
    gt $I11, rx421_eos, rx421_fail
    sub $I11, rx421_pos, rx421_off
    substr $S10, rx421_tgt, $I11, 1
    ne $S10, "-", rx421_fail
    add rx421_pos, 1
    goto alt424_end
  alt424_2:
  alt424_end:
    set_addr $I10, rxcap_425_fail
    ($I12, $I11) = rx421_cur."!mark_peek"($I10)
    rx421_cur."!cursor_pos"($I11)
    ($P10) = rx421_cur."!cursor_start"()
    $P10."!cursor_pass"(rx421_pos, "")
    rx421_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sign")
    goto rxcap_425_done
  rxcap_425_fail:
    goto rx421_fail
  rxcap_425_done:
.annotate "line", 152
  # rx rxquantr426 ** 0..1
    set_addr $I427, rxquantr426_done
    rx421_cur."!mark_push"(0, rx421_pos, $I427)
  rxquantr426_loop:
  # rx subrule "normspace" subtype=method negate=
    rx421_cur."!cursor_pos"(rx421_pos)
    $P10 = rx421_cur."normspace"()
    unless $P10, rx421_fail
    rx421_pos = $P10."pos"()
    (rx421_rep) = rx421_cur."!mark_commit"($I427)
  rxquantr426_done:
  alt428_0:
.annotate "line", 153
    set_addr $I10, alt428_1
    rx421_cur."!mark_push"(0, rx421_pos, $I10)
.annotate "line", 154
  # rx literal  "["
    add $I11, rx421_pos, 1
    gt $I11, rx421_eos, rx421_fail
    sub $I11, rx421_pos, rx421_off
    substr $S10, rx421_tgt, $I11, 1
    ne $S10, "[", rx421_fail
    add rx421_pos, 1
.annotate "line", 157
  # rx rxquantr429 ** 0..*
    set_addr $I450, rxquantr429_done
    rx421_cur."!mark_push"(0, rx421_pos, $I450)
  rxquantr429_loop:
.annotate "line", 154
  # rx subrule $P431 subtype=capture negate=
    rx421_cur."!cursor_pos"(rx421_pos)
    .const 'Sub' $P431 = "137_1256847888.72764" 
    capture_lex $P431
    $P10 = rx421_cur.$P431()
    unless $P10, rx421_fail
    rx421_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charspec")
    rx421_pos = $P10."pos"()
.annotate "line", 157
    (rx421_rep) = rx421_cur."!mark_commit"($I450)
    rx421_cur."!mark_push"(rx421_rep, rx421_pos, $I450)
    goto rxquantr429_loop
  rxquantr429_done:
.annotate "line", 158
  # rx charclass_q s r 0..-1
    sub $I10, rx421_pos, rx421_off
    find_not_cclass $I11, 32, rx421_tgt, $I10, rx421_eos
    add rx421_pos, rx421_off, $I11
  # rx literal  "]"
    add $I11, rx421_pos, 1
    gt $I11, rx421_eos, rx421_fail
    sub $I11, rx421_pos, rx421_off
    substr $S10, rx421_tgt, $I11, 1
    ne $S10, "]", rx421_fail
    add rx421_pos, 1
.annotate "line", 154
    goto alt428_end
  alt428_1:
.annotate "line", 159
  # rx subcapture "name"
    set_addr $I10, rxcap_451_fail
    rx421_cur."!mark_push"(0, rx421_pos, $I10)
  # rx charclass_q w r 1..-1
    sub $I10, rx421_pos, rx421_off
    find_not_cclass $I11, 8192, rx421_tgt, $I10, rx421_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx421_fail
    add rx421_pos, rx421_off, $I11
    set_addr $I10, rxcap_451_fail
    ($I12, $I11) = rx421_cur."!mark_peek"($I10)
    rx421_cur."!cursor_pos"($I11)
    ($P10) = rx421_cur."!cursor_start"()
    $P10."!cursor_pass"(rx421_pos, "")
    rx421_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    goto rxcap_451_done
  rxcap_451_fail:
    goto rx421_fail
  rxcap_451_done:
  alt428_end:
.annotate "line", 161
  # rx rxquantr452 ** 0..1
    set_addr $I453, rxquantr452_done
    rx421_cur."!mark_push"(0, rx421_pos, $I453)
  rxquantr452_loop:
  # rx subrule "normspace" subtype=method negate=
    rx421_cur."!cursor_pos"(rx421_pos)
    $P10 = rx421_cur."normspace"()
    unless $P10, rx421_fail
    rx421_pos = $P10."pos"()
    (rx421_rep) = rx421_cur."!mark_commit"($I453)
  rxquantr452_done:
.annotate "line", 150
  # rx pass
    rx421_cur."!cursor_pass"(rx421_pos, "cclass_elem")
    rx421_cur."!cursor_debug"("PASS  ", "cclass_elem", " at pos=", rx421_pos)
    .return (rx421_cur)
  rx421_fail:
.annotate "line", 3
    (rx421_rep, rx421_pos, $I10, $P10) = rx421_cur."!mark_fail"(0)
    lt rx421_pos, -1, rx421_done
    eq rx421_pos, -1, rx421_fail
    jump $I10
  rx421_done:
    rx421_cur."!cursor_fail"()
    rx421_cur."!cursor_debug"("FAIL  ", "cclass_elem")
    .return (rx421_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__cclass_elem"  :subid("136_1256847888.72764") :method
.annotate "line", 3
    new $P423, "ResizablePMCArray"
    push $P423, ""
    push $P423, "-"
    push $P423, "+"
    .return ($P423)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block430"  :anon :subid("137_1256847888.72764") :method :outer("135_1256847888.72764")
.annotate "line", 154
    .const 'Sub' $P446 = "140_1256847888.72764" 
    capture_lex $P446
    .const 'Sub' $P441 = "139_1256847888.72764" 
    capture_lex $P441
    .const 'Sub' $P437 = "138_1256847888.72764" 
    capture_lex $P437
    .local string rx432_tgt
    .local int rx432_pos
    .local int rx432_off
    .local int rx432_eos
    .local int rx432_rep
    .local pmc rx432_cur
    (rx432_cur, rx432_pos, rx432_tgt, $I10) = self."!cursor_start"()
    rx432_cur."!cursor_debug"("START ", "")
    rx432_cur."!cursor_caparray"("1")
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
  alt434_0:
    set_addr $I10, alt434_1
    rx432_cur."!mark_push"(0, rx432_pos, $I10)
.annotate "line", 155
  # rx charclass_q s r 0..-1
    sub $I10, rx432_pos, rx432_off
    find_not_cclass $I11, 32, rx432_tgt, $I10, rx432_eos
    add rx432_pos, rx432_off, $I11
  # rx literal  "-"
    add $I11, rx432_pos, 1
    gt $I11, rx432_eos, rx432_fail
    sub $I11, rx432_pos, rx432_off
    substr $S10, rx432_tgt, $I11, 1
    ne $S10, "-", rx432_fail
    add rx432_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx432_cur."!cursor_pos"(rx432_pos)
    $P10 = rx432_cur."obs"("hyphen in enumerated character class", "..")
    unless $P10, rx432_fail
    rx432_pos = $P10."pos"()
    goto alt434_end
  alt434_1:
.annotate "line", 156
  # rx charclass_q s r 0..-1
    sub $I10, rx432_pos, rx432_off
    find_not_cclass $I11, 32, rx432_tgt, $I10, rx432_eos
    add rx432_pos, rx432_off, $I11
  alt435_0:
    set_addr $I10, alt435_1
    rx432_cur."!mark_push"(0, rx432_pos, $I10)
  # rx literal  "\\"
    add $I11, rx432_pos, 1
    gt $I11, rx432_eos, rx432_fail
    sub $I11, rx432_pos, rx432_off
    substr $S10, rx432_tgt, $I11, 1
    ne $S10, "\\", rx432_fail
    add rx432_pos, 1
  # rx subrule $P437 subtype=capture negate=
    rx432_cur."!cursor_pos"(rx432_pos)
    .const 'Sub' $P437 = "138_1256847888.72764" 
    capture_lex $P437
    $P10 = rx432_cur.$P437()
    unless $P10, rx432_fail
    rx432_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"(0)
    rx432_pos = $P10."pos"()
    goto alt435_end
  alt435_1:
  # rx subrule $P441 subtype=capture negate=
    rx432_cur."!cursor_pos"(rx432_pos)
    .const 'Sub' $P441 = "139_1256847888.72764" 
    capture_lex $P441
    $P10 = rx432_cur.$P441()
    unless $P10, rx432_fail
    rx432_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"(0)
    rx432_pos = $P10."pos"()
  alt435_end:
  # rx rxquantr444 ** 0..1
    set_addr $I449, rxquantr444_done
    rx432_cur."!mark_push"(0, rx432_pos, $I449)
  rxquantr444_loop:
  # rx charclass_q s r 0..-1
    sub $I10, rx432_pos, rx432_off
    find_not_cclass $I11, 32, rx432_tgt, $I10, rx432_eos
    add rx432_pos, rx432_off, $I11
  # rx literal  ".."
    add $I11, rx432_pos, 2
    gt $I11, rx432_eos, rx432_fail
    sub $I11, rx432_pos, rx432_off
    substr $S10, rx432_tgt, $I11, 2
    ne $S10, "..", rx432_fail
    add rx432_pos, 2
  # rx charclass_q s r 0..-1
    sub $I10, rx432_pos, rx432_off
    find_not_cclass $I11, 32, rx432_tgt, $I10, rx432_eos
    add rx432_pos, rx432_off, $I11
  # rx subrule $P446 subtype=capture negate=
    rx432_cur."!cursor_pos"(rx432_pos)
    .const 'Sub' $P446 = "140_1256847888.72764" 
    capture_lex $P446
    $P10 = rx432_cur.$P446()
    unless $P10, rx432_fail
    rx432_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("1")
    rx432_pos = $P10."pos"()
    (rx432_rep) = rx432_cur."!mark_commit"($I449)
  rxquantr444_done:
  alt434_end:
.annotate "line", 154
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
.sub "_block436"  :anon :subid("138_1256847888.72764") :method :outer("137_1256847888.72764")
.annotate "line", 156
    .local string rx438_tgt
    .local int rx438_pos
    .local int rx438_off
    .local int rx438_eos
    .local int rx438_rep
    .local pmc rx438_cur
    (rx438_cur, rx438_pos, rx438_tgt, $I10) = self."!cursor_start"()
    rx438_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx438_cur
    .local pmc match
    .lex "$/", match
    length rx438_eos, rx438_tgt
    set rx438_off, 0
    lt $I10, 2, rx438_start
    sub rx438_off, $I10, 1
    substr rx438_tgt, rx438_tgt, rx438_off
  rx438_start:
    ge rx438_pos, 0, rxscan439_done
  rxscan439_loop:
    ($P10) = rx438_cur."from"()
    inc $P10
    set rx438_pos, $P10
    ge rx438_pos, rx438_eos, rxscan439_done
    set_addr $I10, rxscan439_loop
    rx438_cur."!mark_push"(0, rx438_pos, $I10)
  rxscan439_done:
  # rx charclass .
    ge rx438_pos, rx438_eos, rx438_fail
    inc rx438_pos
  # rx pass
    rx438_cur."!cursor_pass"(rx438_pos, "")
    rx438_cur."!cursor_debug"("PASS  ", "", " at pos=", rx438_pos)
    .return (rx438_cur)
  rx438_fail:
    (rx438_rep, rx438_pos, $I10, $P10) = rx438_cur."!mark_fail"(0)
    lt rx438_pos, -1, rx438_done
    eq rx438_pos, -1, rx438_fail
    jump $I10
  rx438_done:
    rx438_cur."!cursor_fail"()
    rx438_cur."!cursor_debug"("FAIL  ", "")
    .return (rx438_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block440"  :anon :subid("139_1256847888.72764") :method :outer("137_1256847888.72764")
.annotate "line", 156
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
  # rx enumcharlist negate=1 
    ge rx442_pos, rx442_eos, rx442_fail
    sub $I10, rx442_pos, rx442_off
    substr $S10, rx442_tgt, $I10, 1
    index $I11, "]\\", $S10
    ge $I11, 0, rx442_fail
    inc rx442_pos
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
.sub "_block445"  :anon :subid("140_1256847888.72764") :method :outer("137_1256847888.72764")
.annotate "line", 156
    .local string rx447_tgt
    .local int rx447_pos
    .local int rx447_off
    .local int rx447_eos
    .local int rx447_rep
    .local pmc rx447_cur
    (rx447_cur, rx447_pos, rx447_tgt, $I10) = self."!cursor_start"()
    rx447_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx447_cur
    .local pmc match
    .lex "$/", match
    length rx447_eos, rx447_tgt
    set rx447_off, 0
    lt $I10, 2, rx447_start
    sub rx447_off, $I10, 1
    substr rx447_tgt, rx447_tgt, rx447_off
  rx447_start:
    ge rx447_pos, 0, rxscan448_done
  rxscan448_loop:
    ($P10) = rx447_cur."from"()
    inc $P10
    set rx447_pos, $P10
    ge rx447_pos, rx447_eos, rxscan448_done
    set_addr $I10, rxscan448_loop
    rx447_cur."!mark_push"(0, rx447_pos, $I10)
  rxscan448_done:
  # rx charclass .
    ge rx447_pos, rx447_eos, rx447_fail
    inc rx447_pos
  # rx pass
    rx447_cur."!cursor_pass"(rx447_pos, "")
    rx447_cur."!cursor_debug"("PASS  ", "", " at pos=", rx447_pos)
    .return (rx447_cur)
  rx447_fail:
    (rx447_rep, rx447_pos, $I10, $P10) = rx447_cur."!mark_fail"(0)
    lt rx447_pos, -1, rx447_done
    eq rx447_pos, -1, rx447_fail
    jump $I10
  rx447_done:
    rx447_cur."!cursor_fail"()
    rx447_cur."!cursor_debug"("FAIL  ", "")
    .return (rx447_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_internal"  :subid("141_1256847888.72764") :method :outer("11_1256847888.72764")
.annotate "line", 3
    .const 'Sub' $P462 = "143_1256847888.72764" 
    capture_lex $P462
    .local string rx455_tgt
    .local int rx455_pos
    .local int rx455_off
    .local int rx455_eos
    .local int rx455_rep
    .local pmc rx455_cur
    (rx455_cur, rx455_pos, rx455_tgt, $I10) = self."!cursor_start"()
    rx455_cur."!cursor_debug"("START ", "mod_internal")
    rx455_cur."!cursor_caparray"("n")
    .lex unicode:"$\x{a2}", rx455_cur
    .local pmc match
    .lex "$/", match
    length rx455_eos, rx455_tgt
    set rx455_off, 0
    lt $I10, 2, rx455_start
    sub rx455_off, $I10, 1
    substr rx455_tgt, rx455_tgt, rx455_off
  rx455_start:
  alt459_0:
.annotate "line", 165
    set_addr $I10, alt459_1
    rx455_cur."!mark_push"(0, rx455_pos, $I10)
.annotate "line", 166
  # rx literal  ":"
    add $I11, rx455_pos, 1
    gt $I11, rx455_eos, rx455_fail
    sub $I11, rx455_pos, rx455_off
    substr $S10, rx455_tgt, $I11, 1
    ne $S10, ":", rx455_fail
    add rx455_pos, 1
  # rx rxquantr460 ** 1..1
    set_addr $I466, rxquantr460_done
    rx455_cur."!mark_push"(0, -1, $I466)
  rxquantr460_loop:
  # rx subrule $P462 subtype=capture negate=
    rx455_cur."!cursor_pos"(rx455_pos)
    .const 'Sub' $P462 = "143_1256847888.72764" 
    capture_lex $P462
    $P10 = rx455_cur.$P462()
    unless $P10, rx455_fail
    rx455_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("n")
    rx455_pos = $P10."pos"()
    (rx455_rep) = rx455_cur."!mark_commit"($I466)
  rxquantr460_done:
  # rx subrule "mod_ident" subtype=capture negate=
    rx455_cur."!cursor_pos"(rx455_pos)
    $P10 = rx455_cur."mod_ident"()
    unless $P10, rx455_fail
    rx455_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_ident")
    rx455_pos = $P10."pos"()
  # rxanchor rwb
    le rx455_pos, 0, rx455_fail
    sub $I10, rx455_pos, rx455_off
    is_cclass $I11, 8192, rx455_tgt, $I10
    if $I11, rx455_fail
    dec $I10
    is_cclass $I11, 8192, rx455_tgt, $I10
    unless $I11, rx455_fail
    goto alt459_end
  alt459_1:
.annotate "line", 167
  # rx literal  ":"
    add $I11, rx455_pos, 1
    gt $I11, rx455_eos, rx455_fail
    sub $I11, rx455_pos, rx455_off
    substr $S10, rx455_tgt, $I11, 1
    ne $S10, ":", rx455_fail
    add rx455_pos, 1
  # rx subrule "mod_ident" subtype=capture negate=
    rx455_cur."!cursor_pos"(rx455_pos)
    $P10 = rx455_cur."mod_ident"()
    unless $P10, rx455_fail
    rx455_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_ident")
    rx455_pos = $P10."pos"()
  # rx rxquantr467 ** 0..1
    set_addr $I469, rxquantr467_done
    rx455_cur."!mark_push"(0, rx455_pos, $I469)
  rxquantr467_loop:
  # rx literal  "("
    add $I11, rx455_pos, 1
    gt $I11, rx455_eos, rx455_fail
    sub $I11, rx455_pos, rx455_off
    substr $S10, rx455_tgt, $I11, 1
    ne $S10, "(", rx455_fail
    add rx455_pos, 1
  # rx subcapture "n"
    set_addr $I10, rxcap_468_fail
    rx455_cur."!mark_push"(0, rx455_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx455_pos, rx455_off
    find_not_cclass $I11, 8, rx455_tgt, $I10, rx455_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx455_fail
    add rx455_pos, rx455_off, $I11
    set_addr $I10, rxcap_468_fail
    ($I12, $I11) = rx455_cur."!mark_peek"($I10)
    rx455_cur."!cursor_pos"($I11)
    ($P10) = rx455_cur."!cursor_start"()
    $P10."!cursor_pass"(rx455_pos, "")
    rx455_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("n")
    goto rxcap_468_done
  rxcap_468_fail:
    goto rx455_fail
  rxcap_468_done:
  # rx literal  ")"
    add $I11, rx455_pos, 1
    gt $I11, rx455_eos, rx455_fail
    sub $I11, rx455_pos, rx455_off
    substr $S10, rx455_tgt, $I11, 1
    ne $S10, ")", rx455_fail
    add rx455_pos, 1
    (rx455_rep) = rx455_cur."!mark_commit"($I469)
  rxquantr467_done:
  alt459_end:
.annotate "line", 164
  # rx pass
    rx455_cur."!cursor_pass"(rx455_pos, "mod_internal")
    rx455_cur."!cursor_debug"("PASS  ", "mod_internal", " at pos=", rx455_pos)
    .return (rx455_cur)
  rx455_fail:
.annotate "line", 3
    (rx455_rep, rx455_pos, $I10, $P10) = rx455_cur."!mark_fail"(0)
    lt rx455_pos, -1, rx455_done
    eq rx455_pos, -1, rx455_fail
    jump $I10
  rx455_done:
    rx455_cur."!cursor_fail"()
    rx455_cur."!cursor_debug"("FAIL  ", "mod_internal")
    .return (rx455_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_internal"  :subid("142_1256847888.72764") :method
.annotate "line", 3
    $P457 = self."!PREFIX__!subrule"("mod_ident", ":")
    new $P458, "ResizablePMCArray"
    push $P458, $P457
    push $P458, ":"
    .return ($P458)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block461"  :anon :subid("143_1256847888.72764") :method :outer("141_1256847888.72764")
.annotate "line", 166
    .local string rx463_tgt
    .local int rx463_pos
    .local int rx463_off
    .local int rx463_eos
    .local int rx463_rep
    .local pmc rx463_cur
    (rx463_cur, rx463_pos, rx463_tgt, $I10) = self."!cursor_start"()
    rx463_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx463_cur
    .local pmc match
    .lex "$/", match
    length rx463_eos, rx463_tgt
    set rx463_off, 0
    lt $I10, 2, rx463_start
    sub rx463_off, $I10, 1
    substr rx463_tgt, rx463_tgt, rx463_off
  rx463_start:
    ge rx463_pos, 0, rxscan464_done
  rxscan464_loop:
    ($P10) = rx463_cur."from"()
    inc $P10
    set rx463_pos, $P10
    ge rx463_pos, rx463_eos, rxscan464_done
    set_addr $I10, rxscan464_loop
    rx463_cur."!mark_push"(0, rx463_pos, $I10)
  rxscan464_done:
  alt465_0:
    set_addr $I10, alt465_1
    rx463_cur."!mark_push"(0, rx463_pos, $I10)
  # rx literal  "!"
    add $I11, rx463_pos, 1
    gt $I11, rx463_eos, rx463_fail
    sub $I11, rx463_pos, rx463_off
    substr $S10, rx463_tgt, $I11, 1
    ne $S10, "!", rx463_fail
    add rx463_pos, 1
    goto alt465_end
  alt465_1:
  # rx charclass_q d r 1..-1
    sub $I10, rx463_pos, rx463_off
    find_not_cclass $I11, 8, rx463_tgt, $I10, rx463_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx463_fail
    add rx463_pos, rx463_off, $I11
  alt465_end:
  # rx pass
    rx463_cur."!cursor_pass"(rx463_pos, "")
    rx463_cur."!cursor_debug"("PASS  ", "", " at pos=", rx463_pos)
    .return (rx463_cur)
  rx463_fail:
    (rx463_rep, rx463_pos, $I10, $P10) = rx463_cur."!mark_fail"(0)
    lt rx463_pos, -1, rx463_done
    eq rx463_pos, -1, rx463_fail
    jump $I10
  rx463_done:
    rx463_cur."!cursor_fail"()
    rx463_cur."!cursor_debug"("FAIL  ", "")
    .return (rx463_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident"  :subid("144_1256847888.72764") :method
.annotate "line", 171
    $P471 = self."!protoregex"("mod_ident")
    .return ($P471)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident"  :subid("145_1256847888.72764") :method
.annotate "line", 171
    $P473 = self."!PREFIX__!protoregex"("mod_ident")
    .return ($P473)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<ignorecase>"  :subid("146_1256847888.72764") :method :outer("11_1256847888.72764")
.annotate "line", 3
    .local string rx475_tgt
    .local int rx475_pos
    .local int rx475_off
    .local int rx475_eos
    .local int rx475_rep
    .local pmc rx475_cur
    (rx475_cur, rx475_pos, rx475_tgt, $I10) = self."!cursor_start"()
    rx475_cur."!cursor_debug"("START ", "mod_ident:sym<ignorecase>")
    .lex unicode:"$\x{a2}", rx475_cur
    .local pmc match
    .lex "$/", match
    length rx475_eos, rx475_tgt
    set rx475_off, 0
    lt $I10, 2, rx475_start
    sub rx475_off, $I10, 1
    substr rx475_tgt, rx475_tgt, rx475_off
  rx475_start:
.annotate "line", 172
  # rx subcapture "sym"
    set_addr $I10, rxcap_478_fail
    rx475_cur."!mark_push"(0, rx475_pos, $I10)
  # rx literal  "i"
    add $I11, rx475_pos, 1
    gt $I11, rx475_eos, rx475_fail
    sub $I11, rx475_pos, rx475_off
    substr $S10, rx475_tgt, $I11, 1
    ne $S10, "i", rx475_fail
    add rx475_pos, 1
    set_addr $I10, rxcap_478_fail
    ($I12, $I11) = rx475_cur."!mark_peek"($I10)
    rx475_cur."!cursor_pos"($I11)
    ($P10) = rx475_cur."!cursor_start"()
    $P10."!cursor_pass"(rx475_pos, "")
    rx475_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_478_done
  rxcap_478_fail:
    goto rx475_fail
  rxcap_478_done:
  # rx rxquantr479 ** 0..1
    set_addr $I480, rxquantr479_done
    rx475_cur."!mark_push"(0, rx475_pos, $I480)
  rxquantr479_loop:
  # rx literal  "gnorecase"
    add $I11, rx475_pos, 9
    gt $I11, rx475_eos, rx475_fail
    sub $I11, rx475_pos, rx475_off
    substr $S10, rx475_tgt, $I11, 9
    ne $S10, "gnorecase", rx475_fail
    add rx475_pos, 9
    (rx475_rep) = rx475_cur."!mark_commit"($I480)
  rxquantr479_done:
  # rx pass
    rx475_cur."!cursor_pass"(rx475_pos, "mod_ident:sym<ignorecase>")
    rx475_cur."!cursor_debug"("PASS  ", "mod_ident:sym<ignorecase>", " at pos=", rx475_pos)
    .return (rx475_cur)
  rx475_fail:
.annotate "line", 3
    (rx475_rep, rx475_pos, $I10, $P10) = rx475_cur."!mark_fail"(0)
    lt rx475_pos, -1, rx475_done
    eq rx475_pos, -1, rx475_fail
    jump $I10
  rx475_done:
    rx475_cur."!cursor_fail"()
    rx475_cur."!cursor_debug"("FAIL  ", "mod_ident:sym<ignorecase>")
    .return (rx475_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident:sym<ignorecase>"  :subid("147_1256847888.72764") :method
.annotate "line", 3
    new $P477, "ResizablePMCArray"
    push $P477, "i"
    .return ($P477)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<ratchet>"  :subid("148_1256847888.72764") :method :outer("11_1256847888.72764")
.annotate "line", 3
    .local string rx482_tgt
    .local int rx482_pos
    .local int rx482_off
    .local int rx482_eos
    .local int rx482_rep
    .local pmc rx482_cur
    (rx482_cur, rx482_pos, rx482_tgt, $I10) = self."!cursor_start"()
    rx482_cur."!cursor_debug"("START ", "mod_ident:sym<ratchet>")
    .lex unicode:"$\x{a2}", rx482_cur
    .local pmc match
    .lex "$/", match
    length rx482_eos, rx482_tgt
    set rx482_off, 0
    lt $I10, 2, rx482_start
    sub rx482_off, $I10, 1
    substr rx482_tgt, rx482_tgt, rx482_off
  rx482_start:
.annotate "line", 173
  # rx subcapture "sym"
    set_addr $I10, rxcap_485_fail
    rx482_cur."!mark_push"(0, rx482_pos, $I10)
  # rx literal  "r"
    add $I11, rx482_pos, 1
    gt $I11, rx482_eos, rx482_fail
    sub $I11, rx482_pos, rx482_off
    substr $S10, rx482_tgt, $I11, 1
    ne $S10, "r", rx482_fail
    add rx482_pos, 1
    set_addr $I10, rxcap_485_fail
    ($I12, $I11) = rx482_cur."!mark_peek"($I10)
    rx482_cur."!cursor_pos"($I11)
    ($P10) = rx482_cur."!cursor_start"()
    $P10."!cursor_pass"(rx482_pos, "")
    rx482_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_485_done
  rxcap_485_fail:
    goto rx482_fail
  rxcap_485_done:
  # rx rxquantr486 ** 0..1
    set_addr $I487, rxquantr486_done
    rx482_cur."!mark_push"(0, rx482_pos, $I487)
  rxquantr486_loop:
  # rx literal  "atchet"
    add $I11, rx482_pos, 6
    gt $I11, rx482_eos, rx482_fail
    sub $I11, rx482_pos, rx482_off
    substr $S10, rx482_tgt, $I11, 6
    ne $S10, "atchet", rx482_fail
    add rx482_pos, 6
    (rx482_rep) = rx482_cur."!mark_commit"($I487)
  rxquantr486_done:
  # rx pass
    rx482_cur."!cursor_pass"(rx482_pos, "mod_ident:sym<ratchet>")
    rx482_cur."!cursor_debug"("PASS  ", "mod_ident:sym<ratchet>", " at pos=", rx482_pos)
    .return (rx482_cur)
  rx482_fail:
.annotate "line", 3
    (rx482_rep, rx482_pos, $I10, $P10) = rx482_cur."!mark_fail"(0)
    lt rx482_pos, -1, rx482_done
    eq rx482_pos, -1, rx482_fail
    jump $I10
  rx482_done:
    rx482_cur."!cursor_fail"()
    rx482_cur."!cursor_debug"("FAIL  ", "mod_ident:sym<ratchet>")
    .return (rx482_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident:sym<ratchet>"  :subid("149_1256847888.72764") :method
.annotate "line", 3
    new $P484, "ResizablePMCArray"
    push $P484, "r"
    .return ($P484)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<sigspace>"  :subid("150_1256847888.72764") :method :outer("11_1256847888.72764")
.annotate "line", 3
    .local string rx489_tgt
    .local int rx489_pos
    .local int rx489_off
    .local int rx489_eos
    .local int rx489_rep
    .local pmc rx489_cur
    (rx489_cur, rx489_pos, rx489_tgt, $I10) = self."!cursor_start"()
    rx489_cur."!cursor_debug"("START ", "mod_ident:sym<sigspace>")
    .lex unicode:"$\x{a2}", rx489_cur
    .local pmc match
    .lex "$/", match
    length rx489_eos, rx489_tgt
    set rx489_off, 0
    lt $I10, 2, rx489_start
    sub rx489_off, $I10, 1
    substr rx489_tgt, rx489_tgt, rx489_off
  rx489_start:
.annotate "line", 174
  # rx subcapture "sym"
    set_addr $I10, rxcap_492_fail
    rx489_cur."!mark_push"(0, rx489_pos, $I10)
  # rx literal  "s"
    add $I11, rx489_pos, 1
    gt $I11, rx489_eos, rx489_fail
    sub $I11, rx489_pos, rx489_off
    substr $S10, rx489_tgt, $I11, 1
    ne $S10, "s", rx489_fail
    add rx489_pos, 1
    set_addr $I10, rxcap_492_fail
    ($I12, $I11) = rx489_cur."!mark_peek"($I10)
    rx489_cur."!cursor_pos"($I11)
    ($P10) = rx489_cur."!cursor_start"()
    $P10."!cursor_pass"(rx489_pos, "")
    rx489_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_492_done
  rxcap_492_fail:
    goto rx489_fail
  rxcap_492_done:
  # rx rxquantr493 ** 0..1
    set_addr $I494, rxquantr493_done
    rx489_cur."!mark_push"(0, rx489_pos, $I494)
  rxquantr493_loop:
  # rx literal  "igspace"
    add $I11, rx489_pos, 7
    gt $I11, rx489_eos, rx489_fail
    sub $I11, rx489_pos, rx489_off
    substr $S10, rx489_tgt, $I11, 7
    ne $S10, "igspace", rx489_fail
    add rx489_pos, 7
    (rx489_rep) = rx489_cur."!mark_commit"($I494)
  rxquantr493_done:
  # rx pass
    rx489_cur."!cursor_pass"(rx489_pos, "mod_ident:sym<sigspace>")
    rx489_cur."!cursor_debug"("PASS  ", "mod_ident:sym<sigspace>", " at pos=", rx489_pos)
    .return (rx489_cur)
  rx489_fail:
.annotate "line", 3
    (rx489_rep, rx489_pos, $I10, $P10) = rx489_cur."!mark_fail"(0)
    lt rx489_pos, -1, rx489_done
    eq rx489_pos, -1, rx489_fail
    jump $I10
  rx489_done:
    rx489_cur."!cursor_fail"()
    rx489_cur."!cursor_debug"("FAIL  ", "mod_ident:sym<sigspace>")
    .return (rx489_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident:sym<sigspace>"  :subid("151_1256847888.72764") :method
.annotate "line", 3
    new $P491, "ResizablePMCArray"
    push $P491, "s"
    .return ($P491)
.end

### .include 'gen/p6regex-actions.pir'

.namespace []
.sub "_block11"  :anon :subid("10_1256847896.72898")
.annotate "line", 0
    get_hll_global $P14, ["Regex";"P6Regex";"Actions"], "_block13" 
    capture_lex $P14
.annotate "line", 4
    get_hll_global $P14, ["Regex";"P6Regex";"Actions"], "_block13" 
    capture_lex $P14
    $P1345 = $P14()
.annotate "line", 1
    .return ($P1345)
.end


.namespace []
.sub "" :load :init :subid("post84") :outer("10_1256847896.72898")
.annotate "line", 0
    .const 'Sub' $P12 = "10_1256847896.72898" 
    .local pmc block
    set block, $P12
    $P1346 = get_root_global ["parrot"], "P6metaclass"
    $P1346."new_class"("Regex::P6Regex::Actions")
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block13"  :subid("11_1256847896.72898") :outer("10_1256847896.72898")
.annotate "line", 4
    .const 'Sub' $P1327 = "83_1256847896.72898" 
    capture_lex $P1327
    .const 'Sub' $P1295 = "82_1256847896.72898" 
    capture_lex $P1295
    .const 'Sub' $P1044 = "69_1256847896.72898" 
    capture_lex $P1044
    .const 'Sub' $P1024 = "68_1256847896.72898" 
    capture_lex $P1024
    .const 'Sub' $P997 = "67_1256847896.72898" 
    capture_lex $P997
    .const 'Sub' $P934 = "63_1256847896.72898" 
    capture_lex $P934
    .const 'Sub' $P871 = "61_1256847896.72898" 
    capture_lex $P871
    .const 'Sub' $P801 = "58_1256847896.72898" 
    capture_lex $P801
    .const 'Sub' $P789 = "57_1256847896.72898" 
    capture_lex $P789
    .const 'Sub' $P766 = "56_1256847896.72898" 
    capture_lex $P766
    .const 'Sub' $P749 = "55_1256847896.72898" 
    capture_lex $P749
    .const 'Sub' $P736 = "54_1256847896.72898" 
    capture_lex $P736
    .const 'Sub' $P721 = "53_1256847896.72898" 
    capture_lex $P721
    .const 'Sub' $P706 = "52_1256847896.72898" 
    capture_lex $P706
    .const 'Sub' $P691 = "51_1256847896.72898" 
    capture_lex $P691
    .const 'Sub' $P676 = "50_1256847896.72898" 
    capture_lex $P676
    .const 'Sub' $P661 = "49_1256847896.72898" 
    capture_lex $P661
    .const 'Sub' $P646 = "48_1256847896.72898" 
    capture_lex $P646
    .const 'Sub' $P631 = "47_1256847896.72898" 
    capture_lex $P631
    .const 'Sub' $P609 = "46_1256847896.72898" 
    capture_lex $P609
    .const 'Sub' $P594 = "45_1256847896.72898" 
    capture_lex $P594
    .const 'Sub' $P540 = "44_1256847896.72898" 
    capture_lex $P540
    .const 'Sub' $P520 = "43_1256847896.72898" 
    capture_lex $P520
    .const 'Sub' $P498 = "42_1256847896.72898" 
    capture_lex $P498
    .const 'Sub' $P488 = "41_1256847896.72898" 
    capture_lex $P488
    .const 'Sub' $P478 = "40_1256847896.72898" 
    capture_lex $P478
    .const 'Sub' $P468 = "39_1256847896.72898" 
    capture_lex $P468
    .const 'Sub' $P457 = "38_1256847896.72898" 
    capture_lex $P457
    .const 'Sub' $P446 = "37_1256847896.72898" 
    capture_lex $P446
    .const 'Sub' $P435 = "36_1256847896.72898" 
    capture_lex $P435
    .const 'Sub' $P424 = "35_1256847896.72898" 
    capture_lex $P424
    .const 'Sub' $P413 = "34_1256847896.72898" 
    capture_lex $P413
    .const 'Sub' $P402 = "33_1256847896.72898" 
    capture_lex $P402
    .const 'Sub' $P391 = "32_1256847896.72898" 
    capture_lex $P391
    .const 'Sub' $P380 = "31_1256847896.72898" 
    capture_lex $P380
    .const 'Sub' $P365 = "30_1256847896.72898" 
    capture_lex $P365
    .const 'Sub' $P349 = "29_1256847896.72898" 
    capture_lex $P349
    .const 'Sub' $P339 = "28_1256847896.72898" 
    capture_lex $P339
    .const 'Sub' $P322 = "27_1256847896.72898" 
    capture_lex $P322
    .const 'Sub' $P276 = "26_1256847896.72898" 
    capture_lex $P276
    .const 'Sub' $P260 = "25_1256847896.72898" 
    capture_lex $P260
    .const 'Sub' $P246 = "24_1256847896.72898" 
    capture_lex $P246
    .const 'Sub' $P232 = "23_1256847896.72898" 
    capture_lex $P232
    .const 'Sub' $P207 = "22_1256847896.72898" 
    capture_lex $P207
    .const 'Sub' $P159 = "20_1256847896.72898" 
    capture_lex $P159
    .const 'Sub' $P107 = "18_1256847896.72898" 
    capture_lex $P107
    .const 'Sub' $P53 = "15_1256847896.72898" 
    capture_lex $P53
    .const 'Sub' $P39 = "14_1256847896.72898" 
    capture_lex $P39
    .const 'Sub' $P21 = "13_1256847896.72898" 
    capture_lex $P21
    .const 'Sub' $P16 = "12_1256847896.72898" 
    capture_lex $P16
    get_global $P15, "@MODIFIERS"
    unless_null $P15, vivify_85
    new $P15, "ResizablePMCArray"
    set_global "@MODIFIERS", $P15
  vivify_85:
.annotate "line", 6
    .const 'Sub' $P16 = "12_1256847896.72898" 
    capture_lex $P16
    .lex "INIT", $P16
.annotate "line", 439
    .const 'Sub' $P1024 = "68_1256847896.72898" 
    capture_lex $P1024
    .lex "buildsub", $P1024
.annotate "line", 452
    .const 'Sub' $P1044 = "69_1256847896.72898" 
    capture_lex $P1044
    .lex "capnames", $P1044
.annotate "line", 518
    .const 'Sub' $P1295 = "82_1256847896.72898" 
    capture_lex $P1295
    .lex "backmod", $P1295
.annotate "line", 525
    .const 'Sub' $P1327 = "83_1256847896.72898" 
    capture_lex $P1327
    .lex "subrule_alias", $P1327
.annotate "line", 4
    .return ($P1327)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "INIT"  :subid("12_1256847896.72898") :outer("11_1256847896.72898")
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
.sub "arg"  :subid("13_1256847896.72898") :method :outer("11_1256847896.72898")
    .param pmc param_24
.annotate "line", 14
    new $P23, 'ExceptionHandler'
    set_addr $P23, control_22
    $P23."handle_types"(58)
    push_eh $P23
    .lex "self", self
    .lex "$/", param_24
.annotate "line", 15
    find_lex $P25, "$/"
    find_lex $P28, "$/"
    unless_null $P28, vivify_86
    new $P28, "Hash"
  vivify_86:
    set $P29, $P28["quote"]
    unless_null $P29, vivify_87
    new $P29, "Undef"
  vivify_87:
    if $P29, if_27
    find_lex $P34, "$/"
    unless_null $P34, vivify_88
    new $P34, "Hash"
  vivify_88:
    set $P35, $P34["val"]
    unless_null $P35, vivify_89
    new $P35, "Undef"
  vivify_89:
    set $N36, $P35
    new $P26, 'Float'
    set $P26, $N36
    goto if_27_end
  if_27:
    find_lex $P30, "$/"
    unless_null $P30, vivify_90
    new $P30, "Hash"
  vivify_90:
    set $P31, $P30["quote"]
    unless_null $P31, vivify_91
    new $P31, "Hash"
  vivify_91:
    set $P32, $P31["val"]
    unless_null $P32, vivify_92
    new $P32, "Undef"
  vivify_92:
    set $S33, $P32
    new $P26, 'String'
    set $P26, $S33
  if_27_end:
    $P37 = $P25."!make"($P26)
.annotate "line", 14
    .return ($P37)
  control_22:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P38, exception, "payload"
    .return ($P38)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "TOP"  :subid("14_1256847896.72898") :method :outer("11_1256847896.72898")
    .param pmc param_42
.annotate "line", 18
    new $P41, 'ExceptionHandler'
    set_addr $P41, control_40
    $P41."handle_types"(58)
    push_eh $P41
    .lex "self", self
    .lex "$/", param_42
.annotate "line", 19
    find_lex $P43, "$/"
    unless_null $P43, vivify_93
    new $P43, "Hash"
  vivify_93:
    set $P44, $P43["nibbler"]
    unless_null $P44, vivify_94
    new $P44, "Undef"
  vivify_94:
    $P45 = $P44."ast"()
    $P46 = "buildsub"($P45)
    .lex "$past", $P46
.annotate "line", 20
    find_lex $P47, "$past"
    find_lex $P48, "$/"
    $P47."node"($P48)
.annotate "line", 21
    find_lex $P49, "$/"
    find_lex $P50, "$past"
    $P51 = $P49."!make"($P50)
.annotate "line", 18
    .return ($P51)
  control_40:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P52, exception, "payload"
    .return ($P52)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "nibbler"  :subid("15_1256847896.72898") :method :outer("11_1256847896.72898")
    .param pmc param_56
    .param pmc param_57 :optional
    .param int has_param_57 :opt_flag
.annotate "line", 24
    .const 'Sub' $P90 = "17_1256847896.72898" 
    capture_lex $P90
    .const 'Sub' $P64 = "16_1256847896.72898" 
    capture_lex $P64
    new $P55, 'ExceptionHandler'
    set_addr $P55, control_54
    $P55."handle_types"(58)
    push_eh $P55
    .lex "self", self
    .lex "$/", param_56
    if has_param_57, optparam_95
    new $P58, "Undef"
    set param_57, $P58
  optparam_95:
    .lex "$key", param_57
.annotate "line", 25
    find_lex $P60, "$key"
    set $S61, $P60
    iseq $I62, $S61, "open"
    unless $I62, if_59_end
    .const 'Sub' $P64 = "16_1256847896.72898" 
    capture_lex $P64
    $P64()
  if_59_end:
.annotate "line", 35
    get_global $P72, "@MODIFIERS"
    $P72."shift"()
    new $P73, "Undef"
    .lex "$past", $P73
.annotate "line", 37
    find_lex $P75, "$/"
    unless_null $P75, vivify_98
    new $P75, "Hash"
  vivify_98:
    set $P76, $P75["termish"]
    unless_null $P76, vivify_99
    new $P76, "Undef"
  vivify_99:
    set $N77, $P76
    new $P78, "Integer"
    assign $P78, 1
    set $N79, $P78
    isgt $I80, $N77, $N79
    if $I80, if_74
.annotate "line", 44
    find_lex $P99, "$/"
    unless_null $P99, vivify_100
    new $P99, "Hash"
  vivify_100:
    set $P100, $P99["termish"]
    unless_null $P100, vivify_101
    new $P100, "ResizablePMCArray"
  vivify_101:
    set $P101, $P100[0]
    unless_null $P101, vivify_102
    new $P101, "Undef"
  vivify_102:
    $P102 = $P101."ast"()
    store_lex "$past", $P102
.annotate "line", 43
    goto if_74_end
  if_74:
.annotate "line", 38
    get_hll_global $P81, ["PAST"], "Regex"
    find_lex $P82, "$/"
    $P83 = $P81."new"("alt" :named("pasttype"), $P82 :named("node"))
    store_lex "$past", $P83
.annotate "line", 39
    find_lex $P85, "$/"
    unless_null $P85, vivify_103
    new $P85, "Hash"
  vivify_103:
    set $P86, $P85["termish"]
    unless_null $P86, vivify_104
    new $P86, "Undef"
  vivify_104:
    defined $I87, $P86
    unless $I87, for_undef_105
    iter $P84, $P86
    new $P97, 'ExceptionHandler'
    set_addr $P97, loop96_handler
    $P97."handle_types"(65, 67, 66)
    push_eh $P97
  loop96_test:
    unless $P84, loop96_done
    shift $P88, $P84
  loop96_redo:
    .const 'Sub' $P90 = "17_1256847896.72898" 
    capture_lex $P90
    $P90($P88)
  loop96_next:
    goto loop96_test
  loop96_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P98, exception, 'type'
    eq $P98, 65, loop96_next
    eq $P98, 67, loop96_redo
  loop96_done:
    pop_eh 
  for_undef_105:
  if_74_end:
.annotate "line", 46
    find_lex $P103, "$/"
    find_lex $P104, "$past"
    $P105 = $P103."!make"($P104)
.annotate "line", 24
    .return ($P105)
  control_54:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P106, exception, "payload"
    .return ($P106)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block63"  :anon :subid("16_1256847896.72898") :outer("15_1256847896.72898")
.annotate "line", 26
    get_global $P65, "@MODIFIERS"
    unless_null $P65, vivify_96
    new $P65, "ResizablePMCArray"
  vivify_96:
    set $P66, $P65[0]
    unless_null $P66, vivify_97
    new $P66, "Undef"
  vivify_97:
    .lex "%old", $P66
.annotate "line", 27

                       $P0 = find_lex '%old'
                       $P67 = clone $P0
                   
    .lex "%new", $P67
.annotate "line", 31
    get_global $P68, "@MODIFIERS"
    find_lex $P69, "%new"
    $P68."unshift"($P69)
.annotate "line", 32
    new $P70, "Exception"
    set $P70['type'], 58
    new $P71, "Integer"
    assign $P71, 1
    setattribute $P70, 'payload', $P71
    throw $P70
.annotate "line", 25
    .return ()
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block89"  :anon :subid("17_1256847896.72898") :outer("15_1256847896.72898")
    .param pmc param_91
.annotate "line", 39
    .lex "$_", param_91
.annotate "line", 40
    find_lex $P92, "$past"
    find_lex $P93, "$_"
    $P94 = $P93."ast"()
    $P95 = $P92."push"($P94)
.annotate "line", 39
    .return ($P95)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "termish"  :subid("18_1256847896.72898") :method :outer("11_1256847896.72898")
    .param pmc param_110
.annotate "line", 49
    .const 'Sub' $P121 = "19_1256847896.72898" 
    capture_lex $P121
    new $P109, 'ExceptionHandler'
    set_addr $P109, control_108
    $P109."handle_types"(58)
    push_eh $P109
    .lex "self", self
    .lex "$/", param_110
.annotate "line", 50
    get_hll_global $P111, ["PAST"], "Regex"
    find_lex $P112, "$/"
    $P113 = $P111."new"("concat" :named("pasttype"), $P112 :named("node"))
    .lex "$past", $P113
.annotate "line", 51
    new $P114, "Integer"
    assign $P114, 0
    .lex "$lastlit", $P114
.annotate "line", 52
    find_lex $P116, "$/"
    unless_null $P116, vivify_106
    new $P116, "Hash"
  vivify_106:
    set $P117, $P116["noun"]
    unless_null $P117, vivify_107
    new $P117, "Undef"
  vivify_107:
    defined $I118, $P117
    unless $I118, for_undef_108
    iter $P115, $P117
    new $P153, 'ExceptionHandler'
    set_addr $P153, loop152_handler
    $P153."handle_types"(65, 67, 66)
    push_eh $P153
  loop152_test:
    unless $P115, loop152_done
    shift $P119, $P115
  loop152_redo:
    .const 'Sub' $P121 = "19_1256847896.72898" 
    capture_lex $P121
    $P121($P119)
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
  for_undef_108:
.annotate "line", 63
    find_lex $P155, "$/"
    find_lex $P156, "$past"
    $P157 = $P155."!make"($P156)
.annotate "line", 49
    .return ($P157)
  control_108:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P158, exception, "payload"
    .return ($P158)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block120"  :anon :subid("19_1256847896.72898") :outer("18_1256847896.72898")
    .param pmc param_122
.annotate "line", 52
    .lex "$_", param_122
.annotate "line", 53
    find_lex $P123, "$_"
    $P124 = $P123."ast"()
    .lex "$ast", $P124
.annotate "line", 54
    find_lex $P127, "$ast"
    isfalse $I128, $P127
    if $I128, if_126
.annotate "line", 55
    find_lex $P133, "$lastlit"
    if $P133, if_132
    set $P131, $P133
    goto if_132_end
  if_132:
    find_lex $P134, "$ast"
    $S135 = $P134."pasttype"()
    iseq $I136, $S135, "literal"
    new $P131, 'Integer'
    set $P131, $I136
  if_132_end:
    if $P131, if_130
.annotate "line", 59
    find_lex $P143, "$past"
    find_lex $P144, "$ast"
    $P143."push"($P144)
.annotate "line", 60
    find_lex $P147, "$ast"
    $S148 = $P147."pasttype"()
    iseq $I149, $S148, "literal"
    if $I149, if_146
    new $P151, "Integer"
    assign $P151, 0
    set $P145, $P151
    goto if_146_end
  if_146:
    find_lex $P150, "$ast"
    set $P145, $P150
  if_146_end:
    store_lex "$lastlit", $P145
.annotate "line", 58
    set $P129, $P145
.annotate "line", 55
    goto if_130_end
  if_130:
.annotate "line", 56
    find_lex $P137, "$lastlit"
    unless_null $P137, vivify_109
    new $P137, "ResizablePMCArray"
  vivify_109:
    set $P138, $P137[0]
    unless_null $P138, vivify_110
    new $P138, "Undef"
  vivify_110:
    find_lex $P139, "$ast"
    unless_null $P139, vivify_111
    new $P139, "ResizablePMCArray"
  vivify_111:
    set $P140, $P139[0]
    unless_null $P140, vivify_112
    new $P140, "Undef"
  vivify_112:
    concat $P141, $P138, $P140
    find_lex $P142, "$lastlit"
    unless_null $P142, vivify_113
    new $P142, "ResizablePMCArray"
    store_lex "$lastlit", $P142
  vivify_113:
    set $P142[0], $P141
.annotate "line", 55
    set $P129, $P141
  if_130_end:
    set $P125, $P129
.annotate "line", 54
    goto if_126_end
  if_126:
  if_126_end:
.annotate "line", 52
    .return ($P125)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantified_atom"  :subid("20_1256847896.72898") :method :outer("11_1256847896.72898")
    .param pmc param_162
.annotate "line", 66
    .const 'Sub' $P170 = "21_1256847896.72898" 
    capture_lex $P170
    new $P161, 'ExceptionHandler'
    set_addr $P161, control_160
    $P161."handle_types"(58)
    push_eh $P161
    .lex "self", self
    .lex "$/", param_162
.annotate "line", 67
    find_lex $P163, "$/"
    unless_null $P163, vivify_114
    new $P163, "Hash"
  vivify_114:
    set $P164, $P163["atom"]
    unless_null $P164, vivify_115
    new $P164, "Undef"
  vivify_115:
    $P165 = $P164."ast"()
    .lex "$past", $P165
.annotate "line", 68
    find_lex $P167, "$/"
    unless_null $P167, vivify_116
    new $P167, "Hash"
  vivify_116:
    set $P168, $P167["quantifier"]
    unless_null $P168, vivify_117
    new $P168, "Undef"
  vivify_117:
    if $P168, if_166
.annotate "line", 74
    find_lex $P183, "$/"
    unless_null $P183, vivify_118
    new $P183, "Hash"
  vivify_118:
    set $P184, $P183["backmod"]
    unless_null $P184, vivify_119
    new $P184, "ResizablePMCArray"
  vivify_119:
    set $P185, $P184[0]
    unless_null $P185, vivify_120
    new $P185, "Undef"
  vivify_120:
    unless $P185, if_182_end
    find_lex $P186, "$past"
    find_lex $P187, "$/"
    unless_null $P187, vivify_121
    new $P187, "Hash"
  vivify_121:
    set $P188, $P187["backmod"]
    unless_null $P188, vivify_122
    new $P188, "ResizablePMCArray"
  vivify_122:
    set $P189, $P188[0]
    unless_null $P189, vivify_123
    new $P189, "Undef"
  vivify_123:
    "backmod"($P186, $P189)
  if_182_end:
    goto if_166_end
  if_166:
.annotate "line", 68
    .const 'Sub' $P170 = "21_1256847896.72898" 
    capture_lex $P170
    $P170()
  if_166_end:
.annotate "line", 75
    find_lex $P195, "$past"
    if $P195, if_194
    set $P193, $P195
    goto if_194_end
  if_194:
    find_lex $P196, "$past"
    $P197 = $P196."backtrack"()
    isfalse $I198, $P197
    new $P193, 'Integer'
    set $P193, $I198
  if_194_end:
    if $P193, if_192
    set $P191, $P193
    goto if_192_end
  if_192:
    get_global $P199, "@MODIFIERS"
    unless_null $P199, vivify_127
    new $P199, "ResizablePMCArray"
  vivify_127:
    set $P200, $P199[0]
    unless_null $P200, vivify_128
    new $P200, "Hash"
  vivify_128:
    set $P201, $P200["r"]
    unless_null $P201, vivify_129
    new $P201, "Undef"
  vivify_129:
    set $P191, $P201
  if_192_end:
    unless $P191, if_190_end
.annotate "line", 76
    find_lex $P202, "$past"
    $P202."backtrack"("r")
  if_190_end:
.annotate "line", 78
    find_lex $P203, "$/"
    find_lex $P204, "$past"
    $P205 = $P203."!make"($P204)
.annotate "line", 66
    .return ($P205)
  control_160:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P206, exception, "payload"
    .return ($P206)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block169"  :anon :subid("21_1256847896.72898") :outer("20_1256847896.72898")
.annotate "line", 69
    find_lex $P172, "$past"
    isfalse $I173, $P172
    unless $I173, if_171_end
    find_lex $P174, "$/"
    $P174."panic"("Can't quantify zero-width atom")
  if_171_end:
.annotate "line", 70
    find_lex $P175, "$/"
    unless_null $P175, vivify_124
    new $P175, "Hash"
  vivify_124:
    set $P176, $P175["quantifier"]
    unless_null $P176, vivify_125
    new $P176, "ResizablePMCArray"
  vivify_125:
    set $P177, $P176[0]
    unless_null $P177, vivify_126
    new $P177, "Undef"
  vivify_126:
    $P178 = $P177."ast"()
    .lex "$qast", $P178
.annotate "line", 71
    find_lex $P179, "$qast"
    find_lex $P180, "$past"
    $P179."unshift"($P180)
.annotate "line", 72
    find_lex $P181, "$qast"
    store_lex "$past", $P181
.annotate "line", 68
    .return ($P181)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "atom"  :subid("22_1256847896.72898") :method :outer("11_1256847896.72898")
    .param pmc param_210
.annotate "line", 81
    new $P209, 'ExceptionHandler'
    set_addr $P209, control_208
    $P209."handle_types"(58)
    push_eh $P209
    .lex "self", self
    .lex "$/", param_210
    new $P211, "Undef"
    .lex "$past", $P211
.annotate "line", 83
    find_lex $P213, "$/"
    unless_null $P213, vivify_130
    new $P213, "Hash"
  vivify_130:
    set $P214, $P213["metachar"]
    unless_null $P214, vivify_131
    new $P214, "Undef"
  vivify_131:
    if $P214, if_212
.annotate "line", 85
    get_hll_global $P218, ["PAST"], "Regex"
    find_lex $P219, "$/"
    set $S220, $P219
    find_lex $P221, "$/"
    $P222 = $P218."new"($S220, "literal" :named("pasttype"), $P221 :named("node"))
    store_lex "$past", $P222
.annotate "line", 86
    get_global $P224, "@MODIFIERS"
    unless_null $P224, vivify_132
    new $P224, "ResizablePMCArray"
  vivify_132:
    set $P225, $P224[0]
    unless_null $P225, vivify_133
    new $P225, "Hash"
  vivify_133:
    set $P226, $P225["i"]
    unless_null $P226, vivify_134
    new $P226, "Undef"
  vivify_134:
    unless $P226, if_223_end
    find_lex $P227, "$past"
    $P227."subtype"("ignorecase")
  if_223_end:
.annotate "line", 84
    goto if_212_end
  if_212:
.annotate "line", 83
    find_lex $P215, "$/"
    unless_null $P215, vivify_135
    new $P215, "Hash"
  vivify_135:
    set $P216, $P215["metachar"]
    unless_null $P216, vivify_136
    new $P216, "Undef"
  vivify_136:
    $P217 = $P216."ast"()
    store_lex "$past", $P217
  if_212_end:
.annotate "line", 88
    find_lex $P228, "$/"
    find_lex $P229, "$past"
    $P230 = $P228."!make"($P229)
.annotate "line", 81
    .return ($P230)
  control_208:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P231, exception, "payload"
    .return ($P231)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<*>"  :subid("23_1256847896.72898") :method :outer("11_1256847896.72898")
    .param pmc param_235
.annotate "line", 91
    new $P234, 'ExceptionHandler'
    set_addr $P234, control_233
    $P234."handle_types"(58)
    push_eh $P234
    .lex "self", self
    .lex "$/", param_235
.annotate "line", 92
    get_hll_global $P236, ["PAST"], "Regex"
    find_lex $P237, "$/"
    $P238 = $P236."new"("quant" :named("pasttype"), $P237 :named("node"))
    .lex "$past", $P238
.annotate "line", 93
    find_lex $P239, "$/"
    find_lex $P240, "$past"
    find_lex $P241, "$/"
    unless_null $P241, vivify_137
    new $P241, "Hash"
  vivify_137:
    set $P242, $P241["backmod"]
    unless_null $P242, vivify_138
    new $P242, "Undef"
  vivify_138:
    $P243 = "backmod"($P240, $P242)
    $P244 = $P239."!make"($P243)
.annotate "line", 91
    .return ($P244)
  control_233:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P245, exception, "payload"
    .return ($P245)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<+>"  :subid("24_1256847896.72898") :method :outer("11_1256847896.72898")
    .param pmc param_249
.annotate "line", 96
    new $P248, 'ExceptionHandler'
    set_addr $P248, control_247
    $P248."handle_types"(58)
    push_eh $P248
    .lex "self", self
    .lex "$/", param_249
.annotate "line", 97
    get_hll_global $P250, ["PAST"], "Regex"
    find_lex $P251, "$/"
    $P252 = $P250."new"("quant" :named("pasttype"), 1 :named("min"), $P251 :named("node"))
    .lex "$past", $P252
.annotate "line", 98
    find_lex $P253, "$/"
    find_lex $P254, "$past"
    find_lex $P255, "$/"
    unless_null $P255, vivify_139
    new $P255, "Hash"
  vivify_139:
    set $P256, $P255["backmod"]
    unless_null $P256, vivify_140
    new $P256, "Undef"
  vivify_140:
    $P257 = "backmod"($P254, $P256)
    $P258 = $P253."!make"($P257)
.annotate "line", 96
    .return ($P258)
  control_247:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P259, exception, "payload"
    .return ($P259)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<?>"  :subid("25_1256847896.72898") :method :outer("11_1256847896.72898")
    .param pmc param_263
.annotate "line", 101
    new $P262, 'ExceptionHandler'
    set_addr $P262, control_261
    $P262."handle_types"(58)
    push_eh $P262
    .lex "self", self
    .lex "$/", param_263
.annotate "line", 102
    get_hll_global $P264, ["PAST"], "Regex"
    find_lex $P265, "$/"
    $P266 = $P264."new"("quant" :named("pasttype"), 0 :named("min"), 1 :named("max"), $P265 :named("node"))
    .lex "$past", $P266
.annotate "line", 103
    find_lex $P267, "$/"
    find_lex $P268, "$past"
    find_lex $P269, "$/"
    unless_null $P269, vivify_141
    new $P269, "Hash"
  vivify_141:
    set $P270, $P269["backmod"]
    unless_null $P270, vivify_142
    new $P270, "Undef"
  vivify_142:
    $P271 = "backmod"($P268, $P270)
    $P267."!make"($P271)
.annotate "line", 104
    find_lex $P272, "$/"
    find_lex $P273, "$past"
    $P274 = $P272."!make"($P273)
.annotate "line", 101
    .return ($P274)
  control_261:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P275, exception, "payload"
    .return ($P275)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "quantifier:sym<**>"  :subid("26_1256847896.72898") :method :outer("11_1256847896.72898")
    .param pmc param_279
.annotate "line", 107
    new $P278, 'ExceptionHandler'
    set_addr $P278, control_277
    $P278."handle_types"(58)
    push_eh $P278
    .lex "self", self
    .lex "$/", param_279
    new $P280, "Undef"
    .lex "$past", $P280
.annotate "line", 109
    find_lex $P282, "$/"
    unless_null $P282, vivify_143
    new $P282, "Hash"
  vivify_143:
    set $P283, $P282["quantified_atom"]
    unless_null $P283, vivify_144
    new $P283, "Undef"
  vivify_144:
    if $P283, if_281
.annotate "line", 114
    get_hll_global $P290, ["PAST"], "Regex"
    find_lex $P291, "$/"
    unless_null $P291, vivify_145
    new $P291, "Hash"
  vivify_145:
    set $P292, $P291["min"]
    unless_null $P292, vivify_146
    new $P292, "Undef"
  vivify_146:
    set $N293, $P292
    find_lex $P294, "$/"
    $P295 = $P290."new"("quant" :named("pasttype"), $N293 :named("min"), $P294 :named("node"))
    store_lex "$past", $P295
.annotate "line", 115
    find_lex $P297, "$/"
    unless_null $P297, vivify_147
    new $P297, "Hash"
  vivify_147:
    set $P298, $P297["max"]
    unless_null $P298, vivify_148
    new $P298, "Undef"
  vivify_148:
    isfalse $I299, $P298
    if $I299, if_296
.annotate "line", 116
    find_lex $P305, "$/"
    unless_null $P305, vivify_149
    new $P305, "Hash"
  vivify_149:
    set $P306, $P305["max"]
    unless_null $P306, vivify_150
    new $P306, "ResizablePMCArray"
  vivify_150:
    set $P307, $P306[0]
    unless_null $P307, vivify_151
    new $P307, "Undef"
  vivify_151:
    set $S308, $P307
    isne $I309, $S308, "*"
    unless $I309, if_304_end
    find_lex $P310, "$past"
    find_lex $P311, "$/"
    unless_null $P311, vivify_152
    new $P311, "Hash"
  vivify_152:
    set $P312, $P311["max"]
    unless_null $P312, vivify_153
    new $P312, "ResizablePMCArray"
  vivify_153:
    set $P313, $P312[0]
    unless_null $P313, vivify_154
    new $P313, "Undef"
  vivify_154:
    set $N314, $P313
    $P310."max"($N314)
  if_304_end:
    goto if_296_end
  if_296:
.annotate "line", 115
    find_lex $P300, "$past"
    find_lex $P301, "$/"
    unless_null $P301, vivify_155
    new $P301, "Hash"
  vivify_155:
    set $P302, $P301["min"]
    unless_null $P302, vivify_156
    new $P302, "Undef"
  vivify_156:
    set $N303, $P302
    $P300."max"($N303)
  if_296_end:
.annotate "line", 113
    goto if_281_end
  if_281:
.annotate "line", 110
    get_hll_global $P284, ["PAST"], "Regex"
.annotate "line", 111
    find_lex $P285, "$/"
    unless_null $P285, vivify_157
    new $P285, "Hash"
  vivify_157:
    set $P286, $P285["quantified_atom"]
    unless_null $P286, vivify_158
    new $P286, "Undef"
  vivify_158:
    $P287 = $P286."ast"()
    find_lex $P288, "$/"
    $P289 = $P284."new"("quant" :named("pasttype"), 1 :named("min"), $P287 :named("sep"), $P288 :named("node"))
.annotate "line", 110
    store_lex "$past", $P289
  if_281_end:
.annotate "line", 118
    find_lex $P315, "$/"
    find_lex $P316, "$past"
    find_lex $P317, "$/"
    unless_null $P317, vivify_159
    new $P317, "Hash"
  vivify_159:
    set $P318, $P317["backmod"]
    unless_null $P318, vivify_160
    new $P318, "Undef"
  vivify_160:
    $P319 = "backmod"($P316, $P318)
    $P320 = $P315."!make"($P319)
.annotate "line", 107
    .return ($P320)
  control_277:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P321, exception, "payload"
    .return ($P321)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<ws>"  :subid("27_1256847896.72898") :method :outer("11_1256847896.72898")
    .param pmc param_325
.annotate "line", 121
    new $P324, 'ExceptionHandler'
    set_addr $P324, control_323
    $P324."handle_types"(58)
    push_eh $P324
    .lex "self", self
    .lex "$/", param_325
.annotate "line", 123
    get_global $P328, "@MODIFIERS"
    unless_null $P328, vivify_161
    new $P328, "ResizablePMCArray"
  vivify_161:
    set $P329, $P328[0]
    unless_null $P329, vivify_162
    new $P329, "Hash"
  vivify_162:
    set $P330, $P329["s"]
    unless_null $P330, vivify_163
    new $P330, "Undef"
  vivify_163:
    if $P330, if_327
    new $P334, "Integer"
    assign $P334, 0
    set $P326, $P334
    goto if_327_end
  if_327:
    get_hll_global $P331, ["PAST"], "Regex"
    find_lex $P332, "$/"
    $P333 = $P331."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"), $P332 :named("node"))
    set $P326, $P333
  if_327_end:
    .lex "$past", $P326
.annotate "line", 126
    find_lex $P335, "$/"
    find_lex $P336, "$past"
    $P337 = $P335."!make"($P336)
.annotate "line", 121
    .return ($P337)
  control_323:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P338, exception, "payload"
    .return ($P338)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<[ ]>"  :subid("28_1256847896.72898") :method :outer("11_1256847896.72898")
    .param pmc param_342
.annotate "line", 130
    new $P341, 'ExceptionHandler'
    set_addr $P341, control_340
    $P341."handle_types"(58)
    push_eh $P341
    .lex "self", self
    .lex "$/", param_342
.annotate "line", 131
    find_lex $P343, "$/"
    find_lex $P344, "$/"
    unless_null $P344, vivify_164
    new $P344, "Hash"
  vivify_164:
    set $P345, $P344["nibbler"]
    unless_null $P345, vivify_165
    new $P345, "Undef"
  vivify_165:
    $P346 = $P345."ast"()
    $P347 = $P343."!make"($P346)
.annotate "line", 130
    .return ($P347)
  control_340:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P348, exception, "payload"
    .return ($P348)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<( )>"  :subid("29_1256847896.72898") :method :outer("11_1256847896.72898")
    .param pmc param_352
.annotate "line", 134
    new $P351, 'ExceptionHandler'
    set_addr $P351, control_350
    $P351."handle_types"(58)
    push_eh $P351
    .lex "self", self
    .lex "$/", param_352
.annotate "line", 135
    find_lex $P353, "$/"
    unless_null $P353, vivify_166
    new $P353, "Hash"
  vivify_166:
    set $P354, $P353["nibbler"]
    unless_null $P354, vivify_167
    new $P354, "Undef"
  vivify_167:
    $P355 = $P354."ast"()
    $P356 = "buildsub"($P355)
    .lex "$subpast", $P356
.annotate "line", 136
    get_hll_global $P357, ["PAST"], "Regex"
    find_lex $P358, "$subpast"
    find_lex $P359, "$/"
    $P360 = $P357."new"($P358, "subrule" :named("pasttype"), "capture" :named("subtype"), $P359 :named("node"))
    .lex "$past", $P360
.annotate "line", 138
    find_lex $P361, "$/"
    find_lex $P362, "$past"
    $P363 = $P361."!make"($P362)
.annotate "line", 134
    .return ($P363)
  control_350:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P364, exception, "payload"
    .return ($P364)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<'>"  :subid("30_1256847896.72898") :method :outer("11_1256847896.72898")
    .param pmc param_368
.annotate "line", 141
    new $P367, 'ExceptionHandler'
    set_addr $P367, control_366
    $P367."handle_types"(58)
    push_eh $P367
    .lex "self", self
    .lex "$/", param_368
.annotate "line", 142
    get_hll_global $P369, ["PAST"], "Regex"
    find_lex $P370, "$/"
    unless_null $P370, vivify_168
    new $P370, "Hash"
  vivify_168:
    set $P371, $P370["quote"]
    unless_null $P371, vivify_169
    new $P371, "Hash"
  vivify_169:
    set $P372, $P371["val"]
    unless_null $P372, vivify_170
    new $P372, "Undef"
  vivify_170:
    set $S373, $P372
    find_lex $P374, "$/"
    $P375 = $P369."new"($S373, "literal" :named("pasttype"), $P374 :named("node"))
    .lex "$past", $P375
.annotate "line", 143
    find_lex $P376, "$/"
    find_lex $P377, "$past"
    $P378 = $P376."!make"($P377)
.annotate "line", 141
    .return ($P378)
  control_366:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P379, exception, "payload"
    .return ($P379)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<.>"  :subid("31_1256847896.72898") :method :outer("11_1256847896.72898")
    .param pmc param_383
.annotate "line", 146
    new $P382, 'ExceptionHandler'
    set_addr $P382, control_381
    $P382."handle_types"(58)
    push_eh $P382
    .lex "self", self
    .lex "$/", param_383
.annotate "line", 147
    get_hll_global $P384, ["PAST"], "Regex"
    find_lex $P385, "$/"
    $P386 = $P384."new"("charclass" :named("pasttype"), "." :named("subtype"), $P385 :named("node"))
    .lex "$past", $P386
.annotate "line", 148
    find_lex $P387, "$/"
    find_lex $P388, "$past"
    $P389 = $P387."!make"($P388)
.annotate "line", 146
    .return ($P389)
  control_381:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P390, exception, "payload"
    .return ($P390)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<^>"  :subid("32_1256847896.72898") :method :outer("11_1256847896.72898")
    .param pmc param_394
.annotate "line", 151
    new $P393, 'ExceptionHandler'
    set_addr $P393, control_392
    $P393."handle_types"(58)
    push_eh $P393
    .lex "self", self
    .lex "$/", param_394
.annotate "line", 152
    get_hll_global $P395, ["PAST"], "Regex"
    find_lex $P396, "$/"
    $P397 = $P395."new"("anchor" :named("pasttype"), "bos" :named("subtype"), $P396 :named("node"))
    .lex "$past", $P397
.annotate "line", 153
    find_lex $P398, "$/"
    find_lex $P399, "$past"
    $P400 = $P398."!make"($P399)
.annotate "line", 151
    .return ($P400)
  control_392:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P401, exception, "payload"
    .return ($P401)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<^^>"  :subid("33_1256847896.72898") :method :outer("11_1256847896.72898")
    .param pmc param_405
.annotate "line", 156
    new $P404, 'ExceptionHandler'
    set_addr $P404, control_403
    $P404."handle_types"(58)
    push_eh $P404
    .lex "self", self
    .lex "$/", param_405
.annotate "line", 157
    get_hll_global $P406, ["PAST"], "Regex"
    find_lex $P407, "$/"
    $P408 = $P406."new"("anchor" :named("pasttype"), "bol" :named("subtype"), $P407 :named("node"))
    .lex "$past", $P408
.annotate "line", 158
    find_lex $P409, "$/"
    find_lex $P410, "$past"
    $P411 = $P409."!make"($P410)
.annotate "line", 156
    .return ($P411)
  control_403:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P412, exception, "payload"
    .return ($P412)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<$>"  :subid("34_1256847896.72898") :method :outer("11_1256847896.72898")
    .param pmc param_416
.annotate "line", 161
    new $P415, 'ExceptionHandler'
    set_addr $P415, control_414
    $P415."handle_types"(58)
    push_eh $P415
    .lex "self", self
    .lex "$/", param_416
.annotate "line", 162
    get_hll_global $P417, ["PAST"], "Regex"
    find_lex $P418, "$/"
    $P419 = $P417."new"("anchor" :named("pasttype"), "eos" :named("subtype"), $P418 :named("node"))
    .lex "$past", $P419
.annotate "line", 163
    find_lex $P420, "$/"
    find_lex $P421, "$past"
    $P422 = $P420."!make"($P421)
.annotate "line", 161
    .return ($P422)
  control_414:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P423, exception, "payload"
    .return ($P423)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<$$>"  :subid("35_1256847896.72898") :method :outer("11_1256847896.72898")
    .param pmc param_427
.annotate "line", 166
    new $P426, 'ExceptionHandler'
    set_addr $P426, control_425
    $P426."handle_types"(58)
    push_eh $P426
    .lex "self", self
    .lex "$/", param_427
.annotate "line", 167
    get_hll_global $P428, ["PAST"], "Regex"
    find_lex $P429, "$/"
    $P430 = $P428."new"("anchor" :named("pasttype"), "eol" :named("subtype"), $P429 :named("node"))
    .lex "$past", $P430
.annotate "line", 168
    find_lex $P431, "$/"
    find_lex $P432, "$past"
    $P433 = $P431."!make"($P432)
.annotate "line", 166
    .return ($P433)
  control_425:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P434, exception, "payload"
    .return ($P434)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<:::>"  :subid("36_1256847896.72898") :method :outer("11_1256847896.72898")
    .param pmc param_438
.annotate "line", 171
    new $P437, 'ExceptionHandler'
    set_addr $P437, control_436
    $P437."handle_types"(58)
    push_eh $P437
    .lex "self", self
    .lex "$/", param_438
.annotate "line", 172
    get_hll_global $P439, ["PAST"], "Regex"
    find_lex $P440, "$/"
    $P441 = $P439."new"("cut" :named("pasttype"), $P440 :named("node"))
    .lex "$past", $P441
.annotate "line", 173
    find_lex $P442, "$/"
    find_lex $P443, "$past"
    $P444 = $P442."!make"($P443)
.annotate "line", 171
    .return ($P444)
  control_436:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P445, exception, "payload"
    .return ($P445)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<lwb>"  :subid("37_1256847896.72898") :method :outer("11_1256847896.72898")
    .param pmc param_449
.annotate "line", 176
    new $P448, 'ExceptionHandler'
    set_addr $P448, control_447
    $P448."handle_types"(58)
    push_eh $P448
    .lex "self", self
    .lex "$/", param_449
.annotate "line", 177
    get_hll_global $P450, ["PAST"], "Regex"
    find_lex $P451, "$/"
    $P452 = $P450."new"("anchor" :named("pasttype"), "lwb" :named("subtype"), $P451 :named("node"))
    .lex "$past", $P452
.annotate "line", 178
    find_lex $P453, "$/"
    find_lex $P454, "$past"
    $P455 = $P453."!make"($P454)
.annotate "line", 176
    .return ($P455)
  control_447:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P456, exception, "payload"
    .return ($P456)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<rwb>"  :subid("38_1256847896.72898") :method :outer("11_1256847896.72898")
    .param pmc param_460
.annotate "line", 181
    new $P459, 'ExceptionHandler'
    set_addr $P459, control_458
    $P459."handle_types"(58)
    push_eh $P459
    .lex "self", self
    .lex "$/", param_460
.annotate "line", 182
    get_hll_global $P461, ["PAST"], "Regex"
    find_lex $P462, "$/"
    $P463 = $P461."new"("anchor" :named("pasttype"), "rwb" :named("subtype"), $P462 :named("node"))
    .lex "$past", $P463
.annotate "line", 183
    find_lex $P464, "$/"
    find_lex $P465, "$past"
    $P466 = $P464."!make"($P465)
.annotate "line", 181
    .return ($P466)
  control_458:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P467, exception, "payload"
    .return ($P467)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<bs>"  :subid("39_1256847896.72898") :method :outer("11_1256847896.72898")
    .param pmc param_471
.annotate "line", 186
    new $P470, 'ExceptionHandler'
    set_addr $P470, control_469
    $P470."handle_types"(58)
    push_eh $P470
    .lex "self", self
    .lex "$/", param_471
.annotate "line", 187
    find_lex $P472, "$/"
    find_lex $P473, "$/"
    unless_null $P473, vivify_171
    new $P473, "Hash"
  vivify_171:
    set $P474, $P473["backslash"]
    unless_null $P474, vivify_172
    new $P474, "Undef"
  vivify_172:
    $P475 = $P474."ast"()
    $P476 = $P472."!make"($P475)
.annotate "line", 186
    .return ($P476)
  control_469:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P477, exception, "payload"
    .return ($P477)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<mod>"  :subid("40_1256847896.72898") :method :outer("11_1256847896.72898")
    .param pmc param_481
.annotate "line", 190
    new $P480, 'ExceptionHandler'
    set_addr $P480, control_479
    $P480."handle_types"(58)
    push_eh $P480
    .lex "self", self
    .lex "$/", param_481
.annotate "line", 191
    find_lex $P482, "$/"
    find_lex $P483, "$/"
    unless_null $P483, vivify_173
    new $P483, "Hash"
  vivify_173:
    set $P484, $P483["mod_internal"]
    unless_null $P484, vivify_174
    new $P484, "Undef"
  vivify_174:
    $P485 = $P484."ast"()
    $P486 = $P482."!make"($P485)
.annotate "line", 190
    .return ($P486)
  control_479:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P487, exception, "payload"
    .return ($P487)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<assert>"  :subid("41_1256847896.72898") :method :outer("11_1256847896.72898")
    .param pmc param_491
.annotate "line", 194
    new $P490, 'ExceptionHandler'
    set_addr $P490, control_489
    $P490."handle_types"(58)
    push_eh $P490
    .lex "self", self
    .lex "$/", param_491
.annotate "line", 195
    find_lex $P492, "$/"
    find_lex $P493, "$/"
    unless_null $P493, vivify_175
    new $P493, "Hash"
  vivify_175:
    set $P494, $P493["assertion"]
    unless_null $P494, vivify_176
    new $P494, "Undef"
  vivify_176:
    $P495 = $P494."ast"()
    $P496 = $P492."!make"($P495)
.annotate "line", 194
    .return ($P496)
  control_489:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P497, exception, "payload"
    .return ($P497)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<~>"  :subid("42_1256847896.72898") :method :outer("11_1256847896.72898")
    .param pmc param_501
.annotate "line", 198
    new $P500, 'ExceptionHandler'
    set_addr $P500, control_499
    $P500."handle_types"(58)
    push_eh $P500
    .lex "self", self
    .lex "$/", param_501
.annotate "line", 199
    find_lex $P502, "$/"
    get_hll_global $P503, ["PAST"], "Regex"
.annotate "line", 200
    find_lex $P504, "$/"
    unless_null $P504, vivify_177
    new $P504, "Hash"
  vivify_177:
    set $P505, $P504["EXPR"]
    unless_null $P505, vivify_178
    new $P505, "Undef"
  vivify_178:
    $P506 = $P505."ast"()
.annotate "line", 201
    get_hll_global $P507, ["PAST"], "Regex"
.annotate "line", 202
    find_lex $P508, "$/"
    unless_null $P508, vivify_179
    new $P508, "Hash"
  vivify_179:
    set $P509, $P508["GOAL"]
    unless_null $P509, vivify_180
    new $P509, "Undef"
  vivify_180:
    $P510 = $P509."ast"()
.annotate "line", 203
    get_hll_global $P511, ["PAST"], "Regex"
    find_lex $P512, "$/"
    unless_null $P512, vivify_181
    new $P512, "Hash"
  vivify_181:
    set $P513, $P512["GOAL"]
    unless_null $P513, vivify_182
    new $P513, "Undef"
  vivify_182:
    set $S514, $P513
    $P515 = $P511."new"("FAILGOAL", $S514, "subrule" :named("pasttype"), "method" :named("subtype"))
    $P516 = $P507."new"($P510, $P515, "alt" :named("pasttype"))
.annotate "line", 201
    $P517 = $P503."new"($P506, $P516, "concat" :named("pasttype"))
.annotate "line", 199
    $P518 = $P502."!make"($P517)
.annotate "line", 198
    .return ($P518)
  control_499:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P519, exception, "payload"
    .return ($P519)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<{*}>"  :subid("43_1256847896.72898") :method :outer("11_1256847896.72898")
    .param pmc param_523
.annotate "line", 211
    new $P522, 'ExceptionHandler'
    set_addr $P522, control_521
    $P522."handle_types"(58)
    push_eh $P522
    .lex "self", self
    .lex "$/", param_523
.annotate "line", 213
    find_lex $P526, "$/"
    unless_null $P526, vivify_183
    new $P526, "Hash"
  vivify_183:
    set $P527, $P526["key"]
    unless_null $P527, vivify_184
    new $P527, "Undef"
  vivify_184:
    if $P527, if_525
    new $P535, "Integer"
    assign $P535, 0
    set $P524, $P535
    goto if_525_end
  if_525:
    get_hll_global $P528, ["PAST"], "Regex"
    find_lex $P529, "$/"
    unless_null $P529, vivify_185
    new $P529, "Hash"
  vivify_185:
    set $P530, $P529["key"]
    unless_null $P530, vivify_186
    new $P530, "ResizablePMCArray"
  vivify_186:
    set $P531, $P530[0]
    unless_null $P531, vivify_187
    new $P531, "Undef"
  vivify_187:
    set $S532, $P531
    find_lex $P533, "$/"
    $P534 = $P528."new"($S532, "reduce" :named("pasttype"), $P533 :named("node"))
    set $P524, $P534
  if_525_end:
    .lex "$past", $P524
.annotate "line", 215
    find_lex $P536, "$/"
    find_lex $P537, "$past"
    $P538 = $P536."!make"($P537)
.annotate "line", 211
    .return ($P538)
  control_521:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P539, exception, "payload"
    .return ($P539)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<var>"  :subid("44_1256847896.72898") :method :outer("11_1256847896.72898")
    .param pmc param_543
.annotate "line", 218
    new $P542, 'ExceptionHandler'
    set_addr $P542, control_541
    $P542."handle_types"(58)
    push_eh $P542
    .lex "self", self
    .lex "$/", param_543
    new $P544, "Undef"
    .lex "$past", $P544
.annotate "line", 220
    find_lex $P547, "$/"
    unless_null $P547, vivify_188
    new $P547, "Hash"
  vivify_188:
    set $P548, $P547["pos"]
    unless_null $P548, vivify_189
    new $P548, "Undef"
  vivify_189:
    if $P548, if_546
    find_lex $P552, "$/"
    unless_null $P552, vivify_190
    new $P552, "Hash"
  vivify_190:
    set $P553, $P552["name"]
    unless_null $P553, vivify_191
    new $P553, "Undef"
  vivify_191:
    set $S554, $P553
    new $P545, 'String'
    set $P545, $S554
    goto if_546_end
  if_546:
    find_lex $P549, "$/"
    unless_null $P549, vivify_192
    new $P549, "Hash"
  vivify_192:
    set $P550, $P549["pos"]
    unless_null $P550, vivify_193
    new $P550, "Undef"
  vivify_193:
    set $N551, $P550
    new $P545, 'Float'
    set $P545, $N551
  if_546_end:
    .lex "$name", $P545
.annotate "line", 221
    find_lex $P556, "$/"
    unless_null $P556, vivify_194
    new $P556, "Hash"
  vivify_194:
    set $P557, $P556["quantified_atom"]
    unless_null $P557, vivify_195
    new $P557, "Undef"
  vivify_195:
    if $P557, if_555
.annotate "line", 232
    get_hll_global $P586, ["PAST"], "Regex"
    find_lex $P587, "$name"
    find_lex $P588, "$/"
    $P589 = $P586."new"("!BACKREF", $P587, "subrule" :named("pasttype"), "method" :named("subtype"), $P588 :named("node"))
    store_lex "$past", $P589
.annotate "line", 231
    goto if_555_end
  if_555:
.annotate "line", 222
    find_lex $P558, "$/"
    unless_null $P558, vivify_196
    new $P558, "Hash"
  vivify_196:
    set $P559, $P558["quantified_atom"]
    unless_null $P559, vivify_197
    new $P559, "ResizablePMCArray"
  vivify_197:
    set $P560, $P559[0]
    unless_null $P560, vivify_198
    new $P560, "Undef"
  vivify_198:
    $P561 = $P560."ast"()
    store_lex "$past", $P561
.annotate "line", 223
    find_lex $P565, "$past"
    $S566 = $P565."pasttype"()
    iseq $I567, $S566, "quant"
    if $I567, if_564
    new $P563, 'Integer'
    set $P563, $I567
    goto if_564_end
  if_564:
    find_lex $P568, "$past"
    unless_null $P568, vivify_199
    new $P568, "ResizablePMCArray"
  vivify_199:
    set $P569, $P568[0]
    unless_null $P569, vivify_200
    new $P569, "Undef"
  vivify_200:
    $S570 = $P569."pasttype"()
    iseq $I571, $S570, "subrule"
    new $P563, 'Integer'
    set $P563, $I571
  if_564_end:
    if $P563, if_562
.annotate "line", 226
    find_lex $P576, "$past"
    $S577 = $P576."pasttype"()
    iseq $I578, $S577, "subrule"
    if $I578, if_575
.annotate "line", 228
    get_hll_global $P581, ["PAST"], "Regex"
    find_lex $P582, "$past"
    find_lex $P583, "$name"
    find_lex $P584, "$/"
    $P585 = $P581."new"($P582, $P583 :named("name"), "subcapture" :named("pasttype"), $P584 :named("node"))
    store_lex "$past", $P585
.annotate "line", 227
    goto if_575_end
  if_575:
.annotate "line", 226
    find_lex $P579, "$past"
    find_lex $P580, "$name"
    "subrule_alias"($P579, $P580)
  if_575_end:
    goto if_562_end
  if_562:
.annotate "line", 224
    find_lex $P572, "$past"
    unless_null $P572, vivify_201
    new $P572, "ResizablePMCArray"
  vivify_201:
    set $P573, $P572[0]
    unless_null $P573, vivify_202
    new $P573, "Undef"
  vivify_202:
    find_lex $P574, "$name"
    "subrule_alias"($P573, $P574)
  if_562_end:
  if_555_end:
.annotate "line", 235
    find_lex $P590, "$/"
    find_lex $P591, "$past"
    $P592 = $P590."!make"($P591)
.annotate "line", 218
    .return ($P592)
  control_541:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P593, exception, "payload"
    .return ($P593)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "metachar:sym<PIR>"  :subid("45_1256847896.72898") :method :outer("11_1256847896.72898")
    .param pmc param_597
.annotate "line", 238
    new $P596, 'ExceptionHandler'
    set_addr $P596, control_595
    $P596."handle_types"(58)
    push_eh $P596
    .lex "self", self
    .lex "$/", param_597
.annotate "line", 239
    find_lex $P598, "$/"
    get_hll_global $P599, ["PAST"], "Regex"
.annotate "line", 240
    get_hll_global $P600, ["PAST"], "Op"
    find_lex $P601, "$/"
    unless_null $P601, vivify_203
    new $P601, "Hash"
  vivify_203:
    set $P602, $P601["pir"]
    unless_null $P602, vivify_204
    new $P602, "Undef"
  vivify_204:
    set $S603, $P602
    $P604 = $P600."new"($S603 :named("inline"), "inline" :named("pasttype"))
    find_lex $P605, "$/"
    $P606 = $P599."new"($P604, "pastnode" :named("pasttype"), $P605 :named("node"))
.annotate "line", 239
    $P607 = $P598."!make"($P606)
.annotate "line", 238
    .return ($P607)
  control_595:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P608, exception, "payload"
    .return ($P608)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<w>"  :subid("46_1256847896.72898") :method :outer("11_1256847896.72898")
    .param pmc param_612
.annotate "line", 246
    new $P611, 'ExceptionHandler'
    set_addr $P611, control_610
    $P611."handle_types"(58)
    push_eh $P611
    .lex "self", self
    .lex "$/", param_612
.annotate "line", 247
    find_lex $P615, "$/"
    unless_null $P615, vivify_205
    new $P615, "Hash"
  vivify_205:
    set $P616, $P615["sym"]
    unless_null $P616, vivify_206
    new $P616, "Undef"
  vivify_206:
    set $S617, $P616
    iseq $I618, $S617, "n"
    if $I618, if_614
    find_lex $P620, "$/"
    unless_null $P620, vivify_207
    new $P620, "Hash"
  vivify_207:
    set $P621, $P620["sym"]
    unless_null $P621, vivify_208
    new $P621, "Undef"
  vivify_208:
    set $S622, $P621
    new $P613, 'String'
    set $P613, $S622
    goto if_614_end
  if_614:
    new $P619, "String"
    assign $P619, "nl"
    set $P613, $P619
  if_614_end:
    .lex "$subtype", $P613
.annotate "line", 248
    get_hll_global $P623, ["PAST"], "Regex"
    find_lex $P624, "$subtype"
    find_lex $P625, "$/"
    $P626 = $P623."new"("charclass" :named("pasttype"), $P624 :named("subtype"), $P625 :named("node"))
    .lex "$past", $P626
.annotate "line", 249
    find_lex $P627, "$/"
    find_lex $P628, "$past"
    $P629 = $P627."!make"($P628)
.annotate "line", 246
    .return ($P629)
  control_610:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P630, exception, "payload"
    .return ($P630)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<b>"  :subid("47_1256847896.72898") :method :outer("11_1256847896.72898")
    .param pmc param_634
.annotate "line", 252
    new $P633, 'ExceptionHandler'
    set_addr $P633, control_632
    $P633."handle_types"(58)
    push_eh $P633
    .lex "self", self
    .lex "$/", param_634
.annotate "line", 253
    get_hll_global $P635, ["PAST"], "Regex"
.annotate "line", 254
    find_lex $P636, "$/"
    unless_null $P636, vivify_209
    new $P636, "Hash"
  vivify_209:
    set $P637, $P636["sym"]
    unless_null $P637, vivify_210
    new $P637, "Undef"
  vivify_210:
    set $S638, $P637
    iseq $I639, $S638, "B"
    find_lex $P640, "$/"
    $P641 = $P635."new"("\b", "enumcharlist" :named("pasttype"), $I639 :named("negate"), $P640 :named("node"))
.annotate "line", 253
    .lex "$past", $P641
.annotate "line", 255
    find_lex $P642, "$/"
    find_lex $P643, "$past"
    $P644 = $P642."!make"($P643)
.annotate "line", 252
    .return ($P644)
  control_632:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P645, exception, "payload"
    .return ($P645)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<e>"  :subid("48_1256847896.72898") :method :outer("11_1256847896.72898")
    .param pmc param_649
.annotate "line", 258
    new $P648, 'ExceptionHandler'
    set_addr $P648, control_647
    $P648."handle_types"(58)
    push_eh $P648
    .lex "self", self
    .lex "$/", param_649
.annotate "line", 259
    get_hll_global $P650, ["PAST"], "Regex"
.annotate "line", 260
    find_lex $P651, "$/"
    unless_null $P651, vivify_211
    new $P651, "Hash"
  vivify_211:
    set $P652, $P651["sym"]
    unless_null $P652, vivify_212
    new $P652, "Undef"
  vivify_212:
    set $S653, $P652
    iseq $I654, $S653, "E"
    find_lex $P655, "$/"
    $P656 = $P650."new"("\\e", "enumcharlist" :named("pasttype"), $I654 :named("negate"), $P655 :named("node"))
.annotate "line", 259
    .lex "$past", $P656
.annotate "line", 261
    find_lex $P657, "$/"
    find_lex $P658, "$past"
    $P659 = $P657."!make"($P658)
.annotate "line", 258
    .return ($P659)
  control_647:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P660, exception, "payload"
    .return ($P660)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<f>"  :subid("49_1256847896.72898") :method :outer("11_1256847896.72898")
    .param pmc param_664
.annotate "line", 264
    new $P663, 'ExceptionHandler'
    set_addr $P663, control_662
    $P663."handle_types"(58)
    push_eh $P663
    .lex "self", self
    .lex "$/", param_664
.annotate "line", 265
    get_hll_global $P665, ["PAST"], "Regex"
.annotate "line", 266
    find_lex $P666, "$/"
    unless_null $P666, vivify_213
    new $P666, "Hash"
  vivify_213:
    set $P667, $P666["sym"]
    unless_null $P667, vivify_214
    new $P667, "Undef"
  vivify_214:
    set $S668, $P667
    iseq $I669, $S668, "F"
    find_lex $P670, "$/"
    $P671 = $P665."new"("\\f", "enumcharlist" :named("pasttype"), $I669 :named("negate"), $P670 :named("node"))
.annotate "line", 265
    .lex "$past", $P671
.annotate "line", 267
    find_lex $P672, "$/"
    find_lex $P673, "$past"
    $P674 = $P672."!make"($P673)
.annotate "line", 264
    .return ($P674)
  control_662:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P675, exception, "payload"
    .return ($P675)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<h>"  :subid("50_1256847896.72898") :method :outer("11_1256847896.72898")
    .param pmc param_679
.annotate "line", 270
    new $P678, 'ExceptionHandler'
    set_addr $P678, control_677
    $P678."handle_types"(58)
    push_eh $P678
    .lex "self", self
    .lex "$/", param_679
.annotate "line", 271
    get_hll_global $P680, ["PAST"], "Regex"
.annotate "line", 272
    find_lex $P681, "$/"
    unless_null $P681, vivify_215
    new $P681, "Hash"
  vivify_215:
    set $P682, $P681["sym"]
    unless_null $P682, vivify_216
    new $P682, "Undef"
  vivify_216:
    set $S683, $P682
    iseq $I684, $S683, "H"
    find_lex $P685, "$/"
    $P686 = $P680."new"(unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", "enumcharlist" :named("pasttype"), $I684 :named("negate"), $P685 :named("node"))
.annotate "line", 271
    .lex "$past", $P686
.annotate "line", 273
    find_lex $P687, "$/"
    find_lex $P688, "$past"
    $P689 = $P687."!make"($P688)
.annotate "line", 270
    .return ($P689)
  control_677:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P690, exception, "payload"
    .return ($P690)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<r>"  :subid("51_1256847896.72898") :method :outer("11_1256847896.72898")
    .param pmc param_694
.annotate "line", 276
    new $P693, 'ExceptionHandler'
    set_addr $P693, control_692
    $P693."handle_types"(58)
    push_eh $P693
    .lex "self", self
    .lex "$/", param_694
.annotate "line", 277
    get_hll_global $P695, ["PAST"], "Regex"
.annotate "line", 278
    find_lex $P696, "$/"
    unless_null $P696, vivify_217
    new $P696, "Hash"
  vivify_217:
    set $P697, $P696["sym"]
    unless_null $P697, vivify_218
    new $P697, "Undef"
  vivify_218:
    set $S698, $P697
    iseq $I699, $S698, "R"
    find_lex $P700, "$/"
    $P701 = $P695."new"("\r", "enumcharlist" :named("pasttype"), $I699 :named("negate"), $P700 :named("node"))
.annotate "line", 277
    .lex "$past", $P701
.annotate "line", 279
    find_lex $P702, "$/"
    find_lex $P703, "$past"
    $P704 = $P702."!make"($P703)
.annotate "line", 276
    .return ($P704)
  control_692:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P705, exception, "payload"
    .return ($P705)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<t>"  :subid("52_1256847896.72898") :method :outer("11_1256847896.72898")
    .param pmc param_709
.annotate "line", 282
    new $P708, 'ExceptionHandler'
    set_addr $P708, control_707
    $P708."handle_types"(58)
    push_eh $P708
    .lex "self", self
    .lex "$/", param_709
.annotate "line", 283
    get_hll_global $P710, ["PAST"], "Regex"
.annotate "line", 284
    find_lex $P711, "$/"
    unless_null $P711, vivify_219
    new $P711, "Hash"
  vivify_219:
    set $P712, $P711["sym"]
    unless_null $P712, vivify_220
    new $P712, "Undef"
  vivify_220:
    set $S713, $P712
    iseq $I714, $S713, "T"
    find_lex $P715, "$/"
    $P716 = $P710."new"("\t", "enumcharlist" :named("pasttype"), $I714 :named("negate"), $P715 :named("node"))
.annotate "line", 283
    .lex "$past", $P716
.annotate "line", 285
    find_lex $P717, "$/"
    find_lex $P718, "$past"
    $P719 = $P717."!make"($P718)
.annotate "line", 282
    .return ($P719)
  control_707:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P720, exception, "payload"
    .return ($P720)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<v>"  :subid("53_1256847896.72898") :method :outer("11_1256847896.72898")
    .param pmc param_724
.annotate "line", 288
    new $P723, 'ExceptionHandler'
    set_addr $P723, control_722
    $P723."handle_types"(58)
    push_eh $P723
    .lex "self", self
    .lex "$/", param_724
.annotate "line", 289
    get_hll_global $P725, ["PAST"], "Regex"
.annotate "line", 290
    find_lex $P726, "$/"
    unless_null $P726, vivify_221
    new $P726, "Hash"
  vivify_221:
    set $P727, $P726["sym"]
    unless_null $P727, vivify_222
    new $P727, "Undef"
  vivify_222:
    set $S728, $P727
    iseq $I729, $S728, "V"
    find_lex $P730, "$/"
    $P731 = $P725."new"(unicode:"\n\x{b}\f\r\x{85}\u2028\u2029", "enumcharlist" :named("pasttype"), $I729 :named("negate"), $P730 :named("node"))
.annotate "line", 289
    .lex "$past", $P731
.annotate "line", 291
    find_lex $P732, "$/"
    find_lex $P733, "$past"
    $P734 = $P732."!make"($P733)
.annotate "line", 288
    .return ($P734)
  control_722:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P735, exception, "payload"
    .return ($P735)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backslash:sym<misc>"  :subid("54_1256847896.72898") :method :outer("11_1256847896.72898")
    .param pmc param_739
.annotate "line", 295
    new $P738, 'ExceptionHandler'
    set_addr $P738, control_737
    $P738."handle_types"(58)
    push_eh $P738
    .lex "self", self
    .lex "$/", param_739
.annotate "line", 296
    get_hll_global $P740, ["PAST"], "Regex"
    find_lex $P741, "$/"
    set $S742, $P741
    find_lex $P743, "$/"
    $P744 = $P740."new"($S742, "literal" :named("pasttype"), $P743 :named("node"))
    .lex "$past", $P744
.annotate "line", 297
    find_lex $P745, "$/"
    find_lex $P746, "$past"
    $P747 = $P745."!make"($P746)
.annotate "line", 295
    .return ($P747)
  control_737:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P748, exception, "payload"
    .return ($P748)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<?>"  :subid("55_1256847896.72898") :method :outer("11_1256847896.72898")
    .param pmc param_752
.annotate "line", 301
    new $P751, 'ExceptionHandler'
    set_addr $P751, control_750
    $P751."handle_types"(58)
    push_eh $P751
    .lex "self", self
    .lex "$/", param_752
    new $P753, "Undef"
    .lex "$past", $P753
.annotate "line", 303
    find_lex $P755, "$/"
    unless_null $P755, vivify_223
    new $P755, "Hash"
  vivify_223:
    set $P756, $P755["assertion"]
    unless_null $P756, vivify_224
    new $P756, "Undef"
  vivify_224:
    if $P756, if_754
.annotate "line", 307
    new $P761, "Integer"
    assign $P761, 0
    store_lex "$past", $P761
    goto if_754_end
  if_754:
.annotate "line", 304
    find_lex $P757, "$/"
    unless_null $P757, vivify_225
    new $P757, "Hash"
  vivify_225:
    set $P758, $P757["assertion"]
    unless_null $P758, vivify_226
    new $P758, "Undef"
  vivify_226:
    $P759 = $P758."ast"()
    store_lex "$past", $P759
.annotate "line", 305
    find_lex $P760, "$past"
    $P760."subtype"("zerowidth")
  if_754_end:
.annotate "line", 308
    find_lex $P762, "$/"
    find_lex $P763, "$past"
    $P764 = $P762."!make"($P763)
.annotate "line", 301
    .return ($P764)
  control_750:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P765, exception, "payload"
    .return ($P765)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<!>"  :subid("56_1256847896.72898") :method :outer("11_1256847896.72898")
    .param pmc param_769
.annotate "line", 311
    new $P768, 'ExceptionHandler'
    set_addr $P768, control_767
    $P768."handle_types"(58)
    push_eh $P768
    .lex "self", self
    .lex "$/", param_769
    new $P770, "Undef"
    .lex "$past", $P770
.annotate "line", 313
    find_lex $P772, "$/"
    unless_null $P772, vivify_227
    new $P772, "Hash"
  vivify_227:
    set $P773, $P772["assertion"]
    unless_null $P773, vivify_228
    new $P773, "Undef"
  vivify_228:
    if $P773, if_771
.annotate "line", 319
    get_hll_global $P782, ["PAST"], "Regex"
    find_lex $P783, "$/"
    $P784 = $P782."new"("anchor" :named("pasttype"), "fail" :named("subtype"), $P783 :named("node"))
    store_lex "$past", $P784
.annotate "line", 318
    goto if_771_end
  if_771:
.annotate "line", 314
    find_lex $P774, "$/"
    unless_null $P774, vivify_229
    new $P774, "Hash"
  vivify_229:
    set $P775, $P774["assertion"]
    unless_null $P775, vivify_230
    new $P775, "Undef"
  vivify_230:
    $P776 = $P775."ast"()
    store_lex "$past", $P776
.annotate "line", 315
    find_lex $P777, "$past"
    find_lex $P778, "$past"
    $P779 = $P778."negate"()
    isfalse $I780, $P779
    $P777."negate"($I780)
.annotate "line", 316
    find_lex $P781, "$past"
    $P781."subtype"("zerowidth")
  if_771_end:
.annotate "line", 321
    find_lex $P785, "$/"
    find_lex $P786, "$past"
    $P787 = $P785."!make"($P786)
.annotate "line", 311
    .return ($P787)
  control_767:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P788, exception, "payload"
    .return ($P788)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<method>"  :subid("57_1256847896.72898") :method :outer("11_1256847896.72898")
    .param pmc param_792
.annotate "line", 324
    new $P791, 'ExceptionHandler'
    set_addr $P791, control_790
    $P791."handle_types"(58)
    push_eh $P791
    .lex "self", self
    .lex "$/", param_792
.annotate "line", 325
    find_lex $P793, "$/"
    unless_null $P793, vivify_231
    new $P793, "Hash"
  vivify_231:
    set $P794, $P793["assertion"]
    unless_null $P794, vivify_232
    new $P794, "Undef"
  vivify_232:
    $P795 = $P794."ast"()
    .lex "$past", $P795
.annotate "line", 326
    find_lex $P796, "$past"
    $P796."subtype"("method")
.annotate "line", 327
    find_lex $P797, "$/"
    find_lex $P798, "$past"
    $P799 = $P797."!make"($P798)
.annotate "line", 324
    .return ($P799)
  control_790:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P800, exception, "payload"
    .return ($P800)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<name>"  :subid("58_1256847896.72898") :method :outer("11_1256847896.72898")
    .param pmc param_804
.annotate "line", 330
    .const 'Sub' $P858 = "60_1256847896.72898" 
    capture_lex $P858
    .const 'Sub' $P824 = "59_1256847896.72898" 
    capture_lex $P824
    new $P803, 'ExceptionHandler'
    set_addr $P803, control_802
    $P803."handle_types"(58)
    push_eh $P803
    .lex "self", self
    .lex "$/", param_804
.annotate "line", 331
    find_lex $P805, "$/"
    unless_null $P805, vivify_233
    new $P805, "Hash"
  vivify_233:
    set $P806, $P805["longname"]
    unless_null $P806, vivify_234
    new $P806, "Undef"
  vivify_234:
    set $S807, $P806
    new $P808, 'String'
    set $P808, $S807
    .lex "$name", $P808
    new $P809, "Undef"
    .lex "$past", $P809
.annotate "line", 333
    find_lex $P811, "$/"
    unless_null $P811, vivify_235
    new $P811, "Hash"
  vivify_235:
    set $P812, $P811["assertion"]
    unless_null $P812, vivify_236
    new $P812, "Undef"
  vivify_236:
    if $P812, if_810
.annotate "line", 337
    find_lex $P820, "$name"
    set $S821, $P820
    iseq $I822, $S821, "sym"
    if $I822, if_819
.annotate "line", 353
    get_hll_global $P833, ["PAST"], "Regex"
    find_lex $P834, "$name"
    find_lex $P835, "$name"
    find_lex $P836, "$/"
    $P837 = $P833."new"($P834, $P835 :named("name"), "subrule" :named("pasttype"), "capture" :named("subtype"), $P836 :named("node"))
    store_lex "$past", $P837
.annotate "line", 355
    find_lex $P839, "$/"
    unless_null $P839, vivify_237
    new $P839, "Hash"
  vivify_237:
    set $P840, $P839["nibbler"]
    unless_null $P840, vivify_238
    new $P840, "Undef"
  vivify_238:
    if $P840, if_838
.annotate "line", 358
    find_lex $P848, "$/"
    unless_null $P848, vivify_239
    new $P848, "Hash"
  vivify_239:
    set $P849, $P848["arglist"]
    unless_null $P849, vivify_240
    new $P849, "Undef"
  vivify_240:
    unless $P849, if_847_end
.annotate "line", 359
    find_lex $P851, "$/"
    unless_null $P851, vivify_241
    new $P851, "Hash"
  vivify_241:
    set $P852, $P851["arglist"]
    unless_null $P852, vivify_242
    new $P852, "ResizablePMCArray"
  vivify_242:
    set $P853, $P852[0]
    unless_null $P853, vivify_243
    new $P853, "Hash"
  vivify_243:
    set $P854, $P853["arg"]
    unless_null $P854, vivify_244
    new $P854, "Undef"
  vivify_244:
    defined $I855, $P854
    unless $I855, for_undef_245
    iter $P850, $P854
    new $P865, 'ExceptionHandler'
    set_addr $P865, loop864_handler
    $P865."handle_types"(65, 67, 66)
    push_eh $P865
  loop864_test:
    unless $P850, loop864_done
    shift $P856, $P850
  loop864_redo:
    .const 'Sub' $P858 = "60_1256847896.72898" 
    capture_lex $P858
    $P858($P856)
  loop864_next:
    goto loop864_test
  loop864_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P866, exception, 'type'
    eq $P866, 65, loop864_next
    eq $P866, 67, loop864_redo
  loop864_done:
    pop_eh 
  for_undef_245:
  if_847_end:
.annotate "line", 358
    goto if_838_end
  if_838:
.annotate "line", 356
    find_lex $P841, "$past"
    find_lex $P842, "$/"
    unless_null $P842, vivify_246
    new $P842, "Hash"
  vivify_246:
    set $P843, $P842["nibbler"]
    unless_null $P843, vivify_247
    new $P843, "ResizablePMCArray"
  vivify_247:
    set $P844, $P843[0]
    unless_null $P844, vivify_248
    new $P844, "Undef"
  vivify_248:
    $P845 = $P844."ast"()
    $P846 = "buildsub"($P845)
    $P841."push"($P846)
  if_838_end:
.annotate "line", 352
    goto if_819_end
  if_819:
.annotate "line", 337
    .const 'Sub' $P824 = "59_1256847896.72898" 
    capture_lex $P824
    $P824()
  if_819_end:
    goto if_810_end
  if_810:
.annotate "line", 334
    find_lex $P813, "$/"
    unless_null $P813, vivify_249
    new $P813, "Hash"
  vivify_249:
    set $P814, $P813["assertion"]
    unless_null $P814, vivify_250
    new $P814, "ResizablePMCArray"
  vivify_250:
    set $P815, $P814[0]
    unless_null $P815, vivify_251
    new $P815, "Undef"
  vivify_251:
    $P816 = $P815."ast"()
    store_lex "$past", $P816
.annotate "line", 335
    find_lex $P817, "$past"
    find_lex $P818, "$name"
    "subrule_alias"($P817, $P818)
  if_810_end:
.annotate "line", 364
    find_lex $P867, "$/"
    find_lex $P868, "$past"
    $P869 = $P867."!make"($P868)
.annotate "line", 330
    .return ($P869)
  control_802:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P870, exception, "payload"
    .return ($P870)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block857"  :anon :subid("60_1256847896.72898") :outer("58_1256847896.72898")
    .param pmc param_859
.annotate "line", 359
    .lex "$_", param_859
.annotate "line", 360
    find_lex $P860, "$past"
    find_lex $P861, "$_"
    $P862 = $P861."ast"()
    $P863 = $P860."push"($P862)
.annotate "line", 359
    .return ($P863)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block823"  :anon :subid("59_1256847896.72898") :outer("58_1256847896.72898")
.annotate "line", 338

            $P0 = get_global '$REGEXNAME'
            $S0 = $P0
            $I0 = index $S0, ':sym<'
            add $I0, 5
            $S0 = substr $S0, $I0
            chopn $S0, 1
            $P825 = box $S0
        
    .lex "$regexsym", $P825
.annotate "line", 347
    get_hll_global $P826, ["PAST"], "Regex"
.annotate "line", 348
    get_hll_global $P827, ["PAST"], "Regex"
    find_lex $P828, "$regexsym"
    $P829 = $P827."new"($P828, "literal" :named("pasttype"))
    find_lex $P830, "$name"
    find_lex $P831, "$/"
    $P832 = $P826."new"($P829, $P830 :named("name"), "subcapture" :named("pasttype"), $P831 :named("node"))
.annotate "line", 347
    store_lex "$past", $P832
.annotate "line", 337
    .return ($P832)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "assertion:sym<[>"  :subid("61_1256847896.72898") :method :outer("11_1256847896.72898")
    .param pmc param_874
.annotate "line", 367
    .const 'Sub' $P905 = "62_1256847896.72898" 
    capture_lex $P905
    new $P873, 'ExceptionHandler'
    set_addr $P873, control_872
    $P873."handle_types"(58)
    push_eh $P873
    .lex "self", self
    .lex "$/", param_874
.annotate "line", 368
    find_lex $P875, "$/"
    unless_null $P875, vivify_252
    new $P875, "Hash"
  vivify_252:
    set $P876, $P875["cclass_elem"]
    unless_null $P876, vivify_253
    new $P876, "Undef"
  vivify_253:
    .lex "$clist", $P876
.annotate "line", 369
    find_lex $P877, "$clist"
    unless_null $P877, vivify_254
    new $P877, "ResizablePMCArray"
  vivify_254:
    set $P878, $P877[0]
    unless_null $P878, vivify_255
    new $P878, "Undef"
  vivify_255:
    $P879 = $P878."ast"()
    .lex "$past", $P879
.annotate "line", 370
    find_lex $P883, "$past"
    $P884 = $P883."negate"()
    if $P884, if_882
    set $P881, $P884
    goto if_882_end
  if_882:
    find_lex $P885, "$past"
    $S886 = $P885."pasttype"()
    iseq $I887, $S886, "subrule"
    new $P881, 'Integer'
    set $P881, $I887
  if_882_end:
    unless $P881, if_880_end
.annotate "line", 371
    find_lex $P888, "$past"
    $P888."subtype"("zerowidth")
.annotate "line", 372
    get_hll_global $P889, ["PAST"], "Regex"
    find_lex $P890, "$past"
.annotate "line", 374
    get_hll_global $P891, ["PAST"], "Regex"
    $P892 = $P891."new"("charclass" :named("pasttype"), "." :named("subtype"))
    find_lex $P893, "$/"
    $P894 = $P889."new"($P890, $P892, $P893 :named("node"))
.annotate "line", 372
    store_lex "$past", $P894
  if_880_end:
.annotate "line", 378
    new $P895, "Integer"
    assign $P895, 1
    .lex "$i", $P895
.annotate "line", 379
    find_lex $P896, "$clist"
    set $N897, $P896
    new $P898, 'Float'
    set $P898, $N897
    .lex "$n", $P898
.annotate "line", 380
    new $P928, 'ExceptionHandler'
    set_addr $P928, loop927_handler
    $P928."handle_types"(65, 67, 66)
    push_eh $P928
  loop927_test:
    find_lex $P899, "$i"
    set $N900, $P899
    find_lex $P901, "$n"
    set $N902, $P901
    islt $I903, $N900, $N902
    unless $I903, loop927_done
  loop927_redo:
    .const 'Sub' $P905 = "62_1256847896.72898" 
    capture_lex $P905
    $P905()
  loop927_next:
    goto loop927_test
  loop927_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P929, exception, 'type'
    eq $P929, 65, loop927_next
    eq $P929, 67, loop927_redo
  loop927_done:
    pop_eh 
.annotate "line", 391
    find_lex $P930, "$/"
    find_lex $P931, "$past"
    $P932 = $P930."!make"($P931)
.annotate "line", 367
    .return ($P932)
  control_872:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P933, exception, "payload"
    .return ($P933)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block904"  :anon :subid("62_1256847896.72898") :outer("61_1256847896.72898")
.annotate "line", 381
    find_lex $P906, "$i"
    set $I907, $P906
    find_lex $P908, "$clist"
    unless_null $P908, vivify_256
    new $P908, "ResizablePMCArray"
  vivify_256:
    set $P909, $P908[$I907]
    unless_null $P909, vivify_257
    new $P909, "Undef"
  vivify_257:
    $P910 = $P909."ast"()
    .lex "$ast", $P910
.annotate "line", 382
    find_lex $P912, "$ast"
    $P913 = $P912."negate"()
    if $P913, if_911
.annotate "line", 387
    get_hll_global $P920, ["PAST"], "Regex"
    find_lex $P921, "$past"
    find_lex $P922, "$ast"
    find_lex $P923, "$/"
    $P924 = $P920."new"($P921, $P922, "alt" :named("pasttype"), $P923 :named("node"))
    store_lex "$past", $P924
.annotate "line", 386
    goto if_911_end
  if_911:
.annotate "line", 383
    find_lex $P914, "$ast"
    $P914."subtype"("zerowidth")
.annotate "line", 384
    get_hll_global $P915, ["PAST"], "Regex"
    find_lex $P916, "$ast"
    find_lex $P917, "$past"
    find_lex $P918, "$/"
    $P919 = $P915."new"($P916, $P917, "concat" :named("pasttype"), $P918 :named("node"))
    store_lex "$past", $P919
  if_911_end:
.annotate "line", 389
    find_lex $P925, "$i"
    add $P926, $P925, 1
    store_lex "$i", $P926
.annotate "line", 380
    .return ($P926)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "cclass_elem"  :subid("63_1256847896.72898") :method :outer("11_1256847896.72898")
    .param pmc param_937
.annotate "line", 394
    .const 'Sub' $P959 = "65_1256847896.72898" 
    capture_lex $P959
    .const 'Sub' $P944 = "64_1256847896.72898" 
    capture_lex $P944
    new $P936, 'ExceptionHandler'
    set_addr $P936, control_935
    $P936."handle_types"(58)
    push_eh $P936
    .lex "self", self
    .lex "$/", param_937
.annotate "line", 395
    new $P938, "String"
    assign $P938, ""
    .lex "$str", $P938
    new $P939, "Undef"
    .lex "$past", $P939
.annotate "line", 397
    find_lex $P941, "$/"
    unless_null $P941, vivify_258
    new $P941, "Hash"
  vivify_258:
    set $P942, $P941["name"]
    unless_null $P942, vivify_259
    new $P942, "Undef"
  vivify_259:
    if $P942, if_940
.annotate "line", 401
    find_lex $P954, "$/"
    unless_null $P954, vivify_260
    new $P954, "Hash"
  vivify_260:
    set $P955, $P954["charspec"]
    unless_null $P955, vivify_261
    new $P955, "Undef"
  vivify_261:
    defined $I956, $P955
    unless $I956, for_undef_262
    iter $P953, $P955
    new $P982, 'ExceptionHandler'
    set_addr $P982, loop981_handler
    $P982."handle_types"(65, 67, 66)
    push_eh $P982
  loop981_test:
    unless $P953, loop981_done
    shift $P957, $P953
  loop981_redo:
    .const 'Sub' $P959 = "65_1256847896.72898" 
    capture_lex $P959
    $P959($P957)
  loop981_next:
    goto loop981_test
  loop981_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P983, exception, 'type'
    eq $P983, 65, loop981_next
    eq $P983, 67, loop981_redo
  loop981_done:
    pop_eh 
  for_undef_262:
.annotate "line", 426
    get_hll_global $P984, ["PAST"], "Regex"
    find_lex $P985, "$str"
    find_lex $P986, "$/"
    $P987 = $P984."new"($P985, "enumcharlist" :named("pasttype"), $P986 :named("node"))
    store_lex "$past", $P987
.annotate "line", 400
    goto if_940_end
  if_940:
.annotate "line", 397
    .const 'Sub' $P944 = "64_1256847896.72898" 
    capture_lex $P944
    $P944()
  if_940_end:
.annotate "line", 428
    find_lex $P988, "$past"
    find_lex $P989, "$/"
    unless_null $P989, vivify_274
    new $P989, "Hash"
  vivify_274:
    set $P990, $P989["sign"]
    unless_null $P990, vivify_275
    new $P990, "Undef"
  vivify_275:
    set $S991, $P990
    iseq $I992, $S991, "-"
    $P988."negate"($I992)
.annotate "line", 429
    find_lex $P993, "$/"
    find_lex $P994, "$past"
    $P995 = $P993."!make"($P994)
.annotate "line", 394
    .return ($P995)
  control_935:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P996, exception, "payload"
    .return ($P996)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block958"  :anon :subid("65_1256847896.72898") :outer("63_1256847896.72898")
    .param pmc param_960
.annotate "line", 401
    .const 'Sub' $P966 = "66_1256847896.72898" 
    capture_lex $P966
    .lex "$_", param_960
.annotate "line", 402
    find_lex $P963, "$_"
    unless_null $P963, vivify_263
    new $P963, "ResizablePMCArray"
  vivify_263:
    set $P964, $P963[1]
    unless_null $P964, vivify_264
    new $P964, "Undef"
  vivify_264:
    if $P964, if_962
.annotate "line", 424
    find_lex $P977, "$str"
    find_lex $P978, "$_"
    unless_null $P978, vivify_265
    new $P978, "ResizablePMCArray"
  vivify_265:
    set $P979, $P978[0]
    unless_null $P979, vivify_266
    new $P979, "Undef"
  vivify_266:
    concat $P980, $P977, $P979
    store_lex "$str", $P980
    set $P961, $P980
.annotate "line", 402
    goto if_962_end
  if_962:
    .const 'Sub' $P966 = "66_1256847896.72898" 
    capture_lex $P966
    $P976 = $P966()
    set $P961, $P976
  if_962_end:
.annotate "line", 401
    .return ($P961)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block965"  :anon :subid("66_1256847896.72898") :outer("65_1256847896.72898")
.annotate "line", 403
    find_lex $P967, "$_"
    unless_null $P967, vivify_267
    new $P967, "ResizablePMCArray"
  vivify_267:
    set $P968, $P967[0]
    unless_null $P968, vivify_268
    new $P968, "Undef"
  vivify_268:
    .lex "$a", $P968
.annotate "line", 404
    find_lex $P969, "$_"
    unless_null $P969, vivify_269
    new $P969, "ResizablePMCArray"
  vivify_269:
    set $P970, $P969[1]
    unless_null $P970, vivify_270
    new $P970, "ResizablePMCArray"
  vivify_270:
    set $P971, $P970[0]
    unless_null $P971, vivify_271
    new $P971, "Undef"
  vivify_271:
    .lex "$b", $P971
.annotate "line", 405

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
                             $P972 = box $S2
                         
    .lex "$c", $P972
.annotate "line", 422
    find_lex $P973, "$str"
    find_lex $P974, "$c"
    concat $P975, $P973, $P974
    store_lex "$str", $P975
.annotate "line", 402
    .return ($P975)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block943"  :anon :subid("64_1256847896.72898") :outer("63_1256847896.72898")
.annotate "line", 398
    find_lex $P945, "$/"
    unless_null $P945, vivify_272
    new $P945, "Hash"
  vivify_272:
    set $P946, $P945["name"]
    unless_null $P946, vivify_273
    new $P946, "Undef"
  vivify_273:
    set $S947, $P946
    new $P948, 'String'
    set $P948, $S947
    .lex "$name", $P948
.annotate "line", 399
    get_hll_global $P949, ["PAST"], "Regex"
    find_lex $P950, "$name"
    find_lex $P951, "$/"
    $P952 = $P949."new"($P950, "subrule" :named("pasttype"), "method" :named("subtype"), $P951 :named("node"))
    store_lex "$past", $P952
.annotate "line", 397
    .return ($P952)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "mod_internal"  :subid("67_1256847896.72898") :method :outer("11_1256847896.72898")
    .param pmc param_1000
.annotate "line", 432
    new $P999, 'ExceptionHandler'
    set_addr $P999, control_998
    $P999."handle_types"(58)
    push_eh $P999
    .lex "self", self
    .lex "$/", param_1000
.annotate "line", 433
    get_global $P1001, "@MODIFIERS"
    unless_null $P1001, vivify_276
    new $P1001, "ResizablePMCArray"
  vivify_276:
    set $P1002, $P1001[0]
    unless_null $P1002, vivify_277
    new $P1002, "Undef"
  vivify_277:
    .lex "%mods", $P1002
.annotate "line", 434
    find_lex $P1005, "$/"
    unless_null $P1005, vivify_278
    new $P1005, "Hash"
  vivify_278:
    set $P1006, $P1005["n"]
    unless_null $P1006, vivify_279
    new $P1006, "ResizablePMCArray"
  vivify_279:
    set $P1007, $P1006[0]
    unless_null $P1007, vivify_280
    new $P1007, "Undef"
  vivify_280:
    set $S1008, $P1007
    isgt $I1009, $S1008, ""
    if $I1009, if_1004
    new $P1014, "Integer"
    assign $P1014, 1
    set $P1003, $P1014
    goto if_1004_end
  if_1004:
    find_lex $P1010, "$/"
    unless_null $P1010, vivify_281
    new $P1010, "Hash"
  vivify_281:
    set $P1011, $P1010["n"]
    unless_null $P1011, vivify_282
    new $P1011, "ResizablePMCArray"
  vivify_282:
    set $P1012, $P1011[0]
    unless_null $P1012, vivify_283
    new $P1012, "Undef"
  vivify_283:
    set $N1013, $P1012
    new $P1003, 'Float'
    set $P1003, $N1013
  if_1004_end:
    .lex "$n", $P1003
.annotate "line", 435
    find_lex $P1015, "$n"
    find_lex $P1016, "$/"
    unless_null $P1016, vivify_284
    new $P1016, "Hash"
  vivify_284:
    set $P1017, $P1016["mod_ident"]
    unless_null $P1017, vivify_285
    new $P1017, "Hash"
  vivify_285:
    set $P1018, $P1017["sym"]
    unless_null $P1018, vivify_286
    new $P1018, "Undef"
  vivify_286:
    set $S1019, $P1018
    find_lex $P1020, "%mods"
    unless_null $P1020, vivify_287
    new $P1020, "Hash"
    store_lex "%mods", $P1020
  vivify_287:
    set $P1020[$S1019], $P1015
.annotate "line", 436
    find_lex $P1021, "$/"
    $P1022 = $P1021."!make"(0)
.annotate "line", 432
    .return ($P1022)
  control_998:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1023, exception, "payload"
    .return ($P1023)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "buildsub"  :subid("68_1256847896.72898") :outer("11_1256847896.72898")
    .param pmc param_1027
.annotate "line", 439
    new $P1026, 'ExceptionHandler'
    set_addr $P1026, control_1025
    $P1026."handle_types"(58)
    push_eh $P1026
    .lex "$rpast", param_1027
.annotate "line", 440
    find_lex $P1028, "$rpast"
    $P1029 = "capnames"($P1028, 0)
    .lex "%capnames", $P1029
.annotate "line", 441
    new $P1030, "Integer"
    assign $P1030, 0
    find_lex $P1031, "%capnames"
    unless_null $P1031, vivify_288
    new $P1031, "Hash"
    store_lex "%capnames", $P1031
  vivify_288:
    set $P1031[""], $P1030
.annotate "line", 442
    get_hll_global $P1032, ["PAST"], "Regex"
.annotate "line", 443
    get_hll_global $P1033, ["PAST"], "Regex"
    $P1034 = $P1033."new"("scan" :named("pasttype"))
    find_lex $P1035, "$rpast"
.annotate "line", 445
    get_hll_global $P1036, ["PAST"], "Regex"
    $P1037 = $P1036."new"("pass" :named("pasttype"))
    find_lex $P1038, "%capnames"
    $P1039 = $P1032."new"($P1034, $P1035, $P1037, "concat" :named("pasttype"), $P1038 :named("capnames"))
.annotate "line", 442
    store_lex "$rpast", $P1039
.annotate "line", 449
    get_hll_global $P1040, ["PAST"], "Block"
    find_lex $P1041, "$rpast"
    $P1042 = $P1040."new"($P1041, "method" :named("blocktype"))
.annotate "line", 439
    .return ($P1042)
  control_1025:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1043, exception, "payload"
    .return ($P1043)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "capnames"  :subid("69_1256847896.72898") :outer("11_1256847896.72898")
    .param pmc param_1047
    .param pmc param_1048
.annotate "line", 452
    .const 'Sub' $P1271 = "80_1256847896.72898" 
    capture_lex $P1271
    .const 'Sub' $P1209 = "77_1256847896.72898" 
    capture_lex $P1209
    .const 'Sub' $P1167 = "75_1256847896.72898" 
    capture_lex $P1167
    .const 'Sub' $P1126 = "73_1256847896.72898" 
    capture_lex $P1126
    .const 'Sub' $P1057 = "70_1256847896.72898" 
    capture_lex $P1057
    new $P1046, 'ExceptionHandler'
    set_addr $P1046, control_1045
    $P1046."handle_types"(58)
    push_eh $P1046
    .lex "$ast", param_1047
    .lex "$count", param_1048
    new $P1049, "Hash"
    .lex "%capnames", $P1049
.annotate "line", 454
    find_lex $P1050, "$ast"
    $P1051 = $P1050."pasttype"()
    .lex "$pasttype", $P1051
.annotate "line", 455
    find_lex $P1053, "$pasttype"
    set $S1054, $P1053
    iseq $I1055, $S1054, "alt"
    if $I1055, if_1052
.annotate "line", 468
    find_lex $P1117, "$pasttype"
    set $S1118, $P1117
    iseq $I1119, $S1118, "concat"
    if $I1119, if_1116
.annotate "line", 477
    find_lex $P1160, "$pasttype"
    set $S1161, $P1160
    iseq $I1162, $S1161, "subrule"
    if $I1162, if_1159
    new $P1158, 'Integer'
    set $P1158, $I1162
    goto if_1159_end
  if_1159:
    find_lex $P1163, "$ast"
    $S1164 = $P1163."subtype"()
    iseq $I1165, $S1164, "capture"
    new $P1158, 'Integer'
    set $P1158, $I1165
  if_1159_end:
    if $P1158, if_1157
.annotate "line", 490
    find_lex $P1205, "$pasttype"
    set $S1206, $P1205
    iseq $I1207, $S1206, "subcapture"
    if $I1207, if_1204
.annotate "line", 507
    find_lex $P1267, "$pasttype"
    set $S1268, $P1267
    iseq $I1269, $S1268, "quant"
    unless $I1269, if_1266_end
    .const 'Sub' $P1271 = "80_1256847896.72898" 
    capture_lex $P1271
    $P1271()
  if_1266_end:
    goto if_1204_end
  if_1204:
.annotate "line", 490
    .const 'Sub' $P1209 = "77_1256847896.72898" 
    capture_lex $P1209
    $P1209()
  if_1204_end:
    goto if_1157_end
  if_1157:
.annotate "line", 477
    .const 'Sub' $P1167 = "75_1256847896.72898" 
    capture_lex $P1167
    $P1167()
  if_1157_end:
    goto if_1116_end
  if_1116:
.annotate "line", 469
    find_lex $P1121, "$ast"
    $P1122 = $P1121."list"()
    defined $I1123, $P1122
    unless $I1123, for_undef_309
    iter $P1120, $P1122
    new $P1155, 'ExceptionHandler'
    set_addr $P1155, loop1154_handler
    $P1155."handle_types"(65, 67, 66)
    push_eh $P1155
  loop1154_test:
    unless $P1120, loop1154_done
    shift $P1124, $P1120
  loop1154_redo:
    .const 'Sub' $P1126 = "73_1256847896.72898" 
    capture_lex $P1126
    $P1126($P1124)
  loop1154_next:
    goto loop1154_test
  loop1154_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1156, exception, 'type'
    eq $P1156, 65, loop1154_next
    eq $P1156, 67, loop1154_redo
  loop1154_done:
    pop_eh 
  for_undef_309:
  if_1116_end:
.annotate "line", 468
    goto if_1052_end
  if_1052:
.annotate "line", 455
    .const 'Sub' $P1057 = "70_1256847896.72898" 
    capture_lex $P1057
    $P1057()
  if_1052_end:
.annotate "line", 514
    find_lex $P1291, "$count"
    find_lex $P1292, "%capnames"
    unless_null $P1292, vivify_329
    new $P1292, "Hash"
    store_lex "%capnames", $P1292
  vivify_329:
    set $P1292[""], $P1291
    find_lex $P1293, "%capnames"
.annotate "line", 452
    .return ($P1293)
  control_1045:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1294, exception, "payload"
    .return ($P1294)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1270"  :anon :subid("80_1256847896.72898") :outer("69_1256847896.72898")
.annotate "line", 507
    .const 'Sub' $P1281 = "81_1256847896.72898" 
    capture_lex $P1281
.annotate "line", 508
    find_lex $P1272, "$ast"
    unless_null $P1272, vivify_289
    new $P1272, "ResizablePMCArray"
  vivify_289:
    set $P1273, $P1272[0]
    unless_null $P1273, vivify_290
    new $P1273, "Undef"
  vivify_290:
    find_lex $P1274, "$count"
    $P1275 = "capnames"($P1273, $P1274)
    .lex "%astcap", $P1275
.annotate "line", 509
    find_lex $P1277, "%astcap"
    defined $I1278, $P1277
    unless $I1278, for_undef_291
    iter $P1276, $P1277
    new $P1287, 'ExceptionHandler'
    set_addr $P1287, loop1286_handler
    $P1287."handle_types"(65, 67, 66)
    push_eh $P1287
  loop1286_test:
    unless $P1276, loop1286_done
    shift $P1279, $P1276
  loop1286_redo:
    .const 'Sub' $P1281 = "81_1256847896.72898" 
    capture_lex $P1281
    $P1281($P1279)
  loop1286_next:
    goto loop1286_test
  loop1286_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1288, exception, 'type'
    eq $P1288, 65, loop1286_next
    eq $P1288, 67, loop1286_redo
  loop1286_done:
    pop_eh 
  for_undef_291:
.annotate "line", 512
    find_lex $P1289, "%astcap"
    unless_null $P1289, vivify_293
    new $P1289, "Hash"
  vivify_293:
    set $P1290, $P1289[""]
    unless_null $P1290, vivify_294
    new $P1290, "Undef"
  vivify_294:
    store_lex "$count", $P1290
.annotate "line", 507
    .return ($P1290)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1280"  :anon :subid("81_1256847896.72898") :outer("80_1256847896.72898")
    .param pmc param_1282
.annotate "line", 509
    .lex "$_", param_1282
.annotate "line", 510
    new $P1283, "Integer"
    assign $P1283, 2
    find_lex $P1284, "$_"
    find_lex $P1285, "%capnames"
    unless_null $P1285, vivify_292
    new $P1285, "Hash"
    store_lex "%capnames", $P1285
  vivify_292:
    set $P1285[$P1284], $P1283
.annotate "line", 509
    .return ($P1283)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1208"  :anon :subid("77_1256847896.72898") :outer("69_1256847896.72898")
.annotate "line", 490
    .const 'Sub' $P1248 = "79_1256847896.72898" 
    capture_lex $P1248
    .const 'Sub' $P1218 = "78_1256847896.72898" 
    capture_lex $P1218
.annotate "line", 491
    find_lex $P1210, "$ast"
    $P1211 = $P1210."name"()
    .lex "$name", $P1211
.annotate "line", 492

            $P0 = find_lex '$name'
            $S0 = $P0
            $P1212 = split '=', $S0
        
    .lex "@names", $P1212
.annotate "line", 497
    find_lex $P1214, "@names"
    defined $I1215, $P1214
    unless $I1215, for_undef_295
    iter $P1213, $P1214
    new $P1237, 'ExceptionHandler'
    set_addr $P1237, loop1236_handler
    $P1237."handle_types"(65, 67, 66)
    push_eh $P1237
  loop1236_test:
    unless $P1213, loop1236_done
    shift $P1216, $P1213
  loop1236_redo:
    .const 'Sub' $P1218 = "78_1256847896.72898" 
    capture_lex $P1218
    $P1218($P1216)
  loop1236_next:
    goto loop1236_test
  loop1236_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1238, exception, 'type'
    eq $P1238, 65, loop1236_next
    eq $P1238, 67, loop1236_redo
  loop1236_done:
    pop_eh 
  for_undef_295:
.annotate "line", 501
    find_lex $P1239, "$ast"
    unless_null $P1239, vivify_297
    new $P1239, "ResizablePMCArray"
  vivify_297:
    set $P1240, $P1239[0]
    unless_null $P1240, vivify_298
    new $P1240, "Undef"
  vivify_298:
    find_lex $P1241, "$count"
    $P1242 = "capnames"($P1240, $P1241)
    .lex "%x", $P1242
.annotate "line", 502
    find_lex $P1244, "%x"
    defined $I1245, $P1244
    unless $I1245, for_undef_299
    iter $P1243, $P1244
    new $P1262, 'ExceptionHandler'
    set_addr $P1262, loop1261_handler
    $P1262."handle_types"(65, 67, 66)
    push_eh $P1262
  loop1261_test:
    unless $P1243, loop1261_done
    shift $P1246, $P1243
  loop1261_redo:
    .const 'Sub' $P1248 = "79_1256847896.72898" 
    capture_lex $P1248
    $P1248($P1246)
  loop1261_next:
    goto loop1261_test
  loop1261_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1263, exception, 'type'
    eq $P1263, 65, loop1261_next
    eq $P1263, 67, loop1261_redo
  loop1261_done:
    pop_eh 
  for_undef_299:
.annotate "line", 505
    find_lex $P1264, "%x"
    unless_null $P1264, vivify_305
    new $P1264, "Hash"
  vivify_305:
    set $P1265, $P1264[""]
    unless_null $P1265, vivify_306
    new $P1265, "Undef"
  vivify_306:
    store_lex "$count", $P1265
.annotate "line", 490
    .return ($P1265)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1217"  :anon :subid("78_1256847896.72898") :outer("77_1256847896.72898")
    .param pmc param_1219
.annotate "line", 497
    .lex "$_", param_1219
.annotate "line", 498
    find_lex $P1223, "$_"
    set $S1224, $P1223
    iseq $I1225, $S1224, "0"
    unless $I1225, unless_1222
    new $P1221, 'Integer'
    set $P1221, $I1225
    goto unless_1222_end
  unless_1222:
    find_lex $P1226, "$_"
    set $N1227, $P1226
    new $P1228, "Integer"
    assign $P1228, 0
    set $N1229, $P1228
    isgt $I1230, $N1227, $N1229
    new $P1221, 'Integer'
    set $P1221, $I1230
  unless_1222_end:
    unless $P1221, if_1220_end
    find_lex $P1231, "$_"
    add $P1232, $P1231, 1
    store_lex "$count", $P1232
  if_1220_end:
.annotate "line", 499
    new $P1233, "Integer"
    assign $P1233, 1
    find_lex $P1234, "$_"
    find_lex $P1235, "%capnames"
    unless_null $P1235, vivify_296
    new $P1235, "Hash"
    store_lex "%capnames", $P1235
  vivify_296:
    set $P1235[$P1234], $P1233
.annotate "line", 497
    .return ($P1233)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1247"  :anon :subid("79_1256847896.72898") :outer("77_1256847896.72898")
    .param pmc param_1249
.annotate "line", 502
    .lex "$_", param_1249
.annotate "line", 503
    find_lex $P1250, "$_"
    find_lex $P1251, "%capnames"
    unless_null $P1251, vivify_300
    new $P1251, "Hash"
  vivify_300:
    set $P1252, $P1251[$P1250]
    unless_null $P1252, vivify_301
    new $P1252, "Undef"
  vivify_301:
    set $N1253, $P1252
    new $P1254, 'Float'
    set $P1254, $N1253
    find_lex $P1255, "$_"
    find_lex $P1256, "%x"
    unless_null $P1256, vivify_302
    new $P1256, "Hash"
  vivify_302:
    set $P1257, $P1256[$P1255]
    unless_null $P1257, vivify_303
    new $P1257, "Undef"
  vivify_303:
    add $P1258, $P1254, $P1257
    find_lex $P1259, "$_"
    find_lex $P1260, "%capnames"
    unless_null $P1260, vivify_304
    new $P1260, "Hash"
    store_lex "%capnames", $P1260
  vivify_304:
    set $P1260[$P1259], $P1258
.annotate "line", 502
    .return ($P1258)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1166"  :anon :subid("75_1256847896.72898") :outer("69_1256847896.72898")
.annotate "line", 477
    .const 'Sub' $P1183 = "76_1256847896.72898" 
    capture_lex $P1183
.annotate "line", 478
    find_lex $P1168, "$ast"
    $P1169 = $P1168."name"()
    .lex "$name", $P1169
.annotate "line", 479
    find_lex $P1171, "$name"
    set $S1172, $P1171
    iseq $I1173, $S1172, ""
    unless $I1173, if_1170_end
    find_lex $P1174, "$count"
    store_lex "$name", $P1174
    find_lex $P1175, "$ast"
    find_lex $P1176, "$name"
    $P1175."name"($P1176)
  if_1170_end:
.annotate "line", 480

            $P0 = find_lex '$name'
            $S0 = $P0
            $P1177 = split '=', $S0
        
    .lex "@names", $P1177
.annotate "line", 485
    find_lex $P1179, "@names"
    defined $I1180, $P1179
    unless $I1180, for_undef_307
    iter $P1178, $P1179
    new $P1202, 'ExceptionHandler'
    set_addr $P1202, loop1201_handler
    $P1202."handle_types"(65, 67, 66)
    push_eh $P1202
  loop1201_test:
    unless $P1178, loop1201_done
    shift $P1181, $P1178
  loop1201_redo:
    .const 'Sub' $P1183 = "76_1256847896.72898" 
    capture_lex $P1183
    $P1183($P1181)
  loop1201_next:
    goto loop1201_test
  loop1201_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1203, exception, 'type'
    eq $P1203, 65, loop1201_next
    eq $P1203, 67, loop1201_redo
  loop1201_done:
    pop_eh 
  for_undef_307:
.annotate "line", 477
    .return ($P1178)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1182"  :anon :subid("76_1256847896.72898") :outer("75_1256847896.72898")
    .param pmc param_1184
.annotate "line", 485
    .lex "$_", param_1184
.annotate "line", 486
    find_lex $P1188, "$_"
    set $S1189, $P1188
    iseq $I1190, $S1189, "0"
    unless $I1190, unless_1187
    new $P1186, 'Integer'
    set $P1186, $I1190
    goto unless_1187_end
  unless_1187:
    find_lex $P1191, "$_"
    set $N1192, $P1191
    new $P1193, "Integer"
    assign $P1193, 0
    set $N1194, $P1193
    isgt $I1195, $N1192, $N1194
    new $P1186, 'Integer'
    set $P1186, $I1195
  unless_1187_end:
    unless $P1186, if_1185_end
    find_lex $P1196, "$_"
    add $P1197, $P1196, 1
    store_lex "$count", $P1197
  if_1185_end:
.annotate "line", 487
    new $P1198, "Integer"
    assign $P1198, 1
    find_lex $P1199, "$_"
    find_lex $P1200, "%capnames"
    unless_null $P1200, vivify_308
    new $P1200, "Hash"
    store_lex "%capnames", $P1200
  vivify_308:
    set $P1200[$P1199], $P1198
.annotate "line", 485
    .return ($P1198)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1125"  :anon :subid("73_1256847896.72898") :outer("69_1256847896.72898")
    .param pmc param_1127
.annotate "line", 469
    .const 'Sub' $P1136 = "74_1256847896.72898" 
    capture_lex $P1136
    .lex "$_", param_1127
.annotate "line", 470
    find_lex $P1128, "$_"
    find_lex $P1129, "$count"
    $P1130 = "capnames"($P1128, $P1129)
    .lex "%x", $P1130
.annotate "line", 471
    find_lex $P1132, "%x"
    defined $I1133, $P1132
    unless $I1133, for_undef_310
    iter $P1131, $P1132
    new $P1150, 'ExceptionHandler'
    set_addr $P1150, loop1149_handler
    $P1150."handle_types"(65, 67, 66)
    push_eh $P1150
  loop1149_test:
    unless $P1131, loop1149_done
    shift $P1134, $P1131
  loop1149_redo:
    .const 'Sub' $P1136 = "74_1256847896.72898" 
    capture_lex $P1136
    $P1136($P1134)
  loop1149_next:
    goto loop1149_test
  loop1149_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1151, exception, 'type'
    eq $P1151, 65, loop1149_next
    eq $P1151, 67, loop1149_redo
  loop1149_done:
    pop_eh 
  for_undef_310:
.annotate "line", 474
    find_lex $P1152, "%x"
    unless_null $P1152, vivify_316
    new $P1152, "Hash"
  vivify_316:
    set $P1153, $P1152[""]
    unless_null $P1153, vivify_317
    new $P1153, "Undef"
  vivify_317:
    store_lex "$count", $P1153
.annotate "line", 469
    .return ($P1153)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1135"  :anon :subid("74_1256847896.72898") :outer("73_1256847896.72898")
    .param pmc param_1137
.annotate "line", 471
    .lex "$_", param_1137
.annotate "line", 472
    find_lex $P1138, "$_"
    find_lex $P1139, "%capnames"
    unless_null $P1139, vivify_311
    new $P1139, "Hash"
  vivify_311:
    set $P1140, $P1139[$P1138]
    unless_null $P1140, vivify_312
    new $P1140, "Undef"
  vivify_312:
    set $N1141, $P1140
    new $P1142, 'Float'
    set $P1142, $N1141
    find_lex $P1143, "$_"
    find_lex $P1144, "%x"
    unless_null $P1144, vivify_313
    new $P1144, "Hash"
  vivify_313:
    set $P1145, $P1144[$P1143]
    unless_null $P1145, vivify_314
    new $P1145, "Undef"
  vivify_314:
    add $P1146, $P1142, $P1145
    find_lex $P1147, "$_"
    find_lex $P1148, "%capnames"
    unless_null $P1148, vivify_315
    new $P1148, "Hash"
    store_lex "%capnames", $P1148
  vivify_315:
    set $P1148[$P1147], $P1146
.annotate "line", 471
    .return ($P1146)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1056"  :anon :subid("70_1256847896.72898") :outer("69_1256847896.72898")
.annotate "line", 455
    .const 'Sub' $P1065 = "71_1256847896.72898" 
    capture_lex $P1065
.annotate "line", 456
    find_lex $P1058, "$count"
    .lex "$max", $P1058
.annotate "line", 457
    find_lex $P1060, "$ast"
    $P1061 = $P1060."list"()
    defined $I1062, $P1061
    unless $I1062, for_undef_318
    iter $P1059, $P1061
    new $P1113, 'ExceptionHandler'
    set_addr $P1113, loop1112_handler
    $P1113."handle_types"(65, 67, 66)
    push_eh $P1113
  loop1112_test:
    unless $P1059, loop1112_done
    shift $P1063, $P1059
  loop1112_redo:
    .const 'Sub' $P1065 = "71_1256847896.72898" 
    capture_lex $P1065
    $P1065($P1063)
  loop1112_next:
    goto loop1112_test
  loop1112_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1114, exception, 'type'
    eq $P1114, 65, loop1112_next
    eq $P1114, 67, loop1112_redo
  loop1112_done:
    pop_eh 
  for_undef_318:
.annotate "line", 466
    find_lex $P1115, "$max"
    store_lex "$count", $P1115
.annotate "line", 455
    .return ($P1115)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1064"  :anon :subid("71_1256847896.72898") :outer("70_1256847896.72898")
    .param pmc param_1066
.annotate "line", 457
    .const 'Sub' $P1075 = "72_1256847896.72898" 
    capture_lex $P1075
    .lex "$_", param_1066
.annotate "line", 458
    find_lex $P1067, "$_"
    find_lex $P1068, "$count"
    $P1069 = "capnames"($P1067, $P1068)
    .lex "%x", $P1069
.annotate "line", 459
    find_lex $P1071, "%x"
    defined $I1072, $P1071
    unless $I1072, for_undef_319
    iter $P1070, $P1071
    new $P1100, 'ExceptionHandler'
    set_addr $P1100, loop1099_handler
    $P1100."handle_types"(65, 67, 66)
    push_eh $P1100
  loop1099_test:
    unless $P1070, loop1099_done
    shift $P1073, $P1070
  loop1099_redo:
    .const 'Sub' $P1075 = "72_1256847896.72898" 
    capture_lex $P1075
    $P1075($P1073)
  loop1099_next:
    goto loop1099_test
  loop1099_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1101, exception, 'type'
    eq $P1101, 65, loop1099_next
    eq $P1101, 67, loop1099_redo
  loop1099_done:
    pop_eh 
  for_undef_319:
.annotate "line", 464
    find_lex $P1104, "%x"
    unless_null $P1104, vivify_325
    new $P1104, "Hash"
  vivify_325:
    set $P1105, $P1104[""]
    unless_null $P1105, vivify_326
    new $P1105, "Undef"
  vivify_326:
    set $N1106, $P1105
    find_lex $P1107, "$max"
    set $N1108, $P1107
    isgt $I1109, $N1106, $N1108
    if $I1109, if_1103
    new $P1102, 'Integer'
    set $P1102, $I1109
    goto if_1103_end
  if_1103:
    find_lex $P1110, "%x"
    unless_null $P1110, vivify_327
    new $P1110, "Hash"
  vivify_327:
    set $P1111, $P1110[""]
    unless_null $P1111, vivify_328
    new $P1111, "Undef"
  vivify_328:
    store_lex "$max", $P1111
    set $P1102, $P1111
  if_1103_end:
.annotate "line", 457
    .return ($P1102)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1074"  :anon :subid("72_1256847896.72898") :outer("71_1256847896.72898")
    .param pmc param_1076
.annotate "line", 459
    .lex "$_", param_1076
.annotate "line", 460
    find_lex $P1081, "$_"
    find_lex $P1082, "%capnames"
    unless_null $P1082, vivify_320
    new $P1082, "Hash"
  vivify_320:
    set $P1083, $P1082[$P1081]
    unless_null $P1083, vivify_321
    new $P1083, "Undef"
  vivify_321:
    set $N1084, $P1083
    new $P1085, "Integer"
    assign $P1085, 2
    set $N1086, $P1085
    islt $I1087, $N1084, $N1086
    if $I1087, if_1080
    new $P1079, 'Integer'
    set $P1079, $I1087
    goto if_1080_end
  if_1080:
    find_lex $P1088, "$_"
    find_lex $P1089, "%x"
    unless_null $P1089, vivify_322
    new $P1089, "Hash"
  vivify_322:
    set $P1090, $P1089[$P1088]
    unless_null $P1090, vivify_323
    new $P1090, "Undef"
  vivify_323:
    set $N1091, $P1090
    new $P1092, "Integer"
    assign $P1092, 1
    set $N1093, $P1092
    iseq $I1094, $N1091, $N1093
    new $P1079, 'Integer'
    set $P1079, $I1094
  if_1080_end:
    if $P1079, if_1078
    new $P1096, "Integer"
    assign $P1096, 2
    set $P1077, $P1096
    goto if_1078_end
  if_1078:
    new $P1095, "Integer"
    assign $P1095, 1
    set $P1077, $P1095
  if_1078_end:
.annotate "line", 461
    find_lex $P1097, "$_"
    find_lex $P1098, "%capnames"
    unless_null $P1098, vivify_324
    new $P1098, "Hash"
    store_lex "%capnames", $P1098
  vivify_324:
    set $P1098[$P1097], $P1077
.annotate "line", 459
    .return ($P1077)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "backmod"  :subid("82_1256847896.72898") :outer("11_1256847896.72898")
    .param pmc param_1298
    .param pmc param_1299
.annotate "line", 518
    new $P1297, 'ExceptionHandler'
    set_addr $P1297, control_1296
    $P1297."handle_types"(58)
    push_eh $P1297
    .lex "$ast", param_1298
    .lex "$backmod", param_1299
.annotate "line", 519
    find_lex $P1301, "$backmod"
    set $S1302, $P1301
    iseq $I1303, $S1302, ":"
    if $I1303, if_1300
.annotate "line", 520
    find_lex $P1308, "$backmod"
    set $S1309, $P1308
    iseq $I1310, $S1309, ":?"
    unless $I1310, unless_1307
    new $P1306, 'Integer'
    set $P1306, $I1310
    goto unless_1307_end
  unless_1307:
    find_lex $P1311, "$backmod"
    set $S1312, $P1311
    iseq $I1313, $S1312, "?"
    new $P1306, 'Integer'
    set $P1306, $I1313
  unless_1307_end:
    if $P1306, if_1305
.annotate "line", 521
    find_lex $P1318, "$backmod"
    set $S1319, $P1318
    iseq $I1320, $S1319, ":!"
    unless $I1320, unless_1317
    new $P1316, 'Integer'
    set $P1316, $I1320
    goto unless_1317_end
  unless_1317:
    find_lex $P1321, "$backmod"
    set $S1322, $P1321
    iseq $I1323, $S1322, "!"
    new $P1316, 'Integer'
    set $P1316, $I1323
  unless_1317_end:
    unless $P1316, if_1315_end
    find_lex $P1324, "$ast"
    $P1324."backtrack"("g")
  if_1315_end:
    goto if_1305_end
  if_1305:
.annotate "line", 520
    find_lex $P1314, "$ast"
    $P1314."backtrack"("f")
  if_1305_end:
    goto if_1300_end
  if_1300:
.annotate "line", 519
    find_lex $P1304, "$ast"
    $P1304."backtrack"("r")
  if_1300_end:
    find_lex $P1325, "$ast"
.annotate "line", 518
    .return ($P1325)
  control_1296:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1326, exception, "payload"
    .return ($P1326)
    rethrow exception
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "subrule_alias"  :subid("83_1256847896.72898") :outer("11_1256847896.72898")
    .param pmc param_1330
    .param pmc param_1331
.annotate "line", 525
    new $P1329, 'ExceptionHandler'
    set_addr $P1329, control_1328
    $P1329."handle_types"(58)
    push_eh $P1329
    .lex "$past", param_1330
    .lex "$name", param_1331
.annotate "line", 526
    find_lex $P1333, "$past"
    unless_null $P1333, vivify_330
    new $P1333, "Hash"
  vivify_330:
    set $P1334, $P1333["aliased"]
    unless_null $P1334, vivify_331
    new $P1334, "Undef"
  vivify_331:
    unless $P1334, if_1332_end
    find_lex $P1335, "$name"
    concat $P1336, $P1335, "="
    find_lex $P1337, "$past"
    $S1338 = $P1337."name"()
    concat $P1339, $P1336, $S1338
    store_lex "$name", $P1339
  if_1332_end:
.annotate "line", 527
    find_lex $P1340, "$past"
    find_lex $P1341, "$name"
    $P1340."name"($P1341)
.annotate "line", 528
    new $P1342, "Integer"
    assign $P1342, 1
    find_lex $P1343, "$past"
    unless_null $P1343, vivify_332
    new $P1343, "Hash"
    store_lex "$past", $P1343
  vivify_332:
    set $P1343["aliased"], $P1342
.annotate "line", 525
    .return ($P1342)
  control_1328:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1344, exception, "payload"
    .return ($P1344)
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
