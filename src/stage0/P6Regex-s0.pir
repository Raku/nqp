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

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1295142316.828")
.annotate 'line', 0
    get_hll_global $P14, ["Regex";"P6Regex";"Grammar"], "_block13" 
    capture_lex $P14
.annotate 'line', 1
    nqp_dynop_setup 
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 3
    get_hll_global $P14, ["Regex";"P6Regex";"Grammar"], "_block13" 
    capture_lex $P14
    $P620 = $P14()
.annotate 'line', 1
    .return ($P620)
    .const 'Sub' $P622 = "174_1295142316.828" 
    .return ($P622)
.end


.namespace []
.sub "" :load :init :subid("post175") :outer("10_1295142316.828")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1295142316.828" 
    .local pmc block
    set block, $P12
    $P625 = get_root_global ["parrot"], "P6metaclass"
    $P625."new_class"("Regex::P6Regex::Grammar", "HLL::Grammar" :named("parent"))
.end


.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block13"  :subid("11_1295142316.828") :outer("10_1295142316.828")
.annotate 'line', 3
    .const 'Sub' $P609 = "171_1295142316.828" 
    capture_lex $P609
    .const 'Sub' $P602 = "169_1295142316.828" 
    capture_lex $P602
    .const 'Sub' $P595 = "167_1295142316.828" 
    capture_lex $P595
    .const 'Sub' $P575 = "162_1295142316.828" 
    capture_lex $P575
    .const 'Sub' $P541 = "156_1295142316.828" 
    capture_lex $P541
    .const 'Sub' $P529 = "153_1295142316.828" 
    capture_lex $P529
    .const 'Sub' $P517 = "150_1295142316.828" 
    capture_lex $P517
    .const 'Sub' $P511 = "148_1295142316.828" 
    capture_lex $P511
    .const 'Sub' $P500 = "145_1295142316.828" 
    capture_lex $P500
    .const 'Sub' $P489 = "142_1295142316.828" 
    capture_lex $P489
    .const 'Sub' $P480 = "138_1295142316.828" 
    capture_lex $P480
    .const 'Sub' $P470 = "135_1295142316.828" 
    capture_lex $P470
    .const 'Sub' $P464 = "133_1295142316.828" 
    capture_lex $P464
    .const 'Sub' $P458 = "131_1295142316.828" 
    capture_lex $P458
    .const 'Sub' $P452 = "129_1295142316.828" 
    capture_lex $P452
    .const 'Sub' $P446 = "127_1295142316.828" 
    capture_lex $P446
    .const 'Sub' $P438 = "125_1295142316.828" 
    capture_lex $P438
    .const 'Sub' $P427 = "123_1295142316.828" 
    capture_lex $P427
    .const 'Sub' $P416 = "121_1295142316.828" 
    capture_lex $P416
    .const 'Sub' $P410 = "119_1295142316.828" 
    capture_lex $P410
    .const 'Sub' $P404 = "117_1295142316.828" 
    capture_lex $P404
    .const 'Sub' $P398 = "115_1295142316.828" 
    capture_lex $P398
    .const 'Sub' $P392 = "113_1295142316.828" 
    capture_lex $P392
    .const 'Sub' $P386 = "111_1295142316.828" 
    capture_lex $P386
    .const 'Sub' $P380 = "109_1295142316.828" 
    capture_lex $P380
    .const 'Sub' $P374 = "107_1295142316.828" 
    capture_lex $P374
    .const 'Sub' $P368 = "105_1295142316.828" 
    capture_lex $P368
    .const 'Sub' $P356 = "101_1295142316.828" 
    capture_lex $P356
    .const 'Sub' $P346 = "99_1295142316.828" 
    capture_lex $P346
    .const 'Sub' $P339 = "97_1295142316.828" 
    capture_lex $P339
    .const 'Sub' $P327 = "95_1295142316.828" 
    capture_lex $P327
    .const 'Sub' $P320 = "93_1295142316.828" 
    capture_lex $P320
    .const 'Sub' $P314 = "91_1295142316.828" 
    capture_lex $P314
    .const 'Sub' $P308 = "89_1295142316.828" 
    capture_lex $P308
    .const 'Sub' $P302 = "87_1295142316.828" 
    capture_lex $P302
    .const 'Sub' $P295 = "85_1295142316.828" 
    capture_lex $P295
    .const 'Sub' $P288 = "83_1295142316.828" 
    capture_lex $P288
    .const 'Sub' $P281 = "81_1295142316.828" 
    capture_lex $P281
    .const 'Sub' $P274 = "79_1295142316.828" 
    capture_lex $P274
    .const 'Sub' $P268 = "77_1295142316.828" 
    capture_lex $P268
    .const 'Sub' $P262 = "75_1295142316.828" 
    capture_lex $P262
    .const 'Sub' $P256 = "73_1295142316.828" 
    capture_lex $P256
    .const 'Sub' $P250 = "71_1295142316.828" 
    capture_lex $P250
    .const 'Sub' $P244 = "69_1295142316.828" 
    capture_lex $P244
    .const 'Sub' $P239 = "67_1295142316.828" 
    capture_lex $P239
    .const 'Sub' $P234 = "65_1295142316.828" 
    capture_lex $P234
    .const 'Sub' $P228 = "63_1295142316.828" 
    capture_lex $P228
    .const 'Sub' $P222 = "61_1295142316.828" 
    capture_lex $P222
    .const 'Sub' $P216 = "59_1295142316.828" 
    capture_lex $P216
    .const 'Sub' $P201 = "54_1295142316.828" 
    capture_lex $P201
    .const 'Sub' $P186 = "52_1295142316.828" 
    capture_lex $P186
    .const 'Sub' $P163 = "46_1295142316.828" 
    capture_lex $P163
    .const 'Sub' $P156 = "44_1295142316.828" 
    capture_lex $P156
    .const 'Sub' $P149 = "42_1295142316.828" 
    capture_lex $P149
    .const 'Sub' $P142 = "40_1295142316.828" 
    capture_lex $P142
    .const 'Sub' $P125 = "35_1295142316.828" 
    capture_lex $P125
    .const 'Sub' $P113 = "32_1295142316.828" 
    capture_lex $P113
    .const 'Sub' $P106 = "30_1295142316.828" 
    capture_lex $P106
    .const 'Sub' $P97 = "28_1295142316.828" 
    capture_lex $P97
    .const 'Sub' $P87 = "26_1295142316.828" 
    capture_lex $P87
    .const 'Sub' $P80 = "24_1295142316.828" 
    capture_lex $P80
    .const 'Sub' $P68 = "22_1295142316.828" 
    capture_lex $P68
    .const 'Sub' $P61 = "20_1295142316.828" 
    capture_lex $P61
    .const 'Sub' $P54 = "18_1295142316.828" 
    capture_lex $P54
    .const 'Sub' $P44 = "15_1295142316.828" 
    capture_lex $P44
    .const 'Sub' $P37 = "13_1295142316.828" 
    capture_lex $P37
    .const 'Sub' $P15 = "12_1295142316.828" 
    capture_lex $P15
    nqp_dynop_setup 
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
    .const 'Sub' $P609 = "171_1295142316.828" 
    capture_lex $P609
    .return ($P609)
    .const 'Sub' $P617 = "173_1295142316.828" 
    .return ($P617)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.include "except_types.pasm"
.sub "obs"  :subid("12_1295142316.828") :method :outer("11_1295142316.828")
    .param pmc param_18
    .param pmc param_19
    .param pmc param_20 :optional
    .param int has_param_20 :opt_flag
.annotate 'line', 3
    new $P17, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P17, control_16
    push_eh $P17
    .lex "self", self
    .lex "$old", param_18
    .lex "$new", param_19
    if has_param_20, optparam_176
    new $P21, "String"
    assign $P21, "in Perl 6"
    set param_20, $P21
  optparam_176:
    .lex "$when", param_20
.annotate 'line', 4
    find_lex $P22, "self"
    new $P23, "String"
    assign $P23, "Unsupported use of "
    find_lex $P24, "$old"
    set $S25, $P24
    concat $P26, $P23, $S25
    concat $P27, $P26, ";"
.annotate 'line', 5
    find_lex $P28, "$when"
    set $S29, $P28
    concat $P30, $P27, $S29
    concat $P31, $P30, " please use "
    find_lex $P32, "$new"
    set $S33, $P32
    concat $P34, $P31, $S33
    $P35 = $P22."panic"($P34)
.annotate 'line', 3
    .return ($P35)
  control_16:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P36, exception, "payload"
    .return ($P36)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "ws"  :subid("13_1295142316.828") :method :outer("11_1295142316.828")
.annotate 'line', 3
    .local string rx38_tgt
    .local int rx38_pos
    .local int rx38_off
    .local int rx38_eos
    .local int rx38_rep
    .local pmc rx38_cur
    .local pmc rx38_debug
    (rx38_cur, rx38_pos, rx38_tgt, $I10) = self."!cursor_start"()
    getattribute rx38_debug, rx38_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx38_cur
    .local pmc match
    .lex "$/", match
    length rx38_eos, rx38_tgt
    gt rx38_pos, rx38_eos, rx38_done
    set rx38_off, 0
    lt rx38_pos, 2, rx38_start
    sub rx38_off, rx38_pos, 1
    substr rx38_tgt, rx38_tgt, rx38_off
  rx38_start:
    eq $I10, 1, rx38_restart
    if_null rx38_debug, debug_177
    rx38_cur."!cursor_debug"("START", "ws")
  debug_177:
    $I10 = self.'from'()
    ne $I10, -1, rxscan41_done
    goto rxscan41_scan
  rxscan41_loop:
    ($P10) = rx38_cur."from"()
    inc $P10
    set rx38_pos, $P10
    ge rx38_pos, rx38_eos, rxscan41_done
  rxscan41_scan:
    set_addr $I10, rxscan41_loop
    rx38_cur."!mark_push"(0, rx38_pos, $I10)
  rxscan41_done:
.annotate 'line', 8
  # rx rxquantr42 ** 0..*
    set_addr $I10, rxquantr42_done
    rx38_cur."!mark_push"(0, rx38_pos, $I10)
  rxquantr42_loop:
  alt43_0:
    set_addr $I10, alt43_1
    rx38_cur."!mark_push"(0, rx38_pos, $I10)
  # rx charclass_q s r 1..-1
    sub $I10, rx38_pos, rx38_off
    find_not_cclass $I11, 32, rx38_tgt, $I10, rx38_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx38_fail
    add rx38_pos, rx38_off, $I11
    goto alt43_end
  alt43_1:
  # rx literal  "#"
    add $I11, rx38_pos, 1
    gt $I11, rx38_eos, rx38_fail
    sub $I11, rx38_pos, rx38_off
    ord $I11, rx38_tgt, $I11
    ne $I11, 35, rx38_fail
    add rx38_pos, 1
  # rx charclass_q N r 0..-1
    sub $I10, rx38_pos, rx38_off
    find_cclass $I11, 4096, rx38_tgt, $I10, rx38_eos
    add rx38_pos, rx38_off, $I11
  alt43_end:
    set_addr $I10, rxquantr42_done
    (rx38_rep) = rx38_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr42_done
    rx38_cur."!mark_push"(rx38_rep, rx38_pos, $I10)
    goto rxquantr42_loop
  rxquantr42_done:
  # rx pass
    rx38_cur."!cursor_pass"(rx38_pos, "ws")
    if_null rx38_debug, debug_178
    rx38_cur."!cursor_debug"("PASS", "ws", " at pos=", rx38_pos)
  debug_178:
    .return (rx38_cur)
  rx38_restart:
.annotate 'line', 3
    if_null rx38_debug, debug_179
    rx38_cur."!cursor_debug"("NEXT", "ws")
  debug_179:
  rx38_fail:
    (rx38_rep, rx38_pos, $I10, $P10) = rx38_cur."!mark_fail"(0)
    lt rx38_pos, -1, rx38_done
    eq rx38_pos, -1, rx38_fail
    jump $I10
  rx38_done:
    rx38_cur."!cursor_fail"()
    if_null rx38_debug, debug_180
    rx38_cur."!cursor_debug"("FAIL", "ws")
  debug_180:
    .return (rx38_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__ws"  :subid("14_1295142316.828") :method
.annotate 'line', 3
    new $P40, "ResizablePMCArray"
    push $P40, ""
    .return ($P40)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "normspace"  :subid("15_1295142316.828") :method :outer("11_1295142316.828")
.annotate 'line', 3
    .const 'Sub' $P50 = "17_1295142316.828" 
    capture_lex $P50
    .local string rx45_tgt
    .local int rx45_pos
    .local int rx45_off
    .local int rx45_eos
    .local int rx45_rep
    .local pmc rx45_cur
    .local pmc rx45_debug
    (rx45_cur, rx45_pos, rx45_tgt, $I10) = self."!cursor_start"()
    getattribute rx45_debug, rx45_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx45_cur
    .local pmc match
    .lex "$/", match
    length rx45_eos, rx45_tgt
    gt rx45_pos, rx45_eos, rx45_done
    set rx45_off, 0
    lt rx45_pos, 2, rx45_start
    sub rx45_off, rx45_pos, 1
    substr rx45_tgt, rx45_tgt, rx45_off
  rx45_start:
    eq $I10, 1, rx45_restart
    if_null rx45_debug, debug_181
    rx45_cur."!cursor_debug"("START", "normspace")
  debug_181:
    $I10 = self.'from'()
    ne $I10, -1, rxscan48_done
    goto rxscan48_scan
  rxscan48_loop:
    ($P10) = rx45_cur."from"()
    inc $P10
    set rx45_pos, $P10
    ge rx45_pos, rx45_eos, rxscan48_done
  rxscan48_scan:
    set_addr $I10, rxscan48_loop
    rx45_cur."!mark_push"(0, rx45_pos, $I10)
  rxscan48_done:
.annotate 'line', 10
  # rx subrule "before" subtype=zerowidth negate=
    rx45_cur."!cursor_pos"(rx45_pos)
    .const 'Sub' $P50 = "17_1295142316.828" 
    capture_lex $P50
    $P10 = rx45_cur."before"($P50)
    unless $P10, rx45_fail
  # rx subrule "ws" subtype=method negate=
    rx45_cur."!cursor_pos"(rx45_pos)
    $P10 = rx45_cur."ws"()
    unless $P10, rx45_fail
    rx45_pos = $P10."pos"()
  # rx pass
    rx45_cur."!cursor_pass"(rx45_pos, "normspace")
    if_null rx45_debug, debug_186
    rx45_cur."!cursor_debug"("PASS", "normspace", " at pos=", rx45_pos)
  debug_186:
    .return (rx45_cur)
  rx45_restart:
.annotate 'line', 3
    if_null rx45_debug, debug_187
    rx45_cur."!cursor_debug"("NEXT", "normspace")
  debug_187:
  rx45_fail:
    (rx45_rep, rx45_pos, $I10, $P10) = rx45_cur."!mark_fail"(0)
    lt rx45_pos, -1, rx45_done
    eq rx45_pos, -1, rx45_fail
    jump $I10
  rx45_done:
    rx45_cur."!cursor_fail"()
    if_null rx45_debug, debug_188
    rx45_cur."!cursor_debug"("FAIL", "normspace")
  debug_188:
    .return (rx45_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__normspace"  :subid("16_1295142316.828") :method
.annotate 'line', 3
    new $P47, "ResizablePMCArray"
    push $P47, ""
    .return ($P47)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block49"  :anon :subid("17_1295142316.828") :method :outer("15_1295142316.828")
.annotate 'line', 10
    .local string rx51_tgt
    .local int rx51_pos
    .local int rx51_off
    .local int rx51_eos
    .local int rx51_rep
    .local pmc rx51_cur
    .local pmc rx51_debug
    (rx51_cur, rx51_pos, rx51_tgt, $I10) = self."!cursor_start"()
    getattribute rx51_debug, rx51_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx51_cur
    .local pmc match
    .lex "$/", match
    length rx51_eos, rx51_tgt
    gt rx51_pos, rx51_eos, rx51_done
    set rx51_off, 0
    lt rx51_pos, 2, rx51_start
    sub rx51_off, rx51_pos, 1
    substr rx51_tgt, rx51_tgt, rx51_off
  rx51_start:
    eq $I10, 1, rx51_restart
    if_null rx51_debug, debug_182
    rx51_cur."!cursor_debug"("START", "")
  debug_182:
    $I10 = self.'from'()
    ne $I10, -1, rxscan52_done
    goto rxscan52_scan
  rxscan52_loop:
    ($P10) = rx51_cur."from"()
    inc $P10
    set rx51_pos, $P10
    ge rx51_pos, rx51_eos, rxscan52_done
  rxscan52_scan:
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
    ord $I11, rx51_tgt, $I11
    ne $I11, 35, rx51_fail
    add rx51_pos, 1
  alt53_end:
  # rx pass
    rx51_cur."!cursor_pass"(rx51_pos, "")
    if_null rx51_debug, debug_183
    rx51_cur."!cursor_debug"("PASS", "", " at pos=", rx51_pos)
  debug_183:
    .return (rx51_cur)
  rx51_restart:
    if_null rx51_debug, debug_184
    rx51_cur."!cursor_debug"("NEXT", "")
  debug_184:
  rx51_fail:
    (rx51_rep, rx51_pos, $I10, $P10) = rx51_cur."!mark_fail"(0)
    lt rx51_pos, -1, rx51_done
    eq rx51_pos, -1, rx51_fail
    jump $I10
  rx51_done:
    rx51_cur."!cursor_fail"()
    if_null rx51_debug, debug_185
    rx51_cur."!cursor_debug"("FAIL", "")
  debug_185:
    .return (rx51_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "identifier"  :subid("18_1295142316.828") :method :outer("11_1295142316.828")
.annotate 'line', 3
    .local string rx55_tgt
    .local int rx55_pos
    .local int rx55_off
    .local int rx55_eos
    .local int rx55_rep
    .local pmc rx55_cur
    .local pmc rx55_debug
    (rx55_cur, rx55_pos, rx55_tgt, $I10) = self."!cursor_start"()
    getattribute rx55_debug, rx55_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx55_cur
    .local pmc match
    .lex "$/", match
    length rx55_eos, rx55_tgt
    gt rx55_pos, rx55_eos, rx55_done
    set rx55_off, 0
    lt rx55_pos, 2, rx55_start
    sub rx55_off, rx55_pos, 1
    substr rx55_tgt, rx55_tgt, rx55_off
  rx55_start:
    eq $I10, 1, rx55_restart
    if_null rx55_debug, debug_189
    rx55_cur."!cursor_debug"("START", "identifier")
  debug_189:
    $I10 = self.'from'()
    ne $I10, -1, rxscan59_done
    goto rxscan59_scan
  rxscan59_loop:
    ($P10) = rx55_cur."from"()
    inc $P10
    set rx55_pos, $P10
    ge rx55_pos, rx55_eos, rxscan59_done
  rxscan59_scan:
    set_addr $I10, rxscan59_loop
    rx55_cur."!mark_push"(0, rx55_pos, $I10)
  rxscan59_done:
.annotate 'line', 12
  # rx subrule "ident" subtype=method negate=
    rx55_cur."!cursor_pos"(rx55_pos)
    $P10 = rx55_cur."ident"()
    unless $P10, rx55_fail
    rx55_pos = $P10."pos"()
  # rx rxquantr60 ** 0..*
    set_addr $I10, rxquantr60_done
    rx55_cur."!mark_push"(0, rx55_pos, $I10)
  rxquantr60_loop:
  # rx enumcharlist negate=0 
    ge rx55_pos, rx55_eos, rx55_fail
    sub $I10, rx55_pos, rx55_off
    substr $S10, rx55_tgt, $I10, 1
    index $I11, "-'", $S10
    lt $I11, 0, rx55_fail
    inc rx55_pos
  # rx subrule "ident" subtype=method negate=
    rx55_cur."!cursor_pos"(rx55_pos)
    $P10 = rx55_cur."ident"()
    unless $P10, rx55_fail
    rx55_pos = $P10."pos"()
    set_addr $I10, rxquantr60_done
    (rx55_rep) = rx55_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr60_done
    rx55_cur."!mark_push"(rx55_rep, rx55_pos, $I10)
    goto rxquantr60_loop
  rxquantr60_done:
  # rx pass
    rx55_cur."!cursor_pass"(rx55_pos, "identifier")
    if_null rx55_debug, debug_190
    rx55_cur."!cursor_debug"("PASS", "identifier", " at pos=", rx55_pos)
  debug_190:
    .return (rx55_cur)
  rx55_restart:
.annotate 'line', 3
    if_null rx55_debug, debug_191
    rx55_cur."!cursor_debug"("NEXT", "identifier")
  debug_191:
  rx55_fail:
    (rx55_rep, rx55_pos, $I10, $P10) = rx55_cur."!mark_fail"(0)
    lt rx55_pos, -1, rx55_done
    eq rx55_pos, -1, rx55_fail
    jump $I10
  rx55_done:
    rx55_cur."!cursor_fail"()
    if_null rx55_debug, debug_192
    rx55_cur."!cursor_debug"("FAIL", "identifier")
  debug_192:
    .return (rx55_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__identifier"  :subid("19_1295142316.828") :method
.annotate 'line', 3
    $P57 = self."!PREFIX__!subrule"("ident", "")
    new $P58, "ResizablePMCArray"
    push $P58, $P57
    .return ($P58)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "arg"  :subid("20_1295142316.828") :method :outer("11_1295142316.828")
.annotate 'line', 3
    .local string rx62_tgt
    .local int rx62_pos
    .local int rx62_off
    .local int rx62_eos
    .local int rx62_rep
    .local pmc rx62_cur
    .local pmc rx62_debug
    (rx62_cur, rx62_pos, rx62_tgt, $I10) = self."!cursor_start"()
    getattribute rx62_debug, rx62_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx62_cur
    .local pmc match
    .lex "$/", match
    length rx62_eos, rx62_tgt
    gt rx62_pos, rx62_eos, rx62_done
    set rx62_off, 0
    lt rx62_pos, 2, rx62_start
    sub rx62_off, rx62_pos, 1
    substr rx62_tgt, rx62_tgt, rx62_off
  rx62_start:
    eq $I10, 1, rx62_restart
    if_null rx62_debug, debug_193
    rx62_cur."!cursor_debug"("START", "arg")
  debug_193:
    $I10 = self.'from'()
    ne $I10, -1, rxscan65_done
    goto rxscan65_scan
  rxscan65_loop:
    ($P10) = rx62_cur."from"()
    inc $P10
    set rx62_pos, $P10
    ge rx62_pos, rx62_eos, rxscan65_done
  rxscan65_scan:
    set_addr $I10, rxscan65_loop
    rx62_cur."!mark_push"(0, rx62_pos, $I10)
  rxscan65_done:
  alt66_0:
.annotate 'line', 15
    set_addr $I10, alt66_1
    rx62_cur."!mark_push"(0, rx62_pos, $I10)
.annotate 'line', 16
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx62_pos, rx62_off
    substr $S10, rx62_tgt, $I10, 1
    index $I11, "'", $S10
    lt $I11, 0, rx62_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx62_cur."!cursor_pos"(rx62_pos)
    $P10 = rx62_cur."quote_EXPR"(":q")
    unless $P10, rx62_fail
    rx62_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx62_pos = $P10."pos"()
    goto alt66_end
  alt66_1:
    set_addr $I10, alt66_2
    rx62_cur."!mark_push"(0, rx62_pos, $I10)
.annotate 'line', 17
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx62_pos, rx62_off
    substr $S10, rx62_tgt, $I10, 1
    index $I11, "\"", $S10
    lt $I11, 0, rx62_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx62_cur."!cursor_pos"(rx62_pos)
    $P10 = rx62_cur."quote_EXPR"(":qq")
    unless $P10, rx62_fail
    rx62_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx62_pos = $P10."pos"()
    goto alt66_end
  alt66_2:
.annotate 'line', 18
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
.annotate 'line', 14
  # rx pass
    rx62_cur."!cursor_pass"(rx62_pos, "arg")
    if_null rx62_debug, debug_194
    rx62_cur."!cursor_debug"("PASS", "arg", " at pos=", rx62_pos)
  debug_194:
    .return (rx62_cur)
  rx62_restart:
.annotate 'line', 3
    if_null rx62_debug, debug_195
    rx62_cur."!cursor_debug"("NEXT", "arg")
  debug_195:
  rx62_fail:
    (rx62_rep, rx62_pos, $I10, $P10) = rx62_cur."!mark_fail"(0)
    lt rx62_pos, -1, rx62_done
    eq rx62_pos, -1, rx62_fail
    jump $I10
  rx62_done:
    rx62_cur."!cursor_fail"()
    if_null rx62_debug, debug_196
    rx62_cur."!cursor_debug"("FAIL", "arg")
  debug_196:
    .return (rx62_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__arg"  :subid("21_1295142316.828") :method
.annotate 'line', 3
    new $P64, "ResizablePMCArray"
    push $P64, ""
    push $P64, "\""
    push $P64, "'"
    .return ($P64)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "arglist"  :subid("22_1295142316.828") :method :outer("11_1295142316.828")
.annotate 'line', 3
    .local string rx69_tgt
    .local int rx69_pos
    .local int rx69_off
    .local int rx69_eos
    .local int rx69_rep
    .local pmc rx69_cur
    .local pmc rx69_debug
    (rx69_cur, rx69_pos, rx69_tgt, $I10) = self."!cursor_start"()
    rx69_cur."!cursor_caparray"("arg")
    getattribute rx69_debug, rx69_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx69_cur
    .local pmc match
    .lex "$/", match
    length rx69_eos, rx69_tgt
    gt rx69_pos, rx69_eos, rx69_done
    set rx69_off, 0
    lt rx69_pos, 2, rx69_start
    sub rx69_off, rx69_pos, 1
    substr rx69_tgt, rx69_tgt, rx69_off
  rx69_start:
    eq $I10, 1, rx69_restart
    if_null rx69_debug, debug_197
    rx69_cur."!cursor_debug"("START", "arglist")
  debug_197:
    $I10 = self.'from'()
    ne $I10, -1, rxscan73_done
    goto rxscan73_scan
  rxscan73_loop:
    ($P10) = rx69_cur."from"()
    inc $P10
    set rx69_pos, $P10
    ge rx69_pos, rx69_eos, rxscan73_done
  rxscan73_scan:
    set_addr $I10, rxscan73_loop
    rx69_cur."!mark_push"(0, rx69_pos, $I10)
  rxscan73_done:
.annotate 'line', 22
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
  # rx rxquantr76 ** 0..*
    set_addr $I10, rxquantr76_done
    rx69_cur."!mark_push"(0, rx69_pos, $I10)
  rxquantr76_loop:
  # rx subrule "ws" subtype=method negate=
    rx69_cur."!cursor_pos"(rx69_pos)
    $P10 = rx69_cur."ws"()
    unless $P10, rx69_fail
    rx69_pos = $P10."pos"()
  # rx literal  ","
    add $I11, rx69_pos, 1
    gt $I11, rx69_eos, rx69_fail
    sub $I11, rx69_pos, rx69_off
    ord $I11, rx69_tgt, $I11
    ne $I11, 44, rx69_fail
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
    set_addr $I10, rxquantr76_done
    (rx69_rep) = rx69_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr76_done
    rx69_cur."!mark_push"(rx69_rep, rx69_pos, $I10)
    goto rxquantr76_loop
  rxquantr76_done:
  # rx subrule "ws" subtype=method negate=
    rx69_cur."!cursor_pos"(rx69_pos)
    $P10 = rx69_cur."ws"()
    unless $P10, rx69_fail
    rx69_pos = $P10."pos"()
  # rx pass
    rx69_cur."!cursor_pass"(rx69_pos, "arglist")
    if_null rx69_debug, debug_198
    rx69_cur."!cursor_debug"("PASS", "arglist", " at pos=", rx69_pos)
  debug_198:
    .return (rx69_cur)
  rx69_restart:
.annotate 'line', 3
    if_null rx69_debug, debug_199
    rx69_cur."!cursor_debug"("NEXT", "arglist")
  debug_199:
  rx69_fail:
    (rx69_rep, rx69_pos, $I10, $P10) = rx69_cur."!mark_fail"(0)
    lt rx69_pos, -1, rx69_done
    eq rx69_pos, -1, rx69_fail
    jump $I10
  rx69_done:
    rx69_cur."!cursor_fail"()
    if_null rx69_debug, debug_200
    rx69_cur."!cursor_debug"("FAIL", "arglist")
  debug_200:
    .return (rx69_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__arglist"  :subid("23_1295142316.828") :method
.annotate 'line', 3
    $P71 = self."!PREFIX__!subrule"("ws", "")
    new $P72, "ResizablePMCArray"
    push $P72, $P71
    .return ($P72)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "TOP"  :subid("24_1295142316.828") :method :outer("11_1295142316.828")
.annotate 'line', 3
    .local string rx81_tgt
    .local int rx81_pos
    .local int rx81_off
    .local int rx81_eos
    .local int rx81_rep
    .local pmc rx81_cur
    .local pmc rx81_debug
    (rx81_cur, rx81_pos, rx81_tgt, $I10) = self."!cursor_start"()
    getattribute rx81_debug, rx81_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx81_cur
    .local pmc match
    .lex "$/", match
    length rx81_eos, rx81_tgt
    gt rx81_pos, rx81_eos, rx81_done
    set rx81_off, 0
    lt rx81_pos, 2, rx81_start
    sub rx81_off, rx81_pos, 1
    substr rx81_tgt, rx81_tgt, rx81_off
  rx81_start:
    eq $I10, 1, rx81_restart
    if_null rx81_debug, debug_201
    rx81_cur."!cursor_debug"("START", "TOP")
  debug_201:
    $I10 = self.'from'()
    ne $I10, -1, rxscan85_done
    goto rxscan85_scan
  rxscan85_loop:
    ($P10) = rx81_cur."from"()
    inc $P10
    set rx81_pos, $P10
    ge rx81_pos, rx81_eos, rxscan85_done
  rxscan85_scan:
    set_addr $I10, rxscan85_loop
    rx81_cur."!mark_push"(0, rx81_pos, $I10)
  rxscan85_done:
.annotate 'line', 25
  # rx subrule "nibbler" subtype=capture negate=
    rx81_cur."!cursor_pos"(rx81_pos)
    $P10 = rx81_cur."nibbler"()
    unless $P10, rx81_fail
    rx81_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx81_pos = $P10."pos"()
  alt86_0:
.annotate 'line', 26
    set_addr $I10, alt86_1
    rx81_cur."!mark_push"(0, rx81_pos, $I10)
  # rxanchor eos
    ne rx81_pos, rx81_eos, rx81_fail
    goto alt86_end
  alt86_1:
  # rx subrule "panic" subtype=method negate=
    rx81_cur."!cursor_pos"(rx81_pos)
    $P10 = rx81_cur."panic"("Confused")
    unless $P10, rx81_fail
    rx81_pos = $P10."pos"()
  alt86_end:
.annotate 'line', 24
  # rx pass
    rx81_cur."!cursor_pass"(rx81_pos, "TOP")
    if_null rx81_debug, debug_202
    rx81_cur."!cursor_debug"("PASS", "TOP", " at pos=", rx81_pos)
  debug_202:
    .return (rx81_cur)
  rx81_restart:
.annotate 'line', 3
    if_null rx81_debug, debug_203
    rx81_cur."!cursor_debug"("NEXT", "TOP")
  debug_203:
  rx81_fail:
    (rx81_rep, rx81_pos, $I10, $P10) = rx81_cur."!mark_fail"(0)
    lt rx81_pos, -1, rx81_done
    eq rx81_pos, -1, rx81_fail
    jump $I10
  rx81_done:
    rx81_cur."!cursor_fail"()
    if_null rx81_debug, debug_204
    rx81_cur."!cursor_debug"("FAIL", "TOP")
  debug_204:
    .return (rx81_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__TOP"  :subid("25_1295142316.828") :method
.annotate 'line', 3
    $P83 = self."!PREFIX__!subrule"("nibbler", "")
    new $P84, "ResizablePMCArray"
    push $P84, $P83
    .return ($P84)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "nibbler"  :subid("26_1295142316.828") :method :outer("11_1295142316.828")
.annotate 'line', 3
    .local string rx88_tgt
    .local int rx88_pos
    .local int rx88_off
    .local int rx88_eos
    .local int rx88_rep
    .local pmc rx88_cur
    .local pmc rx88_debug
    (rx88_cur, rx88_pos, rx88_tgt, $I10) = self."!cursor_start"()
    rx88_cur."!cursor_caparray"("termconj")
    getattribute rx88_debug, rx88_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx88_cur
    .local pmc match
    .lex "$/", match
    length rx88_eos, rx88_tgt
    gt rx88_pos, rx88_eos, rx88_done
    set rx88_off, 0
    lt rx88_pos, 2, rx88_start
    sub rx88_off, rx88_pos, 1
    substr rx88_tgt, rx88_tgt, rx88_off
  rx88_start:
    eq $I10, 1, rx88_restart
    if_null rx88_debug, debug_205
    rx88_cur."!cursor_debug"("START", "nibbler")
  debug_205:
    $I10 = self.'from'()
    ne $I10, -1, rxscan91_done
    goto rxscan91_scan
  rxscan91_loop:
    ($P10) = rx88_cur."from"()
    inc $P10
    set rx88_pos, $P10
    ge rx88_pos, rx88_eos, rxscan91_done
  rxscan91_scan:
    set_addr $I10, rxscan91_loop
    rx88_cur."!mark_push"(0, rx88_pos, $I10)
  rxscan91_done:
.annotate 'line', 30
  # rx reduce name="nibbler" key="open"
    rx88_cur."!cursor_pos"(rx88_pos)
    rx88_cur."!reduce"("nibbler", "open")
.annotate 'line', 31
  # rx rxquantr92 ** 0..1
    set_addr $I10, rxquantr92_done
    rx88_cur."!mark_push"(0, rx88_pos, $I10)
  rxquantr92_loop:
  # rx subrule "ws" subtype=method negate=
    rx88_cur."!cursor_pos"(rx88_pos)
    $P10 = rx88_cur."ws"()
    unless $P10, rx88_fail
    rx88_pos = $P10."pos"()
  alt93_0:
    set_addr $I10, alt93_1
    rx88_cur."!mark_push"(0, rx88_pos, $I10)
  # rx literal  "||"
    add $I11, rx88_pos, 2
    gt $I11, rx88_eos, rx88_fail
    sub $I11, rx88_pos, rx88_off
    substr $S10, rx88_tgt, $I11, 2
    ne $S10, "||", rx88_fail
    add rx88_pos, 2
    goto alt93_end
  alt93_1:
    set_addr $I10, alt93_2
    rx88_cur."!mark_push"(0, rx88_pos, $I10)
  # rx literal  "|"
    add $I11, rx88_pos, 1
    gt $I11, rx88_eos, rx88_fail
    sub $I11, rx88_pos, rx88_off
    ord $I11, rx88_tgt, $I11
    ne $I11, 124, rx88_fail
    add rx88_pos, 1
    goto alt93_end
  alt93_2:
    set_addr $I10, alt93_3
    rx88_cur."!mark_push"(0, rx88_pos, $I10)
  # rx literal  "&&"
    add $I11, rx88_pos, 2
    gt $I11, rx88_eos, rx88_fail
    sub $I11, rx88_pos, rx88_off
    substr $S10, rx88_tgt, $I11, 2
    ne $S10, "&&", rx88_fail
    add rx88_pos, 2
    goto alt93_end
  alt93_3:
  # rx literal  "&"
    add $I11, rx88_pos, 1
    gt $I11, rx88_eos, rx88_fail
    sub $I11, rx88_pos, rx88_off
    ord $I11, rx88_tgt, $I11
    ne $I11, 38, rx88_fail
    add rx88_pos, 1
  alt93_end:
    set_addr $I10, rxquantr92_done
    (rx88_rep) = rx88_cur."!mark_commit"($I10)
  rxquantr92_done:
.annotate 'line', 32
  # rx subrule "termconj" subtype=capture negate=
    rx88_cur."!cursor_pos"(rx88_pos)
    $P10 = rx88_cur."termconj"()
    unless $P10, rx88_fail
    rx88_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termconj")
    rx88_pos = $P10."pos"()
.annotate 'line', 35
  # rx rxquantr94 ** 0..*
    set_addr $I10, rxquantr94_done
    rx88_cur."!mark_push"(0, rx88_pos, $I10)
  rxquantr94_loop:
  alt95_0:
.annotate 'line', 33
    set_addr $I10, alt95_1
    rx88_cur."!mark_push"(0, rx88_pos, $I10)
  # rx literal  "||"
    add $I11, rx88_pos, 2
    gt $I11, rx88_eos, rx88_fail
    sub $I11, rx88_pos, rx88_off
    substr $S10, rx88_tgt, $I11, 2
    ne $S10, "||", rx88_fail
    add rx88_pos, 2
    goto alt95_end
  alt95_1:
  # rx literal  "|"
    add $I11, rx88_pos, 1
    gt $I11, rx88_eos, rx88_fail
    sub $I11, rx88_pos, rx88_off
    ord $I11, rx88_tgt, $I11
    ne $I11, 124, rx88_fail
    add rx88_pos, 1
  alt95_end:
  alt96_0:
.annotate 'line', 34
    set_addr $I10, alt96_1
    rx88_cur."!mark_push"(0, rx88_pos, $I10)
  # rx subrule "termconj" subtype=capture negate=
    rx88_cur."!cursor_pos"(rx88_pos)
    $P10 = rx88_cur."termconj"()
    unless $P10, rx88_fail
    rx88_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termconj")
    rx88_pos = $P10."pos"()
    goto alt96_end
  alt96_1:
  # rx subrule "panic" subtype=method negate=
    rx88_cur."!cursor_pos"(rx88_pos)
    $P10 = rx88_cur."panic"("Null pattern not allowed")
    unless $P10, rx88_fail
    rx88_pos = $P10."pos"()
  alt96_end:
.annotate 'line', 35
    set_addr $I10, rxquantr94_done
    (rx88_rep) = rx88_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr94_done
    rx88_cur."!mark_push"(rx88_rep, rx88_pos, $I10)
    goto rxquantr94_loop
  rxquantr94_done:
.annotate 'line', 29
  # rx pass
    rx88_cur."!cursor_pass"(rx88_pos, "nibbler")
    if_null rx88_debug, debug_206
    rx88_cur."!cursor_debug"("PASS", "nibbler", " at pos=", rx88_pos)
  debug_206:
    .return (rx88_cur)
  rx88_restart:
.annotate 'line', 3
    if_null rx88_debug, debug_207
    rx88_cur."!cursor_debug"("NEXT", "nibbler")
  debug_207:
  rx88_fail:
    (rx88_rep, rx88_pos, $I10, $P10) = rx88_cur."!mark_fail"(0)
    lt rx88_pos, -1, rx88_done
    eq rx88_pos, -1, rx88_fail
    jump $I10
  rx88_done:
    rx88_cur."!cursor_fail"()
    if_null rx88_debug, debug_208
    rx88_cur."!cursor_debug"("FAIL", "nibbler")
  debug_208:
    .return (rx88_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__nibbler"  :subid("27_1295142316.828") :method
.annotate 'line', 3
    new $P90, "ResizablePMCArray"
    push $P90, ""
    .return ($P90)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "termconj"  :subid("28_1295142316.828") :method :outer("11_1295142316.828")
.annotate 'line', 3
    .local string rx98_tgt
    .local int rx98_pos
    .local int rx98_off
    .local int rx98_eos
    .local int rx98_rep
    .local pmc rx98_cur
    .local pmc rx98_debug
    (rx98_cur, rx98_pos, rx98_tgt, $I10) = self."!cursor_start"()
    rx98_cur."!cursor_caparray"("termish")
    getattribute rx98_debug, rx98_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx98_cur
    .local pmc match
    .lex "$/", match
    length rx98_eos, rx98_tgt
    gt rx98_pos, rx98_eos, rx98_done
    set rx98_off, 0
    lt rx98_pos, 2, rx98_start
    sub rx98_off, rx98_pos, 1
    substr rx98_tgt, rx98_tgt, rx98_off
  rx98_start:
    eq $I10, 1, rx98_restart
    if_null rx98_debug, debug_209
    rx98_cur."!cursor_debug"("START", "termconj")
  debug_209:
    $I10 = self.'from'()
    ne $I10, -1, rxscan102_done
    goto rxscan102_scan
  rxscan102_loop:
    ($P10) = rx98_cur."from"()
    inc $P10
    set rx98_pos, $P10
    ge rx98_pos, rx98_eos, rxscan102_done
  rxscan102_scan:
    set_addr $I10, rxscan102_loop
    rx98_cur."!mark_push"(0, rx98_pos, $I10)
  rxscan102_done:
.annotate 'line', 39
  # rx subrule "termish" subtype=capture negate=
    rx98_cur."!cursor_pos"(rx98_pos)
    $P10 = rx98_cur."termish"()
    unless $P10, rx98_fail
    rx98_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termish")
    rx98_pos = $P10."pos"()
.annotate 'line', 42
  # rx rxquantr103 ** 0..*
    set_addr $I10, rxquantr103_done
    rx98_cur."!mark_push"(0, rx98_pos, $I10)
  rxquantr103_loop:
  alt104_0:
.annotate 'line', 40
    set_addr $I10, alt104_1
    rx98_cur."!mark_push"(0, rx98_pos, $I10)
  # rx literal  "&&"
    add $I11, rx98_pos, 2
    gt $I11, rx98_eos, rx98_fail
    sub $I11, rx98_pos, rx98_off
    substr $S10, rx98_tgt, $I11, 2
    ne $S10, "&&", rx98_fail
    add rx98_pos, 2
    goto alt104_end
  alt104_1:
  # rx literal  "&"
    add $I11, rx98_pos, 1
    gt $I11, rx98_eos, rx98_fail
    sub $I11, rx98_pos, rx98_off
    ord $I11, rx98_tgt, $I11
    ne $I11, 38, rx98_fail
    add rx98_pos, 1
  alt104_end:
  alt105_0:
.annotate 'line', 41
    set_addr $I10, alt105_1
    rx98_cur."!mark_push"(0, rx98_pos, $I10)
  # rx subrule "termish" subtype=capture negate=
    rx98_cur."!cursor_pos"(rx98_pos)
    $P10 = rx98_cur."termish"()
    unless $P10, rx98_fail
    rx98_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("termish")
    rx98_pos = $P10."pos"()
    goto alt105_end
  alt105_1:
  # rx subrule "panic" subtype=method negate=
    rx98_cur."!cursor_pos"(rx98_pos)
    $P10 = rx98_cur."panic"("Null pattern not allowed")
    unless $P10, rx98_fail
    rx98_pos = $P10."pos"()
  alt105_end:
.annotate 'line', 42
    set_addr $I10, rxquantr103_done
    (rx98_rep) = rx98_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr103_done
    rx98_cur."!mark_push"(rx98_rep, rx98_pos, $I10)
    goto rxquantr103_loop
  rxquantr103_done:
.annotate 'line', 38
  # rx pass
    rx98_cur."!cursor_pass"(rx98_pos, "termconj")
    if_null rx98_debug, debug_210
    rx98_cur."!cursor_debug"("PASS", "termconj", " at pos=", rx98_pos)
  debug_210:
    .return (rx98_cur)
  rx98_restart:
.annotate 'line', 3
    if_null rx98_debug, debug_211
    rx98_cur."!cursor_debug"("NEXT", "termconj")
  debug_211:
  rx98_fail:
    (rx98_rep, rx98_pos, $I10, $P10) = rx98_cur."!mark_fail"(0)
    lt rx98_pos, -1, rx98_done
    eq rx98_pos, -1, rx98_fail
    jump $I10
  rx98_done:
    rx98_cur."!cursor_fail"()
    if_null rx98_debug, debug_212
    rx98_cur."!cursor_debug"("FAIL", "termconj")
  debug_212:
    .return (rx98_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__termconj"  :subid("29_1295142316.828") :method
.annotate 'line', 3
    $P100 = self."!PREFIX__!subrule"("termish", "")
    new $P101, "ResizablePMCArray"
    push $P101, $P100
    .return ($P101)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "termish"  :subid("30_1295142316.828") :method :outer("11_1295142316.828")
.annotate 'line', 3
    .local string rx107_tgt
    .local int rx107_pos
    .local int rx107_off
    .local int rx107_eos
    .local int rx107_rep
    .local pmc rx107_cur
    .local pmc rx107_debug
    (rx107_cur, rx107_pos, rx107_tgt, $I10) = self."!cursor_start"()
    rx107_cur."!cursor_caparray"("noun")
    getattribute rx107_debug, rx107_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx107_cur
    .local pmc match
    .lex "$/", match
    length rx107_eos, rx107_tgt
    gt rx107_pos, rx107_eos, rx107_done
    set rx107_off, 0
    lt rx107_pos, 2, rx107_start
    sub rx107_off, rx107_pos, 1
    substr rx107_tgt, rx107_tgt, rx107_off
  rx107_start:
    eq $I10, 1, rx107_restart
    if_null rx107_debug, debug_213
    rx107_cur."!cursor_debug"("START", "termish")
  debug_213:
    $I10 = self.'from'()
    ne $I10, -1, rxscan110_done
    goto rxscan110_scan
  rxscan110_loop:
    ($P10) = rx107_cur."from"()
    inc $P10
    set rx107_pos, $P10
    ge rx107_pos, rx107_eos, rxscan110_done
  rxscan110_scan:
    set_addr $I10, rxscan110_loop
    rx107_cur."!mark_push"(0, rx107_pos, $I10)
  rxscan110_done:
.annotate 'line', 46
  # rx rxquantr111 ** 1..*
    set_addr $I10, rxquantr111_done
    rx107_cur."!mark_push"(0, -1, $I10)
  rxquantr111_loop:
  # rx subrule "quantified_atom" subtype=capture negate=
    rx107_cur."!cursor_pos"(rx107_pos)
    $P10 = rx107_cur."quantified_atom"()
    unless $P10, rx107_fail
    goto rxsubrule112_pass
  rxsubrule112_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx107_fail
  rxsubrule112_pass:
    set_addr $I10, rxsubrule112_back
    rx107_cur."!mark_push"(0, rx107_pos, $I10, $P10)
    $P10."!cursor_names"("noun")
    rx107_pos = $P10."pos"()
    set_addr $I10, rxquantr111_done
    (rx107_rep) = rx107_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr111_done
    rx107_cur."!mark_push"(rx107_rep, rx107_pos, $I10)
    goto rxquantr111_loop
  rxquantr111_done:
.annotate 'line', 45
  # rx pass
    rx107_cur."!cursor_pass"(rx107_pos, "termish")
    if_null rx107_debug, debug_214
    rx107_cur."!cursor_debug"("PASS", "termish", " at pos=", rx107_pos)
  debug_214:
    .return (rx107_cur)
  rx107_restart:
.annotate 'line', 3
    if_null rx107_debug, debug_215
    rx107_cur."!cursor_debug"("NEXT", "termish")
  debug_215:
  rx107_fail:
    (rx107_rep, rx107_pos, $I10, $P10) = rx107_cur."!mark_fail"(0)
    lt rx107_pos, -1, rx107_done
    eq rx107_pos, -1, rx107_fail
    jump $I10
  rx107_done:
    rx107_cur."!cursor_fail"()
    if_null rx107_debug, debug_216
    rx107_cur."!cursor_debug"("FAIL", "termish")
  debug_216:
    .return (rx107_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__termish"  :subid("31_1295142316.828") :method
.annotate 'line', 3
    new $P109, "ResizablePMCArray"
    push $P109, ""
    .return ($P109)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantified_atom"  :subid("32_1295142316.828") :method :outer("11_1295142316.828")
.annotate 'line', 3
    .const 'Sub' $P122 = "34_1295142316.828" 
    capture_lex $P122
    .local string rx114_tgt
    .local int rx114_pos
    .local int rx114_off
    .local int rx114_eos
    .local int rx114_rep
    .local pmc rx114_cur
    .local pmc rx114_debug
    (rx114_cur, rx114_pos, rx114_tgt, $I10) = self."!cursor_start"()
    rx114_cur."!cursor_caparray"("quantifier", "backmod")
    getattribute rx114_debug, rx114_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx114_cur
    .local pmc match
    .lex "$/", match
    length rx114_eos, rx114_tgt
    gt rx114_pos, rx114_eos, rx114_done
    set rx114_off, 0
    lt rx114_pos, 2, rx114_start
    sub rx114_off, rx114_pos, 1
    substr rx114_tgt, rx114_tgt, rx114_off
  rx114_start:
    eq $I10, 1, rx114_restart
    if_null rx114_debug, debug_217
    rx114_cur."!cursor_debug"("START", "quantified_atom")
  debug_217:
    $I10 = self.'from'()
    ne $I10, -1, rxscan118_done
    goto rxscan118_scan
  rxscan118_loop:
    ($P10) = rx114_cur."from"()
    inc $P10
    set rx114_pos, $P10
    ge rx114_pos, rx114_eos, rxscan118_done
  rxscan118_scan:
    set_addr $I10, rxscan118_loop
    rx114_cur."!mark_push"(0, rx114_pos, $I10)
  rxscan118_done:
.annotate 'line', 50
  # rx subrule "atom" subtype=capture negate=
    rx114_cur."!cursor_pos"(rx114_pos)
    $P10 = rx114_cur."atom"()
    unless $P10, rx114_fail
    rx114_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("atom")
    rx114_pos = $P10."pos"()
  # rx rxquantr119 ** 0..1
    set_addr $I10, rxquantr119_done
    rx114_cur."!mark_push"(0, rx114_pos, $I10)
  rxquantr119_loop:
  # rx subrule "ws" subtype=method negate=
    rx114_cur."!cursor_pos"(rx114_pos)
    $P10 = rx114_cur."ws"()
    unless $P10, rx114_fail
    rx114_pos = $P10."pos"()
  alt120_0:
    set_addr $I10, alt120_1
    rx114_cur."!mark_push"(0, rx114_pos, $I10)
  # rx subrule "quantifier" subtype=capture negate=
    rx114_cur."!cursor_pos"(rx114_pos)
    $P10 = rx114_cur."quantifier"()
    unless $P10, rx114_fail
    rx114_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantifier")
    rx114_pos = $P10."pos"()
    goto alt120_end
  alt120_1:
  # rx subrule "before" subtype=zerowidth negate=
    rx114_cur."!cursor_pos"(rx114_pos)
    .const 'Sub' $P122 = "34_1295142316.828" 
    capture_lex $P122
    $P10 = rx114_cur."before"($P122)
    unless $P10, rx114_fail
  # rx subrule "backmod" subtype=capture negate=
    rx114_cur."!cursor_pos"(rx114_pos)
    $P10 = rx114_cur."backmod"()
    unless $P10, rx114_fail
    rx114_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx114_pos = $P10."pos"()
  # rx subrule "alpha" subtype=zerowidth negate=1
    rx114_cur."!cursor_pos"(rx114_pos)
    $P10 = rx114_cur."alpha"()
    if $P10, rx114_fail
  alt120_end:
    set_addr $I10, rxquantr119_done
    (rx114_rep) = rx114_cur."!mark_commit"($I10)
  rxquantr119_done:
.annotate 'line', 49
  # rx pass
    rx114_cur."!cursor_pass"(rx114_pos, "quantified_atom")
    if_null rx114_debug, debug_222
    rx114_cur."!cursor_debug"("PASS", "quantified_atom", " at pos=", rx114_pos)
  debug_222:
    .return (rx114_cur)
  rx114_restart:
.annotate 'line', 3
    if_null rx114_debug, debug_223
    rx114_cur."!cursor_debug"("NEXT", "quantified_atom")
  debug_223:
  rx114_fail:
    (rx114_rep, rx114_pos, $I10, $P10) = rx114_cur."!mark_fail"(0)
    lt rx114_pos, -1, rx114_done
    eq rx114_pos, -1, rx114_fail
    jump $I10
  rx114_done:
    rx114_cur."!cursor_fail"()
    if_null rx114_debug, debug_224
    rx114_cur."!cursor_debug"("FAIL", "quantified_atom")
  debug_224:
    .return (rx114_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantified_atom"  :subid("33_1295142316.828") :method
.annotate 'line', 3
    $P116 = self."!PREFIX__!subrule"("atom", "")
    new $P117, "ResizablePMCArray"
    push $P117, $P116
    .return ($P117)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block121"  :anon :subid("34_1295142316.828") :method :outer("32_1295142316.828")
.annotate 'line', 50
    .local string rx123_tgt
    .local int rx123_pos
    .local int rx123_off
    .local int rx123_eos
    .local int rx123_rep
    .local pmc rx123_cur
    .local pmc rx123_debug
    (rx123_cur, rx123_pos, rx123_tgt, $I10) = self."!cursor_start"()
    getattribute rx123_debug, rx123_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx123_cur
    .local pmc match
    .lex "$/", match
    length rx123_eos, rx123_tgt
    gt rx123_pos, rx123_eos, rx123_done
    set rx123_off, 0
    lt rx123_pos, 2, rx123_start
    sub rx123_off, rx123_pos, 1
    substr rx123_tgt, rx123_tgt, rx123_off
  rx123_start:
    eq $I10, 1, rx123_restart
    if_null rx123_debug, debug_218
    rx123_cur."!cursor_debug"("START", "")
  debug_218:
    $I10 = self.'from'()
    ne $I10, -1, rxscan124_done
    goto rxscan124_scan
  rxscan124_loop:
    ($P10) = rx123_cur."from"()
    inc $P10
    set rx123_pos, $P10
    ge rx123_pos, rx123_eos, rxscan124_done
  rxscan124_scan:
    set_addr $I10, rxscan124_loop
    rx123_cur."!mark_push"(0, rx123_pos, $I10)
  rxscan124_done:
  # rx literal  ":"
    add $I11, rx123_pos, 1
    gt $I11, rx123_eos, rx123_fail
    sub $I11, rx123_pos, rx123_off
    ord $I11, rx123_tgt, $I11
    ne $I11, 58, rx123_fail
    add rx123_pos, 1
  # rx pass
    rx123_cur."!cursor_pass"(rx123_pos, "")
    if_null rx123_debug, debug_219
    rx123_cur."!cursor_debug"("PASS", "", " at pos=", rx123_pos)
  debug_219:
    .return (rx123_cur)
  rx123_restart:
    if_null rx123_debug, debug_220
    rx123_cur."!cursor_debug"("NEXT", "")
  debug_220:
  rx123_fail:
    (rx123_rep, rx123_pos, $I10, $P10) = rx123_cur."!mark_fail"(0)
    lt rx123_pos, -1, rx123_done
    eq rx123_pos, -1, rx123_fail
    jump $I10
  rx123_done:
    rx123_cur."!cursor_fail"()
    if_null rx123_debug, debug_221
    rx123_cur."!cursor_debug"("FAIL", "")
  debug_221:
    .return (rx123_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "atom"  :subid("35_1295142316.828") :method :outer("11_1295142316.828")
.annotate 'line', 3
    .const 'Sub' $P135 = "37_1295142316.828" 
    capture_lex $P135
    .local string rx126_tgt
    .local int rx126_pos
    .local int rx126_off
    .local int rx126_eos
    .local int rx126_rep
    .local pmc rx126_cur
    .local pmc rx126_debug
    (rx126_cur, rx126_pos, rx126_tgt, $I10) = self."!cursor_start"()
    getattribute rx126_debug, rx126_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx126_cur
    .local pmc match
    .lex "$/", match
    length rx126_eos, rx126_tgt
    gt rx126_pos, rx126_eos, rx126_done
    set rx126_off, 0
    lt rx126_pos, 2, rx126_start
    sub rx126_off, rx126_pos, 1
    substr rx126_tgt, rx126_tgt, rx126_off
  rx126_start:
    eq $I10, 1, rx126_restart
    if_null rx126_debug, debug_225
    rx126_cur."!cursor_debug"("START", "atom")
  debug_225:
    $I10 = self.'from'()
    ne $I10, -1, rxscan130_done
    goto rxscan130_scan
  rxscan130_loop:
    ($P10) = rx126_cur."from"()
    inc $P10
    set rx126_pos, $P10
    ge rx126_pos, rx126_eos, rxscan130_done
  rxscan130_scan:
    set_addr $I10, rxscan130_loop
    rx126_cur."!mark_push"(0, rx126_pos, $I10)
  rxscan130_done:
  alt131_0:
.annotate 'line', 55
    set_addr $I10, alt131_1
    rx126_cur."!mark_push"(0, rx126_pos, $I10)
.annotate 'line', 56
  # rx charclass w
    ge rx126_pos, rx126_eos, rx126_fail
    sub $I10, rx126_pos, rx126_off
    is_cclass $I11, 8192, rx126_tgt, $I10
    unless $I11, rx126_fail
    inc rx126_pos
  # rx rxquantr132 ** 0..1
    set_addr $I10, rxquantr132_done
    rx126_cur."!mark_push"(0, rx126_pos, $I10)
  rxquantr132_loop:
  # rx rxquantg133 ** 1..*
  rxquantg133_loop:
  # rx charclass w
    ge rx126_pos, rx126_eos, rx126_fail
    sub $I10, rx126_pos, rx126_off
    is_cclass $I11, 8192, rx126_tgt, $I10
    unless $I11, rx126_fail
    inc rx126_pos
    set_addr $I10, rxquantg133_done
    rx126_cur."!mark_push"(rx126_rep, rx126_pos, $I10)
    goto rxquantg133_loop
  rxquantg133_done:
  # rx subrule "before" subtype=zerowidth negate=
    rx126_cur."!cursor_pos"(rx126_pos)
    .const 'Sub' $P135 = "37_1295142316.828" 
    capture_lex $P135
    $P10 = rx126_cur."before"($P135)
    unless $P10, rx126_fail
    set_addr $I10, rxquantr132_done
    (rx126_rep) = rx126_cur."!mark_commit"($I10)
  rxquantr132_done:
    goto alt131_end
  alt131_1:
.annotate 'line', 57
  # rx subrule "metachar" subtype=capture negate=
    rx126_cur."!cursor_pos"(rx126_pos)
    $P10 = rx126_cur."metachar"()
    unless $P10, rx126_fail
    rx126_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("metachar")
    rx126_pos = $P10."pos"()
  alt131_end:
.annotate 'line', 53
  # rx pass
    rx126_cur."!cursor_pass"(rx126_pos, "atom")
    if_null rx126_debug, debug_230
    rx126_cur."!cursor_debug"("PASS", "atom", " at pos=", rx126_pos)
  debug_230:
    .return (rx126_cur)
  rx126_restart:
.annotate 'line', 3
    if_null rx126_debug, debug_231
    rx126_cur."!cursor_debug"("NEXT", "atom")
  debug_231:
  rx126_fail:
    (rx126_rep, rx126_pos, $I10, $P10) = rx126_cur."!mark_fail"(0)
    lt rx126_pos, -1, rx126_done
    eq rx126_pos, -1, rx126_fail
    jump $I10
  rx126_done:
    rx126_cur."!cursor_fail"()
    if_null rx126_debug, debug_232
    rx126_cur."!cursor_debug"("FAIL", "atom")
  debug_232:
    .return (rx126_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__atom"  :subid("36_1295142316.828") :method
.annotate 'line', 3
    $P128 = self."!PREFIX__!subrule"("metachar", "")
    new $P129, "ResizablePMCArray"
    push $P129, $P128
    push $P129, ""
    .return ($P129)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block134"  :anon :subid("37_1295142316.828") :method :outer("35_1295142316.828")
.annotate 'line', 56
    .local string rx136_tgt
    .local int rx136_pos
    .local int rx136_off
    .local int rx136_eos
    .local int rx136_rep
    .local pmc rx136_cur
    .local pmc rx136_debug
    (rx136_cur, rx136_pos, rx136_tgt, $I10) = self."!cursor_start"()
    getattribute rx136_debug, rx136_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx136_cur
    .local pmc match
    .lex "$/", match
    length rx136_eos, rx136_tgt
    gt rx136_pos, rx136_eos, rx136_done
    set rx136_off, 0
    lt rx136_pos, 2, rx136_start
    sub rx136_off, rx136_pos, 1
    substr rx136_tgt, rx136_tgt, rx136_off
  rx136_start:
    eq $I10, 1, rx136_restart
    if_null rx136_debug, debug_226
    rx136_cur."!cursor_debug"("START", "")
  debug_226:
    $I10 = self.'from'()
    ne $I10, -1, rxscan137_done
    goto rxscan137_scan
  rxscan137_loop:
    ($P10) = rx136_cur."from"()
    inc $P10
    set rx136_pos, $P10
    ge rx136_pos, rx136_eos, rxscan137_done
  rxscan137_scan:
    set_addr $I10, rxscan137_loop
    rx136_cur."!mark_push"(0, rx136_pos, $I10)
  rxscan137_done:
  # rx charclass w
    ge rx136_pos, rx136_eos, rx136_fail
    sub $I10, rx136_pos, rx136_off
    is_cclass $I11, 8192, rx136_tgt, $I10
    unless $I11, rx136_fail
    inc rx136_pos
  # rx pass
    rx136_cur."!cursor_pass"(rx136_pos, "")
    if_null rx136_debug, debug_227
    rx136_cur."!cursor_debug"("PASS", "", " at pos=", rx136_pos)
  debug_227:
    .return (rx136_cur)
  rx136_restart:
    if_null rx136_debug, debug_228
    rx136_cur."!cursor_debug"("NEXT", "")
  debug_228:
  rx136_fail:
    (rx136_rep, rx136_pos, $I10, $P10) = rx136_cur."!mark_fail"(0)
    lt rx136_pos, -1, rx136_done
    eq rx136_pos, -1, rx136_fail
    jump $I10
  rx136_done:
    rx136_cur."!cursor_fail"()
    if_null rx136_debug, debug_229
    rx136_cur."!cursor_debug"("FAIL", "")
  debug_229:
    .return (rx136_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier"  :subid("38_1295142316.828") :method
.annotate 'line', 61
    $P139 = self."!protoregex"("quantifier")
    .return ($P139)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier"  :subid("39_1295142316.828") :method
.annotate 'line', 61
    $P141 = self."!PREFIX__!protoregex"("quantifier")
    .return ($P141)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<*>"  :subid("40_1295142316.828") :method :outer("11_1295142316.828")
.annotate 'line', 3
    .local string rx143_tgt
    .local int rx143_pos
    .local int rx143_off
    .local int rx143_eos
    .local int rx143_rep
    .local pmc rx143_cur
    .local pmc rx143_debug
    (rx143_cur, rx143_pos, rx143_tgt, $I10) = self."!cursor_start"()
    getattribute rx143_debug, rx143_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx143_cur
    .local pmc match
    .lex "$/", match
    length rx143_eos, rx143_tgt
    gt rx143_pos, rx143_eos, rx143_done
    set rx143_off, 0
    lt rx143_pos, 2, rx143_start
    sub rx143_off, rx143_pos, 1
    substr rx143_tgt, rx143_tgt, rx143_off
  rx143_start:
    eq $I10, 1, rx143_restart
    if_null rx143_debug, debug_233
    rx143_cur."!cursor_debug"("START", "quantifier:sym<*>")
  debug_233:
    $I10 = self.'from'()
    ne $I10, -1, rxscan147_done
    goto rxscan147_scan
  rxscan147_loop:
    ($P10) = rx143_cur."from"()
    inc $P10
    set rx143_pos, $P10
    ge rx143_pos, rx143_eos, rxscan147_done
  rxscan147_scan:
    set_addr $I10, rxscan147_loop
    rx143_cur."!mark_push"(0, rx143_pos, $I10)
  rxscan147_done:
.annotate 'line', 62
  # rx subcapture "sym"
    set_addr $I10, rxcap_148_fail
    rx143_cur."!mark_push"(0, rx143_pos, $I10)
  # rx literal  "*"
    add $I11, rx143_pos, 1
    gt $I11, rx143_eos, rx143_fail
    sub $I11, rx143_pos, rx143_off
    ord $I11, rx143_tgt, $I11
    ne $I11, 42, rx143_fail
    add rx143_pos, 1
    set_addr $I10, rxcap_148_fail
    ($I12, $I11) = rx143_cur."!mark_peek"($I10)
    rx143_cur."!cursor_pos"($I11)
    ($P10) = rx143_cur."!cursor_start"()
    $P10."!cursor_pass"(rx143_pos, "")
    rx143_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_148_done
  rxcap_148_fail:
    goto rx143_fail
  rxcap_148_done:
  # rx subrule "backmod" subtype=capture negate=
    rx143_cur."!cursor_pos"(rx143_pos)
    $P10 = rx143_cur."backmod"()
    unless $P10, rx143_fail
    rx143_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx143_pos = $P10."pos"()
  # rx pass
    rx143_cur."!cursor_pass"(rx143_pos, "quantifier:sym<*>")
    if_null rx143_debug, debug_234
    rx143_cur."!cursor_debug"("PASS", "quantifier:sym<*>", " at pos=", rx143_pos)
  debug_234:
    .return (rx143_cur)
  rx143_restart:
.annotate 'line', 3
    if_null rx143_debug, debug_235
    rx143_cur."!cursor_debug"("NEXT", "quantifier:sym<*>")
  debug_235:
  rx143_fail:
    (rx143_rep, rx143_pos, $I10, $P10) = rx143_cur."!mark_fail"(0)
    lt rx143_pos, -1, rx143_done
    eq rx143_pos, -1, rx143_fail
    jump $I10
  rx143_done:
    rx143_cur."!cursor_fail"()
    if_null rx143_debug, debug_236
    rx143_cur."!cursor_debug"("FAIL", "quantifier:sym<*>")
  debug_236:
    .return (rx143_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<*>"  :subid("41_1295142316.828") :method
.annotate 'line', 3
    $P145 = self."!PREFIX__!subrule"("backmod", "*")
    new $P146, "ResizablePMCArray"
    push $P146, $P145
    .return ($P146)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<+>"  :subid("42_1295142316.828") :method :outer("11_1295142316.828")
.annotate 'line', 3
    .local string rx150_tgt
    .local int rx150_pos
    .local int rx150_off
    .local int rx150_eos
    .local int rx150_rep
    .local pmc rx150_cur
    .local pmc rx150_debug
    (rx150_cur, rx150_pos, rx150_tgt, $I10) = self."!cursor_start"()
    getattribute rx150_debug, rx150_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx150_cur
    .local pmc match
    .lex "$/", match
    length rx150_eos, rx150_tgt
    gt rx150_pos, rx150_eos, rx150_done
    set rx150_off, 0
    lt rx150_pos, 2, rx150_start
    sub rx150_off, rx150_pos, 1
    substr rx150_tgt, rx150_tgt, rx150_off
  rx150_start:
    eq $I10, 1, rx150_restart
    if_null rx150_debug, debug_237
    rx150_cur."!cursor_debug"("START", "quantifier:sym<+>")
  debug_237:
    $I10 = self.'from'()
    ne $I10, -1, rxscan154_done
    goto rxscan154_scan
  rxscan154_loop:
    ($P10) = rx150_cur."from"()
    inc $P10
    set rx150_pos, $P10
    ge rx150_pos, rx150_eos, rxscan154_done
  rxscan154_scan:
    set_addr $I10, rxscan154_loop
    rx150_cur."!mark_push"(0, rx150_pos, $I10)
  rxscan154_done:
.annotate 'line', 63
  # rx subcapture "sym"
    set_addr $I10, rxcap_155_fail
    rx150_cur."!mark_push"(0, rx150_pos, $I10)
  # rx literal  "+"
    add $I11, rx150_pos, 1
    gt $I11, rx150_eos, rx150_fail
    sub $I11, rx150_pos, rx150_off
    ord $I11, rx150_tgt, $I11
    ne $I11, 43, rx150_fail
    add rx150_pos, 1
    set_addr $I10, rxcap_155_fail
    ($I12, $I11) = rx150_cur."!mark_peek"($I10)
    rx150_cur."!cursor_pos"($I11)
    ($P10) = rx150_cur."!cursor_start"()
    $P10."!cursor_pass"(rx150_pos, "")
    rx150_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_155_done
  rxcap_155_fail:
    goto rx150_fail
  rxcap_155_done:
  # rx subrule "backmod" subtype=capture negate=
    rx150_cur."!cursor_pos"(rx150_pos)
    $P10 = rx150_cur."backmod"()
    unless $P10, rx150_fail
    rx150_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx150_pos = $P10."pos"()
  # rx pass
    rx150_cur."!cursor_pass"(rx150_pos, "quantifier:sym<+>")
    if_null rx150_debug, debug_238
    rx150_cur."!cursor_debug"("PASS", "quantifier:sym<+>", " at pos=", rx150_pos)
  debug_238:
    .return (rx150_cur)
  rx150_restart:
.annotate 'line', 3
    if_null rx150_debug, debug_239
    rx150_cur."!cursor_debug"("NEXT", "quantifier:sym<+>")
  debug_239:
  rx150_fail:
    (rx150_rep, rx150_pos, $I10, $P10) = rx150_cur."!mark_fail"(0)
    lt rx150_pos, -1, rx150_done
    eq rx150_pos, -1, rx150_fail
    jump $I10
  rx150_done:
    rx150_cur."!cursor_fail"()
    if_null rx150_debug, debug_240
    rx150_cur."!cursor_debug"("FAIL", "quantifier:sym<+>")
  debug_240:
    .return (rx150_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<+>"  :subid("43_1295142316.828") :method
.annotate 'line', 3
    $P152 = self."!PREFIX__!subrule"("backmod", "+")
    new $P153, "ResizablePMCArray"
    push $P153, $P152
    .return ($P153)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<?>"  :subid("44_1295142316.828") :method :outer("11_1295142316.828")
.annotate 'line', 3
    .local string rx157_tgt
    .local int rx157_pos
    .local int rx157_off
    .local int rx157_eos
    .local int rx157_rep
    .local pmc rx157_cur
    .local pmc rx157_debug
    (rx157_cur, rx157_pos, rx157_tgt, $I10) = self."!cursor_start"()
    getattribute rx157_debug, rx157_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx157_cur
    .local pmc match
    .lex "$/", match
    length rx157_eos, rx157_tgt
    gt rx157_pos, rx157_eos, rx157_done
    set rx157_off, 0
    lt rx157_pos, 2, rx157_start
    sub rx157_off, rx157_pos, 1
    substr rx157_tgt, rx157_tgt, rx157_off
  rx157_start:
    eq $I10, 1, rx157_restart
    if_null rx157_debug, debug_241
    rx157_cur."!cursor_debug"("START", "quantifier:sym<?>")
  debug_241:
    $I10 = self.'from'()
    ne $I10, -1, rxscan161_done
    goto rxscan161_scan
  rxscan161_loop:
    ($P10) = rx157_cur."from"()
    inc $P10
    set rx157_pos, $P10
    ge rx157_pos, rx157_eos, rxscan161_done
  rxscan161_scan:
    set_addr $I10, rxscan161_loop
    rx157_cur."!mark_push"(0, rx157_pos, $I10)
  rxscan161_done:
.annotate 'line', 64
  # rx subcapture "sym"
    set_addr $I10, rxcap_162_fail
    rx157_cur."!mark_push"(0, rx157_pos, $I10)
  # rx literal  "?"
    add $I11, rx157_pos, 1
    gt $I11, rx157_eos, rx157_fail
    sub $I11, rx157_pos, rx157_off
    ord $I11, rx157_tgt, $I11
    ne $I11, 63, rx157_fail
    add rx157_pos, 1
    set_addr $I10, rxcap_162_fail
    ($I12, $I11) = rx157_cur."!mark_peek"($I10)
    rx157_cur."!cursor_pos"($I11)
    ($P10) = rx157_cur."!cursor_start"()
    $P10."!cursor_pass"(rx157_pos, "")
    rx157_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_162_done
  rxcap_162_fail:
    goto rx157_fail
  rxcap_162_done:
  # rx subrule "backmod" subtype=capture negate=
    rx157_cur."!cursor_pos"(rx157_pos)
    $P10 = rx157_cur."backmod"()
    unless $P10, rx157_fail
    rx157_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx157_pos = $P10."pos"()
  # rx pass
    rx157_cur."!cursor_pass"(rx157_pos, "quantifier:sym<?>")
    if_null rx157_debug, debug_242
    rx157_cur."!cursor_debug"("PASS", "quantifier:sym<?>", " at pos=", rx157_pos)
  debug_242:
    .return (rx157_cur)
  rx157_restart:
.annotate 'line', 3
    if_null rx157_debug, debug_243
    rx157_cur."!cursor_debug"("NEXT", "quantifier:sym<?>")
  debug_243:
  rx157_fail:
    (rx157_rep, rx157_pos, $I10, $P10) = rx157_cur."!mark_fail"(0)
    lt rx157_pos, -1, rx157_done
    eq rx157_pos, -1, rx157_fail
    jump $I10
  rx157_done:
    rx157_cur."!cursor_fail"()
    if_null rx157_debug, debug_244
    rx157_cur."!cursor_debug"("FAIL", "quantifier:sym<?>")
  debug_244:
    .return (rx157_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<?>"  :subid("45_1295142316.828") :method
.annotate 'line', 3
    $P159 = self."!PREFIX__!subrule"("backmod", "?")
    new $P160, "ResizablePMCArray"
    push $P160, $P159
    .return ($P160)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<{N,M}>"  :subid("46_1295142316.828") :method :outer("11_1295142316.828")
.annotate 'line', 3
    .const 'Sub' $P183 = "51_1295142316.828" 
    capture_lex $P183
    .const 'Sub' $P178 = "50_1295142316.828" 
    capture_lex $P178
    .const 'Sub' $P174 = "49_1295142316.828" 
    capture_lex $P174
    .const 'Sub' $P171 = "48_1295142316.828" 
    capture_lex $P171
    .local string rx164_tgt
    .local int rx164_pos
    .local int rx164_off
    .local int rx164_eos
    .local int rx164_rep
    .local pmc rx164_cur
    .local pmc rx164_debug
    (rx164_cur, rx164_pos, rx164_tgt, $I10) = self."!cursor_start"()
    getattribute rx164_debug, rx164_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx164_cur
    .local pmc match
    .lex "$/", match
    length rx164_eos, rx164_tgt
    gt rx164_pos, rx164_eos, rx164_done
    set rx164_off, 0
    lt rx164_pos, 2, rx164_start
    sub rx164_off, rx164_pos, 1
    substr rx164_tgt, rx164_tgt, rx164_off
  rx164_start:
    eq $I10, 1, rx164_restart
    if_null rx164_debug, debug_245
    rx164_cur."!cursor_debug"("START", "quantifier:sym<{N,M}>")
  debug_245:
    $I10 = self.'from'()
    ne $I10, -1, rxscan167_done
    goto rxscan167_scan
  rxscan167_loop:
    ($P10) = rx164_cur."from"()
    inc $P10
    set rx164_pos, $P10
    ge rx164_pos, rx164_eos, rxscan167_done
  rxscan167_scan:
    set_addr $I10, rxscan167_loop
    rx164_cur."!mark_push"(0, rx164_pos, $I10)
  rxscan167_done:
.annotate 'line', 65
    rx164_cur."!cursor_pos"(rx164_pos)
    find_lex $P168, unicode:"$\x{a2}"
    $P169 = $P168."MATCH"()
    store_lex "$/", $P169
    .const 'Sub' $P171 = "48_1295142316.828" 
    capture_lex $P171
    $P172 = $P171()
  # rx literal  "{"
    add $I11, rx164_pos, 1
    gt $I11, rx164_eos, rx164_fail
    sub $I11, rx164_pos, rx164_off
    ord $I11, rx164_tgt, $I11
    ne $I11, 123, rx164_fail
    add rx164_pos, 1
  # rx subrule $P174 subtype=capture negate=
    rx164_cur."!cursor_pos"(rx164_pos)
    .const 'Sub' $P174 = "49_1295142316.828" 
    capture_lex $P174
    $P10 = rx164_cur.$P174()
    unless $P10, rx164_fail
    rx164_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"(0)
    rx164_pos = $P10."pos"()
  # rx subrule $P178 subtype=capture negate=
    rx164_cur."!cursor_pos"(rx164_pos)
    .const 'Sub' $P178 = "50_1295142316.828" 
    capture_lex $P178
    $P10 = rx164_cur.$P178()
    unless $P10, rx164_fail
    rx164_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("1")
    rx164_pos = $P10."pos"()
  # rx subrule $P183 subtype=capture negate=
    rx164_cur."!cursor_pos"(rx164_pos)
    .const 'Sub' $P183 = "51_1295142316.828" 
    capture_lex $P183
    $P10 = rx164_cur.$P183()
    unless $P10, rx164_fail
    rx164_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("2")
    rx164_pos = $P10."pos"()
  # rx literal  "}"
    add $I11, rx164_pos, 1
    gt $I11, rx164_eos, rx164_fail
    sub $I11, rx164_pos, rx164_off
    ord $I11, rx164_tgt, $I11
    ne $I11, 125, rx164_fail
    add rx164_pos, 1
.annotate 'line', 66
  # rx subrule "obs" subtype=method negate=
    rx164_cur."!cursor_pos"(rx164_pos)
    $P10 = rx164_cur."obs"("{N,M} as general quantifier", "** N..M (or ** N..*)")
    unless $P10, rx164_fail
    rx164_pos = $P10."pos"()
.annotate 'line', 65
  # rx pass
    rx164_cur."!cursor_pass"(rx164_pos, "quantifier:sym<{N,M}>")
    if_null rx164_debug, debug_258
    rx164_cur."!cursor_debug"("PASS", "quantifier:sym<{N,M}>", " at pos=", rx164_pos)
  debug_258:
    .return (rx164_cur)
  rx164_restart:
.annotate 'line', 3
    if_null rx164_debug, debug_259
    rx164_cur."!cursor_debug"("NEXT", "quantifier:sym<{N,M}>")
  debug_259:
  rx164_fail:
    (rx164_rep, rx164_pos, $I10, $P10) = rx164_cur."!mark_fail"(0)
    lt rx164_pos, -1, rx164_done
    eq rx164_pos, -1, rx164_fail
    jump $I10
  rx164_done:
    rx164_cur."!cursor_fail"()
    if_null rx164_debug, debug_260
    rx164_cur."!cursor_debug"("FAIL", "quantifier:sym<{N,M}>")
  debug_260:
    .return (rx164_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<{N,M}>"  :subid("47_1295142316.828") :method
.annotate 'line', 3
    new $P166, "ResizablePMCArray"
    push $P166, ""
    .return ($P166)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block170"  :anon :subid("48_1295142316.828") :outer("46_1295142316.828")
.annotate 'line', 65
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block173"  :anon :subid("49_1295142316.828") :method :outer("46_1295142316.828")
.annotate 'line', 65
    .local string rx175_tgt
    .local int rx175_pos
    .local int rx175_off
    .local int rx175_eos
    .local int rx175_rep
    .local pmc rx175_cur
    .local pmc rx175_debug
    (rx175_cur, rx175_pos, rx175_tgt, $I10) = self."!cursor_start"()
    getattribute rx175_debug, rx175_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx175_cur
    .local pmc match
    .lex "$/", match
    length rx175_eos, rx175_tgt
    gt rx175_pos, rx175_eos, rx175_done
    set rx175_off, 0
    lt rx175_pos, 2, rx175_start
    sub rx175_off, rx175_pos, 1
    substr rx175_tgt, rx175_tgt, rx175_off
  rx175_start:
    eq $I10, 1, rx175_restart
    if_null rx175_debug, debug_246
    rx175_cur."!cursor_debug"("START", "")
  debug_246:
    $I10 = self.'from'()
    ne $I10, -1, rxscan176_done
    goto rxscan176_scan
  rxscan176_loop:
    ($P10) = rx175_cur."from"()
    inc $P10
    set rx175_pos, $P10
    ge rx175_pos, rx175_eos, rxscan176_done
  rxscan176_scan:
    set_addr $I10, rxscan176_loop
    rx175_cur."!mark_push"(0, rx175_pos, $I10)
  rxscan176_done:
  # rx charclass_q d r 1..-1
    sub $I10, rx175_pos, rx175_off
    find_not_cclass $I11, 8, rx175_tgt, $I10, rx175_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx175_fail
    add rx175_pos, rx175_off, $I11
  # rx pass
    rx175_cur."!cursor_pass"(rx175_pos, "")
    if_null rx175_debug, debug_247
    rx175_cur."!cursor_debug"("PASS", "", " at pos=", rx175_pos)
  debug_247:
    .return (rx175_cur)
  rx175_restart:
    if_null rx175_debug, debug_248
    rx175_cur."!cursor_debug"("NEXT", "")
  debug_248:
  rx175_fail:
    (rx175_rep, rx175_pos, $I10, $P10) = rx175_cur."!mark_fail"(0)
    lt rx175_pos, -1, rx175_done
    eq rx175_pos, -1, rx175_fail
    jump $I10
  rx175_done:
    rx175_cur."!cursor_fail"()
    if_null rx175_debug, debug_249
    rx175_cur."!cursor_debug"("FAIL", "")
  debug_249:
    .return (rx175_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block177"  :anon :subid("50_1295142316.828") :method :outer("46_1295142316.828")
.annotate 'line', 65
    .local string rx179_tgt
    .local int rx179_pos
    .local int rx179_off
    .local int rx179_eos
    .local int rx179_rep
    .local pmc rx179_cur
    .local pmc rx179_debug
    (rx179_cur, rx179_pos, rx179_tgt, $I10) = self."!cursor_start"()
    getattribute rx179_debug, rx179_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx179_cur
    .local pmc match
    .lex "$/", match
    length rx179_eos, rx179_tgt
    gt rx179_pos, rx179_eos, rx179_done
    set rx179_off, 0
    lt rx179_pos, 2, rx179_start
    sub rx179_off, rx179_pos, 1
    substr rx179_tgt, rx179_tgt, rx179_off
  rx179_start:
    eq $I10, 1, rx179_restart
    if_null rx179_debug, debug_250
    rx179_cur."!cursor_debug"("START", "")
  debug_250:
    $I10 = self.'from'()
    ne $I10, -1, rxscan180_done
    goto rxscan180_scan
  rxscan180_loop:
    ($P10) = rx179_cur."from"()
    inc $P10
    set rx179_pos, $P10
    ge rx179_pos, rx179_eos, rxscan180_done
  rxscan180_scan:
    set_addr $I10, rxscan180_loop
    rx179_cur."!mark_push"(0, rx179_pos, $I10)
  rxscan180_done:
  # rx rxquantr181 ** 0..1
    set_addr $I10, rxquantr181_done
    rx179_cur."!mark_push"(0, rx179_pos, $I10)
  rxquantr181_loop:
  # rx literal  ","
    add $I11, rx179_pos, 1
    gt $I11, rx179_eos, rx179_fail
    sub $I11, rx179_pos, rx179_off
    ord $I11, rx179_tgt, $I11
    ne $I11, 44, rx179_fail
    add rx179_pos, 1
    set_addr $I10, rxquantr181_done
    (rx179_rep) = rx179_cur."!mark_commit"($I10)
  rxquantr181_done:
  # rx pass
    rx179_cur."!cursor_pass"(rx179_pos, "")
    if_null rx179_debug, debug_251
    rx179_cur."!cursor_debug"("PASS", "", " at pos=", rx179_pos)
  debug_251:
    .return (rx179_cur)
  rx179_restart:
    if_null rx179_debug, debug_252
    rx179_cur."!cursor_debug"("NEXT", "")
  debug_252:
  rx179_fail:
    (rx179_rep, rx179_pos, $I10, $P10) = rx179_cur."!mark_fail"(0)
    lt rx179_pos, -1, rx179_done
    eq rx179_pos, -1, rx179_fail
    jump $I10
  rx179_done:
    rx179_cur."!cursor_fail"()
    if_null rx179_debug, debug_253
    rx179_cur."!cursor_debug"("FAIL", "")
  debug_253:
    .return (rx179_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block182"  :anon :subid("51_1295142316.828") :method :outer("46_1295142316.828")
.annotate 'line', 65
    .local string rx184_tgt
    .local int rx184_pos
    .local int rx184_off
    .local int rx184_eos
    .local int rx184_rep
    .local pmc rx184_cur
    .local pmc rx184_debug
    (rx184_cur, rx184_pos, rx184_tgt, $I10) = self."!cursor_start"()
    getattribute rx184_debug, rx184_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx184_cur
    .local pmc match
    .lex "$/", match
    length rx184_eos, rx184_tgt
    gt rx184_pos, rx184_eos, rx184_done
    set rx184_off, 0
    lt rx184_pos, 2, rx184_start
    sub rx184_off, rx184_pos, 1
    substr rx184_tgt, rx184_tgt, rx184_off
  rx184_start:
    eq $I10, 1, rx184_restart
    if_null rx184_debug, debug_254
    rx184_cur."!cursor_debug"("START", "")
  debug_254:
    $I10 = self.'from'()
    ne $I10, -1, rxscan185_done
    goto rxscan185_scan
  rxscan185_loop:
    ($P10) = rx184_cur."from"()
    inc $P10
    set rx184_pos, $P10
    ge rx184_pos, rx184_eos, rxscan185_done
  rxscan185_scan:
    set_addr $I10, rxscan185_loop
    rx184_cur."!mark_push"(0, rx184_pos, $I10)
  rxscan185_done:
  # rx charclass_q d r 0..-1
    sub $I10, rx184_pos, rx184_off
    find_not_cclass $I11, 8, rx184_tgt, $I10, rx184_eos
    add rx184_pos, rx184_off, $I11
  # rx pass
    rx184_cur."!cursor_pass"(rx184_pos, "")
    if_null rx184_debug, debug_255
    rx184_cur."!cursor_debug"("PASS", "", " at pos=", rx184_pos)
  debug_255:
    .return (rx184_cur)
  rx184_restart:
    if_null rx184_debug, debug_256
    rx184_cur."!cursor_debug"("NEXT", "")
  debug_256:
  rx184_fail:
    (rx184_rep, rx184_pos, $I10, $P10) = rx184_cur."!mark_fail"(0)
    lt rx184_pos, -1, rx184_done
    eq rx184_pos, -1, rx184_fail
    jump $I10
  rx184_done:
    rx184_cur."!cursor_fail"()
    if_null rx184_debug, debug_257
    rx184_cur."!cursor_debug"("FAIL", "")
  debug_257:
    .return (rx184_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "quantifier:sym<**>"  :subid("52_1295142316.828") :method :outer("11_1295142316.828")
.annotate 'line', 3
    .local string rx187_tgt
    .local int rx187_pos
    .local int rx187_off
    .local int rx187_eos
    .local int rx187_rep
    .local pmc rx187_cur
    .local pmc rx187_debug
    (rx187_cur, rx187_pos, rx187_tgt, $I10) = self."!cursor_start"()
    rx187_cur."!cursor_caparray"("normspace", "max")
    getattribute rx187_debug, rx187_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx187_cur
    .local pmc match
    .lex "$/", match
    length rx187_eos, rx187_tgt
    gt rx187_pos, rx187_eos, rx187_done
    set rx187_off, 0
    lt rx187_pos, 2, rx187_start
    sub rx187_off, rx187_pos, 1
    substr rx187_tgt, rx187_tgt, rx187_off
  rx187_start:
    eq $I10, 1, rx187_restart
    if_null rx187_debug, debug_261
    rx187_cur."!cursor_debug"("START", "quantifier:sym<**>")
  debug_261:
    $I10 = self.'from'()
    ne $I10, -1, rxscan190_done
    goto rxscan190_scan
  rxscan190_loop:
    ($P10) = rx187_cur."from"()
    inc $P10
    set rx187_pos, $P10
    ge rx187_pos, rx187_eos, rxscan190_done
  rxscan190_scan:
    set_addr $I10, rxscan190_loop
    rx187_cur."!mark_push"(0, rx187_pos, $I10)
  rxscan190_done:
.annotate 'line', 69
  # rx subcapture "sym"
    set_addr $I10, rxcap_191_fail
    rx187_cur."!mark_push"(0, rx187_pos, $I10)
  # rx literal  "**"
    add $I11, rx187_pos, 2
    gt $I11, rx187_eos, rx187_fail
    sub $I11, rx187_pos, rx187_off
    substr $S10, rx187_tgt, $I11, 2
    ne $S10, "**", rx187_fail
    add rx187_pos, 2
    set_addr $I10, rxcap_191_fail
    ($I12, $I11) = rx187_cur."!mark_peek"($I10)
    rx187_cur."!cursor_pos"($I11)
    ($P10) = rx187_cur."!cursor_start"()
    $P10."!cursor_pass"(rx187_pos, "")
    rx187_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_191_done
  rxcap_191_fail:
    goto rx187_fail
  rxcap_191_done:
  # rx rxquantr192 ** 0..1
    set_addr $I10, rxquantr192_done
    rx187_cur."!mark_push"(0, rx187_pos, $I10)
  rxquantr192_loop:
  # rx subrule "normspace" subtype=capture negate=
    rx187_cur."!cursor_pos"(rx187_pos)
    $P10 = rx187_cur."normspace"()
    unless $P10, rx187_fail
    goto rxsubrule193_pass
  rxsubrule193_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx187_fail
  rxsubrule193_pass:
    set_addr $I10, rxsubrule193_back
    rx187_cur."!mark_push"(0, rx187_pos, $I10, $P10)
    $P10."!cursor_names"("normspace")
    rx187_pos = $P10."pos"()
    set_addr $I10, rxquantr192_done
    (rx187_rep) = rx187_cur."!mark_commit"($I10)
  rxquantr192_done:
  # rx subrule "backmod" subtype=capture negate=
    rx187_cur."!cursor_pos"(rx187_pos)
    $P10 = rx187_cur."backmod"()
    unless $P10, rx187_fail
    rx187_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backmod")
    rx187_pos = $P10."pos"()
  # rx rxquantr194 ** 0..1
    set_addr $I10, rxquantr194_done
    rx187_cur."!mark_push"(0, rx187_pos, $I10)
  rxquantr194_loop:
  # rx subrule "normspace" subtype=capture negate=
    rx187_cur."!cursor_pos"(rx187_pos)
    $P10 = rx187_cur."normspace"()
    unless $P10, rx187_fail
    goto rxsubrule195_pass
  rxsubrule195_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx187_fail
  rxsubrule195_pass:
    set_addr $I10, rxsubrule195_back
    rx187_cur."!mark_push"(0, rx187_pos, $I10, $P10)
    $P10."!cursor_names"("normspace")
    rx187_pos = $P10."pos"()
    set_addr $I10, rxquantr194_done
    (rx187_rep) = rx187_cur."!mark_commit"($I10)
  rxquantr194_done:
  alt196_0:
.annotate 'line', 70
    set_addr $I10, alt196_1
    rx187_cur."!mark_push"(0, rx187_pos, $I10)
.annotate 'line', 71
  # rx subcapture "min"
    set_addr $I10, rxcap_197_fail
    rx187_cur."!mark_push"(0, rx187_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx187_pos, rx187_off
    find_not_cclass $I11, 8, rx187_tgt, $I10, rx187_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx187_fail
    add rx187_pos, rx187_off, $I11
    set_addr $I10, rxcap_197_fail
    ($I12, $I11) = rx187_cur."!mark_peek"($I10)
    rx187_cur."!cursor_pos"($I11)
    ($P10) = rx187_cur."!cursor_start"()
    $P10."!cursor_pass"(rx187_pos, "")
    rx187_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("min")
    goto rxcap_197_done
  rxcap_197_fail:
    goto rx187_fail
  rxcap_197_done:
.annotate 'line', 78
  # rx rxquantr198 ** 0..1
    set_addr $I10, rxquantr198_done
    rx187_cur."!mark_push"(0, rx187_pos, $I10)
  rxquantr198_loop:
.annotate 'line', 72
  # rx literal  ".."
    add $I11, rx187_pos, 2
    gt $I11, rx187_eos, rx187_fail
    sub $I11, rx187_pos, rx187_off
    substr $S10, rx187_tgt, $I11, 2
    ne $S10, "..", rx187_fail
    add rx187_pos, 2
.annotate 'line', 73
  # rx subcapture "max"
    set_addr $I10, rxcap_200_fail
    rx187_cur."!mark_push"(0, rx187_pos, $I10)
  alt199_0:
    set_addr $I10, alt199_1
    rx187_cur."!mark_push"(0, rx187_pos, $I10)
.annotate 'line', 74
  # rx charclass_q d r 1..-1
    sub $I10, rx187_pos, rx187_off
    find_not_cclass $I11, 8, rx187_tgt, $I10, rx187_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx187_fail
    add rx187_pos, rx187_off, $I11
    goto alt199_end
  alt199_1:
    set_addr $I10, alt199_2
    rx187_cur."!mark_push"(0, rx187_pos, $I10)
.annotate 'line', 75
  # rx literal  "*"
    add $I11, rx187_pos, 1
    gt $I11, rx187_eos, rx187_fail
    sub $I11, rx187_pos, rx187_off
    ord $I11, rx187_tgt, $I11
    ne $I11, 42, rx187_fail
    add rx187_pos, 1
    goto alt199_end
  alt199_2:
.annotate 'line', 76
  # rx subrule "panic" subtype=method negate=
    rx187_cur."!cursor_pos"(rx187_pos)
    $P10 = rx187_cur."panic"("Only integers or '*' allowed as range quantifier endpoint")
    unless $P10, rx187_fail
    rx187_pos = $P10."pos"()
  alt199_end:
.annotate 'line', 73
    set_addr $I10, rxcap_200_fail
    ($I12, $I11) = rx187_cur."!mark_peek"($I10)
    rx187_cur."!cursor_pos"($I11)
    ($P10) = rx187_cur."!cursor_start"()
    $P10."!cursor_pass"(rx187_pos, "")
    rx187_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("max")
    goto rxcap_200_done
  rxcap_200_fail:
    goto rx187_fail
  rxcap_200_done:
.annotate 'line', 78
    set_addr $I10, rxquantr198_done
    (rx187_rep) = rx187_cur."!mark_commit"($I10)
  rxquantr198_done:
.annotate 'line', 71
    goto alt196_end
  alt196_1:
.annotate 'line', 79
  # rx subrule "quantified_atom" subtype=capture negate=
    rx187_cur."!cursor_pos"(rx187_pos)
    $P10 = rx187_cur."quantified_atom"()
    unless $P10, rx187_fail
    rx187_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantified_atom")
    rx187_pos = $P10."pos"()
  alt196_end:
.annotate 'line', 68
  # rx pass
    rx187_cur."!cursor_pass"(rx187_pos, "quantifier:sym<**>")
    if_null rx187_debug, debug_262
    rx187_cur."!cursor_debug"("PASS", "quantifier:sym<**>", " at pos=", rx187_pos)
  debug_262:
    .return (rx187_cur)
  rx187_restart:
.annotate 'line', 3
    if_null rx187_debug, debug_263
    rx187_cur."!cursor_debug"("NEXT", "quantifier:sym<**>")
  debug_263:
  rx187_fail:
    (rx187_rep, rx187_pos, $I10, $P10) = rx187_cur."!mark_fail"(0)
    lt rx187_pos, -1, rx187_done
    eq rx187_pos, -1, rx187_fail
    jump $I10
  rx187_done:
    rx187_cur."!cursor_fail"()
    if_null rx187_debug, debug_264
    rx187_cur."!cursor_debug"("FAIL", "quantifier:sym<**>")
  debug_264:
    .return (rx187_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__quantifier:sym<**>"  :subid("53_1295142316.828") :method
.annotate 'line', 3
    new $P189, "ResizablePMCArray"
    push $P189, "**"
    .return ($P189)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backmod"  :subid("54_1295142316.828") :method :outer("11_1295142316.828")
.annotate 'line', 3
    .const 'Sub' $P209 = "56_1295142316.828" 
    capture_lex $P209
    .local string rx202_tgt
    .local int rx202_pos
    .local int rx202_off
    .local int rx202_eos
    .local int rx202_rep
    .local pmc rx202_cur
    .local pmc rx202_debug
    (rx202_cur, rx202_pos, rx202_tgt, $I10) = self."!cursor_start"()
    getattribute rx202_debug, rx202_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx202_cur
    .local pmc match
    .lex "$/", match
    length rx202_eos, rx202_tgt
    gt rx202_pos, rx202_eos, rx202_done
    set rx202_off, 0
    lt rx202_pos, 2, rx202_start
    sub rx202_off, rx202_pos, 1
    substr rx202_tgt, rx202_tgt, rx202_off
  rx202_start:
    eq $I10, 1, rx202_restart
    if_null rx202_debug, debug_265
    rx202_cur."!cursor_debug"("START", "backmod")
  debug_265:
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
.annotate 'line', 83
  # rx rxquantr206 ** 0..1
    set_addr $I10, rxquantr206_done
    rx202_cur."!mark_push"(0, rx202_pos, $I10)
  rxquantr206_loop:
  # rx literal  ":"
    add $I11, rx202_pos, 1
    gt $I11, rx202_eos, rx202_fail
    sub $I11, rx202_pos, rx202_off
    ord $I11, rx202_tgt, $I11
    ne $I11, 58, rx202_fail
    add rx202_pos, 1
    set_addr $I10, rxquantr206_done
    (rx202_rep) = rx202_cur."!mark_commit"($I10)
  rxquantr206_done:
  alt207_0:
    set_addr $I10, alt207_1
    rx202_cur."!mark_push"(0, rx202_pos, $I10)
  # rx literal  "?"
    add $I11, rx202_pos, 1
    gt $I11, rx202_eos, rx202_fail
    sub $I11, rx202_pos, rx202_off
    ord $I11, rx202_tgt, $I11
    ne $I11, 63, rx202_fail
    add rx202_pos, 1
    goto alt207_end
  alt207_1:
    set_addr $I10, alt207_2
    rx202_cur."!mark_push"(0, rx202_pos, $I10)
  # rx literal  "!"
    add $I11, rx202_pos, 1
    gt $I11, rx202_eos, rx202_fail
    sub $I11, rx202_pos, rx202_off
    ord $I11, rx202_tgt, $I11
    ne $I11, 33, rx202_fail
    add rx202_pos, 1
    goto alt207_end
  alt207_2:
  # rx subrule "before" subtype=zerowidth negate=1
    rx202_cur."!cursor_pos"(rx202_pos)
    .const 'Sub' $P209 = "56_1295142316.828" 
    capture_lex $P209
    $P10 = rx202_cur."before"($P209)
    if $P10, rx202_fail
  alt207_end:
  # rx pass
    rx202_cur."!cursor_pass"(rx202_pos, "backmod")
    if_null rx202_debug, debug_270
    rx202_cur."!cursor_debug"("PASS", "backmod", " at pos=", rx202_pos)
  debug_270:
    .return (rx202_cur)
  rx202_restart:
.annotate 'line', 3
    if_null rx202_debug, debug_271
    rx202_cur."!cursor_debug"("NEXT", "backmod")
  debug_271:
  rx202_fail:
    (rx202_rep, rx202_pos, $I10, $P10) = rx202_cur."!mark_fail"(0)
    lt rx202_pos, -1, rx202_done
    eq rx202_pos, -1, rx202_fail
    jump $I10
  rx202_done:
    rx202_cur."!cursor_fail"()
    if_null rx202_debug, debug_272
    rx202_cur."!cursor_debug"("FAIL", "backmod")
  debug_272:
    .return (rx202_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backmod"  :subid("55_1295142316.828") :method
.annotate 'line', 3
    new $P204, "ResizablePMCArray"
    push $P204, ""
    .return ($P204)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block208"  :anon :subid("56_1295142316.828") :method :outer("54_1295142316.828")
.annotate 'line', 83
    .local string rx210_tgt
    .local int rx210_pos
    .local int rx210_off
    .local int rx210_eos
    .local int rx210_rep
    .local pmc rx210_cur
    .local pmc rx210_debug
    (rx210_cur, rx210_pos, rx210_tgt, $I10) = self."!cursor_start"()
    getattribute rx210_debug, rx210_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx210_cur
    .local pmc match
    .lex "$/", match
    length rx210_eos, rx210_tgt
    gt rx210_pos, rx210_eos, rx210_done
    set rx210_off, 0
    lt rx210_pos, 2, rx210_start
    sub rx210_off, rx210_pos, 1
    substr rx210_tgt, rx210_tgt, rx210_off
  rx210_start:
    eq $I10, 1, rx210_restart
    if_null rx210_debug, debug_266
    rx210_cur."!cursor_debug"("START", "")
  debug_266:
    $I10 = self.'from'()
    ne $I10, -1, rxscan211_done
    goto rxscan211_scan
  rxscan211_loop:
    ($P10) = rx210_cur."from"()
    inc $P10
    set rx210_pos, $P10
    ge rx210_pos, rx210_eos, rxscan211_done
  rxscan211_scan:
    set_addr $I10, rxscan211_loop
    rx210_cur."!mark_push"(0, rx210_pos, $I10)
  rxscan211_done:
  # rx literal  ":"
    add $I11, rx210_pos, 1
    gt $I11, rx210_eos, rx210_fail
    sub $I11, rx210_pos, rx210_off
    ord $I11, rx210_tgt, $I11
    ne $I11, 58, rx210_fail
    add rx210_pos, 1
  # rx pass
    rx210_cur."!cursor_pass"(rx210_pos, "")
    if_null rx210_debug, debug_267
    rx210_cur."!cursor_debug"("PASS", "", " at pos=", rx210_pos)
  debug_267:
    .return (rx210_cur)
  rx210_restart:
    if_null rx210_debug, debug_268
    rx210_cur."!cursor_debug"("NEXT", "")
  debug_268:
  rx210_fail:
    (rx210_rep, rx210_pos, $I10, $P10) = rx210_cur."!mark_fail"(0)
    lt rx210_pos, -1, rx210_done
    eq rx210_pos, -1, rx210_fail
    jump $I10
  rx210_done:
    rx210_cur."!cursor_fail"()
    if_null rx210_debug, debug_269
    rx210_cur."!cursor_debug"("FAIL", "")
  debug_269:
    .return (rx210_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar"  :subid("57_1295142316.828") :method
.annotate 'line', 85
    $P213 = self."!protoregex"("metachar")
    .return ($P213)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar"  :subid("58_1295142316.828") :method
.annotate 'line', 85
    $P215 = self."!PREFIX__!protoregex"("metachar")
    .return ($P215)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<ws>"  :subid("59_1295142316.828") :method :outer("11_1295142316.828")
.annotate 'line', 3
    .local string rx217_tgt
    .local int rx217_pos
    .local int rx217_off
    .local int rx217_eos
    .local int rx217_rep
    .local pmc rx217_cur
    .local pmc rx217_debug
    (rx217_cur, rx217_pos, rx217_tgt, $I10) = self."!cursor_start"()
    getattribute rx217_debug, rx217_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx217_cur
    .local pmc match
    .lex "$/", match
    length rx217_eos, rx217_tgt
    gt rx217_pos, rx217_eos, rx217_done
    set rx217_off, 0
    lt rx217_pos, 2, rx217_start
    sub rx217_off, rx217_pos, 1
    substr rx217_tgt, rx217_tgt, rx217_off
  rx217_start:
    eq $I10, 1, rx217_restart
    if_null rx217_debug, debug_273
    rx217_cur."!cursor_debug"("START", "metachar:sym<ws>")
  debug_273:
    $I10 = self.'from'()
    ne $I10, -1, rxscan221_done
    goto rxscan221_scan
  rxscan221_loop:
    ($P10) = rx217_cur."from"()
    inc $P10
    set rx217_pos, $P10
    ge rx217_pos, rx217_eos, rxscan221_done
  rxscan221_scan:
    set_addr $I10, rxscan221_loop
    rx217_cur."!mark_push"(0, rx217_pos, $I10)
  rxscan221_done:
.annotate 'line', 86
  # rx subrule "normspace" subtype=method negate=
    rx217_cur."!cursor_pos"(rx217_pos)
    $P10 = rx217_cur."normspace"()
    unless $P10, rx217_fail
    rx217_pos = $P10."pos"()
  # rx pass
    rx217_cur."!cursor_pass"(rx217_pos, "metachar:sym<ws>")
    if_null rx217_debug, debug_274
    rx217_cur."!cursor_debug"("PASS", "metachar:sym<ws>", " at pos=", rx217_pos)
  debug_274:
    .return (rx217_cur)
  rx217_restart:
.annotate 'line', 3
    if_null rx217_debug, debug_275
    rx217_cur."!cursor_debug"("NEXT", "metachar:sym<ws>")
  debug_275:
  rx217_fail:
    (rx217_rep, rx217_pos, $I10, $P10) = rx217_cur."!mark_fail"(0)
    lt rx217_pos, -1, rx217_done
    eq rx217_pos, -1, rx217_fail
    jump $I10
  rx217_done:
    rx217_cur."!cursor_fail"()
    if_null rx217_debug, debug_276
    rx217_cur."!cursor_debug"("FAIL", "metachar:sym<ws>")
  debug_276:
    .return (rx217_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<ws>"  :subid("60_1295142316.828") :method
.annotate 'line', 3
    $P219 = self."!PREFIX__!subrule"("normspace", "")
    new $P220, "ResizablePMCArray"
    push $P220, $P219
    .return ($P220)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<[ ]>"  :subid("61_1295142316.828") :method :outer("11_1295142316.828")
.annotate 'line', 3
    .local string rx223_tgt
    .local int rx223_pos
    .local int rx223_off
    .local int rx223_eos
    .local int rx223_rep
    .local pmc rx223_cur
    .local pmc rx223_debug
    (rx223_cur, rx223_pos, rx223_tgt, $I10) = self."!cursor_start"()
    getattribute rx223_debug, rx223_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx223_cur
    .local pmc match
    .lex "$/", match
    length rx223_eos, rx223_tgt
    gt rx223_pos, rx223_eos, rx223_done
    set rx223_off, 0
    lt rx223_pos, 2, rx223_start
    sub rx223_off, rx223_pos, 1
    substr rx223_tgt, rx223_tgt, rx223_off
  rx223_start:
    eq $I10, 1, rx223_restart
    if_null rx223_debug, debug_277
    rx223_cur."!cursor_debug"("START", "metachar:sym<[ ]>")
  debug_277:
    $I10 = self.'from'()
    ne $I10, -1, rxscan227_done
    goto rxscan227_scan
  rxscan227_loop:
    ($P10) = rx223_cur."from"()
    inc $P10
    set rx223_pos, $P10
    ge rx223_pos, rx223_eos, rxscan227_done
  rxscan227_scan:
    set_addr $I10, rxscan227_loop
    rx223_cur."!mark_push"(0, rx223_pos, $I10)
  rxscan227_done:
.annotate 'line', 87
  # rx literal  "["
    add $I11, rx223_pos, 1
    gt $I11, rx223_eos, rx223_fail
    sub $I11, rx223_pos, rx223_off
    ord $I11, rx223_tgt, $I11
    ne $I11, 91, rx223_fail
    add rx223_pos, 1
  # rx subrule "nibbler" subtype=capture negate=
    rx223_cur."!cursor_pos"(rx223_pos)
    $P10 = rx223_cur."nibbler"()
    unless $P10, rx223_fail
    rx223_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx223_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx223_pos, 1
    gt $I11, rx223_eos, rx223_fail
    sub $I11, rx223_pos, rx223_off
    ord $I11, rx223_tgt, $I11
    ne $I11, 93, rx223_fail
    add rx223_pos, 1
  # rx pass
    rx223_cur."!cursor_pass"(rx223_pos, "metachar:sym<[ ]>")
    if_null rx223_debug, debug_278
    rx223_cur."!cursor_debug"("PASS", "metachar:sym<[ ]>", " at pos=", rx223_pos)
  debug_278:
    .return (rx223_cur)
  rx223_restart:
.annotate 'line', 3
    if_null rx223_debug, debug_279
    rx223_cur."!cursor_debug"("NEXT", "metachar:sym<[ ]>")
  debug_279:
  rx223_fail:
    (rx223_rep, rx223_pos, $I10, $P10) = rx223_cur."!mark_fail"(0)
    lt rx223_pos, -1, rx223_done
    eq rx223_pos, -1, rx223_fail
    jump $I10
  rx223_done:
    rx223_cur."!cursor_fail"()
    if_null rx223_debug, debug_280
    rx223_cur."!cursor_debug"("FAIL", "metachar:sym<[ ]>")
  debug_280:
    .return (rx223_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<[ ]>"  :subid("62_1295142316.828") :method
.annotate 'line', 3
    $P225 = self."!PREFIX__!subrule"("nibbler", "[")
    new $P226, "ResizablePMCArray"
    push $P226, $P225
    .return ($P226)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<( )>"  :subid("63_1295142316.828") :method :outer("11_1295142316.828")
.annotate 'line', 3
    .local string rx229_tgt
    .local int rx229_pos
    .local int rx229_off
    .local int rx229_eos
    .local int rx229_rep
    .local pmc rx229_cur
    .local pmc rx229_debug
    (rx229_cur, rx229_pos, rx229_tgt, $I10) = self."!cursor_start"()
    getattribute rx229_debug, rx229_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx229_cur
    .local pmc match
    .lex "$/", match
    length rx229_eos, rx229_tgt
    gt rx229_pos, rx229_eos, rx229_done
    set rx229_off, 0
    lt rx229_pos, 2, rx229_start
    sub rx229_off, rx229_pos, 1
    substr rx229_tgt, rx229_tgt, rx229_off
  rx229_start:
    eq $I10, 1, rx229_restart
    if_null rx229_debug, debug_281
    rx229_cur."!cursor_debug"("START", "metachar:sym<( )>")
  debug_281:
    $I10 = self.'from'()
    ne $I10, -1, rxscan233_done
    goto rxscan233_scan
  rxscan233_loop:
    ($P10) = rx229_cur."from"()
    inc $P10
    set rx229_pos, $P10
    ge rx229_pos, rx229_eos, rxscan233_done
  rxscan233_scan:
    set_addr $I10, rxscan233_loop
    rx229_cur."!mark_push"(0, rx229_pos, $I10)
  rxscan233_done:
.annotate 'line', 88
  # rx literal  "("
    add $I11, rx229_pos, 1
    gt $I11, rx229_eos, rx229_fail
    sub $I11, rx229_pos, rx229_off
    ord $I11, rx229_tgt, $I11
    ne $I11, 40, rx229_fail
    add rx229_pos, 1
  # rx subrule "nibbler" subtype=capture negate=
    rx229_cur."!cursor_pos"(rx229_pos)
    $P10 = rx229_cur."nibbler"()
    unless $P10, rx229_fail
    rx229_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx229_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx229_pos, 1
    gt $I11, rx229_eos, rx229_fail
    sub $I11, rx229_pos, rx229_off
    ord $I11, rx229_tgt, $I11
    ne $I11, 41, rx229_fail
    add rx229_pos, 1
  # rx pass
    rx229_cur."!cursor_pass"(rx229_pos, "metachar:sym<( )>")
    if_null rx229_debug, debug_282
    rx229_cur."!cursor_debug"("PASS", "metachar:sym<( )>", " at pos=", rx229_pos)
  debug_282:
    .return (rx229_cur)
  rx229_restart:
.annotate 'line', 3
    if_null rx229_debug, debug_283
    rx229_cur."!cursor_debug"("NEXT", "metachar:sym<( )>")
  debug_283:
  rx229_fail:
    (rx229_rep, rx229_pos, $I10, $P10) = rx229_cur."!mark_fail"(0)
    lt rx229_pos, -1, rx229_done
    eq rx229_pos, -1, rx229_fail
    jump $I10
  rx229_done:
    rx229_cur."!cursor_fail"()
    if_null rx229_debug, debug_284
    rx229_cur."!cursor_debug"("FAIL", "metachar:sym<( )>")
  debug_284:
    .return (rx229_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<( )>"  :subid("64_1295142316.828") :method
.annotate 'line', 3
    $P231 = self."!PREFIX__!subrule"("nibbler", "(")
    new $P232, "ResizablePMCArray"
    push $P232, $P231
    .return ($P232)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<'>"  :subid("65_1295142316.828") :method :outer("11_1295142316.828")
.annotate 'line', 3
    .local string rx235_tgt
    .local int rx235_pos
    .local int rx235_off
    .local int rx235_eos
    .local int rx235_rep
    .local pmc rx235_cur
    .local pmc rx235_debug
    (rx235_cur, rx235_pos, rx235_tgt, $I10) = self."!cursor_start"()
    getattribute rx235_debug, rx235_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx235_cur
    .local pmc match
    .lex "$/", match
    length rx235_eos, rx235_tgt
    gt rx235_pos, rx235_eos, rx235_done
    set rx235_off, 0
    lt rx235_pos, 2, rx235_start
    sub rx235_off, rx235_pos, 1
    substr rx235_tgt, rx235_tgt, rx235_off
  rx235_start:
    eq $I10, 1, rx235_restart
    if_null rx235_debug, debug_285
    rx235_cur."!cursor_debug"("START", "metachar:sym<'>")
  debug_285:
    $I10 = self.'from'()
    ne $I10, -1, rxscan238_done
    goto rxscan238_scan
  rxscan238_loop:
    ($P10) = rx235_cur."from"()
    inc $P10
    set rx235_pos, $P10
    ge rx235_pos, rx235_eos, rxscan238_done
  rxscan238_scan:
    set_addr $I10, rxscan238_loop
    rx235_cur."!mark_push"(0, rx235_pos, $I10)
  rxscan238_done:
.annotate 'line', 89
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx235_pos, rx235_off
    substr $S10, rx235_tgt, $I10, 1
    index $I11, "'", $S10
    lt $I11, 0, rx235_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx235_cur."!cursor_pos"(rx235_pos)
    $P10 = rx235_cur."quote_EXPR"(":q")
    unless $P10, rx235_fail
    rx235_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx235_pos = $P10."pos"()
  # rx pass
    rx235_cur."!cursor_pass"(rx235_pos, "metachar:sym<'>")
    if_null rx235_debug, debug_286
    rx235_cur."!cursor_debug"("PASS", "metachar:sym<'>", " at pos=", rx235_pos)
  debug_286:
    .return (rx235_cur)
  rx235_restart:
.annotate 'line', 3
    if_null rx235_debug, debug_287
    rx235_cur."!cursor_debug"("NEXT", "metachar:sym<'>")
  debug_287:
  rx235_fail:
    (rx235_rep, rx235_pos, $I10, $P10) = rx235_cur."!mark_fail"(0)
    lt rx235_pos, -1, rx235_done
    eq rx235_pos, -1, rx235_fail
    jump $I10
  rx235_done:
    rx235_cur."!cursor_fail"()
    if_null rx235_debug, debug_288
    rx235_cur."!cursor_debug"("FAIL", "metachar:sym<'>")
  debug_288:
    .return (rx235_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<'>"  :subid("66_1295142316.828") :method
.annotate 'line', 3
    new $P237, "ResizablePMCArray"
    push $P237, "'"
    .return ($P237)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<\">"  :subid("67_1295142316.828") :method :outer("11_1295142316.828")
.annotate 'line', 3
    .local string rx240_tgt
    .local int rx240_pos
    .local int rx240_off
    .local int rx240_eos
    .local int rx240_rep
    .local pmc rx240_cur
    .local pmc rx240_debug
    (rx240_cur, rx240_pos, rx240_tgt, $I10) = self."!cursor_start"()
    getattribute rx240_debug, rx240_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx240_cur
    .local pmc match
    .lex "$/", match
    length rx240_eos, rx240_tgt
    gt rx240_pos, rx240_eos, rx240_done
    set rx240_off, 0
    lt rx240_pos, 2, rx240_start
    sub rx240_off, rx240_pos, 1
    substr rx240_tgt, rx240_tgt, rx240_off
  rx240_start:
    eq $I10, 1, rx240_restart
    if_null rx240_debug, debug_289
    rx240_cur."!cursor_debug"("START", "metachar:sym<\">")
  debug_289:
    $I10 = self.'from'()
    ne $I10, -1, rxscan243_done
    goto rxscan243_scan
  rxscan243_loop:
    ($P10) = rx240_cur."from"()
    inc $P10
    set rx240_pos, $P10
    ge rx240_pos, rx240_eos, rxscan243_done
  rxscan243_scan:
    set_addr $I10, rxscan243_loop
    rx240_cur."!mark_push"(0, rx240_pos, $I10)
  rxscan243_done:
.annotate 'line', 90
  # rx enumcharlist negate=0 zerowidth
    sub $I10, rx240_pos, rx240_off
    substr $S10, rx240_tgt, $I10, 1
    index $I11, "\"", $S10
    lt $I11, 0, rx240_fail
  # rx subrule "quote_EXPR" subtype=capture negate=
    rx240_cur."!cursor_pos"(rx240_pos)
    $P10 = rx240_cur."quote_EXPR"(":qq")
    unless $P10, rx240_fail
    rx240_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_EXPR")
    rx240_pos = $P10."pos"()
  # rx pass
    rx240_cur."!cursor_pass"(rx240_pos, "metachar:sym<\">")
    if_null rx240_debug, debug_290
    rx240_cur."!cursor_debug"("PASS", "metachar:sym<\">", " at pos=", rx240_pos)
  debug_290:
    .return (rx240_cur)
  rx240_restart:
.annotate 'line', 3
    if_null rx240_debug, debug_291
    rx240_cur."!cursor_debug"("NEXT", "metachar:sym<\">")
  debug_291:
  rx240_fail:
    (rx240_rep, rx240_pos, $I10, $P10) = rx240_cur."!mark_fail"(0)
    lt rx240_pos, -1, rx240_done
    eq rx240_pos, -1, rx240_fail
    jump $I10
  rx240_done:
    rx240_cur."!cursor_fail"()
    if_null rx240_debug, debug_292
    rx240_cur."!cursor_debug"("FAIL", "metachar:sym<\">")
  debug_292:
    .return (rx240_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<\">"  :subid("68_1295142316.828") :method
.annotate 'line', 3
    new $P242, "ResizablePMCArray"
    push $P242, "\""
    .return ($P242)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<.>"  :subid("69_1295142316.828") :method :outer("11_1295142316.828")
.annotate 'line', 3
    .local string rx245_tgt
    .local int rx245_pos
    .local int rx245_off
    .local int rx245_eos
    .local int rx245_rep
    .local pmc rx245_cur
    .local pmc rx245_debug
    (rx245_cur, rx245_pos, rx245_tgt, $I10) = self."!cursor_start"()
    getattribute rx245_debug, rx245_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx245_cur
    .local pmc match
    .lex "$/", match
    length rx245_eos, rx245_tgt
    gt rx245_pos, rx245_eos, rx245_done
    set rx245_off, 0
    lt rx245_pos, 2, rx245_start
    sub rx245_off, rx245_pos, 1
    substr rx245_tgt, rx245_tgt, rx245_off
  rx245_start:
    eq $I10, 1, rx245_restart
    if_null rx245_debug, debug_293
    rx245_cur."!cursor_debug"("START", "metachar:sym<.>")
  debug_293:
    $I10 = self.'from'()
    ne $I10, -1, rxscan248_done
    goto rxscan248_scan
  rxscan248_loop:
    ($P10) = rx245_cur."from"()
    inc $P10
    set rx245_pos, $P10
    ge rx245_pos, rx245_eos, rxscan248_done
  rxscan248_scan:
    set_addr $I10, rxscan248_loop
    rx245_cur."!mark_push"(0, rx245_pos, $I10)
  rxscan248_done:
.annotate 'line', 91
  # rx subcapture "sym"
    set_addr $I10, rxcap_249_fail
    rx245_cur."!mark_push"(0, rx245_pos, $I10)
  # rx literal  "."
    add $I11, rx245_pos, 1
    gt $I11, rx245_eos, rx245_fail
    sub $I11, rx245_pos, rx245_off
    ord $I11, rx245_tgt, $I11
    ne $I11, 46, rx245_fail
    add rx245_pos, 1
    set_addr $I10, rxcap_249_fail
    ($I12, $I11) = rx245_cur."!mark_peek"($I10)
    rx245_cur."!cursor_pos"($I11)
    ($P10) = rx245_cur."!cursor_start"()
    $P10."!cursor_pass"(rx245_pos, "")
    rx245_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_249_done
  rxcap_249_fail:
    goto rx245_fail
  rxcap_249_done:
  # rx pass
    rx245_cur."!cursor_pass"(rx245_pos, "metachar:sym<.>")
    if_null rx245_debug, debug_294
    rx245_cur."!cursor_debug"("PASS", "metachar:sym<.>", " at pos=", rx245_pos)
  debug_294:
    .return (rx245_cur)
  rx245_restart:
.annotate 'line', 3
    if_null rx245_debug, debug_295
    rx245_cur."!cursor_debug"("NEXT", "metachar:sym<.>")
  debug_295:
  rx245_fail:
    (rx245_rep, rx245_pos, $I10, $P10) = rx245_cur."!mark_fail"(0)
    lt rx245_pos, -1, rx245_done
    eq rx245_pos, -1, rx245_fail
    jump $I10
  rx245_done:
    rx245_cur."!cursor_fail"()
    if_null rx245_debug, debug_296
    rx245_cur."!cursor_debug"("FAIL", "metachar:sym<.>")
  debug_296:
    .return (rx245_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<.>"  :subid("70_1295142316.828") :method
.annotate 'line', 3
    new $P247, "ResizablePMCArray"
    push $P247, "."
    .return ($P247)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<^>"  :subid("71_1295142316.828") :method :outer("11_1295142316.828")
.annotate 'line', 3
    .local string rx251_tgt
    .local int rx251_pos
    .local int rx251_off
    .local int rx251_eos
    .local int rx251_rep
    .local pmc rx251_cur
    .local pmc rx251_debug
    (rx251_cur, rx251_pos, rx251_tgt, $I10) = self."!cursor_start"()
    getattribute rx251_debug, rx251_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx251_cur
    .local pmc match
    .lex "$/", match
    length rx251_eos, rx251_tgt
    gt rx251_pos, rx251_eos, rx251_done
    set rx251_off, 0
    lt rx251_pos, 2, rx251_start
    sub rx251_off, rx251_pos, 1
    substr rx251_tgt, rx251_tgt, rx251_off
  rx251_start:
    eq $I10, 1, rx251_restart
    if_null rx251_debug, debug_297
    rx251_cur."!cursor_debug"("START", "metachar:sym<^>")
  debug_297:
    $I10 = self.'from'()
    ne $I10, -1, rxscan254_done
    goto rxscan254_scan
  rxscan254_loop:
    ($P10) = rx251_cur."from"()
    inc $P10
    set rx251_pos, $P10
    ge rx251_pos, rx251_eos, rxscan254_done
  rxscan254_scan:
    set_addr $I10, rxscan254_loop
    rx251_cur."!mark_push"(0, rx251_pos, $I10)
  rxscan254_done:
.annotate 'line', 92
  # rx subcapture "sym"
    set_addr $I10, rxcap_255_fail
    rx251_cur."!mark_push"(0, rx251_pos, $I10)
  # rx literal  "^"
    add $I11, rx251_pos, 1
    gt $I11, rx251_eos, rx251_fail
    sub $I11, rx251_pos, rx251_off
    ord $I11, rx251_tgt, $I11
    ne $I11, 94, rx251_fail
    add rx251_pos, 1
    set_addr $I10, rxcap_255_fail
    ($I12, $I11) = rx251_cur."!mark_peek"($I10)
    rx251_cur."!cursor_pos"($I11)
    ($P10) = rx251_cur."!cursor_start"()
    $P10."!cursor_pass"(rx251_pos, "")
    rx251_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_255_done
  rxcap_255_fail:
    goto rx251_fail
  rxcap_255_done:
  # rx pass
    rx251_cur."!cursor_pass"(rx251_pos, "metachar:sym<^>")
    if_null rx251_debug, debug_298
    rx251_cur."!cursor_debug"("PASS", "metachar:sym<^>", " at pos=", rx251_pos)
  debug_298:
    .return (rx251_cur)
  rx251_restart:
.annotate 'line', 3
    if_null rx251_debug, debug_299
    rx251_cur."!cursor_debug"("NEXT", "metachar:sym<^>")
  debug_299:
  rx251_fail:
    (rx251_rep, rx251_pos, $I10, $P10) = rx251_cur."!mark_fail"(0)
    lt rx251_pos, -1, rx251_done
    eq rx251_pos, -1, rx251_fail
    jump $I10
  rx251_done:
    rx251_cur."!cursor_fail"()
    if_null rx251_debug, debug_300
    rx251_cur."!cursor_debug"("FAIL", "metachar:sym<^>")
  debug_300:
    .return (rx251_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<^>"  :subid("72_1295142316.828") :method
.annotate 'line', 3
    new $P253, "ResizablePMCArray"
    push $P253, "^"
    .return ($P253)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<^^>"  :subid("73_1295142316.828") :method :outer("11_1295142316.828")
.annotate 'line', 3
    .local string rx257_tgt
    .local int rx257_pos
    .local int rx257_off
    .local int rx257_eos
    .local int rx257_rep
    .local pmc rx257_cur
    .local pmc rx257_debug
    (rx257_cur, rx257_pos, rx257_tgt, $I10) = self."!cursor_start"()
    getattribute rx257_debug, rx257_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx257_cur
    .local pmc match
    .lex "$/", match
    length rx257_eos, rx257_tgt
    gt rx257_pos, rx257_eos, rx257_done
    set rx257_off, 0
    lt rx257_pos, 2, rx257_start
    sub rx257_off, rx257_pos, 1
    substr rx257_tgt, rx257_tgt, rx257_off
  rx257_start:
    eq $I10, 1, rx257_restart
    if_null rx257_debug, debug_301
    rx257_cur."!cursor_debug"("START", "metachar:sym<^^>")
  debug_301:
    $I10 = self.'from'()
    ne $I10, -1, rxscan260_done
    goto rxscan260_scan
  rxscan260_loop:
    ($P10) = rx257_cur."from"()
    inc $P10
    set rx257_pos, $P10
    ge rx257_pos, rx257_eos, rxscan260_done
  rxscan260_scan:
    set_addr $I10, rxscan260_loop
    rx257_cur."!mark_push"(0, rx257_pos, $I10)
  rxscan260_done:
.annotate 'line', 93
  # rx subcapture "sym"
    set_addr $I10, rxcap_261_fail
    rx257_cur."!mark_push"(0, rx257_pos, $I10)
  # rx literal  "^^"
    add $I11, rx257_pos, 2
    gt $I11, rx257_eos, rx257_fail
    sub $I11, rx257_pos, rx257_off
    substr $S10, rx257_tgt, $I11, 2
    ne $S10, "^^", rx257_fail
    add rx257_pos, 2
    set_addr $I10, rxcap_261_fail
    ($I12, $I11) = rx257_cur."!mark_peek"($I10)
    rx257_cur."!cursor_pos"($I11)
    ($P10) = rx257_cur."!cursor_start"()
    $P10."!cursor_pass"(rx257_pos, "")
    rx257_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_261_done
  rxcap_261_fail:
    goto rx257_fail
  rxcap_261_done:
  # rx pass
    rx257_cur."!cursor_pass"(rx257_pos, "metachar:sym<^^>")
    if_null rx257_debug, debug_302
    rx257_cur."!cursor_debug"("PASS", "metachar:sym<^^>", " at pos=", rx257_pos)
  debug_302:
    .return (rx257_cur)
  rx257_restart:
.annotate 'line', 3
    if_null rx257_debug, debug_303
    rx257_cur."!cursor_debug"("NEXT", "metachar:sym<^^>")
  debug_303:
  rx257_fail:
    (rx257_rep, rx257_pos, $I10, $P10) = rx257_cur."!mark_fail"(0)
    lt rx257_pos, -1, rx257_done
    eq rx257_pos, -1, rx257_fail
    jump $I10
  rx257_done:
    rx257_cur."!cursor_fail"()
    if_null rx257_debug, debug_304
    rx257_cur."!cursor_debug"("FAIL", "metachar:sym<^^>")
  debug_304:
    .return (rx257_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<^^>"  :subid("74_1295142316.828") :method
.annotate 'line', 3
    new $P259, "ResizablePMCArray"
    push $P259, "^^"
    .return ($P259)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<$>"  :subid("75_1295142316.828") :method :outer("11_1295142316.828")
.annotate 'line', 3
    .local string rx263_tgt
    .local int rx263_pos
    .local int rx263_off
    .local int rx263_eos
    .local int rx263_rep
    .local pmc rx263_cur
    .local pmc rx263_debug
    (rx263_cur, rx263_pos, rx263_tgt, $I10) = self."!cursor_start"()
    getattribute rx263_debug, rx263_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx263_cur
    .local pmc match
    .lex "$/", match
    length rx263_eos, rx263_tgt
    gt rx263_pos, rx263_eos, rx263_done
    set rx263_off, 0
    lt rx263_pos, 2, rx263_start
    sub rx263_off, rx263_pos, 1
    substr rx263_tgt, rx263_tgt, rx263_off
  rx263_start:
    eq $I10, 1, rx263_restart
    if_null rx263_debug, debug_305
    rx263_cur."!cursor_debug"("START", "metachar:sym<$>")
  debug_305:
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
.annotate 'line', 94
  # rx subcapture "sym"
    set_addr $I10, rxcap_267_fail
    rx263_cur."!mark_push"(0, rx263_pos, $I10)
  # rx literal  "$"
    add $I11, rx263_pos, 1
    gt $I11, rx263_eos, rx263_fail
    sub $I11, rx263_pos, rx263_off
    ord $I11, rx263_tgt, $I11
    ne $I11, 36, rx263_fail
    add rx263_pos, 1
    set_addr $I10, rxcap_267_fail
    ($I12, $I11) = rx263_cur."!mark_peek"($I10)
    rx263_cur."!cursor_pos"($I11)
    ($P10) = rx263_cur."!cursor_start"()
    $P10."!cursor_pass"(rx263_pos, "")
    rx263_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_267_done
  rxcap_267_fail:
    goto rx263_fail
  rxcap_267_done:
  # rx pass
    rx263_cur."!cursor_pass"(rx263_pos, "metachar:sym<$>")
    if_null rx263_debug, debug_306
    rx263_cur."!cursor_debug"("PASS", "metachar:sym<$>", " at pos=", rx263_pos)
  debug_306:
    .return (rx263_cur)
  rx263_restart:
.annotate 'line', 3
    if_null rx263_debug, debug_307
    rx263_cur."!cursor_debug"("NEXT", "metachar:sym<$>")
  debug_307:
  rx263_fail:
    (rx263_rep, rx263_pos, $I10, $P10) = rx263_cur."!mark_fail"(0)
    lt rx263_pos, -1, rx263_done
    eq rx263_pos, -1, rx263_fail
    jump $I10
  rx263_done:
    rx263_cur."!cursor_fail"()
    if_null rx263_debug, debug_308
    rx263_cur."!cursor_debug"("FAIL", "metachar:sym<$>")
  debug_308:
    .return (rx263_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<$>"  :subid("76_1295142316.828") :method
.annotate 'line', 3
    new $P265, "ResizablePMCArray"
    push $P265, "$"
    .return ($P265)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<$$>"  :subid("77_1295142316.828") :method :outer("11_1295142316.828")
.annotate 'line', 3
    .local string rx269_tgt
    .local int rx269_pos
    .local int rx269_off
    .local int rx269_eos
    .local int rx269_rep
    .local pmc rx269_cur
    .local pmc rx269_debug
    (rx269_cur, rx269_pos, rx269_tgt, $I10) = self."!cursor_start"()
    getattribute rx269_debug, rx269_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx269_cur
    .local pmc match
    .lex "$/", match
    length rx269_eos, rx269_tgt
    gt rx269_pos, rx269_eos, rx269_done
    set rx269_off, 0
    lt rx269_pos, 2, rx269_start
    sub rx269_off, rx269_pos, 1
    substr rx269_tgt, rx269_tgt, rx269_off
  rx269_start:
    eq $I10, 1, rx269_restart
    if_null rx269_debug, debug_309
    rx269_cur."!cursor_debug"("START", "metachar:sym<$$>")
  debug_309:
    $I10 = self.'from'()
    ne $I10, -1, rxscan272_done
    goto rxscan272_scan
  rxscan272_loop:
    ($P10) = rx269_cur."from"()
    inc $P10
    set rx269_pos, $P10
    ge rx269_pos, rx269_eos, rxscan272_done
  rxscan272_scan:
    set_addr $I10, rxscan272_loop
    rx269_cur."!mark_push"(0, rx269_pos, $I10)
  rxscan272_done:
.annotate 'line', 95
  # rx subcapture "sym"
    set_addr $I10, rxcap_273_fail
    rx269_cur."!mark_push"(0, rx269_pos, $I10)
  # rx literal  "$$"
    add $I11, rx269_pos, 2
    gt $I11, rx269_eos, rx269_fail
    sub $I11, rx269_pos, rx269_off
    substr $S10, rx269_tgt, $I11, 2
    ne $S10, "$$", rx269_fail
    add rx269_pos, 2
    set_addr $I10, rxcap_273_fail
    ($I12, $I11) = rx269_cur."!mark_peek"($I10)
    rx269_cur."!cursor_pos"($I11)
    ($P10) = rx269_cur."!cursor_start"()
    $P10."!cursor_pass"(rx269_pos, "")
    rx269_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_273_done
  rxcap_273_fail:
    goto rx269_fail
  rxcap_273_done:
  # rx pass
    rx269_cur."!cursor_pass"(rx269_pos, "metachar:sym<$$>")
    if_null rx269_debug, debug_310
    rx269_cur."!cursor_debug"("PASS", "metachar:sym<$$>", " at pos=", rx269_pos)
  debug_310:
    .return (rx269_cur)
  rx269_restart:
.annotate 'line', 3
    if_null rx269_debug, debug_311
    rx269_cur."!cursor_debug"("NEXT", "metachar:sym<$$>")
  debug_311:
  rx269_fail:
    (rx269_rep, rx269_pos, $I10, $P10) = rx269_cur."!mark_fail"(0)
    lt rx269_pos, -1, rx269_done
    eq rx269_pos, -1, rx269_fail
    jump $I10
  rx269_done:
    rx269_cur."!cursor_fail"()
    if_null rx269_debug, debug_312
    rx269_cur."!cursor_debug"("FAIL", "metachar:sym<$$>")
  debug_312:
    .return (rx269_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<$$>"  :subid("78_1295142316.828") :method
.annotate 'line', 3
    new $P271, "ResizablePMCArray"
    push $P271, "$$"
    .return ($P271)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<:::>"  :subid("79_1295142316.828") :method :outer("11_1295142316.828")
.annotate 'line', 3
    .local string rx275_tgt
    .local int rx275_pos
    .local int rx275_off
    .local int rx275_eos
    .local int rx275_rep
    .local pmc rx275_cur
    .local pmc rx275_debug
    (rx275_cur, rx275_pos, rx275_tgt, $I10) = self."!cursor_start"()
    getattribute rx275_debug, rx275_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx275_cur
    .local pmc match
    .lex "$/", match
    length rx275_eos, rx275_tgt
    gt rx275_pos, rx275_eos, rx275_done
    set rx275_off, 0
    lt rx275_pos, 2, rx275_start
    sub rx275_off, rx275_pos, 1
    substr rx275_tgt, rx275_tgt, rx275_off
  rx275_start:
    eq $I10, 1, rx275_restart
    if_null rx275_debug, debug_313
    rx275_cur."!cursor_debug"("START", "metachar:sym<:::>")
  debug_313:
    $I10 = self.'from'()
    ne $I10, -1, rxscan279_done
    goto rxscan279_scan
  rxscan279_loop:
    ($P10) = rx275_cur."from"()
    inc $P10
    set rx275_pos, $P10
    ge rx275_pos, rx275_eos, rxscan279_done
  rxscan279_scan:
    set_addr $I10, rxscan279_loop
    rx275_cur."!mark_push"(0, rx275_pos, $I10)
  rxscan279_done:
.annotate 'line', 96
  # rx subcapture "sym"
    set_addr $I10, rxcap_280_fail
    rx275_cur."!mark_push"(0, rx275_pos, $I10)
  # rx literal  ":::"
    add $I11, rx275_pos, 3
    gt $I11, rx275_eos, rx275_fail
    sub $I11, rx275_pos, rx275_off
    substr $S10, rx275_tgt, $I11, 3
    ne $S10, ":::", rx275_fail
    add rx275_pos, 3
    set_addr $I10, rxcap_280_fail
    ($I12, $I11) = rx275_cur."!mark_peek"($I10)
    rx275_cur."!cursor_pos"($I11)
    ($P10) = rx275_cur."!cursor_start"()
    $P10."!cursor_pass"(rx275_pos, "")
    rx275_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_280_done
  rxcap_280_fail:
    goto rx275_fail
  rxcap_280_done:
  # rx subrule "panic" subtype=method negate=
    rx275_cur."!cursor_pos"(rx275_pos)
    $P10 = rx275_cur."panic"("::: not yet implemented")
    unless $P10, rx275_fail
    rx275_pos = $P10."pos"()
  # rx pass
    rx275_cur."!cursor_pass"(rx275_pos, "metachar:sym<:::>")
    if_null rx275_debug, debug_314
    rx275_cur."!cursor_debug"("PASS", "metachar:sym<:::>", " at pos=", rx275_pos)
  debug_314:
    .return (rx275_cur)
  rx275_restart:
.annotate 'line', 3
    if_null rx275_debug, debug_315
    rx275_cur."!cursor_debug"("NEXT", "metachar:sym<:::>")
  debug_315:
  rx275_fail:
    (rx275_rep, rx275_pos, $I10, $P10) = rx275_cur."!mark_fail"(0)
    lt rx275_pos, -1, rx275_done
    eq rx275_pos, -1, rx275_fail
    jump $I10
  rx275_done:
    rx275_cur."!cursor_fail"()
    if_null rx275_debug, debug_316
    rx275_cur."!cursor_debug"("FAIL", "metachar:sym<:::>")
  debug_316:
    .return (rx275_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<:::>"  :subid("80_1295142316.828") :method
.annotate 'line', 3
    $P277 = self."!PREFIX__!subrule"("panic", ":::")
    new $P278, "ResizablePMCArray"
    push $P278, $P277
    .return ($P278)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<::>"  :subid("81_1295142316.828") :method :outer("11_1295142316.828")
.annotate 'line', 3
    .local string rx282_tgt
    .local int rx282_pos
    .local int rx282_off
    .local int rx282_eos
    .local int rx282_rep
    .local pmc rx282_cur
    .local pmc rx282_debug
    (rx282_cur, rx282_pos, rx282_tgt, $I10) = self."!cursor_start"()
    getattribute rx282_debug, rx282_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx282_cur
    .local pmc match
    .lex "$/", match
    length rx282_eos, rx282_tgt
    gt rx282_pos, rx282_eos, rx282_done
    set rx282_off, 0
    lt rx282_pos, 2, rx282_start
    sub rx282_off, rx282_pos, 1
    substr rx282_tgt, rx282_tgt, rx282_off
  rx282_start:
    eq $I10, 1, rx282_restart
    if_null rx282_debug, debug_317
    rx282_cur."!cursor_debug"("START", "metachar:sym<::>")
  debug_317:
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
.annotate 'line', 97
  # rx subcapture "sym"
    set_addr $I10, rxcap_287_fail
    rx282_cur."!mark_push"(0, rx282_pos, $I10)
  # rx literal  "::"
    add $I11, rx282_pos, 2
    gt $I11, rx282_eos, rx282_fail
    sub $I11, rx282_pos, rx282_off
    substr $S10, rx282_tgt, $I11, 2
    ne $S10, "::", rx282_fail
    add rx282_pos, 2
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
  # rx subrule "panic" subtype=method negate=
    rx282_cur."!cursor_pos"(rx282_pos)
    $P10 = rx282_cur."panic"(":: not yet implemented")
    unless $P10, rx282_fail
    rx282_pos = $P10."pos"()
  # rx pass
    rx282_cur."!cursor_pass"(rx282_pos, "metachar:sym<::>")
    if_null rx282_debug, debug_318
    rx282_cur."!cursor_debug"("PASS", "metachar:sym<::>", " at pos=", rx282_pos)
  debug_318:
    .return (rx282_cur)
  rx282_restart:
.annotate 'line', 3
    if_null rx282_debug, debug_319
    rx282_cur."!cursor_debug"("NEXT", "metachar:sym<::>")
  debug_319:
  rx282_fail:
    (rx282_rep, rx282_pos, $I10, $P10) = rx282_cur."!mark_fail"(0)
    lt rx282_pos, -1, rx282_done
    eq rx282_pos, -1, rx282_fail
    jump $I10
  rx282_done:
    rx282_cur."!cursor_fail"()
    if_null rx282_debug, debug_320
    rx282_cur."!cursor_debug"("FAIL", "metachar:sym<::>")
  debug_320:
    .return (rx282_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<::>"  :subid("82_1295142316.828") :method
.annotate 'line', 3
    $P284 = self."!PREFIX__!subrule"("panic", "::")
    new $P285, "ResizablePMCArray"
    push $P285, $P284
    .return ($P285)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<lwb>"  :subid("83_1295142316.828") :method :outer("11_1295142316.828")
.annotate 'line', 3
    .local string rx289_tgt
    .local int rx289_pos
    .local int rx289_off
    .local int rx289_eos
    .local int rx289_rep
    .local pmc rx289_cur
    .local pmc rx289_debug
    (rx289_cur, rx289_pos, rx289_tgt, $I10) = self."!cursor_start"()
    getattribute rx289_debug, rx289_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx289_cur
    .local pmc match
    .lex "$/", match
    length rx289_eos, rx289_tgt
    gt rx289_pos, rx289_eos, rx289_done
    set rx289_off, 0
    lt rx289_pos, 2, rx289_start
    sub rx289_off, rx289_pos, 1
    substr rx289_tgt, rx289_tgt, rx289_off
  rx289_start:
    eq $I10, 1, rx289_restart
    if_null rx289_debug, debug_321
    rx289_cur."!cursor_debug"("START", "metachar:sym<lwb>")
  debug_321:
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
.annotate 'line', 98
  # rx subcapture "sym"
    set_addr $I10, rxcap_294_fail
    rx289_cur."!mark_push"(0, rx289_pos, $I10)
  alt293_0:
    set_addr $I10, alt293_1
    rx289_cur."!mark_push"(0, rx289_pos, $I10)
  # rx literal  "<<"
    add $I11, rx289_pos, 2
    gt $I11, rx289_eos, rx289_fail
    sub $I11, rx289_pos, rx289_off
    substr $S10, rx289_tgt, $I11, 2
    ne $S10, "<<", rx289_fail
    add rx289_pos, 2
    goto alt293_end
  alt293_1:
  # rx literal  unicode:"\x{ab}"
    add $I11, rx289_pos, 1
    gt $I11, rx289_eos, rx289_fail
    sub $I11, rx289_pos, rx289_off
    ord $I11, rx289_tgt, $I11
    ne $I11, 171, rx289_fail
    add rx289_pos, 1
  alt293_end:
    set_addr $I10, rxcap_294_fail
    ($I12, $I11) = rx289_cur."!mark_peek"($I10)
    rx289_cur."!cursor_pos"($I11)
    ($P10) = rx289_cur."!cursor_start"()
    $P10."!cursor_pass"(rx289_pos, "")
    rx289_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_294_done
  rxcap_294_fail:
    goto rx289_fail
  rxcap_294_done:
  # rx pass
    rx289_cur."!cursor_pass"(rx289_pos, "metachar:sym<lwb>")
    if_null rx289_debug, debug_322
    rx289_cur."!cursor_debug"("PASS", "metachar:sym<lwb>", " at pos=", rx289_pos)
  debug_322:
    .return (rx289_cur)
  rx289_restart:
.annotate 'line', 3
    if_null rx289_debug, debug_323
    rx289_cur."!cursor_debug"("NEXT", "metachar:sym<lwb>")
  debug_323:
  rx289_fail:
    (rx289_rep, rx289_pos, $I10, $P10) = rx289_cur."!mark_fail"(0)
    lt rx289_pos, -1, rx289_done
    eq rx289_pos, -1, rx289_fail
    jump $I10
  rx289_done:
    rx289_cur."!cursor_fail"()
    if_null rx289_debug, debug_324
    rx289_cur."!cursor_debug"("FAIL", "metachar:sym<lwb>")
  debug_324:
    .return (rx289_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<lwb>"  :subid("84_1295142316.828") :method
.annotate 'line', 3
    new $P291, "ResizablePMCArray"
    push $P291, unicode:"\x{ab}"
    push $P291, "<<"
    .return ($P291)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<rwb>"  :subid("85_1295142316.828") :method :outer("11_1295142316.828")
.annotate 'line', 3
    .local string rx296_tgt
    .local int rx296_pos
    .local int rx296_off
    .local int rx296_eos
    .local int rx296_rep
    .local pmc rx296_cur
    .local pmc rx296_debug
    (rx296_cur, rx296_pos, rx296_tgt, $I10) = self."!cursor_start"()
    getattribute rx296_debug, rx296_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx296_cur
    .local pmc match
    .lex "$/", match
    length rx296_eos, rx296_tgt
    gt rx296_pos, rx296_eos, rx296_done
    set rx296_off, 0
    lt rx296_pos, 2, rx296_start
    sub rx296_off, rx296_pos, 1
    substr rx296_tgt, rx296_tgt, rx296_off
  rx296_start:
    eq $I10, 1, rx296_restart
    if_null rx296_debug, debug_325
    rx296_cur."!cursor_debug"("START", "metachar:sym<rwb>")
  debug_325:
    $I10 = self.'from'()
    ne $I10, -1, rxscan299_done
    goto rxscan299_scan
  rxscan299_loop:
    ($P10) = rx296_cur."from"()
    inc $P10
    set rx296_pos, $P10
    ge rx296_pos, rx296_eos, rxscan299_done
  rxscan299_scan:
    set_addr $I10, rxscan299_loop
    rx296_cur."!mark_push"(0, rx296_pos, $I10)
  rxscan299_done:
.annotate 'line', 99
  # rx subcapture "sym"
    set_addr $I10, rxcap_301_fail
    rx296_cur."!mark_push"(0, rx296_pos, $I10)
  alt300_0:
    set_addr $I10, alt300_1
    rx296_cur."!mark_push"(0, rx296_pos, $I10)
  # rx literal  ">>"
    add $I11, rx296_pos, 2
    gt $I11, rx296_eos, rx296_fail
    sub $I11, rx296_pos, rx296_off
    substr $S10, rx296_tgt, $I11, 2
    ne $S10, ">>", rx296_fail
    add rx296_pos, 2
    goto alt300_end
  alt300_1:
  # rx literal  unicode:"\x{bb}"
    add $I11, rx296_pos, 1
    gt $I11, rx296_eos, rx296_fail
    sub $I11, rx296_pos, rx296_off
    ord $I11, rx296_tgt, $I11
    ne $I11, 187, rx296_fail
    add rx296_pos, 1
  alt300_end:
    set_addr $I10, rxcap_301_fail
    ($I12, $I11) = rx296_cur."!mark_peek"($I10)
    rx296_cur."!cursor_pos"($I11)
    ($P10) = rx296_cur."!cursor_start"()
    $P10."!cursor_pass"(rx296_pos, "")
    rx296_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_301_done
  rxcap_301_fail:
    goto rx296_fail
  rxcap_301_done:
  # rx pass
    rx296_cur."!cursor_pass"(rx296_pos, "metachar:sym<rwb>")
    if_null rx296_debug, debug_326
    rx296_cur."!cursor_debug"("PASS", "metachar:sym<rwb>", " at pos=", rx296_pos)
  debug_326:
    .return (rx296_cur)
  rx296_restart:
.annotate 'line', 3
    if_null rx296_debug, debug_327
    rx296_cur."!cursor_debug"("NEXT", "metachar:sym<rwb>")
  debug_327:
  rx296_fail:
    (rx296_rep, rx296_pos, $I10, $P10) = rx296_cur."!mark_fail"(0)
    lt rx296_pos, -1, rx296_done
    eq rx296_pos, -1, rx296_fail
    jump $I10
  rx296_done:
    rx296_cur."!cursor_fail"()
    if_null rx296_debug, debug_328
    rx296_cur."!cursor_debug"("FAIL", "metachar:sym<rwb>")
  debug_328:
    .return (rx296_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<rwb>"  :subid("86_1295142316.828") :method
.annotate 'line', 3
    new $P298, "ResizablePMCArray"
    push $P298, unicode:"\x{bb}"
    push $P298, ">>"
    .return ($P298)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<bs>"  :subid("87_1295142316.828") :method :outer("11_1295142316.828")
.annotate 'line', 3
    .local string rx303_tgt
    .local int rx303_pos
    .local int rx303_off
    .local int rx303_eos
    .local int rx303_rep
    .local pmc rx303_cur
    .local pmc rx303_debug
    (rx303_cur, rx303_pos, rx303_tgt, $I10) = self."!cursor_start"()
    getattribute rx303_debug, rx303_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx303_cur
    .local pmc match
    .lex "$/", match
    length rx303_eos, rx303_tgt
    gt rx303_pos, rx303_eos, rx303_done
    set rx303_off, 0
    lt rx303_pos, 2, rx303_start
    sub rx303_off, rx303_pos, 1
    substr rx303_tgt, rx303_tgt, rx303_off
  rx303_start:
    eq $I10, 1, rx303_restart
    if_null rx303_debug, debug_329
    rx303_cur."!cursor_debug"("START", "metachar:sym<bs>")
  debug_329:
    $I10 = self.'from'()
    ne $I10, -1, rxscan307_done
    goto rxscan307_scan
  rxscan307_loop:
    ($P10) = rx303_cur."from"()
    inc $P10
    set rx303_pos, $P10
    ge rx303_pos, rx303_eos, rxscan307_done
  rxscan307_scan:
    set_addr $I10, rxscan307_loop
    rx303_cur."!mark_push"(0, rx303_pos, $I10)
  rxscan307_done:
.annotate 'line', 100
  # rx literal  "\\"
    add $I11, rx303_pos, 1
    gt $I11, rx303_eos, rx303_fail
    sub $I11, rx303_pos, rx303_off
    ord $I11, rx303_tgt, $I11
    ne $I11, 92, rx303_fail
    add rx303_pos, 1
  # rx subrule "backslash" subtype=capture negate=
    rx303_cur."!cursor_pos"(rx303_pos)
    $P10 = rx303_cur."backslash"()
    unless $P10, rx303_fail
    rx303_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("backslash")
    rx303_pos = $P10."pos"()
  # rx pass
    rx303_cur."!cursor_pass"(rx303_pos, "metachar:sym<bs>")
    if_null rx303_debug, debug_330
    rx303_cur."!cursor_debug"("PASS", "metachar:sym<bs>", " at pos=", rx303_pos)
  debug_330:
    .return (rx303_cur)
  rx303_restart:
.annotate 'line', 3
    if_null rx303_debug, debug_331
    rx303_cur."!cursor_debug"("NEXT", "metachar:sym<bs>")
  debug_331:
  rx303_fail:
    (rx303_rep, rx303_pos, $I10, $P10) = rx303_cur."!mark_fail"(0)
    lt rx303_pos, -1, rx303_done
    eq rx303_pos, -1, rx303_fail
    jump $I10
  rx303_done:
    rx303_cur."!cursor_fail"()
    if_null rx303_debug, debug_332
    rx303_cur."!cursor_debug"("FAIL", "metachar:sym<bs>")
  debug_332:
    .return (rx303_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<bs>"  :subid("88_1295142316.828") :method
.annotate 'line', 3
    $P305 = self."!PREFIX__!subrule"("backslash", "\\")
    new $P306, "ResizablePMCArray"
    push $P306, $P305
    .return ($P306)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<mod>"  :subid("89_1295142316.828") :method :outer("11_1295142316.828")
.annotate 'line', 3
    .local string rx309_tgt
    .local int rx309_pos
    .local int rx309_off
    .local int rx309_eos
    .local int rx309_rep
    .local pmc rx309_cur
    .local pmc rx309_debug
    (rx309_cur, rx309_pos, rx309_tgt, $I10) = self."!cursor_start"()
    getattribute rx309_debug, rx309_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx309_cur
    .local pmc match
    .lex "$/", match
    length rx309_eos, rx309_tgt
    gt rx309_pos, rx309_eos, rx309_done
    set rx309_off, 0
    lt rx309_pos, 2, rx309_start
    sub rx309_off, rx309_pos, 1
    substr rx309_tgt, rx309_tgt, rx309_off
  rx309_start:
    eq $I10, 1, rx309_restart
    if_null rx309_debug, debug_333
    rx309_cur."!cursor_debug"("START", "metachar:sym<mod>")
  debug_333:
    $I10 = self.'from'()
    ne $I10, -1, rxscan313_done
    goto rxscan313_scan
  rxscan313_loop:
    ($P10) = rx309_cur."from"()
    inc $P10
    set rx309_pos, $P10
    ge rx309_pos, rx309_eos, rxscan313_done
  rxscan313_scan:
    set_addr $I10, rxscan313_loop
    rx309_cur."!mark_push"(0, rx309_pos, $I10)
  rxscan313_done:
.annotate 'line', 101
  # rx subrule "mod_internal" subtype=capture negate=
    rx309_cur."!cursor_pos"(rx309_pos)
    $P10 = rx309_cur."mod_internal"()
    unless $P10, rx309_fail
    rx309_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_internal")
    rx309_pos = $P10."pos"()
  # rx pass
    rx309_cur."!cursor_pass"(rx309_pos, "metachar:sym<mod>")
    if_null rx309_debug, debug_334
    rx309_cur."!cursor_debug"("PASS", "metachar:sym<mod>", " at pos=", rx309_pos)
  debug_334:
    .return (rx309_cur)
  rx309_restart:
.annotate 'line', 3
    if_null rx309_debug, debug_335
    rx309_cur."!cursor_debug"("NEXT", "metachar:sym<mod>")
  debug_335:
  rx309_fail:
    (rx309_rep, rx309_pos, $I10, $P10) = rx309_cur."!mark_fail"(0)
    lt rx309_pos, -1, rx309_done
    eq rx309_pos, -1, rx309_fail
    jump $I10
  rx309_done:
    rx309_cur."!cursor_fail"()
    if_null rx309_debug, debug_336
    rx309_cur."!cursor_debug"("FAIL", "metachar:sym<mod>")
  debug_336:
    .return (rx309_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<mod>"  :subid("90_1295142316.828") :method
.annotate 'line', 3
    $P311 = self."!PREFIX__!subrule"("mod_internal", "")
    new $P312, "ResizablePMCArray"
    push $P312, $P311
    .return ($P312)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<quantifier>"  :subid("91_1295142316.828") :method :outer("11_1295142316.828")
.annotate 'line', 3
    .local string rx315_tgt
    .local int rx315_pos
    .local int rx315_off
    .local int rx315_eos
    .local int rx315_rep
    .local pmc rx315_cur
    .local pmc rx315_debug
    (rx315_cur, rx315_pos, rx315_tgt, $I10) = self."!cursor_start"()
    getattribute rx315_debug, rx315_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx315_cur
    .local pmc match
    .lex "$/", match
    length rx315_eos, rx315_tgt
    gt rx315_pos, rx315_eos, rx315_done
    set rx315_off, 0
    lt rx315_pos, 2, rx315_start
    sub rx315_off, rx315_pos, 1
    substr rx315_tgt, rx315_tgt, rx315_off
  rx315_start:
    eq $I10, 1, rx315_restart
    if_null rx315_debug, debug_337
    rx315_cur."!cursor_debug"("START", "metachar:sym<quantifier>")
  debug_337:
    $I10 = self.'from'()
    ne $I10, -1, rxscan319_done
    goto rxscan319_scan
  rxscan319_loop:
    ($P10) = rx315_cur."from"()
    inc $P10
    set rx315_pos, $P10
    ge rx315_pos, rx315_eos, rxscan319_done
  rxscan319_scan:
    set_addr $I10, rxscan319_loop
    rx315_cur."!mark_push"(0, rx315_pos, $I10)
  rxscan319_done:
.annotate 'line', 103
  # rx subrule "quantifier" subtype=capture negate=
    rx315_cur."!cursor_pos"(rx315_pos)
    $P10 = rx315_cur."quantifier"()
    unless $P10, rx315_fail
    rx315_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantifier")
    rx315_pos = $P10."pos"()
  # rx subrule "panic" subtype=method negate=
    rx315_cur."!cursor_pos"(rx315_pos)
    $P10 = rx315_cur."panic"("Quantifier quantifies nothing")
    unless $P10, rx315_fail
    rx315_pos = $P10."pos"()
.annotate 'line', 102
  # rx pass
    rx315_cur."!cursor_pass"(rx315_pos, "metachar:sym<quantifier>")
    if_null rx315_debug, debug_338
    rx315_cur."!cursor_debug"("PASS", "metachar:sym<quantifier>", " at pos=", rx315_pos)
  debug_338:
    .return (rx315_cur)
  rx315_restart:
.annotate 'line', 3
    if_null rx315_debug, debug_339
    rx315_cur."!cursor_debug"("NEXT", "metachar:sym<quantifier>")
  debug_339:
  rx315_fail:
    (rx315_rep, rx315_pos, $I10, $P10) = rx315_cur."!mark_fail"(0)
    lt rx315_pos, -1, rx315_done
    eq rx315_pos, -1, rx315_fail
    jump $I10
  rx315_done:
    rx315_cur."!cursor_fail"()
    if_null rx315_debug, debug_340
    rx315_cur."!cursor_debug"("FAIL", "metachar:sym<quantifier>")
  debug_340:
    .return (rx315_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<quantifier>"  :subid("92_1295142316.828") :method
.annotate 'line', 3
    $P317 = self."!PREFIX__!subrule"("quantifier", "")
    new $P318, "ResizablePMCArray"
    push $P318, $P317
    .return ($P318)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<~>"  :subid("93_1295142316.828") :method :outer("11_1295142316.828")
.annotate 'line', 3
    .local string rx321_tgt
    .local int rx321_pos
    .local int rx321_off
    .local int rx321_eos
    .local int rx321_rep
    .local pmc rx321_cur
    .local pmc rx321_debug
    (rx321_cur, rx321_pos, rx321_tgt, $I10) = self."!cursor_start"()
    getattribute rx321_debug, rx321_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx321_cur
    .local pmc match
    .lex "$/", match
    length rx321_eos, rx321_tgt
    gt rx321_pos, rx321_eos, rx321_done
    set rx321_off, 0
    lt rx321_pos, 2, rx321_start
    sub rx321_off, rx321_pos, 1
    substr rx321_tgt, rx321_tgt, rx321_off
  rx321_start:
    eq $I10, 1, rx321_restart
    if_null rx321_debug, debug_341
    rx321_cur."!cursor_debug"("START", "metachar:sym<~>")
  debug_341:
    $I10 = self.'from'()
    ne $I10, -1, rxscan325_done
    goto rxscan325_scan
  rxscan325_loop:
    ($P10) = rx321_cur."from"()
    inc $P10
    set rx321_pos, $P10
    ge rx321_pos, rx321_eos, rxscan325_done
  rxscan325_scan:
    set_addr $I10, rxscan325_loop
    rx321_cur."!mark_push"(0, rx321_pos, $I10)
  rxscan325_done:
.annotate 'line', 108
  # rx subcapture "sym"
    set_addr $I10, rxcap_326_fail
    rx321_cur."!mark_push"(0, rx321_pos, $I10)
  # rx literal  "~"
    add $I11, rx321_pos, 1
    gt $I11, rx321_eos, rx321_fail
    sub $I11, rx321_pos, rx321_off
    ord $I11, rx321_tgt, $I11
    ne $I11, 126, rx321_fail
    add rx321_pos, 1
    set_addr $I10, rxcap_326_fail
    ($I12, $I11) = rx321_cur."!mark_peek"($I10)
    rx321_cur."!cursor_pos"($I11)
    ($P10) = rx321_cur."!cursor_start"()
    $P10."!cursor_pass"(rx321_pos, "")
    rx321_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_326_done
  rxcap_326_fail:
    goto rx321_fail
  rxcap_326_done:
.annotate 'line', 109
  # rx subrule "ws" subtype=method negate=
    rx321_cur."!cursor_pos"(rx321_pos)
    $P10 = rx321_cur."ws"()
    unless $P10, rx321_fail
    rx321_pos = $P10."pos"()
  # rx subrule "quantified_atom" subtype=capture negate=
    rx321_cur."!cursor_pos"(rx321_pos)
    $P10 = rx321_cur."quantified_atom"()
    unless $P10, rx321_fail
    rx321_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("GOAL")
    rx321_pos = $P10."pos"()
.annotate 'line', 110
  # rx subrule "ws" subtype=method negate=
    rx321_cur."!cursor_pos"(rx321_pos)
    $P10 = rx321_cur."ws"()
    unless $P10, rx321_fail
    rx321_pos = $P10."pos"()
  # rx subrule "quantified_atom" subtype=capture negate=
    rx321_cur."!cursor_pos"(rx321_pos)
    $P10 = rx321_cur."quantified_atom"()
    unless $P10, rx321_fail
    rx321_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("EXPR")
    rx321_pos = $P10."pos"()
.annotate 'line', 107
  # rx pass
    rx321_cur."!cursor_pass"(rx321_pos, "metachar:sym<~>")
    if_null rx321_debug, debug_342
    rx321_cur."!cursor_debug"("PASS", "metachar:sym<~>", " at pos=", rx321_pos)
  debug_342:
    .return (rx321_cur)
  rx321_restart:
.annotate 'line', 3
    if_null rx321_debug, debug_343
    rx321_cur."!cursor_debug"("NEXT", "metachar:sym<~>")
  debug_343:
  rx321_fail:
    (rx321_rep, rx321_pos, $I10, $P10) = rx321_cur."!mark_fail"(0)
    lt rx321_pos, -1, rx321_done
    eq rx321_pos, -1, rx321_fail
    jump $I10
  rx321_done:
    rx321_cur."!cursor_fail"()
    if_null rx321_debug, debug_344
    rx321_cur."!cursor_debug"("FAIL", "metachar:sym<~>")
  debug_344:
    .return (rx321_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<~>"  :subid("94_1295142316.828") :method
.annotate 'line', 3
    $P323 = self."!PREFIX__!subrule"("ws", "~")
    new $P324, "ResizablePMCArray"
    push $P324, $P323
    .return ($P324)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<{*}>"  :subid("95_1295142316.828") :method :outer("11_1295142316.828")
.annotate 'line', 3
    .local string rx328_tgt
    .local int rx328_pos
    .local int rx328_off
    .local int rx328_eos
    .local int rx328_rep
    .local pmc rx328_cur
    .local pmc rx328_debug
    (rx328_cur, rx328_pos, rx328_tgt, $I10) = self."!cursor_start"()
    rx328_cur."!cursor_caparray"("key")
    getattribute rx328_debug, rx328_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx328_cur
    .local pmc match
    .lex "$/", match
    length rx328_eos, rx328_tgt
    gt rx328_pos, rx328_eos, rx328_done
    set rx328_off, 0
    lt rx328_pos, 2, rx328_start
    sub rx328_off, rx328_pos, 1
    substr rx328_tgt, rx328_tgt, rx328_off
  rx328_start:
    eq $I10, 1, rx328_restart
    if_null rx328_debug, debug_345
    rx328_cur."!cursor_debug"("START", "metachar:sym<{*}>")
  debug_345:
    $I10 = self.'from'()
    ne $I10, -1, rxscan331_done
    goto rxscan331_scan
  rxscan331_loop:
    ($P10) = rx328_cur."from"()
    inc $P10
    set rx328_pos, $P10
    ge rx328_pos, rx328_eos, rxscan331_done
  rxscan331_scan:
    set_addr $I10, rxscan331_loop
    rx328_cur."!mark_push"(0, rx328_pos, $I10)
  rxscan331_done:
.annotate 'line', 114
  # rx subcapture "sym"
    set_addr $I10, rxcap_332_fail
    rx328_cur."!mark_push"(0, rx328_pos, $I10)
  # rx literal  "{*}"
    add $I11, rx328_pos, 3
    gt $I11, rx328_eos, rx328_fail
    sub $I11, rx328_pos, rx328_off
    substr $S10, rx328_tgt, $I11, 3
    ne $S10, "{*}", rx328_fail
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
.annotate 'line', 115
  # rx rxquantr333 ** 0..1
    set_addr $I10, rxquantr333_done
    rx328_cur."!mark_push"(0, rx328_pos, $I10)
  rxquantr333_loop:
  # rx enumcharlist_q negate=0  r 0..-1
    sub $I10, rx328_pos, rx328_off
    set rx328_rep, 0
    sub $I12, rx328_eos, rx328_pos
  rxenumcharlistq334_loop:
    le $I12, 0, rxenumcharlistq334_done
    substr $S10, rx328_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq334_done
    inc rx328_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq334_loop
  rxenumcharlistq334_done:
    add rx328_pos, rx328_pos, rx328_rep
  # rx literal  "#= "
    add $I11, rx328_pos, 3
    gt $I11, rx328_eos, rx328_fail
    sub $I11, rx328_pos, rx328_off
    substr $S10, rx328_tgt, $I11, 3
    ne $S10, "#= ", rx328_fail
    add rx328_pos, 3
  # rx enumcharlist_q negate=0  r 0..-1
    sub $I10, rx328_pos, rx328_off
    set rx328_rep, 0
    sub $I12, rx328_eos, rx328_pos
  rxenumcharlistq335_loop:
    le $I12, 0, rxenumcharlistq335_done
    substr $S10, rx328_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq335_done
    inc rx328_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq335_loop
  rxenumcharlistq335_done:
    add rx328_pos, rx328_pos, rx328_rep
  # rx subcapture "key"
    set_addr $I10, rxcap_338_fail
    rx328_cur."!mark_push"(0, rx328_pos, $I10)
  # rx charclass_q S r 1..-1
    sub $I10, rx328_pos, rx328_off
    find_cclass $I11, 32, rx328_tgt, $I10, rx328_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx328_fail
    add rx328_pos, rx328_off, $I11
  # rx rxquantr336 ** 0..*
    set_addr $I10, rxquantr336_done
    rx328_cur."!mark_push"(0, rx328_pos, $I10)
  rxquantr336_loop:
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx328_pos, rx328_off
    set rx328_rep, 0
    sub $I12, rx328_eos, rx328_pos
  rxenumcharlistq337_loop:
    le $I12, 0, rxenumcharlistq337_done
    substr $S10, rx328_tgt, $I10, 1
    index $I11, unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", $S10
    lt $I11, 0, rxenumcharlistq337_done
    inc rx328_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq337_loop
  rxenumcharlistq337_done:
    lt rx328_rep, 1, rx328_fail
    add rx328_pos, rx328_pos, rx328_rep
  # rx charclass_q S r 1..-1
    sub $I10, rx328_pos, rx328_off
    find_cclass $I11, 32, rx328_tgt, $I10, rx328_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx328_fail
    add rx328_pos, rx328_off, $I11
    set_addr $I10, rxquantr336_done
    (rx328_rep) = rx328_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr336_done
    rx328_cur."!mark_push"(rx328_rep, rx328_pos, $I10)
    goto rxquantr336_loop
  rxquantr336_done:
    set_addr $I10, rxcap_338_fail
    ($I12, $I11) = rx328_cur."!mark_peek"($I10)
    rx328_cur."!cursor_pos"($I11)
    ($P10) = rx328_cur."!cursor_start"()
    $P10."!cursor_pass"(rx328_pos, "")
    rx328_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("key")
    goto rxcap_338_done
  rxcap_338_fail:
    goto rx328_fail
  rxcap_338_done:
    set_addr $I10, rxquantr333_done
    (rx328_rep) = rx328_cur."!mark_commit"($I10)
  rxquantr333_done:
.annotate 'line', 113
  # rx pass
    rx328_cur."!cursor_pass"(rx328_pos, "metachar:sym<{*}>")
    if_null rx328_debug, debug_346
    rx328_cur."!cursor_debug"("PASS", "metachar:sym<{*}>", " at pos=", rx328_pos)
  debug_346:
    .return (rx328_cur)
  rx328_restart:
.annotate 'line', 3
    if_null rx328_debug, debug_347
    rx328_cur."!cursor_debug"("NEXT", "metachar:sym<{*}>")
  debug_347:
  rx328_fail:
    (rx328_rep, rx328_pos, $I10, $P10) = rx328_cur."!mark_fail"(0)
    lt rx328_pos, -1, rx328_done
    eq rx328_pos, -1, rx328_fail
    jump $I10
  rx328_done:
    rx328_cur."!cursor_fail"()
    if_null rx328_debug, debug_348
    rx328_cur."!cursor_debug"("FAIL", "metachar:sym<{*}>")
  debug_348:
    .return (rx328_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<{*}>"  :subid("96_1295142316.828") :method
.annotate 'line', 3
    new $P330, "ResizablePMCArray"
    push $P330, "{*}"
    .return ($P330)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<assert>"  :subid("97_1295142316.828") :method :outer("11_1295142316.828")
.annotate 'line', 3
    .local string rx340_tgt
    .local int rx340_pos
    .local int rx340_off
    .local int rx340_eos
    .local int rx340_rep
    .local pmc rx340_cur
    .local pmc rx340_debug
    (rx340_cur, rx340_pos, rx340_tgt, $I10) = self."!cursor_start"()
    getattribute rx340_debug, rx340_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx340_cur
    .local pmc match
    .lex "$/", match
    length rx340_eos, rx340_tgt
    gt rx340_pos, rx340_eos, rx340_done
    set rx340_off, 0
    lt rx340_pos, 2, rx340_start
    sub rx340_off, rx340_pos, 1
    substr rx340_tgt, rx340_tgt, rx340_off
  rx340_start:
    eq $I10, 1, rx340_restart
    if_null rx340_debug, debug_349
    rx340_cur."!cursor_debug"("START", "metachar:sym<assert>")
  debug_349:
    $I10 = self.'from'()
    ne $I10, -1, rxscan344_done
    goto rxscan344_scan
  rxscan344_loop:
    ($P10) = rx340_cur."from"()
    inc $P10
    set rx340_pos, $P10
    ge rx340_pos, rx340_eos, rxscan344_done
  rxscan344_scan:
    set_addr $I10, rxscan344_loop
    rx340_cur."!mark_push"(0, rx340_pos, $I10)
  rxscan344_done:
.annotate 'line', 118
  # rx literal  "<"
    add $I11, rx340_pos, 1
    gt $I11, rx340_eos, rx340_fail
    sub $I11, rx340_pos, rx340_off
    ord $I11, rx340_tgt, $I11
    ne $I11, 60, rx340_fail
    add rx340_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx340_cur."!cursor_pos"(rx340_pos)
    $P10 = rx340_cur."assertion"()
    unless $P10, rx340_fail
    rx340_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx340_pos = $P10."pos"()
  alt345_0:
.annotate 'line', 119
    set_addr $I10, alt345_1
    rx340_cur."!mark_push"(0, rx340_pos, $I10)
  # rx literal  ">"
    add $I11, rx340_pos, 1
    gt $I11, rx340_eos, rx340_fail
    sub $I11, rx340_pos, rx340_off
    ord $I11, rx340_tgt, $I11
    ne $I11, 62, rx340_fail
    add rx340_pos, 1
    goto alt345_end
  alt345_1:
  # rx subrule "panic" subtype=method negate=
    rx340_cur."!cursor_pos"(rx340_pos)
    $P10 = rx340_cur."panic"("regex assertion not terminated by angle bracket")
    unless $P10, rx340_fail
    rx340_pos = $P10."pos"()
  alt345_end:
.annotate 'line', 117
  # rx pass
    rx340_cur."!cursor_pass"(rx340_pos, "metachar:sym<assert>")
    if_null rx340_debug, debug_350
    rx340_cur."!cursor_debug"("PASS", "metachar:sym<assert>", " at pos=", rx340_pos)
  debug_350:
    .return (rx340_cur)
  rx340_restart:
.annotate 'line', 3
    if_null rx340_debug, debug_351
    rx340_cur."!cursor_debug"("NEXT", "metachar:sym<assert>")
  debug_351:
  rx340_fail:
    (rx340_rep, rx340_pos, $I10, $P10) = rx340_cur."!mark_fail"(0)
    lt rx340_pos, -1, rx340_done
    eq rx340_pos, -1, rx340_fail
    jump $I10
  rx340_done:
    rx340_cur."!cursor_fail"()
    if_null rx340_debug, debug_352
    rx340_cur."!cursor_debug"("FAIL", "metachar:sym<assert>")
  debug_352:
    .return (rx340_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<assert>"  :subid("98_1295142316.828") :method
.annotate 'line', 3
    $P342 = self."!PREFIX__!subrule"("assertion", "<")
    new $P343, "ResizablePMCArray"
    push $P343, $P342
    .return ($P343)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<var>"  :subid("99_1295142316.828") :method :outer("11_1295142316.828")
.annotate 'line', 3
    .local string rx347_tgt
    .local int rx347_pos
    .local int rx347_off
    .local int rx347_eos
    .local int rx347_rep
    .local pmc rx347_cur
    .local pmc rx347_debug
    (rx347_cur, rx347_pos, rx347_tgt, $I10) = self."!cursor_start"()
    rx347_cur."!cursor_caparray"("quantified_atom")
    getattribute rx347_debug, rx347_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx347_cur
    .local pmc match
    .lex "$/", match
    length rx347_eos, rx347_tgt
    gt rx347_pos, rx347_eos, rx347_done
    set rx347_off, 0
    lt rx347_pos, 2, rx347_start
    sub rx347_off, rx347_pos, 1
    substr rx347_tgt, rx347_tgt, rx347_off
  rx347_start:
    eq $I10, 1, rx347_restart
    if_null rx347_debug, debug_353
    rx347_cur."!cursor_debug"("START", "metachar:sym<var>")
  debug_353:
    $I10 = self.'from'()
    ne $I10, -1, rxscan350_done
    goto rxscan350_scan
  rxscan350_loop:
    ($P10) = rx347_cur."from"()
    inc $P10
    set rx347_pos, $P10
    ge rx347_pos, rx347_eos, rxscan350_done
  rxscan350_scan:
    set_addr $I10, rxscan350_loop
    rx347_cur."!mark_push"(0, rx347_pos, $I10)
  rxscan350_done:
  alt351_0:
.annotate 'line', 123
    set_addr $I10, alt351_1
    rx347_cur."!mark_push"(0, rx347_pos, $I10)
.annotate 'line', 124
  # rx literal  "$<"
    add $I11, rx347_pos, 2
    gt $I11, rx347_eos, rx347_fail
    sub $I11, rx347_pos, rx347_off
    substr $S10, rx347_tgt, $I11, 2
    ne $S10, "$<", rx347_fail
    add rx347_pos, 2
  # rx subcapture "name"
    set_addr $I10, rxcap_353_fail
    rx347_cur."!mark_push"(0, rx347_pos, $I10)
  # rx enumcharlist_q negate=1  r 1..-1
    sub $I10, rx347_pos, rx347_off
    set rx347_rep, 0
    sub $I12, rx347_eos, rx347_pos
  rxenumcharlistq352_loop:
    le $I12, 0, rxenumcharlistq352_done
    substr $S10, rx347_tgt, $I10, 1
    index $I11, ">", $S10
    ge $I11, 0, rxenumcharlistq352_done
    inc rx347_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq352_loop
  rxenumcharlistq352_done:
    lt rx347_rep, 1, rx347_fail
    add rx347_pos, rx347_pos, rx347_rep
    set_addr $I10, rxcap_353_fail
    ($I12, $I11) = rx347_cur."!mark_peek"($I10)
    rx347_cur."!cursor_pos"($I11)
    ($P10) = rx347_cur."!cursor_start"()
    $P10."!cursor_pass"(rx347_pos, "")
    rx347_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    goto rxcap_353_done
  rxcap_353_fail:
    goto rx347_fail
  rxcap_353_done:
  # rx literal  ">"
    add $I11, rx347_pos, 1
    gt $I11, rx347_eos, rx347_fail
    sub $I11, rx347_pos, rx347_off
    ord $I11, rx347_tgt, $I11
    ne $I11, 62, rx347_fail
    add rx347_pos, 1
    goto alt351_end
  alt351_1:
.annotate 'line', 125
  # rx literal  "$"
    add $I11, rx347_pos, 1
    gt $I11, rx347_eos, rx347_fail
    sub $I11, rx347_pos, rx347_off
    ord $I11, rx347_tgt, $I11
    ne $I11, 36, rx347_fail
    add rx347_pos, 1
  # rx subcapture "pos"
    set_addr $I10, rxcap_354_fail
    rx347_cur."!mark_push"(0, rx347_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx347_pos, rx347_off
    find_not_cclass $I11, 8, rx347_tgt, $I10, rx347_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx347_fail
    add rx347_pos, rx347_off, $I11
    set_addr $I10, rxcap_354_fail
    ($I12, $I11) = rx347_cur."!mark_peek"($I10)
    rx347_cur."!cursor_pos"($I11)
    ($P10) = rx347_cur."!cursor_start"()
    $P10."!cursor_pass"(rx347_pos, "")
    rx347_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pos")
    goto rxcap_354_done
  rxcap_354_fail:
    goto rx347_fail
  rxcap_354_done:
  alt351_end:
.annotate 'line', 128
  # rx rxquantr355 ** 0..1
    set_addr $I10, rxquantr355_done
    rx347_cur."!mark_push"(0, rx347_pos, $I10)
  rxquantr355_loop:
  # rx subrule "ws" subtype=method negate=
    rx347_cur."!cursor_pos"(rx347_pos)
    $P10 = rx347_cur."ws"()
    unless $P10, rx347_fail
    rx347_pos = $P10."pos"()
  # rx literal  "="
    add $I11, rx347_pos, 1
    gt $I11, rx347_eos, rx347_fail
    sub $I11, rx347_pos, rx347_off
    ord $I11, rx347_tgt, $I11
    ne $I11, 61, rx347_fail
    add rx347_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx347_cur."!cursor_pos"(rx347_pos)
    $P10 = rx347_cur."ws"()
    unless $P10, rx347_fail
    rx347_pos = $P10."pos"()
  # rx subrule "quantified_atom" subtype=capture negate=
    rx347_cur."!cursor_pos"(rx347_pos)
    $P10 = rx347_cur."quantified_atom"()
    unless $P10, rx347_fail
    rx347_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quantified_atom")
    rx347_pos = $P10."pos"()
    set_addr $I10, rxquantr355_done
    (rx347_rep) = rx347_cur."!mark_commit"($I10)
  rxquantr355_done:
.annotate 'line', 122
  # rx pass
    rx347_cur."!cursor_pass"(rx347_pos, "metachar:sym<var>")
    if_null rx347_debug, debug_354
    rx347_cur."!cursor_debug"("PASS", "metachar:sym<var>", " at pos=", rx347_pos)
  debug_354:
    .return (rx347_cur)
  rx347_restart:
.annotate 'line', 3
    if_null rx347_debug, debug_355
    rx347_cur."!cursor_debug"("NEXT", "metachar:sym<var>")
  debug_355:
  rx347_fail:
    (rx347_rep, rx347_pos, $I10, $P10) = rx347_cur."!mark_fail"(0)
    lt rx347_pos, -1, rx347_done
    eq rx347_pos, -1, rx347_fail
    jump $I10
  rx347_done:
    rx347_cur."!cursor_fail"()
    if_null rx347_debug, debug_356
    rx347_cur."!cursor_debug"("FAIL", "metachar:sym<var>")
  debug_356:
    .return (rx347_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<var>"  :subid("100_1295142316.828") :method
.annotate 'line', 3
    new $P349, "ResizablePMCArray"
    push $P349, "$"
    push $P349, "$<"
    .return ($P349)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "metachar:sym<PIR>"  :subid("101_1295142316.828") :method :outer("11_1295142316.828")
.annotate 'line', 3
    .local string rx357_tgt
    .local int rx357_pos
    .local int rx357_off
    .local int rx357_eos
    .local int rx357_rep
    .local pmc rx357_cur
    .local pmc rx357_debug
    (rx357_cur, rx357_pos, rx357_tgt, $I10) = self."!cursor_start"()
    getattribute rx357_debug, rx357_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx357_cur
    .local pmc match
    .lex "$/", match
    length rx357_eos, rx357_tgt
    gt rx357_pos, rx357_eos, rx357_done
    set rx357_off, 0
    lt rx357_pos, 2, rx357_start
    sub rx357_off, rx357_pos, 1
    substr rx357_tgt, rx357_tgt, rx357_off
  rx357_start:
    eq $I10, 1, rx357_restart
    if_null rx357_debug, debug_357
    rx357_cur."!cursor_debug"("START", "metachar:sym<PIR>")
  debug_357:
    $I10 = self.'from'()
    ne $I10, -1, rxscan360_done
    goto rxscan360_scan
  rxscan360_loop:
    ($P10) = rx357_cur."from"()
    inc $P10
    set rx357_pos, $P10
    ge rx357_pos, rx357_eos, rxscan360_done
  rxscan360_scan:
    set_addr $I10, rxscan360_loop
    rx357_cur."!mark_push"(0, rx357_pos, $I10)
  rxscan360_done:
.annotate 'line', 132
  # rx literal  ":PIR{{"
    add $I11, rx357_pos, 6
    gt $I11, rx357_eos, rx357_fail
    sub $I11, rx357_pos, rx357_off
    substr $S10, rx357_tgt, $I11, 6
    ne $S10, ":PIR{{", rx357_fail
    add rx357_pos, 6
  # rx subcapture "pir"
    set_addr $I10, rxcap_363_fail
    rx357_cur."!mark_push"(0, rx357_pos, $I10)
  # rx rxquantf361 ** 0..*
    set_addr $I10, rxquantf361_loop
    rx357_cur."!mark_push"(0, rx357_pos, $I10)
    goto rxquantf361_done
  rxquantf361_loop:
  # rx charclass .
    ge rx357_pos, rx357_eos, rx357_fail
    inc rx357_pos
    set_addr $I10, rxquantf361_loop
    rx357_cur."!mark_push"(rx357_rep, rx357_pos, $I10)
  rxquantf361_done:
    set_addr $I10, rxcap_363_fail
    ($I12, $I11) = rx357_cur."!mark_peek"($I10)
    rx357_cur."!cursor_pos"($I11)
    ($P10) = rx357_cur."!cursor_start"()
    $P10."!cursor_pass"(rx357_pos, "")
    rx357_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("pir")
    goto rxcap_363_done
  rxcap_363_fail:
    goto rx357_fail
  rxcap_363_done:
  # rx literal  "}}"
    add $I11, rx357_pos, 2
    gt $I11, rx357_eos, rx357_fail
    sub $I11, rx357_pos, rx357_off
    substr $S10, rx357_tgt, $I11, 2
    ne $S10, "}}", rx357_fail
    add rx357_pos, 2
.annotate 'line', 131
  # rx pass
    rx357_cur."!cursor_pass"(rx357_pos, "metachar:sym<PIR>")
    if_null rx357_debug, debug_358
    rx357_cur."!cursor_debug"("PASS", "metachar:sym<PIR>", " at pos=", rx357_pos)
  debug_358:
    .return (rx357_cur)
  rx357_restart:
.annotate 'line', 3
    if_null rx357_debug, debug_359
    rx357_cur."!cursor_debug"("NEXT", "metachar:sym<PIR>")
  debug_359:
  rx357_fail:
    (rx357_rep, rx357_pos, $I10, $P10) = rx357_cur."!mark_fail"(0)
    lt rx357_pos, -1, rx357_done
    eq rx357_pos, -1, rx357_fail
    jump $I10
  rx357_done:
    rx357_cur."!cursor_fail"()
    if_null rx357_debug, debug_360
    rx357_cur."!cursor_debug"("FAIL", "metachar:sym<PIR>")
  debug_360:
    .return (rx357_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__metachar:sym<PIR>"  :subid("102_1295142316.828") :method
.annotate 'line', 3
    new $P359, "ResizablePMCArray"
    push $P359, ":PIR{{"
    .return ($P359)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash"  :subid("103_1295142316.828") :method
.annotate 'line', 135
    $P365 = self."!protoregex"("backslash")
    .return ($P365)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash"  :subid("104_1295142316.828") :method
.annotate 'line', 135
    $P367 = self."!PREFIX__!protoregex"("backslash")
    .return ($P367)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<w>"  :subid("105_1295142316.828") :method :outer("11_1295142316.828")
.annotate 'line', 3
    .local string rx369_tgt
    .local int rx369_pos
    .local int rx369_off
    .local int rx369_eos
    .local int rx369_rep
    .local pmc rx369_cur
    .local pmc rx369_debug
    (rx369_cur, rx369_pos, rx369_tgt, $I10) = self."!cursor_start"()
    getattribute rx369_debug, rx369_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx369_cur
    .local pmc match
    .lex "$/", match
    length rx369_eos, rx369_tgt
    gt rx369_pos, rx369_eos, rx369_done
    set rx369_off, 0
    lt rx369_pos, 2, rx369_start
    sub rx369_off, rx369_pos, 1
    substr rx369_tgt, rx369_tgt, rx369_off
  rx369_start:
    eq $I10, 1, rx369_restart
    if_null rx369_debug, debug_361
    rx369_cur."!cursor_debug"("START", "backslash:sym<w>")
  debug_361:
    $I10 = self.'from'()
    ne $I10, -1, rxscan372_done
    goto rxscan372_scan
  rxscan372_loop:
    ($P10) = rx369_cur."from"()
    inc $P10
    set rx369_pos, $P10
    ge rx369_pos, rx369_eos, rxscan372_done
  rxscan372_scan:
    set_addr $I10, rxscan372_loop
    rx369_cur."!mark_push"(0, rx369_pos, $I10)
  rxscan372_done:
.annotate 'line', 136
  # rx subcapture "sym"
    set_addr $I10, rxcap_373_fail
    rx369_cur."!mark_push"(0, rx369_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx369_pos, rx369_eos, rx369_fail
    sub $I10, rx369_pos, rx369_off
    substr $S10, rx369_tgt, $I10, 1
    index $I11, "dswnDSWN", $S10
    lt $I11, 0, rx369_fail
    inc rx369_pos
    set_addr $I10, rxcap_373_fail
    ($I12, $I11) = rx369_cur."!mark_peek"($I10)
    rx369_cur."!cursor_pos"($I11)
    ($P10) = rx369_cur."!cursor_start"()
    $P10."!cursor_pass"(rx369_pos, "")
    rx369_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_373_done
  rxcap_373_fail:
    goto rx369_fail
  rxcap_373_done:
  # rx pass
    rx369_cur."!cursor_pass"(rx369_pos, "backslash:sym<w>")
    if_null rx369_debug, debug_362
    rx369_cur."!cursor_debug"("PASS", "backslash:sym<w>", " at pos=", rx369_pos)
  debug_362:
    .return (rx369_cur)
  rx369_restart:
.annotate 'line', 3
    if_null rx369_debug, debug_363
    rx369_cur."!cursor_debug"("NEXT", "backslash:sym<w>")
  debug_363:
  rx369_fail:
    (rx369_rep, rx369_pos, $I10, $P10) = rx369_cur."!mark_fail"(0)
    lt rx369_pos, -1, rx369_done
    eq rx369_pos, -1, rx369_fail
    jump $I10
  rx369_done:
    rx369_cur."!cursor_fail"()
    if_null rx369_debug, debug_364
    rx369_cur."!cursor_debug"("FAIL", "backslash:sym<w>")
  debug_364:
    .return (rx369_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<w>"  :subid("106_1295142316.828") :method
.annotate 'line', 3
    new $P371, "ResizablePMCArray"
    push $P371, "N"
    push $P371, "W"
    push $P371, "S"
    push $P371, "D"
    push $P371, "n"
    push $P371, "w"
    push $P371, "s"
    push $P371, "d"
    .return ($P371)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<b>"  :subid("107_1295142316.828") :method :outer("11_1295142316.828")
.annotate 'line', 3
    .local string rx375_tgt
    .local int rx375_pos
    .local int rx375_off
    .local int rx375_eos
    .local int rx375_rep
    .local pmc rx375_cur
    .local pmc rx375_debug
    (rx375_cur, rx375_pos, rx375_tgt, $I10) = self."!cursor_start"()
    getattribute rx375_debug, rx375_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx375_cur
    .local pmc match
    .lex "$/", match
    length rx375_eos, rx375_tgt
    gt rx375_pos, rx375_eos, rx375_done
    set rx375_off, 0
    lt rx375_pos, 2, rx375_start
    sub rx375_off, rx375_pos, 1
    substr rx375_tgt, rx375_tgt, rx375_off
  rx375_start:
    eq $I10, 1, rx375_restart
    if_null rx375_debug, debug_365
    rx375_cur."!cursor_debug"("START", "backslash:sym<b>")
  debug_365:
    $I10 = self.'from'()
    ne $I10, -1, rxscan378_done
    goto rxscan378_scan
  rxscan378_loop:
    ($P10) = rx375_cur."from"()
    inc $P10
    set rx375_pos, $P10
    ge rx375_pos, rx375_eos, rxscan378_done
  rxscan378_scan:
    set_addr $I10, rxscan378_loop
    rx375_cur."!mark_push"(0, rx375_pos, $I10)
  rxscan378_done:
.annotate 'line', 137
  # rx subcapture "sym"
    set_addr $I10, rxcap_379_fail
    rx375_cur."!mark_push"(0, rx375_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx375_pos, rx375_eos, rx375_fail
    sub $I10, rx375_pos, rx375_off
    substr $S10, rx375_tgt, $I10, 1
    index $I11, "bB", $S10
    lt $I11, 0, rx375_fail
    inc rx375_pos
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
  # rx pass
    rx375_cur."!cursor_pass"(rx375_pos, "backslash:sym<b>")
    if_null rx375_debug, debug_366
    rx375_cur."!cursor_debug"("PASS", "backslash:sym<b>", " at pos=", rx375_pos)
  debug_366:
    .return (rx375_cur)
  rx375_restart:
.annotate 'line', 3
    if_null rx375_debug, debug_367
    rx375_cur."!cursor_debug"("NEXT", "backslash:sym<b>")
  debug_367:
  rx375_fail:
    (rx375_rep, rx375_pos, $I10, $P10) = rx375_cur."!mark_fail"(0)
    lt rx375_pos, -1, rx375_done
    eq rx375_pos, -1, rx375_fail
    jump $I10
  rx375_done:
    rx375_cur."!cursor_fail"()
    if_null rx375_debug, debug_368
    rx375_cur."!cursor_debug"("FAIL", "backslash:sym<b>")
  debug_368:
    .return (rx375_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<b>"  :subid("108_1295142316.828") :method
.annotate 'line', 3
    new $P377, "ResizablePMCArray"
    push $P377, "B"
    push $P377, "b"
    .return ($P377)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<e>"  :subid("109_1295142316.828") :method :outer("11_1295142316.828")
.annotate 'line', 3
    .local string rx381_tgt
    .local int rx381_pos
    .local int rx381_off
    .local int rx381_eos
    .local int rx381_rep
    .local pmc rx381_cur
    .local pmc rx381_debug
    (rx381_cur, rx381_pos, rx381_tgt, $I10) = self."!cursor_start"()
    getattribute rx381_debug, rx381_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx381_cur
    .local pmc match
    .lex "$/", match
    length rx381_eos, rx381_tgt
    gt rx381_pos, rx381_eos, rx381_done
    set rx381_off, 0
    lt rx381_pos, 2, rx381_start
    sub rx381_off, rx381_pos, 1
    substr rx381_tgt, rx381_tgt, rx381_off
  rx381_start:
    eq $I10, 1, rx381_restart
    if_null rx381_debug, debug_369
    rx381_cur."!cursor_debug"("START", "backslash:sym<e>")
  debug_369:
    $I10 = self.'from'()
    ne $I10, -1, rxscan384_done
    goto rxscan384_scan
  rxscan384_loop:
    ($P10) = rx381_cur."from"()
    inc $P10
    set rx381_pos, $P10
    ge rx381_pos, rx381_eos, rxscan384_done
  rxscan384_scan:
    set_addr $I10, rxscan384_loop
    rx381_cur."!mark_push"(0, rx381_pos, $I10)
  rxscan384_done:
.annotate 'line', 138
  # rx subcapture "sym"
    set_addr $I10, rxcap_385_fail
    rx381_cur."!mark_push"(0, rx381_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx381_pos, rx381_eos, rx381_fail
    sub $I10, rx381_pos, rx381_off
    substr $S10, rx381_tgt, $I10, 1
    index $I11, "eE", $S10
    lt $I11, 0, rx381_fail
    inc rx381_pos
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
  # rx pass
    rx381_cur."!cursor_pass"(rx381_pos, "backslash:sym<e>")
    if_null rx381_debug, debug_370
    rx381_cur."!cursor_debug"("PASS", "backslash:sym<e>", " at pos=", rx381_pos)
  debug_370:
    .return (rx381_cur)
  rx381_restart:
.annotate 'line', 3
    if_null rx381_debug, debug_371
    rx381_cur."!cursor_debug"("NEXT", "backslash:sym<e>")
  debug_371:
  rx381_fail:
    (rx381_rep, rx381_pos, $I10, $P10) = rx381_cur."!mark_fail"(0)
    lt rx381_pos, -1, rx381_done
    eq rx381_pos, -1, rx381_fail
    jump $I10
  rx381_done:
    rx381_cur."!cursor_fail"()
    if_null rx381_debug, debug_372
    rx381_cur."!cursor_debug"("FAIL", "backslash:sym<e>")
  debug_372:
    .return (rx381_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<e>"  :subid("110_1295142316.828") :method
.annotate 'line', 3
    new $P383, "ResizablePMCArray"
    push $P383, "E"
    push $P383, "e"
    .return ($P383)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<f>"  :subid("111_1295142316.828") :method :outer("11_1295142316.828")
.annotate 'line', 3
    .local string rx387_tgt
    .local int rx387_pos
    .local int rx387_off
    .local int rx387_eos
    .local int rx387_rep
    .local pmc rx387_cur
    .local pmc rx387_debug
    (rx387_cur, rx387_pos, rx387_tgt, $I10) = self."!cursor_start"()
    getattribute rx387_debug, rx387_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx387_cur
    .local pmc match
    .lex "$/", match
    length rx387_eos, rx387_tgt
    gt rx387_pos, rx387_eos, rx387_done
    set rx387_off, 0
    lt rx387_pos, 2, rx387_start
    sub rx387_off, rx387_pos, 1
    substr rx387_tgt, rx387_tgt, rx387_off
  rx387_start:
    eq $I10, 1, rx387_restart
    if_null rx387_debug, debug_373
    rx387_cur."!cursor_debug"("START", "backslash:sym<f>")
  debug_373:
    $I10 = self.'from'()
    ne $I10, -1, rxscan390_done
    goto rxscan390_scan
  rxscan390_loop:
    ($P10) = rx387_cur."from"()
    inc $P10
    set rx387_pos, $P10
    ge rx387_pos, rx387_eos, rxscan390_done
  rxscan390_scan:
    set_addr $I10, rxscan390_loop
    rx387_cur."!mark_push"(0, rx387_pos, $I10)
  rxscan390_done:
.annotate 'line', 139
  # rx subcapture "sym"
    set_addr $I10, rxcap_391_fail
    rx387_cur."!mark_push"(0, rx387_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx387_pos, rx387_eos, rx387_fail
    sub $I10, rx387_pos, rx387_off
    substr $S10, rx387_tgt, $I10, 1
    index $I11, "fF", $S10
    lt $I11, 0, rx387_fail
    inc rx387_pos
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
  # rx pass
    rx387_cur."!cursor_pass"(rx387_pos, "backslash:sym<f>")
    if_null rx387_debug, debug_374
    rx387_cur."!cursor_debug"("PASS", "backslash:sym<f>", " at pos=", rx387_pos)
  debug_374:
    .return (rx387_cur)
  rx387_restart:
.annotate 'line', 3
    if_null rx387_debug, debug_375
    rx387_cur."!cursor_debug"("NEXT", "backslash:sym<f>")
  debug_375:
  rx387_fail:
    (rx387_rep, rx387_pos, $I10, $P10) = rx387_cur."!mark_fail"(0)
    lt rx387_pos, -1, rx387_done
    eq rx387_pos, -1, rx387_fail
    jump $I10
  rx387_done:
    rx387_cur."!cursor_fail"()
    if_null rx387_debug, debug_376
    rx387_cur."!cursor_debug"("FAIL", "backslash:sym<f>")
  debug_376:
    .return (rx387_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<f>"  :subid("112_1295142316.828") :method
.annotate 'line', 3
    new $P389, "ResizablePMCArray"
    push $P389, "F"
    push $P389, "f"
    .return ($P389)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<h>"  :subid("113_1295142316.828") :method :outer("11_1295142316.828")
.annotate 'line', 3
    .local string rx393_tgt
    .local int rx393_pos
    .local int rx393_off
    .local int rx393_eos
    .local int rx393_rep
    .local pmc rx393_cur
    .local pmc rx393_debug
    (rx393_cur, rx393_pos, rx393_tgt, $I10) = self."!cursor_start"()
    getattribute rx393_debug, rx393_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx393_cur
    .local pmc match
    .lex "$/", match
    length rx393_eos, rx393_tgt
    gt rx393_pos, rx393_eos, rx393_done
    set rx393_off, 0
    lt rx393_pos, 2, rx393_start
    sub rx393_off, rx393_pos, 1
    substr rx393_tgt, rx393_tgt, rx393_off
  rx393_start:
    eq $I10, 1, rx393_restart
    if_null rx393_debug, debug_377
    rx393_cur."!cursor_debug"("START", "backslash:sym<h>")
  debug_377:
    $I10 = self.'from'()
    ne $I10, -1, rxscan396_done
    goto rxscan396_scan
  rxscan396_loop:
    ($P10) = rx393_cur."from"()
    inc $P10
    set rx393_pos, $P10
    ge rx393_pos, rx393_eos, rxscan396_done
  rxscan396_scan:
    set_addr $I10, rxscan396_loop
    rx393_cur."!mark_push"(0, rx393_pos, $I10)
  rxscan396_done:
.annotate 'line', 140
  # rx subcapture "sym"
    set_addr $I10, rxcap_397_fail
    rx393_cur."!mark_push"(0, rx393_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx393_pos, rx393_eos, rx393_fail
    sub $I10, rx393_pos, rx393_off
    substr $S10, rx393_tgt, $I10, 1
    index $I11, "hH", $S10
    lt $I11, 0, rx393_fail
    inc rx393_pos
    set_addr $I10, rxcap_397_fail
    ($I12, $I11) = rx393_cur."!mark_peek"($I10)
    rx393_cur."!cursor_pos"($I11)
    ($P10) = rx393_cur."!cursor_start"()
    $P10."!cursor_pass"(rx393_pos, "")
    rx393_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_397_done
  rxcap_397_fail:
    goto rx393_fail
  rxcap_397_done:
  # rx pass
    rx393_cur."!cursor_pass"(rx393_pos, "backslash:sym<h>")
    if_null rx393_debug, debug_378
    rx393_cur."!cursor_debug"("PASS", "backslash:sym<h>", " at pos=", rx393_pos)
  debug_378:
    .return (rx393_cur)
  rx393_restart:
.annotate 'line', 3
    if_null rx393_debug, debug_379
    rx393_cur."!cursor_debug"("NEXT", "backslash:sym<h>")
  debug_379:
  rx393_fail:
    (rx393_rep, rx393_pos, $I10, $P10) = rx393_cur."!mark_fail"(0)
    lt rx393_pos, -1, rx393_done
    eq rx393_pos, -1, rx393_fail
    jump $I10
  rx393_done:
    rx393_cur."!cursor_fail"()
    if_null rx393_debug, debug_380
    rx393_cur."!cursor_debug"("FAIL", "backslash:sym<h>")
  debug_380:
    .return (rx393_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<h>"  :subid("114_1295142316.828") :method
.annotate 'line', 3
    new $P395, "ResizablePMCArray"
    push $P395, "H"
    push $P395, "h"
    .return ($P395)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<r>"  :subid("115_1295142316.828") :method :outer("11_1295142316.828")
.annotate 'line', 3
    .local string rx399_tgt
    .local int rx399_pos
    .local int rx399_off
    .local int rx399_eos
    .local int rx399_rep
    .local pmc rx399_cur
    .local pmc rx399_debug
    (rx399_cur, rx399_pos, rx399_tgt, $I10) = self."!cursor_start"()
    getattribute rx399_debug, rx399_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx399_cur
    .local pmc match
    .lex "$/", match
    length rx399_eos, rx399_tgt
    gt rx399_pos, rx399_eos, rx399_done
    set rx399_off, 0
    lt rx399_pos, 2, rx399_start
    sub rx399_off, rx399_pos, 1
    substr rx399_tgt, rx399_tgt, rx399_off
  rx399_start:
    eq $I10, 1, rx399_restart
    if_null rx399_debug, debug_381
    rx399_cur."!cursor_debug"("START", "backslash:sym<r>")
  debug_381:
    $I10 = self.'from'()
    ne $I10, -1, rxscan402_done
    goto rxscan402_scan
  rxscan402_loop:
    ($P10) = rx399_cur."from"()
    inc $P10
    set rx399_pos, $P10
    ge rx399_pos, rx399_eos, rxscan402_done
  rxscan402_scan:
    set_addr $I10, rxscan402_loop
    rx399_cur."!mark_push"(0, rx399_pos, $I10)
  rxscan402_done:
.annotate 'line', 141
  # rx subcapture "sym"
    set_addr $I10, rxcap_403_fail
    rx399_cur."!mark_push"(0, rx399_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx399_pos, rx399_eos, rx399_fail
    sub $I10, rx399_pos, rx399_off
    substr $S10, rx399_tgt, $I10, 1
    index $I11, "rR", $S10
    lt $I11, 0, rx399_fail
    inc rx399_pos
    set_addr $I10, rxcap_403_fail
    ($I12, $I11) = rx399_cur."!mark_peek"($I10)
    rx399_cur."!cursor_pos"($I11)
    ($P10) = rx399_cur."!cursor_start"()
    $P10."!cursor_pass"(rx399_pos, "")
    rx399_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_403_done
  rxcap_403_fail:
    goto rx399_fail
  rxcap_403_done:
  # rx pass
    rx399_cur."!cursor_pass"(rx399_pos, "backslash:sym<r>")
    if_null rx399_debug, debug_382
    rx399_cur."!cursor_debug"("PASS", "backslash:sym<r>", " at pos=", rx399_pos)
  debug_382:
    .return (rx399_cur)
  rx399_restart:
.annotate 'line', 3
    if_null rx399_debug, debug_383
    rx399_cur."!cursor_debug"("NEXT", "backslash:sym<r>")
  debug_383:
  rx399_fail:
    (rx399_rep, rx399_pos, $I10, $P10) = rx399_cur."!mark_fail"(0)
    lt rx399_pos, -1, rx399_done
    eq rx399_pos, -1, rx399_fail
    jump $I10
  rx399_done:
    rx399_cur."!cursor_fail"()
    if_null rx399_debug, debug_384
    rx399_cur."!cursor_debug"("FAIL", "backslash:sym<r>")
  debug_384:
    .return (rx399_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<r>"  :subid("116_1295142316.828") :method
.annotate 'line', 3
    new $P401, "ResizablePMCArray"
    push $P401, "R"
    push $P401, "r"
    .return ($P401)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<t>"  :subid("117_1295142316.828") :method :outer("11_1295142316.828")
.annotate 'line', 3
    .local string rx405_tgt
    .local int rx405_pos
    .local int rx405_off
    .local int rx405_eos
    .local int rx405_rep
    .local pmc rx405_cur
    .local pmc rx405_debug
    (rx405_cur, rx405_pos, rx405_tgt, $I10) = self."!cursor_start"()
    getattribute rx405_debug, rx405_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx405_cur
    .local pmc match
    .lex "$/", match
    length rx405_eos, rx405_tgt
    gt rx405_pos, rx405_eos, rx405_done
    set rx405_off, 0
    lt rx405_pos, 2, rx405_start
    sub rx405_off, rx405_pos, 1
    substr rx405_tgt, rx405_tgt, rx405_off
  rx405_start:
    eq $I10, 1, rx405_restart
    if_null rx405_debug, debug_385
    rx405_cur."!cursor_debug"("START", "backslash:sym<t>")
  debug_385:
    $I10 = self.'from'()
    ne $I10, -1, rxscan408_done
    goto rxscan408_scan
  rxscan408_loop:
    ($P10) = rx405_cur."from"()
    inc $P10
    set rx405_pos, $P10
    ge rx405_pos, rx405_eos, rxscan408_done
  rxscan408_scan:
    set_addr $I10, rxscan408_loop
    rx405_cur."!mark_push"(0, rx405_pos, $I10)
  rxscan408_done:
.annotate 'line', 142
  # rx subcapture "sym"
    set_addr $I10, rxcap_409_fail
    rx405_cur."!mark_push"(0, rx405_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx405_pos, rx405_eos, rx405_fail
    sub $I10, rx405_pos, rx405_off
    substr $S10, rx405_tgt, $I10, 1
    index $I11, "tT", $S10
    lt $I11, 0, rx405_fail
    inc rx405_pos
    set_addr $I10, rxcap_409_fail
    ($I12, $I11) = rx405_cur."!mark_peek"($I10)
    rx405_cur."!cursor_pos"($I11)
    ($P10) = rx405_cur."!cursor_start"()
    $P10."!cursor_pass"(rx405_pos, "")
    rx405_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_409_done
  rxcap_409_fail:
    goto rx405_fail
  rxcap_409_done:
  # rx pass
    rx405_cur."!cursor_pass"(rx405_pos, "backslash:sym<t>")
    if_null rx405_debug, debug_386
    rx405_cur."!cursor_debug"("PASS", "backslash:sym<t>", " at pos=", rx405_pos)
  debug_386:
    .return (rx405_cur)
  rx405_restart:
.annotate 'line', 3
    if_null rx405_debug, debug_387
    rx405_cur."!cursor_debug"("NEXT", "backslash:sym<t>")
  debug_387:
  rx405_fail:
    (rx405_rep, rx405_pos, $I10, $P10) = rx405_cur."!mark_fail"(0)
    lt rx405_pos, -1, rx405_done
    eq rx405_pos, -1, rx405_fail
    jump $I10
  rx405_done:
    rx405_cur."!cursor_fail"()
    if_null rx405_debug, debug_388
    rx405_cur."!cursor_debug"("FAIL", "backslash:sym<t>")
  debug_388:
    .return (rx405_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<t>"  :subid("118_1295142316.828") :method
.annotate 'line', 3
    new $P407, "ResizablePMCArray"
    push $P407, "T"
    push $P407, "t"
    .return ($P407)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<v>"  :subid("119_1295142316.828") :method :outer("11_1295142316.828")
.annotate 'line', 3
    .local string rx411_tgt
    .local int rx411_pos
    .local int rx411_off
    .local int rx411_eos
    .local int rx411_rep
    .local pmc rx411_cur
    .local pmc rx411_debug
    (rx411_cur, rx411_pos, rx411_tgt, $I10) = self."!cursor_start"()
    getattribute rx411_debug, rx411_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx411_cur
    .local pmc match
    .lex "$/", match
    length rx411_eos, rx411_tgt
    gt rx411_pos, rx411_eos, rx411_done
    set rx411_off, 0
    lt rx411_pos, 2, rx411_start
    sub rx411_off, rx411_pos, 1
    substr rx411_tgt, rx411_tgt, rx411_off
  rx411_start:
    eq $I10, 1, rx411_restart
    if_null rx411_debug, debug_389
    rx411_cur."!cursor_debug"("START", "backslash:sym<v>")
  debug_389:
    $I10 = self.'from'()
    ne $I10, -1, rxscan414_done
    goto rxscan414_scan
  rxscan414_loop:
    ($P10) = rx411_cur."from"()
    inc $P10
    set rx411_pos, $P10
    ge rx411_pos, rx411_eos, rxscan414_done
  rxscan414_scan:
    set_addr $I10, rxscan414_loop
    rx411_cur."!mark_push"(0, rx411_pos, $I10)
  rxscan414_done:
.annotate 'line', 143
  # rx subcapture "sym"
    set_addr $I10, rxcap_415_fail
    rx411_cur."!mark_push"(0, rx411_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx411_pos, rx411_eos, rx411_fail
    sub $I10, rx411_pos, rx411_off
    substr $S10, rx411_tgt, $I10, 1
    index $I11, "vV", $S10
    lt $I11, 0, rx411_fail
    inc rx411_pos
    set_addr $I10, rxcap_415_fail
    ($I12, $I11) = rx411_cur."!mark_peek"($I10)
    rx411_cur."!cursor_pos"($I11)
    ($P10) = rx411_cur."!cursor_start"()
    $P10."!cursor_pass"(rx411_pos, "")
    rx411_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_415_done
  rxcap_415_fail:
    goto rx411_fail
  rxcap_415_done:
  # rx pass
    rx411_cur."!cursor_pass"(rx411_pos, "backslash:sym<v>")
    if_null rx411_debug, debug_390
    rx411_cur."!cursor_debug"("PASS", "backslash:sym<v>", " at pos=", rx411_pos)
  debug_390:
    .return (rx411_cur)
  rx411_restart:
.annotate 'line', 3
    if_null rx411_debug, debug_391
    rx411_cur."!cursor_debug"("NEXT", "backslash:sym<v>")
  debug_391:
  rx411_fail:
    (rx411_rep, rx411_pos, $I10, $P10) = rx411_cur."!mark_fail"(0)
    lt rx411_pos, -1, rx411_done
    eq rx411_pos, -1, rx411_fail
    jump $I10
  rx411_done:
    rx411_cur."!cursor_fail"()
    if_null rx411_debug, debug_392
    rx411_cur."!cursor_debug"("FAIL", "backslash:sym<v>")
  debug_392:
    .return (rx411_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<v>"  :subid("120_1295142316.828") :method
.annotate 'line', 3
    new $P413, "ResizablePMCArray"
    push $P413, "V"
    push $P413, "v"
    .return ($P413)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<o>"  :subid("121_1295142316.828") :method :outer("11_1295142316.828")
.annotate 'line', 3
    .local string rx417_tgt
    .local int rx417_pos
    .local int rx417_off
    .local int rx417_eos
    .local int rx417_rep
    .local pmc rx417_cur
    .local pmc rx417_debug
    (rx417_cur, rx417_pos, rx417_tgt, $I10) = self."!cursor_start"()
    getattribute rx417_debug, rx417_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx417_cur
    .local pmc match
    .lex "$/", match
    length rx417_eos, rx417_tgt
    gt rx417_pos, rx417_eos, rx417_done
    set rx417_off, 0
    lt rx417_pos, 2, rx417_start
    sub rx417_off, rx417_pos, 1
    substr rx417_tgt, rx417_tgt, rx417_off
  rx417_start:
    eq $I10, 1, rx417_restart
    if_null rx417_debug, debug_393
    rx417_cur."!cursor_debug"("START", "backslash:sym<o>")
  debug_393:
    $I10 = self.'from'()
    ne $I10, -1, rxscan424_done
    goto rxscan424_scan
  rxscan424_loop:
    ($P10) = rx417_cur."from"()
    inc $P10
    set rx417_pos, $P10
    ge rx417_pos, rx417_eos, rxscan424_done
  rxscan424_scan:
    set_addr $I10, rxscan424_loop
    rx417_cur."!mark_push"(0, rx417_pos, $I10)
  rxscan424_done:
.annotate 'line', 144
  # rx subcapture "sym"
    set_addr $I10, rxcap_425_fail
    rx417_cur."!mark_push"(0, rx417_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx417_pos, rx417_eos, rx417_fail
    sub $I10, rx417_pos, rx417_off
    substr $S10, rx417_tgt, $I10, 1
    index $I11, "oO", $S10
    lt $I11, 0, rx417_fail
    inc rx417_pos
    set_addr $I10, rxcap_425_fail
    ($I12, $I11) = rx417_cur."!mark_peek"($I10)
    rx417_cur."!cursor_pos"($I11)
    ($P10) = rx417_cur."!cursor_start"()
    $P10."!cursor_pass"(rx417_pos, "")
    rx417_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_425_done
  rxcap_425_fail:
    goto rx417_fail
  rxcap_425_done:
  alt426_0:
    set_addr $I10, alt426_1
    rx417_cur."!mark_push"(0, rx417_pos, $I10)
  # rx subrule "octint" subtype=capture negate=
    rx417_cur."!cursor_pos"(rx417_pos)
    $P10 = rx417_cur."octint"()
    unless $P10, rx417_fail
    rx417_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octint")
    rx417_pos = $P10."pos"()
    goto alt426_end
  alt426_1:
  # rx literal  "["
    add $I11, rx417_pos, 1
    gt $I11, rx417_eos, rx417_fail
    sub $I11, rx417_pos, rx417_off
    ord $I11, rx417_tgt, $I11
    ne $I11, 91, rx417_fail
    add rx417_pos, 1
  # rx subrule "octints" subtype=capture negate=
    rx417_cur."!cursor_pos"(rx417_pos)
    $P10 = rx417_cur."octints"()
    unless $P10, rx417_fail
    rx417_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octints")
    rx417_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx417_pos, 1
    gt $I11, rx417_eos, rx417_fail
    sub $I11, rx417_pos, rx417_off
    ord $I11, rx417_tgt, $I11
    ne $I11, 93, rx417_fail
    add rx417_pos, 1
  alt426_end:
  # rx pass
    rx417_cur."!cursor_pass"(rx417_pos, "backslash:sym<o>")
    if_null rx417_debug, debug_394
    rx417_cur."!cursor_debug"("PASS", "backslash:sym<o>", " at pos=", rx417_pos)
  debug_394:
    .return (rx417_cur)
  rx417_restart:
.annotate 'line', 3
    if_null rx417_debug, debug_395
    rx417_cur."!cursor_debug"("NEXT", "backslash:sym<o>")
  debug_395:
  rx417_fail:
    (rx417_rep, rx417_pos, $I10, $P10) = rx417_cur."!mark_fail"(0)
    lt rx417_pos, -1, rx417_done
    eq rx417_pos, -1, rx417_fail
    jump $I10
  rx417_done:
    rx417_cur."!cursor_fail"()
    if_null rx417_debug, debug_396
    rx417_cur."!cursor_debug"("FAIL", "backslash:sym<o>")
  debug_396:
    .return (rx417_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<o>"  :subid("122_1295142316.828") :method
.annotate 'line', 3
    $P419 = self."!PREFIX__!subrule"("octints", "O[")
    $P420 = self."!PREFIX__!subrule"("octint", "O")
    $P421 = self."!PREFIX__!subrule"("octints", "o[")
    $P422 = self."!PREFIX__!subrule"("octint", "o")
    new $P423, "ResizablePMCArray"
    push $P423, $P419
    push $P423, $P420
    push $P423, $P421
    push $P423, $P422
    .return ($P423)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<x>"  :subid("123_1295142316.828") :method :outer("11_1295142316.828")
.annotate 'line', 3
    .local string rx428_tgt
    .local int rx428_pos
    .local int rx428_off
    .local int rx428_eos
    .local int rx428_rep
    .local pmc rx428_cur
    .local pmc rx428_debug
    (rx428_cur, rx428_pos, rx428_tgt, $I10) = self."!cursor_start"()
    getattribute rx428_debug, rx428_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx428_cur
    .local pmc match
    .lex "$/", match
    length rx428_eos, rx428_tgt
    gt rx428_pos, rx428_eos, rx428_done
    set rx428_off, 0
    lt rx428_pos, 2, rx428_start
    sub rx428_off, rx428_pos, 1
    substr rx428_tgt, rx428_tgt, rx428_off
  rx428_start:
    eq $I10, 1, rx428_restart
    if_null rx428_debug, debug_397
    rx428_cur."!cursor_debug"("START", "backslash:sym<x>")
  debug_397:
    $I10 = self.'from'()
    ne $I10, -1, rxscan435_done
    goto rxscan435_scan
  rxscan435_loop:
    ($P10) = rx428_cur."from"()
    inc $P10
    set rx428_pos, $P10
    ge rx428_pos, rx428_eos, rxscan435_done
  rxscan435_scan:
    set_addr $I10, rxscan435_loop
    rx428_cur."!mark_push"(0, rx428_pos, $I10)
  rxscan435_done:
.annotate 'line', 145
  # rx subcapture "sym"
    set_addr $I10, rxcap_436_fail
    rx428_cur."!mark_push"(0, rx428_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx428_pos, rx428_eos, rx428_fail
    sub $I10, rx428_pos, rx428_off
    substr $S10, rx428_tgt, $I10, 1
    index $I11, "xX", $S10
    lt $I11, 0, rx428_fail
    inc rx428_pos
    set_addr $I10, rxcap_436_fail
    ($I12, $I11) = rx428_cur."!mark_peek"($I10)
    rx428_cur."!cursor_pos"($I11)
    ($P10) = rx428_cur."!cursor_start"()
    $P10."!cursor_pass"(rx428_pos, "")
    rx428_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_436_done
  rxcap_436_fail:
    goto rx428_fail
  rxcap_436_done:
  alt437_0:
    set_addr $I10, alt437_1
    rx428_cur."!mark_push"(0, rx428_pos, $I10)
  # rx subrule "hexint" subtype=capture negate=
    rx428_cur."!cursor_pos"(rx428_pos)
    $P10 = rx428_cur."hexint"()
    unless $P10, rx428_fail
    rx428_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexint")
    rx428_pos = $P10."pos"()
    goto alt437_end
  alt437_1:
  # rx literal  "["
    add $I11, rx428_pos, 1
    gt $I11, rx428_eos, rx428_fail
    sub $I11, rx428_pos, rx428_off
    ord $I11, rx428_tgt, $I11
    ne $I11, 91, rx428_fail
    add rx428_pos, 1
  # rx subrule "hexints" subtype=capture negate=
    rx428_cur."!cursor_pos"(rx428_pos)
    $P10 = rx428_cur."hexints"()
    unless $P10, rx428_fail
    rx428_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexints")
    rx428_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx428_pos, 1
    gt $I11, rx428_eos, rx428_fail
    sub $I11, rx428_pos, rx428_off
    ord $I11, rx428_tgt, $I11
    ne $I11, 93, rx428_fail
    add rx428_pos, 1
  alt437_end:
  # rx pass
    rx428_cur."!cursor_pass"(rx428_pos, "backslash:sym<x>")
    if_null rx428_debug, debug_398
    rx428_cur."!cursor_debug"("PASS", "backslash:sym<x>", " at pos=", rx428_pos)
  debug_398:
    .return (rx428_cur)
  rx428_restart:
.annotate 'line', 3
    if_null rx428_debug, debug_399
    rx428_cur."!cursor_debug"("NEXT", "backslash:sym<x>")
  debug_399:
  rx428_fail:
    (rx428_rep, rx428_pos, $I10, $P10) = rx428_cur."!mark_fail"(0)
    lt rx428_pos, -1, rx428_done
    eq rx428_pos, -1, rx428_fail
    jump $I10
  rx428_done:
    rx428_cur."!cursor_fail"()
    if_null rx428_debug, debug_400
    rx428_cur."!cursor_debug"("FAIL", "backslash:sym<x>")
  debug_400:
    .return (rx428_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<x>"  :subid("124_1295142316.828") :method
.annotate 'line', 3
    $P430 = self."!PREFIX__!subrule"("hexints", "X[")
    $P431 = self."!PREFIX__!subrule"("hexint", "X")
    $P432 = self."!PREFIX__!subrule"("hexints", "x[")
    $P433 = self."!PREFIX__!subrule"("hexint", "x")
    new $P434, "ResizablePMCArray"
    push $P434, $P430
    push $P434, $P431
    push $P434, $P432
    push $P434, $P433
    .return ($P434)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<c>"  :subid("125_1295142316.828") :method :outer("11_1295142316.828")
.annotate 'line', 3
    .local string rx439_tgt
    .local int rx439_pos
    .local int rx439_off
    .local int rx439_eos
    .local int rx439_rep
    .local pmc rx439_cur
    .local pmc rx439_debug
    (rx439_cur, rx439_pos, rx439_tgt, $I10) = self."!cursor_start"()
    getattribute rx439_debug, rx439_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx439_cur
    .local pmc match
    .lex "$/", match
    length rx439_eos, rx439_tgt
    gt rx439_pos, rx439_eos, rx439_done
    set rx439_off, 0
    lt rx439_pos, 2, rx439_start
    sub rx439_off, rx439_pos, 1
    substr rx439_tgt, rx439_tgt, rx439_off
  rx439_start:
    eq $I10, 1, rx439_restart
    if_null rx439_debug, debug_401
    rx439_cur."!cursor_debug"("START", "backslash:sym<c>")
  debug_401:
    $I10 = self.'from'()
    ne $I10, -1, rxscan444_done
    goto rxscan444_scan
  rxscan444_loop:
    ($P10) = rx439_cur."from"()
    inc $P10
    set rx439_pos, $P10
    ge rx439_pos, rx439_eos, rxscan444_done
  rxscan444_scan:
    set_addr $I10, rxscan444_loop
    rx439_cur."!mark_push"(0, rx439_pos, $I10)
  rxscan444_done:
.annotate 'line', 146
  # rx subcapture "sym"
    set_addr $I10, rxcap_445_fail
    rx439_cur."!mark_push"(0, rx439_pos, $I10)
  # rx enumcharlist negate=0 
    ge rx439_pos, rx439_eos, rx439_fail
    sub $I10, rx439_pos, rx439_off
    substr $S10, rx439_tgt, $I10, 1
    index $I11, "cC", $S10
    lt $I11, 0, rx439_fail
    inc rx439_pos
    set_addr $I10, rxcap_445_fail
    ($I12, $I11) = rx439_cur."!mark_peek"($I10)
    rx439_cur."!cursor_pos"($I11)
    ($P10) = rx439_cur."!cursor_start"()
    $P10."!cursor_pass"(rx439_pos, "")
    rx439_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_445_done
  rxcap_445_fail:
    goto rx439_fail
  rxcap_445_done:
  # rx subrule "charspec" subtype=capture negate=
    rx439_cur."!cursor_pos"(rx439_pos)
    $P10 = rx439_cur."charspec"()
    unless $P10, rx439_fail
    rx439_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charspec")
    rx439_pos = $P10."pos"()
  # rx pass
    rx439_cur."!cursor_pass"(rx439_pos, "backslash:sym<c>")
    if_null rx439_debug, debug_402
    rx439_cur."!cursor_debug"("PASS", "backslash:sym<c>", " at pos=", rx439_pos)
  debug_402:
    .return (rx439_cur)
  rx439_restart:
.annotate 'line', 3
    if_null rx439_debug, debug_403
    rx439_cur."!cursor_debug"("NEXT", "backslash:sym<c>")
  debug_403:
  rx439_fail:
    (rx439_rep, rx439_pos, $I10, $P10) = rx439_cur."!mark_fail"(0)
    lt rx439_pos, -1, rx439_done
    eq rx439_pos, -1, rx439_fail
    jump $I10
  rx439_done:
    rx439_cur."!cursor_fail"()
    if_null rx439_debug, debug_404
    rx439_cur."!cursor_debug"("FAIL", "backslash:sym<c>")
  debug_404:
    .return (rx439_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<c>"  :subid("126_1295142316.828") :method
.annotate 'line', 3
    $P441 = self."!PREFIX__!subrule"("charspec", "C")
    $P442 = self."!PREFIX__!subrule"("charspec", "c")
    new $P443, "ResizablePMCArray"
    push $P443, $P441
    push $P443, $P442
    .return ($P443)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<A>"  :subid("127_1295142316.828") :method :outer("11_1295142316.828")
.annotate 'line', 3
    .local string rx447_tgt
    .local int rx447_pos
    .local int rx447_off
    .local int rx447_eos
    .local int rx447_rep
    .local pmc rx447_cur
    .local pmc rx447_debug
    (rx447_cur, rx447_pos, rx447_tgt, $I10) = self."!cursor_start"()
    getattribute rx447_debug, rx447_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx447_cur
    .local pmc match
    .lex "$/", match
    length rx447_eos, rx447_tgt
    gt rx447_pos, rx447_eos, rx447_done
    set rx447_off, 0
    lt rx447_pos, 2, rx447_start
    sub rx447_off, rx447_pos, 1
    substr rx447_tgt, rx447_tgt, rx447_off
  rx447_start:
    eq $I10, 1, rx447_restart
    if_null rx447_debug, debug_405
    rx447_cur."!cursor_debug"("START", "backslash:sym<A>")
  debug_405:
    $I10 = self.'from'()
    ne $I10, -1, rxscan451_done
    goto rxscan451_scan
  rxscan451_loop:
    ($P10) = rx447_cur."from"()
    inc $P10
    set rx447_pos, $P10
    ge rx447_pos, rx447_eos, rxscan451_done
  rxscan451_scan:
    set_addr $I10, rxscan451_loop
    rx447_cur."!mark_push"(0, rx447_pos, $I10)
  rxscan451_done:
.annotate 'line', 147
  # rx literal  "A"
    add $I11, rx447_pos, 1
    gt $I11, rx447_eos, rx447_fail
    sub $I11, rx447_pos, rx447_off
    ord $I11, rx447_tgt, $I11
    ne $I11, 65, rx447_fail
    add rx447_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx447_cur."!cursor_pos"(rx447_pos)
    $P10 = rx447_cur."obs"("\\A as beginning-of-string matcher", "^")
    unless $P10, rx447_fail
    rx447_pos = $P10."pos"()
  # rx pass
    rx447_cur."!cursor_pass"(rx447_pos, "backslash:sym<A>")
    if_null rx447_debug, debug_406
    rx447_cur."!cursor_debug"("PASS", "backslash:sym<A>", " at pos=", rx447_pos)
  debug_406:
    .return (rx447_cur)
  rx447_restart:
.annotate 'line', 3
    if_null rx447_debug, debug_407
    rx447_cur."!cursor_debug"("NEXT", "backslash:sym<A>")
  debug_407:
  rx447_fail:
    (rx447_rep, rx447_pos, $I10, $P10) = rx447_cur."!mark_fail"(0)
    lt rx447_pos, -1, rx447_done
    eq rx447_pos, -1, rx447_fail
    jump $I10
  rx447_done:
    rx447_cur."!cursor_fail"()
    if_null rx447_debug, debug_408
    rx447_cur."!cursor_debug"("FAIL", "backslash:sym<A>")
  debug_408:
    .return (rx447_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<A>"  :subid("128_1295142316.828") :method
.annotate 'line', 3
    $P449 = self."!PREFIX__!subrule"("obs", "A")
    new $P450, "ResizablePMCArray"
    push $P450, $P449
    .return ($P450)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<z>"  :subid("129_1295142316.828") :method :outer("11_1295142316.828")
.annotate 'line', 3
    .local string rx453_tgt
    .local int rx453_pos
    .local int rx453_off
    .local int rx453_eos
    .local int rx453_rep
    .local pmc rx453_cur
    .local pmc rx453_debug
    (rx453_cur, rx453_pos, rx453_tgt, $I10) = self."!cursor_start"()
    getattribute rx453_debug, rx453_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx453_cur
    .local pmc match
    .lex "$/", match
    length rx453_eos, rx453_tgt
    gt rx453_pos, rx453_eos, rx453_done
    set rx453_off, 0
    lt rx453_pos, 2, rx453_start
    sub rx453_off, rx453_pos, 1
    substr rx453_tgt, rx453_tgt, rx453_off
  rx453_start:
    eq $I10, 1, rx453_restart
    if_null rx453_debug, debug_409
    rx453_cur."!cursor_debug"("START", "backslash:sym<z>")
  debug_409:
    $I10 = self.'from'()
    ne $I10, -1, rxscan457_done
    goto rxscan457_scan
  rxscan457_loop:
    ($P10) = rx453_cur."from"()
    inc $P10
    set rx453_pos, $P10
    ge rx453_pos, rx453_eos, rxscan457_done
  rxscan457_scan:
    set_addr $I10, rxscan457_loop
    rx453_cur."!mark_push"(0, rx453_pos, $I10)
  rxscan457_done:
.annotate 'line', 148
  # rx literal  "z"
    add $I11, rx453_pos, 1
    gt $I11, rx453_eos, rx453_fail
    sub $I11, rx453_pos, rx453_off
    ord $I11, rx453_tgt, $I11
    ne $I11, 122, rx453_fail
    add rx453_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx453_cur."!cursor_pos"(rx453_pos)
    $P10 = rx453_cur."obs"("\\z as end-of-string matcher", "$")
    unless $P10, rx453_fail
    rx453_pos = $P10."pos"()
  # rx pass
    rx453_cur."!cursor_pass"(rx453_pos, "backslash:sym<z>")
    if_null rx453_debug, debug_410
    rx453_cur."!cursor_debug"("PASS", "backslash:sym<z>", " at pos=", rx453_pos)
  debug_410:
    .return (rx453_cur)
  rx453_restart:
.annotate 'line', 3
    if_null rx453_debug, debug_411
    rx453_cur."!cursor_debug"("NEXT", "backslash:sym<z>")
  debug_411:
  rx453_fail:
    (rx453_rep, rx453_pos, $I10, $P10) = rx453_cur."!mark_fail"(0)
    lt rx453_pos, -1, rx453_done
    eq rx453_pos, -1, rx453_fail
    jump $I10
  rx453_done:
    rx453_cur."!cursor_fail"()
    if_null rx453_debug, debug_412
    rx453_cur."!cursor_debug"("FAIL", "backslash:sym<z>")
  debug_412:
    .return (rx453_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<z>"  :subid("130_1295142316.828") :method
.annotate 'line', 3
    $P455 = self."!PREFIX__!subrule"("obs", "z")
    new $P456, "ResizablePMCArray"
    push $P456, $P455
    .return ($P456)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<Z>"  :subid("131_1295142316.828") :method :outer("11_1295142316.828")
.annotate 'line', 3
    .local string rx459_tgt
    .local int rx459_pos
    .local int rx459_off
    .local int rx459_eos
    .local int rx459_rep
    .local pmc rx459_cur
    .local pmc rx459_debug
    (rx459_cur, rx459_pos, rx459_tgt, $I10) = self."!cursor_start"()
    getattribute rx459_debug, rx459_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx459_cur
    .local pmc match
    .lex "$/", match
    length rx459_eos, rx459_tgt
    gt rx459_pos, rx459_eos, rx459_done
    set rx459_off, 0
    lt rx459_pos, 2, rx459_start
    sub rx459_off, rx459_pos, 1
    substr rx459_tgt, rx459_tgt, rx459_off
  rx459_start:
    eq $I10, 1, rx459_restart
    if_null rx459_debug, debug_413
    rx459_cur."!cursor_debug"("START", "backslash:sym<Z>")
  debug_413:
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
.annotate 'line', 149
  # rx literal  "Z"
    add $I11, rx459_pos, 1
    gt $I11, rx459_eos, rx459_fail
    sub $I11, rx459_pos, rx459_off
    ord $I11, rx459_tgt, $I11
    ne $I11, 90, rx459_fail
    add rx459_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx459_cur."!cursor_pos"(rx459_pos)
    $P10 = rx459_cur."obs"("\\Z as end-of-string matcher", "\\n?$")
    unless $P10, rx459_fail
    rx459_pos = $P10."pos"()
  # rx pass
    rx459_cur."!cursor_pass"(rx459_pos, "backslash:sym<Z>")
    if_null rx459_debug, debug_414
    rx459_cur."!cursor_debug"("PASS", "backslash:sym<Z>", " at pos=", rx459_pos)
  debug_414:
    .return (rx459_cur)
  rx459_restart:
.annotate 'line', 3
    if_null rx459_debug, debug_415
    rx459_cur."!cursor_debug"("NEXT", "backslash:sym<Z>")
  debug_415:
  rx459_fail:
    (rx459_rep, rx459_pos, $I10, $P10) = rx459_cur."!mark_fail"(0)
    lt rx459_pos, -1, rx459_done
    eq rx459_pos, -1, rx459_fail
    jump $I10
  rx459_done:
    rx459_cur."!cursor_fail"()
    if_null rx459_debug, debug_416
    rx459_cur."!cursor_debug"("FAIL", "backslash:sym<Z>")
  debug_416:
    .return (rx459_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<Z>"  :subid("132_1295142316.828") :method
.annotate 'line', 3
    $P461 = self."!PREFIX__!subrule"("obs", "Z")
    new $P462, "ResizablePMCArray"
    push $P462, $P461
    .return ($P462)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<Q>"  :subid("133_1295142316.828") :method :outer("11_1295142316.828")
.annotate 'line', 3
    .local string rx465_tgt
    .local int rx465_pos
    .local int rx465_off
    .local int rx465_eos
    .local int rx465_rep
    .local pmc rx465_cur
    .local pmc rx465_debug
    (rx465_cur, rx465_pos, rx465_tgt, $I10) = self."!cursor_start"()
    getattribute rx465_debug, rx465_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx465_cur
    .local pmc match
    .lex "$/", match
    length rx465_eos, rx465_tgt
    gt rx465_pos, rx465_eos, rx465_done
    set rx465_off, 0
    lt rx465_pos, 2, rx465_start
    sub rx465_off, rx465_pos, 1
    substr rx465_tgt, rx465_tgt, rx465_off
  rx465_start:
    eq $I10, 1, rx465_restart
    if_null rx465_debug, debug_417
    rx465_cur."!cursor_debug"("START", "backslash:sym<Q>")
  debug_417:
    $I10 = self.'from'()
    ne $I10, -1, rxscan469_done
    goto rxscan469_scan
  rxscan469_loop:
    ($P10) = rx465_cur."from"()
    inc $P10
    set rx465_pos, $P10
    ge rx465_pos, rx465_eos, rxscan469_done
  rxscan469_scan:
    set_addr $I10, rxscan469_loop
    rx465_cur."!mark_push"(0, rx465_pos, $I10)
  rxscan469_done:
.annotate 'line', 150
  # rx literal  "Q"
    add $I11, rx465_pos, 1
    gt $I11, rx465_eos, rx465_fail
    sub $I11, rx465_pos, rx465_off
    ord $I11, rx465_tgt, $I11
    ne $I11, 81, rx465_fail
    add rx465_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx465_cur."!cursor_pos"(rx465_pos)
    $P10 = rx465_cur."obs"("\\Q as quotemeta", "quotes or literal variable match")
    unless $P10, rx465_fail
    rx465_pos = $P10."pos"()
  # rx pass
    rx465_cur."!cursor_pass"(rx465_pos, "backslash:sym<Q>")
    if_null rx465_debug, debug_418
    rx465_cur."!cursor_debug"("PASS", "backslash:sym<Q>", " at pos=", rx465_pos)
  debug_418:
    .return (rx465_cur)
  rx465_restart:
.annotate 'line', 3
    if_null rx465_debug, debug_419
    rx465_cur."!cursor_debug"("NEXT", "backslash:sym<Q>")
  debug_419:
  rx465_fail:
    (rx465_rep, rx465_pos, $I10, $P10) = rx465_cur."!mark_fail"(0)
    lt rx465_pos, -1, rx465_done
    eq rx465_pos, -1, rx465_fail
    jump $I10
  rx465_done:
    rx465_cur."!cursor_fail"()
    if_null rx465_debug, debug_420
    rx465_cur."!cursor_debug"("FAIL", "backslash:sym<Q>")
  debug_420:
    .return (rx465_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<Q>"  :subid("134_1295142316.828") :method
.annotate 'line', 3
    $P467 = self."!PREFIX__!subrule"("obs", "Q")
    new $P468, "ResizablePMCArray"
    push $P468, $P467
    .return ($P468)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<unrec>"  :subid("135_1295142316.828") :method :outer("11_1295142316.828")
.annotate 'line', 3
    .const 'Sub' $P478 = "137_1295142316.828" 
    capture_lex $P478
    .local string rx471_tgt
    .local int rx471_pos
    .local int rx471_off
    .local int rx471_eos
    .local int rx471_rep
    .local pmc rx471_cur
    .local pmc rx471_debug
    (rx471_cur, rx471_pos, rx471_tgt, $I10) = self."!cursor_start"()
    getattribute rx471_debug, rx471_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx471_cur
    .local pmc match
    .lex "$/", match
    length rx471_eos, rx471_tgt
    gt rx471_pos, rx471_eos, rx471_done
    set rx471_off, 0
    lt rx471_pos, 2, rx471_start
    sub rx471_off, rx471_pos, 1
    substr rx471_tgt, rx471_tgt, rx471_off
  rx471_start:
    eq $I10, 1, rx471_restart
    if_null rx471_debug, debug_421
    rx471_cur."!cursor_debug"("START", "backslash:sym<unrec>")
  debug_421:
    $I10 = self.'from'()
    ne $I10, -1, rxscan474_done
    goto rxscan474_scan
  rxscan474_loop:
    ($P10) = rx471_cur."from"()
    inc $P10
    set rx471_pos, $P10
    ge rx471_pos, rx471_eos, rxscan474_done
  rxscan474_scan:
    set_addr $I10, rxscan474_loop
    rx471_cur."!mark_push"(0, rx471_pos, $I10)
  rxscan474_done:
.annotate 'line', 151
    rx471_cur."!cursor_pos"(rx471_pos)
    find_lex $P475, unicode:"$\x{a2}"
    $P476 = $P475."MATCH"()
    store_lex "$/", $P476
    .const 'Sub' $P478 = "137_1295142316.828" 
    capture_lex $P478
    $P479 = $P478()
  # rx charclass w
    ge rx471_pos, rx471_eos, rx471_fail
    sub $I10, rx471_pos, rx471_off
    is_cclass $I11, 8192, rx471_tgt, $I10
    unless $I11, rx471_fail
    inc rx471_pos
  # rx subrule "panic" subtype=method negate=
    rx471_cur."!cursor_pos"(rx471_pos)
    $P10 = rx471_cur."panic"("Unrecognized backslash sequence")
    unless $P10, rx471_fail
    rx471_pos = $P10."pos"()
  # rx pass
    rx471_cur."!cursor_pass"(rx471_pos, "backslash:sym<unrec>")
    if_null rx471_debug, debug_422
    rx471_cur."!cursor_debug"("PASS", "backslash:sym<unrec>", " at pos=", rx471_pos)
  debug_422:
    .return (rx471_cur)
  rx471_restart:
.annotate 'line', 3
    if_null rx471_debug, debug_423
    rx471_cur."!cursor_debug"("NEXT", "backslash:sym<unrec>")
  debug_423:
  rx471_fail:
    (rx471_rep, rx471_pos, $I10, $P10) = rx471_cur."!mark_fail"(0)
    lt rx471_pos, -1, rx471_done
    eq rx471_pos, -1, rx471_fail
    jump $I10
  rx471_done:
    rx471_cur."!cursor_fail"()
    if_null rx471_debug, debug_424
    rx471_cur."!cursor_debug"("FAIL", "backslash:sym<unrec>")
  debug_424:
    .return (rx471_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<unrec>"  :subid("136_1295142316.828") :method
.annotate 'line', 3
    new $P473, "ResizablePMCArray"
    push $P473, ""
    .return ($P473)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block477"  :anon :subid("137_1295142316.828") :outer("135_1295142316.828")
.annotate 'line', 151
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "backslash:sym<misc>"  :subid("138_1295142316.828") :method :outer("11_1295142316.828")
.annotate 'line', 3
    .local string rx481_tgt
    .local int rx481_pos
    .local int rx481_off
    .local int rx481_eos
    .local int rx481_rep
    .local pmc rx481_cur
    .local pmc rx481_debug
    (rx481_cur, rx481_pos, rx481_tgt, $I10) = self."!cursor_start"()
    getattribute rx481_debug, rx481_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx481_cur
    .local pmc match
    .lex "$/", match
    length rx481_eos, rx481_tgt
    gt rx481_pos, rx481_eos, rx481_done
    set rx481_off, 0
    lt rx481_pos, 2, rx481_start
    sub rx481_off, rx481_pos, 1
    substr rx481_tgt, rx481_tgt, rx481_off
  rx481_start:
    eq $I10, 1, rx481_restart
    if_null rx481_debug, debug_425
    rx481_cur."!cursor_debug"("START", "backslash:sym<misc>")
  debug_425:
    $I10 = self.'from'()
    ne $I10, -1, rxscan484_done
    goto rxscan484_scan
  rxscan484_loop:
    ($P10) = rx481_cur."from"()
    inc $P10
    set rx481_pos, $P10
    ge rx481_pos, rx481_eos, rxscan484_done
  rxscan484_scan:
    set_addr $I10, rxscan484_loop
    rx481_cur."!mark_push"(0, rx481_pos, $I10)
  rxscan484_done:
.annotate 'line', 152
  # rx charclass W
    ge rx481_pos, rx481_eos, rx481_fail
    sub $I10, rx481_pos, rx481_off
    is_cclass $I11, 8192, rx481_tgt, $I10
    if $I11, rx481_fail
    inc rx481_pos
  # rx pass
    rx481_cur."!cursor_pass"(rx481_pos, "backslash:sym<misc>")
    if_null rx481_debug, debug_426
    rx481_cur."!cursor_debug"("PASS", "backslash:sym<misc>", " at pos=", rx481_pos)
  debug_426:
    .return (rx481_cur)
  rx481_restart:
.annotate 'line', 3
    if_null rx481_debug, debug_427
    rx481_cur."!cursor_debug"("NEXT", "backslash:sym<misc>")
  debug_427:
  rx481_fail:
    (rx481_rep, rx481_pos, $I10, $P10) = rx481_cur."!mark_fail"(0)
    lt rx481_pos, -1, rx481_done
    eq rx481_pos, -1, rx481_fail
    jump $I10
  rx481_done:
    rx481_cur."!cursor_fail"()
    if_null rx481_debug, debug_428
    rx481_cur."!cursor_debug"("FAIL", "backslash:sym<misc>")
  debug_428:
    .return (rx481_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__backslash:sym<misc>"  :subid("139_1295142316.828") :method
.annotate 'line', 3
    new $P483, "ResizablePMCArray"
    push $P483, ""
    .return ($P483)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion"  :subid("140_1295142316.828") :method
.annotate 'line', 154
    $P486 = self."!protoregex"("assertion")
    .return ($P486)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion"  :subid("141_1295142316.828") :method
.annotate 'line', 154
    $P488 = self."!PREFIX__!protoregex"("assertion")
    .return ($P488)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<?>"  :subid("142_1295142316.828") :method :outer("11_1295142316.828")
.annotate 'line', 3
    .const 'Sub' $P497 = "144_1295142316.828" 
    capture_lex $P497
    .local string rx490_tgt
    .local int rx490_pos
    .local int rx490_off
    .local int rx490_eos
    .local int rx490_rep
    .local pmc rx490_cur
    .local pmc rx490_debug
    (rx490_cur, rx490_pos, rx490_tgt, $I10) = self."!cursor_start"()
    getattribute rx490_debug, rx490_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx490_cur
    .local pmc match
    .lex "$/", match
    length rx490_eos, rx490_tgt
    gt rx490_pos, rx490_eos, rx490_done
    set rx490_off, 0
    lt rx490_pos, 2, rx490_start
    sub rx490_off, rx490_pos, 1
    substr rx490_tgt, rx490_tgt, rx490_off
  rx490_start:
    eq $I10, 1, rx490_restart
    if_null rx490_debug, debug_429
    rx490_cur."!cursor_debug"("START", "assertion:sym<?>")
  debug_429:
    $I10 = self.'from'()
    ne $I10, -1, rxscan494_done
    goto rxscan494_scan
  rxscan494_loop:
    ($P10) = rx490_cur."from"()
    inc $P10
    set rx490_pos, $P10
    ge rx490_pos, rx490_eos, rxscan494_done
  rxscan494_scan:
    set_addr $I10, rxscan494_loop
    rx490_cur."!mark_push"(0, rx490_pos, $I10)
  rxscan494_done:
.annotate 'line', 156
  # rx literal  "?"
    add $I11, rx490_pos, 1
    gt $I11, rx490_eos, rx490_fail
    sub $I11, rx490_pos, rx490_off
    ord $I11, rx490_tgt, $I11
    ne $I11, 63, rx490_fail
    add rx490_pos, 1
  alt495_0:
    set_addr $I10, alt495_1
    rx490_cur."!mark_push"(0, rx490_pos, $I10)
  # rx subrule "before" subtype=zerowidth negate=
    rx490_cur."!cursor_pos"(rx490_pos)
    .const 'Sub' $P497 = "144_1295142316.828" 
    capture_lex $P497
    $P10 = rx490_cur."before"($P497)
    unless $P10, rx490_fail
    goto alt495_end
  alt495_1:
  # rx subrule "assertion" subtype=capture negate=
    rx490_cur."!cursor_pos"(rx490_pos)
    $P10 = rx490_cur."assertion"()
    unless $P10, rx490_fail
    rx490_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx490_pos = $P10."pos"()
  alt495_end:
  # rx pass
    rx490_cur."!cursor_pass"(rx490_pos, "assertion:sym<?>")
    if_null rx490_debug, debug_434
    rx490_cur."!cursor_debug"("PASS", "assertion:sym<?>", " at pos=", rx490_pos)
  debug_434:
    .return (rx490_cur)
  rx490_restart:
.annotate 'line', 3
    if_null rx490_debug, debug_435
    rx490_cur."!cursor_debug"("NEXT", "assertion:sym<?>")
  debug_435:
  rx490_fail:
    (rx490_rep, rx490_pos, $I10, $P10) = rx490_cur."!mark_fail"(0)
    lt rx490_pos, -1, rx490_done
    eq rx490_pos, -1, rx490_fail
    jump $I10
  rx490_done:
    rx490_cur."!cursor_fail"()
    if_null rx490_debug, debug_436
    rx490_cur."!cursor_debug"("FAIL", "assertion:sym<?>")
  debug_436:
    .return (rx490_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<?>"  :subid("143_1295142316.828") :method
.annotate 'line', 3
    $P492 = self."!PREFIX__!subrule"("assertion", "?")
    new $P493, "ResizablePMCArray"
    push $P493, $P492
    push $P493, "?"
    .return ($P493)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block496"  :anon :subid("144_1295142316.828") :method :outer("142_1295142316.828")
.annotate 'line', 156
    .local string rx498_tgt
    .local int rx498_pos
    .local int rx498_off
    .local int rx498_eos
    .local int rx498_rep
    .local pmc rx498_cur
    .local pmc rx498_debug
    (rx498_cur, rx498_pos, rx498_tgt, $I10) = self."!cursor_start"()
    getattribute rx498_debug, rx498_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx498_cur
    .local pmc match
    .lex "$/", match
    length rx498_eos, rx498_tgt
    gt rx498_pos, rx498_eos, rx498_done
    set rx498_off, 0
    lt rx498_pos, 2, rx498_start
    sub rx498_off, rx498_pos, 1
    substr rx498_tgt, rx498_tgt, rx498_off
  rx498_start:
    eq $I10, 1, rx498_restart
    if_null rx498_debug, debug_430
    rx498_cur."!cursor_debug"("START", "")
  debug_430:
    $I10 = self.'from'()
    ne $I10, -1, rxscan499_done
    goto rxscan499_scan
  rxscan499_loop:
    ($P10) = rx498_cur."from"()
    inc $P10
    set rx498_pos, $P10
    ge rx498_pos, rx498_eos, rxscan499_done
  rxscan499_scan:
    set_addr $I10, rxscan499_loop
    rx498_cur."!mark_push"(0, rx498_pos, $I10)
  rxscan499_done:
  # rx literal  ">"
    add $I11, rx498_pos, 1
    gt $I11, rx498_eos, rx498_fail
    sub $I11, rx498_pos, rx498_off
    ord $I11, rx498_tgt, $I11
    ne $I11, 62, rx498_fail
    add rx498_pos, 1
  # rx pass
    rx498_cur."!cursor_pass"(rx498_pos, "")
    if_null rx498_debug, debug_431
    rx498_cur."!cursor_debug"("PASS", "", " at pos=", rx498_pos)
  debug_431:
    .return (rx498_cur)
  rx498_restart:
    if_null rx498_debug, debug_432
    rx498_cur."!cursor_debug"("NEXT", "")
  debug_432:
  rx498_fail:
    (rx498_rep, rx498_pos, $I10, $P10) = rx498_cur."!mark_fail"(0)
    lt rx498_pos, -1, rx498_done
    eq rx498_pos, -1, rx498_fail
    jump $I10
  rx498_done:
    rx498_cur."!cursor_fail"()
    if_null rx498_debug, debug_433
    rx498_cur."!cursor_debug"("FAIL", "")
  debug_433:
    .return (rx498_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<!>"  :subid("145_1295142316.828") :method :outer("11_1295142316.828")
.annotate 'line', 3
    .const 'Sub' $P508 = "147_1295142316.828" 
    capture_lex $P508
    .local string rx501_tgt
    .local int rx501_pos
    .local int rx501_off
    .local int rx501_eos
    .local int rx501_rep
    .local pmc rx501_cur
    .local pmc rx501_debug
    (rx501_cur, rx501_pos, rx501_tgt, $I10) = self."!cursor_start"()
    getattribute rx501_debug, rx501_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx501_cur
    .local pmc match
    .lex "$/", match
    length rx501_eos, rx501_tgt
    gt rx501_pos, rx501_eos, rx501_done
    set rx501_off, 0
    lt rx501_pos, 2, rx501_start
    sub rx501_off, rx501_pos, 1
    substr rx501_tgt, rx501_tgt, rx501_off
  rx501_start:
    eq $I10, 1, rx501_restart
    if_null rx501_debug, debug_437
    rx501_cur."!cursor_debug"("START", "assertion:sym<!>")
  debug_437:
    $I10 = self.'from'()
    ne $I10, -1, rxscan505_done
    goto rxscan505_scan
  rxscan505_loop:
    ($P10) = rx501_cur."from"()
    inc $P10
    set rx501_pos, $P10
    ge rx501_pos, rx501_eos, rxscan505_done
  rxscan505_scan:
    set_addr $I10, rxscan505_loop
    rx501_cur."!mark_push"(0, rx501_pos, $I10)
  rxscan505_done:
.annotate 'line', 157
  # rx literal  "!"
    add $I11, rx501_pos, 1
    gt $I11, rx501_eos, rx501_fail
    sub $I11, rx501_pos, rx501_off
    ord $I11, rx501_tgt, $I11
    ne $I11, 33, rx501_fail
    add rx501_pos, 1
  alt506_0:
    set_addr $I10, alt506_1
    rx501_cur."!mark_push"(0, rx501_pos, $I10)
  # rx subrule "before" subtype=zerowidth negate=
    rx501_cur."!cursor_pos"(rx501_pos)
    .const 'Sub' $P508 = "147_1295142316.828" 
    capture_lex $P508
    $P10 = rx501_cur."before"($P508)
    unless $P10, rx501_fail
    goto alt506_end
  alt506_1:
  # rx subrule "assertion" subtype=capture negate=
    rx501_cur."!cursor_pos"(rx501_pos)
    $P10 = rx501_cur."assertion"()
    unless $P10, rx501_fail
    rx501_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx501_pos = $P10."pos"()
  alt506_end:
  # rx pass
    rx501_cur."!cursor_pass"(rx501_pos, "assertion:sym<!>")
    if_null rx501_debug, debug_442
    rx501_cur."!cursor_debug"("PASS", "assertion:sym<!>", " at pos=", rx501_pos)
  debug_442:
    .return (rx501_cur)
  rx501_restart:
.annotate 'line', 3
    if_null rx501_debug, debug_443
    rx501_cur."!cursor_debug"("NEXT", "assertion:sym<!>")
  debug_443:
  rx501_fail:
    (rx501_rep, rx501_pos, $I10, $P10) = rx501_cur."!mark_fail"(0)
    lt rx501_pos, -1, rx501_done
    eq rx501_pos, -1, rx501_fail
    jump $I10
  rx501_done:
    rx501_cur."!cursor_fail"()
    if_null rx501_debug, debug_444
    rx501_cur."!cursor_debug"("FAIL", "assertion:sym<!>")
  debug_444:
    .return (rx501_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<!>"  :subid("146_1295142316.828") :method
.annotate 'line', 3
    $P503 = self."!PREFIX__!subrule"("assertion", "!")
    new $P504, "ResizablePMCArray"
    push $P504, $P503
    push $P504, "!"
    .return ($P504)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block507"  :anon :subid("147_1295142316.828") :method :outer("145_1295142316.828")
.annotate 'line', 157
    .local string rx509_tgt
    .local int rx509_pos
    .local int rx509_off
    .local int rx509_eos
    .local int rx509_rep
    .local pmc rx509_cur
    .local pmc rx509_debug
    (rx509_cur, rx509_pos, rx509_tgt, $I10) = self."!cursor_start"()
    getattribute rx509_debug, rx509_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx509_cur
    .local pmc match
    .lex "$/", match
    length rx509_eos, rx509_tgt
    gt rx509_pos, rx509_eos, rx509_done
    set rx509_off, 0
    lt rx509_pos, 2, rx509_start
    sub rx509_off, rx509_pos, 1
    substr rx509_tgt, rx509_tgt, rx509_off
  rx509_start:
    eq $I10, 1, rx509_restart
    if_null rx509_debug, debug_438
    rx509_cur."!cursor_debug"("START", "")
  debug_438:
    $I10 = self.'from'()
    ne $I10, -1, rxscan510_done
    goto rxscan510_scan
  rxscan510_loop:
    ($P10) = rx509_cur."from"()
    inc $P10
    set rx509_pos, $P10
    ge rx509_pos, rx509_eos, rxscan510_done
  rxscan510_scan:
    set_addr $I10, rxscan510_loop
    rx509_cur."!mark_push"(0, rx509_pos, $I10)
  rxscan510_done:
  # rx literal  ">"
    add $I11, rx509_pos, 1
    gt $I11, rx509_eos, rx509_fail
    sub $I11, rx509_pos, rx509_off
    ord $I11, rx509_tgt, $I11
    ne $I11, 62, rx509_fail
    add rx509_pos, 1
  # rx pass
    rx509_cur."!cursor_pass"(rx509_pos, "")
    if_null rx509_debug, debug_439
    rx509_cur."!cursor_debug"("PASS", "", " at pos=", rx509_pos)
  debug_439:
    .return (rx509_cur)
  rx509_restart:
    if_null rx509_debug, debug_440
    rx509_cur."!cursor_debug"("NEXT", "")
  debug_440:
  rx509_fail:
    (rx509_rep, rx509_pos, $I10, $P10) = rx509_cur."!mark_fail"(0)
    lt rx509_pos, -1, rx509_done
    eq rx509_pos, -1, rx509_fail
    jump $I10
  rx509_done:
    rx509_cur."!cursor_fail"()
    if_null rx509_debug, debug_441
    rx509_cur."!cursor_debug"("FAIL", "")
  debug_441:
    .return (rx509_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<method>"  :subid("148_1295142316.828") :method :outer("11_1295142316.828")
.annotate 'line', 3
    .local string rx512_tgt
    .local int rx512_pos
    .local int rx512_off
    .local int rx512_eos
    .local int rx512_rep
    .local pmc rx512_cur
    .local pmc rx512_debug
    (rx512_cur, rx512_pos, rx512_tgt, $I10) = self."!cursor_start"()
    getattribute rx512_debug, rx512_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx512_cur
    .local pmc match
    .lex "$/", match
    length rx512_eos, rx512_tgt
    gt rx512_pos, rx512_eos, rx512_done
    set rx512_off, 0
    lt rx512_pos, 2, rx512_start
    sub rx512_off, rx512_pos, 1
    substr rx512_tgt, rx512_tgt, rx512_off
  rx512_start:
    eq $I10, 1, rx512_restart
    if_null rx512_debug, debug_445
    rx512_cur."!cursor_debug"("START", "assertion:sym<method>")
  debug_445:
    $I10 = self.'from'()
    ne $I10, -1, rxscan516_done
    goto rxscan516_scan
  rxscan516_loop:
    ($P10) = rx512_cur."from"()
    inc $P10
    set rx512_pos, $P10
    ge rx512_pos, rx512_eos, rxscan516_done
  rxscan516_scan:
    set_addr $I10, rxscan516_loop
    rx512_cur."!mark_push"(0, rx512_pos, $I10)
  rxscan516_done:
.annotate 'line', 160
  # rx literal  "."
    add $I11, rx512_pos, 1
    gt $I11, rx512_eos, rx512_fail
    sub $I11, rx512_pos, rx512_off
    ord $I11, rx512_tgt, $I11
    ne $I11, 46, rx512_fail
    add rx512_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx512_cur."!cursor_pos"(rx512_pos)
    $P10 = rx512_cur."assertion"()
    unless $P10, rx512_fail
    rx512_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx512_pos = $P10."pos"()
.annotate 'line', 159
  # rx pass
    rx512_cur."!cursor_pass"(rx512_pos, "assertion:sym<method>")
    if_null rx512_debug, debug_446
    rx512_cur."!cursor_debug"("PASS", "assertion:sym<method>", " at pos=", rx512_pos)
  debug_446:
    .return (rx512_cur)
  rx512_restart:
.annotate 'line', 3
    if_null rx512_debug, debug_447
    rx512_cur."!cursor_debug"("NEXT", "assertion:sym<method>")
  debug_447:
  rx512_fail:
    (rx512_rep, rx512_pos, $I10, $P10) = rx512_cur."!mark_fail"(0)
    lt rx512_pos, -1, rx512_done
    eq rx512_pos, -1, rx512_fail
    jump $I10
  rx512_done:
    rx512_cur."!cursor_fail"()
    if_null rx512_debug, debug_448
    rx512_cur."!cursor_debug"("FAIL", "assertion:sym<method>")
  debug_448:
    .return (rx512_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<method>"  :subid("149_1295142316.828") :method
.annotate 'line', 3
    $P514 = self."!PREFIX__!subrule"("assertion", ".")
    new $P515, "ResizablePMCArray"
    push $P515, $P514
    .return ($P515)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<name>"  :subid("150_1295142316.828") :method :outer("11_1295142316.828")
.annotate 'line', 3
    .const 'Sub' $P526 = "152_1295142316.828" 
    capture_lex $P526
    .local string rx518_tgt
    .local int rx518_pos
    .local int rx518_off
    .local int rx518_eos
    .local int rx518_rep
    .local pmc rx518_cur
    .local pmc rx518_debug
    (rx518_cur, rx518_pos, rx518_tgt, $I10) = self."!cursor_start"()
    rx518_cur."!cursor_caparray"("assertion", "arglist", "nibbler")
    getattribute rx518_debug, rx518_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx518_cur
    .local pmc match
    .lex "$/", match
    length rx518_eos, rx518_tgt
    gt rx518_pos, rx518_eos, rx518_done
    set rx518_off, 0
    lt rx518_pos, 2, rx518_start
    sub rx518_off, rx518_pos, 1
    substr rx518_tgt, rx518_tgt, rx518_off
  rx518_start:
    eq $I10, 1, rx518_restart
    if_null rx518_debug, debug_449
    rx518_cur."!cursor_debug"("START", "assertion:sym<name>")
  debug_449:
    $I10 = self.'from'()
    ne $I10, -1, rxscan522_done
    goto rxscan522_scan
  rxscan522_loop:
    ($P10) = rx518_cur."from"()
    inc $P10
    set rx518_pos, $P10
    ge rx518_pos, rx518_eos, rxscan522_done
  rxscan522_scan:
    set_addr $I10, rxscan522_loop
    rx518_cur."!mark_push"(0, rx518_pos, $I10)
  rxscan522_done:
.annotate 'line', 164
  # rx subrule "identifier" subtype=capture negate=
    rx518_cur."!cursor_pos"(rx518_pos)
    $P10 = rx518_cur."identifier"()
    unless $P10, rx518_fail
    rx518_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("longname")
    rx518_pos = $P10."pos"()
.annotate 'line', 171
  # rx rxquantr523 ** 0..1
    set_addr $I10, rxquantr523_done
    rx518_cur."!mark_push"(0, rx518_pos, $I10)
  rxquantr523_loop:
  alt524_0:
.annotate 'line', 165
    set_addr $I10, alt524_1
    rx518_cur."!mark_push"(0, rx518_pos, $I10)
.annotate 'line', 166
  # rx subrule "before" subtype=zerowidth negate=
    rx518_cur."!cursor_pos"(rx518_pos)
    .const 'Sub' $P526 = "152_1295142316.828" 
    capture_lex $P526
    $P10 = rx518_cur."before"($P526)
    unless $P10, rx518_fail
    goto alt524_end
  alt524_1:
    set_addr $I10, alt524_2
    rx518_cur."!mark_push"(0, rx518_pos, $I10)
.annotate 'line', 167
  # rx literal  "="
    add $I11, rx518_pos, 1
    gt $I11, rx518_eos, rx518_fail
    sub $I11, rx518_pos, rx518_off
    ord $I11, rx518_tgt, $I11
    ne $I11, 61, rx518_fail
    add rx518_pos, 1
  # rx subrule "assertion" subtype=capture negate=
    rx518_cur."!cursor_pos"(rx518_pos)
    $P10 = rx518_cur."assertion"()
    unless $P10, rx518_fail
    rx518_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("assertion")
    rx518_pos = $P10."pos"()
    goto alt524_end
  alt524_2:
    set_addr $I10, alt524_3
    rx518_cur."!mark_push"(0, rx518_pos, $I10)
.annotate 'line', 168
  # rx literal  ":"
    add $I11, rx518_pos, 1
    gt $I11, rx518_eos, rx518_fail
    sub $I11, rx518_pos, rx518_off
    ord $I11, rx518_tgt, $I11
    ne $I11, 58, rx518_fail
    add rx518_pos, 1
  # rx subrule "arglist" subtype=capture negate=
    rx518_cur."!cursor_pos"(rx518_pos)
    $P10 = rx518_cur."arglist"()
    unless $P10, rx518_fail
    rx518_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx518_pos = $P10."pos"()
    goto alt524_end
  alt524_3:
    set_addr $I10, alt524_4
    rx518_cur."!mark_push"(0, rx518_pos, $I10)
.annotate 'line', 169
  # rx literal  "("
    add $I11, rx518_pos, 1
    gt $I11, rx518_eos, rx518_fail
    sub $I11, rx518_pos, rx518_off
    ord $I11, rx518_tgt, $I11
    ne $I11, 40, rx518_fail
    add rx518_pos, 1
  # rx subrule "arglist" subtype=capture negate=
    rx518_cur."!cursor_pos"(rx518_pos)
    $P10 = rx518_cur."arglist"()
    unless $P10, rx518_fail
    rx518_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("arglist")
    rx518_pos = $P10."pos"()
  # rx literal  ")"
    add $I11, rx518_pos, 1
    gt $I11, rx518_eos, rx518_fail
    sub $I11, rx518_pos, rx518_off
    ord $I11, rx518_tgt, $I11
    ne $I11, 41, rx518_fail
    add rx518_pos, 1
    goto alt524_end
  alt524_4:
.annotate 'line', 170
  # rx subrule "normspace" subtype=method negate=
    rx518_cur."!cursor_pos"(rx518_pos)
    $P10 = rx518_cur."normspace"()
    unless $P10, rx518_fail
    rx518_pos = $P10."pos"()
  # rx subrule "nibbler" subtype=capture negate=
    rx518_cur."!cursor_pos"(rx518_pos)
    $P10 = rx518_cur."nibbler"()
    unless $P10, rx518_fail
    rx518_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx518_pos = $P10."pos"()
  alt524_end:
.annotate 'line', 171
    set_addr $I10, rxquantr523_done
    (rx518_rep) = rx518_cur."!mark_commit"($I10)
  rxquantr523_done:
.annotate 'line', 163
  # rx pass
    rx518_cur."!cursor_pass"(rx518_pos, "assertion:sym<name>")
    if_null rx518_debug, debug_454
    rx518_cur."!cursor_debug"("PASS", "assertion:sym<name>", " at pos=", rx518_pos)
  debug_454:
    .return (rx518_cur)
  rx518_restart:
.annotate 'line', 3
    if_null rx518_debug, debug_455
    rx518_cur."!cursor_debug"("NEXT", "assertion:sym<name>")
  debug_455:
  rx518_fail:
    (rx518_rep, rx518_pos, $I10, $P10) = rx518_cur."!mark_fail"(0)
    lt rx518_pos, -1, rx518_done
    eq rx518_pos, -1, rx518_fail
    jump $I10
  rx518_done:
    rx518_cur."!cursor_fail"()
    if_null rx518_debug, debug_456
    rx518_cur."!cursor_debug"("FAIL", "assertion:sym<name>")
  debug_456:
    .return (rx518_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<name>"  :subid("151_1295142316.828") :method
.annotate 'line', 3
    $P520 = self."!PREFIX__!subrule"("identifier", "")
    new $P521, "ResizablePMCArray"
    push $P521, $P520
    .return ($P521)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block525"  :anon :subid("152_1295142316.828") :method :outer("150_1295142316.828")
.annotate 'line', 166
    .local string rx527_tgt
    .local int rx527_pos
    .local int rx527_off
    .local int rx527_eos
    .local int rx527_rep
    .local pmc rx527_cur
    .local pmc rx527_debug
    (rx527_cur, rx527_pos, rx527_tgt, $I10) = self."!cursor_start"()
    getattribute rx527_debug, rx527_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx527_cur
    .local pmc match
    .lex "$/", match
    length rx527_eos, rx527_tgt
    gt rx527_pos, rx527_eos, rx527_done
    set rx527_off, 0
    lt rx527_pos, 2, rx527_start
    sub rx527_off, rx527_pos, 1
    substr rx527_tgt, rx527_tgt, rx527_off
  rx527_start:
    eq $I10, 1, rx527_restart
    if_null rx527_debug, debug_450
    rx527_cur."!cursor_debug"("START", "")
  debug_450:
    $I10 = self.'from'()
    ne $I10, -1, rxscan528_done
    goto rxscan528_scan
  rxscan528_loop:
    ($P10) = rx527_cur."from"()
    inc $P10
    set rx527_pos, $P10
    ge rx527_pos, rx527_eos, rxscan528_done
  rxscan528_scan:
    set_addr $I10, rxscan528_loop
    rx527_cur."!mark_push"(0, rx527_pos, $I10)
  rxscan528_done:
  # rx literal  ">"
    add $I11, rx527_pos, 1
    gt $I11, rx527_eos, rx527_fail
    sub $I11, rx527_pos, rx527_off
    ord $I11, rx527_tgt, $I11
    ne $I11, 62, rx527_fail
    add rx527_pos, 1
  # rx pass
    rx527_cur."!cursor_pass"(rx527_pos, "")
    if_null rx527_debug, debug_451
    rx527_cur."!cursor_debug"("PASS", "", " at pos=", rx527_pos)
  debug_451:
    .return (rx527_cur)
  rx527_restart:
    if_null rx527_debug, debug_452
    rx527_cur."!cursor_debug"("NEXT", "")
  debug_452:
  rx527_fail:
    (rx527_rep, rx527_pos, $I10, $P10) = rx527_cur."!mark_fail"(0)
    lt rx527_pos, -1, rx527_done
    eq rx527_pos, -1, rx527_fail
    jump $I10
  rx527_done:
    rx527_cur."!cursor_fail"()
    if_null rx527_debug, debug_453
    rx527_cur."!cursor_debug"("FAIL", "")
  debug_453:
    .return (rx527_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "assertion:sym<[>"  :subid("153_1295142316.828") :method :outer("11_1295142316.828")
.annotate 'line', 3
    .const 'Sub' $P535 = "155_1295142316.828" 
    capture_lex $P535
    .local string rx530_tgt
    .local int rx530_pos
    .local int rx530_off
    .local int rx530_eos
    .local int rx530_rep
    .local pmc rx530_cur
    .local pmc rx530_debug
    (rx530_cur, rx530_pos, rx530_tgt, $I10) = self."!cursor_start"()
    rx530_cur."!cursor_caparray"("cclass_elem")
    getattribute rx530_debug, rx530_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx530_cur
    .local pmc match
    .lex "$/", match
    length rx530_eos, rx530_tgt
    gt rx530_pos, rx530_eos, rx530_done
    set rx530_off, 0
    lt rx530_pos, 2, rx530_start
    sub rx530_off, rx530_pos, 1
    substr rx530_tgt, rx530_tgt, rx530_off
  rx530_start:
    eq $I10, 1, rx530_restart
    if_null rx530_debug, debug_457
    rx530_cur."!cursor_debug"("START", "assertion:sym<[>")
  debug_457:
    $I10 = self.'from'()
    ne $I10, -1, rxscan533_done
    goto rxscan533_scan
  rxscan533_loop:
    ($P10) = rx530_cur."from"()
    inc $P10
    set rx530_pos, $P10
    ge rx530_pos, rx530_eos, rxscan533_done
  rxscan533_scan:
    set_addr $I10, rxscan533_loop
    rx530_cur."!mark_push"(0, rx530_pos, $I10)
  rxscan533_done:
.annotate 'line', 174
  # rx subrule "before" subtype=zerowidth negate=
    rx530_cur."!cursor_pos"(rx530_pos)
    .const 'Sub' $P535 = "155_1295142316.828" 
    capture_lex $P535
    $P10 = rx530_cur."before"($P535)
    unless $P10, rx530_fail
  # rx rxquantr539 ** 1..*
    set_addr $I10, rxquantr539_done
    rx530_cur."!mark_push"(0, -1, $I10)
  rxquantr539_loop:
  # rx subrule "cclass_elem" subtype=capture negate=
    rx530_cur."!cursor_pos"(rx530_pos)
    $P10 = rx530_cur."cclass_elem"()
    unless $P10, rx530_fail
    goto rxsubrule540_pass
  rxsubrule540_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx530_fail
  rxsubrule540_pass:
    set_addr $I10, rxsubrule540_back
    rx530_cur."!mark_push"(0, rx530_pos, $I10, $P10)
    $P10."!cursor_names"("cclass_elem")
    rx530_pos = $P10."pos"()
    set_addr $I10, rxquantr539_done
    (rx530_rep) = rx530_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr539_done
    rx530_cur."!mark_push"(rx530_rep, rx530_pos, $I10)
    goto rxquantr539_loop
  rxquantr539_done:
  # rx pass
    rx530_cur."!cursor_pass"(rx530_pos, "assertion:sym<[>")
    if_null rx530_debug, debug_462
    rx530_cur."!cursor_debug"("PASS", "assertion:sym<[>", " at pos=", rx530_pos)
  debug_462:
    .return (rx530_cur)
  rx530_restart:
.annotate 'line', 3
    if_null rx530_debug, debug_463
    rx530_cur."!cursor_debug"("NEXT", "assertion:sym<[>")
  debug_463:
  rx530_fail:
    (rx530_rep, rx530_pos, $I10, $P10) = rx530_cur."!mark_fail"(0)
    lt rx530_pos, -1, rx530_done
    eq rx530_pos, -1, rx530_fail
    jump $I10
  rx530_done:
    rx530_cur."!cursor_fail"()
    if_null rx530_debug, debug_464
    rx530_cur."!cursor_debug"("FAIL", "assertion:sym<[>")
  debug_464:
    .return (rx530_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__assertion:sym<[>"  :subid("154_1295142316.828") :method
.annotate 'line', 3
    new $P532, "ResizablePMCArray"
    push $P532, ""
    .return ($P532)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block534"  :anon :subid("155_1295142316.828") :method :outer("153_1295142316.828")
.annotate 'line', 174
    .local string rx536_tgt
    .local int rx536_pos
    .local int rx536_off
    .local int rx536_eos
    .local int rx536_rep
    .local pmc rx536_cur
    .local pmc rx536_debug
    (rx536_cur, rx536_pos, rx536_tgt, $I10) = self."!cursor_start"()
    getattribute rx536_debug, rx536_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx536_cur
    .local pmc match
    .lex "$/", match
    length rx536_eos, rx536_tgt
    gt rx536_pos, rx536_eos, rx536_done
    set rx536_off, 0
    lt rx536_pos, 2, rx536_start
    sub rx536_off, rx536_pos, 1
    substr rx536_tgt, rx536_tgt, rx536_off
  rx536_start:
    eq $I10, 1, rx536_restart
    if_null rx536_debug, debug_458
    rx536_cur."!cursor_debug"("START", "")
  debug_458:
    $I10 = self.'from'()
    ne $I10, -1, rxscan537_done
    goto rxscan537_scan
  rxscan537_loop:
    ($P10) = rx536_cur."from"()
    inc $P10
    set rx536_pos, $P10
    ge rx536_pos, rx536_eos, rxscan537_done
  rxscan537_scan:
    set_addr $I10, rxscan537_loop
    rx536_cur."!mark_push"(0, rx536_pos, $I10)
  rxscan537_done:
  alt538_0:
    set_addr $I10, alt538_1
    rx536_cur."!mark_push"(0, rx536_pos, $I10)
  # rx literal  "["
    add $I11, rx536_pos, 1
    gt $I11, rx536_eos, rx536_fail
    sub $I11, rx536_pos, rx536_off
    ord $I11, rx536_tgt, $I11
    ne $I11, 91, rx536_fail
    add rx536_pos, 1
    goto alt538_end
  alt538_1:
    set_addr $I10, alt538_2
    rx536_cur."!mark_push"(0, rx536_pos, $I10)
  # rx literal  "+"
    add $I11, rx536_pos, 1
    gt $I11, rx536_eos, rx536_fail
    sub $I11, rx536_pos, rx536_off
    ord $I11, rx536_tgt, $I11
    ne $I11, 43, rx536_fail
    add rx536_pos, 1
    goto alt538_end
  alt538_2:
  # rx literal  "-"
    add $I11, rx536_pos, 1
    gt $I11, rx536_eos, rx536_fail
    sub $I11, rx536_pos, rx536_off
    ord $I11, rx536_tgt, $I11
    ne $I11, 45, rx536_fail
    add rx536_pos, 1
  alt538_end:
  # rx pass
    rx536_cur."!cursor_pass"(rx536_pos, "")
    if_null rx536_debug, debug_459
    rx536_cur."!cursor_debug"("PASS", "", " at pos=", rx536_pos)
  debug_459:
    .return (rx536_cur)
  rx536_restart:
    if_null rx536_debug, debug_460
    rx536_cur."!cursor_debug"("NEXT", "")
  debug_460:
  rx536_fail:
    (rx536_rep, rx536_pos, $I10, $P10) = rx536_cur."!mark_fail"(0)
    lt rx536_pos, -1, rx536_done
    eq rx536_pos, -1, rx536_fail
    jump $I10
  rx536_done:
    rx536_cur."!cursor_fail"()
    if_null rx536_debug, debug_461
    rx536_cur."!cursor_debug"("FAIL", "")
  debug_461:
    .return (rx536_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "cclass_elem"  :subid("156_1295142316.828") :method :outer("11_1295142316.828")
.annotate 'line', 3
    .const 'Sub' $P553 = "158_1295142316.828" 
    capture_lex $P553
    .local string rx542_tgt
    .local int rx542_pos
    .local int rx542_off
    .local int rx542_eos
    .local int rx542_rep
    .local pmc rx542_cur
    .local pmc rx542_debug
    (rx542_cur, rx542_pos, rx542_tgt, $I10) = self."!cursor_start"()
    rx542_cur."!cursor_caparray"("charspec")
    getattribute rx542_debug, rx542_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx542_cur
    .local pmc match
    .lex "$/", match
    length rx542_eos, rx542_tgt
    gt rx542_pos, rx542_eos, rx542_done
    set rx542_off, 0
    lt rx542_pos, 2, rx542_start
    sub rx542_off, rx542_pos, 1
    substr rx542_tgt, rx542_tgt, rx542_off
  rx542_start:
    eq $I10, 1, rx542_restart
    if_null rx542_debug, debug_465
    rx542_cur."!cursor_debug"("START", "cclass_elem")
  debug_465:
    $I10 = self.'from'()
    ne $I10, -1, rxscan545_done
    goto rxscan545_scan
  rxscan545_loop:
    ($P10) = rx542_cur."from"()
    inc $P10
    set rx542_pos, $P10
    ge rx542_pos, rx542_eos, rxscan545_done
  rxscan545_scan:
    set_addr $I10, rxscan545_loop
    rx542_cur."!mark_push"(0, rx542_pos, $I10)
  rxscan545_done:
.annotate 'line', 177
  # rx subcapture "sign"
    set_addr $I10, rxcap_547_fail
    rx542_cur."!mark_push"(0, rx542_pos, $I10)
  alt546_0:
    set_addr $I10, alt546_1
    rx542_cur."!mark_push"(0, rx542_pos, $I10)
  # rx literal  "+"
    add $I11, rx542_pos, 1
    gt $I11, rx542_eos, rx542_fail
    sub $I11, rx542_pos, rx542_off
    ord $I11, rx542_tgt, $I11
    ne $I11, 43, rx542_fail
    add rx542_pos, 1
    goto alt546_end
  alt546_1:
    set_addr $I10, alt546_2
    rx542_cur."!mark_push"(0, rx542_pos, $I10)
  # rx literal  "-"
    add $I11, rx542_pos, 1
    gt $I11, rx542_eos, rx542_fail
    sub $I11, rx542_pos, rx542_off
    ord $I11, rx542_tgt, $I11
    ne $I11, 45, rx542_fail
    add rx542_pos, 1
    goto alt546_end
  alt546_2:
  alt546_end:
    set_addr $I10, rxcap_547_fail
    ($I12, $I11) = rx542_cur."!mark_peek"($I10)
    rx542_cur."!cursor_pos"($I11)
    ($P10) = rx542_cur."!cursor_start"()
    $P10."!cursor_pass"(rx542_pos, "")
    rx542_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sign")
    goto rxcap_547_done
  rxcap_547_fail:
    goto rx542_fail
  rxcap_547_done:
.annotate 'line', 178
  # rx rxquantr548 ** 0..1
    set_addr $I10, rxquantr548_done
    rx542_cur."!mark_push"(0, rx542_pos, $I10)
  rxquantr548_loop:
  # rx subrule "normspace" subtype=method negate=
    rx542_cur."!cursor_pos"(rx542_pos)
    $P10 = rx542_cur."normspace"()
    unless $P10, rx542_fail
    goto rxsubrule549_pass
  rxsubrule549_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx542_fail
  rxsubrule549_pass:
    set_addr $I10, rxsubrule549_back
    rx542_cur."!mark_push"(0, rx542_pos, $I10, $P10)
    rx542_pos = $P10."pos"()
    set_addr $I10, rxquantr548_done
    (rx542_rep) = rx542_cur."!mark_commit"($I10)
  rxquantr548_done:
  alt550_0:
.annotate 'line', 179
    set_addr $I10, alt550_1
    rx542_cur."!mark_push"(0, rx542_pos, $I10)
.annotate 'line', 180
  # rx literal  "["
    add $I11, rx542_pos, 1
    gt $I11, rx542_eos, rx542_fail
    sub $I11, rx542_pos, rx542_off
    ord $I11, rx542_tgt, $I11
    ne $I11, 91, rx542_fail
    add rx542_pos, 1
.annotate 'line', 183
  # rx rxquantr551 ** 0..*
    set_addr $I10, rxquantr551_done
    rx542_cur."!mark_push"(0, rx542_pos, $I10)
  rxquantr551_loop:
.annotate 'line', 180
  # rx subrule $P553 subtype=capture negate=
    rx542_cur."!cursor_pos"(rx542_pos)
    .const 'Sub' $P553 = "158_1295142316.828" 
    capture_lex $P553
    $P10 = rx542_cur.$P553()
    unless $P10, rx542_fail
    goto rxsubrule571_pass
  rxsubrule571_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx542_fail
  rxsubrule571_pass:
    set_addr $I10, rxsubrule571_back
    rx542_cur."!mark_push"(0, rx542_pos, $I10, $P10)
    $P10."!cursor_names"("charspec")
    rx542_pos = $P10."pos"()
.annotate 'line', 183
    set_addr $I10, rxquantr551_done
    (rx542_rep) = rx542_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr551_done
    rx542_cur."!mark_push"(rx542_rep, rx542_pos, $I10)
    goto rxquantr551_loop
  rxquantr551_done:
.annotate 'line', 184
  # rx charclass_q s r 0..-1
    sub $I10, rx542_pos, rx542_off
    find_not_cclass $I11, 32, rx542_tgt, $I10, rx542_eos
    add rx542_pos, rx542_off, $I11
  # rx literal  "]"
    add $I11, rx542_pos, 1
    gt $I11, rx542_eos, rx542_fail
    sub $I11, rx542_pos, rx542_off
    ord $I11, rx542_tgt, $I11
    ne $I11, 93, rx542_fail
    add rx542_pos, 1
.annotate 'line', 180
    goto alt550_end
  alt550_1:
.annotate 'line', 185
  # rx subcapture "name"
    set_addr $I10, rxcap_572_fail
    rx542_cur."!mark_push"(0, rx542_pos, $I10)
  # rx charclass_q w r 1..-1
    sub $I10, rx542_pos, rx542_off
    find_not_cclass $I11, 8192, rx542_tgt, $I10, rx542_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx542_fail
    add rx542_pos, rx542_off, $I11
    set_addr $I10, rxcap_572_fail
    ($I12, $I11) = rx542_cur."!mark_peek"($I10)
    rx542_cur."!cursor_pos"($I11)
    ($P10) = rx542_cur."!cursor_start"()
    $P10."!cursor_pass"(rx542_pos, "")
    rx542_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    goto rxcap_572_done
  rxcap_572_fail:
    goto rx542_fail
  rxcap_572_done:
  alt550_end:
.annotate 'line', 187
  # rx rxquantr573 ** 0..1
    set_addr $I10, rxquantr573_done
    rx542_cur."!mark_push"(0, rx542_pos, $I10)
  rxquantr573_loop:
  # rx subrule "normspace" subtype=method negate=
    rx542_cur."!cursor_pos"(rx542_pos)
    $P10 = rx542_cur."normspace"()
    unless $P10, rx542_fail
    goto rxsubrule574_pass
  rxsubrule574_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx542_fail
  rxsubrule574_pass:
    set_addr $I10, rxsubrule574_back
    rx542_cur."!mark_push"(0, rx542_pos, $I10, $P10)
    rx542_pos = $P10."pos"()
    set_addr $I10, rxquantr573_done
    (rx542_rep) = rx542_cur."!mark_commit"($I10)
  rxquantr573_done:
.annotate 'line', 176
  # rx pass
    rx542_cur."!cursor_pass"(rx542_pos, "cclass_elem")
    if_null rx542_debug, debug_482
    rx542_cur."!cursor_debug"("PASS", "cclass_elem", " at pos=", rx542_pos)
  debug_482:
    .return (rx542_cur)
  rx542_restart:
.annotate 'line', 3
    if_null rx542_debug, debug_483
    rx542_cur."!cursor_debug"("NEXT", "cclass_elem")
  debug_483:
  rx542_fail:
    (rx542_rep, rx542_pos, $I10, $P10) = rx542_cur."!mark_fail"(0)
    lt rx542_pos, -1, rx542_done
    eq rx542_pos, -1, rx542_fail
    jump $I10
  rx542_done:
    rx542_cur."!cursor_fail"()
    if_null rx542_debug, debug_484
    rx542_cur."!cursor_debug"("FAIL", "cclass_elem")
  debug_484:
    .return (rx542_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__cclass_elem"  :subid("157_1295142316.828") :method
.annotate 'line', 3
    new $P544, "ResizablePMCArray"
    push $P544, ""
    push $P544, "-"
    push $P544, "+"
    .return ($P544)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block552"  :anon :subid("158_1295142316.828") :method :outer("156_1295142316.828")
.annotate 'line', 180
    .const 'Sub' $P568 = "161_1295142316.828" 
    capture_lex $P568
    .const 'Sub' $P563 = "160_1295142316.828" 
    capture_lex $P563
    .const 'Sub' $P559 = "159_1295142316.828" 
    capture_lex $P559
    .local string rx554_tgt
    .local int rx554_pos
    .local int rx554_off
    .local int rx554_eos
    .local int rx554_rep
    .local pmc rx554_cur
    .local pmc rx554_debug
    (rx554_cur, rx554_pos, rx554_tgt, $I10) = self."!cursor_start"()
    rx554_cur."!cursor_caparray"("1")
    getattribute rx554_debug, rx554_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx554_cur
    .local pmc match
    .lex "$/", match
    length rx554_eos, rx554_tgt
    gt rx554_pos, rx554_eos, rx554_done
    set rx554_off, 0
    lt rx554_pos, 2, rx554_start
    sub rx554_off, rx554_pos, 1
    substr rx554_tgt, rx554_tgt, rx554_off
  rx554_start:
    eq $I10, 1, rx554_restart
    if_null rx554_debug, debug_466
    rx554_cur."!cursor_debug"("START", "")
  debug_466:
    $I10 = self.'from'()
    ne $I10, -1, rxscan555_done
    goto rxscan555_scan
  rxscan555_loop:
    ($P10) = rx554_cur."from"()
    inc $P10
    set rx554_pos, $P10
    ge rx554_pos, rx554_eos, rxscan555_done
  rxscan555_scan:
    set_addr $I10, rxscan555_loop
    rx554_cur."!mark_push"(0, rx554_pos, $I10)
  rxscan555_done:
  alt556_0:
    set_addr $I10, alt556_1
    rx554_cur."!mark_push"(0, rx554_pos, $I10)
.annotate 'line', 181
  # rx charclass_q s r 0..-1
    sub $I10, rx554_pos, rx554_off
    find_not_cclass $I11, 32, rx554_tgt, $I10, rx554_eos
    add rx554_pos, rx554_off, $I11
  # rx literal  "-"
    add $I11, rx554_pos, 1
    gt $I11, rx554_eos, rx554_fail
    sub $I11, rx554_pos, rx554_off
    ord $I11, rx554_tgt, $I11
    ne $I11, 45, rx554_fail
    add rx554_pos, 1
  # rx subrule "obs" subtype=method negate=
    rx554_cur."!cursor_pos"(rx554_pos)
    $P10 = rx554_cur."obs"("- as character range", "..")
    unless $P10, rx554_fail
    rx554_pos = $P10."pos"()
    goto alt556_end
  alt556_1:
.annotate 'line', 182
  # rx charclass_q s r 0..-1
    sub $I10, rx554_pos, rx554_off
    find_not_cclass $I11, 32, rx554_tgt, $I10, rx554_eos
    add rx554_pos, rx554_off, $I11
  alt557_0:
    set_addr $I10, alt557_1
    rx554_cur."!mark_push"(0, rx554_pos, $I10)
  # rx literal  "\\"
    add $I11, rx554_pos, 1
    gt $I11, rx554_eos, rx554_fail
    sub $I11, rx554_pos, rx554_off
    ord $I11, rx554_tgt, $I11
    ne $I11, 92, rx554_fail
    add rx554_pos, 1
  # rx subrule $P559 subtype=capture negate=
    rx554_cur."!cursor_pos"(rx554_pos)
    .const 'Sub' $P559 = "159_1295142316.828" 
    capture_lex $P559
    $P10 = rx554_cur.$P559()
    unless $P10, rx554_fail
    rx554_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"(0)
    rx554_pos = $P10."pos"()
    goto alt557_end
  alt557_1:
  # rx subrule $P563 subtype=capture negate=
    rx554_cur."!cursor_pos"(rx554_pos)
    .const 'Sub' $P563 = "160_1295142316.828" 
    capture_lex $P563
    $P10 = rx554_cur.$P563()
    unless $P10, rx554_fail
    rx554_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"(0)
    rx554_pos = $P10."pos"()
  alt557_end:
  # rx rxquantr566 ** 0..1
    set_addr $I10, rxquantr566_done
    rx554_cur."!mark_push"(0, rx554_pos, $I10)
  rxquantr566_loop:
  # rx charclass_q s r 0..-1
    sub $I10, rx554_pos, rx554_off
    find_not_cclass $I11, 32, rx554_tgt, $I10, rx554_eos
    add rx554_pos, rx554_off, $I11
  # rx literal  ".."
    add $I11, rx554_pos, 2
    gt $I11, rx554_eos, rx554_fail
    sub $I11, rx554_pos, rx554_off
    substr $S10, rx554_tgt, $I11, 2
    ne $S10, "..", rx554_fail
    add rx554_pos, 2
  # rx charclass_q s r 0..-1
    sub $I10, rx554_pos, rx554_off
    find_not_cclass $I11, 32, rx554_tgt, $I10, rx554_eos
    add rx554_pos, rx554_off, $I11
  # rx subrule $P568 subtype=capture negate=
    rx554_cur."!cursor_pos"(rx554_pos)
    .const 'Sub' $P568 = "161_1295142316.828" 
    capture_lex $P568
    $P10 = rx554_cur.$P568()
    unless $P10, rx554_fail
    rx554_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("1")
    rx554_pos = $P10."pos"()
    set_addr $I10, rxquantr566_done
    (rx554_rep) = rx554_cur."!mark_commit"($I10)
  rxquantr566_done:
  alt556_end:
.annotate 'line', 180
  # rx pass
    rx554_cur."!cursor_pass"(rx554_pos, "")
    if_null rx554_debug, debug_479
    rx554_cur."!cursor_debug"("PASS", "", " at pos=", rx554_pos)
  debug_479:
    .return (rx554_cur)
  rx554_restart:
    if_null rx554_debug, debug_480
    rx554_cur."!cursor_debug"("NEXT", "")
  debug_480:
  rx554_fail:
    (rx554_rep, rx554_pos, $I10, $P10) = rx554_cur."!mark_fail"(0)
    lt rx554_pos, -1, rx554_done
    eq rx554_pos, -1, rx554_fail
    jump $I10
  rx554_done:
    rx554_cur."!cursor_fail"()
    if_null rx554_debug, debug_481
    rx554_cur."!cursor_debug"("FAIL", "")
  debug_481:
    .return (rx554_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block558"  :anon :subid("159_1295142316.828") :method :outer("158_1295142316.828")
.annotate 'line', 182
    .local string rx560_tgt
    .local int rx560_pos
    .local int rx560_off
    .local int rx560_eos
    .local int rx560_rep
    .local pmc rx560_cur
    .local pmc rx560_debug
    (rx560_cur, rx560_pos, rx560_tgt, $I10) = self."!cursor_start"()
    getattribute rx560_debug, rx560_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx560_cur
    .local pmc match
    .lex "$/", match
    length rx560_eos, rx560_tgt
    gt rx560_pos, rx560_eos, rx560_done
    set rx560_off, 0
    lt rx560_pos, 2, rx560_start
    sub rx560_off, rx560_pos, 1
    substr rx560_tgt, rx560_tgt, rx560_off
  rx560_start:
    eq $I10, 1, rx560_restart
    if_null rx560_debug, debug_467
    rx560_cur."!cursor_debug"("START", "")
  debug_467:
    $I10 = self.'from'()
    ne $I10, -1, rxscan561_done
    goto rxscan561_scan
  rxscan561_loop:
    ($P10) = rx560_cur."from"()
    inc $P10
    set rx560_pos, $P10
    ge rx560_pos, rx560_eos, rxscan561_done
  rxscan561_scan:
    set_addr $I10, rxscan561_loop
    rx560_cur."!mark_push"(0, rx560_pos, $I10)
  rxscan561_done:
  # rx charclass .
    ge rx560_pos, rx560_eos, rx560_fail
    inc rx560_pos
  # rx pass
    rx560_cur."!cursor_pass"(rx560_pos, "")
    if_null rx560_debug, debug_468
    rx560_cur."!cursor_debug"("PASS", "", " at pos=", rx560_pos)
  debug_468:
    .return (rx560_cur)
  rx560_restart:
    if_null rx560_debug, debug_469
    rx560_cur."!cursor_debug"("NEXT", "")
  debug_469:
  rx560_fail:
    (rx560_rep, rx560_pos, $I10, $P10) = rx560_cur."!mark_fail"(0)
    lt rx560_pos, -1, rx560_done
    eq rx560_pos, -1, rx560_fail
    jump $I10
  rx560_done:
    rx560_cur."!cursor_fail"()
    if_null rx560_debug, debug_470
    rx560_cur."!cursor_debug"("FAIL", "")
  debug_470:
    .return (rx560_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block562"  :anon :subid("160_1295142316.828") :method :outer("158_1295142316.828")
.annotate 'line', 182
    .local string rx564_tgt
    .local int rx564_pos
    .local int rx564_off
    .local int rx564_eos
    .local int rx564_rep
    .local pmc rx564_cur
    .local pmc rx564_debug
    (rx564_cur, rx564_pos, rx564_tgt, $I10) = self."!cursor_start"()
    getattribute rx564_debug, rx564_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx564_cur
    .local pmc match
    .lex "$/", match
    length rx564_eos, rx564_tgt
    gt rx564_pos, rx564_eos, rx564_done
    set rx564_off, 0
    lt rx564_pos, 2, rx564_start
    sub rx564_off, rx564_pos, 1
    substr rx564_tgt, rx564_tgt, rx564_off
  rx564_start:
    eq $I10, 1, rx564_restart
    if_null rx564_debug, debug_471
    rx564_cur."!cursor_debug"("START", "")
  debug_471:
    $I10 = self.'from'()
    ne $I10, -1, rxscan565_done
    goto rxscan565_scan
  rxscan565_loop:
    ($P10) = rx564_cur."from"()
    inc $P10
    set rx564_pos, $P10
    ge rx564_pos, rx564_eos, rxscan565_done
  rxscan565_scan:
    set_addr $I10, rxscan565_loop
    rx564_cur."!mark_push"(0, rx564_pos, $I10)
  rxscan565_done:
  # rx enumcharlist negate=1 
    ge rx564_pos, rx564_eos, rx564_fail
    sub $I10, rx564_pos, rx564_off
    substr $S10, rx564_tgt, $I10, 1
    index $I11, "]\\", $S10
    ge $I11, 0, rx564_fail
    inc rx564_pos
  # rx pass
    rx564_cur."!cursor_pass"(rx564_pos, "")
    if_null rx564_debug, debug_472
    rx564_cur."!cursor_debug"("PASS", "", " at pos=", rx564_pos)
  debug_472:
    .return (rx564_cur)
  rx564_restart:
    if_null rx564_debug, debug_473
    rx564_cur."!cursor_debug"("NEXT", "")
  debug_473:
  rx564_fail:
    (rx564_rep, rx564_pos, $I10, $P10) = rx564_cur."!mark_fail"(0)
    lt rx564_pos, -1, rx564_done
    eq rx564_pos, -1, rx564_fail
    jump $I10
  rx564_done:
    rx564_cur."!cursor_fail"()
    if_null rx564_debug, debug_474
    rx564_cur."!cursor_debug"("FAIL", "")
  debug_474:
    .return (rx564_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block567"  :anon :subid("161_1295142316.828") :method :outer("158_1295142316.828")
.annotate 'line', 182
    .local string rx569_tgt
    .local int rx569_pos
    .local int rx569_off
    .local int rx569_eos
    .local int rx569_rep
    .local pmc rx569_cur
    .local pmc rx569_debug
    (rx569_cur, rx569_pos, rx569_tgt, $I10) = self."!cursor_start"()
    getattribute rx569_debug, rx569_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx569_cur
    .local pmc match
    .lex "$/", match
    length rx569_eos, rx569_tgt
    gt rx569_pos, rx569_eos, rx569_done
    set rx569_off, 0
    lt rx569_pos, 2, rx569_start
    sub rx569_off, rx569_pos, 1
    substr rx569_tgt, rx569_tgt, rx569_off
  rx569_start:
    eq $I10, 1, rx569_restart
    if_null rx569_debug, debug_475
    rx569_cur."!cursor_debug"("START", "")
  debug_475:
    $I10 = self.'from'()
    ne $I10, -1, rxscan570_done
    goto rxscan570_scan
  rxscan570_loop:
    ($P10) = rx569_cur."from"()
    inc $P10
    set rx569_pos, $P10
    ge rx569_pos, rx569_eos, rxscan570_done
  rxscan570_scan:
    set_addr $I10, rxscan570_loop
    rx569_cur."!mark_push"(0, rx569_pos, $I10)
  rxscan570_done:
  # rx charclass .
    ge rx569_pos, rx569_eos, rx569_fail
    inc rx569_pos
  # rx pass
    rx569_cur."!cursor_pass"(rx569_pos, "")
    if_null rx569_debug, debug_476
    rx569_cur."!cursor_debug"("PASS", "", " at pos=", rx569_pos)
  debug_476:
    .return (rx569_cur)
  rx569_restart:
    if_null rx569_debug, debug_477
    rx569_cur."!cursor_debug"("NEXT", "")
  debug_477:
  rx569_fail:
    (rx569_rep, rx569_pos, $I10, $P10) = rx569_cur."!mark_fail"(0)
    lt rx569_pos, -1, rx569_done
    eq rx569_pos, -1, rx569_fail
    jump $I10
  rx569_done:
    rx569_cur."!cursor_fail"()
    if_null rx569_debug, debug_478
    rx569_cur."!cursor_debug"("FAIL", "")
  debug_478:
    .return (rx569_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_internal"  :subid("162_1295142316.828") :method :outer("11_1295142316.828")
.annotate 'line', 3
    .const 'Sub' $P584 = "164_1295142316.828" 
    capture_lex $P584
    .local string rx576_tgt
    .local int rx576_pos
    .local int rx576_off
    .local int rx576_eos
    .local int rx576_rep
    .local pmc rx576_cur
    .local pmc rx576_debug
    (rx576_cur, rx576_pos, rx576_tgt, $I10) = self."!cursor_start"()
    rx576_cur."!cursor_caparray"("n")
    getattribute rx576_debug, rx576_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx576_cur
    .local pmc match
    .lex "$/", match
    length rx576_eos, rx576_tgt
    gt rx576_pos, rx576_eos, rx576_done
    set rx576_off, 0
    lt rx576_pos, 2, rx576_start
    sub rx576_off, rx576_pos, 1
    substr rx576_tgt, rx576_tgt, rx576_off
  rx576_start:
    eq $I10, 1, rx576_restart
    if_null rx576_debug, debug_485
    rx576_cur."!cursor_debug"("START", "mod_internal")
  debug_485:
    $I10 = self.'from'()
    ne $I10, -1, rxscan580_done
    goto rxscan580_scan
  rxscan580_loop:
    ($P10) = rx576_cur."from"()
    inc $P10
    set rx576_pos, $P10
    ge rx576_pos, rx576_eos, rxscan580_done
  rxscan580_scan:
    set_addr $I10, rxscan580_loop
    rx576_cur."!mark_push"(0, rx576_pos, $I10)
  rxscan580_done:
  alt581_0:
.annotate 'line', 191
    set_addr $I10, alt581_1
    rx576_cur."!mark_push"(0, rx576_pos, $I10)
.annotate 'line', 192
  # rx literal  ":"
    add $I11, rx576_pos, 1
    gt $I11, rx576_eos, rx576_fail
    sub $I11, rx576_pos, rx576_off
    ord $I11, rx576_tgt, $I11
    ne $I11, 58, rx576_fail
    add rx576_pos, 1
  # rx rxquantr582 ** 1..1
    set_addr $I10, rxquantr582_done
    rx576_cur."!mark_push"(0, -1, $I10)
  rxquantr582_loop:
  # rx subrule $P584 subtype=capture negate=
    rx576_cur."!cursor_pos"(rx576_pos)
    .const 'Sub' $P584 = "164_1295142316.828" 
    capture_lex $P584
    $P10 = rx576_cur.$P584()
    unless $P10, rx576_fail
    goto rxsubrule588_pass
  rxsubrule588_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx576_fail
  rxsubrule588_pass:
    set_addr $I10, rxsubrule588_back
    rx576_cur."!mark_push"(0, rx576_pos, $I10, $P10)
    $P10."!cursor_names"("n")
    rx576_pos = $P10."pos"()
    set_addr $I10, rxquantr582_done
    (rx576_rep) = rx576_cur."!mark_commit"($I10)
  rxquantr582_done:
  # rx subrule "mod_ident" subtype=capture negate=
    rx576_cur."!cursor_pos"(rx576_pos)
    $P10 = rx576_cur."mod_ident"()
    unless $P10, rx576_fail
    rx576_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_ident")
    rx576_pos = $P10."pos"()
  # rxanchor rwb
    le rx576_pos, 0, rx576_fail
    sub $I10, rx576_pos, rx576_off
    is_cclass $I11, 8192, rx576_tgt, $I10
    if $I11, rx576_fail
    dec $I10
    is_cclass $I11, 8192, rx576_tgt, $I10
    unless $I11, rx576_fail
    goto alt581_end
  alt581_1:
.annotate 'line', 193
  # rx literal  ":"
    add $I11, rx576_pos, 1
    gt $I11, rx576_eos, rx576_fail
    sub $I11, rx576_pos, rx576_off
    ord $I11, rx576_tgt, $I11
    ne $I11, 58, rx576_fail
    add rx576_pos, 1
  # rx subrule "mod_ident" subtype=capture negate=
    rx576_cur."!cursor_pos"(rx576_pos)
    $P10 = rx576_cur."mod_ident"()
    unless $P10, rx576_fail
    rx576_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("mod_ident")
    rx576_pos = $P10."pos"()
  # rx rxquantr589 ** 0..1
    set_addr $I10, rxquantr589_done
    rx576_cur."!mark_push"(0, rx576_pos, $I10)
  rxquantr589_loop:
  # rx literal  "("
    add $I11, rx576_pos, 1
    gt $I11, rx576_eos, rx576_fail
    sub $I11, rx576_pos, rx576_off
    ord $I11, rx576_tgt, $I11
    ne $I11, 40, rx576_fail
    add rx576_pos, 1
  # rx subcapture "n"
    set_addr $I10, rxcap_590_fail
    rx576_cur."!mark_push"(0, rx576_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx576_pos, rx576_off
    find_not_cclass $I11, 8, rx576_tgt, $I10, rx576_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx576_fail
    add rx576_pos, rx576_off, $I11
    set_addr $I10, rxcap_590_fail
    ($I12, $I11) = rx576_cur."!mark_peek"($I10)
    rx576_cur."!cursor_pos"($I11)
    ($P10) = rx576_cur."!cursor_start"()
    $P10."!cursor_pass"(rx576_pos, "")
    rx576_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("n")
    goto rxcap_590_done
  rxcap_590_fail:
    goto rx576_fail
  rxcap_590_done:
  # rx literal  ")"
    add $I11, rx576_pos, 1
    gt $I11, rx576_eos, rx576_fail
    sub $I11, rx576_pos, rx576_off
    ord $I11, rx576_tgt, $I11
    ne $I11, 41, rx576_fail
    add rx576_pos, 1
    set_addr $I10, rxquantr589_done
    (rx576_rep) = rx576_cur."!mark_commit"($I10)
  rxquantr589_done:
  alt581_end:
.annotate 'line', 190
  # rx pass
    rx576_cur."!cursor_pass"(rx576_pos, "mod_internal")
    if_null rx576_debug, debug_490
    rx576_cur."!cursor_debug"("PASS", "mod_internal", " at pos=", rx576_pos)
  debug_490:
    .return (rx576_cur)
  rx576_restart:
.annotate 'line', 3
    if_null rx576_debug, debug_491
    rx576_cur."!cursor_debug"("NEXT", "mod_internal")
  debug_491:
  rx576_fail:
    (rx576_rep, rx576_pos, $I10, $P10) = rx576_cur."!mark_fail"(0)
    lt rx576_pos, -1, rx576_done
    eq rx576_pos, -1, rx576_fail
    jump $I10
  rx576_done:
    rx576_cur."!cursor_fail"()
    if_null rx576_debug, debug_492
    rx576_cur."!cursor_debug"("FAIL", "mod_internal")
  debug_492:
    .return (rx576_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_internal"  :subid("163_1295142316.828") :method
.annotate 'line', 3
    $P578 = self."!PREFIX__!subrule"("mod_ident", ":")
    new $P579, "ResizablePMCArray"
    push $P579, $P578
    push $P579, ":"
    .return ($P579)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block583"  :anon :subid("164_1295142316.828") :method :outer("162_1295142316.828")
.annotate 'line', 192
    .local string rx585_tgt
    .local int rx585_pos
    .local int rx585_off
    .local int rx585_eos
    .local int rx585_rep
    .local pmc rx585_cur
    .local pmc rx585_debug
    (rx585_cur, rx585_pos, rx585_tgt, $I10) = self."!cursor_start"()
    getattribute rx585_debug, rx585_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx585_cur
    .local pmc match
    .lex "$/", match
    length rx585_eos, rx585_tgt
    gt rx585_pos, rx585_eos, rx585_done
    set rx585_off, 0
    lt rx585_pos, 2, rx585_start
    sub rx585_off, rx585_pos, 1
    substr rx585_tgt, rx585_tgt, rx585_off
  rx585_start:
    eq $I10, 1, rx585_restart
    if_null rx585_debug, debug_486
    rx585_cur."!cursor_debug"("START", "")
  debug_486:
    $I10 = self.'from'()
    ne $I10, -1, rxscan586_done
    goto rxscan586_scan
  rxscan586_loop:
    ($P10) = rx585_cur."from"()
    inc $P10
    set rx585_pos, $P10
    ge rx585_pos, rx585_eos, rxscan586_done
  rxscan586_scan:
    set_addr $I10, rxscan586_loop
    rx585_cur."!mark_push"(0, rx585_pos, $I10)
  rxscan586_done:
  alt587_0:
    set_addr $I10, alt587_1
    rx585_cur."!mark_push"(0, rx585_pos, $I10)
  # rx literal  "!"
    add $I11, rx585_pos, 1
    gt $I11, rx585_eos, rx585_fail
    sub $I11, rx585_pos, rx585_off
    ord $I11, rx585_tgt, $I11
    ne $I11, 33, rx585_fail
    add rx585_pos, 1
    goto alt587_end
  alt587_1:
  # rx charclass_q d r 1..-1
    sub $I10, rx585_pos, rx585_off
    find_not_cclass $I11, 8, rx585_tgt, $I10, rx585_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx585_fail
    add rx585_pos, rx585_off, $I11
  alt587_end:
  # rx pass
    rx585_cur."!cursor_pass"(rx585_pos, "")
    if_null rx585_debug, debug_487
    rx585_cur."!cursor_debug"("PASS", "", " at pos=", rx585_pos)
  debug_487:
    .return (rx585_cur)
  rx585_restart:
    if_null rx585_debug, debug_488
    rx585_cur."!cursor_debug"("NEXT", "")
  debug_488:
  rx585_fail:
    (rx585_rep, rx585_pos, $I10, $P10) = rx585_cur."!mark_fail"(0)
    lt rx585_pos, -1, rx585_done
    eq rx585_pos, -1, rx585_fail
    jump $I10
  rx585_done:
    rx585_cur."!cursor_fail"()
    if_null rx585_debug, debug_489
    rx585_cur."!cursor_debug"("FAIL", "")
  debug_489:
    .return (rx585_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident"  :subid("165_1295142316.828") :method
.annotate 'line', 197
    $P592 = self."!protoregex"("mod_ident")
    .return ($P592)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident"  :subid("166_1295142316.828") :method
.annotate 'line', 197
    $P594 = self."!PREFIX__!protoregex"("mod_ident")
    .return ($P594)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<ignorecase>"  :subid("167_1295142316.828") :method :outer("11_1295142316.828")
.annotate 'line', 3
    .local string rx596_tgt
    .local int rx596_pos
    .local int rx596_off
    .local int rx596_eos
    .local int rx596_rep
    .local pmc rx596_cur
    .local pmc rx596_debug
    (rx596_cur, rx596_pos, rx596_tgt, $I10) = self."!cursor_start"()
    getattribute rx596_debug, rx596_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx596_cur
    .local pmc match
    .lex "$/", match
    length rx596_eos, rx596_tgt
    gt rx596_pos, rx596_eos, rx596_done
    set rx596_off, 0
    lt rx596_pos, 2, rx596_start
    sub rx596_off, rx596_pos, 1
    substr rx596_tgt, rx596_tgt, rx596_off
  rx596_start:
    eq $I10, 1, rx596_restart
    if_null rx596_debug, debug_493
    rx596_cur."!cursor_debug"("START", "mod_ident:sym<ignorecase>")
  debug_493:
    $I10 = self.'from'()
    ne $I10, -1, rxscan599_done
    goto rxscan599_scan
  rxscan599_loop:
    ($P10) = rx596_cur."from"()
    inc $P10
    set rx596_pos, $P10
    ge rx596_pos, rx596_eos, rxscan599_done
  rxscan599_scan:
    set_addr $I10, rxscan599_loop
    rx596_cur."!mark_push"(0, rx596_pos, $I10)
  rxscan599_done:
.annotate 'line', 198
  # rx subcapture "sym"
    set_addr $I10, rxcap_600_fail
    rx596_cur."!mark_push"(0, rx596_pos, $I10)
  # rx literal  "i"
    add $I11, rx596_pos, 1
    gt $I11, rx596_eos, rx596_fail
    sub $I11, rx596_pos, rx596_off
    ord $I11, rx596_tgt, $I11
    ne $I11, 105, rx596_fail
    add rx596_pos, 1
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
  # rx rxquantr601 ** 0..1
    set_addr $I10, rxquantr601_done
    rx596_cur."!mark_push"(0, rx596_pos, $I10)
  rxquantr601_loop:
  # rx literal  "gnorecase"
    add $I11, rx596_pos, 9
    gt $I11, rx596_eos, rx596_fail
    sub $I11, rx596_pos, rx596_off
    substr $S10, rx596_tgt, $I11, 9
    ne $S10, "gnorecase", rx596_fail
    add rx596_pos, 9
    set_addr $I10, rxquantr601_done
    (rx596_rep) = rx596_cur."!mark_commit"($I10)
  rxquantr601_done:
  # rx pass
    rx596_cur."!cursor_pass"(rx596_pos, "mod_ident:sym<ignorecase>")
    if_null rx596_debug, debug_494
    rx596_cur."!cursor_debug"("PASS", "mod_ident:sym<ignorecase>", " at pos=", rx596_pos)
  debug_494:
    .return (rx596_cur)
  rx596_restart:
.annotate 'line', 3
    if_null rx596_debug, debug_495
    rx596_cur."!cursor_debug"("NEXT", "mod_ident:sym<ignorecase>")
  debug_495:
  rx596_fail:
    (rx596_rep, rx596_pos, $I10, $P10) = rx596_cur."!mark_fail"(0)
    lt rx596_pos, -1, rx596_done
    eq rx596_pos, -1, rx596_fail
    jump $I10
  rx596_done:
    rx596_cur."!cursor_fail"()
    if_null rx596_debug, debug_496
    rx596_cur."!cursor_debug"("FAIL", "mod_ident:sym<ignorecase>")
  debug_496:
    .return (rx596_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident:sym<ignorecase>"  :subid("168_1295142316.828") :method
.annotate 'line', 3
    new $P598, "ResizablePMCArray"
    push $P598, "i"
    .return ($P598)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<ratchet>"  :subid("169_1295142316.828") :method :outer("11_1295142316.828")
.annotate 'line', 3
    .local string rx603_tgt
    .local int rx603_pos
    .local int rx603_off
    .local int rx603_eos
    .local int rx603_rep
    .local pmc rx603_cur
    .local pmc rx603_debug
    (rx603_cur, rx603_pos, rx603_tgt, $I10) = self."!cursor_start"()
    getattribute rx603_debug, rx603_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx603_cur
    .local pmc match
    .lex "$/", match
    length rx603_eos, rx603_tgt
    gt rx603_pos, rx603_eos, rx603_done
    set rx603_off, 0
    lt rx603_pos, 2, rx603_start
    sub rx603_off, rx603_pos, 1
    substr rx603_tgt, rx603_tgt, rx603_off
  rx603_start:
    eq $I10, 1, rx603_restart
    if_null rx603_debug, debug_497
    rx603_cur."!cursor_debug"("START", "mod_ident:sym<ratchet>")
  debug_497:
    $I10 = self.'from'()
    ne $I10, -1, rxscan606_done
    goto rxscan606_scan
  rxscan606_loop:
    ($P10) = rx603_cur."from"()
    inc $P10
    set rx603_pos, $P10
    ge rx603_pos, rx603_eos, rxscan606_done
  rxscan606_scan:
    set_addr $I10, rxscan606_loop
    rx603_cur."!mark_push"(0, rx603_pos, $I10)
  rxscan606_done:
.annotate 'line', 199
  # rx subcapture "sym"
    set_addr $I10, rxcap_607_fail
    rx603_cur."!mark_push"(0, rx603_pos, $I10)
  # rx literal  "r"
    add $I11, rx603_pos, 1
    gt $I11, rx603_eos, rx603_fail
    sub $I11, rx603_pos, rx603_off
    ord $I11, rx603_tgt, $I11
    ne $I11, 114, rx603_fail
    add rx603_pos, 1
    set_addr $I10, rxcap_607_fail
    ($I12, $I11) = rx603_cur."!mark_peek"($I10)
    rx603_cur."!cursor_pos"($I11)
    ($P10) = rx603_cur."!cursor_start"()
    $P10."!cursor_pass"(rx603_pos, "")
    rx603_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_607_done
  rxcap_607_fail:
    goto rx603_fail
  rxcap_607_done:
  # rx rxquantr608 ** 0..1
    set_addr $I10, rxquantr608_done
    rx603_cur."!mark_push"(0, rx603_pos, $I10)
  rxquantr608_loop:
  # rx literal  "atchet"
    add $I11, rx603_pos, 6
    gt $I11, rx603_eos, rx603_fail
    sub $I11, rx603_pos, rx603_off
    substr $S10, rx603_tgt, $I11, 6
    ne $S10, "atchet", rx603_fail
    add rx603_pos, 6
    set_addr $I10, rxquantr608_done
    (rx603_rep) = rx603_cur."!mark_commit"($I10)
  rxquantr608_done:
  # rx pass
    rx603_cur."!cursor_pass"(rx603_pos, "mod_ident:sym<ratchet>")
    if_null rx603_debug, debug_498
    rx603_cur."!cursor_debug"("PASS", "mod_ident:sym<ratchet>", " at pos=", rx603_pos)
  debug_498:
    .return (rx603_cur)
  rx603_restart:
.annotate 'line', 3
    if_null rx603_debug, debug_499
    rx603_cur."!cursor_debug"("NEXT", "mod_ident:sym<ratchet>")
  debug_499:
  rx603_fail:
    (rx603_rep, rx603_pos, $I10, $P10) = rx603_cur."!mark_fail"(0)
    lt rx603_pos, -1, rx603_done
    eq rx603_pos, -1, rx603_fail
    jump $I10
  rx603_done:
    rx603_cur."!cursor_fail"()
    if_null rx603_debug, debug_500
    rx603_cur."!cursor_debug"("FAIL", "mod_ident:sym<ratchet>")
  debug_500:
    .return (rx603_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident:sym<ratchet>"  :subid("170_1295142316.828") :method
.annotate 'line', 3
    new $P605, "ResizablePMCArray"
    push $P605, "r"
    .return ($P605)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "mod_ident:sym<sigspace>"  :subid("171_1295142316.828") :method :outer("11_1295142316.828")
.annotate 'line', 3
    .local string rx610_tgt
    .local int rx610_pos
    .local int rx610_off
    .local int rx610_eos
    .local int rx610_rep
    .local pmc rx610_cur
    .local pmc rx610_debug
    (rx610_cur, rx610_pos, rx610_tgt, $I10) = self."!cursor_start"()
    getattribute rx610_debug, rx610_cur, "$!debug"
    .lex unicode:"$\x{a2}", rx610_cur
    .local pmc match
    .lex "$/", match
    length rx610_eos, rx610_tgt
    gt rx610_pos, rx610_eos, rx610_done
    set rx610_off, 0
    lt rx610_pos, 2, rx610_start
    sub rx610_off, rx610_pos, 1
    substr rx610_tgt, rx610_tgt, rx610_off
  rx610_start:
    eq $I10, 1, rx610_restart
    if_null rx610_debug, debug_501
    rx610_cur."!cursor_debug"("START", "mod_ident:sym<sigspace>")
  debug_501:
    $I10 = self.'from'()
    ne $I10, -1, rxscan613_done
    goto rxscan613_scan
  rxscan613_loop:
    ($P10) = rx610_cur."from"()
    inc $P10
    set rx610_pos, $P10
    ge rx610_pos, rx610_eos, rxscan613_done
  rxscan613_scan:
    set_addr $I10, rxscan613_loop
    rx610_cur."!mark_push"(0, rx610_pos, $I10)
  rxscan613_done:
.annotate 'line', 200
  # rx subcapture "sym"
    set_addr $I10, rxcap_614_fail
    rx610_cur."!mark_push"(0, rx610_pos, $I10)
  # rx literal  "s"
    add $I11, rx610_pos, 1
    gt $I11, rx610_eos, rx610_fail
    sub $I11, rx610_pos, rx610_off
    ord $I11, rx610_tgt, $I11
    ne $I11, 115, rx610_fail
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
  # rx rxquantr615 ** 0..1
    set_addr $I10, rxquantr615_done
    rx610_cur."!mark_push"(0, rx610_pos, $I10)
  rxquantr615_loop:
  # rx literal  "igspace"
    add $I11, rx610_pos, 7
    gt $I11, rx610_eos, rx610_fail
    sub $I11, rx610_pos, rx610_off
    substr $S10, rx610_tgt, $I11, 7
    ne $S10, "igspace", rx610_fail
    add rx610_pos, 7
    set_addr $I10, rxquantr615_done
    (rx610_rep) = rx610_cur."!mark_commit"($I10)
  rxquantr615_done:
  # rx pass
    rx610_cur."!cursor_pass"(rx610_pos, "mod_ident:sym<sigspace>")
    if_null rx610_debug, debug_502
    rx610_cur."!cursor_debug"("PASS", "mod_ident:sym<sigspace>", " at pos=", rx610_pos)
  debug_502:
    .return (rx610_cur)
  rx610_restart:
.annotate 'line', 3
    if_null rx610_debug, debug_503
    rx610_cur."!cursor_debug"("NEXT", "mod_ident:sym<sigspace>")
  debug_503:
  rx610_fail:
    (rx610_rep, rx610_pos, $I10, $P10) = rx610_cur."!mark_fail"(0)
    lt rx610_pos, -1, rx610_done
    eq rx610_pos, -1, rx610_fail
    jump $I10
  rx610_done:
    rx610_cur."!cursor_fail"()
    if_null rx610_debug, debug_504
    rx610_cur."!cursor_debug"("FAIL", "mod_ident:sym<sigspace>")
  debug_504:
    .return (rx610_cur)
    .return ()
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "!PREFIX__mod_ident:sym<sigspace>"  :subid("172_1295142316.828") :method
.annotate 'line', 3
    new $P612, "ResizablePMCArray"
    push $P612, "s"
    .return ($P612)
.end


.namespace ["Regex";"P6Regex";"Grammar"]
.sub "_block616" :load :anon :subid("173_1295142316.828")
.annotate 'line', 3
    .const 'Sub' $P618 = "11_1295142316.828" 
    $P619 = $P618()
    .return ($P619)
.end


.namespace []
.sub "_block621" :load :anon :subid("174_1295142316.828")
.annotate 'line', 1
    .const 'Sub' $P623 = "10_1295142316.828" 
    $P624 = $P623()
    .return ($P624)
.end

### .include 'gen/p6regex-actions.pir'

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1295142326.265")
.annotate 'line', 0
    get_hll_global $P15, ["Regex";"P6Regex";"Actions"], "_block14" 
    capture_lex $P15
.annotate 'line', 1
    nqp_dynop_setup 
    get_hll_global $P13, ["Regex";"P6Regex"], "Actions"
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 4
    get_hll_global $P15, ["Regex";"P6Regex";"Actions"], "_block14" 
    capture_lex $P15
    $P1840 = $P15()
.annotate 'line', 1
    .return ($P1840)
    .const 'Sub' $P1842 = "95_1295142326.265" 
    .return ($P1842)
.end


.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block14"  :subid("11_1295142326.265") :outer("10_1295142326.265")
.annotate 'line', 4
    .const 'Sub' $P1727 = "94_1295142326.265" 
    capture_lex $P1727
    .const 'Sub' $P1702 = "92_1295142326.265" 
    capture_lex $P1702
    .const 'Sub' $P1681 = "91_1295142326.265" 
    capture_lex $P1681
    .const 'Sub' $P1648 = "90_1295142326.265" 
    capture_lex $P1648
    .const 'Sub' $P1578 = "86_1295142326.265" 
    capture_lex $P1578
    .const 'Sub' $P1509 = "84_1295142326.265" 
    capture_lex $P1509
    .const 'Sub' $P1436 = "81_1295142326.265" 
    capture_lex $P1436
    .const 'Sub' $P1421 = "80_1295142326.265" 
    capture_lex $P1421
    .const 'Sub' $P1396 = "79_1295142326.265" 
    capture_lex $P1396
    .const 'Sub' $P1377 = "78_1295142326.265" 
    capture_lex $P1377
    .const 'Sub' $P1362 = "77_1295142326.265" 
    capture_lex $P1362
    .const 'Sub' $P1348 = "76_1295142326.265" 
    capture_lex $P1348
    .const 'Sub' $P1316 = "75_1295142326.265" 
    capture_lex $P1316
    .const 'Sub' $P1284 = "74_1295142326.265" 
    capture_lex $P1284
    .const 'Sub' $P1267 = "73_1295142326.265" 
    capture_lex $P1267
    .const 'Sub' $P1250 = "72_1295142326.265" 
    capture_lex $P1250
    .const 'Sub' $P1233 = "71_1295142326.265" 
    capture_lex $P1233
    .const 'Sub' $P1216 = "70_1295142326.265" 
    capture_lex $P1216
    .const 'Sub' $P1199 = "69_1295142326.265" 
    capture_lex $P1199
    .const 'Sub' $P1182 = "68_1295142326.265" 
    capture_lex $P1182
    .const 'Sub' $P1165 = "67_1295142326.265" 
    capture_lex $P1165
    .const 'Sub' $P1140 = "66_1295142326.265" 
    capture_lex $P1140
    .const 'Sub' $P1124 = "65_1295142326.265" 
    capture_lex $P1124
    .const 'Sub' $P1065 = "64_1295142326.265" 
    capture_lex $P1065
    .const 'Sub' $P1043 = "63_1295142326.265" 
    capture_lex $P1043
    .const 'Sub' $P1020 = "62_1295142326.265" 
    capture_lex $P1020
    .const 'Sub' $P1009 = "61_1295142326.265" 
    capture_lex $P1009
    .const 'Sub' $P998 = "60_1295142326.265" 
    capture_lex $P998
    .const 'Sub' $P987 = "59_1295142326.265" 
    capture_lex $P987
    .const 'Sub' $P974 = "58_1295142326.265" 
    capture_lex $P974
    .const 'Sub' $P961 = "57_1295142326.265" 
    capture_lex $P961
    .const 'Sub' $P948 = "56_1295142326.265" 
    capture_lex $P948
    .const 'Sub' $P935 = "55_1295142326.265" 
    capture_lex $P935
    .const 'Sub' $P922 = "54_1295142326.265" 
    capture_lex $P922
    .const 'Sub' $P909 = "53_1295142326.265" 
    capture_lex $P909
    .const 'Sub' $P896 = "52_1295142326.265" 
    capture_lex $P896
    .const 'Sub' $P883 = "51_1295142326.265" 
    capture_lex $P883
    .const 'Sub' $P854 = "50_1295142326.265" 
    capture_lex $P854
    .const 'Sub' $P825 = "49_1295142326.265" 
    capture_lex $P825
    .const 'Sub' $P806 = "48_1295142326.265" 
    capture_lex $P806
    .const 'Sub' $P795 = "47_1295142326.265" 
    capture_lex $P795
    .const 'Sub' $P776 = "46_1295142326.265" 
    capture_lex $P776
    .const 'Sub' $P702 = "44_1295142326.265" 
    capture_lex $P702
    .const 'Sub' $P684 = "43_1295142326.265" 
    capture_lex $P684
    .const 'Sub' $P668 = "42_1295142326.265" 
    capture_lex $P668
    .const 'Sub' $P652 = "41_1295142326.265" 
    capture_lex $P652
    .const 'Sub' $P625 = "40_1295142326.265" 
    capture_lex $P625
    .const 'Sub' $P573 = "38_1295142326.265" 
    capture_lex $P573
    .const 'Sub' $P504 = "36_1295142326.265" 
    capture_lex $P504
    .const 'Sub' $P466 = "34_1295142326.265" 
    capture_lex $P466
    .const 'Sub' $P409 = "31_1295142326.265" 
    capture_lex $P409
    .const 'Sub' $P393 = "30_1295142326.265" 
    capture_lex $P393
    .const 'Sub' $P366 = "28_1295142326.265" 
    capture_lex $P366
    .const 'Sub' $P348 = "27_1295142326.265" 
    capture_lex $P348
    .const 'Sub' $P314 = "26_1295142326.265" 
    capture_lex $P314
    .const 'Sub' $P59 = "13_1295142326.265" 
    capture_lex $P59
    .const 'Sub' $P18 = "12_1295142326.265" 
    capture_lex $P18
    get_global $P16, "$?CLASS"
    nqp_dynop_setup 
    get_global $P17, "@MODIFIERS"
    unless_null $P17, vivify_97
    $P17 = root_new ['parrot';'ResizablePMCArray']
    set_global "@MODIFIERS", $P17
  vivify_97:
.annotate 'line', 506
    .const 'Sub' $P18 = "12_1295142326.265" 
    newclosure $P58, $P18
    .lex "buildsub", $P58
.annotate 'line', 524
    .const 'Sub' $P59 = "13_1295142326.265" 
    newclosure $P313, $P59
    .lex "capnames", $P313
.annotate 'line', 590
    .const 'Sub' $P314 = "26_1295142326.265" 
    newclosure $P346, $P314
    .lex "backmod", $P346
.annotate 'line', 4
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
    get_global $P347, "@MODIFIERS"
.annotate 'line', 499
    find_lex $P1678, "buildsub"
    find_lex $P1679, "capnames"
    find_lex $P1680, "backmod"
.annotate 'line', 603
    .const 'Sub' $P1702 = "92_1295142326.265" 
    newclosure $P1720, $P1702
.annotate 'line', 4
    .return ($P1720)
    .const 'Sub' $P1722 = "93_1295142326.265" 
    .return ($P1722)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "" :load :init :subid("post96") :outer("11_1295142326.265")
.annotate 'line', 4
    get_hll_global $P15, ["Regex";"P6Regex";"Actions"], "_block14" 
    .local pmc block
    set block, $P15
.annotate 'line', 7

        $P1725 = new ['ResizablePMCArray']
        $P0 = new ['Hash']
        push $P1725, $P0
    
    set_global "@MODIFIERS", $P1725
.annotate 'line', 6
    .const 'Sub' $P1727 = "94_1295142326.265" 
    capture_lex $P1727
    $P1727()
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1726"  :anon :subid("94_1295142326.265") :outer("11_1295142326.265")
.annotate 'line', 6
    get_hll_global $P1728, "NQPClassHOW"
    $P1729 = $P1728."new_type"("Actions" :named("name"))
    .local pmc type_obj
    set type_obj, $P1729
    set_hll_global ["Regex";"P6Regex"], "Actions", type_obj
    set_global "$?CLASS", type_obj
    get_how $P1730, type_obj
    .const 'Sub' $P1731 = "27_1295142326.265" 
    $P1730."add_method"(type_obj, "arg", $P1731)
    get_how $P1732, type_obj
    .const 'Sub' $P1733 = "28_1295142326.265" 
    $P1732."add_method"(type_obj, "arglist", $P1733)
    get_how $P1734, type_obj
    .const 'Sub' $P1735 = "30_1295142326.265" 
    $P1734."add_method"(type_obj, "TOP", $P1735)
    get_how $P1736, type_obj
    .const 'Sub' $P1737 = "31_1295142326.265" 
    $P1736."add_method"(type_obj, "nibbler", $P1737)
    get_how $P1738, type_obj
    .const 'Sub' $P1739 = "34_1295142326.265" 
    $P1738."add_method"(type_obj, "termconj", $P1739)
    get_how $P1740, type_obj
    .const 'Sub' $P1741 = "36_1295142326.265" 
    $P1740."add_method"(type_obj, "termish", $P1741)
    get_how $P1742, type_obj
    .const 'Sub' $P1743 = "38_1295142326.265" 
    $P1742."add_method"(type_obj, "quantified_atom", $P1743)
    get_how $P1744, type_obj
    .const 'Sub' $P1745 = "40_1295142326.265" 
    $P1744."add_method"(type_obj, "atom", $P1745)
    get_how $P1746, type_obj
    .const 'Sub' $P1747 = "41_1295142326.265" 
    $P1746."add_method"(type_obj, "quantifier:sym<*>", $P1747)
    get_how $P1748, type_obj
    .const 'Sub' $P1749 = "42_1295142326.265" 
    $P1748."add_method"(type_obj, "quantifier:sym<+>", $P1749)
    get_how $P1750, type_obj
    .const 'Sub' $P1751 = "43_1295142326.265" 
    $P1750."add_method"(type_obj, "quantifier:sym<?>", $P1751)
    get_how $P1752, type_obj
    .const 'Sub' $P1753 = "44_1295142326.265" 
    $P1752."add_method"(type_obj, "quantifier:sym<**>", $P1753)
    get_how $P1754, type_obj
    .const 'Sub' $P1755 = "46_1295142326.265" 
    $P1754."add_method"(type_obj, "metachar:sym<ws>", $P1755)
    get_how $P1756, type_obj
    .const 'Sub' $P1757 = "47_1295142326.265" 
    $P1756."add_method"(type_obj, "metachar:sym<[ ]>", $P1757)
    get_how $P1758, type_obj
    .const 'Sub' $P1759 = "48_1295142326.265" 
    $P1758."add_method"(type_obj, "metachar:sym<( )>", $P1759)
    get_how $P1760, type_obj
    .const 'Sub' $P1761 = "49_1295142326.265" 
    $P1760."add_method"(type_obj, "metachar:sym<'>", $P1761)
    get_how $P1762, type_obj
    .const 'Sub' $P1763 = "50_1295142326.265" 
    $P1762."add_method"(type_obj, "metachar:sym<\">", $P1763)
    get_how $P1764, type_obj
    .const 'Sub' $P1765 = "51_1295142326.265" 
    $P1764."add_method"(type_obj, "metachar:sym<.>", $P1765)
    get_how $P1766, type_obj
    .const 'Sub' $P1767 = "52_1295142326.265" 
    $P1766."add_method"(type_obj, "metachar:sym<^>", $P1767)
    get_how $P1768, type_obj
    .const 'Sub' $P1769 = "53_1295142326.265" 
    $P1768."add_method"(type_obj, "metachar:sym<^^>", $P1769)
    get_how $P1770, type_obj
    .const 'Sub' $P1771 = "54_1295142326.265" 
    $P1770."add_method"(type_obj, "metachar:sym<$>", $P1771)
    get_how $P1772, type_obj
    .const 'Sub' $P1773 = "55_1295142326.265" 
    $P1772."add_method"(type_obj, "metachar:sym<$$>", $P1773)
    get_how $P1774, type_obj
    .const 'Sub' $P1775 = "56_1295142326.265" 
    $P1774."add_method"(type_obj, "metachar:sym<:::>", $P1775)
    get_how $P1776, type_obj
    .const 'Sub' $P1777 = "57_1295142326.265" 
    $P1776."add_method"(type_obj, "metachar:sym<lwb>", $P1777)
    get_how $P1778, type_obj
    .const 'Sub' $P1779 = "58_1295142326.265" 
    $P1778."add_method"(type_obj, "metachar:sym<rwb>", $P1779)
    get_how $P1780, type_obj
    .const 'Sub' $P1781 = "59_1295142326.265" 
    $P1780."add_method"(type_obj, "metachar:sym<bs>", $P1781)
    get_how $P1782, type_obj
    .const 'Sub' $P1783 = "60_1295142326.265" 
    $P1782."add_method"(type_obj, "metachar:sym<mod>", $P1783)
    get_how $P1784, type_obj
    .const 'Sub' $P1785 = "61_1295142326.265" 
    $P1784."add_method"(type_obj, "metachar:sym<assert>", $P1785)
    get_how $P1786, type_obj
    .const 'Sub' $P1787 = "62_1295142326.265" 
    $P1786."add_method"(type_obj, "metachar:sym<~>", $P1787)
    get_how $P1788, type_obj
    .const 'Sub' $P1789 = "63_1295142326.265" 
    $P1788."add_method"(type_obj, "metachar:sym<{*}>", $P1789)
    get_how $P1790, type_obj
    .const 'Sub' $P1791 = "64_1295142326.265" 
    $P1790."add_method"(type_obj, "metachar:sym<var>", $P1791)
    get_how $P1792, type_obj
    .const 'Sub' $P1793 = "65_1295142326.265" 
    $P1792."add_method"(type_obj, "metachar:sym<PIR>", $P1793)
    get_how $P1794, type_obj
    .const 'Sub' $P1795 = "66_1295142326.265" 
    $P1794."add_method"(type_obj, "backslash:sym<w>", $P1795)
    get_how $P1796, type_obj
    .const 'Sub' $P1797 = "67_1295142326.265" 
    $P1796."add_method"(type_obj, "backslash:sym<b>", $P1797)
    get_how $P1798, type_obj
    .const 'Sub' $P1799 = "68_1295142326.265" 
    $P1798."add_method"(type_obj, "backslash:sym<e>", $P1799)
    get_how $P1800, type_obj
    .const 'Sub' $P1801 = "69_1295142326.265" 
    $P1800."add_method"(type_obj, "backslash:sym<f>", $P1801)
    get_how $P1802, type_obj
    .const 'Sub' $P1803 = "70_1295142326.265" 
    $P1802."add_method"(type_obj, "backslash:sym<h>", $P1803)
    get_how $P1804, type_obj
    .const 'Sub' $P1805 = "71_1295142326.265" 
    $P1804."add_method"(type_obj, "backslash:sym<r>", $P1805)
    get_how $P1806, type_obj
    .const 'Sub' $P1807 = "72_1295142326.265" 
    $P1806."add_method"(type_obj, "backslash:sym<t>", $P1807)
    get_how $P1808, type_obj
    .const 'Sub' $P1809 = "73_1295142326.265" 
    $P1808."add_method"(type_obj, "backslash:sym<v>", $P1809)
    get_how $P1810, type_obj
    .const 'Sub' $P1811 = "74_1295142326.265" 
    $P1810."add_method"(type_obj, "backslash:sym<o>", $P1811)
    get_how $P1812, type_obj
    .const 'Sub' $P1813 = "75_1295142326.265" 
    $P1812."add_method"(type_obj, "backslash:sym<x>", $P1813)
    get_how $P1814, type_obj
    .const 'Sub' $P1815 = "76_1295142326.265" 
    $P1814."add_method"(type_obj, "backslash:sym<c>", $P1815)
    get_how $P1816, type_obj
    .const 'Sub' $P1817 = "77_1295142326.265" 
    $P1816."add_method"(type_obj, "backslash:sym<misc>", $P1817)
    get_how $P1818, type_obj
    .const 'Sub' $P1819 = "78_1295142326.265" 
    $P1818."add_method"(type_obj, "assertion:sym<?>", $P1819)
    get_how $P1820, type_obj
    .const 'Sub' $P1821 = "79_1295142326.265" 
    $P1820."add_method"(type_obj, "assertion:sym<!>", $P1821)
    get_how $P1822, type_obj
    .const 'Sub' $P1823 = "80_1295142326.265" 
    $P1822."add_method"(type_obj, "assertion:sym<method>", $P1823)
    get_how $P1824, type_obj
    .const 'Sub' $P1825 = "81_1295142326.265" 
    $P1824."add_method"(type_obj, "assertion:sym<name>", $P1825)
    get_how $P1826, type_obj
    .const 'Sub' $P1827 = "84_1295142326.265" 
    $P1826."add_method"(type_obj, "assertion:sym<[>", $P1827)
    get_how $P1828, type_obj
    .const 'Sub' $P1829 = "86_1295142326.265" 
    $P1828."add_method"(type_obj, "cclass_elem", $P1829)
    get_how $P1830, type_obj
    .const 'Sub' $P1831 = "90_1295142326.265" 
    $P1830."add_method"(type_obj, "mod_internal", $P1831)
    get_how $P1832, type_obj
    .const 'Sub' $P1833 = "91_1295142326.265" 
    $P1832."add_method"(type_obj, "subrule_alias", $P1833)
    get_how $P1834, type_obj
    .const 'Sub' $P1835 = "92_1295142326.265" 
    $P1834."add_method"(type_obj, "named_assertion", $P1835)
    get_how $P1836, type_obj
    get_hll_global $P1837, ["HLL"], "Actions"
    $P1836."add_parent"(type_obj, $P1837)
    get_how $P1838, type_obj
    $P1839 = $P1838."compose"(type_obj)
    .return ($P1839)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "buildsub"  :subid("12_1295142326.265") :outer("11_1295142326.265")
    .param pmc param_21
    .param pmc param_22 :optional
    .param int has_param_22 :opt_flag
.annotate 'line', 506
    new $P20, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P20, control_19
    push_eh $P20
    .lex "$rpast", param_21
    if has_param_22, optparam_98
    get_hll_global $P23, ["PAST"], "Block"
    $P24 = $P23."new"()
    set param_22, $P24
  optparam_98:
    .lex "$block", param_22
.annotate 'line', 507
    $P25 = root_new ['parrot';'Hash']
    .lex "%capnames", $P25
    find_lex $P26, "$rpast"
    $P27 = "capnames"($P26, 0)
    store_lex "%capnames", $P27
.annotate 'line', 508
    new $P28, "Integer"
    assign $P28, 0
    find_lex $P29, "%capnames"
    unless_null $P29, vivify_99
    $P29 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P29
  vivify_99:
    set $P29[""], $P28
.annotate 'line', 509
    get_hll_global $P30, ["PAST"], "Regex"
.annotate 'line', 510
    get_hll_global $P31, ["PAST"], "Regex"
    $P32 = $P31."new"("scan" :named("pasttype"))
    find_lex $P33, "$rpast"
.annotate 'line', 512
    get_hll_global $P34, ["PAST"], "Regex"
.annotate 'line', 513
    get_global $P37, "@MODIFIERS"
    unless_null $P37, vivify_100
    $P37 = root_new ['parrot';'ResizablePMCArray']
  vivify_100:
    set $P38, $P37[0]
    unless_null $P38, vivify_101
    $P38 = root_new ['parrot';'Hash']
  vivify_101:
    set $P39, $P38["r"]
    unless_null $P39, vivify_102
    new $P39, "Undef"
  vivify_102:
    if $P39, if_36
    new $P41, "String"
    assign $P41, "g"
    set $P35, $P41
    goto if_36_end
  if_36:
    new $P40, "String"
    assign $P40, "r"
    set $P35, $P40
  if_36_end:
    $P42 = $P34."new"("pass" :named("pasttype"), $P35 :named("backtrack"))
.annotate 'line', 512
    find_lex $P43, "%capnames"
    $P44 = $P30."new"($P32, $P33, $P42, "concat" :named("pasttype"), $P43 :named("capnames"))
.annotate 'line', 509
    store_lex "$rpast", $P44
.annotate 'line', 517
    find_lex $P46, "$block"
    $P47 = $P46."symbol"(unicode:"$\x{a2}")
    if $P47, unless_45_end
    find_lex $P48, "$block"
    $P48."symbol"(unicode:"$\x{a2}", "lexical" :named("scope"))
  unless_45_end:
.annotate 'line', 518
    find_lex $P50, "$block"
    $P51 = $P50."symbol"("$/")
    if $P51, unless_49_end
    find_lex $P52, "$block"
    $P52."symbol"("$/", "lexical" :named("scope"))
  unless_49_end:
.annotate 'line', 519
    find_lex $P53, "$block"
    find_lex $P54, "$rpast"
    $P53."push"($P54)
.annotate 'line', 520
    find_lex $P55, "$block"
    $P55."blocktype"("method")
    find_lex $P56, "$block"
.annotate 'line', 506
    .return ($P56)
  control_19:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P57, exception, "payload"
    .return ($P57)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "capnames"  :subid("13_1295142326.265") :outer("11_1295142326.265")
    .param pmc param_62
    .param pmc param_63
.annotate 'line', 524
    .const 'Sub' $P288 = "24_1295142326.265" 
    capture_lex $P288
    .const 'Sub' $P225 = "21_1295142326.265" 
    capture_lex $P225
    .const 'Sub' $P183 = "19_1295142326.265" 
    capture_lex $P183
    .const 'Sub' $P141 = "17_1295142326.265" 
    capture_lex $P141
    .const 'Sub' $P74 = "14_1295142326.265" 
    capture_lex $P74
    new $P61, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P61, control_60
    push_eh $P61
    .lex "$ast", param_62
    .lex "$count", param_63
.annotate 'line', 525
    $P64 = root_new ['parrot';'Hash']
    .lex "%capnames", $P64
.annotate 'line', 526
    new $P65, "Undef"
    .lex "$pasttype", $P65
.annotate 'line', 524
    find_lex $P66, "%capnames"
.annotate 'line', 526
    find_lex $P67, "$ast"
    $P68 = $P67."pasttype"()
    store_lex "$pasttype", $P68
.annotate 'line', 527
    find_lex $P70, "$pasttype"
    set $S71, $P70
    iseq $I72, $S71, "alt"
    if $I72, if_69
.annotate 'line', 540
    find_lex $P132, "$pasttype"
    set $S133, $P132
    iseq $I134, $S133, "concat"
    if $I134, if_131
.annotate 'line', 549
    find_lex $P176, "$pasttype"
    set $S177, $P176
    iseq $I178, $S177, "subrule"
    if $I178, if_175
    new $P174, 'Integer'
    set $P174, $I178
    goto if_175_end
  if_175:
    find_lex $P179, "$ast"
    $S180 = $P179."subtype"()
    iseq $I181, $S180, "capture"
    new $P174, 'Integer'
    set $P174, $I181
  if_175_end:
    if $P174, if_173
.annotate 'line', 562
    find_lex $P221, "$pasttype"
    set $S222, $P221
    iseq $I223, $S222, "subcapture"
    if $I223, if_220
.annotate 'line', 579
    find_lex $P284, "$pasttype"
    set $S285, $P284
    iseq $I286, $S285, "quant"
    unless $I286, if_283_end
    .const 'Sub' $P288 = "24_1295142326.265" 
    capture_lex $P288
    $P288()
  if_283_end:
    goto if_220_end
  if_220:
.annotate 'line', 562
    .const 'Sub' $P225 = "21_1295142326.265" 
    capture_lex $P225
    $P225()
  if_220_end:
    goto if_173_end
  if_173:
.annotate 'line', 549
    .const 'Sub' $P183 = "19_1295142326.265" 
    capture_lex $P183
    $P183()
  if_173_end:
    goto if_131_end
  if_131:
.annotate 'line', 541
    find_lex $P136, "$ast"
    $P137 = $P136."list"()
    defined $I138, $P137
    unless $I138, for_undef_123
    iter $P135, $P137
    new $P171, 'ExceptionHandler'
    set_addr $P171, loop170_handler
    $P171."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P171
  loop170_test:
    unless $P135, loop170_done
    shift $P139, $P135
  loop170_redo:
    .const 'Sub' $P141 = "17_1295142326.265" 
    capture_lex $P141
    $P141($P139)
  loop170_next:
    goto loop170_test
  loop170_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P172, exception, 'type'
    eq $P172, .CONTROL_LOOP_NEXT, loop170_next
    eq $P172, .CONTROL_LOOP_REDO, loop170_redo
  loop170_done:
    pop_eh 
  for_undef_123:
  if_131_end:
.annotate 'line', 540
    goto if_69_end
  if_69:
.annotate 'line', 527
    .const 'Sub' $P74 = "14_1295142326.265" 
    capture_lex $P74
    $P74()
  if_69_end:
.annotate 'line', 586
    find_lex $P309, "$count"
    find_lex $P310, "%capnames"
    unless_null $P310, vivify_143
    $P310 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P310
  vivify_143:
    set $P310[""], $P309
    find_lex $P311, "%capnames"
.annotate 'line', 524
    .return ($P311)
  control_60:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P312, exception, "payload"
    .return ($P312)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block287"  :anon :subid("24_1295142326.265") :outer("13_1295142326.265")
.annotate 'line', 579
    .const 'Sub' $P299 = "25_1295142326.265" 
    capture_lex $P299
.annotate 'line', 580
    $P289 = root_new ['parrot';'Hash']
    .lex "%astcap", $P289
    find_lex $P290, "$ast"
    unless_null $P290, vivify_103
    $P290 = root_new ['parrot';'ResizablePMCArray']
  vivify_103:
    set $P291, $P290[0]
    unless_null $P291, vivify_104
    new $P291, "Undef"
  vivify_104:
    find_lex $P292, "$count"
    $P293 = "capnames"($P291, $P292)
    store_lex "%astcap", $P293
.annotate 'line', 581
    find_lex $P295, "%astcap"
    defined $I296, $P295
    unless $I296, for_undef_105
    iter $P294, $P295
    new $P305, 'ExceptionHandler'
    set_addr $P305, loop304_handler
    $P305."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P305
  loop304_test:
    unless $P294, loop304_done
    shift $P297, $P294
  loop304_redo:
    .const 'Sub' $P299 = "25_1295142326.265" 
    capture_lex $P299
    $P299($P297)
  loop304_next:
    goto loop304_test
  loop304_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P306, exception, 'type'
    eq $P306, .CONTROL_LOOP_NEXT, loop304_next
    eq $P306, .CONTROL_LOOP_REDO, loop304_redo
  loop304_done:
    pop_eh 
  for_undef_105:
.annotate 'line', 584
    find_lex $P307, "%astcap"
    unless_null $P307, vivify_107
    $P307 = root_new ['parrot';'Hash']
  vivify_107:
    set $P308, $P307[""]
    unless_null $P308, vivify_108
    new $P308, "Undef"
  vivify_108:
    store_lex "$count", $P308
.annotate 'line', 579
    .return ($P308)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block298"  :anon :subid("25_1295142326.265") :outer("24_1295142326.265")
    .param pmc param_300
.annotate 'line', 581
    .lex "$_", param_300
.annotate 'line', 582
    new $P301, "Integer"
    assign $P301, 2
    find_lex $P302, "$_"
    find_lex $P303, "%capnames"
    unless_null $P303, vivify_106
    $P303 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P303
  vivify_106:
    set $P303[$P302], $P301
.annotate 'line', 581
    .return ($P301)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block224"  :anon :subid("21_1295142326.265") :outer("13_1295142326.265")
.annotate 'line', 562
    .const 'Sub' $P265 = "23_1295142326.265" 
    capture_lex $P265
    .const 'Sub' $P237 = "22_1295142326.265" 
    capture_lex $P237
.annotate 'line', 563
    new $P226, "Undef"
    .lex "$name", $P226
.annotate 'line', 564
    $P227 = root_new ['parrot';'ResizablePMCArray']
    .lex "@names", $P227
.annotate 'line', 573
    $P228 = root_new ['parrot';'Hash']
    .lex "%x", $P228
.annotate 'line', 563
    find_lex $P229, "$ast"
    $P230 = $P229."name"()
    store_lex "$name", $P230
.annotate 'line', 564

            $P0 = find_lex '$name'
            $S0 = $P0
            $P231 = split '=', $S0
        
    store_lex "@names", $P231
.annotate 'line', 569
    find_lex $P233, "@names"
    defined $I234, $P233
    unless $I234, for_undef_109
    iter $P232, $P233
    new $P254, 'ExceptionHandler'
    set_addr $P254, loop253_handler
    $P254."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P254
  loop253_test:
    unless $P232, loop253_done
    shift $P235, $P232
  loop253_redo:
    .const 'Sub' $P237 = "22_1295142326.265" 
    capture_lex $P237
    $P237($P235)
  loop253_next:
    goto loop253_test
  loop253_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P255, exception, 'type'
    eq $P255, .CONTROL_LOOP_NEXT, loop253_next
    eq $P255, .CONTROL_LOOP_REDO, loop253_redo
  loop253_done:
    pop_eh 
  for_undef_109:
.annotate 'line', 573
    find_lex $P256, "$ast"
    unless_null $P256, vivify_111
    $P256 = root_new ['parrot';'ResizablePMCArray']
  vivify_111:
    set $P257, $P256[0]
    unless_null $P257, vivify_112
    new $P257, "Undef"
  vivify_112:
    find_lex $P258, "$count"
    $P259 = "capnames"($P257, $P258)
    store_lex "%x", $P259
.annotate 'line', 574
    find_lex $P261, "%x"
    defined $I262, $P261
    unless $I262, for_undef_113
    iter $P260, $P261
    new $P279, 'ExceptionHandler'
    set_addr $P279, loop278_handler
    $P279."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P279
  loop278_test:
    unless $P260, loop278_done
    shift $P263, $P260
  loop278_redo:
    .const 'Sub' $P265 = "23_1295142326.265" 
    capture_lex $P265
    $P265($P263)
  loop278_next:
    goto loop278_test
  loop278_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P280, exception, 'type'
    eq $P280, .CONTROL_LOOP_NEXT, loop278_next
    eq $P280, .CONTROL_LOOP_REDO, loop278_redo
  loop278_done:
    pop_eh 
  for_undef_113:
.annotate 'line', 577
    find_lex $P281, "%x"
    unless_null $P281, vivify_119
    $P281 = root_new ['parrot';'Hash']
  vivify_119:
    set $P282, $P281[""]
    unless_null $P282, vivify_120
    new $P282, "Undef"
  vivify_120:
    store_lex "$count", $P282
.annotate 'line', 562
    .return ($P282)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block236"  :anon :subid("22_1295142326.265") :outer("21_1295142326.265")
    .param pmc param_238
.annotate 'line', 569
    .lex "$_", param_238
.annotate 'line', 570
    find_lex $P242, "$_"
    set $S243, $P242
    iseq $I244, $S243, "0"
    unless $I244, unless_241
    new $P240, 'Integer'
    set $P240, $I244
    goto unless_241_end
  unless_241:
    find_lex $P245, "$_"
    set $N246, $P245
    isgt $I247, $N246, 0.0
    new $P240, 'Integer'
    set $P240, $I247
  unless_241_end:
    unless $P240, if_239_end
    find_lex $P248, "$_"
    add $P249, $P248, 1
    store_lex "$count", $P249
  if_239_end:
.annotate 'line', 571
    new $P250, "Integer"
    assign $P250, 1
    find_lex $P251, "$_"
    find_lex $P252, "%capnames"
    unless_null $P252, vivify_110
    $P252 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P252
  vivify_110:
    set $P252[$P251], $P250
.annotate 'line', 569
    .return ($P250)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block264"  :anon :subid("23_1295142326.265") :outer("21_1295142326.265")
    .param pmc param_266
.annotate 'line', 574
    .lex "$_", param_266
.annotate 'line', 575
    find_lex $P267, "$_"
    find_lex $P268, "%capnames"
    unless_null $P268, vivify_114
    $P268 = root_new ['parrot';'Hash']
  vivify_114:
    set $P269, $P268[$P267]
    unless_null $P269, vivify_115
    new $P269, "Undef"
  vivify_115:
    set $N270, $P269
    new $P271, 'Float'
    set $P271, $N270
    find_lex $P272, "$_"
    find_lex $P273, "%x"
    unless_null $P273, vivify_116
    $P273 = root_new ['parrot';'Hash']
  vivify_116:
    set $P274, $P273[$P272]
    unless_null $P274, vivify_117
    new $P274, "Undef"
  vivify_117:
    add $P275, $P271, $P274
    find_lex $P276, "$_"
    find_lex $P277, "%capnames"
    unless_null $P277, vivify_118
    $P277 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P277
  vivify_118:
    set $P277[$P276], $P275
.annotate 'line', 574
    .return ($P275)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block182"  :anon :subid("19_1295142326.265") :outer("13_1295142326.265")
.annotate 'line', 549
    .const 'Sub' $P201 = "20_1295142326.265" 
    capture_lex $P201
.annotate 'line', 550
    new $P184, "Undef"
    .lex "$name", $P184
.annotate 'line', 552
    $P185 = root_new ['parrot';'ResizablePMCArray']
    .lex "@names", $P185
.annotate 'line', 550
    find_lex $P186, "$ast"
    $P187 = $P186."name"()
    store_lex "$name", $P187
.annotate 'line', 551
    find_lex $P189, "$name"
    set $S190, $P189
    iseq $I191, $S190, ""
    unless $I191, if_188_end
    find_lex $P192, "$count"
    store_lex "$name", $P192
    find_lex $P193, "$ast"
    find_lex $P194, "$name"
    $P193."name"($P194)
  if_188_end:
.annotate 'line', 552

            $P0 = find_lex '$name'
            $S0 = $P0
            $P195 = split '=', $S0
        
    store_lex "@names", $P195
.annotate 'line', 557
    find_lex $P197, "@names"
    defined $I198, $P197
    unless $I198, for_undef_121
    iter $P196, $P197
    new $P218, 'ExceptionHandler'
    set_addr $P218, loop217_handler
    $P218."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P218
  loop217_test:
    unless $P196, loop217_done
    shift $P199, $P196
  loop217_redo:
    .const 'Sub' $P201 = "20_1295142326.265" 
    capture_lex $P201
    $P201($P199)
  loop217_next:
    goto loop217_test
  loop217_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P219, exception, 'type'
    eq $P219, .CONTROL_LOOP_NEXT, loop217_next
    eq $P219, .CONTROL_LOOP_REDO, loop217_redo
  loop217_done:
    pop_eh 
  for_undef_121:
.annotate 'line', 549
    .return ($P196)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block200"  :anon :subid("20_1295142326.265") :outer("19_1295142326.265")
    .param pmc param_202
.annotate 'line', 557
    .lex "$_", param_202
.annotate 'line', 558
    find_lex $P206, "$_"
    set $S207, $P206
    iseq $I208, $S207, "0"
    unless $I208, unless_205
    new $P204, 'Integer'
    set $P204, $I208
    goto unless_205_end
  unless_205:
    find_lex $P209, "$_"
    set $N210, $P209
    isgt $I211, $N210, 0.0
    new $P204, 'Integer'
    set $P204, $I211
  unless_205_end:
    unless $P204, if_203_end
    find_lex $P212, "$_"
    add $P213, $P212, 1
    store_lex "$count", $P213
  if_203_end:
.annotate 'line', 559
    new $P214, "Integer"
    assign $P214, 1
    find_lex $P215, "$_"
    find_lex $P216, "%capnames"
    unless_null $P216, vivify_122
    $P216 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P216
  vivify_122:
    set $P216[$P215], $P214
.annotate 'line', 557
    .return ($P214)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block140"  :anon :subid("17_1295142326.265") :outer("13_1295142326.265")
    .param pmc param_143
.annotate 'line', 541
    .const 'Sub' $P152 = "18_1295142326.265" 
    capture_lex $P152
.annotate 'line', 542
    $P142 = root_new ['parrot';'Hash']
    .lex "%x", $P142
    .lex "$_", param_143
    find_lex $P144, "$_"
    find_lex $P145, "$count"
    $P146 = "capnames"($P144, $P145)
    store_lex "%x", $P146
.annotate 'line', 543
    find_lex $P148, "%x"
    defined $I149, $P148
    unless $I149, for_undef_124
    iter $P147, $P148
    new $P166, 'ExceptionHandler'
    set_addr $P166, loop165_handler
    $P166."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P166
  loop165_test:
    unless $P147, loop165_done
    shift $P150, $P147
  loop165_redo:
    .const 'Sub' $P152 = "18_1295142326.265" 
    capture_lex $P152
    $P152($P150)
  loop165_next:
    goto loop165_test
  loop165_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P167, exception, 'type'
    eq $P167, .CONTROL_LOOP_NEXT, loop165_next
    eq $P167, .CONTROL_LOOP_REDO, loop165_redo
  loop165_done:
    pop_eh 
  for_undef_124:
.annotate 'line', 546
    find_lex $P168, "%x"
    unless_null $P168, vivify_130
    $P168 = root_new ['parrot';'Hash']
  vivify_130:
    set $P169, $P168[""]
    unless_null $P169, vivify_131
    new $P169, "Undef"
  vivify_131:
    store_lex "$count", $P169
.annotate 'line', 541
    .return ($P169)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block151"  :anon :subid("18_1295142326.265") :outer("17_1295142326.265")
    .param pmc param_153
.annotate 'line', 543
    .lex "$_", param_153
.annotate 'line', 544
    find_lex $P154, "$_"
    find_lex $P155, "%capnames"
    unless_null $P155, vivify_125
    $P155 = root_new ['parrot';'Hash']
  vivify_125:
    set $P156, $P155[$P154]
    unless_null $P156, vivify_126
    new $P156, "Undef"
  vivify_126:
    set $N157, $P156
    new $P158, 'Float'
    set $P158, $N157
    find_lex $P159, "$_"
    find_lex $P160, "%x"
    unless_null $P160, vivify_127
    $P160 = root_new ['parrot';'Hash']
  vivify_127:
    set $P161, $P160[$P159]
    unless_null $P161, vivify_128
    new $P161, "Undef"
  vivify_128:
    add $P162, $P158, $P161
    find_lex $P163, "$_"
    find_lex $P164, "%capnames"
    unless_null $P164, vivify_129
    $P164 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P164
  vivify_129:
    set $P164[$P163], $P162
.annotate 'line', 543
    .return ($P162)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block73"  :anon :subid("14_1295142326.265") :outer("13_1295142326.265")
.annotate 'line', 527
    .const 'Sub' $P83 = "15_1295142326.265" 
    capture_lex $P83
.annotate 'line', 528
    new $P75, "Undef"
    .lex "$max", $P75
    find_lex $P76, "$count"
    store_lex "$max", $P76
.annotate 'line', 529
    find_lex $P78, "$ast"
    $P79 = $P78."list"()
    defined $I80, $P79
    unless $I80, for_undef_132
    iter $P77, $P79
    new $P128, 'ExceptionHandler'
    set_addr $P128, loop127_handler
    $P128."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P128
  loop127_test:
    unless $P77, loop127_done
    shift $P81, $P77
  loop127_redo:
    .const 'Sub' $P83 = "15_1295142326.265" 
    capture_lex $P83
    $P83($P81)
  loop127_next:
    goto loop127_test
  loop127_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P129, exception, 'type'
    eq $P129, .CONTROL_LOOP_NEXT, loop127_next
    eq $P129, .CONTROL_LOOP_REDO, loop127_redo
  loop127_done:
    pop_eh 
  for_undef_132:
.annotate 'line', 538
    find_lex $P130, "$max"
    store_lex "$count", $P130
.annotate 'line', 527
    .return ($P130)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block82"  :anon :subid("15_1295142326.265") :outer("14_1295142326.265")
    .param pmc param_85
.annotate 'line', 529
    .const 'Sub' $P94 = "16_1295142326.265" 
    capture_lex $P94
.annotate 'line', 530
    $P84 = root_new ['parrot';'Hash']
    .lex "%x", $P84
    .lex "$_", param_85
    find_lex $P86, "$_"
    find_lex $P87, "$count"
    $P88 = "capnames"($P86, $P87)
    store_lex "%x", $P88
.annotate 'line', 531
    find_lex $P90, "%x"
    defined $I91, $P90
    unless $I91, for_undef_133
    iter $P89, $P90
    new $P115, 'ExceptionHandler'
    set_addr $P115, loop114_handler
    $P115."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P115
  loop114_test:
    unless $P89, loop114_done
    shift $P92, $P89
  loop114_redo:
    .const 'Sub' $P94 = "16_1295142326.265" 
    capture_lex $P94
    $P94($P92)
  loop114_next:
    goto loop114_test
  loop114_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P116, exception, 'type'
    eq $P116, .CONTROL_LOOP_NEXT, loop114_next
    eq $P116, .CONTROL_LOOP_REDO, loop114_redo
  loop114_done:
    pop_eh 
  for_undef_133:
.annotate 'line', 536
    find_lex $P119, "%x"
    unless_null $P119, vivify_139
    $P119 = root_new ['parrot';'Hash']
  vivify_139:
    set $P120, $P119[""]
    unless_null $P120, vivify_140
    new $P120, "Undef"
  vivify_140:
    set $N121, $P120
    find_lex $P122, "$max"
    set $N123, $P122
    isgt $I124, $N121, $N123
    if $I124, if_118
    new $P117, 'Integer'
    set $P117, $I124
    goto if_118_end
  if_118:
    find_lex $P125, "%x"
    unless_null $P125, vivify_141
    $P125 = root_new ['parrot';'Hash']
  vivify_141:
    set $P126, $P125[""]
    unless_null $P126, vivify_142
    new $P126, "Undef"
  vivify_142:
    store_lex "$max", $P126
    set $P117, $P126
  if_118_end:
.annotate 'line', 529
    .return ($P117)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block93"  :anon :subid("16_1295142326.265") :outer("15_1295142326.265")
    .param pmc param_95
.annotate 'line', 531
    .lex "$_", param_95
.annotate 'line', 532
    find_lex $P100, "$_"
    find_lex $P101, "%capnames"
    unless_null $P101, vivify_134
    $P101 = root_new ['parrot';'Hash']
  vivify_134:
    set $P102, $P101[$P100]
    unless_null $P102, vivify_135
    new $P102, "Undef"
  vivify_135:
    set $N103, $P102
    islt $I104, $N103, 2.0
    if $I104, if_99
    new $P98, 'Integer'
    set $P98, $I104
    goto if_99_end
  if_99:
    find_lex $P105, "$_"
    find_lex $P106, "%x"
    unless_null $P106, vivify_136
    $P106 = root_new ['parrot';'Hash']
  vivify_136:
    set $P107, $P106[$P105]
    unless_null $P107, vivify_137
    new $P107, "Undef"
  vivify_137:
    set $N108, $P107
    iseq $I109, $N108, 1.0
    new $P98, 'Integer'
    set $P98, $I109
  if_99_end:
    if $P98, if_97
    new $P111, "Integer"
    assign $P111, 2
    set $P96, $P111
    goto if_97_end
  if_97:
    new $P110, "Integer"
    assign $P110, 1
    set $P96, $P110
  if_97_end:
.annotate 'line', 533
    find_lex $P112, "$_"
    find_lex $P113, "%capnames"
    unless_null $P113, vivify_138
    $P113 = root_new ['parrot';'Hash']
    store_lex "%capnames", $P113
  vivify_138:
    set $P113[$P112], $P96
.annotate 'line', 531
    .return ($P96)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "backmod"  :subid("26_1295142326.265") :outer("11_1295142326.265")
    .param pmc param_317
    .param pmc param_318
.annotate 'line', 590
    new $P316, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P316, control_315
    push_eh $P316
    .lex "$ast", param_317
    .lex "$backmod", param_318
.annotate 'line', 591
    find_lex $P320, "$backmod"
    set $S321, $P320
    iseq $I322, $S321, ":"
    if $I322, if_319
.annotate 'line', 592
    find_lex $P327, "$backmod"
    set $S328, $P327
    iseq $I329, $S328, ":?"
    unless $I329, unless_326
    new $P325, 'Integer'
    set $P325, $I329
    goto unless_326_end
  unless_326:
    find_lex $P330, "$backmod"
    set $S331, $P330
    iseq $I332, $S331, "?"
    new $P325, 'Integer'
    set $P325, $I332
  unless_326_end:
    if $P325, if_324
.annotate 'line', 593
    find_lex $P337, "$backmod"
    set $S338, $P337
    iseq $I339, $S338, ":!"
    unless $I339, unless_336
    new $P335, 'Integer'
    set $P335, $I339
    goto unless_336_end
  unless_336:
    find_lex $P340, "$backmod"
    set $S341, $P340
    iseq $I342, $S341, "!"
    new $P335, 'Integer'
    set $P335, $I342
  unless_336_end:
    unless $P335, if_334_end
    find_lex $P343, "$ast"
    $P343."backtrack"("g")
  if_334_end:
    goto if_324_end
  if_324:
.annotate 'line', 592
    find_lex $P333, "$ast"
    $P333."backtrack"("f")
  if_324_end:
    goto if_319_end
  if_319:
.annotate 'line', 591
    find_lex $P323, "$ast"
    $P323."backtrack"("r")
  if_319_end:
    find_lex $P344, "$ast"
.annotate 'line', 590
    .return ($P344)
  control_315:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P345, exception, "payload"
    .return ($P345)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "arg"  :subid("27_1295142326.265") :outer("11_1295142326.265")
    .param pmc param_351
    .param pmc param_352
.annotate 'line', 14
    new $P350, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P350, control_349
    push_eh $P350
    .lex "self", param_351
    .lex "$/", param_352
.annotate 'line', 15
    find_lex $P353, "$/"
    find_lex $P356, "$/"
    unless_null $P356, vivify_144
    $P356 = root_new ['parrot';'Hash']
  vivify_144:
    set $P357, $P356["quote_EXPR"]
    unless_null $P357, vivify_145
    new $P357, "Undef"
  vivify_145:
    if $P357, if_355
    find_lex $P361, "$/"
    unless_null $P361, vivify_146
    $P361 = root_new ['parrot';'Hash']
  vivify_146:
    set $P362, $P361["val"]
    unless_null $P362, vivify_147
    new $P362, "Undef"
  vivify_147:
    set $N363, $P362
    new $P354, 'Float'
    set $P354, $N363
    goto if_355_end
  if_355:
    find_lex $P358, "$/"
    unless_null $P358, vivify_148
    $P358 = root_new ['parrot';'Hash']
  vivify_148:
    set $P359, $P358["quote_EXPR"]
    unless_null $P359, vivify_149
    new $P359, "Undef"
  vivify_149:
    $P360 = $P359."ast"()
    set $P354, $P360
  if_355_end:
    $P364 = $P353."!make"($P354)
.annotate 'line', 14
    .return ($P364)
  control_349:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P365, exception, "payload"
    .return ($P365)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "arglist"  :subid("28_1295142326.265") :outer("11_1295142326.265")
    .param pmc param_369
    .param pmc param_370
.annotate 'line', 18
    .const 'Sub' $P380 = "29_1295142326.265" 
    capture_lex $P380
    new $P368, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P368, control_367
    push_eh $P368
    .lex "self", param_369
    .lex "$/", param_370
.annotate 'line', 19
    new $P371, "Undef"
    .lex "$past", $P371
    get_hll_global $P372, ["PAST"], "Op"
    $P373 = $P372."new"("list" :named("pasttype"))
    store_lex "$past", $P373
.annotate 'line', 20
    find_lex $P375, "$/"
    unless_null $P375, vivify_150
    $P375 = root_new ['parrot';'Hash']
  vivify_150:
    set $P376, $P375["arg"]
    unless_null $P376, vivify_151
    new $P376, "Undef"
  vivify_151:
    defined $I377, $P376
    unless $I377, for_undef_152
    iter $P374, $P376
    new $P387, 'ExceptionHandler'
    set_addr $P387, loop386_handler
    $P387."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P387
  loop386_test:
    unless $P374, loop386_done
    shift $P378, $P374
  loop386_redo:
    .const 'Sub' $P380 = "29_1295142326.265" 
    capture_lex $P380
    $P380($P378)
  loop386_next:
    goto loop386_test
  loop386_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P388, exception, 'type'
    eq $P388, .CONTROL_LOOP_NEXT, loop386_next
    eq $P388, .CONTROL_LOOP_REDO, loop386_redo
  loop386_done:
    pop_eh 
  for_undef_152:
.annotate 'line', 21
    find_lex $P389, "$/"
    find_lex $P390, "$past"
    $P391 = $P389."!make"($P390)
.annotate 'line', 18
    .return ($P391)
  control_367:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P392, exception, "payload"
    .return ($P392)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block379"  :anon :subid("29_1295142326.265") :outer("28_1295142326.265")
    .param pmc param_381
.annotate 'line', 20
    .lex "$_", param_381
    find_lex $P382, "$past"
    find_lex $P383, "$_"
    $P384 = $P383."ast"()
    $P385 = $P382."push"($P384)
    .return ($P385)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "TOP"  :subid("30_1295142326.265") :outer("11_1295142326.265")
    .param pmc param_396
    .param pmc param_397
.annotate 'line', 24
    new $P395, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P395, control_394
    push_eh $P395
    .lex "self", param_396
    .lex "$/", param_397
.annotate 'line', 25
    new $P398, "Undef"
    .lex "$past", $P398
    find_lex $P399, "$/"
    unless_null $P399, vivify_153
    $P399 = root_new ['parrot';'Hash']
  vivify_153:
    set $P400, $P399["nibbler"]
    unless_null $P400, vivify_154
    new $P400, "Undef"
  vivify_154:
    $P401 = $P400."ast"()
    $P402 = "buildsub"($P401)
    store_lex "$past", $P402
.annotate 'line', 26
    find_lex $P403, "$past"
    find_lex $P404, "$/"
    $P403."node"($P404)
.annotate 'line', 27
    find_lex $P405, "$/"
    find_lex $P406, "$past"
    $P407 = $P405."!make"($P406)
.annotate 'line', 24
    .return ($P407)
  control_394:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P408, exception, "payload"
    .return ($P408)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "nibbler"  :subid("31_1295142326.265") :outer("11_1295142326.265")
    .param pmc param_412
    .param pmc param_413
    .param pmc param_414 :optional
    .param int has_param_414 :opt_flag
.annotate 'line', 30
    .const 'Sub' $P449 = "33_1295142326.265" 
    capture_lex $P449
    .const 'Sub' $P422 = "32_1295142326.265" 
    capture_lex $P422
    new $P411, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P411, control_410
    push_eh $P411
    .lex "self", param_412
    .lex "$/", param_413
    if has_param_414, optparam_155
    new $P415, "Undef"
    set param_414, $P415
  optparam_155:
    .lex "$key", param_414
.annotate 'line', 39
    new $P416, "Undef"
    .lex "$past", $P416
.annotate 'line', 31
    find_lex $P418, "$key"
    set $S419, $P418
    iseq $I420, $S419, "open"
    unless $I420, if_417_end
    .const 'Sub' $P422 = "32_1295142326.265" 
    capture_lex $P422
    $P422()
  if_417_end:
.annotate 'line', 38
    get_global $P433, "@MODIFIERS"
    $P433."shift"()
    find_lex $P434, "$past"
.annotate 'line', 40
    find_lex $P436, "$/"
    unless_null $P436, vivify_158
    $P436 = root_new ['parrot';'Hash']
  vivify_158:
    set $P437, $P436["termconj"]
    unless_null $P437, vivify_159
    new $P437, "Undef"
  vivify_159:
    set $N438, $P437
    isgt $I439, $N438, 1.0
    if $I439, if_435
.annotate 'line', 47
    find_lex $P458, "$/"
    unless_null $P458, vivify_160
    $P458 = root_new ['parrot';'Hash']
  vivify_160:
    set $P459, $P458["termconj"]
    unless_null $P459, vivify_161
    $P459 = root_new ['parrot';'ResizablePMCArray']
  vivify_161:
    set $P460, $P459[0]
    unless_null $P460, vivify_162
    new $P460, "Undef"
  vivify_162:
    $P461 = $P460."ast"()
    store_lex "$past", $P461
.annotate 'line', 46
    goto if_435_end
  if_435:
.annotate 'line', 41
    get_hll_global $P440, ["PAST"], "Regex"
    find_lex $P441, "$/"
    $P442 = $P440."new"("alt" :named("pasttype"), $P441 :named("node"))
    store_lex "$past", $P442
.annotate 'line', 42
    find_lex $P444, "$/"
    unless_null $P444, vivify_163
    $P444 = root_new ['parrot';'Hash']
  vivify_163:
    set $P445, $P444["termconj"]
    unless_null $P445, vivify_164
    new $P445, "Undef"
  vivify_164:
    defined $I446, $P445
    unless $I446, for_undef_165
    iter $P443, $P445
    new $P456, 'ExceptionHandler'
    set_addr $P456, loop455_handler
    $P456."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P456
  loop455_test:
    unless $P443, loop455_done
    shift $P447, $P443
  loop455_redo:
    .const 'Sub' $P449 = "33_1295142326.265" 
    capture_lex $P449
    $P449($P447)
  loop455_next:
    goto loop455_test
  loop455_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P457, exception, 'type'
    eq $P457, .CONTROL_LOOP_NEXT, loop455_next
    eq $P457, .CONTROL_LOOP_REDO, loop455_redo
  loop455_done:
    pop_eh 
  for_undef_165:
  if_435_end:
.annotate 'line', 49
    find_lex $P462, "$/"
    find_lex $P463, "$past"
    $P464 = $P462."!make"($P463)
.annotate 'line', 30
    .return ($P464)
  control_410:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P465, exception, "payload"
    .return ($P465)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "_block421"  :anon :subid("32_1295142326.265") :outer("31_1295142326.265")
.annotate 'line', 32
    $P423 = root_new ['parrot';'Hash']
    .lex "%old", $P423
.annotate 'line', 33
    $P424 = root_new ['parrot';'Hash']
    .lex "%new", $P424
.annotate 'line', 32
    get_global $P425, "@MODIFIERS"
    unless_null $P425, vivify_156
    $P425 = root_new ['parrot';'ResizablePMCArray']
  vivify_156:
    set $P426, $P425[0]
    unless_null $P426, vivify_157
    new $P426, "Undef"
  vivify_157:
    store_lex "%old", $P426
.annotate 'line', 33
    find_lex $P427, "%old"
    clone $P428, $P427
    store_lex "%new", $P428
.annotate 'line', 34
    get_global $P429, "@MODIFIERS"
    find_lex $P430, "%new"
    $P429."unshift"($P430)
.annotate 'line', 35
    new $P431, "Exception"
    set $P431['type'], .CONTROL_RETURN
    new $P432, "Integer"
    assign $P432, 1
    setattribute $P431, 'payload', $P432
    throw $P431
.annotate 'line', 31
    .return ()
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block448"  :anon :subid("33_1295142326.265") :outer("31_1295142326.265")
    .param pmc param_450
.annotate 'line', 42
    .lex "$_", param_450
.annotate 'line', 43
    find_lex $P451, "$past"
    find_lex $P452, "$_"
    $P453 = $P452."ast"()
    $P454 = $P451."push"($P453)
.annotate 'line', 42
    .return ($P454)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "termconj"  :subid("34_1295142326.265") :outer("11_1295142326.265")
    .param pmc param_469
    .param pmc param_470
.annotate 'line', 52
    .const 'Sub' $P487 = "35_1295142326.265" 
    capture_lex $P487
    new $P468, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P468, control_467
    push_eh $P468
    .lex "self", param_469
    .lex "$/", param_470
.annotate 'line', 53
    new $P471, "Undef"
    .lex "$past", $P471
.annotate 'line', 52
    find_lex $P472, "$past"
.annotate 'line', 54
    find_lex $P474, "$/"
    unless_null $P474, vivify_166
    $P474 = root_new ['parrot';'Hash']
  vivify_166:
    set $P475, $P474["termish"]
    unless_null $P475, vivify_167
    new $P475, "Undef"
  vivify_167:
    set $N476, $P475
    isgt $I477, $N476, 1.0
    if $I477, if_473
.annotate 'line', 61
    find_lex $P496, "$/"
    unless_null $P496, vivify_168
    $P496 = root_new ['parrot';'Hash']
  vivify_168:
    set $P497, $P496["termish"]
    unless_null $P497, vivify_169
    $P497 = root_new ['parrot';'ResizablePMCArray']
  vivify_169:
    set $P498, $P497[0]
    unless_null $P498, vivify_170
    new $P498, "Undef"
  vivify_170:
    $P499 = $P498."ast"()
    store_lex "$past", $P499
.annotate 'line', 60
    goto if_473_end
  if_473:
.annotate 'line', 55
    get_hll_global $P478, ["PAST"], "Regex"
    find_lex $P479, "$/"
    $P480 = $P478."new"("conj" :named("pasttype"), $P479 :named("node"))
    store_lex "$past", $P480
.annotate 'line', 56
    find_lex $P482, "$/"
    unless_null $P482, vivify_171
    $P482 = root_new ['parrot';'Hash']
  vivify_171:
    set $P483, $P482["termish"]
    unless_null $P483, vivify_172
    new $P483, "Undef"
  vivify_172:
    defined $I484, $P483
    unless $I484, for_undef_173
    iter $P481, $P483
    new $P494, 'ExceptionHandler'
    set_addr $P494, loop493_handler
    $P494."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P494
  loop493_test:
    unless $P481, loop493_done
    shift $P485, $P481
  loop493_redo:
    .const 'Sub' $P487 = "35_1295142326.265" 
    capture_lex $P487
    $P487($P485)
  loop493_next:
    goto loop493_test
  loop493_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P495, exception, 'type'
    eq $P495, .CONTROL_LOOP_NEXT, loop493_next
    eq $P495, .CONTROL_LOOP_REDO, loop493_redo
  loop493_done:
    pop_eh 
  for_undef_173:
  if_473_end:
.annotate 'line', 63
    find_lex $P500, "$/"
    find_lex $P501, "$past"
    $P502 = $P500."!make"($P501)
.annotate 'line', 52
    .return ($P502)
  control_467:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P503, exception, "payload"
    .return ($P503)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block486"  :anon :subid("35_1295142326.265") :outer("34_1295142326.265")
    .param pmc param_488
.annotate 'line', 56
    .lex "$_", param_488
.annotate 'line', 57
    find_lex $P489, "$past"
    find_lex $P490, "$_"
    $P491 = $P490."ast"()
    $P492 = $P489."push"($P491)
.annotate 'line', 56
    .return ($P492)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "termish"  :subid("36_1295142326.265") :outer("11_1295142326.265")
    .param pmc param_507
    .param pmc param_508
.annotate 'line', 66
    .const 'Sub' $P521 = "37_1295142326.265" 
    capture_lex $P521
    new $P506, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P506, control_505
    push_eh $P506
    .lex "self", param_507
    .lex "$/", param_508
.annotate 'line', 67
    new $P509, "Undef"
    .lex "$past", $P509
.annotate 'line', 68
    new $P510, "Undef"
    .lex "$lastlit", $P510
.annotate 'line', 67
    get_hll_global $P511, ["PAST"], "Regex"
    find_lex $P512, "$/"
    $P513 = $P511."new"("concat" :named("pasttype"), $P512 :named("node"))
    store_lex "$past", $P513
.annotate 'line', 68
    new $P514, "Integer"
    assign $P514, 0
    store_lex "$lastlit", $P514
.annotate 'line', 69
    find_lex $P516, "$/"
    unless_null $P516, vivify_174
    $P516 = root_new ['parrot';'Hash']
  vivify_174:
    set $P517, $P516["noun"]
    unless_null $P517, vivify_175
    new $P517, "Undef"
  vivify_175:
    defined $I518, $P517
    unless $I518, for_undef_176
    iter $P515, $P517
    new $P567, 'ExceptionHandler'
    set_addr $P567, loop566_handler
    $P567."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P567
  loop566_test:
    unless $P515, loop566_done
    shift $P519, $P515
  loop566_redo:
    .const 'Sub' $P521 = "37_1295142326.265" 
    capture_lex $P521
    $P521($P519)
  loop566_next:
    goto loop566_test
  loop566_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P568, exception, 'type'
    eq $P568, .CONTROL_LOOP_NEXT, loop566_next
    eq $P568, .CONTROL_LOOP_REDO, loop566_redo
  loop566_done:
    pop_eh 
  for_undef_176:
.annotate 'line', 84
    find_lex $P569, "$/"
    find_lex $P570, "$past"
    $P571 = $P569."!make"($P570)
.annotate 'line', 66
    .return ($P571)
  control_505:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P572, exception, "payload"
    .return ($P572)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block520"  :anon :subid("37_1295142326.265") :outer("36_1295142326.265")
    .param pmc param_523
.annotate 'line', 70
    new $P522, "Undef"
    .lex "$ast", $P522
    .lex "$_", param_523
    find_lex $P524, "$_"
    $P525 = $P524."ast"()
    store_lex "$ast", $P525
.annotate 'line', 71
    find_lex $P528, "$ast"
    if $P528, if_527
    set $P526, $P528
    goto if_527_end
  if_527:
.annotate 'line', 72
    find_lex $P535, "$lastlit"
    if $P535, if_534
    set $P533, $P535
    goto if_534_end
  if_534:
    find_lex $P536, "$ast"
    $S537 = $P536."pasttype"()
    iseq $I538, $S537, "literal"
    new $P533, 'Integer'
    set $P533, $I538
  if_534_end:
    if $P533, if_532
    set $P531, $P533
    goto if_532_end
  if_532:
.annotate 'line', 73
    get_hll_global $P539, ["PAST"], "Node"
    find_lex $P540, "$ast"
    unless_null $P540, vivify_177
    $P540 = root_new ['parrot';'ResizablePMCArray']
  vivify_177:
    set $P541, $P540[0]
    unless_null $P541, vivify_178
    new $P541, "Undef"
  vivify_178:
    $P542 = $P539."ACCEPTS"($P541)
    isfalse $I543, $P542
    new $P531, 'Integer'
    set $P531, $I543
  if_532_end:
    if $P531, if_530
.annotate 'line', 77
    find_lex $P550, "$past"
    find_lex $P551, "$ast"
    $P550."push"($P551)
.annotate 'line', 78
    find_lex $P556, "$ast"
    $S557 = $P556."pasttype"()
    iseq $I558, $S557, "literal"
    if $I558, if_555
    new $P554, 'Integer'
    set $P554, $I558
    goto if_555_end
  if_555:
.annotate 'line', 79
    get_hll_global $P559, ["PAST"], "Node"
    find_lex $P560, "$ast"
    unless_null $P560, vivify_179
    $P560 = root_new ['parrot';'ResizablePMCArray']
  vivify_179:
    set $P561, $P560[0]
    unless_null $P561, vivify_180
    new $P561, "Undef"
  vivify_180:
    $P562 = $P559."ACCEPTS"($P561)
    isfalse $I563, $P562
    new $P554, 'Integer'
    set $P554, $I563
  if_555_end:
    if $P554, if_553
    new $P565, "Integer"
    assign $P565, 0
    set $P552, $P565
    goto if_553_end
  if_553:
    find_lex $P564, "$ast"
    set $P552, $P564
  if_553_end:
.annotate 'line', 80
    store_lex "$lastlit", $P552
.annotate 'line', 76
    set $P529, $P552
.annotate 'line', 73
    goto if_530_end
  if_530:
.annotate 'line', 74
    find_lex $P544, "$lastlit"
    unless_null $P544, vivify_181
    $P544 = root_new ['parrot';'ResizablePMCArray']
  vivify_181:
    set $P545, $P544[0]
    unless_null $P545, vivify_182
    new $P545, "Undef"
  vivify_182:
    find_lex $P546, "$ast"
    unless_null $P546, vivify_183
    $P546 = root_new ['parrot';'ResizablePMCArray']
  vivify_183:
    set $P547, $P546[0]
    unless_null $P547, vivify_184
    new $P547, "Undef"
  vivify_184:
    concat $P548, $P545, $P547
    find_lex $P549, "$lastlit"
    unless_null $P549, vivify_185
    $P549 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$lastlit", $P549
  vivify_185:
    set $P549[0], $P548
.annotate 'line', 73
    set $P529, $P548
  if_530_end:
.annotate 'line', 71
    set $P526, $P529
  if_527_end:
.annotate 'line', 69
    .return ($P526)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "quantified_atom"  :subid("38_1295142326.265") :outer("11_1295142326.265")
    .param pmc param_576
    .param pmc param_577
.annotate 'line', 87
    .const 'Sub' $P586 = "39_1295142326.265" 
    capture_lex $P586
    new $P575, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P575, control_574
    push_eh $P575
    .lex "self", param_576
    .lex "$/", param_577
.annotate 'line', 88
    new $P578, "Undef"
    .lex "$past", $P578
    find_lex $P579, "$/"
    unless_null $P579, vivify_186
    $P579 = root_new ['parrot';'Hash']
  vivify_186:
    set $P580, $P579["atom"]
    unless_null $P580, vivify_187
    new $P580, "Undef"
  vivify_187:
    $P581 = $P580."ast"()
    store_lex "$past", $P581
.annotate 'line', 89
    find_lex $P583, "$/"
    unless_null $P583, vivify_188
    $P583 = root_new ['parrot';'Hash']
  vivify_188:
    set $P584, $P583["quantifier"]
    unless_null $P584, vivify_189
    new $P584, "Undef"
  vivify_189:
    if $P584, if_582
.annotate 'line', 95
    find_lex $P601, "$/"
    unless_null $P601, vivify_190
    $P601 = root_new ['parrot';'Hash']
  vivify_190:
    set $P602, $P601["backmod"]
    unless_null $P602, vivify_191
    $P602 = root_new ['parrot';'ResizablePMCArray']
  vivify_191:
    set $P603, $P602[0]
    unless_null $P603, vivify_192
    new $P603, "Undef"
  vivify_192:
    unless $P603, if_600_end
    find_lex $P604, "$past"
    find_lex $P605, "$/"
    unless_null $P605, vivify_193
    $P605 = root_new ['parrot';'Hash']
  vivify_193:
    set $P606, $P605["backmod"]
    unless_null $P606, vivify_194
    $P606 = root_new ['parrot';'ResizablePMCArray']
  vivify_194:
    set $P607, $P606[0]
    unless_null $P607, vivify_195
    new $P607, "Undef"
  vivify_195:
    "backmod"($P604, $P607)
  if_600_end:
    goto if_582_end
  if_582:
.annotate 'line', 89
    .const 'Sub' $P586 = "39_1295142326.265" 
    capture_lex $P586
    $P586()
  if_582_end:
.annotate 'line', 96
    find_lex $P613, "$past"
    if $P613, if_612
    set $P611, $P613
    goto if_612_end
  if_612:
    find_lex $P614, "$past"
    $P615 = $P614."backtrack"()
    isfalse $I616, $P615
    new $P611, 'Integer'
    set $P611, $I616
  if_612_end:
    if $P611, if_610
    set $P609, $P611
    goto if_610_end
  if_610:
    get_global $P617, "@MODIFIERS"
    unless_null $P617, vivify_199
    $P617 = root_new ['parrot';'ResizablePMCArray']
  vivify_199:
    set $P618, $P617[0]
    unless_null $P618, vivify_200
    $P618 = root_new ['parrot';'Hash']
  vivify_200:
    set $P619, $P618["r"]
    unless_null $P619, vivify_201
    new $P619, "Undef"
  vivify_201:
    set $P609, $P619
  if_610_end:
    unless $P609, if_608_end
.annotate 'line', 97
    find_lex $P620, "$past"
    $P620."backtrack"("r")
  if_608_end:
.annotate 'line', 99
    find_lex $P621, "$/"
    find_lex $P622, "$past"
    $P623 = $P621."!make"($P622)
.annotate 'line', 87
    .return ($P623)
  control_574:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P624, exception, "payload"
    .return ($P624)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block585"  :anon :subid("39_1295142326.265") :outer("38_1295142326.265")
.annotate 'line', 91
    new $P587, "Undef"
    .lex "$qast", $P587
.annotate 'line', 90
    find_lex $P589, "$past"
    isfalse $I590, $P589
    unless $I590, if_588_end
    find_lex $P591, "$/"
    $P592 = $P591."CURSOR"()
    $P592."panic"("Quantifier follows nothing")
  if_588_end:
.annotate 'line', 91
    find_lex $P593, "$/"
    unless_null $P593, vivify_196
    $P593 = root_new ['parrot';'Hash']
  vivify_196:
    set $P594, $P593["quantifier"]
    unless_null $P594, vivify_197
    $P594 = root_new ['parrot';'ResizablePMCArray']
  vivify_197:
    set $P595, $P594[0]
    unless_null $P595, vivify_198
    new $P595, "Undef"
  vivify_198:
    $P596 = $P595."ast"()
    store_lex "$qast", $P596
.annotate 'line', 92
    find_lex $P597, "$qast"
    find_lex $P598, "$past"
    $P597."unshift"($P598)
.annotate 'line', 93
    find_lex $P599, "$qast"
    store_lex "$past", $P599
.annotate 'line', 89
    .return ($P599)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "atom"  :subid("40_1295142326.265") :outer("11_1295142326.265")
    .param pmc param_628
    .param pmc param_629
.annotate 'line', 102
    new $P627, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P627, control_626
    push_eh $P627
    .lex "self", param_628
    .lex "$/", param_629
.annotate 'line', 103
    new $P630, "Undef"
    .lex "$past", $P630
.annotate 'line', 102
    find_lex $P631, "$past"
.annotate 'line', 104
    find_lex $P633, "$/"
    unless_null $P633, vivify_202
    $P633 = root_new ['parrot';'Hash']
  vivify_202:
    set $P634, $P633["metachar"]
    unless_null $P634, vivify_203
    new $P634, "Undef"
  vivify_203:
    if $P634, if_632
.annotate 'line', 106
    get_hll_global $P638, ["PAST"], "Regex"
    find_lex $P639, "$/"
    set $S640, $P639
    find_lex $P641, "$/"
    $P642 = $P638."new"($S640, "literal" :named("pasttype"), $P641 :named("node"))
    store_lex "$past", $P642
.annotate 'line', 107
    get_global $P644, "@MODIFIERS"
    unless_null $P644, vivify_204
    $P644 = root_new ['parrot';'ResizablePMCArray']
  vivify_204:
    set $P645, $P644[0]
    unless_null $P645, vivify_205
    $P645 = root_new ['parrot';'Hash']
  vivify_205:
    set $P646, $P645["i"]
    unless_null $P646, vivify_206
    new $P646, "Undef"
  vivify_206:
    unless $P646, if_643_end
    find_lex $P647, "$past"
    $P647."subtype"("ignorecase")
  if_643_end:
.annotate 'line', 105
    goto if_632_end
  if_632:
.annotate 'line', 104
    find_lex $P635, "$/"
    unless_null $P635, vivify_207
    $P635 = root_new ['parrot';'Hash']
  vivify_207:
    set $P636, $P635["metachar"]
    unless_null $P636, vivify_208
    new $P636, "Undef"
  vivify_208:
    $P637 = $P636."ast"()
    store_lex "$past", $P637
  if_632_end:
.annotate 'line', 109
    find_lex $P648, "$/"
    find_lex $P649, "$past"
    $P650 = $P648."!make"($P649)
.annotate 'line', 102
    .return ($P650)
  control_626:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P651, exception, "payload"
    .return ($P651)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "quantifier:sym<*>"  :subid("41_1295142326.265") :outer("11_1295142326.265")
    .param pmc param_655
    .param pmc param_656
.annotate 'line', 112
    new $P654, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P654, control_653
    push_eh $P654
    .lex "self", param_655
    .lex "$/", param_656
.annotate 'line', 113
    new $P657, "Undef"
    .lex "$past", $P657
    get_hll_global $P658, ["PAST"], "Regex"
    find_lex $P659, "$/"
    $P660 = $P658."new"("quant" :named("pasttype"), $P659 :named("node"))
    store_lex "$past", $P660
.annotate 'line', 114
    find_lex $P661, "$/"
    find_lex $P662, "$past"
    find_lex $P663, "$/"
    unless_null $P663, vivify_209
    $P663 = root_new ['parrot';'Hash']
  vivify_209:
    set $P664, $P663["backmod"]
    unless_null $P664, vivify_210
    new $P664, "Undef"
  vivify_210:
    $P665 = "backmod"($P662, $P664)
    $P666 = $P661."!make"($P665)
.annotate 'line', 112
    .return ($P666)
  control_653:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P667, exception, "payload"
    .return ($P667)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "quantifier:sym<+>"  :subid("42_1295142326.265") :outer("11_1295142326.265")
    .param pmc param_671
    .param pmc param_672
.annotate 'line', 117
    new $P670, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P670, control_669
    push_eh $P670
    .lex "self", param_671
    .lex "$/", param_672
.annotate 'line', 118
    new $P673, "Undef"
    .lex "$past", $P673
    get_hll_global $P674, ["PAST"], "Regex"
    find_lex $P675, "$/"
    $P676 = $P674."new"("quant" :named("pasttype"), 1 :named("min"), $P675 :named("node"))
    store_lex "$past", $P676
.annotate 'line', 119
    find_lex $P677, "$/"
    find_lex $P678, "$past"
    find_lex $P679, "$/"
    unless_null $P679, vivify_211
    $P679 = root_new ['parrot';'Hash']
  vivify_211:
    set $P680, $P679["backmod"]
    unless_null $P680, vivify_212
    new $P680, "Undef"
  vivify_212:
    $P681 = "backmod"($P678, $P680)
    $P682 = $P677."!make"($P681)
.annotate 'line', 117
    .return ($P682)
  control_669:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P683, exception, "payload"
    .return ($P683)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "quantifier:sym<?>"  :subid("43_1295142326.265") :outer("11_1295142326.265")
    .param pmc param_687
    .param pmc param_688
.annotate 'line', 122
    new $P686, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P686, control_685
    push_eh $P686
    .lex "self", param_687
    .lex "$/", param_688
.annotate 'line', 123
    new $P689, "Undef"
    .lex "$past", $P689
    get_hll_global $P690, ["PAST"], "Regex"
    find_lex $P691, "$/"
    $P692 = $P690."new"("quant" :named("pasttype"), 0 :named("min"), 1 :named("max"), $P691 :named("node"))
    store_lex "$past", $P692
.annotate 'line', 124
    find_lex $P693, "$/"
    find_lex $P694, "$past"
    find_lex $P695, "$/"
    unless_null $P695, vivify_213
    $P695 = root_new ['parrot';'Hash']
  vivify_213:
    set $P696, $P695["backmod"]
    unless_null $P696, vivify_214
    new $P696, "Undef"
  vivify_214:
    $P697 = "backmod"($P694, $P696)
    $P693."!make"($P697)
.annotate 'line', 125
    find_lex $P698, "$/"
    find_lex $P699, "$past"
    $P700 = $P698."!make"($P699)
.annotate 'line', 122
    .return ($P700)
  control_685:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P701, exception, "payload"
    .return ($P701)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "quantifier:sym<**>"  :subid("44_1295142326.265") :outer("11_1295142326.265")
    .param pmc param_705
    .param pmc param_706
.annotate 'line', 128
    .const 'Sub' $P721 = "45_1295142326.265" 
    capture_lex $P721
    new $P704, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P704, control_703
    push_eh $P704
    .lex "self", param_705
    .lex "$/", param_706
.annotate 'line', 129
    new $P707, "Undef"
    .lex "$past", $P707
.annotate 'line', 130
    new $P708, "Undef"
    .lex "$ws", $P708
.annotate 'line', 128
    find_lex $P709, "$past"
.annotate 'line', 130
    find_lex $P712, "$/"
    unless_null $P712, vivify_215
    $P712 = root_new ['parrot';'Hash']
  vivify_215:
    set $P713, $P712["normspace"]
    unless_null $P713, vivify_216
    new $P713, "Undef"
  vivify_216:
    if $P713, if_711
    set $P710, $P713
    goto if_711_end
  if_711:
    get_global $P714, "@MODIFIERS"
    unless_null $P714, vivify_217
    $P714 = root_new ['parrot';'ResizablePMCArray']
  vivify_217:
    set $P715, $P714[0]
    unless_null $P715, vivify_218
    $P715 = root_new ['parrot';'Hash']
  vivify_218:
    set $P716, $P715["s"]
    unless_null $P716, vivify_219
    new $P716, "Undef"
  vivify_219:
    set $P710, $P716
  if_711_end:
    store_lex "$ws", $P710
.annotate 'line', 131
    find_lex $P718, "$/"
    unless_null $P718, vivify_220
    $P718 = root_new ['parrot';'Hash']
  vivify_220:
    set $P719, $P718["quantified_atom"]
    unless_null $P719, vivify_221
    new $P719, "Undef"
  vivify_221:
    if $P719, if_717
.annotate 'line', 147
    get_hll_global $P739, ["PAST"], "Regex"
    find_lex $P740, "$/"
    unless_null $P740, vivify_222
    $P740 = root_new ['parrot';'Hash']
  vivify_222:
    set $P741, $P740["min"]
    unless_null $P741, vivify_223
    new $P741, "Undef"
  vivify_223:
    set $N742, $P741
    find_lex $P743, "$/"
    $P744 = $P739."new"("quant" :named("pasttype"), $N742 :named("min"), $P743 :named("node"))
    store_lex "$past", $P744
.annotate 'line', 148
    find_lex $P746, "$/"
    unless_null $P746, vivify_224
    $P746 = root_new ['parrot';'Hash']
  vivify_224:
    set $P747, $P746["max"]
    unless_null $P747, vivify_225
    new $P747, "Undef"
  vivify_225:
    isfalse $I748, $P747
    if $I748, if_745
.annotate 'line', 149
    find_lex $P754, "$/"
    unless_null $P754, vivify_226
    $P754 = root_new ['parrot';'Hash']
  vivify_226:
    set $P755, $P754["max"]
    unless_null $P755, vivify_227
    $P755 = root_new ['parrot';'ResizablePMCArray']
  vivify_227:
    set $P756, $P755[0]
    unless_null $P756, vivify_228
    new $P756, "Undef"
  vivify_228:
    set $S757, $P756
    isne $I758, $S757, "*"
    unless $I758, if_753_end
    find_lex $P759, "$past"
    find_lex $P760, "$/"
    unless_null $P760, vivify_229
    $P760 = root_new ['parrot';'Hash']
  vivify_229:
    set $P761, $P760["max"]
    unless_null $P761, vivify_230
    $P761 = root_new ['parrot';'ResizablePMCArray']
  vivify_230:
    set $P762, $P761[0]
    unless_null $P762, vivify_231
    new $P762, "Undef"
  vivify_231:
    set $N763, $P762
    $P759."max"($N763)
  if_753_end:
    goto if_745_end
  if_745:
.annotate 'line', 148
    find_lex $P749, "$past"
    find_lex $P750, "$/"
    unless_null $P750, vivify_232
    $P750 = root_new ['parrot';'Hash']
  vivify_232:
    set $P751, $P750["min"]
    unless_null $P751, vivify_233
    new $P751, "Undef"
  vivify_233:
    set $N752, $P751
    $P749."max"($N752)
  if_745_end:
.annotate 'line', 150
    find_lex $P765, "$ws"
    unless $P765, if_764_end
    find_lex $P766, "$past"
    get_hll_global $P767, ["PAST"], "Regex"
    $P768 = $P767."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"))
    $P766."sep"($P768)
  if_764_end:
.annotate 'line', 146
    goto if_717_end
  if_717:
.annotate 'line', 131
    .const 'Sub' $P721 = "45_1295142326.265" 
    capture_lex $P721
    $P721()
  if_717_end:
.annotate 'line', 154
    find_lex $P769, "$/"
    find_lex $P770, "$past"
    find_lex $P771, "$/"
    unless_null $P771, vivify_236
    $P771 = root_new ['parrot';'Hash']
  vivify_236:
    set $P772, $P771["backmod"]
    unless_null $P772, vivify_237
    new $P772, "Undef"
  vivify_237:
    $P773 = "backmod"($P770, $P772)
    $P774 = $P769."!make"($P773)
.annotate 'line', 128
    .return ($P774)
  control_703:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P775, exception, "payload"
    .return ($P775)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block720"  :anon :subid("45_1295142326.265") :outer("44_1295142326.265")
.annotate 'line', 132
    new $P722, "Undef"
    .lex "$ast", $P722
    find_lex $P723, "$/"
    unless_null $P723, vivify_234
    $P723 = root_new ['parrot';'Hash']
  vivify_234:
    set $P724, $P723["quantified_atom"]
    unless_null $P724, vivify_235
    new $P724, "Undef"
  vivify_235:
    $P725 = $P724."ast"()
    store_lex "$ast", $P725
.annotate 'line', 133
    find_lex $P727, "$ws"
    unless $P727, if_726_end
.annotate 'line', 134
    get_hll_global $P728, ["PAST"], "Regex"
.annotate 'line', 136
    get_hll_global $P729, ["PAST"], "Regex"
    $P730 = $P729."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"))
    find_lex $P731, "$ast"
.annotate 'line', 139
    get_hll_global $P732, ["PAST"], "Regex"
    $P733 = $P732."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"))
    $P734 = $P728."new"($P730, $P731, $P733, "concat" :named("pasttype"))
.annotate 'line', 134
    store_lex "$ast", $P734
  if_726_end:
.annotate 'line', 143
    get_hll_global $P735, ["PAST"], "Regex"
    find_lex $P736, "$ast"
    find_lex $P737, "$/"
    $P738 = $P735."new"("quant" :named("pasttype"), 1 :named("min"), $P736 :named("sep"), $P737 :named("node"))
    store_lex "$past", $P738
.annotate 'line', 131
    .return ($P738)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "metachar:sym<ws>"  :subid("46_1295142326.265") :outer("11_1295142326.265")
    .param pmc param_779
    .param pmc param_780
.annotate 'line', 157
    new $P778, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P778, control_777
    push_eh $P778
    .lex "self", param_779
    .lex "$/", param_780
.annotate 'line', 158
    new $P781, "Undef"
    .lex "$past", $P781
.annotate 'line', 159
    get_global $P784, "@MODIFIERS"
    unless_null $P784, vivify_238
    $P784 = root_new ['parrot';'ResizablePMCArray']
  vivify_238:
    set $P785, $P784[0]
    unless_null $P785, vivify_239
    $P785 = root_new ['parrot';'Hash']
  vivify_239:
    set $P786, $P785["s"]
    unless_null $P786, vivify_240
    new $P786, "Undef"
  vivify_240:
    if $P786, if_783
    new $P790, "Integer"
    assign $P790, 0
    set $P782, $P790
    goto if_783_end
  if_783:
    get_hll_global $P787, ["PAST"], "Regex"
    find_lex $P788, "$/"
    $P789 = $P787."new"("ws", "subrule" :named("pasttype"), "method" :named("subtype"), $P788 :named("node"))
    set $P782, $P789
  if_783_end:
    store_lex "$past", $P782
.annotate 'line', 162
    find_lex $P791, "$/"
    find_lex $P792, "$past"
    $P793 = $P791."!make"($P792)
.annotate 'line', 157
    .return ($P793)
  control_777:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P794, exception, "payload"
    .return ($P794)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "metachar:sym<[ ]>"  :subid("47_1295142326.265") :outer("11_1295142326.265")
    .param pmc param_798
    .param pmc param_799
.annotate 'line', 166
    new $P797, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P797, control_796
    push_eh $P797
    .lex "self", param_798
    .lex "$/", param_799
.annotate 'line', 167
    find_lex $P800, "$/"
    find_lex $P801, "$/"
    unless_null $P801, vivify_241
    $P801 = root_new ['parrot';'Hash']
  vivify_241:
    set $P802, $P801["nibbler"]
    unless_null $P802, vivify_242
    new $P802, "Undef"
  vivify_242:
    $P803 = $P802."ast"()
    $P804 = $P800."!make"($P803)
.annotate 'line', 166
    .return ($P804)
  control_796:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P805, exception, "payload"
    .return ($P805)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "metachar:sym<( )>"  :subid("48_1295142326.265") :outer("11_1295142326.265")
    .param pmc param_809
    .param pmc param_810
.annotate 'line', 170
    new $P808, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P808, control_807
    push_eh $P808
    .lex "self", param_809
    .lex "$/", param_810
.annotate 'line', 171
    new $P811, "Undef"
    .lex "$subpast", $P811
.annotate 'line', 172
    new $P812, "Undef"
    .lex "$past", $P812
.annotate 'line', 171
    find_lex $P813, "$/"
    unless_null $P813, vivify_243
    $P813 = root_new ['parrot';'Hash']
  vivify_243:
    set $P814, $P813["nibbler"]
    unless_null $P814, vivify_244
    new $P814, "Undef"
  vivify_244:
    $P815 = $P814."ast"()
    $P816 = "buildsub"($P815)
    store_lex "$subpast", $P816
.annotate 'line', 172
    get_hll_global $P817, ["PAST"], "Regex"
    find_lex $P818, "$subpast"
    find_lex $P819, "$/"
    $P820 = $P817."new"($P818, "subrule" :named("pasttype"), "capture" :named("subtype"), $P819 :named("node"))
    store_lex "$past", $P820
.annotate 'line', 174
    find_lex $P821, "$/"
    find_lex $P822, "$past"
    $P823 = $P821."!make"($P822)
.annotate 'line', 170
    .return ($P823)
  control_807:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P824, exception, "payload"
    .return ($P824)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "metachar:sym<'>"  :subid("49_1295142326.265") :outer("11_1295142326.265")
    .param pmc param_828
    .param pmc param_829
.annotate 'line', 177
    new $P827, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P827, control_826
    push_eh $P827
    .lex "self", param_828
    .lex "$/", param_829
.annotate 'line', 178
    new $P830, "Undef"
    .lex "$quote", $P830
.annotate 'line', 180
    new $P831, "Undef"
    .lex "$past", $P831
.annotate 'line', 178
    find_lex $P832, "$/"
    unless_null $P832, vivify_245
    $P832 = root_new ['parrot';'Hash']
  vivify_245:
    set $P833, $P832["quote_EXPR"]
    unless_null $P833, vivify_246
    new $P833, "Undef"
  vivify_246:
    $P834 = $P833."ast"()
    store_lex "$quote", $P834
.annotate 'line', 179
    get_hll_global $P836, ["PAST"], "Val"
    find_lex $P837, "$quote"
    $P838 = $P836."ACCEPTS"($P837)
    unless $P838, if_835_end
    find_lex $P839, "$quote"
    $P840 = $P839."value"()
    store_lex "$quote", $P840
  if_835_end:
.annotate 'line', 180
    get_hll_global $P841, ["PAST"], "Regex"
    find_lex $P842, "$quote"
    find_lex $P843, "$/"
    $P844 = $P841."new"($P842, "literal" :named("pasttype"), $P843 :named("node"))
    store_lex "$past", $P844
.annotate 'line', 181
    get_global $P846, "@MODIFIERS"
    unless_null $P846, vivify_247
    $P846 = root_new ['parrot';'ResizablePMCArray']
  vivify_247:
    set $P847, $P846[0]
    unless_null $P847, vivify_248
    $P847 = root_new ['parrot';'Hash']
  vivify_248:
    set $P848, $P847["i"]
    unless_null $P848, vivify_249
    new $P848, "Undef"
  vivify_249:
    unless $P848, if_845_end
    find_lex $P849, "$past"
    $P849."subtype"("ignorecase")
  if_845_end:
.annotate 'line', 182
    find_lex $P850, "$/"
    find_lex $P851, "$past"
    $P852 = $P850."!make"($P851)
.annotate 'line', 177
    .return ($P852)
  control_826:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P853, exception, "payload"
    .return ($P853)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "metachar:sym<\">"  :subid("50_1295142326.265") :outer("11_1295142326.265")
    .param pmc param_857
    .param pmc param_858
.annotate 'line', 185
    new $P856, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P856, control_855
    push_eh $P856
    .lex "self", param_857
    .lex "$/", param_858
.annotate 'line', 186
    new $P859, "Undef"
    .lex "$quote", $P859
.annotate 'line', 188
    new $P860, "Undef"
    .lex "$past", $P860
.annotate 'line', 186
    find_lex $P861, "$/"
    unless_null $P861, vivify_250
    $P861 = root_new ['parrot';'Hash']
  vivify_250:
    set $P862, $P861["quote_EXPR"]
    unless_null $P862, vivify_251
    new $P862, "Undef"
  vivify_251:
    $P863 = $P862."ast"()
    store_lex "$quote", $P863
.annotate 'line', 187
    get_hll_global $P865, ["PAST"], "Val"
    find_lex $P866, "$quote"
    $P867 = $P865."ACCEPTS"($P866)
    unless $P867, if_864_end
    find_lex $P868, "$quote"
    $P869 = $P868."value"()
    store_lex "$quote", $P869
  if_864_end:
.annotate 'line', 188
    get_hll_global $P870, ["PAST"], "Regex"
    find_lex $P871, "$quote"
    find_lex $P872, "$/"
    $P873 = $P870."new"($P871, "literal" :named("pasttype"), $P872 :named("node"))
    store_lex "$past", $P873
.annotate 'line', 189
    get_global $P875, "@MODIFIERS"
    unless_null $P875, vivify_252
    $P875 = root_new ['parrot';'ResizablePMCArray']
  vivify_252:
    set $P876, $P875[0]
    unless_null $P876, vivify_253
    $P876 = root_new ['parrot';'Hash']
  vivify_253:
    set $P877, $P876["i"]
    unless_null $P877, vivify_254
    new $P877, "Undef"
  vivify_254:
    unless $P877, if_874_end
    find_lex $P878, "$past"
    $P878."subtype"("ignorecase")
  if_874_end:
.annotate 'line', 190
    find_lex $P879, "$/"
    find_lex $P880, "$past"
    $P881 = $P879."!make"($P880)
.annotate 'line', 185
    .return ($P881)
  control_855:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P882, exception, "payload"
    .return ($P882)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "metachar:sym<.>"  :subid("51_1295142326.265") :outer("11_1295142326.265")
    .param pmc param_886
    .param pmc param_887
.annotate 'line', 193
    new $P885, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P885, control_884
    push_eh $P885
    .lex "self", param_886
    .lex "$/", param_887
.annotate 'line', 194
    new $P888, "Undef"
    .lex "$past", $P888
    get_hll_global $P889, ["PAST"], "Regex"
    find_lex $P890, "$/"
    $P891 = $P889."new"("charclass" :named("pasttype"), "." :named("subtype"), $P890 :named("node"))
    store_lex "$past", $P891
.annotate 'line', 195
    find_lex $P892, "$/"
    find_lex $P893, "$past"
    $P894 = $P892."!make"($P893)
.annotate 'line', 193
    .return ($P894)
  control_884:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P895, exception, "payload"
    .return ($P895)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "metachar:sym<^>"  :subid("52_1295142326.265") :outer("11_1295142326.265")
    .param pmc param_899
    .param pmc param_900
.annotate 'line', 198
    new $P898, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P898, control_897
    push_eh $P898
    .lex "self", param_899
    .lex "$/", param_900
.annotate 'line', 199
    new $P901, "Undef"
    .lex "$past", $P901
    get_hll_global $P902, ["PAST"], "Regex"
    find_lex $P903, "$/"
    $P904 = $P902."new"("anchor" :named("pasttype"), "bos" :named("subtype"), $P903 :named("node"))
    store_lex "$past", $P904
.annotate 'line', 200
    find_lex $P905, "$/"
    find_lex $P906, "$past"
    $P907 = $P905."!make"($P906)
.annotate 'line', 198
    .return ($P907)
  control_897:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P908, exception, "payload"
    .return ($P908)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "metachar:sym<^^>"  :subid("53_1295142326.265") :outer("11_1295142326.265")
    .param pmc param_912
    .param pmc param_913
.annotate 'line', 203
    new $P911, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P911, control_910
    push_eh $P911
    .lex "self", param_912
    .lex "$/", param_913
.annotate 'line', 204
    new $P914, "Undef"
    .lex "$past", $P914
    get_hll_global $P915, ["PAST"], "Regex"
    find_lex $P916, "$/"
    $P917 = $P915."new"("anchor" :named("pasttype"), "bol" :named("subtype"), $P916 :named("node"))
    store_lex "$past", $P917
.annotate 'line', 205
    find_lex $P918, "$/"
    find_lex $P919, "$past"
    $P920 = $P918."!make"($P919)
.annotate 'line', 203
    .return ($P920)
  control_910:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P921, exception, "payload"
    .return ($P921)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "metachar:sym<$>"  :subid("54_1295142326.265") :outer("11_1295142326.265")
    .param pmc param_925
    .param pmc param_926
.annotate 'line', 208
    new $P924, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P924, control_923
    push_eh $P924
    .lex "self", param_925
    .lex "$/", param_926
.annotate 'line', 209
    new $P927, "Undef"
    .lex "$past", $P927
    get_hll_global $P928, ["PAST"], "Regex"
    find_lex $P929, "$/"
    $P930 = $P928."new"("anchor" :named("pasttype"), "eos" :named("subtype"), $P929 :named("node"))
    store_lex "$past", $P930
.annotate 'line', 210
    find_lex $P931, "$/"
    find_lex $P932, "$past"
    $P933 = $P931."!make"($P932)
.annotate 'line', 208
    .return ($P933)
  control_923:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P934, exception, "payload"
    .return ($P934)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "metachar:sym<$$>"  :subid("55_1295142326.265") :outer("11_1295142326.265")
    .param pmc param_938
    .param pmc param_939
.annotate 'line', 213
    new $P937, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P937, control_936
    push_eh $P937
    .lex "self", param_938
    .lex "$/", param_939
.annotate 'line', 214
    new $P940, "Undef"
    .lex "$past", $P940
    get_hll_global $P941, ["PAST"], "Regex"
    find_lex $P942, "$/"
    $P943 = $P941."new"("anchor" :named("pasttype"), "eol" :named("subtype"), $P942 :named("node"))
    store_lex "$past", $P943
.annotate 'line', 215
    find_lex $P944, "$/"
    find_lex $P945, "$past"
    $P946 = $P944."!make"($P945)
.annotate 'line', 213
    .return ($P946)
  control_936:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P947, exception, "payload"
    .return ($P947)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "metachar:sym<:::>"  :subid("56_1295142326.265") :outer("11_1295142326.265")
    .param pmc param_951
    .param pmc param_952
.annotate 'line', 218
    new $P950, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P950, control_949
    push_eh $P950
    .lex "self", param_951
    .lex "$/", param_952
.annotate 'line', 219
    new $P953, "Undef"
    .lex "$past", $P953
    get_hll_global $P954, ["PAST"], "Regex"
    find_lex $P955, "$/"
    $P956 = $P954."new"("cut" :named("pasttype"), $P955 :named("node"))
    store_lex "$past", $P956
.annotate 'line', 220
    find_lex $P957, "$/"
    find_lex $P958, "$past"
    $P959 = $P957."!make"($P958)
.annotate 'line', 218
    .return ($P959)
  control_949:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P960, exception, "payload"
    .return ($P960)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "metachar:sym<lwb>"  :subid("57_1295142326.265") :outer("11_1295142326.265")
    .param pmc param_964
    .param pmc param_965
.annotate 'line', 223
    new $P963, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P963, control_962
    push_eh $P963
    .lex "self", param_964
    .lex "$/", param_965
.annotate 'line', 224
    new $P966, "Undef"
    .lex "$past", $P966
    get_hll_global $P967, ["PAST"], "Regex"
    find_lex $P968, "$/"
    $P969 = $P967."new"("anchor" :named("pasttype"), "lwb" :named("subtype"), $P968 :named("node"))
    store_lex "$past", $P969
.annotate 'line', 225
    find_lex $P970, "$/"
    find_lex $P971, "$past"
    $P972 = $P970."!make"($P971)
.annotate 'line', 223
    .return ($P972)
  control_962:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P973, exception, "payload"
    .return ($P973)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "metachar:sym<rwb>"  :subid("58_1295142326.265") :outer("11_1295142326.265")
    .param pmc param_977
    .param pmc param_978
.annotate 'line', 228
    new $P976, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P976, control_975
    push_eh $P976
    .lex "self", param_977
    .lex "$/", param_978
.annotate 'line', 229
    new $P979, "Undef"
    .lex "$past", $P979
    get_hll_global $P980, ["PAST"], "Regex"
    find_lex $P981, "$/"
    $P982 = $P980."new"("anchor" :named("pasttype"), "rwb" :named("subtype"), $P981 :named("node"))
    store_lex "$past", $P982
.annotate 'line', 230
    find_lex $P983, "$/"
    find_lex $P984, "$past"
    $P985 = $P983."!make"($P984)
.annotate 'line', 228
    .return ($P985)
  control_975:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P986, exception, "payload"
    .return ($P986)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "metachar:sym<bs>"  :subid("59_1295142326.265") :outer("11_1295142326.265")
    .param pmc param_990
    .param pmc param_991
.annotate 'line', 233
    new $P989, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P989, control_988
    push_eh $P989
    .lex "self", param_990
    .lex "$/", param_991
.annotate 'line', 234
    find_lex $P992, "$/"
    find_lex $P993, "$/"
    unless_null $P993, vivify_255
    $P993 = root_new ['parrot';'Hash']
  vivify_255:
    set $P994, $P993["backslash"]
    unless_null $P994, vivify_256
    new $P994, "Undef"
  vivify_256:
    $P995 = $P994."ast"()
    $P996 = $P992."!make"($P995)
.annotate 'line', 233
    .return ($P996)
  control_988:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P997, exception, "payload"
    .return ($P997)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "metachar:sym<mod>"  :subid("60_1295142326.265") :outer("11_1295142326.265")
    .param pmc param_1001
    .param pmc param_1002
.annotate 'line', 237
    new $P1000, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1000, control_999
    push_eh $P1000
    .lex "self", param_1001
    .lex "$/", param_1002
.annotate 'line', 238
    find_lex $P1003, "$/"
    find_lex $P1004, "$/"
    unless_null $P1004, vivify_257
    $P1004 = root_new ['parrot';'Hash']
  vivify_257:
    set $P1005, $P1004["mod_internal"]
    unless_null $P1005, vivify_258
    new $P1005, "Undef"
  vivify_258:
    $P1006 = $P1005."ast"()
    $P1007 = $P1003."!make"($P1006)
.annotate 'line', 237
    .return ($P1007)
  control_999:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1008, exception, "payload"
    .return ($P1008)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "metachar:sym<assert>"  :subid("61_1295142326.265") :outer("11_1295142326.265")
    .param pmc param_1012
    .param pmc param_1013
.annotate 'line', 241
    new $P1011, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1011, control_1010
    push_eh $P1011
    .lex "self", param_1012
    .lex "$/", param_1013
.annotate 'line', 242
    find_lex $P1014, "$/"
    find_lex $P1015, "$/"
    unless_null $P1015, vivify_259
    $P1015 = root_new ['parrot';'Hash']
  vivify_259:
    set $P1016, $P1015["assertion"]
    unless_null $P1016, vivify_260
    new $P1016, "Undef"
  vivify_260:
    $P1017 = $P1016."ast"()
    $P1018 = $P1014."!make"($P1017)
.annotate 'line', 241
    .return ($P1018)
  control_1010:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1019, exception, "payload"
    .return ($P1019)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "metachar:sym<~>"  :subid("62_1295142326.265") :outer("11_1295142326.265")
    .param pmc param_1023
    .param pmc param_1024
.annotate 'line', 245
    new $P1022, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1022, control_1021
    push_eh $P1022
    .lex "self", param_1023
    .lex "$/", param_1024
.annotate 'line', 246
    find_lex $P1025, "$/"
    get_hll_global $P1026, ["PAST"], "Regex"
.annotate 'line', 247
    find_lex $P1027, "$/"
    unless_null $P1027, vivify_261
    $P1027 = root_new ['parrot';'Hash']
  vivify_261:
    set $P1028, $P1027["EXPR"]
    unless_null $P1028, vivify_262
    new $P1028, "Undef"
  vivify_262:
    $P1029 = $P1028."ast"()
.annotate 'line', 248
    get_hll_global $P1030, ["PAST"], "Regex"
.annotate 'line', 249
    find_lex $P1031, "$/"
    unless_null $P1031, vivify_263
    $P1031 = root_new ['parrot';'Hash']
  vivify_263:
    set $P1032, $P1031["GOAL"]
    unless_null $P1032, vivify_264
    new $P1032, "Undef"
  vivify_264:
    $P1033 = $P1032."ast"()
.annotate 'line', 250
    get_hll_global $P1034, ["PAST"], "Regex"
    find_lex $P1035, "$/"
    unless_null $P1035, vivify_265
    $P1035 = root_new ['parrot';'Hash']
  vivify_265:
    set $P1036, $P1035["GOAL"]
    unless_null $P1036, vivify_266
    new $P1036, "Undef"
  vivify_266:
    set $S1037, $P1036
    $P1038 = $P1034."new"("FAILGOAL", $S1037, "subrule" :named("pasttype"), "method" :named("subtype"))
    $P1039 = $P1030."new"($P1033, $P1038, "alt" :named("pasttype"))
.annotate 'line', 248
    $P1040 = $P1026."new"($P1029, $P1039, "concat" :named("pasttype"))
.annotate 'line', 246
    $P1041 = $P1025."!make"($P1040)
.annotate 'line', 245
    .return ($P1041)
  control_1021:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1042, exception, "payload"
    .return ($P1042)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "metachar:sym<{*}>"  :subid("63_1295142326.265") :outer("11_1295142326.265")
    .param pmc param_1046
    .param pmc param_1047
.annotate 'line', 258
    new $P1045, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1045, control_1044
    push_eh $P1045
    .lex "self", param_1046
    .lex "$/", param_1047
.annotate 'line', 259
    new $P1048, "Undef"
    .lex "$past", $P1048
.annotate 'line', 260
    find_lex $P1051, "$/"
    unless_null $P1051, vivify_267
    $P1051 = root_new ['parrot';'Hash']
  vivify_267:
    set $P1052, $P1051["key"]
    unless_null $P1052, vivify_268
    new $P1052, "Undef"
  vivify_268:
    if $P1052, if_1050
    new $P1060, "Integer"
    assign $P1060, 0
    set $P1049, $P1060
    goto if_1050_end
  if_1050:
    get_hll_global $P1053, ["PAST"], "Regex"
    find_lex $P1054, "$/"
    unless_null $P1054, vivify_269
    $P1054 = root_new ['parrot';'Hash']
  vivify_269:
    set $P1055, $P1054["key"]
    unless_null $P1055, vivify_270
    $P1055 = root_new ['parrot';'ResizablePMCArray']
  vivify_270:
    set $P1056, $P1055[0]
    unless_null $P1056, vivify_271
    new $P1056, "Undef"
  vivify_271:
    set $S1057, $P1056
    find_lex $P1058, "$/"
    $P1059 = $P1053."new"($S1057, "reduce" :named("pasttype"), $P1058 :named("node"))
    set $P1049, $P1059
  if_1050_end:
    store_lex "$past", $P1049
.annotate 'line', 262
    find_lex $P1061, "$/"
    find_lex $P1062, "$past"
    $P1063 = $P1061."!make"($P1062)
.annotate 'line', 258
    .return ($P1063)
  control_1044:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1064, exception, "payload"
    .return ($P1064)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "metachar:sym<var>"  :subid("64_1295142326.265") :outer("11_1295142326.265")
    .param pmc param_1068
    .param pmc param_1069
.annotate 'line', 265
    new $P1067, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1067, control_1066
    push_eh $P1067
    .lex "self", param_1068
    .lex "$/", param_1069
.annotate 'line', 266
    new $P1070, "Undef"
    .lex "$past", $P1070
.annotate 'line', 267
    new $P1071, "Undef"
    .lex "$name", $P1071
.annotate 'line', 265
    find_lex $P1072, "$past"
.annotate 'line', 267
    find_lex $P1075, "$/"
    unless_null $P1075, vivify_272
    $P1075 = root_new ['parrot';'Hash']
  vivify_272:
    set $P1076, $P1075["pos"]
    unless_null $P1076, vivify_273
    new $P1076, "Undef"
  vivify_273:
    if $P1076, if_1074
    find_lex $P1080, "$/"
    unless_null $P1080, vivify_274
    $P1080 = root_new ['parrot';'Hash']
  vivify_274:
    set $P1081, $P1080["name"]
    unless_null $P1081, vivify_275
    new $P1081, "Undef"
  vivify_275:
    set $S1082, $P1081
    new $P1073, 'String'
    set $P1073, $S1082
    goto if_1074_end
  if_1074:
    find_lex $P1077, "$/"
    unless_null $P1077, vivify_276
    $P1077 = root_new ['parrot';'Hash']
  vivify_276:
    set $P1078, $P1077["pos"]
    unless_null $P1078, vivify_277
    new $P1078, "Undef"
  vivify_277:
    set $N1079, $P1078
    new $P1073, 'Float'
    set $P1073, $N1079
  if_1074_end:
    store_lex "$name", $P1073
.annotate 'line', 268
    find_lex $P1084, "$/"
    unless_null $P1084, vivify_278
    $P1084 = root_new ['parrot';'Hash']
  vivify_278:
    set $P1085, $P1084["quantified_atom"]
    unless_null $P1085, vivify_279
    new $P1085, "Undef"
  vivify_279:
    if $P1085, if_1083
.annotate 'line', 279
    get_hll_global $P1116, ["PAST"], "Regex"
    find_lex $P1117, "$name"
    find_lex $P1118, "$/"
    $P1119 = $P1116."new"("!BACKREF", $P1117, "subrule" :named("pasttype"), "method" :named("subtype"), $P1118 :named("node"))
    store_lex "$past", $P1119
.annotate 'line', 278
    goto if_1083_end
  if_1083:
.annotate 'line', 269
    find_lex $P1086, "$/"
    unless_null $P1086, vivify_280
    $P1086 = root_new ['parrot';'Hash']
  vivify_280:
    set $P1087, $P1086["quantified_atom"]
    unless_null $P1087, vivify_281
    $P1087 = root_new ['parrot';'ResizablePMCArray']
  vivify_281:
    set $P1088, $P1087[0]
    unless_null $P1088, vivify_282
    new $P1088, "Undef"
  vivify_282:
    $P1089 = $P1088."ast"()
    store_lex "$past", $P1089
.annotate 'line', 270
    find_lex $P1093, "$past"
    $S1094 = $P1093."pasttype"()
    iseq $I1095, $S1094, "quant"
    if $I1095, if_1092
    new $P1091, 'Integer'
    set $P1091, $I1095
    goto if_1092_end
  if_1092:
    find_lex $P1096, "$past"
    unless_null $P1096, vivify_283
    $P1096 = root_new ['parrot';'ResizablePMCArray']
  vivify_283:
    set $P1097, $P1096[0]
    unless_null $P1097, vivify_284
    new $P1097, "Undef"
  vivify_284:
    $S1098 = $P1097."pasttype"()
    iseq $I1099, $S1098, "subrule"
    new $P1091, 'Integer'
    set $P1091, $I1099
  if_1092_end:
    if $P1091, if_1090
.annotate 'line', 273
    find_lex $P1105, "$past"
    $S1106 = $P1105."pasttype"()
    iseq $I1107, $S1106, "subrule"
    if $I1107, if_1104
.annotate 'line', 275
    get_hll_global $P1111, ["PAST"], "Regex"
    find_lex $P1112, "$past"
    find_lex $P1113, "$name"
    find_lex $P1114, "$/"
    $P1115 = $P1111."new"($P1112, $P1113 :named("name"), "subcapture" :named("pasttype"), $P1114 :named("node"))
    store_lex "$past", $P1115
.annotate 'line', 274
    goto if_1104_end
  if_1104:
.annotate 'line', 273
    find_lex $P1108, "self"
    find_lex $P1109, "$past"
    find_lex $P1110, "$name"
    $P1108."subrule_alias"($P1109, $P1110)
  if_1104_end:
    goto if_1090_end
  if_1090:
.annotate 'line', 271
    find_lex $P1100, "self"
    find_lex $P1101, "$past"
    unless_null $P1101, vivify_285
    $P1101 = root_new ['parrot';'ResizablePMCArray']
  vivify_285:
    set $P1102, $P1101[0]
    unless_null $P1102, vivify_286
    new $P1102, "Undef"
  vivify_286:
    find_lex $P1103, "$name"
    $P1100."subrule_alias"($P1102, $P1103)
  if_1090_end:
  if_1083_end:
.annotate 'line', 282
    find_lex $P1120, "$/"
    find_lex $P1121, "$past"
    $P1122 = $P1120."!make"($P1121)
.annotate 'line', 265
    .return ($P1122)
  control_1066:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1123, exception, "payload"
    .return ($P1123)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "metachar:sym<PIR>"  :subid("65_1295142326.265") :outer("11_1295142326.265")
    .param pmc param_1127
    .param pmc param_1128
.annotate 'line', 285
    new $P1126, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1126, control_1125
    push_eh $P1126
    .lex "self", param_1127
    .lex "$/", param_1128
.annotate 'line', 286
    find_lex $P1129, "$/"
    get_hll_global $P1130, ["PAST"], "Regex"
.annotate 'line', 287
    get_hll_global $P1131, ["PAST"], "Op"
    find_lex $P1132, "$/"
    unless_null $P1132, vivify_287
    $P1132 = root_new ['parrot';'Hash']
  vivify_287:
    set $P1133, $P1132["pir"]
    unless_null $P1133, vivify_288
    new $P1133, "Undef"
  vivify_288:
    set $S1134, $P1133
    $P1135 = $P1131."new"($S1134 :named("inline"), "inline" :named("pasttype"))
    find_lex $P1136, "$/"
    $P1137 = $P1130."new"($P1135, "pastnode" :named("pasttype"), $P1136 :named("node"))
.annotate 'line', 286
    $P1138 = $P1129."!make"($P1137)
.annotate 'line', 285
    .return ($P1138)
  control_1125:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1139, exception, "payload"
    .return ($P1139)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "backslash:sym<w>"  :subid("66_1295142326.265") :outer("11_1295142326.265")
    .param pmc param_1143
    .param pmc param_1144
.annotate 'line', 293
    new $P1142, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1142, control_1141
    push_eh $P1142
    .lex "self", param_1143
    .lex "$/", param_1144
.annotate 'line', 294
    new $P1145, "Undef"
    .lex "$subtype", $P1145
.annotate 'line', 295
    new $P1146, "Undef"
    .lex "$past", $P1146
.annotate 'line', 294
    find_lex $P1149, "$/"
    unless_null $P1149, vivify_289
    $P1149 = root_new ['parrot';'Hash']
  vivify_289:
    set $P1150, $P1149["sym"]
    unless_null $P1150, vivify_290
    new $P1150, "Undef"
  vivify_290:
    set $S1151, $P1150
    iseq $I1152, $S1151, "n"
    if $I1152, if_1148
    find_lex $P1154, "$/"
    unless_null $P1154, vivify_291
    $P1154 = root_new ['parrot';'Hash']
  vivify_291:
    set $P1155, $P1154["sym"]
    unless_null $P1155, vivify_292
    new $P1155, "Undef"
  vivify_292:
    set $S1156, $P1155
    new $P1147, 'String'
    set $P1147, $S1156
    goto if_1148_end
  if_1148:
    new $P1153, "String"
    assign $P1153, "nl"
    set $P1147, $P1153
  if_1148_end:
    store_lex "$subtype", $P1147
.annotate 'line', 295
    get_hll_global $P1157, ["PAST"], "Regex"
    find_lex $P1158, "$subtype"
    find_lex $P1159, "$/"
    $P1160 = $P1157."new"("charclass" :named("pasttype"), $P1158 :named("subtype"), $P1159 :named("node"))
    store_lex "$past", $P1160
.annotate 'line', 296
    find_lex $P1161, "$/"
    find_lex $P1162, "$past"
    $P1163 = $P1161."!make"($P1162)
.annotate 'line', 293
    .return ($P1163)
  control_1141:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1164, exception, "payload"
    .return ($P1164)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "backslash:sym<b>"  :subid("67_1295142326.265") :outer("11_1295142326.265")
    .param pmc param_1168
    .param pmc param_1169
.annotate 'line', 299
    new $P1167, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1167, control_1166
    push_eh $P1167
    .lex "self", param_1168
    .lex "$/", param_1169
.annotate 'line', 300
    new $P1170, "Undef"
    .lex "$past", $P1170
    get_hll_global $P1171, ["PAST"], "Regex"
.annotate 'line', 301
    find_lex $P1172, "$/"
    unless_null $P1172, vivify_293
    $P1172 = root_new ['parrot';'Hash']
  vivify_293:
    set $P1173, $P1172["sym"]
    unless_null $P1173, vivify_294
    new $P1173, "Undef"
  vivify_294:
    set $S1174, $P1173
    iseq $I1175, $S1174, "B"
    find_lex $P1176, "$/"
    $P1177 = $P1171."new"("\b", "enumcharlist" :named("pasttype"), $I1175 :named("negate"), $P1176 :named("node"))
.annotate 'line', 300
    store_lex "$past", $P1177
.annotate 'line', 302
    find_lex $P1178, "$/"
    find_lex $P1179, "$past"
    $P1180 = $P1178."!make"($P1179)
.annotate 'line', 299
    .return ($P1180)
  control_1166:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1181, exception, "payload"
    .return ($P1181)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "backslash:sym<e>"  :subid("68_1295142326.265") :outer("11_1295142326.265")
    .param pmc param_1185
    .param pmc param_1186
.annotate 'line', 305
    new $P1184, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1184, control_1183
    push_eh $P1184
    .lex "self", param_1185
    .lex "$/", param_1186
.annotate 'line', 306
    new $P1187, "Undef"
    .lex "$past", $P1187
    get_hll_global $P1188, ["PAST"], "Regex"
.annotate 'line', 307
    find_lex $P1189, "$/"
    unless_null $P1189, vivify_295
    $P1189 = root_new ['parrot';'Hash']
  vivify_295:
    set $P1190, $P1189["sym"]
    unless_null $P1190, vivify_296
    new $P1190, "Undef"
  vivify_296:
    set $S1191, $P1190
    iseq $I1192, $S1191, "E"
    find_lex $P1193, "$/"
    $P1194 = $P1188."new"("\e", "enumcharlist" :named("pasttype"), $I1192 :named("negate"), $P1193 :named("node"))
.annotate 'line', 306
    store_lex "$past", $P1194
.annotate 'line', 308
    find_lex $P1195, "$/"
    find_lex $P1196, "$past"
    $P1197 = $P1195."!make"($P1196)
.annotate 'line', 305
    .return ($P1197)
  control_1183:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1198, exception, "payload"
    .return ($P1198)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "backslash:sym<f>"  :subid("69_1295142326.265") :outer("11_1295142326.265")
    .param pmc param_1202
    .param pmc param_1203
.annotate 'line', 311
    new $P1201, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1201, control_1200
    push_eh $P1201
    .lex "self", param_1202
    .lex "$/", param_1203
.annotate 'line', 312
    new $P1204, "Undef"
    .lex "$past", $P1204
    get_hll_global $P1205, ["PAST"], "Regex"
.annotate 'line', 313
    find_lex $P1206, "$/"
    unless_null $P1206, vivify_297
    $P1206 = root_new ['parrot';'Hash']
  vivify_297:
    set $P1207, $P1206["sym"]
    unless_null $P1207, vivify_298
    new $P1207, "Undef"
  vivify_298:
    set $S1208, $P1207
    iseq $I1209, $S1208, "F"
    find_lex $P1210, "$/"
    $P1211 = $P1205."new"("\f", "enumcharlist" :named("pasttype"), $I1209 :named("negate"), $P1210 :named("node"))
.annotate 'line', 312
    store_lex "$past", $P1211
.annotate 'line', 314
    find_lex $P1212, "$/"
    find_lex $P1213, "$past"
    $P1214 = $P1212."!make"($P1213)
.annotate 'line', 311
    .return ($P1214)
  control_1200:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1215, exception, "payload"
    .return ($P1215)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "backslash:sym<h>"  :subid("70_1295142326.265") :outer("11_1295142326.265")
    .param pmc param_1219
    .param pmc param_1220
.annotate 'line', 317
    new $P1218, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1218, control_1217
    push_eh $P1218
    .lex "self", param_1219
    .lex "$/", param_1220
.annotate 'line', 318
    new $P1221, "Undef"
    .lex "$past", $P1221
    get_hll_global $P1222, ["PAST"], "Regex"
.annotate 'line', 319
    find_lex $P1223, "$/"
    unless_null $P1223, vivify_299
    $P1223 = root_new ['parrot';'Hash']
  vivify_299:
    set $P1224, $P1223["sym"]
    unless_null $P1224, vivify_300
    new $P1224, "Undef"
  vivify_300:
    set $S1225, $P1224
    iseq $I1226, $S1225, "H"
    find_lex $P1227, "$/"
    $P1228 = $P1222."new"(unicode:"\t \x{a0}\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000", "enumcharlist" :named("pasttype"), $I1226 :named("negate"), $P1227 :named("node"))
.annotate 'line', 318
    store_lex "$past", $P1228
.annotate 'line', 320
    find_lex $P1229, "$/"
    find_lex $P1230, "$past"
    $P1231 = $P1229."!make"($P1230)
.annotate 'line', 317
    .return ($P1231)
  control_1217:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1232, exception, "payload"
    .return ($P1232)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "backslash:sym<r>"  :subid("71_1295142326.265") :outer("11_1295142326.265")
    .param pmc param_1236
    .param pmc param_1237
.annotate 'line', 323
    new $P1235, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1235, control_1234
    push_eh $P1235
    .lex "self", param_1236
    .lex "$/", param_1237
.annotate 'line', 324
    new $P1238, "Undef"
    .lex "$past", $P1238
    get_hll_global $P1239, ["PAST"], "Regex"
.annotate 'line', 325
    find_lex $P1240, "$/"
    unless_null $P1240, vivify_301
    $P1240 = root_new ['parrot';'Hash']
  vivify_301:
    set $P1241, $P1240["sym"]
    unless_null $P1241, vivify_302
    new $P1241, "Undef"
  vivify_302:
    set $S1242, $P1241
    iseq $I1243, $S1242, "R"
    find_lex $P1244, "$/"
    $P1245 = $P1239."new"("\r", "enumcharlist" :named("pasttype"), $I1243 :named("negate"), $P1244 :named("node"))
.annotate 'line', 324
    store_lex "$past", $P1245
.annotate 'line', 326
    find_lex $P1246, "$/"
    find_lex $P1247, "$past"
    $P1248 = $P1246."!make"($P1247)
.annotate 'line', 323
    .return ($P1248)
  control_1234:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1249, exception, "payload"
    .return ($P1249)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "backslash:sym<t>"  :subid("72_1295142326.265") :outer("11_1295142326.265")
    .param pmc param_1253
    .param pmc param_1254
.annotate 'line', 329
    new $P1252, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1252, control_1251
    push_eh $P1252
    .lex "self", param_1253
    .lex "$/", param_1254
.annotate 'line', 330
    new $P1255, "Undef"
    .lex "$past", $P1255
    get_hll_global $P1256, ["PAST"], "Regex"
.annotate 'line', 331
    find_lex $P1257, "$/"
    unless_null $P1257, vivify_303
    $P1257 = root_new ['parrot';'Hash']
  vivify_303:
    set $P1258, $P1257["sym"]
    unless_null $P1258, vivify_304
    new $P1258, "Undef"
  vivify_304:
    set $S1259, $P1258
    iseq $I1260, $S1259, "T"
    find_lex $P1261, "$/"
    $P1262 = $P1256."new"("\t", "enumcharlist" :named("pasttype"), $I1260 :named("negate"), $P1261 :named("node"))
.annotate 'line', 330
    store_lex "$past", $P1262
.annotate 'line', 332
    find_lex $P1263, "$/"
    find_lex $P1264, "$past"
    $P1265 = $P1263."!make"($P1264)
.annotate 'line', 329
    .return ($P1265)
  control_1251:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1266, exception, "payload"
    .return ($P1266)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "backslash:sym<v>"  :subid("73_1295142326.265") :outer("11_1295142326.265")
    .param pmc param_1270
    .param pmc param_1271
.annotate 'line', 335
    new $P1269, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1269, control_1268
    push_eh $P1269
    .lex "self", param_1270
    .lex "$/", param_1271
.annotate 'line', 336
    new $P1272, "Undef"
    .lex "$past", $P1272
    get_hll_global $P1273, ["PAST"], "Regex"
.annotate 'line', 338
    find_lex $P1274, "$/"
    unless_null $P1274, vivify_305
    $P1274 = root_new ['parrot';'Hash']
  vivify_305:
    set $P1275, $P1274["sym"]
    unless_null $P1275, vivify_306
    new $P1275, "Undef"
  vivify_306:
    set $S1276, $P1275
    iseq $I1277, $S1276, "V"
    find_lex $P1278, "$/"
    $P1279 = $P1273."new"(unicode:"\n\x{b}\f\r\x{85}\u2028\u2029", "enumcharlist" :named("pasttype"), $I1277 :named("negate"), $P1278 :named("node"))
.annotate 'line', 336
    store_lex "$past", $P1279
.annotate 'line', 339
    find_lex $P1280, "$/"
    find_lex $P1281, "$past"
    $P1282 = $P1280."!make"($P1281)
.annotate 'line', 335
    .return ($P1282)
  control_1268:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1283, exception, "payload"
    .return ($P1283)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "backslash:sym<o>"  :subid("74_1295142326.265") :outer("11_1295142326.265")
    .param pmc param_1287
    .param pmc param_1288
.annotate 'line', 342
    new $P1286, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1286, control_1285
    push_eh $P1286
    .lex "self", param_1287
    .lex "$/", param_1288
.annotate 'line', 343
    new $P1289, "Undef"
    .lex "$octlit", $P1289
.annotate 'line', 344
    get_hll_global $P1290, ["HLL";"Actions"], "ints_to_string"
    find_lex $P1293, "$/"
    unless_null $P1293, vivify_307
    $P1293 = root_new ['parrot';'Hash']
  vivify_307:
    set $P1294, $P1293["octint"]
    unless_null $P1294, vivify_308
    new $P1294, "Undef"
  vivify_308:
    unless $P1294, unless_1292
    set $P1291, $P1294
    goto unless_1292_end
  unless_1292:
    find_lex $P1295, "$/"
    unless_null $P1295, vivify_309
    $P1295 = root_new ['parrot';'Hash']
  vivify_309:
    set $P1296, $P1295["octints"]
    unless_null $P1296, vivify_310
    $P1296 = root_new ['parrot';'Hash']
  vivify_310:
    set $P1297, $P1296["octint"]
    unless_null $P1297, vivify_311
    new $P1297, "Undef"
  vivify_311:
    set $P1291, $P1297
  unless_1292_end:
    $P1298 = $P1290($P1291)
    store_lex "$octlit", $P1298
.annotate 'line', 345
    find_lex $P1299, "$/"
    find_lex $P1302, "$/"
    unless_null $P1302, vivify_312
    $P1302 = root_new ['parrot';'Hash']
  vivify_312:
    set $P1303, $P1302["sym"]
    unless_null $P1303, vivify_313
    new $P1303, "Undef"
  vivify_313:
    set $S1304, $P1303
    iseq $I1305, $S1304, "O"
    if $I1305, if_1301
.annotate 'line', 348
    get_hll_global $P1310, ["PAST"], "Regex"
    find_lex $P1311, "$octlit"
    find_lex $P1312, "$/"
    $P1313 = $P1310."new"($P1311, "literal" :named("pasttype"), $P1312 :named("node"))
    set $P1300, $P1313
.annotate 'line', 345
    goto if_1301_end
  if_1301:
.annotate 'line', 346
    get_hll_global $P1306, ["PAST"], "Regex"
    find_lex $P1307, "$octlit"
    find_lex $P1308, "$/"
    $P1309 = $P1306."new"($P1307, "enumcharlist" :named("pasttype"), 1 :named("negate"), $P1308 :named("node"))
    set $P1300, $P1309
  if_1301_end:
    $P1314 = $P1299."!make"($P1300)
.annotate 'line', 342
    .return ($P1314)
  control_1285:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1315, exception, "payload"
    .return ($P1315)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "backslash:sym<x>"  :subid("75_1295142326.265") :outer("11_1295142326.265")
    .param pmc param_1319
    .param pmc param_1320
.annotate 'line', 351
    new $P1318, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1318, control_1317
    push_eh $P1318
    .lex "self", param_1319
    .lex "$/", param_1320
.annotate 'line', 352
    new $P1321, "Undef"
    .lex "$hexlit", $P1321
.annotate 'line', 353
    get_hll_global $P1322, ["HLL";"Actions"], "ints_to_string"
    find_lex $P1325, "$/"
    unless_null $P1325, vivify_314
    $P1325 = root_new ['parrot';'Hash']
  vivify_314:
    set $P1326, $P1325["hexint"]
    unless_null $P1326, vivify_315
    new $P1326, "Undef"
  vivify_315:
    unless $P1326, unless_1324
    set $P1323, $P1326
    goto unless_1324_end
  unless_1324:
    find_lex $P1327, "$/"
    unless_null $P1327, vivify_316
    $P1327 = root_new ['parrot';'Hash']
  vivify_316:
    set $P1328, $P1327["hexints"]
    unless_null $P1328, vivify_317
    $P1328 = root_new ['parrot';'Hash']
  vivify_317:
    set $P1329, $P1328["hexint"]
    unless_null $P1329, vivify_318
    new $P1329, "Undef"
  vivify_318:
    set $P1323, $P1329
  unless_1324_end:
    $P1330 = $P1322($P1323)
    store_lex "$hexlit", $P1330
.annotate 'line', 354
    find_lex $P1331, "$/"
    find_lex $P1334, "$/"
    unless_null $P1334, vivify_319
    $P1334 = root_new ['parrot';'Hash']
  vivify_319:
    set $P1335, $P1334["sym"]
    unless_null $P1335, vivify_320
    new $P1335, "Undef"
  vivify_320:
    set $S1336, $P1335
    iseq $I1337, $S1336, "X"
    if $I1337, if_1333
.annotate 'line', 357
    get_hll_global $P1342, ["PAST"], "Regex"
    find_lex $P1343, "$hexlit"
    find_lex $P1344, "$/"
    $P1345 = $P1342."new"($P1343, "literal" :named("pasttype"), $P1344 :named("node"))
    set $P1332, $P1345
.annotate 'line', 354
    goto if_1333_end
  if_1333:
.annotate 'line', 355
    get_hll_global $P1338, ["PAST"], "Regex"
    find_lex $P1339, "$hexlit"
    find_lex $P1340, "$/"
    $P1341 = $P1338."new"($P1339, "enumcharlist" :named("pasttype"), 1 :named("negate"), $P1340 :named("node"))
    set $P1332, $P1341
  if_1333_end:
    $P1346 = $P1331."!make"($P1332)
.annotate 'line', 351
    .return ($P1346)
  control_1317:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1347, exception, "payload"
    .return ($P1347)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "backslash:sym<c>"  :subid("76_1295142326.265") :outer("11_1295142326.265")
    .param pmc param_1351
    .param pmc param_1352
.annotate 'line', 360
    new $P1350, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1350, control_1349
    push_eh $P1350
    .lex "self", param_1351
    .lex "$/", param_1352
.annotate 'line', 361
    find_lex $P1353, "$/"
    get_hll_global $P1354, ["PAST"], "Regex"
    find_lex $P1355, "$/"
    unless_null $P1355, vivify_321
    $P1355 = root_new ['parrot';'Hash']
  vivify_321:
    set $P1356, $P1355["charspec"]
    unless_null $P1356, vivify_322
    new $P1356, "Undef"
  vivify_322:
    $P1357 = $P1356."ast"()
    find_lex $P1358, "$/"
    $P1359 = $P1354."new"($P1357, "literal" :named("pasttype"), $P1358 :named("node"))
    $P1360 = $P1353."!make"($P1359)
.annotate 'line', 360
    .return ($P1360)
  control_1349:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1361, exception, "payload"
    .return ($P1361)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "backslash:sym<misc>"  :subid("77_1295142326.265") :outer("11_1295142326.265")
    .param pmc param_1365
    .param pmc param_1366
.annotate 'line', 364
    new $P1364, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1364, control_1363
    push_eh $P1364
    .lex "self", param_1365
    .lex "$/", param_1366
.annotate 'line', 365
    new $P1367, "Undef"
    .lex "$past", $P1367
    get_hll_global $P1368, ["PAST"], "Regex"
    find_lex $P1369, "$/"
    set $S1370, $P1369
    find_lex $P1371, "$/"
    $P1372 = $P1368."new"($S1370, "literal" :named("pasttype"), $P1371 :named("node"))
    store_lex "$past", $P1372
.annotate 'line', 366
    find_lex $P1373, "$/"
    find_lex $P1374, "$past"
    $P1375 = $P1373."!make"($P1374)
.annotate 'line', 364
    .return ($P1375)
  control_1363:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1376, exception, "payload"
    .return ($P1376)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "assertion:sym<?>"  :subid("78_1295142326.265") :outer("11_1295142326.265")
    .param pmc param_1380
    .param pmc param_1381
.annotate 'line', 370
    new $P1379, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1379, control_1378
    push_eh $P1379
    .lex "self", param_1380
    .lex "$/", param_1381
.annotate 'line', 371
    new $P1382, "Undef"
    .lex "$past", $P1382
.annotate 'line', 370
    find_lex $P1383, "$past"
.annotate 'line', 372
    find_lex $P1385, "$/"
    unless_null $P1385, vivify_323
    $P1385 = root_new ['parrot';'Hash']
  vivify_323:
    set $P1386, $P1385["assertion"]
    unless_null $P1386, vivify_324
    new $P1386, "Undef"
  vivify_324:
    if $P1386, if_1384
.annotate 'line', 376
    new $P1391, "Integer"
    assign $P1391, 0
    store_lex "$past", $P1391
    goto if_1384_end
  if_1384:
.annotate 'line', 373
    find_lex $P1387, "$/"
    unless_null $P1387, vivify_325
    $P1387 = root_new ['parrot';'Hash']
  vivify_325:
    set $P1388, $P1387["assertion"]
    unless_null $P1388, vivify_326
    new $P1388, "Undef"
  vivify_326:
    $P1389 = $P1388."ast"()
    store_lex "$past", $P1389
.annotate 'line', 374
    find_lex $P1390, "$past"
    $P1390."subtype"("zerowidth")
  if_1384_end:
.annotate 'line', 377
    find_lex $P1392, "$/"
    find_lex $P1393, "$past"
    $P1394 = $P1392."!make"($P1393)
.annotate 'line', 370
    .return ($P1394)
  control_1378:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1395, exception, "payload"
    .return ($P1395)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "assertion:sym<!>"  :subid("79_1295142326.265") :outer("11_1295142326.265")
    .param pmc param_1399
    .param pmc param_1400
.annotate 'line', 380
    new $P1398, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1398, control_1397
    push_eh $P1398
    .lex "self", param_1399
    .lex "$/", param_1400
.annotate 'line', 381
    new $P1401, "Undef"
    .lex "$past", $P1401
.annotate 'line', 380
    find_lex $P1402, "$past"
.annotate 'line', 382
    find_lex $P1404, "$/"
    unless_null $P1404, vivify_327
    $P1404 = root_new ['parrot';'Hash']
  vivify_327:
    set $P1405, $P1404["assertion"]
    unless_null $P1405, vivify_328
    new $P1405, "Undef"
  vivify_328:
    if $P1405, if_1403
.annotate 'line', 388
    get_hll_global $P1414, ["PAST"], "Regex"
    find_lex $P1415, "$/"
    $P1416 = $P1414."new"("anchor" :named("pasttype"), "fail" :named("subtype"), $P1415 :named("node"))
    store_lex "$past", $P1416
.annotate 'line', 387
    goto if_1403_end
  if_1403:
.annotate 'line', 383
    find_lex $P1406, "$/"
    unless_null $P1406, vivify_329
    $P1406 = root_new ['parrot';'Hash']
  vivify_329:
    set $P1407, $P1406["assertion"]
    unless_null $P1407, vivify_330
    new $P1407, "Undef"
  vivify_330:
    $P1408 = $P1407."ast"()
    store_lex "$past", $P1408
.annotate 'line', 384
    find_lex $P1409, "$past"
    find_lex $P1410, "$past"
    $P1411 = $P1410."negate"()
    isfalse $I1412, $P1411
    $P1409."negate"($I1412)
.annotate 'line', 385
    find_lex $P1413, "$past"
    $P1413."subtype"("zerowidth")
  if_1403_end:
.annotate 'line', 390
    find_lex $P1417, "$/"
    find_lex $P1418, "$past"
    $P1419 = $P1417."!make"($P1418)
.annotate 'line', 380
    .return ($P1419)
  control_1397:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1420, exception, "payload"
    .return ($P1420)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "assertion:sym<method>"  :subid("80_1295142326.265") :outer("11_1295142326.265")
    .param pmc param_1424
    .param pmc param_1425
.annotate 'line', 393
    new $P1423, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1423, control_1422
    push_eh $P1423
    .lex "self", param_1424
    .lex "$/", param_1425
.annotate 'line', 394
    new $P1426, "Undef"
    .lex "$past", $P1426
    find_lex $P1427, "$/"
    unless_null $P1427, vivify_331
    $P1427 = root_new ['parrot';'Hash']
  vivify_331:
    set $P1428, $P1427["assertion"]
    unless_null $P1428, vivify_332
    new $P1428, "Undef"
  vivify_332:
    $P1429 = $P1428."ast"()
    store_lex "$past", $P1429
.annotate 'line', 395
    find_lex $P1430, "$past"
    $P1430."subtype"("method")
.annotate 'line', 396
    find_lex $P1431, "$past"
    $P1431."name"("")
.annotate 'line', 397
    find_lex $P1432, "$/"
    find_lex $P1433, "$past"
    $P1434 = $P1432."!make"($P1433)
.annotate 'line', 393
    .return ($P1434)
  control_1422:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1435, exception, "payload"
    .return ($P1435)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "assertion:sym<name>"  :subid("81_1295142326.265") :outer("11_1295142326.265")
    .param pmc param_1439
    .param pmc param_1440
.annotate 'line', 400
    .const 'Sub' $P1497 = "83_1295142326.265" 
    capture_lex $P1497
    .const 'Sub' $P1463 = "82_1295142326.265" 
    capture_lex $P1463
    new $P1438, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1438, control_1437
    push_eh $P1438
    .lex "self", param_1439
    .lex "$/", param_1440
.annotate 'line', 401
    new $P1441, "Undef"
    .lex "$name", $P1441
.annotate 'line', 402
    new $P1442, "Undef"
    .lex "$past", $P1442
.annotate 'line', 401
    find_lex $P1443, "$/"
    unless_null $P1443, vivify_333
    $P1443 = root_new ['parrot';'Hash']
  vivify_333:
    set $P1444, $P1443["longname"]
    unless_null $P1444, vivify_334
    new $P1444, "Undef"
  vivify_334:
    set $S1445, $P1444
    new $P1446, 'String'
    set $P1446, $S1445
    store_lex "$name", $P1446
    find_lex $P1447, "$past"
.annotate 'line', 403
    find_lex $P1449, "$/"
    unless_null $P1449, vivify_335
    $P1449 = root_new ['parrot';'Hash']
  vivify_335:
    set $P1450, $P1449["assertion"]
    unless_null $P1450, vivify_336
    new $P1450, "Undef"
  vivify_336:
    if $P1450, if_1448
.annotate 'line', 407
    find_lex $P1459, "$name"
    set $S1460, $P1459
    iseq $I1461, $S1460, "sym"
    if $I1461, if_1458
.annotate 'line', 423
    find_lex $P1473, "self"
    find_lex $P1474, "$/"
    $P1475 = $P1473."named_assertion"($P1474)
    store_lex "$past", $P1475
.annotate 'line', 424
    find_lex $P1477, "$/"
    unless_null $P1477, vivify_337
    $P1477 = root_new ['parrot';'Hash']
  vivify_337:
    set $P1478, $P1477["nibbler"]
    unless_null $P1478, vivify_338
    new $P1478, "Undef"
  vivify_338:
    if $P1478, if_1476
.annotate 'line', 427
    find_lex $P1486, "$/"
    unless_null $P1486, vivify_339
    $P1486 = root_new ['parrot';'Hash']
  vivify_339:
    set $P1487, $P1486["arglist"]
    unless_null $P1487, vivify_340
    new $P1487, "Undef"
  vivify_340:
    unless $P1487, if_1485_end
.annotate 'line', 428
    find_lex $P1489, "$/"
    unless_null $P1489, vivify_341
    $P1489 = root_new ['parrot';'Hash']
  vivify_341:
    set $P1490, $P1489["arglist"]
    unless_null $P1490, vivify_342
    $P1490 = root_new ['parrot';'ResizablePMCArray']
  vivify_342:
    set $P1491, $P1490[0]
    unless_null $P1491, vivify_343
    new $P1491, "Undef"
  vivify_343:
    $P1492 = $P1491."ast"()
    $P1493 = $P1492."list"()
    defined $I1494, $P1493
    unless $I1494, for_undef_344
    iter $P1488, $P1493
    new $P1503, 'ExceptionHandler'
    set_addr $P1503, loop1502_handler
    $P1503."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1503
  loop1502_test:
    unless $P1488, loop1502_done
    shift $P1495, $P1488
  loop1502_redo:
    .const 'Sub' $P1497 = "83_1295142326.265" 
    capture_lex $P1497
    $P1497($P1495)
  loop1502_next:
    goto loop1502_test
  loop1502_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1504, exception, 'type'
    eq $P1504, .CONTROL_LOOP_NEXT, loop1502_next
    eq $P1504, .CONTROL_LOOP_REDO, loop1502_redo
  loop1502_done:
    pop_eh 
  for_undef_344:
  if_1485_end:
.annotate 'line', 427
    goto if_1476_end
  if_1476:
.annotate 'line', 425
    find_lex $P1479, "$past"
    find_lex $P1480, "$/"
    unless_null $P1480, vivify_345
    $P1480 = root_new ['parrot';'Hash']
  vivify_345:
    set $P1481, $P1480["nibbler"]
    unless_null $P1481, vivify_346
    $P1481 = root_new ['parrot';'ResizablePMCArray']
  vivify_346:
    set $P1482, $P1481[0]
    unless_null $P1482, vivify_347
    new $P1482, "Undef"
  vivify_347:
    $P1483 = $P1482."ast"()
    $P1484 = "buildsub"($P1483)
    $P1479."push"($P1484)
  if_1476_end:
.annotate 'line', 422
    goto if_1458_end
  if_1458:
.annotate 'line', 407
    .const 'Sub' $P1463 = "82_1295142326.265" 
    capture_lex $P1463
    $P1463()
  if_1458_end:
    goto if_1448_end
  if_1448:
.annotate 'line', 404
    find_lex $P1451, "$/"
    unless_null $P1451, vivify_348
    $P1451 = root_new ['parrot';'Hash']
  vivify_348:
    set $P1452, $P1451["assertion"]
    unless_null $P1452, vivify_349
    $P1452 = root_new ['parrot';'ResizablePMCArray']
  vivify_349:
    set $P1453, $P1452[0]
    unless_null $P1453, vivify_350
    new $P1453, "Undef"
  vivify_350:
    $P1454 = $P1453."ast"()
    store_lex "$past", $P1454
.annotate 'line', 405
    find_lex $P1455, "self"
    find_lex $P1456, "$past"
    find_lex $P1457, "$name"
    $P1455."subrule_alias"($P1456, $P1457)
  if_1448_end:
.annotate 'line', 431
    find_lex $P1505, "$/"
    find_lex $P1506, "$past"
    $P1507 = $P1505."!make"($P1506)
.annotate 'line', 400
    .return ($P1507)
  control_1437:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1508, exception, "payload"
    .return ($P1508)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1496"  :anon :subid("83_1295142326.265") :outer("81_1295142326.265")
    .param pmc param_1498
.annotate 'line', 428
    .lex "$_", param_1498
    find_lex $P1499, "$past"
    find_lex $P1500, "$_"
    $P1501 = $P1499."push"($P1500)
    .return ($P1501)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1462"  :anon :subid("82_1295142326.265") :outer("81_1295142326.265")
.annotate 'line', 408
    new $P1464, "Undef"
    .lex "$regexsym", $P1464

            $P0 = get_global '$REGEXNAME'
            $S0 = $P0
            $I0 = index $S0, ':sym<'
            add $I0, 5
            $S0 = substr $S0, $I0
            $S0 = chopn $S0, 1
            $P1465 = box $S0
        
    store_lex "$regexsym", $P1465
.annotate 'line', 417
    get_hll_global $P1466, ["PAST"], "Regex"
.annotate 'line', 418
    get_hll_global $P1467, ["PAST"], "Regex"
    find_lex $P1468, "$regexsym"
    $P1469 = $P1467."new"($P1468, "literal" :named("pasttype"))
    find_lex $P1470, "$name"
    find_lex $P1471, "$/"
    $P1472 = $P1466."new"($P1469, $P1470 :named("name"), "subcapture" :named("pasttype"), $P1471 :named("node"))
.annotate 'line', 417
    store_lex "$past", $P1472
.annotate 'line', 407
    .return ($P1472)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "assertion:sym<[>"  :subid("84_1295142326.265") :outer("11_1295142326.265")
    .param pmc param_1512
    .param pmc param_1513
.annotate 'line', 434
    .const 'Sub' $P1548 = "85_1295142326.265" 
    capture_lex $P1548
    new $P1511, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1511, control_1510
    push_eh $P1511
    .lex "self", param_1512
    .lex "$/", param_1513
.annotate 'line', 435
    new $P1514, "Undef"
    .lex "$clist", $P1514
.annotate 'line', 436
    new $P1515, "Undef"
    .lex "$past", $P1515
.annotate 'line', 445
    new $P1516, "Undef"
    .lex "$i", $P1516
.annotate 'line', 446
    new $P1517, "Undef"
    .lex "$n", $P1517
.annotate 'line', 435
    find_lex $P1518, "$/"
    unless_null $P1518, vivify_351
    $P1518 = root_new ['parrot';'Hash']
  vivify_351:
    set $P1519, $P1518["cclass_elem"]
    unless_null $P1519, vivify_352
    new $P1519, "Undef"
  vivify_352:
    store_lex "$clist", $P1519
.annotate 'line', 436
    find_lex $P1520, "$clist"
    unless_null $P1520, vivify_353
    $P1520 = root_new ['parrot';'ResizablePMCArray']
  vivify_353:
    set $P1521, $P1520[0]
    unless_null $P1521, vivify_354
    new $P1521, "Undef"
  vivify_354:
    $P1522 = $P1521."ast"()
    store_lex "$past", $P1522
.annotate 'line', 437
    find_lex $P1526, "$past"
    $P1527 = $P1526."negate"()
    if $P1527, if_1525
    set $P1524, $P1527
    goto if_1525_end
  if_1525:
    find_lex $P1528, "$past"
    $S1529 = $P1528."pasttype"()
    iseq $I1530, $S1529, "subrule"
    new $P1524, 'Integer'
    set $P1524, $I1530
  if_1525_end:
    unless $P1524, if_1523_end
.annotate 'line', 438
    find_lex $P1531, "$past"
    $P1531."subtype"("zerowidth")
.annotate 'line', 439
    get_hll_global $P1532, ["PAST"], "Regex"
    find_lex $P1533, "$past"
.annotate 'line', 441
    get_hll_global $P1534, ["PAST"], "Regex"
    $P1535 = $P1534."new"("charclass" :named("pasttype"), "." :named("subtype"))
    find_lex $P1536, "$/"
    $P1537 = $P1532."new"($P1533, $P1535, $P1536 :named("node"))
.annotate 'line', 439
    store_lex "$past", $P1537
  if_1523_end:
.annotate 'line', 445
    new $P1538, "Integer"
    assign $P1538, 1
    store_lex "$i", $P1538
.annotate 'line', 446
    find_lex $P1539, "$clist"
    set $N1540, $P1539
    new $P1541, 'Float'
    set $P1541, $N1540
    store_lex "$n", $P1541
.annotate 'line', 447
    new $P1572, 'ExceptionHandler'
    set_addr $P1572, loop1571_handler
    $P1572."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1572
  loop1571_test:
    find_lex $P1542, "$i"
    set $N1543, $P1542
    find_lex $P1544, "$n"
    set $N1545, $P1544
    islt $I1546, $N1543, $N1545
    unless $I1546, loop1571_done
  loop1571_redo:
    .const 'Sub' $P1548 = "85_1295142326.265" 
    capture_lex $P1548
    $P1548()
  loop1571_next:
    goto loop1571_test
  loop1571_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1573, exception, 'type'
    eq $P1573, .CONTROL_LOOP_NEXT, loop1571_next
    eq $P1573, .CONTROL_LOOP_REDO, loop1571_redo
  loop1571_done:
    pop_eh 
.annotate 'line', 458
    find_lex $P1574, "$/"
    find_lex $P1575, "$past"
    $P1576 = $P1574."!make"($P1575)
.annotate 'line', 434
    .return ($P1576)
  control_1510:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1577, exception, "payload"
    .return ($P1577)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1547"  :anon :subid("85_1295142326.265") :outer("84_1295142326.265")
.annotate 'line', 448
    new $P1549, "Undef"
    .lex "$ast", $P1549
    find_lex $P1550, "$i"
    set $I1551, $P1550
    find_lex $P1552, "$clist"
    unless_null $P1552, vivify_355
    $P1552 = root_new ['parrot';'ResizablePMCArray']
  vivify_355:
    set $P1553, $P1552[$I1551]
    unless_null $P1553, vivify_356
    new $P1553, "Undef"
  vivify_356:
    $P1554 = $P1553."ast"()
    store_lex "$ast", $P1554
.annotate 'line', 449
    find_lex $P1556, "$ast"
    $P1557 = $P1556."negate"()
    if $P1557, if_1555
.annotate 'line', 454
    get_hll_global $P1564, ["PAST"], "Regex"
    find_lex $P1565, "$past"
    find_lex $P1566, "$ast"
    find_lex $P1567, "$/"
    $P1568 = $P1564."new"($P1565, $P1566, "alt" :named("pasttype"), $P1567 :named("node"))
    store_lex "$past", $P1568
.annotate 'line', 453
    goto if_1555_end
  if_1555:
.annotate 'line', 450
    find_lex $P1558, "$ast"
    $P1558."subtype"("zerowidth")
.annotate 'line', 451
    get_hll_global $P1559, ["PAST"], "Regex"
    find_lex $P1560, "$ast"
    find_lex $P1561, "$past"
    find_lex $P1562, "$/"
    $P1563 = $P1559."new"($P1560, $P1561, "concat" :named("pasttype"), $P1562 :named("node"))
    store_lex "$past", $P1563
  if_1555_end:
.annotate 'line', 456
    find_lex $P1569, "$i"
    add $P1570, $P1569, 1
    store_lex "$i", $P1570
.annotate 'line', 447
    .return ($P1570)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "cclass_elem"  :subid("86_1295142326.265") :outer("11_1295142326.265")
    .param pmc param_1581
    .param pmc param_1582
.annotate 'line', 461
    .const 'Sub' $P1607 = "88_1295142326.265" 
    capture_lex $P1607
    .const 'Sub' $P1591 = "87_1295142326.265" 
    capture_lex $P1591
    new $P1580, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1580, control_1579
    push_eh $P1580
    .lex "self", param_1581
    .lex "$/", param_1582
.annotate 'line', 462
    new $P1583, "Undef"
    .lex "$str", $P1583
.annotate 'line', 463
    new $P1584, "Undef"
    .lex "$past", $P1584
.annotate 'line', 462
    new $P1585, "String"
    assign $P1585, ""
    store_lex "$str", $P1585
    find_lex $P1586, "$past"
.annotate 'line', 464
    find_lex $P1588, "$/"
    unless_null $P1588, vivify_357
    $P1588 = root_new ['parrot';'Hash']
  vivify_357:
    set $P1589, $P1588["name"]
    unless_null $P1589, vivify_358
    new $P1589, "Undef"
  vivify_358:
    if $P1589, if_1587
.annotate 'line', 468
    find_lex $P1602, "$/"
    unless_null $P1602, vivify_359
    $P1602 = root_new ['parrot';'Hash']
  vivify_359:
    set $P1603, $P1602["charspec"]
    unless_null $P1603, vivify_360
    new $P1603, "Undef"
  vivify_360:
    defined $I1604, $P1603
    unless $I1604, for_undef_361
    iter $P1601, $P1603
    new $P1633, 'ExceptionHandler'
    set_addr $P1633, loop1632_handler
    $P1633."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1633
  loop1632_test:
    unless $P1601, loop1632_done
    shift $P1605, $P1601
  loop1632_redo:
    .const 'Sub' $P1607 = "88_1295142326.265" 
    capture_lex $P1607
    $P1607($P1605)
  loop1632_next:
    goto loop1632_test
  loop1632_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1634, exception, 'type'
    eq $P1634, .CONTROL_LOOP_NEXT, loop1632_next
    eq $P1634, .CONTROL_LOOP_REDO, loop1632_redo
  loop1632_done:
    pop_eh 
  for_undef_361:
.annotate 'line', 493
    get_hll_global $P1635, ["PAST"], "Regex"
    find_lex $P1636, "$str"
    find_lex $P1637, "$/"
    $P1638 = $P1635."new"($P1636, "enumcharlist" :named("pasttype"), $P1637 :named("node"))
    store_lex "$past", $P1638
.annotate 'line', 467
    goto if_1587_end
  if_1587:
.annotate 'line', 464
    .const 'Sub' $P1591 = "87_1295142326.265" 
    capture_lex $P1591
    $P1591()
  if_1587_end:
.annotate 'line', 495
    find_lex $P1639, "$past"
    find_lex $P1640, "$/"
    unless_null $P1640, vivify_373
    $P1640 = root_new ['parrot';'Hash']
  vivify_373:
    set $P1641, $P1640["sign"]
    unless_null $P1641, vivify_374
    new $P1641, "Undef"
  vivify_374:
    set $S1642, $P1641
    iseq $I1643, $S1642, "-"
    $P1639."negate"($I1643)
.annotate 'line', 496
    find_lex $P1644, "$/"
    find_lex $P1645, "$past"
    $P1646 = $P1644."!make"($P1645)
.annotate 'line', 461
    .return ($P1646)
  control_1579:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1647, exception, "payload"
    .return ($P1647)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1606"  :anon :subid("88_1295142326.265") :outer("86_1295142326.265")
    .param pmc param_1608
.annotate 'line', 468
    .const 'Sub' $P1614 = "89_1295142326.265" 
    capture_lex $P1614
    .lex "$_", param_1608
.annotate 'line', 469
    find_lex $P1611, "$_"
    unless_null $P1611, vivify_362
    $P1611 = root_new ['parrot';'ResizablePMCArray']
  vivify_362:
    set $P1612, $P1611[1]
    unless_null $P1612, vivify_363
    new $P1612, "Undef"
  vivify_363:
    if $P1612, if_1610
.annotate 'line', 491
    find_lex $P1628, "$str"
    find_lex $P1629, "$_"
    unless_null $P1629, vivify_364
    $P1629 = root_new ['parrot';'ResizablePMCArray']
  vivify_364:
    set $P1630, $P1629[0]
    unless_null $P1630, vivify_365
    new $P1630, "Undef"
  vivify_365:
    concat $P1631, $P1628, $P1630
    store_lex "$str", $P1631
    set $P1609, $P1631
.annotate 'line', 469
    goto if_1610_end
  if_1610:
    .const 'Sub' $P1614 = "89_1295142326.265" 
    capture_lex $P1614
    $P1627 = $P1614()
    set $P1609, $P1627
  if_1610_end:
.annotate 'line', 468
    .return ($P1609)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1613"  :anon :subid("89_1295142326.265") :outer("88_1295142326.265")
.annotate 'line', 470
    new $P1615, "Undef"
    .lex "$a", $P1615
.annotate 'line', 471
    new $P1616, "Undef"
    .lex "$b", $P1616
.annotate 'line', 472
    new $P1617, "Undef"
    .lex "$c", $P1617
.annotate 'line', 470
    find_lex $P1618, "$_"
    unless_null $P1618, vivify_366
    $P1618 = root_new ['parrot';'ResizablePMCArray']
  vivify_366:
    set $P1619, $P1618[0]
    unless_null $P1619, vivify_367
    new $P1619, "Undef"
  vivify_367:
    store_lex "$a", $P1619
.annotate 'line', 471
    find_lex $P1620, "$_"
    unless_null $P1620, vivify_368
    $P1620 = root_new ['parrot';'ResizablePMCArray']
  vivify_368:
    set $P1621, $P1620[1]
    unless_null $P1621, vivify_369
    $P1621 = root_new ['parrot';'ResizablePMCArray']
  vivify_369:
    set $P1622, $P1621[0]
    unless_null $P1622, vivify_370
    new $P1622, "Undef"
  vivify_370:
    store_lex "$b", $P1622
.annotate 'line', 472

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
                             $P1623 = box $S2
                         
    store_lex "$c", $P1623
.annotate 'line', 489
    find_lex $P1624, "$str"
    find_lex $P1625, "$c"
    concat $P1626, $P1624, $P1625
    store_lex "$str", $P1626
.annotate 'line', 469
    .return ($P1626)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1590"  :anon :subid("87_1295142326.265") :outer("86_1295142326.265")
.annotate 'line', 465
    new $P1592, "Undef"
    .lex "$name", $P1592
    find_lex $P1593, "$/"
    unless_null $P1593, vivify_371
    $P1593 = root_new ['parrot';'Hash']
  vivify_371:
    set $P1594, $P1593["name"]
    unless_null $P1594, vivify_372
    new $P1594, "Undef"
  vivify_372:
    set $S1595, $P1594
    new $P1596, 'String'
    set $P1596, $S1595
    store_lex "$name", $P1596
.annotate 'line', 466
    get_hll_global $P1597, ["PAST"], "Regex"
    find_lex $P1598, "$name"
    find_lex $P1599, "$/"
    $P1600 = $P1597."new"($P1598, "subrule" :named("pasttype"), "method" :named("subtype"), $P1599 :named("node"))
    store_lex "$past", $P1600
.annotate 'line', 464
    .return ($P1600)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "mod_internal"  :subid("90_1295142326.265") :outer("11_1295142326.265")
    .param pmc param_1651
    .param pmc param_1652
.annotate 'line', 499
    new $P1650, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1650, control_1649
    push_eh $P1650
    .lex "self", param_1651
    .lex "$/", param_1652
.annotate 'line', 500
    $P1653 = root_new ['parrot';'Hash']
    .lex "%mods", $P1653
.annotate 'line', 501
    new $P1654, "Undef"
    .lex "$n", $P1654
.annotate 'line', 500
    get_global $P1655, "@MODIFIERS"
    unless_null $P1655, vivify_375
    $P1655 = root_new ['parrot';'ResizablePMCArray']
  vivify_375:
    set $P1656, $P1655[0]
    unless_null $P1656, vivify_376
    new $P1656, "Undef"
  vivify_376:
    store_lex "%mods", $P1656
.annotate 'line', 501
    find_lex $P1659, "$/"
    unless_null $P1659, vivify_377
    $P1659 = root_new ['parrot';'Hash']
  vivify_377:
    set $P1660, $P1659["n"]
    unless_null $P1660, vivify_378
    $P1660 = root_new ['parrot';'ResizablePMCArray']
  vivify_378:
    set $P1661, $P1660[0]
    unless_null $P1661, vivify_379
    new $P1661, "Undef"
  vivify_379:
    set $S1662, $P1661
    isgt $I1663, $S1662, ""
    if $I1663, if_1658
    new $P1668, "Integer"
    assign $P1668, 1
    set $P1657, $P1668
    goto if_1658_end
  if_1658:
    find_lex $P1664, "$/"
    unless_null $P1664, vivify_380
    $P1664 = root_new ['parrot';'Hash']
  vivify_380:
    set $P1665, $P1664["n"]
    unless_null $P1665, vivify_381
    $P1665 = root_new ['parrot';'ResizablePMCArray']
  vivify_381:
    set $P1666, $P1665[0]
    unless_null $P1666, vivify_382
    new $P1666, "Undef"
  vivify_382:
    set $N1667, $P1666
    new $P1657, 'Float'
    set $P1657, $N1667
  if_1658_end:
    store_lex "$n", $P1657
.annotate 'line', 502
    find_lex $P1669, "$n"
    find_lex $P1670, "$/"
    unless_null $P1670, vivify_383
    $P1670 = root_new ['parrot';'Hash']
  vivify_383:
    set $P1671, $P1670["mod_ident"]
    unless_null $P1671, vivify_384
    $P1671 = root_new ['parrot';'Hash']
  vivify_384:
    set $P1672, $P1671["sym"]
    unless_null $P1672, vivify_385
    new $P1672, "Undef"
  vivify_385:
    set $S1673, $P1672
    find_lex $P1674, "%mods"
    unless_null $P1674, vivify_386
    $P1674 = root_new ['parrot';'Hash']
    store_lex "%mods", $P1674
  vivify_386:
    set $P1674[$S1673], $P1669
.annotate 'line', 503
    find_lex $P1675, "$/"
    $P1676 = $P1675."!make"(0)
.annotate 'line', 499
    .return ($P1676)
  control_1649:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1677, exception, "payload"
    .return ($P1677)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "subrule_alias"  :subid("91_1295142326.265") :outer("11_1295142326.265")
    .param pmc param_1684
    .param pmc param_1685
    .param pmc param_1686
.annotate 'line', 597
    new $P1683, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1683, control_1682
    push_eh $P1683
    .lex "self", param_1684
    .lex "$past", param_1685
    .lex "$name", param_1686
.annotate 'line', 598
    find_lex $P1688, "$past"
    $S1689 = $P1688."name"()
    isgt $I1690, $S1689, ""
    if $I1690, if_1687
.annotate 'line', 599
    find_lex $P1697, "$past"
    find_lex $P1698, "$name"
    $P1697."name"($P1698)
    goto if_1687_end
  if_1687:
.annotate 'line', 598
    find_lex $P1691, "$past"
    find_lex $P1692, "$name"
    concat $P1693, $P1692, "="
    find_lex $P1694, "$past"
    $S1695 = $P1694."name"()
    concat $P1696, $P1693, $S1695
    $P1691."name"($P1696)
  if_1687_end:
.annotate 'line', 600
    find_lex $P1699, "$past"
    $P1700 = $P1699."subtype"("capture")
.annotate 'line', 597
    .return ($P1700)
  control_1682:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1701, exception, "payload"
    .return ($P1701)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.include "except_types.pasm"
.sub "named_assertion"  :subid("92_1295142326.265") :outer("11_1295142326.265")
    .param pmc param_1705
    .param pmc param_1706
.annotate 'line', 603
    new $P1704, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P1704, control_1703
    push_eh $P1704
    .lex "self", param_1705
    .lex "$/", param_1706
.annotate 'line', 604
    new $P1707, "Undef"
    .lex "$name", $P1707
.annotate 'line', 605
    new $P1708, "Undef"
    .lex "$past", $P1708
.annotate 'line', 604
    find_lex $P1709, "$/"
    unless_null $P1709, vivify_387
    $P1709 = root_new ['parrot';'Hash']
  vivify_387:
    set $P1710, $P1709["longname"]
    unless_null $P1710, vivify_388
    new $P1710, "Undef"
  vivify_388:
    set $S1711, $P1710
    new $P1712, 'String'
    set $P1712, $S1711
    store_lex "$name", $P1712
.annotate 'line', 605
    get_hll_global $P1713, ["PAST"], "Regex"
    find_lex $P1714, "$name"
    find_lex $P1715, "$name"
    find_lex $P1716, "$/"
    $P1717 = $P1713."new"($P1714, $P1715 :named("name"), "subrule" :named("pasttype"), "capture" :named("subtype"), $P1716 :named("node"))
    store_lex "$past", $P1717
    find_lex $P1718, "$past"
.annotate 'line', 603
    .return ($P1718)
  control_1703:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1719, exception, "payload"
    .return ($P1719)
.end


.namespace ["Regex";"P6Regex";"Actions"]
.sub "_block1721" :load :anon :subid("93_1295142326.265")
.annotate 'line', 4
    .const 'Sub' $P1723 = "11_1295142326.265" 
    $P1724 = $P1723()
    .return ($P1724)
.end


.namespace []
.sub "_block1841" :load :anon :subid("95_1295142326.265")
.annotate 'line', 1
    .const 'Sub' $P1843 = "10_1295142326.265" 
    $P1844 = $P1843()
    .return ($P1844)
.end

### .include 'gen/p6regex-compiler.pir'

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1295142327.625")
.annotate 'line', 0
    get_hll_global $P15, ["Regex";"P6Regex";"Compiler"], "_block14" 
    capture_lex $P15
.annotate 'line', 1
    nqp_dynop_setup 
    get_hll_global $P13, ["Regex";"P6Regex"], "Compiler"
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
    get_hll_global $P15, ["Regex";"P6Regex";"Compiler"], "_block14" 
    capture_lex $P15
    $P25 = $P15()
    .return ($P25)
    .const 'Sub' $P27 = "13_1295142327.625" 
    .return ($P27)
.end


.namespace ["Regex";"P6Regex";"Compiler"]
.sub "_block14"  :subid("11_1295142327.625") :outer("10_1295142327.625")
.annotate 'line', 1
    .const 'Sub' $P18 = "12_1295142327.625" 
    capture_lex $P18
    get_global $P16, "$?CLASS"
    .return ()
.end


.namespace ["Regex";"P6Regex";"Compiler"]
.sub "" :load :init :subid("post14") :outer("11_1295142327.625")
.annotate 'line', 1
    get_hll_global $P15, ["Regex";"P6Regex";"Compiler"], "_block14" 
    .local pmc block
    set block, $P15
    .const 'Sub' $P18 = "12_1295142327.625" 
    capture_lex $P18
    $P18()
.end


.namespace ["Regex";"P6Regex";"Compiler"]
.sub "_block17"  :anon :subid("12_1295142327.625") :outer("11_1295142327.625")
.annotate 'line', 1
    get_hll_global $P19, "NQPClassHOW"
    $P20 = $P19."new_type"("Compiler" :named("name"))
    .local pmc type_obj
    set type_obj, $P20
    set_hll_global ["Regex";"P6Regex"], "Compiler", type_obj
    set_global "$?CLASS", type_obj
    get_how $P21, type_obj
    get_hll_global $P22, ["HLL"], "Compiler"
    $P21."add_parent"(type_obj, $P22)
    get_how $P23, type_obj
    $P24 = $P23."compose"(type_obj)
    .return ($P24)
.end


.namespace []
.sub "_block26" :load :anon :subid("13_1295142327.625")
.annotate 'line', 1
    .const 'Sub' $P28 = "10_1295142327.625" 
    $P29 = $P28()
    .return ($P29)
.end


.namespace ['Regex';'P6Regex';'Compiler']

.sub '' :anon :load :init
    .local pmc p6regexproto, p6regex
    p6regexproto = get_hll_global ['Regex'; 'P6Regex'], 'Compiler'
    p6regex = p6regexproto.'new'()
    p6regex.'language'('Regex::P6Regex')
    $P0 = get_hll_global ['Regex';'P6Regex'], 'Grammar'
    p6regex.'parsegrammar'($P0)
    $P0 = get_hll_global ['Regex';'P6Regex'], 'Actions'
    p6regex.'parseactions'($P0)
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
