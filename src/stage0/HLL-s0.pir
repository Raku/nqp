# $Id$

=head1 NAME

HLL - Parrot HLL library

=head1 DESCRIPTION

This file brings together the various modules needed for HLL::Compiler
and HLL::Grammar.

=over 4

=cut

.sub '' :anon :load :init
    load_bytecode 'Regex.pbc'
.end

.include 'cclass.pasm'
### .include 'src/Regex/constants.pir'
.const int CURSOR_FAIL = -1
.const int CURSOR_FAIL_GROUP = -2
.const int CURSOR_FAIL_RULE = -3
.const int CURSOR_FAIL_MATCH = -4

.const int CURSOR_TYPE_SCAN = 1
.const int CURSOR_TYPE_PEEK = 2
### .include 'src/cheats/hll-compiler.pir'
# This sub serves as a cumulative "outer context" for code
# executed in HLL::Compiler's interactive REPL.  It's invoked
# exactly once upon load/init to obtain a context, and its
# default LexPad is replaced with a Hash that we can use to
# cumulatively store outer context information.  Both the
# context and hash are then made available via package
# variables.
.namespace []
.sub '&interactive_outer' :lex :init :load
    .local pmc ctx, pad
    $P0 = getinterp
    ctx = $P0['context']
    set_global ['HLL';'Compiler'], '$interactive_ctx', ctx
    pad = getattribute ctx, 'lex_pad'
    $P1 = new ['Hash']
    copy pad, $P1
    set_global ['HLL';'Compiler'], '%interactive_pad', pad
.end
### .include 'src/cheats/parrot-callcontext.pir'
.namespace ['CallContext']
.sub 'lexpad_full' :method
    .local pmc ctx, lexall, lexpad, lexpad_it
    ctx = self
    lexall = root_new ['parrot';'Hash']

  context_loop:
    if null ctx goto context_done
    lexpad = getattribute ctx, 'lex_pad'
    if null lexpad goto lexpad_done
    lexpad_it = iter lexpad
  lexpad_loop:
    unless lexpad_it goto lexpad_done
    $S0 = shift lexpad_it
    $I0 = exists lexall[$S0]
    if $I0 goto lexpad_loop
    $P0 = lexpad[$S0]
    lexall[$S0] = $P0
    goto lexpad_loop
  lexpad_done:
    ctx = getattribute ctx, 'outer_ctx'
    goto context_loop
  context_done:
    .return (lexall)
.end

### .include 'gen/hllgrammar-grammar.pir'

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1295995577.546")
.annotate 'line', 0
    get_hll_global $P15, ["HLL";"Grammar"], "_block14" 
    capture_lex $P15
.annotate 'line', 1
    nqp_dynop_setup 
    get_hll_global $P13, ["HLL"], "Grammar"
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 3
    get_hll_global $P15, ["HLL";"Grammar"], "_block14" 
    capture_lex $P15
    $P671 = $P15()
.annotate 'line', 1
    .return ($P671)
    .const 'Sub' $P673 = "121_1295995577.546" 
    .return ($P673)
.end


.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace ["HLL";"Grammar"]
.sub "_block14"  :subid("11_1295995577.546") :outer("10_1295995577.546")
.annotate 'line', 3
    .const 'Sub' $P458 = "120_1295995577.546" 
    capture_lex $P458
    .const 'Sub' $P433 = "118_1295995577.546" 
    capture_lex $P433
    .const 'Sub' $P428 = "117_1295995577.546" 
    capture_lex $P428
    .const 'Sub' $P413 = "116_1295995577.546" 
    capture_lex $P413
    .const 'Sub' $P403 = "115_1295995577.546" 
    capture_lex $P403
    .const 'Sub' $P399 = "114_1295995577.546" 
    capture_lex $P399
    .const 'Sub' $P395 = "113_1295995577.546" 
    capture_lex $P395
    .const 'Sub' $P392 = "112_1295995577.546" 
    capture_lex $P392
    .const 'Sub' $P390 = "111_1295995577.546" 
    capture_lex $P390
    .const 'Sub' $P388 = "110_1295995577.546" 
    capture_lex $P388
    .const 'Sub' $P382 = "109_1295995577.546" 
    capture_lex $P382
    .const 'Sub' $P379 = "108_1295995577.546" 
    capture_lex $P379
    .const 'Sub' $P375 = "107_1295995577.546" 
    capture_lex $P375
    .const 'Sub' $P347 = "106_1295995577.546" 
    capture_lex $P347
    .const 'Sub' $P342 = "105_1295995577.546" 
    capture_lex $P342
    .const 'Sub' $P333 = "103_1295995577.546" 
    capture_lex $P333
    .const 'Sub' $P327 = "101_1295995577.546" 
    capture_lex $P327
    .const 'Sub' $P314 = "98_1295995577.546" 
    capture_lex $P314
    .const 'Sub' $P282 = "93_1295995577.546" 
    capture_lex $P282
    .const 'Sub' $P276 = "91_1295995577.546" 
    capture_lex $P276
    .const 'Sub' $P271 = "89_1295995577.546" 
    capture_lex $P271
    .const 'Sub' $P265 = "87_1295995577.546" 
    capture_lex $P265
    .const 'Sub' $P259 = "85_1295995577.546" 
    capture_lex $P259
    .const 'Sub' $P254 = "83_1295995577.546" 
    capture_lex $P254
    .const 'Sub' $P249 = "81_1295995577.546" 
    capture_lex $P249
    .const 'Sub' $P244 = "79_1295995577.546" 
    capture_lex $P244
    .const 'Sub' $P239 = "77_1295995577.546" 
    capture_lex $P239
    .const 'Sub' $P234 = "75_1295995577.546" 
    capture_lex $P234
    .const 'Sub' $P229 = "73_1295995577.546" 
    capture_lex $P229
    .const 'Sub' $P224 = "71_1295995577.546" 
    capture_lex $P224
    .const 'Sub' $P219 = "69_1295995577.546" 
    capture_lex $P219
    .const 'Sub' $P207 = "65_1295995577.546" 
    capture_lex $P207
    .const 'Sub' $P194 = "63_1295995577.546" 
    capture_lex $P194
    .const 'Sub' $P182 = "61_1295995577.546" 
    capture_lex $P182
    .const 'Sub' $P176 = "59_1295995577.546" 
    capture_lex $P176
    .const 'Sub' $P169 = "57_1295995577.546" 
    capture_lex $P169
    .const 'Sub' $P163 = "55_1295995577.546" 
    capture_lex $P163
    .const 'Sub' $P156 = "53_1295995577.546" 
    capture_lex $P156
    .const 'Sub' $P150 = "51_1295995577.546" 
    capture_lex $P150
    .const 'Sub' $P143 = "49_1295995577.546" 
    capture_lex $P143
    .const 'Sub' $P137 = "47_1295995577.546" 
    capture_lex $P137
    .const 'Sub' $P131 = "45_1295995577.546" 
    capture_lex $P131
    .const 'Sub' $P122 = "43_1295995577.546" 
    capture_lex $P122
    .const 'Sub' $P114 = "41_1295995577.546" 
    capture_lex $P114
    .const 'Sub' $P106 = "40_1295995577.546" 
    capture_lex $P106
    .const 'Sub' $P100 = "38_1295995577.546" 
    capture_lex $P100
    .const 'Sub' $P95 = "36_1295995577.546" 
    capture_lex $P95
    .const 'Sub' $P87 = "34_1295995577.546" 
    capture_lex $P87
    .const 'Sub' $P81 = "32_1295995577.546" 
    capture_lex $P81
    .const 'Sub' $P75 = "30_1295995577.546" 
    capture_lex $P75
    .const 'Sub' $P69 = "28_1295995577.546" 
    capture_lex $P69
    .const 'Sub' $P24 = "14_1295995577.546" 
    capture_lex $P24
    .const 'Sub' $P17 = "12_1295995577.546" 
    capture_lex $P17
    get_global $P16, "$?CLASS"
    nqp_dynop_setup 
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 831
    .const 'Sub' $P433 = "118_1295995577.546" 
    newclosure $P452, $P433
.annotate 'line', 3
    .return ($P452)
    .const 'Sub' $P454 = "119_1295995577.546" 
    .return ($P454)
.end


.namespace ["HLL";"Grammar"]
.sub "" :load :init :subid("post122") :outer("11_1295995577.546")
.annotate 'line', 3
    get_hll_global $P15, ["HLL";"Grammar"], "_block14" 
    .local pmc block
    set block, $P15
    .const 'Sub' $P458 = "120_1295995577.546" 
    capture_lex $P458
    $P458()
.end


.namespace ["HLL";"Grammar"]
.sub "_block457"  :anon :subid("120_1295995577.546") :outer("11_1295995577.546")
.annotate 'line', 3
    get_hll_global $P459, "NQPClassHOW"
    $P460 = $P459."new_type"("Grammar" :named("name"))
    .local pmc type_obj
    set type_obj, $P460
    set_hll_global ["HLL"], "Grammar", type_obj
    set_global "$?CLASS", type_obj
    get_how $P461, type_obj
    .const 'Sub' $P462 = "12_1295995577.546" 
    $P461."add_method"(type_obj, "ws", $P462)
    get_how $P463, type_obj
    get_global $P464, "!PREFIX__ws"
    $P463."add_method"(type_obj, "!PREFIX__ws", $P464)
    get_how $P465, type_obj
    .const 'Sub' $P466 = "14_1295995577.546" 
    $P465."add_method"(type_obj, "termish", $P466)
    get_how $P467, type_obj
    get_global $P468, "!PREFIX__termish"
    $P467."add_method"(type_obj, "!PREFIX__termish", $P468)
    get_how $P469, type_obj
    .const 'Sub' $P470 = "16_1295995577.546" 
    $P469."add_method"(type_obj, "term", $P470)
    get_how $P471, type_obj
    .const 'Sub' $P472 = "17_1295995577.546" 
    $P471."add_method"(type_obj, "!PREFIX__term", $P472)
    get_how $P473, type_obj
    .const 'Sub' $P474 = "18_1295995577.546" 
    $P473."add_method"(type_obj, "infix", $P474)
    get_how $P475, type_obj
    .const 'Sub' $P476 = "19_1295995577.546" 
    $P475."add_method"(type_obj, "!PREFIX__infix", $P476)
    get_how $P477, type_obj
    .const 'Sub' $P478 = "20_1295995577.546" 
    $P477."add_method"(type_obj, "prefix", $P478)
    get_how $P479, type_obj
    .const 'Sub' $P480 = "21_1295995577.546" 
    $P479."add_method"(type_obj, "!PREFIX__prefix", $P480)
    get_how $P481, type_obj
    .const 'Sub' $P482 = "22_1295995577.546" 
    $P481."add_method"(type_obj, "postfix", $P482)
    get_how $P483, type_obj
    .const 'Sub' $P484 = "23_1295995577.546" 
    $P483."add_method"(type_obj, "!PREFIX__postfix", $P484)
    get_how $P485, type_obj
    .const 'Sub' $P486 = "24_1295995577.546" 
    $P485."add_method"(type_obj, "circumfix", $P486)
    get_how $P487, type_obj
    .const 'Sub' $P488 = "25_1295995577.546" 
    $P487."add_method"(type_obj, "!PREFIX__circumfix", $P488)
    get_how $P489, type_obj
    .const 'Sub' $P490 = "26_1295995577.546" 
    $P489."add_method"(type_obj, "postcircumfix", $P490)
    get_how $P491, type_obj
    .const 'Sub' $P492 = "27_1295995577.546" 
    $P491."add_method"(type_obj, "!PREFIX__postcircumfix", $P492)
    get_how $P493, type_obj
    .const 'Sub' $P494 = "28_1295995577.546" 
    $P493."add_method"(type_obj, "term:sym<circumfix>", $P494)
    get_how $P495, type_obj
    get_global $P496, "!PREFIX__term:sym<circumfix>"
    $P495."add_method"(type_obj, "!PREFIX__term:sym<circumfix>", $P496)
    get_how $P497, type_obj
    .const 'Sub' $P498 = "30_1295995577.546" 
    $P497."add_method"(type_obj, "infixish", $P498)
    get_how $P499, type_obj
    get_global $P500, "!PREFIX__infixish"
    $P499."add_method"(type_obj, "!PREFIX__infixish", $P500)
    get_how $P501, type_obj
    .const 'Sub' $P502 = "32_1295995577.546" 
    $P501."add_method"(type_obj, "prefixish", $P502)
    get_how $P503, type_obj
    get_global $P504, "!PREFIX__prefixish"
    $P503."add_method"(type_obj, "!PREFIX__prefixish", $P504)
    get_how $P505, type_obj
    .const 'Sub' $P506 = "34_1295995577.546" 
    $P505."add_method"(type_obj, "postfixish", $P506)
    get_how $P507, type_obj
    get_global $P508, "!PREFIX__postfixish"
    $P507."add_method"(type_obj, "!PREFIX__postfixish", $P508)
    get_how $P509, type_obj
    .const 'Sub' $P510 = "36_1295995577.546" 
    $P509."add_method"(type_obj, "nullterm", $P510)
    get_how $P511, type_obj
    get_global $P512, "!PREFIX__nullterm"
    $P511."add_method"(type_obj, "!PREFIX__nullterm", $P512)
    get_how $P513, type_obj
    .const 'Sub' $P514 = "38_1295995577.546" 
    $P513."add_method"(type_obj, "nullterm_alt", $P514)
    get_how $P515, type_obj
    get_global $P516, "!PREFIX__nullterm_alt"
    $P515."add_method"(type_obj, "!PREFIX__nullterm_alt", $P516)
    get_how $P517, type_obj
    .const 'Sub' $P518 = "40_1295995577.546" 
    $P517."add_method"(type_obj, "nulltermish", $P518)
    get_how $P519, type_obj
    .const 'Sub' $P520 = "41_1295995577.546" 
    $P519."add_method"(type_obj, "quote_delimited", $P520)
    get_how $P521, type_obj
    get_global $P522, "!PREFIX__quote_delimited"
    $P521."add_method"(type_obj, "!PREFIX__quote_delimited", $P522)
    get_how $P523, type_obj
    .const 'Sub' $P524 = "43_1295995577.546" 
    $P523."add_method"(type_obj, "quote_atom", $P524)
    get_how $P525, type_obj
    get_global $P526, "!PREFIX__quote_atom"
    $P525."add_method"(type_obj, "!PREFIX__quote_atom", $P526)
    get_how $P527, type_obj
    .const 'Sub' $P528 = "45_1295995577.546" 
    $P527."add_method"(type_obj, "decint", $P528)
    get_how $P529, type_obj
    get_global $P530, "!PREFIX__decint"
    $P529."add_method"(type_obj, "!PREFIX__decint", $P530)
    get_how $P531, type_obj
    .const 'Sub' $P532 = "47_1295995577.546" 
    $P531."add_method"(type_obj, "decints", $P532)
    get_how $P533, type_obj
    get_global $P534, "!PREFIX__decints"
    $P533."add_method"(type_obj, "!PREFIX__decints", $P534)
    get_how $P535, type_obj
    .const 'Sub' $P536 = "49_1295995577.546" 
    $P535."add_method"(type_obj, "hexint", $P536)
    get_how $P537, type_obj
    get_global $P538, "!PREFIX__hexint"
    $P537."add_method"(type_obj, "!PREFIX__hexint", $P538)
    get_how $P539, type_obj
    .const 'Sub' $P540 = "51_1295995577.546" 
    $P539."add_method"(type_obj, "hexints", $P540)
    get_how $P541, type_obj
    get_global $P542, "!PREFIX__hexints"
    $P541."add_method"(type_obj, "!PREFIX__hexints", $P542)
    get_how $P543, type_obj
    .const 'Sub' $P544 = "53_1295995577.546" 
    $P543."add_method"(type_obj, "octint", $P544)
    get_how $P545, type_obj
    get_global $P546, "!PREFIX__octint"
    $P545."add_method"(type_obj, "!PREFIX__octint", $P546)
    get_how $P547, type_obj
    .const 'Sub' $P548 = "55_1295995577.546" 
    $P547."add_method"(type_obj, "octints", $P548)
    get_how $P549, type_obj
    get_global $P550, "!PREFIX__octints"
    $P549."add_method"(type_obj, "!PREFIX__octints", $P550)
    get_how $P551, type_obj
    .const 'Sub' $P552 = "57_1295995577.546" 
    $P551."add_method"(type_obj, "binint", $P552)
    get_how $P553, type_obj
    get_global $P554, "!PREFIX__binint"
    $P553."add_method"(type_obj, "!PREFIX__binint", $P554)
    get_how $P555, type_obj
    .const 'Sub' $P556 = "59_1295995577.546" 
    $P555."add_method"(type_obj, "binints", $P556)
    get_how $P557, type_obj
    get_global $P558, "!PREFIX__binints"
    $P557."add_method"(type_obj, "!PREFIX__binints", $P558)
    get_how $P559, type_obj
    .const 'Sub' $P560 = "61_1295995577.546" 
    $P559."add_method"(type_obj, "integer", $P560)
    get_how $P561, type_obj
    get_global $P562, "!PREFIX__integer"
    $P561."add_method"(type_obj, "!PREFIX__integer", $P562)
    get_how $P563, type_obj
    .const 'Sub' $P564 = "63_1295995577.546" 
    $P563."add_method"(type_obj, "dec_number", $P564)
    get_how $P565, type_obj
    get_global $P566, "!PREFIX__dec_number"
    $P565."add_method"(type_obj, "!PREFIX__dec_number", $P566)
    get_how $P567, type_obj
    .const 'Sub' $P568 = "65_1295995577.546" 
    $P567."add_method"(type_obj, "escale", $P568)
    get_how $P569, type_obj
    get_global $P570, "!PREFIX__escale"
    $P569."add_method"(type_obj, "!PREFIX__escale", $P570)
    get_how $P571, type_obj
    .const 'Sub' $P572 = "67_1295995577.546" 
    $P571."add_method"(type_obj, "quote_escape", $P572)
    get_how $P573, type_obj
    .const 'Sub' $P574 = "68_1295995577.546" 
    $P573."add_method"(type_obj, "!PREFIX__quote_escape", $P574)
    get_how $P575, type_obj
    .const 'Sub' $P576 = "69_1295995577.546" 
    $P575."add_method"(type_obj, "quote_escape:sym<backslash>", $P576)
    get_how $P577, type_obj
    get_global $P578, "!PREFIX__quote_escape:sym<backslash>"
    $P577."add_method"(type_obj, "!PREFIX__quote_escape:sym<backslash>", $P578)
    get_how $P579, type_obj
    .const 'Sub' $P580 = "71_1295995577.546" 
    $P579."add_method"(type_obj, "quote_escape:sym<stopper>", $P580)
    get_how $P581, type_obj
    get_global $P582, "!PREFIX__quote_escape:sym<stopper>"
    $P581."add_method"(type_obj, "!PREFIX__quote_escape:sym<stopper>", $P582)
    get_how $P583, type_obj
    .const 'Sub' $P584 = "73_1295995577.546" 
    $P583."add_method"(type_obj, "quote_escape:sym<bs>", $P584)
    get_how $P585, type_obj
    get_global $P586, "!PREFIX__quote_escape:sym<bs>"
    $P585."add_method"(type_obj, "!PREFIX__quote_escape:sym<bs>", $P586)
    get_how $P587, type_obj
    .const 'Sub' $P588 = "75_1295995577.546" 
    $P587."add_method"(type_obj, "quote_escape:sym<nl>", $P588)
    get_how $P589, type_obj
    get_global $P590, "!PREFIX__quote_escape:sym<nl>"
    $P589."add_method"(type_obj, "!PREFIX__quote_escape:sym<nl>", $P590)
    get_how $P591, type_obj
    .const 'Sub' $P592 = "77_1295995577.546" 
    $P591."add_method"(type_obj, "quote_escape:sym<cr>", $P592)
    get_how $P593, type_obj
    get_global $P594, "!PREFIX__quote_escape:sym<cr>"
    $P593."add_method"(type_obj, "!PREFIX__quote_escape:sym<cr>", $P594)
    get_how $P595, type_obj
    .const 'Sub' $P596 = "79_1295995577.546" 
    $P595."add_method"(type_obj, "quote_escape:sym<tab>", $P596)
    get_how $P597, type_obj
    get_global $P598, "!PREFIX__quote_escape:sym<tab>"
    $P597."add_method"(type_obj, "!PREFIX__quote_escape:sym<tab>", $P598)
    get_how $P599, type_obj
    .const 'Sub' $P600 = "81_1295995577.546" 
    $P599."add_method"(type_obj, "quote_escape:sym<ff>", $P600)
    get_how $P601, type_obj
    get_global $P602, "!PREFIX__quote_escape:sym<ff>"
    $P601."add_method"(type_obj, "!PREFIX__quote_escape:sym<ff>", $P602)
    get_how $P603, type_obj
    .const 'Sub' $P604 = "83_1295995577.546" 
    $P603."add_method"(type_obj, "quote_escape:sym<esc>", $P604)
    get_how $P605, type_obj
    get_global $P606, "!PREFIX__quote_escape:sym<esc>"
    $P605."add_method"(type_obj, "!PREFIX__quote_escape:sym<esc>", $P606)
    get_how $P607, type_obj
    .const 'Sub' $P608 = "85_1295995577.546" 
    $P607."add_method"(type_obj, "quote_escape:sym<hex>", $P608)
    get_how $P609, type_obj
    get_global $P610, "!PREFIX__quote_escape:sym<hex>"
    $P609."add_method"(type_obj, "!PREFIX__quote_escape:sym<hex>", $P610)
    get_how $P611, type_obj
    .const 'Sub' $P612 = "87_1295995577.546" 
    $P611."add_method"(type_obj, "quote_escape:sym<oct>", $P612)
    get_how $P613, type_obj
    get_global $P614, "!PREFIX__quote_escape:sym<oct>"
    $P613."add_method"(type_obj, "!PREFIX__quote_escape:sym<oct>", $P614)
    get_how $P615, type_obj
    .const 'Sub' $P616 = "89_1295995577.546" 
    $P615."add_method"(type_obj, "quote_escape:sym<chr>", $P616)
    get_how $P617, type_obj
    get_global $P618, "!PREFIX__quote_escape:sym<chr>"
    $P617."add_method"(type_obj, "!PREFIX__quote_escape:sym<chr>", $P618)
    get_how $P619, type_obj
    .const 'Sub' $P620 = "91_1295995577.546" 
    $P619."add_method"(type_obj, "quote_escape:sym<0>", $P620)
    get_how $P621, type_obj
    get_global $P622, "!PREFIX__quote_escape:sym<0>"
    $P621."add_method"(type_obj, "!PREFIX__quote_escape:sym<0>", $P622)
    get_how $P623, type_obj
    .const 'Sub' $P624 = "93_1295995577.546" 
    $P623."add_method"(type_obj, "quote_escape:sym<misc>", $P624)
    get_how $P625, type_obj
    get_global $P626, "!PREFIX__quote_escape:sym<misc>"
    $P625."add_method"(type_obj, "!PREFIX__quote_escape:sym<misc>", $P626)
    get_how $P627, type_obj
    .const 'Sub' $P628 = "98_1295995577.546" 
    $P627."add_method"(type_obj, "charname", $P628)
    get_how $P629, type_obj
    get_global $P630, "!PREFIX__charname"
    $P629."add_method"(type_obj, "!PREFIX__charname", $P630)
    get_how $P631, type_obj
    .const 'Sub' $P632 = "101_1295995577.546" 
    $P631."add_method"(type_obj, "charnames", $P632)
    get_how $P633, type_obj
    get_global $P634, "!PREFIX__charnames"
    $P633."add_method"(type_obj, "!PREFIX__charnames", $P634)
    get_how $P635, type_obj
    .const 'Sub' $P636 = "103_1295995577.546" 
    $P635."add_method"(type_obj, "charspec", $P636)
    get_how $P637, type_obj
    get_global $P638, "!PREFIX__charspec"
    $P637."add_method"(type_obj, "!PREFIX__charspec", $P638)
    get_how $P639, type_obj
    .const 'Sub' $P640 = "105_1295995577.546" 
    $P639."add_method"(type_obj, "O", $P640)
    get_how $P641, type_obj
    .const 'Sub' $P642 = "106_1295995577.546" 
    $P641."add_method"(type_obj, "panic", $P642)
    get_how $P643, type_obj
    .const 'Sub' $P644 = "107_1295995577.546" 
    $P643."add_method"(type_obj, "peek_delimiters", $P644)
    get_how $P645, type_obj
    .const 'Sub' $P646 = "108_1295995577.546" 
    $P645."add_method"(type_obj, "quote_EXPR", $P646)
    get_how $P647, type_obj
    .const 'Sub' $P648 = "109_1295995577.546" 
    $P647."add_method"(type_obj, "quotemod_check", $P648)
    get_how $P649, type_obj
    .const 'Sub' $P650 = "110_1295995577.546" 
    $P649."add_method"(type_obj, "starter", $P650)
    get_how $P651, type_obj
    .const 'Sub' $P652 = "111_1295995577.546" 
    $P651."add_method"(type_obj, "stopper", $P652)
    get_how $P653, type_obj
    .const 'Sub' $P654 = "112_1295995577.546" 
    $P653."add_method"(type_obj, "split_words", $P654)
    get_how $P655, type_obj
    .const 'Sub' $P656 = "113_1295995577.546" 
    $P655."add_method"(type_obj, "EXPR", $P656)
    get_how $P657, type_obj
    .const 'Sub' $P658 = "114_1295995577.546" 
    $P657."add_method"(type_obj, "EXPR_reduce", $P658)
    get_how $P659, type_obj
    .const 'Sub' $P660 = "115_1295995577.546" 
    $P659."add_method"(type_obj, "ternary", $P660)
    get_how $P661, type_obj
    .const 'Sub' $P662 = "116_1295995577.546" 
    $P661."add_method"(type_obj, "MARKER", $P662)
    get_how $P663, type_obj
    .const 'Sub' $P664 = "117_1295995577.546" 
    $P663."add_method"(type_obj, "MARKED", $P664)
    get_how $P665, type_obj
    .const 'Sub' $P666 = "118_1295995577.546" 
    $P665."add_method"(type_obj, "LANG", $P666)
    get_how $P667, type_obj
    get_hll_global $P668, ["Regex"], "Cursor"
    $P667."add_parent"(type_obj, $P668)
    get_how $P669, type_obj
    $P670 = $P669."compose"(type_obj)
    .return ($P670)
.end


.namespace ["HLL";"Grammar"]
.sub "ws"  :subid("12_1295995577.546") :method :outer("11_1295995577.546")
.annotate 'line', 3
    .local string rx18_tgt
    .local int rx18_pos
    .local int rx18_off
    .local int rx18_eos
    .local int rx18_rep
    .local pmc rx18_cur
    .local pmc rx18_debug
    (rx18_cur, rx18_pos, rx18_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx18_cur
    .local pmc match
    .lex "$/", match
    length rx18_eos, rx18_tgt
    gt rx18_pos, rx18_eos, rx18_done
    set rx18_off, 0
    lt rx18_pos, 2, rx18_start
    sub rx18_off, rx18_pos, 1
    substr rx18_tgt, rx18_tgt, rx18_off
  rx18_start:
    eq $I10, 1, rx18_restart
    if_null rx18_debug, debug_123
    rx18_cur."!cursor_debug"("START", "ws")
  debug_123:
    $I10 = self.'from'()
    ne $I10, -1, rxscan21_done
    goto rxscan21_scan
  rxscan21_loop:
    ($P10) = rx18_cur."from"()
    inc $P10
    set rx18_pos, $P10
    ge rx18_pos, rx18_eos, rxscan21_done
  rxscan21_scan:
    set_addr $I10, rxscan21_loop
    rx18_cur."!mark_push"(0, rx18_pos, $I10)
  rxscan21_done:
  # rx subrule "ww" subtype=zerowidth negate=1
    rx18_cur."!cursor_pos"(rx18_pos)
    $P10 = rx18_cur."ww"()
    if $P10, rx18_fail
  # rx rxquantr22 ** 0..*
    set_addr $I10, rxquantr22_done
    rx18_cur."!mark_push"(0, rx18_pos, $I10)
  rxquantr22_loop:
  alt23_0:
    set_addr $I10, alt23_1
    rx18_cur."!mark_push"(0, rx18_pos, $I10)
  # rx charclass_q s r 1..-1
    sub $I10, rx18_pos, rx18_off
    find_not_cclass $I11, 32, rx18_tgt, $I10, rx18_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx18_fail
    add rx18_pos, rx18_off, $I11
    goto alt23_end
  alt23_1:
  # rx literal  "#"
    add $I11, rx18_pos, 1
    gt $I11, rx18_eos, rx18_fail
    sub $I11, rx18_pos, rx18_off
    ord $I11, rx18_tgt, $I11
    ne $I11, 35, rx18_fail
    add rx18_pos, 1
  # rx charclass_q N r 0..-1
    sub $I10, rx18_pos, rx18_off
    find_cclass $I11, 4096, rx18_tgt, $I10, rx18_eos
    add rx18_pos, rx18_off, $I11
  alt23_end:
    set_addr $I10, rxquantr22_done
    (rx18_rep) = rx18_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr22_done
    rx18_cur."!mark_push"(rx18_rep, rx18_pos, $I10)
    goto rxquantr22_loop
  rxquantr22_done:
  # rx pass
    rx18_cur."!cursor_pass"(rx18_pos, "ws")
    if_null rx18_debug, debug_124
    rx18_cur."!cursor_debug"("PASS", "ws", " at pos=", rx18_pos)
  debug_124:
    .return (rx18_cur)
  rx18_restart:
    if_null rx18_debug, debug_125
    rx18_cur."!cursor_debug"("NEXT", "ws")
  debug_125:
  rx18_fail:
    (rx18_rep, rx18_pos, $I10, $P10) = rx18_cur."!mark_fail"(0)
    lt rx18_pos, -1, rx18_done
    eq rx18_pos, -1, rx18_fail
    jump $I10
  rx18_done:
    rx18_cur."!cursor_fail"()
    if_null rx18_debug, debug_126
    rx18_cur."!cursor_debug"("FAIL", "ws")
  debug_126:
    .return (rx18_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__ws"  :nsentry("!PREFIX__ws") :subid("13_1295995577.546") :method
.annotate 'line', 3
    new $P20, "ResizablePMCArray"
    push $P20, ""
    .return ($P20)
.end


.namespace ["HLL";"Grammar"]
.sub "termish"  :subid("14_1295995577.546") :method :outer("11_1295995577.546")
.annotate 'line', 3
    .local string rx25_tgt
    .local int rx25_pos
    .local int rx25_off
    .local int rx25_eos
    .local int rx25_rep
    .local pmc rx25_cur
    .local pmc rx25_debug
    (rx25_cur, rx25_pos, rx25_tgt, $I10) = self."!cursor_start"()
    rx25_cur."!cursor_caparray"("prefixish", "postfixish")
    .lex unicode:"$\x{a2}", rx25_cur
    .local pmc match
    .lex "$/", match
    length rx25_eos, rx25_tgt
    gt rx25_pos, rx25_eos, rx25_done
    set rx25_off, 0
    lt rx25_pos, 2, rx25_start
    sub rx25_off, rx25_pos, 1
    substr rx25_tgt, rx25_tgt, rx25_off
  rx25_start:
    eq $I10, 1, rx25_restart
    if_null rx25_debug, debug_127
    rx25_cur."!cursor_debug"("START", "termish")
  debug_127:
    $I10 = self.'from'()
    ne $I10, -1, rxscan28_done
    goto rxscan28_scan
  rxscan28_loop:
    ($P10) = rx25_cur."from"()
    inc $P10
    set rx25_pos, $P10
    ge rx25_pos, rx25_eos, rxscan28_done
  rxscan28_scan:
    set_addr $I10, rxscan28_loop
    rx25_cur."!mark_push"(0, rx25_pos, $I10)
  rxscan28_done:
.annotate 'line', 6
  # rx rxquantr29 ** 0..*
    set_addr $I10, rxquantr29_done
    rx25_cur."!mark_push"(0, rx25_pos, $I10)
  rxquantr29_loop:
  # rx subrule "prefixish" subtype=capture negate=
    rx25_cur."!cursor_pos"(rx25_pos)
    $P10 = rx25_cur."prefixish"()
    unless $P10, rx25_fail
    goto rxsubrule30_pass
  rxsubrule30_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx25_fail
  rxsubrule30_pass:
    set_addr $I10, rxsubrule30_back
    rx25_cur."!mark_push"(0, rx25_pos, $I10, $P10)
    $P10."!cursor_names"("prefixish")
    rx25_pos = $P10."pos"()
    set_addr $I10, rxquantr29_done
    (rx25_rep) = rx25_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr29_done
    rx25_cur."!mark_push"(rx25_rep, rx25_pos, $I10)
    goto rxquantr29_loop
  rxquantr29_done:
.annotate 'line', 7
  # rx subrule "term" subtype=capture negate=
    rx25_cur."!cursor_pos"(rx25_pos)
    $P10 = rx25_cur."term"()
    unless $P10, rx25_fail
    rx25_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("term")
    rx25_pos = $P10."pos"()
.annotate 'line', 8
  # rx rxquantr31 ** 0..*
    set_addr $I10, rxquantr31_done
    rx25_cur."!mark_push"(0, rx25_pos, $I10)
  rxquantr31_loop:
  # rx subrule "postfixish" subtype=capture negate=
    rx25_cur."!cursor_pos"(rx25_pos)
    $P10 = rx25_cur."postfixish"()
    unless $P10, rx25_fail
    goto rxsubrule32_pass
  rxsubrule32_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx25_fail
  rxsubrule32_pass:
    set_addr $I10, rxsubrule32_back
    rx25_cur."!mark_push"(0, rx25_pos, $I10, $P10)
    $P10."!cursor_names"("postfixish")
    rx25_pos = $P10."pos"()
    set_addr $I10, rxquantr31_done
    (rx25_rep) = rx25_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr31_done
    rx25_cur."!mark_push"(rx25_rep, rx25_pos, $I10)
    goto rxquantr31_loop
  rxquantr31_done:
.annotate 'line', 5
  # rx pass
    rx25_cur."!cursor_pass"(rx25_pos, "termish")
    if_null rx25_debug, debug_128
    rx25_cur."!cursor_debug"("PASS", "termish", " at pos=", rx25_pos)
  debug_128:
    .return (rx25_cur)
  rx25_restart:
.annotate 'line', 3
    if_null rx25_debug, debug_129
    rx25_cur."!cursor_debug"("NEXT", "termish")
  debug_129:
  rx25_fail:
    (rx25_rep, rx25_pos, $I10, $P10) = rx25_cur."!mark_fail"(0)
    lt rx25_pos, -1, rx25_done
    eq rx25_pos, -1, rx25_fail
    jump $I10
  rx25_done:
    rx25_cur."!cursor_fail"()
    if_null rx25_debug, debug_130
    rx25_cur."!cursor_debug"("FAIL", "termish")
  debug_130:
    .return (rx25_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__termish"  :nsentry("!PREFIX__termish") :subid("15_1295995577.546") :method
.annotate 'line', 3
    new $P27, "ResizablePMCArray"
    push $P27, ""
    .return ($P27)
.end


.namespace ["HLL";"Grammar"]
.sub "term"  :subid("16_1295995577.546")
    .param pmc param_34
.annotate 'line', 11
    .lex "self", param_34
    $P35 = param_34."!protoregex"("term")
    .return ($P35)
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__term"  :subid("17_1295995577.546")
    .param pmc param_37
.annotate 'line', 11
    .lex "self", param_37
    $P38 = param_37."!PREFIX__!protoregex"("term")
    .return ($P38)
.end


.namespace ["HLL";"Grammar"]
.sub "infix"  :subid("18_1295995577.546")
    .param pmc param_40
.annotate 'line', 12
    .lex "self", param_40
    $P41 = param_40."!protoregex"("infix")
    .return ($P41)
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__infix"  :subid("19_1295995577.546")
    .param pmc param_43
.annotate 'line', 12
    .lex "self", param_43
    $P44 = param_43."!PREFIX__!protoregex"("infix")
    .return ($P44)
.end


.namespace ["HLL";"Grammar"]
.sub "prefix"  :subid("20_1295995577.546")
    .param pmc param_46
.annotate 'line', 13
    .lex "self", param_46
    $P47 = param_46."!protoregex"("prefix")
    .return ($P47)
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__prefix"  :subid("21_1295995577.546")
    .param pmc param_49
.annotate 'line', 13
    .lex "self", param_49
    $P50 = param_49."!PREFIX__!protoregex"("prefix")
    .return ($P50)
.end


.namespace ["HLL";"Grammar"]
.sub "postfix"  :subid("22_1295995577.546")
    .param pmc param_52
.annotate 'line', 14
    .lex "self", param_52
    $P53 = param_52."!protoregex"("postfix")
    .return ($P53)
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postfix"  :subid("23_1295995577.546")
    .param pmc param_55
.annotate 'line', 14
    .lex "self", param_55
    $P56 = param_55."!PREFIX__!protoregex"("postfix")
    .return ($P56)
.end


.namespace ["HLL";"Grammar"]
.sub "circumfix"  :subid("24_1295995577.546")
    .param pmc param_58
.annotate 'line', 15
    .lex "self", param_58
    $P59 = param_58."!protoregex"("circumfix")
    .return ($P59)
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__circumfix"  :subid("25_1295995577.546")
    .param pmc param_61
.annotate 'line', 15
    .lex "self", param_61
    $P62 = param_61."!PREFIX__!protoregex"("circumfix")
    .return ($P62)
.end


.namespace ["HLL";"Grammar"]
.sub "postcircumfix"  :subid("26_1295995577.546")
    .param pmc param_64
.annotate 'line', 16
    .lex "self", param_64
    $P65 = param_64."!protoregex"("postcircumfix")
    .return ($P65)
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postcircumfix"  :subid("27_1295995577.546")
    .param pmc param_67
.annotate 'line', 16
    .lex "self", param_67
    $P68 = param_67."!PREFIX__!protoregex"("postcircumfix")
    .return ($P68)
.end


.namespace ["HLL";"Grammar"]
.sub "term:sym<circumfix>"  :subid("28_1295995577.546") :method :outer("11_1295995577.546")
.annotate 'line', 3
    .local string rx70_tgt
    .local int rx70_pos
    .local int rx70_off
    .local int rx70_eos
    .local int rx70_rep
    .local pmc rx70_cur
    .local pmc rx70_debug
    (rx70_cur, rx70_pos, rx70_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx70_cur
    .local pmc match
    .lex "$/", match
    length rx70_eos, rx70_tgt
    gt rx70_pos, rx70_eos, rx70_done
    set rx70_off, 0
    lt rx70_pos, 2, rx70_start
    sub rx70_off, rx70_pos, 1
    substr rx70_tgt, rx70_tgt, rx70_off
  rx70_start:
    eq $I10, 1, rx70_restart
    if_null rx70_debug, debug_131
    rx70_cur."!cursor_debug"("START", "term:sym<circumfix>")
  debug_131:
    $I10 = self.'from'()
    ne $I10, -1, rxscan74_done
    goto rxscan74_scan
  rxscan74_loop:
    ($P10) = rx70_cur."from"()
    inc $P10
    set rx70_pos, $P10
    ge rx70_pos, rx70_eos, rxscan74_done
  rxscan74_scan:
    set_addr $I10, rxscan74_loop
    rx70_cur."!mark_push"(0, rx70_pos, $I10)
  rxscan74_done:
.annotate 'line', 18
  # rx subrule "circumfix" subtype=capture negate=
    rx70_cur."!cursor_pos"(rx70_pos)
    $P10 = rx70_cur."circumfix"()
    unless $P10, rx70_fail
    rx70_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("circumfix")
    rx70_pos = $P10."pos"()
  # rx pass
    rx70_cur."!cursor_pass"(rx70_pos, "term:sym<circumfix>")
    if_null rx70_debug, debug_132
    rx70_cur."!cursor_debug"("PASS", "term:sym<circumfix>", " at pos=", rx70_pos)
  debug_132:
    .return (rx70_cur)
  rx70_restart:
.annotate 'line', 3
    if_null rx70_debug, debug_133
    rx70_cur."!cursor_debug"("NEXT", "term:sym<circumfix>")
  debug_133:
  rx70_fail:
    (rx70_rep, rx70_pos, $I10, $P10) = rx70_cur."!mark_fail"(0)
    lt rx70_pos, -1, rx70_done
    eq rx70_pos, -1, rx70_fail
    jump $I10
  rx70_done:
    rx70_cur."!cursor_fail"()
    if_null rx70_debug, debug_134
    rx70_cur."!cursor_debug"("FAIL", "term:sym<circumfix>")
  debug_134:
    .return (rx70_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__term:sym<circumfix>"  :nsentry("!PREFIX__term:sym<circumfix>") :subid("29_1295995577.546") :method
.annotate 'line', 3
    $P72 = self."!PREFIX__!subrule"("circumfix", "")
    new $P73, "ResizablePMCArray"
    push $P73, $P72
    .return ($P73)
.end


.namespace ["HLL";"Grammar"]
.sub "infixish"  :subid("30_1295995577.546") :method :outer("11_1295995577.546")
.annotate 'line', 3
    .local string rx76_tgt
    .local int rx76_pos
    .local int rx76_off
    .local int rx76_eos
    .local int rx76_rep
    .local pmc rx76_cur
    .local pmc rx76_debug
    (rx76_cur, rx76_pos, rx76_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx76_cur
    .local pmc match
    .lex "$/", match
    length rx76_eos, rx76_tgt
    gt rx76_pos, rx76_eos, rx76_done
    set rx76_off, 0
    lt rx76_pos, 2, rx76_start
    sub rx76_off, rx76_pos, 1
    substr rx76_tgt, rx76_tgt, rx76_off
  rx76_start:
    eq $I10, 1, rx76_restart
    if_null rx76_debug, debug_135
    rx76_cur."!cursor_debug"("START", "infixish")
  debug_135:
    $I10 = self.'from'()
    ne $I10, -1, rxscan80_done
    goto rxscan80_scan
  rxscan80_loop:
    ($P10) = rx76_cur."from"()
    inc $P10
    set rx76_pos, $P10
    ge rx76_pos, rx76_eos, rxscan80_done
  rxscan80_scan:
    set_addr $I10, rxscan80_loop
    rx76_cur."!mark_push"(0, rx76_pos, $I10)
  rxscan80_done:
.annotate 'line', 20
  # rx subrule "infix" subtype=capture negate=
    rx76_cur."!cursor_pos"(rx76_pos)
    $P10 = rx76_cur."infix"()
    unless $P10, rx76_fail
    rx76_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=infix")
    rx76_pos = $P10."pos"()
  # rx pass
    rx76_cur."!cursor_pass"(rx76_pos, "infixish")
    if_null rx76_debug, debug_136
    rx76_cur."!cursor_debug"("PASS", "infixish", " at pos=", rx76_pos)
  debug_136:
    .return (rx76_cur)
  rx76_restart:
.annotate 'line', 3
    if_null rx76_debug, debug_137
    rx76_cur."!cursor_debug"("NEXT", "infixish")
  debug_137:
  rx76_fail:
    (rx76_rep, rx76_pos, $I10, $P10) = rx76_cur."!mark_fail"(0)
    lt rx76_pos, -1, rx76_done
    eq rx76_pos, -1, rx76_fail
    jump $I10
  rx76_done:
    rx76_cur."!cursor_fail"()
    if_null rx76_debug, debug_138
    rx76_cur."!cursor_debug"("FAIL", "infixish")
  debug_138:
    .return (rx76_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__infixish"  :nsentry("!PREFIX__infixish") :subid("31_1295995577.546") :method
.annotate 'line', 3
    $P78 = self."!PREFIX__!subrule"("infix", "")
    new $P79, "ResizablePMCArray"
    push $P79, $P78
    .return ($P79)
.end


.namespace ["HLL";"Grammar"]
.sub "prefixish"  :subid("32_1295995577.546") :method :outer("11_1295995577.546")
.annotate 'line', 3
    .local string rx82_tgt
    .local int rx82_pos
    .local int rx82_off
    .local int rx82_eos
    .local int rx82_rep
    .local pmc rx82_cur
    .local pmc rx82_debug
    (rx82_cur, rx82_pos, rx82_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx82_cur
    .local pmc match
    .lex "$/", match
    length rx82_eos, rx82_tgt
    gt rx82_pos, rx82_eos, rx82_done
    set rx82_off, 0
    lt rx82_pos, 2, rx82_start
    sub rx82_off, rx82_pos, 1
    substr rx82_tgt, rx82_tgt, rx82_off
  rx82_start:
    eq $I10, 1, rx82_restart
    if_null rx82_debug, debug_139
    rx82_cur."!cursor_debug"("START", "prefixish")
  debug_139:
    $I10 = self.'from'()
    ne $I10, -1, rxscan86_done
    goto rxscan86_scan
  rxscan86_loop:
    ($P10) = rx82_cur."from"()
    inc $P10
    set rx82_pos, $P10
    ge rx82_pos, rx82_eos, rxscan86_done
  rxscan86_scan:
    set_addr $I10, rxscan86_loop
    rx82_cur."!mark_push"(0, rx82_pos, $I10)
  rxscan86_done:
.annotate 'line', 21
  # rx subrule "prefix" subtype=capture negate=
    rx82_cur."!cursor_pos"(rx82_pos)
    $P10 = rx82_cur."prefix"()
    unless $P10, rx82_fail
    rx82_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=prefix")
    rx82_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx82_cur."!cursor_pos"(rx82_pos)
    $P10 = rx82_cur."ws"()
    unless $P10, rx82_fail
    rx82_pos = $P10."pos"()
  # rx pass
    rx82_cur."!cursor_pass"(rx82_pos, "prefixish")
    if_null rx82_debug, debug_140
    rx82_cur."!cursor_debug"("PASS", "prefixish", " at pos=", rx82_pos)
  debug_140:
    .return (rx82_cur)
  rx82_restart:
.annotate 'line', 3
    if_null rx82_debug, debug_141
    rx82_cur."!cursor_debug"("NEXT", "prefixish")
  debug_141:
  rx82_fail:
    (rx82_rep, rx82_pos, $I10, $P10) = rx82_cur."!mark_fail"(0)
    lt rx82_pos, -1, rx82_done
    eq rx82_pos, -1, rx82_fail
    jump $I10
  rx82_done:
    rx82_cur."!cursor_fail"()
    if_null rx82_debug, debug_142
    rx82_cur."!cursor_debug"("FAIL", "prefixish")
  debug_142:
    .return (rx82_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__prefixish"  :nsentry("!PREFIX__prefixish") :subid("33_1295995577.546") :method
.annotate 'line', 3
    $P84 = self."!PREFIX__!subrule"("prefix", "")
    new $P85, "ResizablePMCArray"
    push $P85, $P84
    .return ($P85)
.end


.namespace ["HLL";"Grammar"]
.sub "postfixish"  :subid("34_1295995577.546") :method :outer("11_1295995577.546")
.annotate 'line', 3
    .local string rx88_tgt
    .local int rx88_pos
    .local int rx88_off
    .local int rx88_eos
    .local int rx88_rep
    .local pmc rx88_cur
    .local pmc rx88_debug
    (rx88_cur, rx88_pos, rx88_tgt, $I10) = self."!cursor_start"()
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
    if_null rx88_debug, debug_143
    rx88_cur."!cursor_debug"("START", "postfixish")
  debug_143:
    $I10 = self.'from'()
    ne $I10, -1, rxscan93_done
    goto rxscan93_scan
  rxscan93_loop:
    ($P10) = rx88_cur."from"()
    inc $P10
    set rx88_pos, $P10
    ge rx88_pos, rx88_eos, rxscan93_done
  rxscan93_scan:
    set_addr $I10, rxscan93_loop
    rx88_cur."!mark_push"(0, rx88_pos, $I10)
  rxscan93_done:
  alt94_0:
.annotate 'line', 22
    set_addr $I10, alt94_1
    rx88_cur."!mark_push"(0, rx88_pos, $I10)
.annotate 'line', 23
  # rx subrule "postfix" subtype=capture negate=
    rx88_cur."!cursor_pos"(rx88_pos)
    $P10 = rx88_cur."postfix"()
    unless $P10, rx88_fail
    rx88_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=postfix")
    rx88_pos = $P10."pos"()
    goto alt94_end
  alt94_1:
.annotate 'line', 24
  # rx subrule "postcircumfix" subtype=capture negate=
    rx88_cur."!cursor_pos"(rx88_pos)
    $P10 = rx88_cur."postcircumfix"()
    unless $P10, rx88_fail
    rx88_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=postcircumfix")
    rx88_pos = $P10."pos"()
  alt94_end:
.annotate 'line', 22
  # rx pass
    rx88_cur."!cursor_pass"(rx88_pos, "postfixish")
    if_null rx88_debug, debug_144
    rx88_cur."!cursor_debug"("PASS", "postfixish", " at pos=", rx88_pos)
  debug_144:
    .return (rx88_cur)
  rx88_restart:
.annotate 'line', 3
    if_null rx88_debug, debug_145
    rx88_cur."!cursor_debug"("NEXT", "postfixish")
  debug_145:
  rx88_fail:
    (rx88_rep, rx88_pos, $I10, $P10) = rx88_cur."!mark_fail"(0)
    lt rx88_pos, -1, rx88_done
    eq rx88_pos, -1, rx88_fail
    jump $I10
  rx88_done:
    rx88_cur."!cursor_fail"()
    if_null rx88_debug, debug_146
    rx88_cur."!cursor_debug"("FAIL", "postfixish")
  debug_146:
    .return (rx88_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postfixish"  :nsentry("!PREFIX__postfixish") :subid("35_1295995577.546") :method
.annotate 'line', 3
    $P90 = self."!PREFIX__!subrule"("postcircumfix", "")
    $P91 = self."!PREFIX__!subrule"("postfix", "")
    new $P92, "ResizablePMCArray"
    push $P92, $P90
    push $P92, $P91
    .return ($P92)
.end


.namespace ["HLL";"Grammar"]
.sub "nullterm"  :subid("36_1295995577.546") :method :outer("11_1295995577.546")
.annotate 'line', 3
    .local string rx96_tgt
    .local int rx96_pos
    .local int rx96_off
    .local int rx96_eos
    .local int rx96_rep
    .local pmc rx96_cur
    .local pmc rx96_debug
    (rx96_cur, rx96_pos, rx96_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx96_cur
    .local pmc match
    .lex "$/", match
    length rx96_eos, rx96_tgt
    gt rx96_pos, rx96_eos, rx96_done
    set rx96_off, 0
    lt rx96_pos, 2, rx96_start
    sub rx96_off, rx96_pos, 1
    substr rx96_tgt, rx96_tgt, rx96_off
  rx96_start:
    eq $I10, 1, rx96_restart
    if_null rx96_debug, debug_147
    rx96_cur."!cursor_debug"("START", "nullterm")
  debug_147:
    $I10 = self.'from'()
    ne $I10, -1, rxscan99_done
    goto rxscan99_scan
  rxscan99_loop:
    ($P10) = rx96_cur."from"()
    inc $P10
    set rx96_pos, $P10
    ge rx96_pos, rx96_eos, rxscan99_done
  rxscan99_scan:
    set_addr $I10, rxscan99_loop
    rx96_cur."!mark_push"(0, rx96_pos, $I10)
  rxscan99_done:
.annotate 'line', 27
  # rx pass
    rx96_cur."!cursor_pass"(rx96_pos, "nullterm")
    if_null rx96_debug, debug_148
    rx96_cur."!cursor_debug"("PASS", "nullterm", " at pos=", rx96_pos)
  debug_148:
    .return (rx96_cur)
  rx96_restart:
.annotate 'line', 3
    if_null rx96_debug, debug_149
    rx96_cur."!cursor_debug"("NEXT", "nullterm")
  debug_149:
  rx96_fail:
    (rx96_rep, rx96_pos, $I10, $P10) = rx96_cur."!mark_fail"(0)
    lt rx96_pos, -1, rx96_done
    eq rx96_pos, -1, rx96_fail
    jump $I10
  rx96_done:
    rx96_cur."!cursor_fail"()
    if_null rx96_debug, debug_150
    rx96_cur."!cursor_debug"("FAIL", "nullterm")
  debug_150:
    .return (rx96_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__nullterm"  :nsentry("!PREFIX__nullterm") :subid("37_1295995577.546") :method
.annotate 'line', 3
    new $P98, "ResizablePMCArray"
    push $P98, ""
    .return ($P98)
.end


.namespace ["HLL";"Grammar"]
.sub "nullterm_alt"  :subid("38_1295995577.546") :method :outer("11_1295995577.546")
.annotate 'line', 3
    .local string rx101_tgt
    .local int rx101_pos
    .local int rx101_off
    .local int rx101_eos
    .local int rx101_rep
    .local pmc rx101_cur
    .local pmc rx101_debug
    (rx101_cur, rx101_pos, rx101_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx101_cur
    .local pmc match
    .lex "$/", match
    length rx101_eos, rx101_tgt
    gt rx101_pos, rx101_eos, rx101_done
    set rx101_off, 0
    lt rx101_pos, 2, rx101_start
    sub rx101_off, rx101_pos, 1
    substr rx101_tgt, rx101_tgt, rx101_off
  rx101_start:
    eq $I10, 1, rx101_restart
    if_null rx101_debug, debug_151
    rx101_cur."!cursor_debug"("START", "nullterm_alt")
  debug_151:
    $I10 = self.'from'()
    ne $I10, -1, rxscan105_done
    goto rxscan105_scan
  rxscan105_loop:
    ($P10) = rx101_cur."from"()
    inc $P10
    set rx101_pos, $P10
    ge rx101_pos, rx101_eos, rxscan105_done
  rxscan105_scan:
    set_addr $I10, rxscan105_loop
    rx101_cur."!mark_push"(0, rx101_pos, $I10)
  rxscan105_done:
.annotate 'line', 28
  # rx subrule "nullterm" subtype=capture negate=
    rx101_cur."!cursor_pos"(rx101_pos)
    $P10 = rx101_cur."nullterm"()
    unless $P10, rx101_fail
    rx101_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("term")
    rx101_pos = $P10."pos"()
  # rx pass
    rx101_cur."!cursor_pass"(rx101_pos, "nullterm_alt")
    if_null rx101_debug, debug_152
    rx101_cur."!cursor_debug"("PASS", "nullterm_alt", " at pos=", rx101_pos)
  debug_152:
    .return (rx101_cur)
  rx101_restart:
.annotate 'line', 3
    if_null rx101_debug, debug_153
    rx101_cur."!cursor_debug"("NEXT", "nullterm_alt")
  debug_153:
  rx101_fail:
    (rx101_rep, rx101_pos, $I10, $P10) = rx101_cur."!mark_fail"(0)
    lt rx101_pos, -1, rx101_done
    eq rx101_pos, -1, rx101_fail
    jump $I10
  rx101_done:
    rx101_cur."!cursor_fail"()
    if_null rx101_debug, debug_154
    rx101_cur."!cursor_debug"("FAIL", "nullterm_alt")
  debug_154:
    .return (rx101_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__nullterm_alt"  :nsentry("!PREFIX__nullterm_alt") :subid("39_1295995577.546") :method
.annotate 'line', 3
    $P103 = self."!PREFIX__!subrule"("nullterm", "")
    new $P104, "ResizablePMCArray"
    push $P104, $P103
    .return ($P104)
.end


.namespace ["HLL";"Grammar"]
.sub "nulltermish"  :subid("40_1295995577.546") :outer("11_1295995577.546")
    .param pmc param_107
.annotate 'line', 31
    .lex "self", param_107
    find_lex $P110, "self"
    $P111 = $P110."termish"()
    unless $P111, unless_109
    set $P108, $P111
    goto unless_109_end
  unless_109:
    find_lex $P112, "self"
    $P113 = $P112."nullterm_alt"()
    set $P108, $P113
  unless_109_end:
    .return ($P108)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_delimited"  :subid("41_1295995577.546") :method :outer("11_1295995577.546")
.annotate 'line', 31
    .local string rx115_tgt
    .local int rx115_pos
    .local int rx115_off
    .local int rx115_eos
    .local int rx115_rep
    .local pmc rx115_cur
    .local pmc rx115_debug
    (rx115_cur, rx115_pos, rx115_tgt, $I10) = self."!cursor_start"()
    rx115_cur."!cursor_caparray"("quote_atom")
    .lex unicode:"$\x{a2}", rx115_cur
    .local pmc match
    .lex "$/", match
    length rx115_eos, rx115_tgt
    gt rx115_pos, rx115_eos, rx115_done
    set rx115_off, 0
    lt rx115_pos, 2, rx115_start
    sub rx115_off, rx115_pos, 1
    substr rx115_tgt, rx115_tgt, rx115_off
  rx115_start:
    eq $I10, 1, rx115_restart
    if_null rx115_debug, debug_155
    rx115_cur."!cursor_debug"("START", "quote_delimited")
  debug_155:
    $I10 = self.'from'()
    ne $I10, -1, rxscan119_done
    goto rxscan119_scan
  rxscan119_loop:
    ($P10) = rx115_cur."from"()
    inc $P10
    set rx115_pos, $P10
    ge rx115_pos, rx115_eos, rxscan119_done
  rxscan119_scan:
    set_addr $I10, rxscan119_loop
    rx115_cur."!mark_push"(0, rx115_pos, $I10)
  rxscan119_done:
.annotate 'line', 35
  # rx subrule "starter" subtype=capture negate=
    rx115_cur."!cursor_pos"(rx115_pos)
    $P10 = rx115_cur."starter"()
    unless $P10, rx115_fail
    rx115_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("starter")
    rx115_pos = $P10."pos"()
  # rx rxquantr120 ** 0..*
    set_addr $I10, rxquantr120_done
    rx115_cur."!mark_push"(0, rx115_pos, $I10)
  rxquantr120_loop:
  # rx subrule "quote_atom" subtype=capture negate=
    rx115_cur."!cursor_pos"(rx115_pos)
    $P10 = rx115_cur."quote_atom"()
    unless $P10, rx115_fail
    goto rxsubrule121_pass
  rxsubrule121_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx115_fail
  rxsubrule121_pass:
    set_addr $I10, rxsubrule121_back
    rx115_cur."!mark_push"(0, rx115_pos, $I10, $P10)
    $P10."!cursor_names"("quote_atom")
    rx115_pos = $P10."pos"()
    set_addr $I10, rxquantr120_done
    (rx115_rep) = rx115_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr120_done
    rx115_cur."!mark_push"(rx115_rep, rx115_pos, $I10)
    goto rxquantr120_loop
  rxquantr120_done:
  # rx subrule "stopper" subtype=capture negate=
    rx115_cur."!cursor_pos"(rx115_pos)
    $P10 = rx115_cur."stopper"()
    unless $P10, rx115_fail
    rx115_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("stopper")
    rx115_pos = $P10."pos"()
.annotate 'line', 34
  # rx pass
    rx115_cur."!cursor_pass"(rx115_pos, "quote_delimited")
    if_null rx115_debug, debug_156
    rx115_cur."!cursor_debug"("PASS", "quote_delimited", " at pos=", rx115_pos)
  debug_156:
    .return (rx115_cur)
  rx115_restart:
.annotate 'line', 31
    if_null rx115_debug, debug_157
    rx115_cur."!cursor_debug"("NEXT", "quote_delimited")
  debug_157:
  rx115_fail:
    (rx115_rep, rx115_pos, $I10, $P10) = rx115_cur."!mark_fail"(0)
    lt rx115_pos, -1, rx115_done
    eq rx115_pos, -1, rx115_fail
    jump $I10
  rx115_done:
    rx115_cur."!cursor_fail"()
    if_null rx115_debug, debug_158
    rx115_cur."!cursor_debug"("FAIL", "quote_delimited")
  debug_158:
    .return (rx115_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_delimited"  :nsentry("!PREFIX__quote_delimited") :subid("42_1295995577.546") :method
.annotate 'line', 31
    $P117 = self."!PREFIX__!subrule"("starter", "")
    new $P118, "ResizablePMCArray"
    push $P118, $P117
    .return ($P118)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_atom"  :subid("43_1295995577.546") :method :outer("11_1295995577.546")
.annotate 'line', 31
    .local string rx123_tgt
    .local int rx123_pos
    .local int rx123_off
    .local int rx123_eos
    .local int rx123_rep
    .local pmc rx123_cur
    .local pmc rx123_debug
    (rx123_cur, rx123_pos, rx123_tgt, $I10) = self."!cursor_start"()
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
    if_null rx123_debug, debug_159
    rx123_cur."!cursor_debug"("START", "quote_atom")
  debug_159:
    $I10 = self.'from'()
    ne $I10, -1, rxscan126_done
    goto rxscan126_scan
  rxscan126_loop:
    ($P10) = rx123_cur."from"()
    inc $P10
    set rx123_pos, $P10
    ge rx123_pos, rx123_eos, rxscan126_done
  rxscan126_scan:
    set_addr $I10, rxscan126_loop
    rx123_cur."!mark_push"(0, rx123_pos, $I10)
  rxscan126_done:
.annotate 'line', 39
  # rx subrule "stopper" subtype=zerowidth negate=1
    rx123_cur."!cursor_pos"(rx123_pos)
    $P10 = rx123_cur."stopper"()
    if $P10, rx123_fail
  alt127_0:
.annotate 'line', 40
    set_addr $I10, alt127_1
    rx123_cur."!mark_push"(0, rx123_pos, $I10)
.annotate 'line', 41
  # rx subrule "quote_escape" subtype=capture negate=
    rx123_cur."!cursor_pos"(rx123_pos)
    $P10 = rx123_cur."quote_escape"()
    unless $P10, rx123_fail
    rx123_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_escape")
    rx123_pos = $P10."pos"()
    goto alt127_end
  alt127_1:
.annotate 'line', 42
  # rx rxquantr128 ** 1..*
    set_addr $I10, rxquantr128_done
    rx123_cur."!mark_push"(0, -1, $I10)
  rxquantr128_loop:
  # rx subrule "stopper" subtype=zerowidth negate=1
    rx123_cur."!cursor_pos"(rx123_pos)
    $P10 = rx123_cur."stopper"()
    if $P10, rx123_fail
  # rx subrule "quote_escape" subtype=zerowidth negate=1
    rx123_cur."!cursor_pos"(rx123_pos)
    $P10 = rx123_cur."quote_escape"()
    if $P10, rx123_fail
  # rx charclass .
    ge rx123_pos, rx123_eos, rx123_fail
    inc rx123_pos
    set_addr $I10, rxquantr128_done
    (rx123_rep) = rx123_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr128_done
    rx123_cur."!mark_push"(rx123_rep, rx123_pos, $I10)
    goto rxquantr128_loop
  rxquantr128_done:
  alt127_end:
.annotate 'line', 38
  # rx pass
    rx123_cur."!cursor_pass"(rx123_pos, "quote_atom")
    if_null rx123_debug, debug_160
    rx123_cur."!cursor_debug"("PASS", "quote_atom", " at pos=", rx123_pos)
  debug_160:
    .return (rx123_cur)
  rx123_restart:
.annotate 'line', 31
    if_null rx123_debug, debug_161
    rx123_cur."!cursor_debug"("NEXT", "quote_atom")
  debug_161:
  rx123_fail:
    (rx123_rep, rx123_pos, $I10, $P10) = rx123_cur."!mark_fail"(0)
    lt rx123_pos, -1, rx123_done
    eq rx123_pos, -1, rx123_fail
    jump $I10
  rx123_done:
    rx123_cur."!cursor_fail"()
    if_null rx123_debug, debug_162
    rx123_cur."!cursor_debug"("FAIL", "quote_atom")
  debug_162:
    .return (rx123_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_atom"  :nsentry("!PREFIX__quote_atom") :subid("44_1295995577.546") :method
.annotate 'line', 31
    new $P125, "ResizablePMCArray"
    push $P125, ""
    .return ($P125)
.end


.namespace ["HLL";"Grammar"]
.sub "decint"  :subid("45_1295995577.546") :method :outer("11_1295995577.546")
.annotate 'line', 31
    .local string rx132_tgt
    .local int rx132_pos
    .local int rx132_off
    .local int rx132_eos
    .local int rx132_rep
    .local pmc rx132_cur
    .local pmc rx132_debug
    (rx132_cur, rx132_pos, rx132_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx132_cur
    .local pmc match
    .lex "$/", match
    length rx132_eos, rx132_tgt
    gt rx132_pos, rx132_eos, rx132_done
    set rx132_off, 0
    lt rx132_pos, 2, rx132_start
    sub rx132_off, rx132_pos, 1
    substr rx132_tgt, rx132_tgt, rx132_off
  rx132_start:
    eq $I10, 1, rx132_restart
    if_null rx132_debug, debug_163
    rx132_cur."!cursor_debug"("START", "decint")
  debug_163:
    $I10 = self.'from'()
    ne $I10, -1, rxscan135_done
    goto rxscan135_scan
  rxscan135_loop:
    ($P10) = rx132_cur."from"()
    inc $P10
    set rx132_pos, $P10
    ge rx132_pos, rx132_eos, rxscan135_done
  rxscan135_scan:
    set_addr $I10, rxscan135_loop
    rx132_cur."!mark_push"(0, rx132_pos, $I10)
  rxscan135_done:
.annotate 'line', 46
  # rx rxquantr136 ** 1..*
    set_addr $I10, rxquantr136_done
    rx132_cur."!mark_push"(0, -1, $I10)
  rxquantr136_loop:
  # rx charclass_q d r 1..-1
    sub $I10, rx132_pos, rx132_off
    find_not_cclass $I11, 8, rx132_tgt, $I10, rx132_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx132_fail
    add rx132_pos, rx132_off, $I11
    set_addr $I10, rxquantr136_done
    (rx132_rep) = rx132_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr136_done
    rx132_cur."!mark_push"(rx132_rep, rx132_pos, $I10)
  # rx literal  "_"
    add $I11, rx132_pos, 1
    gt $I11, rx132_eos, rx132_fail
    sub $I11, rx132_pos, rx132_off
    ord $I11, rx132_tgt, $I11
    ne $I11, 95, rx132_fail
    add rx132_pos, 1
    goto rxquantr136_loop
  rxquantr136_done:
  # rx pass
    rx132_cur."!cursor_pass"(rx132_pos, "decint")
    if_null rx132_debug, debug_164
    rx132_cur."!cursor_debug"("PASS", "decint", " at pos=", rx132_pos)
  debug_164:
    .return (rx132_cur)
  rx132_restart:
.annotate 'line', 31
    if_null rx132_debug, debug_165
    rx132_cur."!cursor_debug"("NEXT", "decint")
  debug_165:
  rx132_fail:
    (rx132_rep, rx132_pos, $I10, $P10) = rx132_cur."!mark_fail"(0)
    lt rx132_pos, -1, rx132_done
    eq rx132_pos, -1, rx132_fail
    jump $I10
  rx132_done:
    rx132_cur."!cursor_fail"()
    if_null rx132_debug, debug_166
    rx132_cur."!cursor_debug"("FAIL", "decint")
  debug_166:
    .return (rx132_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__decint"  :nsentry("!PREFIX__decint") :subid("46_1295995577.546") :method
.annotate 'line', 31
    new $P134, "ResizablePMCArray"
    push $P134, ""
    .return ($P134)
.end


.namespace ["HLL";"Grammar"]
.sub "decints"  :subid("47_1295995577.546") :method :outer("11_1295995577.546")
.annotate 'line', 31
    .local string rx138_tgt
    .local int rx138_pos
    .local int rx138_off
    .local int rx138_eos
    .local int rx138_rep
    .local pmc rx138_cur
    .local pmc rx138_debug
    (rx138_cur, rx138_pos, rx138_tgt, $I10) = self."!cursor_start"()
    rx138_cur."!cursor_caparray"("decint")
    .lex unicode:"$\x{a2}", rx138_cur
    .local pmc match
    .lex "$/", match
    length rx138_eos, rx138_tgt
    gt rx138_pos, rx138_eos, rx138_done
    set rx138_off, 0
    lt rx138_pos, 2, rx138_start
    sub rx138_off, rx138_pos, 1
    substr rx138_tgt, rx138_tgt, rx138_off
  rx138_start:
    eq $I10, 1, rx138_restart
    if_null rx138_debug, debug_167
    rx138_cur."!cursor_debug"("START", "decints")
  debug_167:
    $I10 = self.'from'()
    ne $I10, -1, rxscan141_done
    goto rxscan141_scan
  rxscan141_loop:
    ($P10) = rx138_cur."from"()
    inc $P10
    set rx138_pos, $P10
    ge rx138_pos, rx138_eos, rxscan141_done
  rxscan141_scan:
    set_addr $I10, rxscan141_loop
    rx138_cur."!mark_push"(0, rx138_pos, $I10)
  rxscan141_done:
.annotate 'line', 47
  # rx rxquantr142 ** 1..*
    set_addr $I10, rxquantr142_done
    rx138_cur."!mark_push"(0, -1, $I10)
  rxquantr142_loop:
  # rx subrule "ws" subtype=method negate=
    rx138_cur."!cursor_pos"(rx138_pos)
    $P10 = rx138_cur."ws"()
    unless $P10, rx138_fail
    rx138_pos = $P10."pos"()
  # rx subrule "decint" subtype=capture negate=
    rx138_cur."!cursor_pos"(rx138_pos)
    $P10 = rx138_cur."decint"()
    unless $P10, rx138_fail
    rx138_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("decint")
    rx138_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx138_cur."!cursor_pos"(rx138_pos)
    $P10 = rx138_cur."ws"()
    unless $P10, rx138_fail
    rx138_pos = $P10."pos"()
    set_addr $I10, rxquantr142_done
    (rx138_rep) = rx138_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr142_done
    rx138_cur."!mark_push"(rx138_rep, rx138_pos, $I10)
  # rx literal  ","
    add $I11, rx138_pos, 1
    gt $I11, rx138_eos, rx138_fail
    sub $I11, rx138_pos, rx138_off
    ord $I11, rx138_tgt, $I11
    ne $I11, 44, rx138_fail
    add rx138_pos, 1
    goto rxquantr142_loop
  rxquantr142_done:
  # rx pass
    rx138_cur."!cursor_pass"(rx138_pos, "decints")
    if_null rx138_debug, debug_168
    rx138_cur."!cursor_debug"("PASS", "decints", " at pos=", rx138_pos)
  debug_168:
    .return (rx138_cur)
  rx138_restart:
.annotate 'line', 31
    if_null rx138_debug, debug_169
    rx138_cur."!cursor_debug"("NEXT", "decints")
  debug_169:
  rx138_fail:
    (rx138_rep, rx138_pos, $I10, $P10) = rx138_cur."!mark_fail"(0)
    lt rx138_pos, -1, rx138_done
    eq rx138_pos, -1, rx138_fail
    jump $I10
  rx138_done:
    rx138_cur."!cursor_fail"()
    if_null rx138_debug, debug_170
    rx138_cur."!cursor_debug"("FAIL", "decints")
  debug_170:
    .return (rx138_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__decints"  :nsentry("!PREFIX__decints") :subid("48_1295995577.546") :method
.annotate 'line', 31
    new $P140, "ResizablePMCArray"
    push $P140, ""
    .return ($P140)
.end


.namespace ["HLL";"Grammar"]
.sub "hexint"  :subid("49_1295995577.546") :method :outer("11_1295995577.546")
.annotate 'line', 31
    .local string rx144_tgt
    .local int rx144_pos
    .local int rx144_off
    .local int rx144_eos
    .local int rx144_rep
    .local pmc rx144_cur
    .local pmc rx144_debug
    (rx144_cur, rx144_pos, rx144_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx144_cur
    .local pmc match
    .lex "$/", match
    length rx144_eos, rx144_tgt
    gt rx144_pos, rx144_eos, rx144_done
    set rx144_off, 0
    lt rx144_pos, 2, rx144_start
    sub rx144_off, rx144_pos, 1
    substr rx144_tgt, rx144_tgt, rx144_off
  rx144_start:
    eq $I10, 1, rx144_restart
    if_null rx144_debug, debug_171
    rx144_cur."!cursor_debug"("START", "hexint")
  debug_171:
    $I10 = self.'from'()
    ne $I10, -1, rxscan147_done
    goto rxscan147_scan
  rxscan147_loop:
    ($P10) = rx144_cur."from"()
    inc $P10
    set rx144_pos, $P10
    ge rx144_pos, rx144_eos, rxscan147_done
  rxscan147_scan:
    set_addr $I10, rxscan147_loop
    rx144_cur."!mark_push"(0, rx144_pos, $I10)
  rxscan147_done:
.annotate 'line', 49
  # rx rxquantr148 ** 1..*
    set_addr $I10, rxquantr148_done
    rx144_cur."!mark_push"(0, -1, $I10)
  rxquantr148_loop:
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx144_pos, rx144_off
    set rx144_rep, 0
    sub $I12, rx144_eos, rx144_pos
  rxenumcharlistq149_loop:
    le $I12, 0, rxenumcharlistq149_done
    substr $S10, rx144_tgt, $I10, 1
    index $I11, "0123456789abcdefABCDEF", $S10
    lt $I11, 0, rxenumcharlistq149_done
    inc rx144_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq149_loop
  rxenumcharlistq149_done:
    lt rx144_rep, 1, rx144_fail
    add rx144_pos, rx144_pos, rx144_rep
    set_addr $I10, rxquantr148_done
    (rx144_rep) = rx144_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr148_done
    rx144_cur."!mark_push"(rx144_rep, rx144_pos, $I10)
  # rx literal  "_"
    add $I11, rx144_pos, 1
    gt $I11, rx144_eos, rx144_fail
    sub $I11, rx144_pos, rx144_off
    ord $I11, rx144_tgt, $I11
    ne $I11, 95, rx144_fail
    add rx144_pos, 1
    goto rxquantr148_loop
  rxquantr148_done:
  # rx pass
    rx144_cur."!cursor_pass"(rx144_pos, "hexint")
    if_null rx144_debug, debug_172
    rx144_cur."!cursor_debug"("PASS", "hexint", " at pos=", rx144_pos)
  debug_172:
    .return (rx144_cur)
  rx144_restart:
.annotate 'line', 31
    if_null rx144_debug, debug_173
    rx144_cur."!cursor_debug"("NEXT", "hexint")
  debug_173:
  rx144_fail:
    (rx144_rep, rx144_pos, $I10, $P10) = rx144_cur."!mark_fail"(0)
    lt rx144_pos, -1, rx144_done
    eq rx144_pos, -1, rx144_fail
    jump $I10
  rx144_done:
    rx144_cur."!cursor_fail"()
    if_null rx144_debug, debug_174
    rx144_cur."!cursor_debug"("FAIL", "hexint")
  debug_174:
    .return (rx144_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__hexint"  :nsentry("!PREFIX__hexint") :subid("50_1295995577.546") :method
.annotate 'line', 31
    new $P146, "ResizablePMCArray"
    push $P146, ""
    .return ($P146)
.end


.namespace ["HLL";"Grammar"]
.sub "hexints"  :subid("51_1295995577.546") :method :outer("11_1295995577.546")
.annotate 'line', 31
    .local string rx151_tgt
    .local int rx151_pos
    .local int rx151_off
    .local int rx151_eos
    .local int rx151_rep
    .local pmc rx151_cur
    .local pmc rx151_debug
    (rx151_cur, rx151_pos, rx151_tgt, $I10) = self."!cursor_start"()
    rx151_cur."!cursor_caparray"("hexint")
    .lex unicode:"$\x{a2}", rx151_cur
    .local pmc match
    .lex "$/", match
    length rx151_eos, rx151_tgt
    gt rx151_pos, rx151_eos, rx151_done
    set rx151_off, 0
    lt rx151_pos, 2, rx151_start
    sub rx151_off, rx151_pos, 1
    substr rx151_tgt, rx151_tgt, rx151_off
  rx151_start:
    eq $I10, 1, rx151_restart
    if_null rx151_debug, debug_175
    rx151_cur."!cursor_debug"("START", "hexints")
  debug_175:
    $I10 = self.'from'()
    ne $I10, -1, rxscan154_done
    goto rxscan154_scan
  rxscan154_loop:
    ($P10) = rx151_cur."from"()
    inc $P10
    set rx151_pos, $P10
    ge rx151_pos, rx151_eos, rxscan154_done
  rxscan154_scan:
    set_addr $I10, rxscan154_loop
    rx151_cur."!mark_push"(0, rx151_pos, $I10)
  rxscan154_done:
.annotate 'line', 50
  # rx rxquantr155 ** 1..*
    set_addr $I10, rxquantr155_done
    rx151_cur."!mark_push"(0, -1, $I10)
  rxquantr155_loop:
  # rx subrule "ws" subtype=method negate=
    rx151_cur."!cursor_pos"(rx151_pos)
    $P10 = rx151_cur."ws"()
    unless $P10, rx151_fail
    rx151_pos = $P10."pos"()
  # rx subrule "hexint" subtype=capture negate=
    rx151_cur."!cursor_pos"(rx151_pos)
    $P10 = rx151_cur."hexint"()
    unless $P10, rx151_fail
    rx151_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexint")
    rx151_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx151_cur."!cursor_pos"(rx151_pos)
    $P10 = rx151_cur."ws"()
    unless $P10, rx151_fail
    rx151_pos = $P10."pos"()
    set_addr $I10, rxquantr155_done
    (rx151_rep) = rx151_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr155_done
    rx151_cur."!mark_push"(rx151_rep, rx151_pos, $I10)
  # rx literal  ","
    add $I11, rx151_pos, 1
    gt $I11, rx151_eos, rx151_fail
    sub $I11, rx151_pos, rx151_off
    ord $I11, rx151_tgt, $I11
    ne $I11, 44, rx151_fail
    add rx151_pos, 1
    goto rxquantr155_loop
  rxquantr155_done:
  # rx pass
    rx151_cur."!cursor_pass"(rx151_pos, "hexints")
    if_null rx151_debug, debug_176
    rx151_cur."!cursor_debug"("PASS", "hexints", " at pos=", rx151_pos)
  debug_176:
    .return (rx151_cur)
  rx151_restart:
.annotate 'line', 31
    if_null rx151_debug, debug_177
    rx151_cur."!cursor_debug"("NEXT", "hexints")
  debug_177:
  rx151_fail:
    (rx151_rep, rx151_pos, $I10, $P10) = rx151_cur."!mark_fail"(0)
    lt rx151_pos, -1, rx151_done
    eq rx151_pos, -1, rx151_fail
    jump $I10
  rx151_done:
    rx151_cur."!cursor_fail"()
    if_null rx151_debug, debug_178
    rx151_cur."!cursor_debug"("FAIL", "hexints")
  debug_178:
    .return (rx151_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__hexints"  :nsentry("!PREFIX__hexints") :subid("52_1295995577.546") :method
.annotate 'line', 31
    new $P153, "ResizablePMCArray"
    push $P153, ""
    .return ($P153)
.end


.namespace ["HLL";"Grammar"]
.sub "octint"  :subid("53_1295995577.546") :method :outer("11_1295995577.546")
.annotate 'line', 31
    .local string rx157_tgt
    .local int rx157_pos
    .local int rx157_off
    .local int rx157_eos
    .local int rx157_rep
    .local pmc rx157_cur
    .local pmc rx157_debug
    (rx157_cur, rx157_pos, rx157_tgt, $I10) = self."!cursor_start"()
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
    if_null rx157_debug, debug_179
    rx157_cur."!cursor_debug"("START", "octint")
  debug_179:
    $I10 = self.'from'()
    ne $I10, -1, rxscan160_done
    goto rxscan160_scan
  rxscan160_loop:
    ($P10) = rx157_cur."from"()
    inc $P10
    set rx157_pos, $P10
    ge rx157_pos, rx157_eos, rxscan160_done
  rxscan160_scan:
    set_addr $I10, rxscan160_loop
    rx157_cur."!mark_push"(0, rx157_pos, $I10)
  rxscan160_done:
.annotate 'line', 52
  # rx rxquantr161 ** 1..*
    set_addr $I10, rxquantr161_done
    rx157_cur."!mark_push"(0, -1, $I10)
  rxquantr161_loop:
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx157_pos, rx157_off
    set rx157_rep, 0
    sub $I12, rx157_eos, rx157_pos
  rxenumcharlistq162_loop:
    le $I12, 0, rxenumcharlistq162_done
    substr $S10, rx157_tgt, $I10, 1
    index $I11, "01234567", $S10
    lt $I11, 0, rxenumcharlistq162_done
    inc rx157_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq162_loop
  rxenumcharlistq162_done:
    lt rx157_rep, 1, rx157_fail
    add rx157_pos, rx157_pos, rx157_rep
    set_addr $I10, rxquantr161_done
    (rx157_rep) = rx157_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr161_done
    rx157_cur."!mark_push"(rx157_rep, rx157_pos, $I10)
  # rx literal  "_"
    add $I11, rx157_pos, 1
    gt $I11, rx157_eos, rx157_fail
    sub $I11, rx157_pos, rx157_off
    ord $I11, rx157_tgt, $I11
    ne $I11, 95, rx157_fail
    add rx157_pos, 1
    goto rxquantr161_loop
  rxquantr161_done:
  # rx pass
    rx157_cur."!cursor_pass"(rx157_pos, "octint")
    if_null rx157_debug, debug_180
    rx157_cur."!cursor_debug"("PASS", "octint", " at pos=", rx157_pos)
  debug_180:
    .return (rx157_cur)
  rx157_restart:
.annotate 'line', 31
    if_null rx157_debug, debug_181
    rx157_cur."!cursor_debug"("NEXT", "octint")
  debug_181:
  rx157_fail:
    (rx157_rep, rx157_pos, $I10, $P10) = rx157_cur."!mark_fail"(0)
    lt rx157_pos, -1, rx157_done
    eq rx157_pos, -1, rx157_fail
    jump $I10
  rx157_done:
    rx157_cur."!cursor_fail"()
    if_null rx157_debug, debug_182
    rx157_cur."!cursor_debug"("FAIL", "octint")
  debug_182:
    .return (rx157_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__octint"  :nsentry("!PREFIX__octint") :subid("54_1295995577.546") :method
.annotate 'line', 31
    new $P159, "ResizablePMCArray"
    push $P159, ""
    .return ($P159)
.end


.namespace ["HLL";"Grammar"]
.sub "octints"  :subid("55_1295995577.546") :method :outer("11_1295995577.546")
.annotate 'line', 31
    .local string rx164_tgt
    .local int rx164_pos
    .local int rx164_off
    .local int rx164_eos
    .local int rx164_rep
    .local pmc rx164_cur
    .local pmc rx164_debug
    (rx164_cur, rx164_pos, rx164_tgt, $I10) = self."!cursor_start"()
    rx164_cur."!cursor_caparray"("octint")
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
    if_null rx164_debug, debug_183
    rx164_cur."!cursor_debug"("START", "octints")
  debug_183:
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
.annotate 'line', 53
  # rx rxquantr168 ** 1..*
    set_addr $I10, rxquantr168_done
    rx164_cur."!mark_push"(0, -1, $I10)
  rxquantr168_loop:
  # rx subrule "ws" subtype=method negate=
    rx164_cur."!cursor_pos"(rx164_pos)
    $P10 = rx164_cur."ws"()
    unless $P10, rx164_fail
    rx164_pos = $P10."pos"()
  # rx subrule "octint" subtype=capture negate=
    rx164_cur."!cursor_pos"(rx164_pos)
    $P10 = rx164_cur."octint"()
    unless $P10, rx164_fail
    rx164_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octint")
    rx164_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx164_cur."!cursor_pos"(rx164_pos)
    $P10 = rx164_cur."ws"()
    unless $P10, rx164_fail
    rx164_pos = $P10."pos"()
    set_addr $I10, rxquantr168_done
    (rx164_rep) = rx164_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr168_done
    rx164_cur."!mark_push"(rx164_rep, rx164_pos, $I10)
  # rx literal  ","
    add $I11, rx164_pos, 1
    gt $I11, rx164_eos, rx164_fail
    sub $I11, rx164_pos, rx164_off
    ord $I11, rx164_tgt, $I11
    ne $I11, 44, rx164_fail
    add rx164_pos, 1
    goto rxquantr168_loop
  rxquantr168_done:
  # rx pass
    rx164_cur."!cursor_pass"(rx164_pos, "octints")
    if_null rx164_debug, debug_184
    rx164_cur."!cursor_debug"("PASS", "octints", " at pos=", rx164_pos)
  debug_184:
    .return (rx164_cur)
  rx164_restart:
.annotate 'line', 31
    if_null rx164_debug, debug_185
    rx164_cur."!cursor_debug"("NEXT", "octints")
  debug_185:
  rx164_fail:
    (rx164_rep, rx164_pos, $I10, $P10) = rx164_cur."!mark_fail"(0)
    lt rx164_pos, -1, rx164_done
    eq rx164_pos, -1, rx164_fail
    jump $I10
  rx164_done:
    rx164_cur."!cursor_fail"()
    if_null rx164_debug, debug_186
    rx164_cur."!cursor_debug"("FAIL", "octints")
  debug_186:
    .return (rx164_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__octints"  :nsentry("!PREFIX__octints") :subid("56_1295995577.546") :method
.annotate 'line', 31
    new $P166, "ResizablePMCArray"
    push $P166, ""
    .return ($P166)
.end


.namespace ["HLL";"Grammar"]
.sub "binint"  :subid("57_1295995577.546") :method :outer("11_1295995577.546")
.annotate 'line', 31
    .local string rx170_tgt
    .local int rx170_pos
    .local int rx170_off
    .local int rx170_eos
    .local int rx170_rep
    .local pmc rx170_cur
    .local pmc rx170_debug
    (rx170_cur, rx170_pos, rx170_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx170_cur
    .local pmc match
    .lex "$/", match
    length rx170_eos, rx170_tgt
    gt rx170_pos, rx170_eos, rx170_done
    set rx170_off, 0
    lt rx170_pos, 2, rx170_start
    sub rx170_off, rx170_pos, 1
    substr rx170_tgt, rx170_tgt, rx170_off
  rx170_start:
    eq $I10, 1, rx170_restart
    if_null rx170_debug, debug_187
    rx170_cur."!cursor_debug"("START", "binint")
  debug_187:
    $I10 = self.'from'()
    ne $I10, -1, rxscan173_done
    goto rxscan173_scan
  rxscan173_loop:
    ($P10) = rx170_cur."from"()
    inc $P10
    set rx170_pos, $P10
    ge rx170_pos, rx170_eos, rxscan173_done
  rxscan173_scan:
    set_addr $I10, rxscan173_loop
    rx170_cur."!mark_push"(0, rx170_pos, $I10)
  rxscan173_done:
.annotate 'line', 55
  # rx rxquantr174 ** 1..*
    set_addr $I10, rxquantr174_done
    rx170_cur."!mark_push"(0, -1, $I10)
  rxquantr174_loop:
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx170_pos, rx170_off
    set rx170_rep, 0
    sub $I12, rx170_eos, rx170_pos
  rxenumcharlistq175_loop:
    le $I12, 0, rxenumcharlistq175_done
    substr $S10, rx170_tgt, $I10, 1
    index $I11, "01", $S10
    lt $I11, 0, rxenumcharlistq175_done
    inc rx170_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq175_loop
  rxenumcharlistq175_done:
    lt rx170_rep, 1, rx170_fail
    add rx170_pos, rx170_pos, rx170_rep
    set_addr $I10, rxquantr174_done
    (rx170_rep) = rx170_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr174_done
    rx170_cur."!mark_push"(rx170_rep, rx170_pos, $I10)
  # rx literal  "_"
    add $I11, rx170_pos, 1
    gt $I11, rx170_eos, rx170_fail
    sub $I11, rx170_pos, rx170_off
    ord $I11, rx170_tgt, $I11
    ne $I11, 95, rx170_fail
    add rx170_pos, 1
    goto rxquantr174_loop
  rxquantr174_done:
  # rx pass
    rx170_cur."!cursor_pass"(rx170_pos, "binint")
    if_null rx170_debug, debug_188
    rx170_cur."!cursor_debug"("PASS", "binint", " at pos=", rx170_pos)
  debug_188:
    .return (rx170_cur)
  rx170_restart:
.annotate 'line', 31
    if_null rx170_debug, debug_189
    rx170_cur."!cursor_debug"("NEXT", "binint")
  debug_189:
  rx170_fail:
    (rx170_rep, rx170_pos, $I10, $P10) = rx170_cur."!mark_fail"(0)
    lt rx170_pos, -1, rx170_done
    eq rx170_pos, -1, rx170_fail
    jump $I10
  rx170_done:
    rx170_cur."!cursor_fail"()
    if_null rx170_debug, debug_190
    rx170_cur."!cursor_debug"("FAIL", "binint")
  debug_190:
    .return (rx170_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__binint"  :nsentry("!PREFIX__binint") :subid("58_1295995577.546") :method
.annotate 'line', 31
    new $P172, "ResizablePMCArray"
    push $P172, ""
    .return ($P172)
.end


.namespace ["HLL";"Grammar"]
.sub "binints"  :subid("59_1295995577.546") :method :outer("11_1295995577.546")
.annotate 'line', 31
    .local string rx177_tgt
    .local int rx177_pos
    .local int rx177_off
    .local int rx177_eos
    .local int rx177_rep
    .local pmc rx177_cur
    .local pmc rx177_debug
    (rx177_cur, rx177_pos, rx177_tgt, $I10) = self."!cursor_start"()
    rx177_cur."!cursor_caparray"("binint")
    .lex unicode:"$\x{a2}", rx177_cur
    .local pmc match
    .lex "$/", match
    length rx177_eos, rx177_tgt
    gt rx177_pos, rx177_eos, rx177_done
    set rx177_off, 0
    lt rx177_pos, 2, rx177_start
    sub rx177_off, rx177_pos, 1
    substr rx177_tgt, rx177_tgt, rx177_off
  rx177_start:
    eq $I10, 1, rx177_restart
    if_null rx177_debug, debug_191
    rx177_cur."!cursor_debug"("START", "binints")
  debug_191:
    $I10 = self.'from'()
    ne $I10, -1, rxscan180_done
    goto rxscan180_scan
  rxscan180_loop:
    ($P10) = rx177_cur."from"()
    inc $P10
    set rx177_pos, $P10
    ge rx177_pos, rx177_eos, rxscan180_done
  rxscan180_scan:
    set_addr $I10, rxscan180_loop
    rx177_cur."!mark_push"(0, rx177_pos, $I10)
  rxscan180_done:
.annotate 'line', 56
  # rx rxquantr181 ** 1..*
    set_addr $I10, rxquantr181_done
    rx177_cur."!mark_push"(0, -1, $I10)
  rxquantr181_loop:
  # rx subrule "ws" subtype=method negate=
    rx177_cur."!cursor_pos"(rx177_pos)
    $P10 = rx177_cur."ws"()
    unless $P10, rx177_fail
    rx177_pos = $P10."pos"()
  # rx subrule "binint" subtype=capture negate=
    rx177_cur."!cursor_pos"(rx177_pos)
    $P10 = rx177_cur."binint"()
    unless $P10, rx177_fail
    rx177_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("binint")
    rx177_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx177_cur."!cursor_pos"(rx177_pos)
    $P10 = rx177_cur."ws"()
    unless $P10, rx177_fail
    rx177_pos = $P10."pos"()
    set_addr $I10, rxquantr181_done
    (rx177_rep) = rx177_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr181_done
    rx177_cur."!mark_push"(rx177_rep, rx177_pos, $I10)
  # rx literal  ","
    add $I11, rx177_pos, 1
    gt $I11, rx177_eos, rx177_fail
    sub $I11, rx177_pos, rx177_off
    ord $I11, rx177_tgt, $I11
    ne $I11, 44, rx177_fail
    add rx177_pos, 1
    goto rxquantr181_loop
  rxquantr181_done:
  # rx pass
    rx177_cur."!cursor_pass"(rx177_pos, "binints")
    if_null rx177_debug, debug_192
    rx177_cur."!cursor_debug"("PASS", "binints", " at pos=", rx177_pos)
  debug_192:
    .return (rx177_cur)
  rx177_restart:
.annotate 'line', 31
    if_null rx177_debug, debug_193
    rx177_cur."!cursor_debug"("NEXT", "binints")
  debug_193:
  rx177_fail:
    (rx177_rep, rx177_pos, $I10, $P10) = rx177_cur."!mark_fail"(0)
    lt rx177_pos, -1, rx177_done
    eq rx177_pos, -1, rx177_fail
    jump $I10
  rx177_done:
    rx177_cur."!cursor_fail"()
    if_null rx177_debug, debug_194
    rx177_cur."!cursor_debug"("FAIL", "binints")
  debug_194:
    .return (rx177_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__binints"  :nsentry("!PREFIX__binints") :subid("60_1295995577.546") :method
.annotate 'line', 31
    new $P179, "ResizablePMCArray"
    push $P179, ""
    .return ($P179)
.end


.namespace ["HLL";"Grammar"]
.sub "integer"  :subid("61_1295995577.546") :method :outer("11_1295995577.546")
.annotate 'line', 31
    .local string rx183_tgt
    .local int rx183_pos
    .local int rx183_off
    .local int rx183_eos
    .local int rx183_rep
    .local pmc rx183_cur
    .local pmc rx183_debug
    (rx183_cur, rx183_pos, rx183_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx183_cur
    .local pmc match
    .lex "$/", match
    length rx183_eos, rx183_tgt
    gt rx183_pos, rx183_eos, rx183_done
    set rx183_off, 0
    lt rx183_pos, 2, rx183_start
    sub rx183_off, rx183_pos, 1
    substr rx183_tgt, rx183_tgt, rx183_off
  rx183_start:
    eq $I10, 1, rx183_restart
    if_null rx183_debug, debug_195
    rx183_cur."!cursor_debug"("START", "integer")
  debug_195:
    $I10 = self.'from'()
    ne $I10, -1, rxscan191_done
    goto rxscan191_scan
  rxscan191_loop:
    ($P10) = rx183_cur."from"()
    inc $P10
    set rx183_pos, $P10
    ge rx183_pos, rx183_eos, rxscan191_done
  rxscan191_scan:
    set_addr $I10, rxscan191_loop
    rx183_cur."!mark_push"(0, rx183_pos, $I10)
  rxscan191_done:
  alt192_0:
.annotate 'line', 59
    set_addr $I10, alt192_1
    rx183_cur."!mark_push"(0, rx183_pos, $I10)
.annotate 'line', 60
  # rx literal  "0"
    add $I11, rx183_pos, 1
    gt $I11, rx183_eos, rx183_fail
    sub $I11, rx183_pos, rx183_off
    ord $I11, rx183_tgt, $I11
    ne $I11, 48, rx183_fail
    add rx183_pos, 1
  alt193_0:
    set_addr $I10, alt193_1
    rx183_cur."!mark_push"(0, rx183_pos, $I10)
  # rx literal  "b"
    add $I11, rx183_pos, 1
    gt $I11, rx183_eos, rx183_fail
    sub $I11, rx183_pos, rx183_off
    ord $I11, rx183_tgt, $I11
    ne $I11, 98, rx183_fail
    add rx183_pos, 1
  # rx subrule "binint" subtype=capture negate=
    rx183_cur."!cursor_pos"(rx183_pos)
    $P10 = rx183_cur."binint"()
    unless $P10, rx183_fail
    rx183_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=binint")
    rx183_pos = $P10."pos"()
    goto alt193_end
  alt193_1:
    set_addr $I10, alt193_2
    rx183_cur."!mark_push"(0, rx183_pos, $I10)
.annotate 'line', 61
  # rx literal  "o"
    add $I11, rx183_pos, 1
    gt $I11, rx183_eos, rx183_fail
    sub $I11, rx183_pos, rx183_off
    ord $I11, rx183_tgt, $I11
    ne $I11, 111, rx183_fail
    add rx183_pos, 1
  # rx subrule "octint" subtype=capture negate=
    rx183_cur."!cursor_pos"(rx183_pos)
    $P10 = rx183_cur."octint"()
    unless $P10, rx183_fail
    rx183_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=octint")
    rx183_pos = $P10."pos"()
    goto alt193_end
  alt193_2:
    set_addr $I10, alt193_3
    rx183_cur."!mark_push"(0, rx183_pos, $I10)
.annotate 'line', 62
  # rx literal  "x"
    add $I11, rx183_pos, 1
    gt $I11, rx183_eos, rx183_fail
    sub $I11, rx183_pos, rx183_off
    ord $I11, rx183_tgt, $I11
    ne $I11, 120, rx183_fail
    add rx183_pos, 1
  # rx subrule "hexint" subtype=capture negate=
    rx183_cur."!cursor_pos"(rx183_pos)
    $P10 = rx183_cur."hexint"()
    unless $P10, rx183_fail
    rx183_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=hexint")
    rx183_pos = $P10."pos"()
    goto alt193_end
  alt193_3:
.annotate 'line', 63
  # rx literal  "d"
    add $I11, rx183_pos, 1
    gt $I11, rx183_eos, rx183_fail
    sub $I11, rx183_pos, rx183_off
    ord $I11, rx183_tgt, $I11
    ne $I11, 100, rx183_fail
    add rx183_pos, 1
  # rx subrule "decint" subtype=capture negate=
    rx183_cur."!cursor_pos"(rx183_pos)
    $P10 = rx183_cur."decint"()
    unless $P10, rx183_fail
    rx183_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=decint")
    rx183_pos = $P10."pos"()
  alt193_end:
.annotate 'line', 60
    goto alt192_end
  alt192_1:
.annotate 'line', 65
  # rx subrule "decint" subtype=capture negate=
    rx183_cur."!cursor_pos"(rx183_pos)
    $P10 = rx183_cur."decint"()
    unless $P10, rx183_fail
    rx183_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=decint")
    rx183_pos = $P10."pos"()
  alt192_end:
.annotate 'line', 58
  # rx pass
    rx183_cur."!cursor_pass"(rx183_pos, "integer")
    if_null rx183_debug, debug_196
    rx183_cur."!cursor_debug"("PASS", "integer", " at pos=", rx183_pos)
  debug_196:
    .return (rx183_cur)
  rx183_restart:
.annotate 'line', 31
    if_null rx183_debug, debug_197
    rx183_cur."!cursor_debug"("NEXT", "integer")
  debug_197:
  rx183_fail:
    (rx183_rep, rx183_pos, $I10, $P10) = rx183_cur."!mark_fail"(0)
    lt rx183_pos, -1, rx183_done
    eq rx183_pos, -1, rx183_fail
    jump $I10
  rx183_done:
    rx183_cur."!cursor_fail"()
    if_null rx183_debug, debug_198
    rx183_cur."!cursor_debug"("FAIL", "integer")
  debug_198:
    .return (rx183_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__integer"  :nsentry("!PREFIX__integer") :subid("62_1295995577.546") :method
.annotate 'line', 31
    $P185 = self."!PREFIX__!subrule"("decint", "")
    $P186 = self."!PREFIX__!subrule"("decint", "0d")
    $P187 = self."!PREFIX__!subrule"("hexint", "0x")
    $P188 = self."!PREFIX__!subrule"("octint", "0o")
    $P189 = self."!PREFIX__!subrule"("binint", "0b")
    new $P190, "ResizablePMCArray"
    push $P190, $P185
    push $P190, $P186
    push $P190, $P187
    push $P190, $P188
    push $P190, $P189
    .return ($P190)
.end


.namespace ["HLL";"Grammar"]
.sub "dec_number"  :subid("63_1295995577.546") :method :outer("11_1295995577.546")
.annotate 'line', 31
    .local string rx195_tgt
    .local int rx195_pos
    .local int rx195_off
    .local int rx195_eos
    .local int rx195_rep
    .local pmc rx195_cur
    .local pmc rx195_debug
    (rx195_cur, rx195_pos, rx195_tgt, $I10) = self."!cursor_start"()
    rx195_cur."!cursor_caparray"("escale")
    .lex unicode:"$\x{a2}", rx195_cur
    .local pmc match
    .lex "$/", match
    length rx195_eos, rx195_tgt
    gt rx195_pos, rx195_eos, rx195_done
    set rx195_off, 0
    lt rx195_pos, 2, rx195_start
    sub rx195_off, rx195_pos, 1
    substr rx195_tgt, rx195_tgt, rx195_off
  rx195_start:
    eq $I10, 1, rx195_restart
    if_null rx195_debug, debug_199
    rx195_cur."!cursor_debug"("START", "dec_number")
  debug_199:
    $I10 = self.'from'()
    ne $I10, -1, rxscan198_done
    goto rxscan198_scan
  rxscan198_loop:
    ($P10) = rx195_cur."from"()
    inc $P10
    set rx195_pos, $P10
    ge rx195_pos, rx195_eos, rxscan198_done
  rxscan198_scan:
    set_addr $I10, rxscan198_loop
    rx195_cur."!mark_push"(0, rx195_pos, $I10)
  rxscan198_done:
  alt199_0:
.annotate 'line', 69
    set_addr $I10, alt199_1
    rx195_cur."!mark_push"(0, rx195_pos, $I10)
.annotate 'line', 70
  # rx subcapture "coeff"
    set_addr $I10, rxcap_200_fail
    rx195_cur."!mark_push"(0, rx195_pos, $I10)
  # rx literal  "."
    add $I11, rx195_pos, 1
    gt $I11, rx195_eos, rx195_fail
    sub $I11, rx195_pos, rx195_off
    ord $I11, rx195_tgt, $I11
    ne $I11, 46, rx195_fail
    add rx195_pos, 1
  # rx charclass_q d r 1..-1
    sub $I10, rx195_pos, rx195_off
    find_not_cclass $I11, 8, rx195_tgt, $I10, rx195_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx195_fail
    add rx195_pos, rx195_off, $I11
    set_addr $I10, rxcap_200_fail
    ($I12, $I11) = rx195_cur."!mark_peek"($I10)
    rx195_cur."!cursor_pos"($I11)
    ($P10) = rx195_cur."!cursor_start"()
    $P10."!cursor_pass"(rx195_pos, "")
    rx195_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("coeff")
    goto rxcap_200_done
  rxcap_200_fail:
    goto rx195_fail
  rxcap_200_done:
  # rx rxquantr201 ** 0..1
    set_addr $I10, rxquantr201_done
    rx195_cur."!mark_push"(0, rx195_pos, $I10)
  rxquantr201_loop:
  # rx subrule "escale" subtype=capture negate=
    rx195_cur."!cursor_pos"(rx195_pos)
    $P10 = rx195_cur."escale"()
    unless $P10, rx195_fail
    goto rxsubrule202_pass
  rxsubrule202_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx195_fail
  rxsubrule202_pass:
    set_addr $I10, rxsubrule202_back
    rx195_cur."!mark_push"(0, rx195_pos, $I10, $P10)
    $P10."!cursor_names"("escale")
    rx195_pos = $P10."pos"()
    set_addr $I10, rxquantr201_done
    (rx195_rep) = rx195_cur."!mark_commit"($I10)
  rxquantr201_done:
    goto alt199_end
  alt199_1:
    set_addr $I10, alt199_2
    rx195_cur."!mark_push"(0, rx195_pos, $I10)
.annotate 'line', 71
  # rx subcapture "coeff"
    set_addr $I10, rxcap_203_fail
    rx195_cur."!mark_push"(0, rx195_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx195_pos, rx195_off
    find_not_cclass $I11, 8, rx195_tgt, $I10, rx195_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx195_fail
    add rx195_pos, rx195_off, $I11
  # rx literal  "."
    add $I11, rx195_pos, 1
    gt $I11, rx195_eos, rx195_fail
    sub $I11, rx195_pos, rx195_off
    ord $I11, rx195_tgt, $I11
    ne $I11, 46, rx195_fail
    add rx195_pos, 1
  # rx charclass_q d r 1..-1
    sub $I10, rx195_pos, rx195_off
    find_not_cclass $I11, 8, rx195_tgt, $I10, rx195_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx195_fail
    add rx195_pos, rx195_off, $I11
    set_addr $I10, rxcap_203_fail
    ($I12, $I11) = rx195_cur."!mark_peek"($I10)
    rx195_cur."!cursor_pos"($I11)
    ($P10) = rx195_cur."!cursor_start"()
    $P10."!cursor_pass"(rx195_pos, "")
    rx195_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("coeff")
    goto rxcap_203_done
  rxcap_203_fail:
    goto rx195_fail
  rxcap_203_done:
  # rx rxquantr204 ** 0..1
    set_addr $I10, rxquantr204_done
    rx195_cur."!mark_push"(0, rx195_pos, $I10)
  rxquantr204_loop:
  # rx subrule "escale" subtype=capture negate=
    rx195_cur."!cursor_pos"(rx195_pos)
    $P10 = rx195_cur."escale"()
    unless $P10, rx195_fail
    goto rxsubrule205_pass
  rxsubrule205_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx195_fail
  rxsubrule205_pass:
    set_addr $I10, rxsubrule205_back
    rx195_cur."!mark_push"(0, rx195_pos, $I10, $P10)
    $P10."!cursor_names"("escale")
    rx195_pos = $P10."pos"()
    set_addr $I10, rxquantr204_done
    (rx195_rep) = rx195_cur."!mark_commit"($I10)
  rxquantr204_done:
    goto alt199_end
  alt199_2:
.annotate 'line', 72
  # rx subcapture "coeff"
    set_addr $I10, rxcap_206_fail
    rx195_cur."!mark_push"(0, rx195_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx195_pos, rx195_off
    find_not_cclass $I11, 8, rx195_tgt, $I10, rx195_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx195_fail
    add rx195_pos, rx195_off, $I11
    set_addr $I10, rxcap_206_fail
    ($I12, $I11) = rx195_cur."!mark_peek"($I10)
    rx195_cur."!cursor_pos"($I11)
    ($P10) = rx195_cur."!cursor_start"()
    $P10."!cursor_pass"(rx195_pos, "")
    rx195_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("coeff")
    goto rxcap_206_done
  rxcap_206_fail:
    goto rx195_fail
  rxcap_206_done:
  # rx subrule "escale" subtype=capture negate=
    rx195_cur."!cursor_pos"(rx195_pos)
    $P10 = rx195_cur."escale"()
    unless $P10, rx195_fail
    rx195_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("escale")
    rx195_pos = $P10."pos"()
  alt199_end:
.annotate 'line', 69
  # rx pass
    rx195_cur."!cursor_pass"(rx195_pos, "dec_number")
    if_null rx195_debug, debug_200
    rx195_cur."!cursor_debug"("PASS", "dec_number", " at pos=", rx195_pos)
  debug_200:
    .return (rx195_cur)
  rx195_restart:
.annotate 'line', 31
    if_null rx195_debug, debug_201
    rx195_cur."!cursor_debug"("NEXT", "dec_number")
  debug_201:
  rx195_fail:
    (rx195_rep, rx195_pos, $I10, $P10) = rx195_cur."!mark_fail"(0)
    lt rx195_pos, -1, rx195_done
    eq rx195_pos, -1, rx195_fail
    jump $I10
  rx195_done:
    rx195_cur."!cursor_fail"()
    if_null rx195_debug, debug_202
    rx195_cur."!cursor_debug"("FAIL", "dec_number")
  debug_202:
    .return (rx195_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__dec_number"  :nsentry("!PREFIX__dec_number") :subid("64_1295995577.546") :method
.annotate 'line', 31
    new $P197, "ResizablePMCArray"
    push $P197, ""
    push $P197, ""
    push $P197, "."
    .return ($P197)
.end


.namespace ["HLL";"Grammar"]
.sub "escale"  :subid("65_1295995577.546") :method :outer("11_1295995577.546")
.annotate 'line', 31
    .local string rx208_tgt
    .local int rx208_pos
    .local int rx208_off
    .local int rx208_eos
    .local int rx208_rep
    .local pmc rx208_cur
    .local pmc rx208_debug
    (rx208_cur, rx208_pos, rx208_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx208_cur
    .local pmc match
    .lex "$/", match
    length rx208_eos, rx208_tgt
    gt rx208_pos, rx208_eos, rx208_done
    set rx208_off, 0
    lt rx208_pos, 2, rx208_start
    sub rx208_off, rx208_pos, 1
    substr rx208_tgt, rx208_tgt, rx208_off
  rx208_start:
    eq $I10, 1, rx208_restart
    if_null rx208_debug, debug_203
    rx208_cur."!cursor_debug"("START", "escale")
  debug_203:
    $I10 = self.'from'()
    ne $I10, -1, rxscan211_done
    goto rxscan211_scan
  rxscan211_loop:
    ($P10) = rx208_cur."from"()
    inc $P10
    set rx208_pos, $P10
    ge rx208_pos, rx208_eos, rxscan211_done
  rxscan211_scan:
    set_addr $I10, rxscan211_loop
    rx208_cur."!mark_push"(0, rx208_pos, $I10)
  rxscan211_done:
.annotate 'line', 75
  # rx enumcharlist negate=0 
    ge rx208_pos, rx208_eos, rx208_fail
    sub $I10, rx208_pos, rx208_off
    substr $S10, rx208_tgt, $I10, 1
    index $I11, "Ee", $S10
    lt $I11, 0, rx208_fail
    inc rx208_pos
  # rx enumcharlist_q negate=0  r 0..1
    sub $I10, rx208_pos, rx208_off
    set rx208_rep, 0
    sub $I12, rx208_eos, rx208_pos
    le $I12, 1, rxenumcharlistq212_loop
    set $I12, 1
  rxenumcharlistq212_loop:
    le $I12, 0, rxenumcharlistq212_done
    substr $S10, rx208_tgt, $I10, 1
    index $I11, "+-", $S10
    lt $I11, 0, rxenumcharlistq212_done
    inc rx208_rep
  rxenumcharlistq212_done:
    add rx208_pos, rx208_pos, rx208_rep
  # rx charclass_q d r 1..-1
    sub $I10, rx208_pos, rx208_off
    find_not_cclass $I11, 8, rx208_tgt, $I10, rx208_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx208_fail
    add rx208_pos, rx208_off, $I11
  # rx pass
    rx208_cur."!cursor_pass"(rx208_pos, "escale")
    if_null rx208_debug, debug_204
    rx208_cur."!cursor_debug"("PASS", "escale", " at pos=", rx208_pos)
  debug_204:
    .return (rx208_cur)
  rx208_restart:
.annotate 'line', 31
    if_null rx208_debug, debug_205
    rx208_cur."!cursor_debug"("NEXT", "escale")
  debug_205:
  rx208_fail:
    (rx208_rep, rx208_pos, $I10, $P10) = rx208_cur."!mark_fail"(0)
    lt rx208_pos, -1, rx208_done
    eq rx208_pos, -1, rx208_fail
    jump $I10
  rx208_done:
    rx208_cur."!cursor_fail"()
    if_null rx208_debug, debug_206
    rx208_cur."!cursor_debug"("FAIL", "escale")
  debug_206:
    .return (rx208_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__escale"  :nsentry("!PREFIX__escale") :subid("66_1295995577.546") :method
.annotate 'line', 31
    new $P210, "ResizablePMCArray"
    push $P210, "e"
    push $P210, "E"
    .return ($P210)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_escape"  :subid("67_1295995577.546")
    .param pmc param_214
.annotate 'line', 77
    .lex "self", param_214
    $P215 = param_214."!protoregex"("quote_escape")
    .return ($P215)
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape"  :subid("68_1295995577.546")
    .param pmc param_217
.annotate 'line', 77
    .lex "self", param_217
    $P218 = param_217."!PREFIX__!protoregex"("quote_escape")
    .return ($P218)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<backslash>"  :subid("69_1295995577.546") :method :outer("11_1295995577.546")
.annotate 'line', 31
    .local string rx220_tgt
    .local int rx220_pos
    .local int rx220_off
    .local int rx220_eos
    .local int rx220_rep
    .local pmc rx220_cur
    .local pmc rx220_debug
    (rx220_cur, rx220_pos, rx220_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx220_cur
    .local pmc match
    .lex "$/", match
    length rx220_eos, rx220_tgt
    gt rx220_pos, rx220_eos, rx220_done
    set rx220_off, 0
    lt rx220_pos, 2, rx220_start
    sub rx220_off, rx220_pos, 1
    substr rx220_tgt, rx220_tgt, rx220_off
  rx220_start:
    eq $I10, 1, rx220_restart
    if_null rx220_debug, debug_207
    rx220_cur."!cursor_debug"("START", "quote_escape:sym<backslash>")
  debug_207:
    $I10 = self.'from'()
    ne $I10, -1, rxscan223_done
    goto rxscan223_scan
  rxscan223_loop:
    ($P10) = rx220_cur."from"()
    inc $P10
    set rx220_pos, $P10
    ge rx220_pos, rx220_eos, rxscan223_done
  rxscan223_scan:
    set_addr $I10, rxscan223_loop
    rx220_cur."!mark_push"(0, rx220_pos, $I10)
  rxscan223_done:
.annotate 'line', 78
  # rx literal  "\\\\"
    add $I11, rx220_pos, 2
    gt $I11, rx220_eos, rx220_fail
    sub $I11, rx220_pos, rx220_off
    substr $S10, rx220_tgt, $I11, 2
    ne $S10, "\\\\", rx220_fail
    add rx220_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx220_cur."!cursor_pos"(rx220_pos)
    $P10 = rx220_cur."quotemod_check"("q")
    unless $P10, rx220_fail
  # rx pass
    rx220_cur."!cursor_pass"(rx220_pos, "quote_escape:sym<backslash>")
    if_null rx220_debug, debug_208
    rx220_cur."!cursor_debug"("PASS", "quote_escape:sym<backslash>", " at pos=", rx220_pos)
  debug_208:
    .return (rx220_cur)
  rx220_restart:
.annotate 'line', 31
    if_null rx220_debug, debug_209
    rx220_cur."!cursor_debug"("NEXT", "quote_escape:sym<backslash>")
  debug_209:
  rx220_fail:
    (rx220_rep, rx220_pos, $I10, $P10) = rx220_cur."!mark_fail"(0)
    lt rx220_pos, -1, rx220_done
    eq rx220_pos, -1, rx220_fail
    jump $I10
  rx220_done:
    rx220_cur."!cursor_fail"()
    if_null rx220_debug, debug_210
    rx220_cur."!cursor_debug"("FAIL", "quote_escape:sym<backslash>")
  debug_210:
    .return (rx220_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<backslash>"  :nsentry("!PREFIX__quote_escape:sym<backslash>") :subid("70_1295995577.546") :method
.annotate 'line', 31
    new $P222, "ResizablePMCArray"
    push $P222, "\\\\"
    .return ($P222)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<stopper>"  :subid("71_1295995577.546") :method :outer("11_1295995577.546")
.annotate 'line', 31
    .local string rx225_tgt
    .local int rx225_pos
    .local int rx225_off
    .local int rx225_eos
    .local int rx225_rep
    .local pmc rx225_cur
    .local pmc rx225_debug
    (rx225_cur, rx225_pos, rx225_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx225_cur
    .local pmc match
    .lex "$/", match
    length rx225_eos, rx225_tgt
    gt rx225_pos, rx225_eos, rx225_done
    set rx225_off, 0
    lt rx225_pos, 2, rx225_start
    sub rx225_off, rx225_pos, 1
    substr rx225_tgt, rx225_tgt, rx225_off
  rx225_start:
    eq $I10, 1, rx225_restart
    if_null rx225_debug, debug_211
    rx225_cur."!cursor_debug"("START", "quote_escape:sym<stopper>")
  debug_211:
    $I10 = self.'from'()
    ne $I10, -1, rxscan228_done
    goto rxscan228_scan
  rxscan228_loop:
    ($P10) = rx225_cur."from"()
    inc $P10
    set rx225_pos, $P10
    ge rx225_pos, rx225_eos, rxscan228_done
  rxscan228_scan:
    set_addr $I10, rxscan228_loop
    rx225_cur."!mark_push"(0, rx225_pos, $I10)
  rxscan228_done:
.annotate 'line', 79
  # rx literal  "\\"
    add $I11, rx225_pos, 1
    gt $I11, rx225_eos, rx225_fail
    sub $I11, rx225_pos, rx225_off
    ord $I11, rx225_tgt, $I11
    ne $I11, 92, rx225_fail
    add rx225_pos, 1
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx225_cur."!cursor_pos"(rx225_pos)
    $P10 = rx225_cur."quotemod_check"("q")
    unless $P10, rx225_fail
  # rx subrule "stopper" subtype=capture negate=
    rx225_cur."!cursor_pos"(rx225_pos)
    $P10 = rx225_cur."stopper"()
    unless $P10, rx225_fail
    rx225_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("stopper")
    rx225_pos = $P10."pos"()
  # rx pass
    rx225_cur."!cursor_pass"(rx225_pos, "quote_escape:sym<stopper>")
    if_null rx225_debug, debug_212
    rx225_cur."!cursor_debug"("PASS", "quote_escape:sym<stopper>", " at pos=", rx225_pos)
  debug_212:
    .return (rx225_cur)
  rx225_restart:
.annotate 'line', 31
    if_null rx225_debug, debug_213
    rx225_cur."!cursor_debug"("NEXT", "quote_escape:sym<stopper>")
  debug_213:
  rx225_fail:
    (rx225_rep, rx225_pos, $I10, $P10) = rx225_cur."!mark_fail"(0)
    lt rx225_pos, -1, rx225_done
    eq rx225_pos, -1, rx225_fail
    jump $I10
  rx225_done:
    rx225_cur."!cursor_fail"()
    if_null rx225_debug, debug_214
    rx225_cur."!cursor_debug"("FAIL", "quote_escape:sym<stopper>")
  debug_214:
    .return (rx225_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<stopper>"  :nsentry("!PREFIX__quote_escape:sym<stopper>") :subid("72_1295995577.546") :method
.annotate 'line', 31
    new $P227, "ResizablePMCArray"
    push $P227, "\\"
    .return ($P227)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<bs>"  :subid("73_1295995577.546") :method :outer("11_1295995577.546")
.annotate 'line', 31
    .local string rx230_tgt
    .local int rx230_pos
    .local int rx230_off
    .local int rx230_eos
    .local int rx230_rep
    .local pmc rx230_cur
    .local pmc rx230_debug
    (rx230_cur, rx230_pos, rx230_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx230_cur
    .local pmc match
    .lex "$/", match
    length rx230_eos, rx230_tgt
    gt rx230_pos, rx230_eos, rx230_done
    set rx230_off, 0
    lt rx230_pos, 2, rx230_start
    sub rx230_off, rx230_pos, 1
    substr rx230_tgt, rx230_tgt, rx230_off
  rx230_start:
    eq $I10, 1, rx230_restart
    if_null rx230_debug, debug_215
    rx230_cur."!cursor_debug"("START", "quote_escape:sym<bs>")
  debug_215:
    $I10 = self.'from'()
    ne $I10, -1, rxscan233_done
    goto rxscan233_scan
  rxscan233_loop:
    ($P10) = rx230_cur."from"()
    inc $P10
    set rx230_pos, $P10
    ge rx230_pos, rx230_eos, rxscan233_done
  rxscan233_scan:
    set_addr $I10, rxscan233_loop
    rx230_cur."!mark_push"(0, rx230_pos, $I10)
  rxscan233_done:
.annotate 'line', 81
  # rx literal  "\\b"
    add $I11, rx230_pos, 2
    gt $I11, rx230_eos, rx230_fail
    sub $I11, rx230_pos, rx230_off
    substr $S10, rx230_tgt, $I11, 2
    ne $S10, "\\b", rx230_fail
    add rx230_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx230_cur."!cursor_pos"(rx230_pos)
    $P10 = rx230_cur."quotemod_check"("b")
    unless $P10, rx230_fail
  # rx pass
    rx230_cur."!cursor_pass"(rx230_pos, "quote_escape:sym<bs>")
    if_null rx230_debug, debug_216
    rx230_cur."!cursor_debug"("PASS", "quote_escape:sym<bs>", " at pos=", rx230_pos)
  debug_216:
    .return (rx230_cur)
  rx230_restart:
.annotate 'line', 31
    if_null rx230_debug, debug_217
    rx230_cur."!cursor_debug"("NEXT", "quote_escape:sym<bs>")
  debug_217:
  rx230_fail:
    (rx230_rep, rx230_pos, $I10, $P10) = rx230_cur."!mark_fail"(0)
    lt rx230_pos, -1, rx230_done
    eq rx230_pos, -1, rx230_fail
    jump $I10
  rx230_done:
    rx230_cur."!cursor_fail"()
    if_null rx230_debug, debug_218
    rx230_cur."!cursor_debug"("FAIL", "quote_escape:sym<bs>")
  debug_218:
    .return (rx230_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<bs>"  :nsentry("!PREFIX__quote_escape:sym<bs>") :subid("74_1295995577.546") :method
.annotate 'line', 31
    new $P232, "ResizablePMCArray"
    push $P232, "\\b"
    .return ($P232)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<nl>"  :subid("75_1295995577.546") :method :outer("11_1295995577.546")
.annotate 'line', 31
    .local string rx235_tgt
    .local int rx235_pos
    .local int rx235_off
    .local int rx235_eos
    .local int rx235_rep
    .local pmc rx235_cur
    .local pmc rx235_debug
    (rx235_cur, rx235_pos, rx235_tgt, $I10) = self."!cursor_start"()
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
    if_null rx235_debug, debug_219
    rx235_cur."!cursor_debug"("START", "quote_escape:sym<nl>")
  debug_219:
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
.annotate 'line', 82
  # rx literal  "\\n"
    add $I11, rx235_pos, 2
    gt $I11, rx235_eos, rx235_fail
    sub $I11, rx235_pos, rx235_off
    substr $S10, rx235_tgt, $I11, 2
    ne $S10, "\\n", rx235_fail
    add rx235_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx235_cur."!cursor_pos"(rx235_pos)
    $P10 = rx235_cur."quotemod_check"("b")
    unless $P10, rx235_fail
  # rx pass
    rx235_cur."!cursor_pass"(rx235_pos, "quote_escape:sym<nl>")
    if_null rx235_debug, debug_220
    rx235_cur."!cursor_debug"("PASS", "quote_escape:sym<nl>", " at pos=", rx235_pos)
  debug_220:
    .return (rx235_cur)
  rx235_restart:
.annotate 'line', 31
    if_null rx235_debug, debug_221
    rx235_cur."!cursor_debug"("NEXT", "quote_escape:sym<nl>")
  debug_221:
  rx235_fail:
    (rx235_rep, rx235_pos, $I10, $P10) = rx235_cur."!mark_fail"(0)
    lt rx235_pos, -1, rx235_done
    eq rx235_pos, -1, rx235_fail
    jump $I10
  rx235_done:
    rx235_cur."!cursor_fail"()
    if_null rx235_debug, debug_222
    rx235_cur."!cursor_debug"("FAIL", "quote_escape:sym<nl>")
  debug_222:
    .return (rx235_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<nl>"  :nsentry("!PREFIX__quote_escape:sym<nl>") :subid("76_1295995577.546") :method
.annotate 'line', 31
    new $P237, "ResizablePMCArray"
    push $P237, "\\n"
    .return ($P237)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<cr>"  :subid("77_1295995577.546") :method :outer("11_1295995577.546")
.annotate 'line', 31
    .local string rx240_tgt
    .local int rx240_pos
    .local int rx240_off
    .local int rx240_eos
    .local int rx240_rep
    .local pmc rx240_cur
    .local pmc rx240_debug
    (rx240_cur, rx240_pos, rx240_tgt, $I10) = self."!cursor_start"()
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
    if_null rx240_debug, debug_223
    rx240_cur."!cursor_debug"("START", "quote_escape:sym<cr>")
  debug_223:
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
.annotate 'line', 83
  # rx literal  "\\r"
    add $I11, rx240_pos, 2
    gt $I11, rx240_eos, rx240_fail
    sub $I11, rx240_pos, rx240_off
    substr $S10, rx240_tgt, $I11, 2
    ne $S10, "\\r", rx240_fail
    add rx240_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx240_cur."!cursor_pos"(rx240_pos)
    $P10 = rx240_cur."quotemod_check"("b")
    unless $P10, rx240_fail
  # rx pass
    rx240_cur."!cursor_pass"(rx240_pos, "quote_escape:sym<cr>")
    if_null rx240_debug, debug_224
    rx240_cur."!cursor_debug"("PASS", "quote_escape:sym<cr>", " at pos=", rx240_pos)
  debug_224:
    .return (rx240_cur)
  rx240_restart:
.annotate 'line', 31
    if_null rx240_debug, debug_225
    rx240_cur."!cursor_debug"("NEXT", "quote_escape:sym<cr>")
  debug_225:
  rx240_fail:
    (rx240_rep, rx240_pos, $I10, $P10) = rx240_cur."!mark_fail"(0)
    lt rx240_pos, -1, rx240_done
    eq rx240_pos, -1, rx240_fail
    jump $I10
  rx240_done:
    rx240_cur."!cursor_fail"()
    if_null rx240_debug, debug_226
    rx240_cur."!cursor_debug"("FAIL", "quote_escape:sym<cr>")
  debug_226:
    .return (rx240_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<cr>"  :nsentry("!PREFIX__quote_escape:sym<cr>") :subid("78_1295995577.546") :method
.annotate 'line', 31
    new $P242, "ResizablePMCArray"
    push $P242, "\\r"
    .return ($P242)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<tab>"  :subid("79_1295995577.546") :method :outer("11_1295995577.546")
.annotate 'line', 31
    .local string rx245_tgt
    .local int rx245_pos
    .local int rx245_off
    .local int rx245_eos
    .local int rx245_rep
    .local pmc rx245_cur
    .local pmc rx245_debug
    (rx245_cur, rx245_pos, rx245_tgt, $I10) = self."!cursor_start"()
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
    if_null rx245_debug, debug_227
    rx245_cur."!cursor_debug"("START", "quote_escape:sym<tab>")
  debug_227:
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
.annotate 'line', 84
  # rx literal  "\\t"
    add $I11, rx245_pos, 2
    gt $I11, rx245_eos, rx245_fail
    sub $I11, rx245_pos, rx245_off
    substr $S10, rx245_tgt, $I11, 2
    ne $S10, "\\t", rx245_fail
    add rx245_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx245_cur."!cursor_pos"(rx245_pos)
    $P10 = rx245_cur."quotemod_check"("b")
    unless $P10, rx245_fail
  # rx pass
    rx245_cur."!cursor_pass"(rx245_pos, "quote_escape:sym<tab>")
    if_null rx245_debug, debug_228
    rx245_cur."!cursor_debug"("PASS", "quote_escape:sym<tab>", " at pos=", rx245_pos)
  debug_228:
    .return (rx245_cur)
  rx245_restart:
.annotate 'line', 31
    if_null rx245_debug, debug_229
    rx245_cur."!cursor_debug"("NEXT", "quote_escape:sym<tab>")
  debug_229:
  rx245_fail:
    (rx245_rep, rx245_pos, $I10, $P10) = rx245_cur."!mark_fail"(0)
    lt rx245_pos, -1, rx245_done
    eq rx245_pos, -1, rx245_fail
    jump $I10
  rx245_done:
    rx245_cur."!cursor_fail"()
    if_null rx245_debug, debug_230
    rx245_cur."!cursor_debug"("FAIL", "quote_escape:sym<tab>")
  debug_230:
    .return (rx245_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<tab>"  :nsentry("!PREFIX__quote_escape:sym<tab>") :subid("80_1295995577.546") :method
.annotate 'line', 31
    new $P247, "ResizablePMCArray"
    push $P247, "\\t"
    .return ($P247)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<ff>"  :subid("81_1295995577.546") :method :outer("11_1295995577.546")
.annotate 'line', 31
    .local string rx250_tgt
    .local int rx250_pos
    .local int rx250_off
    .local int rx250_eos
    .local int rx250_rep
    .local pmc rx250_cur
    .local pmc rx250_debug
    (rx250_cur, rx250_pos, rx250_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx250_cur
    .local pmc match
    .lex "$/", match
    length rx250_eos, rx250_tgt
    gt rx250_pos, rx250_eos, rx250_done
    set rx250_off, 0
    lt rx250_pos, 2, rx250_start
    sub rx250_off, rx250_pos, 1
    substr rx250_tgt, rx250_tgt, rx250_off
  rx250_start:
    eq $I10, 1, rx250_restart
    if_null rx250_debug, debug_231
    rx250_cur."!cursor_debug"("START", "quote_escape:sym<ff>")
  debug_231:
    $I10 = self.'from'()
    ne $I10, -1, rxscan253_done
    goto rxscan253_scan
  rxscan253_loop:
    ($P10) = rx250_cur."from"()
    inc $P10
    set rx250_pos, $P10
    ge rx250_pos, rx250_eos, rxscan253_done
  rxscan253_scan:
    set_addr $I10, rxscan253_loop
    rx250_cur."!mark_push"(0, rx250_pos, $I10)
  rxscan253_done:
.annotate 'line', 85
  # rx literal  "\\f"
    add $I11, rx250_pos, 2
    gt $I11, rx250_eos, rx250_fail
    sub $I11, rx250_pos, rx250_off
    substr $S10, rx250_tgt, $I11, 2
    ne $S10, "\\f", rx250_fail
    add rx250_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx250_cur."!cursor_pos"(rx250_pos)
    $P10 = rx250_cur."quotemod_check"("b")
    unless $P10, rx250_fail
  # rx pass
    rx250_cur."!cursor_pass"(rx250_pos, "quote_escape:sym<ff>")
    if_null rx250_debug, debug_232
    rx250_cur."!cursor_debug"("PASS", "quote_escape:sym<ff>", " at pos=", rx250_pos)
  debug_232:
    .return (rx250_cur)
  rx250_restart:
.annotate 'line', 31
    if_null rx250_debug, debug_233
    rx250_cur."!cursor_debug"("NEXT", "quote_escape:sym<ff>")
  debug_233:
  rx250_fail:
    (rx250_rep, rx250_pos, $I10, $P10) = rx250_cur."!mark_fail"(0)
    lt rx250_pos, -1, rx250_done
    eq rx250_pos, -1, rx250_fail
    jump $I10
  rx250_done:
    rx250_cur."!cursor_fail"()
    if_null rx250_debug, debug_234
    rx250_cur."!cursor_debug"("FAIL", "quote_escape:sym<ff>")
  debug_234:
    .return (rx250_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<ff>"  :nsentry("!PREFIX__quote_escape:sym<ff>") :subid("82_1295995577.546") :method
.annotate 'line', 31
    new $P252, "ResizablePMCArray"
    push $P252, "\\f"
    .return ($P252)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<esc>"  :subid("83_1295995577.546") :method :outer("11_1295995577.546")
.annotate 'line', 31
    .local string rx255_tgt
    .local int rx255_pos
    .local int rx255_off
    .local int rx255_eos
    .local int rx255_rep
    .local pmc rx255_cur
    .local pmc rx255_debug
    (rx255_cur, rx255_pos, rx255_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx255_cur
    .local pmc match
    .lex "$/", match
    length rx255_eos, rx255_tgt
    gt rx255_pos, rx255_eos, rx255_done
    set rx255_off, 0
    lt rx255_pos, 2, rx255_start
    sub rx255_off, rx255_pos, 1
    substr rx255_tgt, rx255_tgt, rx255_off
  rx255_start:
    eq $I10, 1, rx255_restart
    if_null rx255_debug, debug_235
    rx255_cur."!cursor_debug"("START", "quote_escape:sym<esc>")
  debug_235:
    $I10 = self.'from'()
    ne $I10, -1, rxscan258_done
    goto rxscan258_scan
  rxscan258_loop:
    ($P10) = rx255_cur."from"()
    inc $P10
    set rx255_pos, $P10
    ge rx255_pos, rx255_eos, rxscan258_done
  rxscan258_scan:
    set_addr $I10, rxscan258_loop
    rx255_cur."!mark_push"(0, rx255_pos, $I10)
  rxscan258_done:
.annotate 'line', 86
  # rx literal  "\\e"
    add $I11, rx255_pos, 2
    gt $I11, rx255_eos, rx255_fail
    sub $I11, rx255_pos, rx255_off
    substr $S10, rx255_tgt, $I11, 2
    ne $S10, "\\e", rx255_fail
    add rx255_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx255_cur."!cursor_pos"(rx255_pos)
    $P10 = rx255_cur."quotemod_check"("b")
    unless $P10, rx255_fail
  # rx pass
    rx255_cur."!cursor_pass"(rx255_pos, "quote_escape:sym<esc>")
    if_null rx255_debug, debug_236
    rx255_cur."!cursor_debug"("PASS", "quote_escape:sym<esc>", " at pos=", rx255_pos)
  debug_236:
    .return (rx255_cur)
  rx255_restart:
.annotate 'line', 31
    if_null rx255_debug, debug_237
    rx255_cur."!cursor_debug"("NEXT", "quote_escape:sym<esc>")
  debug_237:
  rx255_fail:
    (rx255_rep, rx255_pos, $I10, $P10) = rx255_cur."!mark_fail"(0)
    lt rx255_pos, -1, rx255_done
    eq rx255_pos, -1, rx255_fail
    jump $I10
  rx255_done:
    rx255_cur."!cursor_fail"()
    if_null rx255_debug, debug_238
    rx255_cur."!cursor_debug"("FAIL", "quote_escape:sym<esc>")
  debug_238:
    .return (rx255_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<esc>"  :nsentry("!PREFIX__quote_escape:sym<esc>") :subid("84_1295995577.546") :method
.annotate 'line', 31
    new $P257, "ResizablePMCArray"
    push $P257, "\\e"
    .return ($P257)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<hex>"  :subid("85_1295995577.546") :method :outer("11_1295995577.546")
.annotate 'line', 31
    .local string rx260_tgt
    .local int rx260_pos
    .local int rx260_off
    .local int rx260_eos
    .local int rx260_rep
    .local pmc rx260_cur
    .local pmc rx260_debug
    (rx260_cur, rx260_pos, rx260_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx260_cur
    .local pmc match
    .lex "$/", match
    length rx260_eos, rx260_tgt
    gt rx260_pos, rx260_eos, rx260_done
    set rx260_off, 0
    lt rx260_pos, 2, rx260_start
    sub rx260_off, rx260_pos, 1
    substr rx260_tgt, rx260_tgt, rx260_off
  rx260_start:
    eq $I10, 1, rx260_restart
    if_null rx260_debug, debug_239
    rx260_cur."!cursor_debug"("START", "quote_escape:sym<hex>")
  debug_239:
    $I10 = self.'from'()
    ne $I10, -1, rxscan263_done
    goto rxscan263_scan
  rxscan263_loop:
    ($P10) = rx260_cur."from"()
    inc $P10
    set rx260_pos, $P10
    ge rx260_pos, rx260_eos, rxscan263_done
  rxscan263_scan:
    set_addr $I10, rxscan263_loop
    rx260_cur."!mark_push"(0, rx260_pos, $I10)
  rxscan263_done:
.annotate 'line', 88
  # rx literal  unicode:"\\x"
    add $I11, rx260_pos, 2
    gt $I11, rx260_eos, rx260_fail
    sub $I11, rx260_pos, rx260_off
    substr $S10, rx260_tgt, $I11, 2
    ne $S10, unicode:"\\x", rx260_fail
    add rx260_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx260_cur."!cursor_pos"(rx260_pos)
    $P10 = rx260_cur."quotemod_check"("b")
    unless $P10, rx260_fail
  alt264_0:
.annotate 'line', 89
    set_addr $I10, alt264_1
    rx260_cur."!mark_push"(0, rx260_pos, $I10)
  # rx subrule "hexint" subtype=capture negate=
    rx260_cur."!cursor_pos"(rx260_pos)
    $P10 = rx260_cur."hexint"()
    unless $P10, rx260_fail
    rx260_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexint")
    rx260_pos = $P10."pos"()
    goto alt264_end
  alt264_1:
  # rx literal  "["
    add $I11, rx260_pos, 1
    gt $I11, rx260_eos, rx260_fail
    sub $I11, rx260_pos, rx260_off
    ord $I11, rx260_tgt, $I11
    ne $I11, 91, rx260_fail
    add rx260_pos, 1
  # rx subrule "hexints" subtype=capture negate=
    rx260_cur."!cursor_pos"(rx260_pos)
    $P10 = rx260_cur."hexints"()
    unless $P10, rx260_fail
    rx260_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexints")
    rx260_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx260_pos, 1
    gt $I11, rx260_eos, rx260_fail
    sub $I11, rx260_pos, rx260_off
    ord $I11, rx260_tgt, $I11
    ne $I11, 93, rx260_fail
    add rx260_pos, 1
  alt264_end:
.annotate 'line', 87
  # rx pass
    rx260_cur."!cursor_pass"(rx260_pos, "quote_escape:sym<hex>")
    if_null rx260_debug, debug_240
    rx260_cur."!cursor_debug"("PASS", "quote_escape:sym<hex>", " at pos=", rx260_pos)
  debug_240:
    .return (rx260_cur)
  rx260_restart:
.annotate 'line', 31
    if_null rx260_debug, debug_241
    rx260_cur."!cursor_debug"("NEXT", "quote_escape:sym<hex>")
  debug_241:
  rx260_fail:
    (rx260_rep, rx260_pos, $I10, $P10) = rx260_cur."!mark_fail"(0)
    lt rx260_pos, -1, rx260_done
    eq rx260_pos, -1, rx260_fail
    jump $I10
  rx260_done:
    rx260_cur."!cursor_fail"()
    if_null rx260_debug, debug_242
    rx260_cur."!cursor_debug"("FAIL", "quote_escape:sym<hex>")
  debug_242:
    .return (rx260_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<hex>"  :nsentry("!PREFIX__quote_escape:sym<hex>") :subid("86_1295995577.546") :method
.annotate 'line', 31
    new $P262, "ResizablePMCArray"
    push $P262, unicode:"\\x"
    .return ($P262)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<oct>"  :subid("87_1295995577.546") :method :outer("11_1295995577.546")
.annotate 'line', 31
    .local string rx266_tgt
    .local int rx266_pos
    .local int rx266_off
    .local int rx266_eos
    .local int rx266_rep
    .local pmc rx266_cur
    .local pmc rx266_debug
    (rx266_cur, rx266_pos, rx266_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx266_cur
    .local pmc match
    .lex "$/", match
    length rx266_eos, rx266_tgt
    gt rx266_pos, rx266_eos, rx266_done
    set rx266_off, 0
    lt rx266_pos, 2, rx266_start
    sub rx266_off, rx266_pos, 1
    substr rx266_tgt, rx266_tgt, rx266_off
  rx266_start:
    eq $I10, 1, rx266_restart
    if_null rx266_debug, debug_243
    rx266_cur."!cursor_debug"("START", "quote_escape:sym<oct>")
  debug_243:
    $I10 = self.'from'()
    ne $I10, -1, rxscan269_done
    goto rxscan269_scan
  rxscan269_loop:
    ($P10) = rx266_cur."from"()
    inc $P10
    set rx266_pos, $P10
    ge rx266_pos, rx266_eos, rxscan269_done
  rxscan269_scan:
    set_addr $I10, rxscan269_loop
    rx266_cur."!mark_push"(0, rx266_pos, $I10)
  rxscan269_done:
.annotate 'line', 92
  # rx literal  "\\o"
    add $I11, rx266_pos, 2
    gt $I11, rx266_eos, rx266_fail
    sub $I11, rx266_pos, rx266_off
    substr $S10, rx266_tgt, $I11, 2
    ne $S10, "\\o", rx266_fail
    add rx266_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx266_cur."!cursor_pos"(rx266_pos)
    $P10 = rx266_cur."quotemod_check"("b")
    unless $P10, rx266_fail
  alt270_0:
.annotate 'line', 93
    set_addr $I10, alt270_1
    rx266_cur."!mark_push"(0, rx266_pos, $I10)
  # rx subrule "octint" subtype=capture negate=
    rx266_cur."!cursor_pos"(rx266_pos)
    $P10 = rx266_cur."octint"()
    unless $P10, rx266_fail
    rx266_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octint")
    rx266_pos = $P10."pos"()
    goto alt270_end
  alt270_1:
  # rx literal  "["
    add $I11, rx266_pos, 1
    gt $I11, rx266_eos, rx266_fail
    sub $I11, rx266_pos, rx266_off
    ord $I11, rx266_tgt, $I11
    ne $I11, 91, rx266_fail
    add rx266_pos, 1
  # rx subrule "octints" subtype=capture negate=
    rx266_cur."!cursor_pos"(rx266_pos)
    $P10 = rx266_cur."octints"()
    unless $P10, rx266_fail
    rx266_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octints")
    rx266_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx266_pos, 1
    gt $I11, rx266_eos, rx266_fail
    sub $I11, rx266_pos, rx266_off
    ord $I11, rx266_tgt, $I11
    ne $I11, 93, rx266_fail
    add rx266_pos, 1
  alt270_end:
.annotate 'line', 91
  # rx pass
    rx266_cur."!cursor_pass"(rx266_pos, "quote_escape:sym<oct>")
    if_null rx266_debug, debug_244
    rx266_cur."!cursor_debug"("PASS", "quote_escape:sym<oct>", " at pos=", rx266_pos)
  debug_244:
    .return (rx266_cur)
  rx266_restart:
.annotate 'line', 31
    if_null rx266_debug, debug_245
    rx266_cur."!cursor_debug"("NEXT", "quote_escape:sym<oct>")
  debug_245:
  rx266_fail:
    (rx266_rep, rx266_pos, $I10, $P10) = rx266_cur."!mark_fail"(0)
    lt rx266_pos, -1, rx266_done
    eq rx266_pos, -1, rx266_fail
    jump $I10
  rx266_done:
    rx266_cur."!cursor_fail"()
    if_null rx266_debug, debug_246
    rx266_cur."!cursor_debug"("FAIL", "quote_escape:sym<oct>")
  debug_246:
    .return (rx266_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<oct>"  :nsentry("!PREFIX__quote_escape:sym<oct>") :subid("88_1295995577.546") :method
.annotate 'line', 31
    new $P268, "ResizablePMCArray"
    push $P268, "\\o"
    .return ($P268)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<chr>"  :subid("89_1295995577.546") :method :outer("11_1295995577.546")
.annotate 'line', 31
    .local string rx272_tgt
    .local int rx272_pos
    .local int rx272_off
    .local int rx272_eos
    .local int rx272_rep
    .local pmc rx272_cur
    .local pmc rx272_debug
    (rx272_cur, rx272_pos, rx272_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx272_cur
    .local pmc match
    .lex "$/", match
    length rx272_eos, rx272_tgt
    gt rx272_pos, rx272_eos, rx272_done
    set rx272_off, 0
    lt rx272_pos, 2, rx272_start
    sub rx272_off, rx272_pos, 1
    substr rx272_tgt, rx272_tgt, rx272_off
  rx272_start:
    eq $I10, 1, rx272_restart
    if_null rx272_debug, debug_247
    rx272_cur."!cursor_debug"("START", "quote_escape:sym<chr>")
  debug_247:
    $I10 = self.'from'()
    ne $I10, -1, rxscan275_done
    goto rxscan275_scan
  rxscan275_loop:
    ($P10) = rx272_cur."from"()
    inc $P10
    set rx272_pos, $P10
    ge rx272_pos, rx272_eos, rxscan275_done
  rxscan275_scan:
    set_addr $I10, rxscan275_loop
    rx272_cur."!mark_push"(0, rx272_pos, $I10)
  rxscan275_done:
.annotate 'line', 95
  # rx literal  "\\c"
    add $I11, rx272_pos, 2
    gt $I11, rx272_eos, rx272_fail
    sub $I11, rx272_pos, rx272_off
    substr $S10, rx272_tgt, $I11, 2
    ne $S10, "\\c", rx272_fail
    add rx272_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx272_cur."!cursor_pos"(rx272_pos)
    $P10 = rx272_cur."quotemod_check"("b")
    unless $P10, rx272_fail
  # rx subrule "charspec" subtype=capture negate=
    rx272_cur."!cursor_pos"(rx272_pos)
    $P10 = rx272_cur."charspec"()
    unless $P10, rx272_fail
    rx272_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charspec")
    rx272_pos = $P10."pos"()
  # rx pass
    rx272_cur."!cursor_pass"(rx272_pos, "quote_escape:sym<chr>")
    if_null rx272_debug, debug_248
    rx272_cur."!cursor_debug"("PASS", "quote_escape:sym<chr>", " at pos=", rx272_pos)
  debug_248:
    .return (rx272_cur)
  rx272_restart:
.annotate 'line', 31
    if_null rx272_debug, debug_249
    rx272_cur."!cursor_debug"("NEXT", "quote_escape:sym<chr>")
  debug_249:
  rx272_fail:
    (rx272_rep, rx272_pos, $I10, $P10) = rx272_cur."!mark_fail"(0)
    lt rx272_pos, -1, rx272_done
    eq rx272_pos, -1, rx272_fail
    jump $I10
  rx272_done:
    rx272_cur."!cursor_fail"()
    if_null rx272_debug, debug_250
    rx272_cur."!cursor_debug"("FAIL", "quote_escape:sym<chr>")
  debug_250:
    .return (rx272_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<chr>"  :nsentry("!PREFIX__quote_escape:sym<chr>") :subid("90_1295995577.546") :method
.annotate 'line', 31
    new $P274, "ResizablePMCArray"
    push $P274, "\\c"
    .return ($P274)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<0>"  :subid("91_1295995577.546") :method :outer("11_1295995577.546")
.annotate 'line', 31
    .local string rx277_tgt
    .local int rx277_pos
    .local int rx277_off
    .local int rx277_eos
    .local int rx277_rep
    .local pmc rx277_cur
    .local pmc rx277_debug
    (rx277_cur, rx277_pos, rx277_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx277_cur
    .local pmc match
    .lex "$/", match
    length rx277_eos, rx277_tgt
    gt rx277_pos, rx277_eos, rx277_done
    set rx277_off, 0
    lt rx277_pos, 2, rx277_start
    sub rx277_off, rx277_pos, 1
    substr rx277_tgt, rx277_tgt, rx277_off
  rx277_start:
    eq $I10, 1, rx277_restart
    if_null rx277_debug, debug_251
    rx277_cur."!cursor_debug"("START", "quote_escape:sym<0>")
  debug_251:
    $I10 = self.'from'()
    ne $I10, -1, rxscan280_done
    goto rxscan280_scan
  rxscan280_loop:
    ($P10) = rx277_cur."from"()
    inc $P10
    set rx277_pos, $P10
    ge rx277_pos, rx277_eos, rxscan280_done
  rxscan280_scan:
    set_addr $I10, rxscan280_loop
    rx277_cur."!mark_push"(0, rx277_pos, $I10)
  rxscan280_done:
.annotate 'line', 96
  # rx literal  "\\"
    add $I11, rx277_pos, 1
    gt $I11, rx277_eos, rx277_fail
    sub $I11, rx277_pos, rx277_off
    ord $I11, rx277_tgt, $I11
    ne $I11, 92, rx277_fail
    add rx277_pos, 1
  # rx subcapture "sym"
    set_addr $I10, rxcap_281_fail
    rx277_cur."!mark_push"(0, rx277_pos, $I10)
  # rx literal  "0"
    add $I11, rx277_pos, 1
    gt $I11, rx277_eos, rx277_fail
    sub $I11, rx277_pos, rx277_off
    ord $I11, rx277_tgt, $I11
    ne $I11, 48, rx277_fail
    add rx277_pos, 1
    set_addr $I10, rxcap_281_fail
    ($I12, $I11) = rx277_cur."!mark_peek"($I10)
    rx277_cur."!cursor_pos"($I11)
    ($P10) = rx277_cur."!cursor_start"()
    $P10."!cursor_pass"(rx277_pos, "")
    rx277_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_281_done
  rxcap_281_fail:
    goto rx277_fail
  rxcap_281_done:
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx277_cur."!cursor_pos"(rx277_pos)
    $P10 = rx277_cur."quotemod_check"("b")
    unless $P10, rx277_fail
  # rx pass
    rx277_cur."!cursor_pass"(rx277_pos, "quote_escape:sym<0>")
    if_null rx277_debug, debug_252
    rx277_cur."!cursor_debug"("PASS", "quote_escape:sym<0>", " at pos=", rx277_pos)
  debug_252:
    .return (rx277_cur)
  rx277_restart:
.annotate 'line', 31
    if_null rx277_debug, debug_253
    rx277_cur."!cursor_debug"("NEXT", "quote_escape:sym<0>")
  debug_253:
  rx277_fail:
    (rx277_rep, rx277_pos, $I10, $P10) = rx277_cur."!mark_fail"(0)
    lt rx277_pos, -1, rx277_done
    eq rx277_pos, -1, rx277_fail
    jump $I10
  rx277_done:
    rx277_cur."!cursor_fail"()
    if_null rx277_debug, debug_254
    rx277_cur."!cursor_debug"("FAIL", "quote_escape:sym<0>")
  debug_254:
    .return (rx277_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<0>"  :nsentry("!PREFIX__quote_escape:sym<0>") :subid("92_1295995577.546") :method
.annotate 'line', 31
    new $P279, "ResizablePMCArray"
    push $P279, "\\0"
    .return ($P279)
.end


.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<misc>"  :subid("93_1295995577.546") :method :outer("11_1295995577.546")
.annotate 'line', 31
    .const 'Sub' $P302 = "97_1295995577.546" 
    capture_lex $P302
    .const 'Sub' $P295 = "96_1295995577.546" 
    capture_lex $P295
    .const 'Sub' $P290 = "95_1295995577.546" 
    capture_lex $P290
    .local string rx283_tgt
    .local int rx283_pos
    .local int rx283_off
    .local int rx283_eos
    .local int rx283_rep
    .local pmc rx283_cur
    .local pmc rx283_debug
    (rx283_cur, rx283_pos, rx283_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx283_cur
    .local pmc match
    .lex "$/", match
    length rx283_eos, rx283_tgt
    gt rx283_pos, rx283_eos, rx283_done
    set rx283_off, 0
    lt rx283_pos, 2, rx283_start
    sub rx283_off, rx283_pos, 1
    substr rx283_tgt, rx283_tgt, rx283_off
  rx283_start:
    eq $I10, 1, rx283_restart
    if_null rx283_debug, debug_255
    rx283_cur."!cursor_debug"("START", "quote_escape:sym<misc>")
  debug_255:
    $I10 = self.'from'()
    ne $I10, -1, rxscan286_done
    goto rxscan286_scan
  rxscan286_loop:
    ($P10) = rx283_cur."from"()
    inc $P10
    set rx283_pos, $P10
    ge rx283_pos, rx283_eos, rxscan286_done
  rxscan286_scan:
    set_addr $I10, rxscan286_loop
    rx283_cur."!mark_push"(0, rx283_pos, $I10)
  rxscan286_done:
.annotate 'line', 98
    rx283_cur."!cursor_pos"(rx283_pos)
    find_lex $P287, unicode:"$\x{a2}"
    $P288 = $P287."MATCH"()
    store_lex "$/", $P288
    .const 'Sub' $P290 = "95_1295995577.546" 
    capture_lex $P290
    $P291 = $P290()
  # rx literal  "\\"
    add $I11, rx283_pos, 1
    gt $I11, rx283_eos, rx283_fail
    sub $I11, rx283_pos, rx283_off
    ord $I11, rx283_tgt, $I11
    ne $I11, 92, rx283_fail
    add rx283_pos, 1
  alt292_0:
.annotate 'line', 99
    set_addr $I10, alt292_1
    rx283_cur."!mark_push"(0, rx283_pos, $I10)
.annotate 'line', 100
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx283_cur."!cursor_pos"(rx283_pos)
    $P10 = rx283_cur."quotemod_check"("b")
    unless $P10, rx283_fail
  alt293_0:
.annotate 'line', 101
    set_addr $I10, alt293_1
    rx283_cur."!mark_push"(0, rx283_pos, $I10)
.annotate 'line', 102
  # rx subrule $P295 subtype=capture negate=
    rx283_cur."!cursor_pos"(rx283_pos)
    .const 'Sub' $P295 = "96_1295995577.546" 
    capture_lex $P295
    $P10 = rx283_cur.$P295()
    unless $P10, rx283_fail
    rx283_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("textqq")
    rx283_pos = $P10."pos"()
    goto alt293_end
  alt293_1:
.annotate 'line', 103
  # rx subcapture "x"
    set_addr $I10, rxcap_298_fail
    rx283_cur."!mark_push"(0, rx283_pos, $I10)
  # rx charclass w
    ge rx283_pos, rx283_eos, rx283_fail
    sub $I10, rx283_pos, rx283_off
    is_cclass $I11, 8192, rx283_tgt, $I10
    unless $I11, rx283_fail
    inc rx283_pos
    set_addr $I10, rxcap_298_fail
    ($I12, $I11) = rx283_cur."!mark_peek"($I10)
    rx283_cur."!cursor_pos"($I11)
    ($P10) = rx283_cur."!cursor_start"()
    $P10."!cursor_pass"(rx283_pos, "")
    rx283_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("x")
    goto rxcap_298_done
  rxcap_298_fail:
    goto rx283_fail
  rxcap_298_done:
    rx283_cur."!cursor_pos"(rx283_pos)
    find_lex $P299, unicode:"$\x{a2}"
    $P300 = $P299."MATCH"()
    store_lex "$/", $P300
    .const 'Sub' $P302 = "97_1295995577.546" 
    capture_lex $P302
    $P312 = $P302()
  alt293_end:
.annotate 'line', 100
    goto alt292_end
  alt292_1:
.annotate 'line', 105
  # rx subcapture "textq"
    set_addr $I10, rxcap_313_fail
    rx283_cur."!mark_push"(0, rx283_pos, $I10)
  # rx charclass .
    ge rx283_pos, rx283_eos, rx283_fail
    inc rx283_pos
    set_addr $I10, rxcap_313_fail
    ($I12, $I11) = rx283_cur."!mark_peek"($I10)
    rx283_cur."!cursor_pos"($I11)
    ($P10) = rx283_cur."!cursor_start"()
    $P10."!cursor_pass"(rx283_pos, "")
    rx283_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("textq")
    goto rxcap_313_done
  rxcap_313_fail:
    goto rx283_fail
  rxcap_313_done:
  alt292_end:
.annotate 'line', 97
  # rx pass
    rx283_cur."!cursor_pass"(rx283_pos, "quote_escape:sym<misc>")
    if_null rx283_debug, debug_262
    rx283_cur."!cursor_debug"("PASS", "quote_escape:sym<misc>", " at pos=", rx283_pos)
  debug_262:
    .return (rx283_cur)
  rx283_restart:
.annotate 'line', 31
    if_null rx283_debug, debug_263
    rx283_cur."!cursor_debug"("NEXT", "quote_escape:sym<misc>")
  debug_263:
  rx283_fail:
    (rx283_rep, rx283_pos, $I10, $P10) = rx283_cur."!mark_fail"(0)
    lt rx283_pos, -1, rx283_done
    eq rx283_pos, -1, rx283_fail
    jump $I10
  rx283_done:
    rx283_cur."!cursor_fail"()
    if_null rx283_debug, debug_264
    rx283_cur."!cursor_debug"("FAIL", "quote_escape:sym<misc>")
  debug_264:
    .return (rx283_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<misc>"  :nsentry("!PREFIX__quote_escape:sym<misc>") :subid("94_1295995577.546") :method
.annotate 'line', 31
    new $P285, "ResizablePMCArray"
    push $P285, ""
    .return ($P285)
.end


.namespace ["HLL";"Grammar"]
.sub "_block289"  :anon :subid("95_1295995577.546") :outer("93_1295995577.546")
.annotate 'line', 98
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "_block294"  :anon :subid("96_1295995577.546") :method :outer("93_1295995577.546")
.annotate 'line', 102
    .local string rx296_tgt
    .local int rx296_pos
    .local int rx296_off
    .local int rx296_eos
    .local int rx296_rep
    .local pmc rx296_cur
    .local pmc rx296_debug
    (rx296_cur, rx296_pos, rx296_tgt, $I10) = self."!cursor_start"()
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
    if_null rx296_debug, debug_256
    rx296_cur."!cursor_debug"("START", "")
  debug_256:
    $I10 = self.'from'()
    ne $I10, -1, rxscan297_done
    goto rxscan297_scan
  rxscan297_loop:
    ($P10) = rx296_cur."from"()
    inc $P10
    set rx296_pos, $P10
    ge rx296_pos, rx296_eos, rxscan297_done
  rxscan297_scan:
    set_addr $I10, rxscan297_loop
    rx296_cur."!mark_push"(0, rx296_pos, $I10)
  rxscan297_done:
  # rx charclass W
    ge rx296_pos, rx296_eos, rx296_fail
    sub $I10, rx296_pos, rx296_off
    is_cclass $I11, 8192, rx296_tgt, $I10
    if $I11, rx296_fail
    inc rx296_pos
  # rx pass
    rx296_cur."!cursor_pass"(rx296_pos, "")
    if_null rx296_debug, debug_257
    rx296_cur."!cursor_debug"("PASS", "", " at pos=", rx296_pos)
  debug_257:
    .return (rx296_cur)
  rx296_restart:
    if_null rx296_debug, debug_258
    rx296_cur."!cursor_debug"("NEXT", "")
  debug_258:
  rx296_fail:
    (rx296_rep, rx296_pos, $I10, $P10) = rx296_cur."!mark_fail"(0)
    lt rx296_pos, -1, rx296_done
    eq rx296_pos, -1, rx296_fail
    jump $I10
  rx296_done:
    rx296_cur."!cursor_fail"()
    if_null rx296_debug, debug_259
    rx296_cur."!cursor_debug"("FAIL", "")
  debug_259:
    .return (rx296_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "_block301"  :anon :subid("97_1295995577.546") :outer("93_1295995577.546")
.annotate 'line', 103
    find_lex $P303, "$/"
    $P304 = $P303."CURSOR"()
    new $P305, "String"
    assign $P305, "Unrecognized backslash sequence: '\\"
    find_lex $P306, "$/"
    unless_null $P306, vivify_260
    $P306 = root_new ['parrot';'Hash']
  vivify_260:
    set $P307, $P306["x"]
    unless_null $P307, vivify_261
    new $P307, "Undef"
  vivify_261:
    $S308 = $P307."Str"()
    concat $P309, $P305, $S308
    concat $P310, $P309, "'"
    $P311 = $P304."panic"($P310)
    .return ($P311)
.end


.namespace ["HLL";"Grammar"]
.sub "charname"  :subid("98_1295995577.546") :method :outer("11_1295995577.546")
.annotate 'line', 31
    .const 'Sub' $P324 = "100_1295995577.546" 
    capture_lex $P324
    .local string rx315_tgt
    .local int rx315_pos
    .local int rx315_off
    .local int rx315_eos
    .local int rx315_rep
    .local pmc rx315_cur
    .local pmc rx315_debug
    (rx315_cur, rx315_pos, rx315_tgt, $I10) = self."!cursor_start"()
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
    if_null rx315_debug, debug_265
    rx315_cur."!cursor_debug"("START", "charname")
  debug_265:
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
  alt320_0:
.annotate 'line', 109
    set_addr $I10, alt320_1
    rx315_cur."!mark_push"(0, rx315_pos, $I10)
.annotate 'line', 110
  # rx subrule "integer" subtype=capture negate=
    rx315_cur."!cursor_pos"(rx315_pos)
    $P10 = rx315_cur."integer"()
    unless $P10, rx315_fail
    rx315_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("integer")
    rx315_pos = $P10."pos"()
    goto alt320_end
  alt320_1:
.annotate 'line', 111
  # rx enumcharlist negate=0 
    ge rx315_pos, rx315_eos, rx315_fail
    sub $I10, rx315_pos, rx315_off
    substr $S10, rx315_tgt, $I10, 1
    index $I11, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ", $S10
    lt $I11, 0, rx315_fail
    inc rx315_pos
  # rx rxquantf321 ** 0..*
    set_addr $I10, rxquantf321_loop
    rx315_cur."!mark_push"(0, rx315_pos, $I10)
    goto rxquantf321_done
  rxquantf321_loop:
  # rx enumcharlist negate=1 
    ge rx315_pos, rx315_eos, rx315_fail
    sub $I10, rx315_pos, rx315_off
    substr $S10, rx315_tgt, $I10, 1
    index $I11, "],#", $S10
    ge $I11, 0, rx315_fail
    inc rx315_pos
    set_addr $I10, rxquantf321_loop
    rx315_cur."!mark_push"(rx315_rep, rx315_pos, $I10)
  rxquantf321_done:
  # rx enumcharlist negate=0 
    ge rx315_pos, rx315_eos, rx315_fail
    sub $I10, rx315_pos, rx315_off
    substr $S10, rx315_tgt, $I10, 1
    index $I11, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ)", $S10
    lt $I11, 0, rx315_fail
    inc rx315_pos
.annotate 'line', 112
  # rx subrule "before" subtype=zerowidth negate=
    rx315_cur."!cursor_pos"(rx315_pos)
    .const 'Sub' $P324 = "100_1295995577.546" 
    capture_lex $P324
    $P10 = rx315_cur."before"($P324)
    unless $P10, rx315_fail
  alt320_end:
.annotate 'line', 109
  # rx pass
    rx315_cur."!cursor_pass"(rx315_pos, "charname")
    if_null rx315_debug, debug_270
    rx315_cur."!cursor_debug"("PASS", "charname", " at pos=", rx315_pos)
  debug_270:
    .return (rx315_cur)
  rx315_restart:
.annotate 'line', 31
    if_null rx315_debug, debug_271
    rx315_cur."!cursor_debug"("NEXT", "charname")
  debug_271:
  rx315_fail:
    (rx315_rep, rx315_pos, $I10, $P10) = rx315_cur."!mark_fail"(0)
    lt rx315_pos, -1, rx315_done
    eq rx315_pos, -1, rx315_fail
    jump $I10
  rx315_done:
    rx315_cur."!cursor_fail"()
    if_null rx315_debug, debug_272
    rx315_cur."!cursor_debug"("FAIL", "charname")
  debug_272:
    .return (rx315_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charname"  :nsentry("!PREFIX__charname") :subid("99_1295995577.546") :method
.annotate 'line', 31
    $P317 = self."!PREFIX__!subrule"("integer", "")
    new $P318, "ResizablePMCArray"
    push $P318, "Z"
    push $P318, "Y"
    push $P318, "X"
    push $P318, "W"
    push $P318, "V"
    push $P318, "U"
    push $P318, "T"
    push $P318, "S"
    push $P318, "R"
    push $P318, "Q"
    push $P318, "P"
    push $P318, "O"
    push $P318, "N"
    push $P318, "M"
    push $P318, "L"
    push $P318, "K"
    push $P318, "J"
    push $P318, "I"
    push $P318, "H"
    push $P318, "G"
    push $P318, "F"
    push $P318, "E"
    push $P318, "D"
    push $P318, "C"
    push $P318, "B"
    push $P318, "A"
    push $P318, "z"
    push $P318, "y"
    push $P318, "x"
    push $P318, "w"
    push $P318, "v"
    push $P318, "u"
    push $P318, "t"
    push $P318, "s"
    push $P318, "r"
    push $P318, "q"
    push $P318, "p"
    push $P318, "o"
    push $P318, "n"
    push $P318, "m"
    push $P318, "l"
    push $P318, "k"
    push $P318, "j"
    push $P318, "i"
    push $P318, "h"
    push $P318, "g"
    push $P318, "f"
    push $P318, "e"
    push $P318, "d"
    push $P318, "c"
    push $P318, "b"
    push $P318, "a"
    push $P318, $P317
    .return ($P318)
.end


.namespace ["HLL";"Grammar"]
.sub "_block323"  :anon :subid("100_1295995577.546") :method :outer("98_1295995577.546")
.annotate 'line', 112
    .local string rx325_tgt
    .local int rx325_pos
    .local int rx325_off
    .local int rx325_eos
    .local int rx325_rep
    .local pmc rx325_cur
    .local pmc rx325_debug
    (rx325_cur, rx325_pos, rx325_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx325_cur
    .local pmc match
    .lex "$/", match
    length rx325_eos, rx325_tgt
    gt rx325_pos, rx325_eos, rx325_done
    set rx325_off, 0
    lt rx325_pos, 2, rx325_start
    sub rx325_off, rx325_pos, 1
    substr rx325_tgt, rx325_tgt, rx325_off
  rx325_start:
    eq $I10, 1, rx325_restart
    if_null rx325_debug, debug_266
    rx325_cur."!cursor_debug"("START", "")
  debug_266:
    $I10 = self.'from'()
    ne $I10, -1, rxscan326_done
    goto rxscan326_scan
  rxscan326_loop:
    ($P10) = rx325_cur."from"()
    inc $P10
    set rx325_pos, $P10
    ge rx325_pos, rx325_eos, rxscan326_done
  rxscan326_scan:
    set_addr $I10, rxscan326_loop
    rx325_cur."!mark_push"(0, rx325_pos, $I10)
  rxscan326_done:
  # rx charclass_q s r 0..-1
    sub $I10, rx325_pos, rx325_off
    find_not_cclass $I11, 32, rx325_tgt, $I10, rx325_eos
    add rx325_pos, rx325_off, $I11
  # rx enumcharlist negate=0 
    ge rx325_pos, rx325_eos, rx325_fail
    sub $I10, rx325_pos, rx325_off
    substr $S10, rx325_tgt, $I10, 1
    index $I11, "],#", $S10
    lt $I11, 0, rx325_fail
    inc rx325_pos
  # rx pass
    rx325_cur."!cursor_pass"(rx325_pos, "")
    if_null rx325_debug, debug_267
    rx325_cur."!cursor_debug"("PASS", "", " at pos=", rx325_pos)
  debug_267:
    .return (rx325_cur)
  rx325_restart:
    if_null rx325_debug, debug_268
    rx325_cur."!cursor_debug"("NEXT", "")
  debug_268:
  rx325_fail:
    (rx325_rep, rx325_pos, $I10, $P10) = rx325_cur."!mark_fail"(0)
    lt rx325_pos, -1, rx325_done
    eq rx325_pos, -1, rx325_fail
    jump $I10
  rx325_done:
    rx325_cur."!cursor_fail"()
    if_null rx325_debug, debug_269
    rx325_cur."!cursor_debug"("FAIL", "")
  debug_269:
    .return (rx325_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "charnames"  :subid("101_1295995577.546") :method :outer("11_1295995577.546")
.annotate 'line', 31
    .local string rx328_tgt
    .local int rx328_pos
    .local int rx328_off
    .local int rx328_eos
    .local int rx328_rep
    .local pmc rx328_cur
    .local pmc rx328_debug
    (rx328_cur, rx328_pos, rx328_tgt, $I10) = self."!cursor_start"()
    rx328_cur."!cursor_caparray"("charname")
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
    if_null rx328_debug, debug_273
    rx328_cur."!cursor_debug"("START", "charnames")
  debug_273:
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
  # rx rxquantr332 ** 1..*
    set_addr $I10, rxquantr332_done
    rx328_cur."!mark_push"(0, -1, $I10)
  rxquantr332_loop:
  # rx subrule "ws" subtype=method negate=
    rx328_cur."!cursor_pos"(rx328_pos)
    $P10 = rx328_cur."ws"()
    unless $P10, rx328_fail
    rx328_pos = $P10."pos"()
  # rx subrule "charname" subtype=capture negate=
    rx328_cur."!cursor_pos"(rx328_pos)
    $P10 = rx328_cur."charname"()
    unless $P10, rx328_fail
    rx328_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charname")
    rx328_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx328_cur."!cursor_pos"(rx328_pos)
    $P10 = rx328_cur."ws"()
    unless $P10, rx328_fail
    rx328_pos = $P10."pos"()
    set_addr $I10, rxquantr332_done
    (rx328_rep) = rx328_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr332_done
    rx328_cur."!mark_push"(rx328_rep, rx328_pos, $I10)
  # rx literal  ","
    add $I11, rx328_pos, 1
    gt $I11, rx328_eos, rx328_fail
    sub $I11, rx328_pos, rx328_off
    ord $I11, rx328_tgt, $I11
    ne $I11, 44, rx328_fail
    add rx328_pos, 1
    goto rxquantr332_loop
  rxquantr332_done:
  # rx pass
    rx328_cur."!cursor_pass"(rx328_pos, "charnames")
    if_null rx328_debug, debug_274
    rx328_cur."!cursor_debug"("PASS", "charnames", " at pos=", rx328_pos)
  debug_274:
    .return (rx328_cur)
  rx328_restart:
.annotate 'line', 31
    if_null rx328_debug, debug_275
    rx328_cur."!cursor_debug"("NEXT", "charnames")
  debug_275:
  rx328_fail:
    (rx328_rep, rx328_pos, $I10, $P10) = rx328_cur."!mark_fail"(0)
    lt rx328_pos, -1, rx328_done
    eq rx328_pos, -1, rx328_fail
    jump $I10
  rx328_done:
    rx328_cur."!cursor_fail"()
    if_null rx328_debug, debug_276
    rx328_cur."!cursor_debug"("FAIL", "charnames")
  debug_276:
    .return (rx328_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charnames"  :nsentry("!PREFIX__charnames") :subid("102_1295995577.546") :method
.annotate 'line', 31
    new $P330, "ResizablePMCArray"
    push $P330, ""
    .return ($P330)
.end


.namespace ["HLL";"Grammar"]
.sub "charspec"  :subid("103_1295995577.546") :method :outer("11_1295995577.546")
.annotate 'line', 31
    .local string rx334_tgt
    .local int rx334_pos
    .local int rx334_off
    .local int rx334_eos
    .local int rx334_rep
    .local pmc rx334_cur
    .local pmc rx334_debug
    (rx334_cur, rx334_pos, rx334_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx334_cur
    .local pmc match
    .lex "$/", match
    length rx334_eos, rx334_tgt
    gt rx334_pos, rx334_eos, rx334_done
    set rx334_off, 0
    lt rx334_pos, 2, rx334_start
    sub rx334_off, rx334_pos, 1
    substr rx334_tgt, rx334_tgt, rx334_off
  rx334_start:
    eq $I10, 1, rx334_restart
    if_null rx334_debug, debug_277
    rx334_cur."!cursor_debug"("START", "charspec")
  debug_277:
    $I10 = self.'from'()
    ne $I10, -1, rxscan339_done
    goto rxscan339_scan
  rxscan339_loop:
    ($P10) = rx334_cur."from"()
    inc $P10
    set rx334_pos, $P10
    ge rx334_pos, rx334_eos, rxscan339_done
  rxscan339_scan:
    set_addr $I10, rxscan339_loop
    rx334_cur."!mark_push"(0, rx334_pos, $I10)
  rxscan339_done:
  alt340_0:
.annotate 'line', 116
    set_addr $I10, alt340_1
    rx334_cur."!mark_push"(0, rx334_pos, $I10)
.annotate 'line', 117
  # rx literal  "["
    add $I11, rx334_pos, 1
    gt $I11, rx334_eos, rx334_fail
    sub $I11, rx334_pos, rx334_off
    ord $I11, rx334_tgt, $I11
    ne $I11, 91, rx334_fail
    add rx334_pos, 1
  # rx subrule "charnames" subtype=capture negate=
    rx334_cur."!cursor_pos"(rx334_pos)
    $P10 = rx334_cur."charnames"()
    unless $P10, rx334_fail
    rx334_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charnames")
    rx334_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx334_pos, 1
    gt $I11, rx334_eos, rx334_fail
    sub $I11, rx334_pos, rx334_off
    ord $I11, rx334_tgt, $I11
    ne $I11, 93, rx334_fail
    add rx334_pos, 1
    goto alt340_end
  alt340_1:
    set_addr $I10, alt340_2
    rx334_cur."!mark_push"(0, rx334_pos, $I10)
.annotate 'line', 118
  # rx charclass_q d r 1..-1
    sub $I10, rx334_pos, rx334_off
    find_not_cclass $I11, 8, rx334_tgt, $I10, rx334_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx334_fail
    add rx334_pos, rx334_off, $I11
  # rx rxquantr341 ** 0..*
    set_addr $I10, rxquantr341_done
    rx334_cur."!mark_push"(0, rx334_pos, $I10)
  rxquantr341_loop:
  # rx literal  "_"
    add $I11, rx334_pos, 1
    gt $I11, rx334_eos, rx334_fail
    sub $I11, rx334_pos, rx334_off
    ord $I11, rx334_tgt, $I11
    ne $I11, 95, rx334_fail
    add rx334_pos, 1
  # rx charclass_q d r 1..-1
    sub $I10, rx334_pos, rx334_off
    find_not_cclass $I11, 8, rx334_tgt, $I10, rx334_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx334_fail
    add rx334_pos, rx334_off, $I11
    set_addr $I10, rxquantr341_done
    (rx334_rep) = rx334_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr341_done
    rx334_cur."!mark_push"(rx334_rep, rx334_pos, $I10)
    goto rxquantr341_loop
  rxquantr341_done:
    goto alt340_end
  alt340_2:
    set_addr $I10, alt340_3
    rx334_cur."!mark_push"(0, rx334_pos, $I10)
.annotate 'line', 119
  # rx enumcharlist negate=0 
    ge rx334_pos, rx334_eos, rx334_fail
    sub $I10, rx334_pos, rx334_off
    substr $S10, rx334_tgt, $I10, 1
    index $I11, "?@ABCDEFGHIJKLMNOPQRSTUVWXYZ", $S10
    lt $I11, 0, rx334_fail
    inc rx334_pos
    goto alt340_end
  alt340_3:
.annotate 'line', 120
  # rx subrule "panic" subtype=method negate=
    rx334_cur."!cursor_pos"(rx334_pos)
    $P10 = rx334_cur."panic"("Unrecognized \\c character")
    unless $P10, rx334_fail
    rx334_pos = $P10."pos"()
  alt340_end:
.annotate 'line', 115
  # rx pass
    rx334_cur."!cursor_pass"(rx334_pos, "charspec")
    if_null rx334_debug, debug_278
    rx334_cur."!cursor_debug"("PASS", "charspec", " at pos=", rx334_pos)
  debug_278:
    .return (rx334_cur)
  rx334_restart:
.annotate 'line', 31
    if_null rx334_debug, debug_279
    rx334_cur."!cursor_debug"("NEXT", "charspec")
  debug_279:
  rx334_fail:
    (rx334_rep, rx334_pos, $I10, $P10) = rx334_cur."!mark_fail"(0)
    lt rx334_pos, -1, rx334_done
    eq rx334_pos, -1, rx334_fail
    jump $I10
  rx334_done:
    rx334_cur."!cursor_fail"()
    if_null rx334_debug, debug_280
    rx334_cur."!cursor_debug"("FAIL", "charspec")
  debug_280:
    .return (rx334_cur)
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charspec"  :nsentry("!PREFIX__charspec") :subid("104_1295995577.546") :method
.annotate 'line', 31
    $P336 = self."!PREFIX__!subrule"("panic", "")
    $P337 = self."!PREFIX__!subrule"("charnames", "[")
    new $P338, "ResizablePMCArray"
    push $P338, $P336
    push $P338, "Z"
    push $P338, "Y"
    push $P338, "X"
    push $P338, "W"
    push $P338, "V"
    push $P338, "U"
    push $P338, "T"
    push $P338, "S"
    push $P338, "R"
    push $P338, "Q"
    push $P338, "P"
    push $P338, "O"
    push $P338, "N"
    push $P338, "M"
    push $P338, "L"
    push $P338, "K"
    push $P338, "J"
    push $P338, "I"
    push $P338, "H"
    push $P338, "G"
    push $P338, "F"
    push $P338, "E"
    push $P338, "D"
    push $P338, "C"
    push $P338, "B"
    push $P338, "A"
    push $P338, "@"
    push $P338, "?"
    push $P338, ""
    push $P338, $P337
    .return ($P338)
.end


.namespace ["HLL";"Grammar"]
.sub "O"  :subid("105_1295995577.546") :outer("11_1295995577.546")
    .param pmc param_343
    .param pmc param_344
    .param pmc param_345 :optional
    .param int has_param_345 :opt_flag
.annotate 'line', 166
    .lex "self", param_343
    .lex "$spec", param_344
    if has_param_345, optparam_281
    new $P346, "Undef"
    set param_345, $P346
  optparam_281:
    .lex "$save", param_345
.annotate 'line', 167

            .local pmc self, cur_class
            .local string spec, save
            .local int has_save
            self = find_lex 'self'
            cur_class = get_hll_global ['Regex'], 'Cursor'
            $P0 = find_lex '$spec'
            spec = $P0
            has_save = 0
            $P0 = find_lex '$save'
            unless $P0 goto no_save
            save = $P0
            has_save = 1
          no_save:

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
            setattribute $P0, cur_class, '$!match', hash
            .return ($P0)

            # save the hash under a new entry
          save_hash:
            ohash[save] = hash
            .return (self)

          err_lookup:
            self.'panic'('Unknown operator precedence specification "', lookup, '"')
        
.annotate 'line', 166
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "panic"  :subid("106_1295995577.546") :outer("11_1295995577.546")
    .param pmc param_348
    .param pmc param_349 :slurpy
.annotate 'line', 312
    .lex "self", param_348
    .lex "@args", param_349
.annotate 'line', 313
    new $P350, "Undef"
    .lex "$pos", $P350
.annotate 'line', 314
    new $P351, "Undef"
    .lex "$target", $P351
.annotate 'line', 313
    find_lex $P352, "self"
    $P353 = $P352."pos"()
    store_lex "$pos", $P353
.annotate 'line', 314
    find_lex $P354, "self"
    get_hll_global $P355, ["Regex"], "Cursor"
    getattribute $P356, $P354, $P355, "$!target"
    store_lex "$target", $P356
.annotate 'line', 315
    find_lex $P357, "@args"
    $P357."push"(" at line ")
.annotate 'line', 316
    find_lex $P358, "@args"
    get_hll_global $P359, ["HLL"], "Compiler"
    find_lex $P360, "$target"
    find_lex $P361, "$pos"
    $P362 = $P359."lineof"($P360, $P361)
    add $P363, $P362, 1
    $P358."push"($P363)
.annotate 'line', 317
    find_lex $P364, "@args"
    $P364."push"(", near \"")
.annotate 'line', 318
    find_lex $P365, "@args"
    find_lex $P366, "$target"
    set $S367, $P366
    find_lex $P368, "$pos"
    set $I369, $P368
    substr $S370, $S367, $I369, 10
    escape $S371, $S370
    $P365."push"($S371)
.annotate 'line', 319
    find_lex $P372, "@args"
    $P372."push"("\"")
.annotate 'line', 320
    find_lex $P373, "@args"
    join $S374, "", $P373
    die $S374
.annotate 'line', 312
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "peek_delimiters"  :subid("107_1295995577.546") :outer("11_1295995577.546")
    .param pmc param_376
    .param pmc param_377
    .param pmc param_378
.annotate 'line', 333
    .lex "self", param_376
    .lex "$target", param_377
    .lex "$pos", param_378
.annotate 'line', 334

            .local pmc self
            self = find_lex 'self'
            .local string target
            $P0 = find_lex '$target'
            target = $P0
            .local int pos
            $P0 = find_lex '$pos'
            pos = $P0

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
        
.annotate 'line', 333
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "quote_EXPR"  :subid("108_1295995577.546") :outer("11_1295995577.546")
    .param pmc param_380
    .param pmc param_381 :slurpy
.annotate 'line', 395
    .lex "self", param_380
    .lex "@args", param_381
.annotate 'line', 396

            .local pmc self, cur_class, args
            self = find_lex 'self'
            cur_class = get_hll_global ['Regex'], 'Cursor'
            args = find_lex '@args'

            .local pmc cur, debug
            .local string target
            .local int pos

            (cur, pos, target) = self.'!cursor_start'()
            debug = getattribute cur, cur_class, '$!debug'
            if null debug goto debug_1
            cur.'!cursor_debug'('START', 'quote_EXPR')
          debug_1:

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
            if null debug goto done
            cur.'!cursor_debug'('PASS', 'quote_EXPR')
            goto done
          fail:
            if null debug goto done
            cur.'!cursor_debug'('FAIL', 'quote_EXPR')
          done:
            .return (cur)
        
.annotate 'line', 395
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "quotemod_check" :nsentry :subid("109_1295995577.546") :outer("11_1295995577.546")
    .param pmc param_383
    .param pmc param_384
.annotate 'line', 464
    .lex "self", param_383
    .lex "$mod", param_384
    find_lex $P385, "$mod"
    find_dynamic_lex $P386, "%*QUOTEMOD"
    unless_null $P386, vivify_282
    get_hll_global $P386, "%QUOTEMOD"
    unless_null $P386, vivify_283
    die "Contextual %*QUOTEMOD not found"
  vivify_283:
  vivify_282:
    set $P387, $P386[$P385]
    unless_null $P387, vivify_284
    new $P387, "Undef"
  vivify_284:
    .return ($P387)
.end


.namespace ["HLL";"Grammar"]
.sub "starter"  :subid("110_1295995577.546") :outer("11_1295995577.546")
    .param pmc param_389
.annotate 'line', 468
    .lex "self", param_389
.annotate 'line', 469

            .local pmc self, cur
            .local string target, start
            .local int pos
            self = find_lex 'self'

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
        
.annotate 'line', 468
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "stopper"  :subid("111_1295995577.546") :outer("11_1295995577.546")
    .param pmc param_391
.annotate 'line', 491
    .lex "self", param_391
.annotate 'line', 492

            .local pmc self, cur
            .local string target, stop
            .local int pos
            self = find_lex 'self'

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
        
.annotate 'line', 491
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "split_words" :nsentry :subid("112_1295995577.546") :outer("11_1295995577.546")
    .param pmc param_393
    .param pmc param_394
.annotate 'line', 514
    .lex "self", param_393
    .lex "$words", param_394
.annotate 'line', 515

            .local string words
            $P0 = find_lex '$words'
            words = $P0
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
            push result, $S0
            pos = $I0
            goto split_loop
          split_done:
            .return (result)
        
.annotate 'line', 514
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "EXPR"  :subid("113_1295995577.546") :outer("11_1295995577.546")
    .param pmc param_396
    .param pmc param_397 :optional
    .param int has_param_397 :opt_flag
.annotate 'line', 546
    .lex "self", param_396
    if has_param_397, optparam_285
    new $P398, "String"
    assign $P398, ""
    set param_397, $P398
  optparam_285:
    .lex "$preclim", param_397
.annotate 'line', 547

            .local pmc self, cur_class
            self = find_lex 'self'
            cur_class = get_hll_global ['Regex'], 'Cursor'

            .local string preclim
            $P0 = find_lex '$preclim'
            preclim = $P0
            
            .local pmc here, pos, debug
            (here, pos) = self.'!cursor_start'()
            debug = getattribute here, cur_class, '$!debug'
            if null debug goto debug_1
            here.'!cursor_debug'('START', 'EXPR')
          debug_1:

            .const 'Sub' reduce = 'EXPR_reduce'
            .local string termishrx
            termishrx = 'termish'

            .local pmc opstack, termstack
            opstack = new ['ResizablePMCArray']
            .lex '@opstack', opstack
            termstack = new ['ResizablePMCArray']
            .lex '@termstack', termstack

          term_loop:
            here = here.termishrx()
            unless here goto fail
            .local pmc termish
            termish = here.'MATCH'()

            # interleave any prefix/postfix we might have found
            .local pmc termOPER, prefixish, postfixish
            termOPER = termish
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
            delete termish['prefixish']

          postfix_loop:
            if null postfixish goto postfix_done
            unless postfixish goto postfix_done
            $P0 = pop postfixish
            push opstack, $P0
            goto postfix_loop
          postfix_done:
            delete termish['postfixish']

            $P0 = termish['term']
            push termstack, $P0

            # Now see if we can fetch an infix operator
            .local pmc infixcur, infix
            here = here.'ws'()
            infixcur = here.'infixish'()
            unless infixcur goto term_done
            infix = infixcur.'MATCH'()

            .local pmc inO
            $P0 = infix['OPER']
            inO = $P0['O']
            termishrx = inO['nextterm']
            if termishrx goto have_termishrx
            termishrx = 'termish'
          have_termishrx:

            .local string inprec, inassoc, opprec
            inprec = inO['prec']
            unless inprec goto err_inprec
            if inprec <= preclim goto term_done
            inassoc = inO['assoc']

            $P0 = inO['sub']
            if null $P0 goto subprec_done
            inO['prec'] = $P0
          subprec_done:

          reduce_loop:
            unless opstack goto reduce_done
            $P0 = opstack[-1]
            $P0 = $P0['OPER']
            $P0 = $P0['O']
            opprec = $P0['prec']
            unless opprec > inprec goto reduce_gt_done
            capture_lex reduce
            self.reduce(termstack, opstack)
            goto reduce_loop
          reduce_gt_done:

            unless opprec == inprec goto reduce_done
            # equal precedence, use associativity to decide
            unless inassoc == 'left' goto reduce_done
            # left associative, reduce immediately
            capture_lex reduce
            self.reduce(termstack, opstack)
          reduce_done:

            push opstack, infix        # The Shift
            here = infixcur.'ws'()
            goto term_loop
          term_done:

          opstack_loop:
            unless opstack goto opstack_done
            capture_lex reduce
            self.reduce(termstack, opstack)
            goto opstack_loop
          opstack_done:

          expr_done:
            .local pmc term
            term = pop termstack
            pos = here.'pos'()
            here = self.'!cursor_start'()
            setattribute here, cur_class, '$!pos', pos
            setattribute here, cur_class, '$!match', term
            here.'!reduce'('EXPR')
            if null debug goto done
            here.'!cursor_debug'('PASS', 'EXPR')
            goto done

          fail:
            if null debug goto done
            here.'!cursor_debug'('FAIL', 'EXPR')
          done:
            .return (here)

          err_internal:
            $I0 = termstack
            here.'panic'('Internal operator parser error, @termstack == ', $I0)
          err_inprec:
            infixcur.'panic'('Missing infixish operator precedence')
        
.annotate 'line', 546
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "EXPR_reduce"  :subid("114_1295995577.546") :outer("11_1295995577.546")
    .param pmc param_400
    .param pmc param_401
    .param pmc param_402
.annotate 'line', 723
    .lex "self", param_400
    .lex "$termstack", param_401
    .lex "$opstack", param_402
.annotate 'line', 724

            .local pmc self, termstack, opstack
            self = find_lex 'self'
            termstack = find_lex '$termstack'
            opstack = find_lex '$opstack'

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
        
.annotate 'line', 723
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "ternary"  :subid("115_1295995577.546") :outer("11_1295995577.546")
    .param pmc param_404
    .param pmc param_405
.annotate 'line', 791
    .lex "self", param_404
    .lex "$match", param_405
.annotate 'line', 792
    find_lex $P406, "$match"
    unless_null $P406, vivify_286
    $P406 = root_new ['parrot';'ResizablePMCArray']
  vivify_286:
    set $P407, $P406[1]
    unless_null $P407, vivify_287
    new $P407, "Undef"
  vivify_287:
    find_lex $P408, "$match"
    unless_null $P408, vivify_288
    $P408 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$match", $P408
  vivify_288:
    set $P408[2], $P407
.annotate 'line', 793
    find_lex $P409, "$match"
    unless_null $P409, vivify_289
    $P409 = root_new ['parrot';'Hash']
  vivify_289:
    set $P410, $P409["infix"]
    unless_null $P410, vivify_290
    $P410 = root_new ['parrot';'Hash']
  vivify_290:
    set $P411, $P410["EXPR"]
    unless_null $P411, vivify_291
    new $P411, "Undef"
  vivify_291:
    find_lex $P412, "$match"
    unless_null $P412, vivify_292
    $P412 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$match", $P412
  vivify_292:
    set $P412[1], $P411
.annotate 'line', 791
    .return ($P411)
.end


.namespace ["HLL";"Grammar"]
.sub "MARKER"  :subid("116_1295995577.546") :outer("11_1295995577.546")
    .param pmc param_414
    .param pmc param_415
.annotate 'line', 796
    .lex "self", param_414
    .lex "$markname", param_415
.annotate 'line', 797
    new $P416, "Undef"
    .lex "$pos", $P416
.annotate 'line', 799
    $P417 = root_new ['parrot';'Hash']
    .lex "%markhash", $P417
.annotate 'line', 797
    find_lex $P418, "self"
    $P419 = $P418."pos"()
    store_lex "$pos", $P419
.annotate 'line', 798
    find_lex $P420, "self"
    find_lex $P421, "$markname"
    find_lex $P422, "$pos"
    $P420."!cursor_debug"("START", "MARKER name=", $P421, ", pos=", $P422)
.annotate 'line', 799

            $P423 = get_global '%!MARKHASH'
            unless null $P423 goto have_markhash
            $P423 = new ['Hash']
            set_global '%!MARKHASH', $P423
          have_markhash:
        
    store_lex "%markhash", $P423
.annotate 'line', 806
    find_lex $P424, "$pos"
    find_lex $P425, "$markname"
    find_lex $P426, "%markhash"
    unless_null $P426, vivify_293
    $P426 = root_new ['parrot';'Hash']
    store_lex "%markhash", $P426
  vivify_293:
    set $P426[$P425], $P424
.annotate 'line', 807
    find_lex $P427, "self"
    $P427."!cursor_debug"("PASS", "MARKER")
.annotate 'line', 796
    .return (1)
.end


.namespace ["HLL";"Grammar"]
.sub "MARKED"  :subid("117_1295995577.546") :outer("11_1295995577.546")
    .param pmc param_429
    .param pmc param_430
.annotate 'line', 811
    .lex "self", param_429
    .lex "$markname", param_430
.annotate 'line', 812
    find_lex $P431, "self"
    find_lex $P432, "$markname"
    $P431."!cursor_debug"("START", "MARKED name=", $P432)
.annotate 'line', 813

            .local pmc self, markname, markhash
            self = find_lex 'self'
            markname = find_lex '$markname'
            markhash = get_global '%!MARKHASH'
            if null markhash goto fail
            $P0 = markhash[markname]
            if null $P0 goto fail
            $P1 = self.'pos'()
            unless $P0 == $P1 goto fail
            self.'!cursor_debug'('PASS','MARKED')
            .return (1)
          fail:
            self.'!cursor_debug'('FAIL','MARKED')
            .return (0)
        
.annotate 'line', 811
    .return ()
.end


.namespace ["HLL";"Grammar"]
.sub "LANG"  :subid("118_1295995577.546") :outer("11_1295995577.546")
    .param pmc param_434
    .param pmc param_435
    .param pmc param_436
.annotate 'line', 831
    .lex "self", param_434
    .lex "$lang", param_435
    .lex "$regex", param_436
.annotate 'line', 832
    new $P437, "Undef"
    .lex "$lang_cursor", $P437
.annotate 'line', 833
    new $P438, "Undef"
    .lex "$*ACTIONS", $P438
.annotate 'line', 834
    new $P439, "Undef"
    .lex "$cur", $P439
.annotate 'line', 832
    find_lex $P440, "$lang"
    find_dynamic_lex $P441, "%*LANG"
    unless_null $P441, vivify_294
    get_hll_global $P441, "%LANG"
    unless_null $P441, vivify_295
    die "Contextual %*LANG not found"
  vivify_295:
  vivify_294:
    set $P442, $P441[$P440]
    unless_null $P442, vivify_296
    new $P442, "Undef"
  vivify_296:
    store_lex "$lang_cursor", $P442
.annotate 'line', 833
    find_lex $P443, "$lang"
    concat $P444, $P443, "-actions"
    find_dynamic_lex $P445, "%*LANG"
    unless_null $P445, vivify_297
    get_hll_global $P445, "%LANG"
    unless_null $P445, vivify_298
    die "Contextual %*LANG not found"
  vivify_298:
  vivify_297:
    set $P446, $P445[$P444]
    unless_null $P446, vivify_299
    new $P446, "Undef"
  vivify_299:
    store_lex "$*ACTIONS", $P446
.annotate 'line', 834

            .local pmc self
            .local int pos
            self = find_lex 'self'
            $P0 = find_lex '$lang_cursor'
            ($P447, pos) = self.'!cursor_start'($P0)
            $P447.'!cursor_pos'(pos)
        
    store_lex "$cur", $P447
.annotate 'line', 842
    find_lex $P448, "$cur"
    find_lex $P449, "$regex"
    set $S450, $P449
    $P451 = $P448.$S450()
.annotate 'line', 831
    .return ($P451)
.end


.namespace ["HLL";"Grammar"]
.sub "_block453" :load :anon :subid("119_1295995577.546")
.annotate 'line', 3
    .const 'Sub' $P455 = "11_1295995577.546" 
    $P456 = $P455()
    .return ($P456)
.end


.namespace []
.sub "_block672" :load :anon :subid("121_1295995577.546")
.annotate 'line', 1
    .const 'Sub' $P674 = "10_1295995577.546" 
    $P675 = $P674()
    .return ($P675)
.end

### .include 'src/cheats/hll-grammar.pir'
# Copyright (C) 2009, The Perl Foundation.

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
    .local pmc brackets
    brackets = box unicode:"<>[](){}\xab\xbb\u0f3a\u0f3b\u0f3c\u0f3d\u169b\u169c\u2045\u2046\u207d\u207e\u208d\u208e\u2329\u232a\u2768\u2769\u276a\u276b\u276c\u276d\u276e\u276f\u2770\u2771\u2772\u2773\u2774\u2775\u27c5\u27c6\u27e6\u27e7\u27e8\u27e9\u27ea\u27eb\u2983\u2984\u2985\u2986\u2987\u2988\u2989\u298a\u298b\u298c\u298d\u298e\u298f\u2990\u2991\u2992\u2993\u2994\u2995\u2996\u2997\u2998\u29d8\u29d9\u29da\u29db\u29fc\u29fd\u3008\u3009\u300a\u300b\u300c\u300d\u300e\u300f\u3010\u3011\u3014\u3015\u3016\u3017\u3018\u3019\u301a\u301b\u301d\u301e\ufd3e\ufd3f\ufe17\ufe18\ufe35\ufe36\ufe37\ufe38\ufe39\ufe3a\ufe3b\ufe3c\ufe3d\ufe3e\ufe3f\ufe40\ufe41\ufe42\ufe43\ufe44\ufe47\ufe48\ufe59\ufe5a\ufe5b\ufe5c\ufe5d\ufe5e\uff08\uff09\uff3b\uff3d\uff5b\uff5d\uff5f\uff60\uff62\uff63"
    set_global '$!brackets', brackets
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

    $P0 = get_hll_global ['HLL'], 'Compiler'
    $I1 = $P0.'lineof'(target, pos)
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

    .local pmc cur, debug
    .local string target
    .local int pos

    (cur, pos, target) = self.'!cursor_start'()
    debug = getattribute cur, '$!debug'
    if null debug goto debug_1
    cur.'!cursor_debug'('START', 'quote_EXPR')
  debug_1:

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
    if null debug goto done
    cur.'!cursor_debug'('PASS', 'quote_EXPR')
    goto done
  fail:
    if null debug goto done
    cur.'!cursor_debug'('FAIL', 'quote_EXPR')
  done:
    .return (cur)
.end


.sub 'quotemod_check' :method :nsentry
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


.sub 'split_words' :method :nsentry
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

    .local pmc here, pos, debug
    (here, pos) = self.'!cursor_start'()
    debug = getattribute here, '$!debug'
    if null debug goto debug_1
    here.'!cursor_debug'('START', 'EXPR')
  debug_1:

    if has_preclim goto have_preclim
    preclim = ''
  have_preclim:

    .const 'Sub' reduce = 'EXPR_reduce'
    .local string termishrx
    termishrx = 'termish'

    .local pmc opstack, termstack
    opstack = new ['ResizablePMCArray']
    .lex '@opstack', opstack
    termstack = new ['ResizablePMCArray']
    .lex '@termstack', termstack

  term_loop:
    here = here.termishrx()
    unless here goto fail
    .local pmc termish
    termish = here.'MATCH'()

    # interleave any prefix/postfix we might have found
    .local pmc termOPER, prefixish, postfixish
    termOPER = termish
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
    delete termish['prefixish']

  postfix_loop:
    if null postfixish goto postfix_done
    unless postfixish goto postfix_done
    $P0 = pop postfixish
    push opstack, $P0
    goto postfix_loop
  postfix_done:
    delete termish['postfixish']

    $P0 = termish['term']
    push termstack, $P0

    # Now see if we can fetch an infix operator
    .local pmc infixcur, infix
    here = here.'ws'()
    infixcur = here.'infixish'()
    unless infixcur goto term_done
    infix = infixcur.'MATCH'()

    .local pmc inO
    $P0 = infix['OPER']
    inO = $P0['O']
    termishrx = inO['nextterm']
    if termishrx goto have_termishrx
    termishrx = 'termish'
  have_termishrx:

    .local string inprec, inassoc, opprec
    inprec = inO['prec']
    unless inprec goto err_inprec
    if inprec <= preclim goto term_done
    inassoc = inO['assoc']

    $P0 = inO['sub']
    if null $P0 goto subprec_done
    inO['prec'] = $P0
  subprec_done:

  reduce_loop:
    unless opstack goto reduce_done
    $P0 = opstack[-1]
    $P0 = $P0['OPER']
    $P0 = $P0['O']
    opprec = $P0['prec']
    unless opprec > inprec goto reduce_gt_done
    capture_lex reduce
    self.reduce(termstack, opstack)
    goto reduce_loop
  reduce_gt_done:

    unless opprec == inprec goto reduce_done
    # equal precedence, use associativity to decide
    unless inassoc == 'left' goto reduce_done
    # left associative, reduce immediately
    capture_lex reduce
    self.reduce(termstack, opstack)
  reduce_done:

    push opstack, infix        # The Shift
    here = infixcur.'ws'()
    goto term_loop
  term_done:

  opstack_loop:
    unless opstack goto opstack_done
    capture_lex reduce
    self.reduce(termstack, opstack)
    goto opstack_loop
  opstack_done:

  expr_done:
    .local pmc term
    term = pop termstack
    pos = here.'pos'()
    here = self.'!cursor_start'()
    setattribute here, '$!pos', pos
    setattribute here, '$!match', term
    here.'!reduce'('EXPR')
    if null debug goto done
    here.'!cursor_debug'('PASS', 'EXPR')
    goto done

  fail:
    if null debug goto done
    here.'!cursor_debug'('FAIL', 'EXPR')
  done:
    .return (here)

  err_internal:
    $I0 = termstack
    here.'panic'('Internal operator parser error, @termstack == ', $I0)
  err_inprec:
    infixcur.'panic'('Missing infixish operator precedence')
.end


.sub 'EXPR_reduce' :method :anon
    .param pmc termstack
    .param pmc opstack

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


.sub 'ternary' :method
    .param pmc match
    $P0 = match[1]
    $P1 = match['infix']
    $P1 = $P1['EXPR']
    match[1] = $P1
    match[2] = $P0
.end


.sub 'MARKER' :method
    .param pmc markname

    .local pmc pos
    pos = self.'pos'()
    self.'!cursor_debug'('START', 'MARKER name=', markname, ', pos=', pos)

    .local pmc markhash
    markhash = get_global '%!MARKHASH'
    unless null markhash goto have_markhash
    markhash = new ['Hash']
    set_global '%!MARKHASH', markhash
  have_markhash:
    markhash[markname] = pos
    self.'!cursor_debug'('PASS', 'MARKER')
    .return (1)
.end


.sub 'MARKED' :method
    .param pmc markname

    self.'!cursor_debug'('START','MARKED name=', markname)

    .local pmc markhash
    markhash = get_global '%!MARKHASH'
    if null markhash goto fail
    $P0 = markhash[markname]
    if null $P0 goto fail
    $P1 = self.'pos'()
    unless $P0 == $P1 goto fail
    self.'!cursor_debug'('PASS','MARKED')
    .return (1)
  fail:
    self.'!cursor_debug'('FAIL','MARKED')
    .return (0)
.end


.sub 'LANG' :method
    .param string lang
    .param string regex

    .local pmc langhash, cur, pos
    langhash = find_dynamic_lex '%*LANG'
    $P0 = langhash[lang]
    (cur, pos) = self.'!cursor_start'($P0)
    cur.'!cursor_pos'(pos)

    $S0 = concat lang, '-actions'
    $P0 = langhash[$S0]
    .lex '$*ACTIONS', $P0

    # XXX can't use tailcall here or we lose $*ACTIONS
    $P1 = cur.regex()
    .return ($P1)
.end

=back

=cut

# Local Variables:
#   mode: pir
#   fill-column: 100
# End:
# vim: expandtab shiftwidth=4 ft=pir:

### .include 'gen/hllgrammar-actions.pir'

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1295995580.421")
.annotate 'line', 0
    get_hll_global $P15, ["HLL";"Actions"], "_block14" 
    capture_lex $P15
.annotate 'line', 1
    nqp_dynop_setup 
    get_hll_global $P13, ["HLL"], "Actions"
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 3
    get_hll_global $P15, ["HLL";"Actions"], "_block14" 
    capture_lex $P15
    $P640 = $P15()
.annotate 'line', 1
    .return ($P640)
    .const 'Sub' $P642 = "56_1295995580.421" 
    .return ($P642)
.end


.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace ["HLL";"Actions"]
.sub "_block14"  :subid("11_1295995580.421") :outer("10_1295995580.421")
.annotate 'line', 3
    .const 'Sub' $P571 = "55_1295995580.421" 
    capture_lex $P571
    .const 'Sub' $P548 = "53_1295995580.421" 
    capture_lex $P548
    .const 'Sub' $P525 = "51_1295995580.421" 
    capture_lex $P525
    .const 'Sub' $P497 = "50_1295995580.421" 
    capture_lex $P497
    .const 'Sub' $P480 = "49_1295995580.421" 
    capture_lex $P480
    .const 'Sub' $P475 = "48_1295995580.421" 
    capture_lex $P475
    .const 'Sub' $P467 = "47_1295995580.421" 
    capture_lex $P467
    .const 'Sub' $P452 = "46_1295995580.421" 
    capture_lex $P452
    .const 'Sub' $P437 = "45_1295995580.421" 
    capture_lex $P437
    .const 'Sub' $P432 = "44_1295995580.421" 
    capture_lex $P432
    .const 'Sub' $P427 = "43_1295995580.421" 
    capture_lex $P427
    .const 'Sub' $P422 = "42_1295995580.421" 
    capture_lex $P422
    .const 'Sub' $P417 = "41_1295995580.421" 
    capture_lex $P417
    .const 'Sub' $P412 = "40_1295995580.421" 
    capture_lex $P412
    .const 'Sub' $P407 = "39_1295995580.421" 
    capture_lex $P407
    .const 'Sub' $P399 = "38_1295995580.421" 
    capture_lex $P399
    .const 'Sub' $P394 = "37_1295995580.421" 
    capture_lex $P394
    .const 'Sub' $P380 = "36_1295995580.421" 
    capture_lex $P380
    .const 'Sub' $P307 = "34_1295995580.421" 
    capture_lex $P307
    .const 'Sub' $P246 = "31_1295995580.421" 
    capture_lex $P246
    .const 'Sub' $P239 = "30_1295995580.421" 
    capture_lex $P239
    .const 'Sub' $P232 = "29_1295995580.421" 
    capture_lex $P232
    .const 'Sub' $P225 = "28_1295995580.421" 
    capture_lex $P225
    .const 'Sub' $P218 = "27_1295995580.421" 
    capture_lex $P218
    .const 'Sub' $P211 = "26_1295995580.421" 
    capture_lex $P211
    .const 'Sub' $P203 = "25_1295995580.421" 
    capture_lex $P203
    .const 'Sub' $P195 = "24_1295995580.421" 
    capture_lex $P195
    .const 'Sub' $P189 = "23_1295995580.421" 
    capture_lex $P189
    .const 'Sub' $P181 = "22_1295995580.421" 
    capture_lex $P181
    .const 'Sub' $P173 = "21_1295995580.421" 
    capture_lex $P173
    .const 'Sub' $P71 = "18_1295995580.421" 
    capture_lex $P71
    .const 'Sub' $P35 = "15_1295995580.421" 
    capture_lex $P35
    .const 'Sub' $P30 = "14_1295995580.421" 
    capture_lex $P30
    .const 'Sub' $P23 = "13_1295995580.421" 
    capture_lex $P23
    .const 'Sub' $P17 = "12_1295995580.421" 
    capture_lex $P17
    get_global $P16, "$?CLASS"
    nqp_dynop_setup 
    .const 'Sub' $P17 = "12_1295995580.421" 
    newclosure $P21, $P17
    .lex "string_to_int", $P21
    find_lex $P22, "string_to_int"
    set_global "string_to_int", $P22
.annotate 'line', 37
    .const 'Sub' $P23 = "13_1295995580.421" 
    newclosure $P26, $P23
    .lex "ints_to_string", $P26
.annotate 'line', 3
    find_lex $P27, "ints_to_string"
    set_global "ints_to_string", $P27
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
    find_lex $P28, "string_to_int"
    find_lex $P29, "ints_to_string"
.annotate 'line', 225
    .const 'Sub' $P548 = "53_1295995580.421" 
    newclosure $P563, $P548
.annotate 'line', 3
    .return ($P563)
    .const 'Sub' $P565 = "54_1295995580.421" 
    .return ($P565)
.end


.namespace ["HLL";"Actions"]
.sub "" :load :init :subid("post57") :outer("11_1295995580.421")
.annotate 'line', 3
    get_hll_global $P15, ["HLL";"Actions"], "_block14" 
    .local pmc block
    set block, $P15
    .const 'Sub' $P568 = "12_1295995580.421" 
    set_global "string_to_int", $P568
    .const 'Sub' $P569 = "13_1295995580.421" 
    set_global "ints_to_string", $P569
    .const 'Sub' $P571 = "55_1295995580.421" 
    capture_lex $P571
    $P571()
.end


.namespace ["HLL";"Actions"]
.sub "_block570"  :anon :subid("55_1295995580.421") :outer("11_1295995580.421")
.annotate 'line', 3
    get_hll_global $P572, "NQPClassHOW"
    $P573 = $P572."new_type"("Actions" :named("name"))
    .local pmc type_obj
    set type_obj, $P573
    set_hll_global ["HLL"], "Actions", type_obj
    set_global "$?CLASS", type_obj
    get_how $P574, type_obj
    .const 'Sub' $P575 = "14_1295995580.421" 
    $P574."add_method"(type_obj, "CTXSAVE", $P575)
    get_how $P576, type_obj
    .const 'Sub' $P577 = "15_1295995580.421" 
    $P576."add_method"(type_obj, "SET_BLOCK_OUTER_CTX", $P577)
    get_how $P578, type_obj
    .const 'Sub' $P579 = "18_1295995580.421" 
    $P578."add_method"(type_obj, "EXPR", $P579)
    get_how $P580, type_obj
    .const 'Sub' $P581 = "21_1295995580.421" 
    $P580."add_method"(type_obj, "term:sym<circumfix>", $P581)
    get_how $P582, type_obj
    .const 'Sub' $P583 = "22_1295995580.421" 
    $P582."add_method"(type_obj, "termish", $P583)
    get_how $P584, type_obj
    .const 'Sub' $P585 = "23_1295995580.421" 
    $P584."add_method"(type_obj, "nullterm", $P585)
    get_how $P586, type_obj
    .const 'Sub' $P587 = "24_1295995580.421" 
    $P586."add_method"(type_obj, "nullterm_alt", $P587)
    get_how $P588, type_obj
    .const 'Sub' $P589 = "25_1295995580.421" 
    $P588."add_method"(type_obj, "integer", $P589)
    get_how $P590, type_obj
    .const 'Sub' $P591 = "26_1295995580.421" 
    $P590."add_method"(type_obj, "dec_number", $P591)
    get_how $P592, type_obj
    .const 'Sub' $P593 = "27_1295995580.421" 
    $P592."add_method"(type_obj, "decint", $P593)
    get_how $P594, type_obj
    .const 'Sub' $P595 = "28_1295995580.421" 
    $P594."add_method"(type_obj, "hexint", $P595)
    get_how $P596, type_obj
    .const 'Sub' $P597 = "29_1295995580.421" 
    $P596."add_method"(type_obj, "octint", $P597)
    get_how $P598, type_obj
    .const 'Sub' $P599 = "30_1295995580.421" 
    $P598."add_method"(type_obj, "binint", $P599)
    get_how $P600, type_obj
    .const 'Sub' $P601 = "31_1295995580.421" 
    $P600."add_method"(type_obj, "quote_EXPR", $P601)
    get_how $P602, type_obj
    .const 'Sub' $P603 = "34_1295995580.421" 
    $P602."add_method"(type_obj, "quote_delimited", $P603)
    get_how $P604, type_obj
    .const 'Sub' $P605 = "36_1295995580.421" 
    $P604."add_method"(type_obj, "quote_atom", $P605)
    get_how $P606, type_obj
    .const 'Sub' $P607 = "37_1295995580.421" 
    $P606."add_method"(type_obj, "quote_escape:sym<backslash>", $P607)
    get_how $P608, type_obj
    .const 'Sub' $P609 = "38_1295995580.421" 
    $P608."add_method"(type_obj, "quote_escape:sym<stopper>", $P609)
    get_how $P610, type_obj
    .const 'Sub' $P611 = "39_1295995580.421" 
    $P610."add_method"(type_obj, "quote_escape:sym<bs>", $P611)
    get_how $P612, type_obj
    .const 'Sub' $P613 = "40_1295995580.421" 
    $P612."add_method"(type_obj, "quote_escape:sym<nl>", $P613)
    get_how $P614, type_obj
    .const 'Sub' $P615 = "41_1295995580.421" 
    $P614."add_method"(type_obj, "quote_escape:sym<cr>", $P615)
    get_how $P616, type_obj
    .const 'Sub' $P617 = "42_1295995580.421" 
    $P616."add_method"(type_obj, "quote_escape:sym<tab>", $P617)
    get_how $P618, type_obj
    .const 'Sub' $P619 = "43_1295995580.421" 
    $P618."add_method"(type_obj, "quote_escape:sym<ff>", $P619)
    get_how $P620, type_obj
    .const 'Sub' $P621 = "44_1295995580.421" 
    $P620."add_method"(type_obj, "quote_escape:sym<esc>", $P621)
    get_how $P622, type_obj
    .const 'Sub' $P623 = "45_1295995580.421" 
    $P622."add_method"(type_obj, "quote_escape:sym<hex>", $P623)
    get_how $P624, type_obj
    .const 'Sub' $P625 = "46_1295995580.421" 
    $P624."add_method"(type_obj, "quote_escape:sym<oct>", $P625)
    get_how $P626, type_obj
    .const 'Sub' $P627 = "47_1295995580.421" 
    $P626."add_method"(type_obj, "quote_escape:sym<chr>", $P627)
    get_how $P628, type_obj
    .const 'Sub' $P629 = "48_1295995580.421" 
    $P628."add_method"(type_obj, "quote_escape:sym<0>", $P629)
    get_how $P630, type_obj
    .const 'Sub' $P631 = "49_1295995580.421" 
    $P630."add_method"(type_obj, "quote_escape:sym<misc>", $P631)
    get_how $P632, type_obj
    .const 'Sub' $P633 = "50_1295995580.421" 
    $P632."add_method"(type_obj, "charname", $P633)
    get_how $P634, type_obj
    .const 'Sub' $P635 = "51_1295995580.421" 
    $P634."add_method"(type_obj, "charnames", $P635)
    get_how $P636, type_obj
    .const 'Sub' $P637 = "53_1295995580.421" 
    $P636."add_method"(type_obj, "charspec", $P637)
    get_how $P638, type_obj
    $P639 = $P638."compose"(type_obj)
    .return ($P639)
.end


.namespace ["HLL";"Actions"]
.sub "string_to_int"  :subid("12_1295995580.421") :outer("11_1295995580.421")
    .param pmc param_18
    .param pmc param_19
.annotate 'line', 3
    .lex "$src", param_18
    .lex "$base", param_19
.annotate 'line', 4

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
        if digitval >= base goto err_base
        result *= base
        result += digitval
      str_next:
        inc pos
        goto str_loop
      err_base:
	src.'panic'('Invalid radix conversion of "', char, '"')
      str_done:
        $P20 = box result
    
.annotate 'line', 3
    .return ($P20)
.end


.namespace ["HLL";"Actions"]
.sub "ints_to_string"  :subid("13_1295995580.421") :outer("11_1295995580.421")
    .param pmc param_24
.annotate 'line', 37
    .lex "$ints", param_24
.annotate 'line', 38

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
        result = concat result, $S0
        goto ints_loop
      ints_1:
        $I0 = ints.'ast'()
        result = chr $I0
      ints_done:
        $P25 = box result
    
.annotate 'line', 37
    .return ($P25)
.end


.namespace ["HLL";"Actions"]
.sub "CTXSAVE"  :subid("14_1295995580.421") :outer("11_1295995580.421")
    .param pmc param_31
.annotate 'line', 62
    .lex "self", param_31
.annotate 'line', 63
    get_hll_global $P32, ["PAST"], "Op"
.annotate 'line', 69
    new $P33, "ResizablePMCArray"
    push $P33, "    $P0 = find_dynamic_lex \"$*CTXSAVE\""
    push $P33, "    if null $P0 goto ctxsave_done"
    push $P33, "    $I0 = can $P0, \"ctxsave\""
    push $P33, "    unless $I0 goto ctxsave_done"
    push $P33, "    $P0.\"ctxsave\"()"
    push $P33, "  ctxsave_done:"
    $P34 = $P32."new"($P33 :named("inline"))
.annotate 'line', 62
    .return ($P34)
.end


.namespace ["HLL";"Actions"]
.sub "SET_BLOCK_OUTER_CTX"  :subid("15_1295995580.421") :outer("11_1295995580.421")
    .param pmc param_36
    .param pmc param_37
.annotate 'line', 76
    .const 'Sub' $P47 = "16_1295995580.421" 
    capture_lex $P47
    .lex "self", param_36
    .lex "$block", param_37
.annotate 'line', 77
    new $P38, "Undef"
    .lex "$outer_ctx", $P38
    find_dynamic_lex $P39, "%*COMPILING"
    unless_null $P39, vivify_58
    get_hll_global $P39, "%COMPILING"
    unless_null $P39, vivify_59
    die "Contextual %*COMPILING not found"
  vivify_59:
  vivify_58:
    set $P40, $P39["%?OPTIONS"]
    unless_null $P40, vivify_60
    $P40 = root_new ['parrot';'Hash']
  vivify_60:
    set $P41, $P40["outer_ctx"]
    unless_null $P41, vivify_61
    new $P41, "Undef"
  vivify_61:
    store_lex "$outer_ctx", $P41
.annotate 'line', 78
    find_lex $P44, "$outer_ctx"
    defined $I45, $P44
    if $I45, if_43
    new $P42, 'Integer'
    set $P42, $I45
    goto if_43_end
  if_43:
    .const 'Sub' $P47 = "16_1295995580.421" 
    capture_lex $P47
    $P70 = $P47()
    set $P42, $P70
  if_43_end:
.annotate 'line', 76
    .return ($P42)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block46"  :anon :subid("16_1295995580.421") :outer("15_1295995580.421")
.annotate 'line', 78
    .const 'Sub' $P61 = "17_1295995580.421" 
    capture_lex $P61
.annotate 'line', 79
    $P48 = root_new ['parrot';'ResizablePMCArray']
    .lex "@ns", $P48
    find_lex $P49, "$outer_ctx"
    getattribute $P50, $P49, "current_namespace"
    $P51 = $P50."get_name"()
    store_lex "@ns", $P51
.annotate 'line', 80
    find_lex $P52, "@ns"
    $P52."shift"()
.annotate 'line', 81
    find_lex $P53, "$block"
    find_lex $P54, "@ns"
    $P53."namespace"($P54)
.annotate 'line', 82
    find_lex $P56, "$outer_ctx"
    $P57 = $P56."lexpad_full"()
    defined $I58, $P57
    unless $I58, for_undef_62
    iter $P55, $P57
    new $P68, 'ExceptionHandler'
    set_addr $P68, loop67_handler
    $P68."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P68
  loop67_test:
    unless $P55, loop67_done
    shift $P59, $P55
  loop67_redo:
    .const 'Sub' $P61 = "17_1295995580.421" 
    capture_lex $P61
    $P61($P59)
  loop67_next:
    goto loop67_test
  loop67_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P69, exception, 'type'
    eq $P69, .CONTROL_LOOP_NEXT, loop67_next
    eq $P69, .CONTROL_LOOP_REDO, loop67_redo
  loop67_done:
    pop_eh 
  for_undef_62:
.annotate 'line', 78
    .return ($P55)
.end


.namespace ["HLL";"Actions"]
.sub "_block60"  :anon :subid("17_1295995580.421") :outer("16_1295995580.421")
    .param pmc param_62
.annotate 'line', 82
    .lex "$_", param_62
.annotate 'line', 83
    find_lex $P63, "$block"
    find_lex $P64, "$_"
    $P65 = $P64."key"()
    $P66 = $P63."symbol"($P65, "lexical" :named("scope"))
.annotate 'line', 82
    .return ($P66)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "EXPR"  :subid("18_1295995580.421") :outer("11_1295995580.421")
    .param pmc param_74
    .param pmc param_75
    .param pmc param_76 :optional
    .param int has_param_76 :opt_flag
.annotate 'line', 89
    .const 'Sub' $P155 = "20_1295995580.421" 
    capture_lex $P155
    .const 'Sub' $P122 = "19_1295995580.421" 
    capture_lex $P122
    new $P73, ['ExceptionHandler'], .CONTROL_RETURN
    set_addr $P73, control_72
    push_eh $P73
    .lex "self", param_74
    .lex "$/", param_75
    if has_param_76, optparam_63
    new $P77, "Undef"
    set param_76, $P77
  optparam_63:
    .lex "$key", param_76
.annotate 'line', 91
    new $P78, "Undef"
    .lex "$past", $P78
.annotate 'line', 90
    find_lex $P80, "$key"
    if $P80, unless_79_end
    new $P81, "Exception"
    set $P81['type'], .CONTROL_RETURN
    new $P82, "Integer"
    assign $P82, 0
    setattribute $P81, 'payload', $P82
    throw $P81
  unless_79_end:
.annotate 'line', 91
    find_lex $P84, "$/"
    $P85 = $P84."ast"()
    set $P83, $P85
    defined $I87, $P83
    if $I87, default_86
    find_lex $P88, "$/"
    unless_null $P88, vivify_64
    $P88 = root_new ['parrot';'Hash']
  vivify_64:
    set $P89, $P88["OPER"]
    unless_null $P89, vivify_65
    new $P89, "Undef"
  vivify_65:
    $P90 = $P89."ast"()
    set $P83, $P90
  default_86:
    store_lex "$past", $P83
.annotate 'line', 92
    find_lex $P92, "$past"
    if $P92, unless_91_end
.annotate 'line', 93
    get_hll_global $P93, ["PAST"], "Op"
    find_lex $P94, "$/"
    $P95 = $P93."new"($P94 :named("node"))
    store_lex "$past", $P95
.annotate 'line', 94
    find_lex $P97, "$/"
    unless_null $P97, vivify_66
    $P97 = root_new ['parrot';'Hash']
  vivify_66:
    set $P98, $P97["OPER"]
    unless_null $P98, vivify_67
    $P98 = root_new ['parrot';'Hash']
  vivify_67:
    set $P99, $P98["O"]
    unless_null $P99, vivify_68
    $P99 = root_new ['parrot';'Hash']
  vivify_68:
    set $P100, $P99["pasttype"]
    unless_null $P100, vivify_69
    new $P100, "Undef"
  vivify_69:
    if $P100, if_96
.annotate 'line', 95
    find_lex $P108, "$/"
    unless_null $P108, vivify_70
    $P108 = root_new ['parrot';'Hash']
  vivify_70:
    set $P109, $P108["OPER"]
    unless_null $P109, vivify_71
    $P109 = root_new ['parrot';'Hash']
  vivify_71:
    set $P110, $P109["O"]
    unless_null $P110, vivify_72
    $P110 = root_new ['parrot';'Hash']
  vivify_72:
    set $P111, $P110["pirop"]
    unless_null $P111, vivify_73
    new $P111, "Undef"
  vivify_73:
    unless $P111, if_107_end
    find_lex $P112, "$past"
    find_lex $P113, "$/"
    unless_null $P113, vivify_74
    $P113 = root_new ['parrot';'Hash']
  vivify_74:
    set $P114, $P113["OPER"]
    unless_null $P114, vivify_75
    $P114 = root_new ['parrot';'Hash']
  vivify_75:
    set $P115, $P114["O"]
    unless_null $P115, vivify_76
    $P115 = root_new ['parrot';'Hash']
  vivify_76:
    set $P116, $P115["pirop"]
    unless_null $P116, vivify_77
    new $P116, "Undef"
  vivify_77:
    set $S117, $P116
    $P112."pirop"($S117)
  if_107_end:
    goto if_96_end
  if_96:
.annotate 'line', 94
    find_lex $P101, "$past"
    find_lex $P102, "$/"
    unless_null $P102, vivify_78
    $P102 = root_new ['parrot';'Hash']
  vivify_78:
    set $P103, $P102["OPER"]
    unless_null $P103, vivify_79
    $P103 = root_new ['parrot';'Hash']
  vivify_79:
    set $P104, $P103["O"]
    unless_null $P104, vivify_80
    $P104 = root_new ['parrot';'Hash']
  vivify_80:
    set $P105, $P104["pasttype"]
    unless_null $P105, vivify_81
    new $P105, "Undef"
  vivify_81:
    set $S106, $P105
    $P101."pasttype"($S106)
  if_96_end:
.annotate 'line', 96
    find_lex $P119, "$past"
    $P120 = $P119."name"()
    if $P120, unless_118_end
    .const 'Sub' $P122 = "19_1295995580.421" 
    capture_lex $P122
    $P122()
  unless_118_end:
  unless_91_end:
.annotate 'line', 107
    find_lex $P142, "$key"
    set $S143, $P142
    iseq $I144, $S143, "POSTFIX"
    if $I144, if_141
.annotate 'line', 109
    find_lex $P150, "$/"
    $P151 = $P150."list"()
    defined $I152, $P151
    unless $I152, for_undef_85
    iter $P149, $P151
    new $P167, 'ExceptionHandler'
    set_addr $P167, loop166_handler
    $P167."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P167
  loop166_test:
    unless $P149, loop166_done
    shift $P153, $P149
  loop166_redo:
    .const 'Sub' $P155 = "20_1295995580.421" 
    capture_lex $P155
    $P155($P153)
  loop166_next:
    goto loop166_test
  loop166_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P168, exception, 'type'
    eq $P168, .CONTROL_LOOP_NEXT, loop166_next
    eq $P168, .CONTROL_LOOP_REDO, loop166_redo
  loop166_done:
    pop_eh 
  for_undef_85:
.annotate 'line', 108
    goto if_141_end
  if_141:
.annotate 'line', 107
    find_lex $P145, "$past"
    find_lex $P146, "$/"
    unless_null $P146, vivify_86
    $P146 = root_new ['parrot';'ResizablePMCArray']
  vivify_86:
    set $P147, $P146[0]
    unless_null $P147, vivify_87
    new $P147, "Undef"
  vivify_87:
    $P148 = $P147."ast"()
    $P145."unshift"($P148)
  if_141_end:
.annotate 'line', 111
    find_lex $P169, "$/"
    find_lex $P170, "$past"
    $P171 = $P169."!make"($P170)
.annotate 'line', 89
    .return ($P171)
  control_72:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P172, exception, "payload"
    .return ($P172)
.end


.namespace ["HLL";"Actions"]
.sub "_block121"  :anon :subid("19_1295995580.421") :outer("18_1295995580.421")
.annotate 'line', 98
    new $P123, "Undef"
    .lex "$name", $P123
.annotate 'line', 97
    find_lex $P125, "$key"
    set $S126, $P125
    iseq $I127, $S126, "LIST"
    unless $I127, if_124_end
    new $P128, "String"
    assign $P128, "infix"
    store_lex "$key", $P128
  if_124_end:
.annotate 'line', 98

                $P0 = find_lex '$key'
                $S0 = $P0
                $S0 = downcase $S0
                $P129 = box $S0
            
    concat $P130, $P129, ":<"
.annotate 'line', 103
    find_lex $P131, "$/"
    unless_null $P131, vivify_82
    $P131 = root_new ['parrot';'Hash']
  vivify_82:
    set $P132, $P131["OPER"]
    unless_null $P132, vivify_83
    $P132 = root_new ['parrot';'Hash']
  vivify_83:
    set $P133, $P132["sym"]
    unless_null $P133, vivify_84
    new $P133, "Undef"
  vivify_84:
    concat $P134, $P130, $P133
    concat $P135, $P134, ">"
    store_lex "$name", $P135
.annotate 'line', 104
    find_lex $P136, "$past"
    new $P137, "String"
    assign $P137, "&"
    find_lex $P138, "$name"
    concat $P139, $P137, $P138
    $P140 = $P136."name"($P139)
.annotate 'line', 96
    .return ($P140)
.end


.namespace ["HLL";"Actions"]
.sub "_block154"  :anon :subid("20_1295995580.421") :outer("18_1295995580.421")
    .param pmc param_156
.annotate 'line', 109
    .lex "$_", param_156
    find_lex $P159, "$_"
    $P160 = $P159."ast"()
    defined $I161, $P160
    if $I161, if_158
    new $P157, 'Integer'
    set $P157, $I161
    goto if_158_end
  if_158:
    find_lex $P162, "$past"
    find_lex $P163, "$_"
    $P164 = $P163."ast"()
    $P165 = $P162."push"($P164)
    set $P157, $P165
  if_158_end:
    .return ($P157)
.end


.namespace ["HLL";"Actions"]
.sub "term:sym<circumfix>"  :subid("21_1295995580.421") :outer("11_1295995580.421")
    .param pmc param_174
    .param pmc param_175
.annotate 'line', 114
    .lex "self", param_174
    .lex "$/", param_175
    find_lex $P176, "$/"
    find_lex $P177, "$/"
    unless_null $P177, vivify_88
    $P177 = root_new ['parrot';'Hash']
  vivify_88:
    set $P178, $P177["circumfix"]
    unless_null $P178, vivify_89
    new $P178, "Undef"
  vivify_89:
    $P179 = $P178."ast"()
    $P180 = $P176."!make"($P179)
    .return ($P180)
.end


.namespace ["HLL";"Actions"]
.sub "termish"  :subid("22_1295995580.421") :outer("11_1295995580.421")
    .param pmc param_182
    .param pmc param_183
.annotate 'line', 116
    .lex "self", param_182
    .lex "$/", param_183
    find_lex $P184, "$/"
    find_lex $P185, "$/"
    unless_null $P185, vivify_90
    $P185 = root_new ['parrot';'Hash']
  vivify_90:
    set $P186, $P185["term"]
    unless_null $P186, vivify_91
    new $P186, "Undef"
  vivify_91:
    $P187 = $P186."ast"()
    $P188 = $P184."!make"($P187)
    .return ($P188)
.end


.namespace ["HLL";"Actions"]
.sub "nullterm"  :subid("23_1295995580.421") :outer("11_1295995580.421")
    .param pmc param_190
    .param pmc param_191
.annotate 'line', 117
    .lex "self", param_190
    .lex "$/", param_191
    find_lex $P192, "$/"
 $P193 = new ['Undef'] 
    $P194 = $P192."!make"($P193)
    .return ($P194)
.end


.namespace ["HLL";"Actions"]
.sub "nullterm_alt"  :subid("24_1295995580.421") :outer("11_1295995580.421")
    .param pmc param_196
    .param pmc param_197
.annotate 'line', 118
    .lex "self", param_196
    .lex "$/", param_197
    find_lex $P198, "$/"
    find_lex $P199, "$/"
    unless_null $P199, vivify_92
    $P199 = root_new ['parrot';'Hash']
  vivify_92:
    set $P200, $P199["term"]
    unless_null $P200, vivify_93
    new $P200, "Undef"
  vivify_93:
    $P201 = $P200."ast"()
    $P202 = $P198."!make"($P201)
    .return ($P202)
.end


.namespace ["HLL";"Actions"]
.sub "integer"  :subid("25_1295995580.421") :outer("11_1295995580.421")
    .param pmc param_204
    .param pmc param_205
.annotate 'line', 120
    .lex "self", param_204
    .lex "$/", param_205
    find_lex $P206, "$/"
    find_lex $P207, "$/"
    unless_null $P207, vivify_94
    $P207 = root_new ['parrot';'Hash']
  vivify_94:
    set $P208, $P207["VALUE"]
    unless_null $P208, vivify_95
    new $P208, "Undef"
  vivify_95:
    $P209 = $P208."ast"()
    $P210 = $P206."!make"($P209)
    .return ($P210)
.end


.namespace ["HLL";"Actions"]
.sub "dec_number"  :subid("26_1295995580.421") :outer("11_1295995580.421")
    .param pmc param_212
    .param pmc param_213
.annotate 'line', 122
    .lex "self", param_212
    .lex "$/", param_213
    find_lex $P214, "$/"
    find_lex $P215, "$/"
    set $N216, $P215
    $P217 = $P214."!make"($N216)
    .return ($P217)
.end


.namespace ["HLL";"Actions"]
.sub "decint"  :subid("27_1295995580.421") :outer("11_1295995580.421")
    .param pmc param_219
    .param pmc param_220
.annotate 'line', 124
    .lex "self", param_219
    .lex "$/", param_220
    find_lex $P221, "$/"
    find_lex $P222, "$/"
    $P223 = "string_to_int"($P222, 10)
    $P224 = $P221."!make"($P223)
    .return ($P224)
.end


.namespace ["HLL";"Actions"]
.sub "hexint"  :subid("28_1295995580.421") :outer("11_1295995580.421")
    .param pmc param_226
    .param pmc param_227
.annotate 'line', 125
    .lex "self", param_226
    .lex "$/", param_227
    find_lex $P228, "$/"
    find_lex $P229, "$/"
    $P230 = "string_to_int"($P229, 16)
    $P231 = $P228."!make"($P230)
    .return ($P231)
.end


.namespace ["HLL";"Actions"]
.sub "octint"  :subid("29_1295995580.421") :outer("11_1295995580.421")
    .param pmc param_233
    .param pmc param_234
.annotate 'line', 126
    .lex "self", param_233
    .lex "$/", param_234
    find_lex $P235, "$/"
    find_lex $P236, "$/"
    $P237 = "string_to_int"($P236, 8)
    $P238 = $P235."!make"($P237)
    .return ($P238)
.end


.namespace ["HLL";"Actions"]
.sub "binint"  :subid("30_1295995580.421") :outer("11_1295995580.421")
    .param pmc param_240
    .param pmc param_241
.annotate 'line', 127
    .lex "self", param_240
    .lex "$/", param_241
    find_lex $P242, "$/"
    find_lex $P243, "$/"
    $P244 = "string_to_int"($P243, 2)
    $P245 = $P242."!make"($P244)
    .return ($P245)
.end


.namespace ["HLL";"Actions"]
.sub "quote_EXPR"  :subid("31_1295995580.421") :outer("11_1295995580.421")
    .param pmc param_247
    .param pmc param_248
.annotate 'line', 129
    .const 'Sub' $P264 = "32_1295995580.421" 
    capture_lex $P264
    .lex "self", param_247
    .lex "$/", param_248
.annotate 'line', 130
    new $P249, "Undef"
    .lex "$past", $P249
    find_lex $P250, "$/"
    unless_null $P250, vivify_96
    $P250 = root_new ['parrot';'Hash']
  vivify_96:
    set $P251, $P250["quote_delimited"]
    unless_null $P251, vivify_97
    new $P251, "Undef"
  vivify_97:
    $P252 = $P251."ast"()
    store_lex "$past", $P252
.annotate 'line', 131
    find_lex $P254, "$/"
    $P255 = $P254."CURSOR"()
    $P256 = $P255."quotemod_check"("w")
    unless $P256, if_253_end
.annotate 'line', 132
    get_hll_global $P258, ["PAST"], "Node"
    find_lex $P259, "$past"
    $P260 = $P258."ACCEPTS"($P259)
    if $P260, if_257
.annotate 'line', 135
    .const 'Sub' $P264 = "32_1295995580.421" 
    capture_lex $P264
    $P264()
    goto if_257_end
  if_257:
.annotate 'line', 133
    find_lex $P261, "$/"
    $P262 = $P261."CURSOR"()
    $P262."panic"("Can't form :w list from non-constant strings (yet)")
  if_257_end:
  if_253_end:
.annotate 'line', 146
    get_hll_global $P296, ["PAST"], "Node"
    find_lex $P297, "$past"
    $P298 = $P296."ACCEPTS"($P297)
    isfalse $I299, $P298
    unless $I299, if_295_end
.annotate 'line', 147
    get_hll_global $P300, ["PAST"], "Val"
    find_lex $P301, "$past"
    set $S302, $P301
    $P303 = $P300."new"($S302 :named("value"))
    store_lex "$past", $P303
  if_295_end:
.annotate 'line', 149
    find_lex $P304, "$/"
    find_lex $P305, "$past"
    $P306 = $P304."!make"($P305)
.annotate 'line', 129
    .return ($P306)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block263"  :anon :subid("32_1295995580.421") :outer("31_1295995580.421")
.annotate 'line', 135
    .const 'Sub' $P283 = "33_1295995580.421" 
    capture_lex $P283
.annotate 'line', 136
    $P265 = root_new ['parrot';'ResizablePMCArray']
    .lex "@words", $P265
    get_hll_global $P266, ["HLL";"Grammar"], "split_words"
    find_lex $P267, "$/"
    find_lex $P268, "$past"
    $P269 = $P266($P267, $P268)
    store_lex "@words", $P269
.annotate 'line', 137
    find_lex $P272, "@words"
    set $N273, $P272
    isne $I274, $N273, 1.0
    if $I274, if_271
.annotate 'line', 142
    find_lex $P291, "@words"
    unless_null $P291, vivify_98
    $P291 = root_new ['parrot';'ResizablePMCArray']
  vivify_98:
    set $P292, $P291[0]
    unless_null $P292, vivify_99
    new $P292, "Undef"
  vivify_99:
    set $S293, $P292
    new $P294, 'String'
    set $P294, $S293
    store_lex "$past", $P294
.annotate 'line', 141
    set $P270, $P294
.annotate 'line', 137
    goto if_271_end
  if_271:
.annotate 'line', 138
    get_hll_global $P275, ["PAST"], "Op"
    find_lex $P276, "$/"
    $P277 = $P275."new"("list" :named("pasttype"), $P276 :named("node"))
    store_lex "$past", $P277
.annotate 'line', 139
    find_lex $P279, "@words"
    defined $I280, $P279
    unless $I280, for_undef_100
    iter $P278, $P279
    new $P289, 'ExceptionHandler'
    set_addr $P289, loop288_handler
    $P289."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P289
  loop288_test:
    unless $P278, loop288_done
    shift $P281, $P278
  loop288_redo:
    .const 'Sub' $P283 = "33_1295995580.421" 
    capture_lex $P283
    $P283($P281)
  loop288_next:
    goto loop288_test
  loop288_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P290, exception, 'type'
    eq $P290, .CONTROL_LOOP_NEXT, loop288_next
    eq $P290, .CONTROL_LOOP_REDO, loop288_redo
  loop288_done:
    pop_eh 
  for_undef_100:
.annotate 'line', 137
    set $P270, $P278
  if_271_end:
.annotate 'line', 135
    .return ($P270)
.end


.namespace ["HLL";"Actions"]
.sub "_block282"  :anon :subid("33_1295995580.421") :outer("32_1295995580.421")
    .param pmc param_284
.annotate 'line', 139
    .lex "$_", param_284
    find_lex $P285, "$past"
    find_lex $P286, "$_"
    $P287 = $P285."push"($P286)
    .return ($P287)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "quote_delimited"  :subid("34_1295995580.421") :outer("11_1295995580.421")
    .param pmc param_308
    .param pmc param_309
.annotate 'line', 152
    .const 'Sub' $P321 = "35_1295995580.421" 
    capture_lex $P321
    .lex "self", param_308
    .lex "$/", param_309
.annotate 'line', 153
    $P310 = root_new ['parrot';'ResizablePMCArray']
    .lex "@parts", $P310
.annotate 'line', 154
    new $P311, "Undef"
    .lex "$lastlit", $P311
.annotate 'line', 170
    new $P312, "Undef"
    .lex "$past", $P312
.annotate 'line', 152
    find_lex $P313, "@parts"
.annotate 'line', 154
    new $P314, "String"
    assign $P314, ""
    store_lex "$lastlit", $P314
.annotate 'line', 155
    find_lex $P316, "$/"
    unless_null $P316, vivify_101
    $P316 = root_new ['parrot';'Hash']
  vivify_101:
    set $P317, $P316["quote_atom"]
    unless_null $P317, vivify_102
    new $P317, "Undef"
  vivify_102:
    defined $I318, $P317
    unless $I318, for_undef_103
    iter $P315, $P317
    new $P354, 'ExceptionHandler'
    set_addr $P354, loop353_handler
    $P354."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P354
  loop353_test:
    unless $P315, loop353_done
    shift $P319, $P315
  loop353_redo:
    .const 'Sub' $P321 = "35_1295995580.421" 
    capture_lex $P321
    $P321($P319)
  loop353_next:
    goto loop353_test
  loop353_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P355, exception, 'type'
    eq $P355, .CONTROL_LOOP_NEXT, loop353_next
    eq $P355, .CONTROL_LOOP_REDO, loop353_redo
  loop353_done:
    pop_eh 
  for_undef_103:
.annotate 'line', 169
    find_lex $P357, "$lastlit"
    set $S358, $P357
    isgt $I359, $S358, ""
    unless $I359, if_356_end
    find_lex $P360, "@parts"
    find_lex $P361, "$lastlit"
    $P360."push"($P361)
  if_356_end:
.annotate 'line', 170
    find_lex $P364, "@parts"
    if $P364, if_363
    new $P367, "String"
    assign $P367, ""
    set $P362, $P367
    goto if_363_end
  if_363:
    find_lex $P365, "@parts"
    $P366 = $P365."shift"()
    set $P362, $P366
  if_363_end:
    store_lex "$past", $P362
.annotate 'line', 171
    new $P375, 'ExceptionHandler'
    set_addr $P375, loop374_handler
    $P375."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P375
  loop374_test:
    find_lex $P368, "@parts"
    unless $P368, loop374_done
  loop374_redo:
.annotate 'line', 172
    get_hll_global $P369, ["PAST"], "Op"
    find_lex $P370, "$past"
    find_lex $P371, "@parts"
    $P372 = $P371."shift"()
    $P373 = $P369."new"($P370, $P372, "concat" :named("pirop"))
    store_lex "$past", $P373
  loop374_next:
.annotate 'line', 171
    goto loop374_test
  loop374_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P376, exception, 'type'
    eq $P376, .CONTROL_LOOP_NEXT, loop374_next
    eq $P376, .CONTROL_LOOP_REDO, loop374_redo
  loop374_done:
    pop_eh 
.annotate 'line', 174
    find_lex $P377, "$/"
    find_lex $P378, "$past"
    $P379 = $P377."!make"($P378)
.annotate 'line', 152
    .return ($P379)
.end


.namespace ["HLL";"Actions"]
.sub "_block320"  :anon :subid("35_1295995580.421") :outer("34_1295995580.421")
    .param pmc param_323
.annotate 'line', 156
    new $P322, "Undef"
    .lex "$ast", $P322
    .lex "$_", param_323
    find_lex $P324, "$_"
    $P325 = $P324."ast"()
    store_lex "$ast", $P325
.annotate 'line', 157
    get_hll_global $P328, ["PAST"], "Node"
    find_lex $P329, "$ast"
    $P330 = $P328."ACCEPTS"($P329)
    isfalse $I331, $P330
    if $I331, if_327
.annotate 'line', 160
    find_lex $P337, "$ast"
    get_hll_global $P338, ["PAST"], "Val"
    $P339 = $P337."isa"($P338)
    if $P339, if_336
.annotate 'line', 164
    find_lex $P345, "$lastlit"
    set $S346, $P345
    isgt $I347, $S346, ""
    unless $I347, if_344_end
    find_lex $P348, "@parts"
    find_lex $P349, "$lastlit"
    $P348."push"($P349)
  if_344_end:
.annotate 'line', 165
    find_lex $P350, "@parts"
    find_lex $P351, "$ast"
    $P350."push"($P351)
.annotate 'line', 166
    new $P352, "String"
    assign $P352, ""
    store_lex "$lastlit", $P352
.annotate 'line', 163
    set $P335, $P352
.annotate 'line', 160
    goto if_336_end
  if_336:
.annotate 'line', 161
    find_lex $P340, "$lastlit"
    find_lex $P341, "$ast"
    $S342 = $P341."value"()
    concat $P343, $P340, $S342
    store_lex "$lastlit", $P343
.annotate 'line', 160
    set $P335, $P343
  if_336_end:
    set $P326, $P335
.annotate 'line', 157
    goto if_327_end
  if_327:
.annotate 'line', 158
    find_lex $P332, "$lastlit"
    find_lex $P333, "$ast"
    concat $P334, $P332, $P333
    store_lex "$lastlit", $P334
.annotate 'line', 157
    set $P326, $P334
  if_327_end:
.annotate 'line', 155
    .return ($P326)
.end


.namespace ["HLL";"Actions"]
.sub "quote_atom"  :subid("36_1295995580.421") :outer("11_1295995580.421")
    .param pmc param_381
    .param pmc param_382
.annotate 'line', 177
    .lex "self", param_381
    .lex "$/", param_382
.annotate 'line', 178
    find_lex $P383, "$/"
    find_lex $P386, "$/"
    unless_null $P386, vivify_104
    $P386 = root_new ['parrot';'Hash']
  vivify_104:
    set $P387, $P386["quote_escape"]
    unless_null $P387, vivify_105
    new $P387, "Undef"
  vivify_105:
    if $P387, if_385
    find_lex $P391, "$/"
    set $S392, $P391
    new $P384, 'String'
    set $P384, $S392
    goto if_385_end
  if_385:
    find_lex $P388, "$/"
    unless_null $P388, vivify_106
    $P388 = root_new ['parrot';'Hash']
  vivify_106:
    set $P389, $P388["quote_escape"]
    unless_null $P389, vivify_107
    new $P389, "Undef"
  vivify_107:
    $P390 = $P389."ast"()
    set $P384, $P390
  if_385_end:
    $P393 = $P383."!make"($P384)
.annotate 'line', 177
    .return ($P393)
.end


.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<backslash>"  :subid("37_1295995580.421") :outer("11_1295995580.421")
    .param pmc param_395
    .param pmc param_396
.annotate 'line', 181
    .lex "self", param_395
    .lex "$/", param_396
    find_lex $P397, "$/"
    $P398 = $P397."!make"("\\")
    .return ($P398)
.end


.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<stopper>"  :subid("38_1295995580.421") :outer("11_1295995580.421")
    .param pmc param_400
    .param pmc param_401
.annotate 'line', 182
    .lex "self", param_400
    .lex "$/", param_401
    find_lex $P402, "$/"
    find_lex $P403, "$/"
    unless_null $P403, vivify_108
    $P403 = root_new ['parrot';'Hash']
  vivify_108:
    set $P404, $P403["stopper"]
    unless_null $P404, vivify_109
    new $P404, "Undef"
  vivify_109:
    set $S405, $P404
    $P406 = $P402."!make"($S405)
    .return ($P406)
.end


.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<bs>"  :subid("39_1295995580.421") :outer("11_1295995580.421")
    .param pmc param_408
    .param pmc param_409
.annotate 'line', 184
    .lex "self", param_408
    .lex "$/", param_409
    find_lex $P410, "$/"
    $P411 = $P410."!make"("\b")
    .return ($P411)
.end


.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<nl>"  :subid("40_1295995580.421") :outer("11_1295995580.421")
    .param pmc param_413
    .param pmc param_414
.annotate 'line', 185
    .lex "self", param_413
    .lex "$/", param_414
    find_lex $P415, "$/"
    $P416 = $P415."!make"("\n")
    .return ($P416)
.end


.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<cr>"  :subid("41_1295995580.421") :outer("11_1295995580.421")
    .param pmc param_418
    .param pmc param_419
.annotate 'line', 186
    .lex "self", param_418
    .lex "$/", param_419
    find_lex $P420, "$/"
    $P421 = $P420."!make"("\r")
    .return ($P421)
.end


.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<tab>"  :subid("42_1295995580.421") :outer("11_1295995580.421")
    .param pmc param_423
    .param pmc param_424
.annotate 'line', 187
    .lex "self", param_423
    .lex "$/", param_424
    find_lex $P425, "$/"
    $P426 = $P425."!make"("\t")
    .return ($P426)
.end


.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<ff>"  :subid("43_1295995580.421") :outer("11_1295995580.421")
    .param pmc param_428
    .param pmc param_429
.annotate 'line', 188
    .lex "self", param_428
    .lex "$/", param_429
    find_lex $P430, "$/"
    $P431 = $P430."!make"("\f")
    .return ($P431)
.end


.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<esc>"  :subid("44_1295995580.421") :outer("11_1295995580.421")
    .param pmc param_433
    .param pmc param_434
.annotate 'line', 189
    .lex "self", param_433
    .lex "$/", param_434
    find_lex $P435, "$/"
    $P436 = $P435."!make"("\e")
    .return ($P436)
.end


.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<hex>"  :subid("45_1295995580.421") :outer("11_1295995580.421")
    .param pmc param_438
    .param pmc param_439
.annotate 'line', 191
    .lex "self", param_438
    .lex "$/", param_439
.annotate 'line', 192
    find_lex $P440, "$/"
    find_lex $P443, "$/"
    unless_null $P443, vivify_110
    $P443 = root_new ['parrot';'Hash']
  vivify_110:
    set $P444, $P443["hexint"]
    unless_null $P444, vivify_111
    new $P444, "Undef"
  vivify_111:
    if $P444, if_442
    find_lex $P447, "$/"
    unless_null $P447, vivify_112
    $P447 = root_new ['parrot';'Hash']
  vivify_112:
    set $P448, $P447["hexints"]
    unless_null $P448, vivify_113
    $P448 = root_new ['parrot';'Hash']
  vivify_113:
    set $P449, $P448["hexint"]
    unless_null $P449, vivify_114
    new $P449, "Undef"
  vivify_114:
    set $P441, $P449
    goto if_442_end
  if_442:
    find_lex $P445, "$/"
    unless_null $P445, vivify_115
    $P445 = root_new ['parrot';'Hash']
  vivify_115:
    set $P446, $P445["hexint"]
    unless_null $P446, vivify_116
    new $P446, "Undef"
  vivify_116:
    set $P441, $P446
  if_442_end:
    $P450 = "ints_to_string"($P441)
    $P451 = $P440."!make"($P450)
.annotate 'line', 191
    .return ($P451)
.end


.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<oct>"  :subid("46_1295995580.421") :outer("11_1295995580.421")
    .param pmc param_453
    .param pmc param_454
.annotate 'line', 195
    .lex "self", param_453
    .lex "$/", param_454
.annotate 'line', 196
    find_lex $P455, "$/"
    find_lex $P458, "$/"
    unless_null $P458, vivify_117
    $P458 = root_new ['parrot';'Hash']
  vivify_117:
    set $P459, $P458["octint"]
    unless_null $P459, vivify_118
    new $P459, "Undef"
  vivify_118:
    if $P459, if_457
    find_lex $P462, "$/"
    unless_null $P462, vivify_119
    $P462 = root_new ['parrot';'Hash']
  vivify_119:
    set $P463, $P462["octints"]
    unless_null $P463, vivify_120
    $P463 = root_new ['parrot';'Hash']
  vivify_120:
    set $P464, $P463["octint"]
    unless_null $P464, vivify_121
    new $P464, "Undef"
  vivify_121:
    set $P456, $P464
    goto if_457_end
  if_457:
    find_lex $P460, "$/"
    unless_null $P460, vivify_122
    $P460 = root_new ['parrot';'Hash']
  vivify_122:
    set $P461, $P460["octint"]
    unless_null $P461, vivify_123
    new $P461, "Undef"
  vivify_123:
    set $P456, $P461
  if_457_end:
    $P465 = "ints_to_string"($P456)
    $P466 = $P455."!make"($P465)
.annotate 'line', 195
    .return ($P466)
.end


.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<chr>"  :subid("47_1295995580.421") :outer("11_1295995580.421")
    .param pmc param_468
    .param pmc param_469
.annotate 'line', 199
    .lex "self", param_468
    .lex "$/", param_469
.annotate 'line', 200
    find_lex $P470, "$/"
    find_lex $P471, "$/"
    unless_null $P471, vivify_124
    $P471 = root_new ['parrot';'Hash']
  vivify_124:
    set $P472, $P471["charspec"]
    unless_null $P472, vivify_125
    new $P472, "Undef"
  vivify_125:
    $P473 = $P472."ast"()
    $P474 = $P470."!make"($P473)
.annotate 'line', 199
    .return ($P474)
.end


.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<0>"  :subid("48_1295995580.421") :outer("11_1295995580.421")
    .param pmc param_476
    .param pmc param_477
.annotate 'line', 203
    .lex "self", param_476
    .lex "$/", param_477
.annotate 'line', 204
    find_lex $P478, "$/"
    $P479 = $P478."!make"(unicode:"\x{0}")
.annotate 'line', 203
    .return ($P479)
.end


.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<misc>"  :subid("49_1295995580.421") :outer("11_1295995580.421")
    .param pmc param_481
    .param pmc param_482
.annotate 'line', 207
    .lex "self", param_481
    .lex "$/", param_482
.annotate 'line', 208
    find_lex $P483, "$/"
    find_lex $P486, "$/"
    unless_null $P486, vivify_126
    $P486 = root_new ['parrot';'Hash']
  vivify_126:
    set $P487, $P486["textq"]
    unless_null $P487, vivify_127
    new $P487, "Undef"
  vivify_127:
    if $P487, if_485
    find_lex $P493, "$/"
    unless_null $P493, vivify_128
    $P493 = root_new ['parrot';'Hash']
  vivify_128:
    set $P494, $P493["textqq"]
    unless_null $P494, vivify_129
    new $P494, "Undef"
  vivify_129:
    $P495 = $P494."Str"()
    set $P484, $P495
    goto if_485_end
  if_485:
    new $P488, "String"
    assign $P488, "\\"
    find_lex $P489, "$/"
    unless_null $P489, vivify_130
    $P489 = root_new ['parrot';'Hash']
  vivify_130:
    set $P490, $P489["textq"]
    unless_null $P490, vivify_131
    new $P490, "Undef"
  vivify_131:
    $S491 = $P490."Str"()
    concat $P492, $P488, $S491
    set $P484, $P492
  if_485_end:
    $P496 = $P483."!make"($P484)
.annotate 'line', 207
    .return ($P496)
.end


.namespace ["HLL";"Actions"]
.sub "charname"  :subid("50_1295995580.421") :outer("11_1295995580.421")
    .param pmc param_498
    .param pmc param_499
.annotate 'line', 211
    .lex "self", param_498
    .lex "$/", param_499
.annotate 'line', 212
    new $P500, "Undef"
    .lex "$codepoint", $P500
.annotate 'line', 213
    find_lex $P503, "$/"
    unless_null $P503, vivify_132
    $P503 = root_new ['parrot';'Hash']
  vivify_132:
    set $P504, $P503["integer"]
    unless_null $P504, vivify_133
    new $P504, "Undef"
  vivify_133:
    if $P504, if_502
.annotate 'line', 214
    find_lex $P508, "$/"
    set $S509, $P508
    find_codepoint $I510, $S509
    new $P501, 'Integer'
    set $P501, $I510
.annotate 'line', 213
    goto if_502_end
  if_502:
    find_lex $P505, "$/"
    unless_null $P505, vivify_134
    $P505 = root_new ['parrot';'Hash']
  vivify_134:
    set $P506, $P505["integer"]
    unless_null $P506, vivify_135
    new $P506, "Undef"
  vivify_135:
    $P507 = $P506."ast"()
    set $P501, $P507
  if_502_end:
    store_lex "$codepoint", $P501
.annotate 'line', 215
    find_lex $P512, "$codepoint"
    set $N513, $P512
    islt $I514, $N513, 0.0
    unless $I514, if_511_end
    find_lex $P515, "$/"
    $P516 = $P515."CURSOR"()
    new $P517, 'String'
    set $P517, "Unrecognized character name "
    find_lex $P518, "$/"
    concat $P519, $P517, $P518
    $P516."panic"($P519)
  if_511_end:
.annotate 'line', 216
    find_lex $P520, "$/"
    find_lex $P521, "$codepoint"
    set $I522, $P521
    chr $S523, $I522
    $P524 = $P520."!make"($S523)
.annotate 'line', 211
    .return ($P524)
.end


.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "charnames"  :subid("51_1295995580.421") :outer("11_1295995580.421")
    .param pmc param_526
    .param pmc param_527
.annotate 'line', 219
    .const 'Sub' $P536 = "52_1295995580.421" 
    capture_lex $P536
    .lex "self", param_526
    .lex "$/", param_527
.annotate 'line', 220
    new $P528, "Undef"
    .lex "$str", $P528
    new $P529, "String"
    assign $P529, ""
    store_lex "$str", $P529
.annotate 'line', 221
    find_lex $P531, "$/"
    unless_null $P531, vivify_136
    $P531 = root_new ['parrot';'Hash']
  vivify_136:
    set $P532, $P531["charname"]
    unless_null $P532, vivify_137
    new $P532, "Undef"
  vivify_137:
    defined $I533, $P532
    unless $I533, for_undef_138
    iter $P530, $P532
    new $P543, 'ExceptionHandler'
    set_addr $P543, loop542_handler
    $P543."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P543
  loop542_test:
    unless $P530, loop542_done
    shift $P534, $P530
  loop542_redo:
    .const 'Sub' $P536 = "52_1295995580.421" 
    capture_lex $P536
    $P536($P534)
  loop542_next:
    goto loop542_test
  loop542_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P544, exception, 'type'
    eq $P544, .CONTROL_LOOP_NEXT, loop542_next
    eq $P544, .CONTROL_LOOP_REDO, loop542_redo
  loop542_done:
    pop_eh 
  for_undef_138:
.annotate 'line', 222
    find_lex $P545, "$/"
    find_lex $P546, "$str"
    $P547 = $P545."!make"($P546)
.annotate 'line', 219
    .return ($P547)
.end


.namespace ["HLL";"Actions"]
.sub "_block535"  :anon :subid("52_1295995580.421") :outer("51_1295995580.421")
    .param pmc param_537
.annotate 'line', 221
    .lex "$_", param_537
    find_lex $P538, "$str"
    find_lex $P539, "$_"
    $S540 = $P539."ast"()
    concat $P541, $P538, $S540
    store_lex "$str", $P541
    .return ($P541)
.end


.namespace ["HLL";"Actions"]
.sub "charspec"  :subid("53_1295995580.421") :outer("11_1295995580.421")
    .param pmc param_549
    .param pmc param_550
.annotate 'line', 225
    .lex "self", param_549
    .lex "$/", param_550
.annotate 'line', 226
    find_lex $P551, "$/"
    find_lex $P554, "$/"
    unless_null $P554, vivify_139
    $P554 = root_new ['parrot';'Hash']
  vivify_139:
    set $P555, $P554["charnames"]
    unless_null $P555, vivify_140
    new $P555, "Undef"
  vivify_140:
    if $P555, if_553
    find_lex $P559, "$/"
    $I560 = "string_to_int"($P559, 10)
    chr $S561, $I560
    new $P552, 'String'
    set $P552, $S561
    goto if_553_end
  if_553:
    find_lex $P556, "$/"
    unless_null $P556, vivify_141
    $P556 = root_new ['parrot';'Hash']
  vivify_141:
    set $P557, $P556["charnames"]
    unless_null $P557, vivify_142
    new $P557, "Undef"
  vivify_142:
    $P558 = $P557."ast"()
    set $P552, $P558
  if_553_end:
    $P562 = $P551."!make"($P552)
.annotate 'line', 225
    .return ($P562)
.end


.namespace ["HLL";"Actions"]
.sub "_block564" :load :anon :subid("54_1295995580.421")
.annotate 'line', 3
    .const 'Sub' $P566 = "11_1295995580.421" 
    $P567 = $P566()
    .return ($P567)
.end


.namespace []
.sub "_block641" :load :anon :subid("56_1295995580.421")
.annotate 'line', 1
    .const 'Sub' $P643 = "10_1295995580.421" 
    $P644 = $P643()
    .return ($P644)
.end

### .include 'gen/hllcompiler.pir'

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1295995585.312")
.annotate 'line', 0
    get_hll_global $P17, ["HLL";"Compiler"], "_block16" 
    capture_lex $P17
    .const 'Sub' $P15 = "11_1295995585.312" 
    capture_lex $P15
.annotate 'line', 1
    nqp_dynop_setup 
    get_hll_global $P13, ["HLL"], "Compiler"
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
    .const 'Sub' $P15 = "11_1295995585.312" 
    capture_lex $P15
    $P15()
.annotate 'line', 9
    get_hll_global $P17, ["HLL";"Compiler"], "_block16" 
    capture_lex $P17
    $P902 = $P17()
.annotate 'line', 1
    .return ($P902)
    .const 'Sub' $P904 = "69_1295995585.312" 
    .return ($P904)
.end


.namespace []
.sub "_block14"  :anon :subid("11_1295995585.312") :outer("10_1295995585.312")
.annotate 'line', 1
    .return ()
.end


.namespace []
.sub "" :load :init :subid("post70") :outer("11_1295995585.312")
.annotate 'line', 1
    .const 'Sub' $P15 = "11_1295995585.312" 
    .local pmc block
    set block, $P15
.annotate 'line', 2
    load_bytecode "Parrot/Exception.pbc"
.end


.namespace ["HLL";"Compiler"]
.sub "_block16"  :subid("12_1295995585.312") :outer("10_1295995585.312")
.annotate 'line', 9
    .const 'Sub' $P792 = "68_1295995585.312" 
    capture_lex $P792
    .const 'Sub' $P784 = "67_1295995585.312" 
    capture_lex $P784
    .const 'Sub' $P781 = "66_1295995585.312" 
    capture_lex $P781
    .const 'Sub' $P777 = "65_1295995585.312" 
    capture_lex $P777
    .const 'Sub' $P747 = "63_1295995585.312" 
    capture_lex $P747
    .const 'Sub' $P742 = "62_1295995585.312" 
    capture_lex $P742
    .const 'Sub' $P732 = "61_1295995585.312" 
    capture_lex $P732
    .const 'Sub' $P706 = "59_1295995585.312" 
    capture_lex $P706
    .const 'Sub' $P697 = "58_1295995585.312" 
    capture_lex $P697
    .const 'Sub' $P689 = "57_1295995585.312" 
    capture_lex $P689
    .const 'Sub' $P681 = "56_1295995585.312" 
    capture_lex $P681
    .const 'Sub' $P677 = "55_1295995585.312" 
    capture_lex $P677
    .const 'Sub' $P673 = "54_1295995585.312" 
    capture_lex $P673
    .const 'Sub' $P669 = "53_1295995585.312" 
    capture_lex $P669
    .const 'Sub' $P664 = "52_1295995585.312" 
    capture_lex $P664
    .const 'Sub' $P637 = "50_1295995585.312" 
    capture_lex $P637
    .const 'Sub' $P633 = "49_1295995585.312" 
    capture_lex $P633
    .const 'Sub' $P620 = "48_1295995585.312" 
    capture_lex $P620
    .const 'Sub' $P607 = "47_1295995585.312" 
    capture_lex $P607
    .const 'Sub' $P594 = "46_1295995585.312" 
    capture_lex $P594
    .const 'Sub' $P581 = "45_1295995585.312" 
    capture_lex $P581
    .const 'Sub' $P568 = "44_1295995585.312" 
    capture_lex $P568
    .const 'Sub' $P555 = "43_1295995585.312" 
    capture_lex $P555
    .const 'Sub' $P542 = "42_1295995585.312" 
    capture_lex $P542
    .const 'Sub' $P529 = "41_1295995585.312" 
    capture_lex $P529
    .const 'Sub' $P524 = "40_1295995585.312" 
    capture_lex $P524
    .const 'Sub' $P520 = "39_1295995585.312" 
    capture_lex $P520
    .const 'Sub' $P480 = "37_1295995585.312" 
    capture_lex $P480
    .const 'Sub' $P333 = "30_1295995585.312" 
    capture_lex $P333
    .const 'Sub' $P320 = "29_1295995585.312" 
    capture_lex $P320
    .const 'Sub' $P227 = "24_1295995585.312" 
    capture_lex $P227
    .const 'Sub' $P194 = "22_1295995585.312" 
    capture_lex $P194
    .const 'Sub' $P179 = "21_1295995585.312" 
    capture_lex $P179
    .const 'Sub' $P164 = "20_1295995585.312" 
    capture_lex $P164
    .const 'Sub' $P77 = "17_1295995585.312" 
    capture_lex $P77
    .const 'Sub' $P40 = "15_1295995585.312" 
    capture_lex $P40
    .const 'Sub' $P33 = "14_1295995585.312" 
    capture_lex $P33
    .const 'Sub' $P19 = "13_1295995585.312" 
    capture_lex $P19
    get_global $P18, "$?CLASS"
.annotate 'line', 64
    .const 'Sub' $P19 = "13_1295995585.312" 
    newclosure $P32, $P19
    .lex "value_type", $P32
.annotate 'line', 29
    find_lex $P76, "value_type"
.annotate 'line', 782
    .const 'Sub' $P784 = "67_1295995585.312" 
    newclosure $P790, $P784
.annotate 'line', 9
    .return ($P790)
.end


.namespace ["HLL";"Compiler"]
.sub "" :load :init :subid("post71") :outer("12_1295995585.312")
.annotate 'line', 9
    get_hll_global $P17, ["HLL";"Compiler"], "_block16" 
    .local pmc block
    set block, $P17
    .const 'Sub' $P792 = "68_1295995585.312" 
    capture_lex $P792
    $P792()
.end


.namespace ["HLL";"Compiler"]
.sub "_block791"  :anon :subid("68_1295995585.312") :outer("12_1295995585.312")
.annotate 'line', 9
    get_hll_global $P793, "NQPClassHOW"
    $P794 = $P793."new_type"("Compiler" :named("name"))
    .local pmc type_obj
    set type_obj, $P794
    set_hll_global ["HLL"], "Compiler", type_obj
    set_global "$?CLASS", type_obj
    get_how $P795, type_obj
    get_hll_global $P796, "NQPAttribute"
    $P797 = $P796."new"("@!stages" :named("name"))
    $P795."add_attribute"(type_obj, $P797)
    get_how $P798, type_obj
    get_hll_global $P799, "NQPAttribute"
    $P800 = $P799."new"("$!parsegrammar" :named("name"))
    $P798."add_attribute"(type_obj, $P800)
    get_how $P801, type_obj
    get_hll_global $P802, "NQPAttribute"
    $P803 = $P802."new"("$!parseactions" :named("name"))
    $P801."add_attribute"(type_obj, $P803)
    get_how $P804, type_obj
    get_hll_global $P805, "NQPAttribute"
    $P806 = $P805."new"("$!astgrammar" :named("name"))
    $P804."add_attribute"(type_obj, $P806)
    get_how $P807, type_obj
    get_hll_global $P808, "NQPAttribute"
    $P809 = $P808."new"("$!commandline_banner" :named("name"))
    $P807."add_attribute"(type_obj, $P809)
    get_how $P810, type_obj
    get_hll_global $P811, "NQPAttribute"
    $P812 = $P811."new"("$!commandline_prompt" :named("name"))
    $P810."add_attribute"(type_obj, $P812)
    get_how $P813, type_obj
    get_hll_global $P814, "NQPAttribute"
    $P815 = $P814."new"("@!cmdoptions" :named("name"))
    $P813."add_attribute"(type_obj, $P815)
    get_how $P816, type_obj
    get_hll_global $P817, "NQPAttribute"
    $P818 = $P817."new"("$!usage" :named("name"))
    $P816."add_attribute"(type_obj, $P818)
    get_how $P819, type_obj
    get_hll_global $P820, "NQPAttribute"
    $P821 = $P820."new"("$!version" :named("name"))
    $P819."add_attribute"(type_obj, $P821)
    get_how $P822, type_obj
    get_hll_global $P823, "NQPAttribute"
    $P824 = $P823."new"("$!compiler_progname" :named("name"))
    $P822."add_attribute"(type_obj, $P824)
    get_how $P825, type_obj
    get_hll_global $P826, "NQPAttribute"
    $P827 = $P826."new"("$!language" :named("name"))
    $P825."add_attribute"(type_obj, $P827)
    get_how $P828, type_obj
    .const 'Sub' $P829 = "14_1295995585.312" 
    $P828."add_method"(type_obj, "new", $P829)
    get_how $P830, type_obj
    .const 'Sub' $P831 = "15_1295995585.312" 
    $P830."add_method"(type_obj, "BUILD", $P831)
    get_how $P832, type_obj
    .const 'Sub' $P833 = "17_1295995585.312" 
    $P832."add_method"(type_obj, "get_exports", $P833)
    get_how $P834, type_obj
    .const 'Sub' $P835 = "20_1295995585.312" 
    $P834."add_method"(type_obj, "get_module", $P835)
    get_how $P836, type_obj
    .const 'Sub' $P837 = "21_1295995585.312" 
    $P836."add_method"(type_obj, "language", $P837)
    get_how $P838, type_obj
    .const 'Sub' $P839 = "22_1295995585.312" 
    $P838."add_method"(type_obj, "load_module", $P839)
    get_how $P840, type_obj
    .const 'Sub' $P841 = "24_1295995585.312" 
    $P840."add_method"(type_obj, "import", $P841)
    get_how $P842, type_obj
    .const 'Sub' $P843 = "29_1295995585.312" 
    $P842."add_method"(type_obj, "autoprint", $P843)
    get_how $P844, type_obj
    .const 'Sub' $P845 = "30_1295995585.312" 
    $P844."add_method"(type_obj, "interactive", $P845)
    get_how $P846, type_obj
    .const 'Sub' $P847 = "37_1295995585.312" 
    $P846."add_method"(type_obj, "eval", $P847)
    get_how $P848, type_obj
    .const 'Sub' $P849 = "39_1295995585.312" 
    $P848."add_method"(type_obj, "ctxsave", $P849)
    get_how $P850, type_obj
    .const 'Sub' $P851 = "40_1295995585.312" 
    $P850."add_method"(type_obj, "panic", $P851)
    get_how $P852, type_obj
    .const 'Sub' $P853 = "41_1295995585.312" 
    $P852."add_method"(type_obj, "stages", $P853)
    get_how $P854, type_obj
    .const 'Sub' $P855 = "42_1295995585.312" 
    $P854."add_method"(type_obj, "parsegrammar", $P855)
    get_how $P856, type_obj
    .const 'Sub' $P857 = "43_1295995585.312" 
    $P856."add_method"(type_obj, "parseactions", $P857)
    get_how $P858, type_obj
    .const 'Sub' $P859 = "44_1295995585.312" 
    $P858."add_method"(type_obj, "astgrammar", $P859)
    get_how $P860, type_obj
    .const 'Sub' $P861 = "45_1295995585.312" 
    $P860."add_method"(type_obj, "commandline_banner", $P861)
    get_how $P862, type_obj
    .const 'Sub' $P863 = "46_1295995585.312" 
    $P862."add_method"(type_obj, "commandline_prompt", $P863)
    get_how $P864, type_obj
    .const 'Sub' $P865 = "47_1295995585.312" 
    $P864."add_method"(type_obj, "compiler_progname", $P865)
    get_how $P866, type_obj
    .const 'Sub' $P867 = "48_1295995585.312" 
    $P866."add_method"(type_obj, "commandline_options", $P867)
    get_how $P868, type_obj
    .const 'Sub' $P869 = "49_1295995585.312" 
    $P868."add_method"(type_obj, "command_line", $P869)
    get_how $P870, type_obj
    .const 'Sub' $P871 = "50_1295995585.312" 
    $P870."add_method"(type_obj, "process_args", $P871)
    get_how $P872, type_obj
    .const 'Sub' $P873 = "52_1295995585.312" 
    $P872."add_method"(type_obj, "evalfiles", $P873)
    get_how $P874, type_obj
    .const 'Sub' $P875 = "53_1295995585.312" 
    $P874."add_method"(type_obj, "compile", $P875)
    get_how $P876, type_obj
    .const 'Sub' $P877 = "54_1295995585.312" 
    $P876."add_method"(type_obj, "parse", $P877)
    get_how $P878, type_obj
    .const 'Sub' $P879 = "55_1295995585.312" 
    $P878."add_method"(type_obj, "past", $P879)
    get_how $P880, type_obj
    .const 'Sub' $P881 = "56_1295995585.312" 
    $P880."add_method"(type_obj, "post", $P881)
    get_how $P882, type_obj
    .const 'Sub' $P883 = "57_1295995585.312" 
    $P882."add_method"(type_obj, "pir", $P883)
    get_how $P884, type_obj
    .const 'Sub' $P885 = "58_1295995585.312" 
    $P884."add_method"(type_obj, "evalpmc", $P885)
    get_how $P886, type_obj
    .const 'Sub' $P887 = "59_1295995585.312" 
    $P886."add_method"(type_obj, "dumper", $P887)
    get_how $P888, type_obj
    .const 'Sub' $P889 = "61_1295995585.312" 
    $P888."add_method"(type_obj, "usage", $P889)
    get_how $P890, type_obj
    .const 'Sub' $P891 = "62_1295995585.312" 
    $P890."add_method"(type_obj, "version", $P891)
    get_how $P892, type_obj
    .const 'Sub' $P893 = "63_1295995585.312" 
    $P892."add_method"(type_obj, "removestage", $P893)
    get_how $P894, type_obj
    .const 'Sub' $P895 = "65_1295995585.312" 
    $P894."add_method"(type_obj, "addstage", $P895)
    get_how $P896, type_obj
    .const 'Sub' $P897 = "66_1295995585.312" 
    $P896."add_method"(type_obj, "parse_name", $P897)
    get_how $P898, type_obj
    .const 'Sub' $P899 = "67_1295995585.312" 
    $P898."add_method"(type_obj, "lineof", $P899)
    get_how $P900, type_obj
    $P901 = $P900."compose"(type_obj)
    .return ($P901)
.end


.namespace ["HLL";"Compiler"]
.sub "value_type"  :subid("13_1295995585.312") :outer("12_1295995585.312")
    .param pmc param_20
.annotate 'line', 64
    .lex "$value", param_20
.annotate 'line', 65
    find_lex $P23, "$value"
    isa $I24, $P23, "NameSpace"
    if $I24, if_22
.annotate 'line', 67
    find_lex $P28, "$value"
    isa $I29, $P28, "Sub"
    if $I29, if_27
    new $P31, "String"
    assign $P31, "var"
    set $P26, $P31
    goto if_27_end
  if_27:
    new $P30, "String"
    assign $P30, "sub"
    set $P26, $P30
  if_27_end:
    set $P21, $P26
.annotate 'line', 65
    goto if_22_end
  if_22:
    new $P25, "String"
    assign $P25, "namespace"
    set $P21, $P25
  if_22_end:
.annotate 'line', 64
    .return ($P21)
.end


.namespace ["HLL";"Compiler"]
.sub "new"  :subid("14_1295995585.312") :outer("12_1295995585.312")
    .param pmc param_34
.annotate 'line', 23
    .lex "self", param_34
.annotate 'line', 24
    new $P35, "Undef"
    .lex "$obj", $P35
    find_lex $P36, "self"
    repr_instance_of $P37, $P36
    store_lex "$obj", $P37
.annotate 'line', 25
    find_lex $P38, "$obj"
    $P38."BUILD"()
    find_lex $P39, "$obj"
.annotate 'line', 23
    .return ($P39)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "BUILD"  :subid("15_1295995585.312") :outer("12_1295995585.312")
    .param pmc param_41
.annotate 'line', 29
    .const 'Sub' $P58 = "16_1295995585.312" 
    capture_lex $P58
    .lex "self", param_41
.annotate 'line', 31
    split $P42, " ", "parse past post pir evalpmc"
    find_lex $P43, "self"
    get_global $P44, "$?CLASS"
    setattribute $P43, $P44, "@!stages", $P42
.annotate 'line', 34
    split $P45, " ", "e=s help|h target=s dumper=s trace|t=s encoding=s output|o=s combine version|v stagestats ll-backtrace"
    find_lex $P46, "self"
    get_global $P47, "$?CLASS"
    setattribute $P46, $P47, "@!cmdoptions", $P45
.annotate 'line', 35
    new $P48, "String"
    assign $P48, "This compiler is based on HLL::Compler.\n\nOptions:\n"
    find_lex $P49, "self"
    get_global $P50, "$?CLASS"
    setattribute $P49, $P50, "$!usage", $P48
.annotate 'line', 36
    find_lex $P52, "self"
    get_global $P53, "$?CLASS"
    getattribute $P54, $P52, $P53, "@!cmdoptions"
    unless_null $P54, vivify_72
    $P54 = root_new ['parrot';'ResizablePMCArray']
  vivify_72:
    defined $I55, $P54
    unless $I55, for_undef_73
    iter $P51, $P54
    new $P71, 'ExceptionHandler'
    set_addr $P71, loop70_handler
    $P71."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P71
  loop70_test:
    unless $P51, loop70_done
    shift $P56, $P51
  loop70_redo:
    .const 'Sub' $P58 = "16_1295995585.312" 
    capture_lex $P58
    $P58($P56)
  loop70_next:
    goto loop70_test
  loop70_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P72, exception, 'type'
    eq $P72, .CONTROL_LOOP_NEXT, loop70_next
    eq $P72, .CONTROL_LOOP_REDO, loop70_redo
  loop70_done:
    pop_eh 
  for_undef_73:
.annotate 'line', 41

            .include 'iglobals.pasm'
            .include 'cclass.pasm'
            $S0  = '???'
            push_eh _handler
            $P0 = getinterp
            $P0 = $P0[.IGLOBALS_CONFIG_HASH]
            $S0  = $P0['revision']   # also $I0 = P0['installed'] could be used
          _handler:
            pop_eh
            $P73  = box 'This compiler is built with the Parrot Compiler Toolkit, parrot '
            if $S0 goto _revision_lab
            $P73 .= 'version '
            $S0 = $P0['VERSION']
            goto _is_version
          _revision_lab:
            $P73 .= 'revision '
          _is_version:
            $P73 .= $S0
            $P73 .= '.'
        
    find_lex $P74, "self"
    get_global $P75, "$?CLASS"
    setattribute $P74, $P75, "$!version", $P73
.annotate 'line', 29
    .return ($P73)
.end


.namespace ["HLL";"Compiler"]
.sub "_block57"  :anon :subid("16_1295995585.312") :outer("15_1295995585.312")
    .param pmc param_59
.annotate 'line', 36
    .lex "$_", param_59
.annotate 'line', 37
    find_lex $P60, "self"
    get_global $P61, "$?CLASS"
    getattribute $P62, $P60, $P61, "$!usage"
    unless_null $P62, vivify_74
    new $P62, "Undef"
  vivify_74:
    new $P63, 'String'
    set $P63, "    "
    find_lex $P64, "$_"
    concat $P65, $P63, $P64
    concat $P66, $P65, "\n"
    concat $P67, $P62, $P66
    find_lex $P68, "self"
    get_global $P69, "$?CLASS"
    setattribute $P68, $P69, "$!usage", $P67
.annotate 'line', 36
    .return ($P67)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "get_exports"  :subid("17_1295995585.312") :outer("12_1295995585.312")
    .param pmc param_78
    .param pmc param_79
    .param pmc param_82 :slurpy
    .param pmc param_80 :optional :named("tagset")
    .param int has_param_80 :opt_flag
.annotate 'line', 70
    .const 'Sub' $P148 = "19_1295995585.312" 
    capture_lex $P148
    .const 'Sub' $P127 = "18_1295995585.312" 
    capture_lex $P127
    .lex "self", param_78
    .lex "$module", param_79
    if has_param_80, optparam_75
    new $P81, "Undef"
    set param_80, $P81
  optparam_75:
    .lex "$tagset", param_80
    .lex "@symbols", param_82
.annotate 'line', 77
    $P83 = root_new ['parrot';'Hash']
    .lex "%exports", $P83
.annotate 'line', 78
    $P84 = root_new ['parrot';'Hash']
    .lex "%source", $P84
.annotate 'line', 72
    find_lex $P86, "$module"
    does $I87, $P86, "hash"
    new $P88, 'Integer'
    set $P88, $I87
    isfalse $I89, $P88
    unless $I89, if_85_end
.annotate 'line', 73
    find_lex $P90, "self"
    find_lex $P91, "$module"
    $P92 = $P90."get_module"($P91)
    store_lex "$module", $P92
  if_85_end:
.annotate 'line', 76
    find_lex $P94, "$tagset"
    set $P93, $P94
    defined $I96, $P93
    if $I96, default_95
    find_lex $P99, "@symbols"
    if $P99, if_98
    new $P101, "String"
    assign $P101, "DEFAULT"
    set $P97, $P101
    goto if_98_end
  if_98:
    new $P100, "String"
    assign $P100, "ALL"
    set $P97, $P100
  if_98_end:
    set $P93, $P97
  default_95:
    store_lex "$tagset", $P93
    find_lex $P102, "%exports"
.annotate 'line', 78
    find_lex $P103, "$tagset"
    set $S104, $P103
    find_lex $P105, "$module"
    unless_null $P105, vivify_76
    $P105 = root_new ['parrot';'Hash']
  vivify_76:
    set $P106, $P105["EXPORT"]
    unless_null $P106, vivify_77
    $P106 = root_new ['parrot';'Hash']
  vivify_77:
    set $P107, $P106[$S104]
    unless_null $P107, vivify_78
    new $P107, "Undef"
  vivify_78:
    store_lex "%source", $P107
.annotate 'line', 79
    find_lex $P109, "%source"
    defined $I110, $P109
    new $P111, 'Integer'
    set $P111, $I110
    isfalse $I112, $P111
    unless $I112, if_108_end
.annotate 'line', 80
    find_lex $P115, "$tagset"
    set $S116, $P115
    iseq $I117, $S116, "ALL"
    if $I117, if_114
    $P119 = root_new ['parrot';'Hash']
    set $P113, $P119
    goto if_114_end
  if_114:
    find_lex $P118, "$module"
    set $P113, $P118
  if_114_end:
    store_lex "%source", $P113
  if_108_end:
.annotate 'line', 82
    find_lex $P121, "@symbols"
    if $P121, if_120
.annotate 'line', 89
    find_lex $P144, "%source"
    defined $I145, $P144
    unless $I145, for_undef_79
    iter $P143, $P144
    new $P161, 'ExceptionHandler'
    set_addr $P161, loop160_handler
    $P161."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P161
  loop160_test:
    unless $P143, loop160_done
    shift $P146, $P143
  loop160_redo:
    .const 'Sub' $P148 = "19_1295995585.312" 
    capture_lex $P148
    $P148($P146)
  loop160_next:
    goto loop160_test
  loop160_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P162, exception, 'type'
    eq $P162, .CONTROL_LOOP_NEXT, loop160_next
    eq $P162, .CONTROL_LOOP_REDO, loop160_redo
  loop160_done:
    pop_eh 
  for_undef_79:
.annotate 'line', 88
    goto if_120_end
  if_120:
.annotate 'line', 83
    find_lex $P123, "@symbols"
    defined $I124, $P123
    unless $I124, for_undef_82
    iter $P122, $P123
    new $P141, 'ExceptionHandler'
    set_addr $P141, loop140_handler
    $P141."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P141
  loop140_test:
    unless $P122, loop140_done
    shift $P125, $P122
  loop140_redo:
    .const 'Sub' $P127 = "18_1295995585.312" 
    capture_lex $P127
    $P127($P125)
  loop140_next:
    goto loop140_test
  loop140_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P142, exception, 'type'
    eq $P142, .CONTROL_LOOP_NEXT, loop140_next
    eq $P142, .CONTROL_LOOP_REDO, loop140_redo
  loop140_done:
    pop_eh 
  for_undef_82:
  if_120_end:
.annotate 'line', 82
    find_lex $P163, "%exports"
.annotate 'line', 70
    .return ($P163)
.end


.namespace ["HLL";"Compiler"]
.sub "_block147"  :anon :subid("19_1295995585.312") :outer("17_1295995585.312")
    .param pmc param_150
.annotate 'line', 90
    new $P149, "Undef"
    .lex "$value", $P149
    .lex "$_", param_150
    find_lex $P151, "$_"
    $P152 = $P151."value"()
    store_lex "$value", $P152
.annotate 'line', 91
    find_lex $P153, "$value"
    find_lex $P154, "$_"
    $P155 = $P154."key"()
    find_lex $P156, "$value"
    $P157 = "value_type"($P156)
    find_lex $P158, "%exports"
    unless_null $P158, vivify_80
    $P158 = root_new ['parrot';'Hash']
    store_lex "%exports", $P158
  vivify_80:
    set $P159, $P158[$P157]
    unless_null $P159, vivify_81
    $P159 = root_new ['parrot';'Hash']
    set $P158[$P157], $P159
  vivify_81:
    set $P159[$P155], $P153
.annotate 'line', 89
    .return ($P153)
.end


.namespace ["HLL";"Compiler"]
.sub "_block126"  :anon :subid("18_1295995585.312") :outer("17_1295995585.312")
    .param pmc param_129
.annotate 'line', 84
    new $P128, "Undef"
    .lex "$value", $P128
    .lex "$_", param_129
    find_lex $P130, "$_"
    set $S131, $P130
    find_lex $P132, "%source"
    unless_null $P132, vivify_83
    $P132 = root_new ['parrot';'Hash']
  vivify_83:
    set $P133, $P132[$S131]
    unless_null $P133, vivify_84
    new $P133, "Undef"
  vivify_84:
    store_lex "$value", $P133
.annotate 'line', 85
    find_lex $P134, "$value"
    find_lex $P135, "$_"
    find_lex $P136, "$value"
    $P137 = "value_type"($P136)
    find_lex $P138, "%exports"
    unless_null $P138, vivify_85
    $P138 = root_new ['parrot';'Hash']
    store_lex "%exports", $P138
  vivify_85:
    set $P139, $P138[$P137]
    unless_null $P139, vivify_86
    $P139 = root_new ['parrot';'Hash']
    set $P138[$P137], $P139
  vivify_86:
    set $P139[$P135], $P134
.annotate 'line', 83
    .return ($P134)
.end


.namespace ["HLL";"Compiler"]
.sub "get_module"  :subid("20_1295995585.312") :outer("12_1295995585.312")
    .param pmc param_165
    .param pmc param_166
.annotate 'line', 97
    .lex "self", param_165
    .lex "$name", param_166
.annotate 'line', 98
    $P167 = root_new ['parrot';'ResizablePMCArray']
    .lex "@name", $P167
    find_lex $P168, "self"
    find_lex $P169, "$name"
    $P170 = $P168."parse_name"($P169)
    store_lex "@name", $P170
.annotate 'line', 99
    find_lex $P171, "@name"
    find_lex $P172, "self"
    get_global $P173, "$?CLASS"
    getattribute $P174, $P172, $P173, "$!language"
    unless_null $P174, vivify_87
    new $P174, "Undef"
  vivify_87:
    set $S175, $P174
    downcase $S176, $S175
    $P171."unshift"($S176)
.annotate 'line', 100
    find_lex $P177, "@name"
    get_root_namespace $P178, $P177
.annotate 'line', 97
    .return ($P178)
.end


.namespace ["HLL";"Compiler"]
.sub "language"  :subid("21_1295995585.312") :outer("12_1295995585.312")
    .param pmc param_180
    .param pmc param_181 :optional
    .param int has_param_181 :opt_flag
.annotate 'line', 103
    .lex "self", param_180
    if has_param_181, optparam_88
    new $P182, "Undef"
    set param_181, $P182
  optparam_88:
    .lex "$name", param_181
.annotate 'line', 104
    find_lex $P184, "$name"
    unless $P184, if_183_end
.annotate 'line', 105
    find_lex $P185, "$name"
    find_lex $P186, "self"
    get_global $P187, "$?CLASS"
    setattribute $P186, $P187, "$!language", $P185
.annotate 'line', 106
    find_lex $P188, "$name"
    set $S189, $P188
    find_lex $P190, "self"
    compreg $S189, $P190
  if_183_end:
.annotate 'line', 104
    find_lex $P191, "self"
    get_global $P192, "$?CLASS"
    getattribute $P193, $P191, $P192, "$!language"
    unless_null $P193, vivify_89
    new $P193, "Undef"
  vivify_89:
.annotate 'line', 103
    .return ($P193)
.end


.namespace ["HLL";"Compiler"]
.sub "load_module"  :subid("22_1295995585.312") :outer("12_1295995585.312")
    .param pmc param_195
    .param pmc param_196
.annotate 'line', 111
    .const 'Sub' $P206 = "23_1295995585.312" 
    capture_lex $P206
    .lex "self", param_195
    .lex "$name", param_196
.annotate 'line', 112
    new $P197, "Undef"
    .lex "$base", $P197
.annotate 'line', 113
    new $P198, "Undef"
    .lex "$loaded", $P198
.annotate 'line', 112
    find_lex $P199, "self"
    find_lex $P200, "$name"
    $P201 = $P199."parse_name"($P200)
    join $S202, "/", $P201
    new $P203, 'String'
    set $P203, $S202
    store_lex "$base", $P203
.annotate 'line', 113
    new $P204, "Integer"
    assign $P204, 0
    store_lex "$loaded", $P204
.annotate 'line', 114
    .const 'Sub' $P206 = "23_1295995585.312" 
    capture_lex $P206
    $P206()
.annotate 'line', 115
    find_lex $P219, "$loaded"
    if $P219, unless_218_end
    find_lex $P220, "$base"
    concat $P221, $P220, ".pir"
    set $S222, $P221
    load_bytecode $S222
    new $P223, "Integer"
    assign $P223, 1
    store_lex "$loaded", $P223
  unless_218_end:
.annotate 'line', 116
    find_lex $P224, "self"
    find_lex $P225, "$name"
    $P226 = $P224."get_module"($P225)
.annotate 'line', 111
    .return ($P226)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block205"  :anon :subid("23_1295995585.312") :outer("22_1295995585.312")
.annotate 'line', 114
    new $P213, 'ExceptionHandler'
    set_addr $P213, control_212
    $P213."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P213
    find_lex $P207, "$base"
    concat $P208, $P207, ".pbc"
    set $S209, $P208
    load_bytecode $S209
    new $P210, "Integer"
    assign $P210, 1
    store_lex "$loaded", $P210
    pop_eh 
    goto skip_handler_211
  control_212:
    .local pmc exception 
    .get_results (exception) 
    new $P216, 'Integer'
    set $P216, 1
    set exception["handled"], $P216
    set $I217, exception["handled"]
    ne $I217, 1, nothandled_215
  handled_214:
    .return (exception)
  nothandled_215:
    rethrow exception
  skip_handler_211:
    .return ($P210)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "import"  :subid("24_1295995585.312") :outer("12_1295995585.312")
    .param pmc param_228
    .param pmc param_229
    .param pmc param_230
.annotate 'line', 119
    .const 'Sub' $P236 = "25_1295995585.312" 
    capture_lex $P236
    .lex "self", param_228
    .lex "$target", param_229
    .lex "%exports", param_230
.annotate 'line', 120
    find_lex $P232, "%exports"
    defined $I233, $P232
    unless $I233, for_undef_90
    iter $P231, $P232
    new $P318, 'ExceptionHandler'
    set_addr $P318, loop317_handler
    $P318."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P318
  loop317_test:
    unless $P231, loop317_done
    shift $P234, $P231
  loop317_redo:
    .const 'Sub' $P236 = "25_1295995585.312" 
    capture_lex $P236
    $P236($P234)
  loop317_next:
    goto loop317_test
  loop317_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P319, exception, 'type'
    eq $P319, .CONTROL_LOOP_NEXT, loop317_next
    eq $P319, .CONTROL_LOOP_REDO, loop317_redo
  loop317_done:
    pop_eh 
  for_undef_90:
.annotate 'line', 119
    .return ($P231)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block235"  :anon :subid("25_1295995585.312") :outer("24_1295995585.312")
    .param pmc param_239
.annotate 'line', 120
    .const 'Sub' $P306 = "28_1295995585.312" 
    capture_lex $P306
    .const 'Sub' $P286 = "27_1295995585.312" 
    capture_lex $P286
    .const 'Sub' $P257 = "26_1295995585.312" 
    capture_lex $P257
.annotate 'line', 121
    new $P237, "Undef"
    .lex "$type", $P237
.annotate 'line', 122
    $P238 = root_new ['parrot';'Hash']
    .lex "%items", $P238
    .lex "$_", param_239
.annotate 'line', 121
    find_lex $P240, "$_"
    $P241 = $P240."key"()
    store_lex "$type", $P241
.annotate 'line', 122
    find_lex $P242, "$_"
    $P243 = $P242."value"()
    store_lex "%items", $P243
.annotate 'line', 123
    find_lex $P246, "self"
    new $P247, 'String'
    set $P247, "import_"
    find_lex $P248, "$type"
    concat $P249, $P247, $P248
    set $S250, $P249
    can $I251, $P246, $S250
    if $I251, if_245
.annotate 'line', 126
    find_lex $P275, "$target"
    new $P276, 'String'
    set $P276, "add_"
    find_lex $P277, "$type"
    concat $P278, $P276, $P277
    set $S279, $P278
    can $I280, $P275, $S279
    if $I280, if_274
.annotate 'line', 130
    find_lex $P302, "%items"
    defined $I303, $P302
    unless $I303, for_undef_91
    iter $P301, $P302
    new $P315, 'ExceptionHandler'
    set_addr $P315, loop314_handler
    $P315."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P315
  loop314_test:
    unless $P301, loop314_done
    shift $P304, $P301
  loop314_redo:
    .const 'Sub' $P306 = "28_1295995585.312" 
    capture_lex $P306
    $P306($P304)
  loop314_next:
    goto loop314_test
  loop314_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P316, exception, 'type'
    eq $P316, .CONTROL_LOOP_NEXT, loop314_next
    eq $P316, .CONTROL_LOOP_REDO, loop314_redo
  loop314_done:
    pop_eh 
  for_undef_91:
.annotate 'line', 129
    set $P273, $P301
.annotate 'line', 126
    goto if_274_end
  if_274:
.annotate 'line', 127
    find_lex $P282, "%items"
    defined $I283, $P282
    unless $I283, for_undef_93
    iter $P281, $P282
    new $P299, 'ExceptionHandler'
    set_addr $P299, loop298_handler
    $P299."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P299
  loop298_test:
    unless $P281, loop298_done
    shift $P284, $P281
  loop298_redo:
    .const 'Sub' $P286 = "27_1295995585.312" 
    capture_lex $P286
    $P286($P284)
  loop298_next:
    goto loop298_test
  loop298_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P300, exception, 'type'
    eq $P300, .CONTROL_LOOP_NEXT, loop298_next
    eq $P300, .CONTROL_LOOP_REDO, loop298_redo
  loop298_done:
    pop_eh 
  for_undef_93:
.annotate 'line', 126
    set $P273, $P281
  if_274_end:
    set $P244, $P273
.annotate 'line', 123
    goto if_245_end
  if_245:
.annotate 'line', 124
    find_lex $P253, "%items"
    defined $I254, $P253
    unless $I254, for_undef_94
    iter $P252, $P253
    new $P271, 'ExceptionHandler'
    set_addr $P271, loop270_handler
    $P271."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P271
  loop270_test:
    unless $P252, loop270_done
    shift $P255, $P252
  loop270_redo:
    .const 'Sub' $P257 = "26_1295995585.312" 
    capture_lex $P257
    $P257($P255)
  loop270_next:
    goto loop270_test
  loop270_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P272, exception, 'type'
    eq $P272, .CONTROL_LOOP_NEXT, loop270_next
    eq $P272, .CONTROL_LOOP_REDO, loop270_redo
  loop270_done:
    pop_eh 
  for_undef_94:
.annotate 'line', 123
    set $P244, $P252
  if_245_end:
.annotate 'line', 120
    .return ($P244)
.end


.namespace ["HLL";"Compiler"]
.sub "_block305"  :anon :subid("28_1295995585.312") :outer("25_1295995585.312")
    .param pmc param_307
.annotate 'line', 130
    .lex "$_", param_307
    find_lex $P308, "$_"
    $P309 = $P308."value"()
    find_lex $P310, "$_"
    $P311 = $P310."key"()
    set $S312, $P311
    find_lex $P313, "$target"
    unless_null $P313, vivify_92
    $P313 = root_new ['parrot';'Hash']
    store_lex "$target", $P313
  vivify_92:
    set $P313[$S312], $P309
    .return ($P309)
.end


.namespace ["HLL";"Compiler"]
.sub "_block285"  :anon :subid("27_1295995585.312") :outer("25_1295995585.312")
    .param pmc param_287
.annotate 'line', 127
    .lex "$_", param_287
    find_lex $P288, "$target"
    find_lex $P289, "$_"
    $P290 = $P289."key"()
    find_lex $P291, "$_"
    $P292 = $P291."value"()
    new $P293, 'String'
    set $P293, "add_"
    find_lex $P294, "$type"
    concat $P295, $P293, $P294
    set $S296, $P295
    $P297 = $P288.$S296($P290, $P292)
    .return ($P297)
.end


.namespace ["HLL";"Compiler"]
.sub "_block256"  :anon :subid("26_1295995585.312") :outer("25_1295995585.312")
    .param pmc param_258
.annotate 'line', 124
    .lex "$_", param_258
    find_lex $P259, "self"
    find_lex $P260, "$target"
    find_lex $P261, "$_"
    $P262 = $P261."key"()
    find_lex $P263, "$_"
    $P264 = $P263."value"()
    new $P265, 'String'
    set $P265, "import_"
    find_lex $P266, "$type"
    concat $P267, $P265, $P266
    set $S268, $P267
    $P269 = $P259.$S268($P260, $P262, $P264)
    .return ($P269)
.end


.namespace ["HLL";"Compiler"]
.sub "autoprint"  :subid("29_1295995585.312") :outer("12_1295995585.312")
    .param pmc param_321
    .param pmc param_322
.annotate 'line', 135
    .lex "self", param_321
    .lex "$value", param_322
.annotate 'line', 137
    getinterp $P325
    $P326 = $P325."stdout_handle"()
    $N327 = $P326."tell"()
    find_dynamic_lex $P328, "$*AUTOPRINTPOS"
    unless_null $P328, vivify_95
    get_hll_global $P328, "$AUTOPRINTPOS"
    unless_null $P328, vivify_96
    die "Contextual $*AUTOPRINTPOS not found"
  vivify_96:
  vivify_95:
    set $N329, $P328
    isgt $I330, $N327, $N329
    unless $I330, unless_324
    new $P323, 'Integer'
    set $P323, $I330
    goto unless_324_end
  unless_324:
.annotate 'line', 136
    find_lex $P331, "$value"
    set $S332, $P331
    say $S332
  unless_324_end:
.annotate 'line', 135
    .return ($P323)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "interactive"  :subid("30_1295995585.312") :outer("12_1295995585.312")
    .param pmc param_334
    .param pmc param_335 :slurpy :named
.annotate 'line', 140
    .const 'Sub' $P367 = "31_1295995585.312" 
    capture_lex $P367
    .lex "self", param_334
    .lex "%adverbs", param_335
.annotate 'line', 141
    new $P336, "Undef"
    .lex "$target", $P336
.annotate 'line', 145
    new $P337, "Undef"
    .lex "$stdin", $P337
.annotate 'line', 146
    new $P338, "Undef"
    .lex "$encoding", $P338
.annotate 'line', 151
    new $P339, "Undef"
    .lex "$save_ctx", $P339
.annotate 'line', 141
    find_lex $P340, "%adverbs"
    unless_null $P340, vivify_97
    $P340 = root_new ['parrot';'Hash']
  vivify_97:
    set $P341, $P340["target"]
    unless_null $P341, vivify_98
    new $P341, "Undef"
  vivify_98:
    set $S342, $P341
    downcase $S343, $S342
    new $P344, 'String'
    set $P344, $S343
    store_lex "$target", $P344
.annotate 'line', 143
    getinterp $P345
    $P346 = $P345."stderr_handle"()
    find_lex $P347, "self"
    $S348 = $P347."commandline_banner"()
    print $P346, $S348
.annotate 'line', 145
    getinterp $P349
    $P350 = $P349."stdin_handle"()
    store_lex "$stdin", $P350
.annotate 'line', 146
    find_lex $P351, "%adverbs"
    unless_null $P351, vivify_99
    $P351 = root_new ['parrot';'Hash']
  vivify_99:
    set $P352, $P351["encoding"]
    unless_null $P352, vivify_100
    new $P352, "Undef"
  vivify_100:
    set $S353, $P352
    new $P354, 'String'
    set $P354, $S353
    store_lex "$encoding", $P354
.annotate 'line', 147
    find_lex $P358, "$encoding"
    if $P358, if_357
    set $P356, $P358
    goto if_357_end
  if_357:
    find_lex $P359, "$encoding"
    set $S360, $P359
    isne $I361, $S360, "fixed_8"
    new $P356, 'Integer'
    set $P356, $I361
  if_357_end:
    unless $P356, if_355_end
.annotate 'line', 148
    find_lex $P362, "$stdin"
    find_lex $P363, "$encoding"
    $P362."encoding"($P363)
  if_355_end:
.annotate 'line', 147
    find_lex $P364, "$save_ctx"
.annotate 'line', 152
    new $P478, 'ExceptionHandler'
    set_addr $P478, loop477_handler
    $P478."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P478
  loop477_test:
    new $P365, "Integer"
    assign $P365, 1
    unless $P365, loop477_done
  loop477_redo:
    .const 'Sub' $P367 = "31_1295995585.312" 
    capture_lex $P367
    $P367()
  loop477_next:
    goto loop477_test
  loop477_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P479, exception, 'type'
    eq $P479, .CONTROL_LOOP_NEXT, loop477_next
    eq $P479, .CONTROL_LOOP_REDO, loop477_redo
  loop477_done:
    pop_eh 
.annotate 'line', 140
    .return ($P365)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block366"  :anon :subid("31_1295995585.312") :outer("30_1295995585.312")
.annotate 'line', 152
    .const 'Sub' $P399 = "32_1295995585.312" 
    capture_lex $P399
.annotate 'line', 155
    new $P368, "Undef"
    .lex "$prompt", $P368
.annotate 'line', 156
    new $P369, "Undef"
    .lex "$code", $P369
.annotate 'line', 161
    new $P370, "Undef"
    .lex "$*AUTOPRINTPOS", $P370
.annotate 'line', 162
    new $P371, "Undef"
    .lex "$*CTXSAVE", $P371
.annotate 'line', 163
    new $P372, "Undef"
    .lex "$*MAIN_CTX", $P372
.annotate 'line', 153
    find_lex $P374, "$stdin"
    if $P374, unless_373_end
    set $I375, .CONTROL_LOOP_LAST
    die 0, $I375
  unless_373_end:
.annotate 'line', 155
    find_lex $P377, "self"
    $P378 = $P377."commandline_prompt"()
    set $P376, $P378
    defined $I380, $P376
    if $I380, default_379
    new $P381, "String"
    assign $P381, "> "
    set $P376, $P381
  default_379:
    store_lex "$prompt", $P376
.annotate 'line', 156
    find_lex $P382, "$stdin"
    find_lex $P383, "$prompt"
    set $S384, $P383
    $P385 = $P382."readline_interactive"($S384)
    store_lex "$code", $P385
.annotate 'line', 158
    find_lex $P387, "$code"
    isnull $I388, $P387
    unless $I388, if_386_end
    set $I389, .CONTROL_LOOP_LAST
    die 0, $I389
  if_386_end:
.annotate 'line', 161
    getinterp $P390
    $P391 = $P390."stdout_handle"()
    $P392 = $P391."tell"()
    store_lex "$*AUTOPRINTPOS", $P392
.annotate 'line', 162
    find_lex $P393, "self"
    store_lex "$*CTXSAVE", $P393
    find_lex $P394, "$*MAIN_CTX"
    unless_null $P394, vivify_101
    get_hll_global $P394, "$MAIN_CTX"
    unless_null $P394, vivify_102
    die "Contextual $*MAIN_CTX not found"
  vivify_102:
  vivify_101:
.annotate 'line', 165
    find_lex $P397, "$code"
    if $P397, if_396
    set $P395, $P397
    goto if_396_end
  if_396:
    .const 'Sub' $P399 = "32_1295995585.312" 
    capture_lex $P399
    $P476 = $P399()
    set $P395, $P476
  if_396_end:
.annotate 'line', 152
    .return ($P395)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block398"  :anon :subid("32_1295995585.312") :outer("31_1295995585.312")
.annotate 'line', 165
    .const 'Sub' $P432 = "35_1295995585.312" 
    capture_lex $P432
    .const 'Sub' $P405 = "33_1295995585.312" 
    capture_lex $P405
.annotate 'line', 167
    new $P400, "Undef"
    .lex "$output", $P400
.annotate 'line', 166
    find_lex $P401, "$code"
    concat $P402, $P401, "\n"
    store_lex "$code", $P402
    find_lex $P403, "$output"
.annotate 'line', 168
    .const 'Sub' $P405 = "33_1295995585.312" 
    capture_lex $P405
    $P405()
.annotate 'line', 175
    find_dynamic_lex $P429, "$*MAIN_CTX"
    unless_null $P429, vivify_103
    get_hll_global $P429, "$MAIN_CTX"
    unless_null $P429, vivify_104
    die "Contextual $*MAIN_CTX not found"
  vivify_104:
  vivify_103:
    defined $I430, $P429
    unless $I430, if_428_end
    .const 'Sub' $P432 = "35_1295995585.312" 
    capture_lex $P432
    $P432()
  if_428_end:
.annotate 'line', 183
    find_lex $P455, "$output"
    isnull $I456, $P455
    unless $I456, if_454_end
    set $I457, .CONTROL_LOOP_NEXT
    die 0, $I457
  if_454_end:
.annotate 'line', 185
    find_lex $P460, "$target"
    isfalse $I461, $P460
    if $I461, if_459
.annotate 'line', 187
    find_lex $P467, "$target"
    set $S468, $P467
    iseq $I469, $S468, "pir"
    if $I469, if_466
.annotate 'line', 190
    find_lex $P471, "self"
    find_lex $P472, "$output"
    find_lex $P473, "$target"
    find_lex $P474, "%adverbs"
    $P475 = $P471."dumper"($P472, $P473, $P474 :flat)
.annotate 'line', 189
    set $P465, $P475
.annotate 'line', 187
    goto if_466_end
  if_466:
.annotate 'line', 188
    find_lex $P470, "$output"
    say $P470
  if_466_end:
.annotate 'line', 187
    set $P458, $P465
.annotate 'line', 185
    goto if_459_end
  if_459:
.annotate 'line', 186
    find_lex $P462, "self"
    find_lex $P463, "$output"
    $P464 = $P462."autoprint"($P463)
.annotate 'line', 185
    set $P458, $P464
  if_459_end:
.annotate 'line', 165
    .return ($P458)
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block404"  :anon :subid("33_1295995585.312") :outer("32_1295995585.312")
.annotate 'line', 168
    .const 'Sub' $P417 = "34_1295995585.312" 
    capture_lex $P417
    new $P413, 'ExceptionHandler'
    set_addr $P413, control_412
    $P413."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P413
.annotate 'line', 169
    find_lex $P406, "self"
    find_lex $P407, "$code"
    find_lex $P408, "$save_ctx"
    find_lex $P409, "%adverbs"
    $P410 = $P406."eval"($P407, $P409 :flat, $P408 :named("outer_ctx"))
    store_lex "$output", $P410
.annotate 'line', 168
    pop_eh 
    goto skip_handler_411
  control_412:
.annotate 'line', 170
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P417 = "34_1295995585.312" 
    newclosure $P425, $P417
    $P425(exception)
    new $P426, 'Integer'
    set $P426, 1
    set exception["handled"], $P426
    set $I427, exception["handled"]
    ne $I427, 1, nothandled_415
  handled_414:
    .return (exception)
  nothandled_415:
    rethrow exception
  skip_handler_411:
.annotate 'line', 168
    .return ()
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block416"  :anon :subid("34_1295995585.312") :outer("33_1295995585.312")
    .param pmc param_418
.annotate 'line', 170
    .lex "$_", param_418
    find_lex $P419, "$_"
    .lex "$!", $P419
.annotate 'line', 171
    find_lex $P420, "$!"
    set $S421, $P420
    new $P422, 'String'
    set $P422, $S421
    concat $P423, $P422, "\n"
    print $P423
.annotate 'line', 172
    set $I424, .CONTROL_LOOP_NEXT
    die 0, $I424
.annotate 'line', 170
    .return ()
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block431"  :anon :subid("35_1295995585.312") :outer("32_1295995585.312")
.annotate 'line', 175
    .const 'Sub' $P443 = "36_1295995585.312" 
    capture_lex $P443
.annotate 'line', 176
    get_global $P433, "$interactive_ctx"
    unless_null $P433, vivify_105
    new $P433, "Undef"
    set_global "$interactive_ctx", $P433
  vivify_105:
.annotate 'line', 177
    get_global $P434, "%interactive_pad"
    unless_null $P434, vivify_106
    $P434 = root_new ['parrot';'Hash']
    set_global "%interactive_pad", $P434
  vivify_106:
.annotate 'line', 175
    get_global $P435, "$interactive_ctx"
    get_global $P436, "%interactive_pad"
.annotate 'line', 178
    find_dynamic_lex $P438, "$*MAIN_CTX"
    unless_null $P438, vivify_107
    get_hll_global $P438, "$MAIN_CTX"
    unless_null $P438, vivify_108
    die "Contextual $*MAIN_CTX not found"
  vivify_108:
  vivify_107:
    $P439 = $P438."lexpad_full"()
    defined $I440, $P439
    unless $I440, for_undef_109
    iter $P437, $P439
    new $P451, 'ExceptionHandler'
    set_addr $P451, loop450_handler
    $P451."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P451
  loop450_test:
    unless $P437, loop450_done
    shift $P441, $P437
  loop450_redo:
    .const 'Sub' $P443 = "36_1295995585.312" 
    capture_lex $P443
    $P443($P441)
  loop450_next:
    goto loop450_test
  loop450_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P452, exception, 'type'
    eq $P452, .CONTROL_LOOP_NEXT, loop450_next
    eq $P452, .CONTROL_LOOP_REDO, loop450_redo
  loop450_done:
    pop_eh 
  for_undef_109:
.annotate 'line', 181
    get_global $P453, "$interactive_ctx"
    store_lex "$save_ctx", $P453
.annotate 'line', 175
    .return ($P453)
.end


.namespace ["HLL";"Compiler"]
.sub "_block442"  :anon :subid("36_1295995585.312") :outer("35_1295995585.312")
    .param pmc param_444
.annotate 'line', 178
    .lex "$_", param_444
.annotate 'line', 179
    find_lex $P445, "$_"
    $P446 = $P445."value"()
    find_lex $P447, "$_"
    $P448 = $P447."key"()
    get_global $P449, "%interactive_pad"
    unless_null $P449, vivify_110
    $P449 = root_new ['parrot';'Hash']
    set_global "%interactive_pad", $P449
  vivify_110:
    set $P449[$P448], $P446
.annotate 'line', 178
    .return ($P446)
.end


.namespace ["HLL";"Compiler"]
.sub "eval"  :subid("37_1295995585.312") :outer("12_1295995585.312")
    .param pmc param_481
    .param pmc param_482
    .param pmc param_483 :slurpy
    .param pmc param_484 :slurpy :named
.annotate 'line', 196
    .const 'Sub' $P503 = "38_1295995585.312" 
    capture_lex $P503
    .lex "self", param_481
    .lex "$code", param_482
    .lex "@args", param_483
    .lex "%adverbs", param_484
.annotate 'line', 197
    new $P485, "Undef"
    .lex "$output", $P485
.annotate 'line', 196
    find_lex $P486, "$output"
.annotate 'line', 198
    find_lex $P487, "self"
    find_lex $P488, "$code"
    find_lex $P489, "%adverbs"
    $P490 = $P487."compile"($P488, $P489 :flat)
    store_lex "$output", $P490
.annotate 'line', 200
    find_lex $P494, "$output"
    isa $I495, $P494, "String"
    new $P496, 'Integer'
    set $P496, $I495
    isfalse $I497, $P496
    if $I497, if_493
    new $P492, 'Integer'
    set $P492, $I497
    goto if_493_end
  if_493:
.annotate 'line', 201
    find_lex $P498, "%adverbs"
    unless_null $P498, vivify_111
    $P498 = root_new ['parrot';'Hash']
  vivify_111:
    set $P499, $P498["target"]
    unless_null $P499, vivify_112
    new $P499, "Undef"
  vivify_112:
    set $S500, $P499
    iseq $I501, $S500, ""
    new $P492, 'Integer'
    set $P492, $I501
  if_493_end:
    unless $P492, if_491_end
    .const 'Sub' $P503 = "38_1295995585.312" 
    capture_lex $P503
    $P503()
  if_491_end:
.annotate 'line', 200
    find_lex $P519, "$output"
.annotate 'line', 196
    .return ($P519)
.end


.namespace ["HLL";"Compiler"]
.sub "_block502"  :anon :subid("38_1295995585.312") :outer("37_1295995585.312")
.annotate 'line', 202
    new $P504, "Undef"
    .lex "$outer_ctx", $P504
    find_lex $P505, "%adverbs"
    unless_null $P505, vivify_113
    $P505 = root_new ['parrot';'Hash']
  vivify_113:
    set $P506, $P505["outer_ctx"]
    unless_null $P506, vivify_114
    new $P506, "Undef"
  vivify_114:
    store_lex "$outer_ctx", $P506
.annotate 'line', 203
    find_lex $P508, "$outer_ctx"
    defined $I509, $P508
    unless $I509, if_507_end
.annotate 'line', 204
    find_lex $P510, "$output"
    unless_null $P510, vivify_115
    $P510 = root_new ['parrot';'ResizablePMCArray']
  vivify_115:
    set $P511, $P510[0]
    unless_null $P511, vivify_116
    new $P511, "Undef"
  vivify_116:
    find_lex $P512, "$outer_ctx"
    $P511."set_outer_ctx"($P512)
  if_507_end:
.annotate 'line', 207
    find_lex $P513, "%adverbs"
    unless_null $P513, vivify_117
    $P513 = root_new ['parrot';'Hash']
  vivify_117:
    set $P514, $P513["trace"]
    unless_null $P514, vivify_118
    new $P514, "Undef"
  vivify_118:
    set $I515, $P514
    trace $I515
.annotate 'line', 208
    find_lex $P516, "$output"
    find_lex $P517, "@args"
    $P518 = $P516($P517 :flat)
    store_lex "$output", $P518
.annotate 'line', 209
    trace 0
.annotate 'line', 201
    .return ()
.end


.namespace ["HLL";"Compiler"]
.sub "ctxsave"  :subid("39_1295995585.312") :outer("12_1295995585.312")
    .param pmc param_521
.annotate 'line', 215
    .lex "self", param_521
.annotate 'line', 217

                $P0 = getinterp
                $P522 = $P0['context';1]
            
    store_dynamic_lex "$*MAIN_CTX", $P522
.annotate 'line', 221
    new $P523, "Integer"
    assign $P523, 0
    store_dynamic_lex "$*CTXSAVE", $P523
.annotate 'line', 215
    .return ($P523)
.end


.namespace ["HLL";"Compiler"]
.sub "panic"  :subid("40_1295995585.312") :outer("12_1295995585.312")
    .param pmc param_525
    .param pmc param_526 :slurpy
.annotate 'line', 224
    .lex "self", param_525
    .lex "@args", param_526
.annotate 'line', 225
    find_lex $P527, "@args"
    join $S528, "", $P527
    die $S528
.annotate 'line', 224
    .return ()
.end


.namespace ["HLL";"Compiler"]
.sub "stages"  :subid("41_1295995585.312") :outer("12_1295995585.312")
    .param pmc param_530
    .param pmc param_531 :optional
    .param int has_param_531 :opt_flag
.annotate 'line', 228
    .lex "self", param_530
    if has_param_531, optparam_119
    $P532 = root_new ['parrot';'ResizablePMCArray']
    set param_531, $P532
  optparam_119:
    .lex "@value", param_531
.annotate 'line', 229
    find_lex $P534, "@value"
    set $N535, $P534
    unless $N535, if_533_end
.annotate 'line', 230
    find_lex $P536, "@value"
    find_lex $P537, "self"
    get_global $P538, "$?CLASS"
    setattribute $P537, $P538, "@!stages", $P536
  if_533_end:
.annotate 'line', 229
    find_lex $P539, "self"
    get_global $P540, "$?CLASS"
    getattribute $P541, $P539, $P540, "@!stages"
    unless_null $P541, vivify_120
    $P541 = root_new ['parrot';'ResizablePMCArray']
  vivify_120:
.annotate 'line', 228
    .return ($P541)
.end


.namespace ["HLL";"Compiler"]
.sub "parsegrammar"  :subid("42_1295995585.312") :outer("12_1295995585.312")
    .param pmc param_543
    .param pmc param_544 :slurpy
.annotate 'line', 235
    .lex "self", param_543
    .lex "@value", param_544
.annotate 'line', 236
    find_lex $P546, "@value"
    set $N547, $P546
    unless $N547, if_545_end
.annotate 'line', 237
    find_lex $P548, "@value"
    unless_null $P548, vivify_121
    $P548 = root_new ['parrot';'ResizablePMCArray']
  vivify_121:
    set $P549, $P548[0]
    unless_null $P549, vivify_122
    new $P549, "Undef"
  vivify_122:
    find_lex $P550, "self"
    get_global $P551, "$?CLASS"
    setattribute $P550, $P551, "$!parsegrammar", $P549
  if_545_end:
.annotate 'line', 236
    find_lex $P552, "self"
    get_global $P553, "$?CLASS"
    getattribute $P554, $P552, $P553, "$!parsegrammar"
    unless_null $P554, vivify_123
    new $P554, "Undef"
  vivify_123:
.annotate 'line', 235
    .return ($P554)
.end


.namespace ["HLL";"Compiler"]
.sub "parseactions"  :subid("43_1295995585.312") :outer("12_1295995585.312")
    .param pmc param_556
    .param pmc param_557 :slurpy
.annotate 'line', 242
    .lex "self", param_556
    .lex "@value", param_557
.annotate 'line', 243
    find_lex $P559, "@value"
    set $N560, $P559
    unless $N560, if_558_end
.annotate 'line', 244
    find_lex $P561, "@value"
    unless_null $P561, vivify_124
    $P561 = root_new ['parrot';'ResizablePMCArray']
  vivify_124:
    set $P562, $P561[0]
    unless_null $P562, vivify_125
    new $P562, "Undef"
  vivify_125:
    find_lex $P563, "self"
    get_global $P564, "$?CLASS"
    setattribute $P563, $P564, "$!parseactions", $P562
  if_558_end:
.annotate 'line', 243
    find_lex $P565, "self"
    get_global $P566, "$?CLASS"
    getattribute $P567, $P565, $P566, "$!parseactions"
    unless_null $P567, vivify_126
    new $P567, "Undef"
  vivify_126:
.annotate 'line', 242
    .return ($P567)
.end


.namespace ["HLL";"Compiler"]
.sub "astgrammar"  :subid("44_1295995585.312") :outer("12_1295995585.312")
    .param pmc param_569
    .param pmc param_570 :slurpy
.annotate 'line', 249
    .lex "self", param_569
    .lex "@value", param_570
.annotate 'line', 250
    find_lex $P572, "@value"
    set $N573, $P572
    unless $N573, if_571_end
.annotate 'line', 251
    find_lex $P574, "@value"
    unless_null $P574, vivify_127
    $P574 = root_new ['parrot';'ResizablePMCArray']
  vivify_127:
    set $P575, $P574[0]
    unless_null $P575, vivify_128
    new $P575, "Undef"
  vivify_128:
    find_lex $P576, "self"
    get_global $P577, "$?CLASS"
    setattribute $P576, $P577, "$!astgrammar", $P575
  if_571_end:
.annotate 'line', 250
    find_lex $P578, "self"
    get_global $P579, "$?CLASS"
    getattribute $P580, $P578, $P579, "$!astgrammar"
    unless_null $P580, vivify_129
    new $P580, "Undef"
  vivify_129:
.annotate 'line', 249
    .return ($P580)
.end


.namespace ["HLL";"Compiler"]
.sub "commandline_banner"  :subid("45_1295995585.312") :outer("12_1295995585.312")
    .param pmc param_582
    .param pmc param_583 :optional
    .param int has_param_583 :opt_flag
.annotate 'line', 256
    .lex "self", param_582
    if has_param_583, optparam_130
    new $P584, "Undef"
    set param_583, $P584
  optparam_130:
    .lex "$value", param_583
.annotate 'line', 257
    find_lex $P586, "$value"
    defined $I587, $P586
    unless $I587, if_585_end
.annotate 'line', 258
    find_lex $P588, "$value"
    find_lex $P589, "self"
    get_global $P590, "$?CLASS"
    setattribute $P589, $P590, "$!commandline_banner", $P588
  if_585_end:
.annotate 'line', 257
    find_lex $P591, "self"
    get_global $P592, "$?CLASS"
    getattribute $P593, $P591, $P592, "$!commandline_banner"
    unless_null $P593, vivify_131
    new $P593, "Undef"
  vivify_131:
.annotate 'line', 256
    .return ($P593)
.end


.namespace ["HLL";"Compiler"]
.sub "commandline_prompt"  :subid("46_1295995585.312") :outer("12_1295995585.312")
    .param pmc param_595
    .param pmc param_596 :optional
    .param int has_param_596 :opt_flag
.annotate 'line', 263
    .lex "self", param_595
    if has_param_596, optparam_132
    new $P597, "Undef"
    set param_596, $P597
  optparam_132:
    .lex "$value", param_596
.annotate 'line', 264
    find_lex $P599, "$value"
    defined $I600, $P599
    unless $I600, if_598_end
.annotate 'line', 265
    find_lex $P601, "$value"
    find_lex $P602, "self"
    get_global $P603, "$?CLASS"
    setattribute $P602, $P603, "$!commandline_prompt", $P601
  if_598_end:
.annotate 'line', 264
    find_lex $P604, "self"
    get_global $P605, "$?CLASS"
    getattribute $P606, $P604, $P605, "$!commandline_prompt"
    unless_null $P606, vivify_133
    new $P606, "Undef"
  vivify_133:
.annotate 'line', 263
    .return ($P606)
.end


.namespace ["HLL";"Compiler"]
.sub "compiler_progname"  :subid("47_1295995585.312") :outer("12_1295995585.312")
    .param pmc param_608
    .param pmc param_609 :optional
    .param int has_param_609 :opt_flag
.annotate 'line', 270
    .lex "self", param_608
    if has_param_609, optparam_134
    new $P610, "Undef"
    set param_609, $P610
  optparam_134:
    .lex "$value", param_609
.annotate 'line', 271
    find_lex $P612, "$value"
    defined $I613, $P612
    unless $I613, if_611_end
.annotate 'line', 272
    find_lex $P614, "$value"
    find_lex $P615, "self"
    get_global $P616, "$?CLASS"
    setattribute $P615, $P616, "$!compiler_progname", $P614
  if_611_end:
.annotate 'line', 271
    find_lex $P617, "self"
    get_global $P618, "$?CLASS"
    getattribute $P619, $P617, $P618, "$!compiler_progname"
    unless_null $P619, vivify_135
    new $P619, "Undef"
  vivify_135:
.annotate 'line', 270
    .return ($P619)
.end


.namespace ["HLL";"Compiler"]
.sub "commandline_options"  :subid("48_1295995585.312") :outer("12_1295995585.312")
    .param pmc param_621
    .param pmc param_622 :optional
    .param int has_param_622 :opt_flag
.annotate 'line', 277
    .lex "self", param_621
    if has_param_622, optparam_136
    $P623 = root_new ['parrot';'ResizablePMCArray']
    set param_622, $P623
  optparam_136:
    .lex "@value", param_622
.annotate 'line', 278
    find_lex $P625, "@value"
    set $N626, $P625
    unless $N626, if_624_end
.annotate 'line', 279
    find_lex $P627, "@value"
    find_lex $P628, "self"
    get_global $P629, "$?CLASS"
    setattribute $P628, $P629, "@!cmdoptions", $P627
  if_624_end:
.annotate 'line', 278
    find_lex $P630, "self"
    get_global $P631, "$?CLASS"
    getattribute $P632, $P630, $P631, "@!cmdoptions"
    unless_null $P632, vivify_137
    $P632 = root_new ['parrot';'ResizablePMCArray']
  vivify_137:
.annotate 'line', 277
    .return ($P632)
.end


.namespace ["HLL";"Compiler"]
.sub "command_line"  :subid("49_1295995585.312") :outer("12_1295995585.312")
    .param pmc param_634
    .param pmc param_635
    .param pmc param_636 :slurpy :named
.annotate 'line', 284
    .lex "self", param_634
    .lex "@args", param_635
    .lex "%adverbs", param_636
.annotate 'line', 285

            .include 'except_severity.pasm'
            .local pmc args, adverbs, self
            args = find_lex '@args'
            adverbs = find_lex '%adverbs'
            self = find_lex 'self'

            ## this bizarre piece of code causes the compiler to
            ## immediately abort if it looks like it's being run
            ## from Perl's Test::Harness.  (Test::Harness versions 2.64
            ## and earlier have a hardwired commandline option that is
            ## always passed to an initial run of the interpreter binary,
            ## whether you want it or not.)  We expect to remove this
            ## check eventually (or make it a lot smarter than it is here).
            $S0 = args[2]
            $I0 = index $S0, '@INC'
            if $I0 < 0 goto not_harness
            exit 0
          not_harness:

            load_bytecode 'dumper.pbc'
            load_bytecode 'PGE/Dumper.pbc'

            ##  get the name of the program
            .local string arg0
            arg0 = args[0]

            ##   perform option processing of command-line args
            .local pmc opts
            opts = self.'process_args'(args)

            ##   merge command-line args with defaults passed in from caller
            .local pmc it
            it = iter opts
          mergeopts_loop:
            unless it goto mergeopts_end
            $S0 = shift it
            $P0 = opts[$S0]
            adverbs[$S0] = $P0
            goto mergeopts_loop
          mergeopts_end:

            $I0 = adverbs['help']
            if $I0 goto usage

            $I0 = adverbs['version']
            if $I0 goto version

            .local int can_backtrace, ll_backtrace
            can_backtrace = can self, 'backtrace'
            unless can_backtrace goto no_push_eh
            ll_backtrace = adverbs['ll-backtrace']
            if ll_backtrace goto no_push_eh
            push_eh uncaught_exception
          no_push_eh:

            $S0 = adverbs['e']
            $I0 = exists adverbs['e']
            if $I0 goto eval_line
            .local pmc result
            result = box ''
            unless args goto interactive
            $I0 = adverbs['combine']
            if $I0 goto combine
            $S0 = args[0]
            result = self.'evalfiles'($S0, args :flat, adverbs :flat :named)
            goto save_output
          combine:
            result = self.'evalfiles'(args, adverbs :flat :named)
            goto save_output
          interactive:
            self.'interactive'(args :flat, adverbs :flat :named)
            goto save_output
          eval_line:
            result = self.'eval'($S0, '-e', args :flat, adverbs :flat :named)

          save_output:
            unless can_backtrace goto no_pop_eh
            pop_eh
          no_pop_eh:
            if null result goto end
            $I0 = defined result
            unless $I0 goto end
            .local string target
            target = adverbs['target']
            target = downcase target
            if target != 'pir' goto end
            .local string output
            .local pmc ofh
            $P0 = getinterp
            ofh = $P0.'stdout_handle'()
            output = adverbs['output']
            if output == '' goto save_output_1
            if output == '-' goto save_output_1
            ofh = new ['FileHandle']
            ofh.'open'(output, 'w')
            unless ofh goto err_output
          save_output_1:
            print ofh, result
            ofh.'close'()
          end:
            .return ()

          err_output:
            .tailcall self.'panic'('Error: file cannot be written: ', output)
          usage:
            self.'usage'(arg0)
            goto end
          version:
            self.'version'()
            goto end

            # If we get an uncaught exception in the program and the HLL provides
            # a backtrace method, we end up here. We pass it the exception object
            # so it can render a backtrace, unless the severity is exit or warning
            # in which case it needs special handling.
          uncaught_exception:
            .get_results ($P0)
            pop_eh
            $P1 = getinterp
            $P1 = $P1.'stderr_handle'()
            $I0 = $P0['severity']
            if $I0 == .EXCEPT_EXIT goto do_exit
            $S0 = self.'backtrace'($P0)
            print $P1, $S0
            if $I0 <= .EXCEPT_WARNING goto do_warning
            exit 1
          do_exit:
            $I0 = $P0['exit_code']
            exit $I0
          do_warning:
            $P0 = $P0["resume"]
            push_eh uncaught_exception # Otherwise we get errors about no handler to delete
            $P0()
        
.annotate 'line', 284
    .return ()
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "process_args"  :subid("50_1295995585.312") :outer("12_1295995585.312")
    .param pmc param_638
    .param pmc param_639
.annotate 'line', 422
    .const 'Sub' $P653 = "51_1295995585.312" 
    capture_lex $P653
    .lex "self", param_638
    .lex "@args", param_639
.annotate 'line', 428
    new $P640, "Undef"
    .lex "$getopts", $P640
.annotate 'line', 424
    find_lex $P641, "self"
    find_lex $P642, "@args"
    $P643 = $P642."shift"()
    $P641."compiler_progname"($P643)
.annotate 'line', 427
    load_bytecode "Getopt/Obj.pbc"
.annotate 'line', 428
 $P644 = new ['Getopt';'Obj'] 
    store_lex "$getopts", $P644
.annotate 'line', 429
    find_lex $P645, "$getopts"
    $P645."notOptStop"(1)
.annotate 'line', 430
    find_lex $P647, "self"
    get_global $P648, "$?CLASS"
    getattribute $P649, $P647, $P648, "@!cmdoptions"
    unless_null $P649, vivify_138
    $P649 = root_new ['parrot';'ResizablePMCArray']
  vivify_138:
    defined $I650, $P649
    unless $I650, for_undef_139
    iter $P646, $P649
    new $P659, 'ExceptionHandler'
    set_addr $P659, loop658_handler
    $P659."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P659
  loop658_test:
    unless $P646, loop658_done
    shift $P651, $P646
  loop658_redo:
    .const 'Sub' $P653 = "51_1295995585.312" 
    capture_lex $P653
    $P653($P651)
  loop658_next:
    goto loop658_test
  loop658_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P660, exception, 'type'
    eq $P660, .CONTROL_LOOP_NEXT, loop658_next
    eq $P660, .CONTROL_LOOP_REDO, loop658_redo
  loop658_done:
    pop_eh 
  for_undef_139:
.annotate 'line', 433
    find_lex $P661, "$getopts"
    find_lex $P662, "@args"
    $P663 = $P661."get_options"($P662)
.annotate 'line', 422
    .return ($P663)
.end


.namespace ["HLL";"Compiler"]
.sub "_block652"  :anon :subid("51_1295995585.312") :outer("50_1295995585.312")
    .param pmc param_654
.annotate 'line', 430
    .lex "$_", param_654
.annotate 'line', 431
    find_lex $P655, "$getopts"
    find_lex $P656, "$_"
    set $S657, $P656
    push $P655, $S657
.annotate 'line', 430
    .return ()
.end


.namespace ["HLL";"Compiler"]
.sub "evalfiles"  :subid("52_1295995585.312") :outer("12_1295995585.312")
    .param pmc param_665
    .param pmc param_666
    .param pmc param_667 :slurpy
    .param pmc param_668 :slurpy :named
.annotate 'line', 436
    .lex "self", param_665
    .lex "@files", param_666
    .lex "@args", param_667
    .lex "%adverbs", param_668
.annotate 'line', 437

            .local pmc files, args, adverbs, self
            files = find_lex '@files'
            args = find_lex '@args'
            adverbs = find_lex '%adverbs'
            self = find_lex 'self'

            unless null adverbs goto have_adverbs
            adverbs = new 'Hash'
          have_adverbs:
            .local string target
            target = adverbs['target']
            target = downcase target
            .local string encoding
            encoding = adverbs['encoding']
            $I0 = does files, 'array'
            if $I0 goto have_files_array
            $P0 = new 'ResizablePMCArray'
            push $P0, files
            files = $P0
          have_files_array:
            .local string code
            code = ''
            .local pmc it
            it = iter files
          iter_loop:
            unless it goto iter_end
            .local string iname
            .local pmc ifh
            iname = shift it
            ifh = new 'FileHandle'
            unless encoding == 'utf8' goto iter_loop_1
            ifh.'encoding'(encoding)
          iter_loop_1:
            $S0 = ifh.'readall'(iname)
            code = concat code, $S0
            ifh.'close'()
            goto iter_loop
          iter_end:
            $S0 = join ' ', files
            $P1 = box $S0
            .lex '$?FILES', $P1
            $P0 = self.'eval'(code, args :flat, adverbs :flat :named)
            if target == '' goto end
            if target == 'pir' goto end
            self.'dumper'($P0, target, adverbs :flat :named)
          end:
            .return ($P0)

          err_infile:
            .tailcall self.'panic'('Error: file cannot be read: ', iname)
        
.annotate 'line', 436
    .return ()
.end


.namespace ["HLL";"Compiler"]
.sub "compile"  :subid("53_1295995585.312") :outer("12_1295995585.312")
    .param pmc param_670
    .param pmc param_671
    .param pmc param_672 :slurpy :named
.annotate 'line', 491
    .lex "self", param_670
    .lex "$source", param_671
    .lex "%adverbs", param_672
.annotate 'line', 492

            .local pmc source, adverbs, self
            source = find_lex '$source'
            adverbs = find_lex '%adverbs'
            self = find_lex 'self'

            .local pmc compiling, options
            compiling = new ['Hash']
            .lex '%*COMPILING', compiling
            compiling['%?OPTIONS'] = adverbs

            .local string target
            target = adverbs['target']
            target = downcase target

            .local int stagestats
            stagestats = adverbs['stagestats']

            .local pmc stages, result, it
            result = source
            stages = self.'stages'()
            it = iter stages
            if stagestats goto stagestats_loop

          iter_loop:
            unless it goto have_result
            .local string stagename
            stagename = shift it
            result = self.stagename(result, adverbs :flat :named)
            if target == stagename goto have_result
            goto iter_loop

          stagestats_loop:
            unless it goto have_result
            stagename = shift it
            $N0 = time
            result = self.stagename(result, adverbs :flat :named)
            $N1 = time
            $N2 = $N1 - $N0
            $P0 = getinterp
            $P1 = $P0.'stderr_handle'()
            $P1.'print'("Stage '")
            $P1.'print'(stagename)
            $P1.'print'("': ")
            $P2 = new ['ResizablePMCArray']
            push $P2, $N2
            $S0 = sprintf "%.3f", $P2
            $P1.'print'($S0)
            $P1.'print'(" sec\n")
            if target == stagename goto have_result
            goto stagestats_loop

          have_result:
            .return (result)
        
.annotate 'line', 491
    .return ()
.end


.namespace ["HLL";"Compiler"]
.sub "parse"  :subid("54_1295995585.312") :outer("12_1295995585.312")
    .param pmc param_674
    .param pmc param_675
    .param pmc param_676 :slurpy :named
.annotate 'line', 549
    .lex "self", param_674
    .lex "$source", param_675
    .lex "%adverbs", param_676
.annotate 'line', 550

            .local pmc source, options, self
            source = find_lex '$source'
            options = find_lex '%adverbs'
            self = find_lex 'self'

            .local string tcode
            tcode = options['transcode']
            unless tcode goto transcode_done
            .local pmc tcode_it
            $P0 = split ' ', tcode
            tcode_it = iter $P0
          tcode_loop:
            unless tcode_it goto transcode_done
            tcode = shift tcode_it
            push_eh tcode_fail
            $I0 = find_encoding tcode
            $S0 = source
            $S0 = trans_encoding $S0, $I0
            assign source, $S0
            pop_eh
            goto transcode_done
          tcode_fail:
            pop_eh
            goto tcode_loop
          transcode_done:

            .local pmc parsegrammar, parseactions, match
            parsegrammar = self.'parsegrammar'()

            null parseactions
            $S0 = options['target']
            if $S0 == 'parse' goto have_parseactions
            parseactions = self.'parseactions'()
          have_parseactions:

            .local int rxtrace
            rxtrace = options['parsetrace']
            match = parsegrammar.'parse'(source, 'p'=>0, 'actions'=>parseactions, 'rxtrace'=>rxtrace)
            unless match goto err_parsefail
            .return (match)

          err_parsefail:
            self.'panic'('Unable to parse source')
            .return (match)
        
.annotate 'line', 549
    .return ()
.end


.namespace ["HLL";"Compiler"]
.sub "past"  :subid("55_1295995585.312") :outer("12_1295995585.312")
    .param pmc param_678
    .param pmc param_679
    .param pmc param_680 :slurpy :named
.annotate 'line', 598
    .lex "self", param_678
    .lex "$source", param_679
    .lex "%adverbs", param_680
.annotate 'line', 599

            .local pmc source, adverbs, self
            source = find_lex '$source'
            adverbs = find_lex '%adverbs'
            self = find_lex 'self'

          compile_astgrammar:
            .local pmc astgrammar_name
            astgrammar_name = self.'astgrammar'()
            $S0 = typeof astgrammar_name
            eq $S0, 'NameSpace', astgrammar_ns
            unless astgrammar_name goto compile_match

            .local pmc astgrammar_namelist
            .local pmc astgrammar, astbuilder
            astgrammar_namelist = self.'parse_name'(astgrammar_name)
            unless astgrammar_namelist goto err_past
            astgrammar = new astgrammar_namelist
            astbuilder = astgrammar.'apply'(source)
            .tailcall astbuilder.'get'('past')
          astgrammar_ns:
            $P0 = get_class astgrammar_name
            astgrammar = new $P0
            astbuilder = astgrammar.'apply'(source)
            .tailcall astbuilder.'get'('past')

          compile_match:
            .local pmc ast
            ast = source.'ast'()
            $I0 = isa ast, ['PAST';'Node']
            unless $I0 goto err_past
            .return (ast)

          err_past:
            $S0 = typeof source
            .tailcall self.'panic'('Unable to obtain PAST from ', $S0)
        
.annotate 'line', 598
    .return ()
.end


.namespace ["HLL";"Compiler"]
.sub "post"  :subid("56_1295995585.312") :outer("12_1295995585.312")
    .param pmc param_682
    .param pmc param_683
    .param pmc param_684 :slurpy :named
.annotate 'line', 638
    .lex "self", param_682
    .lex "$source", param_683
    .lex "%adverbs", param_684
.annotate 'line', 639
    compreg $P685, "PAST"
    find_lex $P686, "$source"
    find_lex $P687, "%adverbs"
    $P688 = $P685."to_post"($P686, $P687 :flat)
.annotate 'line', 638
    .return ($P688)
.end


.namespace ["HLL";"Compiler"]
.sub "pir"  :subid("57_1295995585.312") :outer("12_1295995585.312")
    .param pmc param_690
    .param pmc param_691
    .param pmc param_692 :slurpy :named
.annotate 'line', 642
    .lex "self", param_690
    .lex "$source", param_691
    .lex "%adverbs", param_692
.annotate 'line', 643
    compreg $P693, "POST"
    find_lex $P694, "$source"
    find_lex $P695, "%adverbs"
    $P696 = $P693."to_pir"($P694, $P695 :flat)
.annotate 'line', 642
    .return ($P696)
.end


.namespace ["HLL";"Compiler"]
.sub "evalpmc"  :subid("58_1295995585.312") :outer("12_1295995585.312")
    .param pmc param_698
    .param pmc param_699
    .param pmc param_700 :slurpy :named
.annotate 'line', 646
    .lex "self", param_698
    .lex "$source", param_699
    .lex "%adverbs", param_700
.annotate 'line', 647
    new $P701, "Undef"
    .lex "$compiler", $P701
    compreg $P702, "PIR"
    store_lex "$compiler", $P702
.annotate 'line', 648
    find_lex $P703, "$compiler"
    find_lex $P704, "$source"
    $P705 = $P703($P704)
.annotate 'line', 646
    .return ($P705)
.end


.namespace ["HLL";"Compiler"]
.sub "dumper"  :subid("59_1295995585.312") :outer("12_1295995585.312")
    .param pmc param_707
    .param pmc param_708
    .param pmc param_709
    .param pmc param_710 :slurpy :named
.annotate 'line', 651
    .const 'Sub' $P716 = "60_1295995585.312" 
    capture_lex $P716
    .lex "self", param_707
    .lex "$obj", param_708
    .lex "$name", param_709
    .lex "%options", param_710
.annotate 'line', 652
    find_lex $P713, "%options"
    unless_null $P713, vivify_140
    $P713 = root_new ['parrot';'Hash']
  vivify_140:
    set $P714, $P713["dumper"]
    unless_null $P714, vivify_141
    new $P714, "Undef"
  vivify_141:
    if $P714, if_712
.annotate 'line', 658
    find_lex $P729, "$obj"
    find_lex $P730, "$name"
    $P731 = "_dumper"($P729, $P730)
.annotate 'line', 657
    set $P711, $P731
.annotate 'line', 652
    goto if_712_end
  if_712:
    .const 'Sub' $P716 = "60_1295995585.312" 
    capture_lex $P716
    $P728 = $P716()
    set $P711, $P728
  if_712_end:
.annotate 'line', 651
    .return ($P711)
.end


.namespace ["HLL";"Compiler"]
.sub "_block715"  :anon :subid("60_1295995585.312") :outer("59_1295995585.312")
.annotate 'line', 654
    new $P717, "Undef"
    .lex "$dumper", $P717
.annotate 'line', 653
    load_bytecode "PCT/Dumper.pbc"
.annotate 'line', 654
    find_lex $P718, "%options"
    unless_null $P718, vivify_142
    $P718 = root_new ['parrot';'Hash']
  vivify_142:
    set $P719, $P718["dumper"]
    unless_null $P719, vivify_143
    new $P719, "Undef"
  vivify_143:
    set $S720, $P719
    downcase $S721, $S720
    get_hll_global $P722, ["PCT"], "Dumper"
    unless_null $P722, vivify_144
    $P722 = root_new ['parrot';'Hash']
  vivify_144:
    set $P723, $P722[$S721]
    unless_null $P723, vivify_145
    new $P723, "Undef"
  vivify_145:
    store_lex "$dumper", $P723
.annotate 'line', 655
    find_lex $P724, "$dumper"
    find_lex $P725, "$obj"
    find_lex $P726, "$name"
    $P727 = $P724($P725, $P726)
.annotate 'line', 652
    .return ($P727)
.end


.namespace ["HLL";"Compiler"]
.sub "usage"  :subid("61_1295995585.312") :outer("12_1295995585.312")
    .param pmc param_733
    .param pmc param_734 :optional
    .param int has_param_734 :opt_flag
.annotate 'line', 662
    .lex "self", param_733
    if has_param_734, optparam_146
    new $P735, "Undef"
    set param_734, $P735
  optparam_146:
    .lex "$name", param_734
.annotate 'line', 663
    find_lex $P737, "$name"
    unless $P737, if_736_end
.annotate 'line', 664
    find_lex $P738, "$name"
    "say"($P738)
  if_736_end:
.annotate 'line', 666
    find_lex $P739, "self"
    get_global $P740, "$?CLASS"
    getattribute $P741, $P739, $P740, "$!usage"
    unless_null $P741, vivify_147
    new $P741, "Undef"
  vivify_147:
    say $P741
.annotate 'line', 667
    exit 0
.annotate 'line', 662
    .return ()
.end


.namespace ["HLL";"Compiler"]
.sub "version"  :subid("62_1295995585.312") :outer("12_1295995585.312")
    .param pmc param_743
.annotate 'line', 670
    .lex "self", param_743
.annotate 'line', 671
    find_lex $P744, "self"
    get_global $P745, "$?CLASS"
    getattribute $P746, $P744, $P745, "$!version"
    unless_null $P746, vivify_148
    new $P746, "Undef"
  vivify_148:
    say $P746
.annotate 'line', 672
    exit 0
.annotate 'line', 670
    .return ()
.end


.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "removestage"  :subid("63_1295995585.312") :outer("12_1295995585.312")
    .param pmc param_748
    .param pmc param_749
.annotate 'line', 675
    .const 'Sub' $P759 = "64_1295995585.312" 
    capture_lex $P759
    .lex "self", param_748
    .lex "$stagename", param_749
.annotate 'line', 676
    $P750 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new_stages", $P750
    new $P751, "ResizableStringArray"
    store_lex "@new_stages", $P751
.annotate 'line', 677
    find_lex $P753, "self"
    get_global $P754, "$?CLASS"
    getattribute $P755, $P753, $P754, "@!stages"
    unless_null $P755, vivify_149
    $P755 = root_new ['parrot';'ResizablePMCArray']
  vivify_149:
    defined $I756, $P755
    unless $I756, for_undef_150
    iter $P752, $P755
    new $P772, 'ExceptionHandler'
    set_addr $P772, loop771_handler
    $P772."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P772
  loop771_test:
    unless $P752, loop771_done
    shift $P757, $P752
  loop771_redo:
    .const 'Sub' $P759 = "64_1295995585.312" 
    capture_lex $P759
    $P759($P757)
  loop771_next:
    goto loop771_test
  loop771_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P773, exception, 'type'
    eq $P773, .CONTROL_LOOP_NEXT, loop771_next
    eq $P773, .CONTROL_LOOP_REDO, loop771_redo
  loop771_done:
    pop_eh 
  for_undef_150:
.annotate 'line', 682
    find_lex $P774, "@new_stages"
    find_lex $P775, "self"
    get_global $P776, "$?CLASS"
    setattribute $P775, $P776, "@!stages", $P774
.annotate 'line', 675
    .return ($P774)
.end


.namespace ["HLL";"Compiler"]
.sub "_block758"  :anon :subid("64_1295995585.312") :outer("63_1295995585.312")
    .param pmc param_760
.annotate 'line', 677
    .lex "$_", param_760
.annotate 'line', 678
    find_lex $P763, "$_"
    set $S764, $P763
    find_lex $P765, "$stagename"
    set $S766, $P765
    isne $I767, $S764, $S766
    if $I767, if_762
    new $P761, 'Integer'
    set $P761, $I767
    goto if_762_end
  if_762:
.annotate 'line', 679
    find_lex $P768, "@new_stages"
    find_lex $P769, "$_"
    $P770 = $P768."push"($P769)
.annotate 'line', 678
    set $P761, $P770
  if_762_end:
.annotate 'line', 677
    .return ($P761)
.end


.namespace ["HLL";"Compiler"]
.sub "addstage"  :subid("65_1295995585.312") :outer("12_1295995585.312")
    .param pmc param_778
    .param pmc param_779
    .param pmc param_780 :slurpy :named
.annotate 'line', 685
    .lex "self", param_778
    .lex "$stagename", param_779
    .lex "%adverbs", param_780
.annotate 'line', 686

            .local string stagename
            .local pmc adverbs, self
            $P0 = find_lex '$stagename'
            stagename = $P0
            adverbs = find_lex '%adverbs'
            self = find_lex 'self'

            .local string position, target
            .local pmc stages
            stages = self.'stages'()

            $I0 = exists adverbs['before']
            unless $I0 goto next_test
              position = 'before'
              target = adverbs['before']
            goto positional_insert

          next_test:
            $I0 = exists adverbs['after']
            unless $I0 goto simple_insert
              position = 'after'
              target = adverbs['after']

          positional_insert:
            .local pmc it, newstages
            newstages = new 'ResizableStringArray'

            it = iter stages
          iter_loop:
            unless it goto iter_end
            .local pmc current
            current = shift it
            unless current == target goto no_insert_before
              unless position == 'before' goto no_insert_before
                push newstages, stagename
            no_insert_before:

            push newstages, current

            unless current == target goto no_insert_after
              unless position == 'after' goto no_insert_after
                push newstages, stagename
            no_insert_after:

            goto iter_loop
          iter_end:
            self.'stages'(newstages)
            goto done

          simple_insert:
            push stages, stagename
          done:
        
.annotate 'line', 685
    .return ()
.end


.namespace ["HLL";"Compiler"]
.sub "parse_name"  :subid("66_1295995585.312") :outer("12_1295995585.312")
    .param pmc param_782
    .param pmc param_783
.annotate 'line', 742
    .lex "self", param_782
    .lex "$name", param_783
.annotate 'line', 743

            .local string name
            $P0 = find_lex '$name'
            name = $P0

            # split name on ::
            .local pmc ns
            ns = split '::', name

            # move any leading sigil to the last item
            .local string sigil
            $S0 = ns[0]
            sigil = substr $S0, 0, 1
            $I0 = index '$@%&', sigil
            if $I0 < 0 goto sigil_done
            $S0 = replace $S0, 0, 1, ''
            ns[0] = $S0
            $S0 = ns[-1]
            $S0 = concat sigil, $S0
            ns[-1] = $S0
          sigil_done:

            # remove any empty items from the list
            .local pmc ns_it
            ns_it = iter ns
            ns = new ['ResizablePMCArray']
          ns_loop:
            unless ns_it goto ns_done
            $S0 = shift ns_it
            unless $S0 > '' goto ns_loop
            push ns, $S0
            goto ns_loop
          ns_done:

            # return the result
            .return (ns)
        
.annotate 'line', 742
    .return ()
.end


.namespace ["HLL";"Compiler"]
.sub "lineof"  :subid("67_1295995585.312") :outer("12_1295995585.312")
    .param pmc param_785
    .param pmc param_786
    .param pmc param_787
    .param pmc param_788 :optional :named("cache")
    .param int has_param_788 :opt_flag
.annotate 'line', 782
    .lex "self", param_785
    .lex "$target", param_786
    .lex "$pos", param_787
    if has_param_788, optparam_151
    new $P789, "Undef"
    set param_788, $P789
  optparam_151:
    .lex "$cache", param_788
.annotate 'line', 783

            .local pmc target, linepos
            .local int pos, cache
            target = find_lex '$target'
            $P0 = find_lex '$pos'
            pos = $P0
            $P0 = find_lex '$cache'
            cache = $P0

            .include 'cclass.pasm'

            # If we've previously cached C<linepos> for target, we use it.
            unless cache goto linepos_build
            linepos = getprop '!linepos', target
            unless null linepos goto linepos_done

            # calculate a new linepos array.
          linepos_build:
            linepos = new ['ResizableIntegerArray']
            unless cache goto linepos_build_1
            setprop target, '!linepos', linepos
          linepos_build_1:
            .local string s
            .local int jpos, eos
            s = target
            eos = length s
            jpos = 0
            # Search for all of the newline markers in C<target>.  When we
            # find one, mark the ending offset of the line in C<linepos>.
          linepos_loop:
            jpos = find_cclass .CCLASS_NEWLINE, s, jpos, eos
            unless jpos < eos goto linepos_done
            $I0 = ord s, jpos
            inc jpos
            push linepos, jpos
            # Treat \r\n as a single logical newline.
            if $I0 != 13 goto linepos_loop
            $I0 = ord s, jpos
            if $I0 != 10 goto linepos_loop
            inc jpos
            goto linepos_loop
          linepos_done:

            # We have C<linepos>, so now we search the array for the largest
            # element that is not greater than C<pos>.  The index of that
            # element is the line number to be returned.
            # (Potential optimization: use a binary search.)
            .local int line, count
            count = elements linepos
            line = 0
          line_loop:
            if line >= count goto line_done
            $I0 = linepos[line]
            if $I0 > pos goto line_done
            inc line
            goto line_loop
          line_done:
            .return (line)
        
.annotate 'line', 782
    .return ()
.end


.namespace []
.sub "_block903" :load :anon :subid("69_1295995585.312")
.annotate 'line', 1
    .const 'Sub' $P905 = "10_1295995585.312" 
    $P906 = $P905()
    .return ($P906)
.end


.sub '' :anon :load :init
    $P0 = get_hll_global ['HLL'], 'Compiler'
    $P0 = $P0.'new'()
    $P0.'language'('parrot')
.end

=back

=head1 AUTHOR

Patrick Michaud <pmichaud@pobox.com> is the author and maintainer.

=head1 COPYRIGHT

Copyright (C) 2009, The Perl Foundation.

=cut

# Local Variables:
#   mode: pir
#   fill-column: 100
# End:
# vim: expandtab shiftwidth=4 ft=pir:
