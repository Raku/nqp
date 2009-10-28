# Copyright (C) 2009, Patrick R. Michaud
# $Id$

=head1 NAME

Regex::P6Grammar - scaffolding compiler for NQP / Perl 6 grammars

=head1 DESCRIPTION

=cut

.sub '' :anon :load :init
    load_bytecode 'PCT.pbc'
    load_bytecode 'P6Regex.pbc'
.end

### .include 'gen/p6grammar-grammar.pir'

.namespace ["Regex";"P6Grammar";"Grammar"]
.sub "_block11"  :subid("10_1256744997.6976")
.annotate "line", 0
    .const 'Sub' $P55 = "19_1256744997.6976" 
    capture_lex $P55
    .const 'Sub' $P41 = "17_1256744997.6976" 
    capture_lex $P41
    .const 'Sub' $P27 = "15_1256744997.6976" 
    capture_lex $P27
    .const 'Sub' $P21 = "13_1256744997.6976" 
    capture_lex $P21
    .const 'Sub' $P13 = "11_1256744997.6976" 
    capture_lex $P13
.annotate "line", 19
    .const 'Sub' $P55 = "19_1256744997.6976" 
    capture_lex $P55
.annotate "line", 1
    .return ($P55)
.end


.namespace ["Regex";"P6Grammar";"Grammar"]
.sub "" :load :init :subid("post21") :outer("10_1256744997.6976")
.annotate "line", 0
    get_hll_global $P12, ["Regex";"P6Grammar";"Grammar"], "_block11" 
    .local pmc block
    set block, $P12
.annotate "line", 1
    get_hll_global $P78, "P6metaclass"
    $P78."new_class"("Regex::P6Grammar::Grammar", "Regex::P6Regex::Grammar" :named("parent"))
.end


.namespace ["Regex";"P6Grammar";"Grammar"]
.sub "TOP"  :subid("11_1256744997.6976") :method :outer("10_1256744997.6976")
.annotate "line", 3
    .local string rx14_tgt
    .local int rx14_pos
    .local int rx14_off
    .local int rx14_eos
    .local int rx14_rep
    .local pmc rx14_cur
    (rx14_cur, rx14_pos, rx14_tgt, $I10) = self."!cursor_start"()
    rx14_cur."!cursor_debug"("START ", "TOP")
    rx14_cur."!cursor_caparray"("regex_stmt")
    .lex unicode:"$\x{a2}", rx14_cur
    length rx14_eos, rx14_tgt
    set rx14_off, 0
    lt $I10, 2, rx14_start
    sub rx14_off, $I10, 1
    substr rx14_tgt, rx14_tgt, rx14_off
  rx14_start:
.annotate "line", 4
  # rx subrule "grammar_stmt" subtype=capture negate=
    rx14_cur."!cursor_pos"(rx14_pos)
    $P10 = rx14_cur."grammar_stmt"()
    unless $P10, rx14_fail
    rx14_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("grammar_stmt")
    rx14_pos = $P10."pos"()
.annotate "line", 5
  # rx rxquantr18 ** 0..*
    set_addr $I19, rxquantr18_done
    rx14_cur."!mark_push"(0, rx14_pos, $I19)
  rxquantr18_loop:
  # rx subrule "regex_stmt" subtype=capture negate=
    rx14_cur."!cursor_pos"(rx14_pos)
    $P10 = rx14_cur."regex_stmt"()
    unless $P10, rx14_fail
    rx14_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("regex_stmt")
    rx14_pos = $P10."pos"()
    (rx14_rep) = rx14_cur."!mark_commit"($I19)
    rx14_cur."!mark_push"(rx14_rep, rx14_pos, $I19)
    goto rxquantr18_loop
  rxquantr18_done:
  alt20_0:
.annotate "line", 6
    set_addr $I10, alt20_1
    rx14_cur."!mark_push"(0, rx14_pos, $I10)
  # rxanchor eos
    ne rx14_pos, rx14_eos, rx14_fail
    goto alt20_end
  alt20_1:
  # rx subrule "panic" subtype=method negate=
    rx14_cur."!cursor_pos"(rx14_pos)
    $P10 = rx14_cur."panic"("Confused")
    unless $P10, rx14_fail
    rx14_pos = $P10."pos"()
  alt20_end:
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


.namespace ["Regex";"P6Grammar";"Grammar"]
.sub "!PREFIX__TOP"  :subid("12_1256744997.6976") :method
.annotate "line", 3
    $P16 = self."!PREFIX__!subrule"("grammar_stmt", "")
    new $P17, "ResizablePMCArray"
    push $P17, $P16
    .return ($P17)
.end


.namespace ["Regex";"P6Grammar";"Grammar"]
.sub "name"  :subid("13_1256744997.6976") :method :outer("10_1256744997.6976")
.annotate "line", 9
    .local string rx22_tgt
    .local int rx22_pos
    .local int rx22_off
    .local int rx22_eos
    .local int rx22_rep
    .local pmc rx22_cur
    (rx22_cur, rx22_pos, rx22_tgt, $I10) = self."!cursor_start"()
    rx22_cur."!cursor_debug"("START ", "name")
    .lex unicode:"$\x{a2}", rx22_cur
    length rx22_eos, rx22_tgt
    set rx22_off, 0
    lt $I10, 2, rx22_start
    sub rx22_off, $I10, 1
    substr rx22_tgt, rx22_tgt, rx22_off
  rx22_start:
  # rx rxquantr25 ** 1..*
    set_addr $I26, rxquantr25_done
    rx22_cur."!mark_push"(0, -1, $I26)
  rxquantr25_loop:
  # rx subrule "ident" subtype=method negate=
    rx22_cur."!cursor_pos"(rx22_pos)
    $P10 = rx22_cur."ident"()
    unless $P10, rx22_fail
    rx22_pos = $P10."pos"()
    (rx22_rep) = rx22_cur."!mark_commit"($I26)
    rx22_cur."!mark_push"(rx22_rep, rx22_pos, $I26)
  # rx literal  "::"
    add $I11, rx22_pos, 2
    gt $I11, rx22_eos, rx22_fail
    sub $I11, rx22_pos, rx22_off
    substr $S10, rx22_tgt, $I11, 2
    ne $S10, "::", rx22_fail
    add rx22_pos, 2
    goto rxquantr25_loop
  rxquantr25_done:
  # rx pass
    rx22_cur."!cursor_pass"(rx22_pos, "name")
    rx22_cur."!cursor_debug"("PASS  ", "name", " at pos=", rx22_pos)
    .return (rx22_cur)
  rx22_fail:
    (rx22_rep, rx22_pos, $I10, $P10) = rx22_cur."!mark_fail"(0)
    lt rx22_pos, -1, rx22_done
    eq rx22_pos, -1, rx22_fail
    jump $I10
  rx22_done:
    rx22_cur."!cursor_fail"()
    rx22_cur."!cursor_debug"("FAIL  ", "name")
    .return (rx22_cur)
    .return ()
.end


.namespace ["Regex";"P6Grammar";"Grammar"]
.sub "!PREFIX__name"  :subid("14_1256744997.6976") :method
.annotate "line", 9
    new $P24, "ResizablePMCArray"
    push $P24, ""
    .return ($P24)
.end


.namespace ["Regex";"P6Grammar";"Grammar"]
.sub "longname"  :subid("15_1256744997.6976") :method :outer("10_1256744997.6976")
.annotate "line", 11
    .local string rx28_tgt
    .local int rx28_pos
    .local int rx28_off
    .local int rx28_eos
    .local int rx28_rep
    .local pmc rx28_cur
    (rx28_cur, rx28_pos, rx28_tgt, $I10) = self."!cursor_start"()
    rx28_cur."!cursor_debug"("START ", "longname")
    rx28_cur."!cursor_caparray"("sym")
    .lex unicode:"$\x{a2}", rx28_cur
    length rx28_eos, rx28_tgt
    set rx28_off, 0
    lt $I10, 2, rx28_start
    sub rx28_off, $I10, 1
    substr rx28_tgt, rx28_tgt, rx28_off
  rx28_start:
.annotate "line", 13
  # rx subrule "ident" subtype=capture negate=
    rx28_cur."!cursor_pos"(rx28_pos)
    $P10 = rx28_cur."ident"()
    unless $P10, rx28_fail
    rx28_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("ident")
    rx28_pos = $P10."pos"()
  # rx rxquantr32 ** 0..1
    set_addr $I40, rxquantr32_done
    rx28_cur."!mark_push"(0, rx28_pos, $I40)
  rxquantr32_loop:
  alt33_0:
    set_addr $I10, alt33_1
    rx28_cur."!mark_push"(0, rx28_pos, $I10)
  # rx literal  ":sym<"
    add $I11, rx28_pos, 5
    gt $I11, rx28_eos, rx28_fail
    sub $I11, rx28_pos, rx28_off
    substr $S10, rx28_tgt, $I11, 5
    ne $S10, ":sym<", rx28_fail
    add rx28_pos, 5
  # rx subcapture "sym"
    set_addr $I10, rxcap_36_fail
    rx28_cur."!mark_push"(0, rx28_pos, $I10)
  # rx rxquantr34 ** 0..*
    set_addr $I35, rxquantr34_done
    rx28_cur."!mark_push"(0, rx28_pos, $I35)
  rxquantr34_loop:
  # rx enumcharlist negate=1 
    ge rx28_pos, rx28_eos, rx28_fail
    sub $I10, rx28_pos, rx28_off
    substr $S10, rx28_tgt, $I10, 1
    index $I11, ">", $S10
    ge $I11, 0, rx28_fail
    inc rx28_pos
    (rx28_rep) = rx28_cur."!mark_commit"($I35)
    rx28_cur."!mark_push"(rx28_rep, rx28_pos, $I35)
    goto rxquantr34_loop
  rxquantr34_done:
    set_addr $I10, rxcap_36_fail
    ($I12, $I11) = rx28_cur."!mark_peek"($I10)
    rx28_cur."!cursor_pos"($I11)
    ($P10) = rx28_cur."!cursor_start"()
    $P10."!cursor_pass"(rx28_pos, "")
    rx28_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_36_done
  rxcap_36_fail:
    goto rx28_fail
  rxcap_36_done:
  # rx literal  ">"
    add $I11, rx28_pos, 1
    gt $I11, rx28_eos, rx28_fail
    sub $I11, rx28_pos, rx28_off
    substr $S10, rx28_tgt, $I11, 1
    ne $S10, ">", rx28_fail
    add rx28_pos, 1
    goto alt33_end
  alt33_1:
  # rx literal  unicode:":sym\x{ab}"
    add $I11, rx28_pos, 5
    gt $I11, rx28_eos, rx28_fail
    sub $I11, rx28_pos, rx28_off
    substr $S10, rx28_tgt, $I11, 5
    ne $S10, unicode:":sym\x{ab}", rx28_fail
    add rx28_pos, 5
  # rx subcapture "sym"
    set_addr $I10, rxcap_39_fail
    rx28_cur."!mark_push"(0, rx28_pos, $I10)
  # rx rxquantr37 ** 0..*
    set_addr $I38, rxquantr37_done
    rx28_cur."!mark_push"(0, rx28_pos, $I38)
  rxquantr37_loop:
  # rx enumcharlist negate=1 
    ge rx28_pos, rx28_eos, rx28_fail
    sub $I10, rx28_pos, rx28_off
    substr $S10, rx28_tgt, $I10, 1
    index $I11, unicode:"\x{bb}", $S10
    ge $I11, 0, rx28_fail
    inc rx28_pos
    (rx28_rep) = rx28_cur."!mark_commit"($I38)
    rx28_cur."!mark_push"(rx28_rep, rx28_pos, $I38)
    goto rxquantr37_loop
  rxquantr37_done:
    set_addr $I10, rxcap_39_fail
    ($I12, $I11) = rx28_cur."!mark_peek"($I10)
    rx28_cur."!cursor_pos"($I11)
    ($P10) = rx28_cur."!cursor_start"()
    $P10."!cursor_pass"(rx28_pos, "")
    rx28_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_39_done
  rxcap_39_fail:
    goto rx28_fail
  rxcap_39_done:
  # rx literal  unicode:"\x{bb}"
    add $I11, rx28_pos, 1
    gt $I11, rx28_eos, rx28_fail
    sub $I11, rx28_pos, rx28_off
    substr $S10, rx28_tgt, $I11, 1
    ne $S10, unicode:"\x{bb}", rx28_fail
    add rx28_pos, 1
  alt33_end:
    (rx28_rep) = rx28_cur."!mark_commit"($I40)
  rxquantr32_done:
.annotate "line", 11
  # rx pass
    rx28_cur."!cursor_pass"(rx28_pos, "longname")
    rx28_cur."!cursor_debug"("PASS  ", "longname", " at pos=", rx28_pos)
    .return (rx28_cur)
  rx28_fail:
    (rx28_rep, rx28_pos, $I10, $P10) = rx28_cur."!mark_fail"(0)
    lt rx28_pos, -1, rx28_done
    eq rx28_pos, -1, rx28_fail
    jump $I10
  rx28_done:
    rx28_cur."!cursor_fail"()
    rx28_cur."!cursor_debug"("FAIL  ", "longname")
    .return (rx28_cur)
    .return ()
.end


.namespace ["Regex";"P6Grammar";"Grammar"]
.sub "!PREFIX__longname"  :subid("16_1256744997.6976") :method
.annotate "line", 11
    $P30 = self."!PREFIX__!subrule"("ident", "")
    new $P31, "ResizablePMCArray"
    push $P31, $P30
    .return ($P31)
.end


.namespace ["Regex";"P6Grammar";"Grammar"]
.sub "grammar_stmt"  :subid("17_1256744997.6976") :method :outer("10_1256744997.6976")
.annotate "line", 17
    .local string rx42_tgt
    .local int rx42_pos
    .local int rx42_off
    .local int rx42_eos
    .local int rx42_rep
    .local pmc rx42_cur
    (rx42_cur, rx42_pos, rx42_tgt, $I10) = self."!cursor_start"()
    rx42_cur."!cursor_debug"("START ", "grammar_stmt")
    rx42_cur."!cursor_caparray"("base")
    .lex unicode:"$\x{a2}", rx42_cur
    length rx42_eos, rx42_tgt
    set rx42_off, 0
    lt $I10, 2, rx42_start
    sub rx42_off, $I10, 1
    substr rx42_tgt, rx42_tgt, rx42_off
  rx42_start:
  # rx subrule "ws" subtype=method negate=
    rx42_cur."!cursor_pos"(rx42_pos)
    $P10 = rx42_cur."ws"()
    unless $P10, rx42_fail
    rx42_pos = $P10."pos"()
  # rx literal  "grammar"
    add $I11, rx42_pos, 7
    gt $I11, rx42_eos, rx42_fail
    sub $I11, rx42_pos, rx42_off
    substr $S10, rx42_tgt, $I11, 7
    ne $S10, "grammar", rx42_fail
    add rx42_pos, 7
  # rx subrule "ws" subtype=method negate=
    rx42_cur."!cursor_pos"(rx42_pos)
    $P10 = rx42_cur."ws"()
    unless $P10, rx42_fail
    rx42_pos = $P10."pos"()
  # rx subrule "name" subtype=capture negate=
    rx42_cur."!cursor_pos"(rx42_pos)
    $P10 = rx42_cur."name"()
    unless $P10, rx42_fail
    rx42_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    rx42_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx42_cur."!cursor_pos"(rx42_pos)
    $P10 = rx42_cur."ws"()
    unless $P10, rx42_fail
    rx42_pos = $P10."pos"()
  # rx rxquantr48 ** 0..1
    set_addr $I52, rxquantr48_done
    rx42_cur."!mark_push"(0, rx42_pos, $I52)
  rxquantr48_loop:
  # rx subrule "ws" subtype=method negate=
    rx42_cur."!cursor_pos"(rx42_pos)
    $P10 = rx42_cur."ws"()
    unless $P10, rx42_fail
    rx42_pos = $P10."pos"()
  # rx literal  "is"
    add $I11, rx42_pos, 2
    gt $I11, rx42_eos, rx42_fail
    sub $I11, rx42_pos, rx42_off
    substr $S10, rx42_tgt, $I11, 2
    ne $S10, "is", rx42_fail
    add rx42_pos, 2
  # rx subrule "ws" subtype=method negate=
    rx42_cur."!cursor_pos"(rx42_pos)
    $P10 = rx42_cur."ws"()
    unless $P10, rx42_fail
    rx42_pos = $P10."pos"()
  # rx subrule "name" subtype=capture negate=
    rx42_cur."!cursor_pos"(rx42_pos)
    $P10 = rx42_cur."name"()
    unless $P10, rx42_fail
    rx42_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("base")
    rx42_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx42_cur."!cursor_pos"(rx42_pos)
    $P10 = rx42_cur."ws"()
    unless $P10, rx42_fail
    rx42_pos = $P10."pos"()
    (rx42_rep) = rx42_cur."!mark_commit"($I52)
  rxquantr48_done:
  # rx subrule "ws" subtype=method negate=
    rx42_cur."!cursor_pos"(rx42_pos)
    $P10 = rx42_cur."ws"()
    unless $P10, rx42_fail
    rx42_pos = $P10."pos"()
  # rx literal  ";"
    add $I11, rx42_pos, 1
    gt $I11, rx42_eos, rx42_fail
    sub $I11, rx42_pos, rx42_off
    substr $S10, rx42_tgt, $I11, 1
    ne $S10, ";", rx42_fail
    add rx42_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx42_cur."!cursor_pos"(rx42_pos)
    $P10 = rx42_cur."ws"()
    unless $P10, rx42_fail
    rx42_pos = $P10."pos"()
  # rx pass
    rx42_cur."!cursor_pass"(rx42_pos, "grammar_stmt")
    rx42_cur."!cursor_debug"("PASS  ", "grammar_stmt", " at pos=", rx42_pos)
    .return (rx42_cur)
  rx42_fail:
    (rx42_rep, rx42_pos, $I10, $P10) = rx42_cur."!mark_fail"(0)
    lt rx42_pos, -1, rx42_done
    eq rx42_pos, -1, rx42_fail
    jump $I10
  rx42_done:
    rx42_cur."!cursor_fail"()
    rx42_cur."!cursor_debug"("FAIL  ", "grammar_stmt")
    .return (rx42_cur)
    .return ()
.end


.namespace ["Regex";"P6Grammar";"Grammar"]
.sub "!PREFIX__grammar_stmt"  :subid("18_1256744997.6976") :method
.annotate "line", 17
    new $P44, "ResizablePMCArray"
    push $P44, ""
    .return ($P44)
.end


.namespace ["Regex";"P6Grammar";"Grammar"]
.sub "regex_stmt"  :subid("19_1256744997.6976") :method :outer("10_1256744997.6976")
.annotate "line", 19
    .local string rx56_tgt
    .local int rx56_pos
    .local int rx56_off
    .local int rx56_eos
    .local int rx56_rep
    .local pmc rx56_cur
    (rx56_cur, rx56_pos, rx56_tgt, $I10) = self."!cursor_start"()
    rx56_cur."!cursor_debug"("START ", "regex_stmt")
    .lex unicode:"$\x{a2}", rx56_cur
    length rx56_eos, rx56_tgt
    set rx56_off, 0
    lt $I10, 2, rx56_start
    sub rx56_off, $I10, 1
    substr rx56_tgt, rx56_tgt, rx56_off
  rx56_start:
  # rx subrule "ws" subtype=method negate=
    rx56_cur."!cursor_pos"(rx56_pos)
    $P10 = rx56_cur."ws"()
    unless $P10, rx56_fail
    rx56_pos = $P10."pos"()
  alt60_0:
.annotate "line", 20
    set_addr $I10, alt60_1
    rx56_cur."!mark_push"(0, rx56_pos, $I10)
.annotate "line", 21
  # rx subrule "ws" subtype=method negate=
    rx56_cur."!cursor_pos"(rx56_pos)
    $P10 = rx56_cur."ws"()
    unless $P10, rx56_fail
    rx56_pos = $P10."pos"()
  # rx subcapture "proto"
    set_addr $I10, rxcap_62_fail
    rx56_cur."!mark_push"(0, rx56_pos, $I10)
  # rx literal  "proto"
    add $I11, rx56_pos, 5
    gt $I11, rx56_eos, rx56_fail
    sub $I11, rx56_pos, rx56_off
    substr $S10, rx56_tgt, $I11, 5
    ne $S10, "proto", rx56_fail
    add rx56_pos, 5
    set_addr $I10, rxcap_62_fail
    ($I12, $I11) = rx56_cur."!mark_peek"($I10)
    rx56_cur."!cursor_pos"($I11)
    ($P10) = rx56_cur."!cursor_start"()
    $P10."!cursor_pass"(rx56_pos, "")
    rx56_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("proto")
    goto rxcap_62_done
  rxcap_62_fail:
    goto rx56_fail
  rxcap_62_done:
  # rx subrule "ws" subtype=method negate=
    rx56_cur."!cursor_pos"(rx56_pos)
    $P10 = rx56_cur."ws"()
    unless $P10, rx56_fail
    rx56_pos = $P10."pos"()
  alt64_0:
    set_addr $I10, alt64_1
    rx56_cur."!mark_push"(0, rx56_pos, $I10)
  # rx literal  "regex"
    add $I11, rx56_pos, 5
    gt $I11, rx56_eos, rx56_fail
    sub $I11, rx56_pos, rx56_off
    substr $S10, rx56_tgt, $I11, 5
    ne $S10, "regex", rx56_fail
    add rx56_pos, 5
    goto alt64_end
  alt64_1:
    set_addr $I10, alt64_2
    rx56_cur."!mark_push"(0, rx56_pos, $I10)
  # rx literal  "token"
    add $I11, rx56_pos, 5
    gt $I11, rx56_eos, rx56_fail
    sub $I11, rx56_pos, rx56_off
    substr $S10, rx56_tgt, $I11, 5
    ne $S10, "token", rx56_fail
    add rx56_pos, 5
    goto alt64_end
  alt64_2:
  # rx literal  "rule"
    add $I11, rx56_pos, 4
    gt $I11, rx56_eos, rx56_fail
    sub $I11, rx56_pos, rx56_off
    substr $S10, rx56_tgt, $I11, 4
    ne $S10, "rule", rx56_fail
    add rx56_pos, 4
  alt64_end:
  # rx subrule "ws" subtype=method negate=
    rx56_cur."!cursor_pos"(rx56_pos)
    $P10 = rx56_cur."ws"()
    unless $P10, rx56_fail
    rx56_pos = $P10."pos"()
  # rx subrule "longname" subtype=capture negate=
    rx56_cur."!cursor_pos"(rx56_pos)
    $P10 = rx56_cur."longname"()
    unless $P10, rx56_fail
    rx56_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("longname")
    rx56_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx56_cur."!cursor_pos"(rx56_pos)
    $P10 = rx56_cur."ws"()
    unless $P10, rx56_fail
    rx56_pos = $P10."pos"()
  # rx literal  "{"
    add $I11, rx56_pos, 1
    gt $I11, rx56_eos, rx56_fail
    sub $I11, rx56_pos, rx56_off
    substr $S10, rx56_tgt, $I11, 1
    ne $S10, "{", rx56_fail
    add rx56_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx56_cur."!cursor_pos"(rx56_pos)
    $P10 = rx56_cur."ws"()
    unless $P10, rx56_fail
    rx56_pos = $P10."pos"()
  # rx literal  "<...>"
    add $I11, rx56_pos, 5
    gt $I11, rx56_eos, rx56_fail
    sub $I11, rx56_pos, rx56_off
    substr $S10, rx56_tgt, $I11, 5
    ne $S10, "<...>", rx56_fail
    add rx56_pos, 5
  # rx subrule "ws" subtype=method negate=
    rx56_cur."!cursor_pos"(rx56_pos)
    $P10 = rx56_cur."ws"()
    unless $P10, rx56_fail
    rx56_pos = $P10."pos"()
  # rx literal  "}"
    add $I11, rx56_pos, 1
    gt $I11, rx56_eos, rx56_fail
    sub $I11, rx56_pos, rx56_off
    substr $S10, rx56_tgt, $I11, 1
    ne $S10, "}", rx56_fail
    add rx56_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx56_cur."!cursor_pos"(rx56_pos)
    $P10 = rx56_cur."ws"()
    unless $P10, rx56_fail
    rx56_pos = $P10."pos"()
    goto alt60_end
  alt60_1:
.annotate "line", 22
  # rx subrule "ws" subtype=method negate=
    rx56_cur."!cursor_pos"(rx56_pos)
    $P10 = rx56_cur."ws"()
    unless $P10, rx56_fail
    rx56_pos = $P10."pos"()
  # rx subcapture "sym"
    set_addr $I10, rxcap_72_fail
    rx56_cur."!mark_push"(0, rx56_pos, $I10)
  alt71_0:
    set_addr $I10, alt71_1
    rx56_cur."!mark_push"(0, rx56_pos, $I10)
  # rx literal  "regex"
    add $I11, rx56_pos, 5
    gt $I11, rx56_eos, rx56_fail
    sub $I11, rx56_pos, rx56_off
    substr $S10, rx56_tgt, $I11, 5
    ne $S10, "regex", rx56_fail
    add rx56_pos, 5
    goto alt71_end
  alt71_1:
    set_addr $I10, alt71_2
    rx56_cur."!mark_push"(0, rx56_pos, $I10)
  # rx literal  "token"
    add $I11, rx56_pos, 5
    gt $I11, rx56_eos, rx56_fail
    sub $I11, rx56_pos, rx56_off
    substr $S10, rx56_tgt, $I11, 5
    ne $S10, "token", rx56_fail
    add rx56_pos, 5
    goto alt71_end
  alt71_2:
  # rx literal  "rule"
    add $I11, rx56_pos, 4
    gt $I11, rx56_eos, rx56_fail
    sub $I11, rx56_pos, rx56_off
    substr $S10, rx56_tgt, $I11, 4
    ne $S10, "rule", rx56_fail
    add rx56_pos, 4
  alt71_end:
    set_addr $I10, rxcap_72_fail
    ($I12, $I11) = rx56_cur."!mark_peek"($I10)
    rx56_cur."!cursor_pos"($I11)
    ($P10) = rx56_cur."!cursor_start"()
    $P10."!cursor_pass"(rx56_pos, "")
    rx56_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_72_done
  rxcap_72_fail:
    goto rx56_fail
  rxcap_72_done:
  # rx subrule "ws" subtype=method negate=
    rx56_cur."!cursor_pos"(rx56_pos)
    $P10 = rx56_cur."ws"()
    unless $P10, rx56_fail
    rx56_pos = $P10."pos"()
.annotate "line", 23
  # rx subrule "longname" subtype=capture negate=
    rx56_cur."!cursor_pos"(rx56_pos)
    $P10 = rx56_cur."longname"()
    unless $P10, rx56_fail
    rx56_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("longname")
    rx56_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx56_cur."!cursor_pos"(rx56_pos)
    $P10 = rx56_cur."ws"()
    unless $P10, rx56_fail
    rx56_pos = $P10."pos"()
.annotate "line", 24
  # rx reduce name="regex_stmt" key="open"
    rx56_cur."!cursor_pos"(rx56_pos)
    rx56_cur."!reduce"("regex_stmt", "open")
  # rx subrule "ws" subtype=method negate=
    rx56_cur."!cursor_pos"(rx56_pos)
    $P10 = rx56_cur."ws"()
    unless $P10, rx56_fail
    rx56_pos = $P10."pos"()
.annotate "line", 25
  # rx literal  "{"
    add $I11, rx56_pos, 1
    gt $I11, rx56_eos, rx56_fail
    sub $I11, rx56_pos, rx56_off
    substr $S10, rx56_tgt, $I11, 1
    ne $S10, "{", rx56_fail
    add rx56_pos, 1
  # rx subrule "nibbler" subtype=capture negate=
    rx56_cur."!cursor_pos"(rx56_pos)
    $P10 = rx56_cur."nibbler"()
    unless $P10, rx56_fail
    rx56_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx56_pos = $P10."pos"()
  # rx literal  "}"
    add $I11, rx56_pos, 1
    gt $I11, rx56_eos, rx56_fail
    sub $I11, rx56_pos, rx56_off
    substr $S10, rx56_tgt, $I11, 1
    ne $S10, "}", rx56_fail
    add rx56_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx56_cur."!cursor_pos"(rx56_pos)
    $P10 = rx56_cur."ws"()
    unless $P10, rx56_fail
    rx56_pos = $P10."pos"()
  alt60_end:
.annotate "line", 26
  # rx subrule "ws" subtype=method negate=
    rx56_cur."!cursor_pos"(rx56_pos)
    $P10 = rx56_cur."ws"()
    unless $P10, rx56_fail
    rx56_pos = $P10."pos"()
.annotate "line", 19
  # rx pass
    rx56_cur."!cursor_pass"(rx56_pos, "regex_stmt")
    rx56_cur."!cursor_debug"("PASS  ", "regex_stmt", " at pos=", rx56_pos)
    .return (rx56_cur)
  rx56_fail:
    (rx56_rep, rx56_pos, $I10, $P10) = rx56_cur."!mark_fail"(0)
    lt rx56_pos, -1, rx56_done
    eq rx56_pos, -1, rx56_fail
    jump $I10
  rx56_done:
    rx56_cur."!cursor_fail"()
    rx56_cur."!cursor_debug"("FAIL  ", "regex_stmt")
    .return (rx56_cur)
    .return ()
.end


.namespace ["Regex";"P6Grammar";"Grammar"]
.sub "!PREFIX__regex_stmt"  :subid("20_1256744997.6976") :method
.annotate "line", 19
    new $P58, "ResizablePMCArray"
    push $P58, ""
    .return ($P58)
.end

### .include 'gen/p6grammar-actions.pir'

.namespace []
.sub "_block11"  :anon :subid("10_1256744998.58715")
.annotate "line", 3
    get_hll_global $P14, ["Regex";"P6Grammar";"Actions"], "_block13" 
.annotate "line", 1
    .return ($P14)
.end


.namespace ["Regex";"P6Grammar";"Actions"]
.sub "_block13" :init :load :subid("11_1256744998.58715")
.annotate "line", 3
    .const 'Sub' $P108 = "17_1256744998.58715" 
    capture_lex $P108
    .const 'Sub' $P69 = "16_1256744998.58715" 
    capture_lex $P69
    .const 'Sub' $P44 = "14_1256744998.58715" 
    capture_lex $P44
    .const 'Sub' $P16 = "12_1256744998.58715" 
    capture_lex $P16
$P15 = get_root_global ["parrot"], "P6metaclass"
    $P15."new_class"("Regex::P6Grammar::Actions", "Regex::P6Regex::Actions" :named("parent"))
.annotate "line", 35
    .const 'Sub' $P108 = "17_1256744998.58715" 
    capture_lex $P108
.annotate "line", 3
    .return ($P108)
.end


.namespace ["Regex";"P6Grammar";"Actions"]
.sub "TOP"  :subid("12_1256744998.58715") :method :outer("11_1256744998.58715")
    .param pmc param_19
.annotate "line", 3
    .const 'Sub' $P29 = "13_1256744998.58715" 
    capture_lex $P29
    new $P18, 'ExceptionHandler'
    set_addr $P18, control_17
    $P18."handle_types"(58)
    push_eh $P18
    .lex "self", self
    .lex "$/", param_19
.annotate "line", 4
    find_lex $P20, "$/"
    set $P21, $P20["grammar_stmt"]
    unless_null $P21, vivify_23
    new $P21, "Undef"
  vivify_23:
    $P22 = $P21."ast"()
    .lex "$past", $P22
.annotate "line", 5
    find_lex $P24, "$/"
    set $P25, $P24["regex_stmt"]
    unless_null $P25, vivify_24
    new $P25, "Undef"
  vivify_24:
    defined $I26, $P25
    unless $I26, for_undef_25
    iter $P23, $P25
    new $P36, 'ExceptionHandler'
    set_addr $P36, loop35_handler
    $P36."handle_types"(65, 67, 66)
    push_eh $P36
  loop35_test:
    unless $P23, loop35_done
    shift $P27, $P23
  loop35_redo:
    .const 'Sub' $P29 = "13_1256744998.58715" 
    capture_lex $P29
    $P29($P27)
  loop35_next:
    goto loop35_test
  loop35_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P37, exception, 'type'
    eq $P37, 65, loop35_next
    eq $P37, 67, loop35_redo
  loop35_done:
    pop_eh 
  for_undef_25:
.annotate "line", 8
    find_lex $P38, "$past"
    unless_null $P38, vivify_28
    new $P38, "Undef"
  vivify_28:
    find_lex $P39, "$/"
    unless_null $P39, vivify_29
    new $P39, "Undef"
  vivify_29:
    $P38."node"($P39)
    find_lex $P40, "$/"
.annotate "line", 9
    find_lex $P41, "$past"
    unless_null $P41, vivify_30
    new $P41, "Undef"
  vivify_30:
    $P42 = $P40."!make"($P41)
.annotate "line", 3
    .return ($P42)
  control_17:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P43, exception, "payload"
    .return ($P43)
    rethrow exception
.end


.namespace ["Regex";"P6Grammar";"Actions"]
.sub "_block28"  :anon :subid("13_1256744998.58715") :outer("12_1256744998.58715")
    .param pmc param_30
.annotate "line", 5
    .lex "$_", param_30
.annotate "line", 6
    find_lex $P31, "$past"
    unless_null $P31, vivify_26
    new $P31, "Undef"
  vivify_26:
    find_lex $P32, "$_"
    unless_null $P32, vivify_27
    new $P32, "Undef"
  vivify_27:
    $P33 = $P32."ast"()
    $P34 = $P31."push"($P33)
.annotate "line", 5
    .return ($P34)
.end


.namespace ["Regex";"P6Grammar";"Actions"]
.sub "longname"  :subid("14_1256744998.58715") :method :outer("11_1256744998.58715")
    .param pmc param_47
.annotate "line", 13
    .const 'Sub' $P53 = "15_1256744998.58715" 
    capture_lex $P53
    new $P46, 'ExceptionHandler'
    set_addr $P46, control_45
    $P46."handle_types"(58)
    push_eh $P46
    .lex "self", self
    .lex "$/", param_47
.annotate "line", 14
    find_lex $P50, "$/"
    set $P51, $P50["sym"]
    unless_null $P51, vivify_31
    new $P51, "Undef"
  vivify_31:
    if $P51, if_49
    set $P48, $P51
    goto if_49_end
  if_49:
    .const 'Sub' $P53 = "15_1256744998.58715" 
    capture_lex $P53
    $P67 = $P53()
    set $P48, $P67
  if_49_end:
.annotate "line", 13
    .return ($P48)
  control_45:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P68, exception, "payload"
    .return ($P68)
    rethrow exception
.end


.namespace ["Regex";"P6Grammar";"Actions"]
.sub "_block52"  :anon :subid("15_1256744998.58715") :outer("14_1256744998.58715")
.annotate "line", 14
    find_lex $P54, "$/"
    find_lex $P55, "$/"
    set $P56, $P55["ident"]
    unless_null $P56, vivify_32
    new $P56, "Undef"
  vivify_32:
    set $S57, $P56
    new $P58, 'String'
    set $P58, $S57
    concat $P59, $P58, ":sym<"
    find_lex $P60, "$/"
    set $P61, $P60["sym"]
    unless_null $P61, vivify_33
    new $P61, "ResizablePMCArray"
  vivify_33:
    set $P62, $P61[0]
    unless_null $P62, vivify_34
    new $P62, "Undef"
  vivify_34:
    set $S63, $P62
    concat $P64, $P59, $S63
    concat $P65, $P64, ">"
    $P66 = $P54."!make"($P65)
    .return ($P66)
.end


.namespace ["Regex";"P6Grammar";"Actions"]
.sub "grammar_stmt"  :subid("16_1256744998.58715") :method :outer("11_1256744998.58715")
    .param pmc param_72
.annotate "line", 18
    new $P71, 'ExceptionHandler'
    set_addr $P71, control_70
    $P71."handle_types"(58)
    push_eh $P71
    .lex "self", self
    .lex "$/", param_72
.annotate "line", 19
    get_hll_global $P73, ["Regex";"P6Grammar"], "Compiler"
    find_lex $P74, "$/"
    set $P75, $P74["name"]
    unless_null $P75, vivify_35
    new $P75, "Undef"
  vivify_35:
    set $S76, $P75
    $P77 = $P73."parse_name"($S76)
    .lex "@ns", $P77
.annotate "line", 20
    get_hll_global $P78, ["PAST"], "Block"
    find_lex $P79, "@ns"
    unless_null $P79, vivify_36
    new $P79, "ResizablePMCArray"
  vivify_36:
    find_lex $P80, "$/"
    unless_null $P80, vivify_37
    new $P80, "Undef"
  vivify_37:
    $P81 = $P78."new"($P79 :named("namespace"), $P80 :named("node"))
    .lex "$past", $P81
.annotate "line", 21
    find_lex $P84, "$/"
    set $P85, $P84["base"]
    unless_null $P85, vivify_38
    new $P85, "Undef"
  vivify_38:
    if $P85, if_83
    new $P90, "String"
    assign $P90, "Regex::Cursor"
    set $P82, $P90
    goto if_83_end
  if_83:
    find_lex $P86, "$/"
    set $P87, $P86["base"]
    unless_null $P87, vivify_39
    new $P87, "ResizablePMCArray"
  vivify_39:
    set $P88, $P87[0]
    unless_null $P88, vivify_40
    new $P88, "Undef"
  vivify_40:
    set $S89, $P88
    new $P82, 'String'
    set $P82, $S89
  if_83_end:
    .lex "$parent", $P82
.annotate "line", 23
    get_hll_global $P91, ["PAST"], "Op"
.annotate "line", 24
    get_hll_global $P92, ["PAST"], "Var"
.annotate "line", 25
    $P93 = $P92."new"("P6metaclass" :named("name"), "package" :named("scope"), "" :named("namespace"))
.annotate "line", 26
    find_lex $P94, "$/"
    set $P95, $P94["name"]
    unless_null $P95, vivify_41
    new $P95, "Undef"
  vivify_41:
    set $S96, $P95
.annotate "line", 27
    get_hll_global $P97, ["PAST"], "Val"
    find_lex $P98, "$parent"
    unless_null $P98, vivify_42
    new $P98, "Undef"
  vivify_42:
    $P99 = $P97."new"($P98 :named("value"), "parent" :named("named"))
.annotate "line", 28
    find_lex $P100, "$/"
    unless_null $P100, vivify_43
    new $P100, "Undef"
  vivify_43:
    $P101 = $P91."new"($P93, $S96, $P99, "callmethod" :named("pasttype"), "new_class" :named("name"), $P100 :named("node"))
.annotate "line", 23
    .lex "$init", $P101
.annotate "line", 30
    find_lex $P102, "$past"
    unless_null $P102, vivify_44
    new $P102, "Undef"
  vivify_44:
    find_lex $P103, "$init"
    unless_null $P103, vivify_45
    new $P103, "Undef"
  vivify_45:
    $P102."loadinit"($P103)
    find_lex $P104, "$/"
.annotate "line", 31
    find_lex $P105, "$past"
    unless_null $P105, vivify_46
    new $P105, "Undef"
  vivify_46:
    $P106 = $P104."!make"($P105)
.annotate "line", 18
    .return ($P106)
  control_70:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P107, exception, "payload"
    .return ($P107)
    rethrow exception
.end


.namespace ["Regex";"P6Grammar";"Actions"]
.sub "regex_stmt"  :subid("17_1256744998.58715") :method :outer("11_1256744998.58715")
    .param pmc param_111
    .param pmc param_112 :optional
    .param int has_param_112 :opt_flag
.annotate "line", 35
    .const 'Sub' $P180 = "22_1256744998.58715" 
    capture_lex $P180
    .const 'Sub' $P156 = "21_1256744998.58715" 
    capture_lex $P156
    .const 'Sub' $P125 = "18_1256744998.58715" 
    capture_lex $P125
    new $P110, 'ExceptionHandler'
    set_addr $P110, control_109
    $P110."handle_types"(58)
    push_eh $P110
    .lex "self", self
    .lex "$/", param_111
    if has_param_112, optparam_47
    new $P113, "Undef"
    set param_112, $P113
  optparam_47:
    .lex "$key", param_112
.annotate "line", 36
 
        $P114 = get_hll_global ['Regex';'P6Regex';'Actions'], '@MODIFIERS'
    
    .lex "@MODIFIERS", $P114
.annotate "line", 39
    find_lex $P115, "$/"
    set $P116, $P115["longname"]
    unless_null $P116, vivify_48
    new $P116, "Undef"
  vivify_48:
    $P117 = $P116."ast"()
    set $S118, $P117
    new $P119, 'String'
    set $P119, $S118
    .lex "$name", $P119
.annotate "line", 40
    find_lex $P121, "$key"
    unless_null $P121, vivify_49
    new $P121, "Undef"
  vivify_49:
    set $S122, $P121
    iseq $I123, $S122, "open"
    unless $I123, if_120_end
    .const 'Sub' $P125 = "18_1256744998.58715" 
    capture_lex $P125
    $P125()
  if_120_end:
.annotate "line", 51
    new $P151, "Undef"
    .lex "$past", $P151
.annotate "line", 52
    find_lex $P153, "$/"
    set $P154, $P153["proto"]
    unless_null $P154, vivify_57
    new $P154, "Undef"
  vivify_57:
    if $P154, if_152
.annotate "line", 79
    .const 'Sub' $P180 = "22_1256744998.58715" 
    capture_lex $P180
    $P180()
    goto if_152_end
  if_152:
.annotate "line", 52
    .const 'Sub' $P156 = "21_1256744998.58715" 
    capture_lex $P156
    $P156()
  if_152_end:
    find_lex $P202, "$/"
.annotate "line", 93
    find_lex $P203, "$past"
    unless_null $P203, vivify_73
    new $P203, "Undef"
  vivify_73:
    $P204 = $P202."!make"($P203)
.annotate "line", 35
    .return ($P204)
  control_109:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P205, exception, "payload"
    .return ($P205)
    rethrow exception
.end


.namespace ["Regex";"P6Grammar";"Actions"]
.sub "_block124"  :anon :subid("18_1256744998.58715") :outer("17_1256744998.58715")
.annotate "line", 40
    .const 'Sub' $P142 = "20_1256744998.58715" 
    capture_lex $P142
    .const 'Sub' $P133 = "19_1256744998.58715" 
    capture_lex $P133
.annotate "line", 41
    new $P126, "Hash"
    .lex "%h", $P126
.annotate "line", 42
    find_lex $P128, "$/"
    set $P129, $P128["sym"]
    unless_null $P129, vivify_50
    new $P129, "Undef"
  vivify_50:
    set $S130, $P129
    iseq $I131, $S130, "token"
    unless $I131, if_127_end
    .const 'Sub' $P133 = "19_1256744998.58715" 
    capture_lex $P133
    $P133()
  if_127_end:
.annotate "line", 43
    find_lex $P137, "$/"
    set $P138, $P137["sym"]
    unless_null $P138, vivify_52
    new $P138, "Undef"
  vivify_52:
    set $S139, $P138
    iseq $I140, $S139, "rule"
    unless $I140, if_136_end
    .const 'Sub' $P142 = "20_1256744998.58715" 
    capture_lex $P142
    $P142()
  if_136_end:
.annotate "line", 44
    find_lex $P147, "@MODIFIERS"
    unless_null $P147, vivify_55
    new $P147, "ResizablePMCArray"
  vivify_55:
    find_lex $P148, "%h"
    unless_null $P148, vivify_56
    new $P148, "Hash"
  vivify_56:
    $P147."unshift"($P148)
.annotate "line", 45
 
            $P0 = find_lex '$name'
            set_hll_global ['Regex';'P6Regex';'Actions'], '$REGEXNAME', $P0
        
.annotate "line", 49
    new $P149, "Exception"
    set $P149['type'], 58
    new $P150, "Integer"
    assign $P150, 0
    setattribute $P149, 'payload', $P150
    throw $P149
.annotate "line", 40
    .return ()
.end


.namespace ["Regex";"P6Grammar";"Actions"]
.sub "_block132"  :anon :subid("19_1256744998.58715") :outer("18_1256744998.58715")
.annotate "line", 42
    new $P134, "Integer"
    assign $P134, 1
    find_lex $P135, "%h"
    unless_null $P135, vivify_51
    new $P135, "Hash"
    store_lex "%h", $P135
  vivify_51:
    set $P135["r"], $P134
    .return ($P134)
.end


.namespace ["Regex";"P6Grammar";"Actions"]
.sub "_block141"  :anon :subid("20_1256744998.58715") :outer("18_1256744998.58715")
.annotate "line", 43
    new $P143, "Integer"
    assign $P143, 1
    find_lex $P144, "%h"
    unless_null $P144, vivify_53
    new $P144, "Hash"
    store_lex "%h", $P144
  vivify_53:
    set $P144["r"], $P143
    new $P145, "Integer"
    assign $P145, 1
    find_lex $P146, "%h"
    unless_null $P146, vivify_54
    new $P146, "Hash"
    store_lex "%h", $P146
  vivify_54:
    set $P146["s"], $P145
    .return ($P145)
.end


.namespace ["Regex";"P6Grammar";"Actions"]
.sub "_block179"  :anon :subid("22_1256744998.58715") :outer("17_1256744998.58715")
.annotate "line", 80
    find_lex $P181, "$/"
    set $P182, $P181["nibbler"]
    unless_null $P182, vivify_58
    new $P182, "Undef"
  vivify_58:
    $P183 = $P182."ast"()
    .lex "$rpast", $P183
.annotate "line", 81
    get_hll_global $P184, ["Regex";"P6Regex";"Actions"], "capnames"
    find_lex $P185, "$rpast"
    unless_null $P185, vivify_59
    new $P185, "Undef"
  vivify_59:
    $P186 = $P184($P185, 0)
    .lex "%capnames", $P186
.annotate "line", 82
    new $P187, "Integer"
    assign $P187, 0
    find_lex $P188, "%capnames"
    unless_null $P188, vivify_60
    new $P188, "Hash"
    store_lex "%capnames", $P188
  vivify_60:
    set $P188[""], $P187
.annotate "line", 83
    get_hll_global $P189, ["PAST"], "Regex"
.annotate "line", 84
    find_lex $P190, "$rpast"
    unless_null $P190, vivify_61
    new $P190, "Undef"
  vivify_61:
.annotate "line", 85
    get_hll_global $P191, ["PAST"], "Regex"
    $P192 = $P191."new"("pass" :named("pasttype"))
.annotate "line", 87
    find_lex $P193, "%capnames"
    unless_null $P193, vivify_62
    new $P193, "Hash"
  vivify_62:
    $P194 = $P189."new"($P190, $P192, "concat" :named("pasttype"), $P193 :named("capnames"))
.annotate "line", 83
    store_lex "$rpast", $P194
.annotate "line", 89
    get_hll_global $P195, ["PAST"], "Block"
    find_lex $P196, "$rpast"
    unless_null $P196, vivify_63
    new $P196, "Undef"
  vivify_63:
    find_lex $P197, "$name"
    unless_null $P197, vivify_64
    new $P197, "Undef"
  vivify_64:
.annotate "line", 90
    find_lex $P198, "$/"
    unless_null $P198, vivify_65
    new $P198, "Undef"
  vivify_65:
    $P199 = $P195."new"($P196, $P197 :named("name"), "method" :named("blocktype"), $P198 :named("node"))
.annotate "line", 89
    store_lex "$past", $P199
.annotate "line", 91
    find_lex $P200, "@MODIFIERS"
    unless_null $P200, vivify_66
    new $P200, "ResizablePMCArray"
  vivify_66:
    $P201 = $P200."shift"()
.annotate "line", 79
    .return ($P201)
.end


.namespace ["Regex";"P6Grammar";"Actions"]
.sub "_block155"  :anon :subid("21_1256744998.58715") :outer("17_1256744998.58715")
.annotate "line", 54
    get_hll_global $P157, ["PAST"], "Stmts"
.annotate "line", 55
    get_hll_global $P158, ["PAST"], "Block"
    find_lex $P159, "$name"
    unless_null $P159, vivify_67
    new $P159, "Undef"
  vivify_67:
.annotate "line", 56
    get_hll_global $P160, ["PAST"], "Op"
.annotate "line", 57
    get_hll_global $P161, ["PAST"], "Var"
    $P162 = $P161."new"("self" :named("name"), "register" :named("scope"))
.annotate "line", 58
    find_lex $P163, "$name"
    unless_null $P163, vivify_68
    new $P163, "Undef"
  vivify_68:
.annotate "line", 60
    $P164 = $P160."new"($P162, $P163, "!protoregex" :named("name"), "callmethod" :named("pasttype"))
.annotate "line", 64
    find_lex $P165, "$/"
    unless_null $P165, vivify_69
    new $P165, "Undef"
  vivify_69:
    $P166 = $P158."new"($P164, $P159 :named("name"), "method" :named("blocktype"), 0 :named("lexical"), $P165 :named("node"))
.annotate "line", 66
    get_hll_global $P167, ["PAST"], "Block"
    new $P168, "String"
    assign $P168, "!PREFIX__"
    find_lex $P169, "$name"
    unless_null $P169, vivify_70
    new $P169, "Undef"
  vivify_70:
    concat $P170, $P168, $P169
.annotate "line", 67
    get_hll_global $P171, ["PAST"], "Op"
.annotate "line", 68
    get_hll_global $P172, ["PAST"], "Var"
    $P173 = $P172."new"("self" :named("name"), "register" :named("scope"))
.annotate "line", 69
    find_lex $P174, "$name"
    unless_null $P174, vivify_71
    new $P174, "Undef"
  vivify_71:
.annotate "line", 71
    $P175 = $P171."new"($P173, $P174, "!PREFIX__!protoregex" :named("name"), "callmethod" :named("pasttype"))
.annotate "line", 75
    find_lex $P176, "$/"
    unless_null $P176, vivify_72
    new $P176, "Undef"
  vivify_72:
    $P177 = $P167."new"($P175, $P170 :named("name"), "method" :named("blocktype"), 0 :named("lexical"), $P176 :named("node"))
.annotate "line", 66
    $P178 = $P157."new"($P166, $P177)
.annotate "line", 54
    store_lex "$past", $P178
.annotate "line", 52
    .return ($P178)
.end


.namespace ['Regex';'P6Grammar';'Compiler']

.sub '' :anon :load :init
    .local pmc p6meta, p6grammar
    p6meta = get_hll_global 'P6metaclass'
    p6grammar = p6meta.'new_class'('Regex::P6Grammar::Compiler', 'parent'=>'HLL::Compiler')
    p6grammar.'language'('Regex::P6Grammar')
    $P0 = get_hll_global ['Regex';'P6Grammar'], 'Grammar'
    p6grammar.'parsegrammar'($P0)
    $P0 = get_hll_global ['Regex';'P6Grammar'], 'Actions'
    p6grammar.'parseactions'($P0)
.end

.sub 'main' :main
    .param pmc args_str

    $P0 = compreg 'Regex::P6Grammar'
    $P1 = $P0.'command_line'(args_str, 'encoding'=>'utf8', 'transcode'=>'ascii iso-8859-1')
    exit 0
.end


=cut

# Local Variables:
#   mode: pir
#   fill-column: 100
# End:
# vim: expandtab shiftwidth=4 ft=pir:
