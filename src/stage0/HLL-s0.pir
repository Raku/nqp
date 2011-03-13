# $Id$

=head1 NAME

HLL - Parrot HLL library

=head1 DESCRIPTION

This file brings together the various modules needed for HLL::Compiler
and HLL::Grammar.

=over 4

=cut

.HLL 'nqp'
.loadlib "nqp_group"
.loadlib "nqp_ops"

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
# This adds to a Parrot PMC, so need to switch to that HLL for this
# file.
.HLL 'parrot'
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
.HLL 'nqp'
### .include 'gen/hllgrammar-grammar.pir'

.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1300051150.535")
.annotate 'line', 0
    get_hll_global $P17, ["HLL";"Grammar"], "_block16" 
    capture_lex $P17
.annotate 'line', 1
    getinterp $P13
    get_class $P14, "LexPad"
    get_class $P15, "NQPLexPad"
    $P13."hll_map"($P14, $P15)
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 3
    get_hll_global $P17, ["HLL";"Grammar"], "_block16" 
    capture_lex $P17
    $P683 = $P17()
.annotate 'line', 1
    .return ($P683)
    .const 'Sub' $P685 = "121_1300051150.535" 
    .return ($P685)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post122") :outer("10_1300051150.535")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1300051150.535" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P689, "1300051148.109"
    isnull $I690, $P689
    if $I690, if_688
    nqp_get_sc_object $P697, "1300051148.109", 0
    set_hll_global ["HLL"], "Grammar", $P697
    goto if_688_end
  if_688:
    nqp_dynop_setup 
    load_bytecode "nqpmo.pbc"
    nqp_create_sc $P691, "1300051148.109"
    .local pmc cur_sc
    set cur_sc, $P691
    load_bytecode "SettingManager.pbc"
    get_hll_global $P692, ["HLL"], "SettingManager"
    $P693 = $P692."load_setting"("NQPCORE")
    block."set_outer_ctx"($P693)
    get_hll_global $P694, "NQPClassHOW"
    $P695 = $P694."new_type"("HLL::Grammar" :named("name"))
    nqp_set_sc_for_object $P695, cur_sc
    nqp_set_sc_object "1300051148.109", 0, $P695
    nqp_get_sc_object $P696, "1300051148.109", 0
    set_hll_global ["HLL"], "Grammar", $P696
  if_688_end:
.end


.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace ["HLL";"Grammar"]
.sub "_block16"  :subid("11_1300051150.535") :outer("10_1300051150.535")
.annotate 'line', 3
    .const 'Sub' $P471 = "120_1300051150.535" 
    capture_lex $P471
    .const 'Sub' $P438 = "118_1300051150.535" 
    capture_lex $P438
    .const 'Sub' $P433 = "117_1300051150.535" 
    capture_lex $P433
    .const 'Sub' $P418 = "116_1300051150.535" 
    capture_lex $P418
    .const 'Sub' $P408 = "115_1300051150.535" 
    capture_lex $P408
    .const 'Sub' $P404 = "114_1300051150.535" 
    capture_lex $P404
    .const 'Sub' $P400 = "113_1300051150.535" 
    capture_lex $P400
    .const 'Sub' $P397 = "112_1300051150.535" 
    capture_lex $P397
    .const 'Sub' $P395 = "111_1300051150.535" 
    capture_lex $P395
    .const 'Sub' $P393 = "110_1300051150.535" 
    capture_lex $P393
    .const 'Sub' $P387 = "109_1300051150.535" 
    capture_lex $P387
    .const 'Sub' $P384 = "108_1300051150.535" 
    capture_lex $P384
    .const 'Sub' $P380 = "107_1300051150.535" 
    capture_lex $P380
    .const 'Sub' $P352 = "106_1300051150.535" 
    capture_lex $P352
    .const 'Sub' $P347 = "105_1300051150.535" 
    capture_lex $P347
    .const 'Sub' $P338 = "103_1300051150.535" 
    capture_lex $P338
    .const 'Sub' $P332 = "101_1300051150.535" 
    capture_lex $P332
    .const 'Sub' $P319 = "98_1300051150.535" 
    capture_lex $P319
    .const 'Sub' $P287 = "93_1300051150.535" 
    capture_lex $P287
    .const 'Sub' $P281 = "91_1300051150.535" 
    capture_lex $P281
    .const 'Sub' $P276 = "89_1300051150.535" 
    capture_lex $P276
    .const 'Sub' $P270 = "87_1300051150.535" 
    capture_lex $P270
    .const 'Sub' $P264 = "85_1300051150.535" 
    capture_lex $P264
    .const 'Sub' $P259 = "83_1300051150.535" 
    capture_lex $P259
    .const 'Sub' $P254 = "81_1300051150.535" 
    capture_lex $P254
    .const 'Sub' $P249 = "79_1300051150.535" 
    capture_lex $P249
    .const 'Sub' $P244 = "77_1300051150.535" 
    capture_lex $P244
    .const 'Sub' $P239 = "75_1300051150.535" 
    capture_lex $P239
    .const 'Sub' $P234 = "73_1300051150.535" 
    capture_lex $P234
    .const 'Sub' $P229 = "71_1300051150.535" 
    capture_lex $P229
    .const 'Sub' $P224 = "69_1300051150.535" 
    capture_lex $P224
    .const 'Sub' $P212 = "65_1300051150.535" 
    capture_lex $P212
    .const 'Sub' $P199 = "63_1300051150.535" 
    capture_lex $P199
    .const 'Sub' $P187 = "61_1300051150.535" 
    capture_lex $P187
    .const 'Sub' $P181 = "59_1300051150.535" 
    capture_lex $P181
    .const 'Sub' $P174 = "57_1300051150.535" 
    capture_lex $P174
    .const 'Sub' $P168 = "55_1300051150.535" 
    capture_lex $P168
    .const 'Sub' $P161 = "53_1300051150.535" 
    capture_lex $P161
    .const 'Sub' $P155 = "51_1300051150.535" 
    capture_lex $P155
    .const 'Sub' $P148 = "49_1300051150.535" 
    capture_lex $P148
    .const 'Sub' $P142 = "47_1300051150.535" 
    capture_lex $P142
    .const 'Sub' $P136 = "45_1300051150.535" 
    capture_lex $P136
    .const 'Sub' $P127 = "43_1300051150.535" 
    capture_lex $P127
    .const 'Sub' $P119 = "41_1300051150.535" 
    capture_lex $P119
    .const 'Sub' $P111 = "40_1300051150.535" 
    capture_lex $P111
    .const 'Sub' $P105 = "38_1300051150.535" 
    capture_lex $P105
    .const 'Sub' $P100 = "36_1300051150.535" 
    capture_lex $P100
    .const 'Sub' $P92 = "34_1300051150.535" 
    capture_lex $P92
    .const 'Sub' $P86 = "32_1300051150.535" 
    capture_lex $P86
    .const 'Sub' $P80 = "30_1300051150.535" 
    capture_lex $P80
    .const 'Sub' $P74 = "28_1300051150.535" 
    capture_lex $P74
    .const 'Sub' $P29 = "14_1300051150.535" 
    capture_lex $P29
    .const 'Sub' $P22 = "12_1300051150.535" 
    capture_lex $P22
    get_global $P18, "$?CLASS"
    getinterp $P19
    get_class $P20, "LexPad"
    get_class $P21, "NQPLexPad"
    $P19."hll_map"($P20, $P21)
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 832
    .const 'Sub' $P438 = "118_1300051150.535" 
    newclosure $P457, $P438
.annotate 'line', 3
    .return ($P457)
    .const 'Sub' $P459 = "119_1300051150.535" 
    .return ($P459)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "" :load :init :subid("post123") :outer("11_1300051150.535")
.annotate 'line', 3
    get_hll_global $P17, ["HLL";"Grammar"], "_block16" 
    .local pmc block
    set block, $P17
    nqp_get_sc $P463, "1300051148.109"
    isnull $I464, $P463
    if $I464, if_462
    goto if_462_end
  if_462:
    nqp_dynop_setup 
    load_bytecode "nqpmo.pbc"
    nqp_create_sc $P465, "1300051148.109"
    .local pmc cur_sc
    set cur_sc, $P465
    load_bytecode "SettingManager.pbc"
    get_hll_global $P466, ["HLL"], "SettingManager"
    $P467 = $P466."load_setting"("NQPCORE")
    block."set_outer_ctx"($P467)
    get_hll_global $P468, "NQPClassHOW"
    $P469 = $P468."new_type"("HLL::Grammar" :named("name"))
    nqp_set_sc_for_object $P469, cur_sc
    nqp_set_sc_object "1300051148.109", 0, $P469
  if_462_end:
    .const 'Sub' $P471 = "120_1300051150.535" 
    capture_lex $P471
    $P471()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block470"  :anon :subid("120_1300051150.535") :outer("11_1300051150.535")
.annotate 'line', 3
    nqp_get_sc_object $P472, "1300051148.109", 0
    .local pmc type_obj
    set type_obj, $P472
    set_global "$?CLASS", type_obj
    get_how $P473, type_obj
    .const 'Sub' $P474 = "12_1300051150.535" 
    $P473."add_method"(type_obj, "ws", $P474)
    get_how $P475, type_obj
    get_global $P476, "!PREFIX__ws"
    $P475."add_method"(type_obj, "!PREFIX__ws", $P476)
    get_how $P477, type_obj
    .const 'Sub' $P478 = "14_1300051150.535" 
    $P477."add_method"(type_obj, "termish", $P478)
    get_how $P479, type_obj
    get_global $P480, "!PREFIX__termish"
    $P479."add_method"(type_obj, "!PREFIX__termish", $P480)
    get_how $P481, type_obj
    .const 'Sub' $P482 = "16_1300051150.535" 
    $P481."add_method"(type_obj, "term", $P482)
    get_how $P483, type_obj
    .const 'Sub' $P484 = "17_1300051150.535" 
    $P483."add_method"(type_obj, "!PREFIX__term", $P484)
    get_how $P485, type_obj
    .const 'Sub' $P486 = "18_1300051150.535" 
    $P485."add_method"(type_obj, "infix", $P486)
    get_how $P487, type_obj
    .const 'Sub' $P488 = "19_1300051150.535" 
    $P487."add_method"(type_obj, "!PREFIX__infix", $P488)
    get_how $P489, type_obj
    .const 'Sub' $P490 = "20_1300051150.535" 
    $P489."add_method"(type_obj, "prefix", $P490)
    get_how $P491, type_obj
    .const 'Sub' $P492 = "21_1300051150.535" 
    $P491."add_method"(type_obj, "!PREFIX__prefix", $P492)
    get_how $P493, type_obj
    .const 'Sub' $P494 = "22_1300051150.535" 
    $P493."add_method"(type_obj, "postfix", $P494)
    get_how $P495, type_obj
    .const 'Sub' $P496 = "23_1300051150.535" 
    $P495."add_method"(type_obj, "!PREFIX__postfix", $P496)
    get_how $P497, type_obj
    .const 'Sub' $P498 = "24_1300051150.535" 
    $P497."add_method"(type_obj, "circumfix", $P498)
    get_how $P499, type_obj
    .const 'Sub' $P500 = "25_1300051150.535" 
    $P499."add_method"(type_obj, "!PREFIX__circumfix", $P500)
    get_how $P501, type_obj
    .const 'Sub' $P502 = "26_1300051150.535" 
    $P501."add_method"(type_obj, "postcircumfix", $P502)
    get_how $P503, type_obj
    .const 'Sub' $P504 = "27_1300051150.535" 
    $P503."add_method"(type_obj, "!PREFIX__postcircumfix", $P504)
    get_how $P505, type_obj
    .const 'Sub' $P506 = "28_1300051150.535" 
    $P505."add_method"(type_obj, "term:sym<circumfix>", $P506)
    get_how $P507, type_obj
    get_global $P508, "!PREFIX__term:sym<circumfix>"
    $P507."add_method"(type_obj, "!PREFIX__term:sym<circumfix>", $P508)
    get_how $P509, type_obj
    .const 'Sub' $P510 = "30_1300051150.535" 
    $P509."add_method"(type_obj, "infixish", $P510)
    get_how $P511, type_obj
    get_global $P512, "!PREFIX__infixish"
    $P511."add_method"(type_obj, "!PREFIX__infixish", $P512)
    get_how $P513, type_obj
    .const 'Sub' $P514 = "32_1300051150.535" 
    $P513."add_method"(type_obj, "prefixish", $P514)
    get_how $P515, type_obj
    get_global $P516, "!PREFIX__prefixish"
    $P515."add_method"(type_obj, "!PREFIX__prefixish", $P516)
    get_how $P517, type_obj
    .const 'Sub' $P518 = "34_1300051150.535" 
    $P517."add_method"(type_obj, "postfixish", $P518)
    get_how $P519, type_obj
    get_global $P520, "!PREFIX__postfixish"
    $P519."add_method"(type_obj, "!PREFIX__postfixish", $P520)
    get_how $P521, type_obj
    .const 'Sub' $P522 = "36_1300051150.535" 
    $P521."add_method"(type_obj, "nullterm", $P522)
    get_how $P523, type_obj
    get_global $P524, "!PREFIX__nullterm"
    $P523."add_method"(type_obj, "!PREFIX__nullterm", $P524)
    get_how $P525, type_obj
    .const 'Sub' $P526 = "38_1300051150.535" 
    $P525."add_method"(type_obj, "nullterm_alt", $P526)
    get_how $P527, type_obj
    get_global $P528, "!PREFIX__nullterm_alt"
    $P527."add_method"(type_obj, "!PREFIX__nullterm_alt", $P528)
    get_how $P529, type_obj
    .const 'Sub' $P530 = "40_1300051150.535" 
    $P529."add_method"(type_obj, "nulltermish", $P530)
    get_how $P531, type_obj
    .const 'Sub' $P532 = "41_1300051150.535" 
    $P531."add_method"(type_obj, "quote_delimited", $P532)
    get_how $P533, type_obj
    get_global $P534, "!PREFIX__quote_delimited"
    $P533."add_method"(type_obj, "!PREFIX__quote_delimited", $P534)
    get_how $P535, type_obj
    .const 'Sub' $P536 = "43_1300051150.535" 
    $P535."add_method"(type_obj, "quote_atom", $P536)
    get_how $P537, type_obj
    get_global $P538, "!PREFIX__quote_atom"
    $P537."add_method"(type_obj, "!PREFIX__quote_atom", $P538)
    get_how $P539, type_obj
    .const 'Sub' $P540 = "45_1300051150.535" 
    $P539."add_method"(type_obj, "decint", $P540)
    get_how $P541, type_obj
    get_global $P542, "!PREFIX__decint"
    $P541."add_method"(type_obj, "!PREFIX__decint", $P542)
    get_how $P543, type_obj
    .const 'Sub' $P544 = "47_1300051150.535" 
    $P543."add_method"(type_obj, "decints", $P544)
    get_how $P545, type_obj
    get_global $P546, "!PREFIX__decints"
    $P545."add_method"(type_obj, "!PREFIX__decints", $P546)
    get_how $P547, type_obj
    .const 'Sub' $P548 = "49_1300051150.535" 
    $P547."add_method"(type_obj, "hexint", $P548)
    get_how $P549, type_obj
    get_global $P550, "!PREFIX__hexint"
    $P549."add_method"(type_obj, "!PREFIX__hexint", $P550)
    get_how $P551, type_obj
    .const 'Sub' $P552 = "51_1300051150.535" 
    $P551."add_method"(type_obj, "hexints", $P552)
    get_how $P553, type_obj
    get_global $P554, "!PREFIX__hexints"
    $P553."add_method"(type_obj, "!PREFIX__hexints", $P554)
    get_how $P555, type_obj
    .const 'Sub' $P556 = "53_1300051150.535" 
    $P555."add_method"(type_obj, "octint", $P556)
    get_how $P557, type_obj
    get_global $P558, "!PREFIX__octint"
    $P557."add_method"(type_obj, "!PREFIX__octint", $P558)
    get_how $P559, type_obj
    .const 'Sub' $P560 = "55_1300051150.535" 
    $P559."add_method"(type_obj, "octints", $P560)
    get_how $P561, type_obj
    get_global $P562, "!PREFIX__octints"
    $P561."add_method"(type_obj, "!PREFIX__octints", $P562)
    get_how $P563, type_obj
    .const 'Sub' $P564 = "57_1300051150.535" 
    $P563."add_method"(type_obj, "binint", $P564)
    get_how $P565, type_obj
    get_global $P566, "!PREFIX__binint"
    $P565."add_method"(type_obj, "!PREFIX__binint", $P566)
    get_how $P567, type_obj
    .const 'Sub' $P568 = "59_1300051150.535" 
    $P567."add_method"(type_obj, "binints", $P568)
    get_how $P569, type_obj
    get_global $P570, "!PREFIX__binints"
    $P569."add_method"(type_obj, "!PREFIX__binints", $P570)
    get_how $P571, type_obj
    .const 'Sub' $P572 = "61_1300051150.535" 
    $P571."add_method"(type_obj, "integer", $P572)
    get_how $P573, type_obj
    get_global $P574, "!PREFIX__integer"
    $P573."add_method"(type_obj, "!PREFIX__integer", $P574)
    get_how $P575, type_obj
    .const 'Sub' $P576 = "63_1300051150.535" 
    $P575."add_method"(type_obj, "dec_number", $P576)
    get_how $P577, type_obj
    get_global $P578, "!PREFIX__dec_number"
    $P577."add_method"(type_obj, "!PREFIX__dec_number", $P578)
    get_how $P579, type_obj
    .const 'Sub' $P580 = "65_1300051150.535" 
    $P579."add_method"(type_obj, "escale", $P580)
    get_how $P581, type_obj
    get_global $P582, "!PREFIX__escale"
    $P581."add_method"(type_obj, "!PREFIX__escale", $P582)
    get_how $P583, type_obj
    .const 'Sub' $P584 = "67_1300051150.535" 
    $P583."add_method"(type_obj, "quote_escape", $P584)
    get_how $P585, type_obj
    .const 'Sub' $P586 = "68_1300051150.535" 
    $P585."add_method"(type_obj, "!PREFIX__quote_escape", $P586)
    get_how $P587, type_obj
    .const 'Sub' $P588 = "69_1300051150.535" 
    $P587."add_method"(type_obj, "quote_escape:sym<backslash>", $P588)
    get_how $P589, type_obj
    get_global $P590, "!PREFIX__quote_escape:sym<backslash>"
    $P589."add_method"(type_obj, "!PREFIX__quote_escape:sym<backslash>", $P590)
    get_how $P591, type_obj
    .const 'Sub' $P592 = "71_1300051150.535" 
    $P591."add_method"(type_obj, "quote_escape:sym<stopper>", $P592)
    get_how $P593, type_obj
    get_global $P594, "!PREFIX__quote_escape:sym<stopper>"
    $P593."add_method"(type_obj, "!PREFIX__quote_escape:sym<stopper>", $P594)
    get_how $P595, type_obj
    .const 'Sub' $P596 = "73_1300051150.535" 
    $P595."add_method"(type_obj, "quote_escape:sym<bs>", $P596)
    get_how $P597, type_obj
    get_global $P598, "!PREFIX__quote_escape:sym<bs>"
    $P597."add_method"(type_obj, "!PREFIX__quote_escape:sym<bs>", $P598)
    get_how $P599, type_obj
    .const 'Sub' $P600 = "75_1300051150.535" 
    $P599."add_method"(type_obj, "quote_escape:sym<nl>", $P600)
    get_how $P601, type_obj
    get_global $P602, "!PREFIX__quote_escape:sym<nl>"
    $P601."add_method"(type_obj, "!PREFIX__quote_escape:sym<nl>", $P602)
    get_how $P603, type_obj
    .const 'Sub' $P604 = "77_1300051150.535" 
    $P603."add_method"(type_obj, "quote_escape:sym<cr>", $P604)
    get_how $P605, type_obj
    get_global $P606, "!PREFIX__quote_escape:sym<cr>"
    $P605."add_method"(type_obj, "!PREFIX__quote_escape:sym<cr>", $P606)
    get_how $P607, type_obj
    .const 'Sub' $P608 = "79_1300051150.535" 
    $P607."add_method"(type_obj, "quote_escape:sym<tab>", $P608)
    get_how $P609, type_obj
    get_global $P610, "!PREFIX__quote_escape:sym<tab>"
    $P609."add_method"(type_obj, "!PREFIX__quote_escape:sym<tab>", $P610)
    get_how $P611, type_obj
    .const 'Sub' $P612 = "81_1300051150.535" 
    $P611."add_method"(type_obj, "quote_escape:sym<ff>", $P612)
    get_how $P613, type_obj
    get_global $P614, "!PREFIX__quote_escape:sym<ff>"
    $P613."add_method"(type_obj, "!PREFIX__quote_escape:sym<ff>", $P614)
    get_how $P615, type_obj
    .const 'Sub' $P616 = "83_1300051150.535" 
    $P615."add_method"(type_obj, "quote_escape:sym<esc>", $P616)
    get_how $P617, type_obj
    get_global $P618, "!PREFIX__quote_escape:sym<esc>"
    $P617."add_method"(type_obj, "!PREFIX__quote_escape:sym<esc>", $P618)
    get_how $P619, type_obj
    .const 'Sub' $P620 = "85_1300051150.535" 
    $P619."add_method"(type_obj, "quote_escape:sym<hex>", $P620)
    get_how $P621, type_obj
    get_global $P622, "!PREFIX__quote_escape:sym<hex>"
    $P621."add_method"(type_obj, "!PREFIX__quote_escape:sym<hex>", $P622)
    get_how $P623, type_obj
    .const 'Sub' $P624 = "87_1300051150.535" 
    $P623."add_method"(type_obj, "quote_escape:sym<oct>", $P624)
    get_how $P625, type_obj
    get_global $P626, "!PREFIX__quote_escape:sym<oct>"
    $P625."add_method"(type_obj, "!PREFIX__quote_escape:sym<oct>", $P626)
    get_how $P627, type_obj
    .const 'Sub' $P628 = "89_1300051150.535" 
    $P627."add_method"(type_obj, "quote_escape:sym<chr>", $P628)
    get_how $P629, type_obj
    get_global $P630, "!PREFIX__quote_escape:sym<chr>"
    $P629."add_method"(type_obj, "!PREFIX__quote_escape:sym<chr>", $P630)
    get_how $P631, type_obj
    .const 'Sub' $P632 = "91_1300051150.535" 
    $P631."add_method"(type_obj, "quote_escape:sym<0>", $P632)
    get_how $P633, type_obj
    get_global $P634, "!PREFIX__quote_escape:sym<0>"
    $P633."add_method"(type_obj, "!PREFIX__quote_escape:sym<0>", $P634)
    get_how $P635, type_obj
    .const 'Sub' $P636 = "93_1300051150.535" 
    $P635."add_method"(type_obj, "quote_escape:sym<misc>", $P636)
    get_how $P637, type_obj
    get_global $P638, "!PREFIX__quote_escape:sym<misc>"
    $P637."add_method"(type_obj, "!PREFIX__quote_escape:sym<misc>", $P638)
    get_how $P639, type_obj
    .const 'Sub' $P640 = "98_1300051150.535" 
    $P639."add_method"(type_obj, "charname", $P640)
    get_how $P641, type_obj
    get_global $P642, "!PREFIX__charname"
    $P641."add_method"(type_obj, "!PREFIX__charname", $P642)
    get_how $P643, type_obj
    .const 'Sub' $P644 = "101_1300051150.535" 
    $P643."add_method"(type_obj, "charnames", $P644)
    get_how $P645, type_obj
    get_global $P646, "!PREFIX__charnames"
    $P645."add_method"(type_obj, "!PREFIX__charnames", $P646)
    get_how $P647, type_obj
    .const 'Sub' $P648 = "103_1300051150.535" 
    $P647."add_method"(type_obj, "charspec", $P648)
    get_how $P649, type_obj
    get_global $P650, "!PREFIX__charspec"
    $P649."add_method"(type_obj, "!PREFIX__charspec", $P650)
    get_how $P651, type_obj
    .const 'Sub' $P652 = "105_1300051150.535" 
    $P651."add_method"(type_obj, "O", $P652)
    get_how $P653, type_obj
    .const 'Sub' $P654 = "106_1300051150.535" 
    $P653."add_method"(type_obj, "panic", $P654)
    get_how $P655, type_obj
    .const 'Sub' $P656 = "107_1300051150.535" 
    $P655."add_method"(type_obj, "peek_delimiters", $P656)
    get_how $P657, type_obj
    .const 'Sub' $P658 = "108_1300051150.535" 
    $P657."add_method"(type_obj, "quote_EXPR", $P658)
    get_how $P659, type_obj
    .const 'Sub' $P660 = "109_1300051150.535" 
    $P659."add_method"(type_obj, "quotemod_check", $P660)
    get_how $P661, type_obj
    .const 'Sub' $P662 = "110_1300051150.535" 
    $P661."add_method"(type_obj, "starter", $P662)
    get_how $P663, type_obj
    .const 'Sub' $P664 = "111_1300051150.535" 
    $P663."add_method"(type_obj, "stopper", $P664)
    get_how $P665, type_obj
    .const 'Sub' $P666 = "112_1300051150.535" 
    $P665."add_method"(type_obj, "split_words", $P666)
    get_how $P667, type_obj
    .const 'Sub' $P668 = "113_1300051150.535" 
    $P667."add_method"(type_obj, "EXPR", $P668)
    get_how $P669, type_obj
    .const 'Sub' $P670 = "114_1300051150.535" 
    $P669."add_method"(type_obj, "EXPR_reduce", $P670)
    get_how $P671, type_obj
    .const 'Sub' $P672 = "115_1300051150.535" 
    $P671."add_method"(type_obj, "ternary", $P672)
    get_how $P673, type_obj
    .const 'Sub' $P674 = "116_1300051150.535" 
    $P673."add_method"(type_obj, "MARKER", $P674)
    get_how $P675, type_obj
    .const 'Sub' $P676 = "117_1300051150.535" 
    $P675."add_method"(type_obj, "MARKED", $P676)
    get_how $P677, type_obj
    .const 'Sub' $P678 = "118_1300051150.535" 
    $P677."add_method"(type_obj, "LANG", $P678)
    get_how $P679, type_obj
    get_hll_global $P680, ["Regex"], "Cursor"
    $P679."add_parent"(type_obj, $P680)
    get_how $P681, type_obj
    $P682 = $P681."compose"(type_obj)
    .return ($P682)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "ws"  :subid("12_1300051150.535") :method :outer("11_1300051150.535")
.annotate 'line', 3
    .local string rx23_tgt
    .local int rx23_pos
    .local int rx23_off
    .local int rx23_eos
    .local int rx23_rep
    .local pmc rx23_cur
    .local pmc rx23_debug
    (rx23_cur, rx23_pos, rx23_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx23_cur
    .local pmc match
    .lex "$/", match
    length rx23_eos, rx23_tgt
    gt rx23_pos, rx23_eos, rx23_done
    set rx23_off, 0
    lt rx23_pos, 2, rx23_start
    sub rx23_off, rx23_pos, 1
    substr rx23_tgt, rx23_tgt, rx23_off
  rx23_start:
    eq $I10, 1, rx23_restart
    if_null rx23_debug, debug_124
    rx23_cur."!cursor_debug"("START", "ws")
  debug_124:
    $I10 = self.'from'()
    ne $I10, -1, rxscan26_done
    goto rxscan26_scan
  rxscan26_loop:
    (rx23_pos) = rx23_cur."from"()
    inc rx23_pos
    rx23_cur."!cursor_from"(rx23_pos)
    ge rx23_pos, rx23_eos, rxscan26_done
  rxscan26_scan:
    set_addr $I10, rxscan26_loop
    rx23_cur."!mark_push"(0, rx23_pos, $I10)
  rxscan26_done:
  # rx subrule "ww" subtype=zerowidth negate=1
    rx23_cur."!cursor_pos"(rx23_pos)
    $P10 = rx23_cur."ww"()
    if $P10, rx23_fail
  # rx rxquantr27 ** 0..*
    set_addr $I10, rxquantr27_done
    rx23_cur."!mark_push"(0, rx23_pos, $I10)
  rxquantr27_loop:
  alt28_0:
    set_addr $I10, alt28_1
    rx23_cur."!mark_push"(0, rx23_pos, $I10)
  # rx charclass_q s r 1..-1
    sub $I10, rx23_pos, rx23_off
    find_not_cclass $I11, 32, rx23_tgt, $I10, rx23_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx23_fail
    add rx23_pos, rx23_off, $I11
    goto alt28_end
  alt28_1:
  # rx literal  "#"
    add $I11, rx23_pos, 1
    gt $I11, rx23_eos, rx23_fail
    sub $I11, rx23_pos, rx23_off
    ord $I11, rx23_tgt, $I11
    ne $I11, 35, rx23_fail
    add rx23_pos, 1
  # rx charclass_q N r 0..-1
    sub $I10, rx23_pos, rx23_off
    find_cclass $I11, 4096, rx23_tgt, $I10, rx23_eos
    add rx23_pos, rx23_off, $I11
  alt28_end:
    set_addr $I10, rxquantr27_done
    (rx23_rep) = rx23_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr27_done
    rx23_cur."!mark_push"(rx23_rep, rx23_pos, $I10)
    goto rxquantr27_loop
  rxquantr27_done:
  # rx pass
    rx23_cur."!cursor_pass"(rx23_pos, "ws")
    if_null rx23_debug, debug_125
    rx23_cur."!cursor_debug"("PASS", "ws", " at pos=", rx23_pos)
  debug_125:
    .return (rx23_cur)
  rx23_restart:
    if_null rx23_debug, debug_126
    rx23_cur."!cursor_debug"("NEXT", "ws")
  debug_126:
  rx23_fail:
    (rx23_rep, rx23_pos, $I10, $P10) = rx23_cur."!mark_fail"(0)
    lt rx23_pos, -1, rx23_done
    eq rx23_pos, -1, rx23_fail
    jump $I10
  rx23_done:
    rx23_cur."!cursor_fail"()
    if_null rx23_debug, debug_127
    rx23_cur."!cursor_debug"("FAIL", "ws")
  debug_127:
    .return (rx23_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__ws"  :nsentry("!PREFIX__ws") :subid("13_1300051150.535") :method
.annotate 'line', 3
    new $P25, "ResizablePMCArray"
    push $P25, ""
    .return ($P25)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "termish"  :subid("14_1300051150.535") :method :outer("11_1300051150.535")
.annotate 'line', 3
    .local string rx30_tgt
    .local int rx30_pos
    .local int rx30_off
    .local int rx30_eos
    .local int rx30_rep
    .local pmc rx30_cur
    .local pmc rx30_debug
    (rx30_cur, rx30_pos, rx30_tgt, $I10) = self."!cursor_start"()
    rx30_cur."!cursor_caparray"("prefixish", "postfixish")
    .lex unicode:"$\x{a2}", rx30_cur
    .local pmc match
    .lex "$/", match
    length rx30_eos, rx30_tgt
    gt rx30_pos, rx30_eos, rx30_done
    set rx30_off, 0
    lt rx30_pos, 2, rx30_start
    sub rx30_off, rx30_pos, 1
    substr rx30_tgt, rx30_tgt, rx30_off
  rx30_start:
    eq $I10, 1, rx30_restart
    if_null rx30_debug, debug_128
    rx30_cur."!cursor_debug"("START", "termish")
  debug_128:
    $I10 = self.'from'()
    ne $I10, -1, rxscan33_done
    goto rxscan33_scan
  rxscan33_loop:
    (rx30_pos) = rx30_cur."from"()
    inc rx30_pos
    rx30_cur."!cursor_from"(rx30_pos)
    ge rx30_pos, rx30_eos, rxscan33_done
  rxscan33_scan:
    set_addr $I10, rxscan33_loop
    rx30_cur."!mark_push"(0, rx30_pos, $I10)
  rxscan33_done:
.annotate 'line', 6
  # rx rxquantr34 ** 0..*
    set_addr $I10, rxquantr34_done
    rx30_cur."!mark_push"(0, rx30_pos, $I10)
  rxquantr34_loop:
  # rx subrule "prefixish" subtype=capture negate=
    rx30_cur."!cursor_pos"(rx30_pos)
    $P10 = rx30_cur."prefixish"()
    unless $P10, rx30_fail
    goto rxsubrule35_pass
  rxsubrule35_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx30_fail
  rxsubrule35_pass:
    set_addr $I10, rxsubrule35_back
    rx30_cur."!mark_push"(0, rx30_pos, $I10, $P10)
    $P10."!cursor_names"("prefixish")
    rx30_pos = $P10."pos"()
    set_addr $I10, rxquantr34_done
    (rx30_rep) = rx30_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr34_done
    rx30_cur."!mark_push"(rx30_rep, rx30_pos, $I10)
    goto rxquantr34_loop
  rxquantr34_done:
.annotate 'line', 7
  # rx subrule "term" subtype=capture negate=
    rx30_cur."!cursor_pos"(rx30_pos)
    $P10 = rx30_cur."term"()
    unless $P10, rx30_fail
    rx30_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("term")
    rx30_pos = $P10."pos"()
.annotate 'line', 8
  # rx rxquantr36 ** 0..*
    set_addr $I10, rxquantr36_done
    rx30_cur."!mark_push"(0, rx30_pos, $I10)
  rxquantr36_loop:
  # rx subrule "postfixish" subtype=capture negate=
    rx30_cur."!cursor_pos"(rx30_pos)
    $P10 = rx30_cur."postfixish"()
    unless $P10, rx30_fail
    goto rxsubrule37_pass
  rxsubrule37_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx30_fail
  rxsubrule37_pass:
    set_addr $I10, rxsubrule37_back
    rx30_cur."!mark_push"(0, rx30_pos, $I10, $P10)
    $P10."!cursor_names"("postfixish")
    rx30_pos = $P10."pos"()
    set_addr $I10, rxquantr36_done
    (rx30_rep) = rx30_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr36_done
    rx30_cur."!mark_push"(rx30_rep, rx30_pos, $I10)
    goto rxquantr36_loop
  rxquantr36_done:
.annotate 'line', 5
  # rx pass
    rx30_cur."!cursor_pass"(rx30_pos, "termish")
    if_null rx30_debug, debug_129
    rx30_cur."!cursor_debug"("PASS", "termish", " at pos=", rx30_pos)
  debug_129:
    .return (rx30_cur)
  rx30_restart:
.annotate 'line', 3
    if_null rx30_debug, debug_130
    rx30_cur."!cursor_debug"("NEXT", "termish")
  debug_130:
  rx30_fail:
    (rx30_rep, rx30_pos, $I10, $P10) = rx30_cur."!mark_fail"(0)
    lt rx30_pos, -1, rx30_done
    eq rx30_pos, -1, rx30_fail
    jump $I10
  rx30_done:
    rx30_cur."!cursor_fail"()
    if_null rx30_debug, debug_131
    rx30_cur."!cursor_debug"("FAIL", "termish")
  debug_131:
    .return (rx30_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__termish"  :nsentry("!PREFIX__termish") :subid("15_1300051150.535") :method
.annotate 'line', 3
    new $P32, "ResizablePMCArray"
    push $P32, ""
    .return ($P32)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "term"  :subid("16_1300051150.535")
    .param pmc param_39
.annotate 'line', 11
    .lex "self", param_39
    $P40 = param_39."!protoregex"("term")
    .return ($P40)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__term"  :subid("17_1300051150.535")
    .param pmc param_42
.annotate 'line', 11
    .lex "self", param_42
    $P43 = param_42."!PREFIX__!protoregex"("term")
    .return ($P43)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "infix"  :subid("18_1300051150.535")
    .param pmc param_45
.annotate 'line', 12
    .lex "self", param_45
    $P46 = param_45."!protoregex"("infix")
    .return ($P46)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__infix"  :subid("19_1300051150.535")
    .param pmc param_48
.annotate 'line', 12
    .lex "self", param_48
    $P49 = param_48."!PREFIX__!protoregex"("infix")
    .return ($P49)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "prefix"  :subid("20_1300051150.535")
    .param pmc param_51
.annotate 'line', 13
    .lex "self", param_51
    $P52 = param_51."!protoregex"("prefix")
    .return ($P52)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__prefix"  :subid("21_1300051150.535")
    .param pmc param_54
.annotate 'line', 13
    .lex "self", param_54
    $P55 = param_54."!PREFIX__!protoregex"("prefix")
    .return ($P55)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postfix"  :subid("22_1300051150.535")
    .param pmc param_57
.annotate 'line', 14
    .lex "self", param_57
    $P58 = param_57."!protoregex"("postfix")
    .return ($P58)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postfix"  :subid("23_1300051150.535")
    .param pmc param_60
.annotate 'line', 14
    .lex "self", param_60
    $P61 = param_60."!PREFIX__!protoregex"("postfix")
    .return ($P61)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "circumfix"  :subid("24_1300051150.535")
    .param pmc param_63
.annotate 'line', 15
    .lex "self", param_63
    $P64 = param_63."!protoregex"("circumfix")
    .return ($P64)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__circumfix"  :subid("25_1300051150.535")
    .param pmc param_66
.annotate 'line', 15
    .lex "self", param_66
    $P67 = param_66."!PREFIX__!protoregex"("circumfix")
    .return ($P67)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postcircumfix"  :subid("26_1300051150.535")
    .param pmc param_69
.annotate 'line', 16
    .lex "self", param_69
    $P70 = param_69."!protoregex"("postcircumfix")
    .return ($P70)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postcircumfix"  :subid("27_1300051150.535")
    .param pmc param_72
.annotate 'line', 16
    .lex "self", param_72
    $P73 = param_72."!PREFIX__!protoregex"("postcircumfix")
    .return ($P73)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "term:sym<circumfix>"  :subid("28_1300051150.535") :method :outer("11_1300051150.535")
.annotate 'line', 3
    .local string rx75_tgt
    .local int rx75_pos
    .local int rx75_off
    .local int rx75_eos
    .local int rx75_rep
    .local pmc rx75_cur
    .local pmc rx75_debug
    (rx75_cur, rx75_pos, rx75_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx75_cur
    .local pmc match
    .lex "$/", match
    length rx75_eos, rx75_tgt
    gt rx75_pos, rx75_eos, rx75_done
    set rx75_off, 0
    lt rx75_pos, 2, rx75_start
    sub rx75_off, rx75_pos, 1
    substr rx75_tgt, rx75_tgt, rx75_off
  rx75_start:
    eq $I10, 1, rx75_restart
    if_null rx75_debug, debug_132
    rx75_cur."!cursor_debug"("START", "term:sym<circumfix>")
  debug_132:
    $I10 = self.'from'()
    ne $I10, -1, rxscan79_done
    goto rxscan79_scan
  rxscan79_loop:
    (rx75_pos) = rx75_cur."from"()
    inc rx75_pos
    rx75_cur."!cursor_from"(rx75_pos)
    ge rx75_pos, rx75_eos, rxscan79_done
  rxscan79_scan:
    set_addr $I10, rxscan79_loop
    rx75_cur."!mark_push"(0, rx75_pos, $I10)
  rxscan79_done:
.annotate 'line', 18
  # rx subrule "circumfix" subtype=capture negate=
    rx75_cur."!cursor_pos"(rx75_pos)
    $P10 = rx75_cur."circumfix"()
    unless $P10, rx75_fail
    rx75_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("circumfix")
    rx75_pos = $P10."pos"()
  # rx pass
    rx75_cur."!cursor_pass"(rx75_pos, "term:sym<circumfix>")
    if_null rx75_debug, debug_133
    rx75_cur."!cursor_debug"("PASS", "term:sym<circumfix>", " at pos=", rx75_pos)
  debug_133:
    .return (rx75_cur)
  rx75_restart:
.annotate 'line', 3
    if_null rx75_debug, debug_134
    rx75_cur."!cursor_debug"("NEXT", "term:sym<circumfix>")
  debug_134:
  rx75_fail:
    (rx75_rep, rx75_pos, $I10, $P10) = rx75_cur."!mark_fail"(0)
    lt rx75_pos, -1, rx75_done
    eq rx75_pos, -1, rx75_fail
    jump $I10
  rx75_done:
    rx75_cur."!cursor_fail"()
    if_null rx75_debug, debug_135
    rx75_cur."!cursor_debug"("FAIL", "term:sym<circumfix>")
  debug_135:
    .return (rx75_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__term:sym<circumfix>"  :nsentry("!PREFIX__term:sym<circumfix>") :subid("29_1300051150.535") :method
.annotate 'line', 3
    $P77 = self."!PREFIX__!subrule"("circumfix", "")
    new $P78, "ResizablePMCArray"
    push $P78, $P77
    .return ($P78)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "infixish"  :subid("30_1300051150.535") :method :outer("11_1300051150.535")
.annotate 'line', 3
    .local string rx81_tgt
    .local int rx81_pos
    .local int rx81_off
    .local int rx81_eos
    .local int rx81_rep
    .local pmc rx81_cur
    .local pmc rx81_debug
    (rx81_cur, rx81_pos, rx81_tgt, $I10) = self."!cursor_start"()
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
    if_null rx81_debug, debug_136
    rx81_cur."!cursor_debug"("START", "infixish")
  debug_136:
    $I10 = self.'from'()
    ne $I10, -1, rxscan85_done
    goto rxscan85_scan
  rxscan85_loop:
    (rx81_pos) = rx81_cur."from"()
    inc rx81_pos
    rx81_cur."!cursor_from"(rx81_pos)
    ge rx81_pos, rx81_eos, rxscan85_done
  rxscan85_scan:
    set_addr $I10, rxscan85_loop
    rx81_cur."!mark_push"(0, rx81_pos, $I10)
  rxscan85_done:
.annotate 'line', 20
  # rx subrule "infix" subtype=capture negate=
    rx81_cur."!cursor_pos"(rx81_pos)
    $P10 = rx81_cur."infix"()
    unless $P10, rx81_fail
    rx81_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=infix")
    rx81_pos = $P10."pos"()
  # rx pass
    rx81_cur."!cursor_pass"(rx81_pos, "infixish")
    if_null rx81_debug, debug_137
    rx81_cur."!cursor_debug"("PASS", "infixish", " at pos=", rx81_pos)
  debug_137:
    .return (rx81_cur)
  rx81_restart:
.annotate 'line', 3
    if_null rx81_debug, debug_138
    rx81_cur."!cursor_debug"("NEXT", "infixish")
  debug_138:
  rx81_fail:
    (rx81_rep, rx81_pos, $I10, $P10) = rx81_cur."!mark_fail"(0)
    lt rx81_pos, -1, rx81_done
    eq rx81_pos, -1, rx81_fail
    jump $I10
  rx81_done:
    rx81_cur."!cursor_fail"()
    if_null rx81_debug, debug_139
    rx81_cur."!cursor_debug"("FAIL", "infixish")
  debug_139:
    .return (rx81_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__infixish"  :nsentry("!PREFIX__infixish") :subid("31_1300051150.535") :method
.annotate 'line', 3
    $P83 = self."!PREFIX__!subrule"("infix", "")
    new $P84, "ResizablePMCArray"
    push $P84, $P83
    .return ($P84)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "prefixish"  :subid("32_1300051150.535") :method :outer("11_1300051150.535")
.annotate 'line', 3
    .local string rx87_tgt
    .local int rx87_pos
    .local int rx87_off
    .local int rx87_eos
    .local int rx87_rep
    .local pmc rx87_cur
    .local pmc rx87_debug
    (rx87_cur, rx87_pos, rx87_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx87_cur
    .local pmc match
    .lex "$/", match
    length rx87_eos, rx87_tgt
    gt rx87_pos, rx87_eos, rx87_done
    set rx87_off, 0
    lt rx87_pos, 2, rx87_start
    sub rx87_off, rx87_pos, 1
    substr rx87_tgt, rx87_tgt, rx87_off
  rx87_start:
    eq $I10, 1, rx87_restart
    if_null rx87_debug, debug_140
    rx87_cur."!cursor_debug"("START", "prefixish")
  debug_140:
    $I10 = self.'from'()
    ne $I10, -1, rxscan91_done
    goto rxscan91_scan
  rxscan91_loop:
    (rx87_pos) = rx87_cur."from"()
    inc rx87_pos
    rx87_cur."!cursor_from"(rx87_pos)
    ge rx87_pos, rx87_eos, rxscan91_done
  rxscan91_scan:
    set_addr $I10, rxscan91_loop
    rx87_cur."!mark_push"(0, rx87_pos, $I10)
  rxscan91_done:
.annotate 'line', 21
  # rx subrule "prefix" subtype=capture negate=
    rx87_cur."!cursor_pos"(rx87_pos)
    $P10 = rx87_cur."prefix"()
    unless $P10, rx87_fail
    rx87_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=prefix")
    rx87_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx87_cur."!cursor_pos"(rx87_pos)
    $P10 = rx87_cur."ws"()
    unless $P10, rx87_fail
    rx87_pos = $P10."pos"()
  # rx pass
    rx87_cur."!cursor_pass"(rx87_pos, "prefixish")
    if_null rx87_debug, debug_141
    rx87_cur."!cursor_debug"("PASS", "prefixish", " at pos=", rx87_pos)
  debug_141:
    .return (rx87_cur)
  rx87_restart:
.annotate 'line', 3
    if_null rx87_debug, debug_142
    rx87_cur."!cursor_debug"("NEXT", "prefixish")
  debug_142:
  rx87_fail:
    (rx87_rep, rx87_pos, $I10, $P10) = rx87_cur."!mark_fail"(0)
    lt rx87_pos, -1, rx87_done
    eq rx87_pos, -1, rx87_fail
    jump $I10
  rx87_done:
    rx87_cur."!cursor_fail"()
    if_null rx87_debug, debug_143
    rx87_cur."!cursor_debug"("FAIL", "prefixish")
  debug_143:
    .return (rx87_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__prefixish"  :nsentry("!PREFIX__prefixish") :subid("33_1300051150.535") :method
.annotate 'line', 3
    $P89 = self."!PREFIX__!subrule"("prefix", "")
    new $P90, "ResizablePMCArray"
    push $P90, $P89
    .return ($P90)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postfixish"  :subid("34_1300051150.535") :method :outer("11_1300051150.535")
.annotate 'line', 3
    .local string rx93_tgt
    .local int rx93_pos
    .local int rx93_off
    .local int rx93_eos
    .local int rx93_rep
    .local pmc rx93_cur
    .local pmc rx93_debug
    (rx93_cur, rx93_pos, rx93_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx93_cur
    .local pmc match
    .lex "$/", match
    length rx93_eos, rx93_tgt
    gt rx93_pos, rx93_eos, rx93_done
    set rx93_off, 0
    lt rx93_pos, 2, rx93_start
    sub rx93_off, rx93_pos, 1
    substr rx93_tgt, rx93_tgt, rx93_off
  rx93_start:
    eq $I10, 1, rx93_restart
    if_null rx93_debug, debug_144
    rx93_cur."!cursor_debug"("START", "postfixish")
  debug_144:
    $I10 = self.'from'()
    ne $I10, -1, rxscan98_done
    goto rxscan98_scan
  rxscan98_loop:
    (rx93_pos) = rx93_cur."from"()
    inc rx93_pos
    rx93_cur."!cursor_from"(rx93_pos)
    ge rx93_pos, rx93_eos, rxscan98_done
  rxscan98_scan:
    set_addr $I10, rxscan98_loop
    rx93_cur."!mark_push"(0, rx93_pos, $I10)
  rxscan98_done:
  alt99_0:
.annotate 'line', 22
    set_addr $I10, alt99_1
    rx93_cur."!mark_push"(0, rx93_pos, $I10)
.annotate 'line', 23
  # rx subrule "postfix" subtype=capture negate=
    rx93_cur."!cursor_pos"(rx93_pos)
    $P10 = rx93_cur."postfix"()
    unless $P10, rx93_fail
    rx93_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=postfix")
    rx93_pos = $P10."pos"()
    goto alt99_end
  alt99_1:
.annotate 'line', 24
  # rx subrule "postcircumfix" subtype=capture negate=
    rx93_cur."!cursor_pos"(rx93_pos)
    $P10 = rx93_cur."postcircumfix"()
    unless $P10, rx93_fail
    rx93_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=postcircumfix")
    rx93_pos = $P10."pos"()
  alt99_end:
.annotate 'line', 22
  # rx pass
    rx93_cur."!cursor_pass"(rx93_pos, "postfixish")
    if_null rx93_debug, debug_145
    rx93_cur."!cursor_debug"("PASS", "postfixish", " at pos=", rx93_pos)
  debug_145:
    .return (rx93_cur)
  rx93_restart:
.annotate 'line', 3
    if_null rx93_debug, debug_146
    rx93_cur."!cursor_debug"("NEXT", "postfixish")
  debug_146:
  rx93_fail:
    (rx93_rep, rx93_pos, $I10, $P10) = rx93_cur."!mark_fail"(0)
    lt rx93_pos, -1, rx93_done
    eq rx93_pos, -1, rx93_fail
    jump $I10
  rx93_done:
    rx93_cur."!cursor_fail"()
    if_null rx93_debug, debug_147
    rx93_cur."!cursor_debug"("FAIL", "postfixish")
  debug_147:
    .return (rx93_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postfixish"  :nsentry("!PREFIX__postfixish") :subid("35_1300051150.535") :method
.annotate 'line', 3
    $P95 = self."!PREFIX__!subrule"("postcircumfix", "")
    $P96 = self."!PREFIX__!subrule"("postfix", "")
    new $P97, "ResizablePMCArray"
    push $P97, $P95
    push $P97, $P96
    .return ($P97)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "nullterm"  :subid("36_1300051150.535") :method :outer("11_1300051150.535")
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
    if_null rx101_debug, debug_148
    rx101_cur."!cursor_debug"("START", "nullterm")
  debug_148:
    $I10 = self.'from'()
    ne $I10, -1, rxscan104_done
    goto rxscan104_scan
  rxscan104_loop:
    (rx101_pos) = rx101_cur."from"()
    inc rx101_pos
    rx101_cur."!cursor_from"(rx101_pos)
    ge rx101_pos, rx101_eos, rxscan104_done
  rxscan104_scan:
    set_addr $I10, rxscan104_loop
    rx101_cur."!mark_push"(0, rx101_pos, $I10)
  rxscan104_done:
.annotate 'line', 27
  # rx pass
    rx101_cur."!cursor_pass"(rx101_pos, "nullterm")
    if_null rx101_debug, debug_149
    rx101_cur."!cursor_debug"("PASS", "nullterm", " at pos=", rx101_pos)
  debug_149:
    .return (rx101_cur)
  rx101_restart:
.annotate 'line', 3
    if_null rx101_debug, debug_150
    rx101_cur."!cursor_debug"("NEXT", "nullterm")
  debug_150:
  rx101_fail:
    (rx101_rep, rx101_pos, $I10, $P10) = rx101_cur."!mark_fail"(0)
    lt rx101_pos, -1, rx101_done
    eq rx101_pos, -1, rx101_fail
    jump $I10
  rx101_done:
    rx101_cur."!cursor_fail"()
    if_null rx101_debug, debug_151
    rx101_cur."!cursor_debug"("FAIL", "nullterm")
  debug_151:
    .return (rx101_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__nullterm"  :nsentry("!PREFIX__nullterm") :subid("37_1300051150.535") :method
.annotate 'line', 3
    new $P103, "ResizablePMCArray"
    push $P103, ""
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "nullterm_alt"  :subid("38_1300051150.535") :method :outer("11_1300051150.535")
.annotate 'line', 3
    .local string rx106_tgt
    .local int rx106_pos
    .local int rx106_off
    .local int rx106_eos
    .local int rx106_rep
    .local pmc rx106_cur
    .local pmc rx106_debug
    (rx106_cur, rx106_pos, rx106_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx106_cur
    .local pmc match
    .lex "$/", match
    length rx106_eos, rx106_tgt
    gt rx106_pos, rx106_eos, rx106_done
    set rx106_off, 0
    lt rx106_pos, 2, rx106_start
    sub rx106_off, rx106_pos, 1
    substr rx106_tgt, rx106_tgt, rx106_off
  rx106_start:
    eq $I10, 1, rx106_restart
    if_null rx106_debug, debug_152
    rx106_cur."!cursor_debug"("START", "nullterm_alt")
  debug_152:
    $I10 = self.'from'()
    ne $I10, -1, rxscan110_done
    goto rxscan110_scan
  rxscan110_loop:
    (rx106_pos) = rx106_cur."from"()
    inc rx106_pos
    rx106_cur."!cursor_from"(rx106_pos)
    ge rx106_pos, rx106_eos, rxscan110_done
  rxscan110_scan:
    set_addr $I10, rxscan110_loop
    rx106_cur."!mark_push"(0, rx106_pos, $I10)
  rxscan110_done:
.annotate 'line', 28
  # rx subrule "nullterm" subtype=capture negate=
    rx106_cur."!cursor_pos"(rx106_pos)
    $P10 = rx106_cur."nullterm"()
    unless $P10, rx106_fail
    rx106_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("term")
    rx106_pos = $P10."pos"()
  # rx pass
    rx106_cur."!cursor_pass"(rx106_pos, "nullterm_alt")
    if_null rx106_debug, debug_153
    rx106_cur."!cursor_debug"("PASS", "nullterm_alt", " at pos=", rx106_pos)
  debug_153:
    .return (rx106_cur)
  rx106_restart:
.annotate 'line', 3
    if_null rx106_debug, debug_154
    rx106_cur."!cursor_debug"("NEXT", "nullterm_alt")
  debug_154:
  rx106_fail:
    (rx106_rep, rx106_pos, $I10, $P10) = rx106_cur."!mark_fail"(0)
    lt rx106_pos, -1, rx106_done
    eq rx106_pos, -1, rx106_fail
    jump $I10
  rx106_done:
    rx106_cur."!cursor_fail"()
    if_null rx106_debug, debug_155
    rx106_cur."!cursor_debug"("FAIL", "nullterm_alt")
  debug_155:
    .return (rx106_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__nullterm_alt"  :nsentry("!PREFIX__nullterm_alt") :subid("39_1300051150.535") :method
.annotate 'line', 3
    $P108 = self."!PREFIX__!subrule"("nullterm", "")
    new $P109, "ResizablePMCArray"
    push $P109, $P108
    .return ($P109)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "nulltermish"  :subid("40_1300051150.535") :outer("11_1300051150.535")
    .param pmc param_112
.annotate 'line', 31
    .lex "self", param_112
    find_lex $P115, "self"
    $P116 = $P115."termish"()
    unless $P116, unless_114
    set $P113, $P116
    goto unless_114_end
  unless_114:
    find_lex $P117, "self"
    $P118 = $P117."nullterm_alt"()
    set $P113, $P118
  unless_114_end:
    .return ($P113)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_delimited"  :subid("41_1300051150.535") :method :outer("11_1300051150.535")
.annotate 'line', 31
    .local string rx120_tgt
    .local int rx120_pos
    .local int rx120_off
    .local int rx120_eos
    .local int rx120_rep
    .local pmc rx120_cur
    .local pmc rx120_debug
    (rx120_cur, rx120_pos, rx120_tgt, $I10) = self."!cursor_start"()
    rx120_cur."!cursor_caparray"("quote_atom")
    .lex unicode:"$\x{a2}", rx120_cur
    .local pmc match
    .lex "$/", match
    length rx120_eos, rx120_tgt
    gt rx120_pos, rx120_eos, rx120_done
    set rx120_off, 0
    lt rx120_pos, 2, rx120_start
    sub rx120_off, rx120_pos, 1
    substr rx120_tgt, rx120_tgt, rx120_off
  rx120_start:
    eq $I10, 1, rx120_restart
    if_null rx120_debug, debug_156
    rx120_cur."!cursor_debug"("START", "quote_delimited")
  debug_156:
    $I10 = self.'from'()
    ne $I10, -1, rxscan124_done
    goto rxscan124_scan
  rxscan124_loop:
    (rx120_pos) = rx120_cur."from"()
    inc rx120_pos
    rx120_cur."!cursor_from"(rx120_pos)
    ge rx120_pos, rx120_eos, rxscan124_done
  rxscan124_scan:
    set_addr $I10, rxscan124_loop
    rx120_cur."!mark_push"(0, rx120_pos, $I10)
  rxscan124_done:
.annotate 'line', 35
  # rx subrule "starter" subtype=capture negate=
    rx120_cur."!cursor_pos"(rx120_pos)
    $P10 = rx120_cur."starter"()
    unless $P10, rx120_fail
    rx120_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("starter")
    rx120_pos = $P10."pos"()
  # rx rxquantr125 ** 0..*
    set_addr $I10, rxquantr125_done
    rx120_cur."!mark_push"(0, rx120_pos, $I10)
  rxquantr125_loop:
  # rx subrule "quote_atom" subtype=capture negate=
    rx120_cur."!cursor_pos"(rx120_pos)
    $P10 = rx120_cur."quote_atom"()
    unless $P10, rx120_fail
    goto rxsubrule126_pass
  rxsubrule126_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx120_fail
  rxsubrule126_pass:
    set_addr $I10, rxsubrule126_back
    rx120_cur."!mark_push"(0, rx120_pos, $I10, $P10)
    $P10."!cursor_names"("quote_atom")
    rx120_pos = $P10."pos"()
    set_addr $I10, rxquantr125_done
    (rx120_rep) = rx120_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr125_done
    rx120_cur."!mark_push"(rx120_rep, rx120_pos, $I10)
    goto rxquantr125_loop
  rxquantr125_done:
  # rx subrule "stopper" subtype=capture negate=
    rx120_cur."!cursor_pos"(rx120_pos)
    $P10 = rx120_cur."stopper"()
    unless $P10, rx120_fail
    rx120_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("stopper")
    rx120_pos = $P10."pos"()
.annotate 'line', 34
  # rx pass
    rx120_cur."!cursor_pass"(rx120_pos, "quote_delimited")
    if_null rx120_debug, debug_157
    rx120_cur."!cursor_debug"("PASS", "quote_delimited", " at pos=", rx120_pos)
  debug_157:
    .return (rx120_cur)
  rx120_restart:
.annotate 'line', 31
    if_null rx120_debug, debug_158
    rx120_cur."!cursor_debug"("NEXT", "quote_delimited")
  debug_158:
  rx120_fail:
    (rx120_rep, rx120_pos, $I10, $P10) = rx120_cur."!mark_fail"(0)
    lt rx120_pos, -1, rx120_done
    eq rx120_pos, -1, rx120_fail
    jump $I10
  rx120_done:
    rx120_cur."!cursor_fail"()
    if_null rx120_debug, debug_159
    rx120_cur."!cursor_debug"("FAIL", "quote_delimited")
  debug_159:
    .return (rx120_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_delimited"  :nsentry("!PREFIX__quote_delimited") :subid("42_1300051150.535") :method
.annotate 'line', 31
    $P122 = self."!PREFIX__!subrule"("starter", "")
    new $P123, "ResizablePMCArray"
    push $P123, $P122
    .return ($P123)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_atom"  :subid("43_1300051150.535") :method :outer("11_1300051150.535")
.annotate 'line', 31
    .local string rx128_tgt
    .local int rx128_pos
    .local int rx128_off
    .local int rx128_eos
    .local int rx128_rep
    .local pmc rx128_cur
    .local pmc rx128_debug
    (rx128_cur, rx128_pos, rx128_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx128_cur
    .local pmc match
    .lex "$/", match
    length rx128_eos, rx128_tgt
    gt rx128_pos, rx128_eos, rx128_done
    set rx128_off, 0
    lt rx128_pos, 2, rx128_start
    sub rx128_off, rx128_pos, 1
    substr rx128_tgt, rx128_tgt, rx128_off
  rx128_start:
    eq $I10, 1, rx128_restart
    if_null rx128_debug, debug_160
    rx128_cur."!cursor_debug"("START", "quote_atom")
  debug_160:
    $I10 = self.'from'()
    ne $I10, -1, rxscan131_done
    goto rxscan131_scan
  rxscan131_loop:
    (rx128_pos) = rx128_cur."from"()
    inc rx128_pos
    rx128_cur."!cursor_from"(rx128_pos)
    ge rx128_pos, rx128_eos, rxscan131_done
  rxscan131_scan:
    set_addr $I10, rxscan131_loop
    rx128_cur."!mark_push"(0, rx128_pos, $I10)
  rxscan131_done:
.annotate 'line', 39
  # rx subrule "stopper" subtype=zerowidth negate=1
    rx128_cur."!cursor_pos"(rx128_pos)
    $P10 = rx128_cur."stopper"()
    if $P10, rx128_fail
  alt132_0:
.annotate 'line', 40
    set_addr $I10, alt132_1
    rx128_cur."!mark_push"(0, rx128_pos, $I10)
.annotate 'line', 41
  # rx subrule "quote_escape" subtype=capture negate=
    rx128_cur."!cursor_pos"(rx128_pos)
    $P10 = rx128_cur."quote_escape"()
    unless $P10, rx128_fail
    rx128_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_escape")
    rx128_pos = $P10."pos"()
    goto alt132_end
  alt132_1:
.annotate 'line', 42
  # rx rxquantr133 ** 1..*
    set_addr $I10, rxquantr133_done
    rx128_cur."!mark_push"(0, -1, $I10)
  rxquantr133_loop:
  # rx subrule "stopper" subtype=zerowidth negate=1
    rx128_cur."!cursor_pos"(rx128_pos)
    $P10 = rx128_cur."stopper"()
    if $P10, rx128_fail
  # rx subrule "quote_escape" subtype=zerowidth negate=1
    rx128_cur."!cursor_pos"(rx128_pos)
    $P10 = rx128_cur."quote_escape"()
    if $P10, rx128_fail
  # rx charclass .
    ge rx128_pos, rx128_eos, rx128_fail
    inc rx128_pos
    set_addr $I10, rxquantr133_done
    (rx128_rep) = rx128_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr133_done
    rx128_cur."!mark_push"(rx128_rep, rx128_pos, $I10)
    goto rxquantr133_loop
  rxquantr133_done:
  alt132_end:
.annotate 'line', 38
  # rx pass
    rx128_cur."!cursor_pass"(rx128_pos, "quote_atom")
    if_null rx128_debug, debug_161
    rx128_cur."!cursor_debug"("PASS", "quote_atom", " at pos=", rx128_pos)
  debug_161:
    .return (rx128_cur)
  rx128_restart:
.annotate 'line', 31
    if_null rx128_debug, debug_162
    rx128_cur."!cursor_debug"("NEXT", "quote_atom")
  debug_162:
  rx128_fail:
    (rx128_rep, rx128_pos, $I10, $P10) = rx128_cur."!mark_fail"(0)
    lt rx128_pos, -1, rx128_done
    eq rx128_pos, -1, rx128_fail
    jump $I10
  rx128_done:
    rx128_cur."!cursor_fail"()
    if_null rx128_debug, debug_163
    rx128_cur."!cursor_debug"("FAIL", "quote_atom")
  debug_163:
    .return (rx128_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_atom"  :nsentry("!PREFIX__quote_atom") :subid("44_1300051150.535") :method
.annotate 'line', 31
    new $P130, "ResizablePMCArray"
    push $P130, ""
    .return ($P130)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "decint"  :subid("45_1300051150.535") :method :outer("11_1300051150.535")
.annotate 'line', 31
    .local string rx137_tgt
    .local int rx137_pos
    .local int rx137_off
    .local int rx137_eos
    .local int rx137_rep
    .local pmc rx137_cur
    .local pmc rx137_debug
    (rx137_cur, rx137_pos, rx137_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx137_cur
    .local pmc match
    .lex "$/", match
    length rx137_eos, rx137_tgt
    gt rx137_pos, rx137_eos, rx137_done
    set rx137_off, 0
    lt rx137_pos, 2, rx137_start
    sub rx137_off, rx137_pos, 1
    substr rx137_tgt, rx137_tgt, rx137_off
  rx137_start:
    eq $I10, 1, rx137_restart
    if_null rx137_debug, debug_164
    rx137_cur."!cursor_debug"("START", "decint")
  debug_164:
    $I10 = self.'from'()
    ne $I10, -1, rxscan140_done
    goto rxscan140_scan
  rxscan140_loop:
    (rx137_pos) = rx137_cur."from"()
    inc rx137_pos
    rx137_cur."!cursor_from"(rx137_pos)
    ge rx137_pos, rx137_eos, rxscan140_done
  rxscan140_scan:
    set_addr $I10, rxscan140_loop
    rx137_cur."!mark_push"(0, rx137_pos, $I10)
  rxscan140_done:
.annotate 'line', 46
  # rx rxquantr141 ** 1..*
    set_addr $I10, rxquantr141_done
    rx137_cur."!mark_push"(0, -1, $I10)
  rxquantr141_loop:
  # rx charclass_q d r 1..-1
    sub $I10, rx137_pos, rx137_off
    find_not_cclass $I11, 8, rx137_tgt, $I10, rx137_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx137_fail
    add rx137_pos, rx137_off, $I11
    set_addr $I10, rxquantr141_done
    (rx137_rep) = rx137_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr141_done
    rx137_cur."!mark_push"(rx137_rep, rx137_pos, $I10)
  # rx literal  "_"
    add $I11, rx137_pos, 1
    gt $I11, rx137_eos, rx137_fail
    sub $I11, rx137_pos, rx137_off
    ord $I11, rx137_tgt, $I11
    ne $I11, 95, rx137_fail
    add rx137_pos, 1
    goto rxquantr141_loop
  rxquantr141_done:
  # rx pass
    rx137_cur."!cursor_pass"(rx137_pos, "decint")
    if_null rx137_debug, debug_165
    rx137_cur."!cursor_debug"("PASS", "decint", " at pos=", rx137_pos)
  debug_165:
    .return (rx137_cur)
  rx137_restart:
.annotate 'line', 31
    if_null rx137_debug, debug_166
    rx137_cur."!cursor_debug"("NEXT", "decint")
  debug_166:
  rx137_fail:
    (rx137_rep, rx137_pos, $I10, $P10) = rx137_cur."!mark_fail"(0)
    lt rx137_pos, -1, rx137_done
    eq rx137_pos, -1, rx137_fail
    jump $I10
  rx137_done:
    rx137_cur."!cursor_fail"()
    if_null rx137_debug, debug_167
    rx137_cur."!cursor_debug"("FAIL", "decint")
  debug_167:
    .return (rx137_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__decint"  :nsentry("!PREFIX__decint") :subid("46_1300051150.535") :method
.annotate 'line', 31
    new $P139, "ResizablePMCArray"
    push $P139, ""
    .return ($P139)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "decints"  :subid("47_1300051150.535") :method :outer("11_1300051150.535")
.annotate 'line', 31
    .local string rx143_tgt
    .local int rx143_pos
    .local int rx143_off
    .local int rx143_eos
    .local int rx143_rep
    .local pmc rx143_cur
    .local pmc rx143_debug
    (rx143_cur, rx143_pos, rx143_tgt, $I10) = self."!cursor_start"()
    rx143_cur."!cursor_caparray"("decint")
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
    if_null rx143_debug, debug_168
    rx143_cur."!cursor_debug"("START", "decints")
  debug_168:
    $I10 = self.'from'()
    ne $I10, -1, rxscan146_done
    goto rxscan146_scan
  rxscan146_loop:
    (rx143_pos) = rx143_cur."from"()
    inc rx143_pos
    rx143_cur."!cursor_from"(rx143_pos)
    ge rx143_pos, rx143_eos, rxscan146_done
  rxscan146_scan:
    set_addr $I10, rxscan146_loop
    rx143_cur."!mark_push"(0, rx143_pos, $I10)
  rxscan146_done:
.annotate 'line', 47
  # rx rxquantr147 ** 1..*
    set_addr $I10, rxquantr147_done
    rx143_cur."!mark_push"(0, -1, $I10)
  rxquantr147_loop:
  # rx subrule "ws" subtype=method negate=
    rx143_cur."!cursor_pos"(rx143_pos)
    $P10 = rx143_cur."ws"()
    unless $P10, rx143_fail
    rx143_pos = $P10."pos"()
  # rx subrule "decint" subtype=capture negate=
    rx143_cur."!cursor_pos"(rx143_pos)
    $P10 = rx143_cur."decint"()
    unless $P10, rx143_fail
    rx143_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("decint")
    rx143_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx143_cur."!cursor_pos"(rx143_pos)
    $P10 = rx143_cur."ws"()
    unless $P10, rx143_fail
    rx143_pos = $P10."pos"()
    set_addr $I10, rxquantr147_done
    (rx143_rep) = rx143_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr147_done
    rx143_cur."!mark_push"(rx143_rep, rx143_pos, $I10)
  # rx literal  ","
    add $I11, rx143_pos, 1
    gt $I11, rx143_eos, rx143_fail
    sub $I11, rx143_pos, rx143_off
    ord $I11, rx143_tgt, $I11
    ne $I11, 44, rx143_fail
    add rx143_pos, 1
    goto rxquantr147_loop
  rxquantr147_done:
  # rx pass
    rx143_cur."!cursor_pass"(rx143_pos, "decints")
    if_null rx143_debug, debug_169
    rx143_cur."!cursor_debug"("PASS", "decints", " at pos=", rx143_pos)
  debug_169:
    .return (rx143_cur)
  rx143_restart:
.annotate 'line', 31
    if_null rx143_debug, debug_170
    rx143_cur."!cursor_debug"("NEXT", "decints")
  debug_170:
  rx143_fail:
    (rx143_rep, rx143_pos, $I10, $P10) = rx143_cur."!mark_fail"(0)
    lt rx143_pos, -1, rx143_done
    eq rx143_pos, -1, rx143_fail
    jump $I10
  rx143_done:
    rx143_cur."!cursor_fail"()
    if_null rx143_debug, debug_171
    rx143_cur."!cursor_debug"("FAIL", "decints")
  debug_171:
    .return (rx143_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__decints"  :nsentry("!PREFIX__decints") :subid("48_1300051150.535") :method
.annotate 'line', 31
    new $P145, "ResizablePMCArray"
    push $P145, ""
    .return ($P145)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "hexint"  :subid("49_1300051150.535") :method :outer("11_1300051150.535")
.annotate 'line', 31
    .local string rx149_tgt
    .local int rx149_pos
    .local int rx149_off
    .local int rx149_eos
    .local int rx149_rep
    .local pmc rx149_cur
    .local pmc rx149_debug
    (rx149_cur, rx149_pos, rx149_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx149_cur
    .local pmc match
    .lex "$/", match
    length rx149_eos, rx149_tgt
    gt rx149_pos, rx149_eos, rx149_done
    set rx149_off, 0
    lt rx149_pos, 2, rx149_start
    sub rx149_off, rx149_pos, 1
    substr rx149_tgt, rx149_tgt, rx149_off
  rx149_start:
    eq $I10, 1, rx149_restart
    if_null rx149_debug, debug_172
    rx149_cur."!cursor_debug"("START", "hexint")
  debug_172:
    $I10 = self.'from'()
    ne $I10, -1, rxscan152_done
    goto rxscan152_scan
  rxscan152_loop:
    (rx149_pos) = rx149_cur."from"()
    inc rx149_pos
    rx149_cur."!cursor_from"(rx149_pos)
    ge rx149_pos, rx149_eos, rxscan152_done
  rxscan152_scan:
    set_addr $I10, rxscan152_loop
    rx149_cur."!mark_push"(0, rx149_pos, $I10)
  rxscan152_done:
.annotate 'line', 49
  # rx rxquantr153 ** 1..*
    set_addr $I10, rxquantr153_done
    rx149_cur."!mark_push"(0, -1, $I10)
  rxquantr153_loop:
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx149_pos, rx149_off
    set rx149_rep, 0
    sub $I12, rx149_eos, rx149_pos
  rxenumcharlistq154_loop:
    le $I12, 0, rxenumcharlistq154_done
    substr $S10, rx149_tgt, $I10, 1
    index $I11, "0123456789abcdefABCDEF", $S10
    lt $I11, 0, rxenumcharlistq154_done
    inc rx149_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq154_loop
  rxenumcharlistq154_done:
    lt rx149_rep, 1, rx149_fail
    add rx149_pos, rx149_pos, rx149_rep
    set_addr $I10, rxquantr153_done
    (rx149_rep) = rx149_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr153_done
    rx149_cur."!mark_push"(rx149_rep, rx149_pos, $I10)
  # rx literal  "_"
    add $I11, rx149_pos, 1
    gt $I11, rx149_eos, rx149_fail
    sub $I11, rx149_pos, rx149_off
    ord $I11, rx149_tgt, $I11
    ne $I11, 95, rx149_fail
    add rx149_pos, 1
    goto rxquantr153_loop
  rxquantr153_done:
  # rx pass
    rx149_cur."!cursor_pass"(rx149_pos, "hexint")
    if_null rx149_debug, debug_173
    rx149_cur."!cursor_debug"("PASS", "hexint", " at pos=", rx149_pos)
  debug_173:
    .return (rx149_cur)
  rx149_restart:
.annotate 'line', 31
    if_null rx149_debug, debug_174
    rx149_cur."!cursor_debug"("NEXT", "hexint")
  debug_174:
  rx149_fail:
    (rx149_rep, rx149_pos, $I10, $P10) = rx149_cur."!mark_fail"(0)
    lt rx149_pos, -1, rx149_done
    eq rx149_pos, -1, rx149_fail
    jump $I10
  rx149_done:
    rx149_cur."!cursor_fail"()
    if_null rx149_debug, debug_175
    rx149_cur."!cursor_debug"("FAIL", "hexint")
  debug_175:
    .return (rx149_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__hexint"  :nsentry("!PREFIX__hexint") :subid("50_1300051150.535") :method
.annotate 'line', 31
    new $P151, "ResizablePMCArray"
    push $P151, ""
    .return ($P151)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "hexints"  :subid("51_1300051150.535") :method :outer("11_1300051150.535")
.annotate 'line', 31
    .local string rx156_tgt
    .local int rx156_pos
    .local int rx156_off
    .local int rx156_eos
    .local int rx156_rep
    .local pmc rx156_cur
    .local pmc rx156_debug
    (rx156_cur, rx156_pos, rx156_tgt, $I10) = self."!cursor_start"()
    rx156_cur."!cursor_caparray"("hexint")
    .lex unicode:"$\x{a2}", rx156_cur
    .local pmc match
    .lex "$/", match
    length rx156_eos, rx156_tgt
    gt rx156_pos, rx156_eos, rx156_done
    set rx156_off, 0
    lt rx156_pos, 2, rx156_start
    sub rx156_off, rx156_pos, 1
    substr rx156_tgt, rx156_tgt, rx156_off
  rx156_start:
    eq $I10, 1, rx156_restart
    if_null rx156_debug, debug_176
    rx156_cur."!cursor_debug"("START", "hexints")
  debug_176:
    $I10 = self.'from'()
    ne $I10, -1, rxscan159_done
    goto rxscan159_scan
  rxscan159_loop:
    (rx156_pos) = rx156_cur."from"()
    inc rx156_pos
    rx156_cur."!cursor_from"(rx156_pos)
    ge rx156_pos, rx156_eos, rxscan159_done
  rxscan159_scan:
    set_addr $I10, rxscan159_loop
    rx156_cur."!mark_push"(0, rx156_pos, $I10)
  rxscan159_done:
.annotate 'line', 50
  # rx rxquantr160 ** 1..*
    set_addr $I10, rxquantr160_done
    rx156_cur."!mark_push"(0, -1, $I10)
  rxquantr160_loop:
  # rx subrule "ws" subtype=method negate=
    rx156_cur."!cursor_pos"(rx156_pos)
    $P10 = rx156_cur."ws"()
    unless $P10, rx156_fail
    rx156_pos = $P10."pos"()
  # rx subrule "hexint" subtype=capture negate=
    rx156_cur."!cursor_pos"(rx156_pos)
    $P10 = rx156_cur."hexint"()
    unless $P10, rx156_fail
    rx156_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexint")
    rx156_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx156_cur."!cursor_pos"(rx156_pos)
    $P10 = rx156_cur."ws"()
    unless $P10, rx156_fail
    rx156_pos = $P10."pos"()
    set_addr $I10, rxquantr160_done
    (rx156_rep) = rx156_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr160_done
    rx156_cur."!mark_push"(rx156_rep, rx156_pos, $I10)
  # rx literal  ","
    add $I11, rx156_pos, 1
    gt $I11, rx156_eos, rx156_fail
    sub $I11, rx156_pos, rx156_off
    ord $I11, rx156_tgt, $I11
    ne $I11, 44, rx156_fail
    add rx156_pos, 1
    goto rxquantr160_loop
  rxquantr160_done:
  # rx pass
    rx156_cur."!cursor_pass"(rx156_pos, "hexints")
    if_null rx156_debug, debug_177
    rx156_cur."!cursor_debug"("PASS", "hexints", " at pos=", rx156_pos)
  debug_177:
    .return (rx156_cur)
  rx156_restart:
.annotate 'line', 31
    if_null rx156_debug, debug_178
    rx156_cur."!cursor_debug"("NEXT", "hexints")
  debug_178:
  rx156_fail:
    (rx156_rep, rx156_pos, $I10, $P10) = rx156_cur."!mark_fail"(0)
    lt rx156_pos, -1, rx156_done
    eq rx156_pos, -1, rx156_fail
    jump $I10
  rx156_done:
    rx156_cur."!cursor_fail"()
    if_null rx156_debug, debug_179
    rx156_cur."!cursor_debug"("FAIL", "hexints")
  debug_179:
    .return (rx156_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__hexints"  :nsentry("!PREFIX__hexints") :subid("52_1300051150.535") :method
.annotate 'line', 31
    new $P158, "ResizablePMCArray"
    push $P158, ""
    .return ($P158)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "octint"  :subid("53_1300051150.535") :method :outer("11_1300051150.535")
.annotate 'line', 31
    .local string rx162_tgt
    .local int rx162_pos
    .local int rx162_off
    .local int rx162_eos
    .local int rx162_rep
    .local pmc rx162_cur
    .local pmc rx162_debug
    (rx162_cur, rx162_pos, rx162_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx162_cur
    .local pmc match
    .lex "$/", match
    length rx162_eos, rx162_tgt
    gt rx162_pos, rx162_eos, rx162_done
    set rx162_off, 0
    lt rx162_pos, 2, rx162_start
    sub rx162_off, rx162_pos, 1
    substr rx162_tgt, rx162_tgt, rx162_off
  rx162_start:
    eq $I10, 1, rx162_restart
    if_null rx162_debug, debug_180
    rx162_cur."!cursor_debug"("START", "octint")
  debug_180:
    $I10 = self.'from'()
    ne $I10, -1, rxscan165_done
    goto rxscan165_scan
  rxscan165_loop:
    (rx162_pos) = rx162_cur."from"()
    inc rx162_pos
    rx162_cur."!cursor_from"(rx162_pos)
    ge rx162_pos, rx162_eos, rxscan165_done
  rxscan165_scan:
    set_addr $I10, rxscan165_loop
    rx162_cur."!mark_push"(0, rx162_pos, $I10)
  rxscan165_done:
.annotate 'line', 52
  # rx rxquantr166 ** 1..*
    set_addr $I10, rxquantr166_done
    rx162_cur."!mark_push"(0, -1, $I10)
  rxquantr166_loop:
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx162_pos, rx162_off
    set rx162_rep, 0
    sub $I12, rx162_eos, rx162_pos
  rxenumcharlistq167_loop:
    le $I12, 0, rxenumcharlistq167_done
    substr $S10, rx162_tgt, $I10, 1
    index $I11, "01234567", $S10
    lt $I11, 0, rxenumcharlistq167_done
    inc rx162_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq167_loop
  rxenumcharlistq167_done:
    lt rx162_rep, 1, rx162_fail
    add rx162_pos, rx162_pos, rx162_rep
    set_addr $I10, rxquantr166_done
    (rx162_rep) = rx162_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr166_done
    rx162_cur."!mark_push"(rx162_rep, rx162_pos, $I10)
  # rx literal  "_"
    add $I11, rx162_pos, 1
    gt $I11, rx162_eos, rx162_fail
    sub $I11, rx162_pos, rx162_off
    ord $I11, rx162_tgt, $I11
    ne $I11, 95, rx162_fail
    add rx162_pos, 1
    goto rxquantr166_loop
  rxquantr166_done:
  # rx pass
    rx162_cur."!cursor_pass"(rx162_pos, "octint")
    if_null rx162_debug, debug_181
    rx162_cur."!cursor_debug"("PASS", "octint", " at pos=", rx162_pos)
  debug_181:
    .return (rx162_cur)
  rx162_restart:
.annotate 'line', 31
    if_null rx162_debug, debug_182
    rx162_cur."!cursor_debug"("NEXT", "octint")
  debug_182:
  rx162_fail:
    (rx162_rep, rx162_pos, $I10, $P10) = rx162_cur."!mark_fail"(0)
    lt rx162_pos, -1, rx162_done
    eq rx162_pos, -1, rx162_fail
    jump $I10
  rx162_done:
    rx162_cur."!cursor_fail"()
    if_null rx162_debug, debug_183
    rx162_cur."!cursor_debug"("FAIL", "octint")
  debug_183:
    .return (rx162_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__octint"  :nsentry("!PREFIX__octint") :subid("54_1300051150.535") :method
.annotate 'line', 31
    new $P164, "ResizablePMCArray"
    push $P164, ""
    .return ($P164)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "octints"  :subid("55_1300051150.535") :method :outer("11_1300051150.535")
.annotate 'line', 31
    .local string rx169_tgt
    .local int rx169_pos
    .local int rx169_off
    .local int rx169_eos
    .local int rx169_rep
    .local pmc rx169_cur
    .local pmc rx169_debug
    (rx169_cur, rx169_pos, rx169_tgt, $I10) = self."!cursor_start"()
    rx169_cur."!cursor_caparray"("octint")
    .lex unicode:"$\x{a2}", rx169_cur
    .local pmc match
    .lex "$/", match
    length rx169_eos, rx169_tgt
    gt rx169_pos, rx169_eos, rx169_done
    set rx169_off, 0
    lt rx169_pos, 2, rx169_start
    sub rx169_off, rx169_pos, 1
    substr rx169_tgt, rx169_tgt, rx169_off
  rx169_start:
    eq $I10, 1, rx169_restart
    if_null rx169_debug, debug_184
    rx169_cur."!cursor_debug"("START", "octints")
  debug_184:
    $I10 = self.'from'()
    ne $I10, -1, rxscan172_done
    goto rxscan172_scan
  rxscan172_loop:
    (rx169_pos) = rx169_cur."from"()
    inc rx169_pos
    rx169_cur."!cursor_from"(rx169_pos)
    ge rx169_pos, rx169_eos, rxscan172_done
  rxscan172_scan:
    set_addr $I10, rxscan172_loop
    rx169_cur."!mark_push"(0, rx169_pos, $I10)
  rxscan172_done:
.annotate 'line', 53
  # rx rxquantr173 ** 1..*
    set_addr $I10, rxquantr173_done
    rx169_cur."!mark_push"(0, -1, $I10)
  rxquantr173_loop:
  # rx subrule "ws" subtype=method negate=
    rx169_cur."!cursor_pos"(rx169_pos)
    $P10 = rx169_cur."ws"()
    unless $P10, rx169_fail
    rx169_pos = $P10."pos"()
  # rx subrule "octint" subtype=capture negate=
    rx169_cur."!cursor_pos"(rx169_pos)
    $P10 = rx169_cur."octint"()
    unless $P10, rx169_fail
    rx169_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octint")
    rx169_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx169_cur."!cursor_pos"(rx169_pos)
    $P10 = rx169_cur."ws"()
    unless $P10, rx169_fail
    rx169_pos = $P10."pos"()
    set_addr $I10, rxquantr173_done
    (rx169_rep) = rx169_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr173_done
    rx169_cur."!mark_push"(rx169_rep, rx169_pos, $I10)
  # rx literal  ","
    add $I11, rx169_pos, 1
    gt $I11, rx169_eos, rx169_fail
    sub $I11, rx169_pos, rx169_off
    ord $I11, rx169_tgt, $I11
    ne $I11, 44, rx169_fail
    add rx169_pos, 1
    goto rxquantr173_loop
  rxquantr173_done:
  # rx pass
    rx169_cur."!cursor_pass"(rx169_pos, "octints")
    if_null rx169_debug, debug_185
    rx169_cur."!cursor_debug"("PASS", "octints", " at pos=", rx169_pos)
  debug_185:
    .return (rx169_cur)
  rx169_restart:
.annotate 'line', 31
    if_null rx169_debug, debug_186
    rx169_cur."!cursor_debug"("NEXT", "octints")
  debug_186:
  rx169_fail:
    (rx169_rep, rx169_pos, $I10, $P10) = rx169_cur."!mark_fail"(0)
    lt rx169_pos, -1, rx169_done
    eq rx169_pos, -1, rx169_fail
    jump $I10
  rx169_done:
    rx169_cur."!cursor_fail"()
    if_null rx169_debug, debug_187
    rx169_cur."!cursor_debug"("FAIL", "octints")
  debug_187:
    .return (rx169_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__octints"  :nsentry("!PREFIX__octints") :subid("56_1300051150.535") :method
.annotate 'line', 31
    new $P171, "ResizablePMCArray"
    push $P171, ""
    .return ($P171)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "binint"  :subid("57_1300051150.535") :method :outer("11_1300051150.535")
.annotate 'line', 31
    .local string rx175_tgt
    .local int rx175_pos
    .local int rx175_off
    .local int rx175_eos
    .local int rx175_rep
    .local pmc rx175_cur
    .local pmc rx175_debug
    (rx175_cur, rx175_pos, rx175_tgt, $I10) = self."!cursor_start"()
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
    if_null rx175_debug, debug_188
    rx175_cur."!cursor_debug"("START", "binint")
  debug_188:
    $I10 = self.'from'()
    ne $I10, -1, rxscan178_done
    goto rxscan178_scan
  rxscan178_loop:
    (rx175_pos) = rx175_cur."from"()
    inc rx175_pos
    rx175_cur."!cursor_from"(rx175_pos)
    ge rx175_pos, rx175_eos, rxscan178_done
  rxscan178_scan:
    set_addr $I10, rxscan178_loop
    rx175_cur."!mark_push"(0, rx175_pos, $I10)
  rxscan178_done:
.annotate 'line', 55
  # rx rxquantr179 ** 1..*
    set_addr $I10, rxquantr179_done
    rx175_cur."!mark_push"(0, -1, $I10)
  rxquantr179_loop:
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx175_pos, rx175_off
    set rx175_rep, 0
    sub $I12, rx175_eos, rx175_pos
  rxenumcharlistq180_loop:
    le $I12, 0, rxenumcharlistq180_done
    substr $S10, rx175_tgt, $I10, 1
    index $I11, "01", $S10
    lt $I11, 0, rxenumcharlistq180_done
    inc rx175_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq180_loop
  rxenumcharlistq180_done:
    lt rx175_rep, 1, rx175_fail
    add rx175_pos, rx175_pos, rx175_rep
    set_addr $I10, rxquantr179_done
    (rx175_rep) = rx175_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr179_done
    rx175_cur."!mark_push"(rx175_rep, rx175_pos, $I10)
  # rx literal  "_"
    add $I11, rx175_pos, 1
    gt $I11, rx175_eos, rx175_fail
    sub $I11, rx175_pos, rx175_off
    ord $I11, rx175_tgt, $I11
    ne $I11, 95, rx175_fail
    add rx175_pos, 1
    goto rxquantr179_loop
  rxquantr179_done:
  # rx pass
    rx175_cur."!cursor_pass"(rx175_pos, "binint")
    if_null rx175_debug, debug_189
    rx175_cur."!cursor_debug"("PASS", "binint", " at pos=", rx175_pos)
  debug_189:
    .return (rx175_cur)
  rx175_restart:
.annotate 'line', 31
    if_null rx175_debug, debug_190
    rx175_cur."!cursor_debug"("NEXT", "binint")
  debug_190:
  rx175_fail:
    (rx175_rep, rx175_pos, $I10, $P10) = rx175_cur."!mark_fail"(0)
    lt rx175_pos, -1, rx175_done
    eq rx175_pos, -1, rx175_fail
    jump $I10
  rx175_done:
    rx175_cur."!cursor_fail"()
    if_null rx175_debug, debug_191
    rx175_cur."!cursor_debug"("FAIL", "binint")
  debug_191:
    .return (rx175_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__binint"  :nsentry("!PREFIX__binint") :subid("58_1300051150.535") :method
.annotate 'line', 31
    new $P177, "ResizablePMCArray"
    push $P177, ""
    .return ($P177)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "binints"  :subid("59_1300051150.535") :method :outer("11_1300051150.535")
.annotate 'line', 31
    .local string rx182_tgt
    .local int rx182_pos
    .local int rx182_off
    .local int rx182_eos
    .local int rx182_rep
    .local pmc rx182_cur
    .local pmc rx182_debug
    (rx182_cur, rx182_pos, rx182_tgt, $I10) = self."!cursor_start"()
    rx182_cur."!cursor_caparray"("binint")
    .lex unicode:"$\x{a2}", rx182_cur
    .local pmc match
    .lex "$/", match
    length rx182_eos, rx182_tgt
    gt rx182_pos, rx182_eos, rx182_done
    set rx182_off, 0
    lt rx182_pos, 2, rx182_start
    sub rx182_off, rx182_pos, 1
    substr rx182_tgt, rx182_tgt, rx182_off
  rx182_start:
    eq $I10, 1, rx182_restart
    if_null rx182_debug, debug_192
    rx182_cur."!cursor_debug"("START", "binints")
  debug_192:
    $I10 = self.'from'()
    ne $I10, -1, rxscan185_done
    goto rxscan185_scan
  rxscan185_loop:
    (rx182_pos) = rx182_cur."from"()
    inc rx182_pos
    rx182_cur."!cursor_from"(rx182_pos)
    ge rx182_pos, rx182_eos, rxscan185_done
  rxscan185_scan:
    set_addr $I10, rxscan185_loop
    rx182_cur."!mark_push"(0, rx182_pos, $I10)
  rxscan185_done:
.annotate 'line', 56
  # rx rxquantr186 ** 1..*
    set_addr $I10, rxquantr186_done
    rx182_cur."!mark_push"(0, -1, $I10)
  rxquantr186_loop:
  # rx subrule "ws" subtype=method negate=
    rx182_cur."!cursor_pos"(rx182_pos)
    $P10 = rx182_cur."ws"()
    unless $P10, rx182_fail
    rx182_pos = $P10."pos"()
  # rx subrule "binint" subtype=capture negate=
    rx182_cur."!cursor_pos"(rx182_pos)
    $P10 = rx182_cur."binint"()
    unless $P10, rx182_fail
    rx182_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("binint")
    rx182_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx182_cur."!cursor_pos"(rx182_pos)
    $P10 = rx182_cur."ws"()
    unless $P10, rx182_fail
    rx182_pos = $P10."pos"()
    set_addr $I10, rxquantr186_done
    (rx182_rep) = rx182_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr186_done
    rx182_cur."!mark_push"(rx182_rep, rx182_pos, $I10)
  # rx literal  ","
    add $I11, rx182_pos, 1
    gt $I11, rx182_eos, rx182_fail
    sub $I11, rx182_pos, rx182_off
    ord $I11, rx182_tgt, $I11
    ne $I11, 44, rx182_fail
    add rx182_pos, 1
    goto rxquantr186_loop
  rxquantr186_done:
  # rx pass
    rx182_cur."!cursor_pass"(rx182_pos, "binints")
    if_null rx182_debug, debug_193
    rx182_cur."!cursor_debug"("PASS", "binints", " at pos=", rx182_pos)
  debug_193:
    .return (rx182_cur)
  rx182_restart:
.annotate 'line', 31
    if_null rx182_debug, debug_194
    rx182_cur."!cursor_debug"("NEXT", "binints")
  debug_194:
  rx182_fail:
    (rx182_rep, rx182_pos, $I10, $P10) = rx182_cur."!mark_fail"(0)
    lt rx182_pos, -1, rx182_done
    eq rx182_pos, -1, rx182_fail
    jump $I10
  rx182_done:
    rx182_cur."!cursor_fail"()
    if_null rx182_debug, debug_195
    rx182_cur."!cursor_debug"("FAIL", "binints")
  debug_195:
    .return (rx182_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__binints"  :nsentry("!PREFIX__binints") :subid("60_1300051150.535") :method
.annotate 'line', 31
    new $P184, "ResizablePMCArray"
    push $P184, ""
    .return ($P184)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "integer"  :subid("61_1300051150.535") :method :outer("11_1300051150.535")
.annotate 'line', 31
    .local string rx188_tgt
    .local int rx188_pos
    .local int rx188_off
    .local int rx188_eos
    .local int rx188_rep
    .local pmc rx188_cur
    .local pmc rx188_debug
    (rx188_cur, rx188_pos, rx188_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx188_cur
    .local pmc match
    .lex "$/", match
    length rx188_eos, rx188_tgt
    gt rx188_pos, rx188_eos, rx188_done
    set rx188_off, 0
    lt rx188_pos, 2, rx188_start
    sub rx188_off, rx188_pos, 1
    substr rx188_tgt, rx188_tgt, rx188_off
  rx188_start:
    eq $I10, 1, rx188_restart
    if_null rx188_debug, debug_196
    rx188_cur."!cursor_debug"("START", "integer")
  debug_196:
    $I10 = self.'from'()
    ne $I10, -1, rxscan196_done
    goto rxscan196_scan
  rxscan196_loop:
    (rx188_pos) = rx188_cur."from"()
    inc rx188_pos
    rx188_cur."!cursor_from"(rx188_pos)
    ge rx188_pos, rx188_eos, rxscan196_done
  rxscan196_scan:
    set_addr $I10, rxscan196_loop
    rx188_cur."!mark_push"(0, rx188_pos, $I10)
  rxscan196_done:
  alt197_0:
.annotate 'line', 59
    set_addr $I10, alt197_1
    rx188_cur."!mark_push"(0, rx188_pos, $I10)
.annotate 'line', 60
  # rx literal  "0"
    add $I11, rx188_pos, 1
    gt $I11, rx188_eos, rx188_fail
    sub $I11, rx188_pos, rx188_off
    ord $I11, rx188_tgt, $I11
    ne $I11, 48, rx188_fail
    add rx188_pos, 1
  alt198_0:
    set_addr $I10, alt198_1
    rx188_cur."!mark_push"(0, rx188_pos, $I10)
  # rx literal  "b"
    add $I11, rx188_pos, 1
    gt $I11, rx188_eos, rx188_fail
    sub $I11, rx188_pos, rx188_off
    ord $I11, rx188_tgt, $I11
    ne $I11, 98, rx188_fail
    add rx188_pos, 1
  # rx subrule "binint" subtype=capture negate=
    rx188_cur."!cursor_pos"(rx188_pos)
    $P10 = rx188_cur."binint"()
    unless $P10, rx188_fail
    rx188_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=binint")
    rx188_pos = $P10."pos"()
    goto alt198_end
  alt198_1:
    set_addr $I10, alt198_2
    rx188_cur."!mark_push"(0, rx188_pos, $I10)
.annotate 'line', 61
  # rx literal  "o"
    add $I11, rx188_pos, 1
    gt $I11, rx188_eos, rx188_fail
    sub $I11, rx188_pos, rx188_off
    ord $I11, rx188_tgt, $I11
    ne $I11, 111, rx188_fail
    add rx188_pos, 1
  # rx subrule "octint" subtype=capture negate=
    rx188_cur."!cursor_pos"(rx188_pos)
    $P10 = rx188_cur."octint"()
    unless $P10, rx188_fail
    rx188_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=octint")
    rx188_pos = $P10."pos"()
    goto alt198_end
  alt198_2:
    set_addr $I10, alt198_3
    rx188_cur."!mark_push"(0, rx188_pos, $I10)
.annotate 'line', 62
  # rx literal  "x"
    add $I11, rx188_pos, 1
    gt $I11, rx188_eos, rx188_fail
    sub $I11, rx188_pos, rx188_off
    ord $I11, rx188_tgt, $I11
    ne $I11, 120, rx188_fail
    add rx188_pos, 1
  # rx subrule "hexint" subtype=capture negate=
    rx188_cur."!cursor_pos"(rx188_pos)
    $P10 = rx188_cur."hexint"()
    unless $P10, rx188_fail
    rx188_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=hexint")
    rx188_pos = $P10."pos"()
    goto alt198_end
  alt198_3:
.annotate 'line', 63
  # rx literal  "d"
    add $I11, rx188_pos, 1
    gt $I11, rx188_eos, rx188_fail
    sub $I11, rx188_pos, rx188_off
    ord $I11, rx188_tgt, $I11
    ne $I11, 100, rx188_fail
    add rx188_pos, 1
  # rx subrule "decint" subtype=capture negate=
    rx188_cur."!cursor_pos"(rx188_pos)
    $P10 = rx188_cur."decint"()
    unless $P10, rx188_fail
    rx188_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=decint")
    rx188_pos = $P10."pos"()
  alt198_end:
.annotate 'line', 60
    goto alt197_end
  alt197_1:
.annotate 'line', 65
  # rx subrule "decint" subtype=capture negate=
    rx188_cur."!cursor_pos"(rx188_pos)
    $P10 = rx188_cur."decint"()
    unless $P10, rx188_fail
    rx188_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=decint")
    rx188_pos = $P10."pos"()
  alt197_end:
.annotate 'line', 58
  # rx pass
    rx188_cur."!cursor_pass"(rx188_pos, "integer")
    if_null rx188_debug, debug_197
    rx188_cur."!cursor_debug"("PASS", "integer", " at pos=", rx188_pos)
  debug_197:
    .return (rx188_cur)
  rx188_restart:
.annotate 'line', 31
    if_null rx188_debug, debug_198
    rx188_cur."!cursor_debug"("NEXT", "integer")
  debug_198:
  rx188_fail:
    (rx188_rep, rx188_pos, $I10, $P10) = rx188_cur."!mark_fail"(0)
    lt rx188_pos, -1, rx188_done
    eq rx188_pos, -1, rx188_fail
    jump $I10
  rx188_done:
    rx188_cur."!cursor_fail"()
    if_null rx188_debug, debug_199
    rx188_cur."!cursor_debug"("FAIL", "integer")
  debug_199:
    .return (rx188_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__integer"  :nsentry("!PREFIX__integer") :subid("62_1300051150.535") :method
.annotate 'line', 31
    $P190 = self."!PREFIX__!subrule"("decint", "")
    $P191 = self."!PREFIX__!subrule"("decint", "0d")
    $P192 = self."!PREFIX__!subrule"("hexint", "0x")
    $P193 = self."!PREFIX__!subrule"("octint", "0o")
    $P194 = self."!PREFIX__!subrule"("binint", "0b")
    new $P195, "ResizablePMCArray"
    push $P195, $P190
    push $P195, $P191
    push $P195, $P192
    push $P195, $P193
    push $P195, $P194
    .return ($P195)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "dec_number"  :subid("63_1300051150.535") :method :outer("11_1300051150.535")
.annotate 'line', 31
    .local string rx200_tgt
    .local int rx200_pos
    .local int rx200_off
    .local int rx200_eos
    .local int rx200_rep
    .local pmc rx200_cur
    .local pmc rx200_debug
    (rx200_cur, rx200_pos, rx200_tgt, $I10) = self."!cursor_start"()
    rx200_cur."!cursor_caparray"("escale")
    .lex unicode:"$\x{a2}", rx200_cur
    .local pmc match
    .lex "$/", match
    length rx200_eos, rx200_tgt
    gt rx200_pos, rx200_eos, rx200_done
    set rx200_off, 0
    lt rx200_pos, 2, rx200_start
    sub rx200_off, rx200_pos, 1
    substr rx200_tgt, rx200_tgt, rx200_off
  rx200_start:
    eq $I10, 1, rx200_restart
    if_null rx200_debug, debug_200
    rx200_cur."!cursor_debug"("START", "dec_number")
  debug_200:
    $I10 = self.'from'()
    ne $I10, -1, rxscan203_done
    goto rxscan203_scan
  rxscan203_loop:
    (rx200_pos) = rx200_cur."from"()
    inc rx200_pos
    rx200_cur."!cursor_from"(rx200_pos)
    ge rx200_pos, rx200_eos, rxscan203_done
  rxscan203_scan:
    set_addr $I10, rxscan203_loop
    rx200_cur."!mark_push"(0, rx200_pos, $I10)
  rxscan203_done:
  alt204_0:
.annotate 'line', 69
    set_addr $I10, alt204_1
    rx200_cur."!mark_push"(0, rx200_pos, $I10)
.annotate 'line', 70
  # rx subcapture "coeff"
    set_addr $I10, rxcap_205_fail
    rx200_cur."!mark_push"(0, rx200_pos, $I10)
  # rx literal  "."
    add $I11, rx200_pos, 1
    gt $I11, rx200_eos, rx200_fail
    sub $I11, rx200_pos, rx200_off
    ord $I11, rx200_tgt, $I11
    ne $I11, 46, rx200_fail
    add rx200_pos, 1
  # rx charclass_q d r 1..-1
    sub $I10, rx200_pos, rx200_off
    find_not_cclass $I11, 8, rx200_tgt, $I10, rx200_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx200_fail
    add rx200_pos, rx200_off, $I11
    set_addr $I10, rxcap_205_fail
    ($I12, $I11) = rx200_cur."!mark_peek"($I10)
    rx200_cur."!cursor_pos"($I11)
    ($P10) = rx200_cur."!cursor_start"()
    $P10."!cursor_pass"(rx200_pos, "")
    rx200_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("coeff")
    goto rxcap_205_done
  rxcap_205_fail:
    goto rx200_fail
  rxcap_205_done:
  # rx rxquantr206 ** 0..1
    set_addr $I10, rxquantr206_done
    rx200_cur."!mark_push"(0, rx200_pos, $I10)
  rxquantr206_loop:
  # rx subrule "escale" subtype=capture negate=
    rx200_cur."!cursor_pos"(rx200_pos)
    $P10 = rx200_cur."escale"()
    unless $P10, rx200_fail
    goto rxsubrule207_pass
  rxsubrule207_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx200_fail
  rxsubrule207_pass:
    set_addr $I10, rxsubrule207_back
    rx200_cur."!mark_push"(0, rx200_pos, $I10, $P10)
    $P10."!cursor_names"("escale")
    rx200_pos = $P10."pos"()
    set_addr $I10, rxquantr206_done
    (rx200_rep) = rx200_cur."!mark_commit"($I10)
  rxquantr206_done:
    goto alt204_end
  alt204_1:
    set_addr $I10, alt204_2
    rx200_cur."!mark_push"(0, rx200_pos, $I10)
.annotate 'line', 71
  # rx subcapture "coeff"
    set_addr $I10, rxcap_208_fail
    rx200_cur."!mark_push"(0, rx200_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx200_pos, rx200_off
    find_not_cclass $I11, 8, rx200_tgt, $I10, rx200_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx200_fail
    add rx200_pos, rx200_off, $I11
  # rx literal  "."
    add $I11, rx200_pos, 1
    gt $I11, rx200_eos, rx200_fail
    sub $I11, rx200_pos, rx200_off
    ord $I11, rx200_tgt, $I11
    ne $I11, 46, rx200_fail
    add rx200_pos, 1
  # rx charclass_q d r 1..-1
    sub $I10, rx200_pos, rx200_off
    find_not_cclass $I11, 8, rx200_tgt, $I10, rx200_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx200_fail
    add rx200_pos, rx200_off, $I11
    set_addr $I10, rxcap_208_fail
    ($I12, $I11) = rx200_cur."!mark_peek"($I10)
    rx200_cur."!cursor_pos"($I11)
    ($P10) = rx200_cur."!cursor_start"()
    $P10."!cursor_pass"(rx200_pos, "")
    rx200_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("coeff")
    goto rxcap_208_done
  rxcap_208_fail:
    goto rx200_fail
  rxcap_208_done:
  # rx rxquantr209 ** 0..1
    set_addr $I10, rxquantr209_done
    rx200_cur."!mark_push"(0, rx200_pos, $I10)
  rxquantr209_loop:
  # rx subrule "escale" subtype=capture negate=
    rx200_cur."!cursor_pos"(rx200_pos)
    $P10 = rx200_cur."escale"()
    unless $P10, rx200_fail
    goto rxsubrule210_pass
  rxsubrule210_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx200_fail
  rxsubrule210_pass:
    set_addr $I10, rxsubrule210_back
    rx200_cur."!mark_push"(0, rx200_pos, $I10, $P10)
    $P10."!cursor_names"("escale")
    rx200_pos = $P10."pos"()
    set_addr $I10, rxquantr209_done
    (rx200_rep) = rx200_cur."!mark_commit"($I10)
  rxquantr209_done:
    goto alt204_end
  alt204_2:
.annotate 'line', 72
  # rx subcapture "coeff"
    set_addr $I10, rxcap_211_fail
    rx200_cur."!mark_push"(0, rx200_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx200_pos, rx200_off
    find_not_cclass $I11, 8, rx200_tgt, $I10, rx200_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx200_fail
    add rx200_pos, rx200_off, $I11
    set_addr $I10, rxcap_211_fail
    ($I12, $I11) = rx200_cur."!mark_peek"($I10)
    rx200_cur."!cursor_pos"($I11)
    ($P10) = rx200_cur."!cursor_start"()
    $P10."!cursor_pass"(rx200_pos, "")
    rx200_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("coeff")
    goto rxcap_211_done
  rxcap_211_fail:
    goto rx200_fail
  rxcap_211_done:
  # rx subrule "escale" subtype=capture negate=
    rx200_cur."!cursor_pos"(rx200_pos)
    $P10 = rx200_cur."escale"()
    unless $P10, rx200_fail
    rx200_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("escale")
    rx200_pos = $P10."pos"()
  alt204_end:
.annotate 'line', 69
  # rx pass
    rx200_cur."!cursor_pass"(rx200_pos, "dec_number")
    if_null rx200_debug, debug_201
    rx200_cur."!cursor_debug"("PASS", "dec_number", " at pos=", rx200_pos)
  debug_201:
    .return (rx200_cur)
  rx200_restart:
.annotate 'line', 31
    if_null rx200_debug, debug_202
    rx200_cur."!cursor_debug"("NEXT", "dec_number")
  debug_202:
  rx200_fail:
    (rx200_rep, rx200_pos, $I10, $P10) = rx200_cur."!mark_fail"(0)
    lt rx200_pos, -1, rx200_done
    eq rx200_pos, -1, rx200_fail
    jump $I10
  rx200_done:
    rx200_cur."!cursor_fail"()
    if_null rx200_debug, debug_203
    rx200_cur."!cursor_debug"("FAIL", "dec_number")
  debug_203:
    .return (rx200_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__dec_number"  :nsentry("!PREFIX__dec_number") :subid("64_1300051150.535") :method
.annotate 'line', 31
    new $P202, "ResizablePMCArray"
    push $P202, ""
    push $P202, ""
    push $P202, "."
    .return ($P202)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "escale"  :subid("65_1300051150.535") :method :outer("11_1300051150.535")
.annotate 'line', 31
    .local string rx213_tgt
    .local int rx213_pos
    .local int rx213_off
    .local int rx213_eos
    .local int rx213_rep
    .local pmc rx213_cur
    .local pmc rx213_debug
    (rx213_cur, rx213_pos, rx213_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx213_cur
    .local pmc match
    .lex "$/", match
    length rx213_eos, rx213_tgt
    gt rx213_pos, rx213_eos, rx213_done
    set rx213_off, 0
    lt rx213_pos, 2, rx213_start
    sub rx213_off, rx213_pos, 1
    substr rx213_tgt, rx213_tgt, rx213_off
  rx213_start:
    eq $I10, 1, rx213_restart
    if_null rx213_debug, debug_204
    rx213_cur."!cursor_debug"("START", "escale")
  debug_204:
    $I10 = self.'from'()
    ne $I10, -1, rxscan216_done
    goto rxscan216_scan
  rxscan216_loop:
    (rx213_pos) = rx213_cur."from"()
    inc rx213_pos
    rx213_cur."!cursor_from"(rx213_pos)
    ge rx213_pos, rx213_eos, rxscan216_done
  rxscan216_scan:
    set_addr $I10, rxscan216_loop
    rx213_cur."!mark_push"(0, rx213_pos, $I10)
  rxscan216_done:
.annotate 'line', 75
  # rx enumcharlist negate=0 
    ge rx213_pos, rx213_eos, rx213_fail
    sub $I10, rx213_pos, rx213_off
    substr $S10, rx213_tgt, $I10, 1
    index $I11, "Ee", $S10
    lt $I11, 0, rx213_fail
    inc rx213_pos
  # rx enumcharlist_q negate=0  r 0..1
    sub $I10, rx213_pos, rx213_off
    set rx213_rep, 0
    sub $I12, rx213_eos, rx213_pos
    le $I12, 1, rxenumcharlistq217_loop
    set $I12, 1
  rxenumcharlistq217_loop:
    le $I12, 0, rxenumcharlistq217_done
    substr $S10, rx213_tgt, $I10, 1
    index $I11, "+-", $S10
    lt $I11, 0, rxenumcharlistq217_done
    inc rx213_rep
  rxenumcharlistq217_done:
    add rx213_pos, rx213_pos, rx213_rep
  # rx charclass_q d r 1..-1
    sub $I10, rx213_pos, rx213_off
    find_not_cclass $I11, 8, rx213_tgt, $I10, rx213_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx213_fail
    add rx213_pos, rx213_off, $I11
  # rx pass
    rx213_cur."!cursor_pass"(rx213_pos, "escale")
    if_null rx213_debug, debug_205
    rx213_cur."!cursor_debug"("PASS", "escale", " at pos=", rx213_pos)
  debug_205:
    .return (rx213_cur)
  rx213_restart:
.annotate 'line', 31
    if_null rx213_debug, debug_206
    rx213_cur."!cursor_debug"("NEXT", "escale")
  debug_206:
  rx213_fail:
    (rx213_rep, rx213_pos, $I10, $P10) = rx213_cur."!mark_fail"(0)
    lt rx213_pos, -1, rx213_done
    eq rx213_pos, -1, rx213_fail
    jump $I10
  rx213_done:
    rx213_cur."!cursor_fail"()
    if_null rx213_debug, debug_207
    rx213_cur."!cursor_debug"("FAIL", "escale")
  debug_207:
    .return (rx213_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__escale"  :nsentry("!PREFIX__escale") :subid("66_1300051150.535") :method
.annotate 'line', 31
    new $P215, "ResizablePMCArray"
    push $P215, "e"
    push $P215, "E"
    .return ($P215)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape"  :subid("67_1300051150.535")
    .param pmc param_219
.annotate 'line', 77
    .lex "self", param_219
    $P220 = param_219."!protoregex"("quote_escape")
    .return ($P220)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape"  :subid("68_1300051150.535")
    .param pmc param_222
.annotate 'line', 77
    .lex "self", param_222
    $P223 = param_222."!PREFIX__!protoregex"("quote_escape")
    .return ($P223)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<backslash>"  :subid("69_1300051150.535") :method :outer("11_1300051150.535")
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
    if_null rx225_debug, debug_208
    rx225_cur."!cursor_debug"("START", "quote_escape:sym<backslash>")
  debug_208:
    $I10 = self.'from'()
    ne $I10, -1, rxscan228_done
    goto rxscan228_scan
  rxscan228_loop:
    (rx225_pos) = rx225_cur."from"()
    inc rx225_pos
    rx225_cur."!cursor_from"(rx225_pos)
    ge rx225_pos, rx225_eos, rxscan228_done
  rxscan228_scan:
    set_addr $I10, rxscan228_loop
    rx225_cur."!mark_push"(0, rx225_pos, $I10)
  rxscan228_done:
.annotate 'line', 78
  # rx literal  "\\\\"
    add $I11, rx225_pos, 2
    gt $I11, rx225_eos, rx225_fail
    sub $I11, rx225_pos, rx225_off
    substr $S10, rx225_tgt, $I11, 2
    ne $S10, "\\\\", rx225_fail
    add rx225_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx225_cur."!cursor_pos"(rx225_pos)
    $P10 = rx225_cur."quotemod_check"("q")
    unless $P10, rx225_fail
  # rx pass
    rx225_cur."!cursor_pass"(rx225_pos, "quote_escape:sym<backslash>")
    if_null rx225_debug, debug_209
    rx225_cur."!cursor_debug"("PASS", "quote_escape:sym<backslash>", " at pos=", rx225_pos)
  debug_209:
    .return (rx225_cur)
  rx225_restart:
.annotate 'line', 31
    if_null rx225_debug, debug_210
    rx225_cur."!cursor_debug"("NEXT", "quote_escape:sym<backslash>")
  debug_210:
  rx225_fail:
    (rx225_rep, rx225_pos, $I10, $P10) = rx225_cur."!mark_fail"(0)
    lt rx225_pos, -1, rx225_done
    eq rx225_pos, -1, rx225_fail
    jump $I10
  rx225_done:
    rx225_cur."!cursor_fail"()
    if_null rx225_debug, debug_211
    rx225_cur."!cursor_debug"("FAIL", "quote_escape:sym<backslash>")
  debug_211:
    .return (rx225_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<backslash>"  :nsentry("!PREFIX__quote_escape:sym<backslash>") :subid("70_1300051150.535") :method
.annotate 'line', 31
    new $P227, "ResizablePMCArray"
    push $P227, "\\\\"
    .return ($P227)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<stopper>"  :subid("71_1300051150.535") :method :outer("11_1300051150.535")
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
    if_null rx230_debug, debug_212
    rx230_cur."!cursor_debug"("START", "quote_escape:sym<stopper>")
  debug_212:
    $I10 = self.'from'()
    ne $I10, -1, rxscan233_done
    goto rxscan233_scan
  rxscan233_loop:
    (rx230_pos) = rx230_cur."from"()
    inc rx230_pos
    rx230_cur."!cursor_from"(rx230_pos)
    ge rx230_pos, rx230_eos, rxscan233_done
  rxscan233_scan:
    set_addr $I10, rxscan233_loop
    rx230_cur."!mark_push"(0, rx230_pos, $I10)
  rxscan233_done:
.annotate 'line', 79
  # rx literal  "\\"
    add $I11, rx230_pos, 1
    gt $I11, rx230_eos, rx230_fail
    sub $I11, rx230_pos, rx230_off
    ord $I11, rx230_tgt, $I11
    ne $I11, 92, rx230_fail
    add rx230_pos, 1
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx230_cur."!cursor_pos"(rx230_pos)
    $P10 = rx230_cur."quotemod_check"("q")
    unless $P10, rx230_fail
  # rx subrule "stopper" subtype=capture negate=
    rx230_cur."!cursor_pos"(rx230_pos)
    $P10 = rx230_cur."stopper"()
    unless $P10, rx230_fail
    rx230_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("stopper")
    rx230_pos = $P10."pos"()
  # rx pass
    rx230_cur."!cursor_pass"(rx230_pos, "quote_escape:sym<stopper>")
    if_null rx230_debug, debug_213
    rx230_cur."!cursor_debug"("PASS", "quote_escape:sym<stopper>", " at pos=", rx230_pos)
  debug_213:
    .return (rx230_cur)
  rx230_restart:
.annotate 'line', 31
    if_null rx230_debug, debug_214
    rx230_cur."!cursor_debug"("NEXT", "quote_escape:sym<stopper>")
  debug_214:
  rx230_fail:
    (rx230_rep, rx230_pos, $I10, $P10) = rx230_cur."!mark_fail"(0)
    lt rx230_pos, -1, rx230_done
    eq rx230_pos, -1, rx230_fail
    jump $I10
  rx230_done:
    rx230_cur."!cursor_fail"()
    if_null rx230_debug, debug_215
    rx230_cur."!cursor_debug"("FAIL", "quote_escape:sym<stopper>")
  debug_215:
    .return (rx230_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<stopper>"  :nsentry("!PREFIX__quote_escape:sym<stopper>") :subid("72_1300051150.535") :method
.annotate 'line', 31
    new $P232, "ResizablePMCArray"
    push $P232, "\\"
    .return ($P232)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<bs>"  :subid("73_1300051150.535") :method :outer("11_1300051150.535")
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
    if_null rx235_debug, debug_216
    rx235_cur."!cursor_debug"("START", "quote_escape:sym<bs>")
  debug_216:
    $I10 = self.'from'()
    ne $I10, -1, rxscan238_done
    goto rxscan238_scan
  rxscan238_loop:
    (rx235_pos) = rx235_cur."from"()
    inc rx235_pos
    rx235_cur."!cursor_from"(rx235_pos)
    ge rx235_pos, rx235_eos, rxscan238_done
  rxscan238_scan:
    set_addr $I10, rxscan238_loop
    rx235_cur."!mark_push"(0, rx235_pos, $I10)
  rxscan238_done:
.annotate 'line', 81
  # rx literal  "\\b"
    add $I11, rx235_pos, 2
    gt $I11, rx235_eos, rx235_fail
    sub $I11, rx235_pos, rx235_off
    substr $S10, rx235_tgt, $I11, 2
    ne $S10, "\\b", rx235_fail
    add rx235_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx235_cur."!cursor_pos"(rx235_pos)
    $P10 = rx235_cur."quotemod_check"("b")
    unless $P10, rx235_fail
  # rx pass
    rx235_cur."!cursor_pass"(rx235_pos, "quote_escape:sym<bs>")
    if_null rx235_debug, debug_217
    rx235_cur."!cursor_debug"("PASS", "quote_escape:sym<bs>", " at pos=", rx235_pos)
  debug_217:
    .return (rx235_cur)
  rx235_restart:
.annotate 'line', 31
    if_null rx235_debug, debug_218
    rx235_cur."!cursor_debug"("NEXT", "quote_escape:sym<bs>")
  debug_218:
  rx235_fail:
    (rx235_rep, rx235_pos, $I10, $P10) = rx235_cur."!mark_fail"(0)
    lt rx235_pos, -1, rx235_done
    eq rx235_pos, -1, rx235_fail
    jump $I10
  rx235_done:
    rx235_cur."!cursor_fail"()
    if_null rx235_debug, debug_219
    rx235_cur."!cursor_debug"("FAIL", "quote_escape:sym<bs>")
  debug_219:
    .return (rx235_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<bs>"  :nsentry("!PREFIX__quote_escape:sym<bs>") :subid("74_1300051150.535") :method
.annotate 'line', 31
    new $P237, "ResizablePMCArray"
    push $P237, "\\b"
    .return ($P237)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<nl>"  :subid("75_1300051150.535") :method :outer("11_1300051150.535")
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
    if_null rx240_debug, debug_220
    rx240_cur."!cursor_debug"("START", "quote_escape:sym<nl>")
  debug_220:
    $I10 = self.'from'()
    ne $I10, -1, rxscan243_done
    goto rxscan243_scan
  rxscan243_loop:
    (rx240_pos) = rx240_cur."from"()
    inc rx240_pos
    rx240_cur."!cursor_from"(rx240_pos)
    ge rx240_pos, rx240_eos, rxscan243_done
  rxscan243_scan:
    set_addr $I10, rxscan243_loop
    rx240_cur."!mark_push"(0, rx240_pos, $I10)
  rxscan243_done:
.annotate 'line', 82
  # rx literal  "\\n"
    add $I11, rx240_pos, 2
    gt $I11, rx240_eos, rx240_fail
    sub $I11, rx240_pos, rx240_off
    substr $S10, rx240_tgt, $I11, 2
    ne $S10, "\\n", rx240_fail
    add rx240_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx240_cur."!cursor_pos"(rx240_pos)
    $P10 = rx240_cur."quotemod_check"("b")
    unless $P10, rx240_fail
  # rx pass
    rx240_cur."!cursor_pass"(rx240_pos, "quote_escape:sym<nl>")
    if_null rx240_debug, debug_221
    rx240_cur."!cursor_debug"("PASS", "quote_escape:sym<nl>", " at pos=", rx240_pos)
  debug_221:
    .return (rx240_cur)
  rx240_restart:
.annotate 'line', 31
    if_null rx240_debug, debug_222
    rx240_cur."!cursor_debug"("NEXT", "quote_escape:sym<nl>")
  debug_222:
  rx240_fail:
    (rx240_rep, rx240_pos, $I10, $P10) = rx240_cur."!mark_fail"(0)
    lt rx240_pos, -1, rx240_done
    eq rx240_pos, -1, rx240_fail
    jump $I10
  rx240_done:
    rx240_cur."!cursor_fail"()
    if_null rx240_debug, debug_223
    rx240_cur."!cursor_debug"("FAIL", "quote_escape:sym<nl>")
  debug_223:
    .return (rx240_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<nl>"  :nsentry("!PREFIX__quote_escape:sym<nl>") :subid("76_1300051150.535") :method
.annotate 'line', 31
    new $P242, "ResizablePMCArray"
    push $P242, "\\n"
    .return ($P242)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<cr>"  :subid("77_1300051150.535") :method :outer("11_1300051150.535")
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
    if_null rx245_debug, debug_224
    rx245_cur."!cursor_debug"("START", "quote_escape:sym<cr>")
  debug_224:
    $I10 = self.'from'()
    ne $I10, -1, rxscan248_done
    goto rxscan248_scan
  rxscan248_loop:
    (rx245_pos) = rx245_cur."from"()
    inc rx245_pos
    rx245_cur."!cursor_from"(rx245_pos)
    ge rx245_pos, rx245_eos, rxscan248_done
  rxscan248_scan:
    set_addr $I10, rxscan248_loop
    rx245_cur."!mark_push"(0, rx245_pos, $I10)
  rxscan248_done:
.annotate 'line', 83
  # rx literal  "\\r"
    add $I11, rx245_pos, 2
    gt $I11, rx245_eos, rx245_fail
    sub $I11, rx245_pos, rx245_off
    substr $S10, rx245_tgt, $I11, 2
    ne $S10, "\\r", rx245_fail
    add rx245_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx245_cur."!cursor_pos"(rx245_pos)
    $P10 = rx245_cur."quotemod_check"("b")
    unless $P10, rx245_fail
  # rx pass
    rx245_cur."!cursor_pass"(rx245_pos, "quote_escape:sym<cr>")
    if_null rx245_debug, debug_225
    rx245_cur."!cursor_debug"("PASS", "quote_escape:sym<cr>", " at pos=", rx245_pos)
  debug_225:
    .return (rx245_cur)
  rx245_restart:
.annotate 'line', 31
    if_null rx245_debug, debug_226
    rx245_cur."!cursor_debug"("NEXT", "quote_escape:sym<cr>")
  debug_226:
  rx245_fail:
    (rx245_rep, rx245_pos, $I10, $P10) = rx245_cur."!mark_fail"(0)
    lt rx245_pos, -1, rx245_done
    eq rx245_pos, -1, rx245_fail
    jump $I10
  rx245_done:
    rx245_cur."!cursor_fail"()
    if_null rx245_debug, debug_227
    rx245_cur."!cursor_debug"("FAIL", "quote_escape:sym<cr>")
  debug_227:
    .return (rx245_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<cr>"  :nsentry("!PREFIX__quote_escape:sym<cr>") :subid("78_1300051150.535") :method
.annotate 'line', 31
    new $P247, "ResizablePMCArray"
    push $P247, "\\r"
    .return ($P247)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<tab>"  :subid("79_1300051150.535") :method :outer("11_1300051150.535")
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
    if_null rx250_debug, debug_228
    rx250_cur."!cursor_debug"("START", "quote_escape:sym<tab>")
  debug_228:
    $I10 = self.'from'()
    ne $I10, -1, rxscan253_done
    goto rxscan253_scan
  rxscan253_loop:
    (rx250_pos) = rx250_cur."from"()
    inc rx250_pos
    rx250_cur."!cursor_from"(rx250_pos)
    ge rx250_pos, rx250_eos, rxscan253_done
  rxscan253_scan:
    set_addr $I10, rxscan253_loop
    rx250_cur."!mark_push"(0, rx250_pos, $I10)
  rxscan253_done:
.annotate 'line', 84
  # rx literal  "\\t"
    add $I11, rx250_pos, 2
    gt $I11, rx250_eos, rx250_fail
    sub $I11, rx250_pos, rx250_off
    substr $S10, rx250_tgt, $I11, 2
    ne $S10, "\\t", rx250_fail
    add rx250_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx250_cur."!cursor_pos"(rx250_pos)
    $P10 = rx250_cur."quotemod_check"("b")
    unless $P10, rx250_fail
  # rx pass
    rx250_cur."!cursor_pass"(rx250_pos, "quote_escape:sym<tab>")
    if_null rx250_debug, debug_229
    rx250_cur."!cursor_debug"("PASS", "quote_escape:sym<tab>", " at pos=", rx250_pos)
  debug_229:
    .return (rx250_cur)
  rx250_restart:
.annotate 'line', 31
    if_null rx250_debug, debug_230
    rx250_cur."!cursor_debug"("NEXT", "quote_escape:sym<tab>")
  debug_230:
  rx250_fail:
    (rx250_rep, rx250_pos, $I10, $P10) = rx250_cur."!mark_fail"(0)
    lt rx250_pos, -1, rx250_done
    eq rx250_pos, -1, rx250_fail
    jump $I10
  rx250_done:
    rx250_cur."!cursor_fail"()
    if_null rx250_debug, debug_231
    rx250_cur."!cursor_debug"("FAIL", "quote_escape:sym<tab>")
  debug_231:
    .return (rx250_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<tab>"  :nsentry("!PREFIX__quote_escape:sym<tab>") :subid("80_1300051150.535") :method
.annotate 'line', 31
    new $P252, "ResizablePMCArray"
    push $P252, "\\t"
    .return ($P252)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<ff>"  :subid("81_1300051150.535") :method :outer("11_1300051150.535")
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
    if_null rx255_debug, debug_232
    rx255_cur."!cursor_debug"("START", "quote_escape:sym<ff>")
  debug_232:
    $I10 = self.'from'()
    ne $I10, -1, rxscan258_done
    goto rxscan258_scan
  rxscan258_loop:
    (rx255_pos) = rx255_cur."from"()
    inc rx255_pos
    rx255_cur."!cursor_from"(rx255_pos)
    ge rx255_pos, rx255_eos, rxscan258_done
  rxscan258_scan:
    set_addr $I10, rxscan258_loop
    rx255_cur."!mark_push"(0, rx255_pos, $I10)
  rxscan258_done:
.annotate 'line', 85
  # rx literal  "\\f"
    add $I11, rx255_pos, 2
    gt $I11, rx255_eos, rx255_fail
    sub $I11, rx255_pos, rx255_off
    substr $S10, rx255_tgt, $I11, 2
    ne $S10, "\\f", rx255_fail
    add rx255_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx255_cur."!cursor_pos"(rx255_pos)
    $P10 = rx255_cur."quotemod_check"("b")
    unless $P10, rx255_fail
  # rx pass
    rx255_cur."!cursor_pass"(rx255_pos, "quote_escape:sym<ff>")
    if_null rx255_debug, debug_233
    rx255_cur."!cursor_debug"("PASS", "quote_escape:sym<ff>", " at pos=", rx255_pos)
  debug_233:
    .return (rx255_cur)
  rx255_restart:
.annotate 'line', 31
    if_null rx255_debug, debug_234
    rx255_cur."!cursor_debug"("NEXT", "quote_escape:sym<ff>")
  debug_234:
  rx255_fail:
    (rx255_rep, rx255_pos, $I10, $P10) = rx255_cur."!mark_fail"(0)
    lt rx255_pos, -1, rx255_done
    eq rx255_pos, -1, rx255_fail
    jump $I10
  rx255_done:
    rx255_cur."!cursor_fail"()
    if_null rx255_debug, debug_235
    rx255_cur."!cursor_debug"("FAIL", "quote_escape:sym<ff>")
  debug_235:
    .return (rx255_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<ff>"  :nsentry("!PREFIX__quote_escape:sym<ff>") :subid("82_1300051150.535") :method
.annotate 'line', 31
    new $P257, "ResizablePMCArray"
    push $P257, "\\f"
    .return ($P257)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<esc>"  :subid("83_1300051150.535") :method :outer("11_1300051150.535")
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
    if_null rx260_debug, debug_236
    rx260_cur."!cursor_debug"("START", "quote_escape:sym<esc>")
  debug_236:
    $I10 = self.'from'()
    ne $I10, -1, rxscan263_done
    goto rxscan263_scan
  rxscan263_loop:
    (rx260_pos) = rx260_cur."from"()
    inc rx260_pos
    rx260_cur."!cursor_from"(rx260_pos)
    ge rx260_pos, rx260_eos, rxscan263_done
  rxscan263_scan:
    set_addr $I10, rxscan263_loop
    rx260_cur."!mark_push"(0, rx260_pos, $I10)
  rxscan263_done:
.annotate 'line', 86
  # rx literal  "\\e"
    add $I11, rx260_pos, 2
    gt $I11, rx260_eos, rx260_fail
    sub $I11, rx260_pos, rx260_off
    substr $S10, rx260_tgt, $I11, 2
    ne $S10, "\\e", rx260_fail
    add rx260_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx260_cur."!cursor_pos"(rx260_pos)
    $P10 = rx260_cur."quotemod_check"("b")
    unless $P10, rx260_fail
  # rx pass
    rx260_cur."!cursor_pass"(rx260_pos, "quote_escape:sym<esc>")
    if_null rx260_debug, debug_237
    rx260_cur."!cursor_debug"("PASS", "quote_escape:sym<esc>", " at pos=", rx260_pos)
  debug_237:
    .return (rx260_cur)
  rx260_restart:
.annotate 'line', 31
    if_null rx260_debug, debug_238
    rx260_cur."!cursor_debug"("NEXT", "quote_escape:sym<esc>")
  debug_238:
  rx260_fail:
    (rx260_rep, rx260_pos, $I10, $P10) = rx260_cur."!mark_fail"(0)
    lt rx260_pos, -1, rx260_done
    eq rx260_pos, -1, rx260_fail
    jump $I10
  rx260_done:
    rx260_cur."!cursor_fail"()
    if_null rx260_debug, debug_239
    rx260_cur."!cursor_debug"("FAIL", "quote_escape:sym<esc>")
  debug_239:
    .return (rx260_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<esc>"  :nsentry("!PREFIX__quote_escape:sym<esc>") :subid("84_1300051150.535") :method
.annotate 'line', 31
    new $P262, "ResizablePMCArray"
    push $P262, "\\e"
    .return ($P262)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<hex>"  :subid("85_1300051150.535") :method :outer("11_1300051150.535")
.annotate 'line', 31
    .local string rx265_tgt
    .local int rx265_pos
    .local int rx265_off
    .local int rx265_eos
    .local int rx265_rep
    .local pmc rx265_cur
    .local pmc rx265_debug
    (rx265_cur, rx265_pos, rx265_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx265_cur
    .local pmc match
    .lex "$/", match
    length rx265_eos, rx265_tgt
    gt rx265_pos, rx265_eos, rx265_done
    set rx265_off, 0
    lt rx265_pos, 2, rx265_start
    sub rx265_off, rx265_pos, 1
    substr rx265_tgt, rx265_tgt, rx265_off
  rx265_start:
    eq $I10, 1, rx265_restart
    if_null rx265_debug, debug_240
    rx265_cur."!cursor_debug"("START", "quote_escape:sym<hex>")
  debug_240:
    $I10 = self.'from'()
    ne $I10, -1, rxscan268_done
    goto rxscan268_scan
  rxscan268_loop:
    (rx265_pos) = rx265_cur."from"()
    inc rx265_pos
    rx265_cur."!cursor_from"(rx265_pos)
    ge rx265_pos, rx265_eos, rxscan268_done
  rxscan268_scan:
    set_addr $I10, rxscan268_loop
    rx265_cur."!mark_push"(0, rx265_pos, $I10)
  rxscan268_done:
.annotate 'line', 88
  # rx literal  unicode:"\\x"
    add $I11, rx265_pos, 2
    gt $I11, rx265_eos, rx265_fail
    sub $I11, rx265_pos, rx265_off
    substr $S10, rx265_tgt, $I11, 2
    ne $S10, unicode:"\\x", rx265_fail
    add rx265_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx265_cur."!cursor_pos"(rx265_pos)
    $P10 = rx265_cur."quotemod_check"("b")
    unless $P10, rx265_fail
  alt269_0:
.annotate 'line', 89
    set_addr $I10, alt269_1
    rx265_cur."!mark_push"(0, rx265_pos, $I10)
  # rx subrule "hexint" subtype=capture negate=
    rx265_cur."!cursor_pos"(rx265_pos)
    $P10 = rx265_cur."hexint"()
    unless $P10, rx265_fail
    rx265_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexint")
    rx265_pos = $P10."pos"()
    goto alt269_end
  alt269_1:
  # rx literal  "["
    add $I11, rx265_pos, 1
    gt $I11, rx265_eos, rx265_fail
    sub $I11, rx265_pos, rx265_off
    ord $I11, rx265_tgt, $I11
    ne $I11, 91, rx265_fail
    add rx265_pos, 1
  # rx subrule "hexints" subtype=capture negate=
    rx265_cur."!cursor_pos"(rx265_pos)
    $P10 = rx265_cur."hexints"()
    unless $P10, rx265_fail
    rx265_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexints")
    rx265_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx265_pos, 1
    gt $I11, rx265_eos, rx265_fail
    sub $I11, rx265_pos, rx265_off
    ord $I11, rx265_tgt, $I11
    ne $I11, 93, rx265_fail
    add rx265_pos, 1
  alt269_end:
.annotate 'line', 87
  # rx pass
    rx265_cur."!cursor_pass"(rx265_pos, "quote_escape:sym<hex>")
    if_null rx265_debug, debug_241
    rx265_cur."!cursor_debug"("PASS", "quote_escape:sym<hex>", " at pos=", rx265_pos)
  debug_241:
    .return (rx265_cur)
  rx265_restart:
.annotate 'line', 31
    if_null rx265_debug, debug_242
    rx265_cur."!cursor_debug"("NEXT", "quote_escape:sym<hex>")
  debug_242:
  rx265_fail:
    (rx265_rep, rx265_pos, $I10, $P10) = rx265_cur."!mark_fail"(0)
    lt rx265_pos, -1, rx265_done
    eq rx265_pos, -1, rx265_fail
    jump $I10
  rx265_done:
    rx265_cur."!cursor_fail"()
    if_null rx265_debug, debug_243
    rx265_cur."!cursor_debug"("FAIL", "quote_escape:sym<hex>")
  debug_243:
    .return (rx265_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<hex>"  :nsentry("!PREFIX__quote_escape:sym<hex>") :subid("86_1300051150.535") :method
.annotate 'line', 31
    new $P267, "ResizablePMCArray"
    push $P267, unicode:"\\x"
    .return ($P267)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<oct>"  :subid("87_1300051150.535") :method :outer("11_1300051150.535")
.annotate 'line', 31
    .local string rx271_tgt
    .local int rx271_pos
    .local int rx271_off
    .local int rx271_eos
    .local int rx271_rep
    .local pmc rx271_cur
    .local pmc rx271_debug
    (rx271_cur, rx271_pos, rx271_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx271_cur
    .local pmc match
    .lex "$/", match
    length rx271_eos, rx271_tgt
    gt rx271_pos, rx271_eos, rx271_done
    set rx271_off, 0
    lt rx271_pos, 2, rx271_start
    sub rx271_off, rx271_pos, 1
    substr rx271_tgt, rx271_tgt, rx271_off
  rx271_start:
    eq $I10, 1, rx271_restart
    if_null rx271_debug, debug_244
    rx271_cur."!cursor_debug"("START", "quote_escape:sym<oct>")
  debug_244:
    $I10 = self.'from'()
    ne $I10, -1, rxscan274_done
    goto rxscan274_scan
  rxscan274_loop:
    (rx271_pos) = rx271_cur."from"()
    inc rx271_pos
    rx271_cur."!cursor_from"(rx271_pos)
    ge rx271_pos, rx271_eos, rxscan274_done
  rxscan274_scan:
    set_addr $I10, rxscan274_loop
    rx271_cur."!mark_push"(0, rx271_pos, $I10)
  rxscan274_done:
.annotate 'line', 92
  # rx literal  "\\o"
    add $I11, rx271_pos, 2
    gt $I11, rx271_eos, rx271_fail
    sub $I11, rx271_pos, rx271_off
    substr $S10, rx271_tgt, $I11, 2
    ne $S10, "\\o", rx271_fail
    add rx271_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx271_cur."!cursor_pos"(rx271_pos)
    $P10 = rx271_cur."quotemod_check"("b")
    unless $P10, rx271_fail
  alt275_0:
.annotate 'line', 93
    set_addr $I10, alt275_1
    rx271_cur."!mark_push"(0, rx271_pos, $I10)
  # rx subrule "octint" subtype=capture negate=
    rx271_cur."!cursor_pos"(rx271_pos)
    $P10 = rx271_cur."octint"()
    unless $P10, rx271_fail
    rx271_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octint")
    rx271_pos = $P10."pos"()
    goto alt275_end
  alt275_1:
  # rx literal  "["
    add $I11, rx271_pos, 1
    gt $I11, rx271_eos, rx271_fail
    sub $I11, rx271_pos, rx271_off
    ord $I11, rx271_tgt, $I11
    ne $I11, 91, rx271_fail
    add rx271_pos, 1
  # rx subrule "octints" subtype=capture negate=
    rx271_cur."!cursor_pos"(rx271_pos)
    $P10 = rx271_cur."octints"()
    unless $P10, rx271_fail
    rx271_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octints")
    rx271_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx271_pos, 1
    gt $I11, rx271_eos, rx271_fail
    sub $I11, rx271_pos, rx271_off
    ord $I11, rx271_tgt, $I11
    ne $I11, 93, rx271_fail
    add rx271_pos, 1
  alt275_end:
.annotate 'line', 91
  # rx pass
    rx271_cur."!cursor_pass"(rx271_pos, "quote_escape:sym<oct>")
    if_null rx271_debug, debug_245
    rx271_cur."!cursor_debug"("PASS", "quote_escape:sym<oct>", " at pos=", rx271_pos)
  debug_245:
    .return (rx271_cur)
  rx271_restart:
.annotate 'line', 31
    if_null rx271_debug, debug_246
    rx271_cur."!cursor_debug"("NEXT", "quote_escape:sym<oct>")
  debug_246:
  rx271_fail:
    (rx271_rep, rx271_pos, $I10, $P10) = rx271_cur."!mark_fail"(0)
    lt rx271_pos, -1, rx271_done
    eq rx271_pos, -1, rx271_fail
    jump $I10
  rx271_done:
    rx271_cur."!cursor_fail"()
    if_null rx271_debug, debug_247
    rx271_cur."!cursor_debug"("FAIL", "quote_escape:sym<oct>")
  debug_247:
    .return (rx271_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<oct>"  :nsentry("!PREFIX__quote_escape:sym<oct>") :subid("88_1300051150.535") :method
.annotate 'line', 31
    new $P273, "ResizablePMCArray"
    push $P273, "\\o"
    .return ($P273)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<chr>"  :subid("89_1300051150.535") :method :outer("11_1300051150.535")
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
    if_null rx277_debug, debug_248
    rx277_cur."!cursor_debug"("START", "quote_escape:sym<chr>")
  debug_248:
    $I10 = self.'from'()
    ne $I10, -1, rxscan280_done
    goto rxscan280_scan
  rxscan280_loop:
    (rx277_pos) = rx277_cur."from"()
    inc rx277_pos
    rx277_cur."!cursor_from"(rx277_pos)
    ge rx277_pos, rx277_eos, rxscan280_done
  rxscan280_scan:
    set_addr $I10, rxscan280_loop
    rx277_cur."!mark_push"(0, rx277_pos, $I10)
  rxscan280_done:
.annotate 'line', 95
  # rx literal  "\\c"
    add $I11, rx277_pos, 2
    gt $I11, rx277_eos, rx277_fail
    sub $I11, rx277_pos, rx277_off
    substr $S10, rx277_tgt, $I11, 2
    ne $S10, "\\c", rx277_fail
    add rx277_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx277_cur."!cursor_pos"(rx277_pos)
    $P10 = rx277_cur."quotemod_check"("b")
    unless $P10, rx277_fail
  # rx subrule "charspec" subtype=capture negate=
    rx277_cur."!cursor_pos"(rx277_pos)
    $P10 = rx277_cur."charspec"()
    unless $P10, rx277_fail
    rx277_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charspec")
    rx277_pos = $P10."pos"()
  # rx pass
    rx277_cur."!cursor_pass"(rx277_pos, "quote_escape:sym<chr>")
    if_null rx277_debug, debug_249
    rx277_cur."!cursor_debug"("PASS", "quote_escape:sym<chr>", " at pos=", rx277_pos)
  debug_249:
    .return (rx277_cur)
  rx277_restart:
.annotate 'line', 31
    if_null rx277_debug, debug_250
    rx277_cur."!cursor_debug"("NEXT", "quote_escape:sym<chr>")
  debug_250:
  rx277_fail:
    (rx277_rep, rx277_pos, $I10, $P10) = rx277_cur."!mark_fail"(0)
    lt rx277_pos, -1, rx277_done
    eq rx277_pos, -1, rx277_fail
    jump $I10
  rx277_done:
    rx277_cur."!cursor_fail"()
    if_null rx277_debug, debug_251
    rx277_cur."!cursor_debug"("FAIL", "quote_escape:sym<chr>")
  debug_251:
    .return (rx277_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<chr>"  :nsentry("!PREFIX__quote_escape:sym<chr>") :subid("90_1300051150.535") :method
.annotate 'line', 31
    new $P279, "ResizablePMCArray"
    push $P279, "\\c"
    .return ($P279)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<0>"  :subid("91_1300051150.535") :method :outer("11_1300051150.535")
.annotate 'line', 31
    .local string rx282_tgt
    .local int rx282_pos
    .local int rx282_off
    .local int rx282_eos
    .local int rx282_rep
    .local pmc rx282_cur
    .local pmc rx282_debug
    (rx282_cur, rx282_pos, rx282_tgt, $I10) = self."!cursor_start"()
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
    if_null rx282_debug, debug_252
    rx282_cur."!cursor_debug"("START", "quote_escape:sym<0>")
  debug_252:
    $I10 = self.'from'()
    ne $I10, -1, rxscan285_done
    goto rxscan285_scan
  rxscan285_loop:
    (rx282_pos) = rx282_cur."from"()
    inc rx282_pos
    rx282_cur."!cursor_from"(rx282_pos)
    ge rx282_pos, rx282_eos, rxscan285_done
  rxscan285_scan:
    set_addr $I10, rxscan285_loop
    rx282_cur."!mark_push"(0, rx282_pos, $I10)
  rxscan285_done:
.annotate 'line', 96
  # rx literal  "\\"
    add $I11, rx282_pos, 1
    gt $I11, rx282_eos, rx282_fail
    sub $I11, rx282_pos, rx282_off
    ord $I11, rx282_tgt, $I11
    ne $I11, 92, rx282_fail
    add rx282_pos, 1
  # rx subcapture "sym"
    set_addr $I10, rxcap_286_fail
    rx282_cur."!mark_push"(0, rx282_pos, $I10)
  # rx literal  "0"
    add $I11, rx282_pos, 1
    gt $I11, rx282_eos, rx282_fail
    sub $I11, rx282_pos, rx282_off
    ord $I11, rx282_tgt, $I11
    ne $I11, 48, rx282_fail
    add rx282_pos, 1
    set_addr $I10, rxcap_286_fail
    ($I12, $I11) = rx282_cur."!mark_peek"($I10)
    rx282_cur."!cursor_pos"($I11)
    ($P10) = rx282_cur."!cursor_start"()
    $P10."!cursor_pass"(rx282_pos, "")
    rx282_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_286_done
  rxcap_286_fail:
    goto rx282_fail
  rxcap_286_done:
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx282_cur."!cursor_pos"(rx282_pos)
    $P10 = rx282_cur."quotemod_check"("b")
    unless $P10, rx282_fail
  # rx pass
    rx282_cur."!cursor_pass"(rx282_pos, "quote_escape:sym<0>")
    if_null rx282_debug, debug_253
    rx282_cur."!cursor_debug"("PASS", "quote_escape:sym<0>", " at pos=", rx282_pos)
  debug_253:
    .return (rx282_cur)
  rx282_restart:
.annotate 'line', 31
    if_null rx282_debug, debug_254
    rx282_cur."!cursor_debug"("NEXT", "quote_escape:sym<0>")
  debug_254:
  rx282_fail:
    (rx282_rep, rx282_pos, $I10, $P10) = rx282_cur."!mark_fail"(0)
    lt rx282_pos, -1, rx282_done
    eq rx282_pos, -1, rx282_fail
    jump $I10
  rx282_done:
    rx282_cur."!cursor_fail"()
    if_null rx282_debug, debug_255
    rx282_cur."!cursor_debug"("FAIL", "quote_escape:sym<0>")
  debug_255:
    .return (rx282_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<0>"  :nsentry("!PREFIX__quote_escape:sym<0>") :subid("92_1300051150.535") :method
.annotate 'line', 31
    new $P284, "ResizablePMCArray"
    push $P284, "\\0"
    .return ($P284)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<misc>"  :subid("93_1300051150.535") :method :outer("11_1300051150.535")
.annotate 'line', 31
    .const 'Sub' $P307 = "97_1300051150.535" 
    capture_lex $P307
    .const 'Sub' $P300 = "96_1300051150.535" 
    capture_lex $P300
    .const 'Sub' $P295 = "95_1300051150.535" 
    capture_lex $P295
    .local string rx288_tgt
    .local int rx288_pos
    .local int rx288_off
    .local int rx288_eos
    .local int rx288_rep
    .local pmc rx288_cur
    .local pmc rx288_debug
    (rx288_cur, rx288_pos, rx288_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx288_cur
    .local pmc match
    .lex "$/", match
    length rx288_eos, rx288_tgt
    gt rx288_pos, rx288_eos, rx288_done
    set rx288_off, 0
    lt rx288_pos, 2, rx288_start
    sub rx288_off, rx288_pos, 1
    substr rx288_tgt, rx288_tgt, rx288_off
  rx288_start:
    eq $I10, 1, rx288_restart
    if_null rx288_debug, debug_256
    rx288_cur."!cursor_debug"("START", "quote_escape:sym<misc>")
  debug_256:
    $I10 = self.'from'()
    ne $I10, -1, rxscan291_done
    goto rxscan291_scan
  rxscan291_loop:
    (rx288_pos) = rx288_cur."from"()
    inc rx288_pos
    rx288_cur."!cursor_from"(rx288_pos)
    ge rx288_pos, rx288_eos, rxscan291_done
  rxscan291_scan:
    set_addr $I10, rxscan291_loop
    rx288_cur."!mark_push"(0, rx288_pos, $I10)
  rxscan291_done:
.annotate 'line', 98
    rx288_cur."!cursor_pos"(rx288_pos)
    find_lex $P292, unicode:"$\x{a2}"
    $P293 = $P292."MATCH"()
    store_lex "$/", $P293
    .const 'Sub' $P295 = "95_1300051150.535" 
    capture_lex $P295
    $P296 = $P295()
  # rx literal  "\\"
    add $I11, rx288_pos, 1
    gt $I11, rx288_eos, rx288_fail
    sub $I11, rx288_pos, rx288_off
    ord $I11, rx288_tgt, $I11
    ne $I11, 92, rx288_fail
    add rx288_pos, 1
  alt297_0:
.annotate 'line', 99
    set_addr $I10, alt297_1
    rx288_cur."!mark_push"(0, rx288_pos, $I10)
.annotate 'line', 100
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx288_cur."!cursor_pos"(rx288_pos)
    $P10 = rx288_cur."quotemod_check"("b")
    unless $P10, rx288_fail
  alt298_0:
.annotate 'line', 101
    set_addr $I10, alt298_1
    rx288_cur."!mark_push"(0, rx288_pos, $I10)
.annotate 'line', 102
  # rx subrule $P300 subtype=capture negate=
    rx288_cur."!cursor_pos"(rx288_pos)
    .const 'Sub' $P300 = "96_1300051150.535" 
    capture_lex $P300
    $P10 = rx288_cur.$P300()
    unless $P10, rx288_fail
    rx288_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("textqq")
    rx288_pos = $P10."pos"()
    goto alt298_end
  alt298_1:
.annotate 'line', 103
  # rx subcapture "x"
    set_addr $I10, rxcap_303_fail
    rx288_cur."!mark_push"(0, rx288_pos, $I10)
  # rx charclass w
    ge rx288_pos, rx288_eos, rx288_fail
    sub $I10, rx288_pos, rx288_off
    is_cclass $I11, 8192, rx288_tgt, $I10
    unless $I11, rx288_fail
    inc rx288_pos
    set_addr $I10, rxcap_303_fail
    ($I12, $I11) = rx288_cur."!mark_peek"($I10)
    rx288_cur."!cursor_pos"($I11)
    ($P10) = rx288_cur."!cursor_start"()
    $P10."!cursor_pass"(rx288_pos, "")
    rx288_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("x")
    goto rxcap_303_done
  rxcap_303_fail:
    goto rx288_fail
  rxcap_303_done:
    rx288_cur."!cursor_pos"(rx288_pos)
    find_lex $P304, unicode:"$\x{a2}"
    $P305 = $P304."MATCH"()
    store_lex "$/", $P305
    .const 'Sub' $P307 = "97_1300051150.535" 
    capture_lex $P307
    $P317 = $P307()
  alt298_end:
.annotate 'line', 100
    goto alt297_end
  alt297_1:
.annotate 'line', 105
  # rx subcapture "textq"
    set_addr $I10, rxcap_318_fail
    rx288_cur."!mark_push"(0, rx288_pos, $I10)
  # rx charclass .
    ge rx288_pos, rx288_eos, rx288_fail
    inc rx288_pos
    set_addr $I10, rxcap_318_fail
    ($I12, $I11) = rx288_cur."!mark_peek"($I10)
    rx288_cur."!cursor_pos"($I11)
    ($P10) = rx288_cur."!cursor_start"()
    $P10."!cursor_pass"(rx288_pos, "")
    rx288_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("textq")
    goto rxcap_318_done
  rxcap_318_fail:
    goto rx288_fail
  rxcap_318_done:
  alt297_end:
.annotate 'line', 97
  # rx pass
    rx288_cur."!cursor_pass"(rx288_pos, "quote_escape:sym<misc>")
    if_null rx288_debug, debug_263
    rx288_cur."!cursor_debug"("PASS", "quote_escape:sym<misc>", " at pos=", rx288_pos)
  debug_263:
    .return (rx288_cur)
  rx288_restart:
.annotate 'line', 31
    if_null rx288_debug, debug_264
    rx288_cur."!cursor_debug"("NEXT", "quote_escape:sym<misc>")
  debug_264:
  rx288_fail:
    (rx288_rep, rx288_pos, $I10, $P10) = rx288_cur."!mark_fail"(0)
    lt rx288_pos, -1, rx288_done
    eq rx288_pos, -1, rx288_fail
    jump $I10
  rx288_done:
    rx288_cur."!cursor_fail"()
    if_null rx288_debug, debug_265
    rx288_cur."!cursor_debug"("FAIL", "quote_escape:sym<misc>")
  debug_265:
    .return (rx288_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<misc>"  :nsentry("!PREFIX__quote_escape:sym<misc>") :subid("94_1300051150.535") :method
.annotate 'line', 31
    new $P290, "ResizablePMCArray"
    push $P290, ""
    .return ($P290)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block294"  :anon :subid("95_1300051150.535") :outer("93_1300051150.535")
.annotate 'line', 98
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block299"  :anon :subid("96_1300051150.535") :method :outer("93_1300051150.535")
.annotate 'line', 102
    .local string rx301_tgt
    .local int rx301_pos
    .local int rx301_off
    .local int rx301_eos
    .local int rx301_rep
    .local pmc rx301_cur
    .local pmc rx301_debug
    (rx301_cur, rx301_pos, rx301_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx301_cur
    .local pmc match
    .lex "$/", match
    length rx301_eos, rx301_tgt
    gt rx301_pos, rx301_eos, rx301_done
    set rx301_off, 0
    lt rx301_pos, 2, rx301_start
    sub rx301_off, rx301_pos, 1
    substr rx301_tgt, rx301_tgt, rx301_off
  rx301_start:
    eq $I10, 1, rx301_restart
    if_null rx301_debug, debug_257
    rx301_cur."!cursor_debug"("START", "")
  debug_257:
    $I10 = self.'from'()
    ne $I10, -1, rxscan302_done
    goto rxscan302_scan
  rxscan302_loop:
    (rx301_pos) = rx301_cur."from"()
    inc rx301_pos
    rx301_cur."!cursor_from"(rx301_pos)
    ge rx301_pos, rx301_eos, rxscan302_done
  rxscan302_scan:
    set_addr $I10, rxscan302_loop
    rx301_cur."!mark_push"(0, rx301_pos, $I10)
  rxscan302_done:
  # rx charclass W
    ge rx301_pos, rx301_eos, rx301_fail
    sub $I10, rx301_pos, rx301_off
    is_cclass $I11, 8192, rx301_tgt, $I10
    if $I11, rx301_fail
    inc rx301_pos
  # rx pass
    rx301_cur."!cursor_pass"(rx301_pos, "")
    if_null rx301_debug, debug_258
    rx301_cur."!cursor_debug"("PASS", "", " at pos=", rx301_pos)
  debug_258:
    .return (rx301_cur)
  rx301_restart:
    if_null rx301_debug, debug_259
    rx301_cur."!cursor_debug"("NEXT", "")
  debug_259:
  rx301_fail:
    (rx301_rep, rx301_pos, $I10, $P10) = rx301_cur."!mark_fail"(0)
    lt rx301_pos, -1, rx301_done
    eq rx301_pos, -1, rx301_fail
    jump $I10
  rx301_done:
    rx301_cur."!cursor_fail"()
    if_null rx301_debug, debug_260
    rx301_cur."!cursor_debug"("FAIL", "")
  debug_260:
    .return (rx301_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block306"  :anon :subid("97_1300051150.535") :outer("93_1300051150.535")
.annotate 'line', 103
    find_lex $P308, "$/"
    $P309 = $P308."CURSOR"()
    new $P310, "String"
    assign $P310, "Unrecognized backslash sequence: '\\"
    find_lex $P311, "$/"
    unless_null $P311, vivify_261
    $P311 = root_new ['parrot';'Hash']
  vivify_261:
    set $P312, $P311["x"]
    unless_null $P312, vivify_262
    new $P312, "Undef"
  vivify_262:
    $S313 = $P312."Str"()
    concat $P314, $P310, $S313
    concat $P315, $P314, "'"
    $P316 = $P309."panic"($P315)
    .return ($P316)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "charname"  :subid("98_1300051150.535") :method :outer("11_1300051150.535")
.annotate 'line', 31
    .const 'Sub' $P329 = "100_1300051150.535" 
    capture_lex $P329
    .local string rx320_tgt
    .local int rx320_pos
    .local int rx320_off
    .local int rx320_eos
    .local int rx320_rep
    .local pmc rx320_cur
    .local pmc rx320_debug
    (rx320_cur, rx320_pos, rx320_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx320_cur
    .local pmc match
    .lex "$/", match
    length rx320_eos, rx320_tgt
    gt rx320_pos, rx320_eos, rx320_done
    set rx320_off, 0
    lt rx320_pos, 2, rx320_start
    sub rx320_off, rx320_pos, 1
    substr rx320_tgt, rx320_tgt, rx320_off
  rx320_start:
    eq $I10, 1, rx320_restart
    if_null rx320_debug, debug_266
    rx320_cur."!cursor_debug"("START", "charname")
  debug_266:
    $I10 = self.'from'()
    ne $I10, -1, rxscan324_done
    goto rxscan324_scan
  rxscan324_loop:
    (rx320_pos) = rx320_cur."from"()
    inc rx320_pos
    rx320_cur."!cursor_from"(rx320_pos)
    ge rx320_pos, rx320_eos, rxscan324_done
  rxscan324_scan:
    set_addr $I10, rxscan324_loop
    rx320_cur."!mark_push"(0, rx320_pos, $I10)
  rxscan324_done:
  alt325_0:
.annotate 'line', 109
    set_addr $I10, alt325_1
    rx320_cur."!mark_push"(0, rx320_pos, $I10)
.annotate 'line', 110
  # rx subrule "integer" subtype=capture negate=
    rx320_cur."!cursor_pos"(rx320_pos)
    $P10 = rx320_cur."integer"()
    unless $P10, rx320_fail
    rx320_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("integer")
    rx320_pos = $P10."pos"()
    goto alt325_end
  alt325_1:
.annotate 'line', 111
  # rx enumcharlist negate=0 
    ge rx320_pos, rx320_eos, rx320_fail
    sub $I10, rx320_pos, rx320_off
    substr $S10, rx320_tgt, $I10, 1
    index $I11, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ", $S10
    lt $I11, 0, rx320_fail
    inc rx320_pos
  # rx rxquantf326 ** 0..*
    set_addr $I10, rxquantf326_loop
    rx320_cur."!mark_push"(0, rx320_pos, $I10)
    goto rxquantf326_done
  rxquantf326_loop:
  # rx enumcharlist negate=1 
    ge rx320_pos, rx320_eos, rx320_fail
    sub $I10, rx320_pos, rx320_off
    substr $S10, rx320_tgt, $I10, 1
    index $I11, "],#", $S10
    ge $I11, 0, rx320_fail
    inc rx320_pos
    set_addr $I10, rxquantf326_loop
    rx320_cur."!mark_push"(rx320_rep, rx320_pos, $I10)
  rxquantf326_done:
  # rx enumcharlist negate=0 
    ge rx320_pos, rx320_eos, rx320_fail
    sub $I10, rx320_pos, rx320_off
    substr $S10, rx320_tgt, $I10, 1
    index $I11, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ)", $S10
    lt $I11, 0, rx320_fail
    inc rx320_pos
.annotate 'line', 112
  # rx subrule "before" subtype=zerowidth negate=
    rx320_cur."!cursor_pos"(rx320_pos)
    .const 'Sub' $P329 = "100_1300051150.535" 
    capture_lex $P329
    $P10 = rx320_cur."before"($P329)
    unless $P10, rx320_fail
  alt325_end:
.annotate 'line', 109
  # rx pass
    rx320_cur."!cursor_pass"(rx320_pos, "charname")
    if_null rx320_debug, debug_271
    rx320_cur."!cursor_debug"("PASS", "charname", " at pos=", rx320_pos)
  debug_271:
    .return (rx320_cur)
  rx320_restart:
.annotate 'line', 31
    if_null rx320_debug, debug_272
    rx320_cur."!cursor_debug"("NEXT", "charname")
  debug_272:
  rx320_fail:
    (rx320_rep, rx320_pos, $I10, $P10) = rx320_cur."!mark_fail"(0)
    lt rx320_pos, -1, rx320_done
    eq rx320_pos, -1, rx320_fail
    jump $I10
  rx320_done:
    rx320_cur."!cursor_fail"()
    if_null rx320_debug, debug_273
    rx320_cur."!cursor_debug"("FAIL", "charname")
  debug_273:
    .return (rx320_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charname"  :nsentry("!PREFIX__charname") :subid("99_1300051150.535") :method
.annotate 'line', 31
    $P322 = self."!PREFIX__!subrule"("integer", "")
    new $P323, "ResizablePMCArray"
    push $P323, "Z"
    push $P323, "Y"
    push $P323, "X"
    push $P323, "W"
    push $P323, "V"
    push $P323, "U"
    push $P323, "T"
    push $P323, "S"
    push $P323, "R"
    push $P323, "Q"
    push $P323, "P"
    push $P323, "O"
    push $P323, "N"
    push $P323, "M"
    push $P323, "L"
    push $P323, "K"
    push $P323, "J"
    push $P323, "I"
    push $P323, "H"
    push $P323, "G"
    push $P323, "F"
    push $P323, "E"
    push $P323, "D"
    push $P323, "C"
    push $P323, "B"
    push $P323, "A"
    push $P323, "z"
    push $P323, "y"
    push $P323, "x"
    push $P323, "w"
    push $P323, "v"
    push $P323, "u"
    push $P323, "t"
    push $P323, "s"
    push $P323, "r"
    push $P323, "q"
    push $P323, "p"
    push $P323, "o"
    push $P323, "n"
    push $P323, "m"
    push $P323, "l"
    push $P323, "k"
    push $P323, "j"
    push $P323, "i"
    push $P323, "h"
    push $P323, "g"
    push $P323, "f"
    push $P323, "e"
    push $P323, "d"
    push $P323, "c"
    push $P323, "b"
    push $P323, "a"
    push $P323, $P322
    .return ($P323)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block328"  :anon :subid("100_1300051150.535") :method :outer("98_1300051150.535")
.annotate 'line', 112
    .local string rx330_tgt
    .local int rx330_pos
    .local int rx330_off
    .local int rx330_eos
    .local int rx330_rep
    .local pmc rx330_cur
    .local pmc rx330_debug
    (rx330_cur, rx330_pos, rx330_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx330_cur
    .local pmc match
    .lex "$/", match
    length rx330_eos, rx330_tgt
    gt rx330_pos, rx330_eos, rx330_done
    set rx330_off, 0
    lt rx330_pos, 2, rx330_start
    sub rx330_off, rx330_pos, 1
    substr rx330_tgt, rx330_tgt, rx330_off
  rx330_start:
    eq $I10, 1, rx330_restart
    if_null rx330_debug, debug_267
    rx330_cur."!cursor_debug"("START", "")
  debug_267:
    $I10 = self.'from'()
    ne $I10, -1, rxscan331_done
    goto rxscan331_scan
  rxscan331_loop:
    (rx330_pos) = rx330_cur."from"()
    inc rx330_pos
    rx330_cur."!cursor_from"(rx330_pos)
    ge rx330_pos, rx330_eos, rxscan331_done
  rxscan331_scan:
    set_addr $I10, rxscan331_loop
    rx330_cur."!mark_push"(0, rx330_pos, $I10)
  rxscan331_done:
  # rx charclass_q s r 0..-1
    sub $I10, rx330_pos, rx330_off
    find_not_cclass $I11, 32, rx330_tgt, $I10, rx330_eos
    add rx330_pos, rx330_off, $I11
  # rx enumcharlist negate=0 
    ge rx330_pos, rx330_eos, rx330_fail
    sub $I10, rx330_pos, rx330_off
    substr $S10, rx330_tgt, $I10, 1
    index $I11, "],#", $S10
    lt $I11, 0, rx330_fail
    inc rx330_pos
  # rx pass
    rx330_cur."!cursor_pass"(rx330_pos, "")
    if_null rx330_debug, debug_268
    rx330_cur."!cursor_debug"("PASS", "", " at pos=", rx330_pos)
  debug_268:
    .return (rx330_cur)
  rx330_restart:
    if_null rx330_debug, debug_269
    rx330_cur."!cursor_debug"("NEXT", "")
  debug_269:
  rx330_fail:
    (rx330_rep, rx330_pos, $I10, $P10) = rx330_cur."!mark_fail"(0)
    lt rx330_pos, -1, rx330_done
    eq rx330_pos, -1, rx330_fail
    jump $I10
  rx330_done:
    rx330_cur."!cursor_fail"()
    if_null rx330_debug, debug_270
    rx330_cur."!cursor_debug"("FAIL", "")
  debug_270:
    .return (rx330_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "charnames"  :subid("101_1300051150.535") :method :outer("11_1300051150.535")
.annotate 'line', 31
    .local string rx333_tgt
    .local int rx333_pos
    .local int rx333_off
    .local int rx333_eos
    .local int rx333_rep
    .local pmc rx333_cur
    .local pmc rx333_debug
    (rx333_cur, rx333_pos, rx333_tgt, $I10) = self."!cursor_start"()
    rx333_cur."!cursor_caparray"("charname")
    .lex unicode:"$\x{a2}", rx333_cur
    .local pmc match
    .lex "$/", match
    length rx333_eos, rx333_tgt
    gt rx333_pos, rx333_eos, rx333_done
    set rx333_off, 0
    lt rx333_pos, 2, rx333_start
    sub rx333_off, rx333_pos, 1
    substr rx333_tgt, rx333_tgt, rx333_off
  rx333_start:
    eq $I10, 1, rx333_restart
    if_null rx333_debug, debug_274
    rx333_cur."!cursor_debug"("START", "charnames")
  debug_274:
    $I10 = self.'from'()
    ne $I10, -1, rxscan336_done
    goto rxscan336_scan
  rxscan336_loop:
    (rx333_pos) = rx333_cur."from"()
    inc rx333_pos
    rx333_cur."!cursor_from"(rx333_pos)
    ge rx333_pos, rx333_eos, rxscan336_done
  rxscan336_scan:
    set_addr $I10, rxscan336_loop
    rx333_cur."!mark_push"(0, rx333_pos, $I10)
  rxscan336_done:
.annotate 'line', 114
  # rx rxquantr337 ** 1..*
    set_addr $I10, rxquantr337_done
    rx333_cur."!mark_push"(0, -1, $I10)
  rxquantr337_loop:
  # rx subrule "ws" subtype=method negate=
    rx333_cur."!cursor_pos"(rx333_pos)
    $P10 = rx333_cur."ws"()
    unless $P10, rx333_fail
    rx333_pos = $P10."pos"()
  # rx subrule "charname" subtype=capture negate=
    rx333_cur."!cursor_pos"(rx333_pos)
    $P10 = rx333_cur."charname"()
    unless $P10, rx333_fail
    rx333_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charname")
    rx333_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx333_cur."!cursor_pos"(rx333_pos)
    $P10 = rx333_cur."ws"()
    unless $P10, rx333_fail
    rx333_pos = $P10."pos"()
    set_addr $I10, rxquantr337_done
    (rx333_rep) = rx333_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr337_done
    rx333_cur."!mark_push"(rx333_rep, rx333_pos, $I10)
  # rx literal  ","
    add $I11, rx333_pos, 1
    gt $I11, rx333_eos, rx333_fail
    sub $I11, rx333_pos, rx333_off
    ord $I11, rx333_tgt, $I11
    ne $I11, 44, rx333_fail
    add rx333_pos, 1
    goto rxquantr337_loop
  rxquantr337_done:
  # rx pass
    rx333_cur."!cursor_pass"(rx333_pos, "charnames")
    if_null rx333_debug, debug_275
    rx333_cur."!cursor_debug"("PASS", "charnames", " at pos=", rx333_pos)
  debug_275:
    .return (rx333_cur)
  rx333_restart:
.annotate 'line', 31
    if_null rx333_debug, debug_276
    rx333_cur."!cursor_debug"("NEXT", "charnames")
  debug_276:
  rx333_fail:
    (rx333_rep, rx333_pos, $I10, $P10) = rx333_cur."!mark_fail"(0)
    lt rx333_pos, -1, rx333_done
    eq rx333_pos, -1, rx333_fail
    jump $I10
  rx333_done:
    rx333_cur."!cursor_fail"()
    if_null rx333_debug, debug_277
    rx333_cur."!cursor_debug"("FAIL", "charnames")
  debug_277:
    .return (rx333_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charnames"  :nsentry("!PREFIX__charnames") :subid("102_1300051150.535") :method
.annotate 'line', 31
    new $P335, "ResizablePMCArray"
    push $P335, ""
    .return ($P335)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "charspec"  :subid("103_1300051150.535") :method :outer("11_1300051150.535")
.annotate 'line', 31
    .local string rx339_tgt
    .local int rx339_pos
    .local int rx339_off
    .local int rx339_eos
    .local int rx339_rep
    .local pmc rx339_cur
    .local pmc rx339_debug
    (rx339_cur, rx339_pos, rx339_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx339_cur
    .local pmc match
    .lex "$/", match
    length rx339_eos, rx339_tgt
    gt rx339_pos, rx339_eos, rx339_done
    set rx339_off, 0
    lt rx339_pos, 2, rx339_start
    sub rx339_off, rx339_pos, 1
    substr rx339_tgt, rx339_tgt, rx339_off
  rx339_start:
    eq $I10, 1, rx339_restart
    if_null rx339_debug, debug_278
    rx339_cur."!cursor_debug"("START", "charspec")
  debug_278:
    $I10 = self.'from'()
    ne $I10, -1, rxscan344_done
    goto rxscan344_scan
  rxscan344_loop:
    (rx339_pos) = rx339_cur."from"()
    inc rx339_pos
    rx339_cur."!cursor_from"(rx339_pos)
    ge rx339_pos, rx339_eos, rxscan344_done
  rxscan344_scan:
    set_addr $I10, rxscan344_loop
    rx339_cur."!mark_push"(0, rx339_pos, $I10)
  rxscan344_done:
  alt345_0:
.annotate 'line', 116
    set_addr $I10, alt345_1
    rx339_cur."!mark_push"(0, rx339_pos, $I10)
.annotate 'line', 117
  # rx literal  "["
    add $I11, rx339_pos, 1
    gt $I11, rx339_eos, rx339_fail
    sub $I11, rx339_pos, rx339_off
    ord $I11, rx339_tgt, $I11
    ne $I11, 91, rx339_fail
    add rx339_pos, 1
  # rx subrule "charnames" subtype=capture negate=
    rx339_cur."!cursor_pos"(rx339_pos)
    $P10 = rx339_cur."charnames"()
    unless $P10, rx339_fail
    rx339_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charnames")
    rx339_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx339_pos, 1
    gt $I11, rx339_eos, rx339_fail
    sub $I11, rx339_pos, rx339_off
    ord $I11, rx339_tgt, $I11
    ne $I11, 93, rx339_fail
    add rx339_pos, 1
    goto alt345_end
  alt345_1:
    set_addr $I10, alt345_2
    rx339_cur."!mark_push"(0, rx339_pos, $I10)
.annotate 'line', 118
  # rx charclass_q d r 1..-1
    sub $I10, rx339_pos, rx339_off
    find_not_cclass $I11, 8, rx339_tgt, $I10, rx339_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx339_fail
    add rx339_pos, rx339_off, $I11
  # rx rxquantr346 ** 0..*
    set_addr $I10, rxquantr346_done
    rx339_cur."!mark_push"(0, rx339_pos, $I10)
  rxquantr346_loop:
  # rx literal  "_"
    add $I11, rx339_pos, 1
    gt $I11, rx339_eos, rx339_fail
    sub $I11, rx339_pos, rx339_off
    ord $I11, rx339_tgt, $I11
    ne $I11, 95, rx339_fail
    add rx339_pos, 1
  # rx charclass_q d r 1..-1
    sub $I10, rx339_pos, rx339_off
    find_not_cclass $I11, 8, rx339_tgt, $I10, rx339_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx339_fail
    add rx339_pos, rx339_off, $I11
    set_addr $I10, rxquantr346_done
    (rx339_rep) = rx339_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr346_done
    rx339_cur."!mark_push"(rx339_rep, rx339_pos, $I10)
    goto rxquantr346_loop
  rxquantr346_done:
    goto alt345_end
  alt345_2:
    set_addr $I10, alt345_3
    rx339_cur."!mark_push"(0, rx339_pos, $I10)
.annotate 'line', 119
  # rx enumcharlist negate=0 
    ge rx339_pos, rx339_eos, rx339_fail
    sub $I10, rx339_pos, rx339_off
    substr $S10, rx339_tgt, $I10, 1
    index $I11, "?@ABCDEFGHIJKLMNOPQRSTUVWXYZ", $S10
    lt $I11, 0, rx339_fail
    inc rx339_pos
    goto alt345_end
  alt345_3:
.annotate 'line', 120
  # rx subrule "panic" subtype=method negate=
    rx339_cur."!cursor_pos"(rx339_pos)
    $P10 = rx339_cur."panic"("Unrecognized \\c character")
    unless $P10, rx339_fail
    rx339_pos = $P10."pos"()
  alt345_end:
.annotate 'line', 115
  # rx pass
    rx339_cur."!cursor_pass"(rx339_pos, "charspec")
    if_null rx339_debug, debug_279
    rx339_cur."!cursor_debug"("PASS", "charspec", " at pos=", rx339_pos)
  debug_279:
    .return (rx339_cur)
  rx339_restart:
.annotate 'line', 31
    if_null rx339_debug, debug_280
    rx339_cur."!cursor_debug"("NEXT", "charspec")
  debug_280:
  rx339_fail:
    (rx339_rep, rx339_pos, $I10, $P10) = rx339_cur."!mark_fail"(0)
    lt rx339_pos, -1, rx339_done
    eq rx339_pos, -1, rx339_fail
    jump $I10
  rx339_done:
    rx339_cur."!cursor_fail"()
    if_null rx339_debug, debug_281
    rx339_cur."!cursor_debug"("FAIL", "charspec")
  debug_281:
    .return (rx339_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charspec"  :nsentry("!PREFIX__charspec") :subid("104_1300051150.535") :method
.annotate 'line', 31
    $P341 = self."!PREFIX__!subrule"("panic", "")
    $P342 = self."!PREFIX__!subrule"("charnames", "[")
    new $P343, "ResizablePMCArray"
    push $P343, $P341
    push $P343, "Z"
    push $P343, "Y"
    push $P343, "X"
    push $P343, "W"
    push $P343, "V"
    push $P343, "U"
    push $P343, "T"
    push $P343, "S"
    push $P343, "R"
    push $P343, "Q"
    push $P343, "P"
    push $P343, "O"
    push $P343, "N"
    push $P343, "M"
    push $P343, "L"
    push $P343, "K"
    push $P343, "J"
    push $P343, "I"
    push $P343, "H"
    push $P343, "G"
    push $P343, "F"
    push $P343, "E"
    push $P343, "D"
    push $P343, "C"
    push $P343, "B"
    push $P343, "A"
    push $P343, "@"
    push $P343, "?"
    push $P343, ""
    push $P343, $P342
    .return ($P343)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "O"  :subid("105_1300051150.535") :outer("11_1300051150.535")
    .param pmc param_348
    .param pmc param_349
    .param pmc param_350 :optional
    .param int has_param_350 :opt_flag
.annotate 'line', 166
    .lex "self", param_348
    .lex "$spec", param_349
    if has_param_350, optparam_282
    new $P351, "Undef"
    set param_350, $P351
  optparam_282:
    .lex "$save", param_350
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


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "panic"  :subid("106_1300051150.535") :outer("11_1300051150.535")
    .param pmc param_353
    .param pmc param_354 :slurpy
.annotate 'line', 312
    .lex "self", param_353
    .lex "@args", param_354
.annotate 'line', 313
    new $P355, "Undef"
    .lex "$pos", $P355
.annotate 'line', 314
    new $P356, "Undef"
    .lex "$target", $P356
.annotate 'line', 313
    find_lex $P357, "self"
    $P358 = $P357."pos"()
    store_lex "$pos", $P358
.annotate 'line', 314
    find_lex $P359, "self"
    get_hll_global $P360, ["Regex"], "Cursor"
    getattribute $P361, $P359, $P360, "$!target"
    store_lex "$target", $P361
.annotate 'line', 315
    find_lex $P362, "@args"
    $P362."push"(" at line ")
.annotate 'line', 316
    find_lex $P363, "@args"
    get_hll_global $P364, ["HLL"], "Compiler"
    find_lex $P365, "$target"
    find_lex $P366, "$pos"
    $P367 = $P364."lineof"($P365, $P366)
    add $P368, $P367, 1
    $P363."push"($P368)
.annotate 'line', 317
    find_lex $P369, "@args"
    $P369."push"(", near \"")
.annotate 'line', 318
    find_lex $P370, "@args"
    find_lex $P371, "$target"
    set $S372, $P371
    find_lex $P373, "$pos"
    set $I374, $P373
    substr $S375, $S372, $I374, 10
    escape $S376, $S375
    $P370."push"($S376)
.annotate 'line', 319
    find_lex $P377, "@args"
    $P377."push"("\"")
.annotate 'line', 320
    find_lex $P378, "@args"
    join $S379, "", $P378
    die $S379
.annotate 'line', 312
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "peek_delimiters"  :subid("107_1300051150.535") :outer("11_1300051150.535")
    .param pmc param_381
    .param pmc param_382
    .param pmc param_383
.annotate 'line', 333
    .lex "self", param_381
    .lex "$target", param_382
    .lex "$pos", param_383
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


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_EXPR"  :subid("108_1300051150.535") :outer("11_1300051150.535")
    .param pmc param_385
    .param pmc param_386 :slurpy
.annotate 'line', 395
    .lex "self", param_385
    .lex "@args", param_386
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


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quotemod_check" :nsentry :subid("109_1300051150.535") :outer("11_1300051150.535")
    .param pmc param_388
    .param pmc param_389
.annotate 'line', 464
    .lex "self", param_388
    .lex "$mod", param_389
    find_lex $P390, "$mod"
    find_dynamic_lex $P391, "%*QUOTEMOD"
    unless_null $P391, vivify_283
    get_hll_global $P391, "%QUOTEMOD"
    unless_null $P391, vivify_284
    die "Contextual %*QUOTEMOD not found"
  vivify_284:
  vivify_283:
    set $P392, $P391[$P390]
    unless_null $P392, vivify_285
    new $P392, "Undef"
  vivify_285:
    .return ($P392)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "starter"  :subid("110_1300051150.535") :outer("11_1300051150.535")
    .param pmc param_394
.annotate 'line', 468
    .lex "self", param_394
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


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "stopper"  :subid("111_1300051150.535") :outer("11_1300051150.535")
    .param pmc param_396
.annotate 'line', 491
    .lex "self", param_396
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


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "split_words" :nsentry :subid("112_1300051150.535") :outer("11_1300051150.535")
    .param pmc param_398
    .param pmc param_399
.annotate 'line', 514
    .lex "self", param_398
    .lex "$words", param_399
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


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "EXPR"  :subid("113_1300051150.535") :outer("11_1300051150.535")
    .param pmc param_401
    .param pmc param_402 :optional
    .param int has_param_402 :opt_flag
.annotate 'line', 546
    .lex "self", param_401
    if has_param_402, optparam_286
    new $P403, "String"
    assign $P403, ""
    set param_402, $P403
  optparam_286:
    .lex "$preclim", param_402
.annotate 'line', 547

            .local pmc self, cur_class
            self = find_lex 'self'
            cur_class = get_hll_global ['Regex'], 'Cursor'

            .local string preclim
            $P0 = find_lex '$preclim'
            preclim = $P0
            
            .local pmc here, debug
            .local int pos
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
            repr_bind_attr_int here, cur_class, '$!pos', pos
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


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "EXPR_reduce"  :subid("114_1300051150.535") :outer("11_1300051150.535")
    .param pmc param_405
    .param pmc param_406
    .param pmc param_407
.annotate 'line', 724
    .lex "self", param_405
    .lex "$termstack", param_406
    .lex "$opstack", param_407
.annotate 'line', 725

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
        
.annotate 'line', 724
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "ternary"  :subid("115_1300051150.535") :outer("11_1300051150.535")
    .param pmc param_409
    .param pmc param_410
.annotate 'line', 792
    .lex "self", param_409
    .lex "$match", param_410
.annotate 'line', 793
    find_lex $P411, "$match"
    unless_null $P411, vivify_287
    $P411 = root_new ['parrot';'ResizablePMCArray']
  vivify_287:
    set $P412, $P411[1]
    unless_null $P412, vivify_288
    new $P412, "Undef"
  vivify_288:
    find_lex $P413, "$match"
    unless_null $P413, vivify_289
    $P413 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$match", $P413
  vivify_289:
    set $P413[2], $P412
.annotate 'line', 794
    find_lex $P414, "$match"
    unless_null $P414, vivify_290
    $P414 = root_new ['parrot';'Hash']
  vivify_290:
    set $P415, $P414["infix"]
    unless_null $P415, vivify_291
    $P415 = root_new ['parrot';'Hash']
  vivify_291:
    set $P416, $P415["EXPR"]
    unless_null $P416, vivify_292
    new $P416, "Undef"
  vivify_292:
    find_lex $P417, "$match"
    unless_null $P417, vivify_293
    $P417 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$match", $P417
  vivify_293:
    set $P417[1], $P416
.annotate 'line', 792
    .return ($P416)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "MARKER"  :subid("116_1300051150.535") :outer("11_1300051150.535")
    .param pmc param_419
    .param pmc param_420
.annotate 'line', 797
    .lex "self", param_419
    .lex "$markname", param_420
.annotate 'line', 798
    new $P421, "Undef"
    .lex "$pos", $P421
.annotate 'line', 800
    $P422 = root_new ['parrot';'Hash']
    .lex "%markhash", $P422
.annotate 'line', 798
    find_lex $P423, "self"
    $P424 = $P423."pos"()
    store_lex "$pos", $P424
.annotate 'line', 799
    find_lex $P425, "self"
    find_lex $P426, "$markname"
    find_lex $P427, "$pos"
    $P425."!cursor_debug"("START", "MARKER name=", $P426, ", pos=", $P427)
.annotate 'line', 800

            $P428 = get_global '%!MARKHASH'
            unless null $P428 goto have_markhash
            $P428 = new ['Hash']
            set_global '%!MARKHASH', $P428
          have_markhash:
        
    store_lex "%markhash", $P428
.annotate 'line', 807
    find_lex $P429, "$pos"
    find_lex $P430, "$markname"
    find_lex $P431, "%markhash"
    unless_null $P431, vivify_294
    $P431 = root_new ['parrot';'Hash']
    store_lex "%markhash", $P431
  vivify_294:
    set $P431[$P430], $P429
.annotate 'line', 808
    find_lex $P432, "self"
    $P432."!cursor_debug"("PASS", "MARKER")
.annotate 'line', 797
    .return (1)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "MARKED"  :subid("117_1300051150.535") :outer("11_1300051150.535")
    .param pmc param_434
    .param pmc param_435
.annotate 'line', 812
    .lex "self", param_434
    .lex "$markname", param_435
.annotate 'line', 813
    find_lex $P436, "self"
    find_lex $P437, "$markname"
    $P436."!cursor_debug"("START", "MARKED name=", $P437)
.annotate 'line', 814

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
        
.annotate 'line', 812
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "LANG"  :subid("118_1300051150.535") :outer("11_1300051150.535")
    .param pmc param_439
    .param pmc param_440
    .param pmc param_441
.annotate 'line', 832
    .lex "self", param_439
    .lex "$lang", param_440
    .lex "$regex", param_441
.annotate 'line', 833
    new $P442, "Undef"
    .lex "$lang_cursor", $P442
.annotate 'line', 834
    new $P443, "Undef"
    .lex "$*ACTIONS", $P443
.annotate 'line', 835
    new $P444, "Undef"
    .lex "$cur", $P444
.annotate 'line', 833
    find_lex $P445, "$lang"
    find_dynamic_lex $P446, "%*LANG"
    unless_null $P446, vivify_295
    get_hll_global $P446, "%LANG"
    unless_null $P446, vivify_296
    die "Contextual %*LANG not found"
  vivify_296:
  vivify_295:
    set $P447, $P446[$P445]
    unless_null $P447, vivify_297
    new $P447, "Undef"
  vivify_297:
    store_lex "$lang_cursor", $P447
.annotate 'line', 834
    find_lex $P448, "$lang"
    concat $P449, $P448, "-actions"
    find_dynamic_lex $P450, "%*LANG"
    unless_null $P450, vivify_298
    get_hll_global $P450, "%LANG"
    unless_null $P450, vivify_299
    die "Contextual %*LANG not found"
  vivify_299:
  vivify_298:
    set $P451, $P450[$P449]
    unless_null $P451, vivify_300
    new $P451, "Undef"
  vivify_300:
    store_lex "$*ACTIONS", $P451
.annotate 'line', 835

            .local pmc self
            .local int pos
            self = find_lex 'self'
            $P0 = find_lex '$lang_cursor'
            ($P452, pos) = self.'!cursor_start'($P0)
            $P452.'!cursor_pos'(pos)
        
    store_lex "$cur", $P452
.annotate 'line', 843
    find_lex $P453, "$cur"
    find_lex $P454, "$regex"
    set $S455, $P454
    $P456 = $P453.$S455()
.annotate 'line', 832
    .return ($P456)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block458" :load :anon :subid("119_1300051150.535")
.annotate 'line', 3
    .const 'Sub' $P460 = "11_1300051150.535" 
    $P461 = $P460()
    .return ($P461)
.end


.HLL "nqp"

.namespace []
.sub "_block684" :load :anon :subid("121_1300051150.535")
.annotate 'line', 1
    .const 'Sub' $P686 = "10_1300051150.535" 
    $P687 = $P686()
    .return ($P687)
.end

### .include 'src/cheats/hll-grammar.pir'
# Copyright (C) 2009, The Perl Foundation.

=head1 TITLE

src/cheats/hll-grammar.pir -- Additional HLL::Grammar methods

=head2 Methods

=over 4

=cut

.namespace ['HLL';'Grammar']

.sub '' :load :init
    .local pmc brackets
    brackets = box unicode:"<>[](){}\xab\xbb\u0f3a\u0f3b\u0f3c\u0f3d\u169b\u169c\u2045\u2046\u207d\u207e\u208d\u208e\u2329\u232a\u2768\u2769\u276a\u276b\u276c\u276d\u276e\u276f\u2770\u2771\u2772\u2773\u2774\u2775\u27c5\u27c6\u27e6\u27e7\u27e8\u27e9\u27ea\u27eb\u2983\u2984\u2985\u2986\u2987\u2988\u2989\u298a\u298b\u298c\u298d\u298e\u298f\u2990\u2991\u2992\u2993\u2994\u2995\u2996\u2997\u2998\u29d8\u29d9\u29da\u29db\u29fc\u29fd\u3008\u3009\u300a\u300b\u300c\u300d\u300e\u300f\u3010\u3011\u3014\u3015\u3016\u3017\u3018\u3019\u301a\u301b\u301d\u301e\ufd3e\ufd3f\ufe17\ufe18\ufe35\ufe36\ufe37\ufe38\ufe39\ufe3a\ufe3b\ufe3c\ufe3d\ufe3e\ufe3f\ufe40\ufe41\ufe42\ufe43\ufe44\ufe47\ufe48\ufe59\ufe5a\ufe5b\ufe5c\ufe5d\ufe5e\uff08\uff09\uff3b\uff3d\uff5b\uff5d\uff5f\uff60\uff62\uff63"
    set_global '$!brackets', brackets
.end

=back

=cut

# Local Variables:
#   mode: pir
#   fill-column: 100
# End:
# vim: expandtab shiftwidth=4 ft=pir:

### .include 'gen/hllgrammar-actions.pir'

.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1300051152.284")
.annotate 'line', 0
    get_hll_global $P17, ["HLL";"Actions"], "_block16" 
    capture_lex $P17
.annotate 'line', 1
    getinterp $P13
    get_class $P14, "LexPad"
    get_class $P15, "NQPLexPad"
    $P13."hll_map"($P14, $P15)
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 3
    get_hll_global $P17, ["HLL";"Actions"], "_block16" 
    capture_lex $P17
    $P652 = $P17()
.annotate 'line', 1
    .return ($P652)
    .const 'Sub' $P654 = "56_1300051152.284" 
    .return ($P654)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post57") :outer("10_1300051152.284")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1300051152.284" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P658, "1300051151.287"
    isnull $I659, $P658
    if $I659, if_657
    nqp_get_sc_object $P666, "1300051151.287", 0
    set_hll_global ["HLL"], "Actions", $P666
    goto if_657_end
  if_657:
    nqp_dynop_setup 
    load_bytecode "nqpmo.pbc"
    nqp_create_sc $P660, "1300051151.287"
    .local pmc cur_sc
    set cur_sc, $P660
    load_bytecode "SettingManager.pbc"
    get_hll_global $P661, ["HLL"], "SettingManager"
    $P662 = $P661."load_setting"("NQPCORE")
    block."set_outer_ctx"($P662)
    get_hll_global $P663, "NQPClassHOW"
    $P664 = $P663."new_type"("HLL::Actions" :named("name"))
    nqp_set_sc_for_object $P664, cur_sc
    nqp_set_sc_object "1300051151.287", 0, $P664
    nqp_get_sc_object $P665, "1300051151.287", 0
    set_hll_global ["HLL"], "Actions", $P665
  if_657_end:
.end


.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace ["HLL";"Actions"]
.sub "_block16"  :subid("11_1300051152.284") :outer("10_1300051152.284")
.annotate 'line', 3
    .const 'Sub' $P584 = "55_1300051152.284" 
    capture_lex $P584
    .const 'Sub' $P553 = "53_1300051152.284" 
    capture_lex $P553
    .const 'Sub' $P530 = "51_1300051152.284" 
    capture_lex $P530
    .const 'Sub' $P502 = "50_1300051152.284" 
    capture_lex $P502
    .const 'Sub' $P485 = "49_1300051152.284" 
    capture_lex $P485
    .const 'Sub' $P480 = "48_1300051152.284" 
    capture_lex $P480
    .const 'Sub' $P472 = "47_1300051152.284" 
    capture_lex $P472
    .const 'Sub' $P457 = "46_1300051152.284" 
    capture_lex $P457
    .const 'Sub' $P442 = "45_1300051152.284" 
    capture_lex $P442
    .const 'Sub' $P437 = "44_1300051152.284" 
    capture_lex $P437
    .const 'Sub' $P432 = "43_1300051152.284" 
    capture_lex $P432
    .const 'Sub' $P427 = "42_1300051152.284" 
    capture_lex $P427
    .const 'Sub' $P422 = "41_1300051152.284" 
    capture_lex $P422
    .const 'Sub' $P417 = "40_1300051152.284" 
    capture_lex $P417
    .const 'Sub' $P412 = "39_1300051152.284" 
    capture_lex $P412
    .const 'Sub' $P404 = "38_1300051152.284" 
    capture_lex $P404
    .const 'Sub' $P399 = "37_1300051152.284" 
    capture_lex $P399
    .const 'Sub' $P385 = "36_1300051152.284" 
    capture_lex $P385
    .const 'Sub' $P312 = "34_1300051152.284" 
    capture_lex $P312
    .const 'Sub' $P251 = "31_1300051152.284" 
    capture_lex $P251
    .const 'Sub' $P244 = "30_1300051152.284" 
    capture_lex $P244
    .const 'Sub' $P237 = "29_1300051152.284" 
    capture_lex $P237
    .const 'Sub' $P230 = "28_1300051152.284" 
    capture_lex $P230
    .const 'Sub' $P223 = "27_1300051152.284" 
    capture_lex $P223
    .const 'Sub' $P216 = "26_1300051152.284" 
    capture_lex $P216
    .const 'Sub' $P208 = "25_1300051152.284" 
    capture_lex $P208
    .const 'Sub' $P200 = "24_1300051152.284" 
    capture_lex $P200
    .const 'Sub' $P194 = "23_1300051152.284" 
    capture_lex $P194
    .const 'Sub' $P186 = "22_1300051152.284" 
    capture_lex $P186
    .const 'Sub' $P178 = "21_1300051152.284" 
    capture_lex $P178
    .const 'Sub' $P76 = "18_1300051152.284" 
    capture_lex $P76
    .const 'Sub' $P40 = "15_1300051152.284" 
    capture_lex $P40
    .const 'Sub' $P35 = "14_1300051152.284" 
    capture_lex $P35
    .const 'Sub' $P28 = "13_1300051152.284" 
    capture_lex $P28
    .const 'Sub' $P22 = "12_1300051152.284" 
    capture_lex $P22
    get_global $P18, "$?CLASS"
    getinterp $P19
    get_class $P20, "LexPad"
    get_class $P21, "NQPLexPad"
    $P19."hll_map"($P20, $P21)
    .const 'Sub' $P22 = "12_1300051152.284" 
    newclosure $P26, $P22
    .lex "string_to_int", $P26
    find_lex $P27, "string_to_int"
    set_global "string_to_int", $P27
.annotate 'line', 37
    .const 'Sub' $P28 = "13_1300051152.284" 
    newclosure $P31, $P28
    .lex "ints_to_string", $P31
.annotate 'line', 3
    find_lex $P32, "ints_to_string"
    set_global "ints_to_string", $P32
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
    find_lex $P33, "string_to_int"
    find_lex $P34, "ints_to_string"
.annotate 'line', 225
    .const 'Sub' $P553 = "53_1300051152.284" 
    newclosure $P568, $P553
.annotate 'line', 3
    .return ($P568)
    .const 'Sub' $P570 = "54_1300051152.284" 
    .return ($P570)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "" :load :init :subid("post58") :outer("11_1300051152.284")
.annotate 'line', 3
    get_hll_global $P17, ["HLL";"Actions"], "_block16" 
    .local pmc block
    set block, $P17
    .const 'Sub' $P573 = "12_1300051152.284" 
    set_global "string_to_int", $P573
    .const 'Sub' $P574 = "13_1300051152.284" 
    set_global "ints_to_string", $P574
    nqp_get_sc $P576, "1300051151.287"
    isnull $I577, $P576
    if $I577, if_575
    goto if_575_end
  if_575:
    nqp_dynop_setup 
    load_bytecode "nqpmo.pbc"
    nqp_create_sc $P578, "1300051151.287"
    .local pmc cur_sc
    set cur_sc, $P578
    load_bytecode "SettingManager.pbc"
    get_hll_global $P579, ["HLL"], "SettingManager"
    $P580 = $P579."load_setting"("NQPCORE")
    block."set_outer_ctx"($P580)
    get_hll_global $P581, "NQPClassHOW"
    $P582 = $P581."new_type"("HLL::Actions" :named("name"))
    nqp_set_sc_for_object $P582, cur_sc
    nqp_set_sc_object "1300051151.287", 0, $P582
  if_575_end:
    .const 'Sub' $P584 = "55_1300051152.284" 
    capture_lex $P584
    $P584()
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block583"  :anon :subid("55_1300051152.284") :outer("11_1300051152.284")
.annotate 'line', 3
    nqp_get_sc_object $P585, "1300051151.287", 0
    .local pmc type_obj
    set type_obj, $P585
    set_global "$?CLASS", type_obj
    get_how $P586, type_obj
    .const 'Sub' $P587 = "14_1300051152.284" 
    $P586."add_method"(type_obj, "CTXSAVE", $P587)
    get_how $P588, type_obj
    .const 'Sub' $P589 = "15_1300051152.284" 
    $P588."add_method"(type_obj, "SET_BLOCK_OUTER_CTX", $P589)
    get_how $P590, type_obj
    .const 'Sub' $P591 = "18_1300051152.284" 
    $P590."add_method"(type_obj, "EXPR", $P591)
    get_how $P592, type_obj
    .const 'Sub' $P593 = "21_1300051152.284" 
    $P592."add_method"(type_obj, "term:sym<circumfix>", $P593)
    get_how $P594, type_obj
    .const 'Sub' $P595 = "22_1300051152.284" 
    $P594."add_method"(type_obj, "termish", $P595)
    get_how $P596, type_obj
    .const 'Sub' $P597 = "23_1300051152.284" 
    $P596."add_method"(type_obj, "nullterm", $P597)
    get_how $P598, type_obj
    .const 'Sub' $P599 = "24_1300051152.284" 
    $P598."add_method"(type_obj, "nullterm_alt", $P599)
    get_how $P600, type_obj
    .const 'Sub' $P601 = "25_1300051152.284" 
    $P600."add_method"(type_obj, "integer", $P601)
    get_how $P602, type_obj
    .const 'Sub' $P603 = "26_1300051152.284" 
    $P602."add_method"(type_obj, "dec_number", $P603)
    get_how $P604, type_obj
    .const 'Sub' $P605 = "27_1300051152.284" 
    $P604."add_method"(type_obj, "decint", $P605)
    get_how $P606, type_obj
    .const 'Sub' $P607 = "28_1300051152.284" 
    $P606."add_method"(type_obj, "hexint", $P607)
    get_how $P608, type_obj
    .const 'Sub' $P609 = "29_1300051152.284" 
    $P608."add_method"(type_obj, "octint", $P609)
    get_how $P610, type_obj
    .const 'Sub' $P611 = "30_1300051152.284" 
    $P610."add_method"(type_obj, "binint", $P611)
    get_how $P612, type_obj
    .const 'Sub' $P613 = "31_1300051152.284" 
    $P612."add_method"(type_obj, "quote_EXPR", $P613)
    get_how $P614, type_obj
    .const 'Sub' $P615 = "34_1300051152.284" 
    $P614."add_method"(type_obj, "quote_delimited", $P615)
    get_how $P616, type_obj
    .const 'Sub' $P617 = "36_1300051152.284" 
    $P616."add_method"(type_obj, "quote_atom", $P617)
    get_how $P618, type_obj
    .const 'Sub' $P619 = "37_1300051152.284" 
    $P618."add_method"(type_obj, "quote_escape:sym<backslash>", $P619)
    get_how $P620, type_obj
    .const 'Sub' $P621 = "38_1300051152.284" 
    $P620."add_method"(type_obj, "quote_escape:sym<stopper>", $P621)
    get_how $P622, type_obj
    .const 'Sub' $P623 = "39_1300051152.284" 
    $P622."add_method"(type_obj, "quote_escape:sym<bs>", $P623)
    get_how $P624, type_obj
    .const 'Sub' $P625 = "40_1300051152.284" 
    $P624."add_method"(type_obj, "quote_escape:sym<nl>", $P625)
    get_how $P626, type_obj
    .const 'Sub' $P627 = "41_1300051152.284" 
    $P626."add_method"(type_obj, "quote_escape:sym<cr>", $P627)
    get_how $P628, type_obj
    .const 'Sub' $P629 = "42_1300051152.284" 
    $P628."add_method"(type_obj, "quote_escape:sym<tab>", $P629)
    get_how $P630, type_obj
    .const 'Sub' $P631 = "43_1300051152.284" 
    $P630."add_method"(type_obj, "quote_escape:sym<ff>", $P631)
    get_how $P632, type_obj
    .const 'Sub' $P633 = "44_1300051152.284" 
    $P632."add_method"(type_obj, "quote_escape:sym<esc>", $P633)
    get_how $P634, type_obj
    .const 'Sub' $P635 = "45_1300051152.284" 
    $P634."add_method"(type_obj, "quote_escape:sym<hex>", $P635)
    get_how $P636, type_obj
    .const 'Sub' $P637 = "46_1300051152.284" 
    $P636."add_method"(type_obj, "quote_escape:sym<oct>", $P637)
    get_how $P638, type_obj
    .const 'Sub' $P639 = "47_1300051152.284" 
    $P638."add_method"(type_obj, "quote_escape:sym<chr>", $P639)
    get_how $P640, type_obj
    .const 'Sub' $P641 = "48_1300051152.284" 
    $P640."add_method"(type_obj, "quote_escape:sym<0>", $P641)
    get_how $P642, type_obj
    .const 'Sub' $P643 = "49_1300051152.284" 
    $P642."add_method"(type_obj, "quote_escape:sym<misc>", $P643)
    get_how $P644, type_obj
    .const 'Sub' $P645 = "50_1300051152.284" 
    $P644."add_method"(type_obj, "charname", $P645)
    get_how $P646, type_obj
    .const 'Sub' $P647 = "51_1300051152.284" 
    $P646."add_method"(type_obj, "charnames", $P647)
    get_how $P648, type_obj
    .const 'Sub' $P649 = "53_1300051152.284" 
    $P648."add_method"(type_obj, "charspec", $P649)
    get_how $P650, type_obj
    $P651 = $P650."compose"(type_obj)
    .return ($P651)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "string_to_int"  :subid("12_1300051152.284") :outer("11_1300051152.284")
    .param pmc param_23
    .param pmc param_24
.annotate 'line', 3
    .lex "$src", param_23
    .lex "$base", param_24
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
        $P25 = box result
    
.annotate 'line', 3
    .return ($P25)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "ints_to_string"  :subid("13_1300051152.284") :outer("11_1300051152.284")
    .param pmc param_29
.annotate 'line', 37
    .lex "$ints", param_29
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
        $P30 = box result
    
.annotate 'line', 37
    .return ($P30)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "CTXSAVE"  :subid("14_1300051152.284") :outer("11_1300051152.284")
    .param pmc param_36
.annotate 'line', 62
    .lex "self", param_36
.annotate 'line', 63
    get_hll_global $P37, ["PAST"], "Op"
.annotate 'line', 69
    new $P38, "ResizablePMCArray"
    push $P38, "    $P0 = find_dynamic_lex \"$*CTXSAVE\""
    push $P38, "    if null $P0 goto ctxsave_done"
    push $P38, "    $I0 = can $P0, \"ctxsave\""
    push $P38, "    unless $I0 goto ctxsave_done"
    push $P38, "    $P0.\"ctxsave\"()"
    push $P38, "  ctxsave_done:"
    $P39 = $P37."new"($P38 :named("inline"))
.annotate 'line', 62
    .return ($P39)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "SET_BLOCK_OUTER_CTX"  :subid("15_1300051152.284") :outer("11_1300051152.284")
    .param pmc param_41
    .param pmc param_42
.annotate 'line', 76
    .const 'Sub' $P52 = "16_1300051152.284" 
    capture_lex $P52
    .lex "self", param_41
    .lex "$block", param_42
.annotate 'line', 77
    new $P43, "Undef"
    .lex "$outer_ctx", $P43
    find_dynamic_lex $P44, "%*COMPILING"
    unless_null $P44, vivify_59
    get_hll_global $P44, "%COMPILING"
    unless_null $P44, vivify_60
    die "Contextual %*COMPILING not found"
  vivify_60:
  vivify_59:
    set $P45, $P44["%?OPTIONS"]
    unless_null $P45, vivify_61
    $P45 = root_new ['parrot';'Hash']
  vivify_61:
    set $P46, $P45["outer_ctx"]
    unless_null $P46, vivify_62
    new $P46, "Undef"
  vivify_62:
    store_lex "$outer_ctx", $P46
.annotate 'line', 78
    find_lex $P49, "$outer_ctx"
    defined $I50, $P49
    if $I50, if_48
    new $P47, 'Integer'
    set $P47, $I50
    goto if_48_end
  if_48:
    .const 'Sub' $P52 = "16_1300051152.284" 
    capture_lex $P52
    $P75 = $P52()
    set $P47, $P75
  if_48_end:
.annotate 'line', 76
    .return ($P47)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block51"  :anon :subid("16_1300051152.284") :outer("15_1300051152.284")
.annotate 'line', 78
    .const 'Sub' $P66 = "17_1300051152.284" 
    capture_lex $P66
.annotate 'line', 79
    $P53 = root_new ['parrot';'ResizablePMCArray']
    .lex "@ns", $P53
    find_lex $P54, "$outer_ctx"
    getattribute $P55, $P54, "current_namespace"
    $P56 = $P55."get_name"()
    store_lex "@ns", $P56
.annotate 'line', 80
    find_lex $P57, "@ns"
    $P57."shift"()
.annotate 'line', 81
    find_lex $P58, "$block"
    find_lex $P59, "@ns"
    $P58."namespace"($P59)
.annotate 'line', 82
    find_lex $P61, "$outer_ctx"
    $P62 = $P61."lexpad_full"()
    defined $I63, $P62
    unless $I63, for_undef_63
    iter $P60, $P62
    new $P73, 'ExceptionHandler'
    set_label $P73, loop72_handler
    $P73."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P73
  loop72_test:
    unless $P60, loop72_done
    shift $P64, $P60
  loop72_redo:
    .const 'Sub' $P66 = "17_1300051152.284" 
    capture_lex $P66
    $P66($P64)
  loop72_next:
    goto loop72_test
  loop72_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P74, exception, 'type'
    eq $P74, .CONTROL_LOOP_NEXT, loop72_next
    eq $P74, .CONTROL_LOOP_REDO, loop72_redo
  loop72_done:
    pop_eh 
  for_undef_63:
.annotate 'line', 78
    .return ($P60)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block65"  :anon :subid("17_1300051152.284") :outer("16_1300051152.284")
    .param pmc param_67
.annotate 'line', 82
    .lex "$_", param_67
.annotate 'line', 83
    find_lex $P68, "$block"
    find_lex $P69, "$_"
    $P70 = $P69."key"()
    $P71 = $P68."symbol"($P70, "lexical" :named("scope"))
.annotate 'line', 82
    .return ($P71)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "EXPR"  :subid("18_1300051152.284") :outer("11_1300051152.284")
    .param pmc param_79
    .param pmc param_80
    .param pmc param_81 :optional
    .param int has_param_81 :opt_flag
.annotate 'line', 89
    .const 'Sub' $P160 = "20_1300051152.284" 
    capture_lex $P160
    .const 'Sub' $P127 = "19_1300051152.284" 
    capture_lex $P127
    new $P78, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P78, control_77
    push_eh $P78
    .lex "self", param_79
    .lex "$/", param_80
    if has_param_81, optparam_64
    new $P82, "Undef"
    set param_81, $P82
  optparam_64:
    .lex "$key", param_81
.annotate 'line', 91
    new $P83, "Undef"
    .lex "$past", $P83
.annotate 'line', 90
    find_lex $P85, "$key"
    if $P85, unless_84_end
    new $P86, "Exception"
    set $P86['type'], .CONTROL_RETURN
    new $P87, "Integer"
    assign $P87, 0
    setattribute $P86, 'payload', $P87
    throw $P86
  unless_84_end:
.annotate 'line', 91
    find_lex $P89, "$/"
    $P90 = $P89."ast"()
    set $P88, $P90
    defined $I92, $P88
    if $I92, default_91
    find_lex $P93, "$/"
    unless_null $P93, vivify_65
    $P93 = root_new ['parrot';'Hash']
  vivify_65:
    set $P94, $P93["OPER"]
    unless_null $P94, vivify_66
    new $P94, "Undef"
  vivify_66:
    $P95 = $P94."ast"()
    set $P88, $P95
  default_91:
    store_lex "$past", $P88
.annotate 'line', 92
    find_lex $P97, "$past"
    if $P97, unless_96_end
.annotate 'line', 93
    get_hll_global $P98, ["PAST"], "Op"
    find_lex $P99, "$/"
    $P100 = $P98."new"($P99 :named("node"))
    store_lex "$past", $P100
.annotate 'line', 94
    find_lex $P102, "$/"
    unless_null $P102, vivify_67
    $P102 = root_new ['parrot';'Hash']
  vivify_67:
    set $P103, $P102["OPER"]
    unless_null $P103, vivify_68
    $P103 = root_new ['parrot';'Hash']
  vivify_68:
    set $P104, $P103["O"]
    unless_null $P104, vivify_69
    $P104 = root_new ['parrot';'Hash']
  vivify_69:
    set $P105, $P104["pasttype"]
    unless_null $P105, vivify_70
    new $P105, "Undef"
  vivify_70:
    if $P105, if_101
.annotate 'line', 95
    find_lex $P113, "$/"
    unless_null $P113, vivify_71
    $P113 = root_new ['parrot';'Hash']
  vivify_71:
    set $P114, $P113["OPER"]
    unless_null $P114, vivify_72
    $P114 = root_new ['parrot';'Hash']
  vivify_72:
    set $P115, $P114["O"]
    unless_null $P115, vivify_73
    $P115 = root_new ['parrot';'Hash']
  vivify_73:
    set $P116, $P115["pirop"]
    unless_null $P116, vivify_74
    new $P116, "Undef"
  vivify_74:
    unless $P116, if_112_end
    find_lex $P117, "$past"
    find_lex $P118, "$/"
    unless_null $P118, vivify_75
    $P118 = root_new ['parrot';'Hash']
  vivify_75:
    set $P119, $P118["OPER"]
    unless_null $P119, vivify_76
    $P119 = root_new ['parrot';'Hash']
  vivify_76:
    set $P120, $P119["O"]
    unless_null $P120, vivify_77
    $P120 = root_new ['parrot';'Hash']
  vivify_77:
    set $P121, $P120["pirop"]
    unless_null $P121, vivify_78
    new $P121, "Undef"
  vivify_78:
    set $S122, $P121
    $P117."pirop"($S122)
  if_112_end:
    goto if_101_end
  if_101:
.annotate 'line', 94
    find_lex $P106, "$past"
    find_lex $P107, "$/"
    unless_null $P107, vivify_79
    $P107 = root_new ['parrot';'Hash']
  vivify_79:
    set $P108, $P107["OPER"]
    unless_null $P108, vivify_80
    $P108 = root_new ['parrot';'Hash']
  vivify_80:
    set $P109, $P108["O"]
    unless_null $P109, vivify_81
    $P109 = root_new ['parrot';'Hash']
  vivify_81:
    set $P110, $P109["pasttype"]
    unless_null $P110, vivify_82
    new $P110, "Undef"
  vivify_82:
    set $S111, $P110
    $P106."pasttype"($S111)
  if_101_end:
.annotate 'line', 96
    find_lex $P124, "$past"
    $P125 = $P124."name"()
    if $P125, unless_123_end
    .const 'Sub' $P127 = "19_1300051152.284" 
    capture_lex $P127
    $P127()
  unless_123_end:
  unless_96_end:
.annotate 'line', 107
    find_lex $P147, "$key"
    set $S148, $P147
    iseq $I149, $S148, "POSTFIX"
    if $I149, if_146
.annotate 'line', 109
    find_lex $P155, "$/"
    $P156 = $P155."list"()
    defined $I157, $P156
    unless $I157, for_undef_86
    iter $P154, $P156
    new $P172, 'ExceptionHandler'
    set_label $P172, loop171_handler
    $P172."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P172
  loop171_test:
    unless $P154, loop171_done
    shift $P158, $P154
  loop171_redo:
    .const 'Sub' $P160 = "20_1300051152.284" 
    capture_lex $P160
    $P160($P158)
  loop171_next:
    goto loop171_test
  loop171_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P173, exception, 'type'
    eq $P173, .CONTROL_LOOP_NEXT, loop171_next
    eq $P173, .CONTROL_LOOP_REDO, loop171_redo
  loop171_done:
    pop_eh 
  for_undef_86:
.annotate 'line', 108
    goto if_146_end
  if_146:
.annotate 'line', 107
    find_lex $P150, "$past"
    find_lex $P151, "$/"
    unless_null $P151, vivify_87
    $P151 = root_new ['parrot';'ResizablePMCArray']
  vivify_87:
    set $P152, $P151[0]
    unless_null $P152, vivify_88
    new $P152, "Undef"
  vivify_88:
    $P153 = $P152."ast"()
    $P150."unshift"($P153)
  if_146_end:
.annotate 'line', 111
    find_lex $P174, "$/"
    find_lex $P175, "$past"
    $P176 = $P174."!make"($P175)
.annotate 'line', 89
    .return ($P176)
  control_77:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P177, exception, "payload"
    .return ($P177)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block126"  :anon :subid("19_1300051152.284") :outer("18_1300051152.284")
.annotate 'line', 98
    new $P128, "Undef"
    .lex "$name", $P128
.annotate 'line', 97
    find_lex $P130, "$key"
    set $S131, $P130
    iseq $I132, $S131, "LIST"
    unless $I132, if_129_end
    new $P133, "String"
    assign $P133, "infix"
    store_lex "$key", $P133
  if_129_end:
.annotate 'line', 98

                $P0 = find_lex '$key'
                $S0 = $P0
                $S0 = downcase $S0
                $P134 = box $S0
            
    concat $P135, $P134, ":<"
.annotate 'line', 103
    find_lex $P136, "$/"
    unless_null $P136, vivify_83
    $P136 = root_new ['parrot';'Hash']
  vivify_83:
    set $P137, $P136["OPER"]
    unless_null $P137, vivify_84
    $P137 = root_new ['parrot';'Hash']
  vivify_84:
    set $P138, $P137["sym"]
    unless_null $P138, vivify_85
    new $P138, "Undef"
  vivify_85:
    concat $P139, $P135, $P138
    concat $P140, $P139, ">"
    store_lex "$name", $P140
.annotate 'line', 104
    find_lex $P141, "$past"
    new $P142, "String"
    assign $P142, "&"
    find_lex $P143, "$name"
    concat $P144, $P142, $P143
    $P145 = $P141."name"($P144)
.annotate 'line', 96
    .return ($P145)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block159"  :anon :subid("20_1300051152.284") :outer("18_1300051152.284")
    .param pmc param_161
.annotate 'line', 109
    .lex "$_", param_161
    find_lex $P164, "$_"
    $P165 = $P164."ast"()
    defined $I166, $P165
    if $I166, if_163
    new $P162, 'Integer'
    set $P162, $I166
    goto if_163_end
  if_163:
    find_lex $P167, "$past"
    find_lex $P168, "$_"
    $P169 = $P168."ast"()
    $P170 = $P167."push"($P169)
    set $P162, $P170
  if_163_end:
    .return ($P162)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "term:sym<circumfix>"  :subid("21_1300051152.284") :outer("11_1300051152.284")
    .param pmc param_179
    .param pmc param_180
.annotate 'line', 114
    .lex "self", param_179
    .lex "$/", param_180
    find_lex $P181, "$/"
    find_lex $P182, "$/"
    unless_null $P182, vivify_89
    $P182 = root_new ['parrot';'Hash']
  vivify_89:
    set $P183, $P182["circumfix"]
    unless_null $P183, vivify_90
    new $P183, "Undef"
  vivify_90:
    $P184 = $P183."ast"()
    $P185 = $P181."!make"($P184)
    .return ($P185)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "termish"  :subid("22_1300051152.284") :outer("11_1300051152.284")
    .param pmc param_187
    .param pmc param_188
.annotate 'line', 116
    .lex "self", param_187
    .lex "$/", param_188
    find_lex $P189, "$/"
    find_lex $P190, "$/"
    unless_null $P190, vivify_91
    $P190 = root_new ['parrot';'Hash']
  vivify_91:
    set $P191, $P190["term"]
    unless_null $P191, vivify_92
    new $P191, "Undef"
  vivify_92:
    $P192 = $P191."ast"()
    $P193 = $P189."!make"($P192)
    .return ($P193)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "nullterm"  :subid("23_1300051152.284") :outer("11_1300051152.284")
    .param pmc param_195
    .param pmc param_196
.annotate 'line', 117
    .lex "self", param_195
    .lex "$/", param_196
    find_lex $P197, "$/"
 $P198 = new ['Undef'] 
    $P199 = $P197."!make"($P198)
    .return ($P199)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "nullterm_alt"  :subid("24_1300051152.284") :outer("11_1300051152.284")
    .param pmc param_201
    .param pmc param_202
.annotate 'line', 118
    .lex "self", param_201
    .lex "$/", param_202
    find_lex $P203, "$/"
    find_lex $P204, "$/"
    unless_null $P204, vivify_93
    $P204 = root_new ['parrot';'Hash']
  vivify_93:
    set $P205, $P204["term"]
    unless_null $P205, vivify_94
    new $P205, "Undef"
  vivify_94:
    $P206 = $P205."ast"()
    $P207 = $P203."!make"($P206)
    .return ($P207)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "integer"  :subid("25_1300051152.284") :outer("11_1300051152.284")
    .param pmc param_209
    .param pmc param_210
.annotate 'line', 120
    .lex "self", param_209
    .lex "$/", param_210
    find_lex $P211, "$/"
    find_lex $P212, "$/"
    unless_null $P212, vivify_95
    $P212 = root_new ['parrot';'Hash']
  vivify_95:
    set $P213, $P212["VALUE"]
    unless_null $P213, vivify_96
    new $P213, "Undef"
  vivify_96:
    $P214 = $P213."ast"()
    $P215 = $P211."!make"($P214)
    .return ($P215)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "dec_number"  :subid("26_1300051152.284") :outer("11_1300051152.284")
    .param pmc param_217
    .param pmc param_218
.annotate 'line', 122
    .lex "self", param_217
    .lex "$/", param_218
    find_lex $P219, "$/"
    find_lex $P220, "$/"
    set $N221, $P220
    $P222 = $P219."!make"($N221)
    .return ($P222)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "decint"  :subid("27_1300051152.284") :outer("11_1300051152.284")
    .param pmc param_224
    .param pmc param_225
.annotate 'line', 124
    .lex "self", param_224
    .lex "$/", param_225
    find_lex $P226, "$/"
    find_lex $P227, "$/"
    $P228 = "string_to_int"($P227, 10)
    $P229 = $P226."!make"($P228)
    .return ($P229)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "hexint"  :subid("28_1300051152.284") :outer("11_1300051152.284")
    .param pmc param_231
    .param pmc param_232
.annotate 'line', 125
    .lex "self", param_231
    .lex "$/", param_232
    find_lex $P233, "$/"
    find_lex $P234, "$/"
    $P235 = "string_to_int"($P234, 16)
    $P236 = $P233."!make"($P235)
    .return ($P236)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "octint"  :subid("29_1300051152.284") :outer("11_1300051152.284")
    .param pmc param_238
    .param pmc param_239
.annotate 'line', 126
    .lex "self", param_238
    .lex "$/", param_239
    find_lex $P240, "$/"
    find_lex $P241, "$/"
    $P242 = "string_to_int"($P241, 8)
    $P243 = $P240."!make"($P242)
    .return ($P243)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "binint"  :subid("30_1300051152.284") :outer("11_1300051152.284")
    .param pmc param_245
    .param pmc param_246
.annotate 'line', 127
    .lex "self", param_245
    .lex "$/", param_246
    find_lex $P247, "$/"
    find_lex $P248, "$/"
    $P249 = "string_to_int"($P248, 2)
    $P250 = $P247."!make"($P249)
    .return ($P250)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_EXPR"  :subid("31_1300051152.284") :outer("11_1300051152.284")
    .param pmc param_252
    .param pmc param_253
.annotate 'line', 129
    .const 'Sub' $P269 = "32_1300051152.284" 
    capture_lex $P269
    .lex "self", param_252
    .lex "$/", param_253
.annotate 'line', 130
    new $P254, "Undef"
    .lex "$past", $P254
    find_lex $P255, "$/"
    unless_null $P255, vivify_97
    $P255 = root_new ['parrot';'Hash']
  vivify_97:
    set $P256, $P255["quote_delimited"]
    unless_null $P256, vivify_98
    new $P256, "Undef"
  vivify_98:
    $P257 = $P256."ast"()
    store_lex "$past", $P257
.annotate 'line', 131
    find_lex $P259, "$/"
    $P260 = $P259."CURSOR"()
    $P261 = $P260."quotemod_check"("w")
    unless $P261, if_258_end
.annotate 'line', 132
    get_hll_global $P263, ["PAST"], "Node"
    find_lex $P264, "$past"
    $P265 = $P263."ACCEPTS"($P264)
    if $P265, if_262
.annotate 'line', 135
    .const 'Sub' $P269 = "32_1300051152.284" 
    capture_lex $P269
    $P269()
    goto if_262_end
  if_262:
.annotate 'line', 133
    find_lex $P266, "$/"
    $P267 = $P266."CURSOR"()
    $P267."panic"("Can't form :w list from non-constant strings (yet)")
  if_262_end:
  if_258_end:
.annotate 'line', 146
    get_hll_global $P301, ["PAST"], "Node"
    find_lex $P302, "$past"
    $P303 = $P301."ACCEPTS"($P302)
    isfalse $I304, $P303
    unless $I304, if_300_end
.annotate 'line', 147
    get_hll_global $P305, ["PAST"], "Val"
    find_lex $P306, "$past"
    set $S307, $P306
    $P308 = $P305."new"($S307 :named("value"))
    store_lex "$past", $P308
  if_300_end:
.annotate 'line', 149
    find_lex $P309, "$/"
    find_lex $P310, "$past"
    $P311 = $P309."!make"($P310)
.annotate 'line', 129
    .return ($P311)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block268"  :anon :subid("32_1300051152.284") :outer("31_1300051152.284")
.annotate 'line', 135
    .const 'Sub' $P288 = "33_1300051152.284" 
    capture_lex $P288
.annotate 'line', 136
    $P270 = root_new ['parrot';'ResizablePMCArray']
    .lex "@words", $P270
    get_hll_global $P271, ["HLL";"Grammar"], "split_words"
    find_lex $P272, "$/"
    find_lex $P273, "$past"
    $P274 = $P271($P272, $P273)
    store_lex "@words", $P274
.annotate 'line', 137
    find_lex $P277, "@words"
    set $N278, $P277
    isne $I279, $N278, 1.0
    if $I279, if_276
.annotate 'line', 142
    find_lex $P296, "@words"
    unless_null $P296, vivify_99
    $P296 = root_new ['parrot';'ResizablePMCArray']
  vivify_99:
    set $P297, $P296[0]
    unless_null $P297, vivify_100
    new $P297, "Undef"
  vivify_100:
    set $S298, $P297
    new $P299, 'String'
    set $P299, $S298
    store_lex "$past", $P299
.annotate 'line', 141
    set $P275, $P299
.annotate 'line', 137
    goto if_276_end
  if_276:
.annotate 'line', 138
    get_hll_global $P280, ["PAST"], "Op"
    find_lex $P281, "$/"
    $P282 = $P280."new"("list" :named("pasttype"), $P281 :named("node"))
    store_lex "$past", $P282
.annotate 'line', 139
    find_lex $P284, "@words"
    defined $I285, $P284
    unless $I285, for_undef_101
    iter $P283, $P284
    new $P294, 'ExceptionHandler'
    set_label $P294, loop293_handler
    $P294."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P294
  loop293_test:
    unless $P283, loop293_done
    shift $P286, $P283
  loop293_redo:
    .const 'Sub' $P288 = "33_1300051152.284" 
    capture_lex $P288
    $P288($P286)
  loop293_next:
    goto loop293_test
  loop293_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P295, exception, 'type'
    eq $P295, .CONTROL_LOOP_NEXT, loop293_next
    eq $P295, .CONTROL_LOOP_REDO, loop293_redo
  loop293_done:
    pop_eh 
  for_undef_101:
.annotate 'line', 137
    set $P275, $P283
  if_276_end:
.annotate 'line', 135
    .return ($P275)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block287"  :anon :subid("33_1300051152.284") :outer("32_1300051152.284")
    .param pmc param_289
.annotate 'line', 139
    .lex "$_", param_289
    find_lex $P290, "$past"
    find_lex $P291, "$_"
    $P292 = $P290."push"($P291)
    .return ($P292)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "quote_delimited"  :subid("34_1300051152.284") :outer("11_1300051152.284")
    .param pmc param_313
    .param pmc param_314
.annotate 'line', 152
    .const 'Sub' $P326 = "35_1300051152.284" 
    capture_lex $P326
    .lex "self", param_313
    .lex "$/", param_314
.annotate 'line', 153
    $P315 = root_new ['parrot';'ResizablePMCArray']
    .lex "@parts", $P315
.annotate 'line', 154
    new $P316, "Undef"
    .lex "$lastlit", $P316
.annotate 'line', 170
    new $P317, "Undef"
    .lex "$past", $P317
.annotate 'line', 152
    find_lex $P318, "@parts"
.annotate 'line', 154
    new $P319, "String"
    assign $P319, ""
    store_lex "$lastlit", $P319
.annotate 'line', 155
    find_lex $P321, "$/"
    unless_null $P321, vivify_102
    $P321 = root_new ['parrot';'Hash']
  vivify_102:
    set $P322, $P321["quote_atom"]
    unless_null $P322, vivify_103
    new $P322, "Undef"
  vivify_103:
    defined $I323, $P322
    unless $I323, for_undef_104
    iter $P320, $P322
    new $P359, 'ExceptionHandler'
    set_label $P359, loop358_handler
    $P359."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P359
  loop358_test:
    unless $P320, loop358_done
    shift $P324, $P320
  loop358_redo:
    .const 'Sub' $P326 = "35_1300051152.284" 
    capture_lex $P326
    $P326($P324)
  loop358_next:
    goto loop358_test
  loop358_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P360, exception, 'type'
    eq $P360, .CONTROL_LOOP_NEXT, loop358_next
    eq $P360, .CONTROL_LOOP_REDO, loop358_redo
  loop358_done:
    pop_eh 
  for_undef_104:
.annotate 'line', 169
    find_lex $P362, "$lastlit"
    set $S363, $P362
    isgt $I364, $S363, ""
    unless $I364, if_361_end
    find_lex $P365, "@parts"
    find_lex $P366, "$lastlit"
    $P365."push"($P366)
  if_361_end:
.annotate 'line', 170
    find_lex $P369, "@parts"
    if $P369, if_368
    new $P372, "String"
    assign $P372, ""
    set $P367, $P372
    goto if_368_end
  if_368:
    find_lex $P370, "@parts"
    $P371 = $P370."shift"()
    set $P367, $P371
  if_368_end:
    store_lex "$past", $P367
.annotate 'line', 171
    new $P380, 'ExceptionHandler'
    set_label $P380, loop379_handler
    $P380."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P380
  loop379_test:
    find_lex $P373, "@parts"
    unless $P373, loop379_done
  loop379_redo:
.annotate 'line', 172
    get_hll_global $P374, ["PAST"], "Op"
    find_lex $P375, "$past"
    find_lex $P376, "@parts"
    $P377 = $P376."shift"()
    $P378 = $P374."new"($P375, $P377, "concat" :named("pirop"))
    store_lex "$past", $P378
  loop379_next:
.annotate 'line', 171
    goto loop379_test
  loop379_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P381, exception, 'type'
    eq $P381, .CONTROL_LOOP_NEXT, loop379_next
    eq $P381, .CONTROL_LOOP_REDO, loop379_redo
  loop379_done:
    pop_eh 
.annotate 'line', 174
    find_lex $P382, "$/"
    find_lex $P383, "$past"
    $P384 = $P382."!make"($P383)
.annotate 'line', 152
    .return ($P384)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block325"  :anon :subid("35_1300051152.284") :outer("34_1300051152.284")
    .param pmc param_328
.annotate 'line', 156
    new $P327, "Undef"
    .lex "$ast", $P327
    .lex "$_", param_328
    find_lex $P329, "$_"
    $P330 = $P329."ast"()
    store_lex "$ast", $P330
.annotate 'line', 157
    get_hll_global $P333, ["PAST"], "Node"
    find_lex $P334, "$ast"
    $P335 = $P333."ACCEPTS"($P334)
    isfalse $I336, $P335
    if $I336, if_332
.annotate 'line', 160
    find_lex $P342, "$ast"
    get_hll_global $P343, ["PAST"], "Val"
    $P344 = $P342."isa"($P343)
    if $P344, if_341
.annotate 'line', 164
    find_lex $P350, "$lastlit"
    set $S351, $P350
    isgt $I352, $S351, ""
    unless $I352, if_349_end
    find_lex $P353, "@parts"
    find_lex $P354, "$lastlit"
    $P353."push"($P354)
  if_349_end:
.annotate 'line', 165
    find_lex $P355, "@parts"
    find_lex $P356, "$ast"
    $P355."push"($P356)
.annotate 'line', 166
    new $P357, "String"
    assign $P357, ""
    store_lex "$lastlit", $P357
.annotate 'line', 163
    set $P340, $P357
.annotate 'line', 160
    goto if_341_end
  if_341:
.annotate 'line', 161
    find_lex $P345, "$lastlit"
    find_lex $P346, "$ast"
    $S347 = $P346."value"()
    concat $P348, $P345, $S347
    store_lex "$lastlit", $P348
.annotate 'line', 160
    set $P340, $P348
  if_341_end:
    set $P331, $P340
.annotate 'line', 157
    goto if_332_end
  if_332:
.annotate 'line', 158
    find_lex $P337, "$lastlit"
    find_lex $P338, "$ast"
    concat $P339, $P337, $P338
    store_lex "$lastlit", $P339
.annotate 'line', 157
    set $P331, $P339
  if_332_end:
.annotate 'line', 155
    .return ($P331)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_atom"  :subid("36_1300051152.284") :outer("11_1300051152.284")
    .param pmc param_386
    .param pmc param_387
.annotate 'line', 177
    .lex "self", param_386
    .lex "$/", param_387
.annotate 'line', 178
    find_lex $P388, "$/"
    find_lex $P391, "$/"
    unless_null $P391, vivify_105
    $P391 = root_new ['parrot';'Hash']
  vivify_105:
    set $P392, $P391["quote_escape"]
    unless_null $P392, vivify_106
    new $P392, "Undef"
  vivify_106:
    if $P392, if_390
    find_lex $P396, "$/"
    set $S397, $P396
    new $P389, 'String'
    set $P389, $S397
    goto if_390_end
  if_390:
    find_lex $P393, "$/"
    unless_null $P393, vivify_107
    $P393 = root_new ['parrot';'Hash']
  vivify_107:
    set $P394, $P393["quote_escape"]
    unless_null $P394, vivify_108
    new $P394, "Undef"
  vivify_108:
    $P395 = $P394."ast"()
    set $P389, $P395
  if_390_end:
    $P398 = $P388."!make"($P389)
.annotate 'line', 177
    .return ($P398)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<backslash>"  :subid("37_1300051152.284") :outer("11_1300051152.284")
    .param pmc param_400
    .param pmc param_401
.annotate 'line', 181
    .lex "self", param_400
    .lex "$/", param_401
    find_lex $P402, "$/"
    $P403 = $P402."!make"("\\")
    .return ($P403)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<stopper>"  :subid("38_1300051152.284") :outer("11_1300051152.284")
    .param pmc param_405
    .param pmc param_406
.annotate 'line', 182
    .lex "self", param_405
    .lex "$/", param_406
    find_lex $P407, "$/"
    find_lex $P408, "$/"
    unless_null $P408, vivify_109
    $P408 = root_new ['parrot';'Hash']
  vivify_109:
    set $P409, $P408["stopper"]
    unless_null $P409, vivify_110
    new $P409, "Undef"
  vivify_110:
    set $S410, $P409
    $P411 = $P407."!make"($S410)
    .return ($P411)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<bs>"  :subid("39_1300051152.284") :outer("11_1300051152.284")
    .param pmc param_413
    .param pmc param_414
.annotate 'line', 184
    .lex "self", param_413
    .lex "$/", param_414
    find_lex $P415, "$/"
    $P416 = $P415."!make"("\b")
    .return ($P416)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<nl>"  :subid("40_1300051152.284") :outer("11_1300051152.284")
    .param pmc param_418
    .param pmc param_419
.annotate 'line', 185
    .lex "self", param_418
    .lex "$/", param_419
    find_lex $P420, "$/"
    $P421 = $P420."!make"("\n")
    .return ($P421)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<cr>"  :subid("41_1300051152.284") :outer("11_1300051152.284")
    .param pmc param_423
    .param pmc param_424
.annotate 'line', 186
    .lex "self", param_423
    .lex "$/", param_424
    find_lex $P425, "$/"
    $P426 = $P425."!make"("\r")
    .return ($P426)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<tab>"  :subid("42_1300051152.284") :outer("11_1300051152.284")
    .param pmc param_428
    .param pmc param_429
.annotate 'line', 187
    .lex "self", param_428
    .lex "$/", param_429
    find_lex $P430, "$/"
    $P431 = $P430."!make"("\t")
    .return ($P431)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<ff>"  :subid("43_1300051152.284") :outer("11_1300051152.284")
    .param pmc param_433
    .param pmc param_434
.annotate 'line', 188
    .lex "self", param_433
    .lex "$/", param_434
    find_lex $P435, "$/"
    $P436 = $P435."!make"("\f")
    .return ($P436)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<esc>"  :subid("44_1300051152.284") :outer("11_1300051152.284")
    .param pmc param_438
    .param pmc param_439
.annotate 'line', 189
    .lex "self", param_438
    .lex "$/", param_439
    find_lex $P440, "$/"
    $P441 = $P440."!make"("\e")
    .return ($P441)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<hex>"  :subid("45_1300051152.284") :outer("11_1300051152.284")
    .param pmc param_443
    .param pmc param_444
.annotate 'line', 191
    .lex "self", param_443
    .lex "$/", param_444
.annotate 'line', 192
    find_lex $P445, "$/"
    find_lex $P448, "$/"
    unless_null $P448, vivify_111
    $P448 = root_new ['parrot';'Hash']
  vivify_111:
    set $P449, $P448["hexint"]
    unless_null $P449, vivify_112
    new $P449, "Undef"
  vivify_112:
    if $P449, if_447
    find_lex $P452, "$/"
    unless_null $P452, vivify_113
    $P452 = root_new ['parrot';'Hash']
  vivify_113:
    set $P453, $P452["hexints"]
    unless_null $P453, vivify_114
    $P453 = root_new ['parrot';'Hash']
  vivify_114:
    set $P454, $P453["hexint"]
    unless_null $P454, vivify_115
    new $P454, "Undef"
  vivify_115:
    set $P446, $P454
    goto if_447_end
  if_447:
    find_lex $P450, "$/"
    unless_null $P450, vivify_116
    $P450 = root_new ['parrot';'Hash']
  vivify_116:
    set $P451, $P450["hexint"]
    unless_null $P451, vivify_117
    new $P451, "Undef"
  vivify_117:
    set $P446, $P451
  if_447_end:
    $P455 = "ints_to_string"($P446)
    $P456 = $P445."!make"($P455)
.annotate 'line', 191
    .return ($P456)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<oct>"  :subid("46_1300051152.284") :outer("11_1300051152.284")
    .param pmc param_458
    .param pmc param_459
.annotate 'line', 195
    .lex "self", param_458
    .lex "$/", param_459
.annotate 'line', 196
    find_lex $P460, "$/"
    find_lex $P463, "$/"
    unless_null $P463, vivify_118
    $P463 = root_new ['parrot';'Hash']
  vivify_118:
    set $P464, $P463["octint"]
    unless_null $P464, vivify_119
    new $P464, "Undef"
  vivify_119:
    if $P464, if_462
    find_lex $P467, "$/"
    unless_null $P467, vivify_120
    $P467 = root_new ['parrot';'Hash']
  vivify_120:
    set $P468, $P467["octints"]
    unless_null $P468, vivify_121
    $P468 = root_new ['parrot';'Hash']
  vivify_121:
    set $P469, $P468["octint"]
    unless_null $P469, vivify_122
    new $P469, "Undef"
  vivify_122:
    set $P461, $P469
    goto if_462_end
  if_462:
    find_lex $P465, "$/"
    unless_null $P465, vivify_123
    $P465 = root_new ['parrot';'Hash']
  vivify_123:
    set $P466, $P465["octint"]
    unless_null $P466, vivify_124
    new $P466, "Undef"
  vivify_124:
    set $P461, $P466
  if_462_end:
    $P470 = "ints_to_string"($P461)
    $P471 = $P460."!make"($P470)
.annotate 'line', 195
    .return ($P471)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<chr>"  :subid("47_1300051152.284") :outer("11_1300051152.284")
    .param pmc param_473
    .param pmc param_474
.annotate 'line', 199
    .lex "self", param_473
    .lex "$/", param_474
.annotate 'line', 200
    find_lex $P475, "$/"
    find_lex $P476, "$/"
    unless_null $P476, vivify_125
    $P476 = root_new ['parrot';'Hash']
  vivify_125:
    set $P477, $P476["charspec"]
    unless_null $P477, vivify_126
    new $P477, "Undef"
  vivify_126:
    $P478 = $P477."ast"()
    $P479 = $P475."!make"($P478)
.annotate 'line', 199
    .return ($P479)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<0>"  :subid("48_1300051152.284") :outer("11_1300051152.284")
    .param pmc param_481
    .param pmc param_482
.annotate 'line', 203
    .lex "self", param_481
    .lex "$/", param_482
.annotate 'line', 204
    find_lex $P483, "$/"
    $P484 = $P483."!make"(unicode:"\x{0}")
.annotate 'line', 203
    .return ($P484)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<misc>"  :subid("49_1300051152.284") :outer("11_1300051152.284")
    .param pmc param_486
    .param pmc param_487
.annotate 'line', 207
    .lex "self", param_486
    .lex "$/", param_487
.annotate 'line', 208
    find_lex $P488, "$/"
    find_lex $P491, "$/"
    unless_null $P491, vivify_127
    $P491 = root_new ['parrot';'Hash']
  vivify_127:
    set $P492, $P491["textq"]
    unless_null $P492, vivify_128
    new $P492, "Undef"
  vivify_128:
    if $P492, if_490
    find_lex $P498, "$/"
    unless_null $P498, vivify_129
    $P498 = root_new ['parrot';'Hash']
  vivify_129:
    set $P499, $P498["textqq"]
    unless_null $P499, vivify_130
    new $P499, "Undef"
  vivify_130:
    $P500 = $P499."Str"()
    set $P489, $P500
    goto if_490_end
  if_490:
    new $P493, "String"
    assign $P493, "\\"
    find_lex $P494, "$/"
    unless_null $P494, vivify_131
    $P494 = root_new ['parrot';'Hash']
  vivify_131:
    set $P495, $P494["textq"]
    unless_null $P495, vivify_132
    new $P495, "Undef"
  vivify_132:
    $S496 = $P495."Str"()
    concat $P497, $P493, $S496
    set $P489, $P497
  if_490_end:
    $P501 = $P488."!make"($P489)
.annotate 'line', 207
    .return ($P501)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "charname"  :subid("50_1300051152.284") :outer("11_1300051152.284")
    .param pmc param_503
    .param pmc param_504
.annotate 'line', 211
    .lex "self", param_503
    .lex "$/", param_504
.annotate 'line', 212
    new $P505, "Undef"
    .lex "$codepoint", $P505
.annotate 'line', 213
    find_lex $P508, "$/"
    unless_null $P508, vivify_133
    $P508 = root_new ['parrot';'Hash']
  vivify_133:
    set $P509, $P508["integer"]
    unless_null $P509, vivify_134
    new $P509, "Undef"
  vivify_134:
    if $P509, if_507
.annotate 'line', 214
    find_lex $P513, "$/"
    set $S514, $P513
    find_codepoint $I515, $S514
    new $P506, 'Integer'
    set $P506, $I515
.annotate 'line', 213
    goto if_507_end
  if_507:
    find_lex $P510, "$/"
    unless_null $P510, vivify_135
    $P510 = root_new ['parrot';'Hash']
  vivify_135:
    set $P511, $P510["integer"]
    unless_null $P511, vivify_136
    new $P511, "Undef"
  vivify_136:
    $P512 = $P511."ast"()
    set $P506, $P512
  if_507_end:
    store_lex "$codepoint", $P506
.annotate 'line', 215
    find_lex $P517, "$codepoint"
    set $N518, $P517
    islt $I519, $N518, 0.0
    unless $I519, if_516_end
    find_lex $P520, "$/"
    $P521 = $P520."CURSOR"()
    new $P522, 'String'
    set $P522, "Unrecognized character name "
    find_lex $P523, "$/"
    concat $P524, $P522, $P523
    $P521."panic"($P524)
  if_516_end:
.annotate 'line', 216
    find_lex $P525, "$/"
    find_lex $P526, "$codepoint"
    set $I527, $P526
    chr $S528, $I527
    $P529 = $P525."!make"($S528)
.annotate 'line', 211
    .return ($P529)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "charnames"  :subid("51_1300051152.284") :outer("11_1300051152.284")
    .param pmc param_531
    .param pmc param_532
.annotate 'line', 219
    .const 'Sub' $P541 = "52_1300051152.284" 
    capture_lex $P541
    .lex "self", param_531
    .lex "$/", param_532
.annotate 'line', 220
    new $P533, "Undef"
    .lex "$str", $P533
    new $P534, "String"
    assign $P534, ""
    store_lex "$str", $P534
.annotate 'line', 221
    find_lex $P536, "$/"
    unless_null $P536, vivify_137
    $P536 = root_new ['parrot';'Hash']
  vivify_137:
    set $P537, $P536["charname"]
    unless_null $P537, vivify_138
    new $P537, "Undef"
  vivify_138:
    defined $I538, $P537
    unless $I538, for_undef_139
    iter $P535, $P537
    new $P548, 'ExceptionHandler'
    set_label $P548, loop547_handler
    $P548."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P548
  loop547_test:
    unless $P535, loop547_done
    shift $P539, $P535
  loop547_redo:
    .const 'Sub' $P541 = "52_1300051152.284" 
    capture_lex $P541
    $P541($P539)
  loop547_next:
    goto loop547_test
  loop547_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P549, exception, 'type'
    eq $P549, .CONTROL_LOOP_NEXT, loop547_next
    eq $P549, .CONTROL_LOOP_REDO, loop547_redo
  loop547_done:
    pop_eh 
  for_undef_139:
.annotate 'line', 222
    find_lex $P550, "$/"
    find_lex $P551, "$str"
    $P552 = $P550."!make"($P551)
.annotate 'line', 219
    .return ($P552)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block540"  :anon :subid("52_1300051152.284") :outer("51_1300051152.284")
    .param pmc param_542
.annotate 'line', 221
    .lex "$_", param_542
    find_lex $P543, "$str"
    find_lex $P544, "$_"
    $S545 = $P544."ast"()
    concat $P546, $P543, $S545
    store_lex "$str", $P546
    .return ($P546)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "charspec"  :subid("53_1300051152.284") :outer("11_1300051152.284")
    .param pmc param_554
    .param pmc param_555
.annotate 'line', 225
    .lex "self", param_554
    .lex "$/", param_555
.annotate 'line', 226
    find_lex $P556, "$/"
    find_lex $P559, "$/"
    unless_null $P559, vivify_140
    $P559 = root_new ['parrot';'Hash']
  vivify_140:
    set $P560, $P559["charnames"]
    unless_null $P560, vivify_141
    new $P560, "Undef"
  vivify_141:
    if $P560, if_558
    find_lex $P564, "$/"
    $I565 = "string_to_int"($P564, 10)
    chr $S566, $I565
    new $P557, 'String'
    set $P557, $S566
    goto if_558_end
  if_558:
    find_lex $P561, "$/"
    unless_null $P561, vivify_142
    $P561 = root_new ['parrot';'Hash']
  vivify_142:
    set $P562, $P561["charnames"]
    unless_null $P562, vivify_143
    new $P562, "Undef"
  vivify_143:
    $P563 = $P562."ast"()
    set $P557, $P563
  if_558_end:
    $P567 = $P556."!make"($P557)
.annotate 'line', 225
    .return ($P567)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block569" :load :anon :subid("54_1300051152.284")
.annotate 'line', 3
    .const 'Sub' $P571 = "11_1300051152.284" 
    $P572 = $P571()
    .return ($P572)
.end


.HLL "nqp"

.namespace []
.sub "_block653" :load :anon :subid("56_1300051152.284")
.annotate 'line', 1
    .const 'Sub' $P655 = "10_1300051152.284" 
    $P656 = $P655()
    .return ($P656)
.end

### .include 'gen/hllcompiler.pir'

.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1300051155.264")
.annotate 'line', 0
    get_hll_global $P19, ["HLL";"Compiler"], "_block18" 
    capture_lex $P19
    .const 'Sub' $P17 = "11_1300051155.264" 
    capture_lex $P17
.annotate 'line', 1
    getinterp $P13
    get_class $P14, "LexPad"
    get_class $P15, "NQPLexPad"
    $P13."hll_map"($P14, $P15)
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
    .const 'Sub' $P17 = "11_1300051155.264" 
    capture_lex $P17
    $P17()
.annotate 'line', 9
    get_hll_global $P19, ["HLL";"Compiler"], "_block18" 
    capture_lex $P19
    $P1229 = $P19()
.annotate 'line', 1
    .return ($P1229)
    .const 'Sub' $P1231 = "78_1300051155.264" 
    .return ($P1231)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post79") :outer("10_1300051155.264")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1300051155.264" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P1235, "1300051152.647"
    isnull $I1236, $P1235
    if $I1236, if_1234
    nqp_get_sc_object $P1243, "1300051152.647", 0
    set_hll_global ["HLL"], "Compiler", $P1243
    goto if_1234_end
  if_1234:
    nqp_dynop_setup 
    load_bytecode "nqpmo.pbc"
    nqp_create_sc $P1237, "1300051152.647"
    .local pmc cur_sc
    set cur_sc, $P1237
    load_bytecode "SettingManager.pbc"
    get_hll_global $P1238, ["HLL"], "SettingManager"
    $P1239 = $P1238."load_setting"("NQPCORE")
    block."set_outer_ctx"($P1239)
    get_hll_global $P1240, "NQPClassHOW"
    $P1241 = $P1240."new_type"("HLL::Compiler" :named("name"))
    nqp_set_sc_for_object $P1241, cur_sc
    nqp_set_sc_object "1300051152.647", 0, $P1241
    nqp_get_sc_object $P1242, "1300051152.647", 0
    set_hll_global ["HLL"], "Compiler", $P1242
  if_1234_end:
.end


.HLL "nqp"

.namespace []
.sub "_block16"  :anon :subid("11_1300051155.264") :outer("10_1300051155.264")
.annotate 'line', 1
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post80") :outer("11_1300051155.264")
.annotate 'line', 1
    .const 'Sub' $P17 = "11_1300051155.264" 
    .local pmc block
    set block, $P17
.annotate 'line', 2
    load_bytecode "Parrot/Exception.pbc"
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block18"  :subid("12_1300051155.264") :outer("10_1300051155.264")
.annotate 'line', 9
    .const 'Sub' $P1120 = "77_1300051155.264" 
    capture_lex $P1120
    .const 'Sub' $P1112 = "76_1300051155.264" 
    capture_lex $P1112
    .const 'Sub' $P1059 = "74_1300051155.264" 
    capture_lex $P1059
    .const 'Sub' $P986 = "71_1300051155.264" 
    capture_lex $P986
    .const 'Sub' $P956 = "69_1300051155.264" 
    capture_lex $P956
    .const 'Sub' $P951 = "68_1300051155.264" 
    capture_lex $P951
    .const 'Sub' $P941 = "67_1300051155.264" 
    capture_lex $P941
    .const 'Sub' $P915 = "65_1300051155.264" 
    capture_lex $P915
    .const 'Sub' $P906 = "64_1300051155.264" 
    capture_lex $P906
    .const 'Sub' $P898 = "63_1300051155.264" 
    capture_lex $P898
    .const 'Sub' $P890 = "62_1300051155.264" 
    capture_lex $P890
    .const 'Sub' $P886 = "61_1300051155.264" 
    capture_lex $P886
    .const 'Sub' $P882 = "60_1300051155.264" 
    capture_lex $P882
    .const 'Sub' $P815 = "58_1300051155.264" 
    capture_lex $P815
    .const 'Sub' $P719 = "54_1300051155.264" 
    capture_lex $P719
    .const 'Sub' $P683 = "51_1300051155.264" 
    capture_lex $P683
    .const 'Sub' $P635 = "49_1300051155.264" 
    capture_lex $P635
    .const 'Sub' $P622 = "48_1300051155.264" 
    capture_lex $P622
    .const 'Sub' $P609 = "47_1300051155.264" 
    capture_lex $P609
    .const 'Sub' $P596 = "46_1300051155.264" 
    capture_lex $P596
    .const 'Sub' $P583 = "45_1300051155.264" 
    capture_lex $P583
    .const 'Sub' $P570 = "44_1300051155.264" 
    capture_lex $P570
    .const 'Sub' $P557 = "43_1300051155.264" 
    capture_lex $P557
    .const 'Sub' $P544 = "42_1300051155.264" 
    capture_lex $P544
    .const 'Sub' $P531 = "41_1300051155.264" 
    capture_lex $P531
    .const 'Sub' $P526 = "40_1300051155.264" 
    capture_lex $P526
    .const 'Sub' $P522 = "39_1300051155.264" 
    capture_lex $P522
    .const 'Sub' $P482 = "37_1300051155.264" 
    capture_lex $P482
    .const 'Sub' $P335 = "30_1300051155.264" 
    capture_lex $P335
    .const 'Sub' $P322 = "29_1300051155.264" 
    capture_lex $P322
    .const 'Sub' $P229 = "24_1300051155.264" 
    capture_lex $P229
    .const 'Sub' $P196 = "22_1300051155.264" 
    capture_lex $P196
    .const 'Sub' $P181 = "21_1300051155.264" 
    capture_lex $P181
    .const 'Sub' $P166 = "20_1300051155.264" 
    capture_lex $P166
    .const 'Sub' $P79 = "17_1300051155.264" 
    capture_lex $P79
    .const 'Sub' $P42 = "15_1300051155.264" 
    capture_lex $P42
    .const 'Sub' $P35 = "14_1300051155.264" 
    capture_lex $P35
    .const 'Sub' $P21 = "13_1300051155.264" 
    capture_lex $P21
    get_global $P20, "$?CLASS"
.annotate 'line', 64
    .const 'Sub' $P21 = "13_1300051155.264" 
    newclosure $P34, $P21
    .lex "value_type", $P34
.annotate 'line', 29
    find_lex $P78, "value_type"
.annotate 'line', 660
    .const 'Sub' $P1112 = "76_1300051155.264" 
    newclosure $P1118, $P1112
.annotate 'line', 9
    .return ($P1118)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "" :load :init :subid("post81") :outer("12_1300051155.264")
.annotate 'line', 9
    get_hll_global $P19, ["HLL";"Compiler"], "_block18" 
    .local pmc block
    set block, $P19
    .const 'Sub' $P1120 = "77_1300051155.264" 
    capture_lex $P1120
    $P1120()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1119"  :anon :subid("77_1300051155.264") :outer("12_1300051155.264")
.annotate 'line', 9
    nqp_get_sc_object $P1121, "1300051152.647", 0
    .local pmc type_obj
    set type_obj, $P1121
    set_global "$?CLASS", type_obj
    get_how $P1122, type_obj
    get_hll_global $P1123, "NQPAttribute"
    $P1124 = $P1123."new"("@!stages" :named("name"))
    $P1122."add_attribute"(type_obj, $P1124)
    get_how $P1125, type_obj
    get_hll_global $P1126, "NQPAttribute"
    $P1127 = $P1126."new"("$!parsegrammar" :named("name"))
    $P1125."add_attribute"(type_obj, $P1127)
    get_how $P1128, type_obj
    get_hll_global $P1129, "NQPAttribute"
    $P1130 = $P1129."new"("$!parseactions" :named("name"))
    $P1128."add_attribute"(type_obj, $P1130)
    get_how $P1131, type_obj
    get_hll_global $P1132, "NQPAttribute"
    $P1133 = $P1132."new"("$!astgrammar" :named("name"))
    $P1131."add_attribute"(type_obj, $P1133)
    get_how $P1134, type_obj
    get_hll_global $P1135, "NQPAttribute"
    $P1136 = $P1135."new"("$!commandline_banner" :named("name"))
    $P1134."add_attribute"(type_obj, $P1136)
    get_how $P1137, type_obj
    get_hll_global $P1138, "NQPAttribute"
    $P1139 = $P1138."new"("$!commandline_prompt" :named("name"))
    $P1137."add_attribute"(type_obj, $P1139)
    get_how $P1140, type_obj
    get_hll_global $P1141, "NQPAttribute"
    $P1142 = $P1141."new"("@!cmdoptions" :named("name"))
    $P1140."add_attribute"(type_obj, $P1142)
    get_how $P1143, type_obj
    get_hll_global $P1144, "NQPAttribute"
    $P1145 = $P1144."new"("$!usage" :named("name"))
    $P1143."add_attribute"(type_obj, $P1145)
    get_how $P1146, type_obj
    get_hll_global $P1147, "NQPAttribute"
    $P1148 = $P1147."new"("$!version" :named("name"))
    $P1146."add_attribute"(type_obj, $P1148)
    get_how $P1149, type_obj
    get_hll_global $P1150, "NQPAttribute"
    $P1151 = $P1150."new"("$!compiler_progname" :named("name"))
    $P1149."add_attribute"(type_obj, $P1151)
    get_how $P1152, type_obj
    get_hll_global $P1153, "NQPAttribute"
    $P1154 = $P1153."new"("$!language" :named("name"))
    $P1152."add_attribute"(type_obj, $P1154)
    get_how $P1155, type_obj
    .const 'Sub' $P1156 = "14_1300051155.264" 
    $P1155."add_method"(type_obj, "new", $P1156)
    get_how $P1157, type_obj
    .const 'Sub' $P1158 = "15_1300051155.264" 
    $P1157."add_method"(type_obj, "BUILD", $P1158)
    get_how $P1159, type_obj
    .const 'Sub' $P1160 = "17_1300051155.264" 
    $P1159."add_method"(type_obj, "get_exports", $P1160)
    get_how $P1161, type_obj
    .const 'Sub' $P1162 = "20_1300051155.264" 
    $P1161."add_method"(type_obj, "get_module", $P1162)
    get_how $P1163, type_obj
    .const 'Sub' $P1164 = "21_1300051155.264" 
    $P1163."add_method"(type_obj, "language", $P1164)
    get_how $P1165, type_obj
    .const 'Sub' $P1166 = "22_1300051155.264" 
    $P1165."add_method"(type_obj, "load_module", $P1166)
    get_how $P1167, type_obj
    .const 'Sub' $P1168 = "24_1300051155.264" 
    $P1167."add_method"(type_obj, "import", $P1168)
    get_how $P1169, type_obj
    .const 'Sub' $P1170 = "29_1300051155.264" 
    $P1169."add_method"(type_obj, "autoprint", $P1170)
    get_how $P1171, type_obj
    .const 'Sub' $P1172 = "30_1300051155.264" 
    $P1171."add_method"(type_obj, "interactive", $P1172)
    get_how $P1173, type_obj
    .const 'Sub' $P1174 = "37_1300051155.264" 
    $P1173."add_method"(type_obj, "eval", $P1174)
    get_how $P1175, type_obj
    .const 'Sub' $P1176 = "39_1300051155.264" 
    $P1175."add_method"(type_obj, "ctxsave", $P1176)
    get_how $P1177, type_obj
    .const 'Sub' $P1178 = "40_1300051155.264" 
    $P1177."add_method"(type_obj, "panic", $P1178)
    get_how $P1179, type_obj
    .const 'Sub' $P1180 = "41_1300051155.264" 
    $P1179."add_method"(type_obj, "stages", $P1180)
    get_how $P1181, type_obj
    .const 'Sub' $P1182 = "42_1300051155.264" 
    $P1181."add_method"(type_obj, "parsegrammar", $P1182)
    get_how $P1183, type_obj
    .const 'Sub' $P1184 = "43_1300051155.264" 
    $P1183."add_method"(type_obj, "parseactions", $P1184)
    get_how $P1185, type_obj
    .const 'Sub' $P1186 = "44_1300051155.264" 
    $P1185."add_method"(type_obj, "astgrammar", $P1186)
    get_how $P1187, type_obj
    .const 'Sub' $P1188 = "45_1300051155.264" 
    $P1187."add_method"(type_obj, "commandline_banner", $P1188)
    get_how $P1189, type_obj
    .const 'Sub' $P1190 = "46_1300051155.264" 
    $P1189."add_method"(type_obj, "commandline_prompt", $P1190)
    get_how $P1191, type_obj
    .const 'Sub' $P1192 = "47_1300051155.264" 
    $P1191."add_method"(type_obj, "compiler_progname", $P1192)
    get_how $P1193, type_obj
    .const 'Sub' $P1194 = "48_1300051155.264" 
    $P1193."add_method"(type_obj, "commandline_options", $P1194)
    get_how $P1195, type_obj
    .const 'Sub' $P1196 = "49_1300051155.264" 
    $P1195."add_method"(type_obj, "command_line", $P1196)
    get_how $P1197, type_obj
    .const 'Sub' $P1198 = "51_1300051155.264" 
    $P1197."add_method"(type_obj, "process_args", $P1198)
    get_how $P1199, type_obj
    .const 'Sub' $P1200 = "54_1300051155.264" 
    $P1199."add_method"(type_obj, "evalfiles", $P1200)
    get_how $P1201, type_obj
    .const 'Sub' $P1202 = "58_1300051155.264" 
    $P1201."add_method"(type_obj, "compile", $P1202)
    get_how $P1203, type_obj
    .const 'Sub' $P1204 = "60_1300051155.264" 
    $P1203."add_method"(type_obj, "parse", $P1204)
    get_how $P1205, type_obj
    .const 'Sub' $P1206 = "61_1300051155.264" 
    $P1205."add_method"(type_obj, "past", $P1206)
    get_how $P1207, type_obj
    .const 'Sub' $P1208 = "62_1300051155.264" 
    $P1207."add_method"(type_obj, "post", $P1208)
    get_how $P1209, type_obj
    .const 'Sub' $P1210 = "63_1300051155.264" 
    $P1209."add_method"(type_obj, "pir", $P1210)
    get_how $P1211, type_obj
    .const 'Sub' $P1212 = "64_1300051155.264" 
    $P1211."add_method"(type_obj, "evalpmc", $P1212)
    get_how $P1213, type_obj
    .const 'Sub' $P1214 = "65_1300051155.264" 
    $P1213."add_method"(type_obj, "dumper", $P1214)
    get_how $P1215, type_obj
    .const 'Sub' $P1216 = "67_1300051155.264" 
    $P1215."add_method"(type_obj, "usage", $P1216)
    get_how $P1217, type_obj
    .const 'Sub' $P1218 = "68_1300051155.264" 
    $P1217."add_method"(type_obj, "version", $P1218)
    get_how $P1219, type_obj
    .const 'Sub' $P1220 = "69_1300051155.264" 
    $P1219."add_method"(type_obj, "removestage", $P1220)
    get_how $P1221, type_obj
    .const 'Sub' $P1222 = "71_1300051155.264" 
    $P1221."add_method"(type_obj, "addstage", $P1222)
    get_how $P1223, type_obj
    .const 'Sub' $P1224 = "74_1300051155.264" 
    $P1223."add_method"(type_obj, "parse_name", $P1224)
    get_how $P1225, type_obj
    .const 'Sub' $P1226 = "76_1300051155.264" 
    $P1225."add_method"(type_obj, "lineof", $P1226)
    get_how $P1227, type_obj
    $P1228 = $P1227."compose"(type_obj)
    .return ($P1228)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "value_type"  :subid("13_1300051155.264") :outer("12_1300051155.264")
    .param pmc param_22
.annotate 'line', 64
    .lex "$value", param_22
.annotate 'line', 65
    find_lex $P25, "$value"
    isa $I26, $P25, "NameSpace"
    if $I26, if_24
.annotate 'line', 67
    find_lex $P30, "$value"
    isa $I31, $P30, "Sub"
    if $I31, if_29
    new $P33, "String"
    assign $P33, "var"
    set $P28, $P33
    goto if_29_end
  if_29:
    new $P32, "String"
    assign $P32, "sub"
    set $P28, $P32
  if_29_end:
    set $P23, $P28
.annotate 'line', 65
    goto if_24_end
  if_24:
    new $P27, "String"
    assign $P27, "namespace"
    set $P23, $P27
  if_24_end:
.annotate 'line', 64
    .return ($P23)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "new"  :subid("14_1300051155.264") :outer("12_1300051155.264")
    .param pmc param_36
.annotate 'line', 23
    .lex "self", param_36
.annotate 'line', 24
    new $P37, "Undef"
    .lex "$obj", $P37
    find_lex $P38, "self"
    repr_instance_of $P39, $P38
    store_lex "$obj", $P39
.annotate 'line', 25
    find_lex $P40, "$obj"
    $P40."BUILD"()
    find_lex $P41, "$obj"
.annotate 'line', 23
    .return ($P41)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "BUILD"  :subid("15_1300051155.264") :outer("12_1300051155.264")
    .param pmc param_43
.annotate 'line', 29
    .const 'Sub' $P60 = "16_1300051155.264" 
    capture_lex $P60
    .lex "self", param_43
.annotate 'line', 31
    split $P44, " ", "parse past post pir evalpmc"
    find_lex $P45, "self"
    get_global $P46, "$?CLASS"
    setattribute $P45, $P46, "@!stages", $P44
.annotate 'line', 34
    split $P47, " ", "e=s help|h target=s dumper=s trace|t=s encoding=s output|o=s combine version|v stagestats ll-backtrace"
    find_lex $P48, "self"
    get_global $P49, "$?CLASS"
    setattribute $P48, $P49, "@!cmdoptions", $P47
.annotate 'line', 35
    new $P50, "String"
    assign $P50, "This compiler is based on HLL::Compler.\n\nOptions:\n"
    find_lex $P51, "self"
    get_global $P52, "$?CLASS"
    setattribute $P51, $P52, "$!usage", $P50
.annotate 'line', 36
    find_lex $P54, "self"
    get_global $P55, "$?CLASS"
    getattribute $P56, $P54, $P55, "@!cmdoptions"
    unless_null $P56, vivify_82
    $P56 = root_new ['parrot';'ResizablePMCArray']
  vivify_82:
    defined $I57, $P56
    unless $I57, for_undef_83
    iter $P53, $P56
    new $P73, 'ExceptionHandler'
    set_label $P73, loop72_handler
    $P73."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P73
  loop72_test:
    unless $P53, loop72_done
    shift $P58, $P53
  loop72_redo:
    .const 'Sub' $P60 = "16_1300051155.264" 
    capture_lex $P60
    $P60($P58)
  loop72_next:
    goto loop72_test
  loop72_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P74, exception, 'type'
    eq $P74, .CONTROL_LOOP_NEXT, loop72_next
    eq $P74, .CONTROL_LOOP_REDO, loop72_redo
  loop72_done:
    pop_eh 
  for_undef_83:
.annotate 'line', 41

            .include 'iglobals.pasm'
            .include 'cclass.pasm'
            $S0  = '???'
            push_eh _handler
            $P0 = getinterp
            $P0 = $P0[.IGLOBALS_CONFIG_HASH]
            $S0  = $P0['git_describe']   # also $I0 = P0['installed'] could be used
          _handler:
            pop_eh
            $P75  = box 'This compiler is built with the Parrot Compiler Toolkit, parrot '
            if $S0 goto _revision_lab
            $P75 .= 'version '
            $S0 = $P0['VERSION']
            goto _is_version
          _revision_lab:
            $P75 .= 'revision '
          _is_version:
            $P75 .= $S0
            $P75 .= '.'
        
    find_lex $P76, "self"
    get_global $P77, "$?CLASS"
    setattribute $P76, $P77, "$!version", $P75
.annotate 'line', 29
    .return ($P75)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block59"  :anon :subid("16_1300051155.264") :outer("15_1300051155.264")
    .param pmc param_61
.annotate 'line', 36
    .lex "$_", param_61
.annotate 'line', 37
    find_lex $P62, "self"
    get_global $P63, "$?CLASS"
    getattribute $P64, $P62, $P63, "$!usage"
    unless_null $P64, vivify_84
    new $P64, "Undef"
  vivify_84:
    new $P65, 'String'
    set $P65, "    "
    find_lex $P66, "$_"
    concat $P67, $P65, $P66
    concat $P68, $P67, "\n"
    concat $P69, $P64, $P68
    find_lex $P70, "self"
    get_global $P71, "$?CLASS"
    setattribute $P70, $P71, "$!usage", $P69
.annotate 'line', 36
    .return ($P69)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "get_exports"  :subid("17_1300051155.264") :outer("12_1300051155.264")
    .param pmc param_80
    .param pmc param_81
    .param pmc param_84 :slurpy
    .param pmc param_82 :optional :named("tagset")
    .param int has_param_82 :opt_flag
.annotate 'line', 70
    .const 'Sub' $P150 = "19_1300051155.264" 
    capture_lex $P150
    .const 'Sub' $P129 = "18_1300051155.264" 
    capture_lex $P129
    .lex "self", param_80
    .lex "$module", param_81
    if has_param_82, optparam_85
    new $P83, "Undef"
    set param_82, $P83
  optparam_85:
    .lex "$tagset", param_82
    .lex "@symbols", param_84
.annotate 'line', 77
    $P85 = root_new ['parrot';'Hash']
    .lex "%exports", $P85
.annotate 'line', 78
    $P86 = root_new ['parrot';'Hash']
    .lex "%source", $P86
.annotate 'line', 72
    find_lex $P88, "$module"
    does $I89, $P88, "hash"
    new $P90, 'Integer'
    set $P90, $I89
    isfalse $I91, $P90
    unless $I91, if_87_end
.annotate 'line', 73
    find_lex $P92, "self"
    find_lex $P93, "$module"
    $P94 = $P92."get_module"($P93)
    store_lex "$module", $P94
  if_87_end:
.annotate 'line', 76
    find_lex $P96, "$tagset"
    set $P95, $P96
    defined $I98, $P95
    if $I98, default_97
    find_lex $P101, "@symbols"
    if $P101, if_100
    new $P103, "String"
    assign $P103, "DEFAULT"
    set $P99, $P103
    goto if_100_end
  if_100:
    new $P102, "String"
    assign $P102, "ALL"
    set $P99, $P102
  if_100_end:
    set $P95, $P99
  default_97:
    store_lex "$tagset", $P95
    find_lex $P104, "%exports"
.annotate 'line', 78
    find_lex $P105, "$tagset"
    set $S106, $P105
    find_lex $P107, "$module"
    unless_null $P107, vivify_86
    $P107 = root_new ['parrot';'Hash']
  vivify_86:
    set $P108, $P107["EXPORT"]
    unless_null $P108, vivify_87
    $P108 = root_new ['parrot';'Hash']
  vivify_87:
    set $P109, $P108[$S106]
    unless_null $P109, vivify_88
    new $P109, "Undef"
  vivify_88:
    store_lex "%source", $P109
.annotate 'line', 79
    find_lex $P111, "%source"
    defined $I112, $P111
    new $P113, 'Integer'
    set $P113, $I112
    isfalse $I114, $P113
    unless $I114, if_110_end
.annotate 'line', 80
    find_lex $P117, "$tagset"
    set $S118, $P117
    iseq $I119, $S118, "ALL"
    if $I119, if_116
    $P121 = root_new ['parrot';'Hash']
    set $P115, $P121
    goto if_116_end
  if_116:
    find_lex $P120, "$module"
    set $P115, $P120
  if_116_end:
    store_lex "%source", $P115
  if_110_end:
.annotate 'line', 82
    find_lex $P123, "@symbols"
    if $P123, if_122
.annotate 'line', 89
    find_lex $P146, "%source"
    defined $I147, $P146
    unless $I147, for_undef_89
    iter $P145, $P146
    new $P163, 'ExceptionHandler'
    set_label $P163, loop162_handler
    $P163."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P163
  loop162_test:
    unless $P145, loop162_done
    shift $P148, $P145
  loop162_redo:
    .const 'Sub' $P150 = "19_1300051155.264" 
    capture_lex $P150
    $P150($P148)
  loop162_next:
    goto loop162_test
  loop162_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P164, exception, 'type'
    eq $P164, .CONTROL_LOOP_NEXT, loop162_next
    eq $P164, .CONTROL_LOOP_REDO, loop162_redo
  loop162_done:
    pop_eh 
  for_undef_89:
.annotate 'line', 88
    goto if_122_end
  if_122:
.annotate 'line', 83
    find_lex $P125, "@symbols"
    defined $I126, $P125
    unless $I126, for_undef_92
    iter $P124, $P125
    new $P143, 'ExceptionHandler'
    set_label $P143, loop142_handler
    $P143."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P143
  loop142_test:
    unless $P124, loop142_done
    shift $P127, $P124
  loop142_redo:
    .const 'Sub' $P129 = "18_1300051155.264" 
    capture_lex $P129
    $P129($P127)
  loop142_next:
    goto loop142_test
  loop142_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P144, exception, 'type'
    eq $P144, .CONTROL_LOOP_NEXT, loop142_next
    eq $P144, .CONTROL_LOOP_REDO, loop142_redo
  loop142_done:
    pop_eh 
  for_undef_92:
  if_122_end:
.annotate 'line', 82
    find_lex $P165, "%exports"
.annotate 'line', 70
    .return ($P165)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block149"  :anon :subid("19_1300051155.264") :outer("17_1300051155.264")
    .param pmc param_152
.annotate 'line', 90
    new $P151, "Undef"
    .lex "$value", $P151
    .lex "$_", param_152
    find_lex $P153, "$_"
    $P154 = $P153."value"()
    store_lex "$value", $P154
.annotate 'line', 91
    find_lex $P155, "$value"
    find_lex $P156, "$_"
    $P157 = $P156."key"()
    find_lex $P158, "$value"
    $P159 = "value_type"($P158)
    find_lex $P160, "%exports"
    unless_null $P160, vivify_90
    $P160 = root_new ['parrot';'Hash']
    store_lex "%exports", $P160
  vivify_90:
    set $P161, $P160[$P159]
    unless_null $P161, vivify_91
    $P161 = root_new ['parrot';'Hash']
    set $P160[$P159], $P161
  vivify_91:
    set $P161[$P157], $P155
.annotate 'line', 89
    .return ($P155)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block128"  :anon :subid("18_1300051155.264") :outer("17_1300051155.264")
    .param pmc param_131
.annotate 'line', 84
    new $P130, "Undef"
    .lex "$value", $P130
    .lex "$_", param_131
    find_lex $P132, "$_"
    set $S133, $P132
    find_lex $P134, "%source"
    unless_null $P134, vivify_93
    $P134 = root_new ['parrot';'Hash']
  vivify_93:
    set $P135, $P134[$S133]
    unless_null $P135, vivify_94
    new $P135, "Undef"
  vivify_94:
    store_lex "$value", $P135
.annotate 'line', 85
    find_lex $P136, "$value"
    find_lex $P137, "$_"
    find_lex $P138, "$value"
    $P139 = "value_type"($P138)
    find_lex $P140, "%exports"
    unless_null $P140, vivify_95
    $P140 = root_new ['parrot';'Hash']
    store_lex "%exports", $P140
  vivify_95:
    set $P141, $P140[$P139]
    unless_null $P141, vivify_96
    $P141 = root_new ['parrot';'Hash']
    set $P140[$P139], $P141
  vivify_96:
    set $P141[$P137], $P136
.annotate 'line', 83
    .return ($P136)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "get_module"  :subid("20_1300051155.264") :outer("12_1300051155.264")
    .param pmc param_167
    .param pmc param_168
.annotate 'line', 97
    .lex "self", param_167
    .lex "$name", param_168
.annotate 'line', 98
    $P169 = root_new ['parrot';'ResizablePMCArray']
    .lex "@name", $P169
    find_lex $P170, "self"
    find_lex $P171, "$name"
    $P172 = $P170."parse_name"($P171)
    store_lex "@name", $P172
.annotate 'line', 99
    find_lex $P173, "@name"
    find_lex $P174, "self"
    get_global $P175, "$?CLASS"
    getattribute $P176, $P174, $P175, "$!language"
    unless_null $P176, vivify_97
    new $P176, "Undef"
  vivify_97:
    set $S177, $P176
    downcase $S178, $S177
    $P173."unshift"($S178)
.annotate 'line', 100
    find_lex $P179, "@name"
    get_root_namespace $P180, $P179
.annotate 'line', 97
    .return ($P180)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "language"  :subid("21_1300051155.264") :outer("12_1300051155.264")
    .param pmc param_182
    .param pmc param_183 :optional
    .param int has_param_183 :opt_flag
.annotate 'line', 103
    .lex "self", param_182
    if has_param_183, optparam_98
    new $P184, "Undef"
    set param_183, $P184
  optparam_98:
    .lex "$name", param_183
.annotate 'line', 104
    find_lex $P186, "$name"
    unless $P186, if_185_end
.annotate 'line', 105
    find_lex $P187, "$name"
    find_lex $P188, "self"
    get_global $P189, "$?CLASS"
    setattribute $P188, $P189, "$!language", $P187
.annotate 'line', 106
    find_lex $P190, "$name"
    set $S191, $P190
    find_lex $P192, "self"
    compreg $S191, $P192
  if_185_end:
.annotate 'line', 104
    find_lex $P193, "self"
    get_global $P194, "$?CLASS"
    getattribute $P195, $P193, $P194, "$!language"
    unless_null $P195, vivify_99
    new $P195, "Undef"
  vivify_99:
.annotate 'line', 103
    .return ($P195)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "load_module"  :subid("22_1300051155.264") :outer("12_1300051155.264")
    .param pmc param_197
    .param pmc param_198
.annotate 'line', 111
    .const 'Sub' $P208 = "23_1300051155.264" 
    capture_lex $P208
    .lex "self", param_197
    .lex "$name", param_198
.annotate 'line', 112
    new $P199, "Undef"
    .lex "$base", $P199
.annotate 'line', 113
    new $P200, "Undef"
    .lex "$loaded", $P200
.annotate 'line', 112
    find_lex $P201, "self"
    find_lex $P202, "$name"
    $P203 = $P201."parse_name"($P202)
    join $S204, "/", $P203
    new $P205, 'String'
    set $P205, $S204
    store_lex "$base", $P205
.annotate 'line', 113
    new $P206, "Integer"
    assign $P206, 0
    store_lex "$loaded", $P206
.annotate 'line', 114
    .const 'Sub' $P208 = "23_1300051155.264" 
    capture_lex $P208
    $P208()
.annotate 'line', 115
    find_lex $P221, "$loaded"
    if $P221, unless_220_end
    find_lex $P222, "$base"
    concat $P223, $P222, ".pir"
    set $S224, $P223
    load_bytecode $S224
    new $P225, "Integer"
    assign $P225, 1
    store_lex "$loaded", $P225
  unless_220_end:
.annotate 'line', 116
    find_lex $P226, "self"
    find_lex $P227, "$name"
    $P228 = $P226."get_module"($P227)
.annotate 'line', 111
    .return ($P228)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block207"  :anon :subid("23_1300051155.264") :outer("22_1300051155.264")
.annotate 'line', 114
    new $P215, 'ExceptionHandler'
    set_label $P215, control_214
    $P215."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P215
    find_lex $P209, "$base"
    concat $P210, $P209, ".pbc"
    set $S211, $P210
    load_bytecode $S211
    new $P212, "Integer"
    assign $P212, 1
    store_lex "$loaded", $P212
    pop_eh 
    goto skip_handler_213
  control_214:
    .local pmc exception 
    .get_results (exception) 
    new $P218, 'Integer'
    set $P218, 1
    set exception["handled"], $P218
    set $I219, exception["handled"]
    ne $I219, 1, nothandled_217
  handled_216:
    .return (exception)
  nothandled_217:
    rethrow exception
  skip_handler_213:
    .return ($P212)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "import"  :subid("24_1300051155.264") :outer("12_1300051155.264")
    .param pmc param_230
    .param pmc param_231
    .param pmc param_232
.annotate 'line', 119
    .const 'Sub' $P238 = "25_1300051155.264" 
    capture_lex $P238
    .lex "self", param_230
    .lex "$target", param_231
    .lex "%exports", param_232
.annotate 'line', 120
    find_lex $P234, "%exports"
    defined $I235, $P234
    unless $I235, for_undef_100
    iter $P233, $P234
    new $P320, 'ExceptionHandler'
    set_label $P320, loop319_handler
    $P320."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P320
  loop319_test:
    unless $P233, loop319_done
    shift $P236, $P233
  loop319_redo:
    .const 'Sub' $P238 = "25_1300051155.264" 
    capture_lex $P238
    $P238($P236)
  loop319_next:
    goto loop319_test
  loop319_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P321, exception, 'type'
    eq $P321, .CONTROL_LOOP_NEXT, loop319_next
    eq $P321, .CONTROL_LOOP_REDO, loop319_redo
  loop319_done:
    pop_eh 
  for_undef_100:
.annotate 'line', 119
    .return ($P233)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block237"  :anon :subid("25_1300051155.264") :outer("24_1300051155.264")
    .param pmc param_241
.annotate 'line', 120
    .const 'Sub' $P308 = "28_1300051155.264" 
    capture_lex $P308
    .const 'Sub' $P288 = "27_1300051155.264" 
    capture_lex $P288
    .const 'Sub' $P259 = "26_1300051155.264" 
    capture_lex $P259
.annotate 'line', 121
    new $P239, "Undef"
    .lex "$type", $P239
.annotate 'line', 122
    $P240 = root_new ['parrot';'Hash']
    .lex "%items", $P240
    .lex "$_", param_241
.annotate 'line', 121
    find_lex $P242, "$_"
    $P243 = $P242."key"()
    store_lex "$type", $P243
.annotate 'line', 122
    find_lex $P244, "$_"
    $P245 = $P244."value"()
    store_lex "%items", $P245
.annotate 'line', 123
    find_lex $P248, "self"
    new $P249, 'String'
    set $P249, "import_"
    find_lex $P250, "$type"
    concat $P251, $P249, $P250
    set $S252, $P251
    can $I253, $P248, $S252
    if $I253, if_247
.annotate 'line', 126
    find_lex $P277, "$target"
    new $P278, 'String'
    set $P278, "add_"
    find_lex $P279, "$type"
    concat $P280, $P278, $P279
    set $S281, $P280
    can $I282, $P277, $S281
    if $I282, if_276
.annotate 'line', 130
    find_lex $P304, "%items"
    defined $I305, $P304
    unless $I305, for_undef_101
    iter $P303, $P304
    new $P317, 'ExceptionHandler'
    set_label $P317, loop316_handler
    $P317."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P317
  loop316_test:
    unless $P303, loop316_done
    shift $P306, $P303
  loop316_redo:
    .const 'Sub' $P308 = "28_1300051155.264" 
    capture_lex $P308
    $P308($P306)
  loop316_next:
    goto loop316_test
  loop316_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P318, exception, 'type'
    eq $P318, .CONTROL_LOOP_NEXT, loop316_next
    eq $P318, .CONTROL_LOOP_REDO, loop316_redo
  loop316_done:
    pop_eh 
  for_undef_101:
.annotate 'line', 129
    set $P275, $P303
.annotate 'line', 126
    goto if_276_end
  if_276:
.annotate 'line', 127
    find_lex $P284, "%items"
    defined $I285, $P284
    unless $I285, for_undef_103
    iter $P283, $P284
    new $P301, 'ExceptionHandler'
    set_label $P301, loop300_handler
    $P301."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P301
  loop300_test:
    unless $P283, loop300_done
    shift $P286, $P283
  loop300_redo:
    .const 'Sub' $P288 = "27_1300051155.264" 
    capture_lex $P288
    $P288($P286)
  loop300_next:
    goto loop300_test
  loop300_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P302, exception, 'type'
    eq $P302, .CONTROL_LOOP_NEXT, loop300_next
    eq $P302, .CONTROL_LOOP_REDO, loop300_redo
  loop300_done:
    pop_eh 
  for_undef_103:
.annotate 'line', 126
    set $P275, $P283
  if_276_end:
    set $P246, $P275
.annotate 'line', 123
    goto if_247_end
  if_247:
.annotate 'line', 124
    find_lex $P255, "%items"
    defined $I256, $P255
    unless $I256, for_undef_104
    iter $P254, $P255
    new $P273, 'ExceptionHandler'
    set_label $P273, loop272_handler
    $P273."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P273
  loop272_test:
    unless $P254, loop272_done
    shift $P257, $P254
  loop272_redo:
    .const 'Sub' $P259 = "26_1300051155.264" 
    capture_lex $P259
    $P259($P257)
  loop272_next:
    goto loop272_test
  loop272_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P274, exception, 'type'
    eq $P274, .CONTROL_LOOP_NEXT, loop272_next
    eq $P274, .CONTROL_LOOP_REDO, loop272_redo
  loop272_done:
    pop_eh 
  for_undef_104:
.annotate 'line', 123
    set $P246, $P254
  if_247_end:
.annotate 'line', 120
    .return ($P246)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block307"  :anon :subid("28_1300051155.264") :outer("25_1300051155.264")
    .param pmc param_309
.annotate 'line', 130
    .lex "$_", param_309
    find_lex $P310, "$_"
    $P311 = $P310."value"()
    find_lex $P312, "$_"
    $P313 = $P312."key"()
    set $S314, $P313
    find_lex $P315, "$target"
    unless_null $P315, vivify_102
    $P315 = root_new ['parrot';'Hash']
    store_lex "$target", $P315
  vivify_102:
    set $P315[$S314], $P311
    .return ($P311)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block287"  :anon :subid("27_1300051155.264") :outer("25_1300051155.264")
    .param pmc param_289
.annotate 'line', 127
    .lex "$_", param_289
    find_lex $P290, "$target"
    find_lex $P291, "$_"
    $P292 = $P291."key"()
    find_lex $P293, "$_"
    $P294 = $P293."value"()
    new $P295, 'String'
    set $P295, "add_"
    find_lex $P296, "$type"
    concat $P297, $P295, $P296
    set $S298, $P297
    $P299 = $P290.$S298($P292, $P294)
    .return ($P299)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block258"  :anon :subid("26_1300051155.264") :outer("25_1300051155.264")
    .param pmc param_260
.annotate 'line', 124
    .lex "$_", param_260
    find_lex $P261, "self"
    find_lex $P262, "$target"
    find_lex $P263, "$_"
    $P264 = $P263."key"()
    find_lex $P265, "$_"
    $P266 = $P265."value"()
    new $P267, 'String'
    set $P267, "import_"
    find_lex $P268, "$type"
    concat $P269, $P267, $P268
    set $S270, $P269
    $P271 = $P261.$S270($P262, $P264, $P266)
    .return ($P271)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "autoprint"  :subid("29_1300051155.264") :outer("12_1300051155.264")
    .param pmc param_323
    .param pmc param_324
.annotate 'line', 135
    .lex "self", param_323
    .lex "$value", param_324
.annotate 'line', 137
    getinterp $P327
    $P328 = $P327."stdout_handle"()
    $N329 = $P328."tell"()
    find_dynamic_lex $P330, "$*AUTOPRINTPOS"
    unless_null $P330, vivify_105
    get_hll_global $P330, "$AUTOPRINTPOS"
    unless_null $P330, vivify_106
    die "Contextual $*AUTOPRINTPOS not found"
  vivify_106:
  vivify_105:
    set $N331, $P330
    isgt $I332, $N329, $N331
    unless $I332, unless_326
    new $P325, 'Integer'
    set $P325, $I332
    goto unless_326_end
  unless_326:
.annotate 'line', 136
    find_lex $P333, "$value"
    set $S334, $P333
    say $S334
  unless_326_end:
.annotate 'line', 135
    .return ($P325)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "interactive"  :subid("30_1300051155.264") :outer("12_1300051155.264")
    .param pmc param_336
    .param pmc param_337 :slurpy :named
.annotate 'line', 140
    .const 'Sub' $P369 = "31_1300051155.264" 
    capture_lex $P369
    .lex "self", param_336
    .lex "%adverbs", param_337
.annotate 'line', 141
    new $P338, "Undef"
    .lex "$target", $P338
.annotate 'line', 145
    new $P339, "Undef"
    .lex "$stdin", $P339
.annotate 'line', 146
    new $P340, "Undef"
    .lex "$encoding", $P340
.annotate 'line', 151
    new $P341, "Undef"
    .lex "$save_ctx", $P341
.annotate 'line', 141
    find_lex $P342, "%adverbs"
    unless_null $P342, vivify_107
    $P342 = root_new ['parrot';'Hash']
  vivify_107:
    set $P343, $P342["target"]
    unless_null $P343, vivify_108
    new $P343, "Undef"
  vivify_108:
    set $S344, $P343
    downcase $S345, $S344
    new $P346, 'String'
    set $P346, $S345
    store_lex "$target", $P346
.annotate 'line', 143
    getinterp $P347
    $P348 = $P347."stderr_handle"()
    find_lex $P349, "self"
    $S350 = $P349."commandline_banner"()
    print $P348, $S350
.annotate 'line', 145
    getinterp $P351
    $P352 = $P351."stdin_handle"()
    store_lex "$stdin", $P352
.annotate 'line', 146
    find_lex $P353, "%adverbs"
    unless_null $P353, vivify_109
    $P353 = root_new ['parrot';'Hash']
  vivify_109:
    set $P354, $P353["encoding"]
    unless_null $P354, vivify_110
    new $P354, "Undef"
  vivify_110:
    set $S355, $P354
    new $P356, 'String'
    set $P356, $S355
    store_lex "$encoding", $P356
.annotate 'line', 147
    find_lex $P360, "$encoding"
    if $P360, if_359
    set $P358, $P360
    goto if_359_end
  if_359:
    find_lex $P361, "$encoding"
    set $S362, $P361
    isne $I363, $S362, "fixed_8"
    new $P358, 'Integer'
    set $P358, $I363
  if_359_end:
    unless $P358, if_357_end
.annotate 'line', 148
    find_lex $P364, "$stdin"
    find_lex $P365, "$encoding"
    $P364."encoding"($P365)
  if_357_end:
.annotate 'line', 147
    find_lex $P366, "$save_ctx"
.annotate 'line', 152
    new $P480, 'ExceptionHandler'
    set_label $P480, loop479_handler
    $P480."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P480
  loop479_test:
    new $P367, "Integer"
    assign $P367, 1
    unless $P367, loop479_done
  loop479_redo:
    .const 'Sub' $P369 = "31_1300051155.264" 
    capture_lex $P369
    $P369()
  loop479_next:
    goto loop479_test
  loop479_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P481, exception, 'type'
    eq $P481, .CONTROL_LOOP_NEXT, loop479_next
    eq $P481, .CONTROL_LOOP_REDO, loop479_redo
  loop479_done:
    pop_eh 
.annotate 'line', 140
    .return ($P367)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block368"  :anon :subid("31_1300051155.264") :outer("30_1300051155.264")
.annotate 'line', 152
    .const 'Sub' $P401 = "32_1300051155.264" 
    capture_lex $P401
.annotate 'line', 155
    new $P370, "Undef"
    .lex "$prompt", $P370
.annotate 'line', 156
    new $P371, "Undef"
    .lex "$code", $P371
.annotate 'line', 161
    new $P372, "Undef"
    .lex "$*AUTOPRINTPOS", $P372
.annotate 'line', 162
    new $P373, "Undef"
    .lex "$*CTXSAVE", $P373
.annotate 'line', 163
    new $P374, "Undef"
    .lex "$*MAIN_CTX", $P374
.annotate 'line', 153
    find_lex $P376, "$stdin"
    if $P376, unless_375_end
    set $I377, .CONTROL_LOOP_LAST
    die 0, $I377
  unless_375_end:
.annotate 'line', 155
    find_lex $P379, "self"
    $P380 = $P379."commandline_prompt"()
    set $P378, $P380
    defined $I382, $P378
    if $I382, default_381
    new $P383, "String"
    assign $P383, "> "
    set $P378, $P383
  default_381:
    store_lex "$prompt", $P378
.annotate 'line', 156
    find_lex $P384, "$stdin"
    find_lex $P385, "$prompt"
    set $S386, $P385
    $P387 = $P384."readline_interactive"($S386)
    store_lex "$code", $P387
.annotate 'line', 158
    find_lex $P389, "$code"
    isnull $I390, $P389
    unless $I390, if_388_end
    set $I391, .CONTROL_LOOP_LAST
    die 0, $I391
  if_388_end:
.annotate 'line', 161
    getinterp $P392
    $P393 = $P392."stdout_handle"()
    $P394 = $P393."tell"()
    store_lex "$*AUTOPRINTPOS", $P394
.annotate 'line', 162
    find_lex $P395, "self"
    store_lex "$*CTXSAVE", $P395
    find_lex $P396, "$*MAIN_CTX"
    unless_null $P396, vivify_111
    get_hll_global $P396, "$MAIN_CTX"
    unless_null $P396, vivify_112
    die "Contextual $*MAIN_CTX not found"
  vivify_112:
  vivify_111:
.annotate 'line', 165
    find_lex $P399, "$code"
    if $P399, if_398
    set $P397, $P399
    goto if_398_end
  if_398:
    .const 'Sub' $P401 = "32_1300051155.264" 
    capture_lex $P401
    $P478 = $P401()
    set $P397, $P478
  if_398_end:
.annotate 'line', 152
    .return ($P397)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block400"  :anon :subid("32_1300051155.264") :outer("31_1300051155.264")
.annotate 'line', 165
    .const 'Sub' $P434 = "35_1300051155.264" 
    capture_lex $P434
    .const 'Sub' $P407 = "33_1300051155.264" 
    capture_lex $P407
.annotate 'line', 167
    new $P402, "Undef"
    .lex "$output", $P402
.annotate 'line', 166
    find_lex $P403, "$code"
    concat $P404, $P403, "\n"
    store_lex "$code", $P404
    find_lex $P405, "$output"
.annotate 'line', 168
    .const 'Sub' $P407 = "33_1300051155.264" 
    capture_lex $P407
    $P407()
.annotate 'line', 175
    find_dynamic_lex $P431, "$*MAIN_CTX"
    unless_null $P431, vivify_113
    get_hll_global $P431, "$MAIN_CTX"
    unless_null $P431, vivify_114
    die "Contextual $*MAIN_CTX not found"
  vivify_114:
  vivify_113:
    defined $I432, $P431
    unless $I432, if_430_end
    .const 'Sub' $P434 = "35_1300051155.264" 
    capture_lex $P434
    $P434()
  if_430_end:
.annotate 'line', 183
    find_lex $P457, "$output"
    isnull $I458, $P457
    unless $I458, if_456_end
    set $I459, .CONTROL_LOOP_NEXT
    die 0, $I459
  if_456_end:
.annotate 'line', 185
    find_lex $P462, "$target"
    isfalse $I463, $P462
    if $I463, if_461
.annotate 'line', 187
    find_lex $P469, "$target"
    set $S470, $P469
    iseq $I471, $S470, "pir"
    if $I471, if_468
.annotate 'line', 190
    find_lex $P473, "self"
    find_lex $P474, "$output"
    find_lex $P475, "$target"
    find_lex $P476, "%adverbs"
    $P477 = $P473."dumper"($P474, $P475, $P476 :flat)
.annotate 'line', 189
    set $P467, $P477
.annotate 'line', 187
    goto if_468_end
  if_468:
.annotate 'line', 188
    find_lex $P472, "$output"
    say $P472
  if_468_end:
.annotate 'line', 187
    set $P460, $P467
.annotate 'line', 185
    goto if_461_end
  if_461:
.annotate 'line', 186
    find_lex $P464, "self"
    find_lex $P465, "$output"
    $P466 = $P464."autoprint"($P465)
.annotate 'line', 185
    set $P460, $P466
  if_461_end:
.annotate 'line', 165
    .return ($P460)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block406"  :anon :subid("33_1300051155.264") :outer("32_1300051155.264")
.annotate 'line', 168
    .const 'Sub' $P419 = "34_1300051155.264" 
    capture_lex $P419
    new $P415, 'ExceptionHandler'
    set_label $P415, control_414
    $P415."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P415
.annotate 'line', 169
    find_lex $P408, "self"
    find_lex $P409, "$code"
    find_lex $P410, "$save_ctx"
    find_lex $P411, "%adverbs"
    $P412 = $P408."eval"($P409, $P411 :flat, $P410 :named("outer_ctx"))
    store_lex "$output", $P412
.annotate 'line', 168
    pop_eh 
    goto skip_handler_413
  control_414:
.annotate 'line', 170
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P419 = "34_1300051155.264" 
    newclosure $P427, $P419
    $P427(exception)
    new $P428, 'Integer'
    set $P428, 1
    set exception["handled"], $P428
    set $I429, exception["handled"]
    ne $I429, 1, nothandled_417
  handled_416:
    .return (exception)
  nothandled_417:
    rethrow exception
  skip_handler_413:
.annotate 'line', 168
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block418"  :anon :subid("34_1300051155.264") :outer("33_1300051155.264")
    .param pmc param_420
.annotate 'line', 170
    .lex "$_", param_420
    find_lex $P421, "$_"
    .lex "$!", $P421
.annotate 'line', 171
    find_lex $P422, "$!"
    set $S423, $P422
    new $P424, 'String'
    set $P424, $S423
    concat $P425, $P424, "\n"
    print $P425
.annotate 'line', 172
    set $I426, .CONTROL_LOOP_NEXT
    die 0, $I426
.annotate 'line', 170
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block433"  :anon :subid("35_1300051155.264") :outer("32_1300051155.264")
.annotate 'line', 175
    .const 'Sub' $P445 = "36_1300051155.264" 
    capture_lex $P445
.annotate 'line', 176
    get_global $P435, "$interactive_ctx"
    unless_null $P435, vivify_115
    new $P435, "Undef"
    set_global "$interactive_ctx", $P435
  vivify_115:
.annotate 'line', 177
    get_global $P436, "%interactive_pad"
    unless_null $P436, vivify_116
    $P436 = root_new ['parrot';'Hash']
    set_global "%interactive_pad", $P436
  vivify_116:
.annotate 'line', 175
    get_global $P437, "$interactive_ctx"
    get_global $P438, "%interactive_pad"
.annotate 'line', 178
    find_dynamic_lex $P440, "$*MAIN_CTX"
    unless_null $P440, vivify_117
    get_hll_global $P440, "$MAIN_CTX"
    unless_null $P440, vivify_118
    die "Contextual $*MAIN_CTX not found"
  vivify_118:
  vivify_117:
    $P441 = $P440."lexpad_full"()
    defined $I442, $P441
    unless $I442, for_undef_119
    iter $P439, $P441
    new $P453, 'ExceptionHandler'
    set_label $P453, loop452_handler
    $P453."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P453
  loop452_test:
    unless $P439, loop452_done
    shift $P443, $P439
  loop452_redo:
    .const 'Sub' $P445 = "36_1300051155.264" 
    capture_lex $P445
    $P445($P443)
  loop452_next:
    goto loop452_test
  loop452_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P454, exception, 'type'
    eq $P454, .CONTROL_LOOP_NEXT, loop452_next
    eq $P454, .CONTROL_LOOP_REDO, loop452_redo
  loop452_done:
    pop_eh 
  for_undef_119:
.annotate 'line', 181
    get_global $P455, "$interactive_ctx"
    store_lex "$save_ctx", $P455
.annotate 'line', 175
    .return ($P455)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block444"  :anon :subid("36_1300051155.264") :outer("35_1300051155.264")
    .param pmc param_446
.annotate 'line', 178
    .lex "$_", param_446
.annotate 'line', 179
    find_lex $P447, "$_"
    $P448 = $P447."value"()
    find_lex $P449, "$_"
    $P450 = $P449."key"()
    get_global $P451, "%interactive_pad"
    unless_null $P451, vivify_120
    $P451 = root_new ['parrot';'Hash']
    set_global "%interactive_pad", $P451
  vivify_120:
    set $P451[$P450], $P448
.annotate 'line', 178
    .return ($P448)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "eval"  :subid("37_1300051155.264") :outer("12_1300051155.264")
    .param pmc param_483
    .param pmc param_484
    .param pmc param_485 :slurpy
    .param pmc param_486 :slurpy :named
.annotate 'line', 196
    .const 'Sub' $P505 = "38_1300051155.264" 
    capture_lex $P505
    .lex "self", param_483
    .lex "$code", param_484
    .lex "@args", param_485
    .lex "%adverbs", param_486
.annotate 'line', 197
    new $P487, "Undef"
    .lex "$output", $P487
.annotate 'line', 196
    find_lex $P488, "$output"
.annotate 'line', 198
    find_lex $P489, "self"
    find_lex $P490, "$code"
    find_lex $P491, "%adverbs"
    $P492 = $P489."compile"($P490, $P491 :flat)
    store_lex "$output", $P492
.annotate 'line', 200
    find_lex $P496, "$output"
    isa $I497, $P496, "String"
    new $P498, 'Integer'
    set $P498, $I497
    isfalse $I499, $P498
    if $I499, if_495
    new $P494, 'Integer'
    set $P494, $I499
    goto if_495_end
  if_495:
.annotate 'line', 201
    find_lex $P500, "%adverbs"
    unless_null $P500, vivify_121
    $P500 = root_new ['parrot';'Hash']
  vivify_121:
    set $P501, $P500["target"]
    unless_null $P501, vivify_122
    new $P501, "Undef"
  vivify_122:
    set $S502, $P501
    iseq $I503, $S502, ""
    new $P494, 'Integer'
    set $P494, $I503
  if_495_end:
    unless $P494, if_493_end
    .const 'Sub' $P505 = "38_1300051155.264" 
    capture_lex $P505
    $P505()
  if_493_end:
.annotate 'line', 200
    find_lex $P521, "$output"
.annotate 'line', 196
    .return ($P521)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block504"  :anon :subid("38_1300051155.264") :outer("37_1300051155.264")
.annotate 'line', 202
    new $P506, "Undef"
    .lex "$outer_ctx", $P506
    find_lex $P507, "%adverbs"
    unless_null $P507, vivify_123
    $P507 = root_new ['parrot';'Hash']
  vivify_123:
    set $P508, $P507["outer_ctx"]
    unless_null $P508, vivify_124
    new $P508, "Undef"
  vivify_124:
    store_lex "$outer_ctx", $P508
.annotate 'line', 203
    find_lex $P510, "$outer_ctx"
    defined $I511, $P510
    unless $I511, if_509_end
.annotate 'line', 204
    find_lex $P512, "$output"
    unless_null $P512, vivify_125
    $P512 = root_new ['parrot';'ResizablePMCArray']
  vivify_125:
    set $P513, $P512[0]
    unless_null $P513, vivify_126
    new $P513, "Undef"
  vivify_126:
    find_lex $P514, "$outer_ctx"
    $P513."set_outer_ctx"($P514)
  if_509_end:
.annotate 'line', 207
    find_lex $P515, "%adverbs"
    unless_null $P515, vivify_127
    $P515 = root_new ['parrot';'Hash']
  vivify_127:
    set $P516, $P515["trace"]
    unless_null $P516, vivify_128
    new $P516, "Undef"
  vivify_128:
    set $I517, $P516
    trace $I517
.annotate 'line', 208
    find_lex $P518, "$output"
    find_lex $P519, "@args"
    $P520 = $P518($P519 :flat)
    store_lex "$output", $P520
.annotate 'line', 209
    trace 0
.annotate 'line', 201
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "ctxsave"  :subid("39_1300051155.264") :outer("12_1300051155.264")
    .param pmc param_523
.annotate 'line', 215
    .lex "self", param_523
.annotate 'line', 217

                $P0 = getinterp
                $P524 = $P0['context';1]
            
    store_dynamic_lex "$*MAIN_CTX", $P524
.annotate 'line', 221
    new $P525, "Integer"
    assign $P525, 0
    store_dynamic_lex "$*CTXSAVE", $P525
.annotate 'line', 215
    .return ($P525)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "panic"  :subid("40_1300051155.264") :outer("12_1300051155.264")
    .param pmc param_527
    .param pmc param_528 :slurpy
.annotate 'line', 224
    .lex "self", param_527
    .lex "@args", param_528
.annotate 'line', 225
    find_lex $P529, "@args"
    join $S530, "", $P529
    die $S530
.annotate 'line', 224
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "stages"  :subid("41_1300051155.264") :outer("12_1300051155.264")
    .param pmc param_532
    .param pmc param_533 :optional
    .param int has_param_533 :opt_flag
.annotate 'line', 228
    .lex "self", param_532
    if has_param_533, optparam_129
    $P534 = root_new ['parrot';'ResizablePMCArray']
    set param_533, $P534
  optparam_129:
    .lex "@value", param_533
.annotate 'line', 229
    find_lex $P536, "@value"
    set $N537, $P536
    unless $N537, if_535_end
.annotate 'line', 230
    find_lex $P538, "@value"
    find_lex $P539, "self"
    get_global $P540, "$?CLASS"
    setattribute $P539, $P540, "@!stages", $P538
  if_535_end:
.annotate 'line', 229
    find_lex $P541, "self"
    get_global $P542, "$?CLASS"
    getattribute $P543, $P541, $P542, "@!stages"
    unless_null $P543, vivify_130
    $P543 = root_new ['parrot';'ResizablePMCArray']
  vivify_130:
.annotate 'line', 228
    .return ($P543)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "parsegrammar"  :subid("42_1300051155.264") :outer("12_1300051155.264")
    .param pmc param_545
    .param pmc param_546 :slurpy
.annotate 'line', 235
    .lex "self", param_545
    .lex "@value", param_546
.annotate 'line', 236
    find_lex $P548, "@value"
    set $N549, $P548
    unless $N549, if_547_end
.annotate 'line', 237
    find_lex $P550, "@value"
    unless_null $P550, vivify_131
    $P550 = root_new ['parrot';'ResizablePMCArray']
  vivify_131:
    set $P551, $P550[0]
    unless_null $P551, vivify_132
    new $P551, "Undef"
  vivify_132:
    find_lex $P552, "self"
    get_global $P553, "$?CLASS"
    setattribute $P552, $P553, "$!parsegrammar", $P551
  if_547_end:
.annotate 'line', 236
    find_lex $P554, "self"
    get_global $P555, "$?CLASS"
    getattribute $P556, $P554, $P555, "$!parsegrammar"
    unless_null $P556, vivify_133
    new $P556, "Undef"
  vivify_133:
.annotate 'line', 235
    .return ($P556)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "parseactions"  :subid("43_1300051155.264") :outer("12_1300051155.264")
    .param pmc param_558
    .param pmc param_559 :slurpy
.annotate 'line', 242
    .lex "self", param_558
    .lex "@value", param_559
.annotate 'line', 243
    find_lex $P561, "@value"
    set $N562, $P561
    unless $N562, if_560_end
.annotate 'line', 244
    find_lex $P563, "@value"
    unless_null $P563, vivify_134
    $P563 = root_new ['parrot';'ResizablePMCArray']
  vivify_134:
    set $P564, $P563[0]
    unless_null $P564, vivify_135
    new $P564, "Undef"
  vivify_135:
    find_lex $P565, "self"
    get_global $P566, "$?CLASS"
    setattribute $P565, $P566, "$!parseactions", $P564
  if_560_end:
.annotate 'line', 243
    find_lex $P567, "self"
    get_global $P568, "$?CLASS"
    getattribute $P569, $P567, $P568, "$!parseactions"
    unless_null $P569, vivify_136
    new $P569, "Undef"
  vivify_136:
.annotate 'line', 242
    .return ($P569)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "astgrammar"  :subid("44_1300051155.264") :outer("12_1300051155.264")
    .param pmc param_571
    .param pmc param_572 :slurpy
.annotate 'line', 249
    .lex "self", param_571
    .lex "@value", param_572
.annotate 'line', 250
    find_lex $P574, "@value"
    set $N575, $P574
    unless $N575, if_573_end
.annotate 'line', 251
    find_lex $P576, "@value"
    unless_null $P576, vivify_137
    $P576 = root_new ['parrot';'ResizablePMCArray']
  vivify_137:
    set $P577, $P576[0]
    unless_null $P577, vivify_138
    new $P577, "Undef"
  vivify_138:
    find_lex $P578, "self"
    get_global $P579, "$?CLASS"
    setattribute $P578, $P579, "$!astgrammar", $P577
  if_573_end:
.annotate 'line', 250
    find_lex $P580, "self"
    get_global $P581, "$?CLASS"
    getattribute $P582, $P580, $P581, "$!astgrammar"
    unless_null $P582, vivify_139
    new $P582, "Undef"
  vivify_139:
.annotate 'line', 249
    .return ($P582)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "commandline_banner"  :subid("45_1300051155.264") :outer("12_1300051155.264")
    .param pmc param_584
    .param pmc param_585 :optional
    .param int has_param_585 :opt_flag
.annotate 'line', 256
    .lex "self", param_584
    if has_param_585, optparam_140
    new $P586, "Undef"
    set param_585, $P586
  optparam_140:
    .lex "$value", param_585
.annotate 'line', 257
    find_lex $P588, "$value"
    defined $I589, $P588
    unless $I589, if_587_end
.annotate 'line', 258
    find_lex $P590, "$value"
    find_lex $P591, "self"
    get_global $P592, "$?CLASS"
    setattribute $P591, $P592, "$!commandline_banner", $P590
  if_587_end:
.annotate 'line', 257
    find_lex $P593, "self"
    get_global $P594, "$?CLASS"
    getattribute $P595, $P593, $P594, "$!commandline_banner"
    unless_null $P595, vivify_141
    new $P595, "Undef"
  vivify_141:
.annotate 'line', 256
    .return ($P595)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "commandline_prompt"  :subid("46_1300051155.264") :outer("12_1300051155.264")
    .param pmc param_597
    .param pmc param_598 :optional
    .param int has_param_598 :opt_flag
.annotate 'line', 263
    .lex "self", param_597
    if has_param_598, optparam_142
    new $P599, "Undef"
    set param_598, $P599
  optparam_142:
    .lex "$value", param_598
.annotate 'line', 264
    find_lex $P601, "$value"
    defined $I602, $P601
    unless $I602, if_600_end
.annotate 'line', 265
    find_lex $P603, "$value"
    find_lex $P604, "self"
    get_global $P605, "$?CLASS"
    setattribute $P604, $P605, "$!commandline_prompt", $P603
  if_600_end:
.annotate 'line', 264
    find_lex $P606, "self"
    get_global $P607, "$?CLASS"
    getattribute $P608, $P606, $P607, "$!commandline_prompt"
    unless_null $P608, vivify_143
    new $P608, "Undef"
  vivify_143:
.annotate 'line', 263
    .return ($P608)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "compiler_progname"  :subid("47_1300051155.264") :outer("12_1300051155.264")
    .param pmc param_610
    .param pmc param_611 :optional
    .param int has_param_611 :opt_flag
.annotate 'line', 270
    .lex "self", param_610
    if has_param_611, optparam_144
    new $P612, "Undef"
    set param_611, $P612
  optparam_144:
    .lex "$value", param_611
.annotate 'line', 271
    find_lex $P614, "$value"
    defined $I615, $P614
    unless $I615, if_613_end
.annotate 'line', 272
    find_lex $P616, "$value"
    find_lex $P617, "self"
    get_global $P618, "$?CLASS"
    setattribute $P617, $P618, "$!compiler_progname", $P616
  if_613_end:
.annotate 'line', 271
    find_lex $P619, "self"
    get_global $P620, "$?CLASS"
    getattribute $P621, $P619, $P620, "$!compiler_progname"
    unless_null $P621, vivify_145
    new $P621, "Undef"
  vivify_145:
.annotate 'line', 270
    .return ($P621)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "commandline_options"  :subid("48_1300051155.264") :outer("12_1300051155.264")
    .param pmc param_623
    .param pmc param_624 :optional
    .param int has_param_624 :opt_flag
.annotate 'line', 277
    .lex "self", param_623
    if has_param_624, optparam_146
    $P625 = root_new ['parrot';'ResizablePMCArray']
    set param_624, $P625
  optparam_146:
    .lex "@value", param_624
.annotate 'line', 278
    find_lex $P627, "@value"
    set $N628, $P627
    unless $N628, if_626_end
.annotate 'line', 279
    find_lex $P629, "@value"
    find_lex $P630, "self"
    get_global $P631, "$?CLASS"
    setattribute $P630, $P631, "@!cmdoptions", $P629
  if_626_end:
.annotate 'line', 278
    find_lex $P632, "self"
    get_global $P633, "$?CLASS"
    getattribute $P634, $P632, $P633, "@!cmdoptions"
    unless_null $P634, vivify_147
    $P634 = root_new ['parrot';'ResizablePMCArray']
  vivify_147:
.annotate 'line', 277
    .return ($P634)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "command_line"  :subid("49_1300051155.264") :outer("12_1300051155.264")
    .param pmc param_636
    .param pmc param_637
    .param pmc param_638 :slurpy :named
.annotate 'line', 284
    .const 'Sub' $P664 = "50_1300051155.264" 
    capture_lex $P664
    .lex "self", param_636
    .lex "@args", param_637
    .lex "%adverbs", param_638
.annotate 'line', 297
    new $P639, "Undef"
    .lex "$program-name", $P639
.annotate 'line', 298
    new $P640, "Undef"
    .lex "$res", $P640
.annotate 'line', 299
    $P641 = root_new ['parrot';'Hash']
    .lex "%opts", $P641
.annotate 'line', 300
    $P642 = root_new ['parrot';'ResizablePMCArray']
    .lex "@a", $P642
.annotate 'line', 293
    find_lex $P644, "@args"
    unless_null $P644, vivify_148
    $P644 = root_new ['parrot';'ResizablePMCArray']
  vivify_148:
    set $P645, $P644[2]
    unless_null $P645, vivify_149
    new $P645, "Undef"
  vivify_149:
    set $S646, $P645
    index $I647, $S646, "@INC"
    set $N648, $I647
    isge $I649, $N648, 0.0
    unless $I649, if_643_end
.annotate 'line', 294
    exit 0
  if_643_end:
.annotate 'line', 297
    find_lex $P650, "@args"
    unless_null $P650, vivify_150
    $P650 = root_new ['parrot';'ResizablePMCArray']
  vivify_150:
    set $P651, $P650[0]
    unless_null $P651, vivify_151
    new $P651, "Undef"
  vivify_151:
    store_lex "$program-name", $P651
.annotate 'line', 298
    find_lex $P652, "self"
    find_lex $P653, "@args"
    $P654 = $P652."process_args"($P653)
    store_lex "$res", $P654
.annotate 'line', 299
    find_lex $P655, "$res"
    $P656 = $P655."options"()
    store_lex "%opts", $P656
.annotate 'line', 300
    find_lex $P657, "$res"
    $P658 = $P657."arguments"()
    store_lex "@a", $P658
.annotate 'line', 302
    find_lex $P660, "%opts"
    defined $I661, $P660
    unless $I661, for_undef_152
    iter $P659, $P660
    new $P672, 'ExceptionHandler'
    set_label $P672, loop671_handler
    $P672."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P672
  loop671_test:
    unless $P659, loop671_done
    shift $P662, $P659
  loop671_redo:
    .const 'Sub' $P664 = "50_1300051155.264" 
    capture_lex $P664
    $P664($P662)
  loop671_next:
    goto loop671_test
  loop671_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P673, exception, 'type'
    eq $P673, .CONTROL_LOOP_NEXT, loop671_next
    eq $P673, .CONTROL_LOOP_REDO, loop671_redo
  loop671_done:
    pop_eh 
  for_undef_152:
.annotate 'line', 305
    find_lex $P675, "%adverbs"
    unless_null $P675, vivify_156
    $P675 = root_new ['parrot';'Hash']
  vivify_156:
    set $P676, $P675["help"]
    unless_null $P676, vivify_157
    new $P676, "Undef"
  vivify_157:
    unless $P676, if_674_end
    find_lex $P677, "self"
    find_lex $P678, "$program-name"
    $P677."usage"($P678)
  if_674_end:
.annotate 'line', 306
    find_lex $P680, "%adverbs"
    unless_null $P680, vivify_158
    $P680 = root_new ['parrot';'Hash']
  vivify_158:
    set $P681, $P680["version"]
    unless_null $P681, vivify_159
    new $P681, "Undef"
  vivify_159:
    unless $P681, if_679_end
    find_lex $P682, "self"
    $P682."version"()
  if_679_end:
.annotate 'line', 308

            .include 'except_severity.pasm'
            .local pmc args, adverbs, self
            args = find_lex '@a'
            adverbs = find_lex '%adverbs'
            self = find_lex 'self'

            load_bytecode 'dumper.pbc'
            load_bytecode 'PGE/Dumper.pbc'


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


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block663"  :anon :subid("50_1300051155.264") :outer("49_1300051155.264")
    .param pmc param_665
.annotate 'line', 302
    .lex "$k", param_665
.annotate 'line', 303
    find_lex $P666, "$k"
    find_lex $P667, "%opts"
    unless_null $P667, vivify_153
    $P667 = root_new ['parrot';'Hash']
  vivify_153:
    set $P668, $P667[$P666]
    unless_null $P668, vivify_154
    new $P668, "Undef"
  vivify_154:
    find_lex $P669, "$k"
    find_lex $P670, "%adverbs"
    unless_null $P670, vivify_155
    $P670 = root_new ['parrot';'Hash']
    store_lex "%adverbs", $P670
  vivify_155:
    set $P670[$P669], $P668
.annotate 'line', 302
    .return ($P668)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "process_args"  :subid("51_1300051155.264") :outer("12_1300051155.264")
    .param pmc param_684
    .param pmc param_685
.annotate 'line', 402
    .const 'Sub' $P700 = "52_1300051155.264" 
    capture_lex $P700
    .lex "self", param_684
    .lex "@args", param_685
.annotate 'line', 406
    new $P686, "Undef"
    .lex "$p", $P686
.annotate 'line', 409
    new $P687, "Undef"
    .lex "$res", $P687
.annotate 'line', 404
    find_lex $P688, "self"
    find_lex $P689, "@args"
    $P690 = $P689."shift"()
    $P688."compiler_progname"($P690)
.annotate 'line', 406
    get_hll_global $P691, ["HLL";"CommandLine"], "Parser"
    find_lex $P692, "self"
    get_global $P693, "$?CLASS"
    getattribute $P694, $P692, $P693, "@!cmdoptions"
    unless_null $P694, vivify_160
    $P694 = root_new ['parrot';'ResizablePMCArray']
  vivify_160:
    $P695 = $P691."new"($P694)
    store_lex "$p", $P695
.annotate 'line', 407
    find_lex $P696, "$p"
    $P696."add-stopper"("-e")
.annotate 'line', 408
    find_lex $P697, "$p"
    $P697."stop-after-first-arg"()
    find_lex $P698, "$res"
.annotate 'line', 410
    .const 'Sub' $P700 = "52_1300051155.264" 
    capture_lex $P700
    $P700()
    find_lex $P718, "$res"
.annotate 'line', 402
    .return ($P718)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block699"  :anon :subid("52_1300051155.264") :outer("51_1300051155.264")
.annotate 'line', 410
    .const 'Sub' $P710 = "53_1300051155.264" 
    capture_lex $P710
    new $P706, 'ExceptionHandler'
    set_label $P706, control_705
    $P706."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P706
.annotate 'line', 411
    find_lex $P701, "$p"
    find_lex $P702, "@args"
    $P703 = $P701."parse"($P702)
    store_lex "$res", $P703
.annotate 'line', 410
    pop_eh 
    goto skip_handler_704
  control_705:
.annotate 'line', 412
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P710 = "53_1300051155.264" 
    newclosure $P715, $P710
    $P715(exception)
    new $P716, 'Integer'
    set $P716, 1
    set exception["handled"], $P716
    set $I717, exception["handled"]
    ne $I717, 1, nothandled_708
  handled_707:
    .return (exception)
  nothandled_708:
    rethrow exception
  skip_handler_704:
.annotate 'line', 410
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block709"  :anon :subid("53_1300051155.264") :outer("52_1300051155.264")
    .param pmc param_711
.annotate 'line', 412
    .lex "$_", param_711
    find_lex $P712, "$_"
    .lex "$!", $P712
.annotate 'line', 413
    find_lex $P713, "$_"
    say $P713
.annotate 'line', 414
    find_lex $P714, "self"
    $P714."usage"()
.annotate 'line', 415
    exit 1
.annotate 'line', 412
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "evalfiles"  :subid("54_1300051155.264") :outer("12_1300051155.264")
    .param pmc param_722
    .param pmc param_723
    .param pmc param_724 :slurpy
    .param pmc param_725 :slurpy :named
.annotate 'line', 421
    .const 'Sub' $P750 = "55_1300051155.264" 
    capture_lex $P750
    new $P721, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P721, control_720
    push_eh $P721
    .lex "self", param_722
    .lex "$files", param_723
    .lex "@args", param_724
    .lex "%adverbs", param_725
.annotate 'line', 422
    new $P726, "Undef"
    .lex "$target", $P726
.annotate 'line', 423
    new $P727, "Undef"
    .lex "$encoding", $P727
.annotate 'line', 424
    $P728 = root_new ['parrot';'ResizablePMCArray']
    .lex "@files", $P728
.annotate 'line', 425
    $P729 = root_new ['parrot';'ResizablePMCArray']
    .lex "@codes", $P729
.annotate 'line', 422
    find_lex $P730, "%adverbs"
    unless_null $P730, vivify_161
    $P730 = root_new ['parrot';'Hash']
  vivify_161:
    set $P731, $P730["target"]
    unless_null $P731, vivify_162
    new $P731, "Undef"
  vivify_162:
    set $S732, $P731
    downcase $S733, $S732
    new $P734, 'String'
    set $P734, $S733
    store_lex "$target", $P734
.annotate 'line', 423
    find_lex $P735, "%adverbs"
    unless_null $P735, vivify_163
    $P735 = root_new ['parrot';'Hash']
  vivify_163:
    set $P736, $P735["encoding"]
    unless_null $P736, vivify_164
    new $P736, "Undef"
  vivify_164:
    store_lex "$encoding", $P736
.annotate 'line', 424
    find_lex $P739, "$files"
    does $I740, $P739, "array"
    if $I740, if_738
    find_lex $P742, "$files"
    new $P743, "ResizablePMCArray"
    push $P743, $P742
    set $P737, $P743
    goto if_738_end
  if_738:
    find_lex $P741, "$files"
    set $P737, $P741
  if_738_end:
    store_lex "@files", $P737
    find_lex $P744, "@codes"
.annotate 'line', 426
    find_lex $P746, "@files"
    defined $I747, $P746
    unless $I747, for_undef_165
    iter $P745, $P746
    new $P812, 'ExceptionHandler'
    set_label $P812, loop811_handler
    $P812."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P812
  loop811_test:
    unless $P745, loop811_done
    shift $P748, $P745
  loop811_redo:
    .const 'Sub' $P750 = "55_1300051155.264" 
    capture_lex $P750
    $P750($P748)
  loop811_next:
    goto loop811_test
  loop811_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P813, exception, 'type'
    eq $P813, .CONTROL_LOOP_NEXT, loop811_next
    eq $P813, .CONTROL_LOOP_REDO, loop811_redo
  loop811_done:
    pop_eh 
  for_undef_165:
.annotate 'line', 421
    .return ($P745)
  control_720:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P814, exception, "payload"
    .return ($P814)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block749"  :anon :subid("55_1300051155.264") :outer("54_1300051155.264")
    .param pmc param_755
.annotate 'line', 426
    .const 'Sub' $P759 = "56_1300051155.264" 
    capture_lex $P759
.annotate 'line', 427
    new $P751, "Undef"
    .lex "$in-handle", $P751
.annotate 'line', 428
    new $P752, "Undef"
    .lex "$err", $P752
.annotate 'line', 441
    new $P753, "Undef"
    .lex "$code", $P753
.annotate 'line', 443
    new $P754, "Undef"
    .lex "$r", $P754
    .lex "$_", param_755
.annotate 'line', 427
    new $P756, "FileHandle"
    store_lex "$in-handle", $P756
.annotate 'line', 428
    new $P757, "Integer"
    assign $P757, 0
    store_lex "$err", $P757
.annotate 'line', 429
    .const 'Sub' $P759 = "56_1300051155.264" 
    capture_lex $P759
    $P759()
.annotate 'line', 440
    find_lex $P783, "$err"
    unless $P783, if_782_end
    find_lex $P784, "$err"
    die $P784
  if_782_end:
.annotate 'line', 441
    find_lex $P785, "@codes"
    join $S786, "", $P785
    new $P787, 'String'
    set $P787, $S786
    store_lex "$code", $P787
.annotate 'line', 443
    find_lex $P788, "self"
    find_lex $P789, "$code"
    find_lex $P790, "@args"
    find_lex $P791, "%adverbs"
    $P792 = $P788."eval"($P789, $P790 :flat, $P791 :flat)
    store_lex "$r", $P792
.annotate 'line', 444
    find_lex $P797, "$target"
    set $S798, $P797
    iseq $I799, $S798, ""
    unless $I799, unless_796
    new $P795, 'Integer'
    set $P795, $I799
    goto unless_796_end
  unless_796:
    find_lex $P800, "$target"
    set $S801, $P800
    iseq $I802, $S801, "pir"
    new $P795, 'Integer'
    set $P795, $I802
  unless_796_end:
    if $P795, if_794
.annotate 'line', 447
    new $P805, "Exception"
    set $P805['type'], .CONTROL_RETURN
    find_lex $P806, "self"
    find_lex $P807, "$r"
    find_lex $P808, "$target"
    find_lex $P809, "%adverbs"
    $P810 = $P806."dumper"($P807, $P808, $P809 :flat)
    setattribute $P805, 'payload', $P810
    throw $P805
.annotate 'line', 446
    goto if_794_end
  if_794:
.annotate 'line', 445
    new $P803, "Exception"
    set $P803['type'], .CONTROL_RETURN
    find_lex $P804, "$r"
    setattribute $P803, 'payload', $P804
    throw $P803
  if_794_end:
.annotate 'line', 426
    .return ($P793)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block758"  :anon :subid("56_1300051155.264") :outer("55_1300051155.264")
.annotate 'line', 429
    .const 'Sub' $P773 = "57_1300051155.264" 
    capture_lex $P773
    new $P769, 'ExceptionHandler'
    set_label $P769, control_768
    $P769."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P769
.annotate 'line', 433
    find_lex $P760, "$in-handle"
    find_lex $P761, "$encoding"
    $P760."encoding"($P761)
.annotate 'line', 434
    find_lex $P762, "@codes"
    find_lex $P763, "$in-handle"
    find_lex $P764, "$_"
    $P765 = $P763."readall"($P764)
    push $P762, $P765
.annotate 'line', 435
    find_lex $P766, "$in-handle"
    $P766."close"()
.annotate 'line', 429
    pop_eh 
    goto skip_handler_767
  control_768:
.annotate 'line', 436
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P773 = "57_1300051155.264" 
    newclosure $P779, $P773
    $P779(exception)
    new $P780, 'Integer'
    set $P780, 1
    set exception["handled"], $P780
    set $I781, exception["handled"]
    ne $I781, 1, nothandled_771
  handled_770:
    .return (exception)
  nothandled_771:
    rethrow exception
  skip_handler_767:
.annotate 'line', 429
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block772"  :anon :subid("57_1300051155.264") :outer("56_1300051155.264")
    .param pmc param_774
.annotate 'line', 436
    .lex "$_", param_774
    find_lex $P775, "$_"
    .lex "$!", $P775
.annotate 'line', 437
    new $P776, 'String'
    set $P776, "Error while reading from file: "
    find_lex $P777, "$_"
    concat $P778, $P776, $P777
    store_lex "$err", $P778
.annotate 'line', 436
    .return ($P778)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "compile"  :subid("58_1300051155.264") :outer("12_1300051155.264")
    .param pmc param_818
    .param pmc param_819
    .param pmc param_820 :slurpy :named
.annotate 'line', 453
    .const 'Sub' $P841 = "59_1300051155.264" 
    capture_lex $P841
    new $P817, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P817, control_816
    push_eh $P817
    .lex "self", param_818
    .lex "$source", param_819
    .lex "%adverbs", param_820
.annotate 'line', 454
    $P821 = root_new ['parrot';'Hash']
    .lex "%*COMPILING", $P821
.annotate 'line', 456
    new $P822, "Undef"
    .lex "$target", $P822
.annotate 'line', 457
    new $P823, "Undef"
    .lex "$result", $P823
.annotate 'line', 458
    new $P824, "Undef"
    .lex "$stderr", $P824
.annotate 'line', 454
    find_lex $P825, "%adverbs"
    find_lex $P826, "%*COMPILING"
    unless_null $P826, vivify_166
    get_hll_global $P826, "%COMPILING"
    unless_null $P826, vivify_167
    die "Contextual %*COMPILING not found"
  vivify_167:
    store_lex "%*COMPILING", $P826
  vivify_166:
    set $P826["%?OPTIONS"], $P825
.annotate 'line', 456
    find_lex $P827, "%adverbs"
    unless_null $P827, vivify_168
    $P827 = root_new ['parrot';'Hash']
  vivify_168:
    set $P828, $P827["target"]
    unless_null $P828, vivify_169
    new $P828, "Undef"
  vivify_169:
    set $S829, $P828
    downcase $S830, $S829
    new $P831, 'String'
    set $P831, $S830
    store_lex "$target", $P831
.annotate 'line', 457
    find_lex $P832, "$source"
    store_lex "$result", $P832
.annotate 'line', 458
    getinterp $P833
    $P834 = $P833."stderr_handle"()
    store_lex "$stderr", $P834
.annotate 'line', 459
    find_lex $P836, "self"
    $P837 = $P836."stages"()
    defined $I838, $P837
    unless $I838, for_undef_170
    iter $P835, $P837
    new $P877, 'ExceptionHandler'
    set_label $P877, loop876_handler
    $P877."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P877
  loop876_test:
    unless $P835, loop876_done
    shift $P839, $P835
  loop876_redo:
    .const 'Sub' $P841 = "59_1300051155.264" 
    capture_lex $P841
    $P841($P839)
  loop876_next:
    goto loop876_test
  loop876_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P878, exception, 'type'
    eq $P878, .CONTROL_LOOP_NEXT, loop876_next
    eq $P878, .CONTROL_LOOP_REDO, loop876_redo
  loop876_done:
    pop_eh 
  for_undef_170:
.annotate 'line', 469
    new $P879, "Exception"
    set $P879['type'], .CONTROL_RETURN
    find_lex $P880, "$result"
    setattribute $P879, 'payload', $P880
    throw $P879
.annotate 'line', 453
    .return ()
  control_816:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P881, exception, "payload"
    .return ($P881)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block840"  :anon :subid("59_1300051155.264") :outer("58_1300051155.264")
    .param pmc param_844
.annotate 'line', 460
    new $P842, "Undef"
    .lex "$timestamp", $P842
.annotate 'line', 462
    new $P843, "Undef"
    .lex "$diff", $P843
    .lex "$_", param_844
.annotate 'line', 460
    time $N845
    new $P846, 'Float'
    set $P846, $N845
    store_lex "$timestamp", $P846
.annotate 'line', 461
    find_lex $P847, "self"
    find_lex $P848, "$result"
    find_lex $P849, "%adverbs"
    find_lex $P850, "$_"
    set $S851, $P850
    $P852 = $P847.$S851($P848, $P849 :flat)
    store_lex "$result", $P852
.annotate 'line', 462
    time $N853
    new $P854, 'Float'
    set $P854, $N853
    find_lex $P855, "$timestamp"
    sub $P856, $P854, $P855
    store_lex "$diff", $P856
.annotate 'line', 463
    find_lex $P858, "%adverbs"
    unless_null $P858, vivify_171
    $P858 = root_new ['parrot';'Hash']
  vivify_171:
    set $P859, $P858["stagestats"]
    unless_null $P859, vivify_172
    new $P859, "Undef"
  vivify_172:
    unless $P859, if_857_end
.annotate 'line', 465
    find_lex $P860, "$stderr"
    new $P861, 'String'
    set $P861, "Stage "
    find_lex $P862, "$_"
    concat $P863, $P861, $P862
    concat $P864, $P863, ": "
    find_lex $P865, "$diff"
    concat $P866, $P864, $P865
    concat $P867, $P866, "\n"
    $P860."print__N"($P867)
  if_857_end:
.annotate 'line', 467
    find_lex $P870, "$_"
    set $S871, $P870
    find_lex $P872, "$target"
    set $S873, $P872
    iseq $I874, $S871, $S873
    if $I874, if_869
    new $P868, 'Integer'
    set $P868, $I874
    goto if_869_end
  if_869:
    set $I875, .CONTROL_LOOP_LAST
    die 0, $I875
  if_869_end:
.annotate 'line', 459
    .return ($P868)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "parse"  :subid("60_1300051155.264") :outer("12_1300051155.264")
    .param pmc param_883
    .param pmc param_884
    .param pmc param_885 :slurpy :named
.annotate 'line', 472
    .lex "self", param_883
    .lex "$source", param_884
    .lex "%adverbs", param_885
.annotate 'line', 473

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
        
.annotate 'line', 472
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "past"  :subid("61_1300051155.264") :outer("12_1300051155.264")
    .param pmc param_887
    .param pmc param_888
    .param pmc param_889 :slurpy :named
.annotate 'line', 521
    .lex "self", param_887
    .lex "$source", param_888
    .lex "%adverbs", param_889
.annotate 'line', 522

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
        
.annotate 'line', 521
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "post"  :subid("62_1300051155.264") :outer("12_1300051155.264")
    .param pmc param_891
    .param pmc param_892
    .param pmc param_893 :slurpy :named
.annotate 'line', 561
    .lex "self", param_891
    .lex "$source", param_892
    .lex "%adverbs", param_893
.annotate 'line', 562
    compreg $P894, "PAST"
    find_lex $P895, "$source"
    find_lex $P896, "%adverbs"
    $P897 = $P894."to_post"($P895, $P896 :flat)
.annotate 'line', 561
    .return ($P897)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "pir"  :subid("63_1300051155.264") :outer("12_1300051155.264")
    .param pmc param_899
    .param pmc param_900
    .param pmc param_901 :slurpy :named
.annotate 'line', 565
    .lex "self", param_899
    .lex "$source", param_900
    .lex "%adverbs", param_901
.annotate 'line', 566
    compreg $P902, "POST"
    find_lex $P903, "$source"
    find_lex $P904, "%adverbs"
    $P905 = $P902."to_pir"($P903, $P904 :flat)
.annotate 'line', 565
    .return ($P905)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "evalpmc"  :subid("64_1300051155.264") :outer("12_1300051155.264")
    .param pmc param_907
    .param pmc param_908
    .param pmc param_909 :slurpy :named
.annotate 'line', 569
    .lex "self", param_907
    .lex "$source", param_908
    .lex "%adverbs", param_909
.annotate 'line', 570
    new $P910, "Undef"
    .lex "$compiler", $P910
    compreg $P911, "PIR"
    store_lex "$compiler", $P911
.annotate 'line', 571
    find_lex $P912, "$compiler"
    find_lex $P913, "$source"
    $P914 = $P912($P913)
.annotate 'line', 569
    .return ($P914)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "dumper"  :subid("65_1300051155.264") :outer("12_1300051155.264")
    .param pmc param_916
    .param pmc param_917
    .param pmc param_918
    .param pmc param_919 :slurpy :named
.annotate 'line', 574
    .const 'Sub' $P925 = "66_1300051155.264" 
    capture_lex $P925
    .lex "self", param_916
    .lex "$obj", param_917
    .lex "$name", param_918
    .lex "%options", param_919
.annotate 'line', 575
    find_lex $P922, "%options"
    unless_null $P922, vivify_173
    $P922 = root_new ['parrot';'Hash']
  vivify_173:
    set $P923, $P922["dumper"]
    unless_null $P923, vivify_174
    new $P923, "Undef"
  vivify_174:
    if $P923, if_921
.annotate 'line', 581
    find_lex $P938, "$obj"
    find_lex $P939, "$name"
    $P940 = "_dumper"($P938, $P939)
.annotate 'line', 580
    set $P920, $P940
.annotate 'line', 575
    goto if_921_end
  if_921:
    .const 'Sub' $P925 = "66_1300051155.264" 
    capture_lex $P925
    $P937 = $P925()
    set $P920, $P937
  if_921_end:
.annotate 'line', 574
    .return ($P920)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block924"  :anon :subid("66_1300051155.264") :outer("65_1300051155.264")
.annotate 'line', 577
    new $P926, "Undef"
    .lex "$dumper", $P926
.annotate 'line', 576
    load_bytecode "PCT/Dumper.pbc"
.annotate 'line', 577
    find_lex $P927, "%options"
    unless_null $P927, vivify_175
    $P927 = root_new ['parrot';'Hash']
  vivify_175:
    set $P928, $P927["dumper"]
    unless_null $P928, vivify_176
    new $P928, "Undef"
  vivify_176:
    set $S929, $P928
    downcase $S930, $S929
    get_hll_global $P931, ["PCT"], "Dumper"
    unless_null $P931, vivify_177
    $P931 = root_new ['parrot';'Hash']
  vivify_177:
    set $P932, $P931[$S930]
    unless_null $P932, vivify_178
    new $P932, "Undef"
  vivify_178:
    store_lex "$dumper", $P932
.annotate 'line', 578
    find_lex $P933, "$dumper"
    find_lex $P934, "$obj"
    find_lex $P935, "$name"
    $P936 = $P933($P934, $P935)
.annotate 'line', 575
    .return ($P936)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "usage"  :subid("67_1300051155.264") :outer("12_1300051155.264")
    .param pmc param_942
    .param pmc param_943 :optional
    .param int has_param_943 :opt_flag
.annotate 'line', 585
    .lex "self", param_942
    if has_param_943, optparam_179
    new $P944, "Undef"
    set param_943, $P944
  optparam_179:
    .lex "$name", param_943
.annotate 'line', 586
    find_lex $P946, "$name"
    unless $P946, if_945_end
.annotate 'line', 587
    find_lex $P947, "$name"
    "say"($P947)
  if_945_end:
.annotate 'line', 589
    find_lex $P948, "self"
    get_global $P949, "$?CLASS"
    getattribute $P950, $P948, $P949, "$!usage"
    unless_null $P950, vivify_180
    new $P950, "Undef"
  vivify_180:
    say $P950
.annotate 'line', 590
    exit 0
.annotate 'line', 585
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "version"  :subid("68_1300051155.264") :outer("12_1300051155.264")
    .param pmc param_952
.annotate 'line', 593
    .lex "self", param_952
.annotate 'line', 594
    find_lex $P953, "self"
    get_global $P954, "$?CLASS"
    getattribute $P955, $P953, $P954, "$!version"
    unless_null $P955, vivify_181
    new $P955, "Undef"
  vivify_181:
    say $P955
.annotate 'line', 595
    exit 0
.annotate 'line', 593
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "removestage"  :subid("69_1300051155.264") :outer("12_1300051155.264")
    .param pmc param_957
    .param pmc param_958
.annotate 'line', 598
    .const 'Sub' $P968 = "70_1300051155.264" 
    capture_lex $P968
    .lex "self", param_957
    .lex "$stagename", param_958
.annotate 'line', 599
    $P959 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new_stages", $P959
    new $P960, "ResizableStringArray"
    store_lex "@new_stages", $P960
.annotate 'line', 600
    find_lex $P962, "self"
    get_global $P963, "$?CLASS"
    getattribute $P964, $P962, $P963, "@!stages"
    unless_null $P964, vivify_182
    $P964 = root_new ['parrot';'ResizablePMCArray']
  vivify_182:
    defined $I965, $P964
    unless $I965, for_undef_183
    iter $P961, $P964
    new $P981, 'ExceptionHandler'
    set_label $P981, loop980_handler
    $P981."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P981
  loop980_test:
    unless $P961, loop980_done
    shift $P966, $P961
  loop980_redo:
    .const 'Sub' $P968 = "70_1300051155.264" 
    capture_lex $P968
    $P968($P966)
  loop980_next:
    goto loop980_test
  loop980_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P982, exception, 'type'
    eq $P982, .CONTROL_LOOP_NEXT, loop980_next
    eq $P982, .CONTROL_LOOP_REDO, loop980_redo
  loop980_done:
    pop_eh 
  for_undef_183:
.annotate 'line', 605
    find_lex $P983, "@new_stages"
    find_lex $P984, "self"
    get_global $P985, "$?CLASS"
    setattribute $P984, $P985, "@!stages", $P983
.annotate 'line', 598
    .return ($P983)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block967"  :anon :subid("70_1300051155.264") :outer("69_1300051155.264")
    .param pmc param_969
.annotate 'line', 600
    .lex "$_", param_969
.annotate 'line', 601
    find_lex $P972, "$_"
    set $S973, $P972
    find_lex $P974, "$stagename"
    set $S975, $P974
    isne $I976, $S973, $S975
    if $I976, if_971
    new $P970, 'Integer'
    set $P970, $I976
    goto if_971_end
  if_971:
.annotate 'line', 602
    find_lex $P977, "@new_stages"
    find_lex $P978, "$_"
    $P979 = $P977."push"($P978)
.annotate 'line', 601
    set $P970, $P979
  if_971_end:
.annotate 'line', 600
    .return ($P970)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "addstage"  :subid("71_1300051155.264") :outer("12_1300051155.264")
    .param pmc param_989
    .param pmc param_990
    .param pmc param_991 :slurpy :named
.annotate 'line', 608
    .const 'Sub' $P1028 = "73_1300051155.264" 
    capture_lex $P1028
    .const 'Sub' $P1010 = "72_1300051155.264" 
    capture_lex $P1010
    new $P988, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P988, control_987
    push_eh $P988
    .lex "self", param_989
    .lex "$stagename", param_990
    .lex "%adverbs", param_991
.annotate 'line', 609
    new $P992, "Undef"
    .lex "$position", $P992
.annotate 'line', 610
    new $P993, "Undef"
    .lex "$where", $P993
.annotate 'line', 623
    $P994 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new-stages", $P994
.annotate 'line', 608
    find_lex $P995, "$position"
    find_lex $P996, "$where"
.annotate 'line', 611
    find_lex $P998, "%adverbs"
    unless_null $P998, vivify_184
    $P998 = root_new ['parrot';'Hash']
  vivify_184:
    set $P999, $P998["before"]
    unless_null $P999, vivify_185
    new $P999, "Undef"
  vivify_185:
    if $P999, if_997
.annotate 'line', 614
    find_lex $P1004, "%adverbs"
    unless_null $P1004, vivify_186
    $P1004 = root_new ['parrot';'Hash']
  vivify_186:
    set $P1005, $P1004["after"]
    unless_null $P1005, vivify_187
    new $P1005, "Undef"
  vivify_187:
    if $P1005, if_1003
.annotate 'line', 617
    .const 'Sub' $P1010 = "72_1300051155.264" 
    capture_lex $P1010
    $P1010()
    goto if_1003_end
  if_1003:
.annotate 'line', 615
    find_lex $P1006, "%adverbs"
    unless_null $P1006, vivify_188
    $P1006 = root_new ['parrot';'Hash']
  vivify_188:
    set $P1007, $P1006["after"]
    unless_null $P1007, vivify_189
    new $P1007, "Undef"
  vivify_189:
    store_lex "$where", $P1007
.annotate 'line', 616
    new $P1008, "String"
    assign $P1008, "after"
    store_lex "$position", $P1008
  if_1003_end:
.annotate 'line', 614
    goto if_997_end
  if_997:
.annotate 'line', 612
    find_lex $P1000, "%adverbs"
    unless_null $P1000, vivify_190
    $P1000 = root_new ['parrot';'Hash']
  vivify_190:
    set $P1001, $P1000["before"]
    unless_null $P1001, vivify_191
    new $P1001, "Undef"
  vivify_191:
    store_lex "$where", $P1001
.annotate 'line', 613
    new $P1002, "String"
    assign $P1002, "before"
    store_lex "$position", $P1002
  if_997_end:
.annotate 'line', 623
    new $P1021, "ResizableStringArray"
    store_lex "@new-stages", $P1021
.annotate 'line', 624
    find_lex $P1023, "self"
    $P1024 = $P1023."stages"()
    defined $I1025, $P1024
    unless $I1025, for_undef_192
    iter $P1022, $P1024
    new $P1053, 'ExceptionHandler'
    set_label $P1053, loop1052_handler
    $P1053."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1053
  loop1052_test:
    unless $P1022, loop1052_done
    shift $P1026, $P1022
  loop1052_redo:
    .const 'Sub' $P1028 = "73_1300051155.264" 
    capture_lex $P1028
    $P1028($P1026)
  loop1052_next:
    goto loop1052_test
  loop1052_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1054, exception, 'type'
    eq $P1054, .CONTROL_LOOP_NEXT, loop1052_next
    eq $P1054, .CONTROL_LOOP_REDO, loop1052_redo
  loop1052_done:
    pop_eh 
  for_undef_192:
.annotate 'line', 637
    find_lex $P1055, "self"
    find_lex $P1056, "@new-stages"
    $P1057 = $P1055."stages"($P1056)
.annotate 'line', 608
    .return ($P1057)
  control_987:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1058, exception, "payload"
    .return ($P1058)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1009"  :anon :subid("72_1300051155.264") :outer("71_1300051155.264")
.annotate 'line', 618
    $P1011 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new-stages", $P1011
    find_lex $P1012, "self"
    $P1013 = $P1012."stages"()
    clone $P1014, $P1013
    store_lex "@new-stages", $P1014
.annotate 'line', 619
    find_lex $P1015, "@new-stages"
    find_lex $P1016, "$stagename"
    push $P1015, $P1016
.annotate 'line', 620
    find_lex $P1017, "self"
    find_lex $P1018, "@new-stages"
    $P1017."stages"($P1018)
.annotate 'line', 621
    new $P1019, "Exception"
    set $P1019['type'], .CONTROL_RETURN
    new $P1020, "Integer"
    assign $P1020, 1
    setattribute $P1019, 'payload', $P1020
    throw $P1019
.annotate 'line', 617
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1027"  :anon :subid("73_1300051155.264") :outer("71_1300051155.264")
    .param pmc param_1029
.annotate 'line', 624
    .lex "$_", param_1029
.annotate 'line', 625
    find_lex $P1032, "$_"
    set $S1033, $P1032
    find_lex $P1034, "$where"
    set $S1035, $P1034
    iseq $I1036, $S1033, $S1035
    if $I1036, if_1031
.annotate 'line', 634
    find_lex $P1050, "@new-stages"
    find_lex $P1051, "$_"
    push $P1050, $P1051
.annotate 'line', 633
    set $P1030, $P1050
.annotate 'line', 625
    goto if_1031_end
  if_1031:
.annotate 'line', 626
    find_lex $P1039, "$position"
    set $S1040, $P1039
    iseq $I1041, $S1040, "before"
    if $I1041, if_1038
.annotate 'line', 630
    find_lex $P1046, "@new-stages"
    find_lex $P1047, "$_"
    push $P1046, $P1047
.annotate 'line', 631
    find_lex $P1048, "@new-stages"
    find_lex $P1049, "$stagename"
    push $P1048, $P1049
.annotate 'line', 629
    set $P1037, $P1048
.annotate 'line', 626
    goto if_1038_end
  if_1038:
.annotate 'line', 627
    find_lex $P1042, "@new-stages"
    find_lex $P1043, "$stagename"
    push $P1042, $P1043
.annotate 'line', 628
    find_lex $P1044, "@new-stages"
    find_lex $P1045, "$_"
    push $P1044, $P1045
.annotate 'line', 626
    set $P1037, $P1044
  if_1038_end:
.annotate 'line', 625
    set $P1030, $P1037
  if_1031_end:
.annotate 'line', 624
    .return ($P1030)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "parse_name"  :subid("74_1300051155.264") :outer("12_1300051155.264")
    .param pmc param_1060
    .param pmc param_1061
.annotate 'line', 640
    .const 'Sub' $P1099 = "75_1300051155.264" 
    capture_lex $P1099
    .lex "self", param_1060
    .lex "$name", param_1061
.annotate 'line', 641
    $P1062 = root_new ['parrot';'ResizablePMCArray']
    .lex "@ns", $P1062
.annotate 'line', 642
    new $P1063, "Undef"
    .lex "$sigil", $P1063
.annotate 'line', 645
    new $P1064, "Undef"
    .lex "$idx", $P1064
.annotate 'line', 653
    $P1065 = root_new ['parrot';'ResizablePMCArray']
    .lex "@actual_ns", $P1065
.annotate 'line', 641
    find_lex $P1066, "$name"
    set $S1067, $P1066
    split $P1068, "::", $S1067
    store_lex "@ns", $P1068
.annotate 'line', 642
    find_lex $P1069, "@ns"
    unless_null $P1069, vivify_193
    $P1069 = root_new ['parrot';'ResizablePMCArray']
  vivify_193:
    set $P1070, $P1069[0]
    unless_null $P1070, vivify_194
    new $P1070, "Undef"
  vivify_194:
    set $S1071, $P1070
    substr $S1072, $S1071, 0, 1
    new $P1073, 'String'
    set $P1073, $S1072
    store_lex "$sigil", $P1073
.annotate 'line', 645
    find_lex $P1074, "$sigil"
    set $S1075, $P1074
    index $I1076, "$@%&", $S1075
    new $P1077, 'Integer'
    set $P1077, $I1076
    store_lex "$idx", $P1077
.annotate 'line', 646
    find_lex $P1079, "$idx"
    set $N1080, $P1079
    isge $I1081, $N1080, 0.0
    unless $I1081, if_1078_end
.annotate 'line', 647
    find_lex $P1082, "@ns"
    unless_null $P1082, vivify_195
    $P1082 = root_new ['parrot';'ResizablePMCArray']
  vivify_195:
    set $P1083, $P1082[0]
    unless_null $P1083, vivify_196
    new $P1083, "Undef"
  vivify_196:
    set $S1084, $P1083
    substr $S1085, $S1084, 1
    new $P1086, 'String'
    set $P1086, $S1085
    find_lex $P1087, "@ns"
    unless_null $P1087, vivify_197
    $P1087 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@ns", $P1087
  vivify_197:
    set $P1087[0], $P1086
.annotate 'line', 648
    find_lex $P1088, "$sigil"
    find_lex $P1089, "@ns"
    unless_null $P1089, vivify_198
    $P1089 = root_new ['parrot';'ResizablePMCArray']
  vivify_198:
    set $P1090, $P1089[-1]
    unless_null $P1090, vivify_199
    new $P1090, "Undef"
  vivify_199:
    concat $P1091, $P1088, $P1090
    find_lex $P1092, "@ns"
    unless_null $P1092, vivify_200
    $P1092 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@ns", $P1092
  vivify_200:
    set $P1092[-1], $P1091
  if_1078_end:
.annotate 'line', 646
    find_lex $P1093, "@actual_ns"
.annotate 'line', 654
    find_lex $P1095, "@ns"
    defined $I1096, $P1095
    unless $I1096, for_undef_201
    iter $P1094, $P1095
    new $P1109, 'ExceptionHandler'
    set_label $P1109, loop1108_handler
    $P1109."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1109
  loop1108_test:
    unless $P1094, loop1108_done
    shift $P1097, $P1094
  loop1108_redo:
    .const 'Sub' $P1099 = "75_1300051155.264" 
    capture_lex $P1099
    $P1099($P1097)
  loop1108_next:
    goto loop1108_test
  loop1108_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1110, exception, 'type'
    eq $P1110, .CONTROL_LOOP_NEXT, loop1108_next
    eq $P1110, .CONTROL_LOOP_REDO, loop1108_redo
  loop1108_done:
    pop_eh 
  for_undef_201:
    find_lex $P1111, "@actual_ns"
.annotate 'line', 640
    .return ($P1111)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1098"  :anon :subid("75_1300051155.264") :outer("74_1300051155.264")
    .param pmc param_1100
.annotate 'line', 654
    .lex "$_", param_1100
.annotate 'line', 655
    find_lex $P1103, "$_"
    set $S1104, $P1103
    iseq $I1105, $S1104, ""
    unless $I1105, unless_1102
    new $P1101, 'Integer'
    set $P1101, $I1105
    goto unless_1102_end
  unless_1102:
    find_lex $P1106, "@actual_ns"
    find_lex $P1107, "$_"
    push $P1106, $P1107
    set $P1101, $P1106
  unless_1102_end:
.annotate 'line', 654
    .return ($P1101)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "lineof"  :subid("76_1300051155.264") :outer("12_1300051155.264")
    .param pmc param_1113
    .param pmc param_1114
    .param pmc param_1115
    .param pmc param_1116 :optional :named("cache")
    .param int has_param_1116 :opt_flag
.annotate 'line', 660
    .lex "self", param_1113
    .lex "$target", param_1114
    .lex "$pos", param_1115
    if has_param_1116, optparam_202
    new $P1117, "Undef"
    set param_1116, $P1117
  optparam_202:
    .lex "$cache", param_1116
.annotate 'line', 661

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
        
.annotate 'line', 660
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "_block1230" :load :anon :subid("78_1300051155.264")
.annotate 'line', 1
    .const 'Sub' $P1232 = "10_1300051155.264" 
    $P1233 = $P1232()
    .return ($P1233)
.end

### .include 'gen/hllcommandline.pir'

.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1300051156.692")
.annotate 'line', 0
    get_hll_global $P115, ["HLL";"CommandLine";"Parser"], "_block114" 
    capture_lex $P115
    get_hll_global $P17, ["HLL";"CommandLine";"Result"], "_block16" 
    capture_lex $P17
.annotate 'line', 1
    getinterp $P13
    get_class $P14, "LexPad"
    get_class $P15, "NQPLexPad"
    $P13."hll_map"($P14, $P15)
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 91
    get_hll_global $P17, ["HLL";"CommandLine";"Result"], "_block16" 
    capture_lex $P17
    $P17()
.annotate 'line', 124
    get_hll_global $P115, ["HLL";"CommandLine";"Parser"], "_block114" 
    capture_lex $P115
    $P573 = $P115()
.annotate 'line', 1
    .return ($P573)
    .const 'Sub' $P575 = "39_1300051156.692" 
    .return ($P575)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post40") :outer("10_1300051156.692")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1300051156.692" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P579, "1300051155.931"
    isnull $I580, $P579
    if $I580, if_578
    nqp_get_sc_object $P590, "1300051155.931", 0
    set_hll_global ["HLL";"CommandLine"], "Result", $P590
    nqp_get_sc_object $P591, "1300051155.931", 1
    set_hll_global ["HLL";"CommandLine"], "Parser", $P591
    goto if_578_end
  if_578:
    nqp_dynop_setup 
    load_bytecode "nqpmo.pbc"
    nqp_create_sc $P581, "1300051155.931"
    .local pmc cur_sc
    set cur_sc, $P581
    load_bytecode "SettingManager.pbc"
    get_hll_global $P582, ["HLL"], "SettingManager"
    $P583 = $P582."load_setting"("NQPCORE")
    block."set_outer_ctx"($P583)
    get_hll_global $P584, "NQPClassHOW"
    $P585 = $P584."new_type"("HLL::CommandLine::Result" :named("name"))
    nqp_set_sc_for_object $P585, cur_sc
    nqp_set_sc_object "1300051155.931", 0, $P585
    nqp_get_sc_object $P586, "1300051155.931", 0
    set_hll_global ["HLL";"CommandLine"], "Result", $P586
    get_hll_global $P587, "NQPClassHOW"
    $P588 = $P587."new_type"("HLL::CommandLine::Parser" :named("name"))
    nqp_set_sc_for_object $P588, cur_sc
    nqp_set_sc_object "1300051155.931", 1, $P588
    nqp_get_sc_object $P589, "1300051155.931", 1
    set_hll_global ["HLL";"CommandLine"], "Parser", $P589
  if_578_end:
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "_block16"  :subid("11_1300051156.692") :outer("10_1300051156.692")
.annotate 'line', 91
    .const 'Sub' $P94 = "18_1300051156.692" 
    capture_lex $P94
    .const 'Sub' $P44 = "16_1300051156.692" 
    capture_lex $P44
    .const 'Sub' $P37 = "15_1300051156.692" 
    capture_lex $P37
    .const 'Sub' $P32 = "14_1300051156.692" 
    capture_lex $P32
    .const 'Sub' $P27 = "13_1300051156.692" 
    capture_lex $P27
    .const 'Sub' $P19 = "12_1300051156.692" 
    capture_lex $P19
    get_global $P18, "$?CLASS"
.annotate 'line', 107
    .const 'Sub' $P44 = "16_1300051156.692" 
    newclosure $P92, $P44
.annotate 'line', 91
    .return ($P92)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "" :load :init :subid("post41") :outer("11_1300051156.692")
.annotate 'line', 91
    get_hll_global $P17, ["HLL";"CommandLine";"Result"], "_block16" 
    .local pmc block
    set block, $P17
    .const 'Sub' $P94 = "18_1300051156.692" 
    capture_lex $P94
    $P94()
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "_block93"  :anon :subid("18_1300051156.692") :outer("11_1300051156.692")
.annotate 'line', 91
    nqp_get_sc_object $P95, "1300051155.931", 0
    .local pmc type_obj
    set type_obj, $P95
    set_global "$?CLASS", type_obj
    get_how $P96, type_obj
    get_hll_global $P97, "NQPAttribute"
    $P98 = $P97."new"("@!arguments" :named("name"))
    $P96."add_attribute"(type_obj, $P98)
    get_how $P99, type_obj
    get_hll_global $P100, "NQPAttribute"
    $P101 = $P100."new"("%!options" :named("name"))
    $P99."add_attribute"(type_obj, $P101)
    get_how $P102, type_obj
    .const 'Sub' $P103 = "12_1300051156.692" 
    $P102."add_method"(type_obj, "init", $P103)
    get_how $P104, type_obj
    .const 'Sub' $P105 = "13_1300051156.692" 
    $P104."add_method"(type_obj, "arguments", $P105)
    get_how $P106, type_obj
    .const 'Sub' $P107 = "14_1300051156.692" 
    $P106."add_method"(type_obj, "options", $P107)
    get_how $P108, type_obj
    .const 'Sub' $P109 = "15_1300051156.692" 
    $P108."add_method"(type_obj, "add-argument", $P109)
    get_how $P110, type_obj
    .const 'Sub' $P111 = "16_1300051156.692" 
    $P110."add_method"(type_obj, "add-option", $P111)
    get_how $P112, type_obj
    $P113 = $P112."compose"(type_obj)
    .return ($P113)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "init"  :subid("12_1300051156.692") :outer("11_1300051156.692")
    .param pmc param_20
.annotate 'line', 95
    .lex "self", param_20
.annotate 'line', 96
    new $P21, "ResizablePMCArray"
    find_lex $P22, "self"
    get_global $P23, "$?CLASS"
    setattribute $P22, $P23, "@!arguments", $P21
.annotate 'line', 97
    new $P24, "Hash"
    find_lex $P25, "self"
    get_global $P26, "$?CLASS"
    setattribute $P25, $P26, "%!options", $P24
.annotate 'line', 95
    .return ($P24)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "arguments"  :subid("13_1300051156.692") :outer("11_1300051156.692")
    .param pmc param_28
.annotate 'line', 100
    .lex "self", param_28
    find_lex $P29, "self"
    get_global $P30, "$?CLASS"
    getattribute $P31, $P29, $P30, "@!arguments"
    unless_null $P31, vivify_42
    $P31 = root_new ['parrot';'ResizablePMCArray']
  vivify_42:
    .return ($P31)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "options"  :subid("14_1300051156.692") :outer("11_1300051156.692")
    .param pmc param_33
.annotate 'line', 101
    .lex "self", param_33
    find_lex $P34, "self"
    get_global $P35, "$?CLASS"
    getattribute $P36, $P34, $P35, "%!options"
    unless_null $P36, vivify_43
    $P36 = root_new ['parrot';'Hash']
  vivify_43:
    .return ($P36)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "add-argument"  :subid("15_1300051156.692") :outer("11_1300051156.692")
    .param pmc param_38
    .param pmc param_39
.annotate 'line', 103
    .lex "self", param_38
    .lex "$x", param_39
.annotate 'line', 104
    find_lex $P40, "self"
    get_global $P41, "$?CLASS"
    getattribute $P42, $P40, $P41, "@!arguments"
    unless_null $P42, vivify_44
    $P42 = root_new ['parrot';'ResizablePMCArray']
  vivify_44:
    find_lex $P43, "$x"
    push $P42, $P43
.annotate 'line', 103
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "add-option"  :subid("16_1300051156.692") :outer("11_1300051156.692")
    .param pmc param_45
    .param pmc param_46
    .param pmc param_47
.annotate 'line', 107
    .const 'Sub' $P56 = "17_1300051156.692" 
    capture_lex $P56
    .lex "self", param_45
    .lex "$name", param_46
    .lex "$value", param_47
.annotate 'line', 110
    find_lex $P53, "$name"
    find_lex $P50, "self"
    get_global $P51, "$?CLASS"
    getattribute $P52, $P50, $P51, "%!options"
    unless_null $P52, vivify_45
    $P52 = root_new ['parrot';'Hash']
  vivify_45:
    exists $I54, $P52[$P53]
    if $I54, if_49
.annotate 'line', 119
    find_lex $P87, "$value"
    find_lex $P88, "$name"
    find_lex $P89, "self"
    get_global $P90, "$?CLASS"
    getattribute $P91, $P89, $P90, "%!options"
    unless_null $P91, vivify_46
    $P91 = root_new ['parrot';'Hash']
    setattribute $P89, $P90, "%!options", $P91
  vivify_46:
    set $P91[$P88], $P87
.annotate 'line', 118
    set $P48, $P87
.annotate 'line', 110
    goto if_49_end
  if_49:
    .const 'Sub' $P56 = "17_1300051156.692" 
    capture_lex $P56
    $P86 = $P56()
    set $P48, $P86
  if_49_end:
.annotate 'line', 107
    .return ($P48)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "_block55"  :anon :subid("17_1300051156.692") :outer("16_1300051156.692")
.annotate 'line', 111
    new $P57, "Undef"
    .lex "$t", $P57
    find_lex $P58, "self"
    get_global $P59, "$?CLASS"
    getattribute $P60, $P58, $P59, "%!options"
    unless_null $P60, vivify_47
    $P60 = root_new ['parrot';'Hash']
  vivify_47:
    typeof $S61, $P60
    new $P62, 'String'
    set $P62, $S61
    store_lex "$t", $P62
.annotate 'line', 112
    find_lex $P63, "$t"
    "say"($P63)
.annotate 'line', 113
    find_lex $P66, "$t"
    set $S67, $P66
    iseq $I68, $S67, "ResizablePMCArray"
    if $I68, if_65
.annotate 'line', 116
    find_lex $P75, "$name"
    find_lex $P76, "self"
    get_global $P77, "$?CLASS"
    getattribute $P78, $P76, $P77, "%!options"
    unless_null $P78, vivify_48
    $P78 = root_new ['parrot';'Hash']
  vivify_48:
    set $P79, $P78[$P75]
    unless_null $P79, vivify_49
    new $P79, "Undef"
  vivify_49:
    find_lex $P80, "$name"
    new $P81, "ResizablePMCArray"
    push $P81, $P79
    push $P81, $P80
    find_lex $P82, "$name"
    find_lex $P83, "self"
    get_global $P84, "$?CLASS"
    getattribute $P85, $P83, $P84, "%!options"
    unless_null $P85, vivify_50
    $P85 = root_new ['parrot';'Hash']
    setattribute $P83, $P84, "%!options", $P85
  vivify_50:
    set $P85[$P82], $P81
.annotate 'line', 115
    set $P64, $P81
.annotate 'line', 113
    goto if_65_end
  if_65:
.annotate 'line', 114
    find_lex $P69, "$name"
    find_lex $P70, "self"
    get_global $P71, "$?CLASS"
    getattribute $P72, $P70, $P71, "%!options"
    unless_null $P72, vivify_51
    $P72 = root_new ['parrot';'Hash']
  vivify_51:
    set $P73, $P72[$P69]
    unless_null $P73, vivify_52
    new $P73, "Undef"
  vivify_52:
    find_lex $P74, "$value"
    push $P73, $P74
.annotate 'line', 113
    set $P64, $P73
  if_65_end:
.annotate 'line', 110
    .return ($P64)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block114"  :subid("19_1300051156.692") :outer("10_1300051156.692")
.annotate 'line', 124
    .const 'Sub' $P539 = "38_1300051156.692" 
    capture_lex $P539
    .const 'Sub' $P254 = "30_1300051156.692" 
    capture_lex $P254
    .const 'Sub' $P242 = "29_1300051156.692" 
    capture_lex $P242
    .const 'Sub' $P218 = "28_1300051156.692" 
    capture_lex $P218
    .const 'Sub' $P169 = "26_1300051156.692" 
    capture_lex $P169
    .const 'Sub' $P163 = "25_1300051156.692" 
    capture_lex $P163
    .const 'Sub' $P155 = "24_1300051156.692" 
    capture_lex $P155
    .const 'Sub' $P131 = "22_1300051156.692" 
    capture_lex $P131
    .const 'Sub' $P126 = "21_1300051156.692" 
    capture_lex $P126
    .const 'Sub' $P117 = "20_1300051156.692" 
    capture_lex $P117
    get_global $P116, "$?CLASS"
.annotate 'line', 184
    .const 'Sub' $P254 = "30_1300051156.692" 
    newclosure $P537, $P254
.annotate 'line', 124
    .return ($P537)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "" :load :init :subid("post53") :outer("19_1300051156.692")
.annotate 'line', 124
    get_hll_global $P115, ["HLL";"CommandLine";"Parser"], "_block114" 
    .local pmc block
    set block, $P115
    .const 'Sub' $P539 = "38_1300051156.692" 
    capture_lex $P539
    $P539()
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block538"  :anon :subid("38_1300051156.692") :outer("19_1300051156.692")
.annotate 'line', 124
    nqp_get_sc_object $P540, "1300051155.931", 1
    .local pmc type_obj
    set type_obj, $P540
    set_global "$?CLASS", type_obj
    get_how $P541, type_obj
    get_hll_global $P542, "NQPAttribute"
    $P543 = $P542."new"("@!specs" :named("name"))
    $P541."add_attribute"(type_obj, $P543)
    get_how $P544, type_obj
    get_hll_global $P545, "NQPAttribute"
    $P546 = $P545."new"("%!options" :named("name"))
    $P544."add_attribute"(type_obj, $P546)
    get_how $P547, type_obj
    get_hll_global $P548, "NQPAttribute"
    $P549 = $P548."new"("%!stopper" :named("name"))
    $P547."add_attribute"(type_obj, $P549)
    get_how $P550, type_obj
    get_hll_global $P551, "NQPAttribute"
    $P552 = $P551."new"("$!stop-after-first-arg" :named("name"))
    $P550."add_attribute"(type_obj, $P552)
    get_how $P553, type_obj
    .const 'Sub' $P554 = "20_1300051156.692" 
    $P553."add_method"(type_obj, "new", $P554)
    get_how $P555, type_obj
    .const 'Sub' $P556 = "21_1300051156.692" 
    $P555."add_method"(type_obj, "stop-after-first-arg", $P556)
    get_how $P557, type_obj
    .const 'Sub' $P558 = "22_1300051156.692" 
    $P557."add_method"(type_obj, "BUILD", $P558)
    get_how $P559, type_obj
    .const 'Sub' $P560 = "24_1300051156.692" 
    $P559."add_method"(type_obj, "add-stopper", $P560)
    get_how $P561, type_obj
    .const 'Sub' $P562 = "25_1300051156.692" 
    $P561."add_method"(type_obj, "split-option-aliases", $P562)
    get_how $P563, type_obj
    .const 'Sub' $P564 = "26_1300051156.692" 
    $P563."add_method"(type_obj, "add-spec", $P564)
    get_how $P565, type_obj
    .const 'Sub' $P566 = "28_1300051156.692" 
    $P565."add_method"(type_obj, "is-option", $P566)
    get_how $P567, type_obj
    .const 'Sub' $P568 = "29_1300051156.692" 
    $P567."add_method"(type_obj, "wants-value", $P568)
    get_how $P569, type_obj
    .const 'Sub' $P570 = "30_1300051156.692" 
    $P569."add_method"(type_obj, "parse", $P570)
    get_how $P571, type_obj
    $P572 = $P571."compose"(type_obj)
    .return ($P572)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "new"  :subid("20_1300051156.692") :outer("19_1300051156.692")
    .param pmc param_118
    .param pmc param_119
.annotate 'line', 130
    .lex "self", param_118
    .lex "@specs", param_119
.annotate 'line', 131
    new $P120, "Undef"
    .lex "$obj", $P120
    find_lex $P121, "self"
    $P122 = $P121."CREATE"()
    store_lex "$obj", $P122
.annotate 'line', 132
    find_lex $P123, "$obj"
    find_lex $P124, "@specs"
    $P123."BUILD"($P124 :named("specs"))
    find_lex $P125, "$obj"
.annotate 'line', 130
    .return ($P125)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "stop-after-first-arg"  :subid("21_1300051156.692") :outer("19_1300051156.692")
    .param pmc param_127
.annotate 'line', 136
    .lex "self", param_127
.annotate 'line', 137
    new $P128, "Integer"
    assign $P128, 1
    find_lex $P129, "self"
    get_global $P130, "$?CLASS"
    setattribute $P129, $P130, "$!stop-after-first-arg", $P128
.annotate 'line', 136
    .return ($P128)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "BUILD"  :subid("22_1300051156.692") :outer("19_1300051156.692")
    .param pmc param_132
    .param pmc param_133 :optional :named("specs")
    .param int has_param_133 :opt_flag
.annotate 'line', 140
    .const 'Sub' $P147 = "23_1300051156.692" 
    capture_lex $P147
    .lex "self", param_132
    if has_param_133, optparam_54
    $P134 = root_new ['parrot';'ResizablePMCArray']
    set param_133, $P134
  optparam_54:
    .lex "@specs", param_133
.annotate 'line', 141
    new $P135, "Integer"
    assign $P135, 1
    find_lex $P136, "self"
    get_global $P137, "$?CLASS"
    getattribute $P138, $P136, $P137, "%!stopper"
    unless_null $P138, vivify_55
    $P138 = root_new ['parrot';'Hash']
    setattribute $P136, $P137, "%!stopper", $P138
  vivify_55:
    set $P138["--"], $P135
.annotate 'line', 142
    new $P139, "Integer"
    assign $P139, 0
    find_lex $P140, "self"
    get_global $P141, "$?CLASS"
    setattribute $P140, $P141, "$!stop-after-first-arg", $P139
.annotate 'line', 143
    find_lex $P143, "@specs"
    defined $I144, $P143
    unless $I144, for_undef_56
    iter $P142, $P143
    new $P153, 'ExceptionHandler'
    set_label $P153, loop152_handler
    $P153."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P153
  loop152_test:
    unless $P142, loop152_done
    shift $P145, $P142
  loop152_redo:
    .const 'Sub' $P147 = "23_1300051156.692" 
    capture_lex $P147
    $P147($P145)
  loop152_next:
    goto loop152_test
  loop152_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P154, exception, 'type'
    eq $P154, .CONTROL_LOOP_NEXT, loop152_next
    eq $P154, .CONTROL_LOOP_REDO, loop152_redo
  loop152_done:
    pop_eh 
  for_undef_56:
.annotate 'line', 140
    .return ($P142)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block146"  :anon :subid("23_1300051156.692") :outer("22_1300051156.692")
    .param pmc param_148
.annotate 'line', 143
    .lex "$_", param_148
.annotate 'line', 144
    find_lex $P149, "self"
    find_lex $P150, "$_"
    $P151 = $P149."add-spec"($P150)
.annotate 'line', 143
    .return ($P151)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "add-stopper"  :subid("24_1300051156.692") :outer("19_1300051156.692")
    .param pmc param_156
    .param pmc param_157
.annotate 'line', 147
    .lex "self", param_156
    .lex "$x", param_157
.annotate 'line', 148
    new $P158, "Integer"
    assign $P158, 1
    find_lex $P159, "$x"
    find_lex $P160, "self"
    get_global $P161, "$?CLASS"
    getattribute $P162, $P160, $P161, "%!stopper"
    unless_null $P162, vivify_57
    $P162 = root_new ['parrot';'Hash']
    setattribute $P160, $P161, "%!stopper", $P162
  vivify_57:
    set $P162[$P159], $P158
.annotate 'line', 147
    .return ($P158)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "split-option-aliases"  :subid("25_1300051156.692") :outer("19_1300051156.692")
    .param pmc param_164
    .param pmc param_165
.annotate 'line', 151
    .lex "self", param_164
    .lex "$s", param_165
.annotate 'line', 152
    find_lex $P166, "$s"
    set $S167, $P166
    split $P168, "|", $S167
.annotate 'line', 151
    .return ($P168)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "add-spec"  :subid("26_1300051156.692") :outer("19_1300051156.692")
    .param pmc param_170
    .param pmc param_171
.annotate 'line', 156
    .const 'Sub' $P208 = "27_1300051156.692" 
    capture_lex $P208
    .lex "self", param_170
    .lex "$s", param_171
.annotate 'line', 157
    new $P172, "Undef"
    .lex "$i", $P172
.annotate 'line', 158
    new $P173, "Undef"
    .lex "$type", $P173
.annotate 'line', 159
    $P174 = root_new ['parrot';'ResizablePMCArray']
    .lex "@options", $P174
.annotate 'line', 157
    find_lex $P175, "$s"
    set $S176, $P175
    index $I177, $S176, "="
    new $P178, 'Integer'
    set $P178, $I177
    store_lex "$i", $P178
    find_lex $P179, "$type"
    find_lex $P180, "@options"
.annotate 'line', 160
    find_lex $P182, "$i"
    set $N183, $P182
    islt $I184, $N183, 0.0
    if $I184, if_181
.annotate 'line', 164
    find_lex $P189, "$s"
    set $S190, $P189
    find_lex $P191, "$i"
    add $P192, $P191, 1
    set $I193, $P192
    substr $S194, $S190, $I193
    new $P195, 'String'
    set $P195, $S194
    store_lex "$type", $P195
.annotate 'line', 165
    find_lex $P196, "self"
    find_lex $P197, "$s"
    set $S198, $P197
    find_lex $P199, "$i"
    set $I200, $P199
    substr $S201, $S198, 0, $I200
    $P202 = $P196."split-option-aliases"($S201)
    store_lex "@options", $P202
.annotate 'line', 163
    goto if_181_end
  if_181:
.annotate 'line', 161
    new $P185, "String"
    assign $P185, "b"
    store_lex "$type", $P185
.annotate 'line', 162
    find_lex $P186, "self"
    find_lex $P187, "$s"
    $P188 = $P186."split-option-aliases"($P187)
    store_lex "@options", $P188
  if_181_end:
.annotate 'line', 167
    find_lex $P204, "@options"
    defined $I205, $P204
    unless $I205, for_undef_58
    iter $P203, $P204
    new $P216, 'ExceptionHandler'
    set_label $P216, loop215_handler
    $P216."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P216
  loop215_test:
    unless $P203, loop215_done
    shift $P206, $P203
  loop215_redo:
    .const 'Sub' $P208 = "27_1300051156.692" 
    capture_lex $P208
    $P208($P206)
  loop215_next:
    goto loop215_test
  loop215_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P217, exception, 'type'
    eq $P217, .CONTROL_LOOP_NEXT, loop215_next
    eq $P217, .CONTROL_LOOP_REDO, loop215_redo
  loop215_done:
    pop_eh 
  for_undef_58:
.annotate 'line', 156
    .return ($P203)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block207"  :anon :subid("27_1300051156.692") :outer("26_1300051156.692")
    .param pmc param_209
.annotate 'line', 167
    .lex "$_", param_209
.annotate 'line', 168
    find_lex $P210, "$type"
    find_lex $P211, "$_"
    find_lex $P212, "self"
    get_global $P213, "$?CLASS"
    getattribute $P214, $P212, $P213, "%!options"
    unless_null $P214, vivify_59
    $P214 = root_new ['parrot';'Hash']
    setattribute $P212, $P213, "%!options", $P214
  vivify_59:
    set $P214[$P211], $P210
.annotate 'line', 167
    .return ($P210)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "is-option"  :subid("28_1300051156.692") :outer("19_1300051156.692")
    .param pmc param_221
    .param pmc param_222
.annotate 'line', 173
    new $P220, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P220, control_219
    push_eh $P220
    .lex "self", param_221
    .lex "$x", param_222
.annotate 'line', 174
    find_lex $P226, "$x"
    set $S227, $P226
    iseq $I228, $S227, "-"
    unless $I228, unless_225
    new $P224, 'Integer'
    set $P224, $I228
    goto unless_225_end
  unless_225:
    find_lex $P229, "$x"
    set $S230, $P229
    iseq $I231, $S230, "--"
    new $P224, 'Integer'
    set $P224, $I231
  unless_225_end:
    unless $P224, if_223_end
    new $P232, "Exception"
    set $P232['type'], .CONTROL_RETURN
    new $P233, "Integer"
    assign $P233, 0
    setattribute $P232, 'payload', $P233
    throw $P232
  if_223_end:
.annotate 'line', 175
    find_lex $P235, "$x"
    set $S236, $P235
    substr $S237, $S236, 0, 1
    iseq $I238, $S237, "-"
    unless $I238, if_234_end
    new $P239, "Exception"
    set $P239['type'], .CONTROL_RETURN
    new $P240, "Integer"
    assign $P240, 1
    setattribute $P239, 'payload', $P240
    throw $P239
  if_234_end:
.annotate 'line', 173
    .return (0)
  control_219:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P241, exception, "payload"
    .return ($P241)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "wants-value"  :subid("29_1300051156.692") :outer("19_1300051156.692")
    .param pmc param_243
    .param pmc param_244
.annotate 'line', 179
    .lex "self", param_243
    .lex "$x", param_244
.annotate 'line', 180
    new $P245, "Undef"
    .lex "$spec", $P245
    find_lex $P246, "$x"
    find_lex $P247, "self"
    get_global $P248, "$?CLASS"
    getattribute $P249, $P247, $P248, "%!options"
    unless_null $P249, vivify_60
    $P249 = root_new ['parrot';'Hash']
  vivify_60:
    set $P250, $P249[$P246]
    unless_null $P250, vivify_61
    new $P250, "Undef"
  vivify_61:
    store_lex "$spec", $P250
.annotate 'line', 181
    find_lex $P251, "$spec"
    set $S252, $P251
    iseq $I253, $S252, "s"
.annotate 'line', 179
    .return ($I253)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "parse"  :subid("30_1300051156.692") :outer("19_1300051156.692")
    .param pmc param_257
    .param pmc param_258
.annotate 'line', 184
    .const 'Sub' $P345 = "33_1300051156.692" 
    capture_lex $P345
    .const 'Sub' $P311 = "32_1300051156.692" 
    capture_lex $P311
    .const 'Sub' $P262 = "31_1300051156.692" 
    capture_lex $P262
    new $P256, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P256, control_255
    push_eh $P256
    .lex "self", param_257
    .lex "@args", param_258
.annotate 'line', 185
    new $P259, "Undef"
    .lex "$i", $P259
.annotate 'line', 186
    new $P260, "Undef"
    .lex "$arg-count", $P260
.annotate 'line', 188
    new $P261, "Undef"
    .lex "$result", $P261
.annotate 'line', 192
    .const 'Sub' $P262 = "31_1300051156.692" 
    newclosure $P310, $P262
    .lex "get-value", $P310
.annotate 'line', 207
    .const 'Sub' $P311 = "32_1300051156.692" 
    newclosure $P329, $P311
    .lex "slurp-rest", $P329
.annotate 'line', 185
    new $P330, "Integer"
    assign $P330, 0
    store_lex "$i", $P330
.annotate 'line', 186
    find_lex $P331, "@args"
    set $N332, $P331
    new $P333, 'Float'
    set $P333, $N332
    store_lex "$arg-count", $P333
.annotate 'line', 188
    get_hll_global $P334, ["HLL";"CommandLine"], "Result"
    $P335 = $P334."new"()
    store_lex "$result", $P335
.annotate 'line', 189
    find_lex $P336, "$result"
    $P336."init"()
    find_lex $P337, "get-value"
    find_lex $P338, "slurp-rest"
.annotate 'line', 215
    new $P532, 'ExceptionHandler'
    set_label $P532, loop531_handler
    $P532."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P532
  loop531_test:
    find_lex $P339, "$i"
    set $N340, $P339
    find_lex $P341, "$arg-count"
    set $N342, $P341
    islt $I343, $N340, $N342
    unless $I343, loop531_done
  loop531_redo:
    .const 'Sub' $P345 = "33_1300051156.692" 
    capture_lex $P345
    $P345()
  loop531_next:
    goto loop531_test
  loop531_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P533, exception, 'type'
    eq $P533, .CONTROL_LOOP_NEXT, loop531_next
    eq $P533, .CONTROL_LOOP_REDO, loop531_redo
  loop531_done:
    pop_eh 
.annotate 'line', 267
    new $P534, "Exception"
    set $P534['type'], .CONTROL_RETURN
    find_lex $P535, "$result"
    setattribute $P534, 'payload', $P535
    throw $P534
.annotate 'line', 184
    .return ()
  control_255:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P536, exception, "payload"
    .return ($P536)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "get-value"  :subid("31_1300051156.692") :outer("30_1300051156.692")
    .param pmc param_263
.annotate 'line', 192
    .lex "$opt", param_263
.annotate 'line', 193
    find_lex $P266, "$i"
    set $N267, $P266
    find_lex $P268, "$arg-count"
    sub $P269, $P268, 1
    set $N270, $P269
    iseq $I271, $N267, $N270
    if $I271, if_265
.annotate 'line', 195
    find_lex $P278, "self"
    find_lex $P279, "$i"
    add $P280, $P279, 1
    set $I281, $P280
    find_lex $P282, "@args"
    unless_null $P282, vivify_62
    $P282 = root_new ['parrot';'ResizablePMCArray']
  vivify_62:
    set $P283, $P282[$I281]
    unless_null $P283, vivify_63
    new $P283, "Undef"
  vivify_63:
    $P284 = $P278."is-option"($P283)
    if $P284, if_277
.annotate 'line', 197
    find_lex $P291, "$i"
    add $P292, $P291, 1
    set $I293, $P292
    find_lex $P294, "@args"
    unless_null $P294, vivify_64
    $P294 = root_new ['parrot';'ResizablePMCArray']
  vivify_64:
    set $P295, $P294[$I293]
    unless_null $P295, vivify_65
    new $P295, "Undef"
  vivify_65:
    find_lex $P296, "self"
    get_global $P297, "$?CLASS"
    getattribute $P298, $P296, $P297, "%!stopper"
    unless_null $P298, vivify_66
    $P298 = root_new ['parrot';'Hash']
  vivify_66:
    set $P299, $P298[$P295]
    unless_null $P299, vivify_67
    new $P299, "Undef"
  vivify_67:
    if $P299, if_290
.annotate 'line', 199
    find_lex $P304, "$i"
    clone $P305, $P304
    inc $P304
    find_lex $P306, "$i"
    set $I307, $P306
    find_lex $P308, "@args"
    unless_null $P308, vivify_68
    $P308 = root_new ['parrot';'ResizablePMCArray']
  vivify_68:
    set $P309, $P308[$I307]
    unless_null $P309, vivify_69
    new $P309, "Undef"
  vivify_69:
    set $P289, $P309
.annotate 'line', 197
    goto if_290_end
  if_290:
.annotate 'line', 198
    new $P300, 'String'
    set $P300, "Option "
    find_lex $P301, "$opt"
    concat $P302, $P300, $P301
    concat $P303, $P302, " needs a value, but is followed by a stopper"
    die $P303
  if_290_end:
.annotate 'line', 197
    set $P276, $P289
.annotate 'line', 195
    goto if_277_end
  if_277:
.annotate 'line', 196
    new $P285, 'String'
    set $P285, "Option "
    find_lex $P286, "$opt"
    concat $P287, $P285, $P286
    concat $P288, $P287, " needs a value, but is followed by an option"
    die $P288
  if_277_end:
.annotate 'line', 195
    set $P264, $P276
.annotate 'line', 193
    goto if_265_end
  if_265:
.annotate 'line', 194
    new $P272, 'String'
    set $P272, "Option "
    find_lex $P273, "$opt"
    concat $P274, $P272, $P273
    concat $P275, $P274, " needs a value"
    die $P275
  if_265_end:
.annotate 'line', 192
    .return ($P264)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "slurp-rest"  :subid("32_1300051156.692") :outer("30_1300051156.692")
.annotate 'line', 207
    find_lex $P312, "$i"
    clone $P313, $P312
    inc $P312
.annotate 'line', 209
    new $P327, 'ExceptionHandler'
    set_label $P327, loop326_handler
    $P327."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P327
  loop326_test:
    find_lex $P314, "$i"
    set $N315, $P314
    find_lex $P316, "$arg-count"
    set $N317, $P316
    islt $I318, $N315, $N317
    unless $I318, loop326_done
  loop326_redo:
.annotate 'line', 210
    find_lex $P319, "$result"
    find_lex $P320, "$i"
    set $I321, $P320
    find_lex $P322, "@args"
    unless_null $P322, vivify_70
    $P322 = root_new ['parrot';'ResizablePMCArray']
  vivify_70:
    set $P323, $P322[$I321]
    unless_null $P323, vivify_71
    new $P323, "Undef"
  vivify_71:
    $P319."add-argument"($P323)
    find_lex $P324, "$i"
    clone $P325, $P324
    inc $P324
  loop326_next:
.annotate 'line', 209
    goto loop326_test
  loop326_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P328, exception, 'type'
    eq $P328, .CONTROL_LOOP_NEXT, loop326_next
    eq $P328, .CONTROL_LOOP_REDO, loop326_redo
  loop326_done:
    pop_eh 
.annotate 'line', 207
    .return ($I318)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block344"  :anon :subid("33_1300051156.692") :outer("30_1300051156.692")
.annotate 'line', 215
    .const 'Sub' $P447 = "35_1300051156.692" 
    capture_lex $P447
    .const 'Sub' $P361 = "34_1300051156.692" 
    capture_lex $P361
.annotate 'line', 216
    new $P346, "Undef"
    .lex "$cur", $P346
    find_lex $P347, "$i"
    set $I348, $P347
    find_lex $P349, "@args"
    unless_null $P349, vivify_72
    $P349 = root_new ['parrot';'ResizablePMCArray']
  vivify_72:
    set $P350, $P349[$I348]
    unless_null $P350, vivify_73
    new $P350, "Undef"
  vivify_73:
    store_lex "$cur", $P350
.annotate 'line', 217
    find_lex $P352, "self"
    find_lex $P353, "$cur"
    $P354 = $P352."is-option"($P353)
    if $P354, if_351
.annotate 'line', 259
    find_lex $P518, "$cur"
    find_lex $P519, "self"
    get_global $P520, "$?CLASS"
    getattribute $P521, $P519, $P520, "%!stopper"
    unless_null $P521, vivify_74
    $P521 = root_new ['parrot';'Hash']
  vivify_74:
    set $P522, $P521[$P518]
    unless_null $P522, vivify_75
    new $P522, "Undef"
  vivify_75:
    if $P522, if_517
.annotate 'line', 262
    find_lex $P523, "$result"
    find_lex $P524, "$cur"
    $P523."add-argument"($P524)
.annotate 'line', 263
    find_lex $P526, "self"
    get_global $P527, "$?CLASS"
    getattribute $P528, $P526, $P527, "$!stop-after-first-arg"
    unless_null $P528, vivify_76
    new $P528, "Undef"
  vivify_76:
    unless $P528, if_525_end
    "slurp-rest"()
  if_525_end:
.annotate 'line', 261
    goto if_517_end
  if_517:
.annotate 'line', 260
    "slurp-rest"()
  if_517_end:
.annotate 'line', 259
    goto if_351_end
  if_351:
.annotate 'line', 218
    find_lex $P356, "$cur"
    set $S357, $P356
    substr $S358, $S357, 0, 2
    iseq $I359, $S358, "--"
    if $I359, if_355
.annotate 'line', 237
    .const 'Sub' $P447 = "35_1300051156.692" 
    capture_lex $P447
    $P447()
    goto if_355_end
  if_355:
.annotate 'line', 218
    .const 'Sub' $P361 = "34_1300051156.692" 
    capture_lex $P361
    $P361()
  if_355_end:
  if_351_end:
.annotate 'line', 217
    find_lex $P529, "$i"
    clone $P530, $P529
    inc $P529
.annotate 'line', 215
    .return ($P530)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block446"  :anon :subid("35_1300051156.692") :outer("33_1300051156.692")
.annotate 'line', 237
    .const 'Sub' $P492 = "36_1300051156.692" 
    capture_lex $P492
.annotate 'line', 238
    new $P448, "Undef"
    .lex "$opt", $P448
    find_lex $P449, "$cur"
    set $S450, $P449
    substr $S451, $S450, 1
    new $P452, 'String'
    set $P452, $S451
    store_lex "$opt", $P452
.annotate 'line', 239
    find_lex $P455, "$opt"
    set $S456, $P455
    length $I457, $S456
    set $N458, $I457
    iseq $I459, $N458, 1.0
    if $I459, if_454
.annotate 'line', 249
    .const 'Sub' $P492 = "36_1300051156.692" 
    capture_lex $P492
    $P516 = $P492()
    set $P453, $P516
.annotate 'line', 239
    goto if_454_end
  if_454:
.annotate 'line', 241
    find_lex $P461, "$opt"
    find_lex $P462, "self"
    get_global $P463, "$?CLASS"
    getattribute $P464, $P462, $P463, "%!options"
    unless_null $P464, vivify_77
    $P464 = root_new ['parrot';'Hash']
  vivify_77:
    set $P465, $P464[$P461]
    unless_null $P465, vivify_78
    new $P465, "Undef"
  vivify_78:
    if $P465, unless_460_end
    new $P466, 'String'
    set $P466, "No such option -"
    find_lex $P467, "$opt"
    concat $P468, $P466, $P467
    die $P468
  unless_460_end:
.annotate 'line', 242
    find_lex $P470, "self"
    find_lex $P471, "$opt"
    $P472 = $P470."wants-value"($P471)
    if $P472, if_469
.annotate 'line', 246
    find_lex $P479, "$result"
    find_lex $P480, "$opt"
    $P479."add-option"($P480, 1)
.annotate 'line', 245
    goto if_469_end
  if_469:
.annotate 'line', 243
    find_lex $P473, "$result"
    find_lex $P474, "$opt"
.annotate 'line', 244
    new $P475, 'String'
    set $P475, "-"
    find_lex $P476, "$opt"
    concat $P477, $P475, $P476
    $P478 = "get-value"($P477)
    $P473."add-option"($P474, $P478)
  if_469_end:
.annotate 'line', 248
    new $P483, 'String'
    set $P483, "-"
    find_lex $P484, "$opt"
    concat $P485, $P483, $P484
    find_lex $P486, "self"
    get_global $P487, "$?CLASS"
    getattribute $P488, $P486, $P487, "%!stopper"
    unless_null $P488, vivify_79
    $P488 = root_new ['parrot';'Hash']
  vivify_79:
    set $P489, $P488[$P485]
    unless_null $P489, vivify_80
    new $P489, "Undef"
  vivify_80:
    if $P489, if_482
    set $P481, $P489
    goto if_482_end
  if_482:
    $P490 = "slurp-rest"()
    set $P481, $P490
  if_482_end:
.annotate 'line', 239
    set $P453, $P481
  if_454_end:
.annotate 'line', 237
    .return ($P453)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "_block491"  :anon :subid("36_1300051156.692") :outer("35_1300051156.692")
.annotate 'line', 249
    .const 'Sub' $P498 = "37_1300051156.692" 
    capture_lex $P498
.annotate 'line', 251
    new $P493, "Undef"
    .lex "$iter", $P493
    find_lex $P494, "$opt"
    iter $P495, $P494
    store_lex "$iter", $P495
.annotate 'line', 252
    new $P514, 'ExceptionHandler'
    set_label $P514, loop513_handler
    $P514."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P514
  loop513_test:
    find_lex $P496, "$iter"
    unless $P496, loop513_done
  loop513_redo:
    .const 'Sub' $P498 = "37_1300051156.692" 
    capture_lex $P498
    $P498()
  loop513_next:
    goto loop513_test
  loop513_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P515, exception, 'type'
    eq $P515, .CONTROL_LOOP_NEXT, loop513_next
    eq $P515, .CONTROL_LOOP_REDO, loop513_redo
  loop513_done:
    pop_eh 
.annotate 'line', 249
    .return ($P496)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block497"  :anon :subid("37_1300051156.692") :outer("36_1300051156.692")
.annotate 'line', 253
    new $P499, "Undef"
    .lex "$o", $P499
    find_lex $P500, "$iter"
    shift $P501, $P500
    store_lex "$o", $P501
.annotate 'line', 254
    find_lex $P503, "self"
    find_lex $P504, "$o"
    $P505 = $P503."wants-value"($P504)
    unless $P505, if_502_end
    new $P506, 'String'
    set $P506, "Option -"
    find_lex $P507, "$o"
    concat $P508, $P506, $P507
    concat $P509, $P508, " requires a value and cannot be grouped"
    die $P509
  if_502_end:
.annotate 'line', 255
    find_lex $P510, "$result"
    find_lex $P511, "$o"
    $P512 = $P510."add-option"($P511, 1)
.annotate 'line', 252
    .return ($P512)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block360"  :anon :subid("34_1300051156.692") :outer("33_1300051156.692")
.annotate 'line', 220
    new $P362, "Undef"
    .lex "$opt", $P362
.annotate 'line', 221
    new $P363, "Undef"
    .lex "$idx", $P363
.annotate 'line', 222
    new $P364, "Undef"
    .lex "$value", $P364
.annotate 'line', 223
    new $P365, "Undef"
    .lex "$has-value", $P365
.annotate 'line', 220
    find_lex $P366, "$i"
    set $I367, $P366
    find_lex $P368, "@args"
    unless_null $P368, vivify_81
    $P368 = root_new ['parrot';'ResizablePMCArray']
  vivify_81:
    set $P369, $P368[$I367]
    unless_null $P369, vivify_82
    new $P369, "Undef"
  vivify_82:
    set $S370, $P369
    substr $S371, $S370, 2
    new $P372, 'String'
    set $P372, $S371
    store_lex "$opt", $P372
.annotate 'line', 221
    find_lex $P373, "$opt"
    set $S374, $P373
    index $I375, $S374, "="
    new $P376, 'Integer'
    set $P376, $I375
    store_lex "$idx", $P376
.annotate 'line', 222
    new $P377, "Integer"
    assign $P377, 1
    store_lex "$value", $P377
.annotate 'line', 223
    new $P378, "Integer"
    assign $P378, 0
    store_lex "$has-value", $P378
.annotate 'line', 225
    find_lex $P380, "$idx"
    set $N381, $P380
    isge $I382, $N381, 0.0
    unless $I382, if_379_end
.annotate 'line', 226
    find_lex $P383, "$opt"
    set $S384, $P383
    find_lex $P385, "$idx"
    add $P386, $P385, 1
    set $I387, $P386
    substr $S388, $S384, $I387
    new $P389, 'String'
    set $P389, $S388
    store_lex "$value", $P389
.annotate 'line', 227
    find_lex $P390, "$opt"
    set $S391, $P390
    find_lex $P392, "$idx"
    set $I393, $P392
    substr $S394, $S391, 0, $I393
    new $P395, 'String'
    set $P395, $S394
    store_lex "$opt", $P395
.annotate 'line', 228
    new $P396, "Integer"
    assign $P396, 1
    store_lex "$has-value", $P396
  if_379_end:
.annotate 'line', 230
    find_lex $P401, "$opt"
    find_lex $P398, "self"
    get_global $P399, "$?CLASS"
    getattribute $P400, $P398, $P399, "%!options"
    unless_null $P400, vivify_83
    $P400 = root_new ['parrot';'Hash']
  vivify_83:
    exists $I402, $P400[$P401]
    if $I402, unless_397_end
    new $P403, 'String'
    set $P403, "Illegal option --"
    find_lex $P404, "$opt"
    concat $P405, $P403, $P404
    die $P405
  unless_397_end:
.annotate 'line', 231
    find_lex $P409, "$opt"
    find_lex $P410, "self"
    get_global $P411, "$?CLASS"
    getattribute $P412, $P410, $P411, "%!options"
    unless_null $P412, vivify_84
    $P412 = root_new ['parrot';'Hash']
  vivify_84:
    set $P413, $P412[$P409]
    unless_null $P413, vivify_85
    new $P413, "Undef"
  vivify_85:
    set $S414, $P413
    isne $I415, $S414, "s"
    if $I415, if_408
    new $P407, 'Integer'
    set $P407, $I415
    goto if_408_end
  if_408:
    find_lex $P416, "$has-value"
    set $P407, $P416
  if_408_end:
    unless $P407, if_406_end
    new $P417, 'String'
    set $P417, "Option --"
    find_lex $P418, "$opt"
    concat $P419, $P417, $P418
    concat $P420, $P419, " does not allow a value"
    die $P420
  if_406_end:
.annotate 'line', 232
    find_lex $P424, "$has-value"
    isfalse $I425, $P424
    if $I425, if_423
    new $P422, 'Integer'
    set $P422, $I425
    goto if_423_end
  if_423:
    find_lex $P426, "self"
    find_lex $P427, "$opt"
    $P428 = $P426."wants-value"($P427)
    set $P422, $P428
  if_423_end:
    unless $P422, if_421_end
.annotate 'line', 233
    new $P429, 'String'
    set $P429, "--"
    find_lex $P430, "$opt"
    concat $P431, $P429, $P430
    $P432 = "get-value"($P431)
    store_lex "$value", $P432
  if_421_end:
.annotate 'line', 235
    find_lex $P433, "$result"
    find_lex $P434, "$opt"
    find_lex $P435, "$value"
    $P433."add-option"($P434, $P435)
.annotate 'line', 236
    new $P438, 'String'
    set $P438, "--"
    find_lex $P439, "$opt"
    concat $P440, $P438, $P439
    find_lex $P441, "self"
    get_global $P442, "$?CLASS"
    getattribute $P443, $P441, $P442, "%!stopper"
    unless_null $P443, vivify_86
    $P443 = root_new ['parrot';'Hash']
  vivify_86:
    set $P444, $P443[$P440]
    unless_null $P444, vivify_87
    new $P444, "Undef"
  vivify_87:
    if $P444, if_437
    set $P436, $P444
    goto if_437_end
  if_437:
    find_lex $P445, "slurp-rest"
    set $P436, $P445
  if_437_end:
.annotate 'line', 218
    .return ($P436)
.end


.HLL "nqp"

.namespace []
.sub "_block574" :load :anon :subid("39_1300051156.692")
.annotate 'line', 1
    .const 'Sub' $P576 = "10_1300051156.692" 
    $P577 = $P576()
    .return ($P577)
.end

### .include 'gen/hllserializationcontextbuilder.pir'

.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1300051157.988")
.annotate 'line', 0
    get_hll_global $P46, ["HLL";"Compiler";"SerializationContextBuilder"], "_block45" 
    capture_lex $P46
    get_hll_global $P17, ["HLL";"Compiler";"SerializationContextBuilder";"Event"], "_block16" 
    capture_lex $P17
.annotate 'line', 1
    getinterp $P13
    get_class $P14, "LexPad"
    get_class $P15, "NQPLexPad"
    $P13."hll_map"($P14, $P15)
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 29
    get_hll_global $P17, ["HLL";"Compiler";"SerializationContextBuilder";"Event"], "_block16" 
    capture_lex $P17
    $P17()
.annotate 'line', 39
    get_hll_global $P46, ["HLL";"Compiler";"SerializationContextBuilder"], "_block45" 
    capture_lex $P46
    $P532 = $P46()
.annotate 'line', 1
    .return ($P532)
    .const 'Sub' $P534 = "38_1300051157.988" 
    .return ($P534)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post39") :outer("10_1300051157.988")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1300051157.988" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P538, "1300051157.007"
    isnull $I539, $P538
    if $I539, if_537
    nqp_get_sc_object $P549, "1300051157.007", 0
    set_hll_global ["HLL";"Compiler";"SerializationContextBuilder"], "Event", $P549
    nqp_get_sc_object $P550, "1300051157.007", 1
    set_hll_global ["HLL";"Compiler"], "SerializationContextBuilder", $P550
    goto if_537_end
  if_537:
    nqp_dynop_setup 
    load_bytecode "nqpmo.pbc"
    nqp_create_sc $P540, "1300051157.007"
    .local pmc cur_sc
    set cur_sc, $P540
    load_bytecode "SettingManager.pbc"
    get_hll_global $P541, ["HLL"], "SettingManager"
    $P542 = $P541."load_setting"("NQPCORE")
    block."set_outer_ctx"($P542)
    get_hll_global $P543, "NQPClassHOW"
    $P544 = $P543."new_type"("HLL::Compiler::SerializationContextBuilder::Event" :named("name"))
    nqp_set_sc_for_object $P544, cur_sc
    nqp_set_sc_object "1300051157.007", 0, $P544
    nqp_get_sc_object $P545, "1300051157.007", 0
    set_hll_global ["HLL";"Compiler";"SerializationContextBuilder"], "Event", $P545
    get_hll_global $P546, "NQPClassHOW"
    $P547 = $P546."new_type"("HLL::Compiler::SerializationContextBuilder" :named("name"))
    nqp_set_sc_for_object $P547, cur_sc
    nqp_set_sc_object "1300051157.007", 1, $P547
    nqp_get_sc_object $P548, "1300051157.007", 1
    set_hll_global ["HLL";"Compiler"], "SerializationContextBuilder", $P548
  if_537_end:
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder";"Event"]
.sub "_block16"  :subid("11_1300051157.988") :outer("10_1300051157.988")
.annotate 'line', 29
    .const 'Sub' $P31 = "14_1300051157.988" 
    capture_lex $P31
    .const 'Sub' $P24 = "13_1300051157.988" 
    capture_lex $P24
    .const 'Sub' $P19 = "12_1300051157.988" 
    capture_lex $P19
    get_global $P18, "$?CLASS"
.annotate 'line', 36
    .const 'Sub' $P24 = "13_1300051157.988" 
    newclosure $P29, $P24
.annotate 'line', 29
    .return ($P29)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder";"Event"]
.sub "" :load :init :subid("post40") :outer("11_1300051157.988")
.annotate 'line', 29
    get_hll_global $P17, ["HLL";"Compiler";"SerializationContextBuilder";"Event"], "_block16" 
    .local pmc block
    set block, $P17
    .const 'Sub' $P31 = "14_1300051157.988" 
    capture_lex $P31
    $P31()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder";"Event"]
.sub "_block30"  :anon :subid("14_1300051157.988") :outer("11_1300051157.988")
.annotate 'line', 29
    nqp_get_sc_object $P32, "1300051157.007", 0
    .local pmc type_obj
    set type_obj, $P32
    set_global "$?CLASS", type_obj
    get_how $P33, type_obj
    get_hll_global $P34, "NQPAttribute"
    $P35 = $P34."new"("$!deserialize_past" :named("name"))
    $P33."add_attribute"(type_obj, $P35)
    get_how $P36, type_obj
    .const 'Sub' $P37 = "12_1300051157.988" 
    $P36."add_method"(type_obj, "deserialize_past", $P37)
    get_how $P38, type_obj
    get_hll_global $P39, "NQPAttribute"
    $P40 = $P39."new"("$!fixup_past" :named("name"))
    $P38."add_attribute"(type_obj, $P40)
    get_how $P41, type_obj
    .const 'Sub' $P42 = "13_1300051157.988" 
    $P41."add_method"(type_obj, "fixup_past", $P42)
    get_how $P43, type_obj
    $P44 = $P43."compose"(type_obj)
    .return ($P44)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder";"Event"]
.sub "deserialize_past"  :subid("12_1300051157.988") :outer("11_1300051157.988")
    .param pmc param_20
.annotate 'line', 32
    .lex "self", param_20
    find_lex $P21, "self"
    get_global $P22, "$?CLASS"
    getattribute $P23, $P21, $P22, "$!deserialize_past"
    unless_null $P23, vivify_41
    new $P23, "Undef"
  vivify_41:
    .return ($P23)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder";"Event"]
.sub "fixup_past"  :subid("13_1300051157.988") :outer("11_1300051157.988")
    .param pmc param_25
.annotate 'line', 36
    .lex "self", param_25
    find_lex $P26, "self"
    get_global $P27, "$?CLASS"
    getattribute $P28, $P26, $P27, "$!fixup_past"
    unless_null $P28, vivify_42
    new $P28, "Undef"
  vivify_42:
    .return ($P28)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block45"  :subid("15_1300051157.988") :outer("10_1300051157.988")
.annotate 'line', 39
    .const 'Sub' $P480 = "37_1300051157.988" 
    capture_lex $P480
    .const 'Sub' $P414 = "35_1300051157.988" 
    capture_lex $P414
    .const 'Sub' $P409 = "34_1300051157.988" 
    capture_lex $P409
    .const 'Sub' $P392 = "33_1300051157.988" 
    capture_lex $P392
    .const 'Sub' $P366 = "32_1300051157.988" 
    capture_lex $P366
    .const 'Sub' $P360 = "31_1300051157.988" 
    capture_lex $P360
    .const 'Sub' $P291 = "30_1300051157.988" 
    capture_lex $P291
    .const 'Sub' $P260 = "29_1300051157.988" 
    capture_lex $P260
    .const 'Sub' $P241 = "28_1300051157.988" 
    capture_lex $P241
    .const 'Sub' $P208 = "26_1300051157.988" 
    capture_lex $P208
    .const 'Sub' $P174 = "25_1300051157.988" 
    capture_lex $P174
    .const 'Sub' $P160 = "24_1300051157.988" 
    capture_lex $P160
    .const 'Sub' $P135 = "23_1300051157.988" 
    capture_lex $P135
    .const 'Sub' $P127 = "22_1300051157.988" 
    capture_lex $P127
    .const 'Sub' $P112 = "21_1300051157.988" 
    capture_lex $P112
    .const 'Sub' $P95 = "20_1300051157.988" 
    capture_lex $P95
    .const 'Sub' $P81 = "19_1300051157.988" 
    capture_lex $P81
    .const 'Sub' $P63 = "18_1300051157.988" 
    capture_lex $P63
    .const 'Sub' $P54 = "17_1300051157.988" 
    capture_lex $P54
    .const 'Sub' $P48 = "16_1300051157.988" 
    capture_lex $P48
    get_global $P47, "$?CLASS"
.annotate 'line', 49
    .const 'Sub' $P48 = "16_1300051157.988" 
    newclosure $P52, $P48
    .lex "addr", $P52
.annotate 'line', 39
    find_lex $P53, "addr"
.annotate 'line', 288
    .const 'Sub' $P414 = "35_1300051157.988" 
    newclosure $P478, $P414
.annotate 'line', 39
    .return ($P478)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "" :load :init :subid("post43") :outer("15_1300051157.988")
.annotate 'line', 39
    get_hll_global $P46, ["HLL";"Compiler";"SerializationContextBuilder"], "_block45" 
    .local pmc block
    set block, $P46
    .const 'Sub' $P480 = "37_1300051157.988" 
    capture_lex $P480
    $P480()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block479"  :anon :subid("37_1300051157.988") :outer("15_1300051157.988")
.annotate 'line', 39
    nqp_get_sc_object $P481, "1300051157.007", 1
    .local pmc type_obj
    set type_obj, $P481
    set_global "$?CLASS", type_obj
    get_how $P482, type_obj
    get_hll_global $P483, "NQPAttribute"
    $P484 = $P483."new"("$!sc" :named("name"))
    $P482."add_attribute"(type_obj, $P484)
    get_how $P485, type_obj
    get_hll_global $P486, "NQPAttribute"
    $P487 = $P486."new"("$!handle" :named("name"))
    $P485."add_attribute"(type_obj, $P487)
    get_how $P488, type_obj
    get_hll_global $P489, "NQPAttribute"
    $P490 = $P489."new"("%!addr_to_slot" :named("name"))
    $P488."add_attribute"(type_obj, $P490)
    get_how $P491, type_obj
    get_hll_global $P492, "NQPAttribute"
    $P493 = $P492."new"("@!event_stream" :named("name"))
    $P491."add_attribute"(type_obj, $P493)
    get_how $P494, type_obj
    .const 'Sub' $P495 = "17_1300051157.988" 
    $P494."add_method"(type_obj, "new", $P495)
    get_how $P496, type_obj
    .const 'Sub' $P497 = "18_1300051157.988" 
    $P496."add_method"(type_obj, "BUILD", $P497)
    get_how $P498, type_obj
    .const 'Sub' $P499 = "19_1300051157.988" 
    $P498."add_method"(type_obj, "slot_for_object", $P499)
    get_how $P500, type_obj
    .const 'Sub' $P501 = "20_1300051157.988" 
    $P500."add_method"(type_obj, "get_slot_past_for_object", $P501)
    get_how $P502, type_obj
    .const 'Sub' $P503 = "21_1300051157.988" 
    $P502."add_method"(type_obj, "set_slot_past", $P503)
    get_how $P504, type_obj
    .const 'Sub' $P505 = "22_1300051157.988" 
    $P504."add_method"(type_obj, "set_cur_sc", $P505)
    get_how $P506, type_obj
    .const 'Sub' $P507 = "23_1300051157.988" 
    $P506."add_method"(type_obj, "add_object", $P507)
    get_how $P508, type_obj
    .const 'Sub' $P509 = "24_1300051157.988" 
    $P508."add_method"(type_obj, "add_event", $P509)
    get_how $P510, type_obj
    .const 'Sub' $P511 = "25_1300051157.988" 
    $P510."add_method"(type_obj, "get_object_sc_ref_past", $P511)
    get_how $P512, type_obj
    .const 'Sub' $P513 = "26_1300051157.988" 
    $P512."add_method"(type_obj, "load_setting", $P513)
    get_how $P514, type_obj
    .const 'Sub' $P515 = "28_1300051157.988" 
    $P514."add_method"(type_obj, "load_module", $P515)
    get_how $P516, type_obj
    .const 'Sub' $P517 = "29_1300051157.988" 
    $P516."add_method"(type_obj, "install_package_symbol", $P517)
    get_how $P518, type_obj
    .const 'Sub' $P519 = "30_1300051157.988" 
    $P518."add_method"(type_obj, "pkg_create_mo", $P519)
    get_how $P520, type_obj
    .const 'Sub' $P521 = "31_1300051157.988" 
    $P520."add_method"(type_obj, "pkg_add_method", $P521)
    get_how $P522, type_obj
    .const 'Sub' $P523 = "32_1300051157.988" 
    $P522."add_method"(type_obj, "pkg_add_parent_or_role", $P523)
    get_how $P524, type_obj
    .const 'Sub' $P525 = "33_1300051157.988" 
    $P524."add_method"(type_obj, "pkg_compose", $P525)
    get_how $P526, type_obj
    .const 'Sub' $P527 = "34_1300051157.988" 
    $P526."add_method"(type_obj, "sc", $P527)
    get_how $P528, type_obj
    .const 'Sub' $P529 = "35_1300051157.988" 
    $P528."add_method"(type_obj, "to_past", $P529)
    get_how $P530, type_obj
    $P531 = $P530."compose"(type_obj)
    .return ($P531)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "addr"  :subid("16_1300051157.988") :outer("15_1300051157.988")
    .param pmc param_49
.annotate 'line', 49
    .lex "$obj", param_49
.annotate 'line', 50
    find_lex $P50, "$obj"
    get_addr $I51, $P50
.annotate 'line', 49
    .return ($I51)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "new"  :subid("17_1300051157.988") :outer("15_1300051157.988")
    .param pmc param_55
    .param pmc param_56 :named("handle")
.annotate 'line', 57
    .lex "self", param_55
    .lex "$handle", param_56
.annotate 'line', 58
    new $P57, "Undef"
    .lex "$obj", $P57
    find_lex $P58, "self"
    $P59 = $P58."CREATE"()
    store_lex "$obj", $P59
.annotate 'line', 59
    find_lex $P60, "$obj"
    find_lex $P61, "$handle"
    $P60."BUILD"($P61 :named("handle"))
    find_lex $P62, "$obj"
.annotate 'line', 57
    .return ($P62)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "BUILD"  :subid("18_1300051157.988") :outer("15_1300051157.988")
    .param pmc param_64
    .param pmc param_65 :optional :named("handle")
    .param int has_param_65 :opt_flag
.annotate 'line', 63
    .lex "self", param_64
    if has_param_65, optparam_44
    new $P66, "Undef"
    set param_65, $P66
  optparam_44:
    .lex "$handle", param_65
.annotate 'line', 64
    find_lex $P67, "$handle"
    set $S68, $P67
    nqp_create_sc $P69, $S68
    find_lex $P70, "self"
    get_global $P71, "$?CLASS"
    setattribute $P70, $P71, "$!sc", $P69
.annotate 'line', 65
    find_lex $P72, "$handle"
    find_lex $P73, "self"
    get_global $P74, "$?CLASS"
    setattribute $P73, $P74, "$!handle", $P72
.annotate 'line', 66
    new $P75, "Hash"
    find_lex $P76, "self"
    get_global $P77, "$?CLASS"
    setattribute $P76, $P77, "%!addr_to_slot", $P75
.annotate 'line', 67
    new $P78, "ResizablePMCArray"
    find_lex $P79, "self"
    get_global $P80, "$?CLASS"
    setattribute $P79, $P80, "@!event_stream", $P78
.annotate 'line', 63
    .return ($P78)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "slot_for_object"  :subid("19_1300051157.988") :outer("15_1300051157.988")
    .param pmc param_82
    .param pmc param_83
.annotate 'line', 71
    .lex "self", param_82
    .lex "$obj", param_83
.annotate 'line', 72
    new $P84, "Undef"
    .lex "$slot", $P84
    find_lex $P85, "$obj"
    $P86 = "addr"($P85)
    find_lex $P87, "self"
    get_global $P88, "$?CLASS"
    getattribute $P89, $P87, $P88, "%!addr_to_slot"
    unless_null $P89, vivify_45
    $P89 = root_new ['parrot';'Hash']
  vivify_45:
    set $P90, $P89[$P86]
    unless_null $P90, vivify_46
    new $P90, "Undef"
  vivify_46:
    store_lex "$slot", $P90
.annotate 'line', 73
    find_lex $P92, "$slot"
    defined $I93, $P92
    if $I93, unless_91_end
.annotate 'line', 74
    die "slot_for_object called on object not in context"
  unless_91_end:
.annotate 'line', 73
    find_lex $P94, "$slot"
.annotate 'line', 71
    .return ($P94)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "get_slot_past_for_object"  :subid("20_1300051157.988") :outer("15_1300051157.988")
    .param pmc param_98
    .param pmc param_99
.annotate 'line', 83
    new $P97, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P97, control_96
    push_eh $P97
    .lex "self", param_98
    .lex "$obj", param_99
.annotate 'line', 84
    new $P100, "Undef"
    .lex "$slot", $P100
    find_lex $P101, "self"
    find_lex $P102, "$obj"
    $P103 = $P101."slot_for_object"($P102)
    store_lex "$slot", $P103
.annotate 'line', 85
    new $P104, "Exception"
    set $P104['type'], .CONTROL_RETURN
    get_hll_global $P105, ["PAST"], "Op"
    find_lex $P106, "self"
    get_global $P107, "$?CLASS"
    getattribute $P108, $P106, $P107, "$!handle"
    unless_null $P108, vivify_47
    new $P108, "Undef"
  vivify_47:
    find_lex $P109, "$slot"
    $P110 = $P105."new"($P108, $P109, "nqp_get_sc_object Psi" :named("pirop"))
    setattribute $P104, 'payload', $P110
    throw $P104
.annotate 'line', 83
    .return ()
  control_96:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P111, exception, "payload"
    .return ($P111)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "set_slot_past"  :subid("21_1300051157.988") :outer("15_1300051157.988")
    .param pmc param_115
    .param pmc param_116
    .param pmc param_117
.annotate 'line', 89
    new $P114, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P114, control_113
    push_eh $P114
    .lex "self", param_115
    .lex "$slot", param_116
    .lex "$past_to_set", param_117
.annotate 'line', 90
    new $P118, "Exception"
    set $P118['type'], .CONTROL_RETURN
    get_hll_global $P119, ["PAST"], "Op"
    find_lex $P120, "self"
    get_global $P121, "$?CLASS"
    getattribute $P122, $P120, $P121, "$!handle"
    unless_null $P122, vivify_48
    new $P122, "Undef"
  vivify_48:
    find_lex $P123, "$slot"
    find_lex $P124, "$past_to_set"
    $P125 = $P119."new"($P122, $P123, $P124, "nqp_set_sc_object vsiP" :named("pirop"))
    setattribute $P118, 'payload', $P125
    throw $P118
.annotate 'line', 89
    .return ()
  control_113:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P126, exception, "payload"
    .return ($P126)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "set_cur_sc"  :subid("22_1300051157.988") :outer("15_1300051157.988")
    .param pmc param_128
    .param pmc param_129
.annotate 'line', 96
    .lex "self", param_128
    .lex "$to_wrap", param_129
.annotate 'line', 97
    get_hll_global $P130, ["PAST"], "Op"
    find_lex $P131, "$to_wrap"
.annotate 'line', 100
    get_hll_global $P132, ["PAST"], "Var"
    $P133 = $P132."new"("cur_sc" :named("name"), "register" :named("scope"))
    $P134 = $P130."new"($P131, $P133, "nqp_set_sc_for_object__0PP" :named("pirop"))
.annotate 'line', 96
    .return ($P134)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "add_object"  :subid("23_1300051157.988") :outer("15_1300051157.988")
    .param pmc param_136
    .param pmc param_137
.annotate 'line', 105
    .lex "self", param_136
    .lex "$obj", param_137
.annotate 'line', 107
    new $P138, "Undef"
    .lex "$idx", $P138
.annotate 'line', 106
    find_lex $P139, "$obj"
    find_lex $P140, "self"
    get_global $P141, "$?CLASS"
    getattribute $P142, $P140, $P141, "$!sc"
    unless_null $P142, vivify_49
    new $P142, "Undef"
  vivify_49:
    nqp_set_sc_for_object $P139, $P142
.annotate 'line', 107
    find_lex $P143, "self"
    get_global $P144, "$?CLASS"
    getattribute $P145, $P143, $P144, "$!sc"
    unless_null $P145, vivify_50
    new $P145, "Undef"
  vivify_50:
    $P146 = $P145."elems"()
    store_lex "$idx", $P146
.annotate 'line', 108
    find_lex $P147, "$obj"
    find_lex $P148, "$idx"
    set $I149, $P148
    find_lex $P150, "self"
    get_global $P151, "$?CLASS"
    getattribute $P152, $P150, $P151, "$!sc"
    unless_null $P152, vivify_51
    $P152 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P150, $P151, "$!sc", $P152
  vivify_51:
    set $P152[$I149], $P147
.annotate 'line', 109
    find_lex $P153, "$idx"
    find_lex $P154, "$obj"
    $P155 = "addr"($P154)
    find_lex $P156, "self"
    get_global $P157, "$?CLASS"
    getattribute $P158, $P156, $P157, "%!addr_to_slot"
    unless_null $P158, vivify_52
    $P158 = root_new ['parrot';'Hash']
    setattribute $P156, $P157, "%!addr_to_slot", $P158
  vivify_52:
    set $P158[$P155], $P153
    find_lex $P159, "$idx"
.annotate 'line', 105
    .return ($P159)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "add_event"  :subid("24_1300051157.988") :outer("15_1300051157.988")
    .param pmc param_161
    .param pmc param_162 :optional :named("deserialize_past")
    .param int has_param_162 :opt_flag
    .param pmc param_164 :optional :named("fixup_past")
    .param int has_param_164 :opt_flag
.annotate 'line', 114
    .lex "self", param_161
    if has_param_162, optparam_53
    new $P163, "Undef"
    set param_162, $P163
  optparam_53:
    .lex "$deserialize_past", param_162
    if has_param_164, optparam_54
    new $P165, "Undef"
    set param_164, $P165
  optparam_54:
    .lex "$fixup_past", param_164
.annotate 'line', 115
    find_lex $P166, "self"
    get_global $P167, "$?CLASS"
    getattribute $P168, $P166, $P167, "@!event_stream"
    unless_null $P168, vivify_55
    $P168 = root_new ['parrot';'ResizablePMCArray']
  vivify_55:
    get_hll_global $P169, ["HLL";"Compiler";"SerializationContextBuilder"], "Event"
    find_lex $P170, "$deserialize_past"
    find_lex $P171, "$fixup_past"
    $P172 = $P169."new"($P170 :named("deserialize_past"), $P171 :named("fixup_past"))
    $P173 = $P168."push"($P172)
.annotate 'line', 114
    .return ($P173)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "get_object_sc_ref_past"  :subid("25_1300051157.988") :outer("15_1300051157.988")
    .param pmc param_175
    .param pmc param_176
.annotate 'line', 122
    .lex "self", param_175
    .lex "$obj", param_176
.annotate 'line', 125
    new $P177, "Undef"
    .lex "$sc", $P177
    find_lex $P178, "$obj"
    nqp_get_sc_for_object $P179, $P178
    store_lex "$sc", $P179
.annotate 'line', 126
    find_lex $P181, "$sc"
    isnull $I182, $P181
    unless $I182, if_180_end
.annotate 'line', 127
    new $P183, "String"
    assign $P183, "Object of type '"
    find_lex $P184, "$obj"
    get_how $P185, $P184
    find_lex $P186, "$obj"
    $S187 = $P185."name"($P186)
    concat $P188, $P183, $S187
    concat $P189, $P188, "' cannot be referenced without having been "
    concat $P190, $P189, "assigned a serialization context"
.annotate 'line', 128
    die $P190
  if_180_end:
.annotate 'line', 134
    find_lex $P193, "$sc"
    find_lex $P194, "self"
    get_global $P195, "$?CLASS"
    getattribute $P196, $P194, $P195, "$!sc"
    unless_null $P196, vivify_56
    new $P196, "Undef"
  vivify_56:
    issame $I197, $P193, $P196
    if $I197, if_192
.annotate 'line', 138
    get_hll_global $P201, ["PAST"], "Op"
.annotate 'line', 139
    find_lex $P202, "$sc"
    $P203 = $P202."handle"()
    find_lex $P204, "$sc"
    find_lex $P205, "$obj"
    $P206 = $P204."slot_index_for"($P205)
    $P207 = $P201."new"($P203, $P206, "nqp_get_sc_object Psi" :named("pirop"))
.annotate 'line', 137
    set $P191, $P207
.annotate 'line', 134
    goto if_192_end
  if_192:
.annotate 'line', 135
    find_lex $P198, "self"
    find_lex $P199, "$obj"
    $P200 = $P198."get_slot_past_for_object"($P199)
.annotate 'line', 134
    set $P191, $P200
  if_192_end:
.annotate 'line', 122
    .return ($P191)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "load_setting"  :subid("26_1300051157.988") :outer("15_1300051157.988")
    .param pmc param_209
    .param pmc param_210
.annotate 'line', 145
    .const 'Sub' $P217 = "27_1300051157.988" 
    capture_lex $P217
    .lex "self", param_209
    .lex "$setting_name", param_210
.annotate 'line', 147
    find_lex $P213, "$setting_name"
    set $S214, $P213
    isne $I215, $S214, "NULL"
    if $I215, if_212
    new $P211, 'Integer'
    set $P211, $I215
    goto if_212_end
  if_212:
    .const 'Sub' $P217 = "27_1300051157.988" 
    capture_lex $P217
    $P240 = $P217()
    set $P211, $P240
  if_212_end:
.annotate 'line', 145
    .return ($P211)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block216"  :anon :subid("27_1300051157.988") :outer("26_1300051157.988")
.annotate 'line', 154
    new $P218, "Undef"
    .lex "$load_past", $P218
.annotate 'line', 151
    get_hll_global $P219, ["HLL"], "SettingManager"
    find_lex $P220, "$setting_name"
    $P221 = $P219."load_setting"($P220)
    find_dynamic_lex $P222, "%*COMPILING"
    unless_null $P222, vivify_57
    get_hll_global $P222, "%COMPILING"
    unless_null $P222, vivify_58
    die "Contextual %*COMPILING not found"
  vivify_58:
    store_dynamic_lex "%*COMPILING", $P222
  vivify_57:
    set $P223, $P222["%?OPTIONS"]
    unless_null $P223, vivify_59
    $P223 = root_new ['parrot';'Hash']
    set $P222["%?OPTIONS"], $P223
  vivify_59:
    set $P223["outer_ctx"], $P221
.annotate 'line', 154
    get_hll_global $P224, ["PAST"], "Stmts"
.annotate 'line', 155
    get_hll_global $P225, ["PAST"], "Op"
    $P226 = $P225."new"("SettingManager.pbc", "load_bytecode vs" :named("pirop"))
.annotate 'line', 158
    get_hll_global $P227, ["PAST"], "Op"
.annotate 'line', 160
    get_hll_global $P228, ["PAST"], "Var"
    $P229 = $P228."new"("block" :named("name"), "register" :named("scope"))
.annotate 'line', 161
    get_hll_global $P230, ["PAST"], "Op"
.annotate 'line', 163
    get_hll_global $P231, ["PAST"], "Var"
    $P232 = $P231."new"("SettingManager" :named("name"), "HLL" :named("namespace"), "package" :named("scope"))
    find_lex $P233, "$setting_name"
    $P234 = $P230."new"($P232, $P233, "callmethod" :named("pasttype"), "load_setting" :named("name"))
.annotate 'line', 161
    $P235 = $P227."new"($P229, $P234, "callmethod" :named("pasttype"), "set_outer_ctx" :named("name"))
.annotate 'line', 158
    $P236 = $P224."new"($P226, $P235)
.annotate 'line', 154
    store_lex "$load_past", $P236
.annotate 'line', 168
    find_lex $P237, "self"
    find_lex $P238, "$load_past"
    $P239 = $P237."add_event"($P238 :named("deserialize_past"))
.annotate 'line', 147
    .return ($P239)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "load_module"  :subid("28_1300051157.988") :outer("15_1300051157.988")
    .param pmc param_242
    .param pmc param_243
.annotate 'line', 174
    .lex "self", param_242
    .lex "$module_name", param_243
.annotate 'line', 176
    new $P244, "Undef"
    .lex "$*LOAD_UNIT", $P244
.annotate 'line', 177
    new $P245, "Undef"
    .lex "$path", $P245
.annotate 'line', 174
    find_lex $P246, "$*LOAD_UNIT"
    unless_null $P246, vivify_60
    get_hll_global $P246, "$LOAD_UNIT"
    unless_null $P246, vivify_61
    die "Contextual $*LOAD_UNIT not found"
  vivify_61:
  vivify_60:
.annotate 'line', 177
    find_lex $P247, "$module_name"
    set $S248, $P247
    split $P249, "::", $S248
    join $S250, "/", $P249
    new $P251, 'String'
    set $P251, $S250
    concat $P252, $P251, ".pbc"
    store_lex "$path", $P252
.annotate 'line', 178
    find_lex $P253, "$path"
    set $S254, $P253
    load_bytecode $S254
.annotate 'line', 181
    find_lex $P255, "self"
.annotate 'line', 182
    get_hll_global $P256, ["PAST"], "Op"
    find_lex $P257, "$path"
    $P258 = $P256."new"($P257, "load_bytecode vs" :named("pirop"))
    $P255."add_event"($P258 :named("deserialize_past"))
.annotate 'line', 181
    find_lex $P259, "$*LOAD_UNIT"
    unless_null $P259, vivify_62
    get_hll_global $P259, "$LOAD_UNIT"
    unless_null $P259, vivify_63
    die "Contextual $*LOAD_UNIT not found"
  vivify_63:
  vivify_62:
.annotate 'line', 174
    .return ($P259)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "install_package_symbol"  :subid("29_1300051157.988") :outer("15_1300051157.988")
    .param pmc param_261
    .param pmc param_262
    .param pmc param_263
.annotate 'line', 190
    .lex "self", param_261
    .lex "@sym", param_262
    .lex "$obj", param_263
.annotate 'line', 192
    new $P264, "Undef"
    .lex "$name", $P264
.annotate 'line', 191
    find_lex $P265, "@sym"
    clone $P266, $P265
    store_lex "@sym", $P266
.annotate 'line', 192
    find_lex $P267, "@sym"
    $P268 = $P267."pop"()
    set $S269, $P268
    new $P270, 'String'
    set $P270, $S269
    store_lex "$name", $P270
.annotate 'line', 199
    find_lex $P271, "self"
.annotate 'line', 200
    get_hll_global $P272, ["PAST"], "Op"
.annotate 'line', 202
    get_hll_global $P273, ["PAST"], "Var"
    find_lex $P274, "$name"
    find_lex $P275, "@sym"
    $P276 = $P273."new"($P274 :named("name"), $P275 :named("namespace"), "package" :named("scope"))
.annotate 'line', 203
    find_lex $P277, "self"
    find_lex $P278, "$obj"
    $P279 = $P277."get_slot_past_for_object"($P278)
    $P280 = $P272."new"($P276, $P279, "bind" :named("pasttype"))
.annotate 'line', 205
    get_hll_global $P281, ["PAST"], "Op"
.annotate 'line', 207
    get_hll_global $P282, ["PAST"], "Var"
    find_lex $P283, "$name"
    find_lex $P284, "@sym"
    $P285 = $P282."new"($P283 :named("name"), $P284 :named("namespace"), "package" :named("scope"))
.annotate 'line', 208
    find_lex $P286, "self"
    find_lex $P287, "$obj"
    $P288 = $P286."get_slot_past_for_object"($P287)
    $P289 = $P281."new"($P285, $P288, "bind" :named("pasttype"))
.annotate 'line', 205
    $P290 = $P271."add_event"($P280 :named("deserialize_past"), $P289 :named("fixup_past"))
.annotate 'line', 190
    .return ($P290)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "pkg_create_mo"  :subid("30_1300051157.988") :outer("15_1300051157.988")
    .param pmc param_294
    .param pmc param_295
    .param pmc param_296 :optional :named("name")
    .param int has_param_296 :opt_flag
    .param pmc param_298 :optional :named("repr")
    .param int has_param_298 :opt_flag
.annotate 'line', 214
    new $P293, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P293, control_292
    push_eh $P293
    .lex "self", param_294
    .lex "$how", param_295
    if has_param_296, optparam_64
    new $P297, "Undef"
    set param_296, $P297
  optparam_64:
    .lex "$name", param_296
    if has_param_298, optparam_65
    new $P299, "Undef"
    set param_298, $P299
  optparam_65:
    .lex "$repr", param_298
.annotate 'line', 216
    $P300 = root_new ['parrot';'Hash']
    .lex "%args", $P300
.annotate 'line', 219
    new $P301, "Undef"
    .lex "$mo", $P301
.annotate 'line', 220
    new $P302, "Undef"
    .lex "$slot", $P302
.annotate 'line', 224
    $P303 = root_new ['parrot';'ResizablePMCArray']
    .lex "@how_ns", $P303
.annotate 'line', 225
    new $P304, "Undef"
    .lex "$how_name", $P304
.annotate 'line', 226
    new $P305, "Undef"
    .lex "$setup_call", $P305
.annotate 'line', 214
    find_lex $P306, "%args"
.annotate 'line', 217
    find_lex $P308, "$name"
    defined $I309, $P308
    unless $I309, if_307_end
    find_lex $P310, "$name"
    find_lex $P311, "%args"
    unless_null $P311, vivify_66
    $P311 = root_new ['parrot';'Hash']
    store_lex "%args", $P311
  vivify_66:
    set $P311["name"], $P310
  if_307_end:
.annotate 'line', 218
    find_lex $P313, "$repr"
    defined $I314, $P313
    unless $I314, if_312_end
    find_lex $P315, "$repr"
    find_lex $P316, "%args"
    unless_null $P316, vivify_67
    $P316 = root_new ['parrot';'Hash']
    store_lex "%args", $P316
  vivify_67:
    set $P316["repr"], $P315
  if_312_end:
.annotate 'line', 219
    find_lex $P317, "$how"
    find_lex $P318, "%args"
    $P319 = $P317."new_type"($P318 :flat)
    store_lex "$mo", $P319
.annotate 'line', 220
    find_lex $P320, "self"
    find_lex $P321, "$mo"
    $P322 = $P320."add_object"($P321)
    store_lex "$slot", $P322
.annotate 'line', 224
    find_lex $P323, "$how"
    get_how $P324, $P323
    find_lex $P325, "$how"
    $S326 = $P324."name"($P325)
    split $P327, "::", $S326
    store_lex "@how_ns", $P327
.annotate 'line', 225
    find_lex $P328, "@how_ns"
    $P329 = $P328."pop"()
    store_lex "$how_name", $P329
.annotate 'line', 226
    get_hll_global $P330, ["PAST"], "Op"
.annotate 'line', 228
    get_hll_global $P331, ["PAST"], "Var"
    find_lex $P332, "$how_name"
    find_lex $P333, "@how_ns"
    $P334 = $P331."new"($P332 :named("name"), $P333 :named("namespace"), "package" :named("scope"))
    $P335 = $P330."new"($P334, "callmethod" :named("pasttype"), "new_type" :named("name"))
.annotate 'line', 226
    store_lex "$setup_call", $P335
.annotate 'line', 232
    find_lex $P337, "$name"
    defined $I338, $P337
    unless $I338, if_336_end
.annotate 'line', 233
    find_lex $P339, "$setup_call"
    get_hll_global $P340, ["PAST"], "Val"
    find_lex $P341, "$name"
    $P342 = $P340."new"($P341 :named("value"), "name" :named("named"))
    $P339."push"($P342)
  if_336_end:
.annotate 'line', 235
    find_lex $P344, "$repr"
    defined $I345, $P344
    unless $I345, if_343_end
.annotate 'line', 236
    find_lex $P346, "$setup_call"
    get_hll_global $P347, ["PAST"], "Val"
    find_lex $P348, "$repr"
    $P349 = $P347."new"($P348 :named("value"), "repr" :named("named"))
    $P346."push"($P349)
  if_343_end:
.annotate 'line', 238
    find_lex $P350, "self"
.annotate 'line', 239
    find_lex $P351, "self"
    find_lex $P352, "$slot"
    find_lex $P353, "self"
    find_lex $P354, "$setup_call"
    $P355 = $P353."set_cur_sc"($P354)
    $P356 = $P351."set_slot_past"($P352, $P355)
    $P350."add_event"($P356 :named("deserialize_past"))
.annotate 'line', 242
    new $P357, "Exception"
    set $P357['type'], .CONTROL_RETURN
    find_lex $P358, "$mo"
    setattribute $P357, 'payload', $P358
    throw $P357
.annotate 'line', 214
    .return ()
  control_292:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P359, exception, "payload"
    .return ($P359)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "pkg_add_method"  :subid("31_1300051157.988") :outer("15_1300051157.988")
    .param pmc param_361
    .param pmc param_362
    .param pmc param_363
    .param pmc param_364
    .param pmc param_365
.annotate 'line', 248
    .lex "self", param_361
    .lex "$obj", param_362
    .lex "$meta_method_name", param_363
    .lex "$name", param_364
    .lex "$method_past", param_365
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "pkg_add_parent_or_role"  :subid("32_1300051157.988") :outer("15_1300051157.988")
    .param pmc param_367
    .param pmc param_368
    .param pmc param_369
    .param pmc param_370
.annotate 'line', 253
    .lex "self", param_367
    .lex "$obj", param_368
    .lex "$meta_method_name", param_369
    .lex "$to_add", param_370
.annotate 'line', 258
    new $P371, "Undef"
    .lex "$slot_past", $P371
.annotate 'line', 255
    find_lex $P372, "$obj"
    get_how $P373, $P372
    find_lex $P374, "$obj"
    find_lex $P375, "$to_add"
    find_lex $P376, "$meta_method_name"
    set $S377, $P376
    $P373.$S377($P374, $P375)
.annotate 'line', 258
    find_lex $P378, "$obj"
    $P379 = "get_slot_past_for_object"($P378)
    store_lex "$slot_past", $P379
.annotate 'line', 259
    find_lex $P380, "self"
    get_hll_global $P381, ["PAST"], "Op"
    find_lex $P382, "$meta_method_name"
.annotate 'line', 261
    get_hll_global $P383, ["PAST"], "Op"
    find_lex $P384, "$slot_past"
    $P385 = $P383."new"($P384, "get_how PP" :named("pirop"))
    find_lex $P386, "$slot_past"
.annotate 'line', 263
    find_lex $P387, "self"
    find_lex $P388, "$to_add"
    $P389 = $P387."get_object_sc_ref_past"($P388)
    $P390 = $P381."new"($P385, $P386, $P389, "callmethod" :named("pasttype"), $P382 :named("name"))
.annotate 'line', 259
    $P391 = $P380."add_event"($P390 :named("deserialize_past"))
.annotate 'line', 253
    .return ($P391)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "pkg_compose"  :subid("33_1300051157.988") :outer("15_1300051157.988")
    .param pmc param_393
    .param pmc param_394
.annotate 'line', 268
    .lex "self", param_393
    .lex "$obj", param_394
.annotate 'line', 273
    new $P395, "Undef"
    .lex "$slot_past", $P395
.annotate 'line', 270
    find_lex $P396, "$obj"
    get_how $P397, $P396
    find_lex $P398, "$obj"
    $P397."compose"($P398)
.annotate 'line', 273
    find_lex $P399, "$obj"
    $P400 = "get_slot_past_for_object"($P399)
    store_lex "$slot_past", $P400
.annotate 'line', 274
    find_lex $P401, "self"
    get_hll_global $P402, ["PAST"], "Op"
.annotate 'line', 276
    get_hll_global $P403, ["PAST"], "Op"
    find_lex $P404, "$slot_past"
    $P405 = $P403."new"($P404, "get_how PP" :named("pirop"))
    find_lex $P406, "$slot_past"
    $P407 = $P402."new"($P405, $P406, "callmethod" :named("pasttype"), "compose" :named("name"))
.annotate 'line', 274
    $P408 = $P401."add_event"($P407 :named("deserialize_past"))
.annotate 'line', 268
    .return ($P408)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "sc"  :subid("34_1300051157.988") :outer("15_1300051157.988")
    .param pmc param_410
.annotate 'line', 282
    .lex "self", param_410
    find_lex $P411, "self"
    get_global $P412, "$?CLASS"
    getattribute $P413, $P411, $P412, "@!sc"
    unless_null $P413, vivify_68
    $P413 = root_new ['parrot';'ResizablePMCArray']
  vivify_68:
    .return ($P413)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "to_past"  :subid("35_1300051157.988") :outer("15_1300051157.988")
    .param pmc param_415
.annotate 'line', 288
    .const 'Sub' $P429 = "36_1300051157.988" 
    capture_lex $P429
    .lex "self", param_415
.annotate 'line', 289
    new $P416, "Undef"
    .lex "$des", $P416
.annotate 'line', 290
    new $P417, "Undef"
    .lex "$fix", $P417
.annotate 'line', 289
    get_hll_global $P418, ["PAST"], "Stmts"
    $P419 = $P418."new"()
    store_lex "$des", $P419
.annotate 'line', 290
    get_hll_global $P420, ["PAST"], "Stmts"
    $P421 = $P420."new"()
    store_lex "$fix", $P421
.annotate 'line', 291
    find_lex $P423, "self"
    get_global $P424, "$?CLASS"
    getattribute $P425, $P423, $P424, "@!event_stream"
    unless_null $P425, vivify_69
    $P425 = root_new ['parrot';'ResizablePMCArray']
  vivify_69:
    defined $I426, $P425
    unless $I426, for_undef_70
    iter $P422, $P425
    new $P448, 'ExceptionHandler'
    set_label $P448, loop447_handler
    $P448."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P448
  loop447_test:
    unless $P422, loop447_done
    shift $P427, $P422
  loop447_redo:
    .const 'Sub' $P429 = "36_1300051157.988" 
    capture_lex $P429
    $P429($P427)
  loop447_next:
    goto loop447_test
  loop447_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P449, exception, 'type'
    eq $P449, .CONTROL_LOOP_NEXT, loop447_next
    eq $P449, .CONTROL_LOOP_REDO, loop447_redo
  loop447_done:
    pop_eh 
  for_undef_70:
.annotate 'line', 295
    find_dynamic_lex $P450, "$/"
    get_hll_global $P451, ["PAST"], "Op"
.annotate 'line', 297
    get_hll_global $P452, ["PAST"], "Op"
.annotate 'line', 299
    get_hll_global $P453, ["PAST"], "Op"
    find_lex $P454, "self"
    get_global $P455, "$?CLASS"
    getattribute $P456, $P454, $P455, "$!handle"
    unless_null $P456, vivify_71
    new $P456, "Undef"
  vivify_71:
    $P457 = $P453."new"($P456, "nqp_get_sc Ps" :named("pirop"))
    $P458 = $P452."new"($P457, "isnull IP" :named("pirop"))
.annotate 'line', 301
    get_hll_global $P459, ["PAST"], "Stmts"
.annotate 'line', 302
    get_hll_global $P460, ["PAST"], "Op"
    $P461 = $P460."new"("nqp_dynop_setup v" :named("pirop"))
.annotate 'line', 303
    get_hll_global $P462, ["PAST"], "Op"
    $P463 = $P462."new"("nqpmo.pbc", "load_bytecode vs" :named("pirop"))
.annotate 'line', 304
    get_hll_global $P464, ["PAST"], "Op"
.annotate 'line', 306
    get_hll_global $P465, ["PAST"], "Var"
    $P466 = $P465."new"("cur_sc" :named("name"), "register" :named("scope"), 1 :named("isdecl"))
.annotate 'line', 307
    get_hll_global $P467, ["PAST"], "Op"
    find_lex $P468, "self"
    get_global $P469, "$?CLASS"
    getattribute $P470, $P468, $P469, "$!handle"
    unless_null $P470, vivify_72
    new $P470, "Undef"
  vivify_72:
    $P471 = $P467."new"($P470, "nqp_create_sc Ps" :named("pirop"))
    $P472 = $P464."new"($P466, $P471, "bind" :named("pasttype"))
.annotate 'line', 304
    find_lex $P473, "$des"
    $P474 = $P459."new"($P461, $P463, $P472, $P473)
.annotate 'line', 301
    find_lex $P475, "$fix"
    $P476 = $P451."new"($P458, $P474, $P475, "if" :named("pasttype"))
.annotate 'line', 295
    $P477 = $P450."!make"($P476)
.annotate 'line', 288
    .return ($P477)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block428"  :anon :subid("36_1300051157.988") :outer("35_1300051157.988")
    .param pmc param_430
.annotate 'line', 291
    .lex "$_", param_430
.annotate 'line', 292
    find_lex $P432, "$_"
    $P433 = $P432."deserialize_past"()
    defined $I434, $P433
    unless $I434, if_431_end
    find_lex $P435, "$des"
    find_lex $P436, "$_"
    $P437 = $P436."deserialize_past"()
    $P435."push"($P437)
  if_431_end:
.annotate 'line', 293
    find_lex $P440, "$_"
    $P441 = $P440."fixup_past"()
    defined $I442, $P441
    if $I442, if_439
    new $P438, 'Integer'
    set $P438, $I442
    goto if_439_end
  if_439:
    find_lex $P443, "$fix"
    find_lex $P444, "$_"
    $P445 = $P444."fixup_past"()
    $P446 = $P443."push"($P445)
    set $P438, $P446
  if_439_end:
.annotate 'line', 291
    .return ($P438)
.end


.HLL "nqp"

.namespace []
.sub "_block533" :load :anon :subid("38_1300051157.988")
.annotate 'line', 1
    .const 'Sub' $P535 = "10_1300051157.988" 
    $P536 = $P535()
    .return ($P536)
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
