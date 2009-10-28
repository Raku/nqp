# Copyright (C) 2009 Patrick R. Michaud

=head1 TITLE

src/cheats/hll-grammar.pir -- Additional HLL::Grammar methods

=head2 Methods

=over 4

=cut


.include 'cclass.pasm'
### .include 'src/Regex/constants.pir'
.const int CURSOR_FAIL = -1
.const int CURSOR_FAIL_GROUP = -2
.const int CURSOR_FAIL_RULE = -3
.const int CURSOR_FAIL_MATCH = -4

.const int CURSOR_TYPE_SCAN = 1
.const int CURSOR_TYPE_PEEK = 2

.namespace ['HLL';'Grammar']

.sub '' :load :init
    load_bytecode 'P6Regex.pbc'

    .local pmc brackets
    brackets = box unicode:"<>[](){}\xab\xbb\u0f3a\u0f3b\u0f3c\u0f3d\u169b\u169c\u2045\u2046\u207d\u207e\u208d\u208e\u2329\u232a\u2768\u2769\u276a\u276b\u276c\u276d\u276e\u276f\u2770\u2771\u2772\u2773\u2774\u2775\u27c5\u27c6\u27e6\u27e7\u27e8\u27e9\u27ea\u27eb\u2983\u2984\u2985\u2986\u2987\u2988\u2989\u298a\u298b\u298c\u298d\u298e\u298f\u2990\u2991\u2992\u2993\u2994\u2995\u2996\u2997\u2998\u29d8\u29d9\u29da\u29db\u29fc\u29fd\u3008\u3009\u300a\u300b\u300c\u300d\u300e\u300f\u3010\u3011\u3014\u3015\u3016\u3017\u3018\u3019\u301a\u301b\u301d\u301e\ufd3e\ufd3f\ufe17\ufe18\ufe35\ufe36\ufe37\ufe38\ufe39\ufe3a\ufe3b\ufe3c\ufe3d\ufe3e\ufe3f\ufe40\ufe41\ufe42\ufe43\ufe44\ufe47\ufe48\ufe59\ufe5a\ufe5b\ufe5c\ufe5d\ufe5e\uff08\uff09\uff3b\uff3d\uff5b\uff5d\uff5f\uff60\uff62\uff63"
    set_global '$!brackets', brackets
.end


### .include 'src/gen/hll-grammar.pir'

.namespace ["HLL";"Grammar"]
.sub "_block11"  :subid("10_1256752482.92984")
.annotate "line", 0
    .const 'Sub' $P197 = "74_1256752482.92984" 
    capture_lex $P197
    .const 'Sub' $P191 = "72_1256752482.92984" 
    capture_lex $P191
    .const 'Sub' $P179 = "69_1256752482.92984" 
    capture_lex $P179
    .const 'Sub' $P175 = "67_1256752482.92984" 
    capture_lex $P175
    .const 'Sub' $P170 = "65_1256752482.92984" 
    capture_lex $P170
    .const 'Sub' $P165 = "63_1256752482.92984" 
    capture_lex $P165
    .const 'Sub' $P161 = "61_1256752482.92984" 
    capture_lex $P161
    .const 'Sub' $P157 = "59_1256752482.92984" 
    capture_lex $P157
    .const 'Sub' $P153 = "57_1256752482.92984" 
    capture_lex $P153
    .const 'Sub' $P149 = "55_1256752482.92984" 
    capture_lex $P149
    .const 'Sub' $P145 = "53_1256752482.92984" 
    capture_lex $P145
    .const 'Sub' $P141 = "51_1256752482.92984" 
    capture_lex $P141
    .const 'Sub' $P118 = "47_1256752482.92984" 
    capture_lex $P118
    .const 'Sub' $P112 = "45_1256752482.92984" 
    capture_lex $P112
    .const 'Sub' $P104 = "43_1256752482.92984" 
    capture_lex $P104
    .const 'Sub' $P98 = "41_1256752482.92984" 
    capture_lex $P98
    .const 'Sub' $P90 = "39_1256752482.92984" 
    capture_lex $P90
    .const 'Sub' $P81 = "37_1256752482.92984" 
    capture_lex $P81
    .const 'Sub' $P74 = "35_1256752482.92984" 
    capture_lex $P74
    .const 'Sub' $P67 = "33_1256752482.92984" 
    capture_lex $P67
    .const 'Sub' $P62 = "31_1256752482.92984" 
    capture_lex $P62
    .const 'Sub' $P57 = "29_1256752482.92984" 
    capture_lex $P57
    .const 'Sub' $P52 = "27_1256752482.92984" 
    capture_lex $P52
    .const 'Sub' $P20 = "13_1256752482.92984" 
    capture_lex $P20
    .const 'Sub' $P13 = "11_1256752482.92984" 
    capture_lex $P13
.annotate "line", 83
    .const 'Sub' $P197 = "74_1256752482.92984" 
    capture_lex $P197
.annotate "line", 1
    .return ($P197)
.end


.namespace ["HLL";"Grammar"]
.sub "" :load :init :subid("post76") :outer("10_1256752482.92984")
.annotate "line", 0
    get_hll_global $P12, ["HLL";"Grammar"], "_block11" 
    .local pmc block
    set block, $P12
.annotate "line", 1
    get_hll_global $P206, "P6metaclass"
    $P206."new_class"("HLL::Grammar", "Regex::Cursor" :named("parent"))
.end


.namespace ["HLL";"Grammar"]
.sub "ws"  :subid("11_1256752482.92984") :method :outer("10_1256752482.92984")
.annotate "line", 5
    .local string rx14_tgt
    .local int rx14_pos
    .local int rx14_off
    .local int rx14_eos
    .local int rx14_rep
    .local pmc rx14_cur
    (rx14_cur, rx14_pos, rx14_tgt, $I10) = self."!cursor_start"()
    rx14_cur."!cursor_debug"("START ", "ws")
    .lex unicode:"$\x{a2}", rx14_cur
    length rx14_eos, rx14_tgt
    set rx14_off, 0
    lt $I10, 2, rx14_start
    sub rx14_off, $I10, 1
    substr rx14_tgt, rx14_tgt, rx14_off
  rx14_start:
  # rx subrule "ww" subtype=zerowidth negate=1
    rx14_cur."!cursor_pos"(rx14_pos)
    $P10 = rx14_cur."ww"()
    if $P10, rx14_fail
  # rx rxquantr17 ** 0..*
    set_addr $I19, rxquantr17_done
    rx14_cur."!mark_push"(0, rx14_pos, $I19)
  rxquantr17_loop:
  alt18_0:
    set_addr $I10, alt18_1
    rx14_cur."!mark_push"(0, rx14_pos, $I10)
  # rx charclass_q s r 1..-1
    sub $I10, rx14_pos, rx14_off
    find_not_cclass $I11, 32, rx14_tgt, $I10, rx14_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx14_fail
    add rx14_pos, rx14_off, $I11
    goto alt18_end
  alt18_1:
  # rx literal  "#"
    add $I11, rx14_pos, 1
    gt $I11, rx14_eos, rx14_fail
    sub $I11, rx14_pos, rx14_off
    substr $S10, rx14_tgt, $I11, 1
    ne $S10, "#", rx14_fail
    add rx14_pos, 1
  # rx charclass_q N r 0..-1
    sub $I10, rx14_pos, rx14_off
    find_cclass $I11, 4096, rx14_tgt, $I10, rx14_eos
    add rx14_pos, rx14_off, $I11
  alt18_end:
    (rx14_rep) = rx14_cur."!mark_commit"($I19)
    rx14_cur."!mark_push"(rx14_rep, rx14_pos, $I19)
    goto rxquantr17_loop
  rxquantr17_done:
  # rx pass
    rx14_cur."!cursor_pass"(rx14_pos, "ws")
    rx14_cur."!cursor_debug"("PASS  ", "ws", " at pos=", rx14_pos)
    .return (rx14_cur)
  rx14_fail:
    (rx14_rep, rx14_pos, $I10, $P10) = rx14_cur."!mark_fail"(0)
    lt rx14_pos, -1, rx14_done
    eq rx14_pos, -1, rx14_fail
    jump $I10
  rx14_done:
    rx14_cur."!cursor_fail"()
    rx14_cur."!cursor_debug"("FAIL  ", "ws")
    .return (rx14_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__ws"  :subid("12_1256752482.92984") :method
.annotate "line", 5
    new $P16, "ResizablePMCArray"
    push $P16, ""
    .return ($P16)
.end


.namespace ["HLL";"Grammar"]
.sub "termish"  :subid("13_1256752482.92984") :method :outer("10_1256752482.92984")
.annotate "line", 7
    .local string rx21_tgt
    .local int rx21_pos
    .local int rx21_off
    .local int rx21_eos
    .local int rx21_rep
    .local pmc rx21_cur
    (rx21_cur, rx21_pos, rx21_tgt, $I10) = self."!cursor_start"()
    rx21_cur."!cursor_debug"("START ", "termish")
    rx21_cur."!cursor_caparray"("prefixish", "postfixish")
    .lex unicode:"$\x{a2}", rx21_cur
    length rx21_eos, rx21_tgt
    set rx21_off, 0
    lt $I10, 2, rx21_start
    sub rx21_off, $I10, 1
    substr rx21_tgt, rx21_tgt, rx21_off
  rx21_start:
.annotate "line", 8
  # rx rxquantr24 ** 0..*
    set_addr $I25, rxquantr24_done
    rx21_cur."!mark_push"(0, rx21_pos, $I25)
  rxquantr24_loop:
  # rx subrule "prefixish" subtype=capture negate=
    rx21_cur."!cursor_pos"(rx21_pos)
    $P10 = rx21_cur."prefixish"()
    unless $P10, rx21_fail
    rx21_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("prefixish")
    rx21_pos = $P10."pos"()
    (rx21_rep) = rx21_cur."!mark_commit"($I25)
    rx21_cur."!mark_push"(rx21_rep, rx21_pos, $I25)
    goto rxquantr24_loop
  rxquantr24_done:
.annotate "line", 9
  # rx subrule "term" subtype=capture negate=
    rx21_cur."!cursor_pos"(rx21_pos)
    $P10 = rx21_cur."term"()
    unless $P10, rx21_fail
    rx21_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("term")
    rx21_pos = $P10."pos"()
.annotate "line", 10
  # rx rxquantr26 ** 0..*
    set_addr $I27, rxquantr26_done
    rx21_cur."!mark_push"(0, rx21_pos, $I27)
  rxquantr26_loop:
  # rx subrule "postfixish" subtype=capture negate=
    rx21_cur."!cursor_pos"(rx21_pos)
    $P10 = rx21_cur."postfixish"()
    unless $P10, rx21_fail
    rx21_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("postfixish")
    rx21_pos = $P10."pos"()
    (rx21_rep) = rx21_cur."!mark_commit"($I27)
    rx21_cur."!mark_push"(rx21_rep, rx21_pos, $I27)
    goto rxquantr26_loop
  rxquantr26_done:
.annotate "line", 7
  # rx pass
    rx21_cur."!cursor_pass"(rx21_pos, "termish")
    rx21_cur."!cursor_debug"("PASS  ", "termish", " at pos=", rx21_pos)
    .return (rx21_cur)
  rx21_fail:
    (rx21_rep, rx21_pos, $I10, $P10) = rx21_cur."!mark_fail"(0)
    lt rx21_pos, -1, rx21_done
    eq rx21_pos, -1, rx21_fail
    jump $I10
  rx21_done:
    rx21_cur."!cursor_fail"()
    rx21_cur."!cursor_debug"("FAIL  ", "termish")
    .return (rx21_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__termish"  :subid("14_1256752482.92984") :method
.annotate "line", 7
    new $P23, "ResizablePMCArray"
    push $P23, ""
    .return ($P23)
.end


.namespace ["HLL";"Grammar"]
.sub "term"  :subid("15_1256752482.92984") :method
.annotate "line", 13
    $P29 = self."!protoregex"("term")
    .return ($P29)
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__term"  :subid("16_1256752482.92984") :method
.annotate "line", 13
    $P31 = self."!PREFIX__!protoregex"("term")
    .return ($P31)
.end


.namespace ["HLL";"Grammar"]
.sub "infix"  :subid("17_1256752482.92984") :method
.annotate "line", 14
    $P33 = self."!protoregex"("infix")
    .return ($P33)
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__infix"  :subid("18_1256752482.92984") :method
.annotate "line", 14
    $P35 = self."!PREFIX__!protoregex"("infix")
    .return ($P35)
.end


.namespace ["HLL";"Grammar"]
.sub "prefix"  :subid("19_1256752482.92984") :method
.annotate "line", 15
    $P37 = self."!protoregex"("prefix")
    .return ($P37)
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__prefix"  :subid("20_1256752482.92984") :method
.annotate "line", 15
    $P39 = self."!PREFIX__!protoregex"("prefix")
    .return ($P39)
.end


.namespace ["HLL";"Grammar"]
.sub "postfix"  :subid("21_1256752482.92984") :method
.annotate "line", 16
    $P41 = self."!protoregex"("postfix")
    .return ($P41)
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postfix"  :subid("22_1256752482.92984") :method
.annotate "line", 16
    $P43 = self."!PREFIX__!protoregex"("postfix")
    .return ($P43)
.end


.namespace ["HLL";"Grammar"]
.sub "circumfix"  :subid("23_1256752482.92984") :method
.annotate "line", 17
    $P45 = self."!protoregex"("circumfix")
    .return ($P45)
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__circumfix"  :subid("24_1256752482.92984") :method
.annotate "line", 17
    $P47 = self."!PREFIX__!protoregex"("circumfix")
    .return ($P47)
.end


.namespace ["HLL";"Grammar"]
.sub "postcircumfix"  :subid("25_1256752482.92984") :method
.annotate "line", 18
    $P49 = self."!protoregex"("postcircumfix")
    .return ($P49)
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postcircumfix"  :subid("26_1256752482.92984") :method
.annotate "line", 18
    $P51 = self."!PREFIX__!protoregex"("postcircumfix")
    .return ($P51)
.end


.namespace ["HLL";"Grammar"]
.sub "term:sym<circumfix>"  :subid("27_1256752482.92984") :method :outer("10_1256752482.92984")
.annotate "line", 20
    .local string rx53_tgt
    .local int rx53_pos
    .local int rx53_off
    .local int rx53_eos
    .local int rx53_rep
    .local pmc rx53_cur
    (rx53_cur, rx53_pos, rx53_tgt, $I10) = self."!cursor_start"()
    rx53_cur."!cursor_debug"("START ", "term:sym<circumfix>")
    .lex unicode:"$\x{a2}", rx53_cur
    length rx53_eos, rx53_tgt
    set rx53_off, 0
    lt $I10, 2, rx53_start
    sub rx53_off, $I10, 1
    substr rx53_tgt, rx53_tgt, rx53_off
  rx53_start:
  # rx subrule "circumfix" subtype=capture negate=
    rx53_cur."!cursor_pos"(rx53_pos)
    $P10 = rx53_cur."circumfix"()
    unless $P10, rx53_fail
    rx53_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("circumfix")
    rx53_pos = $P10."pos"()
  # rx pass
    rx53_cur."!cursor_pass"(rx53_pos, "term:sym<circumfix>")
    rx53_cur."!cursor_debug"("PASS  ", "term:sym<circumfix>", " at pos=", rx53_pos)
    .return (rx53_cur)
  rx53_fail:
    (rx53_rep, rx53_pos, $I10, $P10) = rx53_cur."!mark_fail"(0)
    lt rx53_pos, -1, rx53_done
    eq rx53_pos, -1, rx53_fail
    jump $I10
  rx53_done:
    rx53_cur."!cursor_fail"()
    rx53_cur."!cursor_debug"("FAIL  ", "term:sym<circumfix>")
    .return (rx53_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__term:sym<circumfix>"  :subid("28_1256752482.92984") :method
.annotate "line", 20
    $P55 = self."!PREFIX__!subrule"("circumfix", "")
    new $P56, "ResizablePMCArray"
    push $P56, $P55
    .return ($P56)
.end


.namespace ["HLL";"Grammar"]
.sub "infixish"  :subid("29_1256752482.92984") :method :outer("10_1256752482.92984")
.annotate "line", 22
    .local string rx58_tgt
    .local int rx58_pos
    .local int rx58_off
    .local int rx58_eos
    .local int rx58_rep
    .local pmc rx58_cur
    (rx58_cur, rx58_pos, rx58_tgt, $I10) = self."!cursor_start"()
    rx58_cur."!cursor_debug"("START ", "infixish")
    .lex unicode:"$\x{a2}", rx58_cur
    length rx58_eos, rx58_tgt
    set rx58_off, 0
    lt $I10, 2, rx58_start
    sub rx58_off, $I10, 1
    substr rx58_tgt, rx58_tgt, rx58_off
  rx58_start:
  # rx subrule "infix" subtype=capture negate=
    rx58_cur."!cursor_pos"(rx58_pos)
    $P10 = rx58_cur."infix"()
    unless $P10, rx58_fail
    rx58_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=infix")
    rx58_pos = $P10."pos"()
  # rx pass
    rx58_cur."!cursor_pass"(rx58_pos, "infixish")
    rx58_cur."!cursor_debug"("PASS  ", "infixish", " at pos=", rx58_pos)
    .return (rx58_cur)
  rx58_fail:
    (rx58_rep, rx58_pos, $I10, $P10) = rx58_cur."!mark_fail"(0)
    lt rx58_pos, -1, rx58_done
    eq rx58_pos, -1, rx58_fail
    jump $I10
  rx58_done:
    rx58_cur."!cursor_fail"()
    rx58_cur."!cursor_debug"("FAIL  ", "infixish")
    .return (rx58_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__infixish"  :subid("30_1256752482.92984") :method
.annotate "line", 22
    $P60 = self."!PREFIX__!subrule"("OPER=infix", "")
    new $P61, "ResizablePMCArray"
    push $P61, $P60
    .return ($P61)
.end


.namespace ["HLL";"Grammar"]
.sub "prefixish"  :subid("31_1256752482.92984") :method :outer("10_1256752482.92984")
.annotate "line", 23
    .local string rx63_tgt
    .local int rx63_pos
    .local int rx63_off
    .local int rx63_eos
    .local int rx63_rep
    .local pmc rx63_cur
    (rx63_cur, rx63_pos, rx63_tgt, $I10) = self."!cursor_start"()
    rx63_cur."!cursor_debug"("START ", "prefixish")
    .lex unicode:"$\x{a2}", rx63_cur
    length rx63_eos, rx63_tgt
    set rx63_off, 0
    lt $I10, 2, rx63_start
    sub rx63_off, $I10, 1
    substr rx63_tgt, rx63_tgt, rx63_off
  rx63_start:
  # rx subrule "prefix" subtype=capture negate=
    rx63_cur."!cursor_pos"(rx63_pos)
    $P10 = rx63_cur."prefix"()
    unless $P10, rx63_fail
    rx63_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=prefix")
    rx63_pos = $P10."pos"()
  # rx pass
    rx63_cur."!cursor_pass"(rx63_pos, "prefixish")
    rx63_cur."!cursor_debug"("PASS  ", "prefixish", " at pos=", rx63_pos)
    .return (rx63_cur)
  rx63_fail:
    (rx63_rep, rx63_pos, $I10, $P10) = rx63_cur."!mark_fail"(0)
    lt rx63_pos, -1, rx63_done
    eq rx63_pos, -1, rx63_fail
    jump $I10
  rx63_done:
    rx63_cur."!cursor_fail"()
    rx63_cur."!cursor_debug"("FAIL  ", "prefixish")
    .return (rx63_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__prefixish"  :subid("32_1256752482.92984") :method
.annotate "line", 23
    $P65 = self."!PREFIX__!subrule"("OPER=prefix", "")
    new $P66, "ResizablePMCArray"
    push $P66, $P65
    .return ($P66)
.end


.namespace ["HLL";"Grammar"]
.sub "postfixish"  :subid("33_1256752482.92984") :method :outer("10_1256752482.92984")
.annotate "line", 24
    .local string rx68_tgt
    .local int rx68_pos
    .local int rx68_off
    .local int rx68_eos
    .local int rx68_rep
    .local pmc rx68_cur
    (rx68_cur, rx68_pos, rx68_tgt, $I10) = self."!cursor_start"()
    rx68_cur."!cursor_debug"("START ", "postfixish")
    .lex unicode:"$\x{a2}", rx68_cur
    length rx68_eos, rx68_tgt
    set rx68_off, 0
    lt $I10, 2, rx68_start
    sub rx68_off, $I10, 1
    substr rx68_tgt, rx68_tgt, rx68_off
  rx68_start:
  alt73_0:
    set_addr $I10, alt73_1
    rx68_cur."!mark_push"(0, rx68_pos, $I10)
.annotate "line", 25
  # rx subrule "postfix" subtype=capture negate=
    rx68_cur."!cursor_pos"(rx68_pos)
    $P10 = rx68_cur."postfix"()
    unless $P10, rx68_fail
    rx68_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=postfix")
    rx68_pos = $P10."pos"()
    goto alt73_end
  alt73_1:
.annotate "line", 26
  # rx subrule "postcircumfix" subtype=capture negate=
    rx68_cur."!cursor_pos"(rx68_pos)
    $P10 = rx68_cur."postcircumfix"()
    unless $P10, rx68_fail
    rx68_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=postcircumfix")
    rx68_pos = $P10."pos"()
  alt73_end:
.annotate "line", 24
  # rx pass
    rx68_cur."!cursor_pass"(rx68_pos, "postfixish")
    rx68_cur."!cursor_debug"("PASS  ", "postfixish", " at pos=", rx68_pos)
    .return (rx68_cur)
  rx68_fail:
    (rx68_rep, rx68_pos, $I10, $P10) = rx68_cur."!mark_fail"(0)
    lt rx68_pos, -1, rx68_done
    eq rx68_pos, -1, rx68_fail
    jump $I10
  rx68_done:
    rx68_cur."!cursor_fail"()
    rx68_cur."!cursor_debug"("FAIL  ", "postfixish")
    .return (rx68_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postfixish"  :subid("34_1256752482.92984") :method
.annotate "line", 24
    $P70 = self."!PREFIX__!subrule"("OPER=postcircumfix", "")
    $P71 = self."!PREFIX__!subrule"("OPER=postfix", "")
    new $P72, "ResizablePMCArray"
    push $P72, $P70
    push $P72, $P71
    .return ($P72)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_delimited"  :subid("35_1256752482.92984") :method :outer("10_1256752482.92984")
.annotate "line", 30
    .local string rx75_tgt
    .local int rx75_pos
    .local int rx75_off
    .local int rx75_eos
    .local int rx75_rep
    .local pmc rx75_cur
    (rx75_cur, rx75_pos, rx75_tgt, $I10) = self."!cursor_start"()
    rx75_cur."!cursor_debug"("START ", "quote_delimited")
    rx75_cur."!cursor_caparray"("quote_atom")
    .lex unicode:"$\x{a2}", rx75_cur
    length rx75_eos, rx75_tgt
    set rx75_off, 0
    lt $I10, 2, rx75_start
    sub rx75_off, $I10, 1
    substr rx75_tgt, rx75_tgt, rx75_off
  rx75_start:
.annotate "line", 31
  # rx subrule "starter" subtype=capture negate=
    rx75_cur."!cursor_pos"(rx75_pos)
    $P10 = rx75_cur."starter"()
    unless $P10, rx75_fail
    rx75_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("starter")
    rx75_pos = $P10."pos"()
  # rx rxquantr79 ** 0..*
    set_addr $I80, rxquantr79_done
    rx75_cur."!mark_push"(0, rx75_pos, $I80)
  rxquantr79_loop:
  # rx subrule "quote_atom" subtype=capture negate=
    rx75_cur."!cursor_pos"(rx75_pos)
    $P10 = rx75_cur."quote_atom"()
    unless $P10, rx75_fail
    rx75_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_atom")
    rx75_pos = $P10."pos"()
    (rx75_rep) = rx75_cur."!mark_commit"($I80)
    rx75_cur."!mark_push"(rx75_rep, rx75_pos, $I80)
    goto rxquantr79_loop
  rxquantr79_done:
  # rx subrule "stopper" subtype=capture negate=
    rx75_cur."!cursor_pos"(rx75_pos)
    $P10 = rx75_cur."stopper"()
    unless $P10, rx75_fail
    rx75_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("stopper")
    rx75_pos = $P10."pos"()
.annotate "line", 30
  # rx pass
    rx75_cur."!cursor_pass"(rx75_pos, "quote_delimited")
    rx75_cur."!cursor_debug"("PASS  ", "quote_delimited", " at pos=", rx75_pos)
    .return (rx75_cur)
  rx75_fail:
    (rx75_rep, rx75_pos, $I10, $P10) = rx75_cur."!mark_fail"(0)
    lt rx75_pos, -1, rx75_done
    eq rx75_pos, -1, rx75_fail
    jump $I10
  rx75_done:
    rx75_cur."!cursor_fail"()
    rx75_cur."!cursor_debug"("FAIL  ", "quote_delimited")
    .return (rx75_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_delimited"  :subid("36_1256752482.92984") :method
.annotate "line", 30
    $P77 = self."!PREFIX__!subrule"("starter", "")
    new $P78, "ResizablePMCArray"
    push $P78, $P77
    .return ($P78)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_atom"  :subid("37_1256752482.92984") :method :outer("10_1256752482.92984")
.annotate "line", 34
    .local string rx82_tgt
    .local int rx82_pos
    .local int rx82_off
    .local int rx82_eos
    .local int rx82_rep
    .local pmc rx82_cur
    (rx82_cur, rx82_pos, rx82_tgt, $I10) = self."!cursor_start"()
    rx82_cur."!cursor_debug"("START ", "quote_atom")
    .lex unicode:"$\x{a2}", rx82_cur
    length rx82_eos, rx82_tgt
    set rx82_off, 0
    lt $I10, 2, rx82_start
    sub rx82_off, $I10, 1
    substr rx82_tgt, rx82_tgt, rx82_off
  rx82_start:
.annotate "line", 35
  # rx subrule "stopper" subtype=zerowidth negate=1
    rx82_cur."!cursor_pos"(rx82_pos)
    $P10 = rx82_cur."stopper"()
    if $P10, rx82_fail
  alt85_0:
.annotate "line", 36
    set_addr $I10, alt85_1
    rx82_cur."!mark_push"(0, rx82_pos, $I10)
.annotate "line", 37
  # rx subrule "escape" subtype=capture negate=
    rx82_cur."!cursor_pos"(rx82_pos)
    $P10 = rx82_cur."escape"()
    unless $P10, rx82_fail
    rx82_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("escape")
    rx82_pos = $P10."pos"()
    goto alt85_end
  alt85_1:
.annotate "line", 38
  # rx rxquantr86 ** 1..*
    set_addr $I89, rxquantr86_done
    rx82_cur."!mark_push"(0, -1, $I89)
  rxquantr86_loop:
  # rx subrule "stopper" subtype=zerowidth negate=1
    rx82_cur."!cursor_pos"(rx82_pos)
    $P10 = rx82_cur."stopper"()
    if $P10, rx82_fail
  # rx subrule "escape" subtype=zerowidth negate=1
    rx82_cur."!cursor_pos"(rx82_pos)
    $P10 = rx82_cur."escape"()
    if $P10, rx82_fail
  # rx charclass .
    ge rx82_pos, rx82_eos, rx82_fail
    inc rx82_pos
    (rx82_rep) = rx82_cur."!mark_commit"($I89)
    rx82_cur."!mark_push"(rx82_rep, rx82_pos, $I89)
    goto rxquantr86_loop
  rxquantr86_done:
  alt85_end:
.annotate "line", 34
  # rx pass
    rx82_cur."!cursor_pass"(rx82_pos, "quote_atom")
    rx82_cur."!cursor_debug"("PASS  ", "quote_atom", " at pos=", rx82_pos)
    .return (rx82_cur)
  rx82_fail:
    (rx82_rep, rx82_pos, $I10, $P10) = rx82_cur."!mark_fail"(0)
    lt rx82_pos, -1, rx82_done
    eq rx82_pos, -1, rx82_fail
    jump $I10
  rx82_done:
    rx82_cur."!cursor_fail"()
    rx82_cur."!cursor_debug"("FAIL  ", "quote_atom")
    .return (rx82_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_atom"  :subid("38_1256752482.92984") :method
.annotate "line", 34
    new $P84, "ResizablePMCArray"
    push $P84, ""
    .return ($P84)
.end


.namespace ["HLL";"Grammar"]
.sub "hexint"  :subid("39_1256752482.92984") :method :outer("10_1256752482.92984")
.annotate "line", 42
    .local string rx91_tgt
    .local int rx91_pos
    .local int rx91_off
    .local int rx91_eos
    .local int rx91_rep
    .local pmc rx91_cur
    (rx91_cur, rx91_pos, rx91_tgt, $I10) = self."!cursor_start"()
    rx91_cur."!cursor_debug"("START ", "hexint")
    .lex unicode:"$\x{a2}", rx91_cur
    length rx91_eos, rx91_tgt
    set rx91_off, 0
    lt $I10, 2, rx91_start
    sub rx91_off, $I10, 1
    substr rx91_tgt, rx91_tgt, rx91_off
  rx91_start:
  # rx rxquantr94 ** 1..*
    set_addr $I97, rxquantr94_done
    rx91_cur."!mark_push"(0, -1, $I97)
  rxquantr94_loop:
  # rx rxquantr95 ** 1..*
    set_addr $I96, rxquantr95_done
    rx91_cur."!mark_push"(0, -1, $I96)
  rxquantr95_loop:
  # rx enumcharlist negate=0 
    ge rx91_pos, rx91_eos, rx91_fail
    sub $I10, rx91_pos, rx91_off
    substr $S10, rx91_tgt, $I10, 1
    index $I11, "0123456789abcdefABCDEF", $S10
    lt $I11, 0, rx91_fail
    inc rx91_pos
    (rx91_rep) = rx91_cur."!mark_commit"($I96)
    rx91_cur."!mark_push"(rx91_rep, rx91_pos, $I96)
    goto rxquantr95_loop
  rxquantr95_done:
    (rx91_rep) = rx91_cur."!mark_commit"($I97)
    rx91_cur."!mark_push"(rx91_rep, rx91_pos, $I97)
  # rx literal  "_"
    add $I11, rx91_pos, 1
    gt $I11, rx91_eos, rx91_fail
    sub $I11, rx91_pos, rx91_off
    substr $S10, rx91_tgt, $I11, 1
    ne $S10, "_", rx91_fail
    add rx91_pos, 1
    goto rxquantr94_loop
  rxquantr94_done:
  # rx pass
    rx91_cur."!cursor_pass"(rx91_pos, "hexint")
    rx91_cur."!cursor_debug"("PASS  ", "hexint", " at pos=", rx91_pos)
    .return (rx91_cur)
  rx91_fail:
    (rx91_rep, rx91_pos, $I10, $P10) = rx91_cur."!mark_fail"(0)
    lt rx91_pos, -1, rx91_done
    eq rx91_pos, -1, rx91_fail
    jump $I10
  rx91_done:
    rx91_cur."!cursor_fail"()
    rx91_cur."!cursor_debug"("FAIL  ", "hexint")
    .return (rx91_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__hexint"  :subid("40_1256752482.92984") :method
.annotate "line", 42
    new $P93, "ResizablePMCArray"
    push $P93, ""
    .return ($P93)
.end


.namespace ["HLL";"Grammar"]
.sub "hexints"  :subid("41_1256752482.92984") :method :outer("10_1256752482.92984")
.annotate "line", 43
    .local string rx99_tgt
    .local int rx99_pos
    .local int rx99_off
    .local int rx99_eos
    .local int rx99_rep
    .local pmc rx99_cur
    (rx99_cur, rx99_pos, rx99_tgt, $I10) = self."!cursor_start"()
    rx99_cur."!cursor_debug"("START ", "hexints")
    rx99_cur."!cursor_caparray"("hexint")
    .lex unicode:"$\x{a2}", rx99_cur
    length rx99_eos, rx99_tgt
    set rx99_off, 0
    lt $I10, 2, rx99_start
    sub rx99_off, $I10, 1
    substr rx99_tgt, rx99_tgt, rx99_off
  rx99_start:
  # rx rxquantr102 ** 1..*
    set_addr $I103, rxquantr102_done
    rx99_cur."!mark_push"(0, -1, $I103)
  rxquantr102_loop:
  # rx subrule "ws" subtype=method negate=
    rx99_cur."!cursor_pos"(rx99_pos)
    $P10 = rx99_cur."ws"()
    unless $P10, rx99_fail
    rx99_pos = $P10."pos"()
  # rx subrule "hexint" subtype=capture negate=
    rx99_cur."!cursor_pos"(rx99_pos)
    $P10 = rx99_cur."hexint"()
    unless $P10, rx99_fail
    rx99_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexint")
    rx99_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx99_cur."!cursor_pos"(rx99_pos)
    $P10 = rx99_cur."ws"()
    unless $P10, rx99_fail
    rx99_pos = $P10."pos"()
    (rx99_rep) = rx99_cur."!mark_commit"($I103)
    rx99_cur."!mark_push"(rx99_rep, rx99_pos, $I103)
  # rx literal  ","
    add $I11, rx99_pos, 1
    gt $I11, rx99_eos, rx99_fail
    sub $I11, rx99_pos, rx99_off
    substr $S10, rx99_tgt, $I11, 1
    ne $S10, ",", rx99_fail
    add rx99_pos, 1
    goto rxquantr102_loop
  rxquantr102_done:
  # rx pass
    rx99_cur."!cursor_pass"(rx99_pos, "hexints")
    rx99_cur."!cursor_debug"("PASS  ", "hexints", " at pos=", rx99_pos)
    .return (rx99_cur)
  rx99_fail:
    (rx99_rep, rx99_pos, $I10, $P10) = rx99_cur."!mark_fail"(0)
    lt rx99_pos, -1, rx99_done
    eq rx99_pos, -1, rx99_fail
    jump $I10
  rx99_done:
    rx99_cur."!cursor_fail"()
    rx99_cur."!cursor_debug"("FAIL  ", "hexints")
    .return (rx99_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__hexints"  :subid("42_1256752482.92984") :method
.annotate "line", 43
    new $P101, "ResizablePMCArray"
    push $P101, ""
    .return ($P101)
.end


.namespace ["HLL";"Grammar"]
.sub "octint"  :subid("43_1256752482.92984") :method :outer("10_1256752482.92984")
.annotate "line", 45
    .local string rx105_tgt
    .local int rx105_pos
    .local int rx105_off
    .local int rx105_eos
    .local int rx105_rep
    .local pmc rx105_cur
    (rx105_cur, rx105_pos, rx105_tgt, $I10) = self."!cursor_start"()
    rx105_cur."!cursor_debug"("START ", "octint")
    .lex unicode:"$\x{a2}", rx105_cur
    length rx105_eos, rx105_tgt
    set rx105_off, 0
    lt $I10, 2, rx105_start
    sub rx105_off, $I10, 1
    substr rx105_tgt, rx105_tgt, rx105_off
  rx105_start:
  # rx rxquantr108 ** 1..*
    set_addr $I111, rxquantr108_done
    rx105_cur."!mark_push"(0, -1, $I111)
  rxquantr108_loop:
  # rx rxquantr109 ** 1..*
    set_addr $I110, rxquantr109_done
    rx105_cur."!mark_push"(0, -1, $I110)
  rxquantr109_loop:
  # rx enumcharlist negate=0 
    ge rx105_pos, rx105_eos, rx105_fail
    sub $I10, rx105_pos, rx105_off
    substr $S10, rx105_tgt, $I10, 1
    index $I11, "01234567", $S10
    lt $I11, 0, rx105_fail
    inc rx105_pos
    (rx105_rep) = rx105_cur."!mark_commit"($I110)
    rx105_cur."!mark_push"(rx105_rep, rx105_pos, $I110)
    goto rxquantr109_loop
  rxquantr109_done:
    (rx105_rep) = rx105_cur."!mark_commit"($I111)
    rx105_cur."!mark_push"(rx105_rep, rx105_pos, $I111)
  # rx literal  "_"
    add $I11, rx105_pos, 1
    gt $I11, rx105_eos, rx105_fail
    sub $I11, rx105_pos, rx105_off
    substr $S10, rx105_tgt, $I11, 1
    ne $S10, "_", rx105_fail
    add rx105_pos, 1
    goto rxquantr108_loop
  rxquantr108_done:
  # rx pass
    rx105_cur."!cursor_pass"(rx105_pos, "octint")
    rx105_cur."!cursor_debug"("PASS  ", "octint", " at pos=", rx105_pos)
    .return (rx105_cur)
  rx105_fail:
    (rx105_rep, rx105_pos, $I10, $P10) = rx105_cur."!mark_fail"(0)
    lt rx105_pos, -1, rx105_done
    eq rx105_pos, -1, rx105_fail
    jump $I10
  rx105_done:
    rx105_cur."!cursor_fail"()
    rx105_cur."!cursor_debug"("FAIL  ", "octint")
    .return (rx105_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__octint"  :subid("44_1256752482.92984") :method
.annotate "line", 45
    new $P107, "ResizablePMCArray"
    push $P107, ""
    .return ($P107)
.end


.namespace ["HLL";"Grammar"]
.sub "octints"  :subid("45_1256752482.92984") :method :outer("10_1256752482.92984")
.annotate "line", 46
    .local string rx113_tgt
    .local int rx113_pos
    .local int rx113_off
    .local int rx113_eos
    .local int rx113_rep
    .local pmc rx113_cur
    (rx113_cur, rx113_pos, rx113_tgt, $I10) = self."!cursor_start"()
    rx113_cur."!cursor_debug"("START ", "octints")
    rx113_cur."!cursor_caparray"("octint")
    .lex unicode:"$\x{a2}", rx113_cur
    length rx113_eos, rx113_tgt
    set rx113_off, 0
    lt $I10, 2, rx113_start
    sub rx113_off, $I10, 1
    substr rx113_tgt, rx113_tgt, rx113_off
  rx113_start:
  # rx rxquantr116 ** 1..*
    set_addr $I117, rxquantr116_done
    rx113_cur."!mark_push"(0, -1, $I117)
  rxquantr116_loop:
  # rx subrule "ws" subtype=method negate=
    rx113_cur."!cursor_pos"(rx113_pos)
    $P10 = rx113_cur."ws"()
    unless $P10, rx113_fail
    rx113_pos = $P10."pos"()
  # rx subrule "octint" subtype=capture negate=
    rx113_cur."!cursor_pos"(rx113_pos)
    $P10 = rx113_cur."octint"()
    unless $P10, rx113_fail
    rx113_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octint")
    rx113_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx113_cur."!cursor_pos"(rx113_pos)
    $P10 = rx113_cur."ws"()
    unless $P10, rx113_fail
    rx113_pos = $P10."pos"()
    (rx113_rep) = rx113_cur."!mark_commit"($I117)
    rx113_cur."!mark_push"(rx113_rep, rx113_pos, $I117)
  # rx literal  ","
    add $I11, rx113_pos, 1
    gt $I11, rx113_eos, rx113_fail
    sub $I11, rx113_pos, rx113_off
    substr $S10, rx113_tgt, $I11, 1
    ne $S10, ",", rx113_fail
    add rx113_pos, 1
    goto rxquantr116_loop
  rxquantr116_done:
  # rx pass
    rx113_cur."!cursor_pass"(rx113_pos, "octints")
    rx113_cur."!cursor_debug"("PASS  ", "octints", " at pos=", rx113_pos)
    .return (rx113_cur)
  rx113_fail:
    (rx113_rep, rx113_pos, $I10, $P10) = rx113_cur."!mark_fail"(0)
    lt rx113_pos, -1, rx113_done
    eq rx113_pos, -1, rx113_fail
    jump $I10
  rx113_done:
    rx113_cur."!cursor_fail"()
    rx113_cur."!cursor_debug"("FAIL  ", "octints")
    .return (rx113_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__octints"  :subid("46_1256752482.92984") :method
.annotate "line", 46
    new $P115, "ResizablePMCArray"
    push $P115, ""
    .return ($P115)
.end


.namespace ["HLL";"Grammar"]
.sub "integer"  :subid("47_1256752482.92984") :method :outer("10_1256752482.92984")
.annotate "line", 48
    .local string rx119_tgt
    .local int rx119_pos
    .local int rx119_off
    .local int rx119_eos
    .local int rx119_rep
    .local pmc rx119_cur
    (rx119_cur, rx119_pos, rx119_tgt, $I10) = self."!cursor_start"()
    rx119_cur."!cursor_debug"("START ", "integer")
    .lex unicode:"$\x{a2}", rx119_cur
    length rx119_eos, rx119_tgt
    set rx119_off, 0
    lt $I10, 2, rx119_start
    sub rx119_off, $I10, 1
    substr rx119_tgt, rx119_tgt, rx119_off
  rx119_start:
  alt124_0:
.annotate "line", 49
    set_addr $I10, alt124_1
    rx119_cur."!mark_push"(0, rx119_pos, $I10)
.annotate "line", 50
  # rx literal  "0"
    add $I11, rx119_pos, 1
    gt $I11, rx119_eos, rx119_fail
    sub $I11, rx119_pos, rx119_off
    substr $S10, rx119_tgt, $I11, 1
    ne $S10, "0", rx119_fail
    add rx119_pos, 1
  alt125_0:
    set_addr $I10, alt125_1
    rx119_cur."!mark_push"(0, rx119_pos, $I10)
  # rx literal  "b"
    add $I11, rx119_pos, 1
    gt $I11, rx119_eos, rx119_fail
    sub $I11, rx119_pos, rx119_off
    substr $S10, rx119_tgt, $I11, 1
    ne $S10, "b", rx119_fail
    add rx119_pos, 1
  # rx subcapture "binint"
    set_addr $I10, rxcap_130_fail
    rx119_cur."!mark_push"(0, rx119_pos, $I10)
  # rx rxquantr126 ** 1..*
    set_addr $I129, rxquantr126_done
    rx119_cur."!mark_push"(0, -1, $I129)
  rxquantr126_loop:
  # rx rxquantr127 ** 1..*
    set_addr $I128, rxquantr127_done
    rx119_cur."!mark_push"(0, -1, $I128)
  rxquantr127_loop:
  # rx enumcharlist negate=0 
    ge rx119_pos, rx119_eos, rx119_fail
    sub $I10, rx119_pos, rx119_off
    substr $S10, rx119_tgt, $I10, 1
    index $I11, "01", $S10
    lt $I11, 0, rx119_fail
    inc rx119_pos
    (rx119_rep) = rx119_cur."!mark_commit"($I128)
    rx119_cur."!mark_push"(rx119_rep, rx119_pos, $I128)
    goto rxquantr127_loop
  rxquantr127_done:
    (rx119_rep) = rx119_cur."!mark_commit"($I129)
    rx119_cur."!mark_push"(rx119_rep, rx119_pos, $I129)
  # rx literal  "_"
    add $I11, rx119_pos, 1
    gt $I11, rx119_eos, rx119_fail
    sub $I11, rx119_pos, rx119_off
    substr $S10, rx119_tgt, $I11, 1
    ne $S10, "_", rx119_fail
    add rx119_pos, 1
    goto rxquantr126_loop
  rxquantr126_done:
    set_addr $I10, rxcap_130_fail
    ($I12, $I11) = rx119_cur."!mark_peek"($I10)
    rx119_cur."!cursor_pos"($I11)
    ($P10) = rx119_cur."!cursor_start"()
    $P10."!cursor_pass"(rx119_pos, "")
    rx119_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("binint")
    goto rxcap_130_done
  rxcap_130_fail:
    goto rx119_fail
  rxcap_130_done:
    goto alt125_end
  alt125_1:
    set_addr $I10, alt125_2
    rx119_cur."!mark_push"(0, rx119_pos, $I10)
.annotate "line", 51
  # rx literal  "o"
    add $I11, rx119_pos, 1
    gt $I11, rx119_eos, rx119_fail
    sub $I11, rx119_pos, rx119_off
    substr $S10, rx119_tgt, $I11, 1
    ne $S10, "o", rx119_fail
    add rx119_pos, 1
  # rx subrule "octint" subtype=capture negate=
    rx119_cur."!cursor_pos"(rx119_pos)
    $P10 = rx119_cur."octint"()
    unless $P10, rx119_fail
    rx119_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octint")
    rx119_pos = $P10."pos"()
    goto alt125_end
  alt125_2:
    set_addr $I10, alt125_3
    rx119_cur."!mark_push"(0, rx119_pos, $I10)
.annotate "line", 52
  # rx literal  "x"
    add $I11, rx119_pos, 1
    gt $I11, rx119_eos, rx119_fail
    sub $I11, rx119_pos, rx119_off
    substr $S10, rx119_tgt, $I11, 1
    ne $S10, "x", rx119_fail
    add rx119_pos, 1
  # rx subrule "hexint" subtype=capture negate=
    rx119_cur."!cursor_pos"(rx119_pos)
    $P10 = rx119_cur."hexint"()
    unless $P10, rx119_fail
    rx119_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexint")
    rx119_pos = $P10."pos"()
    goto alt125_end
  alt125_3:
.annotate "line", 53
  # rx literal  "d"
    add $I11, rx119_pos, 1
    gt $I11, rx119_eos, rx119_fail
    sub $I11, rx119_pos, rx119_off
    substr $S10, rx119_tgt, $I11, 1
    ne $S10, "d", rx119_fail
    add rx119_pos, 1
  # rx subcapture "decint"
    set_addr $I10, rxcap_133_fail
    rx119_cur."!mark_push"(0, rx119_pos, $I10)
  # rx rxquantr131 ** 1..*
    set_addr $I132, rxquantr131_done
    rx119_cur."!mark_push"(0, -1, $I132)
  rxquantr131_loop:
  # rx charclass_q d r 1..-1
    sub $I10, rx119_pos, rx119_off
    find_not_cclass $I11, 8, rx119_tgt, $I10, rx119_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx119_fail
    add rx119_pos, rx119_off, $I11
    (rx119_rep) = rx119_cur."!mark_commit"($I132)
    rx119_cur."!mark_push"(rx119_rep, rx119_pos, $I132)
  # rx literal  "_"
    add $I11, rx119_pos, 1
    gt $I11, rx119_eos, rx119_fail
    sub $I11, rx119_pos, rx119_off
    substr $S10, rx119_tgt, $I11, 1
    ne $S10, "_", rx119_fail
    add rx119_pos, 1
    goto rxquantr131_loop
  rxquantr131_done:
    set_addr $I10, rxcap_133_fail
    ($I12, $I11) = rx119_cur."!mark_peek"($I10)
    rx119_cur."!cursor_pos"($I11)
    ($P10) = rx119_cur."!cursor_start"()
    $P10."!cursor_pass"(rx119_pos, "")
    rx119_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("decint")
    goto rxcap_133_done
  rxcap_133_fail:
    goto rx119_fail
  rxcap_133_done:
  alt125_end:
.annotate "line", 50
    goto alt124_end
  alt124_1:
.annotate "line", 55
  # rx subcapture "decint"
    set_addr $I10, rxcap_136_fail
    rx119_cur."!mark_push"(0, rx119_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx119_pos, rx119_off
    find_not_cclass $I11, 8, rx119_tgt, $I10, rx119_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx119_fail
    add rx119_pos, rx119_off, $I11
  # rx rxquantr134 ** 0..*
    set_addr $I135, rxquantr134_done
    rx119_cur."!mark_push"(0, rx119_pos, $I135)
  rxquantr134_loop:
  # rx literal  "_"
    add $I11, rx119_pos, 1
    gt $I11, rx119_eos, rx119_fail
    sub $I11, rx119_pos, rx119_off
    substr $S10, rx119_tgt, $I11, 1
    ne $S10, "_", rx119_fail
    add rx119_pos, 1
  # rx charclass_q d r 1..-1
    sub $I10, rx119_pos, rx119_off
    find_not_cclass $I11, 8, rx119_tgt, $I10, rx119_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx119_fail
    add rx119_pos, rx119_off, $I11
    (rx119_rep) = rx119_cur."!mark_commit"($I135)
    rx119_cur."!mark_push"(rx119_rep, rx119_pos, $I135)
    goto rxquantr134_loop
  rxquantr134_done:
    set_addr $I10, rxcap_136_fail
    ($I12, $I11) = rx119_cur."!mark_peek"($I10)
    rx119_cur."!cursor_pos"($I11)
    ($P10) = rx119_cur."!cursor_start"()
    $P10."!cursor_pass"(rx119_pos, "")
    rx119_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("decint")
    goto rxcap_136_done
  rxcap_136_fail:
    goto rx119_fail
  rxcap_136_done:
  alt124_end:
.annotate "line", 48
  # rx pass
    rx119_cur."!cursor_pass"(rx119_pos, "integer")
    rx119_cur."!cursor_debug"("PASS  ", "integer", " at pos=", rx119_pos)
    .return (rx119_cur)
  rx119_fail:
    (rx119_rep, rx119_pos, $I10, $P10) = rx119_cur."!mark_fail"(0)
    lt rx119_pos, -1, rx119_done
    eq rx119_pos, -1, rx119_fail
    jump $I10
  rx119_done:
    rx119_cur."!cursor_fail"()
    rx119_cur."!cursor_debug"("FAIL  ", "integer")
    .return (rx119_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__integer"  :subid("48_1256752482.92984") :method
.annotate "line", 48
    $P121 = self."!PREFIX__!subrule"("hexint", "0x")
    $P122 = self."!PREFIX__!subrule"("octint", "0o")
    new $P123, "ResizablePMCArray"
    push $P123, ""
    push $P123, "0d"
    push $P123, $P121
    push $P123, $P122
    push $P123, "0b"
    .return ($P123)
.end


.namespace ["HLL";"Grammar"]
.sub "escape"  :subid("49_1256752482.92984") :method
.annotate "line", 59
    $P138 = self."!protoregex"("escape")
    .return ($P138)
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__escape"  :subid("50_1256752482.92984") :method
.annotate "line", 59
    $P140 = self."!PREFIX__!protoregex"("escape")
    .return ($P140)
.end


.namespace ["HLL";"Grammar"]
.sub "escape:sym<backslash>"  :subid("51_1256752482.92984") :method :outer("10_1256752482.92984")
.annotate "line", 60
    .local string rx142_tgt
    .local int rx142_pos
    .local int rx142_off
    .local int rx142_eos
    .local int rx142_rep
    .local pmc rx142_cur
    (rx142_cur, rx142_pos, rx142_tgt, $I10) = self."!cursor_start"()
    rx142_cur."!cursor_debug"("START ", "escape:sym<backslash>")
    .lex unicode:"$\x{a2}", rx142_cur
    length rx142_eos, rx142_tgt
    set rx142_off, 0
    lt $I10, 2, rx142_start
    sub rx142_off, $I10, 1
    substr rx142_tgt, rx142_tgt, rx142_off
  rx142_start:
  # rx literal  "\\\\"
    add $I11, rx142_pos, 2
    gt $I11, rx142_eos, rx142_fail
    sub $I11, rx142_pos, rx142_off
    substr $S10, rx142_tgt, $I11, 2
    ne $S10, "\\\\", rx142_fail
    add rx142_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx142_cur."!cursor_pos"(rx142_pos)
    $P10 = rx142_cur."quotemod_check"("q")
    unless $P10, rx142_fail
  # rx pass
    rx142_cur."!cursor_pass"(rx142_pos, "escape:sym<backslash>")
    rx142_cur."!cursor_debug"("PASS  ", "escape:sym<backslash>", " at pos=", rx142_pos)
    .return (rx142_cur)
  rx142_fail:
    (rx142_rep, rx142_pos, $I10, $P10) = rx142_cur."!mark_fail"(0)
    lt rx142_pos, -1, rx142_done
    eq rx142_pos, -1, rx142_fail
    jump $I10
  rx142_done:
    rx142_cur."!cursor_fail"()
    rx142_cur."!cursor_debug"("FAIL  ", "escape:sym<backslash>")
    .return (rx142_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__escape:sym<backslash>"  :subid("52_1256752482.92984") :method
.annotate "line", 60
    new $P144, "ResizablePMCArray"
    push $P144, "\\\\"
    .return ($P144)
.end


.namespace ["HLL";"Grammar"]
.sub "escape:sym<stopper>"  :subid("53_1256752482.92984") :method :outer("10_1256752482.92984")
.annotate "line", 61
    .local string rx146_tgt
    .local int rx146_pos
    .local int rx146_off
    .local int rx146_eos
    .local int rx146_rep
    .local pmc rx146_cur
    (rx146_cur, rx146_pos, rx146_tgt, $I10) = self."!cursor_start"()
    rx146_cur."!cursor_debug"("START ", "escape:sym<stopper>")
    .lex unicode:"$\x{a2}", rx146_cur
    length rx146_eos, rx146_tgt
    set rx146_off, 0
    lt $I10, 2, rx146_start
    sub rx146_off, $I10, 1
    substr rx146_tgt, rx146_tgt, rx146_off
  rx146_start:
  # rx literal  "\\"
    add $I11, rx146_pos, 1
    gt $I11, rx146_eos, rx146_fail
    sub $I11, rx146_pos, rx146_off
    substr $S10, rx146_tgt, $I11, 1
    ne $S10, "\\", rx146_fail
    add rx146_pos, 1
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx146_cur."!cursor_pos"(rx146_pos)
    $P10 = rx146_cur."quotemod_check"("q")
    unless $P10, rx146_fail
  # rx subrule "stopper" subtype=capture negate=
    rx146_cur."!cursor_pos"(rx146_pos)
    $P10 = rx146_cur."stopper"()
    unless $P10, rx146_fail
    rx146_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("stopper")
    rx146_pos = $P10."pos"()
  # rx pass
    rx146_cur."!cursor_pass"(rx146_pos, "escape:sym<stopper>")
    rx146_cur."!cursor_debug"("PASS  ", "escape:sym<stopper>", " at pos=", rx146_pos)
    .return (rx146_cur)
  rx146_fail:
    (rx146_rep, rx146_pos, $I10, $P10) = rx146_cur."!mark_fail"(0)
    lt rx146_pos, -1, rx146_done
    eq rx146_pos, -1, rx146_fail
    jump $I10
  rx146_done:
    rx146_cur."!cursor_fail"()
    rx146_cur."!cursor_debug"("FAIL  ", "escape:sym<stopper>")
    .return (rx146_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__escape:sym<stopper>"  :subid("54_1256752482.92984") :method
.annotate "line", 61
    new $P148, "ResizablePMCArray"
    push $P148, "\\"
    .return ($P148)
.end


.namespace ["HLL";"Grammar"]
.sub "escape:sym<bs>"  :subid("55_1256752482.92984") :method :outer("10_1256752482.92984")
.annotate "line", 63
    .local string rx150_tgt
    .local int rx150_pos
    .local int rx150_off
    .local int rx150_eos
    .local int rx150_rep
    .local pmc rx150_cur
    (rx150_cur, rx150_pos, rx150_tgt, $I10) = self."!cursor_start"()
    rx150_cur."!cursor_debug"("START ", "escape:sym<bs>")
    .lex unicode:"$\x{a2}", rx150_cur
    length rx150_eos, rx150_tgt
    set rx150_off, 0
    lt $I10, 2, rx150_start
    sub rx150_off, $I10, 1
    substr rx150_tgt, rx150_tgt, rx150_off
  rx150_start:
  # rx literal  "\\b"
    add $I11, rx150_pos, 2
    gt $I11, rx150_eos, rx150_fail
    sub $I11, rx150_pos, rx150_off
    substr $S10, rx150_tgt, $I11, 2
    ne $S10, "\\b", rx150_fail
    add rx150_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx150_cur."!cursor_pos"(rx150_pos)
    $P10 = rx150_cur."quotemod_check"("b")
    unless $P10, rx150_fail
  # rx pass
    rx150_cur."!cursor_pass"(rx150_pos, "escape:sym<bs>")
    rx150_cur."!cursor_debug"("PASS  ", "escape:sym<bs>", " at pos=", rx150_pos)
    .return (rx150_cur)
  rx150_fail:
    (rx150_rep, rx150_pos, $I10, $P10) = rx150_cur."!mark_fail"(0)
    lt rx150_pos, -1, rx150_done
    eq rx150_pos, -1, rx150_fail
    jump $I10
  rx150_done:
    rx150_cur."!cursor_fail"()
    rx150_cur."!cursor_debug"("FAIL  ", "escape:sym<bs>")
    .return (rx150_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__escape:sym<bs>"  :subid("56_1256752482.92984") :method
.annotate "line", 63
    new $P152, "ResizablePMCArray"
    push $P152, "\\b"
    .return ($P152)
.end


.namespace ["HLL";"Grammar"]
.sub "escape:sym<nl>"  :subid("57_1256752482.92984") :method :outer("10_1256752482.92984")
.annotate "line", 64
    .local string rx154_tgt
    .local int rx154_pos
    .local int rx154_off
    .local int rx154_eos
    .local int rx154_rep
    .local pmc rx154_cur
    (rx154_cur, rx154_pos, rx154_tgt, $I10) = self."!cursor_start"()
    rx154_cur."!cursor_debug"("START ", "escape:sym<nl>")
    .lex unicode:"$\x{a2}", rx154_cur
    length rx154_eos, rx154_tgt
    set rx154_off, 0
    lt $I10, 2, rx154_start
    sub rx154_off, $I10, 1
    substr rx154_tgt, rx154_tgt, rx154_off
  rx154_start:
  # rx literal  "\\n"
    add $I11, rx154_pos, 2
    gt $I11, rx154_eos, rx154_fail
    sub $I11, rx154_pos, rx154_off
    substr $S10, rx154_tgt, $I11, 2
    ne $S10, "\\n", rx154_fail
    add rx154_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx154_cur."!cursor_pos"(rx154_pos)
    $P10 = rx154_cur."quotemod_check"("b")
    unless $P10, rx154_fail
  # rx pass
    rx154_cur."!cursor_pass"(rx154_pos, "escape:sym<nl>")
    rx154_cur."!cursor_debug"("PASS  ", "escape:sym<nl>", " at pos=", rx154_pos)
    .return (rx154_cur)
  rx154_fail:
    (rx154_rep, rx154_pos, $I10, $P10) = rx154_cur."!mark_fail"(0)
    lt rx154_pos, -1, rx154_done
    eq rx154_pos, -1, rx154_fail
    jump $I10
  rx154_done:
    rx154_cur."!cursor_fail"()
    rx154_cur."!cursor_debug"("FAIL  ", "escape:sym<nl>")
    .return (rx154_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__escape:sym<nl>"  :subid("58_1256752482.92984") :method
.annotate "line", 64
    new $P156, "ResizablePMCArray"
    push $P156, "\\n"
    .return ($P156)
.end


.namespace ["HLL";"Grammar"]
.sub "escape:sym<cr>"  :subid("59_1256752482.92984") :method :outer("10_1256752482.92984")
.annotate "line", 65
    .local string rx158_tgt
    .local int rx158_pos
    .local int rx158_off
    .local int rx158_eos
    .local int rx158_rep
    .local pmc rx158_cur
    (rx158_cur, rx158_pos, rx158_tgt, $I10) = self."!cursor_start"()
    rx158_cur."!cursor_debug"("START ", "escape:sym<cr>")
    .lex unicode:"$\x{a2}", rx158_cur
    length rx158_eos, rx158_tgt
    set rx158_off, 0
    lt $I10, 2, rx158_start
    sub rx158_off, $I10, 1
    substr rx158_tgt, rx158_tgt, rx158_off
  rx158_start:
  # rx literal  "\\r"
    add $I11, rx158_pos, 2
    gt $I11, rx158_eos, rx158_fail
    sub $I11, rx158_pos, rx158_off
    substr $S10, rx158_tgt, $I11, 2
    ne $S10, "\\r", rx158_fail
    add rx158_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx158_cur."!cursor_pos"(rx158_pos)
    $P10 = rx158_cur."quotemod_check"("b")
    unless $P10, rx158_fail
  # rx pass
    rx158_cur."!cursor_pass"(rx158_pos, "escape:sym<cr>")
    rx158_cur."!cursor_debug"("PASS  ", "escape:sym<cr>", " at pos=", rx158_pos)
    .return (rx158_cur)
  rx158_fail:
    (rx158_rep, rx158_pos, $I10, $P10) = rx158_cur."!mark_fail"(0)
    lt rx158_pos, -1, rx158_done
    eq rx158_pos, -1, rx158_fail
    jump $I10
  rx158_done:
    rx158_cur."!cursor_fail"()
    rx158_cur."!cursor_debug"("FAIL  ", "escape:sym<cr>")
    .return (rx158_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__escape:sym<cr>"  :subid("60_1256752482.92984") :method
.annotate "line", 65
    new $P160, "ResizablePMCArray"
    push $P160, "\\r"
    .return ($P160)
.end


.namespace ["HLL";"Grammar"]
.sub "escape:sym<tab>"  :subid("61_1256752482.92984") :method :outer("10_1256752482.92984")
.annotate "line", 66
    .local string rx162_tgt
    .local int rx162_pos
    .local int rx162_off
    .local int rx162_eos
    .local int rx162_rep
    .local pmc rx162_cur
    (rx162_cur, rx162_pos, rx162_tgt, $I10) = self."!cursor_start"()
    rx162_cur."!cursor_debug"("START ", "escape:sym<tab>")
    .lex unicode:"$\x{a2}", rx162_cur
    length rx162_eos, rx162_tgt
    set rx162_off, 0
    lt $I10, 2, rx162_start
    sub rx162_off, $I10, 1
    substr rx162_tgt, rx162_tgt, rx162_off
  rx162_start:
  # rx literal  "\\t"
    add $I11, rx162_pos, 2
    gt $I11, rx162_eos, rx162_fail
    sub $I11, rx162_pos, rx162_off
    substr $S10, rx162_tgt, $I11, 2
    ne $S10, "\\t", rx162_fail
    add rx162_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx162_cur."!cursor_pos"(rx162_pos)
    $P10 = rx162_cur."quotemod_check"("b")
    unless $P10, rx162_fail
  # rx pass
    rx162_cur."!cursor_pass"(rx162_pos, "escape:sym<tab>")
    rx162_cur."!cursor_debug"("PASS  ", "escape:sym<tab>", " at pos=", rx162_pos)
    .return (rx162_cur)
  rx162_fail:
    (rx162_rep, rx162_pos, $I10, $P10) = rx162_cur."!mark_fail"(0)
    lt rx162_pos, -1, rx162_done
    eq rx162_pos, -1, rx162_fail
    jump $I10
  rx162_done:
    rx162_cur."!cursor_fail"()
    rx162_cur."!cursor_debug"("FAIL  ", "escape:sym<tab>")
    .return (rx162_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__escape:sym<tab>"  :subid("62_1256752482.92984") :method
.annotate "line", 66
    new $P164, "ResizablePMCArray"
    push $P164, "\\t"
    .return ($P164)
.end


.namespace ["HLL";"Grammar"]
.sub "escape:sym<hex>"  :subid("63_1256752482.92984") :method :outer("10_1256752482.92984")
.annotate "line", 67
    .local string rx166_tgt
    .local int rx166_pos
    .local int rx166_off
    .local int rx166_eos
    .local int rx166_rep
    .local pmc rx166_cur
    (rx166_cur, rx166_pos, rx166_tgt, $I10) = self."!cursor_start"()
    rx166_cur."!cursor_debug"("START ", "escape:sym<hex>")
    .lex unicode:"$\x{a2}", rx166_cur
    length rx166_eos, rx166_tgt
    set rx166_off, 0
    lt $I10, 2, rx166_start
    sub rx166_off, $I10, 1
    substr rx166_tgt, rx166_tgt, rx166_off
  rx166_start:
.annotate "line", 68
  # rx literal  unicode:"\\x"
    add $I11, rx166_pos, 2
    gt $I11, rx166_eos, rx166_fail
    sub $I11, rx166_pos, rx166_off
    substr $S10, rx166_tgt, $I11, 2
    ne $S10, unicode:"\\x", rx166_fail
    add rx166_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx166_cur."!cursor_pos"(rx166_pos)
    $P10 = rx166_cur."quotemod_check"("b")
    unless $P10, rx166_fail
  alt169_0:
.annotate "line", 69
    set_addr $I10, alt169_1
    rx166_cur."!mark_push"(0, rx166_pos, $I10)
  # rx subrule "hexint" subtype=capture negate=
    rx166_cur."!cursor_pos"(rx166_pos)
    $P10 = rx166_cur."hexint"()
    unless $P10, rx166_fail
    rx166_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexint")
    rx166_pos = $P10."pos"()
    goto alt169_end
  alt169_1:
  # rx literal  "["
    add $I11, rx166_pos, 1
    gt $I11, rx166_eos, rx166_fail
    sub $I11, rx166_pos, rx166_off
    substr $S10, rx166_tgt, $I11, 1
    ne $S10, "[", rx166_fail
    add rx166_pos, 1
  # rx subrule "hexints" subtype=capture negate=
    rx166_cur."!cursor_pos"(rx166_pos)
    $P10 = rx166_cur."hexints"()
    unless $P10, rx166_fail
    rx166_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexints")
    rx166_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx166_pos, 1
    gt $I11, rx166_eos, rx166_fail
    sub $I11, rx166_pos, rx166_off
    substr $S10, rx166_tgt, $I11, 1
    ne $S10, "]", rx166_fail
    add rx166_pos, 1
  alt169_end:
.annotate "line", 67
  # rx pass
    rx166_cur."!cursor_pass"(rx166_pos, "escape:sym<hex>")
    rx166_cur."!cursor_debug"("PASS  ", "escape:sym<hex>", " at pos=", rx166_pos)
    .return (rx166_cur)
  rx166_fail:
    (rx166_rep, rx166_pos, $I10, $P10) = rx166_cur."!mark_fail"(0)
    lt rx166_pos, -1, rx166_done
    eq rx166_pos, -1, rx166_fail
    jump $I10
  rx166_done:
    rx166_cur."!cursor_fail"()
    rx166_cur."!cursor_debug"("FAIL  ", "escape:sym<hex>")
    .return (rx166_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__escape:sym<hex>"  :subid("64_1256752482.92984") :method
.annotate "line", 67
    new $P168, "ResizablePMCArray"
    push $P168, unicode:"\\x"
    .return ($P168)
.end


.namespace ["HLL";"Grammar"]
.sub "escape:sym<oct>"  :subid("65_1256752482.92984") :method :outer("10_1256752482.92984")
.annotate "line", 71
    .local string rx171_tgt
    .local int rx171_pos
    .local int rx171_off
    .local int rx171_eos
    .local int rx171_rep
    .local pmc rx171_cur
    (rx171_cur, rx171_pos, rx171_tgt, $I10) = self."!cursor_start"()
    rx171_cur."!cursor_debug"("START ", "escape:sym<oct>")
    .lex unicode:"$\x{a2}", rx171_cur
    length rx171_eos, rx171_tgt
    set rx171_off, 0
    lt $I10, 2, rx171_start
    sub rx171_off, $I10, 1
    substr rx171_tgt, rx171_tgt, rx171_off
  rx171_start:
.annotate "line", 72
  # rx literal  "\\o"
    add $I11, rx171_pos, 2
    gt $I11, rx171_eos, rx171_fail
    sub $I11, rx171_pos, rx171_off
    substr $S10, rx171_tgt, $I11, 2
    ne $S10, "\\o", rx171_fail
    add rx171_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx171_cur."!cursor_pos"(rx171_pos)
    $P10 = rx171_cur."quotemod_check"("b")
    unless $P10, rx171_fail
  alt174_0:
.annotate "line", 73
    set_addr $I10, alt174_1
    rx171_cur."!mark_push"(0, rx171_pos, $I10)
  # rx subrule "octint" subtype=capture negate=
    rx171_cur."!cursor_pos"(rx171_pos)
    $P10 = rx171_cur."octint"()
    unless $P10, rx171_fail
    rx171_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octint")
    rx171_pos = $P10."pos"()
    goto alt174_end
  alt174_1:
  # rx literal  "["
    add $I11, rx171_pos, 1
    gt $I11, rx171_eos, rx171_fail
    sub $I11, rx171_pos, rx171_off
    substr $S10, rx171_tgt, $I11, 1
    ne $S10, "[", rx171_fail
    add rx171_pos, 1
  # rx subrule "octints" subtype=capture negate=
    rx171_cur."!cursor_pos"(rx171_pos)
    $P10 = rx171_cur."octints"()
    unless $P10, rx171_fail
    rx171_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octints")
    rx171_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx171_pos, 1
    gt $I11, rx171_eos, rx171_fail
    sub $I11, rx171_pos, rx171_off
    substr $S10, rx171_tgt, $I11, 1
    ne $S10, "]", rx171_fail
    add rx171_pos, 1
  alt174_end:
.annotate "line", 71
  # rx pass
    rx171_cur."!cursor_pass"(rx171_pos, "escape:sym<oct>")
    rx171_cur."!cursor_debug"("PASS  ", "escape:sym<oct>", " at pos=", rx171_pos)
    .return (rx171_cur)
  rx171_fail:
    (rx171_rep, rx171_pos, $I10, $P10) = rx171_cur."!mark_fail"(0)
    lt rx171_pos, -1, rx171_done
    eq rx171_pos, -1, rx171_fail
    jump $I10
  rx171_done:
    rx171_cur."!cursor_fail"()
    rx171_cur."!cursor_debug"("FAIL  ", "escape:sym<oct>")
    .return (rx171_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__escape:sym<oct>"  :subid("66_1256752482.92984") :method
.annotate "line", 71
    new $P173, "ResizablePMCArray"
    push $P173, "\\o"
    .return ($P173)
.end


.namespace ["HLL";"Grammar"]
.sub "escape:sym<chr>"  :subid("67_1256752482.92984") :method :outer("10_1256752482.92984")
.annotate "line", 75
    .local string rx176_tgt
    .local int rx176_pos
    .local int rx176_off
    .local int rx176_eos
    .local int rx176_rep
    .local pmc rx176_cur
    (rx176_cur, rx176_pos, rx176_tgt, $I10) = self."!cursor_start"()
    rx176_cur."!cursor_debug"("START ", "escape:sym<chr>")
    .lex unicode:"$\x{a2}", rx176_cur
    length rx176_eos, rx176_tgt
    set rx176_off, 0
    lt $I10, 2, rx176_start
    sub rx176_off, $I10, 1
    substr rx176_tgt, rx176_tgt, rx176_off
  rx176_start:
  # rx literal  "\\c"
    add $I11, rx176_pos, 2
    gt $I11, rx176_eos, rx176_fail
    sub $I11, rx176_pos, rx176_off
    substr $S10, rx176_tgt, $I11, 2
    ne $S10, "\\c", rx176_fail
    add rx176_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx176_cur."!cursor_pos"(rx176_pos)
    $P10 = rx176_cur."quotemod_check"("b")
    unless $P10, rx176_fail
  # rx subrule "charspec" subtype=capture negate=
    rx176_cur."!cursor_pos"(rx176_pos)
    $P10 = rx176_cur."charspec"()
    unless $P10, rx176_fail
    rx176_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charspec")
    rx176_pos = $P10."pos"()
  # rx pass
    rx176_cur."!cursor_pass"(rx176_pos, "escape:sym<chr>")
    rx176_cur."!cursor_debug"("PASS  ", "escape:sym<chr>", " at pos=", rx176_pos)
    .return (rx176_cur)
  rx176_fail:
    (rx176_rep, rx176_pos, $I10, $P10) = rx176_cur."!mark_fail"(0)
    lt rx176_pos, -1, rx176_done
    eq rx176_pos, -1, rx176_fail
    jump $I10
  rx176_done:
    rx176_cur."!cursor_fail"()
    rx176_cur."!cursor_debug"("FAIL  ", "escape:sym<chr>")
    .return (rx176_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__escape:sym<chr>"  :subid("68_1256752482.92984") :method
.annotate "line", 75
    new $P178, "ResizablePMCArray"
    push $P178, "\\c"
    .return ($P178)
.end


.namespace ["HLL";"Grammar"]
.sub "charname"  :subid("69_1256752482.92984") :method :outer("10_1256752482.92984")
.annotate "line", 77
    .const 'Sub' $P188 = "71_1256752482.92984" 
    capture_lex $P188
    .local string rx180_tgt
    .local int rx180_pos
    .local int rx180_off
    .local int rx180_eos
    .local int rx180_rep
    .local pmc rx180_cur
    (rx180_cur, rx180_pos, rx180_tgt, $I10) = self."!cursor_start"()
    rx180_cur."!cursor_debug"("START ", "charname")
    .lex unicode:"$\x{a2}", rx180_cur
    length rx180_eos, rx180_tgt
    set rx180_off, 0
    lt $I10, 2, rx180_start
    sub rx180_off, $I10, 1
    substr rx180_tgt, rx180_tgt, rx180_off
  rx180_start:
  alt184_0:
    set_addr $I10, alt184_1
    rx180_cur."!mark_push"(0, rx180_pos, $I10)
.annotate "line", 78
  # rx subrule "integer" subtype=capture negate=
    rx180_cur."!cursor_pos"(rx180_pos)
    $P10 = rx180_cur."integer"()
    unless $P10, rx180_fail
    rx180_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("integer")
    rx180_pos = $P10."pos"()
    goto alt184_end
  alt184_1:
.annotate "line", 79
  # rx enumcharlist negate=0 
    ge rx180_pos, rx180_eos, rx180_fail
    sub $I10, rx180_pos, rx180_off
    substr $S10, rx180_tgt, $I10, 1
    index $I11, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ", $S10
    lt $I11, 0, rx180_fail
    inc rx180_pos
  # rx rxquantf185 ** 0..*
    set_addr $I10, rxquantf185_loop
    rx180_cur."!mark_push"(0, rx180_pos, $I10)
    goto rxquantf185_done
  rxquantf185_loop:
  # rx enumcharlist negate=1 
    ge rx180_pos, rx180_eos, rx180_fail
    sub $I10, rx180_pos, rx180_off
    substr $S10, rx180_tgt, $I10, 1
    index $I11, "],#", $S10
    ge $I11, 0, rx180_fail
    inc rx180_pos
    set_addr $I10, rxquantf185_loop
    rx180_cur."!mark_push"($I186, rx180_pos, $I10)
  rxquantf185_done:
  # rx enumcharlist negate=0 
    ge rx180_pos, rx180_eos, rx180_fail
    sub $I10, rx180_pos, rx180_off
    substr $S10, rx180_tgt, $I10, 1
    index $I11, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ)", $S10
    lt $I11, 0, rx180_fail
    inc rx180_pos
.annotate "line", 80
  # rx subrule "before" subtype=zerowidth negate=
    rx180_cur."!cursor_pos"(rx180_pos)
    .const 'Sub' $P188 = "71_1256752482.92984" 
    capture_lex $P188
    $P10 = rx180_cur."before"($P188)
    unless $P10, rx180_fail
  alt184_end:
.annotate "line", 77
  # rx pass
    rx180_cur."!cursor_pass"(rx180_pos, "charname")
    rx180_cur."!cursor_debug"("PASS  ", "charname", " at pos=", rx180_pos)
    .return (rx180_cur)
  rx180_fail:
    (rx180_rep, rx180_pos, $I10, $P10) = rx180_cur."!mark_fail"(0)
    lt rx180_pos, -1, rx180_done
    eq rx180_pos, -1, rx180_fail
    jump $I10
  rx180_done:
    rx180_cur."!cursor_fail"()
    rx180_cur."!cursor_debug"("FAIL  ", "charname")
    .return (rx180_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charname"  :subid("70_1256752482.92984") :method
.annotate "line", 77
    $P182 = self."!PREFIX__!subrule"("integer", "")
    new $P183, "ResizablePMCArray"
    push $P183, "Z"
    push $P183, "Y"
    push $P183, "X"
    push $P183, "W"
    push $P183, "V"
    push $P183, "U"
    push $P183, "T"
    push $P183, "S"
    push $P183, "R"
    push $P183, "Q"
    push $P183, "P"
    push $P183, "O"
    push $P183, "N"
    push $P183, "M"
    push $P183, "L"
    push $P183, "K"
    push $P183, "J"
    push $P183, "I"
    push $P183, "H"
    push $P183, "G"
    push $P183, "F"
    push $P183, "E"
    push $P183, "D"
    push $P183, "C"
    push $P183, "B"
    push $P183, "A"
    push $P183, "z"
    push $P183, "y"
    push $P183, "x"
    push $P183, "w"
    push $P183, "v"
    push $P183, "u"
    push $P183, "t"
    push $P183, "s"
    push $P183, "r"
    push $P183, "q"
    push $P183, "p"
    push $P183, "o"
    push $P183, "n"
    push $P183, "m"
    push $P183, "l"
    push $P183, "k"
    push $P183, "j"
    push $P183, "i"
    push $P183, "h"
    push $P183, "g"
    push $P183, "f"
    push $P183, "e"
    push $P183, "d"
    push $P183, "c"
    push $P183, "b"
    push $P183, "a"
    push $P183, $P182
    .return ($P183)
.end


.namespace ["HLL";"Grammar"]
.sub "_block187"  :anon :subid("71_1256752482.92984") :method :outer("69_1256752482.92984")
.annotate "line", 80
    .local string rx189_tgt
    .local int rx189_pos
    .local int rx189_off
    .local int rx189_eos
    .local int rx189_rep
    .local pmc rx189_cur
    (rx189_cur, rx189_pos, rx189_tgt, $I10) = self."!cursor_start"()
    rx189_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx189_cur
    length rx189_eos, rx189_tgt
    set rx189_off, 0
    lt $I10, 2, rx189_start
    sub rx189_off, $I10, 1
    substr rx189_tgt, rx189_tgt, rx189_off
  rx189_start:
    ge rx189_pos, 0, rxscan190_done
  rxscan190_loop:
    ($P10) = rx189_cur."from"()
    inc $P10
    set rx189_pos, $P10
    ge rx189_pos, rx189_eos, rxscan190_done
    set_addr $I10, rxscan190_loop
    rx189_cur."!mark_push"(0, rx189_pos, $I10)
  rxscan190_done:
  # rx charclass_q s r 0..-1
    sub $I10, rx189_pos, rx189_off
    find_not_cclass $I11, 32, rx189_tgt, $I10, rx189_eos
    add rx189_pos, rx189_off, $I11
  # rx enumcharlist negate=0 
    ge rx189_pos, rx189_eos, rx189_fail
    sub $I10, rx189_pos, rx189_off
    substr $S10, rx189_tgt, $I10, 1
    index $I11, "],#", $S10
    lt $I11, 0, rx189_fail
    inc rx189_pos
  # rx pass
    rx189_cur."!cursor_pass"(rx189_pos, "")
    rx189_cur."!cursor_debug"("PASS  ", "", " at pos=", rx189_pos)
    .return (rx189_cur)
  rx189_fail:
    (rx189_rep, rx189_pos, $I10, $P10) = rx189_cur."!mark_fail"(0)
    lt rx189_pos, -1, rx189_done
    eq rx189_pos, -1, rx189_fail
    jump $I10
  rx189_done:
    rx189_cur."!cursor_fail"()
    rx189_cur."!cursor_debug"("FAIL  ", "")
    .return (rx189_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "charnames"  :subid("72_1256752482.92984") :method :outer("10_1256752482.92984")
.annotate "line", 82
    .local string rx192_tgt
    .local int rx192_pos
    .local int rx192_off
    .local int rx192_eos
    .local int rx192_rep
    .local pmc rx192_cur
    (rx192_cur, rx192_pos, rx192_tgt, $I10) = self."!cursor_start"()
    rx192_cur."!cursor_debug"("START ", "charnames")
    rx192_cur."!cursor_caparray"("charname")
    .lex unicode:"$\x{a2}", rx192_cur
    length rx192_eos, rx192_tgt
    set rx192_off, 0
    lt $I10, 2, rx192_start
    sub rx192_off, $I10, 1
    substr rx192_tgt, rx192_tgt, rx192_off
  rx192_start:
  # rx rxquantr195 ** 1..*
    set_addr $I196, rxquantr195_done
    rx192_cur."!mark_push"(0, -1, $I196)
  rxquantr195_loop:
  # rx subrule "ws" subtype=method negate=
    rx192_cur."!cursor_pos"(rx192_pos)
    $P10 = rx192_cur."ws"()
    unless $P10, rx192_fail
    rx192_pos = $P10."pos"()
  # rx subrule "charname" subtype=capture negate=
    rx192_cur."!cursor_pos"(rx192_pos)
    $P10 = rx192_cur."charname"()
    unless $P10, rx192_fail
    rx192_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charname")
    rx192_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx192_cur."!cursor_pos"(rx192_pos)
    $P10 = rx192_cur."ws"()
    unless $P10, rx192_fail
    rx192_pos = $P10."pos"()
    (rx192_rep) = rx192_cur."!mark_commit"($I196)
    rx192_cur."!mark_push"(rx192_rep, rx192_pos, $I196)
  # rx literal  ","
    add $I11, rx192_pos, 1
    gt $I11, rx192_eos, rx192_fail
    sub $I11, rx192_pos, rx192_off
    substr $S10, rx192_tgt, $I11, 1
    ne $S10, ",", rx192_fail
    add rx192_pos, 1
    goto rxquantr195_loop
  rxquantr195_done:
  # rx pass
    rx192_cur."!cursor_pass"(rx192_pos, "charnames")
    rx192_cur."!cursor_debug"("PASS  ", "charnames", " at pos=", rx192_pos)
    .return (rx192_cur)
  rx192_fail:
    (rx192_rep, rx192_pos, $I10, $P10) = rx192_cur."!mark_fail"(0)
    lt rx192_pos, -1, rx192_done
    eq rx192_pos, -1, rx192_fail
    jump $I10
  rx192_done:
    rx192_cur."!cursor_fail"()
    rx192_cur."!cursor_debug"("FAIL  ", "charnames")
    .return (rx192_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charnames"  :subid("73_1256752482.92984") :method
.annotate "line", 82
    new $P194, "ResizablePMCArray"
    push $P194, ""
    .return ($P194)
.end


.namespace ["HLL";"Grammar"]
.sub "charspec"  :subid("74_1256752482.92984") :method :outer("10_1256752482.92984")
.annotate "line", 83
    .local string rx198_tgt
    .local int rx198_pos
    .local int rx198_off
    .local int rx198_eos
    .local int rx198_rep
    .local pmc rx198_cur
    (rx198_cur, rx198_pos, rx198_tgt, $I10) = self."!cursor_start"()
    rx198_cur."!cursor_debug"("START ", "charspec")
    .lex unicode:"$\x{a2}", rx198_cur
    length rx198_eos, rx198_tgt
    set rx198_off, 0
    lt $I10, 2, rx198_start
    sub rx198_off, $I10, 1
    substr rx198_tgt, rx198_tgt, rx198_off
  rx198_start:
  alt203_0:
.annotate "line", 84
    set_addr $I10, alt203_1
    rx198_cur."!mark_push"(0, rx198_pos, $I10)
.annotate "line", 85
  # rx literal  "["
    add $I11, rx198_pos, 1
    gt $I11, rx198_eos, rx198_fail
    sub $I11, rx198_pos, rx198_off
    substr $S10, rx198_tgt, $I11, 1
    ne $S10, "[", rx198_fail
    add rx198_pos, 1
  # rx subrule "charnames" subtype=capture negate=
    rx198_cur."!cursor_pos"(rx198_pos)
    $P10 = rx198_cur."charnames"()
    unless $P10, rx198_fail
    rx198_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charnames")
    rx198_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx198_pos, 1
    gt $I11, rx198_eos, rx198_fail
    sub $I11, rx198_pos, rx198_off
    substr $S10, rx198_tgt, $I11, 1
    ne $S10, "]", rx198_fail
    add rx198_pos, 1
    goto alt203_end
  alt203_1:
    set_addr $I10, alt203_2
    rx198_cur."!mark_push"(0, rx198_pos, $I10)
.annotate "line", 86
  # rx charclass_q d r 1..-1
    sub $I10, rx198_pos, rx198_off
    find_not_cclass $I11, 8, rx198_tgt, $I10, rx198_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx198_fail
    add rx198_pos, rx198_off, $I11
  # rx rxquantr204 ** 0..*
    set_addr $I205, rxquantr204_done
    rx198_cur."!mark_push"(0, rx198_pos, $I205)
  rxquantr204_loop:
  # rx literal  "_"
    add $I11, rx198_pos, 1
    gt $I11, rx198_eos, rx198_fail
    sub $I11, rx198_pos, rx198_off
    substr $S10, rx198_tgt, $I11, 1
    ne $S10, "_", rx198_fail
    add rx198_pos, 1
  # rx charclass_q d r 1..-1
    sub $I10, rx198_pos, rx198_off
    find_not_cclass $I11, 8, rx198_tgt, $I10, rx198_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx198_fail
    add rx198_pos, rx198_off, $I11
    (rx198_rep) = rx198_cur."!mark_commit"($I205)
    rx198_cur."!mark_push"(rx198_rep, rx198_pos, $I205)
    goto rxquantr204_loop
  rxquantr204_done:
    goto alt203_end
  alt203_2:
    set_addr $I10, alt203_3
    rx198_cur."!mark_push"(0, rx198_pos, $I10)
.annotate "line", 87
  # rx enumcharlist negate=0 
    ge rx198_pos, rx198_eos, rx198_fail
    sub $I10, rx198_pos, rx198_off
    substr $S10, rx198_tgt, $I10, 1
    index $I11, "?@ABCDEFGHIJKLMNOPQRSTUVWXYZ", $S10
    lt $I11, 0, rx198_fail
    inc rx198_pos
    goto alt203_end
  alt203_3:
.annotate "line", 88
  # rx subrule "panic" subtype=method negate=
    rx198_cur."!cursor_pos"(rx198_pos)
    $P10 = rx198_cur."panic"("Unrecognized \\\\c character")
    unless $P10, rx198_fail
    rx198_pos = $P10."pos"()
  alt203_end:
.annotate "line", 83
  # rx pass
    rx198_cur."!cursor_pass"(rx198_pos, "charspec")
    rx198_cur."!cursor_debug"("PASS  ", "charspec", " at pos=", rx198_pos)
    .return (rx198_cur)
  rx198_fail:
    (rx198_rep, rx198_pos, $I10, $P10) = rx198_cur."!mark_fail"(0)
    lt rx198_pos, -1, rx198_done
    eq rx198_pos, -1, rx198_fail
    jump $I10
  rx198_done:
    rx198_cur."!cursor_fail"()
    rx198_cur."!cursor_debug"("FAIL  ", "charspec")
    .return (rx198_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charspec"  :subid("75_1256752482.92984") :method
.annotate "line", 83
    $P200 = self."!PREFIX__!subrule"("panic", "")
    $P201 = self."!PREFIX__!subrule"("charnames", "[")
    new $P202, "ResizablePMCArray"
    push $P202, $P200
    push $P202, "Z"
    push $P202, "Y"
    push $P202, "X"
    push $P202, "W"
    push $P202, "V"
    push $P202, "U"
    push $P202, "T"
    push $P202, "S"
    push $P202, "R"
    push $P202, "Q"
    push $P202, "P"
    push $P202, "O"
    push $P202, "N"
    push $P202, "M"
    push $P202, "L"
    push $P202, "K"
    push $P202, "J"
    push $P202, "I"
    push $P202, "H"
    push $P202, "G"
    push $P202, "F"
    push $P202, "E"
    push $P202, "D"
    push $P202, "C"
    push $P202, "B"
    push $P202, "A"
    push $P202, "@"
    push $P202, "?"
    push $P202, ""
    push $P202, $P201
    .return ($P202)
.end

### .include 'src/gen/hll-actions.pir'

.namespace []
.sub "_block11"  :anon :subid("10_1256752484.7069")
.annotate "line", 3
    get_hll_global $P14, ["HLL";"Actions"], "_block13" 
.annotate "line", 1
    .return ($P14)
.end


.namespace ["HLL";"Actions"]
.sub "_block13" :init :load :subid("11_1256752484.7069")
.annotate "line", 3
    .const 'Sub' $P462 = "54_1256752484.7069" 
    capture_lex $P462
    .const 'Sub' $P456 = "53_1256752484.7069" 
    capture_lex $P456
    .const 'Sub' $P449 = "52_1256752484.7069" 
    capture_lex $P449
    .const 'Sub' $P432 = "51_1256752484.7069" 
    capture_lex $P432
    .const 'Sub' $P415 = "50_1256752484.7069" 
    capture_lex $P415
    .const 'Sub' $P408 = "49_1256752484.7069" 
    capture_lex $P408
    .const 'Sub' $P401 = "48_1256752484.7069" 
    capture_lex $P401
    .const 'Sub' $P394 = "47_1256752484.7069" 
    capture_lex $P394
    .const 'Sub' $P387 = "46_1256752484.7069" 
    capture_lex $P387
    .const 'Sub' $P377 = "45_1256752484.7069" 
    capture_lex $P377
    .const 'Sub' $P370 = "44_1256752484.7069" 
    capture_lex $P370
    .const 'Sub' $P354 = "43_1256752484.7069" 
    capture_lex $P354
    .const 'Sub' $P267 = "35_1256752484.7069" 
    capture_lex $P267
    .const 'Sub' $P198 = "28_1256752484.7069" 
    capture_lex $P198
    .const 'Sub' $P189 = "27_1256752484.7069" 
    capture_lex $P189
    .const 'Sub' $P180 = "26_1256752484.7069" 
    capture_lex $P180
    .const 'Sub' $P149 = "25_1256752484.7069" 
    capture_lex $P149
    .const 'Sub' $P139 = "24_1256752484.7069" 
    capture_lex $P139
    .const 'Sub' $P129 = "23_1256752484.7069" 
    capture_lex $P129
    .const 'Sub' $P16 = "12_1256752484.7069" 
    capture_lex $P16
$P15 = get_root_global ["parrot"], "P6metaclass"
    $P15."new_class"("HLL::Actions")
.annotate "line", 177
    .const 'Sub' $P462 = "54_1256752484.7069" 
    capture_lex $P462
.annotate "line", 3
    .return ($P462)
.end


.namespace ["HLL";"Actions"]
.sub "EXPR"  :subid("12_1256752484.7069") :method :outer("11_1256752484.7069")
    .param pmc param_19
    .param pmc param_20 :optional
    .param int has_param_20 :opt_flag
.annotate "line", 3
    .const 'Sub' $P102 = "20_1256752484.7069" 
    capture_lex $P102
    .const 'Sub' $P95 = "19_1256752484.7069" 
    capture_lex $P95
    .const 'Sub' $P34 = "14_1256752484.7069" 
    capture_lex $P34
    .const 'Sub' $P25 = "13_1256752484.7069" 
    capture_lex $P25
    new $P18, 'ExceptionHandler'
    set_addr $P18, control_17
    $P18."handle_types"(58)
    push_eh $P18
    .lex "self", self
    .lex "$/", param_19
    if has_param_20, optparam_55
    new $P21, "Undef"
    set param_20, $P21
  optparam_55:
    .lex "$key", param_20
.annotate "line", 4
    find_lex $P23, "$key"
    unless_null $P23, vivify_56
    new $P23, "Undef"
  vivify_56:
    if $P23, unless_22_end
    .const 'Sub' $P25 = "13_1256752484.7069" 
    capture_lex $P25
    $P25()
  unless_22_end:
.annotate "line", 5
    find_lex $P28, "$/"
    set $P29, $P28["OPER"]
    unless_null $P29, vivify_57
    new $P29, "Undef"
  vivify_57:
    $P30 = $P29."peek_ast"()
    .lex "$past", $P30
.annotate "line", 6
    find_lex $P32, "$past"
    unless_null $P32, vivify_58
    new $P32, "Undef"
  vivify_58:
    if $P32, unless_31_end
    .const 'Sub' $P34 = "14_1256752484.7069" 
    capture_lex $P34
    $P34()
  unless_31_end:
.annotate "line", 21
    find_lex $P91, "$key"
    unless_null $P91, vivify_80
    new $P91, "Undef"
  vivify_80:
    set $S92, $P91
    iseq $I93, $S92, "POSTFIX"
    if $I93, if_90
.annotate "line", 22
    .const 'Sub' $P102 = "20_1256752484.7069" 
    capture_lex $P102
    $P102()
    goto if_90_end
  if_90:
.annotate "line", 21
    .const 'Sub' $P95 = "19_1256752484.7069" 
    capture_lex $P95
    $P95()
  if_90_end:
    find_lex $P125, "$/"
.annotate "line", 25
    find_lex $P126, "$past"
    unless_null $P126, vivify_89
    new $P126, "Undef"
  vivify_89:
    $P127 = $P125."!make"($P126)
.annotate "line", 3
    .return ($P127)
  control_17:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P128, exception, "payload"
    .return ($P128)
    rethrow exception
.end


.namespace ["HLL";"Actions"]
.sub "_block24"  :anon :subid("13_1256752484.7069") :outer("12_1256752484.7069")
.annotate "line", 4
    new $P26, "Exception"
    set $P26['type'], 58
    new $P27, "Integer"
    assign $P27, 0
    setattribute $P26, 'payload', $P27
    throw $P26
    .return ()
.end


.namespace ["HLL";"Actions"]
.sub "_block33"  :anon :subid("14_1256752484.7069") :outer("12_1256752484.7069")
.annotate "line", 6
    .const 'Sub' $P71 = "17_1256752484.7069" 
    capture_lex $P71
    .const 'Sub' $P58 = "16_1256752484.7069" 
    capture_lex $P58
    .const 'Sub' $P44 = "15_1256752484.7069" 
    capture_lex $P44
.annotate "line", 7
    get_hll_global $P35, ["PAST"], "Op"
    find_lex $P36, "$/"
    unless_null $P36, vivify_59
    new $P36, "Undef"
  vivify_59:
    $P37 = $P35."new"($P36 :named("node"))
    store_lex "$past", $P37
.annotate "line", 8
    find_lex $P39, "$/"
    set $P40, $P39["OPER"]
    unless_null $P40, vivify_60
    new $P40, "Hash"
  vivify_60:
    set $P41, $P40["O"]
    unless_null $P41, vivify_61
    new $P41, "Hash"
  vivify_61:
    set $P42, $P41["pasttype"]
    unless_null $P42, vivify_62
    new $P42, "Undef"
  vivify_62:
    if $P42, if_38
.annotate "line", 9
    find_lex $P53, "$/"
    set $P54, $P53["OPER"]
    unless_null $P54, vivify_63
    new $P54, "Hash"
  vivify_63:
    set $P55, $P54["O"]
    unless_null $P55, vivify_64
    new $P55, "Hash"
  vivify_64:
    set $P56, $P55["pirop"]
    unless_null $P56, vivify_65
    new $P56, "Undef"
  vivify_65:
    unless $P56, if_52_end
    .const 'Sub' $P58 = "16_1256752484.7069" 
    capture_lex $P58
    $P58()
  if_52_end:
.annotate "line", 8
    goto if_38_end
  if_38:
    .const 'Sub' $P44 = "15_1256752484.7069" 
    capture_lex $P44
    $P44()
  if_38_end:
.annotate "line", 10
    find_lex $P68, "$past"
    unless_null $P68, vivify_74
    new $P68, "Undef"
  vivify_74:
    $P69 = $P68."name"()
    unless $P69, unless_67
    set $P66, $P69
    goto unless_67_end
  unless_67:
    .const 'Sub' $P71 = "17_1256752484.7069" 
    capture_lex $P71
    $P89 = $P71()
    set $P66, $P89
  unless_67_end:
.annotate "line", 6
    .return ($P66)
.end


.namespace ["HLL";"Actions"]
.sub "_block57"  :anon :subid("16_1256752484.7069") :outer("14_1256752484.7069")
.annotate "line", 9
    find_lex $P59, "$past"
    unless_null $P59, vivify_66
    new $P59, "Undef"
  vivify_66:
    find_lex $P60, "$/"
    set $P61, $P60["OPER"]
    unless_null $P61, vivify_67
    new $P61, "Hash"
  vivify_67:
    set $P62, $P61["O"]
    unless_null $P62, vivify_68
    new $P62, "Hash"
  vivify_68:
    set $P63, $P62["pirop"]
    unless_null $P63, vivify_69
    new $P63, "Undef"
  vivify_69:
    set $S64, $P63
    $P65 = $P59."pirop"($S64)
    .return ($P65)
.end


.namespace ["HLL";"Actions"]
.sub "_block43"  :anon :subid("15_1256752484.7069") :outer("14_1256752484.7069")
.annotate "line", 8
    find_lex $P45, "$past"
    unless_null $P45, vivify_70
    new $P45, "Undef"
  vivify_70:
    find_lex $P46, "$/"
    set $P47, $P46["OPER"]
    unless_null $P47, vivify_71
    new $P47, "Hash"
  vivify_71:
    set $P48, $P47["O"]
    unless_null $P48, vivify_72
    new $P48, "Hash"
  vivify_72:
    set $P49, $P48["pasttype"]
    unless_null $P49, vivify_73
    new $P49, "Undef"
  vivify_73:
    set $S50, $P49
    $P51 = $P45."pasttype"($S50)
    .return ($P51)
.end


.namespace ["HLL";"Actions"]
.sub "_block70"  :anon :subid("17_1256752484.7069") :outer("14_1256752484.7069")
.annotate "line", 10
    .const 'Sub' $P77 = "18_1256752484.7069" 
    capture_lex $P77
.annotate "line", 11
    find_lex $P73, "$key"
    unless_null $P73, vivify_75
    new $P73, "Undef"
  vivify_75:
    set $S74, $P73
    iseq $I75, $S74, "LIST"
    unless $I75, if_72_end
    .const 'Sub' $P77 = "18_1256752484.7069" 
    capture_lex $P77
    $P77()
  if_72_end:
.annotate "line", 12

                $P0 = find_lex '$key'
                $S0 = $P0
                $S0 = downcase $S0
                $P79 = box $S0
            
.annotate "line", 17
    concat $P80, $P79, ":<"
    find_lex $P81, "$/"
    set $P82, $P81["OPER"]
    unless_null $P82, vivify_76
    new $P82, "Hash"
  vivify_76:
    set $P83, $P82["sym"]
    unless_null $P83, vivify_77
    new $P83, "Undef"
  vivify_77:
    concat $P84, $P80, $P83
    concat $P85, $P84, ">"
    .lex "$name", $P85
.annotate "line", 18
    find_lex $P86, "$past"
    unless_null $P86, vivify_78
    new $P86, "Undef"
  vivify_78:
    find_lex $P87, "$name"
    unless_null $P87, vivify_79
    new $P87, "Undef"
  vivify_79:
    $P88 = $P86."name"($P87)
.annotate "line", 10
    .return ($P88)
.end


.namespace ["HLL";"Actions"]
.sub "_block76"  :anon :subid("18_1256752484.7069") :outer("17_1256752484.7069")
.annotate "line", 11
    new $P78, "String"
    assign $P78, "infix"
    store_lex "$key", $P78
    .return ($P78)
.end


.namespace ["HLL";"Actions"]
.sub "_block101"  :anon :subid("20_1256752484.7069") :outer("12_1256752484.7069")
.annotate "line", 22
    .const 'Sub' $P109 = "21_1256752484.7069" 
    capture_lex $P109
.annotate "line", 23
    find_lex $P104, "$/"
    unless_null $P104, vivify_81
    new $P104, "Undef"
  vivify_81:
    $P105 = $P104."list"()
    defined $I106, $P105
    unless $I106, for_undef_82
    iter $P103, $P105
    new $P123, 'ExceptionHandler'
    set_addr $P123, loop122_handler
    $P123."handle_types"(65, 67, 66)
    push_eh $P123
  loop122_test:
    unless $P103, loop122_done
    shift $P107, $P103
  loop122_redo:
    .const 'Sub' $P109 = "21_1256752484.7069" 
    capture_lex $P109
    $P109($P107)
  loop122_next:
    goto loop122_test
  loop122_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P124, exception, 'type'
    eq $P124, 65, loop122_next
    eq $P124, 67, loop122_redo
  loop122_done:
    pop_eh 
  for_undef_82:
.annotate "line", 22
    .return ($P103)
.end


.namespace ["HLL";"Actions"]
.sub "_block108"  :anon :subid("21_1256752484.7069") :outer("20_1256752484.7069")
    .param pmc param_110
.annotate "line", 23
    .const 'Sub' $P116 = "22_1256752484.7069" 
    capture_lex $P116
    .lex "$_", param_110
    find_lex $P113, "$_"
    unless_null $P113, vivify_83
    new $P113, "Undef"
  vivify_83:
    $P114 = $P113."ast"()
    if $P114, if_112
    set $P111, $P114
    goto if_112_end
  if_112:
    .const 'Sub' $P116 = "22_1256752484.7069" 
    capture_lex $P116
    $P121 = $P116()
    set $P111, $P121
  if_112_end:
    .return ($P111)
.end


.namespace ["HLL";"Actions"]
.sub "_block115"  :anon :subid("22_1256752484.7069") :outer("21_1256752484.7069")
.annotate "line", 23
    find_lex $P117, "$past"
    unless_null $P117, vivify_84
    new $P117, "Undef"
  vivify_84:
    find_lex $P118, "$_"
    unless_null $P118, vivify_85
    new $P118, "Undef"
  vivify_85:
    $P119 = $P118."ast"()
    $P120 = $P117."push"($P119)
    .return ($P120)
.end


.namespace ["HLL";"Actions"]
.sub "_block94"  :anon :subid("19_1256752484.7069") :outer("12_1256752484.7069")
.annotate "line", 21
    find_lex $P96, "$past"
    unless_null $P96, vivify_86
    new $P96, "Undef"
  vivify_86:
    find_lex $P97, "$/"
    unless_null $P97, vivify_87
    new $P97, "ResizablePMCArray"
  vivify_87:
    set $P98, $P97[0]
    unless_null $P98, vivify_88
    new $P98, "Undef"
  vivify_88:
    $P99 = $P98."ast"()
    $P100 = $P96."unshift"($P99)
    .return ($P100)
.end


.namespace ["HLL";"Actions"]
.sub "termish"  :subid("23_1256752484.7069") :method :outer("11_1256752484.7069")
    .param pmc param_132
.annotate "line", 28
    new $P131, 'ExceptionHandler'
    set_addr $P131, control_130
    $P131."handle_types"(58)
    push_eh $P131
    .lex "self", self
    .lex "$/", param_132
.annotate "line", 29
    find_lex $P133, "$/"
    find_lex $P134, "$/"
    set $P135, $P134["term"]
    unless_null $P135, vivify_90
    new $P135, "Undef"
  vivify_90:
    $P136 = $P135."ast"()
    $P137 = $P133."!make"($P136)
.annotate "line", 28
    .return ($P137)
  control_130:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P138, exception, "payload"
    .return ($P138)
    rethrow exception
.end


.namespace ["HLL";"Actions"]
.sub "term:sym<circumfix>"  :subid("24_1256752484.7069") :method :outer("11_1256752484.7069")
    .param pmc param_142
.annotate "line", 32
    new $P141, 'ExceptionHandler'
    set_addr $P141, control_140
    $P141."handle_types"(58)
    push_eh $P141
    .lex "self", self
    .lex "$/", param_142
    find_lex $P143, "$/"
    find_lex $P144, "$/"
    set $P145, $P144["circumfix"]
    unless_null $P145, vivify_91
    new $P145, "Undef"
  vivify_91:
    $P146 = $P145."ast"()
    $P147 = $P143."!make"($P146)
    .return ($P147)
  control_140:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P148, exception, "payload"
    .return ($P148)
    rethrow exception
.end


.namespace ["HLL";"Actions"]
.sub "integer"  :subid("25_1256752484.7069") :method :outer("11_1256752484.7069")
    .param pmc param_152
.annotate "line", 34
    new $P151, 'ExceptionHandler'
    set_addr $P151, control_150
    $P151."handle_types"(58)
    push_eh $P151
    .lex "self", self
    .lex "$/", param_152
.annotate "line", 35
    find_lex $P153, "$/"
.annotate "line", 36
    find_lex $P156, "$/"
    set $P157, $P156["decint"]
    unless_null $P157, vivify_92
    new $P157, "Undef"
  vivify_92:
    if $P157, if_155
.annotate "line", 38
    find_lex $P163, "$/"
    set $P164, $P163["hexint"]
    unless_null $P164, vivify_93
    new $P164, "Undef"
  vivify_93:
    if $P164, if_162
.annotate "line", 40
    find_lex $P170, "$/"
    set $P171, $P170["octint"]
    unless_null $P171, vivify_94
    new $P171, "Undef"
  vivify_94:
    if $P171, if_169
.annotate "line", 41
    find_lex $P175, "$/"
    set $P176, $P175["binint"]
    unless_null $P176, vivify_95
    new $P176, "Undef"
  vivify_95:
    $P177 = "string_to_int"($P176, 2)
    set $P168, $P177
.annotate "line", 40
    goto if_169_end
  if_169:
    find_lex $P172, "$/"
    set $P173, $P172["octint"]
    unless_null $P173, vivify_96
    new $P173, "Undef"
  vivify_96:
    $P174 = $P173."ast"()
    set $P168, $P174
  if_169_end:
    set $P161, $P168
.annotate "line", 38
    goto if_162_end
  if_162:
    find_lex $P165, "$/"
    set $P166, $P165["hexint"]
    unless_null $P166, vivify_97
    new $P166, "Undef"
  vivify_97:
    $P167 = $P166."ast"()
    set $P161, $P167
  if_162_end:
    set $P154, $P161
.annotate "line", 36
    goto if_155_end
  if_155:
    find_lex $P158, "$/"
    set $P159, $P158["decint"]
    unless_null $P159, vivify_98
    new $P159, "Undef"
  vivify_98:
    $P160 = "string_to_int"($P159, 10)
    set $P154, $P160
  if_155_end:
    $P178 = $P153."!make"($P154)
.annotate "line", 34
    .return ($P178)
  control_150:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P179, exception, "payload"
    .return ($P179)
    rethrow exception
.end


.namespace ["HLL";"Actions"]
.sub "hexint"  :subid("26_1256752484.7069") :method :outer("11_1256752484.7069")
    .param pmc param_183
.annotate "line", 46
    new $P182, 'ExceptionHandler'
    set_addr $P182, control_181
    $P182."handle_types"(58)
    push_eh $P182
    .lex "self", self
    .lex "$/", param_183
.annotate "line", 47
    find_lex $P184, "$/"
    find_lex $P185, "$/"
    unless_null $P185, vivify_99
    new $P185, "Undef"
  vivify_99:
    $P186 = "string_to_int"($P185, 16)
    $P187 = $P184."!make"($P186)
.annotate "line", 46
    .return ($P187)
  control_181:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P188, exception, "payload"
    .return ($P188)
    rethrow exception
.end


.namespace ["HLL";"Actions"]
.sub "octint"  :subid("27_1256752484.7069") :method :outer("11_1256752484.7069")
    .param pmc param_192
.annotate "line", 50
    new $P191, 'ExceptionHandler'
    set_addr $P191, control_190
    $P191."handle_types"(58)
    push_eh $P191
    .lex "self", self
    .lex "$/", param_192
.annotate "line", 51
    find_lex $P193, "$/"
    find_lex $P194, "$/"
    unless_null $P194, vivify_100
    new $P194, "Undef"
  vivify_100:
    $P195 = "string_to_int"($P194, 8)
    $P196 = $P193."!make"($P195)
.annotate "line", 50
    .return ($P196)
  control_190:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P197, exception, "payload"
    .return ($P197)
    rethrow exception
.end


.namespace ["HLL";"Actions"]
.sub "quote_EXPR"  :subid("28_1256752484.7069") :method :outer("11_1256752484.7069")
    .param pmc param_201
.annotate "line", 54
    .const 'Sub' $P258 = "34_1256752484.7069" 
    capture_lex $P258
    .const 'Sub' $P210 = "29_1256752484.7069" 
    capture_lex $P210
    new $P200, 'ExceptionHandler'
    set_addr $P200, control_199
    $P200."handle_types"(58)
    push_eh $P200
    .lex "self", self
    .lex "$/", param_201
.annotate "line", 55
    find_lex $P202, "$/"
    set $P203, $P202["quote_delimited"]
    unless_null $P203, vivify_101
    new $P203, "Undef"
  vivify_101:
    $P204 = $P203."ast"()
    .lex "$past", $P204
.annotate "line", 56
    get_hll_global $P206, ["HLL";"Grammar"], "quotemod_check"
    find_lex $P207, "$/"
    unless_null $P207, vivify_102
    new $P207, "Undef"
  vivify_102:
    $P208 = $P206($P207, "w")
    unless $P208, if_205_end
    .const 'Sub' $P210 = "29_1256752484.7069" 
    capture_lex $P210
    $P210()
  if_205_end:
.annotate "line", 68
    find_lex $P254, "$past"
    unless_null $P254, vivify_113
    new $P254, "Undef"
  vivify_113:
    $P255 = "isaPAST"($P254)
    isfalse $I256, $P255
    unless $I256, if_253_end
    .const 'Sub' $P258 = "34_1256752484.7069" 
    capture_lex $P258
    $P258()
  if_253_end:
    find_lex $P263, "$/"
.annotate "line", 71
    find_lex $P264, "$past"
    unless_null $P264, vivify_115
    new $P264, "Undef"
  vivify_115:
    $P265 = $P263."!make"($P264)
.annotate "line", 54
    .return ($P265)
  control_199:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P266, exception, "payload"
    .return ($P266)
    rethrow exception
.end


.namespace ["HLL";"Actions"]
.sub "_block209"  :anon :subid("29_1256752484.7069") :outer("28_1256752484.7069")
.annotate "line", 56
    .const 'Sub' $P221 = "31_1256752484.7069" 
    capture_lex $P221
    .const 'Sub' $P216 = "30_1256752484.7069" 
    capture_lex $P216
.annotate "line", 57
    find_lex $P213, "$past"
    unless_null $P213, vivify_103
    new $P213, "Undef"
  vivify_103:
    $P214 = "isaPAST"($P213)
    if $P214, if_212
.annotate "line", 60
    .const 'Sub' $P221 = "31_1256752484.7069" 
    capture_lex $P221
    $P252 = $P221()
    set $P211, $P252
.annotate "line", 57
    goto if_212_end
  if_212:
    .const 'Sub' $P216 = "30_1256752484.7069" 
    capture_lex $P216
    $P219 = $P216()
    set $P211, $P219
  if_212_end:
.annotate "line", 56
    .return ($P211)
.end


.namespace ["HLL";"Actions"]
.sub "_block220"  :anon :subid("31_1256752484.7069") :outer("29_1256752484.7069")
.annotate "line", 60
    .const 'Sub' $P234 = "32_1256752484.7069" 
    capture_lex $P234
.annotate "line", 61
    get_hll_global $P222, ["HLL";"Grammar"], "split_words"
    find_lex $P223, "$/"
    unless_null $P223, vivify_104
    new $P223, "Undef"
  vivify_104:
    find_lex $P224, "$past"
    unless_null $P224, vivify_105
    new $P224, "Undef"
  vivify_105:
    $P225 = $P222($P223, $P224)
    .lex "@words", $P225
.annotate "line", 62
    find_lex $P228, "@words"
    unless_null $P228, vivify_106
    new $P228, "ResizablePMCArray"
  vivify_106:
    set $N229, $P228
    new $P230, "Integer"
    assign $P230, 1
    set $N231, $P230
    isgt $I232, $N229, $N231
    if $I232, if_227
    new $P226, 'Integer'
    set $P226, $I232
    goto if_227_end
  if_227:
    .const 'Sub' $P234 = "32_1256752484.7069" 
    capture_lex $P234
    $P251 = $P234()
    set $P226, $P251
  if_227_end:
.annotate "line", 60
    .return ($P226)
.end


.namespace ["HLL";"Actions"]
.sub "_block233"  :anon :subid("32_1256752484.7069") :outer("31_1256752484.7069")
.annotate "line", 62
    .const 'Sub' $P243 = "33_1256752484.7069" 
    capture_lex $P243
.annotate "line", 63
    get_hll_global $P235, ["PAST"], "Op"
    find_lex $P236, "$/"
    unless_null $P236, vivify_107
    new $P236, "Undef"
  vivify_107:
    $P237 = $P235."new"("list" :named("pasttype"), $P236 :named("node"))
    store_lex "$past", $P237
.annotate "line", 64
    find_lex $P239, "@words"
    unless_null $P239, vivify_108
    new $P239, "ResizablePMCArray"
  vivify_108:
    defined $I240, $P239
    unless $I240, for_undef_109
    iter $P238, $P239
    new $P249, 'ExceptionHandler'
    set_addr $P249, loop248_handler
    $P249."handle_types"(65, 67, 66)
    push_eh $P249
  loop248_test:
    unless $P238, loop248_done
    shift $P241, $P238
  loop248_redo:
    .const 'Sub' $P243 = "33_1256752484.7069" 
    capture_lex $P243
    $P243($P241)
  loop248_next:
    goto loop248_test
  loop248_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P250, exception, 'type'
    eq $P250, 65, loop248_next
    eq $P250, 67, loop248_redo
  loop248_done:
    pop_eh 
  for_undef_109:
.annotate "line", 62
    .return ($P238)
.end


.namespace ["HLL";"Actions"]
.sub "_block242"  :anon :subid("33_1256752484.7069") :outer("32_1256752484.7069")
    .param pmc param_244
.annotate "line", 64
    .lex "$_", param_244
    find_lex $P245, "$past"
    unless_null $P245, vivify_110
    new $P245, "Undef"
  vivify_110:
    find_lex $P246, "$_"
    unless_null $P246, vivify_111
    new $P246, "Undef"
  vivify_111:
    $P247 = $P245."push"($P246)
    .return ($P247)
.end


.namespace ["HLL";"Actions"]
.sub "_block215"  :anon :subid("30_1256752484.7069") :outer("29_1256752484.7069")
.annotate "line", 58
    find_lex $P217, "$/"
    unless_null $P217, vivify_112
    new $P217, "Undef"
  vivify_112:
    $P218 = $P217."panic"("Can't form :w list from non-constant strings (yet)")
.annotate "line", 57
    .return ($P218)
.end


.namespace ["HLL";"Actions"]
.sub "_block257"  :anon :subid("34_1256752484.7069") :outer("28_1256752484.7069")
.annotate "line", 69
    get_hll_global $P259, ["PAST"], "Val"
    find_lex $P260, "$past"
    unless_null $P260, vivify_114
    new $P260, "Undef"
  vivify_114:
    set $S261, $P260
    $P262 = $P259."new"($S261 :named("value"))
    store_lex "$past", $P262
.annotate "line", 68
    .return ($P262)
.end


.namespace ["HLL";"Actions"]
.sub "quote_delimited"  :subid("35_1256752484.7069") :method :outer("11_1256752484.7069")
    .param pmc param_270
.annotate "line", 74
    .const 'Sub' $P341 = "42_1256752484.7069" 
    capture_lex $P341
    .const 'Sub' $P329 = "41_1256752484.7069" 
    capture_lex $P329
    .const 'Sub' $P279 = "36_1256752484.7069" 
    capture_lex $P279
    new $P269, 'ExceptionHandler'
    set_addr $P269, control_268
    $P269."handle_types"(58)
    push_eh $P269
    .lex "self", self
    .lex "$/", param_270
.annotate "line", 75
    new $P271, "ResizablePMCArray"
    .lex "@parts", $P271
.annotate "line", 76
    new $P272, "String"
    assign $P272, ""
    .lex "$lastlit", $P272
.annotate "line", 77
    find_lex $P274, "$/"
    set $P275, $P274["quote_atom"]
    unless_null $P275, vivify_116
    new $P275, "Undef"
  vivify_116:
    defined $I276, $P275
    unless $I276, for_undef_117
    iter $P273, $P275
    new $P322, 'ExceptionHandler'
    set_addr $P322, loop321_handler
    $P322."handle_types"(65, 67, 66)
    push_eh $P322
  loop321_test:
    unless $P273, loop321_done
    shift $P277, $P273
  loop321_redo:
    .const 'Sub' $P279 = "36_1256752484.7069" 
    capture_lex $P279
    $P279($P277)
  loop321_next:
    goto loop321_test
  loop321_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P323, exception, 'type'
    eq $P323, 65, loop321_next
    eq $P323, 67, loop321_redo
  loop321_done:
    pop_eh 
  for_undef_117:
.annotate "line", 91
    find_lex $P325, "$lastlit"
    unless_null $P325, vivify_130
    new $P325, "Undef"
  vivify_130:
    set $S326, $P325
    isgt $I327, $S326, ""
    unless $I327, if_324_end
    .const 'Sub' $P329 = "41_1256752484.7069" 
    capture_lex $P329
    $P329()
  if_324_end:
.annotate "line", 92
    find_lex $P335, "@parts"
    unless_null $P335, vivify_133
    new $P335, "ResizablePMCArray"
  vivify_133:
    if $P335, if_334
    new $P338, "String"
    assign $P338, ""
    set $P333, $P338
    goto if_334_end
  if_334:
    find_lex $P336, "@parts"
    unless_null $P336, vivify_134
    new $P336, "ResizablePMCArray"
  vivify_134:
    $P337 = $P336."shift"()
    set $P333, $P337
  if_334_end:
    .lex "$past", $P333
.annotate "line", 93
    new $P348, 'ExceptionHandler'
    set_addr $P348, loop347_handler
    $P348."handle_types"(65, 67, 66)
    push_eh $P348
  loop347_test:
    find_lex $P339, "@parts"
    unless_null $P339, vivify_135
    new $P339, "ResizablePMCArray"
  vivify_135:
    unless $P339, loop347_done
  loop347_redo:
    .const 'Sub' $P341 = "42_1256752484.7069" 
    capture_lex $P341
    $P341()
  loop347_next:
    goto loop347_test
  loop347_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P349, exception, 'type'
    eq $P349, 65, loop347_next
    eq $P349, 67, loop347_redo
  loop347_done:
    pop_eh 
    find_lex $P350, "$/"
.annotate "line", 96
    find_lex $P351, "$past"
    unless_null $P351, vivify_138
    new $P351, "Undef"
  vivify_138:
    $P352 = $P350."!make"($P351)
.annotate "line", 74
    .return ($P352)
  control_268:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P353, exception, "payload"
    .return ($P353)
    rethrow exception
.end


.namespace ["HLL";"Actions"]
.sub "_block278"  :anon :subid("36_1256752484.7069") :outer("35_1256752484.7069")
    .param pmc param_280
.annotate "line", 77
    .const 'Sub' $P307 = "39_1256752484.7069" 
    capture_lex $P307
    .const 'Sub' $P300 = "38_1256752484.7069" 
    capture_lex $P300
    .const 'Sub' $P289 = "37_1256752484.7069" 
    capture_lex $P289
    .lex "$_", param_280
.annotate "line", 78
    find_lex $P281, "$_"
    unless_null $P281, vivify_118
    new $P281, "Undef"
  vivify_118:
    $P282 = $P281."ast"()
    .lex "$ast", $P282
.annotate "line", 79
    find_lex $P285, "$ast"
    unless_null $P285, vivify_119
    new $P285, "Undef"
  vivify_119:
    $P286 = "isaPAST"($P285)
    isfalse $I287, $P286
    if $I287, if_284
.annotate "line", 82
    find_lex $P296, "$ast"
    unless_null $P296, vivify_120
    new $P296, "Undef"
  vivify_120:
    get_hll_global $P297, ["PAST"], "Val"
    $P298 = $P296."isa"($P297)
    if $P298, if_295
.annotate "line", 85
    .const 'Sub' $P307 = "39_1256752484.7069" 
    capture_lex $P307
    $P320 = $P307()
    set $P294, $P320
.annotate "line", 82
    goto if_295_end
  if_295:
    .const 'Sub' $P300 = "38_1256752484.7069" 
    capture_lex $P300
    $P305 = $P300()
    set $P294, $P305
  if_295_end:
.annotate "line", 79
    set $P283, $P294
    goto if_284_end
  if_284:
    .const 'Sub' $P289 = "37_1256752484.7069" 
    capture_lex $P289
    $P293 = $P289()
    set $P283, $P293
  if_284_end:
.annotate "line", 77
    .return ($P283)
.end


.namespace ["HLL";"Actions"]
.sub "_block306"  :anon :subid("39_1256752484.7069") :outer("36_1256752484.7069")
.annotate "line", 85
    .const 'Sub' $P313 = "40_1256752484.7069" 
    capture_lex $P313
.annotate "line", 86
    find_lex $P309, "$lastlit"
    unless_null $P309, vivify_121
    new $P309, "Undef"
  vivify_121:
    set $S310, $P309
    isgt $I311, $S310, ""
    unless $I311, if_308_end
    .const 'Sub' $P313 = "40_1256752484.7069" 
    capture_lex $P313
    $P313()
  if_308_end:
.annotate "line", 87
    find_lex $P317, "@parts"
    unless_null $P317, vivify_124
    new $P317, "ResizablePMCArray"
  vivify_124:
    find_lex $P318, "$ast"
    unless_null $P318, vivify_125
    new $P318, "Undef"
  vivify_125:
    $P317."push"($P318)
.annotate "line", 88
    new $P319, "String"
    assign $P319, ""
    store_lex "$lastlit", $P319
.annotate "line", 85
    .return ($P319)
.end


.namespace ["HLL";"Actions"]
.sub "_block312"  :anon :subid("40_1256752484.7069") :outer("39_1256752484.7069")
.annotate "line", 86
    find_lex $P314, "@parts"
    unless_null $P314, vivify_122
    new $P314, "ResizablePMCArray"
  vivify_122:
    find_lex $P315, "$lastlit"
    unless_null $P315, vivify_123
    new $P315, "Undef"
  vivify_123:
    $P316 = $P314."push"($P315)
    .return ($P316)
.end


.namespace ["HLL";"Actions"]
.sub "_block299"  :anon :subid("38_1256752484.7069") :outer("36_1256752484.7069")
.annotate "line", 83
    find_lex $P301, "$lastlit"
    unless_null $P301, vivify_126
    new $P301, "Undef"
  vivify_126:
    find_lex $P302, "$ast"
    unless_null $P302, vivify_127
    new $P302, "Undef"
  vivify_127:
    $S303 = $P302."value"()
    concat $P304, $P301, $S303
    store_lex "$lastlit", $P304
.annotate "line", 82
    .return ($P304)
.end


.namespace ["HLL";"Actions"]
.sub "_block288"  :anon :subid("37_1256752484.7069") :outer("36_1256752484.7069")
.annotate "line", 80
    find_lex $P290, "$lastlit"
    unless_null $P290, vivify_128
    new $P290, "Undef"
  vivify_128:
    find_lex $P291, "$ast"
    unless_null $P291, vivify_129
    new $P291, "Undef"
  vivify_129:
    concat $P292, $P290, $P291
    store_lex "$lastlit", $P292
.annotate "line", 79
    .return ($P292)
.end


.namespace ["HLL";"Actions"]
.sub "_block328"  :anon :subid("41_1256752484.7069") :outer("35_1256752484.7069")
.annotate "line", 91
    find_lex $P330, "@parts"
    unless_null $P330, vivify_131
    new $P330, "ResizablePMCArray"
  vivify_131:
    find_lex $P331, "$lastlit"
    unless_null $P331, vivify_132
    new $P331, "Undef"
  vivify_132:
    $P332 = $P330."push"($P331)
    .return ($P332)
.end


.namespace ["HLL";"Actions"]
.sub "_block340"  :anon :subid("42_1256752484.7069") :outer("35_1256752484.7069")
.annotate "line", 94
    get_hll_global $P342, ["PAST"], "Op"
    find_lex $P343, "$past"
    unless_null $P343, vivify_136
    new $P343, "Undef"
  vivify_136:
    find_lex $P344, "@parts"
    unless_null $P344, vivify_137
    new $P344, "ResizablePMCArray"
  vivify_137:
    $P345 = $P344."shift"()
    $P346 = $P342."new"($P343, $P345, "concat" :named("pirop"))
    store_lex "$past", $P346
.annotate "line", 93
    .return ($P346)
.end


.namespace ["HLL";"Actions"]
.sub "quote_atom"  :subid("43_1256752484.7069") :method :outer("11_1256752484.7069")
    .param pmc param_357
.annotate "line", 99
    new $P356, 'ExceptionHandler'
    set_addr $P356, control_355
    $P356."handle_types"(58)
    push_eh $P356
    .lex "self", self
    .lex "$/", param_357
.annotate "line", 100
    find_lex $P358, "$/"
    find_lex $P361, "$/"
    set $P362, $P361["escape"]
    unless_null $P362, vivify_139
    new $P362, "Undef"
  vivify_139:
    if $P362, if_360
    find_lex $P366, "$/"
    unless_null $P366, vivify_140
    new $P366, "Undef"
  vivify_140:
    set $S367, $P366
    new $P359, 'String'
    set $P359, $S367
    goto if_360_end
  if_360:
    find_lex $P363, "$/"
    set $P364, $P363["escape"]
    unless_null $P364, vivify_141
    new $P364, "Undef"
  vivify_141:
    $P365 = $P364."ast"()
    set $P359, $P365
  if_360_end:
    $P368 = $P358."!make"($P359)
.annotate "line", 99
    .return ($P368)
  control_355:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P369, exception, "payload"
    .return ($P369)
    rethrow exception
.end


.namespace ["HLL";"Actions"]
.sub "escape:sym<backslash>"  :subid("44_1256752484.7069") :method :outer("11_1256752484.7069")
    .param pmc param_373
.annotate "line", 103
    new $P372, 'ExceptionHandler'
    set_addr $P372, control_371
    $P372."handle_types"(58)
    push_eh $P372
    .lex "self", self
    .lex "$/", param_373
    find_lex $P374, "$/"
    $P375 = $P374."!make"("\\")
    .return ($P375)
  control_371:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P376, exception, "payload"
    .return ($P376)
    rethrow exception
.end


.namespace ["HLL";"Actions"]
.sub "escape:sym<stopper>"  :subid("45_1256752484.7069") :method :outer("11_1256752484.7069")
    .param pmc param_380
.annotate "line", 104
    new $P379, 'ExceptionHandler'
    set_addr $P379, control_378
    $P379."handle_types"(58)
    push_eh $P379
    .lex "self", self
    .lex "$/", param_380
    find_lex $P381, "$/"
    find_lex $P382, "$/"
    set $P383, $P382["stopper"]
    unless_null $P383, vivify_142
    new $P383, "Undef"
  vivify_142:
    set $S384, $P383
    $P385 = $P381."!make"($S384)
    .return ($P385)
  control_378:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P386, exception, "payload"
    .return ($P386)
    rethrow exception
.end


.namespace ["HLL";"Actions"]
.sub "escape:sym<bs>"  :subid("46_1256752484.7069") :method :outer("11_1256752484.7069")
    .param pmc param_390
.annotate "line", 106
    new $P389, 'ExceptionHandler'
    set_addr $P389, control_388
    $P389."handle_types"(58)
    push_eh $P389
    .lex "self", self
    .lex "$/", param_390
    find_lex $P391, "$/"
    $P392 = $P391."!make"("\b")
    .return ($P392)
  control_388:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P393, exception, "payload"
    .return ($P393)
    rethrow exception
.end


.namespace ["HLL";"Actions"]
.sub "escape:sym<nl>"  :subid("47_1256752484.7069") :method :outer("11_1256752484.7069")
    .param pmc param_397
.annotate "line", 107
    new $P396, 'ExceptionHandler'
    set_addr $P396, control_395
    $P396."handle_types"(58)
    push_eh $P396
    .lex "self", self
    .lex "$/", param_397
    find_lex $P398, "$/"
    $P399 = $P398."!make"("\n")
    .return ($P399)
  control_395:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P400, exception, "payload"
    .return ($P400)
    rethrow exception
.end


.namespace ["HLL";"Actions"]
.sub "escape:sym<cr>"  :subid("48_1256752484.7069") :method :outer("11_1256752484.7069")
    .param pmc param_404
.annotate "line", 108
    new $P403, 'ExceptionHandler'
    set_addr $P403, control_402
    $P403."handle_types"(58)
    push_eh $P403
    .lex "self", self
    .lex "$/", param_404
    find_lex $P405, "$/"
    $P406 = $P405."!make"("\r")
    .return ($P406)
  control_402:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P407, exception, "payload"
    .return ($P407)
    rethrow exception
.end


.namespace ["HLL";"Actions"]
.sub "escape:sym<tab>"  :subid("49_1256752484.7069") :method :outer("11_1256752484.7069")
    .param pmc param_411
.annotate "line", 109
    new $P410, 'ExceptionHandler'
    set_addr $P410, control_409
    $P410."handle_types"(58)
    push_eh $P410
    .lex "self", self
    .lex "$/", param_411
    find_lex $P412, "$/"
    $P413 = $P412."!make"("\t")
    .return ($P413)
  control_409:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P414, exception, "payload"
    .return ($P414)
    rethrow exception
.end


.namespace ["HLL";"Actions"]
.sub "escape:sym<hex>"  :subid("50_1256752484.7069") :method :outer("11_1256752484.7069")
    .param pmc param_418
.annotate "line", 111
    new $P417, 'ExceptionHandler'
    set_addr $P417, control_416
    $P417."handle_types"(58)
    push_eh $P417
    .lex "self", self
    .lex "$/", param_418
.annotate "line", 112
    find_lex $P419, "$/"
    find_lex $P422, "$/"
    set $P423, $P422["hexint"]
    unless_null $P423, vivify_143
    new $P423, "Undef"
  vivify_143:
    if $P423, if_421
    find_lex $P426, "$/"
    set $P427, $P426["hexints"]
    unless_null $P427, vivify_144
    new $P427, "Hash"
  vivify_144:
    set $P428, $P427["hexint"]
    unless_null $P428, vivify_145
    new $P428, "Undef"
  vivify_145:
    set $P420, $P428
    goto if_421_end
  if_421:
    find_lex $P424, "$/"
    set $P425, $P424["hexint"]
    unless_null $P425, vivify_146
    new $P425, "Undef"
  vivify_146:
    set $P420, $P425
  if_421_end:
    $P429 = "ints_to_string"($P420)
    $P430 = $P419."!make"($P429)
.annotate "line", 111
    .return ($P430)
  control_416:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P431, exception, "payload"
    .return ($P431)
    rethrow exception
.end


.namespace ["HLL";"Actions"]
.sub "escape:sym<oct>"  :subid("51_1256752484.7069") :method :outer("11_1256752484.7069")
    .param pmc param_435
.annotate "line", 115
    new $P434, 'ExceptionHandler'
    set_addr $P434, control_433
    $P434."handle_types"(58)
    push_eh $P434
    .lex "self", self
    .lex "$/", param_435
.annotate "line", 116
    find_lex $P436, "$/"
    find_lex $P439, "$/"
    set $P440, $P439["octint"]
    unless_null $P440, vivify_147
    new $P440, "Undef"
  vivify_147:
    if $P440, if_438
    find_lex $P443, "$/"
    set $P444, $P443["octints"]
    unless_null $P444, vivify_148
    new $P444, "Hash"
  vivify_148:
    set $P445, $P444["octint"]
    unless_null $P445, vivify_149
    new $P445, "Undef"
  vivify_149:
    set $P437, $P445
    goto if_438_end
  if_438:
    find_lex $P441, "$/"
    set $P442, $P441["octint"]
    unless_null $P442, vivify_150
    new $P442, "Undef"
  vivify_150:
    set $P437, $P442
  if_438_end:
    $P446 = "ints_to_string"($P437)
    $P447 = $P436."!make"($P446)
.annotate "line", 115
    .return ($P447)
  control_433:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P448, exception, "payload"
    .return ($P448)
    rethrow exception
.end


.namespace ["HLL";"Actions"]
.sub "string_to_int"  :subid("52_1256752484.7069") :outer("11_1256752484.7069")
    .param pmc param_452
    .param pmc param_453
.annotate "line", 119
    new $P451, 'ExceptionHandler'
    set_addr $P451, control_450
    $P451."handle_types"(58)
    push_eh $P451
    .lex "$src", param_452
    .lex "$base", param_453
.annotate "line", 120

        .local pmc src
        .local string src_s
        src = find_lex '$src'
        src_s = src
        .local int base, pos, eos, result
        $P0 = find_lex '$base'
        base = $P0
        pos = 0
        eos = length src_s
        result = 0
      str_loop:
        unless pos < eos goto str_done
        .local string char
        char = substr src_s, pos, 1
        if char == '_' goto str_next
        .local int digitval
        digitval = index "00112233445566778899AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz", char
        if digitval < 0 goto err_base
        digitval >>= 1
        if digitval > base goto err_base
        result *= base
        result += digitval
      str_next:
        inc pos
        goto str_loop
      err_base:
	src.'panic'('Invalid radix conversion of "', char, '"')
      str_done:
        $P454 = box result
    
.annotate "line", 119
    .return ($P454)
  control_450:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P455, exception, "payload"
    .return ($P455)
    rethrow exception
.end


.namespace ["HLL";"Actions"]
.sub "ints_to_string"  :subid("53_1256752484.7069") :outer("11_1256752484.7069")
    .param pmc param_459
.annotate "line", 153
    new $P458, 'ExceptionHandler'
    set_addr $P458, control_457
    $P458."handle_types"(58)
    push_eh $P458
    .lex "$ints", param_459
.annotate "line", 154

        .local string result
        result = ''
        .local pmc ints, ints_it
        ints = find_lex '$ints'
        $I0 = does ints, 'array'
        unless $I0 goto ints_1
        ints_it = iter ints
      ints_loop:
        unless ints_it goto ints_done
        $P0 = shift ints_it
        $I0 = $P0.'ast'()
        $S0 = chr $I0
        concat result, $S0
        goto ints_loop
      ints_1:
        $I0 = ints.'ast'()
        result = chr $I0
      ints_done:
        $P460 = box result
    
.annotate "line", 153
    .return ($P460)
  control_457:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P461, exception, "payload"
    .return ($P461)
    rethrow exception
.end


.namespace ["HLL";"Actions"]
.sub "isaPAST"  :subid("54_1256752484.7069") :outer("11_1256752484.7069")
    .param pmc param_465
.annotate "line", 177
    new $P464, 'ExceptionHandler'
    set_addr $P464, control_463
    $P464."handle_types"(58)
    push_eh $P464
    .lex "$x", param_465
.annotate "line", 178

        $P0 = find_lex '$x'
        $I0 = isa $P0, ['PAST';'Node']
        $P466 = box $I0
    
.annotate "line", 177
    .return ($P466)
  control_463:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P467, exception, "payload"
    .return ($P467)
    rethrow exception
.end


.namespace ['HLL';'Grammar']

=item O(spec [, save])

This subrule attaches operator precedence information to
a match object (such as an operator token).  A typical
invocation for the subrule might be:

    token infix:sym<+> { <sym> <O( q{ %additive, :pirop<add> } )> }

This says to add all of the attribute of the C<%additive> hash
(described below) and a C<pirop> entry into the match object
returned by the C<< infix:sym<+> >> token (as the C<O> named
capture).  Note that this is a alphabetic 'O", not a digit zero.

Currently the C<O> subrule accepts a string argument describing
the hash to be stored.  (Note the C< q{ ... } > above.  Eventually
it may be possible to omit the 'q' such that an actual (constant)
hash constructor is passed as an argument to C<O>.

The hash built via the string argument to C<O> is cached, so that
subsequent parses of the same token re-use the hash built from
previous parses of the token, rather than building a new hash
on each invocation.

The C<save> argument is used to build "hash" aggregates that can
be referred to by subsequent calls to C<O>.  For example,

    NQP::Grammar.O(':prec<t=>, :assoc<left>', '%additive' );

specifies the values to be associated with later references to
"%additive".  Eventually it will likely be possible to use true
hashes from a package namespace, but this works for now.

Currently the only pairs recognized have the form C< :pair >,
C< :!pair >, and C<< :pair<strval> >>.

=cut

.sub 'O' :method
    .param string spec
    .param string save         :optional
    .param int has_save        :opt_flag

    # First, get the hash cache.  Right now we have one
    # cache for all grammars; eventually we may need a way to
    # separate them out by cursor type.
    .local pmc ohash
    ohash = get_global '%!ohash'
    unless null ohash goto have_ohash
    ohash = new ['Hash']
    set_global '%!ohash', ohash
  have_ohash:

    # See if we've already created a Hash for the current
    # specification string -- if so, use that.
    .local pmc hash
    hash = ohash[spec]
    unless null hash goto hash_done

    # Otherwise, we need to build a new one.
    hash = new ['Hash']
    .local int pos, eos
    pos = 0
    eos = length spec
  spec_loop:
    pos = find_not_cclass .CCLASS_WHITESPACE, spec, pos, eos
    if pos >= eos goto spec_done
    $S0 = substr spec, pos, 1
    if $S0 == ',' goto spec_comma
    if $S0 == ':' goto spec_pair

    # If whatever we found doesn't start with a colon, treat it
    # as a lookup of a previously saved hash to be merged in.
    .local string lookup
    .local int lpos
    # Find the first whitespace or comma
    lpos = find_cclass .CCLASS_WHITESPACE, spec, pos, eos
    $I0 = index spec, ',', pos
    if $I0 < 0 goto have_lookup_lpos
    if $I0 >= lpos goto have_lookup_lpos
    lpos = $I0
  have_lookup_lpos:
    $I0 = lpos - pos
    lookup = substr spec, pos, $I0
    .local pmc lhash, lhash_it
    lhash = ohash[lookup]
    if null lhash goto err_lookup
    lhash_it = iter lhash
  lhash_loop:
    unless lhash_it goto lhash_done
    $S0 = shift lhash_it
    $P0 = lhash[$S0]
    hash[$S0] = $P0
    goto lhash_loop
  lhash_done:
    pos = lpos
    goto spec_loop

    # We just ignore commas between elements for now.
  spec_comma:
    inc pos
    goto spec_loop

    # If we see a colon, then we want to parse whatever
    # comes next like a pair.
  spec_pair:
    # eat colon
    inc pos
    .local string name
    .local pmc value
    value = new ['Boolean']

    # If the pair is of the form :!name, then reverse the value
    # and skip the colon.
    $S0 = substr spec, pos, 1
    $I0 = iseq $S0, '!'
    pos += $I0
    $I0 = not $I0
    value = $I0

    # Get the name of the pair.
    lpos = find_not_cclass .CCLASS_WORD, spec, pos, eos
    $I0 = lpos - pos
    name = substr spec, pos, $I0
    pos = lpos

    # Look for a <...> that follows.
    $S0 = substr spec, pos, 1
    unless $S0 == '<' goto have_value
    inc pos
    lpos = index spec, '>', pos
    $I0 = lpos - pos
    $S0 = substr spec, pos, $I0
    value = box $S0
    pos = lpos + 1
  have_value:
    # Done processing the pair, store it in the hash. 
    hash[name] = value
    goto spec_loop 
  spec_done:
    # Done processing the spec string, cache the hash for later.
    ohash[spec] = hash
  hash_done:

    # If we've been called as a subrule, then build a pass-cursor
    # to indicate success and set the hash as the subrule's match object.
    if has_save goto save_hash
    ($P0, $I0) = self.'!cursor_start'()
    $P0.'!cursor_pass'($I0, '')
    setattribute $P0, '$!match', hash
    .return ($P0)

    # save the hash under a new entry
  save_hash:
    ohash[save] = hash
    .return (self)
   
  err_lookup:
    self.'panic'('Unknown operator precedence specification "', lookup, '"')
.end


=item panic([args :slurpy])

Throw an exception at the current cursor location.  If the message
doesn't end with a newline, also output the line number and offset
of the match.

=cut

.sub 'panic' :method
    .param pmc args            :slurpy

    .local int pos
    .local pmc target
    pos = self.'pos'()
    target = getattribute self, '$!target'

    $I1 = target.'lineof'(pos)
    inc $I1
    push args, ' at line '
    push args, $I1

    $S0 = target
    $S0 = substr $S0, pos, 10
    $S0 = escape $S0
    push args, ', near "'
    push args, $S0
    push args, '"'

    .local string message
    message = join '', args

    die message
.end


=item peek_delimiters(target, pos)

Return the start/stop delimiter pair based on peeking at C<target>
position C<pos>.

=cut

.sub 'peek_delimiters' :method
    .param string target
    .param int pos

    .local string brackets, start, stop
    $P0 = get_global '$!brackets'
    brackets = $P0

    # peek at the next character
    start = substr target, pos, 1
    # colon and word characters aren't valid delimiters
    if start == ':' goto err_colon_delim
    $I0 = is_cclass .CCLASS_WORD, start, 0
    if $I0 goto err_word_delim
    $I0 = is_cclass .CCLASS_WHITESPACE, start, 0
    if $I0 goto err_ws_delim

    # assume stop delim is same as start, for the moment
    stop = start

    # see if we have an opener or closer
    $I0 = index brackets, start
    if $I0 < 0 goto bracket_end
    # if it's a closing bracket, that's an error also
    $I1 = $I0 % 2
    if $I1 goto err_close
    # it's an opener, so get the closing bracket
    inc $I0
    stop = substr brackets, $I0, 1

    # see if the opening bracket is repeated 
    .local int len
    len = 0
  bracket_loop:
    inc pos
    inc len
    $S0 = substr target, pos, 1
    if $S0 == start goto bracket_loop
    if len == 1 goto bracket_end
    start = repeat start, len
    stop = repeat stop, len
  bracket_end:
    .return (start, stop, pos)

  err_colon_delim:
    self.'panic'('Colons may not be used to delimit quoting constructs')
  err_word_delim:
    self.'panic'('Alphanumeric character is not allowed as a delimiter')
  err_ws_delim:
    self.'panic'('Whitespace character is not allowed as a delimiter')
  err_close:
    self.'panic'('Use of a closing delimiter for an opener is reserved')
.end


.sub 'quote_EXPR' :method
    .param pmc args            :slurpy

    .local pmc quotemod, true
    .lex '%*QUOTEMOD', quotemod
    quotemod = new ['Hash']

    true = box 1
    

  args_loop:
    unless args goto args_done
    .local string mod
    mod = shift args
    mod = substr mod, 1
    quotemod[mod] = true
    if mod == 'qq' goto opt_qq
    if mod == 'b' goto opt_b
    goto args_loop
  opt_qq:
    quotemod['s'] = true
    quotemod['a'] = true
    quotemod['h'] = true
    quotemod['f'] = true
    quotemod['c'] = true
    quotemod['b'] = true
  opt_b:
    quotemod['q'] = true
    goto args_loop
  args_done:

    .local pmc cur
    .local string target
    .local int pos

    (cur, pos, target) = self.'!cursor_start'()

    .local pmc start, stop
    (start, stop) = self.'peek_delimiters'(target, pos) 

    .lex '$*QUOTE_START', start
    .lex '$*QUOTE_STOP', stop

    $P10 = cur.'quote_delimited'()
    unless $P10 goto fail
    cur.'!mark_push'(0, CURSOR_FAIL, 0, $P10)
    $P10.'!cursor_names'('quote_delimited')
    pos = $P10.'pos'()
    cur.'!cursor_pass'(pos, 'quote_EXPR')
  fail:
    .return (cur)
.end


.sub 'quotemod_check' :method
    .param string mod

    $P0 = find_dynamic_lex '%*QUOTEMOD'
    $P1 = $P0[mod]
    unless null $P1 goto done
    $P1 = new ['Undef']
  done:
    .return ($P1)
.end


.sub 'starter' :method
    .local pmc cur
    .local string target, start
    .local int pos

    (cur, pos, target) = self.'!cursor_start'()

    $P0 = find_dynamic_lex '$*QUOTE_START'
    if null $P0 goto fail
    start = $P0

    $I0 = length start
    $S0 = substr target, pos, $I0
    unless $S0 == start goto fail
    pos += $I0
    cur.'!cursor_pass'(pos, 'starter')
  fail:
    .return (cur)
.end


.sub 'stopper' :method
    .local pmc cur
    .local string target, stop
    .local int pos

    (cur, pos, target) = self.'!cursor_start'()

    $P0 = find_dynamic_lex '$*QUOTE_STOP'
    if null $P0 goto fail
    stop = $P0

    $I0 = length stop
    $S0 = substr target, pos, $I0
    unless $S0 == stop goto fail
    pos += $I0
    cur.'!cursor_pass'(pos, 'stopper')
  fail:
    .return (cur)
.end


.sub 'split_words' :method
    .param string words
    .local int pos, eos
    .local pmc result
    pos = 0
    eos = length words
    result = new ['ResizablePMCArray']
  split_loop:
    pos = find_not_cclass .CCLASS_WHITESPACE, words, pos, eos
    unless pos < eos goto split_done
    $I0 = find_cclass .CCLASS_WHITESPACE, words, pos, eos
    $I1 = $I0 - pos
    $S0 = substr words, pos, $I1
    say $S0
    push result, $S0
    pos = $I0
    goto split_loop
  split_done:
    .return (result)
.end


=item EXPR(...)

An operator precedence parser.

=cut

.sub 'EXPR' :method
    .param string preclim      :optional
    .param int has_preclim     :opt_flag

    if has_preclim goto have_preclim
    preclim = ''
  have_preclim:

    .const 'Sub' reduce = 'EXPR_reduce'
    .local string termish
    termish = 'termish'

    .local pmc opstack, termstack
    opstack = new ['ResizablePMCArray']
    .lex '@opstack', opstack
    termstack = new ['ResizablePMCArray']
    .lex '@termstack', termstack

    .local pmc here, from, pos
    (here, pos) = self.'!cursor_start'()

  term_loop:
    here = here.termish()
    unless here goto fail
    .local pmc term
    term = here.'MATCH'()
    push termstack, term

    # interleave any prefix/postfix we might have found
    .local pmc termOPER, prefixish, postfixish
    termOPER = term
  termOPER_loop:
    $I0 = exists termOPER['OPER']
    unless $I0 goto termOPER_done
    termOPER = termOPER['OPER']
    goto termOPER_loop
  termOPER_done:
    prefixish = termOPER['prefixish']
    postfixish = termOPER['postfixish']
    if null prefixish goto prefix_done

  prepostfix_loop:
    unless prefixish goto prepostfix_done
    unless postfixish goto prepostfix_done
    .local pmc preO, postO
    .local string preprec, postprec
    $P0 = prefixish[0]
    $P0 = $P0['OPER']
    preO = $P0['O']
    preprec = preO['prec']
    $P0 = postfixish[-1]
    $P0 = $P0['OPER']
    postO = $P0['O']
    postprec = postO['prec']
    if postprec < preprec goto post_shift
    if postprec > preprec goto pre_shift
    $S0 = postO['uassoc']
    if $S0 == 'right' goto pre_shift
  post_shift:
    $P0 = pop postfixish
    push opstack, $P0
    goto prepostfix_loop
  pre_shift:
    $P0 = shift prefixish
    push opstack, $P0
    goto prepostfix_loop
  prepostfix_done:

  prefix_loop:
    unless prefixish goto prefix_done
    $P0 = shift prefixish
    push opstack, $P0
    goto prefix_loop
  prefix_done:
    delete term['prefixish']

  postfix_loop:
    if null postfixish goto postfix_done
    unless postfixish goto postfix_done
    $P0 = pop postfixish
    push opstack, $P0
    goto postfix_loop
  postfix_done:
    delete term['postfixish']

    # Now see if we can fetch an infix operator
    .local pmc infixcur, infix
    here = here.'ws'()
    infixcur = here.'infixish'()
    unless infixcur goto term_done
    infix = infixcur.'MATCH'()

    .local pmc inO
    $P0 = infix['OPER']
    inO = $P0['O']
    termish = inO['nextterm']
    if termish goto have_termish
    termish = 'termish'
  have_termish:

    unless opstack goto reduce_done
    .local string inprec, inassoc, opprec
    inprec = inO['prec']
    unless inprec goto err_inprec
    if inprec <= preclim goto term_done
    inassoc = inO['assoc']

  reduce_loop:
    unless opstack goto reduce_done
    $P0 = opstack[-1]
    $P0 = $P0['OPER']
    $P0 = $P0['O']
    opprec = $P0['prec']
    unless opprec > inprec goto reduce_gt_done
    capture_lex reduce
    self.reduce()
    goto reduce_loop
  reduce_gt_done:

    unless opprec == inprec goto reduce_done
    # equal precedence, use associativity to decide
    unless inassoc == 'left' goto reduce_done
    # left associative, reduce immediately
    capture_lex reduce
    self.reduce()
  reduce_done:

    push opstack, infix        # The Shift
    here = infixcur.'ws'()
    goto term_loop
  term_done:

  opstack_loop:
    unless opstack goto opstack_done
    capture_lex reduce
    self.reduce()
    goto opstack_loop
  opstack_done:

  expr_done:
    term = pop termstack
    pos = here.'pos'()
    here = self.'!cursor_start'()
    setattribute here, '$!pos', pos
    setattribute here, '$!match', term
    here.'!reduce'('EXPR')
  fail:
    .return (here)

  err_internal:
    $I0 = termstack
    here.'panic'('Internal operator parser error, @termstack == ', $I0)
  err_inprec:
    infixcur.'panic'('Missing infixish operator precedence')
.end


.sub 'EXPR_reduce' :method :anon :outer('EXPR')
    .local pmc termstack, opstack
    termstack = find_lex '@termstack'
    opstack = find_lex '@opstack'

    .local pmc op, opOPER, opO
    .local string opassoc
    op = pop opstack
    opOPER = op['OPER']
    opO = opOPER['O']
    opassoc = opO['assoc']
    if opassoc == 'unary' goto op_unary
    if opassoc == 'list' goto op_list
  op_infix:
    .local pmc right, left
    right = pop termstack
    left = pop termstack
    op[0] = left
    op[1] = right
    $S0 = opO['reducecheck']
    unless $S0 goto op_infix_1
    self.$S0(op)
  op_infix_1:
    self.'!reduce'('EXPR', 'INFIX', op)
    goto done

  op_unary:
    .local pmc arg, afrom, ofrom
    arg = pop termstack
    op[0] = arg
    afrom = arg.'from'()
    ofrom = op.'from'()
    if afrom < ofrom goto op_postfix
  op_prefix:
    self.'!reduce'('EXPR', 'PREFIX', op)
    goto done
  op_postfix:
    self.'!reduce'('EXPR', 'POSTFIX', op)
    goto done

  op_list:
    .local string sym
    sym = opOPER['sym']
    arg = pop termstack
    unshift op, arg
  op_sym_loop:
    unless opstack goto op_sym_done
    $P0 = opstack[-1]
    $P0 = $P0['OPER']
    $S0 = $P0['sym']
    if sym != $S0 goto op_sym_done
    arg = pop termstack
    unshift op, arg
    $P0 = pop opstack
    goto op_sym_loop
  op_sym_done:
    arg = pop termstack
    unshift op, arg
    self.'!reduce'('EXPR', 'LIST', op)
    goto done

  done:
    push termstack, op
.end


.sub 'MARKER' :method
    .param pmc markname

    .local pmc pos
    pos = self.'pos'()
    self.'!cursor_debug'('START MARKER name=', markname, ', pos=', pos)

    .local pmc markhash
    markhash = get_global '%!MARKHASH'
    unless null markhash goto have_markhash
    markhash = new ['Hash']
    set_global '%!MARKHASH', markhash
  have_markhash:
    markhash[markname] = pos 
    self.'!cursor_debug'('PASS  MARKER')
    .return (1)
.end


.sub 'MARKED' :method
    .param pmc markname

    self.'!cursor_debug'('START MARKED name=', markname)

    .local pmc markhash
    markhash = get_global '%!MARKHASH'
    if null markhash goto fail
    $P0 = markhash[markname]
    if null $P0 goto fail
    $P1 = self.'pos'()
    unless $P0 == $P1 goto fail
    self.'!cursor_debug'('PASS  MARKED')
    .return (1)
  fail:
    self.'!cursor_debug'('FAIL  MARKED')
    .return (0)
.end


=cut

# Local Variables:
#   mode: pir
#   fill-column: 100
# End:
# vim: expandtab shiftwidth=4 ft=pir:

