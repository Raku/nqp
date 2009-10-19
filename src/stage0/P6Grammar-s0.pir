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

### .include 'src/gen/p6grammar-grammar.pir'

.namespace ["Regex";"P6Grammar";"Grammar"]
.sub "_block11"  :subid("10_1255922573.76184")
.annotate "line", 0
    .const 'Sub' $P40 = "15_1255922573.76184" 
    capture_lex $P40
    .const 'Sub' $P28 = "14_1255922573.76184" 
    capture_lex $P28
    .const 'Sub' $P22 = "13_1255922573.76184" 
    capture_lex $P22
    .const 'Sub' $P18 = "12_1255922573.76184" 
    capture_lex $P18
    .const 'Sub' $P13 = "11_1255922573.76184" 
    capture_lex $P13
.annotate "line", 19
    .const 'Sub' $P40 = "15_1255922573.76184" 
    capture_lex $P40
.annotate "line", 1
    .return ($P40)
.end


.namespace ["Regex";"P6Grammar";"Grammar"]
.sub "" :load :init :subid("post16") :outer("10_1255922573.76184")
.annotate "line", 0
    get_hll_global $P12, ["Regex";"P6Grammar";"Grammar"], "_block11" 
    .local pmc block
    set block, $P12
.annotate "line", 1
    get_hll_global $P61, "P6metaclass"
    $P61."new_class"("Regex::P6Grammar::Grammar", "Regex::P6Regex::Grammar" :named("parent"))
.end


.namespace ["Regex";"P6Grammar";"Grammar"]
.sub "TOP"  :subid("11_1255922573.76184") :method :outer("10_1255922573.76184")
.annotate "line", 3
    .local string rx14_tgt
    .local int rx14_pos
    .local int rx14_off
    .local int rx14_eos
    .local int rx14_rep
    .local pmc rx14_cur
    (rx14_cur, rx14_pos, rx14_tgt, $I10) = self."!cursor_start"()
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
    can $I10, $P10, "pos"
    unless $I10, rxsubrule_17
    rx14_pos = $P10."pos"()
  rxsubrule_17:
.annotate "line", 5
  # rx rxquantr15 ** 0..*
    set_addr $I16, rxquantr15_done
    rx14_cur."!mark_push"(0, rx14_pos, $I16)
  rxquantr15_loop:
  # rx subrule "regex_stmt" subtype=capture negate=
    rx14_cur."!cursor_pos"(rx14_pos)
    $P10 = rx14_cur."regex_stmt"()
    unless $P10, rx14_fail
    rx14_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("regex_stmt")
    can $I10, $P10, "pos"
    unless $I10, rxsubrule_18
    rx14_pos = $P10."pos"()
  rxsubrule_18:
    (rx14_rep) = rx14_cur."!mark_commit"($I16)
    rx14_cur."!mark_push"(rx14_rep, rx14_pos, $I16)
    goto rxquantr15_loop
  rxquantr15_done:
  alt17_0:
.annotate "line", 6
    set_addr $I10, alt17_1
    rx14_cur."!mark_push"(0, rx14_pos, $I10)
  # rxanchor eos
    ne rx14_pos, rx14_eos, rx14_fail
    goto alt17_end
  alt17_1:
  # rx subrule "panic" subtype=method negate=
    rx14_cur."!cursor_pos"(rx14_pos)
    $P10 = rx14_cur."panic"("Confused")
    unless $P10, rx14_fail
    can $I10, $P10, "pos"
    unless $I10, rxsubrule_19
    rx14_pos = $P10."pos"()
  rxsubrule_19:
  alt17_end:
.annotate "line", 3
  # rx pass
    rx14_cur."!cursor_pass"(rx14_pos, "TOP")
    .return (rx14_cur)
  rx14_fail:
    (rx14_rep, rx14_pos, $I10, $P10) = rx14_cur."!mark_fail"(0)
    lt rx14_pos, -1, rx14_done
    eq rx14_pos, -1, rx14_fail
    jump $I10
  rx14_done:
    rx14_cur."!cursor_fail"()
    .return (rx14_cur)
    .return ()
.end


.namespace ["Regex";"P6Grammar";"Grammar"]
.sub "name"  :subid("12_1255922573.76184") :method :outer("10_1255922573.76184")
.annotate "line", 9
    .local string rx19_tgt
    .local int rx19_pos
    .local int rx19_off
    .local int rx19_eos
    .local int rx19_rep
    .local pmc rx19_cur
    (rx19_cur, rx19_pos, rx19_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx19_cur
    length rx19_eos, rx19_tgt
    set rx19_off, 0
    lt $I10, 2, rx19_start
    sub rx19_off, $I10, 1
    substr rx19_tgt, rx19_tgt, rx19_off
  rx19_start:
  # rx rxquantr20 ** 1..*
    set_addr $I21, rxquantr20_done
    rx19_cur."!mark_push"(0, -1, $I21)
  rxquantr20_loop:
  # rx subrule "ident" subtype=method negate=
    rx19_cur."!cursor_pos"(rx19_pos)
    $P10 = rx19_cur."ident"()
    unless $P10, rx19_fail
    can $I10, $P10, "pos"
    unless $I10, rxsubrule_20
    rx19_pos = $P10."pos"()
  rxsubrule_20:
    (rx19_rep) = rx19_cur."!mark_commit"($I21)
    rx19_cur."!mark_push"(rx19_rep, rx19_pos, $I21)
  # rx literal  "::"
    add $I11, rx19_pos, 2
    gt $I11, rx19_eos, rx19_fail
    sub $I11, rx19_pos, rx19_off
    substr $S10, rx19_tgt, $I11, 2
    ne $S10, "::", rx19_fail
    add rx19_pos, 2
    goto rxquantr20_loop
  rxquantr20_done:
  # rx pass
    rx19_cur."!cursor_pass"(rx19_pos, "name")
    .return (rx19_cur)
  rx19_fail:
    (rx19_rep, rx19_pos, $I10, $P10) = rx19_cur."!mark_fail"(0)
    lt rx19_pos, -1, rx19_done
    eq rx19_pos, -1, rx19_fail
    jump $I10
  rx19_done:
    rx19_cur."!cursor_fail"()
    .return (rx19_cur)
    .return ()
.end


.namespace ["Regex";"P6Grammar";"Grammar"]
.sub "longname"  :subid("13_1255922573.76184") :method :outer("10_1255922573.76184")
.annotate "line", 11
    .local string rx23_tgt
    .local int rx23_pos
    .local int rx23_off
    .local int rx23_eos
    .local int rx23_rep
    .local pmc rx23_cur
    (rx23_cur, rx23_pos, rx23_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx23_cur
    length rx23_eos, rx23_tgt
    set rx23_off, 0
    lt $I10, 2, rx23_start
    sub rx23_off, $I10, 1
    substr rx23_tgt, rx23_tgt, rx23_off
  rx23_start:
.annotate "line", 13
  # rx subrule "ident" subtype=method negate=
    rx23_cur."!cursor_pos"(rx23_pos)
    $P10 = rx23_cur."ident"()
    unless $P10, rx23_fail
    can $I10, $P10, "pos"
    unless $I10, rxsubrule_21
    rx23_pos = $P10."pos"()
  rxsubrule_21:
  # rx rxquantr24 ** 0..1
    set_addr $I27, rxquantr24_done
    rx23_cur."!mark_push"(0, rx23_pos, $I27)
  rxquantr24_loop:
  # rx literal  ":sym<"
    add $I11, rx23_pos, 5
    gt $I11, rx23_eos, rx23_fail
    sub $I11, rx23_pos, rx23_off
    substr $S10, rx23_tgt, $I11, 5
    ne $S10, ":sym<", rx23_fail
    add rx23_pos, 5
  # rx rxquantr25 ** 0..*
    set_addr $I26, rxquantr25_done
    rx23_cur."!mark_push"(0, rx23_pos, $I26)
  rxquantr25_loop:
  # rx enumcharlist negate=1 
    ge rx23_pos, rx23_eos, rx23_fail
    sub $I10, rx23_pos, rx23_off
    substr $S10, rx23_tgt, $I10, 1
    index $I11, ">", $S10
    ge $I11, 0, rx23_fail
    inc rx23_pos
    (rx23_rep) = rx23_cur."!mark_commit"($I26)
    rx23_cur."!mark_push"(rx23_rep, rx23_pos, $I26)
    goto rxquantr25_loop
  rxquantr25_done:
  # rx literal  ">"
    add $I11, rx23_pos, 1
    gt $I11, rx23_eos, rx23_fail
    sub $I11, rx23_pos, rx23_off
    substr $S10, rx23_tgt, $I11, 1
    ne $S10, ">", rx23_fail
    add rx23_pos, 1
    (rx23_rep) = rx23_cur."!mark_commit"($I27)
  rxquantr24_done:
.annotate "line", 11
  # rx pass
    rx23_cur."!cursor_pass"(rx23_pos, "longname")
    .return (rx23_cur)
  rx23_fail:
    (rx23_rep, rx23_pos, $I10, $P10) = rx23_cur."!mark_fail"(0)
    lt rx23_pos, -1, rx23_done
    eq rx23_pos, -1, rx23_fail
    jump $I10
  rx23_done:
    rx23_cur."!cursor_fail"()
    .return (rx23_cur)
    .return ()
.end


.namespace ["Regex";"P6Grammar";"Grammar"]
.sub "grammar_stmt"  :subid("14_1255922573.76184") :method :outer("10_1255922573.76184")
.annotate "line", 17
    .local string rx29_tgt
    .local int rx29_pos
    .local int rx29_off
    .local int rx29_eos
    .local int rx29_rep
    .local pmc rx29_cur
    (rx29_cur, rx29_pos, rx29_tgt, $I10) = self."!cursor_start"()
    rx29_cur."!cursor_caparray"("base")
    .lex unicode:"$\x{a2}", rx29_cur
    length rx29_eos, rx29_tgt
    set rx29_off, 0
    lt $I10, 2, rx29_start
    sub rx29_off, $I10, 1
    substr rx29_tgt, rx29_tgt, rx29_off
  rx29_start:
  # rx subrule "ws" subtype=method negate=
    rx29_cur."!cursor_pos"(rx29_pos)
    $P10 = rx29_cur."ws"()
    unless $P10, rx29_fail
    can $I10, $P10, "pos"
    unless $I10, rxsubrule_22
    rx29_pos = $P10."pos"()
  rxsubrule_22:
  # rx literal  "grammar"
    add $I11, rx29_pos, 7
    gt $I11, rx29_eos, rx29_fail
    sub $I11, rx29_pos, rx29_off
    substr $S10, rx29_tgt, $I11, 7
    ne $S10, "grammar", rx29_fail
    add rx29_pos, 7
  # rx subrule "ws" subtype=method negate=
    rx29_cur."!cursor_pos"(rx29_pos)
    $P10 = rx29_cur."ws"()
    unless $P10, rx29_fail
    can $I10, $P10, "pos"
    unless $I10, rxsubrule_23
    rx29_pos = $P10."pos"()
  rxsubrule_23:
  # rx subrule "name" subtype=capture negate=
    rx29_cur."!cursor_pos"(rx29_pos)
    $P10 = rx29_cur."name"()
    unless $P10, rx29_fail
    rx29_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
    can $I10, $P10, "pos"
    unless $I10, rxsubrule_24
    rx29_pos = $P10."pos"()
  rxsubrule_24:
  # rx subrule "ws" subtype=method negate=
    rx29_cur."!cursor_pos"(rx29_pos)
    $P10 = rx29_cur."ws"()
    unless $P10, rx29_fail
    can $I10, $P10, "pos"
    unless $I10, rxsubrule_25
    rx29_pos = $P10."pos"()
  rxsubrule_25:
  # rx rxquantr33 ** 0..1
    set_addr $I37, rxquantr33_done
    rx29_cur."!mark_push"(0, rx29_pos, $I37)
  rxquantr33_loop:
  # rx subrule "ws" subtype=method negate=
    rx29_cur."!cursor_pos"(rx29_pos)
    $P10 = rx29_cur."ws"()
    unless $P10, rx29_fail
    can $I10, $P10, "pos"
    unless $I10, rxsubrule_26
    rx29_pos = $P10."pos"()
  rxsubrule_26:
  # rx literal  "is"
    add $I11, rx29_pos, 2
    gt $I11, rx29_eos, rx29_fail
    sub $I11, rx29_pos, rx29_off
    substr $S10, rx29_tgt, $I11, 2
    ne $S10, "is", rx29_fail
    add rx29_pos, 2
  # rx subrule "ws" subtype=method negate=
    rx29_cur."!cursor_pos"(rx29_pos)
    $P10 = rx29_cur."ws"()
    unless $P10, rx29_fail
    can $I10, $P10, "pos"
    unless $I10, rxsubrule_27
    rx29_pos = $P10."pos"()
  rxsubrule_27:
  # rx subrule "name" subtype=capture negate=
    rx29_cur."!cursor_pos"(rx29_pos)
    $P10 = rx29_cur."name"()
    unless $P10, rx29_fail
    rx29_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("base")
    can $I10, $P10, "pos"
    unless $I10, rxsubrule_28
    rx29_pos = $P10."pos"()
  rxsubrule_28:
  # rx subrule "ws" subtype=method negate=
    rx29_cur."!cursor_pos"(rx29_pos)
    $P10 = rx29_cur."ws"()
    unless $P10, rx29_fail
    can $I10, $P10, "pos"
    unless $I10, rxsubrule_29
    rx29_pos = $P10."pos"()
  rxsubrule_29:
    (rx29_rep) = rx29_cur."!mark_commit"($I37)
  rxquantr33_done:
  # rx subrule "ws" subtype=method negate=
    rx29_cur."!cursor_pos"(rx29_pos)
    $P10 = rx29_cur."ws"()
    unless $P10, rx29_fail
    can $I10, $P10, "pos"
    unless $I10, rxsubrule_30
    rx29_pos = $P10."pos"()
  rxsubrule_30:
  # rx literal  ";"
    add $I11, rx29_pos, 1
    gt $I11, rx29_eos, rx29_fail
    sub $I11, rx29_pos, rx29_off
    substr $S10, rx29_tgt, $I11, 1
    ne $S10, ";", rx29_fail
    add rx29_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx29_cur."!cursor_pos"(rx29_pos)
    $P10 = rx29_cur."ws"()
    unless $P10, rx29_fail
    can $I10, $P10, "pos"
    unless $I10, rxsubrule_31
    rx29_pos = $P10."pos"()
  rxsubrule_31:
  # rx pass
    rx29_cur."!cursor_pass"(rx29_pos, "grammar_stmt")
    .return (rx29_cur)
  rx29_fail:
    (rx29_rep, rx29_pos, $I10, $P10) = rx29_cur."!mark_fail"(0)
    lt rx29_pos, -1, rx29_done
    eq rx29_pos, -1, rx29_fail
    jump $I10
  rx29_done:
    rx29_cur."!cursor_fail"()
    .return (rx29_cur)
    .return ()
.end


.namespace ["Regex";"P6Grammar";"Grammar"]
.sub "regex_stmt"  :subid("15_1255922573.76184") :method :outer("10_1255922573.76184")
.annotate "line", 19
    .local string rx41_tgt
    .local int rx41_pos
    .local int rx41_off
    .local int rx41_eos
    .local int rx41_rep
    .local pmc rx41_cur
    (rx41_cur, rx41_pos, rx41_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx41_cur
    length rx41_eos, rx41_tgt
    set rx41_off, 0
    lt $I10, 2, rx41_start
    sub rx41_off, $I10, 1
    substr rx41_tgt, rx41_tgt, rx41_off
  rx41_start:
  # rx subrule "ws" subtype=method negate=
    rx41_cur."!cursor_pos"(rx41_pos)
    $P10 = rx41_cur."ws"()
    unless $P10, rx41_fail
    can $I10, $P10, "pos"
    unless $I10, rxsubrule_32
    rx41_pos = $P10."pos"()
  rxsubrule_32:
  alt43_0:
.annotate "line", 20
    set_addr $I10, alt43_1
    rx41_cur."!mark_push"(0, rx41_pos, $I10)
.annotate "line", 21
  # rx subrule "ws" subtype=method negate=
    rx41_cur."!cursor_pos"(rx41_pos)
    $P10 = rx41_cur."ws"()
    unless $P10, rx41_fail
    can $I10, $P10, "pos"
    unless $I10, rxsubrule_33
    rx41_pos = $P10."pos"()
  rxsubrule_33:
  # rx subcapture "proto"
    set_addr $I10, rxcap_45_fail
    rx41_cur."!mark_push"(0, rx41_pos, $I10)
  # rx literal  "proto"
    add $I11, rx41_pos, 5
    gt $I11, rx41_eos, rx41_fail
    sub $I11, rx41_pos, rx41_off
    substr $S10, rx41_tgt, $I11, 5
    ne $S10, "proto", rx41_fail
    add rx41_pos, 5
    set_addr $I10, rxcap_45_fail
    ($I12, $I11) = rx41_cur."!mark_peek"($I10)
    rx41_cur."!cursor_pos"($I11)
    ($P10) = rx41_cur."!cursor_start"()
    $P10."!cursor_pass"(rx41_pos, "")
    rx41_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("proto")
    goto rxcap_45_done
  rxcap_45_fail:
    goto rx41_fail
  rxcap_45_done:
  # rx subrule "ws" subtype=method negate=
    rx41_cur."!cursor_pos"(rx41_pos)
    $P10 = rx41_cur."ws"()
    unless $P10, rx41_fail
    can $I10, $P10, "pos"
    unless $I10, rxsubrule_34
    rx41_pos = $P10."pos"()
  rxsubrule_34:
  alt47_0:
    set_addr $I10, alt47_1
    rx41_cur."!mark_push"(0, rx41_pos, $I10)
  # rx literal  "regex"
    add $I11, rx41_pos, 5
    gt $I11, rx41_eos, rx41_fail
    sub $I11, rx41_pos, rx41_off
    substr $S10, rx41_tgt, $I11, 5
    ne $S10, "regex", rx41_fail
    add rx41_pos, 5
    goto alt47_end
  alt47_1:
    set_addr $I10, alt47_2
    rx41_cur."!mark_push"(0, rx41_pos, $I10)
  # rx literal  "token"
    add $I11, rx41_pos, 5
    gt $I11, rx41_eos, rx41_fail
    sub $I11, rx41_pos, rx41_off
    substr $S10, rx41_tgt, $I11, 5
    ne $S10, "token", rx41_fail
    add rx41_pos, 5
    goto alt47_end
  alt47_2:
  # rx literal  "rule"
    add $I11, rx41_pos, 4
    gt $I11, rx41_eos, rx41_fail
    sub $I11, rx41_pos, rx41_off
    substr $S10, rx41_tgt, $I11, 4
    ne $S10, "rule", rx41_fail
    add rx41_pos, 4
  alt47_end:
  # rx subrule "ws" subtype=method negate=
    rx41_cur."!cursor_pos"(rx41_pos)
    $P10 = rx41_cur."ws"()
    unless $P10, rx41_fail
    can $I10, $P10, "pos"
    unless $I10, rxsubrule_35
    rx41_pos = $P10."pos"()
  rxsubrule_35:
  # rx subrule "longname" subtype=capture negate=
    rx41_cur."!cursor_pos"(rx41_pos)
    $P10 = rx41_cur."longname"()
    unless $P10, rx41_fail
    rx41_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("longname")
    can $I10, $P10, "pos"
    unless $I10, rxsubrule_36
    rx41_pos = $P10."pos"()
  rxsubrule_36:
  # rx subrule "ws" subtype=method negate=
    rx41_cur."!cursor_pos"(rx41_pos)
    $P10 = rx41_cur."ws"()
    unless $P10, rx41_fail
    can $I10, $P10, "pos"
    unless $I10, rxsubrule_37
    rx41_pos = $P10."pos"()
  rxsubrule_37:
  # rx literal  "{"
    add $I11, rx41_pos, 1
    gt $I11, rx41_eos, rx41_fail
    sub $I11, rx41_pos, rx41_off
    substr $S10, rx41_tgt, $I11, 1
    ne $S10, "{", rx41_fail
    add rx41_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx41_cur."!cursor_pos"(rx41_pos)
    $P10 = rx41_cur."ws"()
    unless $P10, rx41_fail
    can $I10, $P10, "pos"
    unless $I10, rxsubrule_38
    rx41_pos = $P10."pos"()
  rxsubrule_38:
  # rx literal  "<...>"
    add $I11, rx41_pos, 5
    gt $I11, rx41_eos, rx41_fail
    sub $I11, rx41_pos, rx41_off
    substr $S10, rx41_tgt, $I11, 5
    ne $S10, "<...>", rx41_fail
    add rx41_pos, 5
  # rx subrule "ws" subtype=method negate=
    rx41_cur."!cursor_pos"(rx41_pos)
    $P10 = rx41_cur."ws"()
    unless $P10, rx41_fail
    can $I10, $P10, "pos"
    unless $I10, rxsubrule_39
    rx41_pos = $P10."pos"()
  rxsubrule_39:
  # rx literal  "}"
    add $I11, rx41_pos, 1
    gt $I11, rx41_eos, rx41_fail
    sub $I11, rx41_pos, rx41_off
    substr $S10, rx41_tgt, $I11, 1
    ne $S10, "}", rx41_fail
    add rx41_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx41_cur."!cursor_pos"(rx41_pos)
    $P10 = rx41_cur."ws"()
    unless $P10, rx41_fail
    can $I10, $P10, "pos"
    unless $I10, rxsubrule_40
    rx41_pos = $P10."pos"()
  rxsubrule_40:
    goto alt43_end
  alt43_1:
.annotate "line", 22
  # rx subrule "ws" subtype=method negate=
    rx41_cur."!cursor_pos"(rx41_pos)
    $P10 = rx41_cur."ws"()
    unless $P10, rx41_fail
    can $I10, $P10, "pos"
    unless $I10, rxsubrule_41
    rx41_pos = $P10."pos"()
  rxsubrule_41:
  # rx subcapture "sym"
    set_addr $I10, rxcap_55_fail
    rx41_cur."!mark_push"(0, rx41_pos, $I10)
  alt54_0:
    set_addr $I10, alt54_1
    rx41_cur."!mark_push"(0, rx41_pos, $I10)
  # rx literal  "regex"
    add $I11, rx41_pos, 5
    gt $I11, rx41_eos, rx41_fail
    sub $I11, rx41_pos, rx41_off
    substr $S10, rx41_tgt, $I11, 5
    ne $S10, "regex", rx41_fail
    add rx41_pos, 5
    goto alt54_end
  alt54_1:
    set_addr $I10, alt54_2
    rx41_cur."!mark_push"(0, rx41_pos, $I10)
  # rx literal  "token"
    add $I11, rx41_pos, 5
    gt $I11, rx41_eos, rx41_fail
    sub $I11, rx41_pos, rx41_off
    substr $S10, rx41_tgt, $I11, 5
    ne $S10, "token", rx41_fail
    add rx41_pos, 5
    goto alt54_end
  alt54_2:
  # rx literal  "rule"
    add $I11, rx41_pos, 4
    gt $I11, rx41_eos, rx41_fail
    sub $I11, rx41_pos, rx41_off
    substr $S10, rx41_tgt, $I11, 4
    ne $S10, "rule", rx41_fail
    add rx41_pos, 4
  alt54_end:
    set_addr $I10, rxcap_55_fail
    ($I12, $I11) = rx41_cur."!mark_peek"($I10)
    rx41_cur."!cursor_pos"($I11)
    ($P10) = rx41_cur."!cursor_start"()
    $P10."!cursor_pass"(rx41_pos, "")
    rx41_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_55_done
  rxcap_55_fail:
    goto rx41_fail
  rxcap_55_done:
  # rx subrule "ws" subtype=method negate=
    rx41_cur."!cursor_pos"(rx41_pos)
    $P10 = rx41_cur."ws"()
    unless $P10, rx41_fail
    can $I10, $P10, "pos"
    unless $I10, rxsubrule_42
    rx41_pos = $P10."pos"()
  rxsubrule_42:
.annotate "line", 23
  # rx subrule "longname" subtype=capture negate=
    rx41_cur."!cursor_pos"(rx41_pos)
    $P10 = rx41_cur."longname"()
    unless $P10, rx41_fail
    rx41_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("longname")
    can $I10, $P10, "pos"
    unless $I10, rxsubrule_43
    rx41_pos = $P10."pos"()
  rxsubrule_43:
  # rx subrule "ws" subtype=method negate=
    rx41_cur."!cursor_pos"(rx41_pos)
    $P10 = rx41_cur."ws"()
    unless $P10, rx41_fail
    can $I10, $P10, "pos"
    unless $I10, rxsubrule_44
    rx41_pos = $P10."pos"()
  rxsubrule_44:
.annotate "line", 24
  # rx reduce name="regex_stmt" key="open"
    rx41_cur."!cursor_pos"(rx41_pos)
    rx41_cur."!reduce"("regex_stmt", "open")
  # rx subrule "ws" subtype=method negate=
    rx41_cur."!cursor_pos"(rx41_pos)
    $P10 = rx41_cur."ws"()
    unless $P10, rx41_fail
    can $I10, $P10, "pos"
    unless $I10, rxsubrule_45
    rx41_pos = $P10."pos"()
  rxsubrule_45:
.annotate "line", 25
  # rx literal  "{"
    add $I11, rx41_pos, 1
    gt $I11, rx41_eos, rx41_fail
    sub $I11, rx41_pos, rx41_off
    substr $S10, rx41_tgt, $I11, 1
    ne $S10, "{", rx41_fail
    add rx41_pos, 1
  # rx subrule "nibbler" subtype=capture negate=
    rx41_cur."!cursor_pos"(rx41_pos)
    $P10 = rx41_cur."nibbler"()
    unless $P10, rx41_fail
    rx41_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
    can $I10, $P10, "pos"
    unless $I10, rxsubrule_46
    rx41_pos = $P10."pos"()
  rxsubrule_46:
  # rx literal  "}"
    add $I11, rx41_pos, 1
    gt $I11, rx41_eos, rx41_fail
    sub $I11, rx41_pos, rx41_off
    substr $S10, rx41_tgt, $I11, 1
    ne $S10, "}", rx41_fail
    add rx41_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx41_cur."!cursor_pos"(rx41_pos)
    $P10 = rx41_cur."ws"()
    unless $P10, rx41_fail
    can $I10, $P10, "pos"
    unless $I10, rxsubrule_47
    rx41_pos = $P10."pos"()
  rxsubrule_47:
  alt43_end:
.annotate "line", 26
  # rx subrule "ws" subtype=method negate=
    rx41_cur."!cursor_pos"(rx41_pos)
    $P10 = rx41_cur."ws"()
    unless $P10, rx41_fail
    can $I10, $P10, "pos"
    unless $I10, rxsubrule_48
    rx41_pos = $P10."pos"()
  rxsubrule_48:
.annotate "line", 19
  # rx pass
    rx41_cur."!cursor_pass"(rx41_pos, "regex_stmt")
    .return (rx41_cur)
  rx41_fail:
    (rx41_rep, rx41_pos, $I10, $P10) = rx41_cur."!mark_fail"(0)
    lt rx41_pos, -1, rx41_done
    eq rx41_pos, -1, rx41_fail
    jump $I10
  rx41_done:
    rx41_cur."!cursor_fail"()
    .return (rx41_cur)
    .return ()
.end

### .include 'src/gen/p6grammar-actions.pir'

.namespace []
.sub "_block11"  :anon :subid("10_1255922568.61289")
.annotate "line", 3
    get_hll_global $P14, ["Regex";"P6Grammar";"Actions"], "_block13" 
.annotate "line", 1
    .return ($P14)
.end


.namespace ["Regex";"P6Grammar";"Actions"]
.sub "_block13" :init :load :subid("11_1255922568.61289")
.annotate "line", 3
    .const 'Sub' $P83 = "15_1255922568.61289" 
    capture_lex $P83
    .const 'Sub' $P44 = "14_1255922568.61289" 
    capture_lex $P44
    .const 'Sub' $P16 = "12_1255922568.61289" 
    capture_lex $P16
$P15 = get_root_global ["parrot"], "P6metaclass"
    $P15."new_class"("Regex::P6Grammar::Actions", "Regex::P6Regex::Actions" :named("parent"))
.annotate "line", 30
    .const 'Sub' $P83 = "15_1255922568.61289" 
    capture_lex $P83
.annotate "line", 3
    .return ($P83)
.end


.namespace ["Regex";"P6Grammar";"Actions"]
.sub "TOP"  :subid("12_1255922568.61289") :method :outer("11_1255922568.61289")
    .param pmc param_19
.annotate "line", 3
    .const 'Sub' $P29 = "13_1255922568.61289" 
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
    .const 'Sub' $P29 = "13_1255922568.61289" 
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
.sub "_block28"  :anon :subid("13_1255922568.61289") :outer("12_1255922568.61289")
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
.sub "grammar_stmt"  :subid("14_1255922568.61289") :method :outer("11_1255922568.61289")
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
.sub "regex_stmt"  :subid("15_1255922568.61289") :method :outer("11_1255922568.61289")
    .param pmc param_86
    .param pmc param_87 :optional
    .param int has_param_87 :opt_flag
.annotate "line", 30
    .const 'Sub' $P141 = "20_1255922568.61289" 
    capture_lex $P141
    .const 'Sub' $P130 = "19_1255922568.61289" 
    capture_lex $P130
    .const 'Sub' $P95 = "16_1255922568.61289" 
    capture_lex $P95
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
    find_lex $P91, "$key"
    unless_null $P91, vivify_42
    new $P91, "Undef"
  vivify_42:
    set $S92, $P91
    iseq $I93, $S92, "open"
    unless $I93, if_90_end
    .const 'Sub' $P95 = "16_1255922568.61289" 
    capture_lex $P95
    $P95()
  if_90_end:
.annotate "line", 41
    find_lex $P121, "$/"
    set $P122, $P121["longname"]
    unless_null $P122, vivify_50
    new $P122, "Undef"
  vivify_50:
    set $S123, $P122
    new $P124, 'String'
    set $P124, $S123
    .lex "$name", $P124
.annotate "line", 42
    new $P125, "Undef"
    .lex "$past", $P125
.annotate "line", 43
    find_lex $P127, "$/"
    set $P128, $P127["proto"]
    unless_null $P128, vivify_51
    new $P128, "Undef"
  vivify_51:
    if $P128, if_126
.annotate "line", 57
    .const 'Sub' $P141 = "20_1255922568.61289" 
    capture_lex $P141
    $P141()
    goto if_126_end
  if_126:
.annotate "line", 43
    .const 'Sub' $P130 = "19_1255922568.61289" 
    capture_lex $P130
    $P130()
  if_126_end:
    find_lex $P163, "$/"
.annotate "line", 71
    find_lex $P164, "$past"
    unless_null $P164, vivify_64
    new $P164, "Undef"
  vivify_64:
    $P165 = $P163."!make"($P164)
.annotate "line", 30
    .return ($P165)
  control_84:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P166, exception, "payload"
    .return ($P166)
    rethrow exception
.end


.namespace ["Regex";"P6Grammar";"Actions"]
.sub "_block94"  :anon :subid("16_1255922568.61289") :outer("15_1255922568.61289")
.annotate "line", 34
    .const 'Sub' $P112 = "18_1255922568.61289" 
    capture_lex $P112
    .const 'Sub' $P103 = "17_1255922568.61289" 
    capture_lex $P103
.annotate "line", 35
    new $P96, "Hash"
    .lex "%h", $P96
.annotate "line", 36
    find_lex $P98, "$/"
    set $P99, $P98["sym"]
    unless_null $P99, vivify_43
    new $P99, "Undef"
  vivify_43:
    set $S100, $P99
    iseq $I101, $S100, "token"
    unless $I101, if_97_end
    .const 'Sub' $P103 = "17_1255922568.61289" 
    capture_lex $P103
    $P103()
  if_97_end:
.annotate "line", 37
    find_lex $P107, "$/"
    set $P108, $P107["sym"]
    unless_null $P108, vivify_45
    new $P108, "Undef"
  vivify_45:
    set $S109, $P108
    iseq $I110, $S109, "rule"
    unless $I110, if_106_end
    .const 'Sub' $P112 = "18_1255922568.61289" 
    capture_lex $P112
    $P112()
  if_106_end:
.annotate "line", 38
    find_lex $P117, "@MODIFIERS"
    unless_null $P117, vivify_48
    new $P117, "ResizablePMCArray"
  vivify_48:
    find_lex $P118, "%h"
    unless_null $P118, vivify_49
    new $P118, "Hash"
  vivify_49:
    $P117."unshift"($P118)
.annotate "line", 39
    new $P119, "Exception"
    set $P119['type'], 58
    new $P120, "Integer"
    assign $P120, 0
    setattribute $P119, 'payload', $P120
    throw $P119
.annotate "line", 34
    .return ()
.end


.namespace ["Regex";"P6Grammar";"Actions"]
.sub "_block102"  :anon :subid("17_1255922568.61289") :outer("16_1255922568.61289")
.annotate "line", 36
    new $P104, "Integer"
    assign $P104, 1
    find_lex $P105, "%h"
    unless_null $P105, vivify_44
    new $P105, "Hash"
    store_lex "%h", $P105
  vivify_44:
    set $P105["r"], $P104
    .return ($P104)
.end


.namespace ["Regex";"P6Grammar";"Actions"]
.sub "_block111"  :anon :subid("18_1255922568.61289") :outer("16_1255922568.61289")
.annotate "line", 37
    new $P113, "Integer"
    assign $P113, 1
    find_lex $P114, "%h"
    unless_null $P114, vivify_46
    new $P114, "Hash"
    store_lex "%h", $P114
  vivify_46:
    set $P114["r"], $P113
    new $P115, "Integer"
    assign $P115, 1
    find_lex $P116, "%h"
    unless_null $P116, vivify_47
    new $P116, "Hash"
    store_lex "%h", $P116
  vivify_47:
    set $P116["s"], $P115
    .return ($P115)
.end


.namespace ["Regex";"P6Grammar";"Actions"]
.sub "_block140"  :anon :subid("20_1255922568.61289") :outer("15_1255922568.61289")
.annotate "line", 58
    find_lex $P142, "$/"
    set $P143, $P142["nibbler"]
    unless_null $P143, vivify_52
    new $P143, "Undef"
  vivify_52:
    $P144 = $P143."ast"()
    .lex "$rpast", $P144
.annotate "line", 59
    get_hll_global $P145, ["Regex";"P6Regex";"Actions"], "capnames"
    find_lex $P146, "$rpast"
    unless_null $P146, vivify_53
    new $P146, "Undef"
  vivify_53:
    $P147 = $P145($P146, 0)
    .lex "%capnames", $P147
.annotate "line", 60
    new $P148, "Integer"
    assign $P148, 0
    find_lex $P149, "%capnames"
    unless_null $P149, vivify_54
    new $P149, "Hash"
    store_lex "%capnames", $P149
  vivify_54:
    set $P149[""], $P148
.annotate "line", 61
    get_hll_global $P150, ["PAST"], "Regex"
.annotate "line", 62
    find_lex $P151, "$rpast"
    unless_null $P151, vivify_55
    new $P151, "Undef"
  vivify_55:
.annotate "line", 63
    get_hll_global $P152, ["PAST"], "Regex"
    $P153 = $P152."new"("pass" :named("pasttype"))
.annotate "line", 65
    find_lex $P154, "%capnames"
    unless_null $P154, vivify_56
    new $P154, "Hash"
  vivify_56:
    $P155 = $P150."new"($P151, $P153, "concat" :named("pasttype"), $P154 :named("capnames"))
.annotate "line", 61
    store_lex "$rpast", $P155
.annotate "line", 67
    get_hll_global $P156, ["PAST"], "Block"
    find_lex $P157, "$rpast"
    unless_null $P157, vivify_57
    new $P157, "Undef"
  vivify_57:
    find_lex $P158, "$name"
    unless_null $P158, vivify_58
    new $P158, "Undef"
  vivify_58:
.annotate "line", 68
    find_lex $P159, "$/"
    unless_null $P159, vivify_59
    new $P159, "Undef"
  vivify_59:
    $P160 = $P156."new"($P157, $P158 :named("name"), "method" :named("blocktype"), $P159 :named("node"))
.annotate "line", 67
    store_lex "$past", $P160
.annotate "line", 69
    find_lex $P161, "@MODIFIERS"
    unless_null $P161, vivify_60
    new $P161, "ResizablePMCArray"
  vivify_60:
    $P162 = $P161."shift"()
.annotate "line", 57
    .return ($P162)
.end


.namespace ["Regex";"P6Grammar";"Actions"]
.sub "_block129"  :anon :subid("19_1255922568.61289") :outer("15_1255922568.61289")
.annotate "line", 45
    get_hll_global $P131, ["PAST"], "Block"
    find_lex $P132, "$name"
    unless_null $P132, vivify_61
    new $P132, "Undef"
  vivify_61:
.annotate "line", 46
    get_hll_global $P133, ["PAST"], "Op"
.annotate "line", 47
    get_hll_global $P134, ["PAST"], "Var"
    $P135 = $P134."new"("self" :named("name"), "register" :named("scope"))
.annotate "line", 48
    find_lex $P136, "$name"
    unless_null $P136, vivify_62
    new $P136, "Undef"
  vivify_62:
.annotate "line", 50
    $P137 = $P133."new"($P135, $P136, "!protoregex" :named("name"), "callmethod" :named("pasttype"))
.annotate "line", 54
    find_lex $P138, "$/"
    unless_null $P138, vivify_63
    new $P138, "Undef"
  vivify_63:
    $P139 = $P131."new"($P137, $P132 :named("name"), "method" :named("blocktype"), 0 :named("lexical"), $P138 :named("node"))
.annotate "line", 45
    store_lex "$past", $P139
.annotate "line", 43
    .return ($P139)
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
