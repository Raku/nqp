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
.sub "_block11"  :subid("10_1255762349")
.annotate "line", 0
    .const 'Sub' $P41 = "15_1255762349" 
    capture_lex $P41
    .const 'Sub' $P28 = "14_1255762349" 
    capture_lex $P28
    .const 'Sub' $P22 = "13_1255762349" 
    capture_lex $P22
    .const 'Sub' $P18 = "12_1255762349" 
    capture_lex $P18
    .const 'Sub' $P13 = "11_1255762349" 
    capture_lex $P13
.annotate "line", 21
    .const 'Sub' $P41 = "15_1255762349" 
    capture_lex $P41
.annotate "line", 1
    .return ($P41)
.end


.namespace ["Regex";"P6Grammar";"Grammar"]
.sub "" :load :init :subid("post16") :outer("10_1255762349")
.annotate "line", 0
    get_hll_global $P12, ["Regex";"P6Grammar";"Grammar"], "_block11" 
    .local pmc block
    set block, $P12
.annotate "line", 1
    get_hll_global $P51, "P6metaclass"
    $P51."new_class"("Regex::P6Grammar::Grammar", "Regex::P6Regex::Grammar" :named("parent"))
.end


.namespace ["Regex";"P6Grammar";"Grammar"]
.sub "TOP"  :subid("11_1255762349") :method :outer("10_1255762349")
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
    rx14_pos = $P10."pos"()
    rx14_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("grammar_stmt")
.annotate "line", 5
  # rx rxquantr15 ** 0..*
    set_addr $I16, rxquantr15_done
    rx14_cur."!mark_push"(0, rx14_pos, $I16)
  rxquantr15_loop:
  # rx subrule "regex_stmt" subtype=capture negate=
    rx14_cur."!cursor_pos"(rx14_pos)
    $P10 = rx14_cur."regex_stmt"()
    unless $P10, rx14_fail
    rx14_pos = $P10."pos"()
    rx14_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("regex_stmt")
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
    rx14_pos = $P10."pos"()
    rx14_cur."!mark_push"(0, -1, 0, $P10)
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
.sub "name"  :subid("12_1255762349") :method :outer("10_1255762349")
.annotate "line", 10
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
    rx19_pos = $P10."pos"()
    rx19_cur."!mark_push"(0, -1, 0, $P10)
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
.sub "longname"  :subid("13_1255762349") :method :outer("10_1255762349")
.annotate "line", 12
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
.annotate "line", 14
  # rx subrule "ident" subtype=method negate=
    rx23_cur."!cursor_pos"(rx23_pos)
    $P10 = rx23_cur."ident"()
    unless $P10, rx23_fail
    rx23_pos = $P10."pos"()
    rx23_cur."!mark_push"(0, -1, 0, $P10)
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
.annotate "line", 12
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
.sub "grammar_stmt"  :subid("14_1255762349") :method :outer("10_1255762349")
.annotate "line", 19
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
    rx29_pos = $P10."pos"()
    rx29_cur."!mark_push"(0, -1, 0, $P10)
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
    rx29_pos = $P10."pos"()
    rx29_cur."!mark_push"(0, -1, 0, $P10)
  # rx subrule "name" subtype=capture negate=
    rx29_cur."!cursor_pos"(rx29_pos)
    $P10 = rx29_cur."name"()
    unless $P10, rx29_fail
    rx29_pos = $P10."pos"()
    rx29_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("name")
  # rx subrule "ws" subtype=method negate=
    rx29_cur."!cursor_pos"(rx29_pos)
    $P10 = rx29_cur."ws"()
    unless $P10, rx29_fail
    rx29_pos = $P10."pos"()
    rx29_cur."!mark_push"(0, -1, 0, $P10)
  # rx rxquantr33 ** 0..1
    set_addr $I37, rxquantr33_done
    rx29_cur."!mark_push"(0, rx29_pos, $I37)
  rxquantr33_loop:
  # rx subrule "ws" subtype=method negate=
    rx29_cur."!cursor_pos"(rx29_pos)
    $P10 = rx29_cur."ws"()
    unless $P10, rx29_fail
    rx29_pos = $P10."pos"()
    rx29_cur."!mark_push"(0, -1, 0, $P10)
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
    rx29_pos = $P10."pos"()
    rx29_cur."!mark_push"(0, -1, 0, $P10)
  # rx subrule "name" subtype=capture negate=
    rx29_cur."!cursor_pos"(rx29_pos)
    $P10 = rx29_cur."name"()
    unless $P10, rx29_fail
    rx29_pos = $P10."pos"()
    rx29_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("base")
  # rx subrule "ws" subtype=method negate=
    rx29_cur."!cursor_pos"(rx29_pos)
    $P10 = rx29_cur."ws"()
    unless $P10, rx29_fail
    rx29_pos = $P10."pos"()
    rx29_cur."!mark_push"(0, -1, 0, $P10)
    (rx29_rep) = rx29_cur."!mark_commit"($I37)
  rxquantr33_done:
  # rx subrule "ws" subtype=method negate=
    rx29_cur."!cursor_pos"(rx29_pos)
    $P10 = rx29_cur."ws"()
    unless $P10, rx29_fail
    rx29_pos = $P10."pos"()
    rx29_cur."!mark_push"(0, -1, 0, $P10)
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
    rx29_pos = $P10."pos"()
    rx29_cur."!mark_push"(0, -1, 0, $P10)
  # rx subrule "ws" subtype=method negate=
    rx29_cur."!cursor_pos"(rx29_pos)
    $P10 = rx29_cur."ws"()
    unless $P10, rx29_fail
    rx29_pos = $P10."pos"()
    rx29_cur."!mark_push"(0, -1, 0, $P10)
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
.sub "regex_stmt"  :subid("15_1255762349") :method :outer("10_1255762349")
.annotate "line", 21
    .local string rx42_tgt
    .local int rx42_pos
    .local int rx42_off
    .local int rx42_eos
    .local int rx42_rep
    .local pmc rx42_cur
    (rx42_cur, rx42_pos, rx42_tgt, $I10) = self."!cursor_start"()
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
    rx42_cur."!mark_push"(0, -1, 0, $P10)
.annotate "line", 22
  # rx subcapture "sym"
    set_addr $I10, rxcap_45_fail
    rx42_cur."!mark_push"(0, rx42_pos, $I10)
  alt44_0:
    set_addr $I10, alt44_1
    rx42_cur."!mark_push"(0, rx42_pos, $I10)
  # rx literal  "regex"
    add $I11, rx42_pos, 5
    gt $I11, rx42_eos, rx42_fail
    sub $I11, rx42_pos, rx42_off
    substr $S10, rx42_tgt, $I11, 5
    ne $S10, "regex", rx42_fail
    add rx42_pos, 5
    goto alt44_end
  alt44_1:
    set_addr $I10, alt44_2
    rx42_cur."!mark_push"(0, rx42_pos, $I10)
  # rx literal  "token"
    add $I11, rx42_pos, 5
    gt $I11, rx42_eos, rx42_fail
    sub $I11, rx42_pos, rx42_off
    substr $S10, rx42_tgt, $I11, 5
    ne $S10, "token", rx42_fail
    add rx42_pos, 5
    goto alt44_end
  alt44_2:
  # rx literal  "rule"
    add $I11, rx42_pos, 4
    gt $I11, rx42_eos, rx42_fail
    sub $I11, rx42_pos, rx42_off
    substr $S10, rx42_tgt, $I11, 4
    ne $S10, "rule", rx42_fail
    add rx42_pos, 4
  alt44_end:
    set_addr $I10, rxcap_45_fail
    ($I12, $I11) = rx42_cur."!mark_peek"($I10)
    rx42_cur."!cursor_pos"($I11)
    ($P10) = rx42_cur."!cursor_start"()
    $P10."!cursor_pass"(rx42_pos, "")
    rx42_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_45_done
  rxcap_45_fail:
    goto rx42_fail
  rxcap_45_done:
  # rx subrule "ws" subtype=method negate=
    rx42_cur."!cursor_pos"(rx42_pos)
    $P10 = rx42_cur."ws"()
    unless $P10, rx42_fail
    rx42_pos = $P10."pos"()
    rx42_cur."!mark_push"(0, -1, 0, $P10)
.annotate "line", 23
  # rx subrule "longname" subtype=capture negate=
    rx42_cur."!cursor_pos"(rx42_pos)
    $P10 = rx42_cur."longname"()
    unless $P10, rx42_fail
    rx42_pos = $P10."pos"()
    rx42_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("longname")
  # rx subrule "ws" subtype=method negate=
    rx42_cur."!cursor_pos"(rx42_pos)
    $P10 = rx42_cur."ws"()
    unless $P10, rx42_fail
    rx42_pos = $P10."pos"()
    rx42_cur."!mark_push"(0, -1, 0, $P10)
.annotate "line", 24
  # rx reduce name="regex_stmt" key="open"
    rx42_cur."!cursor_pos"(rx42_pos)
    rx42_cur."!reduce"("regex_stmt", "open")
  # rx subrule "ws" subtype=method negate=
    rx42_cur."!cursor_pos"(rx42_pos)
    $P10 = rx42_cur."ws"()
    unless $P10, rx42_fail
    rx42_pos = $P10."pos"()
    rx42_cur."!mark_push"(0, -1, 0, $P10)
.annotate "line", 25
  # rx literal  "{"
    add $I11, rx42_pos, 1
    gt $I11, rx42_eos, rx42_fail
    sub $I11, rx42_pos, rx42_off
    substr $S10, rx42_tgt, $I11, 1
    ne $S10, "{", rx42_fail
    add rx42_pos, 1
  # rx subrule "nibbler" subtype=capture negate=
    rx42_cur."!cursor_pos"(rx42_pos)
    $P10 = rx42_cur."nibbler"()
    unless $P10, rx42_fail
    rx42_pos = $P10."pos"()
    rx42_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("nibbler")
  # rx literal  "}"
    add $I11, rx42_pos, 1
    gt $I11, rx42_eos, rx42_fail
    sub $I11, rx42_pos, rx42_off
    substr $S10, rx42_tgt, $I11, 1
    ne $S10, "}", rx42_fail
    add rx42_pos, 1
  # rx subrule "ws" subtype=method negate=
    rx42_cur."!cursor_pos"(rx42_pos)
    $P10 = rx42_cur."ws"()
    unless $P10, rx42_fail
    rx42_pos = $P10."pos"()
    rx42_cur."!mark_push"(0, -1, 0, $P10)
.annotate "line", 26
  # rx subrule "ws" subtype=method negate=
    rx42_cur."!cursor_pos"(rx42_pos)
    $P10 = rx42_cur."ws"()
    unless $P10, rx42_fail
    rx42_pos = $P10."pos"()
    rx42_cur."!mark_push"(0, -1, 0, $P10)
.annotate "line", 21
  # rx pass
    rx42_cur."!cursor_pass"(rx42_pos, "regex_stmt")
    .return (rx42_cur)
  rx42_fail:
    (rx42_rep, rx42_pos, $I10, $P10) = rx42_cur."!mark_fail"(0)
    lt rx42_pos, -1, rx42_done
    eq rx42_pos, -1, rx42_fail
    jump $I10
  rx42_done:
    rx42_cur."!cursor_fail"()
    .return (rx42_cur)
    .return ()
.end

### .include 'src/gen/p6grammar-actions.pir'

.namespace []
.sub "_block11"  :anon :subid("10_1255761751")
.annotate "line", 3
    get_hll_global $P14, ["Regex";"P6Grammar";"Actions"], "_block13" 
.annotate "line", 1
    .return ($P14)
.end


.namespace ["Regex";"P6Grammar";"Actions"]
.sub "_block13" :init :load :subid("11_1255761751")
.annotate "line", 3
    .const 'Sub' $P83 = "15_1255761751" 
    capture_lex $P83
    .const 'Sub' $P44 = "14_1255761751" 
    capture_lex $P44
    .const 'Sub' $P16 = "12_1255761751" 
    capture_lex $P16
    get_hll_global $P15, "P6metaclass"
    $P15."new_class"("Regex::P6Grammar::Actions", "Regex::P6Regex::Actions" :named("parent"))
.annotate "line", 30
    .const 'Sub' $P83 = "15_1255761751" 
    capture_lex $P83
.annotate "line", 3
    .return ($P83)
.end


.namespace ["Regex";"P6Grammar";"Actions"]
.sub "TOP"  :subid("12_1255761751") :method :outer("11_1255761751")
    .param pmc param_19
.annotate "line", 3
    .const 'Sub' $P29 = "13_1255761751" 
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
    unless_null $P21, vivify_19
    new $P21, "Undef"
  vivify_19:
    $P22 = $P21."ast"()
    .lex "$past", $P22
.annotate "line", 5
    find_lex $P24, "$/"
    set $P25, $P24["regex_stmt"]
    unless_null $P25, vivify_20
    new $P25, "Undef"
  vivify_20:
    defined $I26, $P25
    unless $I26, for_undef_21
    iter $P23, $P25
    new $P36, 'ExceptionHandler'
    set_addr $P36, loop35_handler
    $P36."handle_types"(65, 67, 66)
    push_eh $P36
  loop35_test:
    unless $P23, loop35_done
    shift $P27, $P23
  loop35_redo:
    .const 'Sub' $P29 = "13_1255761751" 
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
  for_undef_21:
.annotate "line", 8
    find_lex $P38, "$past"
    unless_null $P38, vivify_24
    new $P38, "Undef"
  vivify_24:
    find_lex $P39, "$/"
    unless_null $P39, vivify_25
    new $P39, "Undef"
  vivify_25:
    $P38."node"($P39)
    find_lex $P40, "$/"
.annotate "line", 9
    find_lex $P41, "$past"
    unless_null $P41, vivify_26
    new $P41, "Undef"
  vivify_26:
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
.sub "_block28"  :anon :subid("13_1255761751") :outer("12_1255761751")
    .param pmc param_30
.annotate "line", 5
    .lex "$_", param_30
.annotate "line", 6
    find_lex $P31, "$past"
    unless_null $P31, vivify_22
    new $P31, "Undef"
  vivify_22:
    find_lex $P32, "$_"
    unless_null $P32, vivify_23
    new $P32, "Undef"
  vivify_23:
    $P33 = $P32."ast"()
    $P34 = $P31."push"($P33)
.annotate "line", 5
    .return ($P34)
.end


.namespace ["Regex";"P6Grammar";"Actions"]
.sub "grammar_stmt"  :subid("14_1255761751") :method :outer("11_1255761751")
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
    unless_null $P50, vivify_27
    new $P50, "Undef"
  vivify_27:
    set $S51, $P50
    $P52 = $P48."parse_name"($S51)
    .lex "@ns", $P52
.annotate "line", 15
    get_hll_global $P53, ["PAST"], "Block"
    find_lex $P54, "@ns"
    unless_null $P54, vivify_28
    new $P54, "ResizablePMCArray"
  vivify_28:
    find_lex $P55, "$/"
    unless_null $P55, vivify_29
    new $P55, "Undef"
  vivify_29:
    $P56 = $P53."new"($P54 :named("namespace"), $P55 :named("node"))
    .lex "$past", $P56
.annotate "line", 16
    find_lex $P59, "$/"
    set $P60, $P59["base"]
    unless_null $P60, vivify_30
    new $P60, "Undef"
  vivify_30:
    if $P60, if_58
    new $P65, "String"
    assign $P65, "Regex::Cursor"
    set $P57, $P65
    goto if_58_end
  if_58:
    find_lex $P61, "$/"
    set $P62, $P61["base"]
    unless_null $P62, vivify_31
    new $P62, "ResizablePMCArray"
  vivify_31:
    set $P63, $P62[0]
    unless_null $P63, vivify_32
    new $P63, "Undef"
  vivify_32:
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
    unless_null $P70, vivify_33
    new $P70, "Undef"
  vivify_33:
    set $S71, $P70
.annotate "line", 22
    get_hll_global $P72, ["PAST"], "Val"
    find_lex $P73, "$parent"
    unless_null $P73, vivify_34
    new $P73, "Undef"
  vivify_34:
    $P74 = $P72."new"($P73 :named("value"), "parent" :named("named"))
.annotate "line", 23
    find_lex $P75, "$/"
    unless_null $P75, vivify_35
    new $P75, "Undef"
  vivify_35:
    $P76 = $P66."new"($P68, $S71, $P74, "callmethod" :named("pasttype"), "new_class" :named("name"), $P75 :named("node"))
.annotate "line", 18
    .lex "$init", $P76
.annotate "line", 25
    find_lex $P77, "$past"
    unless_null $P77, vivify_36
    new $P77, "Undef"
  vivify_36:
    find_lex $P78, "$init"
    unless_null $P78, vivify_37
    new $P78, "Undef"
  vivify_37:
    $P77."loadinit"($P78)
    find_lex $P79, "$/"
.annotate "line", 26
    find_lex $P80, "$past"
    unless_null $P80, vivify_38
    new $P80, "Undef"
  vivify_38:
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
.sub "regex_stmt"  :subid("15_1255761751") :method :outer("11_1255761751")
    .param pmc param_86
    .param pmc param_87 :optional
    .param int has_param_87 :opt_flag
.annotate "line", 30
    .const 'Sub' $P95 = "16_1255761751" 
    capture_lex $P95
    new $P85, 'ExceptionHandler'
    set_addr $P85, control_84
    $P85."handle_types"(58)
    push_eh $P85
    .lex "self", self
    .lex "$/", param_86
    if has_param_87, optparam_39
    new $P88, "Undef"
    set param_87, $P88
  optparam_39:
    .lex "$key", param_87
.annotate "line", 31
 
        $P89 = get_hll_global ['Regex';'P6Regex';'Actions'], '@MODIFIERS'
    
    .lex "@MODIFIERS", $P89
.annotate "line", 34
    find_lex $P91, "$key"
    unless_null $P91, vivify_40
    new $P91, "Undef"
  vivify_40:
    set $S92, $P91
    iseq $I93, $S92, "open"
    unless $I93, if_90_end
    .const 'Sub' $P95 = "16_1255761751" 
    capture_lex $P95
    $P95()
  if_90_end:
.annotate "line", 41
    find_lex $P121, "$/"
    set $P122, $P121["nibbler"]
    unless_null $P122, vivify_48
    new $P122, "Undef"
  vivify_48:
    $P123 = $P122."ast"()
    .lex "$rpast", $P123
.annotate "line", 42
    get_hll_global $P124, ["Regex";"P6Regex";"Actions"], "capnames"
    find_lex $P125, "$rpast"
    unless_null $P125, vivify_49
    new $P125, "Undef"
  vivify_49:
    $P126 = $P124($P125, 0)
    .lex "%capnames", $P126
.annotate "line", 43
    new $P127, "Integer"
    assign $P127, 0
    find_lex $P128, "%capnames"
    unless_null $P128, vivify_50
    new $P128, "Hash"
    store_lex "%capnames", $P128
  vivify_50:
    set $P128[""], $P127
.annotate "line", 44
    get_hll_global $P129, ["PAST"], "Regex"
.annotate "line", 45
    find_lex $P130, "$rpast"
    unless_null $P130, vivify_51
    new $P130, "Undef"
  vivify_51:
.annotate "line", 46
    get_hll_global $P131, ["PAST"], "Regex"
    $P132 = $P131."new"("pass" :named("pasttype"))
.annotate "line", 48
    find_lex $P133, "%capnames"
    unless_null $P133, vivify_52
    new $P133, "Hash"
  vivify_52:
    $P134 = $P129."new"($P130, $P132, "concat" :named("pasttype"), $P133 :named("capnames"))
.annotate "line", 44
    store_lex "$rpast", $P134
.annotate "line", 50
    get_hll_global $P135, ["PAST"], "Block"
    find_lex $P136, "$rpast"
    unless_null $P136, vivify_53
    new $P136, "Undef"
  vivify_53:
    find_lex $P137, "$/"
    set $P138, $P137["longname"]
    unless_null $P138, vivify_54
    new $P138, "Undef"
  vivify_54:
    set $S139, $P138
    find_lex $P140, "$/"
    unless_null $P140, vivify_55
    new $P140, "Undef"
  vivify_55:
    $P141 = $P135."new"($P136, $S139 :named("name"), "method" :named("blocktype"), $P140 :named("node"))
    .lex "$past", $P141
.annotate "line", 51
    find_lex $P142, "@MODIFIERS"
    unless_null $P142, vivify_56
    new $P142, "ResizablePMCArray"
  vivify_56:
    $P142."shift"()
    find_lex $P143, "$/"
.annotate "line", 52
    find_lex $P144, "$past"
    unless_null $P144, vivify_57
    new $P144, "Undef"
  vivify_57:
    $P145 = $P143."!make"($P144)
.annotate "line", 30
    .return ($P145)
  control_84:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P146, exception, "payload"
    .return ($P146)
    rethrow exception
.end


.namespace ["Regex";"P6Grammar";"Actions"]
.sub "_block94"  :anon :subid("16_1255761751") :outer("15_1255761751")
.annotate "line", 34
    .const 'Sub' $P112 = "18_1255761751" 
    capture_lex $P112
    .const 'Sub' $P103 = "17_1255761751" 
    capture_lex $P103
.annotate "line", 35
    new $P96, "Hash"
    .lex "%h", $P96
.annotate "line", 36
    find_lex $P98, "$/"
    set $P99, $P98["sym"]
    unless_null $P99, vivify_41
    new $P99, "Undef"
  vivify_41:
    set $S100, $P99
    iseq $I101, $S100, "token"
    unless $I101, if_97_end
    .const 'Sub' $P103 = "17_1255761751" 
    capture_lex $P103
    $P103()
  if_97_end:
.annotate "line", 37
    find_lex $P107, "$/"
    set $P108, $P107["sym"]
    unless_null $P108, vivify_43
    new $P108, "Undef"
  vivify_43:
    set $S109, $P108
    iseq $I110, $S109, "rule"
    unless $I110, if_106_end
    .const 'Sub' $P112 = "18_1255761751" 
    capture_lex $P112
    $P112()
  if_106_end:
.annotate "line", 38
    find_lex $P117, "@MODIFIERS"
    unless_null $P117, vivify_46
    new $P117, "ResizablePMCArray"
  vivify_46:
    find_lex $P118, "%h"
    unless_null $P118, vivify_47
    new $P118, "Hash"
  vivify_47:
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
.sub "_block102"  :anon :subid("17_1255761751") :outer("16_1255761751")
.annotate "line", 36
    new $P104, "Integer"
    assign $P104, 1
    find_lex $P105, "%h"
    unless_null $P105, vivify_42
    new $P105, "Hash"
    store_lex "%h", $P105
  vivify_42:
    set $P105["r"], $P104
    .return ($P104)
.end


.namespace ["Regex";"P6Grammar";"Actions"]
.sub "_block111"  :anon :subid("18_1255761751") :outer("16_1255761751")
.annotate "line", 37
    new $P113, "Integer"
    assign $P113, 1
    find_lex $P114, "%h"
    unless_null $P114, vivify_44
    new $P114, "Hash"
    store_lex "%h", $P114
  vivify_44:
    set $P114["r"], $P113
    new $P115, "Integer"
    assign $P115, 1
    find_lex $P116, "%h"
    unless_null $P116, vivify_45
    new $P116, "Hash"
    store_lex "%h", $P116
  vivify_45:
    set $P116["s"], $P115
    .return ($P115)
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


.sub '' :anon :load :init
    .local pmc p6grammar
    p6grammar = get_hll_global ['Regex';'P6Grammar'], 'Grammar'
    $P0 = get_hll_global ['PGE';'Perl6Regex'], 'regex'
    $P1 = get_class ['Regex';'P6Grammar';'Grammar']
    $P1.'add_method'('regex', $P0)
.end

=cut

# Local Variables:
#   mode: pir
#   fill-column: 100
# End:
# vim: expandtab shiftwidth=4 ft=pir:
