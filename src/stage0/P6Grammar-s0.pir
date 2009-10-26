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
.sub "_block11"  :subid("10_1256575584.96964")
.annotate "line", 0
    .const 'Sub' $P50 = "19_1256575584.96964" 
    capture_lex $P50
    .const 'Sub' $P36 = "17_1256575584.96964" 
    capture_lex $P36
    .const 'Sub' $P27 = "15_1256575584.96964" 
    capture_lex $P27
    .const 'Sub' $P21 = "13_1256575584.96964" 
    capture_lex $P21
    .const 'Sub' $P13 = "11_1256575584.96964" 
    capture_lex $P13
.annotate "line", 19
    .const 'Sub' $P50 = "19_1256575584.96964" 
    capture_lex $P50
.annotate "line", 1
    .return ($P50)
.end


.namespace ["Regex";"P6Grammar";"Grammar"]
.sub "" :load :init :subid("post21") :outer("10_1256575584.96964")
.annotate "line", 0
    get_hll_global $P12, ["Regex";"P6Grammar";"Grammar"], "_block11" 
    .local pmc block
    set block, $P12
.annotate "line", 1
    get_hll_global $P73, "P6metaclass"
    $P73."new_class"("Regex::P6Grammar::Grammar", "Regex::P6Regex::Grammar" :named("parent"))
.end


.namespace ["Regex";"P6Grammar";"Grammar"]
.sub "TOP"  :subid("11_1256575584.96964") :method :outer("10_1256575584.96964")
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
.sub "!PREFIX__TOP"  :subid("12_1256575584.96964") :method
.annotate "line", 3
    $P16 = self."!PREFIX__!subrule"("grammar_stmt", "")
    new $P17, "ResizablePMCArray"
    push $P17, $P16
    .return ($P17)
.end


.namespace ["Regex";"P6Grammar";"Grammar"]
.sub "name"  :subid("13_1256575584.96964") :method :outer("10_1256575584.96964")
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
.sub "!PREFIX__name"  :subid("14_1256575584.96964") :method
.annotate "line", 9
    new $P24, "ResizablePMCArray"
    push $P24, ""
    .return ($P24)
.end


.namespace ["Regex";"P6Grammar";"Grammar"]
.sub "longname"  :subid("15_1256575584.96964") :method :outer("10_1256575584.96964")
.annotate "line", 11
    .local string rx28_tgt
    .local int rx28_pos
    .local int rx28_off
    .local int rx28_eos
    .local int rx28_rep
    .local pmc rx28_cur
    (rx28_cur, rx28_pos, rx28_tgt, $I10) = self."!cursor_start"()
    rx28_cur."!cursor_debug"("START ", "longname")
    .lex unicode:"$\x{a2}", rx28_cur
    length rx28_eos, rx28_tgt
    set rx28_off, 0
    lt $I10, 2, rx28_start
    sub rx28_off, $I10, 1
    substr rx28_tgt, rx28_tgt, rx28_off
  rx28_start:
.annotate "line", 13
  # rx subrule "ident" subtype=method negate=
    rx28_cur."!cursor_pos"(rx28_pos)
    $P10 = rx28_cur."ident"()
    unless $P10, rx28_fail
    rx28_pos = $P10."pos"()
  # rx rxquantr32 ** 0..1
    set_addr $I35, rxquantr32_done
    rx28_cur."!mark_push"(0, rx28_pos, $I35)
  rxquantr32_loop:
  # rx literal  ":sym<"
    add $I11, rx28_pos, 5
    gt $I11, rx28_eos, rx28_fail
    sub $I11, rx28_pos, rx28_off
    substr $S10, rx28_tgt, $I11, 5
    ne $S10, ":sym<", rx28_fail
    add rx28_pos, 5
  # rx rxquantr33 ** 0..*
    set_addr $I34, rxquantr33_done
    rx28_cur."!mark_push"(0, rx28_pos, $I34)
  rxquantr33_loop:
  # rx enumcharlist negate=1 
    ge rx28_pos, rx28_eos, rx28_fail
    sub $I10, rx28_pos, rx28_off
    substr $S10, rx28_tgt, $I10, 1
    index $I11, ">", $S10
    ge $I11, 0, rx28_fail
    inc rx28_pos
    (rx28_rep) = rx28_cur."!mark_commit"($I34)
    rx28_cur."!mark_push"(rx28_rep, rx28_pos, $I34)
    goto rxquantr33_loop
  rxquantr33_done:
  # rx literal  ">"
    add $I11, rx28_pos, 1
    gt $I11, rx28_eos, rx28_fail
    sub $I11, rx28_pos, rx28_off
    substr $S10, rx28_tgt, $I11, 1
    ne $S10, ">", rx28_fail
    add rx28_pos, 1
    (rx28_rep) = rx28_cur."!mark_commit"($I35)
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
.sub "!PREFIX__longname"  :subid("16_1256575584.96964") :method
.annotate "line", 11
    $P30 = self."!PREFIX__!subrule"("ident", "")
    new $P31, "ResizablePMCArray"
    push $P31, $P30
    .return ($P31)
.end


.namespace ["Regex";"P6Grammar";"Grammar"]
.sub "grammar_stmt"  :subid("17_1256575584.96964") :method :outer("10_1256575584.96964")
.annotate "line", 17
    .local string rx37_tgt
    .local int rx37_pos
    .local int rx37_off
    .local int rx37_eos
    .local int rx37_rep
    .local pmc rx37_cur
    (rx37_cur, rx37_pos, rx37_tgt, $I10) = self."!cursor_start"()
    rx37_cur."!cursor_debug"("START ", "grammar_stmt")
    rx37_cur."!cursor_caparray"("base")
    .lex unicode:"$\x{a2}", rx37_cur
    length rx37_eos, rx37_tgt
    set rx37_off, 0
    lt $I10, 2, rx37_start
    sub rx37_off, $I10, 1
    substr rx37_tgt, rx37_tgt, rx37_off
  rx37_start:
  # rx subrule "ws" subtype=method negate=
    rx37_cur."!cursor_pos"(rx37_pos)
    $P10 = rx37_cur."ws"()
    unless $P10, rx37_fail
    rx37_pos = $P10."pos"()
  # rx literal  "grammar"
    add $I11, rx37_pos, 7
    gt $I11, rx37_eos, rx37_fail
    sub $I11, rx37_pos, rx37_off
    substr $S10, rx37_tgt, $I11, 7
    ne $S10, "grammar", rx37_fail
    add rx37_pos, 7
  # rx subrule "ws" subtype=method negate=
    rx37_cur."!cursor_pos"(rx37_pos)
    $P10 = rx37_cur."ws"()
    unless $P10, rx37_fail
    rx37_pos = $P10."pos"()
  # rx subrule "name" subtype=capture negate=
    rx37_cur."!cursor_pos"(rx37_pos)
    $P10 = rx37_cur."name"()
    unless $P10, rx37_fail
    rx37_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    rx37_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx37_cur."!cursor_pos"(rx37_pos)
    $P10 = rx37_cur."ws"()
    unless $P10, rx37_fail
    rx37_pos = $P10."pos"()
  # rx rxquantr43 ** 0..1
    set_addr $I47, rxquantr43_done
    rx37_cur."!mark_push"(0, rx37_pos, $I47)
  rxquantr43_loop:
  # rx subrule "ws" subtype=method negate=
    rx37_cur."!cursor_pos"(rx37_pos)
    $P10 = rx37_cur."ws"()
    unless $P10, rx37_fail
    rx37_pos = $P10."pos"()
  # rx literal  "is"
    add $I11, rx37_pos, 2
    gt $I11, rx37_eos, rx37_fail
    sub $I11, rx37_pos, rx37_off
    substr $S10, rx37_tgt, $I11, 2
    ne $S10, "is", rx37_fail
    add rx37_pos, 2
  # rx subrule "ws" subtype=method negate=
    rx37_cur."!cursor_pos"(rx37_pos)
    $P10 = rx37_cur."ws"()
    unless $P10, rx37_fail
    rx37_pos = $P10."pos"()
  # rx subrule "name" subtype=capture negate=
    rx37_cur."!cursor_pos"(rx37_pos)
    $P10 = rx37_cur."name"()
    unless $P10, rx37_fail
    rx37_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("base")
    rx37_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx37_cur."!cursor_pos"(rx37_pos)
    $P10 = rx37_cur."ws"()
    unless $P10, rx37_fail
    rx37_pos = $P10."pos"()
    (rx37_rep) = rx37_cur."!mark_commit"($I47)
  rxquantr43_done:
  # rx subrule "ws" subtype=method negate=
    rx37_cur."!cursor_pos"(rx37_pos)
    $P10 = rx37_cur."ws"()
    unless $P10, rx37_fail
    rx37_pos = $P10."pos"()
  # rx literal  ";"
    add $I11, rx37_pos, 1
    gt $I11, rx37_eos, rx37_fail
    sub $I11, rx37_pos, rx37_off
    substr $S10, rx37_tgt, $I11, 1
    ne $S10, ";", rx37_fail
    add rx37_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx37_cur."!cursor_pos"(rx37_pos)
    $P10 = rx37_cur."ws"()
    unless $P10, rx37_fail
    rx37_pos = $P10."pos"()
  # rx pass
    rx37_cur."!cursor_pass"(rx37_pos, "grammar_stmt")
    rx37_cur."!cursor_debug"("PASS  ", "grammar_stmt", " at pos=", rx37_pos)
    .return (rx37_cur)
  rx37_fail:
    (rx37_rep, rx37_pos, $I10, $P10) = rx37_cur."!mark_fail"(0)
    lt rx37_pos, -1, rx37_done
    eq rx37_pos, -1, rx37_fail
    jump $I10
  rx37_done:
    rx37_cur."!cursor_fail"()
    rx37_cur."!cursor_debug"("FAIL  ", "grammar_stmt")
    .return (rx37_cur)
    .return ()
.end


.namespace ["Regex";"P6Grammar";"Grammar"]
.sub "!PREFIX__grammar_stmt"  :subid("18_1256575584.96964") :method
.annotate "line", 17
    new $P39, "ResizablePMCArray"
    push $P39, ""
    .return ($P39)
.end


.namespace ["Regex";"P6Grammar";"Grammar"]
.sub "regex_stmt"  :subid("19_1256575584.96964") :method :outer("10_1256575584.96964")
.annotate "line", 19
    .local string rx51_tgt
    .local int rx51_pos
    .local int rx51_off
    .local int rx51_eos
    .local int rx51_rep
    .local pmc rx51_cur
    (rx51_cur, rx51_pos, rx51_tgt, $I10) = self."!cursor_start"()
    rx51_cur."!cursor_debug"("START ", "regex_stmt")
    .lex unicode:"$\x{a2}", rx51_cur
    length rx51_eos, rx51_tgt
    set rx51_off, 0
    lt $I10, 2, rx51_start
    sub rx51_off, $I10, 1
    substr rx51_tgt, rx51_tgt, rx51_off
  rx51_start:
  # rx subrule "ws" subtype=method negate=
    rx51_cur."!cursor_pos"(rx51_pos)
    $P10 = rx51_cur."ws"()
    unless $P10, rx51_fail
    rx51_pos = $P10."pos"()
  alt55_0:
.annotate "line", 20
    set_addr $I10, alt55_1
    rx51_cur."!mark_push"(0, rx51_pos, $I10)
.annotate "line", 21
  # rx subrule "ws" subtype=method negate=
    rx51_cur."!cursor_pos"(rx51_pos)
    $P10 = rx51_cur."ws"()
    unless $P10, rx51_fail
    rx51_pos = $P10."pos"()
  # rx subcapture "proto"
    set_addr $I10, rxcap_57_fail
    rx51_cur."!mark_push"(0, rx51_pos, $I10)
  # rx literal  "proto"
    add $I11, rx51_pos, 5
    gt $I11, rx51_eos, rx51_fail
    sub $I11, rx51_pos, rx51_off
    substr $S10, rx51_tgt, $I11, 5
    ne $S10, "proto", rx51_fail
    add rx51_pos, 5
    set_addr $I10, rxcap_57_fail
    ($I12, $I11) = rx51_cur."!mark_peek"($I10)
    rx51_cur."!cursor_pos"($I11)
    ($P10) = rx51_cur."!cursor_start"()
    $P10."!cursor_pass"(rx51_pos, "")
    rx51_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("proto")
    goto rxcap_57_done
  rxcap_57_fail:
    goto rx51_fail
  rxcap_57_done:
  # rx subrule "ws" subtype=method negate=
    rx51_cur."!cursor_pos"(rx51_pos)
    $P10 = rx51_cur."ws"()
    unless $P10, rx51_fail
    rx51_pos = $P10."pos"()
  alt59_0:
    set_addr $I10, alt59_1
    rx51_cur."!mark_push"(0, rx51_pos, $I10)
  # rx literal  "regex"
    add $I11, rx51_pos, 5
    gt $I11, rx51_eos, rx51_fail
    sub $I11, rx51_pos, rx51_off
    substr $S10, rx51_tgt, $I11, 5
    ne $S10, "regex", rx51_fail
    add rx51_pos, 5
    goto alt59_end
  alt59_1:
    set_addr $I10, alt59_2
    rx51_cur."!mark_push"(0, rx51_pos, $I10)
  # rx literal  "token"
    add $I11, rx51_pos, 5
    gt $I11, rx51_eos, rx51_fail
    sub $I11, rx51_pos, rx51_off
    substr $S10, rx51_tgt, $I11, 5
    ne $S10, "token", rx51_fail
    add rx51_pos, 5
    goto alt59_end
  alt59_2:
  # rx literal  "rule"
    add $I11, rx51_pos, 4
    gt $I11, rx51_eos, rx51_fail
    sub $I11, rx51_pos, rx51_off
    substr $S10, rx51_tgt, $I11, 4
    ne $S10, "rule", rx51_fail
    add rx51_pos, 4
  alt59_end:
  # rx subrule "ws" subtype=method negate=
    rx51_cur."!cursor_pos"(rx51_pos)
    $P10 = rx51_cur."ws"()
    unless $P10, rx51_fail
    rx51_pos = $P10."pos"()
  # rx subrule "longname" subtype=capture negate=
    rx51_cur."!cursor_pos"(rx51_pos)
    $P10 = rx51_cur."longname"()
    unless $P10, rx51_fail
    rx51_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("longname")
    rx51_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx51_cur."!cursor_pos"(rx51_pos)
    $P10 = rx51_cur."ws"()
    unless $P10, rx51_fail
    rx51_pos = $P10."pos"()
  # rx literal  "{"
    add $I11, rx51_pos, 1
    gt $I11, rx51_eos, rx51_fail
    sub $I11, rx51_pos, rx51_off
    substr $S10, rx51_tgt, $I11, 1
    ne $S10, "{", rx51_fail
    add rx51_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx51_cur."!cursor_pos"(rx51_pos)
    $P10 = rx51_cur."ws"()
    unless $P10, rx51_fail
    rx51_pos = $P10."pos"()
  # rx literal  "<...>"
    add $I11, rx51_pos, 5
    gt $I11, rx51_eos, rx51_fail
    sub $I11, rx51_pos, rx51_off
    substr $S10, rx51_tgt, $I11, 5
    ne $S10, "<...>", rx51_fail
    add rx51_pos, 5
  # rx subrule "ws" subtype=method negate=
    rx51_cur."!cursor_pos"(rx51_pos)
    $P10 = rx51_cur."ws"()
    unless $P10, rx51_fail
    rx51_pos = $P10."pos"()
  # rx literal  "}"
    add $I11, rx51_pos, 1
    gt $I11, rx51_eos, rx51_fail
    sub $I11, rx51_pos, rx51_off
    substr $S10, rx51_tgt, $I11, 1
    ne $S10, "}", rx51_fail
    add rx51_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx51_cur."!cursor_pos"(rx51_pos)
    $P10 = rx51_cur."ws"()
    unless $P10, rx51_fail
    rx51_pos = $P10."pos"()
    goto alt55_end
  alt55_1:
.annotate "line", 22
  # rx subrule "ws" subtype=method negate=
    rx51_cur."!cursor_pos"(rx51_pos)
    $P10 = rx51_cur."ws"()
    unless $P10, rx51_fail
    rx51_pos = $P10."pos"()
  # rx subcapture "sym"
    set_addr $I10, rxcap_67_fail
    rx51_cur."!mark_push"(0, rx51_pos, $I10)
  alt66_0:
    set_addr $I10, alt66_1
    rx51_cur."!mark_push"(0, rx51_pos, $I10)
  # rx literal  "regex"
    add $I11, rx51_pos, 5
    gt $I11, rx51_eos, rx51_fail
    sub $I11, rx51_pos, rx51_off
    substr $S10, rx51_tgt, $I11, 5
    ne $S10, "regex", rx51_fail
    add rx51_pos, 5
    goto alt66_end
  alt66_1:
    set_addr $I10, alt66_2
    rx51_cur."!mark_push"(0, rx51_pos, $I10)
  # rx literal  "token"
    add $I11, rx51_pos, 5
    gt $I11, rx51_eos, rx51_fail
    sub $I11, rx51_pos, rx51_off
    substr $S10, rx51_tgt, $I11, 5
    ne $S10, "token", rx51_fail
    add rx51_pos, 5
    goto alt66_end
  alt66_2:
  # rx literal  "rule"
    add $I11, rx51_pos, 4
    gt $I11, rx51_eos, rx51_fail
    sub $I11, rx51_pos, rx51_off
    substr $S10, rx51_tgt, $I11, 4
    ne $S10, "rule", rx51_fail
    add rx51_pos, 4
  alt66_end:
    set_addr $I10, rxcap_67_fail
    ($I12, $I11) = rx51_cur."!mark_peek"($I10)
    rx51_cur."!cursor_pos"($I11)
    ($P10) = rx51_cur."!cursor_start"()
    $P10."!cursor_pass"(rx51_pos, "")
    rx51_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_67_done
  rxcap_67_fail:
    goto rx51_fail
  rxcap_67_done:
  # rx subrule "ws" subtype=method negate=
    rx51_cur."!cursor_pos"(rx51_pos)
    $P10 = rx51_cur."ws"()
    unless $P10, rx51_fail
    rx51_pos = $P10."pos"()
.annotate "line", 23
  # rx subrule "longname" subtype=capture negate=
    rx51_cur."!cursor_pos"(rx51_pos)
    $P10 = rx51_cur."longname"()
    unless $P10, rx51_fail
    rx51_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("longname")
    rx51_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx51_cur."!cursor_pos"(rx51_pos)
    $P10 = rx51_cur."ws"()
    unless $P10, rx51_fail
    rx51_pos = $P10."pos"()
.annotate "line", 24
  # rx reduce name="regex_stmt" key="open"
    rx51_cur."!cursor_pos"(rx51_pos)
    rx51_cur."!reduce"("regex_stmt", "open")
  # rx subrule "ws" subtype=method negate=
    rx51_cur."!cursor_pos"(rx51_pos)
    $P10 = rx51_cur."ws"()
    unless $P10, rx51_fail
    rx51_pos = $P10."pos"()
.annotate "line", 25
  # rx literal  "{"
    add $I11, rx51_pos, 1
    gt $I11, rx51_eos, rx51_fail
    sub $I11, rx51_pos, rx51_off
    substr $S10, rx51_tgt, $I11, 1
    ne $S10, "{", rx51_fail
    add rx51_pos, 1
  # rx subrule "nibbler" subtype=capture negate=
    rx51_cur."!cursor_pos"(rx51_pos)
    $P10 = rx51_cur."nibbler"()
    unless $P10, rx51_fail
    rx51_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    rx51_pos = $P10."pos"()
  # rx literal  "}"
    add $I11, rx51_pos, 1
    gt $I11, rx51_eos, rx51_fail
    sub $I11, rx51_pos, rx51_off
    substr $S10, rx51_tgt, $I11, 1
    ne $S10, "}", rx51_fail
    add rx51_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx51_cur."!cursor_pos"(rx51_pos)
    $P10 = rx51_cur."ws"()
    unless $P10, rx51_fail
    rx51_pos = $P10."pos"()
  alt55_end:
.annotate "line", 26
  # rx subrule "ws" subtype=method negate=
    rx51_cur."!cursor_pos"(rx51_pos)
    $P10 = rx51_cur."ws"()
    unless $P10, rx51_fail
    rx51_pos = $P10."pos"()
.annotate "line", 19
  # rx pass
    rx51_cur."!cursor_pass"(rx51_pos, "regex_stmt")
    rx51_cur."!cursor_debug"("PASS  ", "regex_stmt", " at pos=", rx51_pos)
    .return (rx51_cur)
  rx51_fail:
    (rx51_rep, rx51_pos, $I10, $P10) = rx51_cur."!mark_fail"(0)
    lt rx51_pos, -1, rx51_done
    eq rx51_pos, -1, rx51_fail
    jump $I10
  rx51_done:
    rx51_cur."!cursor_fail"()
    rx51_cur."!cursor_debug"("FAIL  ", "regex_stmt")
    .return (rx51_cur)
    .return ()
.end


.namespace ["Regex";"P6Grammar";"Grammar"]
.sub "!PREFIX__regex_stmt"  :subid("20_1256575584.96964") :method
.annotate "line", 19
    new $P53, "ResizablePMCArray"
    push $P53, ""
    .return ($P53)
.end

### .include 'gen/p6grammar-actions.pir'

.namespace []
.sub "_block11"  :anon :subid("10_1256575585.77264")
.annotate "line", 3
    get_hll_global $P14, ["Regex";"P6Grammar";"Actions"], "_block13" 
.annotate "line", 1
    .return ($P14)
.end


.namespace ["Regex";"P6Grammar";"Actions"]
.sub "_block13" :init :load :subid("11_1256575585.77264")
.annotate "line", 3
    .const 'Sub' $P83 = "15_1256575585.77264" 
    capture_lex $P83
    .const 'Sub' $P44 = "14_1256575585.77264" 
    capture_lex $P44
    .const 'Sub' $P16 = "12_1256575585.77264" 
    capture_lex $P16
$P15 = get_root_global ["parrot"], "P6metaclass"
    $P15."new_class"("Regex::P6Grammar::Actions", "Regex::P6Regex::Actions" :named("parent"))
.annotate "line", 30
    .const 'Sub' $P83 = "15_1256575585.77264" 
    capture_lex $P83
.annotate "line", 3
    .return ($P83)
.end


.namespace ["Regex";"P6Grammar";"Actions"]
.sub "TOP"  :subid("12_1256575585.77264") :method :outer("11_1256575585.77264")
    .param pmc param_19
.annotate "line", 3
    .const 'Sub' $P29 = "13_1256575585.77264" 
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
    unless_null $P21, vivify_21
    new $P21, "Undef"
  vivify_21:
    $P22 = $P21."ast"()
    .lex "$past", $P22
.annotate "line", 5
    find_lex $P24, "$/"
    set $P25, $P24["regex_stmt"]
    unless_null $P25, vivify_22
    new $P25, "Undef"
  vivify_22:
    defined $I26, $P25
    unless $I26, for_undef_23
    iter $P23, $P25
    new $P36, 'ExceptionHandler'
    set_addr $P36, loop35_handler
    $P36."handle_types"(65, 67, 66)
    push_eh $P36
  loop35_test:
    unless $P23, loop35_done
    shift $P27, $P23
  loop35_redo:
    .const 'Sub' $P29 = "13_1256575585.77264" 
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
  for_undef_23:
.annotate "line", 8
    find_lex $P38, "$past"
    unless_null $P38, vivify_26
    new $P38, "Undef"
  vivify_26:
    find_lex $P39, "$/"
    unless_null $P39, vivify_27
    new $P39, "Undef"
  vivify_27:
    $P38."node"($P39)
    find_lex $P40, "$/"
.annotate "line", 9
    find_lex $P41, "$past"
    unless_null $P41, vivify_28
    new $P41, "Undef"
  vivify_28:
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
.sub "_block28"  :anon :subid("13_1256575585.77264") :outer("12_1256575585.77264")
    .param pmc param_30
.annotate "line", 5
    .lex "$_", param_30
.annotate "line", 6
    find_lex $P31, "$past"
    unless_null $P31, vivify_24
    new $P31, "Undef"
  vivify_24:
    find_lex $P32, "$_"
    unless_null $P32, vivify_25
    new $P32, "Undef"
  vivify_25:
    $P33 = $P32."ast"()
    $P34 = $P31."push"($P33)
.annotate "line", 5
    .return ($P34)
.end


.namespace ["Regex";"P6Grammar";"Actions"]
.sub "grammar_stmt"  :subid("14_1256575585.77264") :method :outer("11_1256575585.77264")
    .param pmc param_47
.annotate "line", 13
    new $P46, 'ExceptionHandler'
    set_addr $P46, control_45
    $P46."handle_types"(58)
    push_eh $P46
    .lex "self", self
    .lex "$/", param_47
.annotate "line", 14
    get_hll_global $P48, ["Regex";"P6Grammar"], "Compiler"
    find_lex $P49, "$/"
    set $P50, $P49["name"]
    unless_null $P50, vivify_29
    new $P50, "Undef"
  vivify_29:
    set $S51, $P50
    $P52 = $P48."parse_name"($S51)
    .lex "@ns", $P52
.annotate "line", 15
    get_hll_global $P53, ["PAST"], "Block"
    find_lex $P54, "@ns"
    unless_null $P54, vivify_30
    new $P54, "ResizablePMCArray"
  vivify_30:
    find_lex $P55, "$/"
    unless_null $P55, vivify_31
    new $P55, "Undef"
  vivify_31:
    $P56 = $P53."new"($P54 :named("namespace"), $P55 :named("node"))
    .lex "$past", $P56
.annotate "line", 16
    find_lex $P59, "$/"
    set $P60, $P59["base"]
    unless_null $P60, vivify_32
    new $P60, "Undef"
  vivify_32:
    if $P60, if_58
    new $P65, "String"
    assign $P65, "Regex::Cursor"
    set $P57, $P65
    goto if_58_end
  if_58:
    find_lex $P61, "$/"
    set $P62, $P61["base"]
    unless_null $P62, vivify_33
    new $P62, "ResizablePMCArray"
  vivify_33:
    set $P63, $P62[0]
    unless_null $P63, vivify_34
    new $P63, "Undef"
  vivify_34:
    set $S64, $P63
    new $P57, 'String'
    set $P57, $S64
  if_58_end:
    .lex "$parent", $P57
.annotate "line", 18
    get_hll_global $P66, ["PAST"], "Op"
.annotate "line", 19
    get_hll_global $P67, ["PAST"], "Var"
.annotate "line", 20
    $P68 = $P67."new"("P6metaclass" :named("name"), "package" :named("scope"), "" :named("namespace"))
.annotate "line", 21
    find_lex $P69, "$/"
    set $P70, $P69["name"]
    unless_null $P70, vivify_35
    new $P70, "Undef"
  vivify_35:
    set $S71, $P70
.annotate "line", 22
    get_hll_global $P72, ["PAST"], "Val"
    find_lex $P73, "$parent"
    unless_null $P73, vivify_36
    new $P73, "Undef"
  vivify_36:
    $P74 = $P72."new"($P73 :named("value"), "parent" :named("named"))
.annotate "line", 23
    find_lex $P75, "$/"
    unless_null $P75, vivify_37
    new $P75, "Undef"
  vivify_37:
    $P76 = $P66."new"($P68, $S71, $P74, "callmethod" :named("pasttype"), "new_class" :named("name"), $P75 :named("node"))
.annotate "line", 18
    .lex "$init", $P76
.annotate "line", 25
    find_lex $P77, "$past"
    unless_null $P77, vivify_38
    new $P77, "Undef"
  vivify_38:
    find_lex $P78, "$init"
    unless_null $P78, vivify_39
    new $P78, "Undef"
  vivify_39:
    $P77."loadinit"($P78)
    find_lex $P79, "$/"
.annotate "line", 26
    find_lex $P80, "$past"
    unless_null $P80, vivify_40
    new $P80, "Undef"
  vivify_40:
    $P81 = $P79."!make"($P80)
.annotate "line", 13
    .return ($P81)
  control_45:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P82, exception, "payload"
    .return ($P82)
    rethrow exception
.end


.namespace ["Regex";"P6Grammar";"Actions"]
.sub "regex_stmt"  :subid("15_1256575585.77264") :method :outer("11_1256575585.77264")
    .param pmc param_86
    .param pmc param_87 :optional
    .param int has_param_87 :opt_flag
.annotate "line", 30
    .const 'Sub' $P154 = "20_1256575585.77264" 
    capture_lex $P154
    .const 'Sub' $P130 = "19_1256575585.77264" 
    capture_lex $P130
    .const 'Sub' $P99 = "16_1256575585.77264" 
    capture_lex $P99
    new $P85, 'ExceptionHandler'
    set_addr $P85, control_84
    $P85."handle_types"(58)
    push_eh $P85
    .lex "self", self
    .lex "$/", param_86
    if has_param_87, optparam_41
    new $P88, "Undef"
    set param_87, $P88
  optparam_41:
    .lex "$key", param_87
.annotate "line", 31
 
        $P89 = get_hll_global ['Regex';'P6Regex';'Actions'], '@MODIFIERS'
    
    .lex "@MODIFIERS", $P89
.annotate "line", 34
    find_lex $P90, "$/"
    set $P91, $P90["longname"]
    unless_null $P91, vivify_42
    new $P91, "Undef"
  vivify_42:
    set $S92, $P91
    new $P93, 'String'
    set $P93, $S92
    .lex "$name", $P93
.annotate "line", 35
    find_lex $P95, "$key"
    unless_null $P95, vivify_43
    new $P95, "Undef"
  vivify_43:
    set $S96, $P95
    iseq $I97, $S96, "open"
    unless $I97, if_94_end
    .const 'Sub' $P99 = "16_1256575585.77264" 
    capture_lex $P99
    $P99()
  if_94_end:
.annotate "line", 46
    new $P125, "Undef"
    .lex "$past", $P125
.annotate "line", 47
    find_lex $P127, "$/"
    set $P128, $P127["proto"]
    unless_null $P128, vivify_51
    new $P128, "Undef"
  vivify_51:
    if $P128, if_126
.annotate "line", 74
    .const 'Sub' $P154 = "20_1256575585.77264" 
    capture_lex $P154
    $P154()
    goto if_126_end
  if_126:
.annotate "line", 47
    .const 'Sub' $P130 = "19_1256575585.77264" 
    capture_lex $P130
    $P130()
  if_126_end:
    find_lex $P176, "$/"
.annotate "line", 88
    find_lex $P177, "$past"
    unless_null $P177, vivify_67
    new $P177, "Undef"
  vivify_67:
    $P178 = $P176."!make"($P177)
.annotate "line", 30
    .return ($P178)
  control_84:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P179, exception, "payload"
    .return ($P179)
    rethrow exception
.end


.namespace ["Regex";"P6Grammar";"Actions"]
.sub "_block98"  :anon :subid("16_1256575585.77264") :outer("15_1256575585.77264")
.annotate "line", 35
    .const 'Sub' $P116 = "18_1256575585.77264" 
    capture_lex $P116
    .const 'Sub' $P107 = "17_1256575585.77264" 
    capture_lex $P107
.annotate "line", 36
    new $P100, "Hash"
    .lex "%h", $P100
.annotate "line", 37
    find_lex $P102, "$/"
    set $P103, $P102["sym"]
    unless_null $P103, vivify_44
    new $P103, "Undef"
  vivify_44:
    set $S104, $P103
    iseq $I105, $S104, "token"
    unless $I105, if_101_end
    .const 'Sub' $P107 = "17_1256575585.77264" 
    capture_lex $P107
    $P107()
  if_101_end:
.annotate "line", 38
    find_lex $P111, "$/"
    set $P112, $P111["sym"]
    unless_null $P112, vivify_46
    new $P112, "Undef"
  vivify_46:
    set $S113, $P112
    iseq $I114, $S113, "rule"
    unless $I114, if_110_end
    .const 'Sub' $P116 = "18_1256575585.77264" 
    capture_lex $P116
    $P116()
  if_110_end:
.annotate "line", 39
    find_lex $P121, "@MODIFIERS"
    unless_null $P121, vivify_49
    new $P121, "ResizablePMCArray"
  vivify_49:
    find_lex $P122, "%h"
    unless_null $P122, vivify_50
    new $P122, "Hash"
  vivify_50:
    $P121."unshift"($P122)
.annotate "line", 40
 
            $P0 = find_lex '$name'
            set_hll_global ['Regex';'P6Regex';'Actions'], '$REGEXNAME', $P0
        
.annotate "line", 44
    new $P123, "Exception"
    set $P123['type'], 58
    new $P124, "Integer"
    assign $P124, 0
    setattribute $P123, 'payload', $P124
    throw $P123
.annotate "line", 35
    .return ()
.end


.namespace ["Regex";"P6Grammar";"Actions"]
.sub "_block106"  :anon :subid("17_1256575585.77264") :outer("16_1256575585.77264")
.annotate "line", 37
    new $P108, "Integer"
    assign $P108, 1
    find_lex $P109, "%h"
    unless_null $P109, vivify_45
    new $P109, "Hash"
    store_lex "%h", $P109
  vivify_45:
    set $P109["r"], $P108
    .return ($P108)
.end


.namespace ["Regex";"P6Grammar";"Actions"]
.sub "_block115"  :anon :subid("18_1256575585.77264") :outer("16_1256575585.77264")
.annotate "line", 38
    new $P117, "Integer"
    assign $P117, 1
    find_lex $P118, "%h"
    unless_null $P118, vivify_47
    new $P118, "Hash"
    store_lex "%h", $P118
  vivify_47:
    set $P118["r"], $P117
    new $P119, "Integer"
    assign $P119, 1
    find_lex $P120, "%h"
    unless_null $P120, vivify_48
    new $P120, "Hash"
    store_lex "%h", $P120
  vivify_48:
    set $P120["s"], $P119
    .return ($P119)
.end


.namespace ["Regex";"P6Grammar";"Actions"]
.sub "_block153"  :anon :subid("20_1256575585.77264") :outer("15_1256575585.77264")
.annotate "line", 75
    find_lex $P155, "$/"
    set $P156, $P155["nibbler"]
    unless_null $P156, vivify_52
    new $P156, "Undef"
  vivify_52:
    $P157 = $P156."ast"()
    .lex "$rpast", $P157
.annotate "line", 76
    get_hll_global $P158, ["Regex";"P6Regex";"Actions"], "capnames"
    find_lex $P159, "$rpast"
    unless_null $P159, vivify_53
    new $P159, "Undef"
  vivify_53:
    $P160 = $P158($P159, 0)
    .lex "%capnames", $P160
.annotate "line", 77
    new $P161, "Integer"
    assign $P161, 0
    find_lex $P162, "%capnames"
    unless_null $P162, vivify_54
    new $P162, "Hash"
    store_lex "%capnames", $P162
  vivify_54:
    set $P162[""], $P161
.annotate "line", 78
    get_hll_global $P163, ["PAST"], "Regex"
.annotate "line", 79
    find_lex $P164, "$rpast"
    unless_null $P164, vivify_55
    new $P164, "Undef"
  vivify_55:
.annotate "line", 80
    get_hll_global $P165, ["PAST"], "Regex"
    $P166 = $P165."new"("pass" :named("pasttype"))
.annotate "line", 82
    find_lex $P167, "%capnames"
    unless_null $P167, vivify_56
    new $P167, "Hash"
  vivify_56:
    $P168 = $P163."new"($P164, $P166, "concat" :named("pasttype"), $P167 :named("capnames"))
.annotate "line", 78
    store_lex "$rpast", $P168
.annotate "line", 84
    get_hll_global $P169, ["PAST"], "Block"
    find_lex $P170, "$rpast"
    unless_null $P170, vivify_57
    new $P170, "Undef"
  vivify_57:
    find_lex $P171, "$name"
    unless_null $P171, vivify_58
    new $P171, "Undef"
  vivify_58:
.annotate "line", 85
    find_lex $P172, "$/"
    unless_null $P172, vivify_59
    new $P172, "Undef"
  vivify_59:
    $P173 = $P169."new"($P170, $P171 :named("name"), "method" :named("blocktype"), $P172 :named("node"))
.annotate "line", 84
    store_lex "$past", $P173
.annotate "line", 86
    find_lex $P174, "@MODIFIERS"
    unless_null $P174, vivify_60
    new $P174, "ResizablePMCArray"
  vivify_60:
    $P175 = $P174."shift"()
.annotate "line", 74
    .return ($P175)
.end


.namespace ["Regex";"P6Grammar";"Actions"]
.sub "_block129"  :anon :subid("19_1256575585.77264") :outer("15_1256575585.77264")
.annotate "line", 49
    get_hll_global $P131, ["PAST"], "Stmts"
.annotate "line", 50
    get_hll_global $P132, ["PAST"], "Block"
    find_lex $P133, "$name"
    unless_null $P133, vivify_61
    new $P133, "Undef"
  vivify_61:
.annotate "line", 51
    get_hll_global $P134, ["PAST"], "Op"
.annotate "line", 52
    get_hll_global $P135, ["PAST"], "Var"
    $P136 = $P135."new"("self" :named("name"), "register" :named("scope"))
.annotate "line", 53
    find_lex $P137, "$name"
    unless_null $P137, vivify_62
    new $P137, "Undef"
  vivify_62:
.annotate "line", 55
    $P138 = $P134."new"($P136, $P137, "!protoregex" :named("name"), "callmethod" :named("pasttype"))
.annotate "line", 59
    find_lex $P139, "$/"
    unless_null $P139, vivify_63
    new $P139, "Undef"
  vivify_63:
    $P140 = $P132."new"($P138, $P133 :named("name"), "method" :named("blocktype"), 0 :named("lexical"), $P139 :named("node"))
.annotate "line", 61
    get_hll_global $P141, ["PAST"], "Block"
    new $P142, "String"
    assign $P142, "!PREFIX__"
    find_lex $P143, "$name"
    unless_null $P143, vivify_64
    new $P143, "Undef"
  vivify_64:
    concat $P144, $P142, $P143
.annotate "line", 62
    get_hll_global $P145, ["PAST"], "Op"
.annotate "line", 63
    get_hll_global $P146, ["PAST"], "Var"
    $P147 = $P146."new"("self" :named("name"), "register" :named("scope"))
.annotate "line", 64
    find_lex $P148, "$name"
    unless_null $P148, vivify_65
    new $P148, "Undef"
  vivify_65:
.annotate "line", 66
    $P149 = $P145."new"($P147, $P148, "!PREFIX__!protoregex" :named("name"), "callmethod" :named("pasttype"))
.annotate "line", 70
    find_lex $P150, "$/"
    unless_null $P150, vivify_66
    new $P150, "Undef"
  vivify_66:
    $P151 = $P141."new"($P149, $P144 :named("name"), "method" :named("blocktype"), 0 :named("lexical"), $P150 :named("node"))
.annotate "line", 61
    $P152 = $P131."new"($P140, $P151)
.annotate "line", 49
    store_lex "$past", $P152
.annotate "line", 47
    .return ($P152)
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
