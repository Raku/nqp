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
.sub "_block11"  :subid("10_1256744999.77867")
.annotate "line", 0
    .const 'Sub' $P206 = "78_1256744999.77867" 
    capture_lex $P206
    .const 'Sub' $P200 = "76_1256744999.77867" 
    capture_lex $P200
    .const 'Sub' $P188 = "73_1256744999.77867" 
    capture_lex $P188
    .const 'Sub' $P184 = "71_1256744999.77867" 
    capture_lex $P184
    .const 'Sub' $P179 = "69_1256744999.77867" 
    capture_lex $P179
    .const 'Sub' $P174 = "67_1256744999.77867" 
    capture_lex $P174
    .const 'Sub' $P170 = "65_1256744999.77867" 
    capture_lex $P170
    .const 'Sub' $P166 = "63_1256744999.77867" 
    capture_lex $P166
    .const 'Sub' $P162 = "61_1256744999.77867" 
    capture_lex $P162
    .const 'Sub' $P158 = "59_1256744999.77867" 
    capture_lex $P158
    .const 'Sub' $P154 = "57_1256744999.77867" 
    capture_lex $P154
    .const 'Sub' $P150 = "55_1256744999.77867" 
    capture_lex $P150
    .const 'Sub' $P127 = "51_1256744999.77867" 
    capture_lex $P127
    .const 'Sub' $P121 = "49_1256744999.77867" 
    capture_lex $P121
    .const 'Sub' $P113 = "47_1256744999.77867" 
    capture_lex $P113
    .const 'Sub' $P107 = "45_1256744999.77867" 
    capture_lex $P107
    .const 'Sub' $P99 = "43_1256744999.77867" 
    capture_lex $P99
    .const 'Sub' $P90 = "41_1256744999.77867" 
    capture_lex $P90
    .const 'Sub' $P83 = "39_1256744999.77867" 
    capture_lex $P83
    .const 'Sub' $P76 = "37_1256744999.77867" 
    capture_lex $P76
    .const 'Sub' $P71 = "35_1256744999.77867" 
    capture_lex $P71
    .const 'Sub' $P66 = "33_1256744999.77867" 
    capture_lex $P66
    .const 'Sub' $P61 = "31_1256744999.77867" 
    capture_lex $P61
    .const 'Sub' $P56 = "29_1256744999.77867" 
    capture_lex $P56
    .const 'Sub' $P20 = "13_1256744999.77867" 
    capture_lex $P20
    .const 'Sub' $P13 = "11_1256744999.77867" 
    capture_lex $P13
.annotate "line", 85
    .const 'Sub' $P206 = "78_1256744999.77867" 
    capture_lex $P206
.annotate "line", 1
    .return ($P206)
.end


.namespace ["HLL";"Grammar"]
.sub "" :load :init :subid("post80") :outer("10_1256744999.77867")
.annotate "line", 0
    get_hll_global $P12, ["HLL";"Grammar"], "_block11" 
    .local pmc block
    set block, $P12
.annotate "line", 1
    get_hll_global $P215, "P6metaclass"
    $P215."new_class"("HLL::Grammar", "Regex::Cursor" :named("parent"))
.end


.namespace ["HLL";"Grammar"]
.sub "ws"  :subid("11_1256744999.77867") :method :outer("10_1256744999.77867")
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
.sub "!PREFIX__ws"  :subid("12_1256744999.77867") :method
.annotate "line", 5
    new $P16, "ResizablePMCArray"
    push $P16, ""
    .return ($P16)
.end


.namespace ["HLL";"Grammar"]
.sub "termish"  :subid("13_1256744999.77867") :method :outer("10_1256744999.77867")
.annotate "line", 7
    .local string rx21_tgt
    .local int rx21_pos
    .local int rx21_off
    .local int rx21_eos
    .local int rx21_rep
    .local pmc rx21_cur
    (rx21_cur, rx21_pos, rx21_tgt, $I10) = self."!cursor_start"()
    rx21_cur."!cursor_debug"("START ", "termish")
    rx21_cur."!cursor_caparray"("postfixish", "prefixish")
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
  # rx subrule "noun" subtype=capture negate=
    rx21_cur."!cursor_pos"(rx21_pos)
    $P10 = rx21_cur."noun"()
    unless $P10, rx21_fail
    rx21_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("noun")
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
.sub "!PREFIX__termish"  :subid("14_1256744999.77867") :method
.annotate "line", 7
    new $P23, "ResizablePMCArray"
    push $P23, ""
    .return ($P23)
.end


.namespace ["HLL";"Grammar"]
.sub "noun"  :subid("15_1256744999.77867") :method
.annotate "line", 13
    $P29 = self."!protoregex"("noun")
    .return ($P29)
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__noun"  :subid("16_1256744999.77867") :method
.annotate "line", 13
    $P31 = self."!PREFIX__!protoregex"("noun")
    .return ($P31)
.end


.namespace ["HLL";"Grammar"]
.sub "term"  :subid("17_1256744999.77867") :method
.annotate "line", 14
    $P33 = self."!protoregex"("term")
    .return ($P33)
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__term"  :subid("18_1256744999.77867") :method
.annotate "line", 14
    $P35 = self."!PREFIX__!protoregex"("term")
    .return ($P35)
.end


.namespace ["HLL";"Grammar"]
.sub "infix"  :subid("19_1256744999.77867") :method
.annotate "line", 15
    $P37 = self."!protoregex"("infix")
    .return ($P37)
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__infix"  :subid("20_1256744999.77867") :method
.annotate "line", 15
    $P39 = self."!PREFIX__!protoregex"("infix")
    .return ($P39)
.end


.namespace ["HLL";"Grammar"]
.sub "prefix"  :subid("21_1256744999.77867") :method
.annotate "line", 16
    $P41 = self."!protoregex"("prefix")
    .return ($P41)
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__prefix"  :subid("22_1256744999.77867") :method
.annotate "line", 16
    $P43 = self."!PREFIX__!protoregex"("prefix")
    .return ($P43)
.end


.namespace ["HLL";"Grammar"]
.sub "postfix"  :subid("23_1256744999.77867") :method
.annotate "line", 17
    $P45 = self."!protoregex"("postfix")
    .return ($P45)
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postfix"  :subid("24_1256744999.77867") :method
.annotate "line", 17
    $P47 = self."!PREFIX__!protoregex"("postfix")
    .return ($P47)
.end


.namespace ["HLL";"Grammar"]
.sub "circumfix"  :subid("25_1256744999.77867") :method
.annotate "line", 18
    $P49 = self."!protoregex"("circumfix")
    .return ($P49)
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__circumfix"  :subid("26_1256744999.77867") :method
.annotate "line", 18
    $P51 = self."!PREFIX__!protoregex"("circumfix")
    .return ($P51)
.end


.namespace ["HLL";"Grammar"]
.sub "postcircumfix"  :subid("27_1256744999.77867") :method
.annotate "line", 19
    $P53 = self."!protoregex"("postcircumfix")
    .return ($P53)
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postcircumfix"  :subid("28_1256744999.77867") :method
.annotate "line", 19
    $P55 = self."!PREFIX__!protoregex"("postcircumfix")
    .return ($P55)
.end


.namespace ["HLL";"Grammar"]
.sub "noun:sym<term>"  :subid("29_1256744999.77867") :method :outer("10_1256744999.77867")
.annotate "line", 21
    .local string rx57_tgt
    .local int rx57_pos
    .local int rx57_off
    .local int rx57_eos
    .local int rx57_rep
    .local pmc rx57_cur
    (rx57_cur, rx57_pos, rx57_tgt, $I10) = self."!cursor_start"()
    rx57_cur."!cursor_debug"("START ", "noun:sym<term>")
    .lex unicode:"$\x{a2}", rx57_cur
    length rx57_eos, rx57_tgt
    set rx57_off, 0
    lt $I10, 2, rx57_start
    sub rx57_off, $I10, 1
    substr rx57_tgt, rx57_tgt, rx57_off
  rx57_start:
  # rx subrule "term" subtype=capture negate=
    rx57_cur."!cursor_pos"(rx57_pos)
    $P10 = rx57_cur."term"()
    unless $P10, rx57_fail
    rx57_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("term")
    rx57_pos = $P10."pos"()
  # rx pass
    rx57_cur."!cursor_pass"(rx57_pos, "noun:sym<term>")
    rx57_cur."!cursor_debug"("PASS  ", "noun:sym<term>", " at pos=", rx57_pos)
    .return (rx57_cur)
  rx57_fail:
    (rx57_rep, rx57_pos, $I10, $P10) = rx57_cur."!mark_fail"(0)
    lt rx57_pos, -1, rx57_done
    eq rx57_pos, -1, rx57_fail
    jump $I10
  rx57_done:
    rx57_cur."!cursor_fail"()
    rx57_cur."!cursor_debug"("FAIL  ", "noun:sym<term>")
    .return (rx57_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__noun:sym<term>"  :subid("30_1256744999.77867") :method
.annotate "line", 21
    $P59 = self."!PREFIX__!subrule"("term", "")
    new $P60, "ResizablePMCArray"
    push $P60, $P59
    .return ($P60)
.end


.namespace ["HLL";"Grammar"]
.sub "noun:sym<circumfix>"  :subid("31_1256744999.77867") :method :outer("10_1256744999.77867")
.annotate "line", 22
    .local string rx62_tgt
    .local int rx62_pos
    .local int rx62_off
    .local int rx62_eos
    .local int rx62_rep
    .local pmc rx62_cur
    (rx62_cur, rx62_pos, rx62_tgt, $I10) = self."!cursor_start"()
    rx62_cur."!cursor_debug"("START ", "noun:sym<circumfix>")
    .lex unicode:"$\x{a2}", rx62_cur
    length rx62_eos, rx62_tgt
    set rx62_off, 0
    lt $I10, 2, rx62_start
    sub rx62_off, $I10, 1
    substr rx62_tgt, rx62_tgt, rx62_off
  rx62_start:
  # rx subrule "circumfix" subtype=capture negate=
    rx62_cur."!cursor_pos"(rx62_pos)
    $P10 = rx62_cur."circumfix"()
    unless $P10, rx62_fail
    rx62_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("circumfix")
    rx62_pos = $P10."pos"()
  # rx pass
    rx62_cur."!cursor_pass"(rx62_pos, "noun:sym<circumfix>")
    rx62_cur."!cursor_debug"("PASS  ", "noun:sym<circumfix>", " at pos=", rx62_pos)
    .return (rx62_cur)
  rx62_fail:
    (rx62_rep, rx62_pos, $I10, $P10) = rx62_cur."!mark_fail"(0)
    lt rx62_pos, -1, rx62_done
    eq rx62_pos, -1, rx62_fail
    jump $I10
  rx62_done:
    rx62_cur."!cursor_fail"()
    rx62_cur."!cursor_debug"("FAIL  ", "noun:sym<circumfix>")
    .return (rx62_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__noun:sym<circumfix>"  :subid("32_1256744999.77867") :method
.annotate "line", 22
    $P64 = self."!PREFIX__!subrule"("circumfix", "")
    new $P65, "ResizablePMCArray"
    push $P65, $P64
    .return ($P65)
.end


.namespace ["HLL";"Grammar"]
.sub "infixish"  :subid("33_1256744999.77867") :method :outer("10_1256744999.77867")
.annotate "line", 24
    .local string rx67_tgt
    .local int rx67_pos
    .local int rx67_off
    .local int rx67_eos
    .local int rx67_rep
    .local pmc rx67_cur
    (rx67_cur, rx67_pos, rx67_tgt, $I10) = self."!cursor_start"()
    rx67_cur."!cursor_debug"("START ", "infixish")
    .lex unicode:"$\x{a2}", rx67_cur
    length rx67_eos, rx67_tgt
    set rx67_off, 0
    lt $I10, 2, rx67_start
    sub rx67_off, $I10, 1
    substr rx67_tgt, rx67_tgt, rx67_off
  rx67_start:
  # rx subrule "infix" subtype=capture negate=
    rx67_cur."!cursor_pos"(rx67_pos)
    $P10 = rx67_cur."infix"()
    unless $P10, rx67_fail
    rx67_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=infix")
    rx67_pos = $P10."pos"()
  # rx pass
    rx67_cur."!cursor_pass"(rx67_pos, "infixish")
    rx67_cur."!cursor_debug"("PASS  ", "infixish", " at pos=", rx67_pos)
    .return (rx67_cur)
  rx67_fail:
    (rx67_rep, rx67_pos, $I10, $P10) = rx67_cur."!mark_fail"(0)
    lt rx67_pos, -1, rx67_done
    eq rx67_pos, -1, rx67_fail
    jump $I10
  rx67_done:
    rx67_cur."!cursor_fail"()
    rx67_cur."!cursor_debug"("FAIL  ", "infixish")
    .return (rx67_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__infixish"  :subid("34_1256744999.77867") :method
.annotate "line", 24
    $P69 = self."!PREFIX__!subrule"("OPER=infix", "")
    new $P70, "ResizablePMCArray"
    push $P70, $P69
    .return ($P70)
.end


.namespace ["HLL";"Grammar"]
.sub "prefixish"  :subid("35_1256744999.77867") :method :outer("10_1256744999.77867")
.annotate "line", 25
    .local string rx72_tgt
    .local int rx72_pos
    .local int rx72_off
    .local int rx72_eos
    .local int rx72_rep
    .local pmc rx72_cur
    (rx72_cur, rx72_pos, rx72_tgt, $I10) = self."!cursor_start"()
    rx72_cur."!cursor_debug"("START ", "prefixish")
    .lex unicode:"$\x{a2}", rx72_cur
    length rx72_eos, rx72_tgt
    set rx72_off, 0
    lt $I10, 2, rx72_start
    sub rx72_off, $I10, 1
    substr rx72_tgt, rx72_tgt, rx72_off
  rx72_start:
  # rx subrule "prefix" subtype=capture negate=
    rx72_cur."!cursor_pos"(rx72_pos)
    $P10 = rx72_cur."prefix"()
    unless $P10, rx72_fail
    rx72_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=prefix")
    rx72_pos = $P10."pos"()
  # rx pass
    rx72_cur."!cursor_pass"(rx72_pos, "prefixish")
    rx72_cur."!cursor_debug"("PASS  ", "prefixish", " at pos=", rx72_pos)
    .return (rx72_cur)
  rx72_fail:
    (rx72_rep, rx72_pos, $I10, $P10) = rx72_cur."!mark_fail"(0)
    lt rx72_pos, -1, rx72_done
    eq rx72_pos, -1, rx72_fail
    jump $I10
  rx72_done:
    rx72_cur."!cursor_fail"()
    rx72_cur."!cursor_debug"("FAIL  ", "prefixish")
    .return (rx72_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__prefixish"  :subid("36_1256744999.77867") :method
.annotate "line", 25
    $P74 = self."!PREFIX__!subrule"("OPER=prefix", "")
    new $P75, "ResizablePMCArray"
    push $P75, $P74
    .return ($P75)
.end


.namespace ["HLL";"Grammar"]
.sub "postfixish"  :subid("37_1256744999.77867") :method :outer("10_1256744999.77867")
.annotate "line", 26
    .local string rx77_tgt
    .local int rx77_pos
    .local int rx77_off
    .local int rx77_eos
    .local int rx77_rep
    .local pmc rx77_cur
    (rx77_cur, rx77_pos, rx77_tgt, $I10) = self."!cursor_start"()
    rx77_cur."!cursor_debug"("START ", "postfixish")
    .lex unicode:"$\x{a2}", rx77_cur
    length rx77_eos, rx77_tgt
    set rx77_off, 0
    lt $I10, 2, rx77_start
    sub rx77_off, $I10, 1
    substr rx77_tgt, rx77_tgt, rx77_off
  rx77_start:
  alt82_0:
    set_addr $I10, alt82_1
    rx77_cur."!mark_push"(0, rx77_pos, $I10)
.annotate "line", 27
  # rx subrule "postfix" subtype=capture negate=
    rx77_cur."!cursor_pos"(rx77_pos)
    $P10 = rx77_cur."postfix"()
    unless $P10, rx77_fail
    rx77_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=postfix")
    rx77_pos = $P10."pos"()
    goto alt82_end
  alt82_1:
.annotate "line", 28
  # rx subrule "postcircumfix" subtype=capture negate=
    rx77_cur."!cursor_pos"(rx77_pos)
    $P10 = rx77_cur."postcircumfix"()
    unless $P10, rx77_fail
    rx77_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=postcircumfix")
    rx77_pos = $P10."pos"()
  alt82_end:
.annotate "line", 26
  # rx pass
    rx77_cur."!cursor_pass"(rx77_pos, "postfixish")
    rx77_cur."!cursor_debug"("PASS  ", "postfixish", " at pos=", rx77_pos)
    .return (rx77_cur)
  rx77_fail:
    (rx77_rep, rx77_pos, $I10, $P10) = rx77_cur."!mark_fail"(0)
    lt rx77_pos, -1, rx77_done
    eq rx77_pos, -1, rx77_fail
    jump $I10
  rx77_done:
    rx77_cur."!cursor_fail"()
    rx77_cur."!cursor_debug"("FAIL  ", "postfixish")
    .return (rx77_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postfixish"  :subid("38_1256744999.77867") :method
.annotate "line", 26
    $P79 = self."!PREFIX__!subrule"("OPER=postcircumfix", "")
    $P80 = self."!PREFIX__!subrule"("OPER=postfix", "")
    new $P81, "ResizablePMCArray"
    push $P81, $P79
    push $P81, $P80
    .return ($P81)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_delimited"  :subid("39_1256744999.77867") :method :outer("10_1256744999.77867")
.annotate "line", 32
    .local string rx84_tgt
    .local int rx84_pos
    .local int rx84_off
    .local int rx84_eos
    .local int rx84_rep
    .local pmc rx84_cur
    (rx84_cur, rx84_pos, rx84_tgt, $I10) = self."!cursor_start"()
    rx84_cur."!cursor_debug"("START ", "quote_delimited")
    rx84_cur."!cursor_caparray"("quote_atom")
    .lex unicode:"$\x{a2}", rx84_cur
    length rx84_eos, rx84_tgt
    set rx84_off, 0
    lt $I10, 2, rx84_start
    sub rx84_off, $I10, 1
    substr rx84_tgt, rx84_tgt, rx84_off
  rx84_start:
.annotate "line", 33
  # rx subrule "starter" subtype=capture negate=
    rx84_cur."!cursor_pos"(rx84_pos)
    $P10 = rx84_cur."starter"()
    unless $P10, rx84_fail
    rx84_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("starter")
    rx84_pos = $P10."pos"()
  # rx rxquantr88 ** 0..*
    set_addr $I89, rxquantr88_done
    rx84_cur."!mark_push"(0, rx84_pos, $I89)
  rxquantr88_loop:
  # rx subrule "quote_atom" subtype=capture negate=
    rx84_cur."!cursor_pos"(rx84_pos)
    $P10 = rx84_cur."quote_atom"()
    unless $P10, rx84_fail
    rx84_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_atom")
    rx84_pos = $P10."pos"()
    (rx84_rep) = rx84_cur."!mark_commit"($I89)
    rx84_cur."!mark_push"(rx84_rep, rx84_pos, $I89)
    goto rxquantr88_loop
  rxquantr88_done:
  # rx subrule "stopper" subtype=capture negate=
    rx84_cur."!cursor_pos"(rx84_pos)
    $P10 = rx84_cur."stopper"()
    unless $P10, rx84_fail
    rx84_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("stopper")
    rx84_pos = $P10."pos"()
.annotate "line", 32
  # rx pass
    rx84_cur."!cursor_pass"(rx84_pos, "quote_delimited")
    rx84_cur."!cursor_debug"("PASS  ", "quote_delimited", " at pos=", rx84_pos)
    .return (rx84_cur)
  rx84_fail:
    (rx84_rep, rx84_pos, $I10, $P10) = rx84_cur."!mark_fail"(0)
    lt rx84_pos, -1, rx84_done
    eq rx84_pos, -1, rx84_fail
    jump $I10
  rx84_done:
    rx84_cur."!cursor_fail"()
    rx84_cur."!cursor_debug"("FAIL  ", "quote_delimited")
    .return (rx84_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_delimited"  :subid("40_1256744999.77867") :method
.annotate "line", 32
    $P86 = self."!PREFIX__!subrule"("starter", "")
    new $P87, "ResizablePMCArray"
    push $P87, $P86
    .return ($P87)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_atom"  :subid("41_1256744999.77867") :method :outer("10_1256744999.77867")
.annotate "line", 36
    .local string rx91_tgt
    .local int rx91_pos
    .local int rx91_off
    .local int rx91_eos
    .local int rx91_rep
    .local pmc rx91_cur
    (rx91_cur, rx91_pos, rx91_tgt, $I10) = self."!cursor_start"()
    rx91_cur."!cursor_debug"("START ", "quote_atom")
    .lex unicode:"$\x{a2}", rx91_cur
    length rx91_eos, rx91_tgt
    set rx91_off, 0
    lt $I10, 2, rx91_start
    sub rx91_off, $I10, 1
    substr rx91_tgt, rx91_tgt, rx91_off
  rx91_start:
.annotate "line", 37
  # rx subrule "stopper" subtype=zerowidth negate=1
    rx91_cur."!cursor_pos"(rx91_pos)
    $P10 = rx91_cur."stopper"()
    if $P10, rx91_fail
  alt94_0:
.annotate "line", 38
    set_addr $I10, alt94_1
    rx91_cur."!mark_push"(0, rx91_pos, $I10)
.annotate "line", 39
  # rx subrule "escape" subtype=capture negate=
    rx91_cur."!cursor_pos"(rx91_pos)
    $P10 = rx91_cur."escape"()
    unless $P10, rx91_fail
    rx91_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("escape")
    rx91_pos = $P10."pos"()
    goto alt94_end
  alt94_1:
.annotate "line", 40
  # rx rxquantr95 ** 1..*
    set_addr $I98, rxquantr95_done
    rx91_cur."!mark_push"(0, -1, $I98)
  rxquantr95_loop:
  # rx subrule "stopper" subtype=zerowidth negate=1
    rx91_cur."!cursor_pos"(rx91_pos)
    $P10 = rx91_cur."stopper"()
    if $P10, rx91_fail
  # rx subrule "escape" subtype=zerowidth negate=1
    rx91_cur."!cursor_pos"(rx91_pos)
    $P10 = rx91_cur."escape"()
    if $P10, rx91_fail
  # rx charclass .
    ge rx91_pos, rx91_eos, rx91_fail
    inc rx91_pos
    (rx91_rep) = rx91_cur."!mark_commit"($I98)
    rx91_cur."!mark_push"(rx91_rep, rx91_pos, $I98)
    goto rxquantr95_loop
  rxquantr95_done:
  alt94_end:
.annotate "line", 36
  # rx pass
    rx91_cur."!cursor_pass"(rx91_pos, "quote_atom")
    rx91_cur."!cursor_debug"("PASS  ", "quote_atom", " at pos=", rx91_pos)
    .return (rx91_cur)
  rx91_fail:
    (rx91_rep, rx91_pos, $I10, $P10) = rx91_cur."!mark_fail"(0)
    lt rx91_pos, -1, rx91_done
    eq rx91_pos, -1, rx91_fail
    jump $I10
  rx91_done:
    rx91_cur."!cursor_fail"()
    rx91_cur."!cursor_debug"("FAIL  ", "quote_atom")
    .return (rx91_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_atom"  :subid("42_1256744999.77867") :method
.annotate "line", 36
    new $P93, "ResizablePMCArray"
    push $P93, ""
    .return ($P93)
.end


.namespace ["HLL";"Grammar"]
.sub "hexint"  :subid("43_1256744999.77867") :method :outer("10_1256744999.77867")
.annotate "line", 44
    .local string rx100_tgt
    .local int rx100_pos
    .local int rx100_off
    .local int rx100_eos
    .local int rx100_rep
    .local pmc rx100_cur
    (rx100_cur, rx100_pos, rx100_tgt, $I10) = self."!cursor_start"()
    rx100_cur."!cursor_debug"("START ", "hexint")
    .lex unicode:"$\x{a2}", rx100_cur
    length rx100_eos, rx100_tgt
    set rx100_off, 0
    lt $I10, 2, rx100_start
    sub rx100_off, $I10, 1
    substr rx100_tgt, rx100_tgt, rx100_off
  rx100_start:
  # rx rxquantr103 ** 1..*
    set_addr $I106, rxquantr103_done
    rx100_cur."!mark_push"(0, -1, $I106)
  rxquantr103_loop:
  # rx rxquantr104 ** 1..*
    set_addr $I105, rxquantr104_done
    rx100_cur."!mark_push"(0, -1, $I105)
  rxquantr104_loop:
  # rx enumcharlist negate=0 
    ge rx100_pos, rx100_eos, rx100_fail
    sub $I10, rx100_pos, rx100_off
    substr $S10, rx100_tgt, $I10, 1
    index $I11, "0123456789abcdefABCDEF", $S10
    lt $I11, 0, rx100_fail
    inc rx100_pos
    (rx100_rep) = rx100_cur."!mark_commit"($I105)
    rx100_cur."!mark_push"(rx100_rep, rx100_pos, $I105)
    goto rxquantr104_loop
  rxquantr104_done:
    (rx100_rep) = rx100_cur."!mark_commit"($I106)
    rx100_cur."!mark_push"(rx100_rep, rx100_pos, $I106)
  # rx literal  "_"
    add $I11, rx100_pos, 1
    gt $I11, rx100_eos, rx100_fail
    sub $I11, rx100_pos, rx100_off
    substr $S10, rx100_tgt, $I11, 1
    ne $S10, "_", rx100_fail
    add rx100_pos, 1
    goto rxquantr103_loop
  rxquantr103_done:
  # rx pass
    rx100_cur."!cursor_pass"(rx100_pos, "hexint")
    rx100_cur."!cursor_debug"("PASS  ", "hexint", " at pos=", rx100_pos)
    .return (rx100_cur)
  rx100_fail:
    (rx100_rep, rx100_pos, $I10, $P10) = rx100_cur."!mark_fail"(0)
    lt rx100_pos, -1, rx100_done
    eq rx100_pos, -1, rx100_fail
    jump $I10
  rx100_done:
    rx100_cur."!cursor_fail"()
    rx100_cur."!cursor_debug"("FAIL  ", "hexint")
    .return (rx100_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__hexint"  :subid("44_1256744999.77867") :method
.annotate "line", 44
    new $P102, "ResizablePMCArray"
    push $P102, ""
    .return ($P102)
.end


.namespace ["HLL";"Grammar"]
.sub "hexints"  :subid("45_1256744999.77867") :method :outer("10_1256744999.77867")
.annotate "line", 45
    .local string rx108_tgt
    .local int rx108_pos
    .local int rx108_off
    .local int rx108_eos
    .local int rx108_rep
    .local pmc rx108_cur
    (rx108_cur, rx108_pos, rx108_tgt, $I10) = self."!cursor_start"()
    rx108_cur."!cursor_debug"("START ", "hexints")
    rx108_cur."!cursor_caparray"("hexint")
    .lex unicode:"$\x{a2}", rx108_cur
    length rx108_eos, rx108_tgt
    set rx108_off, 0
    lt $I10, 2, rx108_start
    sub rx108_off, $I10, 1
    substr rx108_tgt, rx108_tgt, rx108_off
  rx108_start:
  # rx rxquantr111 ** 1..*
    set_addr $I112, rxquantr111_done
    rx108_cur."!mark_push"(0, -1, $I112)
  rxquantr111_loop:
  # rx subrule "ws" subtype=method negate=
    rx108_cur."!cursor_pos"(rx108_pos)
    $P10 = rx108_cur."ws"()
    unless $P10, rx108_fail
    rx108_pos = $P10."pos"()
  # rx subrule "hexint" subtype=capture negate=
    rx108_cur."!cursor_pos"(rx108_pos)
    $P10 = rx108_cur."hexint"()
    unless $P10, rx108_fail
    rx108_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexint")
    rx108_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx108_cur."!cursor_pos"(rx108_pos)
    $P10 = rx108_cur."ws"()
    unless $P10, rx108_fail
    rx108_pos = $P10."pos"()
    (rx108_rep) = rx108_cur."!mark_commit"($I112)
    rx108_cur."!mark_push"(rx108_rep, rx108_pos, $I112)
  # rx literal  ","
    add $I11, rx108_pos, 1
    gt $I11, rx108_eos, rx108_fail
    sub $I11, rx108_pos, rx108_off
    substr $S10, rx108_tgt, $I11, 1
    ne $S10, ",", rx108_fail
    add rx108_pos, 1
    goto rxquantr111_loop
  rxquantr111_done:
  # rx pass
    rx108_cur."!cursor_pass"(rx108_pos, "hexints")
    rx108_cur."!cursor_debug"("PASS  ", "hexints", " at pos=", rx108_pos)
    .return (rx108_cur)
  rx108_fail:
    (rx108_rep, rx108_pos, $I10, $P10) = rx108_cur."!mark_fail"(0)
    lt rx108_pos, -1, rx108_done
    eq rx108_pos, -1, rx108_fail
    jump $I10
  rx108_done:
    rx108_cur."!cursor_fail"()
    rx108_cur."!cursor_debug"("FAIL  ", "hexints")
    .return (rx108_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__hexints"  :subid("46_1256744999.77867") :method
.annotate "line", 45
    new $P110, "ResizablePMCArray"
    push $P110, ""
    .return ($P110)
.end


.namespace ["HLL";"Grammar"]
.sub "octint"  :subid("47_1256744999.77867") :method :outer("10_1256744999.77867")
.annotate "line", 47
    .local string rx114_tgt
    .local int rx114_pos
    .local int rx114_off
    .local int rx114_eos
    .local int rx114_rep
    .local pmc rx114_cur
    (rx114_cur, rx114_pos, rx114_tgt, $I10) = self."!cursor_start"()
    rx114_cur."!cursor_debug"("START ", "octint")
    .lex unicode:"$\x{a2}", rx114_cur
    length rx114_eos, rx114_tgt
    set rx114_off, 0
    lt $I10, 2, rx114_start
    sub rx114_off, $I10, 1
    substr rx114_tgt, rx114_tgt, rx114_off
  rx114_start:
  # rx rxquantr117 ** 1..*
    set_addr $I120, rxquantr117_done
    rx114_cur."!mark_push"(0, -1, $I120)
  rxquantr117_loop:
  # rx rxquantr118 ** 1..*
    set_addr $I119, rxquantr118_done
    rx114_cur."!mark_push"(0, -1, $I119)
  rxquantr118_loop:
  # rx enumcharlist negate=0 
    ge rx114_pos, rx114_eos, rx114_fail
    sub $I10, rx114_pos, rx114_off
    substr $S10, rx114_tgt, $I10, 1
    index $I11, "01234567", $S10
    lt $I11, 0, rx114_fail
    inc rx114_pos
    (rx114_rep) = rx114_cur."!mark_commit"($I119)
    rx114_cur."!mark_push"(rx114_rep, rx114_pos, $I119)
    goto rxquantr118_loop
  rxquantr118_done:
    (rx114_rep) = rx114_cur."!mark_commit"($I120)
    rx114_cur."!mark_push"(rx114_rep, rx114_pos, $I120)
  # rx literal  "_"
    add $I11, rx114_pos, 1
    gt $I11, rx114_eos, rx114_fail
    sub $I11, rx114_pos, rx114_off
    substr $S10, rx114_tgt, $I11, 1
    ne $S10, "_", rx114_fail
    add rx114_pos, 1
    goto rxquantr117_loop
  rxquantr117_done:
  # rx pass
    rx114_cur."!cursor_pass"(rx114_pos, "octint")
    rx114_cur."!cursor_debug"("PASS  ", "octint", " at pos=", rx114_pos)
    .return (rx114_cur)
  rx114_fail:
    (rx114_rep, rx114_pos, $I10, $P10) = rx114_cur."!mark_fail"(0)
    lt rx114_pos, -1, rx114_done
    eq rx114_pos, -1, rx114_fail
    jump $I10
  rx114_done:
    rx114_cur."!cursor_fail"()
    rx114_cur."!cursor_debug"("FAIL  ", "octint")
    .return (rx114_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__octint"  :subid("48_1256744999.77867") :method
.annotate "line", 47
    new $P116, "ResizablePMCArray"
    push $P116, ""
    .return ($P116)
.end


.namespace ["HLL";"Grammar"]
.sub "octints"  :subid("49_1256744999.77867") :method :outer("10_1256744999.77867")
.annotate "line", 48
    .local string rx122_tgt
    .local int rx122_pos
    .local int rx122_off
    .local int rx122_eos
    .local int rx122_rep
    .local pmc rx122_cur
    (rx122_cur, rx122_pos, rx122_tgt, $I10) = self."!cursor_start"()
    rx122_cur."!cursor_debug"("START ", "octints")
    rx122_cur."!cursor_caparray"("octint")
    .lex unicode:"$\x{a2}", rx122_cur
    length rx122_eos, rx122_tgt
    set rx122_off, 0
    lt $I10, 2, rx122_start
    sub rx122_off, $I10, 1
    substr rx122_tgt, rx122_tgt, rx122_off
  rx122_start:
  # rx rxquantr125 ** 1..*
    set_addr $I126, rxquantr125_done
    rx122_cur."!mark_push"(0, -1, $I126)
  rxquantr125_loop:
  # rx subrule "ws" subtype=method negate=
    rx122_cur."!cursor_pos"(rx122_pos)
    $P10 = rx122_cur."ws"()
    unless $P10, rx122_fail
    rx122_pos = $P10."pos"()
  # rx subrule "octint" subtype=capture negate=
    rx122_cur."!cursor_pos"(rx122_pos)
    $P10 = rx122_cur."octint"()
    unless $P10, rx122_fail
    rx122_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octint")
    rx122_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx122_cur."!cursor_pos"(rx122_pos)
    $P10 = rx122_cur."ws"()
    unless $P10, rx122_fail
    rx122_pos = $P10."pos"()
    (rx122_rep) = rx122_cur."!mark_commit"($I126)
    rx122_cur."!mark_push"(rx122_rep, rx122_pos, $I126)
  # rx literal  ","
    add $I11, rx122_pos, 1
    gt $I11, rx122_eos, rx122_fail
    sub $I11, rx122_pos, rx122_off
    substr $S10, rx122_tgt, $I11, 1
    ne $S10, ",", rx122_fail
    add rx122_pos, 1
    goto rxquantr125_loop
  rxquantr125_done:
  # rx pass
    rx122_cur."!cursor_pass"(rx122_pos, "octints")
    rx122_cur."!cursor_debug"("PASS  ", "octints", " at pos=", rx122_pos)
    .return (rx122_cur)
  rx122_fail:
    (rx122_rep, rx122_pos, $I10, $P10) = rx122_cur."!mark_fail"(0)
    lt rx122_pos, -1, rx122_done
    eq rx122_pos, -1, rx122_fail
    jump $I10
  rx122_done:
    rx122_cur."!cursor_fail"()
    rx122_cur."!cursor_debug"("FAIL  ", "octints")
    .return (rx122_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__octints"  :subid("50_1256744999.77867") :method
.annotate "line", 48
    new $P124, "ResizablePMCArray"
    push $P124, ""
    .return ($P124)
.end


.namespace ["HLL";"Grammar"]
.sub "integer"  :subid("51_1256744999.77867") :method :outer("10_1256744999.77867")
.annotate "line", 50
    .local string rx128_tgt
    .local int rx128_pos
    .local int rx128_off
    .local int rx128_eos
    .local int rx128_rep
    .local pmc rx128_cur
    (rx128_cur, rx128_pos, rx128_tgt, $I10) = self."!cursor_start"()
    rx128_cur."!cursor_debug"("START ", "integer")
    .lex unicode:"$\x{a2}", rx128_cur
    length rx128_eos, rx128_tgt
    set rx128_off, 0
    lt $I10, 2, rx128_start
    sub rx128_off, $I10, 1
    substr rx128_tgt, rx128_tgt, rx128_off
  rx128_start:
  alt133_0:
.annotate "line", 51
    set_addr $I10, alt133_1
    rx128_cur."!mark_push"(0, rx128_pos, $I10)
.annotate "line", 52
  # rx literal  "0"
    add $I11, rx128_pos, 1
    gt $I11, rx128_eos, rx128_fail
    sub $I11, rx128_pos, rx128_off
    substr $S10, rx128_tgt, $I11, 1
    ne $S10, "0", rx128_fail
    add rx128_pos, 1
  alt134_0:
    set_addr $I10, alt134_1
    rx128_cur."!mark_push"(0, rx128_pos, $I10)
  # rx literal  "b"
    add $I11, rx128_pos, 1
    gt $I11, rx128_eos, rx128_fail
    sub $I11, rx128_pos, rx128_off
    substr $S10, rx128_tgt, $I11, 1
    ne $S10, "b", rx128_fail
    add rx128_pos, 1
  # rx subcapture "binint"
    set_addr $I10, rxcap_139_fail
    rx128_cur."!mark_push"(0, rx128_pos, $I10)
  # rx rxquantr135 ** 1..*
    set_addr $I138, rxquantr135_done
    rx128_cur."!mark_push"(0, -1, $I138)
  rxquantr135_loop:
  # rx rxquantr136 ** 1..*
    set_addr $I137, rxquantr136_done
    rx128_cur."!mark_push"(0, -1, $I137)
  rxquantr136_loop:
  # rx enumcharlist negate=0 
    ge rx128_pos, rx128_eos, rx128_fail
    sub $I10, rx128_pos, rx128_off
    substr $S10, rx128_tgt, $I10, 1
    index $I11, "01", $S10
    lt $I11, 0, rx128_fail
    inc rx128_pos
    (rx128_rep) = rx128_cur."!mark_commit"($I137)
    rx128_cur."!mark_push"(rx128_rep, rx128_pos, $I137)
    goto rxquantr136_loop
  rxquantr136_done:
    (rx128_rep) = rx128_cur."!mark_commit"($I138)
    rx128_cur."!mark_push"(rx128_rep, rx128_pos, $I138)
  # rx literal  "_"
    add $I11, rx128_pos, 1
    gt $I11, rx128_eos, rx128_fail
    sub $I11, rx128_pos, rx128_off
    substr $S10, rx128_tgt, $I11, 1
    ne $S10, "_", rx128_fail
    add rx128_pos, 1
    goto rxquantr135_loop
  rxquantr135_done:
    set_addr $I10, rxcap_139_fail
    ($I12, $I11) = rx128_cur."!mark_peek"($I10)
    rx128_cur."!cursor_pos"($I11)
    ($P10) = rx128_cur."!cursor_start"()
    $P10."!cursor_pass"(rx128_pos, "")
    rx128_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("binint")
    goto rxcap_139_done
  rxcap_139_fail:
    goto rx128_fail
  rxcap_139_done:
    goto alt134_end
  alt134_1:
    set_addr $I10, alt134_2
    rx128_cur."!mark_push"(0, rx128_pos, $I10)
.annotate "line", 53
  # rx literal  "o"
    add $I11, rx128_pos, 1
    gt $I11, rx128_eos, rx128_fail
    sub $I11, rx128_pos, rx128_off
    substr $S10, rx128_tgt, $I11, 1
    ne $S10, "o", rx128_fail
    add rx128_pos, 1
  # rx subrule "octint" subtype=capture negate=
    rx128_cur."!cursor_pos"(rx128_pos)
    $P10 = rx128_cur."octint"()
    unless $P10, rx128_fail
    rx128_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octint")
    rx128_pos = $P10."pos"()
    goto alt134_end
  alt134_2:
    set_addr $I10, alt134_3
    rx128_cur."!mark_push"(0, rx128_pos, $I10)
.annotate "line", 54
  # rx literal  "x"
    add $I11, rx128_pos, 1
    gt $I11, rx128_eos, rx128_fail
    sub $I11, rx128_pos, rx128_off
    substr $S10, rx128_tgt, $I11, 1
    ne $S10, "x", rx128_fail
    add rx128_pos, 1
  # rx subrule "hexint" subtype=capture negate=
    rx128_cur."!cursor_pos"(rx128_pos)
    $P10 = rx128_cur."hexint"()
    unless $P10, rx128_fail
    rx128_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexint")
    rx128_pos = $P10."pos"()
    goto alt134_end
  alt134_3:
.annotate "line", 55
  # rx literal  "d"
    add $I11, rx128_pos, 1
    gt $I11, rx128_eos, rx128_fail
    sub $I11, rx128_pos, rx128_off
    substr $S10, rx128_tgt, $I11, 1
    ne $S10, "d", rx128_fail
    add rx128_pos, 1
  # rx subcapture "decint"
    set_addr $I10, rxcap_142_fail
    rx128_cur."!mark_push"(0, rx128_pos, $I10)
  # rx rxquantr140 ** 1..*
    set_addr $I141, rxquantr140_done
    rx128_cur."!mark_push"(0, -1, $I141)
  rxquantr140_loop:
  # rx charclass_q d r 1..-1
    sub $I10, rx128_pos, rx128_off
    find_not_cclass $I11, 8, rx128_tgt, $I10, rx128_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx128_fail
    add rx128_pos, rx128_off, $I11
    (rx128_rep) = rx128_cur."!mark_commit"($I141)
    rx128_cur."!mark_push"(rx128_rep, rx128_pos, $I141)
  # rx literal  "_"
    add $I11, rx128_pos, 1
    gt $I11, rx128_eos, rx128_fail
    sub $I11, rx128_pos, rx128_off
    substr $S10, rx128_tgt, $I11, 1
    ne $S10, "_", rx128_fail
    add rx128_pos, 1
    goto rxquantr140_loop
  rxquantr140_done:
    set_addr $I10, rxcap_142_fail
    ($I12, $I11) = rx128_cur."!mark_peek"($I10)
    rx128_cur."!cursor_pos"($I11)
    ($P10) = rx128_cur."!cursor_start"()
    $P10."!cursor_pass"(rx128_pos, "")
    rx128_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("decint")
    goto rxcap_142_done
  rxcap_142_fail:
    goto rx128_fail
  rxcap_142_done:
  alt134_end:
.annotate "line", 52
    goto alt133_end
  alt133_1:
.annotate "line", 57
  # rx subcapture "decint"
    set_addr $I10, rxcap_145_fail
    rx128_cur."!mark_push"(0, rx128_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx128_pos, rx128_off
    find_not_cclass $I11, 8, rx128_tgt, $I10, rx128_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx128_fail
    add rx128_pos, rx128_off, $I11
  # rx rxquantr143 ** 0..*
    set_addr $I144, rxquantr143_done
    rx128_cur."!mark_push"(0, rx128_pos, $I144)
  rxquantr143_loop:
  # rx literal  "_"
    add $I11, rx128_pos, 1
    gt $I11, rx128_eos, rx128_fail
    sub $I11, rx128_pos, rx128_off
    substr $S10, rx128_tgt, $I11, 1
    ne $S10, "_", rx128_fail
    add rx128_pos, 1
  # rx charclass_q d r 1..-1
    sub $I10, rx128_pos, rx128_off
    find_not_cclass $I11, 8, rx128_tgt, $I10, rx128_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx128_fail
    add rx128_pos, rx128_off, $I11
    (rx128_rep) = rx128_cur."!mark_commit"($I144)
    rx128_cur."!mark_push"(rx128_rep, rx128_pos, $I144)
    goto rxquantr143_loop
  rxquantr143_done:
    set_addr $I10, rxcap_145_fail
    ($I12, $I11) = rx128_cur."!mark_peek"($I10)
    rx128_cur."!cursor_pos"($I11)
    ($P10) = rx128_cur."!cursor_start"()
    $P10."!cursor_pass"(rx128_pos, "")
    rx128_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("decint")
    goto rxcap_145_done
  rxcap_145_fail:
    goto rx128_fail
  rxcap_145_done:
  alt133_end:
.annotate "line", 50
  # rx pass
    rx128_cur."!cursor_pass"(rx128_pos, "integer")
    rx128_cur."!cursor_debug"("PASS  ", "integer", " at pos=", rx128_pos)
    .return (rx128_cur)
  rx128_fail:
    (rx128_rep, rx128_pos, $I10, $P10) = rx128_cur."!mark_fail"(0)
    lt rx128_pos, -1, rx128_done
    eq rx128_pos, -1, rx128_fail
    jump $I10
  rx128_done:
    rx128_cur."!cursor_fail"()
    rx128_cur."!cursor_debug"("FAIL  ", "integer")
    .return (rx128_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__integer"  :subid("52_1256744999.77867") :method
.annotate "line", 50
    $P130 = self."!PREFIX__!subrule"("hexint", "0x")
    $P131 = self."!PREFIX__!subrule"("octint", "0o")
    new $P132, "ResizablePMCArray"
    push $P132, ""
    push $P132, "0d"
    push $P132, $P130
    push $P132, $P131
    push $P132, "0b"
    .return ($P132)
.end


.namespace ["HLL";"Grammar"]
.sub "escape"  :subid("53_1256744999.77867") :method
.annotate "line", 61
    $P147 = self."!protoregex"("escape")
    .return ($P147)
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__escape"  :subid("54_1256744999.77867") :method
.annotate "line", 61
    $P149 = self."!PREFIX__!protoregex"("escape")
    .return ($P149)
.end


.namespace ["HLL";"Grammar"]
.sub "escape:sym<backslash>"  :subid("55_1256744999.77867") :method :outer("10_1256744999.77867")
.annotate "line", 62
    .local string rx151_tgt
    .local int rx151_pos
    .local int rx151_off
    .local int rx151_eos
    .local int rx151_rep
    .local pmc rx151_cur
    (rx151_cur, rx151_pos, rx151_tgt, $I10) = self."!cursor_start"()
    rx151_cur."!cursor_debug"("START ", "escape:sym<backslash>")
    .lex unicode:"$\x{a2}", rx151_cur
    length rx151_eos, rx151_tgt
    set rx151_off, 0
    lt $I10, 2, rx151_start
    sub rx151_off, $I10, 1
    substr rx151_tgt, rx151_tgt, rx151_off
  rx151_start:
  # rx literal  "\\\\"
    add $I11, rx151_pos, 2
    gt $I11, rx151_eos, rx151_fail
    sub $I11, rx151_pos, rx151_off
    substr $S10, rx151_tgt, $I11, 2
    ne $S10, "\\\\", rx151_fail
    add rx151_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx151_cur."!cursor_pos"(rx151_pos)
    $P10 = rx151_cur."quotemod_check"("q")
    unless $P10, rx151_fail
  # rx pass
    rx151_cur."!cursor_pass"(rx151_pos, "escape:sym<backslash>")
    rx151_cur."!cursor_debug"("PASS  ", "escape:sym<backslash>", " at pos=", rx151_pos)
    .return (rx151_cur)
  rx151_fail:
    (rx151_rep, rx151_pos, $I10, $P10) = rx151_cur."!mark_fail"(0)
    lt rx151_pos, -1, rx151_done
    eq rx151_pos, -1, rx151_fail
    jump $I10
  rx151_done:
    rx151_cur."!cursor_fail"()
    rx151_cur."!cursor_debug"("FAIL  ", "escape:sym<backslash>")
    .return (rx151_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__escape:sym<backslash>"  :subid("56_1256744999.77867") :method
.annotate "line", 62
    new $P153, "ResizablePMCArray"
    push $P153, "\\\\"
    .return ($P153)
.end


.namespace ["HLL";"Grammar"]
.sub "escape:sym<stopper>"  :subid("57_1256744999.77867") :method :outer("10_1256744999.77867")
.annotate "line", 63
    .local string rx155_tgt
    .local int rx155_pos
    .local int rx155_off
    .local int rx155_eos
    .local int rx155_rep
    .local pmc rx155_cur
    (rx155_cur, rx155_pos, rx155_tgt, $I10) = self."!cursor_start"()
    rx155_cur."!cursor_debug"("START ", "escape:sym<stopper>")
    .lex unicode:"$\x{a2}", rx155_cur
    length rx155_eos, rx155_tgt
    set rx155_off, 0
    lt $I10, 2, rx155_start
    sub rx155_off, $I10, 1
    substr rx155_tgt, rx155_tgt, rx155_off
  rx155_start:
  # rx literal  "\\"
    add $I11, rx155_pos, 1
    gt $I11, rx155_eos, rx155_fail
    sub $I11, rx155_pos, rx155_off
    substr $S10, rx155_tgt, $I11, 1
    ne $S10, "\\", rx155_fail
    add rx155_pos, 1
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx155_cur."!cursor_pos"(rx155_pos)
    $P10 = rx155_cur."quotemod_check"("q")
    unless $P10, rx155_fail
  # rx subrule "stopper" subtype=capture negate=
    rx155_cur."!cursor_pos"(rx155_pos)
    $P10 = rx155_cur."stopper"()
    unless $P10, rx155_fail
    rx155_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("stopper")
    rx155_pos = $P10."pos"()
  # rx pass
    rx155_cur."!cursor_pass"(rx155_pos, "escape:sym<stopper>")
    rx155_cur."!cursor_debug"("PASS  ", "escape:sym<stopper>", " at pos=", rx155_pos)
    .return (rx155_cur)
  rx155_fail:
    (rx155_rep, rx155_pos, $I10, $P10) = rx155_cur."!mark_fail"(0)
    lt rx155_pos, -1, rx155_done
    eq rx155_pos, -1, rx155_fail
    jump $I10
  rx155_done:
    rx155_cur."!cursor_fail"()
    rx155_cur."!cursor_debug"("FAIL  ", "escape:sym<stopper>")
    .return (rx155_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__escape:sym<stopper>"  :subid("58_1256744999.77867") :method
.annotate "line", 63
    new $P157, "ResizablePMCArray"
    push $P157, "\\"
    .return ($P157)
.end


.namespace ["HLL";"Grammar"]
.sub "escape:sym<bs>"  :subid("59_1256744999.77867") :method :outer("10_1256744999.77867")
.annotate "line", 65
    .local string rx159_tgt
    .local int rx159_pos
    .local int rx159_off
    .local int rx159_eos
    .local int rx159_rep
    .local pmc rx159_cur
    (rx159_cur, rx159_pos, rx159_tgt, $I10) = self."!cursor_start"()
    rx159_cur."!cursor_debug"("START ", "escape:sym<bs>")
    .lex unicode:"$\x{a2}", rx159_cur
    length rx159_eos, rx159_tgt
    set rx159_off, 0
    lt $I10, 2, rx159_start
    sub rx159_off, $I10, 1
    substr rx159_tgt, rx159_tgt, rx159_off
  rx159_start:
  # rx literal  "\\b"
    add $I11, rx159_pos, 2
    gt $I11, rx159_eos, rx159_fail
    sub $I11, rx159_pos, rx159_off
    substr $S10, rx159_tgt, $I11, 2
    ne $S10, "\\b", rx159_fail
    add rx159_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx159_cur."!cursor_pos"(rx159_pos)
    $P10 = rx159_cur."quotemod_check"("b")
    unless $P10, rx159_fail
  # rx pass
    rx159_cur."!cursor_pass"(rx159_pos, "escape:sym<bs>")
    rx159_cur."!cursor_debug"("PASS  ", "escape:sym<bs>", " at pos=", rx159_pos)
    .return (rx159_cur)
  rx159_fail:
    (rx159_rep, rx159_pos, $I10, $P10) = rx159_cur."!mark_fail"(0)
    lt rx159_pos, -1, rx159_done
    eq rx159_pos, -1, rx159_fail
    jump $I10
  rx159_done:
    rx159_cur."!cursor_fail"()
    rx159_cur."!cursor_debug"("FAIL  ", "escape:sym<bs>")
    .return (rx159_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__escape:sym<bs>"  :subid("60_1256744999.77867") :method
.annotate "line", 65
    new $P161, "ResizablePMCArray"
    push $P161, "\\b"
    .return ($P161)
.end


.namespace ["HLL";"Grammar"]
.sub "escape:sym<nl>"  :subid("61_1256744999.77867") :method :outer("10_1256744999.77867")
.annotate "line", 66
    .local string rx163_tgt
    .local int rx163_pos
    .local int rx163_off
    .local int rx163_eos
    .local int rx163_rep
    .local pmc rx163_cur
    (rx163_cur, rx163_pos, rx163_tgt, $I10) = self."!cursor_start"()
    rx163_cur."!cursor_debug"("START ", "escape:sym<nl>")
    .lex unicode:"$\x{a2}", rx163_cur
    length rx163_eos, rx163_tgt
    set rx163_off, 0
    lt $I10, 2, rx163_start
    sub rx163_off, $I10, 1
    substr rx163_tgt, rx163_tgt, rx163_off
  rx163_start:
  # rx literal  "\\n"
    add $I11, rx163_pos, 2
    gt $I11, rx163_eos, rx163_fail
    sub $I11, rx163_pos, rx163_off
    substr $S10, rx163_tgt, $I11, 2
    ne $S10, "\\n", rx163_fail
    add rx163_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx163_cur."!cursor_pos"(rx163_pos)
    $P10 = rx163_cur."quotemod_check"("b")
    unless $P10, rx163_fail
  # rx pass
    rx163_cur."!cursor_pass"(rx163_pos, "escape:sym<nl>")
    rx163_cur."!cursor_debug"("PASS  ", "escape:sym<nl>", " at pos=", rx163_pos)
    .return (rx163_cur)
  rx163_fail:
    (rx163_rep, rx163_pos, $I10, $P10) = rx163_cur."!mark_fail"(0)
    lt rx163_pos, -1, rx163_done
    eq rx163_pos, -1, rx163_fail
    jump $I10
  rx163_done:
    rx163_cur."!cursor_fail"()
    rx163_cur."!cursor_debug"("FAIL  ", "escape:sym<nl>")
    .return (rx163_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__escape:sym<nl>"  :subid("62_1256744999.77867") :method
.annotate "line", 66
    new $P165, "ResizablePMCArray"
    push $P165, "\\n"
    .return ($P165)
.end


.namespace ["HLL";"Grammar"]
.sub "escape:sym<cr>"  :subid("63_1256744999.77867") :method :outer("10_1256744999.77867")
.annotate "line", 67
    .local string rx167_tgt
    .local int rx167_pos
    .local int rx167_off
    .local int rx167_eos
    .local int rx167_rep
    .local pmc rx167_cur
    (rx167_cur, rx167_pos, rx167_tgt, $I10) = self."!cursor_start"()
    rx167_cur."!cursor_debug"("START ", "escape:sym<cr>")
    .lex unicode:"$\x{a2}", rx167_cur
    length rx167_eos, rx167_tgt
    set rx167_off, 0
    lt $I10, 2, rx167_start
    sub rx167_off, $I10, 1
    substr rx167_tgt, rx167_tgt, rx167_off
  rx167_start:
  # rx literal  "\\r"
    add $I11, rx167_pos, 2
    gt $I11, rx167_eos, rx167_fail
    sub $I11, rx167_pos, rx167_off
    substr $S10, rx167_tgt, $I11, 2
    ne $S10, "\\r", rx167_fail
    add rx167_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx167_cur."!cursor_pos"(rx167_pos)
    $P10 = rx167_cur."quotemod_check"("b")
    unless $P10, rx167_fail
  # rx pass
    rx167_cur."!cursor_pass"(rx167_pos, "escape:sym<cr>")
    rx167_cur."!cursor_debug"("PASS  ", "escape:sym<cr>", " at pos=", rx167_pos)
    .return (rx167_cur)
  rx167_fail:
    (rx167_rep, rx167_pos, $I10, $P10) = rx167_cur."!mark_fail"(0)
    lt rx167_pos, -1, rx167_done
    eq rx167_pos, -1, rx167_fail
    jump $I10
  rx167_done:
    rx167_cur."!cursor_fail"()
    rx167_cur."!cursor_debug"("FAIL  ", "escape:sym<cr>")
    .return (rx167_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__escape:sym<cr>"  :subid("64_1256744999.77867") :method
.annotate "line", 67
    new $P169, "ResizablePMCArray"
    push $P169, "\\r"
    .return ($P169)
.end


.namespace ["HLL";"Grammar"]
.sub "escape:sym<tab>"  :subid("65_1256744999.77867") :method :outer("10_1256744999.77867")
.annotate "line", 68
    .local string rx171_tgt
    .local int rx171_pos
    .local int rx171_off
    .local int rx171_eos
    .local int rx171_rep
    .local pmc rx171_cur
    (rx171_cur, rx171_pos, rx171_tgt, $I10) = self."!cursor_start"()
    rx171_cur."!cursor_debug"("START ", "escape:sym<tab>")
    .lex unicode:"$\x{a2}", rx171_cur
    length rx171_eos, rx171_tgt
    set rx171_off, 0
    lt $I10, 2, rx171_start
    sub rx171_off, $I10, 1
    substr rx171_tgt, rx171_tgt, rx171_off
  rx171_start:
  # rx literal  "\\t"
    add $I11, rx171_pos, 2
    gt $I11, rx171_eos, rx171_fail
    sub $I11, rx171_pos, rx171_off
    substr $S10, rx171_tgt, $I11, 2
    ne $S10, "\\t", rx171_fail
    add rx171_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx171_cur."!cursor_pos"(rx171_pos)
    $P10 = rx171_cur."quotemod_check"("b")
    unless $P10, rx171_fail
  # rx pass
    rx171_cur."!cursor_pass"(rx171_pos, "escape:sym<tab>")
    rx171_cur."!cursor_debug"("PASS  ", "escape:sym<tab>", " at pos=", rx171_pos)
    .return (rx171_cur)
  rx171_fail:
    (rx171_rep, rx171_pos, $I10, $P10) = rx171_cur."!mark_fail"(0)
    lt rx171_pos, -1, rx171_done
    eq rx171_pos, -1, rx171_fail
    jump $I10
  rx171_done:
    rx171_cur."!cursor_fail"()
    rx171_cur."!cursor_debug"("FAIL  ", "escape:sym<tab>")
    .return (rx171_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__escape:sym<tab>"  :subid("66_1256744999.77867") :method
.annotate "line", 68
    new $P173, "ResizablePMCArray"
    push $P173, "\\t"
    .return ($P173)
.end


.namespace ["HLL";"Grammar"]
.sub "escape:sym<hex>"  :subid("67_1256744999.77867") :method :outer("10_1256744999.77867")
.annotate "line", 69
    .local string rx175_tgt
    .local int rx175_pos
    .local int rx175_off
    .local int rx175_eos
    .local int rx175_rep
    .local pmc rx175_cur
    (rx175_cur, rx175_pos, rx175_tgt, $I10) = self."!cursor_start"()
    rx175_cur."!cursor_debug"("START ", "escape:sym<hex>")
    .lex unicode:"$\x{a2}", rx175_cur
    length rx175_eos, rx175_tgt
    set rx175_off, 0
    lt $I10, 2, rx175_start
    sub rx175_off, $I10, 1
    substr rx175_tgt, rx175_tgt, rx175_off
  rx175_start:
.annotate "line", 70
  # rx literal  unicode:"\\x"
    add $I11, rx175_pos, 2
    gt $I11, rx175_eos, rx175_fail
    sub $I11, rx175_pos, rx175_off
    substr $S10, rx175_tgt, $I11, 2
    ne $S10, unicode:"\\x", rx175_fail
    add rx175_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx175_cur."!cursor_pos"(rx175_pos)
    $P10 = rx175_cur."quotemod_check"("b")
    unless $P10, rx175_fail
  alt178_0:
.annotate "line", 71
    set_addr $I10, alt178_1
    rx175_cur."!mark_push"(0, rx175_pos, $I10)
  # rx subrule "hexint" subtype=capture negate=
    rx175_cur."!cursor_pos"(rx175_pos)
    $P10 = rx175_cur."hexint"()
    unless $P10, rx175_fail
    rx175_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexint")
    rx175_pos = $P10."pos"()
    goto alt178_end
  alt178_1:
  # rx literal  "["
    add $I11, rx175_pos, 1
    gt $I11, rx175_eos, rx175_fail
    sub $I11, rx175_pos, rx175_off
    substr $S10, rx175_tgt, $I11, 1
    ne $S10, "[", rx175_fail
    add rx175_pos, 1
  # rx subrule "hexints" subtype=capture negate=
    rx175_cur."!cursor_pos"(rx175_pos)
    $P10 = rx175_cur."hexints"()
    unless $P10, rx175_fail
    rx175_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexints")
    rx175_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx175_pos, 1
    gt $I11, rx175_eos, rx175_fail
    sub $I11, rx175_pos, rx175_off
    substr $S10, rx175_tgt, $I11, 1
    ne $S10, "]", rx175_fail
    add rx175_pos, 1
  alt178_end:
.annotate "line", 69
  # rx pass
    rx175_cur."!cursor_pass"(rx175_pos, "escape:sym<hex>")
    rx175_cur."!cursor_debug"("PASS  ", "escape:sym<hex>", " at pos=", rx175_pos)
    .return (rx175_cur)
  rx175_fail:
    (rx175_rep, rx175_pos, $I10, $P10) = rx175_cur."!mark_fail"(0)
    lt rx175_pos, -1, rx175_done
    eq rx175_pos, -1, rx175_fail
    jump $I10
  rx175_done:
    rx175_cur."!cursor_fail"()
    rx175_cur."!cursor_debug"("FAIL  ", "escape:sym<hex>")
    .return (rx175_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__escape:sym<hex>"  :subid("68_1256744999.77867") :method
.annotate "line", 69
    new $P177, "ResizablePMCArray"
    push $P177, unicode:"\\x"
    .return ($P177)
.end


.namespace ["HLL";"Grammar"]
.sub "escape:sym<oct>"  :subid("69_1256744999.77867") :method :outer("10_1256744999.77867")
.annotate "line", 73
    .local string rx180_tgt
    .local int rx180_pos
    .local int rx180_off
    .local int rx180_eos
    .local int rx180_rep
    .local pmc rx180_cur
    (rx180_cur, rx180_pos, rx180_tgt, $I10) = self."!cursor_start"()
    rx180_cur."!cursor_debug"("START ", "escape:sym<oct>")
    .lex unicode:"$\x{a2}", rx180_cur
    length rx180_eos, rx180_tgt
    set rx180_off, 0
    lt $I10, 2, rx180_start
    sub rx180_off, $I10, 1
    substr rx180_tgt, rx180_tgt, rx180_off
  rx180_start:
.annotate "line", 74
  # rx literal  "\\o"
    add $I11, rx180_pos, 2
    gt $I11, rx180_eos, rx180_fail
    sub $I11, rx180_pos, rx180_off
    substr $S10, rx180_tgt, $I11, 2
    ne $S10, "\\o", rx180_fail
    add rx180_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx180_cur."!cursor_pos"(rx180_pos)
    $P10 = rx180_cur."quotemod_check"("b")
    unless $P10, rx180_fail
  alt183_0:
.annotate "line", 75
    set_addr $I10, alt183_1
    rx180_cur."!mark_push"(0, rx180_pos, $I10)
  # rx subrule "octint" subtype=capture negate=
    rx180_cur."!cursor_pos"(rx180_pos)
    $P10 = rx180_cur."octint"()
    unless $P10, rx180_fail
    rx180_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octint")
    rx180_pos = $P10."pos"()
    goto alt183_end
  alt183_1:
  # rx literal  "["
    add $I11, rx180_pos, 1
    gt $I11, rx180_eos, rx180_fail
    sub $I11, rx180_pos, rx180_off
    substr $S10, rx180_tgt, $I11, 1
    ne $S10, "[", rx180_fail
    add rx180_pos, 1
  # rx subrule "octints" subtype=capture negate=
    rx180_cur."!cursor_pos"(rx180_pos)
    $P10 = rx180_cur."octints"()
    unless $P10, rx180_fail
    rx180_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octints")
    rx180_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx180_pos, 1
    gt $I11, rx180_eos, rx180_fail
    sub $I11, rx180_pos, rx180_off
    substr $S10, rx180_tgt, $I11, 1
    ne $S10, "]", rx180_fail
    add rx180_pos, 1
  alt183_end:
.annotate "line", 73
  # rx pass
    rx180_cur."!cursor_pass"(rx180_pos, "escape:sym<oct>")
    rx180_cur."!cursor_debug"("PASS  ", "escape:sym<oct>", " at pos=", rx180_pos)
    .return (rx180_cur)
  rx180_fail:
    (rx180_rep, rx180_pos, $I10, $P10) = rx180_cur."!mark_fail"(0)
    lt rx180_pos, -1, rx180_done
    eq rx180_pos, -1, rx180_fail
    jump $I10
  rx180_done:
    rx180_cur."!cursor_fail"()
    rx180_cur."!cursor_debug"("FAIL  ", "escape:sym<oct>")
    .return (rx180_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__escape:sym<oct>"  :subid("70_1256744999.77867") :method
.annotate "line", 73
    new $P182, "ResizablePMCArray"
    push $P182, "\\o"
    .return ($P182)
.end


.namespace ["HLL";"Grammar"]
.sub "escape:sym<chr>"  :subid("71_1256744999.77867") :method :outer("10_1256744999.77867")
.annotate "line", 77
    .local string rx185_tgt
    .local int rx185_pos
    .local int rx185_off
    .local int rx185_eos
    .local int rx185_rep
    .local pmc rx185_cur
    (rx185_cur, rx185_pos, rx185_tgt, $I10) = self."!cursor_start"()
    rx185_cur."!cursor_debug"("START ", "escape:sym<chr>")
    .lex unicode:"$\x{a2}", rx185_cur
    length rx185_eos, rx185_tgt
    set rx185_off, 0
    lt $I10, 2, rx185_start
    sub rx185_off, $I10, 1
    substr rx185_tgt, rx185_tgt, rx185_off
  rx185_start:
  # rx literal  "\\c"
    add $I11, rx185_pos, 2
    gt $I11, rx185_eos, rx185_fail
    sub $I11, rx185_pos, rx185_off
    substr $S10, rx185_tgt, $I11, 2
    ne $S10, "\\c", rx185_fail
    add rx185_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx185_cur."!cursor_pos"(rx185_pos)
    $P10 = rx185_cur."quotemod_check"("b")
    unless $P10, rx185_fail
  # rx subrule "charspec" subtype=capture negate=
    rx185_cur."!cursor_pos"(rx185_pos)
    $P10 = rx185_cur."charspec"()
    unless $P10, rx185_fail
    rx185_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charspec")
    rx185_pos = $P10."pos"()
  # rx pass
    rx185_cur."!cursor_pass"(rx185_pos, "escape:sym<chr>")
    rx185_cur."!cursor_debug"("PASS  ", "escape:sym<chr>", " at pos=", rx185_pos)
    .return (rx185_cur)
  rx185_fail:
    (rx185_rep, rx185_pos, $I10, $P10) = rx185_cur."!mark_fail"(0)
    lt rx185_pos, -1, rx185_done
    eq rx185_pos, -1, rx185_fail
    jump $I10
  rx185_done:
    rx185_cur."!cursor_fail"()
    rx185_cur."!cursor_debug"("FAIL  ", "escape:sym<chr>")
    .return (rx185_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__escape:sym<chr>"  :subid("72_1256744999.77867") :method
.annotate "line", 77
    new $P187, "ResizablePMCArray"
    push $P187, "\\c"
    .return ($P187)
.end


.namespace ["HLL";"Grammar"]
.sub "charname"  :subid("73_1256744999.77867") :method :outer("10_1256744999.77867")
.annotate "line", 79
    .const 'Sub' $P197 = "75_1256744999.77867" 
    capture_lex $P197
    .local string rx189_tgt
    .local int rx189_pos
    .local int rx189_off
    .local int rx189_eos
    .local int rx189_rep
    .local pmc rx189_cur
    (rx189_cur, rx189_pos, rx189_tgt, $I10) = self."!cursor_start"()
    rx189_cur."!cursor_debug"("START ", "charname")
    .lex unicode:"$\x{a2}", rx189_cur
    length rx189_eos, rx189_tgt
    set rx189_off, 0
    lt $I10, 2, rx189_start
    sub rx189_off, $I10, 1
    substr rx189_tgt, rx189_tgt, rx189_off
  rx189_start:
  alt193_0:
    set_addr $I10, alt193_1
    rx189_cur."!mark_push"(0, rx189_pos, $I10)
.annotate "line", 80
  # rx subrule "integer" subtype=capture negate=
    rx189_cur."!cursor_pos"(rx189_pos)
    $P10 = rx189_cur."integer"()
    unless $P10, rx189_fail
    rx189_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("integer")
    rx189_pos = $P10."pos"()
    goto alt193_end
  alt193_1:
.annotate "line", 81
  # rx enumcharlist negate=0 
    ge rx189_pos, rx189_eos, rx189_fail
    sub $I10, rx189_pos, rx189_off
    substr $S10, rx189_tgt, $I10, 1
    index $I11, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ", $S10
    lt $I11, 0, rx189_fail
    inc rx189_pos
  # rx rxquantf194 ** 0..*
    set_addr $I10, rxquantf194_loop
    rx189_cur."!mark_push"(0, rx189_pos, $I10)
    goto rxquantf194_done
  rxquantf194_loop:
  # rx enumcharlist negate=1 
    ge rx189_pos, rx189_eos, rx189_fail
    sub $I10, rx189_pos, rx189_off
    substr $S10, rx189_tgt, $I10, 1
    index $I11, "],#", $S10
    ge $I11, 0, rx189_fail
    inc rx189_pos
    set_addr $I10, rxquantf194_loop
    rx189_cur."!mark_push"($I195, rx189_pos, $I10)
  rxquantf194_done:
  # rx enumcharlist negate=0 
    ge rx189_pos, rx189_eos, rx189_fail
    sub $I10, rx189_pos, rx189_off
    substr $S10, rx189_tgt, $I10, 1
    index $I11, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ)", $S10
    lt $I11, 0, rx189_fail
    inc rx189_pos
.annotate "line", 82
  # rx subrule "before" subtype=zerowidth negate=
    rx189_cur."!cursor_pos"(rx189_pos)
    .const 'Sub' $P197 = "75_1256744999.77867" 
    capture_lex $P197
    $P10 = rx189_cur."before"($P197)
    unless $P10, rx189_fail
  alt193_end:
.annotate "line", 79
  # rx pass
    rx189_cur."!cursor_pass"(rx189_pos, "charname")
    rx189_cur."!cursor_debug"("PASS  ", "charname", " at pos=", rx189_pos)
    .return (rx189_cur)
  rx189_fail:
    (rx189_rep, rx189_pos, $I10, $P10) = rx189_cur."!mark_fail"(0)
    lt rx189_pos, -1, rx189_done
    eq rx189_pos, -1, rx189_fail
    jump $I10
  rx189_done:
    rx189_cur."!cursor_fail"()
    rx189_cur."!cursor_debug"("FAIL  ", "charname")
    .return (rx189_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charname"  :subid("74_1256744999.77867") :method
.annotate "line", 79
    $P191 = self."!PREFIX__!subrule"("integer", "")
    new $P192, "ResizablePMCArray"
    push $P192, "Z"
    push $P192, "Y"
    push $P192, "X"
    push $P192, "W"
    push $P192, "V"
    push $P192, "U"
    push $P192, "T"
    push $P192, "S"
    push $P192, "R"
    push $P192, "Q"
    push $P192, "P"
    push $P192, "O"
    push $P192, "N"
    push $P192, "M"
    push $P192, "L"
    push $P192, "K"
    push $P192, "J"
    push $P192, "I"
    push $P192, "H"
    push $P192, "G"
    push $P192, "F"
    push $P192, "E"
    push $P192, "D"
    push $P192, "C"
    push $P192, "B"
    push $P192, "A"
    push $P192, "z"
    push $P192, "y"
    push $P192, "x"
    push $P192, "w"
    push $P192, "v"
    push $P192, "u"
    push $P192, "t"
    push $P192, "s"
    push $P192, "r"
    push $P192, "q"
    push $P192, "p"
    push $P192, "o"
    push $P192, "n"
    push $P192, "m"
    push $P192, "l"
    push $P192, "k"
    push $P192, "j"
    push $P192, "i"
    push $P192, "h"
    push $P192, "g"
    push $P192, "f"
    push $P192, "e"
    push $P192, "d"
    push $P192, "c"
    push $P192, "b"
    push $P192, "a"
    push $P192, $P191
    .return ($P192)
.end


.namespace ["HLL";"Grammar"]
.sub "_block196"  :anon :subid("75_1256744999.77867") :method :outer("73_1256744999.77867")
.annotate "line", 82
    .local string rx198_tgt
    .local int rx198_pos
    .local int rx198_off
    .local int rx198_eos
    .local int rx198_rep
    .local pmc rx198_cur
    (rx198_cur, rx198_pos, rx198_tgt, $I10) = self."!cursor_start"()
    rx198_cur."!cursor_debug"("START ", "")
    .lex unicode:"$\x{a2}", rx198_cur
    length rx198_eos, rx198_tgt
    set rx198_off, 0
    lt $I10, 2, rx198_start
    sub rx198_off, $I10, 1
    substr rx198_tgt, rx198_tgt, rx198_off
  rx198_start:
    ge rx198_pos, 0, rxscan199_done
  rxscan199_loop:
    ($P10) = rx198_cur."from"()
    inc $P10
    set rx198_pos, $P10
    ge rx198_pos, rx198_eos, rxscan199_done
    set_addr $I10, rxscan199_loop
    rx198_cur."!mark_push"(0, rx198_pos, $I10)
  rxscan199_done:
  # rx charclass_q s r 0..-1
    sub $I10, rx198_pos, rx198_off
    find_not_cclass $I11, 32, rx198_tgt, $I10, rx198_eos
    add rx198_pos, rx198_off, $I11
  # rx enumcharlist negate=0 
    ge rx198_pos, rx198_eos, rx198_fail
    sub $I10, rx198_pos, rx198_off
    substr $S10, rx198_tgt, $I10, 1
    index $I11, "],#", $S10
    lt $I11, 0, rx198_fail
    inc rx198_pos
  # rx pass
    rx198_cur."!cursor_pass"(rx198_pos, "")
    rx198_cur."!cursor_debug"("PASS  ", "", " at pos=", rx198_pos)
    .return (rx198_cur)
  rx198_fail:
    (rx198_rep, rx198_pos, $I10, $P10) = rx198_cur."!mark_fail"(0)
    lt rx198_pos, -1, rx198_done
    eq rx198_pos, -1, rx198_fail
    jump $I10
  rx198_done:
    rx198_cur."!cursor_fail"()
    rx198_cur."!cursor_debug"("FAIL  ", "")
    .return (rx198_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "charnames"  :subid("76_1256744999.77867") :method :outer("10_1256744999.77867")
.annotate "line", 84
    .local string rx201_tgt
    .local int rx201_pos
    .local int rx201_off
    .local int rx201_eos
    .local int rx201_rep
    .local pmc rx201_cur
    (rx201_cur, rx201_pos, rx201_tgt, $I10) = self."!cursor_start"()
    rx201_cur."!cursor_debug"("START ", "charnames")
    rx201_cur."!cursor_caparray"("charname")
    .lex unicode:"$\x{a2}", rx201_cur
    length rx201_eos, rx201_tgt
    set rx201_off, 0
    lt $I10, 2, rx201_start
    sub rx201_off, $I10, 1
    substr rx201_tgt, rx201_tgt, rx201_off
  rx201_start:
  # rx rxquantr204 ** 1..*
    set_addr $I205, rxquantr204_done
    rx201_cur."!mark_push"(0, -1, $I205)
  rxquantr204_loop:
  # rx subrule "ws" subtype=method negate=
    rx201_cur."!cursor_pos"(rx201_pos)
    $P10 = rx201_cur."ws"()
    unless $P10, rx201_fail
    rx201_pos = $P10."pos"()
  # rx subrule "charname" subtype=capture negate=
    rx201_cur."!cursor_pos"(rx201_pos)
    $P10 = rx201_cur."charname"()
    unless $P10, rx201_fail
    rx201_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charname")
    rx201_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx201_cur."!cursor_pos"(rx201_pos)
    $P10 = rx201_cur."ws"()
    unless $P10, rx201_fail
    rx201_pos = $P10."pos"()
    (rx201_rep) = rx201_cur."!mark_commit"($I205)
    rx201_cur."!mark_push"(rx201_rep, rx201_pos, $I205)
  # rx literal  ","
    add $I11, rx201_pos, 1
    gt $I11, rx201_eos, rx201_fail
    sub $I11, rx201_pos, rx201_off
    substr $S10, rx201_tgt, $I11, 1
    ne $S10, ",", rx201_fail
    add rx201_pos, 1
    goto rxquantr204_loop
  rxquantr204_done:
  # rx pass
    rx201_cur."!cursor_pass"(rx201_pos, "charnames")
    rx201_cur."!cursor_debug"("PASS  ", "charnames", " at pos=", rx201_pos)
    .return (rx201_cur)
  rx201_fail:
    (rx201_rep, rx201_pos, $I10, $P10) = rx201_cur."!mark_fail"(0)
    lt rx201_pos, -1, rx201_done
    eq rx201_pos, -1, rx201_fail
    jump $I10
  rx201_done:
    rx201_cur."!cursor_fail"()
    rx201_cur."!cursor_debug"("FAIL  ", "charnames")
    .return (rx201_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charnames"  :subid("77_1256744999.77867") :method
.annotate "line", 84
    new $P203, "ResizablePMCArray"
    push $P203, ""
    .return ($P203)
.end


.namespace ["HLL";"Grammar"]
.sub "charspec"  :subid("78_1256744999.77867") :method :outer("10_1256744999.77867")
.annotate "line", 85
    .local string rx207_tgt
    .local int rx207_pos
    .local int rx207_off
    .local int rx207_eos
    .local int rx207_rep
    .local pmc rx207_cur
    (rx207_cur, rx207_pos, rx207_tgt, $I10) = self."!cursor_start"()
    rx207_cur."!cursor_debug"("START ", "charspec")
    .lex unicode:"$\x{a2}", rx207_cur
    length rx207_eos, rx207_tgt
    set rx207_off, 0
    lt $I10, 2, rx207_start
    sub rx207_off, $I10, 1
    substr rx207_tgt, rx207_tgt, rx207_off
  rx207_start:
  alt212_0:
.annotate "line", 86
    set_addr $I10, alt212_1
    rx207_cur."!mark_push"(0, rx207_pos, $I10)
.annotate "line", 87
  # rx literal  "["
    add $I11, rx207_pos, 1
    gt $I11, rx207_eos, rx207_fail
    sub $I11, rx207_pos, rx207_off
    substr $S10, rx207_tgt, $I11, 1
    ne $S10, "[", rx207_fail
    add rx207_pos, 1
  # rx subrule "charnames" subtype=capture negate=
    rx207_cur."!cursor_pos"(rx207_pos)
    $P10 = rx207_cur."charnames"()
    unless $P10, rx207_fail
    rx207_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charnames")
    rx207_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx207_pos, 1
    gt $I11, rx207_eos, rx207_fail
    sub $I11, rx207_pos, rx207_off
    substr $S10, rx207_tgt, $I11, 1
    ne $S10, "]", rx207_fail
    add rx207_pos, 1
    goto alt212_end
  alt212_1:
    set_addr $I10, alt212_2
    rx207_cur."!mark_push"(0, rx207_pos, $I10)
.annotate "line", 88
  # rx charclass_q d r 1..-1
    sub $I10, rx207_pos, rx207_off
    find_not_cclass $I11, 8, rx207_tgt, $I10, rx207_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx207_fail
    add rx207_pos, rx207_off, $I11
  # rx rxquantr213 ** 0..*
    set_addr $I214, rxquantr213_done
    rx207_cur."!mark_push"(0, rx207_pos, $I214)
  rxquantr213_loop:
  # rx literal  "_"
    add $I11, rx207_pos, 1
    gt $I11, rx207_eos, rx207_fail
    sub $I11, rx207_pos, rx207_off
    substr $S10, rx207_tgt, $I11, 1
    ne $S10, "_", rx207_fail
    add rx207_pos, 1
  # rx charclass_q d r 1..-1
    sub $I10, rx207_pos, rx207_off
    find_not_cclass $I11, 8, rx207_tgt, $I10, rx207_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx207_fail
    add rx207_pos, rx207_off, $I11
    (rx207_rep) = rx207_cur."!mark_commit"($I214)
    rx207_cur."!mark_push"(rx207_rep, rx207_pos, $I214)
    goto rxquantr213_loop
  rxquantr213_done:
    goto alt212_end
  alt212_2:
    set_addr $I10, alt212_3
    rx207_cur."!mark_push"(0, rx207_pos, $I10)
.annotate "line", 89
  # rx enumcharlist negate=0 
    ge rx207_pos, rx207_eos, rx207_fail
    sub $I10, rx207_pos, rx207_off
    substr $S10, rx207_tgt, $I10, 1
    index $I11, "?@ABCDEFGHIJKLMNOPQRSTUVWXYZ", $S10
    lt $I11, 0, rx207_fail
    inc rx207_pos
    goto alt212_end
  alt212_3:
.annotate "line", 90
  # rx subrule "panic" subtype=method negate=
    rx207_cur."!cursor_pos"(rx207_pos)
    $P10 = rx207_cur."panic"("Unrecognized \\\\c character")
    unless $P10, rx207_fail
    rx207_pos = $P10."pos"()
  alt212_end:
.annotate "line", 85
  # rx pass
    rx207_cur."!cursor_pass"(rx207_pos, "charspec")
    rx207_cur."!cursor_debug"("PASS  ", "charspec", " at pos=", rx207_pos)
    .return (rx207_cur)
  rx207_fail:
    (rx207_rep, rx207_pos, $I10, $P10) = rx207_cur."!mark_fail"(0)
    lt rx207_pos, -1, rx207_done
    eq rx207_pos, -1, rx207_fail
    jump $I10
  rx207_done:
    rx207_cur."!cursor_fail"()
    rx207_cur."!cursor_debug"("FAIL  ", "charspec")
    .return (rx207_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charspec"  :subid("79_1256744999.77867") :method
.annotate "line", 85
    $P209 = self."!PREFIX__!subrule"("panic", "")
    $P210 = self."!PREFIX__!subrule"("charnames", "[")
    new $P211, "ResizablePMCArray"
    push $P211, $P209
    push $P211, "Z"
    push $P211, "Y"
    push $P211, "X"
    push $P211, "W"
    push $P211, "V"
    push $P211, "U"
    push $P211, "T"
    push $P211, "S"
    push $P211, "R"
    push $P211, "Q"
    push $P211, "P"
    push $P211, "O"
    push $P211, "N"
    push $P211, "M"
    push $P211, "L"
    push $P211, "K"
    push $P211, "J"
    push $P211, "I"
    push $P211, "H"
    push $P211, "G"
    push $P211, "F"
    push $P211, "E"
    push $P211, "D"
    push $P211, "C"
    push $P211, "B"
    push $P211, "A"
    push $P211, "@"
    push $P211, "?"
    push $P211, ""
    push $P211, $P210
    .return ($P211)
.end

### .include 'src/gen/hll-actions.pir'

.namespace []
.sub "_block11"  :anon :subid("10_1256745001.69732")
.annotate "line", 3
    get_hll_global $P14, ["HLL";"Actions"], "_block13" 
.annotate "line", 1
    .return ($P14)
.end


.namespace ["HLL";"Actions"]
.sub "_block13" :init :load :subid("11_1256745001.69732")
.annotate "line", 3
    .const 'Sub' $P472 = "55_1256745001.69732" 
    capture_lex $P472
    .const 'Sub' $P466 = "54_1256745001.69732" 
    capture_lex $P466
    .const 'Sub' $P459 = "53_1256745001.69732" 
    capture_lex $P459
    .const 'Sub' $P442 = "52_1256745001.69732" 
    capture_lex $P442
    .const 'Sub' $P425 = "51_1256745001.69732" 
    capture_lex $P425
    .const 'Sub' $P418 = "50_1256745001.69732" 
    capture_lex $P418
    .const 'Sub' $P411 = "49_1256745001.69732" 
    capture_lex $P411
    .const 'Sub' $P404 = "48_1256745001.69732" 
    capture_lex $P404
    .const 'Sub' $P397 = "47_1256745001.69732" 
    capture_lex $P397
    .const 'Sub' $P387 = "46_1256745001.69732" 
    capture_lex $P387
    .const 'Sub' $P380 = "45_1256745001.69732" 
    capture_lex $P380
    .const 'Sub' $P364 = "44_1256745001.69732" 
    capture_lex $P364
    .const 'Sub' $P277 = "36_1256745001.69732" 
    capture_lex $P277
    .const 'Sub' $P208 = "29_1256745001.69732" 
    capture_lex $P208
    .const 'Sub' $P199 = "28_1256745001.69732" 
    capture_lex $P199
    .const 'Sub' $P190 = "27_1256745001.69732" 
    capture_lex $P190
    .const 'Sub' $P159 = "26_1256745001.69732" 
    capture_lex $P159
    .const 'Sub' $P149 = "25_1256745001.69732" 
    capture_lex $P149
    .const 'Sub' $P139 = "24_1256745001.69732" 
    capture_lex $P139
    .const 'Sub' $P129 = "23_1256745001.69732" 
    capture_lex $P129
    .const 'Sub' $P16 = "12_1256745001.69732" 
    capture_lex $P16
$P15 = get_root_global ["parrot"], "P6metaclass"
    $P15."new_class"("HLL::Actions")
.annotate "line", 178
    .const 'Sub' $P472 = "55_1256745001.69732" 
    capture_lex $P472
.annotate "line", 3
    .return ($P472)
.end


.namespace ["HLL";"Actions"]
.sub "EXPR"  :subid("12_1256745001.69732") :method :outer("11_1256745001.69732")
    .param pmc param_19
    .param pmc param_20 :optional
    .param int has_param_20 :opt_flag
.annotate "line", 3
    .const 'Sub' $P102 = "20_1256745001.69732" 
    capture_lex $P102
    .const 'Sub' $P95 = "19_1256745001.69732" 
    capture_lex $P95
    .const 'Sub' $P34 = "14_1256745001.69732" 
    capture_lex $P34
    .const 'Sub' $P25 = "13_1256745001.69732" 
    capture_lex $P25
    new $P18, 'ExceptionHandler'
    set_addr $P18, control_17
    $P18."handle_types"(58)
    push_eh $P18
    .lex "self", self
    .lex "$/", param_19
    if has_param_20, optparam_56
    new $P21, "Undef"
    set param_20, $P21
  optparam_56:
    .lex "$key", param_20
.annotate "line", 4
    find_lex $P23, "$key"
    unless_null $P23, vivify_57
    new $P23, "Undef"
  vivify_57:
    if $P23, unless_22_end
    .const 'Sub' $P25 = "13_1256745001.69732" 
    capture_lex $P25
    $P25()
  unless_22_end:
.annotate "line", 5
    find_lex $P28, "$/"
    set $P29, $P28["OPER"]
    unless_null $P29, vivify_58
    new $P29, "Undef"
  vivify_58:
    $P30 = $P29."peek_ast"()
    .lex "$past", $P30
.annotate "line", 6
    find_lex $P32, "$past"
    unless_null $P32, vivify_59
    new $P32, "Undef"
  vivify_59:
    if $P32, unless_31_end
    .const 'Sub' $P34 = "14_1256745001.69732" 
    capture_lex $P34
    $P34()
  unless_31_end:
.annotate "line", 21
    find_lex $P91, "$key"
    unless_null $P91, vivify_81
    new $P91, "Undef"
  vivify_81:
    set $S92, $P91
    iseq $I93, $S92, "POSTFIX"
    if $I93, if_90
.annotate "line", 22
    .const 'Sub' $P102 = "20_1256745001.69732" 
    capture_lex $P102
    $P102()
    goto if_90_end
  if_90:
.annotate "line", 21
    .const 'Sub' $P95 = "19_1256745001.69732" 
    capture_lex $P95
    $P95()
  if_90_end:
    find_lex $P125, "$/"
.annotate "line", 25
    find_lex $P126, "$past"
    unless_null $P126, vivify_90
    new $P126, "Undef"
  vivify_90:
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
.sub "_block24"  :anon :subid("13_1256745001.69732") :outer("12_1256745001.69732")
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
.sub "_block33"  :anon :subid("14_1256745001.69732") :outer("12_1256745001.69732")
.annotate "line", 6
    .const 'Sub' $P71 = "17_1256745001.69732" 
    capture_lex $P71
    .const 'Sub' $P58 = "16_1256745001.69732" 
    capture_lex $P58
    .const 'Sub' $P44 = "15_1256745001.69732" 
    capture_lex $P44
.annotate "line", 7
    get_hll_global $P35, ["PAST"], "Op"
    find_lex $P36, "$/"
    unless_null $P36, vivify_60
    new $P36, "Undef"
  vivify_60:
    $P37 = $P35."new"($P36 :named("node"))
    store_lex "$past", $P37
.annotate "line", 8
    find_lex $P39, "$/"
    set $P40, $P39["OPER"]
    unless_null $P40, vivify_61
    new $P40, "Hash"
  vivify_61:
    set $P41, $P40["O"]
    unless_null $P41, vivify_62
    new $P41, "Hash"
  vivify_62:
    set $P42, $P41["pasttype"]
    unless_null $P42, vivify_63
    new $P42, "Undef"
  vivify_63:
    if $P42, if_38
.annotate "line", 9
    find_lex $P53, "$/"
    set $P54, $P53["OPER"]
    unless_null $P54, vivify_64
    new $P54, "Hash"
  vivify_64:
    set $P55, $P54["O"]
    unless_null $P55, vivify_65
    new $P55, "Hash"
  vivify_65:
    set $P56, $P55["pirop"]
    unless_null $P56, vivify_66
    new $P56, "Undef"
  vivify_66:
    unless $P56, if_52_end
    .const 'Sub' $P58 = "16_1256745001.69732" 
    capture_lex $P58
    $P58()
  if_52_end:
.annotate "line", 8
    goto if_38_end
  if_38:
    .const 'Sub' $P44 = "15_1256745001.69732" 
    capture_lex $P44
    $P44()
  if_38_end:
.annotate "line", 10
    find_lex $P68, "$past"
    unless_null $P68, vivify_75
    new $P68, "Undef"
  vivify_75:
    $P69 = $P68."name"()
    unless $P69, unless_67
    set $P66, $P69
    goto unless_67_end
  unless_67:
    .const 'Sub' $P71 = "17_1256745001.69732" 
    capture_lex $P71
    $P89 = $P71()
    set $P66, $P89
  unless_67_end:
.annotate "line", 6
    .return ($P66)
.end


.namespace ["HLL";"Actions"]
.sub "_block57"  :anon :subid("16_1256745001.69732") :outer("14_1256745001.69732")
.annotate "line", 9
    find_lex $P59, "$past"
    unless_null $P59, vivify_67
    new $P59, "Undef"
  vivify_67:
    find_lex $P60, "$/"
    set $P61, $P60["OPER"]
    unless_null $P61, vivify_68
    new $P61, "Hash"
  vivify_68:
    set $P62, $P61["O"]
    unless_null $P62, vivify_69
    new $P62, "Hash"
  vivify_69:
    set $P63, $P62["pirop"]
    unless_null $P63, vivify_70
    new $P63, "Undef"
  vivify_70:
    set $S64, $P63
    $P65 = $P59."pirop"($S64)
    .return ($P65)
.end


.namespace ["HLL";"Actions"]
.sub "_block43"  :anon :subid("15_1256745001.69732") :outer("14_1256745001.69732")
.annotate "line", 8
    find_lex $P45, "$past"
    unless_null $P45, vivify_71
    new $P45, "Undef"
  vivify_71:
    find_lex $P46, "$/"
    set $P47, $P46["OPER"]
    unless_null $P47, vivify_72
    new $P47, "Hash"
  vivify_72:
    set $P48, $P47["O"]
    unless_null $P48, vivify_73
    new $P48, "Hash"
  vivify_73:
    set $P49, $P48["pasttype"]
    unless_null $P49, vivify_74
    new $P49, "Undef"
  vivify_74:
    set $S50, $P49
    $P51 = $P45."pasttype"($S50)
    .return ($P51)
.end


.namespace ["HLL";"Actions"]
.sub "_block70"  :anon :subid("17_1256745001.69732") :outer("14_1256745001.69732")
.annotate "line", 10
    .const 'Sub' $P77 = "18_1256745001.69732" 
    capture_lex $P77
.annotate "line", 11
    find_lex $P73, "$key"
    unless_null $P73, vivify_76
    new $P73, "Undef"
  vivify_76:
    set $S74, $P73
    iseq $I75, $S74, "LIST"
    unless $I75, if_72_end
    .const 'Sub' $P77 = "18_1256745001.69732" 
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
    unless_null $P82, vivify_77
    new $P82, "Hash"
  vivify_77:
    set $P83, $P82["sym"]
    unless_null $P83, vivify_78
    new $P83, "Undef"
  vivify_78:
    concat $P84, $P80, $P83
    concat $P85, $P84, ">"
    .lex "$name", $P85
.annotate "line", 18
    find_lex $P86, "$past"
    unless_null $P86, vivify_79
    new $P86, "Undef"
  vivify_79:
    find_lex $P87, "$name"
    unless_null $P87, vivify_80
    new $P87, "Undef"
  vivify_80:
    $P88 = $P86."name"($P87)
.annotate "line", 10
    .return ($P88)
.end


.namespace ["HLL";"Actions"]
.sub "_block76"  :anon :subid("18_1256745001.69732") :outer("17_1256745001.69732")
.annotate "line", 11
    new $P78, "String"
    assign $P78, "infix"
    store_lex "$key", $P78
    .return ($P78)
.end


.namespace ["HLL";"Actions"]
.sub "_block101"  :anon :subid("20_1256745001.69732") :outer("12_1256745001.69732")
.annotate "line", 22
    .const 'Sub' $P109 = "21_1256745001.69732" 
    capture_lex $P109
.annotate "line", 23
    find_lex $P104, "$/"
    unless_null $P104, vivify_82
    new $P104, "Undef"
  vivify_82:
    $P105 = $P104."list"()
    defined $I106, $P105
    unless $I106, for_undef_83
    iter $P103, $P105
    new $P123, 'ExceptionHandler'
    set_addr $P123, loop122_handler
    $P123."handle_types"(65, 67, 66)
    push_eh $P123
  loop122_test:
    unless $P103, loop122_done
    shift $P107, $P103
  loop122_redo:
    .const 'Sub' $P109 = "21_1256745001.69732" 
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
  for_undef_83:
.annotate "line", 22
    .return ($P103)
.end


.namespace ["HLL";"Actions"]
.sub "_block108"  :anon :subid("21_1256745001.69732") :outer("20_1256745001.69732")
    .param pmc param_110
.annotate "line", 23
    .const 'Sub' $P116 = "22_1256745001.69732" 
    capture_lex $P116
    .lex "$_", param_110
    find_lex $P113, "$_"
    unless_null $P113, vivify_84
    new $P113, "Undef"
  vivify_84:
    $P114 = $P113."ast"()
    if $P114, if_112
    set $P111, $P114
    goto if_112_end
  if_112:
    .const 'Sub' $P116 = "22_1256745001.69732" 
    capture_lex $P116
    $P121 = $P116()
    set $P111, $P121
  if_112_end:
    .return ($P111)
.end


.namespace ["HLL";"Actions"]
.sub "_block115"  :anon :subid("22_1256745001.69732") :outer("21_1256745001.69732")
.annotate "line", 23
    find_lex $P117, "$past"
    unless_null $P117, vivify_85
    new $P117, "Undef"
  vivify_85:
    find_lex $P118, "$_"
    unless_null $P118, vivify_86
    new $P118, "Undef"
  vivify_86:
    $P119 = $P118."ast"()
    $P120 = $P117."push"($P119)
    .return ($P120)
.end


.namespace ["HLL";"Actions"]
.sub "_block94"  :anon :subid("19_1256745001.69732") :outer("12_1256745001.69732")
.annotate "line", 21
    find_lex $P96, "$past"
    unless_null $P96, vivify_87
    new $P96, "Undef"
  vivify_87:
    find_lex $P97, "$/"
    unless_null $P97, vivify_88
    new $P97, "ResizablePMCArray"
  vivify_88:
    set $P98, $P97[0]
    unless_null $P98, vivify_89
    new $P98, "Undef"
  vivify_89:
    $P99 = $P98."ast"()
    $P100 = $P96."unshift"($P99)
    .return ($P100)
.end


.namespace ["HLL";"Actions"]
.sub "termish"  :subid("23_1256745001.69732") :method :outer("11_1256745001.69732")
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
    set $P135, $P134["noun"]
    unless_null $P135, vivify_91
    new $P135, "Undef"
  vivify_91:
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
.sub "noun:sym<term>"  :subid("24_1256745001.69732") :method :outer("11_1256745001.69732")
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
    set $P145, $P144["term"]
    unless_null $P145, vivify_92
    new $P145, "Undef"
  vivify_92:
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
.sub "noun:sym<circumfix>"  :subid("25_1256745001.69732") :method :outer("11_1256745001.69732")
    .param pmc param_152
.annotate "line", 33
    new $P151, 'ExceptionHandler'
    set_addr $P151, control_150
    $P151."handle_types"(58)
    push_eh $P151
    .lex "self", self
    .lex "$/", param_152
    find_lex $P153, "$/"
    find_lex $P154, "$/"
    set $P155, $P154["circumfix"]
    unless_null $P155, vivify_93
    new $P155, "Undef"
  vivify_93:
    $P156 = $P155."ast"()
    $P157 = $P153."!make"($P156)
    .return ($P157)
  control_150:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P158, exception, "payload"
    .return ($P158)
    rethrow exception
.end


.namespace ["HLL";"Actions"]
.sub "integer"  :subid("26_1256745001.69732") :method :outer("11_1256745001.69732")
    .param pmc param_162
.annotate "line", 35
    new $P161, 'ExceptionHandler'
    set_addr $P161, control_160
    $P161."handle_types"(58)
    push_eh $P161
    .lex "self", self
    .lex "$/", param_162
.annotate "line", 36
    find_lex $P163, "$/"
.annotate "line", 37
    find_lex $P166, "$/"
    set $P167, $P166["decint"]
    unless_null $P167, vivify_94
    new $P167, "Undef"
  vivify_94:
    if $P167, if_165
.annotate "line", 39
    find_lex $P173, "$/"
    set $P174, $P173["hexint"]
    unless_null $P174, vivify_95
    new $P174, "Undef"
  vivify_95:
    if $P174, if_172
.annotate "line", 41
    find_lex $P180, "$/"
    set $P181, $P180["octint"]
    unless_null $P181, vivify_96
    new $P181, "Undef"
  vivify_96:
    if $P181, if_179
.annotate "line", 42
    find_lex $P185, "$/"
    set $P186, $P185["binint"]
    unless_null $P186, vivify_97
    new $P186, "Undef"
  vivify_97:
    $P187 = "string_to_int"($P186, 2)
    set $P178, $P187
.annotate "line", 41
    goto if_179_end
  if_179:
    find_lex $P182, "$/"
    set $P183, $P182["octint"]
    unless_null $P183, vivify_98
    new $P183, "Undef"
  vivify_98:
    $P184 = $P183."ast"()
    set $P178, $P184
  if_179_end:
    set $P171, $P178
.annotate "line", 39
    goto if_172_end
  if_172:
    find_lex $P175, "$/"
    set $P176, $P175["hexint"]
    unless_null $P176, vivify_99
    new $P176, "Undef"
  vivify_99:
    $P177 = $P176."ast"()
    set $P171, $P177
  if_172_end:
    set $P164, $P171
.annotate "line", 37
    goto if_165_end
  if_165:
    find_lex $P168, "$/"
    set $P169, $P168["decint"]
    unless_null $P169, vivify_100
    new $P169, "Undef"
  vivify_100:
    $P170 = "string_to_int"($P169, 10)
    set $P164, $P170
  if_165_end:
    $P188 = $P163."!make"($P164)
.annotate "line", 35
    .return ($P188)
  control_160:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P189, exception, "payload"
    .return ($P189)
    rethrow exception
.end


.namespace ["HLL";"Actions"]
.sub "hexint"  :subid("27_1256745001.69732") :method :outer("11_1256745001.69732")
    .param pmc param_193
.annotate "line", 47
    new $P192, 'ExceptionHandler'
    set_addr $P192, control_191
    $P192."handle_types"(58)
    push_eh $P192
    .lex "self", self
    .lex "$/", param_193
.annotate "line", 48
    find_lex $P194, "$/"
    find_lex $P195, "$/"
    unless_null $P195, vivify_101
    new $P195, "Undef"
  vivify_101:
    $P196 = "string_to_int"($P195, 16)
    $P197 = $P194."!make"($P196)
.annotate "line", 47
    .return ($P197)
  control_191:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P198, exception, "payload"
    .return ($P198)
    rethrow exception
.end


.namespace ["HLL";"Actions"]
.sub "octint"  :subid("28_1256745001.69732") :method :outer("11_1256745001.69732")
    .param pmc param_202
.annotate "line", 51
    new $P201, 'ExceptionHandler'
    set_addr $P201, control_200
    $P201."handle_types"(58)
    push_eh $P201
    .lex "self", self
    .lex "$/", param_202
.annotate "line", 52
    find_lex $P203, "$/"
    find_lex $P204, "$/"
    unless_null $P204, vivify_102
    new $P204, "Undef"
  vivify_102:
    $P205 = "string_to_int"($P204, 8)
    $P206 = $P203."!make"($P205)
.annotate "line", 51
    .return ($P206)
  control_200:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P207, exception, "payload"
    .return ($P207)
    rethrow exception
.end


.namespace ["HLL";"Actions"]
.sub "quote_EXPR"  :subid("29_1256745001.69732") :method :outer("11_1256745001.69732")
    .param pmc param_211
.annotate "line", 55
    .const 'Sub' $P268 = "35_1256745001.69732" 
    capture_lex $P268
    .const 'Sub' $P220 = "30_1256745001.69732" 
    capture_lex $P220
    new $P210, 'ExceptionHandler'
    set_addr $P210, control_209
    $P210."handle_types"(58)
    push_eh $P210
    .lex "self", self
    .lex "$/", param_211
.annotate "line", 56
    find_lex $P212, "$/"
    set $P213, $P212["quote_delimited"]
    unless_null $P213, vivify_103
    new $P213, "Undef"
  vivify_103:
    $P214 = $P213."ast"()
    .lex "$past", $P214
.annotate "line", 57
    get_hll_global $P216, ["HLL";"Grammar"], "quotemod_check"
    find_lex $P217, "$/"
    unless_null $P217, vivify_104
    new $P217, "Undef"
  vivify_104:
    $P218 = $P216($P217, "w")
    unless $P218, if_215_end
    .const 'Sub' $P220 = "30_1256745001.69732" 
    capture_lex $P220
    $P220()
  if_215_end:
.annotate "line", 69
    find_lex $P264, "$past"
    unless_null $P264, vivify_115
    new $P264, "Undef"
  vivify_115:
    $P265 = "isaPAST"($P264)
    isfalse $I266, $P265
    unless $I266, if_263_end
    .const 'Sub' $P268 = "35_1256745001.69732" 
    capture_lex $P268
    $P268()
  if_263_end:
    find_lex $P273, "$/"
.annotate "line", 72
    find_lex $P274, "$past"
    unless_null $P274, vivify_117
    new $P274, "Undef"
  vivify_117:
    $P275 = $P273."!make"($P274)
.annotate "line", 55
    .return ($P275)
  control_209:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P276, exception, "payload"
    .return ($P276)
    rethrow exception
.end


.namespace ["HLL";"Actions"]
.sub "_block219"  :anon :subid("30_1256745001.69732") :outer("29_1256745001.69732")
.annotate "line", 57
    .const 'Sub' $P231 = "32_1256745001.69732" 
    capture_lex $P231
    .const 'Sub' $P226 = "31_1256745001.69732" 
    capture_lex $P226
.annotate "line", 58
    find_lex $P223, "$past"
    unless_null $P223, vivify_105
    new $P223, "Undef"
  vivify_105:
    $P224 = "isaPAST"($P223)
    if $P224, if_222
.annotate "line", 61
    .const 'Sub' $P231 = "32_1256745001.69732" 
    capture_lex $P231
    $P262 = $P231()
    set $P221, $P262
.annotate "line", 58
    goto if_222_end
  if_222:
    .const 'Sub' $P226 = "31_1256745001.69732" 
    capture_lex $P226
    $P229 = $P226()
    set $P221, $P229
  if_222_end:
.annotate "line", 57
    .return ($P221)
.end


.namespace ["HLL";"Actions"]
.sub "_block230"  :anon :subid("32_1256745001.69732") :outer("30_1256745001.69732")
.annotate "line", 61
    .const 'Sub' $P244 = "33_1256745001.69732" 
    capture_lex $P244
.annotate "line", 62
    get_hll_global $P232, ["HLL";"Grammar"], "split_words"
    find_lex $P233, "$/"
    unless_null $P233, vivify_106
    new $P233, "Undef"
  vivify_106:
    find_lex $P234, "$past"
    unless_null $P234, vivify_107
    new $P234, "Undef"
  vivify_107:
    $P235 = $P232($P233, $P234)
    .lex "@words", $P235
.annotate "line", 63
    find_lex $P238, "@words"
    unless_null $P238, vivify_108
    new $P238, "ResizablePMCArray"
  vivify_108:
    set $N239, $P238
    new $P240, "Integer"
    assign $P240, 1
    set $N241, $P240
    isgt $I242, $N239, $N241
    if $I242, if_237
    new $P236, 'Integer'
    set $P236, $I242
    goto if_237_end
  if_237:
    .const 'Sub' $P244 = "33_1256745001.69732" 
    capture_lex $P244
    $P261 = $P244()
    set $P236, $P261
  if_237_end:
.annotate "line", 61
    .return ($P236)
.end


.namespace ["HLL";"Actions"]
.sub "_block243"  :anon :subid("33_1256745001.69732") :outer("32_1256745001.69732")
.annotate "line", 63
    .const 'Sub' $P253 = "34_1256745001.69732" 
    capture_lex $P253
.annotate "line", 64
    get_hll_global $P245, ["PAST"], "Op"
    find_lex $P246, "$/"
    unless_null $P246, vivify_109
    new $P246, "Undef"
  vivify_109:
    $P247 = $P245."new"("list" :named("pasttype"), $P246 :named("node"))
    store_lex "$past", $P247
.annotate "line", 65
    find_lex $P249, "@words"
    unless_null $P249, vivify_110
    new $P249, "ResizablePMCArray"
  vivify_110:
    defined $I250, $P249
    unless $I250, for_undef_111
    iter $P248, $P249
    new $P259, 'ExceptionHandler'
    set_addr $P259, loop258_handler
    $P259."handle_types"(65, 67, 66)
    push_eh $P259
  loop258_test:
    unless $P248, loop258_done
    shift $P251, $P248
  loop258_redo:
    .const 'Sub' $P253 = "34_1256745001.69732" 
    capture_lex $P253
    $P253($P251)
  loop258_next:
    goto loop258_test
  loop258_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P260, exception, 'type'
    eq $P260, 65, loop258_next
    eq $P260, 67, loop258_redo
  loop258_done:
    pop_eh 
  for_undef_111:
.annotate "line", 63
    .return ($P248)
.end


.namespace ["HLL";"Actions"]
.sub "_block252"  :anon :subid("34_1256745001.69732") :outer("33_1256745001.69732")
    .param pmc param_254
.annotate "line", 65
    .lex "$_", param_254
    find_lex $P255, "$past"
    unless_null $P255, vivify_112
    new $P255, "Undef"
  vivify_112:
    find_lex $P256, "$_"
    unless_null $P256, vivify_113
    new $P256, "Undef"
  vivify_113:
    $P257 = $P255."push"($P256)
    .return ($P257)
.end


.namespace ["HLL";"Actions"]
.sub "_block225"  :anon :subid("31_1256745001.69732") :outer("30_1256745001.69732")
.annotate "line", 59
    find_lex $P227, "$/"
    unless_null $P227, vivify_114
    new $P227, "Undef"
  vivify_114:
    $P228 = $P227."panic"("Can't form :w list from non-constant strings (yet)")
.annotate "line", 58
    .return ($P228)
.end


.namespace ["HLL";"Actions"]
.sub "_block267"  :anon :subid("35_1256745001.69732") :outer("29_1256745001.69732")
.annotate "line", 70
    get_hll_global $P269, ["PAST"], "Val"
    find_lex $P270, "$past"
    unless_null $P270, vivify_116
    new $P270, "Undef"
  vivify_116:
    set $S271, $P270
    $P272 = $P269."new"($S271 :named("value"))
    store_lex "$past", $P272
.annotate "line", 69
    .return ($P272)
.end


.namespace ["HLL";"Actions"]
.sub "quote_delimited"  :subid("36_1256745001.69732") :method :outer("11_1256745001.69732")
    .param pmc param_280
.annotate "line", 75
    .const 'Sub' $P351 = "43_1256745001.69732" 
    capture_lex $P351
    .const 'Sub' $P339 = "42_1256745001.69732" 
    capture_lex $P339
    .const 'Sub' $P289 = "37_1256745001.69732" 
    capture_lex $P289
    new $P279, 'ExceptionHandler'
    set_addr $P279, control_278
    $P279."handle_types"(58)
    push_eh $P279
    .lex "self", self
    .lex "$/", param_280
.annotate "line", 76
    new $P281, "ResizablePMCArray"
    .lex "@parts", $P281
.annotate "line", 77
    new $P282, "String"
    assign $P282, ""
    .lex "$lastlit", $P282
.annotate "line", 78
    find_lex $P284, "$/"
    set $P285, $P284["quote_atom"]
    unless_null $P285, vivify_118
    new $P285, "Undef"
  vivify_118:
    defined $I286, $P285
    unless $I286, for_undef_119
    iter $P283, $P285
    new $P332, 'ExceptionHandler'
    set_addr $P332, loop331_handler
    $P332."handle_types"(65, 67, 66)
    push_eh $P332
  loop331_test:
    unless $P283, loop331_done
    shift $P287, $P283
  loop331_redo:
    .const 'Sub' $P289 = "37_1256745001.69732" 
    capture_lex $P289
    $P289($P287)
  loop331_next:
    goto loop331_test
  loop331_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P333, exception, 'type'
    eq $P333, 65, loop331_next
    eq $P333, 67, loop331_redo
  loop331_done:
    pop_eh 
  for_undef_119:
.annotate "line", 92
    find_lex $P335, "$lastlit"
    unless_null $P335, vivify_132
    new $P335, "Undef"
  vivify_132:
    set $S336, $P335
    isgt $I337, $S336, ""
    unless $I337, if_334_end
    .const 'Sub' $P339 = "42_1256745001.69732" 
    capture_lex $P339
    $P339()
  if_334_end:
.annotate "line", 93
    find_lex $P345, "@parts"
    unless_null $P345, vivify_135
    new $P345, "ResizablePMCArray"
  vivify_135:
    if $P345, if_344
    new $P348, "String"
    assign $P348, ""
    set $P343, $P348
    goto if_344_end
  if_344:
    find_lex $P346, "@parts"
    unless_null $P346, vivify_136
    new $P346, "ResizablePMCArray"
  vivify_136:
    $P347 = $P346."shift"()
    set $P343, $P347
  if_344_end:
    .lex "$past", $P343
.annotate "line", 94
    new $P358, 'ExceptionHandler'
    set_addr $P358, loop357_handler
    $P358."handle_types"(65, 67, 66)
    push_eh $P358
  loop357_test:
    find_lex $P349, "@parts"
    unless_null $P349, vivify_137
    new $P349, "ResizablePMCArray"
  vivify_137:
    unless $P349, loop357_done
  loop357_redo:
    .const 'Sub' $P351 = "43_1256745001.69732" 
    capture_lex $P351
    $P351()
  loop357_next:
    goto loop357_test
  loop357_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P359, exception, 'type'
    eq $P359, 65, loop357_next
    eq $P359, 67, loop357_redo
  loop357_done:
    pop_eh 
    find_lex $P360, "$/"
.annotate "line", 97
    find_lex $P361, "$past"
    unless_null $P361, vivify_140
    new $P361, "Undef"
  vivify_140:
    $P362 = $P360."!make"($P361)
.annotate "line", 75
    .return ($P362)
  control_278:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P363, exception, "payload"
    .return ($P363)
    rethrow exception
.end


.namespace ["HLL";"Actions"]
.sub "_block288"  :anon :subid("37_1256745001.69732") :outer("36_1256745001.69732")
    .param pmc param_290
.annotate "line", 78
    .const 'Sub' $P317 = "40_1256745001.69732" 
    capture_lex $P317
    .const 'Sub' $P310 = "39_1256745001.69732" 
    capture_lex $P310
    .const 'Sub' $P299 = "38_1256745001.69732" 
    capture_lex $P299
    .lex "$_", param_290
.annotate "line", 79
    find_lex $P291, "$_"
    unless_null $P291, vivify_120
    new $P291, "Undef"
  vivify_120:
    $P292 = $P291."ast"()
    .lex "$ast", $P292
.annotate "line", 80
    find_lex $P295, "$ast"
    unless_null $P295, vivify_121
    new $P295, "Undef"
  vivify_121:
    $P296 = "isaPAST"($P295)
    isfalse $I297, $P296
    if $I297, if_294
.annotate "line", 83
    find_lex $P306, "$ast"
    unless_null $P306, vivify_122
    new $P306, "Undef"
  vivify_122:
    get_hll_global $P307, ["PAST"], "Val"
    $P308 = $P306."isa"($P307)
    if $P308, if_305
.annotate "line", 86
    .const 'Sub' $P317 = "40_1256745001.69732" 
    capture_lex $P317
    $P330 = $P317()
    set $P304, $P330
.annotate "line", 83
    goto if_305_end
  if_305:
    .const 'Sub' $P310 = "39_1256745001.69732" 
    capture_lex $P310
    $P315 = $P310()
    set $P304, $P315
  if_305_end:
.annotate "line", 80
    set $P293, $P304
    goto if_294_end
  if_294:
    .const 'Sub' $P299 = "38_1256745001.69732" 
    capture_lex $P299
    $P303 = $P299()
    set $P293, $P303
  if_294_end:
.annotate "line", 78
    .return ($P293)
.end


.namespace ["HLL";"Actions"]
.sub "_block316"  :anon :subid("40_1256745001.69732") :outer("37_1256745001.69732")
.annotate "line", 86
    .const 'Sub' $P323 = "41_1256745001.69732" 
    capture_lex $P323
.annotate "line", 87
    find_lex $P319, "$lastlit"
    unless_null $P319, vivify_123
    new $P319, "Undef"
  vivify_123:
    set $S320, $P319
    isgt $I321, $S320, ""
    unless $I321, if_318_end
    .const 'Sub' $P323 = "41_1256745001.69732" 
    capture_lex $P323
    $P323()
  if_318_end:
.annotate "line", 88
    find_lex $P327, "@parts"
    unless_null $P327, vivify_126
    new $P327, "ResizablePMCArray"
  vivify_126:
    find_lex $P328, "$ast"
    unless_null $P328, vivify_127
    new $P328, "Undef"
  vivify_127:
    $P327."push"($P328)
.annotate "line", 89
    new $P329, "String"
    assign $P329, ""
    store_lex "$lastlit", $P329
.annotate "line", 86
    .return ($P329)
.end


.namespace ["HLL";"Actions"]
.sub "_block322"  :anon :subid("41_1256745001.69732") :outer("40_1256745001.69732")
.annotate "line", 87
    find_lex $P324, "@parts"
    unless_null $P324, vivify_124
    new $P324, "ResizablePMCArray"
  vivify_124:
    find_lex $P325, "$lastlit"
    unless_null $P325, vivify_125
    new $P325, "Undef"
  vivify_125:
    $P326 = $P324."push"($P325)
    .return ($P326)
.end


.namespace ["HLL";"Actions"]
.sub "_block309"  :anon :subid("39_1256745001.69732") :outer("37_1256745001.69732")
.annotate "line", 84
    find_lex $P311, "$lastlit"
    unless_null $P311, vivify_128
    new $P311, "Undef"
  vivify_128:
    find_lex $P312, "$ast"
    unless_null $P312, vivify_129
    new $P312, "Undef"
  vivify_129:
    $S313 = $P312."value"()
    concat $P314, $P311, $S313
    store_lex "$lastlit", $P314
.annotate "line", 83
    .return ($P314)
.end


.namespace ["HLL";"Actions"]
.sub "_block298"  :anon :subid("38_1256745001.69732") :outer("37_1256745001.69732")
.annotate "line", 81
    find_lex $P300, "$lastlit"
    unless_null $P300, vivify_130
    new $P300, "Undef"
  vivify_130:
    find_lex $P301, "$ast"
    unless_null $P301, vivify_131
    new $P301, "Undef"
  vivify_131:
    concat $P302, $P300, $P301
    store_lex "$lastlit", $P302
.annotate "line", 80
    .return ($P302)
.end


.namespace ["HLL";"Actions"]
.sub "_block338"  :anon :subid("42_1256745001.69732") :outer("36_1256745001.69732")
.annotate "line", 92
    find_lex $P340, "@parts"
    unless_null $P340, vivify_133
    new $P340, "ResizablePMCArray"
  vivify_133:
    find_lex $P341, "$lastlit"
    unless_null $P341, vivify_134
    new $P341, "Undef"
  vivify_134:
    $P342 = $P340."push"($P341)
    .return ($P342)
.end


.namespace ["HLL";"Actions"]
.sub "_block350"  :anon :subid("43_1256745001.69732") :outer("36_1256745001.69732")
.annotate "line", 95
    get_hll_global $P352, ["PAST"], "Op"
    find_lex $P353, "$past"
    unless_null $P353, vivify_138
    new $P353, "Undef"
  vivify_138:
    find_lex $P354, "@parts"
    unless_null $P354, vivify_139
    new $P354, "ResizablePMCArray"
  vivify_139:
    $P355 = $P354."shift"()
    $P356 = $P352."new"($P353, $P355, "concat" :named("pirop"))
    store_lex "$past", $P356
.annotate "line", 94
    .return ($P356)
.end


.namespace ["HLL";"Actions"]
.sub "quote_atom"  :subid("44_1256745001.69732") :method :outer("11_1256745001.69732")
    .param pmc param_367
.annotate "line", 100
    new $P366, 'ExceptionHandler'
    set_addr $P366, control_365
    $P366."handle_types"(58)
    push_eh $P366
    .lex "self", self
    .lex "$/", param_367
.annotate "line", 101
    find_lex $P368, "$/"
    find_lex $P371, "$/"
    set $P372, $P371["escape"]
    unless_null $P372, vivify_141
    new $P372, "Undef"
  vivify_141:
    if $P372, if_370
    find_lex $P376, "$/"
    unless_null $P376, vivify_142
    new $P376, "Undef"
  vivify_142:
    set $S377, $P376
    new $P369, 'String'
    set $P369, $S377
    goto if_370_end
  if_370:
    find_lex $P373, "$/"
    set $P374, $P373["escape"]
    unless_null $P374, vivify_143
    new $P374, "Undef"
  vivify_143:
    $P375 = $P374."ast"()
    set $P369, $P375
  if_370_end:
    $P378 = $P368."!make"($P369)
.annotate "line", 100
    .return ($P378)
  control_365:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P379, exception, "payload"
    .return ($P379)
    rethrow exception
.end


.namespace ["HLL";"Actions"]
.sub "escape:sym<backslash>"  :subid("45_1256745001.69732") :method :outer("11_1256745001.69732")
    .param pmc param_383
.annotate "line", 104
    new $P382, 'ExceptionHandler'
    set_addr $P382, control_381
    $P382."handle_types"(58)
    push_eh $P382
    .lex "self", self
    .lex "$/", param_383
    find_lex $P384, "$/"
    $P385 = $P384."!make"("\\")
    .return ($P385)
  control_381:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P386, exception, "payload"
    .return ($P386)
    rethrow exception
.end


.namespace ["HLL";"Actions"]
.sub "escape:sym<stopper>"  :subid("46_1256745001.69732") :method :outer("11_1256745001.69732")
    .param pmc param_390
.annotate "line", 105
    new $P389, 'ExceptionHandler'
    set_addr $P389, control_388
    $P389."handle_types"(58)
    push_eh $P389
    .lex "self", self
    .lex "$/", param_390
    find_lex $P391, "$/"
    find_lex $P392, "$/"
    set $P393, $P392["stopper"]
    unless_null $P393, vivify_144
    new $P393, "Undef"
  vivify_144:
    set $S394, $P393
    $P395 = $P391."!make"($S394)
    .return ($P395)
  control_388:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P396, exception, "payload"
    .return ($P396)
    rethrow exception
.end


.namespace ["HLL";"Actions"]
.sub "escape:sym<bs>"  :subid("47_1256745001.69732") :method :outer("11_1256745001.69732")
    .param pmc param_400
.annotate "line", 107
    new $P399, 'ExceptionHandler'
    set_addr $P399, control_398
    $P399."handle_types"(58)
    push_eh $P399
    .lex "self", self
    .lex "$/", param_400
    find_lex $P401, "$/"
    $P402 = $P401."!make"("\b")
    .return ($P402)
  control_398:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P403, exception, "payload"
    .return ($P403)
    rethrow exception
.end


.namespace ["HLL";"Actions"]
.sub "escape:sym<nl>"  :subid("48_1256745001.69732") :method :outer("11_1256745001.69732")
    .param pmc param_407
.annotate "line", 108
    new $P406, 'ExceptionHandler'
    set_addr $P406, control_405
    $P406."handle_types"(58)
    push_eh $P406
    .lex "self", self
    .lex "$/", param_407
    find_lex $P408, "$/"
    $P409 = $P408."!make"("\n")
    .return ($P409)
  control_405:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P410, exception, "payload"
    .return ($P410)
    rethrow exception
.end


.namespace ["HLL";"Actions"]
.sub "escape:sym<cr>"  :subid("49_1256745001.69732") :method :outer("11_1256745001.69732")
    .param pmc param_414
.annotate "line", 109
    new $P413, 'ExceptionHandler'
    set_addr $P413, control_412
    $P413."handle_types"(58)
    push_eh $P413
    .lex "self", self
    .lex "$/", param_414
    find_lex $P415, "$/"
    $P416 = $P415."!make"("\r")
    .return ($P416)
  control_412:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P417, exception, "payload"
    .return ($P417)
    rethrow exception
.end


.namespace ["HLL";"Actions"]
.sub "escape:sym<tab>"  :subid("50_1256745001.69732") :method :outer("11_1256745001.69732")
    .param pmc param_421
.annotate "line", 110
    new $P420, 'ExceptionHandler'
    set_addr $P420, control_419
    $P420."handle_types"(58)
    push_eh $P420
    .lex "self", self
    .lex "$/", param_421
    find_lex $P422, "$/"
    $P423 = $P422."!make"("\t")
    .return ($P423)
  control_419:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P424, exception, "payload"
    .return ($P424)
    rethrow exception
.end


.namespace ["HLL";"Actions"]
.sub "escape:sym<hex>"  :subid("51_1256745001.69732") :method :outer("11_1256745001.69732")
    .param pmc param_428
.annotate "line", 112
    new $P427, 'ExceptionHandler'
    set_addr $P427, control_426
    $P427."handle_types"(58)
    push_eh $P427
    .lex "self", self
    .lex "$/", param_428
.annotate "line", 113
    find_lex $P429, "$/"
    find_lex $P432, "$/"
    set $P433, $P432["hexint"]
    unless_null $P433, vivify_145
    new $P433, "Undef"
  vivify_145:
    if $P433, if_431
    find_lex $P436, "$/"
    set $P437, $P436["hexints"]
    unless_null $P437, vivify_146
    new $P437, "Hash"
  vivify_146:
    set $P438, $P437["hexint"]
    unless_null $P438, vivify_147
    new $P438, "Undef"
  vivify_147:
    set $P430, $P438
    goto if_431_end
  if_431:
    find_lex $P434, "$/"
    set $P435, $P434["hexint"]
    unless_null $P435, vivify_148
    new $P435, "Undef"
  vivify_148:
    set $P430, $P435
  if_431_end:
    $P439 = "ints_to_string"($P430)
    $P440 = $P429."!make"($P439)
.annotate "line", 112
    .return ($P440)
  control_426:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P441, exception, "payload"
    .return ($P441)
    rethrow exception
.end


.namespace ["HLL";"Actions"]
.sub "escape:sym<oct>"  :subid("52_1256745001.69732") :method :outer("11_1256745001.69732")
    .param pmc param_445
.annotate "line", 116
    new $P444, 'ExceptionHandler'
    set_addr $P444, control_443
    $P444."handle_types"(58)
    push_eh $P444
    .lex "self", self
    .lex "$/", param_445
.annotate "line", 117
    find_lex $P446, "$/"
    find_lex $P449, "$/"
    set $P450, $P449["octint"]
    unless_null $P450, vivify_149
    new $P450, "Undef"
  vivify_149:
    if $P450, if_448
    find_lex $P453, "$/"
    set $P454, $P453["octints"]
    unless_null $P454, vivify_150
    new $P454, "Hash"
  vivify_150:
    set $P455, $P454["octint"]
    unless_null $P455, vivify_151
    new $P455, "Undef"
  vivify_151:
    set $P447, $P455
    goto if_448_end
  if_448:
    find_lex $P451, "$/"
    set $P452, $P451["octint"]
    unless_null $P452, vivify_152
    new $P452, "Undef"
  vivify_152:
    set $P447, $P452
  if_448_end:
    $P456 = "ints_to_string"($P447)
    $P457 = $P446."!make"($P456)
.annotate "line", 116
    .return ($P457)
  control_443:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P458, exception, "payload"
    .return ($P458)
    rethrow exception
.end


.namespace ["HLL";"Actions"]
.sub "string_to_int"  :subid("53_1256745001.69732") :outer("11_1256745001.69732")
    .param pmc param_462
    .param pmc param_463
.annotate "line", 120
    new $P461, 'ExceptionHandler'
    set_addr $P461, control_460
    $P461."handle_types"(58)
    push_eh $P461
    .lex "$src", param_462
    .lex "$base", param_463
.annotate "line", 121

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
        $P464 = box result
    
.annotate "line", 120
    .return ($P464)
  control_460:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P465, exception, "payload"
    .return ($P465)
    rethrow exception
.end


.namespace ["HLL";"Actions"]
.sub "ints_to_string"  :subid("54_1256745001.69732") :outer("11_1256745001.69732")
    .param pmc param_469
.annotate "line", 154
    new $P468, 'ExceptionHandler'
    set_addr $P468, control_467
    $P468."handle_types"(58)
    push_eh $P468
    .lex "$ints", param_469
.annotate "line", 155

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
        $P470 = box result
    
.annotate "line", 154
    .return ($P470)
  control_467:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P471, exception, "payload"
    .return ($P471)
    rethrow exception
.end


.namespace ["HLL";"Actions"]
.sub "isaPAST"  :subid("55_1256745001.69732") :outer("11_1256745001.69732")
    .param pmc param_475
.annotate "line", 178
    new $P474, 'ExceptionHandler'
    set_addr $P474, control_473
    $P474."handle_types"(58)
    push_eh $P474
    .lex "$x", param_475
.annotate "line", 179

        $P0 = find_lex '$x'
        $I0 = isa $P0, ['PAST';'Node']
        $P476 = box $I0
    
.annotate "line", 178
    .return ($P476)
  control_473:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P477, exception, "payload"
    .return ($P477)
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

