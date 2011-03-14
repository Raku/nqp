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
    
    ## Bring in PAST and PCT
    .local pmc hllns, parrotns, imports
    hllns = get_hll_namespace
    parrotns = get_root_namespace ['parrot']
    imports = split ' ', 'PAST PCT'
    parrotns.'export_to'(hllns, imports)
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
.sub "_block11"  :anon :subid("10_1300090344.27537")
.annotate 'line', 0
    get_hll_global $P14, ["HLL";"Grammar"], "_block13" 
    capture_lex $P14
.annotate 'line', 1
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 3
    get_hll_global $P14, ["HLL";"Grammar"], "_block13" 
    capture_lex $P14
    $P680 = $P14()
.annotate 'line', 1
    .return ($P680)
    .const 'Sub' $P682 = "121_1300090344.27537" 
    .return ($P682)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post122") :outer("10_1300090344.27537")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1300090344.27537" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P686, "1300090339.64889"
    isnull $I687, $P686
    if $I687, if_685
    nqp_get_sc_object $P697, "1300090339.64889", 0
    set_hll_global ["HLL"], "Grammar", $P697
    goto if_685_end
  if_685:
    nqp_dynop_setup 
    getinterp $P688
    get_class $P689, "LexPad"
    get_class $P690, "NQPLexPad"
    $P688."hll_map"($P689, $P690)
    load_bytecode "nqpmo.pbc"
    nqp_create_sc $P691, "1300090339.64889"
    .local pmc cur_sc
    set cur_sc, $P691
    load_bytecode "SettingManager.pbc"
    get_hll_global $P692, ["HLL"], "SettingManager"
    $P693 = $P692."load_setting"("NQPCORE")
    block."set_outer_ctx"($P693)
    get_hll_global $P694, "NQPClassHOW"
    $P695 = $P694."new_type"("HLL::Grammar" :named("name"))
    nqp_set_sc_for_object $P695, cur_sc
    nqp_set_sc_object "1300090339.64889", 0, $P695
    nqp_get_sc_object $P696, "1300090339.64889", 0
    set_hll_global ["HLL"], "Grammar", $P696
  if_685_end:
.end


.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace ["HLL";"Grammar"]
.sub "_block13"  :subid("11_1300090344.27537") :outer("10_1300090344.27537")
.annotate 'line', 3
    .const 'Sub' $P468 = "120_1300090344.27537" 
    capture_lex $P468
    .const 'Sub' $P432 = "118_1300090344.27537" 
    capture_lex $P432
    .const 'Sub' $P427 = "117_1300090344.27537" 
    capture_lex $P427
    .const 'Sub' $P412 = "116_1300090344.27537" 
    capture_lex $P412
    .const 'Sub' $P402 = "115_1300090344.27537" 
    capture_lex $P402
    .const 'Sub' $P398 = "114_1300090344.27537" 
    capture_lex $P398
    .const 'Sub' $P394 = "113_1300090344.27537" 
    capture_lex $P394
    .const 'Sub' $P391 = "112_1300090344.27537" 
    capture_lex $P391
    .const 'Sub' $P389 = "111_1300090344.27537" 
    capture_lex $P389
    .const 'Sub' $P387 = "110_1300090344.27537" 
    capture_lex $P387
    .const 'Sub' $P381 = "109_1300090344.27537" 
    capture_lex $P381
    .const 'Sub' $P378 = "108_1300090344.27537" 
    capture_lex $P378
    .const 'Sub' $P374 = "107_1300090344.27537" 
    capture_lex $P374
    .const 'Sub' $P346 = "106_1300090344.27537" 
    capture_lex $P346
    .const 'Sub' $P341 = "105_1300090344.27537" 
    capture_lex $P341
    .const 'Sub' $P332 = "103_1300090344.27537" 
    capture_lex $P332
    .const 'Sub' $P326 = "101_1300090344.27537" 
    capture_lex $P326
    .const 'Sub' $P313 = "98_1300090344.27537" 
    capture_lex $P313
    .const 'Sub' $P281 = "93_1300090344.27537" 
    capture_lex $P281
    .const 'Sub' $P275 = "91_1300090344.27537" 
    capture_lex $P275
    .const 'Sub' $P270 = "89_1300090344.27537" 
    capture_lex $P270
    .const 'Sub' $P264 = "87_1300090344.27537" 
    capture_lex $P264
    .const 'Sub' $P258 = "85_1300090344.27537" 
    capture_lex $P258
    .const 'Sub' $P253 = "83_1300090344.27537" 
    capture_lex $P253
    .const 'Sub' $P248 = "81_1300090344.27537" 
    capture_lex $P248
    .const 'Sub' $P243 = "79_1300090344.27537" 
    capture_lex $P243
    .const 'Sub' $P238 = "77_1300090344.27537" 
    capture_lex $P238
    .const 'Sub' $P233 = "75_1300090344.27537" 
    capture_lex $P233
    .const 'Sub' $P228 = "73_1300090344.27537" 
    capture_lex $P228
    .const 'Sub' $P223 = "71_1300090344.27537" 
    capture_lex $P223
    .const 'Sub' $P218 = "69_1300090344.27537" 
    capture_lex $P218
    .const 'Sub' $P206 = "65_1300090344.27537" 
    capture_lex $P206
    .const 'Sub' $P193 = "63_1300090344.27537" 
    capture_lex $P193
    .const 'Sub' $P181 = "61_1300090344.27537" 
    capture_lex $P181
    .const 'Sub' $P175 = "59_1300090344.27537" 
    capture_lex $P175
    .const 'Sub' $P168 = "57_1300090344.27537" 
    capture_lex $P168
    .const 'Sub' $P162 = "55_1300090344.27537" 
    capture_lex $P162
    .const 'Sub' $P155 = "53_1300090344.27537" 
    capture_lex $P155
    .const 'Sub' $P149 = "51_1300090344.27537" 
    capture_lex $P149
    .const 'Sub' $P142 = "49_1300090344.27537" 
    capture_lex $P142
    .const 'Sub' $P136 = "47_1300090344.27537" 
    capture_lex $P136
    .const 'Sub' $P130 = "45_1300090344.27537" 
    capture_lex $P130
    .const 'Sub' $P121 = "43_1300090344.27537" 
    capture_lex $P121
    .const 'Sub' $P113 = "41_1300090344.27537" 
    capture_lex $P113
    .const 'Sub' $P105 = "40_1300090344.27537" 
    capture_lex $P105
    .const 'Sub' $P99 = "38_1300090344.27537" 
    capture_lex $P99
    .const 'Sub' $P94 = "36_1300090344.27537" 
    capture_lex $P94
    .const 'Sub' $P86 = "34_1300090344.27537" 
    capture_lex $P86
    .const 'Sub' $P80 = "32_1300090344.27537" 
    capture_lex $P80
    .const 'Sub' $P74 = "30_1300090344.27537" 
    capture_lex $P74
    .const 'Sub' $P68 = "28_1300090344.27537" 
    capture_lex $P68
    .const 'Sub' $P23 = "14_1300090344.27537" 
    capture_lex $P23
    .const 'Sub' $P16 = "12_1300090344.27537" 
    capture_lex $P16
    get_global $P15, "$?CLASS"
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 832
    .const 'Sub' $P432 = "118_1300090344.27537" 
    newclosure $P451, $P432
.annotate 'line', 3
    .return ($P451)
    .const 'Sub' $P453 = "119_1300090344.27537" 
    .return ($P453)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "" :load :init :subid("post123") :outer("11_1300090344.27537")
.annotate 'line', 3
    get_hll_global $P14, ["HLL";"Grammar"], "_block13" 
    .local pmc block
    set block, $P14
    nqp_get_sc $P457, "1300090339.64889"
    isnull $I458, $P457
    if $I458, if_456
    goto if_456_end
  if_456:
    nqp_dynop_setup 
    getinterp $P459
    get_class $P460, "LexPad"
    get_class $P461, "NQPLexPad"
    $P459."hll_map"($P460, $P461)
    load_bytecode "nqpmo.pbc"
    nqp_create_sc $P462, "1300090339.64889"
    .local pmc cur_sc
    set cur_sc, $P462
    load_bytecode "SettingManager.pbc"
    get_hll_global $P463, ["HLL"], "SettingManager"
    $P464 = $P463."load_setting"("NQPCORE")
    block."set_outer_ctx"($P464)
    get_hll_global $P465, "NQPClassHOW"
    $P466 = $P465."new_type"("HLL::Grammar" :named("name"))
    nqp_set_sc_for_object $P466, cur_sc
    nqp_set_sc_object "1300090339.64889", 0, $P466
  if_456_end:
    .const 'Sub' $P468 = "120_1300090344.27537" 
    capture_lex $P468
    $P468()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block467"  :anon :subid("120_1300090344.27537") :outer("11_1300090344.27537")
.annotate 'line', 3
    nqp_get_sc_object $P469, "1300090339.64889", 0
    .local pmc type_obj
    set type_obj, $P469
    set_global "$?CLASS", type_obj
    get_how $P470, type_obj
    .const 'Sub' $P471 = "12_1300090344.27537" 
    $P470."add_method"(type_obj, "ws", $P471)
    get_how $P472, type_obj
    get_global $P473, "!PREFIX__ws"
    $P472."add_method"(type_obj, "!PREFIX__ws", $P473)
    get_how $P474, type_obj
    .const 'Sub' $P475 = "14_1300090344.27537" 
    $P474."add_method"(type_obj, "termish", $P475)
    get_how $P476, type_obj
    get_global $P477, "!PREFIX__termish"
    $P476."add_method"(type_obj, "!PREFIX__termish", $P477)
    get_how $P478, type_obj
    .const 'Sub' $P479 = "16_1300090344.27537" 
    $P478."add_method"(type_obj, "term", $P479)
    get_how $P480, type_obj
    .const 'Sub' $P481 = "17_1300090344.27537" 
    $P480."add_method"(type_obj, "!PREFIX__term", $P481)
    get_how $P482, type_obj
    .const 'Sub' $P483 = "18_1300090344.27537" 
    $P482."add_method"(type_obj, "infix", $P483)
    get_how $P484, type_obj
    .const 'Sub' $P485 = "19_1300090344.27537" 
    $P484."add_method"(type_obj, "!PREFIX__infix", $P485)
    get_how $P486, type_obj
    .const 'Sub' $P487 = "20_1300090344.27537" 
    $P486."add_method"(type_obj, "prefix", $P487)
    get_how $P488, type_obj
    .const 'Sub' $P489 = "21_1300090344.27537" 
    $P488."add_method"(type_obj, "!PREFIX__prefix", $P489)
    get_how $P490, type_obj
    .const 'Sub' $P491 = "22_1300090344.27537" 
    $P490."add_method"(type_obj, "postfix", $P491)
    get_how $P492, type_obj
    .const 'Sub' $P493 = "23_1300090344.27537" 
    $P492."add_method"(type_obj, "!PREFIX__postfix", $P493)
    get_how $P494, type_obj
    .const 'Sub' $P495 = "24_1300090344.27537" 
    $P494."add_method"(type_obj, "circumfix", $P495)
    get_how $P496, type_obj
    .const 'Sub' $P497 = "25_1300090344.27537" 
    $P496."add_method"(type_obj, "!PREFIX__circumfix", $P497)
    get_how $P498, type_obj
    .const 'Sub' $P499 = "26_1300090344.27537" 
    $P498."add_method"(type_obj, "postcircumfix", $P499)
    get_how $P500, type_obj
    .const 'Sub' $P501 = "27_1300090344.27537" 
    $P500."add_method"(type_obj, "!PREFIX__postcircumfix", $P501)
    get_how $P502, type_obj
    .const 'Sub' $P503 = "28_1300090344.27537" 
    $P502."add_method"(type_obj, "term:sym<circumfix>", $P503)
    get_how $P504, type_obj
    get_global $P505, "!PREFIX__term:sym<circumfix>"
    $P504."add_method"(type_obj, "!PREFIX__term:sym<circumfix>", $P505)
    get_how $P506, type_obj
    .const 'Sub' $P507 = "30_1300090344.27537" 
    $P506."add_method"(type_obj, "infixish", $P507)
    get_how $P508, type_obj
    get_global $P509, "!PREFIX__infixish"
    $P508."add_method"(type_obj, "!PREFIX__infixish", $P509)
    get_how $P510, type_obj
    .const 'Sub' $P511 = "32_1300090344.27537" 
    $P510."add_method"(type_obj, "prefixish", $P511)
    get_how $P512, type_obj
    get_global $P513, "!PREFIX__prefixish"
    $P512."add_method"(type_obj, "!PREFIX__prefixish", $P513)
    get_how $P514, type_obj
    .const 'Sub' $P515 = "34_1300090344.27537" 
    $P514."add_method"(type_obj, "postfixish", $P515)
    get_how $P516, type_obj
    get_global $P517, "!PREFIX__postfixish"
    $P516."add_method"(type_obj, "!PREFIX__postfixish", $P517)
    get_how $P518, type_obj
    .const 'Sub' $P519 = "36_1300090344.27537" 
    $P518."add_method"(type_obj, "nullterm", $P519)
    get_how $P520, type_obj
    get_global $P521, "!PREFIX__nullterm"
    $P520."add_method"(type_obj, "!PREFIX__nullterm", $P521)
    get_how $P522, type_obj
    .const 'Sub' $P523 = "38_1300090344.27537" 
    $P522."add_method"(type_obj, "nullterm_alt", $P523)
    get_how $P524, type_obj
    get_global $P525, "!PREFIX__nullterm_alt"
    $P524."add_method"(type_obj, "!PREFIX__nullterm_alt", $P525)
    get_how $P526, type_obj
    .const 'Sub' $P527 = "40_1300090344.27537" 
    $P526."add_method"(type_obj, "nulltermish", $P527)
    get_how $P528, type_obj
    .const 'Sub' $P529 = "41_1300090344.27537" 
    $P528."add_method"(type_obj, "quote_delimited", $P529)
    get_how $P530, type_obj
    get_global $P531, "!PREFIX__quote_delimited"
    $P530."add_method"(type_obj, "!PREFIX__quote_delimited", $P531)
    get_how $P532, type_obj
    .const 'Sub' $P533 = "43_1300090344.27537" 
    $P532."add_method"(type_obj, "quote_atom", $P533)
    get_how $P534, type_obj
    get_global $P535, "!PREFIX__quote_atom"
    $P534."add_method"(type_obj, "!PREFIX__quote_atom", $P535)
    get_how $P536, type_obj
    .const 'Sub' $P537 = "45_1300090344.27537" 
    $P536."add_method"(type_obj, "decint", $P537)
    get_how $P538, type_obj
    get_global $P539, "!PREFIX__decint"
    $P538."add_method"(type_obj, "!PREFIX__decint", $P539)
    get_how $P540, type_obj
    .const 'Sub' $P541 = "47_1300090344.27537" 
    $P540."add_method"(type_obj, "decints", $P541)
    get_how $P542, type_obj
    get_global $P543, "!PREFIX__decints"
    $P542."add_method"(type_obj, "!PREFIX__decints", $P543)
    get_how $P544, type_obj
    .const 'Sub' $P545 = "49_1300090344.27537" 
    $P544."add_method"(type_obj, "hexint", $P545)
    get_how $P546, type_obj
    get_global $P547, "!PREFIX__hexint"
    $P546."add_method"(type_obj, "!PREFIX__hexint", $P547)
    get_how $P548, type_obj
    .const 'Sub' $P549 = "51_1300090344.27537" 
    $P548."add_method"(type_obj, "hexints", $P549)
    get_how $P550, type_obj
    get_global $P551, "!PREFIX__hexints"
    $P550."add_method"(type_obj, "!PREFIX__hexints", $P551)
    get_how $P552, type_obj
    .const 'Sub' $P553 = "53_1300090344.27537" 
    $P552."add_method"(type_obj, "octint", $P553)
    get_how $P554, type_obj
    get_global $P555, "!PREFIX__octint"
    $P554."add_method"(type_obj, "!PREFIX__octint", $P555)
    get_how $P556, type_obj
    .const 'Sub' $P557 = "55_1300090344.27537" 
    $P556."add_method"(type_obj, "octints", $P557)
    get_how $P558, type_obj
    get_global $P559, "!PREFIX__octints"
    $P558."add_method"(type_obj, "!PREFIX__octints", $P559)
    get_how $P560, type_obj
    .const 'Sub' $P561 = "57_1300090344.27537" 
    $P560."add_method"(type_obj, "binint", $P561)
    get_how $P562, type_obj
    get_global $P563, "!PREFIX__binint"
    $P562."add_method"(type_obj, "!PREFIX__binint", $P563)
    get_how $P564, type_obj
    .const 'Sub' $P565 = "59_1300090344.27537" 
    $P564."add_method"(type_obj, "binints", $P565)
    get_how $P566, type_obj
    get_global $P567, "!PREFIX__binints"
    $P566."add_method"(type_obj, "!PREFIX__binints", $P567)
    get_how $P568, type_obj
    .const 'Sub' $P569 = "61_1300090344.27537" 
    $P568."add_method"(type_obj, "integer", $P569)
    get_how $P570, type_obj
    get_global $P571, "!PREFIX__integer"
    $P570."add_method"(type_obj, "!PREFIX__integer", $P571)
    get_how $P572, type_obj
    .const 'Sub' $P573 = "63_1300090344.27537" 
    $P572."add_method"(type_obj, "dec_number", $P573)
    get_how $P574, type_obj
    get_global $P575, "!PREFIX__dec_number"
    $P574."add_method"(type_obj, "!PREFIX__dec_number", $P575)
    get_how $P576, type_obj
    .const 'Sub' $P577 = "65_1300090344.27537" 
    $P576."add_method"(type_obj, "escale", $P577)
    get_how $P578, type_obj
    get_global $P579, "!PREFIX__escale"
    $P578."add_method"(type_obj, "!PREFIX__escale", $P579)
    get_how $P580, type_obj
    .const 'Sub' $P581 = "67_1300090344.27537" 
    $P580."add_method"(type_obj, "quote_escape", $P581)
    get_how $P582, type_obj
    .const 'Sub' $P583 = "68_1300090344.27537" 
    $P582."add_method"(type_obj, "!PREFIX__quote_escape", $P583)
    get_how $P584, type_obj
    .const 'Sub' $P585 = "69_1300090344.27537" 
    $P584."add_method"(type_obj, "quote_escape:sym<backslash>", $P585)
    get_how $P586, type_obj
    get_global $P587, "!PREFIX__quote_escape:sym<backslash>"
    $P586."add_method"(type_obj, "!PREFIX__quote_escape:sym<backslash>", $P587)
    get_how $P588, type_obj
    .const 'Sub' $P589 = "71_1300090344.27537" 
    $P588."add_method"(type_obj, "quote_escape:sym<stopper>", $P589)
    get_how $P590, type_obj
    get_global $P591, "!PREFIX__quote_escape:sym<stopper>"
    $P590."add_method"(type_obj, "!PREFIX__quote_escape:sym<stopper>", $P591)
    get_how $P592, type_obj
    .const 'Sub' $P593 = "73_1300090344.27537" 
    $P592."add_method"(type_obj, "quote_escape:sym<bs>", $P593)
    get_how $P594, type_obj
    get_global $P595, "!PREFIX__quote_escape:sym<bs>"
    $P594."add_method"(type_obj, "!PREFIX__quote_escape:sym<bs>", $P595)
    get_how $P596, type_obj
    .const 'Sub' $P597 = "75_1300090344.27537" 
    $P596."add_method"(type_obj, "quote_escape:sym<nl>", $P597)
    get_how $P598, type_obj
    get_global $P599, "!PREFIX__quote_escape:sym<nl>"
    $P598."add_method"(type_obj, "!PREFIX__quote_escape:sym<nl>", $P599)
    get_how $P600, type_obj
    .const 'Sub' $P601 = "77_1300090344.27537" 
    $P600."add_method"(type_obj, "quote_escape:sym<cr>", $P601)
    get_how $P602, type_obj
    get_global $P603, "!PREFIX__quote_escape:sym<cr>"
    $P602."add_method"(type_obj, "!PREFIX__quote_escape:sym<cr>", $P603)
    get_how $P604, type_obj
    .const 'Sub' $P605 = "79_1300090344.27537" 
    $P604."add_method"(type_obj, "quote_escape:sym<tab>", $P605)
    get_how $P606, type_obj
    get_global $P607, "!PREFIX__quote_escape:sym<tab>"
    $P606."add_method"(type_obj, "!PREFIX__quote_escape:sym<tab>", $P607)
    get_how $P608, type_obj
    .const 'Sub' $P609 = "81_1300090344.27537" 
    $P608."add_method"(type_obj, "quote_escape:sym<ff>", $P609)
    get_how $P610, type_obj
    get_global $P611, "!PREFIX__quote_escape:sym<ff>"
    $P610."add_method"(type_obj, "!PREFIX__quote_escape:sym<ff>", $P611)
    get_how $P612, type_obj
    .const 'Sub' $P613 = "83_1300090344.27537" 
    $P612."add_method"(type_obj, "quote_escape:sym<esc>", $P613)
    get_how $P614, type_obj
    get_global $P615, "!PREFIX__quote_escape:sym<esc>"
    $P614."add_method"(type_obj, "!PREFIX__quote_escape:sym<esc>", $P615)
    get_how $P616, type_obj
    .const 'Sub' $P617 = "85_1300090344.27537" 
    $P616."add_method"(type_obj, "quote_escape:sym<hex>", $P617)
    get_how $P618, type_obj
    get_global $P619, "!PREFIX__quote_escape:sym<hex>"
    $P618."add_method"(type_obj, "!PREFIX__quote_escape:sym<hex>", $P619)
    get_how $P620, type_obj
    .const 'Sub' $P621 = "87_1300090344.27537" 
    $P620."add_method"(type_obj, "quote_escape:sym<oct>", $P621)
    get_how $P622, type_obj
    get_global $P623, "!PREFIX__quote_escape:sym<oct>"
    $P622."add_method"(type_obj, "!PREFIX__quote_escape:sym<oct>", $P623)
    get_how $P624, type_obj
    .const 'Sub' $P625 = "89_1300090344.27537" 
    $P624."add_method"(type_obj, "quote_escape:sym<chr>", $P625)
    get_how $P626, type_obj
    get_global $P627, "!PREFIX__quote_escape:sym<chr>"
    $P626."add_method"(type_obj, "!PREFIX__quote_escape:sym<chr>", $P627)
    get_how $P628, type_obj
    .const 'Sub' $P629 = "91_1300090344.27537" 
    $P628."add_method"(type_obj, "quote_escape:sym<0>", $P629)
    get_how $P630, type_obj
    get_global $P631, "!PREFIX__quote_escape:sym<0>"
    $P630."add_method"(type_obj, "!PREFIX__quote_escape:sym<0>", $P631)
    get_how $P632, type_obj
    .const 'Sub' $P633 = "93_1300090344.27537" 
    $P632."add_method"(type_obj, "quote_escape:sym<misc>", $P633)
    get_how $P634, type_obj
    get_global $P635, "!PREFIX__quote_escape:sym<misc>"
    $P634."add_method"(type_obj, "!PREFIX__quote_escape:sym<misc>", $P635)
    get_how $P636, type_obj
    .const 'Sub' $P637 = "98_1300090344.27537" 
    $P636."add_method"(type_obj, "charname", $P637)
    get_how $P638, type_obj
    get_global $P639, "!PREFIX__charname"
    $P638."add_method"(type_obj, "!PREFIX__charname", $P639)
    get_how $P640, type_obj
    .const 'Sub' $P641 = "101_1300090344.27537" 
    $P640."add_method"(type_obj, "charnames", $P641)
    get_how $P642, type_obj
    get_global $P643, "!PREFIX__charnames"
    $P642."add_method"(type_obj, "!PREFIX__charnames", $P643)
    get_how $P644, type_obj
    .const 'Sub' $P645 = "103_1300090344.27537" 
    $P644."add_method"(type_obj, "charspec", $P645)
    get_how $P646, type_obj
    get_global $P647, "!PREFIX__charspec"
    $P646."add_method"(type_obj, "!PREFIX__charspec", $P647)
    get_how $P648, type_obj
    .const 'Sub' $P649 = "105_1300090344.27537" 
    $P648."add_method"(type_obj, "O", $P649)
    get_how $P650, type_obj
    .const 'Sub' $P651 = "106_1300090344.27537" 
    $P650."add_method"(type_obj, "panic", $P651)
    get_how $P652, type_obj
    .const 'Sub' $P653 = "107_1300090344.27537" 
    $P652."add_method"(type_obj, "peek_delimiters", $P653)
    get_how $P654, type_obj
    .const 'Sub' $P655 = "108_1300090344.27537" 
    $P654."add_method"(type_obj, "quote_EXPR", $P655)
    get_how $P656, type_obj
    .const 'Sub' $P657 = "109_1300090344.27537" 
    $P656."add_method"(type_obj, "quotemod_check", $P657)
    get_how $P658, type_obj
    .const 'Sub' $P659 = "110_1300090344.27537" 
    $P658."add_method"(type_obj, "starter", $P659)
    get_how $P660, type_obj
    .const 'Sub' $P661 = "111_1300090344.27537" 
    $P660."add_method"(type_obj, "stopper", $P661)
    get_how $P662, type_obj
    .const 'Sub' $P663 = "112_1300090344.27537" 
    $P662."add_method"(type_obj, "split_words", $P663)
    get_how $P664, type_obj
    .const 'Sub' $P665 = "113_1300090344.27537" 
    $P664."add_method"(type_obj, "EXPR", $P665)
    get_how $P666, type_obj
    .const 'Sub' $P667 = "114_1300090344.27537" 
    $P666."add_method"(type_obj, "EXPR_reduce", $P667)
    get_how $P668, type_obj
    .const 'Sub' $P669 = "115_1300090344.27537" 
    $P668."add_method"(type_obj, "ternary", $P669)
    get_how $P670, type_obj
    .const 'Sub' $P671 = "116_1300090344.27537" 
    $P670."add_method"(type_obj, "MARKER", $P671)
    get_how $P672, type_obj
    .const 'Sub' $P673 = "117_1300090344.27537" 
    $P672."add_method"(type_obj, "MARKED", $P673)
    get_how $P674, type_obj
    .const 'Sub' $P675 = "118_1300090344.27537" 
    $P674."add_method"(type_obj, "LANG", $P675)
    get_how $P676, type_obj
    get_hll_global $P677, ["Regex"], "Cursor"
    $P676."add_parent"(type_obj, $P677)
    get_how $P678, type_obj
    $P679 = $P678."compose"(type_obj)
    .return ($P679)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "ws"  :subid("12_1300090344.27537") :method :outer("11_1300090344.27537")
.annotate 'line', 3
    .local string rx17_tgt
    .local int rx17_pos
    .local int rx17_off
    .local int rx17_eos
    .local int rx17_rep
    .local pmc rx17_cur
    .local pmc rx17_debug
    (rx17_cur, rx17_pos, rx17_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx17_cur
    .local pmc match
    .lex "$/", match
    length rx17_eos, rx17_tgt
    gt rx17_pos, rx17_eos, rx17_done
    set rx17_off, 0
    lt rx17_pos, 2, rx17_start
    sub rx17_off, rx17_pos, 1
    substr rx17_tgt, rx17_tgt, rx17_off
  rx17_start:
    eq $I10, 1, rx17_restart
    if_null rx17_debug, debug_124
    rx17_cur."!cursor_debug"("START", "ws")
  debug_124:
    $I10 = self.'from'()
    ne $I10, -1, rxscan20_done
    goto rxscan20_scan
  rxscan20_loop:
    (rx17_pos) = rx17_cur."from"()
    inc rx17_pos
    rx17_cur."!cursor_from"(rx17_pos)
    ge rx17_pos, rx17_eos, rxscan20_done
  rxscan20_scan:
    set_addr $I10, rxscan20_loop
    rx17_cur."!mark_push"(0, rx17_pos, $I10)
  rxscan20_done:
  # rx subrule "ww" subtype=zerowidth negate=1
    rx17_cur."!cursor_pos"(rx17_pos)
    $P10 = rx17_cur."ww"()
    if $P10, rx17_fail
  # rx rxquantr21 ** 0..*
    set_addr $I10, rxquantr21_done
    rx17_cur."!mark_push"(0, rx17_pos, $I10)
  rxquantr21_loop:
  alt22_0:
    set_addr $I10, alt22_1
    rx17_cur."!mark_push"(0, rx17_pos, $I10)
  # rx charclass_q s r 1..-1
    sub $I10, rx17_pos, rx17_off
    find_not_cclass $I11, 32, rx17_tgt, $I10, rx17_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx17_fail
    add rx17_pos, rx17_off, $I11
    goto alt22_end
  alt22_1:
  # rx literal  "#"
    add $I11, rx17_pos, 1
    gt $I11, rx17_eos, rx17_fail
    sub $I11, rx17_pos, rx17_off
    ord $I11, rx17_tgt, $I11
    ne $I11, 35, rx17_fail
    add rx17_pos, 1
  # rx charclass_q N r 0..-1
    sub $I10, rx17_pos, rx17_off
    find_cclass $I11, 4096, rx17_tgt, $I10, rx17_eos
    add rx17_pos, rx17_off, $I11
  alt22_end:
    set_addr $I10, rxquantr21_done
    (rx17_rep) = rx17_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr21_done
    rx17_cur."!mark_push"(rx17_rep, rx17_pos, $I10)
    goto rxquantr21_loop
  rxquantr21_done:
  # rx pass
    rx17_cur."!cursor_pass"(rx17_pos, "ws")
    if_null rx17_debug, debug_125
    rx17_cur."!cursor_debug"("PASS", "ws", " at pos=", rx17_pos)
  debug_125:
    .return (rx17_cur)
  rx17_restart:
    if_null rx17_debug, debug_126
    rx17_cur."!cursor_debug"("NEXT", "ws")
  debug_126:
  rx17_fail:
    (rx17_rep, rx17_pos, $I10, $P10) = rx17_cur."!mark_fail"(0)
    lt rx17_pos, -1, rx17_done
    eq rx17_pos, -1, rx17_fail
    jump $I10
  rx17_done:
    rx17_cur."!cursor_fail"()
    if_null rx17_debug, debug_127
    rx17_cur."!cursor_debug"("FAIL", "ws")
  debug_127:
    .return (rx17_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__ws"  :nsentry("!PREFIX__ws") :subid("13_1300090344.27537") :method
.annotate 'line', 3
    new $P19, "ResizablePMCArray"
    push $P19, ""
    .return ($P19)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "termish"  :subid("14_1300090344.27537") :method :outer("11_1300090344.27537")
.annotate 'line', 3
    .local string rx24_tgt
    .local int rx24_pos
    .local int rx24_off
    .local int rx24_eos
    .local int rx24_rep
    .local pmc rx24_cur
    .local pmc rx24_debug
    (rx24_cur, rx24_pos, rx24_tgt, $I10) = self."!cursor_start"()
    rx24_cur."!cursor_caparray"("prefixish", "postfixish")
    .lex unicode:"$\x{a2}", rx24_cur
    .local pmc match
    .lex "$/", match
    length rx24_eos, rx24_tgt
    gt rx24_pos, rx24_eos, rx24_done
    set rx24_off, 0
    lt rx24_pos, 2, rx24_start
    sub rx24_off, rx24_pos, 1
    substr rx24_tgt, rx24_tgt, rx24_off
  rx24_start:
    eq $I10, 1, rx24_restart
    if_null rx24_debug, debug_128
    rx24_cur."!cursor_debug"("START", "termish")
  debug_128:
    $I10 = self.'from'()
    ne $I10, -1, rxscan27_done
    goto rxscan27_scan
  rxscan27_loop:
    (rx24_pos) = rx24_cur."from"()
    inc rx24_pos
    rx24_cur."!cursor_from"(rx24_pos)
    ge rx24_pos, rx24_eos, rxscan27_done
  rxscan27_scan:
    set_addr $I10, rxscan27_loop
    rx24_cur."!mark_push"(0, rx24_pos, $I10)
  rxscan27_done:
.annotate 'line', 6
  # rx rxquantr28 ** 0..*
    set_addr $I10, rxquantr28_done
    rx24_cur."!mark_push"(0, rx24_pos, $I10)
  rxquantr28_loop:
  # rx subrule "prefixish" subtype=capture negate=
    rx24_cur."!cursor_pos"(rx24_pos)
    $P10 = rx24_cur."prefixish"()
    unless $P10, rx24_fail
    goto rxsubrule29_pass
  rxsubrule29_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx24_fail
  rxsubrule29_pass:
    set_addr $I10, rxsubrule29_back
    rx24_cur."!mark_push"(0, rx24_pos, $I10, $P10)
    $P10."!cursor_names"("prefixish")
    rx24_pos = $P10."pos"()
    set_addr $I10, rxquantr28_done
    (rx24_rep) = rx24_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr28_done
    rx24_cur."!mark_push"(rx24_rep, rx24_pos, $I10)
    goto rxquantr28_loop
  rxquantr28_done:
.annotate 'line', 7
  # rx subrule "term" subtype=capture negate=
    rx24_cur."!cursor_pos"(rx24_pos)
    $P10 = rx24_cur."term"()
    unless $P10, rx24_fail
    rx24_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("term")
    rx24_pos = $P10."pos"()
.annotate 'line', 8
  # rx rxquantr30 ** 0..*
    set_addr $I10, rxquantr30_done
    rx24_cur."!mark_push"(0, rx24_pos, $I10)
  rxquantr30_loop:
  # rx subrule "postfixish" subtype=capture negate=
    rx24_cur."!cursor_pos"(rx24_pos)
    $P10 = rx24_cur."postfixish"()
    unless $P10, rx24_fail
    goto rxsubrule31_pass
  rxsubrule31_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx24_fail
  rxsubrule31_pass:
    set_addr $I10, rxsubrule31_back
    rx24_cur."!mark_push"(0, rx24_pos, $I10, $P10)
    $P10."!cursor_names"("postfixish")
    rx24_pos = $P10."pos"()
    set_addr $I10, rxquantr30_done
    (rx24_rep) = rx24_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr30_done
    rx24_cur."!mark_push"(rx24_rep, rx24_pos, $I10)
    goto rxquantr30_loop
  rxquantr30_done:
.annotate 'line', 5
  # rx pass
    rx24_cur."!cursor_pass"(rx24_pos, "termish")
    if_null rx24_debug, debug_129
    rx24_cur."!cursor_debug"("PASS", "termish", " at pos=", rx24_pos)
  debug_129:
    .return (rx24_cur)
  rx24_restart:
.annotate 'line', 3
    if_null rx24_debug, debug_130
    rx24_cur."!cursor_debug"("NEXT", "termish")
  debug_130:
  rx24_fail:
    (rx24_rep, rx24_pos, $I10, $P10) = rx24_cur."!mark_fail"(0)
    lt rx24_pos, -1, rx24_done
    eq rx24_pos, -1, rx24_fail
    jump $I10
  rx24_done:
    rx24_cur."!cursor_fail"()
    if_null rx24_debug, debug_131
    rx24_cur."!cursor_debug"("FAIL", "termish")
  debug_131:
    .return (rx24_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__termish"  :nsentry("!PREFIX__termish") :subid("15_1300090344.27537") :method
.annotate 'line', 3
    new $P26, "ResizablePMCArray"
    push $P26, ""
    .return ($P26)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "term"  :subid("16_1300090344.27537")
    .param pmc param_33
.annotate 'line', 11
    .lex "self", param_33
    $P34 = param_33."!protoregex"("term")
    .return ($P34)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__term"  :subid("17_1300090344.27537")
    .param pmc param_36
.annotate 'line', 11
    .lex "self", param_36
    $P37 = param_36."!PREFIX__!protoregex"("term")
    .return ($P37)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "infix"  :subid("18_1300090344.27537")
    .param pmc param_39
.annotate 'line', 12
    .lex "self", param_39
    $P40 = param_39."!protoregex"("infix")
    .return ($P40)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__infix"  :subid("19_1300090344.27537")
    .param pmc param_42
.annotate 'line', 12
    .lex "self", param_42
    $P43 = param_42."!PREFIX__!protoregex"("infix")
    .return ($P43)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "prefix"  :subid("20_1300090344.27537")
    .param pmc param_45
.annotate 'line', 13
    .lex "self", param_45
    $P46 = param_45."!protoregex"("prefix")
    .return ($P46)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__prefix"  :subid("21_1300090344.27537")
    .param pmc param_48
.annotate 'line', 13
    .lex "self", param_48
    $P49 = param_48."!PREFIX__!protoregex"("prefix")
    .return ($P49)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postfix"  :subid("22_1300090344.27537")
    .param pmc param_51
.annotate 'line', 14
    .lex "self", param_51
    $P52 = param_51."!protoregex"("postfix")
    .return ($P52)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postfix"  :subid("23_1300090344.27537")
    .param pmc param_54
.annotate 'line', 14
    .lex "self", param_54
    $P55 = param_54."!PREFIX__!protoregex"("postfix")
    .return ($P55)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "circumfix"  :subid("24_1300090344.27537")
    .param pmc param_57
.annotate 'line', 15
    .lex "self", param_57
    $P58 = param_57."!protoregex"("circumfix")
    .return ($P58)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__circumfix"  :subid("25_1300090344.27537")
    .param pmc param_60
.annotate 'line', 15
    .lex "self", param_60
    $P61 = param_60."!PREFIX__!protoregex"("circumfix")
    .return ($P61)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postcircumfix"  :subid("26_1300090344.27537")
    .param pmc param_63
.annotate 'line', 16
    .lex "self", param_63
    $P64 = param_63."!protoregex"("postcircumfix")
    .return ($P64)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postcircumfix"  :subid("27_1300090344.27537")
    .param pmc param_66
.annotate 'line', 16
    .lex "self", param_66
    $P67 = param_66."!PREFIX__!protoregex"("postcircumfix")
    .return ($P67)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "term:sym<circumfix>"  :subid("28_1300090344.27537") :method :outer("11_1300090344.27537")
.annotate 'line', 3
    .local string rx69_tgt
    .local int rx69_pos
    .local int rx69_off
    .local int rx69_eos
    .local int rx69_rep
    .local pmc rx69_cur
    .local pmc rx69_debug
    (rx69_cur, rx69_pos, rx69_tgt, $I10) = self."!cursor_start"()
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
    if_null rx69_debug, debug_132
    rx69_cur."!cursor_debug"("START", "term:sym<circumfix>")
  debug_132:
    $I10 = self.'from'()
    ne $I10, -1, rxscan73_done
    goto rxscan73_scan
  rxscan73_loop:
    (rx69_pos) = rx69_cur."from"()
    inc rx69_pos
    rx69_cur."!cursor_from"(rx69_pos)
    ge rx69_pos, rx69_eos, rxscan73_done
  rxscan73_scan:
    set_addr $I10, rxscan73_loop
    rx69_cur."!mark_push"(0, rx69_pos, $I10)
  rxscan73_done:
.annotate 'line', 18
  # rx subrule "circumfix" subtype=capture negate=
    rx69_cur."!cursor_pos"(rx69_pos)
    $P10 = rx69_cur."circumfix"()
    unless $P10, rx69_fail
    rx69_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("circumfix")
    rx69_pos = $P10."pos"()
  # rx pass
    rx69_cur."!cursor_pass"(rx69_pos, "term:sym<circumfix>")
    if_null rx69_debug, debug_133
    rx69_cur."!cursor_debug"("PASS", "term:sym<circumfix>", " at pos=", rx69_pos)
  debug_133:
    .return (rx69_cur)
  rx69_restart:
.annotate 'line', 3
    if_null rx69_debug, debug_134
    rx69_cur."!cursor_debug"("NEXT", "term:sym<circumfix>")
  debug_134:
  rx69_fail:
    (rx69_rep, rx69_pos, $I10, $P10) = rx69_cur."!mark_fail"(0)
    lt rx69_pos, -1, rx69_done
    eq rx69_pos, -1, rx69_fail
    jump $I10
  rx69_done:
    rx69_cur."!cursor_fail"()
    if_null rx69_debug, debug_135
    rx69_cur."!cursor_debug"("FAIL", "term:sym<circumfix>")
  debug_135:
    .return (rx69_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__term:sym<circumfix>"  :nsentry("!PREFIX__term:sym<circumfix>") :subid("29_1300090344.27537") :method
.annotate 'line', 3
    $P71 = self."!PREFIX__!subrule"("circumfix", "")
    new $P72, "ResizablePMCArray"
    push $P72, $P71
    .return ($P72)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "infixish"  :subid("30_1300090344.27537") :method :outer("11_1300090344.27537")
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
    if_null rx75_debug, debug_136
    rx75_cur."!cursor_debug"("START", "infixish")
  debug_136:
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
.annotate 'line', 20
  # rx subrule "infix" subtype=capture negate=
    rx75_cur."!cursor_pos"(rx75_pos)
    $P10 = rx75_cur."infix"()
    unless $P10, rx75_fail
    rx75_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=infix")
    rx75_pos = $P10."pos"()
  # rx pass
    rx75_cur."!cursor_pass"(rx75_pos, "infixish")
    if_null rx75_debug, debug_137
    rx75_cur."!cursor_debug"("PASS", "infixish", " at pos=", rx75_pos)
  debug_137:
    .return (rx75_cur)
  rx75_restart:
.annotate 'line', 3
    if_null rx75_debug, debug_138
    rx75_cur."!cursor_debug"("NEXT", "infixish")
  debug_138:
  rx75_fail:
    (rx75_rep, rx75_pos, $I10, $P10) = rx75_cur."!mark_fail"(0)
    lt rx75_pos, -1, rx75_done
    eq rx75_pos, -1, rx75_fail
    jump $I10
  rx75_done:
    rx75_cur."!cursor_fail"()
    if_null rx75_debug, debug_139
    rx75_cur."!cursor_debug"("FAIL", "infixish")
  debug_139:
    .return (rx75_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__infixish"  :nsentry("!PREFIX__infixish") :subid("31_1300090344.27537") :method
.annotate 'line', 3
    $P77 = self."!PREFIX__!subrule"("infix", "")
    new $P78, "ResizablePMCArray"
    push $P78, $P77
    .return ($P78)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "prefixish"  :subid("32_1300090344.27537") :method :outer("11_1300090344.27537")
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
    if_null rx81_debug, debug_140
    rx81_cur."!cursor_debug"("START", "prefixish")
  debug_140:
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
.annotate 'line', 21
  # rx subrule "prefix" subtype=capture negate=
    rx81_cur."!cursor_pos"(rx81_pos)
    $P10 = rx81_cur."prefix"()
    unless $P10, rx81_fail
    rx81_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=prefix")
    rx81_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx81_cur."!cursor_pos"(rx81_pos)
    $P10 = rx81_cur."ws"()
    unless $P10, rx81_fail
    rx81_pos = $P10."pos"()
  # rx pass
    rx81_cur."!cursor_pass"(rx81_pos, "prefixish")
    if_null rx81_debug, debug_141
    rx81_cur."!cursor_debug"("PASS", "prefixish", " at pos=", rx81_pos)
  debug_141:
    .return (rx81_cur)
  rx81_restart:
.annotate 'line', 3
    if_null rx81_debug, debug_142
    rx81_cur."!cursor_debug"("NEXT", "prefixish")
  debug_142:
  rx81_fail:
    (rx81_rep, rx81_pos, $I10, $P10) = rx81_cur."!mark_fail"(0)
    lt rx81_pos, -1, rx81_done
    eq rx81_pos, -1, rx81_fail
    jump $I10
  rx81_done:
    rx81_cur."!cursor_fail"()
    if_null rx81_debug, debug_143
    rx81_cur."!cursor_debug"("FAIL", "prefixish")
  debug_143:
    .return (rx81_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__prefixish"  :nsentry("!PREFIX__prefixish") :subid("33_1300090344.27537") :method
.annotate 'line', 3
    $P83 = self."!PREFIX__!subrule"("prefix", "")
    new $P84, "ResizablePMCArray"
    push $P84, $P83
    .return ($P84)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postfixish"  :subid("34_1300090344.27537") :method :outer("11_1300090344.27537")
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
    if_null rx87_debug, debug_144
    rx87_cur."!cursor_debug"("START", "postfixish")
  debug_144:
    $I10 = self.'from'()
    ne $I10, -1, rxscan92_done
    goto rxscan92_scan
  rxscan92_loop:
    (rx87_pos) = rx87_cur."from"()
    inc rx87_pos
    rx87_cur."!cursor_from"(rx87_pos)
    ge rx87_pos, rx87_eos, rxscan92_done
  rxscan92_scan:
    set_addr $I10, rxscan92_loop
    rx87_cur."!mark_push"(0, rx87_pos, $I10)
  rxscan92_done:
  alt93_0:
.annotate 'line', 22
    set_addr $I10, alt93_1
    rx87_cur."!mark_push"(0, rx87_pos, $I10)
.annotate 'line', 23
  # rx subrule "postfix" subtype=capture negate=
    rx87_cur."!cursor_pos"(rx87_pos)
    $P10 = rx87_cur."postfix"()
    unless $P10, rx87_fail
    rx87_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=postfix")
    rx87_pos = $P10."pos"()
    goto alt93_end
  alt93_1:
.annotate 'line', 24
  # rx subrule "postcircumfix" subtype=capture negate=
    rx87_cur."!cursor_pos"(rx87_pos)
    $P10 = rx87_cur."postcircumfix"()
    unless $P10, rx87_fail
    rx87_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=postcircumfix")
    rx87_pos = $P10."pos"()
  alt93_end:
.annotate 'line', 22
  # rx pass
    rx87_cur."!cursor_pass"(rx87_pos, "postfixish")
    if_null rx87_debug, debug_145
    rx87_cur."!cursor_debug"("PASS", "postfixish", " at pos=", rx87_pos)
  debug_145:
    .return (rx87_cur)
  rx87_restart:
.annotate 'line', 3
    if_null rx87_debug, debug_146
    rx87_cur."!cursor_debug"("NEXT", "postfixish")
  debug_146:
  rx87_fail:
    (rx87_rep, rx87_pos, $I10, $P10) = rx87_cur."!mark_fail"(0)
    lt rx87_pos, -1, rx87_done
    eq rx87_pos, -1, rx87_fail
    jump $I10
  rx87_done:
    rx87_cur."!cursor_fail"()
    if_null rx87_debug, debug_147
    rx87_cur."!cursor_debug"("FAIL", "postfixish")
  debug_147:
    .return (rx87_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postfixish"  :nsentry("!PREFIX__postfixish") :subid("35_1300090344.27537") :method
.annotate 'line', 3
    $P89 = self."!PREFIX__!subrule"("postcircumfix", "")
    $P90 = self."!PREFIX__!subrule"("postfix", "")
    new $P91, "ResizablePMCArray"
    push $P91, $P89
    push $P91, $P90
    .return ($P91)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "nullterm"  :subid("36_1300090344.27537") :method :outer("11_1300090344.27537")
.annotate 'line', 3
    .local string rx95_tgt
    .local int rx95_pos
    .local int rx95_off
    .local int rx95_eos
    .local int rx95_rep
    .local pmc rx95_cur
    .local pmc rx95_debug
    (rx95_cur, rx95_pos, rx95_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx95_cur
    .local pmc match
    .lex "$/", match
    length rx95_eos, rx95_tgt
    gt rx95_pos, rx95_eos, rx95_done
    set rx95_off, 0
    lt rx95_pos, 2, rx95_start
    sub rx95_off, rx95_pos, 1
    substr rx95_tgt, rx95_tgt, rx95_off
  rx95_start:
    eq $I10, 1, rx95_restart
    if_null rx95_debug, debug_148
    rx95_cur."!cursor_debug"("START", "nullterm")
  debug_148:
    $I10 = self.'from'()
    ne $I10, -1, rxscan98_done
    goto rxscan98_scan
  rxscan98_loop:
    (rx95_pos) = rx95_cur."from"()
    inc rx95_pos
    rx95_cur."!cursor_from"(rx95_pos)
    ge rx95_pos, rx95_eos, rxscan98_done
  rxscan98_scan:
    set_addr $I10, rxscan98_loop
    rx95_cur."!mark_push"(0, rx95_pos, $I10)
  rxscan98_done:
.annotate 'line', 27
  # rx pass
    rx95_cur."!cursor_pass"(rx95_pos, "nullterm")
    if_null rx95_debug, debug_149
    rx95_cur."!cursor_debug"("PASS", "nullterm", " at pos=", rx95_pos)
  debug_149:
    .return (rx95_cur)
  rx95_restart:
.annotate 'line', 3
    if_null rx95_debug, debug_150
    rx95_cur."!cursor_debug"("NEXT", "nullterm")
  debug_150:
  rx95_fail:
    (rx95_rep, rx95_pos, $I10, $P10) = rx95_cur."!mark_fail"(0)
    lt rx95_pos, -1, rx95_done
    eq rx95_pos, -1, rx95_fail
    jump $I10
  rx95_done:
    rx95_cur."!cursor_fail"()
    if_null rx95_debug, debug_151
    rx95_cur."!cursor_debug"("FAIL", "nullterm")
  debug_151:
    .return (rx95_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__nullterm"  :nsentry("!PREFIX__nullterm") :subid("37_1300090344.27537") :method
.annotate 'line', 3
    new $P97, "ResizablePMCArray"
    push $P97, ""
    .return ($P97)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "nullterm_alt"  :subid("38_1300090344.27537") :method :outer("11_1300090344.27537")
.annotate 'line', 3
    .local string rx100_tgt
    .local int rx100_pos
    .local int rx100_off
    .local int rx100_eos
    .local int rx100_rep
    .local pmc rx100_cur
    .local pmc rx100_debug
    (rx100_cur, rx100_pos, rx100_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx100_cur
    .local pmc match
    .lex "$/", match
    length rx100_eos, rx100_tgt
    gt rx100_pos, rx100_eos, rx100_done
    set rx100_off, 0
    lt rx100_pos, 2, rx100_start
    sub rx100_off, rx100_pos, 1
    substr rx100_tgt, rx100_tgt, rx100_off
  rx100_start:
    eq $I10, 1, rx100_restart
    if_null rx100_debug, debug_152
    rx100_cur."!cursor_debug"("START", "nullterm_alt")
  debug_152:
    $I10 = self.'from'()
    ne $I10, -1, rxscan104_done
    goto rxscan104_scan
  rxscan104_loop:
    (rx100_pos) = rx100_cur."from"()
    inc rx100_pos
    rx100_cur."!cursor_from"(rx100_pos)
    ge rx100_pos, rx100_eos, rxscan104_done
  rxscan104_scan:
    set_addr $I10, rxscan104_loop
    rx100_cur."!mark_push"(0, rx100_pos, $I10)
  rxscan104_done:
.annotate 'line', 28
  # rx subrule "nullterm" subtype=capture negate=
    rx100_cur."!cursor_pos"(rx100_pos)
    $P10 = rx100_cur."nullterm"()
    unless $P10, rx100_fail
    rx100_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("term")
    rx100_pos = $P10."pos"()
  # rx pass
    rx100_cur."!cursor_pass"(rx100_pos, "nullterm_alt")
    if_null rx100_debug, debug_153
    rx100_cur."!cursor_debug"("PASS", "nullterm_alt", " at pos=", rx100_pos)
  debug_153:
    .return (rx100_cur)
  rx100_restart:
.annotate 'line', 3
    if_null rx100_debug, debug_154
    rx100_cur."!cursor_debug"("NEXT", "nullterm_alt")
  debug_154:
  rx100_fail:
    (rx100_rep, rx100_pos, $I10, $P10) = rx100_cur."!mark_fail"(0)
    lt rx100_pos, -1, rx100_done
    eq rx100_pos, -1, rx100_fail
    jump $I10
  rx100_done:
    rx100_cur."!cursor_fail"()
    if_null rx100_debug, debug_155
    rx100_cur."!cursor_debug"("FAIL", "nullterm_alt")
  debug_155:
    .return (rx100_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__nullterm_alt"  :nsentry("!PREFIX__nullterm_alt") :subid("39_1300090344.27537") :method
.annotate 'line', 3
    $P102 = self."!PREFIX__!subrule"("nullterm", "")
    new $P103, "ResizablePMCArray"
    push $P103, $P102
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "nulltermish"  :subid("40_1300090344.27537") :outer("11_1300090344.27537")
    .param pmc param_106
.annotate 'line', 31
    .lex "self", param_106
    find_lex $P109, "self"
    $P110 = $P109."termish"()
    unless $P110, unless_108
    set $P107, $P110
    goto unless_108_end
  unless_108:
    find_lex $P111, "self"
    $P112 = $P111."nullterm_alt"()
    set $P107, $P112
  unless_108_end:
    .return ($P107)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_delimited"  :subid("41_1300090344.27537") :method :outer("11_1300090344.27537")
.annotate 'line', 31
    .local string rx114_tgt
    .local int rx114_pos
    .local int rx114_off
    .local int rx114_eos
    .local int rx114_rep
    .local pmc rx114_cur
    .local pmc rx114_debug
    (rx114_cur, rx114_pos, rx114_tgt, $I10) = self."!cursor_start"()
    rx114_cur."!cursor_caparray"("quote_atom")
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
    if_null rx114_debug, debug_156
    rx114_cur."!cursor_debug"("START", "quote_delimited")
  debug_156:
    $I10 = self.'from'()
    ne $I10, -1, rxscan118_done
    goto rxscan118_scan
  rxscan118_loop:
    (rx114_pos) = rx114_cur."from"()
    inc rx114_pos
    rx114_cur."!cursor_from"(rx114_pos)
    ge rx114_pos, rx114_eos, rxscan118_done
  rxscan118_scan:
    set_addr $I10, rxscan118_loop
    rx114_cur."!mark_push"(0, rx114_pos, $I10)
  rxscan118_done:
.annotate 'line', 35
  # rx subrule "starter" subtype=capture negate=
    rx114_cur."!cursor_pos"(rx114_pos)
    $P10 = rx114_cur."starter"()
    unless $P10, rx114_fail
    rx114_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("starter")
    rx114_pos = $P10."pos"()
  # rx rxquantr119 ** 0..*
    set_addr $I10, rxquantr119_done
    rx114_cur."!mark_push"(0, rx114_pos, $I10)
  rxquantr119_loop:
  # rx subrule "quote_atom" subtype=capture negate=
    rx114_cur."!cursor_pos"(rx114_pos)
    $P10 = rx114_cur."quote_atom"()
    unless $P10, rx114_fail
    goto rxsubrule120_pass
  rxsubrule120_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx114_fail
  rxsubrule120_pass:
    set_addr $I10, rxsubrule120_back
    rx114_cur."!mark_push"(0, rx114_pos, $I10, $P10)
    $P10."!cursor_names"("quote_atom")
    rx114_pos = $P10."pos"()
    set_addr $I10, rxquantr119_done
    (rx114_rep) = rx114_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr119_done
    rx114_cur."!mark_push"(rx114_rep, rx114_pos, $I10)
    goto rxquantr119_loop
  rxquantr119_done:
  # rx subrule "stopper" subtype=capture negate=
    rx114_cur."!cursor_pos"(rx114_pos)
    $P10 = rx114_cur."stopper"()
    unless $P10, rx114_fail
    rx114_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("stopper")
    rx114_pos = $P10."pos"()
.annotate 'line', 34
  # rx pass
    rx114_cur."!cursor_pass"(rx114_pos, "quote_delimited")
    if_null rx114_debug, debug_157
    rx114_cur."!cursor_debug"("PASS", "quote_delimited", " at pos=", rx114_pos)
  debug_157:
    .return (rx114_cur)
  rx114_restart:
.annotate 'line', 31
    if_null rx114_debug, debug_158
    rx114_cur."!cursor_debug"("NEXT", "quote_delimited")
  debug_158:
  rx114_fail:
    (rx114_rep, rx114_pos, $I10, $P10) = rx114_cur."!mark_fail"(0)
    lt rx114_pos, -1, rx114_done
    eq rx114_pos, -1, rx114_fail
    jump $I10
  rx114_done:
    rx114_cur."!cursor_fail"()
    if_null rx114_debug, debug_159
    rx114_cur."!cursor_debug"("FAIL", "quote_delimited")
  debug_159:
    .return (rx114_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_delimited"  :nsentry("!PREFIX__quote_delimited") :subid("42_1300090344.27537") :method
.annotate 'line', 31
    $P116 = self."!PREFIX__!subrule"("starter", "")
    new $P117, "ResizablePMCArray"
    push $P117, $P116
    .return ($P117)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_atom"  :subid("43_1300090344.27537") :method :outer("11_1300090344.27537")
.annotate 'line', 31
    .local string rx122_tgt
    .local int rx122_pos
    .local int rx122_off
    .local int rx122_eos
    .local int rx122_rep
    .local pmc rx122_cur
    .local pmc rx122_debug
    (rx122_cur, rx122_pos, rx122_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx122_cur
    .local pmc match
    .lex "$/", match
    length rx122_eos, rx122_tgt
    gt rx122_pos, rx122_eos, rx122_done
    set rx122_off, 0
    lt rx122_pos, 2, rx122_start
    sub rx122_off, rx122_pos, 1
    substr rx122_tgt, rx122_tgt, rx122_off
  rx122_start:
    eq $I10, 1, rx122_restart
    if_null rx122_debug, debug_160
    rx122_cur."!cursor_debug"("START", "quote_atom")
  debug_160:
    $I10 = self.'from'()
    ne $I10, -1, rxscan125_done
    goto rxscan125_scan
  rxscan125_loop:
    (rx122_pos) = rx122_cur."from"()
    inc rx122_pos
    rx122_cur."!cursor_from"(rx122_pos)
    ge rx122_pos, rx122_eos, rxscan125_done
  rxscan125_scan:
    set_addr $I10, rxscan125_loop
    rx122_cur."!mark_push"(0, rx122_pos, $I10)
  rxscan125_done:
.annotate 'line', 39
  # rx subrule "stopper" subtype=zerowidth negate=1
    rx122_cur."!cursor_pos"(rx122_pos)
    $P10 = rx122_cur."stopper"()
    if $P10, rx122_fail
  alt126_0:
.annotate 'line', 40
    set_addr $I10, alt126_1
    rx122_cur."!mark_push"(0, rx122_pos, $I10)
.annotate 'line', 41
  # rx subrule "quote_escape" subtype=capture negate=
    rx122_cur."!cursor_pos"(rx122_pos)
    $P10 = rx122_cur."quote_escape"()
    unless $P10, rx122_fail
    rx122_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_escape")
    rx122_pos = $P10."pos"()
    goto alt126_end
  alt126_1:
.annotate 'line', 42
  # rx rxquantr127 ** 1..*
    set_addr $I10, rxquantr127_done
    rx122_cur."!mark_push"(0, -1, $I10)
  rxquantr127_loop:
  # rx subrule "stopper" subtype=zerowidth negate=1
    rx122_cur."!cursor_pos"(rx122_pos)
    $P10 = rx122_cur."stopper"()
    if $P10, rx122_fail
  # rx subrule "quote_escape" subtype=zerowidth negate=1
    rx122_cur."!cursor_pos"(rx122_pos)
    $P10 = rx122_cur."quote_escape"()
    if $P10, rx122_fail
  # rx charclass .
    ge rx122_pos, rx122_eos, rx122_fail
    inc rx122_pos
    set_addr $I10, rxquantr127_done
    (rx122_rep) = rx122_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr127_done
    rx122_cur."!mark_push"(rx122_rep, rx122_pos, $I10)
    goto rxquantr127_loop
  rxquantr127_done:
  alt126_end:
.annotate 'line', 38
  # rx pass
    rx122_cur."!cursor_pass"(rx122_pos, "quote_atom")
    if_null rx122_debug, debug_161
    rx122_cur."!cursor_debug"("PASS", "quote_atom", " at pos=", rx122_pos)
  debug_161:
    .return (rx122_cur)
  rx122_restart:
.annotate 'line', 31
    if_null rx122_debug, debug_162
    rx122_cur."!cursor_debug"("NEXT", "quote_atom")
  debug_162:
  rx122_fail:
    (rx122_rep, rx122_pos, $I10, $P10) = rx122_cur."!mark_fail"(0)
    lt rx122_pos, -1, rx122_done
    eq rx122_pos, -1, rx122_fail
    jump $I10
  rx122_done:
    rx122_cur."!cursor_fail"()
    if_null rx122_debug, debug_163
    rx122_cur."!cursor_debug"("FAIL", "quote_atom")
  debug_163:
    .return (rx122_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_atom"  :nsentry("!PREFIX__quote_atom") :subid("44_1300090344.27537") :method
.annotate 'line', 31
    new $P124, "ResizablePMCArray"
    push $P124, ""
    .return ($P124)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "decint"  :subid("45_1300090344.27537") :method :outer("11_1300090344.27537")
.annotate 'line', 31
    .local string rx131_tgt
    .local int rx131_pos
    .local int rx131_off
    .local int rx131_eos
    .local int rx131_rep
    .local pmc rx131_cur
    .local pmc rx131_debug
    (rx131_cur, rx131_pos, rx131_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx131_cur
    .local pmc match
    .lex "$/", match
    length rx131_eos, rx131_tgt
    gt rx131_pos, rx131_eos, rx131_done
    set rx131_off, 0
    lt rx131_pos, 2, rx131_start
    sub rx131_off, rx131_pos, 1
    substr rx131_tgt, rx131_tgt, rx131_off
  rx131_start:
    eq $I10, 1, rx131_restart
    if_null rx131_debug, debug_164
    rx131_cur."!cursor_debug"("START", "decint")
  debug_164:
    $I10 = self.'from'()
    ne $I10, -1, rxscan134_done
    goto rxscan134_scan
  rxscan134_loop:
    (rx131_pos) = rx131_cur."from"()
    inc rx131_pos
    rx131_cur."!cursor_from"(rx131_pos)
    ge rx131_pos, rx131_eos, rxscan134_done
  rxscan134_scan:
    set_addr $I10, rxscan134_loop
    rx131_cur."!mark_push"(0, rx131_pos, $I10)
  rxscan134_done:
.annotate 'line', 46
  # rx rxquantr135 ** 1..*
    set_addr $I10, rxquantr135_done
    rx131_cur."!mark_push"(0, -1, $I10)
  rxquantr135_loop:
  # rx charclass_q d r 1..-1
    sub $I10, rx131_pos, rx131_off
    find_not_cclass $I11, 8, rx131_tgt, $I10, rx131_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx131_fail
    add rx131_pos, rx131_off, $I11
    set_addr $I10, rxquantr135_done
    (rx131_rep) = rx131_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr135_done
    rx131_cur."!mark_push"(rx131_rep, rx131_pos, $I10)
  # rx literal  "_"
    add $I11, rx131_pos, 1
    gt $I11, rx131_eos, rx131_fail
    sub $I11, rx131_pos, rx131_off
    ord $I11, rx131_tgt, $I11
    ne $I11, 95, rx131_fail
    add rx131_pos, 1
    goto rxquantr135_loop
  rxquantr135_done:
  # rx pass
    rx131_cur."!cursor_pass"(rx131_pos, "decint")
    if_null rx131_debug, debug_165
    rx131_cur."!cursor_debug"("PASS", "decint", " at pos=", rx131_pos)
  debug_165:
    .return (rx131_cur)
  rx131_restart:
.annotate 'line', 31
    if_null rx131_debug, debug_166
    rx131_cur."!cursor_debug"("NEXT", "decint")
  debug_166:
  rx131_fail:
    (rx131_rep, rx131_pos, $I10, $P10) = rx131_cur."!mark_fail"(0)
    lt rx131_pos, -1, rx131_done
    eq rx131_pos, -1, rx131_fail
    jump $I10
  rx131_done:
    rx131_cur."!cursor_fail"()
    if_null rx131_debug, debug_167
    rx131_cur."!cursor_debug"("FAIL", "decint")
  debug_167:
    .return (rx131_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__decint"  :nsentry("!PREFIX__decint") :subid("46_1300090344.27537") :method
.annotate 'line', 31
    new $P133, "ResizablePMCArray"
    push $P133, ""
    .return ($P133)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "decints"  :subid("47_1300090344.27537") :method :outer("11_1300090344.27537")
.annotate 'line', 31
    .local string rx137_tgt
    .local int rx137_pos
    .local int rx137_off
    .local int rx137_eos
    .local int rx137_rep
    .local pmc rx137_cur
    .local pmc rx137_debug
    (rx137_cur, rx137_pos, rx137_tgt, $I10) = self."!cursor_start"()
    rx137_cur."!cursor_caparray"("decint")
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
    if_null rx137_debug, debug_168
    rx137_cur."!cursor_debug"("START", "decints")
  debug_168:
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
.annotate 'line', 47
  # rx rxquantr141 ** 1..*
    set_addr $I10, rxquantr141_done
    rx137_cur."!mark_push"(0, -1, $I10)
  rxquantr141_loop:
  # rx subrule "ws" subtype=method negate=
    rx137_cur."!cursor_pos"(rx137_pos)
    $P10 = rx137_cur."ws"()
    unless $P10, rx137_fail
    rx137_pos = $P10."pos"()
  # rx subrule "decint" subtype=capture negate=
    rx137_cur."!cursor_pos"(rx137_pos)
    $P10 = rx137_cur."decint"()
    unless $P10, rx137_fail
    rx137_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("decint")
    rx137_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx137_cur."!cursor_pos"(rx137_pos)
    $P10 = rx137_cur."ws"()
    unless $P10, rx137_fail
    rx137_pos = $P10."pos"()
    set_addr $I10, rxquantr141_done
    (rx137_rep) = rx137_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr141_done
    rx137_cur."!mark_push"(rx137_rep, rx137_pos, $I10)
  # rx literal  ","
    add $I11, rx137_pos, 1
    gt $I11, rx137_eos, rx137_fail
    sub $I11, rx137_pos, rx137_off
    ord $I11, rx137_tgt, $I11
    ne $I11, 44, rx137_fail
    add rx137_pos, 1
    goto rxquantr141_loop
  rxquantr141_done:
  # rx pass
    rx137_cur."!cursor_pass"(rx137_pos, "decints")
    if_null rx137_debug, debug_169
    rx137_cur."!cursor_debug"("PASS", "decints", " at pos=", rx137_pos)
  debug_169:
    .return (rx137_cur)
  rx137_restart:
.annotate 'line', 31
    if_null rx137_debug, debug_170
    rx137_cur."!cursor_debug"("NEXT", "decints")
  debug_170:
  rx137_fail:
    (rx137_rep, rx137_pos, $I10, $P10) = rx137_cur."!mark_fail"(0)
    lt rx137_pos, -1, rx137_done
    eq rx137_pos, -1, rx137_fail
    jump $I10
  rx137_done:
    rx137_cur."!cursor_fail"()
    if_null rx137_debug, debug_171
    rx137_cur."!cursor_debug"("FAIL", "decints")
  debug_171:
    .return (rx137_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__decints"  :nsentry("!PREFIX__decints") :subid("48_1300090344.27537") :method
.annotate 'line', 31
    new $P139, "ResizablePMCArray"
    push $P139, ""
    .return ($P139)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "hexint"  :subid("49_1300090344.27537") :method :outer("11_1300090344.27537")
.annotate 'line', 31
    .local string rx143_tgt
    .local int rx143_pos
    .local int rx143_off
    .local int rx143_eos
    .local int rx143_rep
    .local pmc rx143_cur
    .local pmc rx143_debug
    (rx143_cur, rx143_pos, rx143_tgt, $I10) = self."!cursor_start"()
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
    if_null rx143_debug, debug_172
    rx143_cur."!cursor_debug"("START", "hexint")
  debug_172:
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
.annotate 'line', 49
  # rx rxquantr147 ** 1..*
    set_addr $I10, rxquantr147_done
    rx143_cur."!mark_push"(0, -1, $I10)
  rxquantr147_loop:
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx143_pos, rx143_off
    set rx143_rep, 0
    sub $I12, rx143_eos, rx143_pos
  rxenumcharlistq148_loop:
    le $I12, 0, rxenumcharlistq148_done
    substr $S10, rx143_tgt, $I10, 1
    index $I11, "0123456789abcdefABCDEF", $S10
    lt $I11, 0, rxenumcharlistq148_done
    inc rx143_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq148_loop
  rxenumcharlistq148_done:
    lt rx143_rep, 1, rx143_fail
    add rx143_pos, rx143_pos, rx143_rep
    set_addr $I10, rxquantr147_done
    (rx143_rep) = rx143_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr147_done
    rx143_cur."!mark_push"(rx143_rep, rx143_pos, $I10)
  # rx literal  "_"
    add $I11, rx143_pos, 1
    gt $I11, rx143_eos, rx143_fail
    sub $I11, rx143_pos, rx143_off
    ord $I11, rx143_tgt, $I11
    ne $I11, 95, rx143_fail
    add rx143_pos, 1
    goto rxquantr147_loop
  rxquantr147_done:
  # rx pass
    rx143_cur."!cursor_pass"(rx143_pos, "hexint")
    if_null rx143_debug, debug_173
    rx143_cur."!cursor_debug"("PASS", "hexint", " at pos=", rx143_pos)
  debug_173:
    .return (rx143_cur)
  rx143_restart:
.annotate 'line', 31
    if_null rx143_debug, debug_174
    rx143_cur."!cursor_debug"("NEXT", "hexint")
  debug_174:
  rx143_fail:
    (rx143_rep, rx143_pos, $I10, $P10) = rx143_cur."!mark_fail"(0)
    lt rx143_pos, -1, rx143_done
    eq rx143_pos, -1, rx143_fail
    jump $I10
  rx143_done:
    rx143_cur."!cursor_fail"()
    if_null rx143_debug, debug_175
    rx143_cur."!cursor_debug"("FAIL", "hexint")
  debug_175:
    .return (rx143_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__hexint"  :nsentry("!PREFIX__hexint") :subid("50_1300090344.27537") :method
.annotate 'line', 31
    new $P145, "ResizablePMCArray"
    push $P145, ""
    .return ($P145)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "hexints"  :subid("51_1300090344.27537") :method :outer("11_1300090344.27537")
.annotate 'line', 31
    .local string rx150_tgt
    .local int rx150_pos
    .local int rx150_off
    .local int rx150_eos
    .local int rx150_rep
    .local pmc rx150_cur
    .local pmc rx150_debug
    (rx150_cur, rx150_pos, rx150_tgt, $I10) = self."!cursor_start"()
    rx150_cur."!cursor_caparray"("hexint")
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
    if_null rx150_debug, debug_176
    rx150_cur."!cursor_debug"("START", "hexints")
  debug_176:
    $I10 = self.'from'()
    ne $I10, -1, rxscan153_done
    goto rxscan153_scan
  rxscan153_loop:
    (rx150_pos) = rx150_cur."from"()
    inc rx150_pos
    rx150_cur."!cursor_from"(rx150_pos)
    ge rx150_pos, rx150_eos, rxscan153_done
  rxscan153_scan:
    set_addr $I10, rxscan153_loop
    rx150_cur."!mark_push"(0, rx150_pos, $I10)
  rxscan153_done:
.annotate 'line', 50
  # rx rxquantr154 ** 1..*
    set_addr $I10, rxquantr154_done
    rx150_cur."!mark_push"(0, -1, $I10)
  rxquantr154_loop:
  # rx subrule "ws" subtype=method negate=
    rx150_cur."!cursor_pos"(rx150_pos)
    $P10 = rx150_cur."ws"()
    unless $P10, rx150_fail
    rx150_pos = $P10."pos"()
  # rx subrule "hexint" subtype=capture negate=
    rx150_cur."!cursor_pos"(rx150_pos)
    $P10 = rx150_cur."hexint"()
    unless $P10, rx150_fail
    rx150_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexint")
    rx150_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx150_cur."!cursor_pos"(rx150_pos)
    $P10 = rx150_cur."ws"()
    unless $P10, rx150_fail
    rx150_pos = $P10."pos"()
    set_addr $I10, rxquantr154_done
    (rx150_rep) = rx150_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr154_done
    rx150_cur."!mark_push"(rx150_rep, rx150_pos, $I10)
  # rx literal  ","
    add $I11, rx150_pos, 1
    gt $I11, rx150_eos, rx150_fail
    sub $I11, rx150_pos, rx150_off
    ord $I11, rx150_tgt, $I11
    ne $I11, 44, rx150_fail
    add rx150_pos, 1
    goto rxquantr154_loop
  rxquantr154_done:
  # rx pass
    rx150_cur."!cursor_pass"(rx150_pos, "hexints")
    if_null rx150_debug, debug_177
    rx150_cur."!cursor_debug"("PASS", "hexints", " at pos=", rx150_pos)
  debug_177:
    .return (rx150_cur)
  rx150_restart:
.annotate 'line', 31
    if_null rx150_debug, debug_178
    rx150_cur."!cursor_debug"("NEXT", "hexints")
  debug_178:
  rx150_fail:
    (rx150_rep, rx150_pos, $I10, $P10) = rx150_cur."!mark_fail"(0)
    lt rx150_pos, -1, rx150_done
    eq rx150_pos, -1, rx150_fail
    jump $I10
  rx150_done:
    rx150_cur."!cursor_fail"()
    if_null rx150_debug, debug_179
    rx150_cur."!cursor_debug"("FAIL", "hexints")
  debug_179:
    .return (rx150_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__hexints"  :nsentry("!PREFIX__hexints") :subid("52_1300090344.27537") :method
.annotate 'line', 31
    new $P152, "ResizablePMCArray"
    push $P152, ""
    .return ($P152)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "octint"  :subid("53_1300090344.27537") :method :outer("11_1300090344.27537")
.annotate 'line', 31
    .local string rx156_tgt
    .local int rx156_pos
    .local int rx156_off
    .local int rx156_eos
    .local int rx156_rep
    .local pmc rx156_cur
    .local pmc rx156_debug
    (rx156_cur, rx156_pos, rx156_tgt, $I10) = self."!cursor_start"()
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
    if_null rx156_debug, debug_180
    rx156_cur."!cursor_debug"("START", "octint")
  debug_180:
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
.annotate 'line', 52
  # rx rxquantr160 ** 1..*
    set_addr $I10, rxquantr160_done
    rx156_cur."!mark_push"(0, -1, $I10)
  rxquantr160_loop:
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx156_pos, rx156_off
    set rx156_rep, 0
    sub $I12, rx156_eos, rx156_pos
  rxenumcharlistq161_loop:
    le $I12, 0, rxenumcharlistq161_done
    substr $S10, rx156_tgt, $I10, 1
    index $I11, "01234567", $S10
    lt $I11, 0, rxenumcharlistq161_done
    inc rx156_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq161_loop
  rxenumcharlistq161_done:
    lt rx156_rep, 1, rx156_fail
    add rx156_pos, rx156_pos, rx156_rep
    set_addr $I10, rxquantr160_done
    (rx156_rep) = rx156_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr160_done
    rx156_cur."!mark_push"(rx156_rep, rx156_pos, $I10)
  # rx literal  "_"
    add $I11, rx156_pos, 1
    gt $I11, rx156_eos, rx156_fail
    sub $I11, rx156_pos, rx156_off
    ord $I11, rx156_tgt, $I11
    ne $I11, 95, rx156_fail
    add rx156_pos, 1
    goto rxquantr160_loop
  rxquantr160_done:
  # rx pass
    rx156_cur."!cursor_pass"(rx156_pos, "octint")
    if_null rx156_debug, debug_181
    rx156_cur."!cursor_debug"("PASS", "octint", " at pos=", rx156_pos)
  debug_181:
    .return (rx156_cur)
  rx156_restart:
.annotate 'line', 31
    if_null rx156_debug, debug_182
    rx156_cur."!cursor_debug"("NEXT", "octint")
  debug_182:
  rx156_fail:
    (rx156_rep, rx156_pos, $I10, $P10) = rx156_cur."!mark_fail"(0)
    lt rx156_pos, -1, rx156_done
    eq rx156_pos, -1, rx156_fail
    jump $I10
  rx156_done:
    rx156_cur."!cursor_fail"()
    if_null rx156_debug, debug_183
    rx156_cur."!cursor_debug"("FAIL", "octint")
  debug_183:
    .return (rx156_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__octint"  :nsentry("!PREFIX__octint") :subid("54_1300090344.27537") :method
.annotate 'line', 31
    new $P158, "ResizablePMCArray"
    push $P158, ""
    .return ($P158)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "octints"  :subid("55_1300090344.27537") :method :outer("11_1300090344.27537")
.annotate 'line', 31
    .local string rx163_tgt
    .local int rx163_pos
    .local int rx163_off
    .local int rx163_eos
    .local int rx163_rep
    .local pmc rx163_cur
    .local pmc rx163_debug
    (rx163_cur, rx163_pos, rx163_tgt, $I10) = self."!cursor_start"()
    rx163_cur."!cursor_caparray"("octint")
    .lex unicode:"$\x{a2}", rx163_cur
    .local pmc match
    .lex "$/", match
    length rx163_eos, rx163_tgt
    gt rx163_pos, rx163_eos, rx163_done
    set rx163_off, 0
    lt rx163_pos, 2, rx163_start
    sub rx163_off, rx163_pos, 1
    substr rx163_tgt, rx163_tgt, rx163_off
  rx163_start:
    eq $I10, 1, rx163_restart
    if_null rx163_debug, debug_184
    rx163_cur."!cursor_debug"("START", "octints")
  debug_184:
    $I10 = self.'from'()
    ne $I10, -1, rxscan166_done
    goto rxscan166_scan
  rxscan166_loop:
    (rx163_pos) = rx163_cur."from"()
    inc rx163_pos
    rx163_cur."!cursor_from"(rx163_pos)
    ge rx163_pos, rx163_eos, rxscan166_done
  rxscan166_scan:
    set_addr $I10, rxscan166_loop
    rx163_cur."!mark_push"(0, rx163_pos, $I10)
  rxscan166_done:
.annotate 'line', 53
  # rx rxquantr167 ** 1..*
    set_addr $I10, rxquantr167_done
    rx163_cur."!mark_push"(0, -1, $I10)
  rxquantr167_loop:
  # rx subrule "ws" subtype=method negate=
    rx163_cur."!cursor_pos"(rx163_pos)
    $P10 = rx163_cur."ws"()
    unless $P10, rx163_fail
    rx163_pos = $P10."pos"()
  # rx subrule "octint" subtype=capture negate=
    rx163_cur."!cursor_pos"(rx163_pos)
    $P10 = rx163_cur."octint"()
    unless $P10, rx163_fail
    rx163_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octint")
    rx163_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx163_cur."!cursor_pos"(rx163_pos)
    $P10 = rx163_cur."ws"()
    unless $P10, rx163_fail
    rx163_pos = $P10."pos"()
    set_addr $I10, rxquantr167_done
    (rx163_rep) = rx163_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr167_done
    rx163_cur."!mark_push"(rx163_rep, rx163_pos, $I10)
  # rx literal  ","
    add $I11, rx163_pos, 1
    gt $I11, rx163_eos, rx163_fail
    sub $I11, rx163_pos, rx163_off
    ord $I11, rx163_tgt, $I11
    ne $I11, 44, rx163_fail
    add rx163_pos, 1
    goto rxquantr167_loop
  rxquantr167_done:
  # rx pass
    rx163_cur."!cursor_pass"(rx163_pos, "octints")
    if_null rx163_debug, debug_185
    rx163_cur."!cursor_debug"("PASS", "octints", " at pos=", rx163_pos)
  debug_185:
    .return (rx163_cur)
  rx163_restart:
.annotate 'line', 31
    if_null rx163_debug, debug_186
    rx163_cur."!cursor_debug"("NEXT", "octints")
  debug_186:
  rx163_fail:
    (rx163_rep, rx163_pos, $I10, $P10) = rx163_cur."!mark_fail"(0)
    lt rx163_pos, -1, rx163_done
    eq rx163_pos, -1, rx163_fail
    jump $I10
  rx163_done:
    rx163_cur."!cursor_fail"()
    if_null rx163_debug, debug_187
    rx163_cur."!cursor_debug"("FAIL", "octints")
  debug_187:
    .return (rx163_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__octints"  :nsentry("!PREFIX__octints") :subid("56_1300090344.27537") :method
.annotate 'line', 31
    new $P165, "ResizablePMCArray"
    push $P165, ""
    .return ($P165)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "binint"  :subid("57_1300090344.27537") :method :outer("11_1300090344.27537")
.annotate 'line', 31
    .local string rx169_tgt
    .local int rx169_pos
    .local int rx169_off
    .local int rx169_eos
    .local int rx169_rep
    .local pmc rx169_cur
    .local pmc rx169_debug
    (rx169_cur, rx169_pos, rx169_tgt, $I10) = self."!cursor_start"()
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
    if_null rx169_debug, debug_188
    rx169_cur."!cursor_debug"("START", "binint")
  debug_188:
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
.annotate 'line', 55
  # rx rxquantr173 ** 1..*
    set_addr $I10, rxquantr173_done
    rx169_cur."!mark_push"(0, -1, $I10)
  rxquantr173_loop:
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx169_pos, rx169_off
    set rx169_rep, 0
    sub $I12, rx169_eos, rx169_pos
  rxenumcharlistq174_loop:
    le $I12, 0, rxenumcharlistq174_done
    substr $S10, rx169_tgt, $I10, 1
    index $I11, "01", $S10
    lt $I11, 0, rxenumcharlistq174_done
    inc rx169_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq174_loop
  rxenumcharlistq174_done:
    lt rx169_rep, 1, rx169_fail
    add rx169_pos, rx169_pos, rx169_rep
    set_addr $I10, rxquantr173_done
    (rx169_rep) = rx169_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr173_done
    rx169_cur."!mark_push"(rx169_rep, rx169_pos, $I10)
  # rx literal  "_"
    add $I11, rx169_pos, 1
    gt $I11, rx169_eos, rx169_fail
    sub $I11, rx169_pos, rx169_off
    ord $I11, rx169_tgt, $I11
    ne $I11, 95, rx169_fail
    add rx169_pos, 1
    goto rxquantr173_loop
  rxquantr173_done:
  # rx pass
    rx169_cur."!cursor_pass"(rx169_pos, "binint")
    if_null rx169_debug, debug_189
    rx169_cur."!cursor_debug"("PASS", "binint", " at pos=", rx169_pos)
  debug_189:
    .return (rx169_cur)
  rx169_restart:
.annotate 'line', 31
    if_null rx169_debug, debug_190
    rx169_cur."!cursor_debug"("NEXT", "binint")
  debug_190:
  rx169_fail:
    (rx169_rep, rx169_pos, $I10, $P10) = rx169_cur."!mark_fail"(0)
    lt rx169_pos, -1, rx169_done
    eq rx169_pos, -1, rx169_fail
    jump $I10
  rx169_done:
    rx169_cur."!cursor_fail"()
    if_null rx169_debug, debug_191
    rx169_cur."!cursor_debug"("FAIL", "binint")
  debug_191:
    .return (rx169_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__binint"  :nsentry("!PREFIX__binint") :subid("58_1300090344.27537") :method
.annotate 'line', 31
    new $P171, "ResizablePMCArray"
    push $P171, ""
    .return ($P171)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "binints"  :subid("59_1300090344.27537") :method :outer("11_1300090344.27537")
.annotate 'line', 31
    .local string rx176_tgt
    .local int rx176_pos
    .local int rx176_off
    .local int rx176_eos
    .local int rx176_rep
    .local pmc rx176_cur
    .local pmc rx176_debug
    (rx176_cur, rx176_pos, rx176_tgt, $I10) = self."!cursor_start"()
    rx176_cur."!cursor_caparray"("binint")
    .lex unicode:"$\x{a2}", rx176_cur
    .local pmc match
    .lex "$/", match
    length rx176_eos, rx176_tgt
    gt rx176_pos, rx176_eos, rx176_done
    set rx176_off, 0
    lt rx176_pos, 2, rx176_start
    sub rx176_off, rx176_pos, 1
    substr rx176_tgt, rx176_tgt, rx176_off
  rx176_start:
    eq $I10, 1, rx176_restart
    if_null rx176_debug, debug_192
    rx176_cur."!cursor_debug"("START", "binints")
  debug_192:
    $I10 = self.'from'()
    ne $I10, -1, rxscan179_done
    goto rxscan179_scan
  rxscan179_loop:
    (rx176_pos) = rx176_cur."from"()
    inc rx176_pos
    rx176_cur."!cursor_from"(rx176_pos)
    ge rx176_pos, rx176_eos, rxscan179_done
  rxscan179_scan:
    set_addr $I10, rxscan179_loop
    rx176_cur."!mark_push"(0, rx176_pos, $I10)
  rxscan179_done:
.annotate 'line', 56
  # rx rxquantr180 ** 1..*
    set_addr $I10, rxquantr180_done
    rx176_cur."!mark_push"(0, -1, $I10)
  rxquantr180_loop:
  # rx subrule "ws" subtype=method negate=
    rx176_cur."!cursor_pos"(rx176_pos)
    $P10 = rx176_cur."ws"()
    unless $P10, rx176_fail
    rx176_pos = $P10."pos"()
  # rx subrule "binint" subtype=capture negate=
    rx176_cur."!cursor_pos"(rx176_pos)
    $P10 = rx176_cur."binint"()
    unless $P10, rx176_fail
    rx176_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("binint")
    rx176_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx176_cur."!cursor_pos"(rx176_pos)
    $P10 = rx176_cur."ws"()
    unless $P10, rx176_fail
    rx176_pos = $P10."pos"()
    set_addr $I10, rxquantr180_done
    (rx176_rep) = rx176_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr180_done
    rx176_cur."!mark_push"(rx176_rep, rx176_pos, $I10)
  # rx literal  ","
    add $I11, rx176_pos, 1
    gt $I11, rx176_eos, rx176_fail
    sub $I11, rx176_pos, rx176_off
    ord $I11, rx176_tgt, $I11
    ne $I11, 44, rx176_fail
    add rx176_pos, 1
    goto rxquantr180_loop
  rxquantr180_done:
  # rx pass
    rx176_cur."!cursor_pass"(rx176_pos, "binints")
    if_null rx176_debug, debug_193
    rx176_cur."!cursor_debug"("PASS", "binints", " at pos=", rx176_pos)
  debug_193:
    .return (rx176_cur)
  rx176_restart:
.annotate 'line', 31
    if_null rx176_debug, debug_194
    rx176_cur."!cursor_debug"("NEXT", "binints")
  debug_194:
  rx176_fail:
    (rx176_rep, rx176_pos, $I10, $P10) = rx176_cur."!mark_fail"(0)
    lt rx176_pos, -1, rx176_done
    eq rx176_pos, -1, rx176_fail
    jump $I10
  rx176_done:
    rx176_cur."!cursor_fail"()
    if_null rx176_debug, debug_195
    rx176_cur."!cursor_debug"("FAIL", "binints")
  debug_195:
    .return (rx176_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__binints"  :nsentry("!PREFIX__binints") :subid("60_1300090344.27537") :method
.annotate 'line', 31
    new $P178, "ResizablePMCArray"
    push $P178, ""
    .return ($P178)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "integer"  :subid("61_1300090344.27537") :method :outer("11_1300090344.27537")
.annotate 'line', 31
    .local string rx182_tgt
    .local int rx182_pos
    .local int rx182_off
    .local int rx182_eos
    .local int rx182_rep
    .local pmc rx182_cur
    .local pmc rx182_debug
    (rx182_cur, rx182_pos, rx182_tgt, $I10) = self."!cursor_start"()
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
    if_null rx182_debug, debug_196
    rx182_cur."!cursor_debug"("START", "integer")
  debug_196:
    $I10 = self.'from'()
    ne $I10, -1, rxscan190_done
    goto rxscan190_scan
  rxscan190_loop:
    (rx182_pos) = rx182_cur."from"()
    inc rx182_pos
    rx182_cur."!cursor_from"(rx182_pos)
    ge rx182_pos, rx182_eos, rxscan190_done
  rxscan190_scan:
    set_addr $I10, rxscan190_loop
    rx182_cur."!mark_push"(0, rx182_pos, $I10)
  rxscan190_done:
  alt191_0:
.annotate 'line', 59
    set_addr $I10, alt191_1
    rx182_cur."!mark_push"(0, rx182_pos, $I10)
.annotate 'line', 60
  # rx literal  "0"
    add $I11, rx182_pos, 1
    gt $I11, rx182_eos, rx182_fail
    sub $I11, rx182_pos, rx182_off
    ord $I11, rx182_tgt, $I11
    ne $I11, 48, rx182_fail
    add rx182_pos, 1
  alt192_0:
    set_addr $I10, alt192_1
    rx182_cur."!mark_push"(0, rx182_pos, $I10)
  # rx literal  "b"
    add $I11, rx182_pos, 1
    gt $I11, rx182_eos, rx182_fail
    sub $I11, rx182_pos, rx182_off
    ord $I11, rx182_tgt, $I11
    ne $I11, 98, rx182_fail
    add rx182_pos, 1
  # rx subrule "binint" subtype=capture negate=
    rx182_cur."!cursor_pos"(rx182_pos)
    $P10 = rx182_cur."binint"()
    unless $P10, rx182_fail
    rx182_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=binint")
    rx182_pos = $P10."pos"()
    goto alt192_end
  alt192_1:
    set_addr $I10, alt192_2
    rx182_cur."!mark_push"(0, rx182_pos, $I10)
.annotate 'line', 61
  # rx literal  "o"
    add $I11, rx182_pos, 1
    gt $I11, rx182_eos, rx182_fail
    sub $I11, rx182_pos, rx182_off
    ord $I11, rx182_tgt, $I11
    ne $I11, 111, rx182_fail
    add rx182_pos, 1
  # rx subrule "octint" subtype=capture negate=
    rx182_cur."!cursor_pos"(rx182_pos)
    $P10 = rx182_cur."octint"()
    unless $P10, rx182_fail
    rx182_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=octint")
    rx182_pos = $P10."pos"()
    goto alt192_end
  alt192_2:
    set_addr $I10, alt192_3
    rx182_cur."!mark_push"(0, rx182_pos, $I10)
.annotate 'line', 62
  # rx literal  "x"
    add $I11, rx182_pos, 1
    gt $I11, rx182_eos, rx182_fail
    sub $I11, rx182_pos, rx182_off
    ord $I11, rx182_tgt, $I11
    ne $I11, 120, rx182_fail
    add rx182_pos, 1
  # rx subrule "hexint" subtype=capture negate=
    rx182_cur."!cursor_pos"(rx182_pos)
    $P10 = rx182_cur."hexint"()
    unless $P10, rx182_fail
    rx182_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=hexint")
    rx182_pos = $P10."pos"()
    goto alt192_end
  alt192_3:
.annotate 'line', 63
  # rx literal  "d"
    add $I11, rx182_pos, 1
    gt $I11, rx182_eos, rx182_fail
    sub $I11, rx182_pos, rx182_off
    ord $I11, rx182_tgt, $I11
    ne $I11, 100, rx182_fail
    add rx182_pos, 1
  # rx subrule "decint" subtype=capture negate=
    rx182_cur."!cursor_pos"(rx182_pos)
    $P10 = rx182_cur."decint"()
    unless $P10, rx182_fail
    rx182_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=decint")
    rx182_pos = $P10."pos"()
  alt192_end:
.annotate 'line', 60
    goto alt191_end
  alt191_1:
.annotate 'line', 65
  # rx subrule "decint" subtype=capture negate=
    rx182_cur."!cursor_pos"(rx182_pos)
    $P10 = rx182_cur."decint"()
    unless $P10, rx182_fail
    rx182_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=decint")
    rx182_pos = $P10."pos"()
  alt191_end:
.annotate 'line', 58
  # rx pass
    rx182_cur."!cursor_pass"(rx182_pos, "integer")
    if_null rx182_debug, debug_197
    rx182_cur."!cursor_debug"("PASS", "integer", " at pos=", rx182_pos)
  debug_197:
    .return (rx182_cur)
  rx182_restart:
.annotate 'line', 31
    if_null rx182_debug, debug_198
    rx182_cur."!cursor_debug"("NEXT", "integer")
  debug_198:
  rx182_fail:
    (rx182_rep, rx182_pos, $I10, $P10) = rx182_cur."!mark_fail"(0)
    lt rx182_pos, -1, rx182_done
    eq rx182_pos, -1, rx182_fail
    jump $I10
  rx182_done:
    rx182_cur."!cursor_fail"()
    if_null rx182_debug, debug_199
    rx182_cur."!cursor_debug"("FAIL", "integer")
  debug_199:
    .return (rx182_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__integer"  :nsentry("!PREFIX__integer") :subid("62_1300090344.27537") :method
.annotate 'line', 31
    $P184 = self."!PREFIX__!subrule"("decint", "")
    $P185 = self."!PREFIX__!subrule"("decint", "0d")
    $P186 = self."!PREFIX__!subrule"("hexint", "0x")
    $P187 = self."!PREFIX__!subrule"("octint", "0o")
    $P188 = self."!PREFIX__!subrule"("binint", "0b")
    new $P189, "ResizablePMCArray"
    push $P189, $P184
    push $P189, $P185
    push $P189, $P186
    push $P189, $P187
    push $P189, $P188
    .return ($P189)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "dec_number"  :subid("63_1300090344.27537") :method :outer("11_1300090344.27537")
.annotate 'line', 31
    .local string rx194_tgt
    .local int rx194_pos
    .local int rx194_off
    .local int rx194_eos
    .local int rx194_rep
    .local pmc rx194_cur
    .local pmc rx194_debug
    (rx194_cur, rx194_pos, rx194_tgt, $I10) = self."!cursor_start"()
    rx194_cur."!cursor_caparray"("escale")
    .lex unicode:"$\x{a2}", rx194_cur
    .local pmc match
    .lex "$/", match
    length rx194_eos, rx194_tgt
    gt rx194_pos, rx194_eos, rx194_done
    set rx194_off, 0
    lt rx194_pos, 2, rx194_start
    sub rx194_off, rx194_pos, 1
    substr rx194_tgt, rx194_tgt, rx194_off
  rx194_start:
    eq $I10, 1, rx194_restart
    if_null rx194_debug, debug_200
    rx194_cur."!cursor_debug"("START", "dec_number")
  debug_200:
    $I10 = self.'from'()
    ne $I10, -1, rxscan197_done
    goto rxscan197_scan
  rxscan197_loop:
    (rx194_pos) = rx194_cur."from"()
    inc rx194_pos
    rx194_cur."!cursor_from"(rx194_pos)
    ge rx194_pos, rx194_eos, rxscan197_done
  rxscan197_scan:
    set_addr $I10, rxscan197_loop
    rx194_cur."!mark_push"(0, rx194_pos, $I10)
  rxscan197_done:
  alt198_0:
.annotate 'line', 69
    set_addr $I10, alt198_1
    rx194_cur."!mark_push"(0, rx194_pos, $I10)
.annotate 'line', 70
  # rx subcapture "coeff"
    set_addr $I10, rxcap_199_fail
    rx194_cur."!mark_push"(0, rx194_pos, $I10)
  # rx literal  "."
    add $I11, rx194_pos, 1
    gt $I11, rx194_eos, rx194_fail
    sub $I11, rx194_pos, rx194_off
    ord $I11, rx194_tgt, $I11
    ne $I11, 46, rx194_fail
    add rx194_pos, 1
  # rx charclass_q d r 1..-1
    sub $I10, rx194_pos, rx194_off
    find_not_cclass $I11, 8, rx194_tgt, $I10, rx194_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx194_fail
    add rx194_pos, rx194_off, $I11
    set_addr $I10, rxcap_199_fail
    ($I12, $I11) = rx194_cur."!mark_peek"($I10)
    rx194_cur."!cursor_pos"($I11)
    ($P10) = rx194_cur."!cursor_start"()
    $P10."!cursor_pass"(rx194_pos, "")
    rx194_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("coeff")
    goto rxcap_199_done
  rxcap_199_fail:
    goto rx194_fail
  rxcap_199_done:
  # rx rxquantr200 ** 0..1
    set_addr $I10, rxquantr200_done
    rx194_cur."!mark_push"(0, rx194_pos, $I10)
  rxquantr200_loop:
  # rx subrule "escale" subtype=capture negate=
    rx194_cur."!cursor_pos"(rx194_pos)
    $P10 = rx194_cur."escale"()
    unless $P10, rx194_fail
    goto rxsubrule201_pass
  rxsubrule201_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx194_fail
  rxsubrule201_pass:
    set_addr $I10, rxsubrule201_back
    rx194_cur."!mark_push"(0, rx194_pos, $I10, $P10)
    $P10."!cursor_names"("escale")
    rx194_pos = $P10."pos"()
    set_addr $I10, rxquantr200_done
    (rx194_rep) = rx194_cur."!mark_commit"($I10)
  rxquantr200_done:
    goto alt198_end
  alt198_1:
    set_addr $I10, alt198_2
    rx194_cur."!mark_push"(0, rx194_pos, $I10)
.annotate 'line', 71
  # rx subcapture "coeff"
    set_addr $I10, rxcap_202_fail
    rx194_cur."!mark_push"(0, rx194_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx194_pos, rx194_off
    find_not_cclass $I11, 8, rx194_tgt, $I10, rx194_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx194_fail
    add rx194_pos, rx194_off, $I11
  # rx literal  "."
    add $I11, rx194_pos, 1
    gt $I11, rx194_eos, rx194_fail
    sub $I11, rx194_pos, rx194_off
    ord $I11, rx194_tgt, $I11
    ne $I11, 46, rx194_fail
    add rx194_pos, 1
  # rx charclass_q d r 1..-1
    sub $I10, rx194_pos, rx194_off
    find_not_cclass $I11, 8, rx194_tgt, $I10, rx194_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx194_fail
    add rx194_pos, rx194_off, $I11
    set_addr $I10, rxcap_202_fail
    ($I12, $I11) = rx194_cur."!mark_peek"($I10)
    rx194_cur."!cursor_pos"($I11)
    ($P10) = rx194_cur."!cursor_start"()
    $P10."!cursor_pass"(rx194_pos, "")
    rx194_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("coeff")
    goto rxcap_202_done
  rxcap_202_fail:
    goto rx194_fail
  rxcap_202_done:
  # rx rxquantr203 ** 0..1
    set_addr $I10, rxquantr203_done
    rx194_cur."!mark_push"(0, rx194_pos, $I10)
  rxquantr203_loop:
  # rx subrule "escale" subtype=capture negate=
    rx194_cur."!cursor_pos"(rx194_pos)
    $P10 = rx194_cur."escale"()
    unless $P10, rx194_fail
    goto rxsubrule204_pass
  rxsubrule204_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx194_fail
  rxsubrule204_pass:
    set_addr $I10, rxsubrule204_back
    rx194_cur."!mark_push"(0, rx194_pos, $I10, $P10)
    $P10."!cursor_names"("escale")
    rx194_pos = $P10."pos"()
    set_addr $I10, rxquantr203_done
    (rx194_rep) = rx194_cur."!mark_commit"($I10)
  rxquantr203_done:
    goto alt198_end
  alt198_2:
.annotate 'line', 72
  # rx subcapture "coeff"
    set_addr $I10, rxcap_205_fail
    rx194_cur."!mark_push"(0, rx194_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx194_pos, rx194_off
    find_not_cclass $I11, 8, rx194_tgt, $I10, rx194_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx194_fail
    add rx194_pos, rx194_off, $I11
    set_addr $I10, rxcap_205_fail
    ($I12, $I11) = rx194_cur."!mark_peek"($I10)
    rx194_cur."!cursor_pos"($I11)
    ($P10) = rx194_cur."!cursor_start"()
    $P10."!cursor_pass"(rx194_pos, "")
    rx194_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("coeff")
    goto rxcap_205_done
  rxcap_205_fail:
    goto rx194_fail
  rxcap_205_done:
  # rx subrule "escale" subtype=capture negate=
    rx194_cur."!cursor_pos"(rx194_pos)
    $P10 = rx194_cur."escale"()
    unless $P10, rx194_fail
    rx194_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("escale")
    rx194_pos = $P10."pos"()
  alt198_end:
.annotate 'line', 69
  # rx pass
    rx194_cur."!cursor_pass"(rx194_pos, "dec_number")
    if_null rx194_debug, debug_201
    rx194_cur."!cursor_debug"("PASS", "dec_number", " at pos=", rx194_pos)
  debug_201:
    .return (rx194_cur)
  rx194_restart:
.annotate 'line', 31
    if_null rx194_debug, debug_202
    rx194_cur."!cursor_debug"("NEXT", "dec_number")
  debug_202:
  rx194_fail:
    (rx194_rep, rx194_pos, $I10, $P10) = rx194_cur."!mark_fail"(0)
    lt rx194_pos, -1, rx194_done
    eq rx194_pos, -1, rx194_fail
    jump $I10
  rx194_done:
    rx194_cur."!cursor_fail"()
    if_null rx194_debug, debug_203
    rx194_cur."!cursor_debug"("FAIL", "dec_number")
  debug_203:
    .return (rx194_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__dec_number"  :nsentry("!PREFIX__dec_number") :subid("64_1300090344.27537") :method
.annotate 'line', 31
    new $P196, "ResizablePMCArray"
    push $P196, ""
    push $P196, ""
    push $P196, "."
    .return ($P196)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "escale"  :subid("65_1300090344.27537") :method :outer("11_1300090344.27537")
.annotate 'line', 31
    .local string rx207_tgt
    .local int rx207_pos
    .local int rx207_off
    .local int rx207_eos
    .local int rx207_rep
    .local pmc rx207_cur
    .local pmc rx207_debug
    (rx207_cur, rx207_pos, rx207_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx207_cur
    .local pmc match
    .lex "$/", match
    length rx207_eos, rx207_tgt
    gt rx207_pos, rx207_eos, rx207_done
    set rx207_off, 0
    lt rx207_pos, 2, rx207_start
    sub rx207_off, rx207_pos, 1
    substr rx207_tgt, rx207_tgt, rx207_off
  rx207_start:
    eq $I10, 1, rx207_restart
    if_null rx207_debug, debug_204
    rx207_cur."!cursor_debug"("START", "escale")
  debug_204:
    $I10 = self.'from'()
    ne $I10, -1, rxscan210_done
    goto rxscan210_scan
  rxscan210_loop:
    (rx207_pos) = rx207_cur."from"()
    inc rx207_pos
    rx207_cur."!cursor_from"(rx207_pos)
    ge rx207_pos, rx207_eos, rxscan210_done
  rxscan210_scan:
    set_addr $I10, rxscan210_loop
    rx207_cur."!mark_push"(0, rx207_pos, $I10)
  rxscan210_done:
.annotate 'line', 75
  # rx enumcharlist negate=0 
    ge rx207_pos, rx207_eos, rx207_fail
    sub $I10, rx207_pos, rx207_off
    substr $S10, rx207_tgt, $I10, 1
    index $I11, "Ee", $S10
    lt $I11, 0, rx207_fail
    inc rx207_pos
  # rx enumcharlist_q negate=0  r 0..1
    sub $I10, rx207_pos, rx207_off
    set rx207_rep, 0
    sub $I12, rx207_eos, rx207_pos
    le $I12, 1, rxenumcharlistq211_loop
    set $I12, 1
  rxenumcharlistq211_loop:
    le $I12, 0, rxenumcharlistq211_done
    substr $S10, rx207_tgt, $I10, 1
    index $I11, "+-", $S10
    lt $I11, 0, rxenumcharlistq211_done
    inc rx207_rep
  rxenumcharlistq211_done:
    add rx207_pos, rx207_pos, rx207_rep
  # rx charclass_q d r 1..-1
    sub $I10, rx207_pos, rx207_off
    find_not_cclass $I11, 8, rx207_tgt, $I10, rx207_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx207_fail
    add rx207_pos, rx207_off, $I11
  # rx pass
    rx207_cur."!cursor_pass"(rx207_pos, "escale")
    if_null rx207_debug, debug_205
    rx207_cur."!cursor_debug"("PASS", "escale", " at pos=", rx207_pos)
  debug_205:
    .return (rx207_cur)
  rx207_restart:
.annotate 'line', 31
    if_null rx207_debug, debug_206
    rx207_cur."!cursor_debug"("NEXT", "escale")
  debug_206:
  rx207_fail:
    (rx207_rep, rx207_pos, $I10, $P10) = rx207_cur."!mark_fail"(0)
    lt rx207_pos, -1, rx207_done
    eq rx207_pos, -1, rx207_fail
    jump $I10
  rx207_done:
    rx207_cur."!cursor_fail"()
    if_null rx207_debug, debug_207
    rx207_cur."!cursor_debug"("FAIL", "escale")
  debug_207:
    .return (rx207_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__escale"  :nsentry("!PREFIX__escale") :subid("66_1300090344.27537") :method
.annotate 'line', 31
    new $P209, "ResizablePMCArray"
    push $P209, "e"
    push $P209, "E"
    .return ($P209)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape"  :subid("67_1300090344.27537")
    .param pmc param_213
.annotate 'line', 77
    .lex "self", param_213
    $P214 = param_213."!protoregex"("quote_escape")
    .return ($P214)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape"  :subid("68_1300090344.27537")
    .param pmc param_216
.annotate 'line', 77
    .lex "self", param_216
    $P217 = param_216."!PREFIX__!protoregex"("quote_escape")
    .return ($P217)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<backslash>"  :subid("69_1300090344.27537") :method :outer("11_1300090344.27537")
.annotate 'line', 31
    .local string rx219_tgt
    .local int rx219_pos
    .local int rx219_off
    .local int rx219_eos
    .local int rx219_rep
    .local pmc rx219_cur
    .local pmc rx219_debug
    (rx219_cur, rx219_pos, rx219_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx219_cur
    .local pmc match
    .lex "$/", match
    length rx219_eos, rx219_tgt
    gt rx219_pos, rx219_eos, rx219_done
    set rx219_off, 0
    lt rx219_pos, 2, rx219_start
    sub rx219_off, rx219_pos, 1
    substr rx219_tgt, rx219_tgt, rx219_off
  rx219_start:
    eq $I10, 1, rx219_restart
    if_null rx219_debug, debug_208
    rx219_cur."!cursor_debug"("START", "quote_escape:sym<backslash>")
  debug_208:
    $I10 = self.'from'()
    ne $I10, -1, rxscan222_done
    goto rxscan222_scan
  rxscan222_loop:
    (rx219_pos) = rx219_cur."from"()
    inc rx219_pos
    rx219_cur."!cursor_from"(rx219_pos)
    ge rx219_pos, rx219_eos, rxscan222_done
  rxscan222_scan:
    set_addr $I10, rxscan222_loop
    rx219_cur."!mark_push"(0, rx219_pos, $I10)
  rxscan222_done:
.annotate 'line', 78
  # rx literal  "\\\\"
    add $I11, rx219_pos, 2
    gt $I11, rx219_eos, rx219_fail
    sub $I11, rx219_pos, rx219_off
    substr $S10, rx219_tgt, $I11, 2
    ne $S10, "\\\\", rx219_fail
    add rx219_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx219_cur."!cursor_pos"(rx219_pos)
    $P10 = rx219_cur."quotemod_check"("q")
    unless $P10, rx219_fail
  # rx pass
    rx219_cur."!cursor_pass"(rx219_pos, "quote_escape:sym<backslash>")
    if_null rx219_debug, debug_209
    rx219_cur."!cursor_debug"("PASS", "quote_escape:sym<backslash>", " at pos=", rx219_pos)
  debug_209:
    .return (rx219_cur)
  rx219_restart:
.annotate 'line', 31
    if_null rx219_debug, debug_210
    rx219_cur."!cursor_debug"("NEXT", "quote_escape:sym<backslash>")
  debug_210:
  rx219_fail:
    (rx219_rep, rx219_pos, $I10, $P10) = rx219_cur."!mark_fail"(0)
    lt rx219_pos, -1, rx219_done
    eq rx219_pos, -1, rx219_fail
    jump $I10
  rx219_done:
    rx219_cur."!cursor_fail"()
    if_null rx219_debug, debug_211
    rx219_cur."!cursor_debug"("FAIL", "quote_escape:sym<backslash>")
  debug_211:
    .return (rx219_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<backslash>"  :nsentry("!PREFIX__quote_escape:sym<backslash>") :subid("70_1300090344.27537") :method
.annotate 'line', 31
    new $P221, "ResizablePMCArray"
    push $P221, "\\\\"
    .return ($P221)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<stopper>"  :subid("71_1300090344.27537") :method :outer("11_1300090344.27537")
.annotate 'line', 31
    .local string rx224_tgt
    .local int rx224_pos
    .local int rx224_off
    .local int rx224_eos
    .local int rx224_rep
    .local pmc rx224_cur
    .local pmc rx224_debug
    (rx224_cur, rx224_pos, rx224_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx224_cur
    .local pmc match
    .lex "$/", match
    length rx224_eos, rx224_tgt
    gt rx224_pos, rx224_eos, rx224_done
    set rx224_off, 0
    lt rx224_pos, 2, rx224_start
    sub rx224_off, rx224_pos, 1
    substr rx224_tgt, rx224_tgt, rx224_off
  rx224_start:
    eq $I10, 1, rx224_restart
    if_null rx224_debug, debug_212
    rx224_cur."!cursor_debug"("START", "quote_escape:sym<stopper>")
  debug_212:
    $I10 = self.'from'()
    ne $I10, -1, rxscan227_done
    goto rxscan227_scan
  rxscan227_loop:
    (rx224_pos) = rx224_cur."from"()
    inc rx224_pos
    rx224_cur."!cursor_from"(rx224_pos)
    ge rx224_pos, rx224_eos, rxscan227_done
  rxscan227_scan:
    set_addr $I10, rxscan227_loop
    rx224_cur."!mark_push"(0, rx224_pos, $I10)
  rxscan227_done:
.annotate 'line', 79
  # rx literal  "\\"
    add $I11, rx224_pos, 1
    gt $I11, rx224_eos, rx224_fail
    sub $I11, rx224_pos, rx224_off
    ord $I11, rx224_tgt, $I11
    ne $I11, 92, rx224_fail
    add rx224_pos, 1
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx224_cur."!cursor_pos"(rx224_pos)
    $P10 = rx224_cur."quotemod_check"("q")
    unless $P10, rx224_fail
  # rx subrule "stopper" subtype=capture negate=
    rx224_cur."!cursor_pos"(rx224_pos)
    $P10 = rx224_cur."stopper"()
    unless $P10, rx224_fail
    rx224_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("stopper")
    rx224_pos = $P10."pos"()
  # rx pass
    rx224_cur."!cursor_pass"(rx224_pos, "quote_escape:sym<stopper>")
    if_null rx224_debug, debug_213
    rx224_cur."!cursor_debug"("PASS", "quote_escape:sym<stopper>", " at pos=", rx224_pos)
  debug_213:
    .return (rx224_cur)
  rx224_restart:
.annotate 'line', 31
    if_null rx224_debug, debug_214
    rx224_cur."!cursor_debug"("NEXT", "quote_escape:sym<stopper>")
  debug_214:
  rx224_fail:
    (rx224_rep, rx224_pos, $I10, $P10) = rx224_cur."!mark_fail"(0)
    lt rx224_pos, -1, rx224_done
    eq rx224_pos, -1, rx224_fail
    jump $I10
  rx224_done:
    rx224_cur."!cursor_fail"()
    if_null rx224_debug, debug_215
    rx224_cur."!cursor_debug"("FAIL", "quote_escape:sym<stopper>")
  debug_215:
    .return (rx224_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<stopper>"  :nsentry("!PREFIX__quote_escape:sym<stopper>") :subid("72_1300090344.27537") :method
.annotate 'line', 31
    new $P226, "ResizablePMCArray"
    push $P226, "\\"
    .return ($P226)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<bs>"  :subid("73_1300090344.27537") :method :outer("11_1300090344.27537")
.annotate 'line', 31
    .local string rx229_tgt
    .local int rx229_pos
    .local int rx229_off
    .local int rx229_eos
    .local int rx229_rep
    .local pmc rx229_cur
    .local pmc rx229_debug
    (rx229_cur, rx229_pos, rx229_tgt, $I10) = self."!cursor_start"()
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
    if_null rx229_debug, debug_216
    rx229_cur."!cursor_debug"("START", "quote_escape:sym<bs>")
  debug_216:
    $I10 = self.'from'()
    ne $I10, -1, rxscan232_done
    goto rxscan232_scan
  rxscan232_loop:
    (rx229_pos) = rx229_cur."from"()
    inc rx229_pos
    rx229_cur."!cursor_from"(rx229_pos)
    ge rx229_pos, rx229_eos, rxscan232_done
  rxscan232_scan:
    set_addr $I10, rxscan232_loop
    rx229_cur."!mark_push"(0, rx229_pos, $I10)
  rxscan232_done:
.annotate 'line', 81
  # rx literal  "\\b"
    add $I11, rx229_pos, 2
    gt $I11, rx229_eos, rx229_fail
    sub $I11, rx229_pos, rx229_off
    substr $S10, rx229_tgt, $I11, 2
    ne $S10, "\\b", rx229_fail
    add rx229_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx229_cur."!cursor_pos"(rx229_pos)
    $P10 = rx229_cur."quotemod_check"("b")
    unless $P10, rx229_fail
  # rx pass
    rx229_cur."!cursor_pass"(rx229_pos, "quote_escape:sym<bs>")
    if_null rx229_debug, debug_217
    rx229_cur."!cursor_debug"("PASS", "quote_escape:sym<bs>", " at pos=", rx229_pos)
  debug_217:
    .return (rx229_cur)
  rx229_restart:
.annotate 'line', 31
    if_null rx229_debug, debug_218
    rx229_cur."!cursor_debug"("NEXT", "quote_escape:sym<bs>")
  debug_218:
  rx229_fail:
    (rx229_rep, rx229_pos, $I10, $P10) = rx229_cur."!mark_fail"(0)
    lt rx229_pos, -1, rx229_done
    eq rx229_pos, -1, rx229_fail
    jump $I10
  rx229_done:
    rx229_cur."!cursor_fail"()
    if_null rx229_debug, debug_219
    rx229_cur."!cursor_debug"("FAIL", "quote_escape:sym<bs>")
  debug_219:
    .return (rx229_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<bs>"  :nsentry("!PREFIX__quote_escape:sym<bs>") :subid("74_1300090344.27537") :method
.annotate 'line', 31
    new $P231, "ResizablePMCArray"
    push $P231, "\\b"
    .return ($P231)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<nl>"  :subid("75_1300090344.27537") :method :outer("11_1300090344.27537")
.annotate 'line', 31
    .local string rx234_tgt
    .local int rx234_pos
    .local int rx234_off
    .local int rx234_eos
    .local int rx234_rep
    .local pmc rx234_cur
    .local pmc rx234_debug
    (rx234_cur, rx234_pos, rx234_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx234_cur
    .local pmc match
    .lex "$/", match
    length rx234_eos, rx234_tgt
    gt rx234_pos, rx234_eos, rx234_done
    set rx234_off, 0
    lt rx234_pos, 2, rx234_start
    sub rx234_off, rx234_pos, 1
    substr rx234_tgt, rx234_tgt, rx234_off
  rx234_start:
    eq $I10, 1, rx234_restart
    if_null rx234_debug, debug_220
    rx234_cur."!cursor_debug"("START", "quote_escape:sym<nl>")
  debug_220:
    $I10 = self.'from'()
    ne $I10, -1, rxscan237_done
    goto rxscan237_scan
  rxscan237_loop:
    (rx234_pos) = rx234_cur."from"()
    inc rx234_pos
    rx234_cur."!cursor_from"(rx234_pos)
    ge rx234_pos, rx234_eos, rxscan237_done
  rxscan237_scan:
    set_addr $I10, rxscan237_loop
    rx234_cur."!mark_push"(0, rx234_pos, $I10)
  rxscan237_done:
.annotate 'line', 82
  # rx literal  "\\n"
    add $I11, rx234_pos, 2
    gt $I11, rx234_eos, rx234_fail
    sub $I11, rx234_pos, rx234_off
    substr $S10, rx234_tgt, $I11, 2
    ne $S10, "\\n", rx234_fail
    add rx234_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx234_cur."!cursor_pos"(rx234_pos)
    $P10 = rx234_cur."quotemod_check"("b")
    unless $P10, rx234_fail
  # rx pass
    rx234_cur."!cursor_pass"(rx234_pos, "quote_escape:sym<nl>")
    if_null rx234_debug, debug_221
    rx234_cur."!cursor_debug"("PASS", "quote_escape:sym<nl>", " at pos=", rx234_pos)
  debug_221:
    .return (rx234_cur)
  rx234_restart:
.annotate 'line', 31
    if_null rx234_debug, debug_222
    rx234_cur."!cursor_debug"("NEXT", "quote_escape:sym<nl>")
  debug_222:
  rx234_fail:
    (rx234_rep, rx234_pos, $I10, $P10) = rx234_cur."!mark_fail"(0)
    lt rx234_pos, -1, rx234_done
    eq rx234_pos, -1, rx234_fail
    jump $I10
  rx234_done:
    rx234_cur."!cursor_fail"()
    if_null rx234_debug, debug_223
    rx234_cur."!cursor_debug"("FAIL", "quote_escape:sym<nl>")
  debug_223:
    .return (rx234_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<nl>"  :nsentry("!PREFIX__quote_escape:sym<nl>") :subid("76_1300090344.27537") :method
.annotate 'line', 31
    new $P236, "ResizablePMCArray"
    push $P236, "\\n"
    .return ($P236)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<cr>"  :subid("77_1300090344.27537") :method :outer("11_1300090344.27537")
.annotate 'line', 31
    .local string rx239_tgt
    .local int rx239_pos
    .local int rx239_off
    .local int rx239_eos
    .local int rx239_rep
    .local pmc rx239_cur
    .local pmc rx239_debug
    (rx239_cur, rx239_pos, rx239_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx239_cur
    .local pmc match
    .lex "$/", match
    length rx239_eos, rx239_tgt
    gt rx239_pos, rx239_eos, rx239_done
    set rx239_off, 0
    lt rx239_pos, 2, rx239_start
    sub rx239_off, rx239_pos, 1
    substr rx239_tgt, rx239_tgt, rx239_off
  rx239_start:
    eq $I10, 1, rx239_restart
    if_null rx239_debug, debug_224
    rx239_cur."!cursor_debug"("START", "quote_escape:sym<cr>")
  debug_224:
    $I10 = self.'from'()
    ne $I10, -1, rxscan242_done
    goto rxscan242_scan
  rxscan242_loop:
    (rx239_pos) = rx239_cur."from"()
    inc rx239_pos
    rx239_cur."!cursor_from"(rx239_pos)
    ge rx239_pos, rx239_eos, rxscan242_done
  rxscan242_scan:
    set_addr $I10, rxscan242_loop
    rx239_cur."!mark_push"(0, rx239_pos, $I10)
  rxscan242_done:
.annotate 'line', 83
  # rx literal  "\\r"
    add $I11, rx239_pos, 2
    gt $I11, rx239_eos, rx239_fail
    sub $I11, rx239_pos, rx239_off
    substr $S10, rx239_tgt, $I11, 2
    ne $S10, "\\r", rx239_fail
    add rx239_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx239_cur."!cursor_pos"(rx239_pos)
    $P10 = rx239_cur."quotemod_check"("b")
    unless $P10, rx239_fail
  # rx pass
    rx239_cur."!cursor_pass"(rx239_pos, "quote_escape:sym<cr>")
    if_null rx239_debug, debug_225
    rx239_cur."!cursor_debug"("PASS", "quote_escape:sym<cr>", " at pos=", rx239_pos)
  debug_225:
    .return (rx239_cur)
  rx239_restart:
.annotate 'line', 31
    if_null rx239_debug, debug_226
    rx239_cur."!cursor_debug"("NEXT", "quote_escape:sym<cr>")
  debug_226:
  rx239_fail:
    (rx239_rep, rx239_pos, $I10, $P10) = rx239_cur."!mark_fail"(0)
    lt rx239_pos, -1, rx239_done
    eq rx239_pos, -1, rx239_fail
    jump $I10
  rx239_done:
    rx239_cur."!cursor_fail"()
    if_null rx239_debug, debug_227
    rx239_cur."!cursor_debug"("FAIL", "quote_escape:sym<cr>")
  debug_227:
    .return (rx239_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<cr>"  :nsentry("!PREFIX__quote_escape:sym<cr>") :subid("78_1300090344.27537") :method
.annotate 'line', 31
    new $P241, "ResizablePMCArray"
    push $P241, "\\r"
    .return ($P241)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<tab>"  :subid("79_1300090344.27537") :method :outer("11_1300090344.27537")
.annotate 'line', 31
    .local string rx244_tgt
    .local int rx244_pos
    .local int rx244_off
    .local int rx244_eos
    .local int rx244_rep
    .local pmc rx244_cur
    .local pmc rx244_debug
    (rx244_cur, rx244_pos, rx244_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx244_cur
    .local pmc match
    .lex "$/", match
    length rx244_eos, rx244_tgt
    gt rx244_pos, rx244_eos, rx244_done
    set rx244_off, 0
    lt rx244_pos, 2, rx244_start
    sub rx244_off, rx244_pos, 1
    substr rx244_tgt, rx244_tgt, rx244_off
  rx244_start:
    eq $I10, 1, rx244_restart
    if_null rx244_debug, debug_228
    rx244_cur."!cursor_debug"("START", "quote_escape:sym<tab>")
  debug_228:
    $I10 = self.'from'()
    ne $I10, -1, rxscan247_done
    goto rxscan247_scan
  rxscan247_loop:
    (rx244_pos) = rx244_cur."from"()
    inc rx244_pos
    rx244_cur."!cursor_from"(rx244_pos)
    ge rx244_pos, rx244_eos, rxscan247_done
  rxscan247_scan:
    set_addr $I10, rxscan247_loop
    rx244_cur."!mark_push"(0, rx244_pos, $I10)
  rxscan247_done:
.annotate 'line', 84
  # rx literal  "\\t"
    add $I11, rx244_pos, 2
    gt $I11, rx244_eos, rx244_fail
    sub $I11, rx244_pos, rx244_off
    substr $S10, rx244_tgt, $I11, 2
    ne $S10, "\\t", rx244_fail
    add rx244_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx244_cur."!cursor_pos"(rx244_pos)
    $P10 = rx244_cur."quotemod_check"("b")
    unless $P10, rx244_fail
  # rx pass
    rx244_cur."!cursor_pass"(rx244_pos, "quote_escape:sym<tab>")
    if_null rx244_debug, debug_229
    rx244_cur."!cursor_debug"("PASS", "quote_escape:sym<tab>", " at pos=", rx244_pos)
  debug_229:
    .return (rx244_cur)
  rx244_restart:
.annotate 'line', 31
    if_null rx244_debug, debug_230
    rx244_cur."!cursor_debug"("NEXT", "quote_escape:sym<tab>")
  debug_230:
  rx244_fail:
    (rx244_rep, rx244_pos, $I10, $P10) = rx244_cur."!mark_fail"(0)
    lt rx244_pos, -1, rx244_done
    eq rx244_pos, -1, rx244_fail
    jump $I10
  rx244_done:
    rx244_cur."!cursor_fail"()
    if_null rx244_debug, debug_231
    rx244_cur."!cursor_debug"("FAIL", "quote_escape:sym<tab>")
  debug_231:
    .return (rx244_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<tab>"  :nsentry("!PREFIX__quote_escape:sym<tab>") :subid("80_1300090344.27537") :method
.annotate 'line', 31
    new $P246, "ResizablePMCArray"
    push $P246, "\\t"
    .return ($P246)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<ff>"  :subid("81_1300090344.27537") :method :outer("11_1300090344.27537")
.annotate 'line', 31
    .local string rx249_tgt
    .local int rx249_pos
    .local int rx249_off
    .local int rx249_eos
    .local int rx249_rep
    .local pmc rx249_cur
    .local pmc rx249_debug
    (rx249_cur, rx249_pos, rx249_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx249_cur
    .local pmc match
    .lex "$/", match
    length rx249_eos, rx249_tgt
    gt rx249_pos, rx249_eos, rx249_done
    set rx249_off, 0
    lt rx249_pos, 2, rx249_start
    sub rx249_off, rx249_pos, 1
    substr rx249_tgt, rx249_tgt, rx249_off
  rx249_start:
    eq $I10, 1, rx249_restart
    if_null rx249_debug, debug_232
    rx249_cur."!cursor_debug"("START", "quote_escape:sym<ff>")
  debug_232:
    $I10 = self.'from'()
    ne $I10, -1, rxscan252_done
    goto rxscan252_scan
  rxscan252_loop:
    (rx249_pos) = rx249_cur."from"()
    inc rx249_pos
    rx249_cur."!cursor_from"(rx249_pos)
    ge rx249_pos, rx249_eos, rxscan252_done
  rxscan252_scan:
    set_addr $I10, rxscan252_loop
    rx249_cur."!mark_push"(0, rx249_pos, $I10)
  rxscan252_done:
.annotate 'line', 85
  # rx literal  "\\f"
    add $I11, rx249_pos, 2
    gt $I11, rx249_eos, rx249_fail
    sub $I11, rx249_pos, rx249_off
    substr $S10, rx249_tgt, $I11, 2
    ne $S10, "\\f", rx249_fail
    add rx249_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx249_cur."!cursor_pos"(rx249_pos)
    $P10 = rx249_cur."quotemod_check"("b")
    unless $P10, rx249_fail
  # rx pass
    rx249_cur."!cursor_pass"(rx249_pos, "quote_escape:sym<ff>")
    if_null rx249_debug, debug_233
    rx249_cur."!cursor_debug"("PASS", "quote_escape:sym<ff>", " at pos=", rx249_pos)
  debug_233:
    .return (rx249_cur)
  rx249_restart:
.annotate 'line', 31
    if_null rx249_debug, debug_234
    rx249_cur."!cursor_debug"("NEXT", "quote_escape:sym<ff>")
  debug_234:
  rx249_fail:
    (rx249_rep, rx249_pos, $I10, $P10) = rx249_cur."!mark_fail"(0)
    lt rx249_pos, -1, rx249_done
    eq rx249_pos, -1, rx249_fail
    jump $I10
  rx249_done:
    rx249_cur."!cursor_fail"()
    if_null rx249_debug, debug_235
    rx249_cur."!cursor_debug"("FAIL", "quote_escape:sym<ff>")
  debug_235:
    .return (rx249_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<ff>"  :nsentry("!PREFIX__quote_escape:sym<ff>") :subid("82_1300090344.27537") :method
.annotate 'line', 31
    new $P251, "ResizablePMCArray"
    push $P251, "\\f"
    .return ($P251)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<esc>"  :subid("83_1300090344.27537") :method :outer("11_1300090344.27537")
.annotate 'line', 31
    .local string rx254_tgt
    .local int rx254_pos
    .local int rx254_off
    .local int rx254_eos
    .local int rx254_rep
    .local pmc rx254_cur
    .local pmc rx254_debug
    (rx254_cur, rx254_pos, rx254_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx254_cur
    .local pmc match
    .lex "$/", match
    length rx254_eos, rx254_tgt
    gt rx254_pos, rx254_eos, rx254_done
    set rx254_off, 0
    lt rx254_pos, 2, rx254_start
    sub rx254_off, rx254_pos, 1
    substr rx254_tgt, rx254_tgt, rx254_off
  rx254_start:
    eq $I10, 1, rx254_restart
    if_null rx254_debug, debug_236
    rx254_cur."!cursor_debug"("START", "quote_escape:sym<esc>")
  debug_236:
    $I10 = self.'from'()
    ne $I10, -1, rxscan257_done
    goto rxscan257_scan
  rxscan257_loop:
    (rx254_pos) = rx254_cur."from"()
    inc rx254_pos
    rx254_cur."!cursor_from"(rx254_pos)
    ge rx254_pos, rx254_eos, rxscan257_done
  rxscan257_scan:
    set_addr $I10, rxscan257_loop
    rx254_cur."!mark_push"(0, rx254_pos, $I10)
  rxscan257_done:
.annotate 'line', 86
  # rx literal  "\\e"
    add $I11, rx254_pos, 2
    gt $I11, rx254_eos, rx254_fail
    sub $I11, rx254_pos, rx254_off
    substr $S10, rx254_tgt, $I11, 2
    ne $S10, "\\e", rx254_fail
    add rx254_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx254_cur."!cursor_pos"(rx254_pos)
    $P10 = rx254_cur."quotemod_check"("b")
    unless $P10, rx254_fail
  # rx pass
    rx254_cur."!cursor_pass"(rx254_pos, "quote_escape:sym<esc>")
    if_null rx254_debug, debug_237
    rx254_cur."!cursor_debug"("PASS", "quote_escape:sym<esc>", " at pos=", rx254_pos)
  debug_237:
    .return (rx254_cur)
  rx254_restart:
.annotate 'line', 31
    if_null rx254_debug, debug_238
    rx254_cur."!cursor_debug"("NEXT", "quote_escape:sym<esc>")
  debug_238:
  rx254_fail:
    (rx254_rep, rx254_pos, $I10, $P10) = rx254_cur."!mark_fail"(0)
    lt rx254_pos, -1, rx254_done
    eq rx254_pos, -1, rx254_fail
    jump $I10
  rx254_done:
    rx254_cur."!cursor_fail"()
    if_null rx254_debug, debug_239
    rx254_cur."!cursor_debug"("FAIL", "quote_escape:sym<esc>")
  debug_239:
    .return (rx254_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<esc>"  :nsentry("!PREFIX__quote_escape:sym<esc>") :subid("84_1300090344.27537") :method
.annotate 'line', 31
    new $P256, "ResizablePMCArray"
    push $P256, "\\e"
    .return ($P256)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<hex>"  :subid("85_1300090344.27537") :method :outer("11_1300090344.27537")
.annotate 'line', 31
    .local string rx259_tgt
    .local int rx259_pos
    .local int rx259_off
    .local int rx259_eos
    .local int rx259_rep
    .local pmc rx259_cur
    .local pmc rx259_debug
    (rx259_cur, rx259_pos, rx259_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx259_cur
    .local pmc match
    .lex "$/", match
    length rx259_eos, rx259_tgt
    gt rx259_pos, rx259_eos, rx259_done
    set rx259_off, 0
    lt rx259_pos, 2, rx259_start
    sub rx259_off, rx259_pos, 1
    substr rx259_tgt, rx259_tgt, rx259_off
  rx259_start:
    eq $I10, 1, rx259_restart
    if_null rx259_debug, debug_240
    rx259_cur."!cursor_debug"("START", "quote_escape:sym<hex>")
  debug_240:
    $I10 = self.'from'()
    ne $I10, -1, rxscan262_done
    goto rxscan262_scan
  rxscan262_loop:
    (rx259_pos) = rx259_cur."from"()
    inc rx259_pos
    rx259_cur."!cursor_from"(rx259_pos)
    ge rx259_pos, rx259_eos, rxscan262_done
  rxscan262_scan:
    set_addr $I10, rxscan262_loop
    rx259_cur."!mark_push"(0, rx259_pos, $I10)
  rxscan262_done:
.annotate 'line', 88
  # rx literal  unicode:"\\x"
    add $I11, rx259_pos, 2
    gt $I11, rx259_eos, rx259_fail
    sub $I11, rx259_pos, rx259_off
    substr $S10, rx259_tgt, $I11, 2
    ne $S10, unicode:"\\x", rx259_fail
    add rx259_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx259_cur."!cursor_pos"(rx259_pos)
    $P10 = rx259_cur."quotemod_check"("b")
    unless $P10, rx259_fail
  alt263_0:
.annotate 'line', 89
    set_addr $I10, alt263_1
    rx259_cur."!mark_push"(0, rx259_pos, $I10)
  # rx subrule "hexint" subtype=capture negate=
    rx259_cur."!cursor_pos"(rx259_pos)
    $P10 = rx259_cur."hexint"()
    unless $P10, rx259_fail
    rx259_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexint")
    rx259_pos = $P10."pos"()
    goto alt263_end
  alt263_1:
  # rx literal  "["
    add $I11, rx259_pos, 1
    gt $I11, rx259_eos, rx259_fail
    sub $I11, rx259_pos, rx259_off
    ord $I11, rx259_tgt, $I11
    ne $I11, 91, rx259_fail
    add rx259_pos, 1
  # rx subrule "hexints" subtype=capture negate=
    rx259_cur."!cursor_pos"(rx259_pos)
    $P10 = rx259_cur."hexints"()
    unless $P10, rx259_fail
    rx259_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexints")
    rx259_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx259_pos, 1
    gt $I11, rx259_eos, rx259_fail
    sub $I11, rx259_pos, rx259_off
    ord $I11, rx259_tgt, $I11
    ne $I11, 93, rx259_fail
    add rx259_pos, 1
  alt263_end:
.annotate 'line', 87
  # rx pass
    rx259_cur."!cursor_pass"(rx259_pos, "quote_escape:sym<hex>")
    if_null rx259_debug, debug_241
    rx259_cur."!cursor_debug"("PASS", "quote_escape:sym<hex>", " at pos=", rx259_pos)
  debug_241:
    .return (rx259_cur)
  rx259_restart:
.annotate 'line', 31
    if_null rx259_debug, debug_242
    rx259_cur."!cursor_debug"("NEXT", "quote_escape:sym<hex>")
  debug_242:
  rx259_fail:
    (rx259_rep, rx259_pos, $I10, $P10) = rx259_cur."!mark_fail"(0)
    lt rx259_pos, -1, rx259_done
    eq rx259_pos, -1, rx259_fail
    jump $I10
  rx259_done:
    rx259_cur."!cursor_fail"()
    if_null rx259_debug, debug_243
    rx259_cur."!cursor_debug"("FAIL", "quote_escape:sym<hex>")
  debug_243:
    .return (rx259_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<hex>"  :nsentry("!PREFIX__quote_escape:sym<hex>") :subid("86_1300090344.27537") :method
.annotate 'line', 31
    new $P261, "ResizablePMCArray"
    push $P261, unicode:"\\x"
    .return ($P261)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<oct>"  :subid("87_1300090344.27537") :method :outer("11_1300090344.27537")
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
    if_null rx265_debug, debug_244
    rx265_cur."!cursor_debug"("START", "quote_escape:sym<oct>")
  debug_244:
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
.annotate 'line', 92
  # rx literal  "\\o"
    add $I11, rx265_pos, 2
    gt $I11, rx265_eos, rx265_fail
    sub $I11, rx265_pos, rx265_off
    substr $S10, rx265_tgt, $I11, 2
    ne $S10, "\\o", rx265_fail
    add rx265_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx265_cur."!cursor_pos"(rx265_pos)
    $P10 = rx265_cur."quotemod_check"("b")
    unless $P10, rx265_fail
  alt269_0:
.annotate 'line', 93
    set_addr $I10, alt269_1
    rx265_cur."!mark_push"(0, rx265_pos, $I10)
  # rx subrule "octint" subtype=capture negate=
    rx265_cur."!cursor_pos"(rx265_pos)
    $P10 = rx265_cur."octint"()
    unless $P10, rx265_fail
    rx265_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octint")
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
  # rx subrule "octints" subtype=capture negate=
    rx265_cur."!cursor_pos"(rx265_pos)
    $P10 = rx265_cur."octints"()
    unless $P10, rx265_fail
    rx265_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octints")
    rx265_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx265_pos, 1
    gt $I11, rx265_eos, rx265_fail
    sub $I11, rx265_pos, rx265_off
    ord $I11, rx265_tgt, $I11
    ne $I11, 93, rx265_fail
    add rx265_pos, 1
  alt269_end:
.annotate 'line', 91
  # rx pass
    rx265_cur."!cursor_pass"(rx265_pos, "quote_escape:sym<oct>")
    if_null rx265_debug, debug_245
    rx265_cur."!cursor_debug"("PASS", "quote_escape:sym<oct>", " at pos=", rx265_pos)
  debug_245:
    .return (rx265_cur)
  rx265_restart:
.annotate 'line', 31
    if_null rx265_debug, debug_246
    rx265_cur."!cursor_debug"("NEXT", "quote_escape:sym<oct>")
  debug_246:
  rx265_fail:
    (rx265_rep, rx265_pos, $I10, $P10) = rx265_cur."!mark_fail"(0)
    lt rx265_pos, -1, rx265_done
    eq rx265_pos, -1, rx265_fail
    jump $I10
  rx265_done:
    rx265_cur."!cursor_fail"()
    if_null rx265_debug, debug_247
    rx265_cur."!cursor_debug"("FAIL", "quote_escape:sym<oct>")
  debug_247:
    .return (rx265_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<oct>"  :nsentry("!PREFIX__quote_escape:sym<oct>") :subid("88_1300090344.27537") :method
.annotate 'line', 31
    new $P267, "ResizablePMCArray"
    push $P267, "\\o"
    .return ($P267)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<chr>"  :subid("89_1300090344.27537") :method :outer("11_1300090344.27537")
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
    if_null rx271_debug, debug_248
    rx271_cur."!cursor_debug"("START", "quote_escape:sym<chr>")
  debug_248:
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
.annotate 'line', 95
  # rx literal  "\\c"
    add $I11, rx271_pos, 2
    gt $I11, rx271_eos, rx271_fail
    sub $I11, rx271_pos, rx271_off
    substr $S10, rx271_tgt, $I11, 2
    ne $S10, "\\c", rx271_fail
    add rx271_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx271_cur."!cursor_pos"(rx271_pos)
    $P10 = rx271_cur."quotemod_check"("b")
    unless $P10, rx271_fail
  # rx subrule "charspec" subtype=capture negate=
    rx271_cur."!cursor_pos"(rx271_pos)
    $P10 = rx271_cur."charspec"()
    unless $P10, rx271_fail
    rx271_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charspec")
    rx271_pos = $P10."pos"()
  # rx pass
    rx271_cur."!cursor_pass"(rx271_pos, "quote_escape:sym<chr>")
    if_null rx271_debug, debug_249
    rx271_cur."!cursor_debug"("PASS", "quote_escape:sym<chr>", " at pos=", rx271_pos)
  debug_249:
    .return (rx271_cur)
  rx271_restart:
.annotate 'line', 31
    if_null rx271_debug, debug_250
    rx271_cur."!cursor_debug"("NEXT", "quote_escape:sym<chr>")
  debug_250:
  rx271_fail:
    (rx271_rep, rx271_pos, $I10, $P10) = rx271_cur."!mark_fail"(0)
    lt rx271_pos, -1, rx271_done
    eq rx271_pos, -1, rx271_fail
    jump $I10
  rx271_done:
    rx271_cur."!cursor_fail"()
    if_null rx271_debug, debug_251
    rx271_cur."!cursor_debug"("FAIL", "quote_escape:sym<chr>")
  debug_251:
    .return (rx271_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<chr>"  :nsentry("!PREFIX__quote_escape:sym<chr>") :subid("90_1300090344.27537") :method
.annotate 'line', 31
    new $P273, "ResizablePMCArray"
    push $P273, "\\c"
    .return ($P273)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<0>"  :subid("91_1300090344.27537") :method :outer("11_1300090344.27537")
.annotate 'line', 31
    .local string rx276_tgt
    .local int rx276_pos
    .local int rx276_off
    .local int rx276_eos
    .local int rx276_rep
    .local pmc rx276_cur
    .local pmc rx276_debug
    (rx276_cur, rx276_pos, rx276_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx276_cur
    .local pmc match
    .lex "$/", match
    length rx276_eos, rx276_tgt
    gt rx276_pos, rx276_eos, rx276_done
    set rx276_off, 0
    lt rx276_pos, 2, rx276_start
    sub rx276_off, rx276_pos, 1
    substr rx276_tgt, rx276_tgt, rx276_off
  rx276_start:
    eq $I10, 1, rx276_restart
    if_null rx276_debug, debug_252
    rx276_cur."!cursor_debug"("START", "quote_escape:sym<0>")
  debug_252:
    $I10 = self.'from'()
    ne $I10, -1, rxscan279_done
    goto rxscan279_scan
  rxscan279_loop:
    (rx276_pos) = rx276_cur."from"()
    inc rx276_pos
    rx276_cur."!cursor_from"(rx276_pos)
    ge rx276_pos, rx276_eos, rxscan279_done
  rxscan279_scan:
    set_addr $I10, rxscan279_loop
    rx276_cur."!mark_push"(0, rx276_pos, $I10)
  rxscan279_done:
.annotate 'line', 96
  # rx literal  "\\"
    add $I11, rx276_pos, 1
    gt $I11, rx276_eos, rx276_fail
    sub $I11, rx276_pos, rx276_off
    ord $I11, rx276_tgt, $I11
    ne $I11, 92, rx276_fail
    add rx276_pos, 1
  # rx subcapture "sym"
    set_addr $I10, rxcap_280_fail
    rx276_cur."!mark_push"(0, rx276_pos, $I10)
  # rx literal  "0"
    add $I11, rx276_pos, 1
    gt $I11, rx276_eos, rx276_fail
    sub $I11, rx276_pos, rx276_off
    ord $I11, rx276_tgt, $I11
    ne $I11, 48, rx276_fail
    add rx276_pos, 1
    set_addr $I10, rxcap_280_fail
    ($I12, $I11) = rx276_cur."!mark_peek"($I10)
    rx276_cur."!cursor_pos"($I11)
    ($P10) = rx276_cur."!cursor_start"()
    $P10."!cursor_pass"(rx276_pos, "")
    rx276_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_280_done
  rxcap_280_fail:
    goto rx276_fail
  rxcap_280_done:
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx276_cur."!cursor_pos"(rx276_pos)
    $P10 = rx276_cur."quotemod_check"("b")
    unless $P10, rx276_fail
  # rx pass
    rx276_cur."!cursor_pass"(rx276_pos, "quote_escape:sym<0>")
    if_null rx276_debug, debug_253
    rx276_cur."!cursor_debug"("PASS", "quote_escape:sym<0>", " at pos=", rx276_pos)
  debug_253:
    .return (rx276_cur)
  rx276_restart:
.annotate 'line', 31
    if_null rx276_debug, debug_254
    rx276_cur."!cursor_debug"("NEXT", "quote_escape:sym<0>")
  debug_254:
  rx276_fail:
    (rx276_rep, rx276_pos, $I10, $P10) = rx276_cur."!mark_fail"(0)
    lt rx276_pos, -1, rx276_done
    eq rx276_pos, -1, rx276_fail
    jump $I10
  rx276_done:
    rx276_cur."!cursor_fail"()
    if_null rx276_debug, debug_255
    rx276_cur."!cursor_debug"("FAIL", "quote_escape:sym<0>")
  debug_255:
    .return (rx276_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<0>"  :nsentry("!PREFIX__quote_escape:sym<0>") :subid("92_1300090344.27537") :method
.annotate 'line', 31
    new $P278, "ResizablePMCArray"
    push $P278, "\\0"
    .return ($P278)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<misc>"  :subid("93_1300090344.27537") :method :outer("11_1300090344.27537")
.annotate 'line', 31
    .const 'Sub' $P301 = "97_1300090344.27537" 
    capture_lex $P301
    .const 'Sub' $P294 = "96_1300090344.27537" 
    capture_lex $P294
    .const 'Sub' $P289 = "95_1300090344.27537" 
    capture_lex $P289
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
    if_null rx282_debug, debug_256
    rx282_cur."!cursor_debug"("START", "quote_escape:sym<misc>")
  debug_256:
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
.annotate 'line', 98
    rx282_cur."!cursor_pos"(rx282_pos)
    find_lex $P286, unicode:"$\x{a2}"
    $P287 = $P286."MATCH"()
    store_lex "$/", $P287
    .const 'Sub' $P289 = "95_1300090344.27537" 
    capture_lex $P289
    $P290 = $P289()
  # rx literal  "\\"
    add $I11, rx282_pos, 1
    gt $I11, rx282_eos, rx282_fail
    sub $I11, rx282_pos, rx282_off
    ord $I11, rx282_tgt, $I11
    ne $I11, 92, rx282_fail
    add rx282_pos, 1
  alt291_0:
.annotate 'line', 99
    set_addr $I10, alt291_1
    rx282_cur."!mark_push"(0, rx282_pos, $I10)
.annotate 'line', 100
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx282_cur."!cursor_pos"(rx282_pos)
    $P10 = rx282_cur."quotemod_check"("b")
    unless $P10, rx282_fail
  alt292_0:
.annotate 'line', 101
    set_addr $I10, alt292_1
    rx282_cur."!mark_push"(0, rx282_pos, $I10)
.annotate 'line', 102
  # rx subrule $P294 subtype=capture negate=
    rx282_cur."!cursor_pos"(rx282_pos)
    .const 'Sub' $P294 = "96_1300090344.27537" 
    capture_lex $P294
    $P10 = rx282_cur.$P294()
    unless $P10, rx282_fail
    rx282_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("textqq")
    rx282_pos = $P10."pos"()
    goto alt292_end
  alt292_1:
.annotate 'line', 103
  # rx subcapture "x"
    set_addr $I10, rxcap_297_fail
    rx282_cur."!mark_push"(0, rx282_pos, $I10)
  # rx charclass w
    ge rx282_pos, rx282_eos, rx282_fail
    sub $I10, rx282_pos, rx282_off
    is_cclass $I11, 8192, rx282_tgt, $I10
    unless $I11, rx282_fail
    inc rx282_pos
    set_addr $I10, rxcap_297_fail
    ($I12, $I11) = rx282_cur."!mark_peek"($I10)
    rx282_cur."!cursor_pos"($I11)
    ($P10) = rx282_cur."!cursor_start"()
    $P10."!cursor_pass"(rx282_pos, "")
    rx282_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("x")
    goto rxcap_297_done
  rxcap_297_fail:
    goto rx282_fail
  rxcap_297_done:
    rx282_cur."!cursor_pos"(rx282_pos)
    find_lex $P298, unicode:"$\x{a2}"
    $P299 = $P298."MATCH"()
    store_lex "$/", $P299
    .const 'Sub' $P301 = "97_1300090344.27537" 
    capture_lex $P301
    $P311 = $P301()
  alt292_end:
.annotate 'line', 100
    goto alt291_end
  alt291_1:
.annotate 'line', 105
  # rx subcapture "textq"
    set_addr $I10, rxcap_312_fail
    rx282_cur."!mark_push"(0, rx282_pos, $I10)
  # rx charclass .
    ge rx282_pos, rx282_eos, rx282_fail
    inc rx282_pos
    set_addr $I10, rxcap_312_fail
    ($I12, $I11) = rx282_cur."!mark_peek"($I10)
    rx282_cur."!cursor_pos"($I11)
    ($P10) = rx282_cur."!cursor_start"()
    $P10."!cursor_pass"(rx282_pos, "")
    rx282_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("textq")
    goto rxcap_312_done
  rxcap_312_fail:
    goto rx282_fail
  rxcap_312_done:
  alt291_end:
.annotate 'line', 97
  # rx pass
    rx282_cur."!cursor_pass"(rx282_pos, "quote_escape:sym<misc>")
    if_null rx282_debug, debug_263
    rx282_cur."!cursor_debug"("PASS", "quote_escape:sym<misc>", " at pos=", rx282_pos)
  debug_263:
    .return (rx282_cur)
  rx282_restart:
.annotate 'line', 31
    if_null rx282_debug, debug_264
    rx282_cur."!cursor_debug"("NEXT", "quote_escape:sym<misc>")
  debug_264:
  rx282_fail:
    (rx282_rep, rx282_pos, $I10, $P10) = rx282_cur."!mark_fail"(0)
    lt rx282_pos, -1, rx282_done
    eq rx282_pos, -1, rx282_fail
    jump $I10
  rx282_done:
    rx282_cur."!cursor_fail"()
    if_null rx282_debug, debug_265
    rx282_cur."!cursor_debug"("FAIL", "quote_escape:sym<misc>")
  debug_265:
    .return (rx282_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<misc>"  :nsentry("!PREFIX__quote_escape:sym<misc>") :subid("94_1300090344.27537") :method
.annotate 'line', 31
    new $P284, "ResizablePMCArray"
    push $P284, ""
    .return ($P284)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block288"  :anon :subid("95_1300090344.27537") :outer("93_1300090344.27537")
.annotate 'line', 98
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block293"  :anon :subid("96_1300090344.27537") :method :outer("93_1300090344.27537")
.annotate 'line', 102
    .local string rx295_tgt
    .local int rx295_pos
    .local int rx295_off
    .local int rx295_eos
    .local int rx295_rep
    .local pmc rx295_cur
    .local pmc rx295_debug
    (rx295_cur, rx295_pos, rx295_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx295_cur
    .local pmc match
    .lex "$/", match
    length rx295_eos, rx295_tgt
    gt rx295_pos, rx295_eos, rx295_done
    set rx295_off, 0
    lt rx295_pos, 2, rx295_start
    sub rx295_off, rx295_pos, 1
    substr rx295_tgt, rx295_tgt, rx295_off
  rx295_start:
    eq $I10, 1, rx295_restart
    if_null rx295_debug, debug_257
    rx295_cur."!cursor_debug"("START", "")
  debug_257:
    $I10 = self.'from'()
    ne $I10, -1, rxscan296_done
    goto rxscan296_scan
  rxscan296_loop:
    (rx295_pos) = rx295_cur."from"()
    inc rx295_pos
    rx295_cur."!cursor_from"(rx295_pos)
    ge rx295_pos, rx295_eos, rxscan296_done
  rxscan296_scan:
    set_addr $I10, rxscan296_loop
    rx295_cur."!mark_push"(0, rx295_pos, $I10)
  rxscan296_done:
  # rx charclass W
    ge rx295_pos, rx295_eos, rx295_fail
    sub $I10, rx295_pos, rx295_off
    is_cclass $I11, 8192, rx295_tgt, $I10
    if $I11, rx295_fail
    inc rx295_pos
  # rx pass
    rx295_cur."!cursor_pass"(rx295_pos, "")
    if_null rx295_debug, debug_258
    rx295_cur."!cursor_debug"("PASS", "", " at pos=", rx295_pos)
  debug_258:
    .return (rx295_cur)
  rx295_restart:
    if_null rx295_debug, debug_259
    rx295_cur."!cursor_debug"("NEXT", "")
  debug_259:
  rx295_fail:
    (rx295_rep, rx295_pos, $I10, $P10) = rx295_cur."!mark_fail"(0)
    lt rx295_pos, -1, rx295_done
    eq rx295_pos, -1, rx295_fail
    jump $I10
  rx295_done:
    rx295_cur."!cursor_fail"()
    if_null rx295_debug, debug_260
    rx295_cur."!cursor_debug"("FAIL", "")
  debug_260:
    .return (rx295_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block300"  :anon :subid("97_1300090344.27537") :outer("93_1300090344.27537")
.annotate 'line', 103
    find_lex $P302, "$/"
    $P303 = $P302."CURSOR"()
    new $P304, "String"
    assign $P304, "Unrecognized backslash sequence: '\\"
    find_lex $P305, "$/"
    unless_null $P305, vivify_261
    $P305 = root_new ['parrot';'Hash']
  vivify_261:
    set $P306, $P305["x"]
    unless_null $P306, vivify_262
    new $P306, "Undef"
  vivify_262:
    $S307 = $P306."Str"()
    concat $P308, $P304, $S307
    concat $P309, $P308, "'"
    $P310 = $P303."panic"($P309)
    .return ($P310)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "charname"  :subid("98_1300090344.27537") :method :outer("11_1300090344.27537")
.annotate 'line', 31
    .const 'Sub' $P323 = "100_1300090344.27537" 
    capture_lex $P323
    .local string rx314_tgt
    .local int rx314_pos
    .local int rx314_off
    .local int rx314_eos
    .local int rx314_rep
    .local pmc rx314_cur
    .local pmc rx314_debug
    (rx314_cur, rx314_pos, rx314_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx314_cur
    .local pmc match
    .lex "$/", match
    length rx314_eos, rx314_tgt
    gt rx314_pos, rx314_eos, rx314_done
    set rx314_off, 0
    lt rx314_pos, 2, rx314_start
    sub rx314_off, rx314_pos, 1
    substr rx314_tgt, rx314_tgt, rx314_off
  rx314_start:
    eq $I10, 1, rx314_restart
    if_null rx314_debug, debug_266
    rx314_cur."!cursor_debug"("START", "charname")
  debug_266:
    $I10 = self.'from'()
    ne $I10, -1, rxscan318_done
    goto rxscan318_scan
  rxscan318_loop:
    (rx314_pos) = rx314_cur."from"()
    inc rx314_pos
    rx314_cur."!cursor_from"(rx314_pos)
    ge rx314_pos, rx314_eos, rxscan318_done
  rxscan318_scan:
    set_addr $I10, rxscan318_loop
    rx314_cur."!mark_push"(0, rx314_pos, $I10)
  rxscan318_done:
  alt319_0:
.annotate 'line', 109
    set_addr $I10, alt319_1
    rx314_cur."!mark_push"(0, rx314_pos, $I10)
.annotate 'line', 110
  # rx subrule "integer" subtype=capture negate=
    rx314_cur."!cursor_pos"(rx314_pos)
    $P10 = rx314_cur."integer"()
    unless $P10, rx314_fail
    rx314_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("integer")
    rx314_pos = $P10."pos"()
    goto alt319_end
  alt319_1:
.annotate 'line', 111
  # rx enumcharlist negate=0 
    ge rx314_pos, rx314_eos, rx314_fail
    sub $I10, rx314_pos, rx314_off
    substr $S10, rx314_tgt, $I10, 1
    index $I11, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ", $S10
    lt $I11, 0, rx314_fail
    inc rx314_pos
  # rx rxquantf320 ** 0..*
    set_addr $I10, rxquantf320_loop
    rx314_cur."!mark_push"(0, rx314_pos, $I10)
    goto rxquantf320_done
  rxquantf320_loop:
  # rx enumcharlist negate=1 
    ge rx314_pos, rx314_eos, rx314_fail
    sub $I10, rx314_pos, rx314_off
    substr $S10, rx314_tgt, $I10, 1
    index $I11, "],#", $S10
    ge $I11, 0, rx314_fail
    inc rx314_pos
    set_addr $I10, rxquantf320_loop
    rx314_cur."!mark_push"(rx314_rep, rx314_pos, $I10)
  rxquantf320_done:
  # rx enumcharlist negate=0 
    ge rx314_pos, rx314_eos, rx314_fail
    sub $I10, rx314_pos, rx314_off
    substr $S10, rx314_tgt, $I10, 1
    index $I11, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ)", $S10
    lt $I11, 0, rx314_fail
    inc rx314_pos
.annotate 'line', 112
  # rx subrule "before" subtype=zerowidth negate=
    rx314_cur."!cursor_pos"(rx314_pos)
    .const 'Sub' $P323 = "100_1300090344.27537" 
    capture_lex $P323
    $P10 = rx314_cur."before"($P323)
    unless $P10, rx314_fail
  alt319_end:
.annotate 'line', 109
  # rx pass
    rx314_cur."!cursor_pass"(rx314_pos, "charname")
    if_null rx314_debug, debug_271
    rx314_cur."!cursor_debug"("PASS", "charname", " at pos=", rx314_pos)
  debug_271:
    .return (rx314_cur)
  rx314_restart:
.annotate 'line', 31
    if_null rx314_debug, debug_272
    rx314_cur."!cursor_debug"("NEXT", "charname")
  debug_272:
  rx314_fail:
    (rx314_rep, rx314_pos, $I10, $P10) = rx314_cur."!mark_fail"(0)
    lt rx314_pos, -1, rx314_done
    eq rx314_pos, -1, rx314_fail
    jump $I10
  rx314_done:
    rx314_cur."!cursor_fail"()
    if_null rx314_debug, debug_273
    rx314_cur."!cursor_debug"("FAIL", "charname")
  debug_273:
    .return (rx314_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charname"  :nsentry("!PREFIX__charname") :subid("99_1300090344.27537") :method
.annotate 'line', 31
    $P316 = self."!PREFIX__!subrule"("integer", "")
    new $P317, "ResizablePMCArray"
    push $P317, "Z"
    push $P317, "Y"
    push $P317, "X"
    push $P317, "W"
    push $P317, "V"
    push $P317, "U"
    push $P317, "T"
    push $P317, "S"
    push $P317, "R"
    push $P317, "Q"
    push $P317, "P"
    push $P317, "O"
    push $P317, "N"
    push $P317, "M"
    push $P317, "L"
    push $P317, "K"
    push $P317, "J"
    push $P317, "I"
    push $P317, "H"
    push $P317, "G"
    push $P317, "F"
    push $P317, "E"
    push $P317, "D"
    push $P317, "C"
    push $P317, "B"
    push $P317, "A"
    push $P317, "z"
    push $P317, "y"
    push $P317, "x"
    push $P317, "w"
    push $P317, "v"
    push $P317, "u"
    push $P317, "t"
    push $P317, "s"
    push $P317, "r"
    push $P317, "q"
    push $P317, "p"
    push $P317, "o"
    push $P317, "n"
    push $P317, "m"
    push $P317, "l"
    push $P317, "k"
    push $P317, "j"
    push $P317, "i"
    push $P317, "h"
    push $P317, "g"
    push $P317, "f"
    push $P317, "e"
    push $P317, "d"
    push $P317, "c"
    push $P317, "b"
    push $P317, "a"
    push $P317, $P316
    .return ($P317)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block322"  :anon :subid("100_1300090344.27537") :method :outer("98_1300090344.27537")
.annotate 'line', 112
    .local string rx324_tgt
    .local int rx324_pos
    .local int rx324_off
    .local int rx324_eos
    .local int rx324_rep
    .local pmc rx324_cur
    .local pmc rx324_debug
    (rx324_cur, rx324_pos, rx324_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx324_cur
    .local pmc match
    .lex "$/", match
    length rx324_eos, rx324_tgt
    gt rx324_pos, rx324_eos, rx324_done
    set rx324_off, 0
    lt rx324_pos, 2, rx324_start
    sub rx324_off, rx324_pos, 1
    substr rx324_tgt, rx324_tgt, rx324_off
  rx324_start:
    eq $I10, 1, rx324_restart
    if_null rx324_debug, debug_267
    rx324_cur."!cursor_debug"("START", "")
  debug_267:
    $I10 = self.'from'()
    ne $I10, -1, rxscan325_done
    goto rxscan325_scan
  rxscan325_loop:
    (rx324_pos) = rx324_cur."from"()
    inc rx324_pos
    rx324_cur."!cursor_from"(rx324_pos)
    ge rx324_pos, rx324_eos, rxscan325_done
  rxscan325_scan:
    set_addr $I10, rxscan325_loop
    rx324_cur."!mark_push"(0, rx324_pos, $I10)
  rxscan325_done:
  # rx charclass_q s r 0..-1
    sub $I10, rx324_pos, rx324_off
    find_not_cclass $I11, 32, rx324_tgt, $I10, rx324_eos
    add rx324_pos, rx324_off, $I11
  # rx enumcharlist negate=0 
    ge rx324_pos, rx324_eos, rx324_fail
    sub $I10, rx324_pos, rx324_off
    substr $S10, rx324_tgt, $I10, 1
    index $I11, "],#", $S10
    lt $I11, 0, rx324_fail
    inc rx324_pos
  # rx pass
    rx324_cur."!cursor_pass"(rx324_pos, "")
    if_null rx324_debug, debug_268
    rx324_cur."!cursor_debug"("PASS", "", " at pos=", rx324_pos)
  debug_268:
    .return (rx324_cur)
  rx324_restart:
    if_null rx324_debug, debug_269
    rx324_cur."!cursor_debug"("NEXT", "")
  debug_269:
  rx324_fail:
    (rx324_rep, rx324_pos, $I10, $P10) = rx324_cur."!mark_fail"(0)
    lt rx324_pos, -1, rx324_done
    eq rx324_pos, -1, rx324_fail
    jump $I10
  rx324_done:
    rx324_cur."!cursor_fail"()
    if_null rx324_debug, debug_270
    rx324_cur."!cursor_debug"("FAIL", "")
  debug_270:
    .return (rx324_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "charnames"  :subid("101_1300090344.27537") :method :outer("11_1300090344.27537")
.annotate 'line', 31
    .local string rx327_tgt
    .local int rx327_pos
    .local int rx327_off
    .local int rx327_eos
    .local int rx327_rep
    .local pmc rx327_cur
    .local pmc rx327_debug
    (rx327_cur, rx327_pos, rx327_tgt, $I10) = self."!cursor_start"()
    rx327_cur."!cursor_caparray"("charname")
    .lex unicode:"$\x{a2}", rx327_cur
    .local pmc match
    .lex "$/", match
    length rx327_eos, rx327_tgt
    gt rx327_pos, rx327_eos, rx327_done
    set rx327_off, 0
    lt rx327_pos, 2, rx327_start
    sub rx327_off, rx327_pos, 1
    substr rx327_tgt, rx327_tgt, rx327_off
  rx327_start:
    eq $I10, 1, rx327_restart
    if_null rx327_debug, debug_274
    rx327_cur."!cursor_debug"("START", "charnames")
  debug_274:
    $I10 = self.'from'()
    ne $I10, -1, rxscan330_done
    goto rxscan330_scan
  rxscan330_loop:
    (rx327_pos) = rx327_cur."from"()
    inc rx327_pos
    rx327_cur."!cursor_from"(rx327_pos)
    ge rx327_pos, rx327_eos, rxscan330_done
  rxscan330_scan:
    set_addr $I10, rxscan330_loop
    rx327_cur."!mark_push"(0, rx327_pos, $I10)
  rxscan330_done:
.annotate 'line', 114
  # rx rxquantr331 ** 1..*
    set_addr $I10, rxquantr331_done
    rx327_cur."!mark_push"(0, -1, $I10)
  rxquantr331_loop:
  # rx subrule "ws" subtype=method negate=
    rx327_cur."!cursor_pos"(rx327_pos)
    $P10 = rx327_cur."ws"()
    unless $P10, rx327_fail
    rx327_pos = $P10."pos"()
  # rx subrule "charname" subtype=capture negate=
    rx327_cur."!cursor_pos"(rx327_pos)
    $P10 = rx327_cur."charname"()
    unless $P10, rx327_fail
    rx327_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charname")
    rx327_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx327_cur."!cursor_pos"(rx327_pos)
    $P10 = rx327_cur."ws"()
    unless $P10, rx327_fail
    rx327_pos = $P10."pos"()
    set_addr $I10, rxquantr331_done
    (rx327_rep) = rx327_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr331_done
    rx327_cur."!mark_push"(rx327_rep, rx327_pos, $I10)
  # rx literal  ","
    add $I11, rx327_pos, 1
    gt $I11, rx327_eos, rx327_fail
    sub $I11, rx327_pos, rx327_off
    ord $I11, rx327_tgt, $I11
    ne $I11, 44, rx327_fail
    add rx327_pos, 1
    goto rxquantr331_loop
  rxquantr331_done:
  # rx pass
    rx327_cur."!cursor_pass"(rx327_pos, "charnames")
    if_null rx327_debug, debug_275
    rx327_cur."!cursor_debug"("PASS", "charnames", " at pos=", rx327_pos)
  debug_275:
    .return (rx327_cur)
  rx327_restart:
.annotate 'line', 31
    if_null rx327_debug, debug_276
    rx327_cur."!cursor_debug"("NEXT", "charnames")
  debug_276:
  rx327_fail:
    (rx327_rep, rx327_pos, $I10, $P10) = rx327_cur."!mark_fail"(0)
    lt rx327_pos, -1, rx327_done
    eq rx327_pos, -1, rx327_fail
    jump $I10
  rx327_done:
    rx327_cur."!cursor_fail"()
    if_null rx327_debug, debug_277
    rx327_cur."!cursor_debug"("FAIL", "charnames")
  debug_277:
    .return (rx327_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charnames"  :nsentry("!PREFIX__charnames") :subid("102_1300090344.27537") :method
.annotate 'line', 31
    new $P329, "ResizablePMCArray"
    push $P329, ""
    .return ($P329)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "charspec"  :subid("103_1300090344.27537") :method :outer("11_1300090344.27537")
.annotate 'line', 31
    .local string rx333_tgt
    .local int rx333_pos
    .local int rx333_off
    .local int rx333_eos
    .local int rx333_rep
    .local pmc rx333_cur
    .local pmc rx333_debug
    (rx333_cur, rx333_pos, rx333_tgt, $I10) = self."!cursor_start"()
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
    if_null rx333_debug, debug_278
    rx333_cur."!cursor_debug"("START", "charspec")
  debug_278:
    $I10 = self.'from'()
    ne $I10, -1, rxscan338_done
    goto rxscan338_scan
  rxscan338_loop:
    (rx333_pos) = rx333_cur."from"()
    inc rx333_pos
    rx333_cur."!cursor_from"(rx333_pos)
    ge rx333_pos, rx333_eos, rxscan338_done
  rxscan338_scan:
    set_addr $I10, rxscan338_loop
    rx333_cur."!mark_push"(0, rx333_pos, $I10)
  rxscan338_done:
  alt339_0:
.annotate 'line', 116
    set_addr $I10, alt339_1
    rx333_cur."!mark_push"(0, rx333_pos, $I10)
.annotate 'line', 117
  # rx literal  "["
    add $I11, rx333_pos, 1
    gt $I11, rx333_eos, rx333_fail
    sub $I11, rx333_pos, rx333_off
    ord $I11, rx333_tgt, $I11
    ne $I11, 91, rx333_fail
    add rx333_pos, 1
  # rx subrule "charnames" subtype=capture negate=
    rx333_cur."!cursor_pos"(rx333_pos)
    $P10 = rx333_cur."charnames"()
    unless $P10, rx333_fail
    rx333_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charnames")
    rx333_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx333_pos, 1
    gt $I11, rx333_eos, rx333_fail
    sub $I11, rx333_pos, rx333_off
    ord $I11, rx333_tgt, $I11
    ne $I11, 93, rx333_fail
    add rx333_pos, 1
    goto alt339_end
  alt339_1:
    set_addr $I10, alt339_2
    rx333_cur."!mark_push"(0, rx333_pos, $I10)
.annotate 'line', 118
  # rx charclass_q d r 1..-1
    sub $I10, rx333_pos, rx333_off
    find_not_cclass $I11, 8, rx333_tgt, $I10, rx333_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx333_fail
    add rx333_pos, rx333_off, $I11
  # rx rxquantr340 ** 0..*
    set_addr $I10, rxquantr340_done
    rx333_cur."!mark_push"(0, rx333_pos, $I10)
  rxquantr340_loop:
  # rx literal  "_"
    add $I11, rx333_pos, 1
    gt $I11, rx333_eos, rx333_fail
    sub $I11, rx333_pos, rx333_off
    ord $I11, rx333_tgt, $I11
    ne $I11, 95, rx333_fail
    add rx333_pos, 1
  # rx charclass_q d r 1..-1
    sub $I10, rx333_pos, rx333_off
    find_not_cclass $I11, 8, rx333_tgt, $I10, rx333_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx333_fail
    add rx333_pos, rx333_off, $I11
    set_addr $I10, rxquantr340_done
    (rx333_rep) = rx333_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr340_done
    rx333_cur."!mark_push"(rx333_rep, rx333_pos, $I10)
    goto rxquantr340_loop
  rxquantr340_done:
    goto alt339_end
  alt339_2:
    set_addr $I10, alt339_3
    rx333_cur."!mark_push"(0, rx333_pos, $I10)
.annotate 'line', 119
  # rx enumcharlist negate=0 
    ge rx333_pos, rx333_eos, rx333_fail
    sub $I10, rx333_pos, rx333_off
    substr $S10, rx333_tgt, $I10, 1
    index $I11, "?@ABCDEFGHIJKLMNOPQRSTUVWXYZ", $S10
    lt $I11, 0, rx333_fail
    inc rx333_pos
    goto alt339_end
  alt339_3:
.annotate 'line', 120
  # rx subrule "panic" subtype=method negate=
    rx333_cur."!cursor_pos"(rx333_pos)
    $P10 = rx333_cur."panic"("Unrecognized \\c character")
    unless $P10, rx333_fail
    rx333_pos = $P10."pos"()
  alt339_end:
.annotate 'line', 115
  # rx pass
    rx333_cur."!cursor_pass"(rx333_pos, "charspec")
    if_null rx333_debug, debug_279
    rx333_cur."!cursor_debug"("PASS", "charspec", " at pos=", rx333_pos)
  debug_279:
    .return (rx333_cur)
  rx333_restart:
.annotate 'line', 31
    if_null rx333_debug, debug_280
    rx333_cur."!cursor_debug"("NEXT", "charspec")
  debug_280:
  rx333_fail:
    (rx333_rep, rx333_pos, $I10, $P10) = rx333_cur."!mark_fail"(0)
    lt rx333_pos, -1, rx333_done
    eq rx333_pos, -1, rx333_fail
    jump $I10
  rx333_done:
    rx333_cur."!cursor_fail"()
    if_null rx333_debug, debug_281
    rx333_cur."!cursor_debug"("FAIL", "charspec")
  debug_281:
    .return (rx333_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charspec"  :nsentry("!PREFIX__charspec") :subid("104_1300090344.27537") :method
.annotate 'line', 31
    $P335 = self."!PREFIX__!subrule"("panic", "")
    $P336 = self."!PREFIX__!subrule"("charnames", "[")
    new $P337, "ResizablePMCArray"
    push $P337, $P335
    push $P337, "Z"
    push $P337, "Y"
    push $P337, "X"
    push $P337, "W"
    push $P337, "V"
    push $P337, "U"
    push $P337, "T"
    push $P337, "S"
    push $P337, "R"
    push $P337, "Q"
    push $P337, "P"
    push $P337, "O"
    push $P337, "N"
    push $P337, "M"
    push $P337, "L"
    push $P337, "K"
    push $P337, "J"
    push $P337, "I"
    push $P337, "H"
    push $P337, "G"
    push $P337, "F"
    push $P337, "E"
    push $P337, "D"
    push $P337, "C"
    push $P337, "B"
    push $P337, "A"
    push $P337, "@"
    push $P337, "?"
    push $P337, ""
    push $P337, $P336
    .return ($P337)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "O"  :subid("105_1300090344.27537") :outer("11_1300090344.27537")
    .param pmc param_342
    .param pmc param_343
    .param pmc param_344 :optional
    .param int has_param_344 :opt_flag
.annotate 'line', 166
    .lex "self", param_342
    .lex "$spec", param_343
    if has_param_344, optparam_282
    new $P345, "Undef"
    set param_344, $P345
  optparam_282:
    .lex "$save", param_344
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
.sub "panic"  :subid("106_1300090344.27537") :outer("11_1300090344.27537")
    .param pmc param_347
    .param pmc param_348 :slurpy
.annotate 'line', 312
    .lex "self", param_347
    .lex "@args", param_348
.annotate 'line', 313
    new $P349, "Undef"
    .lex "$pos", $P349
.annotate 'line', 314
    new $P350, "Undef"
    .lex "$target", $P350
.annotate 'line', 313
    find_lex $P351, "self"
    $P352 = $P351."pos"()
    store_lex "$pos", $P352
.annotate 'line', 314
    find_lex $P353, "self"
    get_hll_global $P354, ["Regex"], "Cursor"
    getattribute $P355, $P353, $P354, "$!target"
    store_lex "$target", $P355
.annotate 'line', 315
    find_lex $P356, "@args"
    $P356."push"(" at line ")
.annotate 'line', 316
    find_lex $P357, "@args"
    get_hll_global $P358, ["HLL"], "Compiler"
    find_lex $P359, "$target"
    find_lex $P360, "$pos"
    $P361 = $P358."lineof"($P359, $P360)
    add $P362, $P361, 1
    $P357."push"($P362)
.annotate 'line', 317
    find_lex $P363, "@args"
    $P363."push"(", near \"")
.annotate 'line', 318
    find_lex $P364, "@args"
    find_lex $P365, "$target"
    set $S366, $P365
    find_lex $P367, "$pos"
    set $I368, $P367
    substr $S369, $S366, $I368, 10
    escape $S370, $S369
    $P364."push"($S370)
.annotate 'line', 319
    find_lex $P371, "@args"
    $P371."push"("\"")
.annotate 'line', 320
    find_lex $P372, "@args"
    join $S373, "", $P372
    die $S373
.annotate 'line', 312
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "peek_delimiters"  :subid("107_1300090344.27537") :outer("11_1300090344.27537")
    .param pmc param_375
    .param pmc param_376
    .param pmc param_377
.annotate 'line', 333
    .lex "self", param_375
    .lex "$target", param_376
    .lex "$pos", param_377
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
.sub "quote_EXPR"  :subid("108_1300090344.27537") :outer("11_1300090344.27537")
    .param pmc param_379
    .param pmc param_380 :slurpy
.annotate 'line', 395
    .lex "self", param_379
    .lex "@args", param_380
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
.sub "quotemod_check" :nsentry :subid("109_1300090344.27537") :outer("11_1300090344.27537")
    .param pmc param_382
    .param pmc param_383
.annotate 'line', 464
    .lex "self", param_382
    .lex "$mod", param_383
    find_lex $P384, "$mod"
    find_dynamic_lex $P385, "%*QUOTEMOD"
    unless_null $P385, vivify_283
    get_hll_global $P385, "%QUOTEMOD"
    unless_null $P385, vivify_284
    die "Contextual %*QUOTEMOD not found"
  vivify_284:
  vivify_283:
    set $P386, $P385[$P384]
    unless_null $P386, vivify_285
    new $P386, "Undef"
  vivify_285:
    .return ($P386)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "starter"  :subid("110_1300090344.27537") :outer("11_1300090344.27537")
    .param pmc param_388
.annotate 'line', 468
    .lex "self", param_388
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
.sub "stopper"  :subid("111_1300090344.27537") :outer("11_1300090344.27537")
    .param pmc param_390
.annotate 'line', 491
    .lex "self", param_390
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
.sub "split_words" :nsentry :subid("112_1300090344.27537") :outer("11_1300090344.27537")
    .param pmc param_392
    .param pmc param_393
.annotate 'line', 514
    .lex "self", param_392
    .lex "$words", param_393
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
.sub "EXPR"  :subid("113_1300090344.27537") :outer("11_1300090344.27537")
    .param pmc param_395
    .param pmc param_396 :optional
    .param int has_param_396 :opt_flag
.annotate 'line', 546
    .lex "self", param_395
    if has_param_396, optparam_286
    new $P397, "String"
    assign $P397, ""
    set param_396, $P397
  optparam_286:
    .lex "$preclim", param_396
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
.sub "EXPR_reduce"  :subid("114_1300090344.27537") :outer("11_1300090344.27537")
    .param pmc param_399
    .param pmc param_400
    .param pmc param_401
.annotate 'line', 724
    .lex "self", param_399
    .lex "$termstack", param_400
    .lex "$opstack", param_401
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
.sub "ternary"  :subid("115_1300090344.27537") :outer("11_1300090344.27537")
    .param pmc param_403
    .param pmc param_404
.annotate 'line', 792
    .lex "self", param_403
    .lex "$match", param_404
.annotate 'line', 793
    find_lex $P405, "$match"
    unless_null $P405, vivify_287
    $P405 = root_new ['parrot';'ResizablePMCArray']
  vivify_287:
    set $P406, $P405[1]
    unless_null $P406, vivify_288
    new $P406, "Undef"
  vivify_288:
    find_lex $P407, "$match"
    unless_null $P407, vivify_289
    $P407 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$match", $P407
  vivify_289:
    set $P407[2], $P406
.annotate 'line', 794
    find_lex $P408, "$match"
    unless_null $P408, vivify_290
    $P408 = root_new ['parrot';'Hash']
  vivify_290:
    set $P409, $P408["infix"]
    unless_null $P409, vivify_291
    $P409 = root_new ['parrot';'Hash']
  vivify_291:
    set $P410, $P409["EXPR"]
    unless_null $P410, vivify_292
    new $P410, "Undef"
  vivify_292:
    find_lex $P411, "$match"
    unless_null $P411, vivify_293
    $P411 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$match", $P411
  vivify_293:
    set $P411[1], $P410
.annotate 'line', 792
    .return ($P410)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "MARKER"  :subid("116_1300090344.27537") :outer("11_1300090344.27537")
    .param pmc param_413
    .param pmc param_414
.annotate 'line', 797
    .lex "self", param_413
    .lex "$markname", param_414
.annotate 'line', 798
    new $P415, "Undef"
    .lex "$pos", $P415
.annotate 'line', 800
    $P416 = root_new ['parrot';'Hash']
    .lex "%markhash", $P416
.annotate 'line', 798
    find_lex $P417, "self"
    $P418 = $P417."pos"()
    store_lex "$pos", $P418
.annotate 'line', 799
    find_lex $P419, "self"
    find_lex $P420, "$markname"
    find_lex $P421, "$pos"
    $P419."!cursor_debug"("START", "MARKER name=", $P420, ", pos=", $P421)
.annotate 'line', 800

            $P422 = get_global '%!MARKHASH'
            unless null $P422 goto have_markhash
            $P422 = new ['Hash']
            set_global '%!MARKHASH', $P422
          have_markhash:
        
    store_lex "%markhash", $P422
.annotate 'line', 807
    find_lex $P423, "$pos"
    find_lex $P424, "$markname"
    find_lex $P425, "%markhash"
    unless_null $P425, vivify_294
    $P425 = root_new ['parrot';'Hash']
    store_lex "%markhash", $P425
  vivify_294:
    set $P425[$P424], $P423
.annotate 'line', 808
    find_lex $P426, "self"
    $P426."!cursor_debug"("PASS", "MARKER")
.annotate 'line', 797
    .return (1)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "MARKED"  :subid("117_1300090344.27537") :outer("11_1300090344.27537")
    .param pmc param_428
    .param pmc param_429
.annotate 'line', 812
    .lex "self", param_428
    .lex "$markname", param_429
.annotate 'line', 813
    find_lex $P430, "self"
    find_lex $P431, "$markname"
    $P430."!cursor_debug"("START", "MARKED name=", $P431)
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
.sub "LANG"  :subid("118_1300090344.27537") :outer("11_1300090344.27537")
    .param pmc param_433
    .param pmc param_434
    .param pmc param_435
.annotate 'line', 832
    .lex "self", param_433
    .lex "$lang", param_434
    .lex "$regex", param_435
.annotate 'line', 833
    new $P436, "Undef"
    .lex "$lang_cursor", $P436
.annotate 'line', 834
    new $P437, "Undef"
    .lex "$*ACTIONS", $P437
.annotate 'line', 835
    new $P438, "Undef"
    .lex "$cur", $P438
.annotate 'line', 833
    find_lex $P439, "$lang"
    find_dynamic_lex $P440, "%*LANG"
    unless_null $P440, vivify_295
    get_hll_global $P440, "%LANG"
    unless_null $P440, vivify_296
    die "Contextual %*LANG not found"
  vivify_296:
  vivify_295:
    set $P441, $P440[$P439]
    unless_null $P441, vivify_297
    new $P441, "Undef"
  vivify_297:
    store_lex "$lang_cursor", $P441
.annotate 'line', 834
    find_lex $P442, "$lang"
    concat $P443, $P442, "-actions"
    find_dynamic_lex $P444, "%*LANG"
    unless_null $P444, vivify_298
    get_hll_global $P444, "%LANG"
    unless_null $P444, vivify_299
    die "Contextual %*LANG not found"
  vivify_299:
  vivify_298:
    set $P445, $P444[$P443]
    unless_null $P445, vivify_300
    new $P445, "Undef"
  vivify_300:
    store_lex "$*ACTIONS", $P445
.annotate 'line', 835

            .local pmc self
            .local int pos
            self = find_lex 'self'
            $P0 = find_lex '$lang_cursor'
            ($P446, pos) = self.'!cursor_start'($P0)
            $P446.'!cursor_pos'(pos)
        
    store_lex "$cur", $P446
.annotate 'line', 843
    find_lex $P447, "$cur"
    find_lex $P448, "$regex"
    set $S449, $P448
    $P450 = $P447.$S449()
.annotate 'line', 832
    .return ($P450)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block452" :load :anon :subid("119_1300090344.27537")
.annotate 'line', 3
    .const 'Sub' $P454 = "11_1300090344.27537" 
    $P455 = $P454()
    .return ($P455)
.end


.HLL "nqp"

.namespace []
.sub "_block681" :load :anon :subid("121_1300090344.27537")
.annotate 'line', 1
    .const 'Sub' $P683 = "10_1300090344.27537" 
    $P684 = $P683()
    .return ($P684)
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
.sub "_block11"  :anon :subid("10_1300090347.43336")
.annotate 'line', 0
    get_hll_global $P14, ["HLL";"Actions"], "_block13" 
    capture_lex $P14
.annotate 'line', 1
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 3
    get_hll_global $P14, ["HLL";"Actions"], "_block13" 
    capture_lex $P14
    $P741 = $P14()
.annotate 'line', 1
    .return ($P741)
    .const 'Sub' $P743 = "59_1300090347.43336" 
    .return ($P743)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post60") :outer("10_1300090347.43336")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1300090347.43336" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P747, "1300090345.48004"
    isnull $I748, $P747
    if $I748, if_746
    nqp_get_sc_object $P758, "1300090345.48004", 0
    set_hll_global ["HLL"], "Actions", $P758
    goto if_746_end
  if_746:
    nqp_dynop_setup 
    getinterp $P749
    get_class $P750, "LexPad"
    get_class $P751, "NQPLexPad"
    $P749."hll_map"($P750, $P751)
    load_bytecode "nqpmo.pbc"
    nqp_create_sc $P752, "1300090345.48004"
    .local pmc cur_sc
    set cur_sc, $P752
    load_bytecode "SettingManager.pbc"
    get_hll_global $P753, ["HLL"], "SettingManager"
    $P754 = $P753."load_setting"("NQPCORE")
    block."set_outer_ctx"($P754)
    get_hll_global $P755, "NQPClassHOW"
    $P756 = $P755."new_type"("HLL::Actions" :named("name"))
    nqp_set_sc_for_object $P756, cur_sc
    nqp_set_sc_object "1300090345.48004", 0, $P756
    nqp_get_sc_object $P757, "1300090345.48004", 0
    set_hll_global ["HLL"], "Actions", $P757
  if_746_end:
.end


.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace ["HLL";"Actions"]
.sub "_block13"  :subid("11_1300090347.43336") :outer("10_1300090347.43336")
.annotate 'line', 3
    .const 'Sub' $P673 = "58_1300090347.43336" 
    capture_lex $P673
    .const 'Sub' $P639 = "56_1300090347.43336" 
    capture_lex $P639
    .const 'Sub' $P616 = "54_1300090347.43336" 
    capture_lex $P616
    .const 'Sub' $P588 = "53_1300090347.43336" 
    capture_lex $P588
    .const 'Sub' $P571 = "52_1300090347.43336" 
    capture_lex $P571
    .const 'Sub' $P566 = "51_1300090347.43336" 
    capture_lex $P566
    .const 'Sub' $P558 = "50_1300090347.43336" 
    capture_lex $P558
    .const 'Sub' $P543 = "49_1300090347.43336" 
    capture_lex $P543
    .const 'Sub' $P528 = "48_1300090347.43336" 
    capture_lex $P528
    .const 'Sub' $P523 = "47_1300090347.43336" 
    capture_lex $P523
    .const 'Sub' $P518 = "46_1300090347.43336" 
    capture_lex $P518
    .const 'Sub' $P513 = "45_1300090347.43336" 
    capture_lex $P513
    .const 'Sub' $P508 = "44_1300090347.43336" 
    capture_lex $P508
    .const 'Sub' $P503 = "43_1300090347.43336" 
    capture_lex $P503
    .const 'Sub' $P498 = "42_1300090347.43336" 
    capture_lex $P498
    .const 'Sub' $P490 = "41_1300090347.43336" 
    capture_lex $P490
    .const 'Sub' $P485 = "40_1300090347.43336" 
    capture_lex $P485
    .const 'Sub' $P471 = "39_1300090347.43336" 
    capture_lex $P471
    .const 'Sub' $P398 = "37_1300090347.43336" 
    capture_lex $P398
    .const 'Sub' $P337 = "34_1300090347.43336" 
    capture_lex $P337
    .const 'Sub' $P330 = "33_1300090347.43336" 
    capture_lex $P330
    .const 'Sub' $P323 = "32_1300090347.43336" 
    capture_lex $P323
    .const 'Sub' $P316 = "31_1300090347.43336" 
    capture_lex $P316
    .const 'Sub' $P309 = "30_1300090347.43336" 
    capture_lex $P309
    .const 'Sub' $P302 = "29_1300090347.43336" 
    capture_lex $P302
    .const 'Sub' $P294 = "28_1300090347.43336" 
    capture_lex $P294
    .const 'Sub' $P286 = "27_1300090347.43336" 
    capture_lex $P286
    .const 'Sub' $P280 = "26_1300090347.43336" 
    capture_lex $P280
    .const 'Sub' $P272 = "25_1300090347.43336" 
    capture_lex $P272
    .const 'Sub' $P264 = "24_1300090347.43336" 
    capture_lex $P264
    .const 'Sub' $P162 = "21_1300090347.43336" 
    capture_lex $P162
    .const 'Sub' $P126 = "18_1300090347.43336" 
    capture_lex $P126
    .const 'Sub' $P121 = "17_1300090347.43336" 
    capture_lex $P121
    .const 'Sub' $P86 = "14_1300090347.43336" 
    capture_lex $P86
    .const 'Sub' $P16 = "12_1300090347.43336" 
    capture_lex $P16
    get_global $P15, "$?CLASS"
    .const 'Sub' $P16 = "12_1300090347.43336" 
    newclosure $P84, $P16
    .lex "string_to_int", $P84
    find_lex $P85, "string_to_int"
    set_global "string_to_int", $P85
.annotate 'line', 22
    .const 'Sub' $P86 = "14_1300090347.43336" 
    newclosure $P117, $P86
    .lex "ints_to_string", $P117
.annotate 'line', 3
    find_lex $P118, "ints_to_string"
    set_global "ints_to_string", $P118
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
    find_lex $P119, "string_to_int"
    find_lex $P120, "ints_to_string"
.annotate 'line', 198
    .const 'Sub' $P639 = "56_1300090347.43336" 
    newclosure $P654, $P639
.annotate 'line', 3
    .return ($P654)
    .const 'Sub' $P656 = "57_1300090347.43336" 
    .return ($P656)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "" :load :init :subid("post61") :outer("11_1300090347.43336")
.annotate 'line', 3
    get_hll_global $P14, ["HLL";"Actions"], "_block13" 
    .local pmc block
    set block, $P14
    .const 'Sub' $P659 = "12_1300090347.43336" 
    set_global "string_to_int", $P659
    .const 'Sub' $P660 = "14_1300090347.43336" 
    set_global "ints_to_string", $P660
    nqp_get_sc $P662, "1300090345.48004"
    isnull $I663, $P662
    if $I663, if_661
    goto if_661_end
  if_661:
    nqp_dynop_setup 
    getinterp $P664
    get_class $P665, "LexPad"
    get_class $P666, "NQPLexPad"
    $P664."hll_map"($P665, $P666)
    load_bytecode "nqpmo.pbc"
    nqp_create_sc $P667, "1300090345.48004"
    .local pmc cur_sc
    set cur_sc, $P667
    load_bytecode "SettingManager.pbc"
    get_hll_global $P668, ["HLL"], "SettingManager"
    $P669 = $P668."load_setting"("NQPCORE")
    block."set_outer_ctx"($P669)
    get_hll_global $P670, "NQPClassHOW"
    $P671 = $P670."new_type"("HLL::Actions" :named("name"))
    nqp_set_sc_for_object $P671, cur_sc
    nqp_set_sc_object "1300090345.48004", 0, $P671
  if_661_end:
    .const 'Sub' $P673 = "58_1300090347.43336" 
    capture_lex $P673
    $P673()
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block672"  :anon :subid("58_1300090347.43336") :outer("11_1300090347.43336")
.annotate 'line', 3
    nqp_get_sc_object $P674, "1300090345.48004", 0
    .local pmc type_obj
    set type_obj, $P674
    set_global "$?CLASS", type_obj
    get_how $P675, type_obj
    .const 'Sub' $P676 = "17_1300090347.43336" 
    $P675."add_method"(type_obj, "CTXSAVE", $P676)
    get_how $P677, type_obj
    .const 'Sub' $P678 = "18_1300090347.43336" 
    $P677."add_method"(type_obj, "SET_BLOCK_OUTER_CTX", $P678)
    get_how $P679, type_obj
    .const 'Sub' $P680 = "21_1300090347.43336" 
    $P679."add_method"(type_obj, "EXPR", $P680)
    get_how $P681, type_obj
    .const 'Sub' $P682 = "24_1300090347.43336" 
    $P681."add_method"(type_obj, "term:sym<circumfix>", $P682)
    get_how $P683, type_obj
    .const 'Sub' $P684 = "25_1300090347.43336" 
    $P683."add_method"(type_obj, "termish", $P684)
    get_how $P685, type_obj
    .const 'Sub' $P686 = "26_1300090347.43336" 
    $P685."add_method"(type_obj, "nullterm", $P686)
    get_how $P687, type_obj
    .const 'Sub' $P688 = "27_1300090347.43336" 
    $P687."add_method"(type_obj, "nullterm_alt", $P688)
    get_how $P689, type_obj
    .const 'Sub' $P690 = "28_1300090347.43336" 
    $P689."add_method"(type_obj, "integer", $P690)
    get_how $P691, type_obj
    .const 'Sub' $P692 = "29_1300090347.43336" 
    $P691."add_method"(type_obj, "dec_number", $P692)
    get_how $P693, type_obj
    .const 'Sub' $P694 = "30_1300090347.43336" 
    $P693."add_method"(type_obj, "decint", $P694)
    get_how $P695, type_obj
    .const 'Sub' $P696 = "31_1300090347.43336" 
    $P695."add_method"(type_obj, "hexint", $P696)
    get_how $P697, type_obj
    .const 'Sub' $P698 = "32_1300090347.43336" 
    $P697."add_method"(type_obj, "octint", $P698)
    get_how $P699, type_obj
    .const 'Sub' $P700 = "33_1300090347.43336" 
    $P699."add_method"(type_obj, "binint", $P700)
    get_how $P701, type_obj
    .const 'Sub' $P702 = "34_1300090347.43336" 
    $P701."add_method"(type_obj, "quote_EXPR", $P702)
    get_how $P703, type_obj
    .const 'Sub' $P704 = "37_1300090347.43336" 
    $P703."add_method"(type_obj, "quote_delimited", $P704)
    get_how $P705, type_obj
    .const 'Sub' $P706 = "39_1300090347.43336" 
    $P705."add_method"(type_obj, "quote_atom", $P706)
    get_how $P707, type_obj
    .const 'Sub' $P708 = "40_1300090347.43336" 
    $P707."add_method"(type_obj, "quote_escape:sym<backslash>", $P708)
    get_how $P709, type_obj
    .const 'Sub' $P710 = "41_1300090347.43336" 
    $P709."add_method"(type_obj, "quote_escape:sym<stopper>", $P710)
    get_how $P711, type_obj
    .const 'Sub' $P712 = "42_1300090347.43336" 
    $P711."add_method"(type_obj, "quote_escape:sym<bs>", $P712)
    get_how $P713, type_obj
    .const 'Sub' $P714 = "43_1300090347.43336" 
    $P713."add_method"(type_obj, "quote_escape:sym<nl>", $P714)
    get_how $P715, type_obj
    .const 'Sub' $P716 = "44_1300090347.43336" 
    $P715."add_method"(type_obj, "quote_escape:sym<cr>", $P716)
    get_how $P717, type_obj
    .const 'Sub' $P718 = "45_1300090347.43336" 
    $P717."add_method"(type_obj, "quote_escape:sym<tab>", $P718)
    get_how $P719, type_obj
    .const 'Sub' $P720 = "46_1300090347.43336" 
    $P719."add_method"(type_obj, "quote_escape:sym<ff>", $P720)
    get_how $P721, type_obj
    .const 'Sub' $P722 = "47_1300090347.43336" 
    $P721."add_method"(type_obj, "quote_escape:sym<esc>", $P722)
    get_how $P723, type_obj
    .const 'Sub' $P724 = "48_1300090347.43336" 
    $P723."add_method"(type_obj, "quote_escape:sym<hex>", $P724)
    get_how $P725, type_obj
    .const 'Sub' $P726 = "49_1300090347.43336" 
    $P725."add_method"(type_obj, "quote_escape:sym<oct>", $P726)
    get_how $P727, type_obj
    .const 'Sub' $P728 = "50_1300090347.43336" 
    $P727."add_method"(type_obj, "quote_escape:sym<chr>", $P728)
    get_how $P729, type_obj
    .const 'Sub' $P730 = "51_1300090347.43336" 
    $P729."add_method"(type_obj, "quote_escape:sym<0>", $P730)
    get_how $P731, type_obj
    .const 'Sub' $P732 = "52_1300090347.43336" 
    $P731."add_method"(type_obj, "quote_escape:sym<misc>", $P732)
    get_how $P733, type_obj
    .const 'Sub' $P734 = "53_1300090347.43336" 
    $P733."add_method"(type_obj, "charname", $P734)
    get_how $P735, type_obj
    .const 'Sub' $P736 = "54_1300090347.43336" 
    $P735."add_method"(type_obj, "charnames", $P736)
    get_how $P737, type_obj
    .const 'Sub' $P738 = "56_1300090347.43336" 
    $P737."add_method"(type_obj, "charspec", $P738)
    get_how $P739, type_obj
    $P740 = $P739."compose"(type_obj)
    .return ($P740)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "string_to_int"  :subid("12_1300090347.43336") :outer("11_1300090347.43336")
    .param pmc param_17
    .param pmc param_18
.annotate 'line', 3
    .const 'Sub' $P34 = "13_1300090347.43336" 
    capture_lex $P34
    .lex "$src", param_17
    .lex "$base", param_18
.annotate 'line', 4
    new $P19, "Undef"
    .lex "$len", $P19
.annotate 'line', 5
    new $P20, "Undef"
    .lex "$i", $P20
.annotate 'line', 6
    new $P21, "Undef"
    .lex "$result", $P21
.annotate 'line', 4
    find_lex $P22, "$src"
    set $S23, $P22
    length $I24, $S23
    new $P25, 'Integer'
    set $P25, $I24
    store_lex "$len", $P25
.annotate 'line', 5
    new $P26, "Integer"
    assign $P26, 0
    store_lex "$i", $P26
.annotate 'line', 6
    new $P27, "Integer"
    assign $P27, 0
    store_lex "$result", $P27
.annotate 'line', 8
    new $P81, 'ExceptionHandler'
    set_label $P81, loop80_handler
    $P81."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P81
  loop80_test:
    find_lex $P28, "$i"
    set $N29, $P28
    find_lex $P30, "$len"
    set $N31, $P30
    islt $I32, $N29, $N31
    unless $I32, loop80_done
  loop80_redo:
    .const 'Sub' $P34 = "13_1300090347.43336" 
    capture_lex $P34
    $P34()
  loop80_next:
    goto loop80_test
  loop80_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P82, exception, 'type'
    eq $P82, .CONTROL_LOOP_NEXT, loop80_next
    eq $P82, .CONTROL_LOOP_REDO, loop80_redo
  loop80_done:
    pop_eh 
    find_lex $P83, "$result"
.annotate 'line', 3
    .return ($P83)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block33"  :anon :subid("13_1300090347.43336") :outer("12_1300090347.43336")
.annotate 'line', 9
    new $P35, "Undef"
    .lex "$char", $P35
.annotate 'line', 11
    new $P36, "Undef"
    .lex "$digitval", $P36
.annotate 'line', 9
    find_lex $P37, "$src"
    set $S38, $P37
    find_lex $P39, "$i"
    set $I40, $P39
    substr $S41, $S38, $I40, 1
    new $P42, 'String'
    set $P42, $S41
    store_lex "$char", $P42
.annotate 'line', 10
    find_lex $P44, "$char"
    set $S45, $P44
    iseq $I46, $S45, "_"
    unless $I46, if_43_end
    set $I47, .CONTROL_LOOP_NEXT
    die 0, $I47
  if_43_end:
.annotate 'line', 11
    find_lex $P48, "$char"
    set $S49, $P48
    index $I50, "00112233445566778899AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz", $S49
    new $P51, 'Integer'
    set $P51, $I50
    store_lex "$digitval", $P51
.annotate 'line', 12
    find_lex $P52, "$digitval"
    div $P53, $P52, 2
    set $I54, $P53
    new $P55, 'Integer'
    set $P55, $I54
    store_lex "$digitval", $P55
.annotate 'line', 13
    find_lex $P59, "$digitval"
    set $N60, $P59
    islt $I61, $N60, 0.0
    unless $I61, unless_58
    new $P57, 'Integer'
    set $P57, $I61
    goto unless_58_end
  unless_58:
    find_lex $P62, "$digitval"
    set $N63, $P62
    find_lex $P64, "$base"
    set $N65, $P64
    isge $I66, $N63, $N65
    new $P57, 'Integer'
    set $P57, $I66
  unless_58_end:
    unless $P57, if_56_end
.annotate 'line', 14
    find_lex $P67, "$src"
    new $P68, 'String'
    set $P68, "Invalid radix conversion of character '"
    find_lex $P69, "$char"
    concat $P70, $P68, $P69
    concat $P71, $P70, "'"
    $P67."panic"($P71)
  if_56_end:
.annotate 'line', 16
    find_lex $P72, "$base"
    find_lex $P73, "$result"
    mul $P74, $P72, $P73
    find_lex $P75, "$digitval"
    add $P76, $P74, $P75
    store_lex "$result", $P76
.annotate 'line', 17
    find_lex $P77, "$i"
    add $P78, $P77, 1
    store_lex "$i", $P78
    new $P79, "ResizablePMCArray"
    push $P79, $P76
    push $P79, $P78
.annotate 'line', 8
    .return ($P79)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "ints_to_string"  :subid("14_1300090347.43336") :outer("11_1300090347.43336")
    .param pmc param_87
.annotate 'line', 22
    .const 'Sub' $P93 = "15_1300090347.43336" 
    capture_lex $P93
    .lex "$ints", param_87
.annotate 'line', 23
    find_lex $P90, "$ints"
    does $I91, $P90, "array"
    if $I91, if_89
.annotate 'line', 30
    find_lex $P113, "$ints"
    $I114 = $P113."ast"()
    chr $S115, $I114
    new $P116, 'String'
    set $P116, $S115
.annotate 'line', 29
    set $P88, $P116
.annotate 'line', 23
    goto if_89_end
  if_89:
    .const 'Sub' $P93 = "15_1300090347.43336" 
    capture_lex $P93
    $P112 = $P93()
    set $P88, $P112
  if_89_end:
.annotate 'line', 22
    .return ($P88)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block92"  :anon :subid("15_1300090347.43336") :outer("14_1300090347.43336")
.annotate 'line', 23
    .const 'Sub' $P101 = "16_1300090347.43336" 
    capture_lex $P101
.annotate 'line', 24
    new $P94, "Undef"
    .lex "$result", $P94
    new $P95, "String"
    assign $P95, ""
    store_lex "$result", $P95
.annotate 'line', 25
    find_lex $P97, "$ints"
    defined $I98, $P97
    unless $I98, for_undef_62
    iter $P96, $P97
    new $P109, 'ExceptionHandler'
    set_label $P109, loop108_handler
    $P109."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P109
  loop108_test:
    unless $P96, loop108_done
    shift $P99, $P96
  loop108_redo:
    .const 'Sub' $P101 = "16_1300090347.43336" 
    capture_lex $P101
    $P101($P99)
  loop108_next:
    goto loop108_test
  loop108_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P110, exception, 'type'
    eq $P110, .CONTROL_LOOP_NEXT, loop108_next
    eq $P110, .CONTROL_LOOP_REDO, loop108_redo
  loop108_done:
    pop_eh 
  for_undef_62:
    find_lex $P111, "$result"
.annotate 'line', 23
    .return ($P111)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block100"  :anon :subid("16_1300090347.43336") :outer("15_1300090347.43336")
    .param pmc param_102
.annotate 'line', 25
    .lex "$_", param_102
.annotate 'line', 26
    find_lex $P103, "$result"
    find_lex $P104, "$_"
    $I105 = $P104."ast"()
    chr $S106, $I105
    concat $P107, $P103, $S106
    store_lex "$result", $P107
.annotate 'line', 25
    .return ($P107)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "CTXSAVE"  :subid("17_1300090347.43336") :outer("11_1300090347.43336")
    .param pmc param_122
.annotate 'line', 35
    .lex "self", param_122
.annotate 'line', 36
    get_hll_global $P123, ["PAST"], "Op"
.annotate 'line', 42
    new $P124, "ResizablePMCArray"
    push $P124, "    $P0 = find_dynamic_lex \"$*CTXSAVE\""
    push $P124, "    if null $P0 goto ctxsave_done"
    push $P124, "    $I0 = can $P0, \"ctxsave\""
    push $P124, "    unless $I0 goto ctxsave_done"
    push $P124, "    $P0.\"ctxsave\"()"
    push $P124, "  ctxsave_done:"
    $P125 = $P123."new"($P124 :named("inline"))
.annotate 'line', 35
    .return ($P125)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "SET_BLOCK_OUTER_CTX"  :subid("18_1300090347.43336") :outer("11_1300090347.43336")
    .param pmc param_127
    .param pmc param_128
.annotate 'line', 49
    .const 'Sub' $P138 = "19_1300090347.43336" 
    capture_lex $P138
    .lex "self", param_127
    .lex "$block", param_128
.annotate 'line', 50
    new $P129, "Undef"
    .lex "$outer_ctx", $P129
    find_dynamic_lex $P130, "%*COMPILING"
    unless_null $P130, vivify_63
    get_hll_global $P130, "%COMPILING"
    unless_null $P130, vivify_64
    die "Contextual %*COMPILING not found"
  vivify_64:
  vivify_63:
    set $P131, $P130["%?OPTIONS"]
    unless_null $P131, vivify_65
    $P131 = root_new ['parrot';'Hash']
  vivify_65:
    set $P132, $P131["outer_ctx"]
    unless_null $P132, vivify_66
    new $P132, "Undef"
  vivify_66:
    store_lex "$outer_ctx", $P132
.annotate 'line', 51
    find_lex $P135, "$outer_ctx"
    defined $I136, $P135
    if $I136, if_134
    new $P133, 'Integer'
    set $P133, $I136
    goto if_134_end
  if_134:
    .const 'Sub' $P138 = "19_1300090347.43336" 
    capture_lex $P138
    $P161 = $P138()
    set $P133, $P161
  if_134_end:
.annotate 'line', 49
    .return ($P133)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block137"  :anon :subid("19_1300090347.43336") :outer("18_1300090347.43336")
.annotate 'line', 51
    .const 'Sub' $P152 = "20_1300090347.43336" 
    capture_lex $P152
.annotate 'line', 52
    $P139 = root_new ['parrot';'ResizablePMCArray']
    .lex "@ns", $P139
    find_lex $P140, "$outer_ctx"
    getattribute $P141, $P140, "current_namespace"
    $P142 = $P141."get_name"()
    store_lex "@ns", $P142
.annotate 'line', 53
    find_lex $P143, "@ns"
    $P143."shift"()
.annotate 'line', 54
    find_lex $P144, "$block"
    find_lex $P145, "@ns"
    $P144."namespace"($P145)
.annotate 'line', 55
    find_lex $P147, "$outer_ctx"
    $P148 = $P147."lexpad_full"()
    defined $I149, $P148
    unless $I149, for_undef_67
    iter $P146, $P148
    new $P159, 'ExceptionHandler'
    set_label $P159, loop158_handler
    $P159."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P159
  loop158_test:
    unless $P146, loop158_done
    shift $P150, $P146
  loop158_redo:
    .const 'Sub' $P152 = "20_1300090347.43336" 
    capture_lex $P152
    $P152($P150)
  loop158_next:
    goto loop158_test
  loop158_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P160, exception, 'type'
    eq $P160, .CONTROL_LOOP_NEXT, loop158_next
    eq $P160, .CONTROL_LOOP_REDO, loop158_redo
  loop158_done:
    pop_eh 
  for_undef_67:
.annotate 'line', 51
    .return ($P146)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block151"  :anon :subid("20_1300090347.43336") :outer("19_1300090347.43336")
    .param pmc param_153
.annotate 'line', 55
    .lex "$_", param_153
.annotate 'line', 56
    find_lex $P154, "$block"
    find_lex $P155, "$_"
    $P156 = $P155."key"()
    $P157 = $P154."symbol"($P156, "lexical" :named("scope"))
.annotate 'line', 55
    .return ($P157)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "EXPR"  :subid("21_1300090347.43336") :outer("11_1300090347.43336")
    .param pmc param_165
    .param pmc param_166
    .param pmc param_167 :optional
    .param int has_param_167 :opt_flag
.annotate 'line', 62
    .const 'Sub' $P246 = "23_1300090347.43336" 
    capture_lex $P246
    .const 'Sub' $P213 = "22_1300090347.43336" 
    capture_lex $P213
    new $P164, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P164, control_163
    push_eh $P164
    .lex "self", param_165
    .lex "$/", param_166
    if has_param_167, optparam_68
    new $P168, "Undef"
    set param_167, $P168
  optparam_68:
    .lex "$key", param_167
.annotate 'line', 64
    new $P169, "Undef"
    .lex "$past", $P169
.annotate 'line', 63
    find_lex $P171, "$key"
    if $P171, unless_170_end
    new $P172, "Exception"
    set $P172['type'], .CONTROL_RETURN
    new $P173, "Integer"
    assign $P173, 0
    setattribute $P172, 'payload', $P173
    throw $P172
  unless_170_end:
.annotate 'line', 64
    find_lex $P175, "$/"
    $P176 = $P175."ast"()
    set $P174, $P176
    defined $I178, $P174
    if $I178, default_177
    find_lex $P179, "$/"
    unless_null $P179, vivify_69
    $P179 = root_new ['parrot';'Hash']
  vivify_69:
    set $P180, $P179["OPER"]
    unless_null $P180, vivify_70
    new $P180, "Undef"
  vivify_70:
    $P181 = $P180."ast"()
    set $P174, $P181
  default_177:
    store_lex "$past", $P174
.annotate 'line', 65
    find_lex $P183, "$past"
    if $P183, unless_182_end
.annotate 'line', 66
    get_hll_global $P184, ["PAST"], "Op"
    find_lex $P185, "$/"
    $P186 = $P184."new"($P185 :named("node"))
    store_lex "$past", $P186
.annotate 'line', 67
    find_lex $P188, "$/"
    unless_null $P188, vivify_71
    $P188 = root_new ['parrot';'Hash']
  vivify_71:
    set $P189, $P188["OPER"]
    unless_null $P189, vivify_72
    $P189 = root_new ['parrot';'Hash']
  vivify_72:
    set $P190, $P189["O"]
    unless_null $P190, vivify_73
    $P190 = root_new ['parrot';'Hash']
  vivify_73:
    set $P191, $P190["pasttype"]
    unless_null $P191, vivify_74
    new $P191, "Undef"
  vivify_74:
    if $P191, if_187
.annotate 'line', 68
    find_lex $P199, "$/"
    unless_null $P199, vivify_75
    $P199 = root_new ['parrot';'Hash']
  vivify_75:
    set $P200, $P199["OPER"]
    unless_null $P200, vivify_76
    $P200 = root_new ['parrot';'Hash']
  vivify_76:
    set $P201, $P200["O"]
    unless_null $P201, vivify_77
    $P201 = root_new ['parrot';'Hash']
  vivify_77:
    set $P202, $P201["pirop"]
    unless_null $P202, vivify_78
    new $P202, "Undef"
  vivify_78:
    unless $P202, if_198_end
    find_lex $P203, "$past"
    find_lex $P204, "$/"
    unless_null $P204, vivify_79
    $P204 = root_new ['parrot';'Hash']
  vivify_79:
    set $P205, $P204["OPER"]
    unless_null $P205, vivify_80
    $P205 = root_new ['parrot';'Hash']
  vivify_80:
    set $P206, $P205["O"]
    unless_null $P206, vivify_81
    $P206 = root_new ['parrot';'Hash']
  vivify_81:
    set $P207, $P206["pirop"]
    unless_null $P207, vivify_82
    new $P207, "Undef"
  vivify_82:
    set $S208, $P207
    $P203."pirop"($S208)
  if_198_end:
    goto if_187_end
  if_187:
.annotate 'line', 67
    find_lex $P192, "$past"
    find_lex $P193, "$/"
    unless_null $P193, vivify_83
    $P193 = root_new ['parrot';'Hash']
  vivify_83:
    set $P194, $P193["OPER"]
    unless_null $P194, vivify_84
    $P194 = root_new ['parrot';'Hash']
  vivify_84:
    set $P195, $P194["O"]
    unless_null $P195, vivify_85
    $P195 = root_new ['parrot';'Hash']
  vivify_85:
    set $P196, $P195["pasttype"]
    unless_null $P196, vivify_86
    new $P196, "Undef"
  vivify_86:
    set $S197, $P196
    $P192."pasttype"($S197)
  if_187_end:
.annotate 'line', 69
    find_lex $P210, "$past"
    $P211 = $P210."name"()
    if $P211, unless_209_end
    .const 'Sub' $P213 = "22_1300090347.43336" 
    capture_lex $P213
    $P213()
  unless_209_end:
  unless_182_end:
.annotate 'line', 80
    find_lex $P233, "$key"
    set $S234, $P233
    iseq $I235, $S234, "POSTFIX"
    if $I235, if_232
.annotate 'line', 82
    find_lex $P241, "$/"
    $P242 = $P241."list"()
    defined $I243, $P242
    unless $I243, for_undef_90
    iter $P240, $P242
    new $P258, 'ExceptionHandler'
    set_label $P258, loop257_handler
    $P258."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P258
  loop257_test:
    unless $P240, loop257_done
    shift $P244, $P240
  loop257_redo:
    .const 'Sub' $P246 = "23_1300090347.43336" 
    capture_lex $P246
    $P246($P244)
  loop257_next:
    goto loop257_test
  loop257_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P259, exception, 'type'
    eq $P259, .CONTROL_LOOP_NEXT, loop257_next
    eq $P259, .CONTROL_LOOP_REDO, loop257_redo
  loop257_done:
    pop_eh 
  for_undef_90:
.annotate 'line', 81
    goto if_232_end
  if_232:
.annotate 'line', 80
    find_lex $P236, "$past"
    find_lex $P237, "$/"
    unless_null $P237, vivify_91
    $P237 = root_new ['parrot';'ResizablePMCArray']
  vivify_91:
    set $P238, $P237[0]
    unless_null $P238, vivify_92
    new $P238, "Undef"
  vivify_92:
    $P239 = $P238."ast"()
    $P236."unshift"($P239)
  if_232_end:
.annotate 'line', 84
    find_lex $P260, "$/"
    find_lex $P261, "$past"
    $P262 = $P260."!make"($P261)
.annotate 'line', 62
    .return ($P262)
  control_163:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P263, exception, "payload"
    .return ($P263)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block212"  :anon :subid("22_1300090347.43336") :outer("21_1300090347.43336")
.annotate 'line', 71
    new $P214, "Undef"
    .lex "$name", $P214
.annotate 'line', 70
    find_lex $P216, "$key"
    set $S217, $P216
    iseq $I218, $S217, "LIST"
    unless $I218, if_215_end
    new $P219, "String"
    assign $P219, "infix"
    store_lex "$key", $P219
  if_215_end:
.annotate 'line', 71

                $P0 = find_lex '$key'
                $S0 = $P0
                $S0 = downcase $S0
                $P220 = box $S0
            
    concat $P221, $P220, ":<"
.annotate 'line', 76
    find_lex $P222, "$/"
    unless_null $P222, vivify_87
    $P222 = root_new ['parrot';'Hash']
  vivify_87:
    set $P223, $P222["OPER"]
    unless_null $P223, vivify_88
    $P223 = root_new ['parrot';'Hash']
  vivify_88:
    set $P224, $P223["sym"]
    unless_null $P224, vivify_89
    new $P224, "Undef"
  vivify_89:
    concat $P225, $P221, $P224
    concat $P226, $P225, ">"
    store_lex "$name", $P226
.annotate 'line', 77
    find_lex $P227, "$past"
    new $P228, "String"
    assign $P228, "&"
    find_lex $P229, "$name"
    concat $P230, $P228, $P229
    $P231 = $P227."name"($P230)
.annotate 'line', 69
    .return ($P231)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block245"  :anon :subid("23_1300090347.43336") :outer("21_1300090347.43336")
    .param pmc param_247
.annotate 'line', 82
    .lex "$_", param_247
    find_lex $P250, "$_"
    $P251 = $P250."ast"()
    defined $I252, $P251
    if $I252, if_249
    new $P248, 'Integer'
    set $P248, $I252
    goto if_249_end
  if_249:
    find_lex $P253, "$past"
    find_lex $P254, "$_"
    $P255 = $P254."ast"()
    $P256 = $P253."push"($P255)
    set $P248, $P256
  if_249_end:
    .return ($P248)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "term:sym<circumfix>"  :subid("24_1300090347.43336") :outer("11_1300090347.43336")
    .param pmc param_265
    .param pmc param_266
.annotate 'line', 87
    .lex "self", param_265
    .lex "$/", param_266
    find_lex $P267, "$/"
    find_lex $P268, "$/"
    unless_null $P268, vivify_93
    $P268 = root_new ['parrot';'Hash']
  vivify_93:
    set $P269, $P268["circumfix"]
    unless_null $P269, vivify_94
    new $P269, "Undef"
  vivify_94:
    $P270 = $P269."ast"()
    $P271 = $P267."!make"($P270)
    .return ($P271)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "termish"  :subid("25_1300090347.43336") :outer("11_1300090347.43336")
    .param pmc param_273
    .param pmc param_274
.annotate 'line', 89
    .lex "self", param_273
    .lex "$/", param_274
    find_lex $P275, "$/"
    find_lex $P276, "$/"
    unless_null $P276, vivify_95
    $P276 = root_new ['parrot';'Hash']
  vivify_95:
    set $P277, $P276["term"]
    unless_null $P277, vivify_96
    new $P277, "Undef"
  vivify_96:
    $P278 = $P277."ast"()
    $P279 = $P275."!make"($P278)
    .return ($P279)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "nullterm"  :subid("26_1300090347.43336") :outer("11_1300090347.43336")
    .param pmc param_281
    .param pmc param_282
.annotate 'line', 90
    .lex "self", param_281
    .lex "$/", param_282
    find_lex $P283, "$/"
    new $P284, "Undef"
    $P285 = $P283."!make"($P284)
    .return ($P285)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "nullterm_alt"  :subid("27_1300090347.43336") :outer("11_1300090347.43336")
    .param pmc param_287
    .param pmc param_288
.annotate 'line', 91
    .lex "self", param_287
    .lex "$/", param_288
    find_lex $P289, "$/"
    find_lex $P290, "$/"
    unless_null $P290, vivify_97
    $P290 = root_new ['parrot';'Hash']
  vivify_97:
    set $P291, $P290["term"]
    unless_null $P291, vivify_98
    new $P291, "Undef"
  vivify_98:
    $P292 = $P291."ast"()
    $P293 = $P289."!make"($P292)
    .return ($P293)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "integer"  :subid("28_1300090347.43336") :outer("11_1300090347.43336")
    .param pmc param_295
    .param pmc param_296
.annotate 'line', 93
    .lex "self", param_295
    .lex "$/", param_296
    find_lex $P297, "$/"
    find_lex $P298, "$/"
    unless_null $P298, vivify_99
    $P298 = root_new ['parrot';'Hash']
  vivify_99:
    set $P299, $P298["VALUE"]
    unless_null $P299, vivify_100
    new $P299, "Undef"
  vivify_100:
    $P300 = $P299."ast"()
    $P301 = $P297."!make"($P300)
    .return ($P301)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "dec_number"  :subid("29_1300090347.43336") :outer("11_1300090347.43336")
    .param pmc param_303
    .param pmc param_304
.annotate 'line', 95
    .lex "self", param_303
    .lex "$/", param_304
    find_lex $P305, "$/"
    find_lex $P306, "$/"
    set $N307, $P306
    $P308 = $P305."!make"($N307)
    .return ($P308)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "decint"  :subid("30_1300090347.43336") :outer("11_1300090347.43336")
    .param pmc param_310
    .param pmc param_311
.annotate 'line', 97
    .lex "self", param_310
    .lex "$/", param_311
    find_lex $P312, "$/"
    find_lex $P313, "$/"
    $P314 = "string_to_int"($P313, 10)
    $P315 = $P312."!make"($P314)
    .return ($P315)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "hexint"  :subid("31_1300090347.43336") :outer("11_1300090347.43336")
    .param pmc param_317
    .param pmc param_318
.annotate 'line', 98
    .lex "self", param_317
    .lex "$/", param_318
    find_lex $P319, "$/"
    find_lex $P320, "$/"
    $P321 = "string_to_int"($P320, 16)
    $P322 = $P319."!make"($P321)
    .return ($P322)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "octint"  :subid("32_1300090347.43336") :outer("11_1300090347.43336")
    .param pmc param_324
    .param pmc param_325
.annotate 'line', 99
    .lex "self", param_324
    .lex "$/", param_325
    find_lex $P326, "$/"
    find_lex $P327, "$/"
    $P328 = "string_to_int"($P327, 8)
    $P329 = $P326."!make"($P328)
    .return ($P329)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "binint"  :subid("33_1300090347.43336") :outer("11_1300090347.43336")
    .param pmc param_331
    .param pmc param_332
.annotate 'line', 100
    .lex "self", param_331
    .lex "$/", param_332
    find_lex $P333, "$/"
    find_lex $P334, "$/"
    $P335 = "string_to_int"($P334, 2)
    $P336 = $P333."!make"($P335)
    .return ($P336)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_EXPR"  :subid("34_1300090347.43336") :outer("11_1300090347.43336")
    .param pmc param_338
    .param pmc param_339
.annotate 'line', 102
    .const 'Sub' $P355 = "35_1300090347.43336" 
    capture_lex $P355
    .lex "self", param_338
    .lex "$/", param_339
.annotate 'line', 103
    new $P340, "Undef"
    .lex "$past", $P340
    find_lex $P341, "$/"
    unless_null $P341, vivify_101
    $P341 = root_new ['parrot';'Hash']
  vivify_101:
    set $P342, $P341["quote_delimited"]
    unless_null $P342, vivify_102
    new $P342, "Undef"
  vivify_102:
    $P343 = $P342."ast"()
    store_lex "$past", $P343
.annotate 'line', 104
    find_lex $P345, "$/"
    $P346 = $P345."CURSOR"()
    $P347 = $P346."quotemod_check"("w")
    unless $P347, if_344_end
.annotate 'line', 105
    get_hll_global $P349, ["PAST"], "Node"
    find_lex $P350, "$past"
    $P351 = $P349."ACCEPTS"($P350)
    if $P351, if_348
.annotate 'line', 108
    .const 'Sub' $P355 = "35_1300090347.43336" 
    capture_lex $P355
    $P355()
    goto if_348_end
  if_348:
.annotate 'line', 106
    find_lex $P352, "$/"
    $P353 = $P352."CURSOR"()
    $P353."panic"("Can't form :w list from non-constant strings (yet)")
  if_348_end:
  if_344_end:
.annotate 'line', 119
    get_hll_global $P387, ["PAST"], "Node"
    find_lex $P388, "$past"
    $P389 = $P387."ACCEPTS"($P388)
    isfalse $I390, $P389
    unless $I390, if_386_end
.annotate 'line', 120
    get_hll_global $P391, ["PAST"], "Val"
    find_lex $P392, "$past"
    set $S393, $P392
    $P394 = $P391."new"($S393 :named("value"))
    store_lex "$past", $P394
  if_386_end:
.annotate 'line', 122
    find_lex $P395, "$/"
    find_lex $P396, "$past"
    $P397 = $P395."!make"($P396)
.annotate 'line', 102
    .return ($P397)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block354"  :anon :subid("35_1300090347.43336") :outer("34_1300090347.43336")
.annotate 'line', 108
    .const 'Sub' $P374 = "36_1300090347.43336" 
    capture_lex $P374
.annotate 'line', 109
    $P356 = root_new ['parrot';'ResizablePMCArray']
    .lex "@words", $P356
    get_hll_global $P357, ["HLL";"Grammar"], "split_words"
    find_lex $P358, "$/"
    find_lex $P359, "$past"
    $P360 = $P357($P358, $P359)
    store_lex "@words", $P360
.annotate 'line', 110
    find_lex $P363, "@words"
    set $N364, $P363
    isne $I365, $N364, 1.0
    if $I365, if_362
.annotate 'line', 115
    find_lex $P382, "@words"
    unless_null $P382, vivify_103
    $P382 = root_new ['parrot';'ResizablePMCArray']
  vivify_103:
    set $P383, $P382[0]
    unless_null $P383, vivify_104
    new $P383, "Undef"
  vivify_104:
    set $S384, $P383
    new $P385, 'String'
    set $P385, $S384
    store_lex "$past", $P385
.annotate 'line', 114
    set $P361, $P385
.annotate 'line', 110
    goto if_362_end
  if_362:
.annotate 'line', 111
    get_hll_global $P366, ["PAST"], "Op"
    find_lex $P367, "$/"
    $P368 = $P366."new"("list" :named("pasttype"), $P367 :named("node"))
    store_lex "$past", $P368
.annotate 'line', 112
    find_lex $P370, "@words"
    defined $I371, $P370
    unless $I371, for_undef_105
    iter $P369, $P370
    new $P380, 'ExceptionHandler'
    set_label $P380, loop379_handler
    $P380."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P380
  loop379_test:
    unless $P369, loop379_done
    shift $P372, $P369
  loop379_redo:
    .const 'Sub' $P374 = "36_1300090347.43336" 
    capture_lex $P374
    $P374($P372)
  loop379_next:
    goto loop379_test
  loop379_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P381, exception, 'type'
    eq $P381, .CONTROL_LOOP_NEXT, loop379_next
    eq $P381, .CONTROL_LOOP_REDO, loop379_redo
  loop379_done:
    pop_eh 
  for_undef_105:
.annotate 'line', 110
    set $P361, $P369
  if_362_end:
.annotate 'line', 108
    .return ($P361)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block373"  :anon :subid("36_1300090347.43336") :outer("35_1300090347.43336")
    .param pmc param_375
.annotate 'line', 112
    .lex "$_", param_375
    find_lex $P376, "$past"
    find_lex $P377, "$_"
    $P378 = $P376."push"($P377)
    .return ($P378)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "quote_delimited"  :subid("37_1300090347.43336") :outer("11_1300090347.43336")
    .param pmc param_399
    .param pmc param_400
.annotate 'line', 125
    .const 'Sub' $P412 = "38_1300090347.43336" 
    capture_lex $P412
    .lex "self", param_399
    .lex "$/", param_400
.annotate 'line', 126
    $P401 = root_new ['parrot';'ResizablePMCArray']
    .lex "@parts", $P401
.annotate 'line', 127
    new $P402, "Undef"
    .lex "$lastlit", $P402
.annotate 'line', 143
    new $P403, "Undef"
    .lex "$past", $P403
.annotate 'line', 125
    find_lex $P404, "@parts"
.annotate 'line', 127
    new $P405, "String"
    assign $P405, ""
    store_lex "$lastlit", $P405
.annotate 'line', 128
    find_lex $P407, "$/"
    unless_null $P407, vivify_106
    $P407 = root_new ['parrot';'Hash']
  vivify_106:
    set $P408, $P407["quote_atom"]
    unless_null $P408, vivify_107
    new $P408, "Undef"
  vivify_107:
    defined $I409, $P408
    unless $I409, for_undef_108
    iter $P406, $P408
    new $P445, 'ExceptionHandler'
    set_label $P445, loop444_handler
    $P445."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P445
  loop444_test:
    unless $P406, loop444_done
    shift $P410, $P406
  loop444_redo:
    .const 'Sub' $P412 = "38_1300090347.43336" 
    capture_lex $P412
    $P412($P410)
  loop444_next:
    goto loop444_test
  loop444_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P446, exception, 'type'
    eq $P446, .CONTROL_LOOP_NEXT, loop444_next
    eq $P446, .CONTROL_LOOP_REDO, loop444_redo
  loop444_done:
    pop_eh 
  for_undef_108:
.annotate 'line', 142
    find_lex $P448, "$lastlit"
    set $S449, $P448
    isgt $I450, $S449, ""
    unless $I450, if_447_end
    find_lex $P451, "@parts"
    find_lex $P452, "$lastlit"
    $P451."push"($P452)
  if_447_end:
.annotate 'line', 143
    find_lex $P455, "@parts"
    if $P455, if_454
    new $P458, "String"
    assign $P458, ""
    set $P453, $P458
    goto if_454_end
  if_454:
    find_lex $P456, "@parts"
    $P457 = $P456."shift"()
    set $P453, $P457
  if_454_end:
    store_lex "$past", $P453
.annotate 'line', 144
    new $P466, 'ExceptionHandler'
    set_label $P466, loop465_handler
    $P466."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P466
  loop465_test:
    find_lex $P459, "@parts"
    unless $P459, loop465_done
  loop465_redo:
.annotate 'line', 145
    get_hll_global $P460, ["PAST"], "Op"
    find_lex $P461, "$past"
    find_lex $P462, "@parts"
    $P463 = $P462."shift"()
    $P464 = $P460."new"($P461, $P463, "concat" :named("pirop"))
    store_lex "$past", $P464
  loop465_next:
.annotate 'line', 144
    goto loop465_test
  loop465_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P467, exception, 'type'
    eq $P467, .CONTROL_LOOP_NEXT, loop465_next
    eq $P467, .CONTROL_LOOP_REDO, loop465_redo
  loop465_done:
    pop_eh 
.annotate 'line', 147
    find_lex $P468, "$/"
    find_lex $P469, "$past"
    $P470 = $P468."!make"($P469)
.annotate 'line', 125
    .return ($P470)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block411"  :anon :subid("38_1300090347.43336") :outer("37_1300090347.43336")
    .param pmc param_414
.annotate 'line', 129
    new $P413, "Undef"
    .lex "$ast", $P413
    .lex "$_", param_414
    find_lex $P415, "$_"
    $P416 = $P415."ast"()
    store_lex "$ast", $P416
.annotate 'line', 130
    get_hll_global $P419, ["PAST"], "Node"
    find_lex $P420, "$ast"
    $P421 = $P419."ACCEPTS"($P420)
    isfalse $I422, $P421
    if $I422, if_418
.annotate 'line', 133
    find_lex $P428, "$ast"
    get_hll_global $P429, ["PAST"], "Val"
    $P430 = $P428."isa"($P429)
    if $P430, if_427
.annotate 'line', 137
    find_lex $P436, "$lastlit"
    set $S437, $P436
    isgt $I438, $S437, ""
    unless $I438, if_435_end
    find_lex $P439, "@parts"
    find_lex $P440, "$lastlit"
    $P439."push"($P440)
  if_435_end:
.annotate 'line', 138
    find_lex $P441, "@parts"
    find_lex $P442, "$ast"
    $P441."push"($P442)
.annotate 'line', 139
    new $P443, "String"
    assign $P443, ""
    store_lex "$lastlit", $P443
.annotate 'line', 136
    set $P426, $P443
.annotate 'line', 133
    goto if_427_end
  if_427:
.annotate 'line', 134
    find_lex $P431, "$lastlit"
    find_lex $P432, "$ast"
    $S433 = $P432."value"()
    concat $P434, $P431, $S433
    store_lex "$lastlit", $P434
.annotate 'line', 133
    set $P426, $P434
  if_427_end:
    set $P417, $P426
.annotate 'line', 130
    goto if_418_end
  if_418:
.annotate 'line', 131
    find_lex $P423, "$lastlit"
    find_lex $P424, "$ast"
    concat $P425, $P423, $P424
    store_lex "$lastlit", $P425
.annotate 'line', 130
    set $P417, $P425
  if_418_end:
.annotate 'line', 128
    .return ($P417)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_atom"  :subid("39_1300090347.43336") :outer("11_1300090347.43336")
    .param pmc param_472
    .param pmc param_473
.annotate 'line', 150
    .lex "self", param_472
    .lex "$/", param_473
.annotate 'line', 151
    find_lex $P474, "$/"
    find_lex $P477, "$/"
    unless_null $P477, vivify_109
    $P477 = root_new ['parrot';'Hash']
  vivify_109:
    set $P478, $P477["quote_escape"]
    unless_null $P478, vivify_110
    new $P478, "Undef"
  vivify_110:
    if $P478, if_476
    find_lex $P482, "$/"
    set $S483, $P482
    new $P475, 'String'
    set $P475, $S483
    goto if_476_end
  if_476:
    find_lex $P479, "$/"
    unless_null $P479, vivify_111
    $P479 = root_new ['parrot';'Hash']
  vivify_111:
    set $P480, $P479["quote_escape"]
    unless_null $P480, vivify_112
    new $P480, "Undef"
  vivify_112:
    $P481 = $P480."ast"()
    set $P475, $P481
  if_476_end:
    $P484 = $P474."!make"($P475)
.annotate 'line', 150
    .return ($P484)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<backslash>"  :subid("40_1300090347.43336") :outer("11_1300090347.43336")
    .param pmc param_486
    .param pmc param_487
.annotate 'line', 154
    .lex "self", param_486
    .lex "$/", param_487
    find_lex $P488, "$/"
    $P489 = $P488."!make"("\\")
    .return ($P489)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<stopper>"  :subid("41_1300090347.43336") :outer("11_1300090347.43336")
    .param pmc param_491
    .param pmc param_492
.annotate 'line', 155
    .lex "self", param_491
    .lex "$/", param_492
    find_lex $P493, "$/"
    find_lex $P494, "$/"
    unless_null $P494, vivify_113
    $P494 = root_new ['parrot';'Hash']
  vivify_113:
    set $P495, $P494["stopper"]
    unless_null $P495, vivify_114
    new $P495, "Undef"
  vivify_114:
    set $S496, $P495
    $P497 = $P493."!make"($S496)
    .return ($P497)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<bs>"  :subid("42_1300090347.43336") :outer("11_1300090347.43336")
    .param pmc param_499
    .param pmc param_500
.annotate 'line', 157
    .lex "self", param_499
    .lex "$/", param_500
    find_lex $P501, "$/"
    $P502 = $P501."!make"("\b")
    .return ($P502)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<nl>"  :subid("43_1300090347.43336") :outer("11_1300090347.43336")
    .param pmc param_504
    .param pmc param_505
.annotate 'line', 158
    .lex "self", param_504
    .lex "$/", param_505
    find_lex $P506, "$/"
    $P507 = $P506."!make"("\n")
    .return ($P507)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<cr>"  :subid("44_1300090347.43336") :outer("11_1300090347.43336")
    .param pmc param_509
    .param pmc param_510
.annotate 'line', 159
    .lex "self", param_509
    .lex "$/", param_510
    find_lex $P511, "$/"
    $P512 = $P511."!make"("\r")
    .return ($P512)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<tab>"  :subid("45_1300090347.43336") :outer("11_1300090347.43336")
    .param pmc param_514
    .param pmc param_515
.annotate 'line', 160
    .lex "self", param_514
    .lex "$/", param_515
    find_lex $P516, "$/"
    $P517 = $P516."!make"("\t")
    .return ($P517)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<ff>"  :subid("46_1300090347.43336") :outer("11_1300090347.43336")
    .param pmc param_519
    .param pmc param_520
.annotate 'line', 161
    .lex "self", param_519
    .lex "$/", param_520
    find_lex $P521, "$/"
    $P522 = $P521."!make"("\f")
    .return ($P522)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<esc>"  :subid("47_1300090347.43336") :outer("11_1300090347.43336")
    .param pmc param_524
    .param pmc param_525
.annotate 'line', 162
    .lex "self", param_524
    .lex "$/", param_525
    find_lex $P526, "$/"
    $P527 = $P526."!make"("\e")
    .return ($P527)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<hex>"  :subid("48_1300090347.43336") :outer("11_1300090347.43336")
    .param pmc param_529
    .param pmc param_530
.annotate 'line', 164
    .lex "self", param_529
    .lex "$/", param_530
.annotate 'line', 165
    find_lex $P531, "$/"
    find_lex $P534, "$/"
    unless_null $P534, vivify_115
    $P534 = root_new ['parrot';'Hash']
  vivify_115:
    set $P535, $P534["hexint"]
    unless_null $P535, vivify_116
    new $P535, "Undef"
  vivify_116:
    if $P535, if_533
    find_lex $P538, "$/"
    unless_null $P538, vivify_117
    $P538 = root_new ['parrot';'Hash']
  vivify_117:
    set $P539, $P538["hexints"]
    unless_null $P539, vivify_118
    $P539 = root_new ['parrot';'Hash']
  vivify_118:
    set $P540, $P539["hexint"]
    unless_null $P540, vivify_119
    new $P540, "Undef"
  vivify_119:
    set $P532, $P540
    goto if_533_end
  if_533:
    find_lex $P536, "$/"
    unless_null $P536, vivify_120
    $P536 = root_new ['parrot';'Hash']
  vivify_120:
    set $P537, $P536["hexint"]
    unless_null $P537, vivify_121
    new $P537, "Undef"
  vivify_121:
    set $P532, $P537
  if_533_end:
    $P541 = "ints_to_string"($P532)
    $P542 = $P531."!make"($P541)
.annotate 'line', 164
    .return ($P542)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<oct>"  :subid("49_1300090347.43336") :outer("11_1300090347.43336")
    .param pmc param_544
    .param pmc param_545
.annotate 'line', 168
    .lex "self", param_544
    .lex "$/", param_545
.annotate 'line', 169
    find_lex $P546, "$/"
    find_lex $P549, "$/"
    unless_null $P549, vivify_122
    $P549 = root_new ['parrot';'Hash']
  vivify_122:
    set $P550, $P549["octint"]
    unless_null $P550, vivify_123
    new $P550, "Undef"
  vivify_123:
    if $P550, if_548
    find_lex $P553, "$/"
    unless_null $P553, vivify_124
    $P553 = root_new ['parrot';'Hash']
  vivify_124:
    set $P554, $P553["octints"]
    unless_null $P554, vivify_125
    $P554 = root_new ['parrot';'Hash']
  vivify_125:
    set $P555, $P554["octint"]
    unless_null $P555, vivify_126
    new $P555, "Undef"
  vivify_126:
    set $P547, $P555
    goto if_548_end
  if_548:
    find_lex $P551, "$/"
    unless_null $P551, vivify_127
    $P551 = root_new ['parrot';'Hash']
  vivify_127:
    set $P552, $P551["octint"]
    unless_null $P552, vivify_128
    new $P552, "Undef"
  vivify_128:
    set $P547, $P552
  if_548_end:
    $P556 = "ints_to_string"($P547)
    $P557 = $P546."!make"($P556)
.annotate 'line', 168
    .return ($P557)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<chr>"  :subid("50_1300090347.43336") :outer("11_1300090347.43336")
    .param pmc param_559
    .param pmc param_560
.annotate 'line', 172
    .lex "self", param_559
    .lex "$/", param_560
.annotate 'line', 173
    find_lex $P561, "$/"
    find_lex $P562, "$/"
    unless_null $P562, vivify_129
    $P562 = root_new ['parrot';'Hash']
  vivify_129:
    set $P563, $P562["charspec"]
    unless_null $P563, vivify_130
    new $P563, "Undef"
  vivify_130:
    $P564 = $P563."ast"()
    $P565 = $P561."!make"($P564)
.annotate 'line', 172
    .return ($P565)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<0>"  :subid("51_1300090347.43336") :outer("11_1300090347.43336")
    .param pmc param_567
    .param pmc param_568
.annotate 'line', 176
    .lex "self", param_567
    .lex "$/", param_568
.annotate 'line', 177
    find_lex $P569, "$/"
    $P570 = $P569."!make"(unicode:"\x{0}")
.annotate 'line', 176
    .return ($P570)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<misc>"  :subid("52_1300090347.43336") :outer("11_1300090347.43336")
    .param pmc param_572
    .param pmc param_573
.annotate 'line', 180
    .lex "self", param_572
    .lex "$/", param_573
.annotate 'line', 181
    find_lex $P574, "$/"
    find_lex $P577, "$/"
    unless_null $P577, vivify_131
    $P577 = root_new ['parrot';'Hash']
  vivify_131:
    set $P578, $P577["textq"]
    unless_null $P578, vivify_132
    new $P578, "Undef"
  vivify_132:
    if $P578, if_576
    find_lex $P584, "$/"
    unless_null $P584, vivify_133
    $P584 = root_new ['parrot';'Hash']
  vivify_133:
    set $P585, $P584["textqq"]
    unless_null $P585, vivify_134
    new $P585, "Undef"
  vivify_134:
    $P586 = $P585."Str"()
    set $P575, $P586
    goto if_576_end
  if_576:
    new $P579, "String"
    assign $P579, "\\"
    find_lex $P580, "$/"
    unless_null $P580, vivify_135
    $P580 = root_new ['parrot';'Hash']
  vivify_135:
    set $P581, $P580["textq"]
    unless_null $P581, vivify_136
    new $P581, "Undef"
  vivify_136:
    $S582 = $P581."Str"()
    concat $P583, $P579, $S582
    set $P575, $P583
  if_576_end:
    $P587 = $P574."!make"($P575)
.annotate 'line', 180
    .return ($P587)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "charname"  :subid("53_1300090347.43336") :outer("11_1300090347.43336")
    .param pmc param_589
    .param pmc param_590
.annotate 'line', 184
    .lex "self", param_589
    .lex "$/", param_590
.annotate 'line', 185
    new $P591, "Undef"
    .lex "$codepoint", $P591
.annotate 'line', 186
    find_lex $P594, "$/"
    unless_null $P594, vivify_137
    $P594 = root_new ['parrot';'Hash']
  vivify_137:
    set $P595, $P594["integer"]
    unless_null $P595, vivify_138
    new $P595, "Undef"
  vivify_138:
    if $P595, if_593
.annotate 'line', 187
    find_lex $P599, "$/"
    set $S600, $P599
    find_codepoint $I601, $S600
    new $P592, 'Integer'
    set $P592, $I601
.annotate 'line', 186
    goto if_593_end
  if_593:
    find_lex $P596, "$/"
    unless_null $P596, vivify_139
    $P596 = root_new ['parrot';'Hash']
  vivify_139:
    set $P597, $P596["integer"]
    unless_null $P597, vivify_140
    new $P597, "Undef"
  vivify_140:
    $P598 = $P597."ast"()
    set $P592, $P598
  if_593_end:
    store_lex "$codepoint", $P592
.annotate 'line', 188
    find_lex $P603, "$codepoint"
    set $N604, $P603
    islt $I605, $N604, 0.0
    unless $I605, if_602_end
    find_lex $P606, "$/"
    $P607 = $P606."CURSOR"()
    new $P608, 'String'
    set $P608, "Unrecognized character name "
    find_lex $P609, "$/"
    concat $P610, $P608, $P609
    $P607."panic"($P610)
  if_602_end:
.annotate 'line', 189
    find_lex $P611, "$/"
    find_lex $P612, "$codepoint"
    set $I613, $P612
    chr $S614, $I613
    $P615 = $P611."!make"($S614)
.annotate 'line', 184
    .return ($P615)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "charnames"  :subid("54_1300090347.43336") :outer("11_1300090347.43336")
    .param pmc param_617
    .param pmc param_618
.annotate 'line', 192
    .const 'Sub' $P627 = "55_1300090347.43336" 
    capture_lex $P627
    .lex "self", param_617
    .lex "$/", param_618
.annotate 'line', 193
    new $P619, "Undef"
    .lex "$str", $P619
    new $P620, "String"
    assign $P620, ""
    store_lex "$str", $P620
.annotate 'line', 194
    find_lex $P622, "$/"
    unless_null $P622, vivify_141
    $P622 = root_new ['parrot';'Hash']
  vivify_141:
    set $P623, $P622["charname"]
    unless_null $P623, vivify_142
    new $P623, "Undef"
  vivify_142:
    defined $I624, $P623
    unless $I624, for_undef_143
    iter $P621, $P623
    new $P634, 'ExceptionHandler'
    set_label $P634, loop633_handler
    $P634."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P634
  loop633_test:
    unless $P621, loop633_done
    shift $P625, $P621
  loop633_redo:
    .const 'Sub' $P627 = "55_1300090347.43336" 
    capture_lex $P627
    $P627($P625)
  loop633_next:
    goto loop633_test
  loop633_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P635, exception, 'type'
    eq $P635, .CONTROL_LOOP_NEXT, loop633_next
    eq $P635, .CONTROL_LOOP_REDO, loop633_redo
  loop633_done:
    pop_eh 
  for_undef_143:
.annotate 'line', 195
    find_lex $P636, "$/"
    find_lex $P637, "$str"
    $P638 = $P636."!make"($P637)
.annotate 'line', 192
    .return ($P638)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block626"  :anon :subid("55_1300090347.43336") :outer("54_1300090347.43336")
    .param pmc param_628
.annotate 'line', 194
    .lex "$_", param_628
    find_lex $P629, "$str"
    find_lex $P630, "$_"
    $S631 = $P630."ast"()
    concat $P632, $P629, $S631
    store_lex "$str", $P632
    .return ($P632)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "charspec"  :subid("56_1300090347.43336") :outer("11_1300090347.43336")
    .param pmc param_640
    .param pmc param_641
.annotate 'line', 198
    .lex "self", param_640
    .lex "$/", param_641
.annotate 'line', 199
    find_lex $P642, "$/"
    find_lex $P645, "$/"
    unless_null $P645, vivify_144
    $P645 = root_new ['parrot';'Hash']
  vivify_144:
    set $P646, $P645["charnames"]
    unless_null $P646, vivify_145
    new $P646, "Undef"
  vivify_145:
    if $P646, if_644
    find_lex $P650, "$/"
    $I651 = "string_to_int"($P650, 10)
    chr $S652, $I651
    new $P643, 'String'
    set $P643, $S652
    goto if_644_end
  if_644:
    find_lex $P647, "$/"
    unless_null $P647, vivify_146
    $P647 = root_new ['parrot';'Hash']
  vivify_146:
    set $P648, $P647["charnames"]
    unless_null $P648, vivify_147
    new $P648, "Undef"
  vivify_147:
    $P649 = $P648."ast"()
    set $P643, $P649
  if_644_end:
    $P653 = $P642."!make"($P643)
.annotate 'line', 198
    .return ($P653)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block655" :load :anon :subid("57_1300090347.43336")
.annotate 'line', 3
    .const 'Sub' $P657 = "11_1300090347.43336" 
    $P658 = $P657()
    .return ($P658)
.end


.HLL "nqp"

.namespace []
.sub "_block742" :load :anon :subid("59_1300090347.43336")
.annotate 'line', 1
    .const 'Sub' $P744 = "10_1300090347.43336" 
    $P745 = $P744()
    .return ($P745)
.end

### .include 'gen/hllcompiler.pir'

.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1300090353.08319")
.annotate 'line', 0
    get_hll_global $P16, ["HLL";"Compiler"], "_block15" 
    capture_lex $P16
    .const 'Sub' $P14 = "11_1300090353.08319" 
    capture_lex $P14
.annotate 'line', 1
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
    .const 'Sub' $P14 = "11_1300090353.08319" 
    capture_lex $P14
    $P14()
.annotate 'line', 9
    get_hll_global $P16, ["HLL";"Compiler"], "_block15" 
    capture_lex $P16
    $P1226 = $P16()
.annotate 'line', 1
    .return ($P1226)
    .const 'Sub' $P1228 = "78_1300090353.08319" 
    .return ($P1228)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post79") :outer("10_1300090353.08319")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1300090353.08319" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P1232, "1300090348.11094"
    isnull $I1233, $P1232
    if $I1233, if_1231
    nqp_get_sc_object $P1243, "1300090348.11094", 0
    set_hll_global ["HLL"], "Compiler", $P1243
    goto if_1231_end
  if_1231:
    nqp_dynop_setup 
    getinterp $P1234
    get_class $P1235, "LexPad"
    get_class $P1236, "NQPLexPad"
    $P1234."hll_map"($P1235, $P1236)
    load_bytecode "nqpmo.pbc"
    nqp_create_sc $P1237, "1300090348.11094"
    .local pmc cur_sc
    set cur_sc, $P1237
    load_bytecode "SettingManager.pbc"
    get_hll_global $P1238, ["HLL"], "SettingManager"
    $P1239 = $P1238."load_setting"("NQPCORE")
    block."set_outer_ctx"($P1239)
    get_hll_global $P1240, "NQPClassHOW"
    $P1241 = $P1240."new_type"("HLL::Compiler" :named("name"))
    nqp_set_sc_for_object $P1241, cur_sc
    nqp_set_sc_object "1300090348.11094", 0, $P1241
    nqp_get_sc_object $P1242, "1300090348.11094", 0
    set_hll_global ["HLL"], "Compiler", $P1242
  if_1231_end:
.end


.HLL "nqp"

.namespace []
.sub "_block13"  :anon :subid("11_1300090353.08319") :outer("10_1300090353.08319")
.annotate 'line', 1
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post80") :outer("11_1300090353.08319")
.annotate 'line', 1
    .const 'Sub' $P14 = "11_1300090353.08319" 
    .local pmc block
    set block, $P14
.annotate 'line', 2
    load_bytecode "Parrot/Exception.pbc"
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block15"  :subid("12_1300090353.08319") :outer("10_1300090353.08319")
.annotate 'line', 9
    .const 'Sub' $P1117 = "77_1300090353.08319" 
    capture_lex $P1117
    .const 'Sub' $P1109 = "76_1300090353.08319" 
    capture_lex $P1109
    .const 'Sub' $P1056 = "74_1300090353.08319" 
    capture_lex $P1056
    .const 'Sub' $P983 = "71_1300090353.08319" 
    capture_lex $P983
    .const 'Sub' $P953 = "69_1300090353.08319" 
    capture_lex $P953
    .const 'Sub' $P948 = "68_1300090353.08319" 
    capture_lex $P948
    .const 'Sub' $P938 = "67_1300090353.08319" 
    capture_lex $P938
    .const 'Sub' $P912 = "65_1300090353.08319" 
    capture_lex $P912
    .const 'Sub' $P903 = "64_1300090353.08319" 
    capture_lex $P903
    .const 'Sub' $P895 = "63_1300090353.08319" 
    capture_lex $P895
    .const 'Sub' $P887 = "62_1300090353.08319" 
    capture_lex $P887
    .const 'Sub' $P883 = "61_1300090353.08319" 
    capture_lex $P883
    .const 'Sub' $P879 = "60_1300090353.08319" 
    capture_lex $P879
    .const 'Sub' $P812 = "58_1300090353.08319" 
    capture_lex $P812
    .const 'Sub' $P716 = "54_1300090353.08319" 
    capture_lex $P716
    .const 'Sub' $P680 = "51_1300090353.08319" 
    capture_lex $P680
    .const 'Sub' $P632 = "49_1300090353.08319" 
    capture_lex $P632
    .const 'Sub' $P619 = "48_1300090353.08319" 
    capture_lex $P619
    .const 'Sub' $P606 = "47_1300090353.08319" 
    capture_lex $P606
    .const 'Sub' $P593 = "46_1300090353.08319" 
    capture_lex $P593
    .const 'Sub' $P580 = "45_1300090353.08319" 
    capture_lex $P580
    .const 'Sub' $P567 = "44_1300090353.08319" 
    capture_lex $P567
    .const 'Sub' $P554 = "43_1300090353.08319" 
    capture_lex $P554
    .const 'Sub' $P541 = "42_1300090353.08319" 
    capture_lex $P541
    .const 'Sub' $P528 = "41_1300090353.08319" 
    capture_lex $P528
    .const 'Sub' $P523 = "40_1300090353.08319" 
    capture_lex $P523
    .const 'Sub' $P519 = "39_1300090353.08319" 
    capture_lex $P519
    .const 'Sub' $P479 = "37_1300090353.08319" 
    capture_lex $P479
    .const 'Sub' $P332 = "30_1300090353.08319" 
    capture_lex $P332
    .const 'Sub' $P319 = "29_1300090353.08319" 
    capture_lex $P319
    .const 'Sub' $P226 = "24_1300090353.08319" 
    capture_lex $P226
    .const 'Sub' $P193 = "22_1300090353.08319" 
    capture_lex $P193
    .const 'Sub' $P178 = "21_1300090353.08319" 
    capture_lex $P178
    .const 'Sub' $P163 = "20_1300090353.08319" 
    capture_lex $P163
    .const 'Sub' $P76 = "17_1300090353.08319" 
    capture_lex $P76
    .const 'Sub' $P39 = "15_1300090353.08319" 
    capture_lex $P39
    .const 'Sub' $P32 = "14_1300090353.08319" 
    capture_lex $P32
    .const 'Sub' $P18 = "13_1300090353.08319" 
    capture_lex $P18
    get_global $P17, "$?CLASS"
.annotate 'line', 64
    .const 'Sub' $P18 = "13_1300090353.08319" 
    newclosure $P31, $P18
    .lex "value_type", $P31
.annotate 'line', 29
    find_lex $P75, "value_type"
.annotate 'line', 660
    .const 'Sub' $P1109 = "76_1300090353.08319" 
    newclosure $P1115, $P1109
.annotate 'line', 9
    .return ($P1115)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "" :load :init :subid("post81") :outer("12_1300090353.08319")
.annotate 'line', 9
    get_hll_global $P16, ["HLL";"Compiler"], "_block15" 
    .local pmc block
    set block, $P16
    .const 'Sub' $P1117 = "77_1300090353.08319" 
    capture_lex $P1117
    $P1117()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1116"  :anon :subid("77_1300090353.08319") :outer("12_1300090353.08319")
.annotate 'line', 9
    nqp_get_sc_object $P1118, "1300090348.11094", 0
    .local pmc type_obj
    set type_obj, $P1118
    set_global "$?CLASS", type_obj
    get_how $P1119, type_obj
    get_hll_global $P1120, "NQPAttribute"
    $P1121 = $P1120."new"("@!stages" :named("name"))
    $P1119."add_attribute"(type_obj, $P1121)
    get_how $P1122, type_obj
    get_hll_global $P1123, "NQPAttribute"
    $P1124 = $P1123."new"("$!parsegrammar" :named("name"))
    $P1122."add_attribute"(type_obj, $P1124)
    get_how $P1125, type_obj
    get_hll_global $P1126, "NQPAttribute"
    $P1127 = $P1126."new"("$!parseactions" :named("name"))
    $P1125."add_attribute"(type_obj, $P1127)
    get_how $P1128, type_obj
    get_hll_global $P1129, "NQPAttribute"
    $P1130 = $P1129."new"("$!astgrammar" :named("name"))
    $P1128."add_attribute"(type_obj, $P1130)
    get_how $P1131, type_obj
    get_hll_global $P1132, "NQPAttribute"
    $P1133 = $P1132."new"("$!commandline_banner" :named("name"))
    $P1131."add_attribute"(type_obj, $P1133)
    get_how $P1134, type_obj
    get_hll_global $P1135, "NQPAttribute"
    $P1136 = $P1135."new"("$!commandline_prompt" :named("name"))
    $P1134."add_attribute"(type_obj, $P1136)
    get_how $P1137, type_obj
    get_hll_global $P1138, "NQPAttribute"
    $P1139 = $P1138."new"("@!cmdoptions" :named("name"))
    $P1137."add_attribute"(type_obj, $P1139)
    get_how $P1140, type_obj
    get_hll_global $P1141, "NQPAttribute"
    $P1142 = $P1141."new"("$!usage" :named("name"))
    $P1140."add_attribute"(type_obj, $P1142)
    get_how $P1143, type_obj
    get_hll_global $P1144, "NQPAttribute"
    $P1145 = $P1144."new"("$!version" :named("name"))
    $P1143."add_attribute"(type_obj, $P1145)
    get_how $P1146, type_obj
    get_hll_global $P1147, "NQPAttribute"
    $P1148 = $P1147."new"("$!compiler_progname" :named("name"))
    $P1146."add_attribute"(type_obj, $P1148)
    get_how $P1149, type_obj
    get_hll_global $P1150, "NQPAttribute"
    $P1151 = $P1150."new"("$!language" :named("name"))
    $P1149."add_attribute"(type_obj, $P1151)
    get_how $P1152, type_obj
    .const 'Sub' $P1153 = "14_1300090353.08319" 
    $P1152."add_method"(type_obj, "new", $P1153)
    get_how $P1154, type_obj
    .const 'Sub' $P1155 = "15_1300090353.08319" 
    $P1154."add_method"(type_obj, "BUILD", $P1155)
    get_how $P1156, type_obj
    .const 'Sub' $P1157 = "17_1300090353.08319" 
    $P1156."add_method"(type_obj, "get_exports", $P1157)
    get_how $P1158, type_obj
    .const 'Sub' $P1159 = "20_1300090353.08319" 
    $P1158."add_method"(type_obj, "get_module", $P1159)
    get_how $P1160, type_obj
    .const 'Sub' $P1161 = "21_1300090353.08319" 
    $P1160."add_method"(type_obj, "language", $P1161)
    get_how $P1162, type_obj
    .const 'Sub' $P1163 = "22_1300090353.08319" 
    $P1162."add_method"(type_obj, "load_module", $P1163)
    get_how $P1164, type_obj
    .const 'Sub' $P1165 = "24_1300090353.08319" 
    $P1164."add_method"(type_obj, "import", $P1165)
    get_how $P1166, type_obj
    .const 'Sub' $P1167 = "29_1300090353.08319" 
    $P1166."add_method"(type_obj, "autoprint", $P1167)
    get_how $P1168, type_obj
    .const 'Sub' $P1169 = "30_1300090353.08319" 
    $P1168."add_method"(type_obj, "interactive", $P1169)
    get_how $P1170, type_obj
    .const 'Sub' $P1171 = "37_1300090353.08319" 
    $P1170."add_method"(type_obj, "eval", $P1171)
    get_how $P1172, type_obj
    .const 'Sub' $P1173 = "39_1300090353.08319" 
    $P1172."add_method"(type_obj, "ctxsave", $P1173)
    get_how $P1174, type_obj
    .const 'Sub' $P1175 = "40_1300090353.08319" 
    $P1174."add_method"(type_obj, "panic", $P1175)
    get_how $P1176, type_obj
    .const 'Sub' $P1177 = "41_1300090353.08319" 
    $P1176."add_method"(type_obj, "stages", $P1177)
    get_how $P1178, type_obj
    .const 'Sub' $P1179 = "42_1300090353.08319" 
    $P1178."add_method"(type_obj, "parsegrammar", $P1179)
    get_how $P1180, type_obj
    .const 'Sub' $P1181 = "43_1300090353.08319" 
    $P1180."add_method"(type_obj, "parseactions", $P1181)
    get_how $P1182, type_obj
    .const 'Sub' $P1183 = "44_1300090353.08319" 
    $P1182."add_method"(type_obj, "astgrammar", $P1183)
    get_how $P1184, type_obj
    .const 'Sub' $P1185 = "45_1300090353.08319" 
    $P1184."add_method"(type_obj, "commandline_banner", $P1185)
    get_how $P1186, type_obj
    .const 'Sub' $P1187 = "46_1300090353.08319" 
    $P1186."add_method"(type_obj, "commandline_prompt", $P1187)
    get_how $P1188, type_obj
    .const 'Sub' $P1189 = "47_1300090353.08319" 
    $P1188."add_method"(type_obj, "compiler_progname", $P1189)
    get_how $P1190, type_obj
    .const 'Sub' $P1191 = "48_1300090353.08319" 
    $P1190."add_method"(type_obj, "commandline_options", $P1191)
    get_how $P1192, type_obj
    .const 'Sub' $P1193 = "49_1300090353.08319" 
    $P1192."add_method"(type_obj, "command_line", $P1193)
    get_how $P1194, type_obj
    .const 'Sub' $P1195 = "51_1300090353.08319" 
    $P1194."add_method"(type_obj, "process_args", $P1195)
    get_how $P1196, type_obj
    .const 'Sub' $P1197 = "54_1300090353.08319" 
    $P1196."add_method"(type_obj, "evalfiles", $P1197)
    get_how $P1198, type_obj
    .const 'Sub' $P1199 = "58_1300090353.08319" 
    $P1198."add_method"(type_obj, "compile", $P1199)
    get_how $P1200, type_obj
    .const 'Sub' $P1201 = "60_1300090353.08319" 
    $P1200."add_method"(type_obj, "parse", $P1201)
    get_how $P1202, type_obj
    .const 'Sub' $P1203 = "61_1300090353.08319" 
    $P1202."add_method"(type_obj, "past", $P1203)
    get_how $P1204, type_obj
    .const 'Sub' $P1205 = "62_1300090353.08319" 
    $P1204."add_method"(type_obj, "post", $P1205)
    get_how $P1206, type_obj
    .const 'Sub' $P1207 = "63_1300090353.08319" 
    $P1206."add_method"(type_obj, "pir", $P1207)
    get_how $P1208, type_obj
    .const 'Sub' $P1209 = "64_1300090353.08319" 
    $P1208."add_method"(type_obj, "evalpmc", $P1209)
    get_how $P1210, type_obj
    .const 'Sub' $P1211 = "65_1300090353.08319" 
    $P1210."add_method"(type_obj, "dumper", $P1211)
    get_how $P1212, type_obj
    .const 'Sub' $P1213 = "67_1300090353.08319" 
    $P1212."add_method"(type_obj, "usage", $P1213)
    get_how $P1214, type_obj
    .const 'Sub' $P1215 = "68_1300090353.08319" 
    $P1214."add_method"(type_obj, "version", $P1215)
    get_how $P1216, type_obj
    .const 'Sub' $P1217 = "69_1300090353.08319" 
    $P1216."add_method"(type_obj, "removestage", $P1217)
    get_how $P1218, type_obj
    .const 'Sub' $P1219 = "71_1300090353.08319" 
    $P1218."add_method"(type_obj, "addstage", $P1219)
    get_how $P1220, type_obj
    .const 'Sub' $P1221 = "74_1300090353.08319" 
    $P1220."add_method"(type_obj, "parse_name", $P1221)
    get_how $P1222, type_obj
    .const 'Sub' $P1223 = "76_1300090353.08319" 
    $P1222."add_method"(type_obj, "lineof", $P1223)
    get_how $P1224, type_obj
    $P1225 = $P1224."compose"(type_obj)
    .return ($P1225)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "value_type"  :subid("13_1300090353.08319") :outer("12_1300090353.08319")
    .param pmc param_19
.annotate 'line', 64
    .lex "$value", param_19
.annotate 'line', 65
    find_lex $P22, "$value"
    isa $I23, $P22, "NameSpace"
    if $I23, if_21
.annotate 'line', 67
    find_lex $P27, "$value"
    isa $I28, $P27, "Sub"
    if $I28, if_26
    new $P30, "String"
    assign $P30, "var"
    set $P25, $P30
    goto if_26_end
  if_26:
    new $P29, "String"
    assign $P29, "sub"
    set $P25, $P29
  if_26_end:
    set $P20, $P25
.annotate 'line', 65
    goto if_21_end
  if_21:
    new $P24, "String"
    assign $P24, "namespace"
    set $P20, $P24
  if_21_end:
.annotate 'line', 64
    .return ($P20)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "new"  :subid("14_1300090353.08319") :outer("12_1300090353.08319")
    .param pmc param_33
.annotate 'line', 23
    .lex "self", param_33
.annotate 'line', 24
    new $P34, "Undef"
    .lex "$obj", $P34
    find_lex $P35, "self"
    repr_instance_of $P36, $P35
    store_lex "$obj", $P36
.annotate 'line', 25
    find_lex $P37, "$obj"
    $P37."BUILD"()
    find_lex $P38, "$obj"
.annotate 'line', 23
    .return ($P38)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "BUILD"  :subid("15_1300090353.08319") :outer("12_1300090353.08319")
    .param pmc param_40
.annotate 'line', 29
    .const 'Sub' $P57 = "16_1300090353.08319" 
    capture_lex $P57
    .lex "self", param_40
.annotate 'line', 31
    split $P41, " ", "parse past post pir evalpmc"
    find_lex $P42, "self"
    get_global $P43, "$?CLASS"
    setattribute $P42, $P43, "@!stages", $P41
.annotate 'line', 34
    split $P44, " ", "e=s help|h target=s dumper=s trace|t=s encoding=s output|o=s combine version|v stagestats ll-backtrace"
    find_lex $P45, "self"
    get_global $P46, "$?CLASS"
    setattribute $P45, $P46, "@!cmdoptions", $P44
.annotate 'line', 35
    new $P47, "String"
    assign $P47, "This compiler is based on HLL::Compler.\n\nOptions:\n"
    find_lex $P48, "self"
    get_global $P49, "$?CLASS"
    setattribute $P48, $P49, "$!usage", $P47
.annotate 'line', 36
    find_lex $P51, "self"
    get_global $P52, "$?CLASS"
    getattribute $P53, $P51, $P52, "@!cmdoptions"
    unless_null $P53, vivify_82
    $P53 = root_new ['parrot';'ResizablePMCArray']
  vivify_82:
    defined $I54, $P53
    unless $I54, for_undef_83
    iter $P50, $P53
    new $P70, 'ExceptionHandler'
    set_label $P70, loop69_handler
    $P70."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P70
  loop69_test:
    unless $P50, loop69_done
    shift $P55, $P50
  loop69_redo:
    .const 'Sub' $P57 = "16_1300090353.08319" 
    capture_lex $P57
    $P57($P55)
  loop69_next:
    goto loop69_test
  loop69_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P71, exception, 'type'
    eq $P71, .CONTROL_LOOP_NEXT, loop69_next
    eq $P71, .CONTROL_LOOP_REDO, loop69_redo
  loop69_done:
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
            $P72  = box 'This compiler is built with the Parrot Compiler Toolkit, parrot '
            if $S0 goto _revision_lab
            $P72 .= 'version '
            $S0 = $P0['VERSION']
            goto _is_version
          _revision_lab:
            $P72 .= 'revision '
          _is_version:
            $P72 .= $S0
            $P72 .= '.'
        
    find_lex $P73, "self"
    get_global $P74, "$?CLASS"
    setattribute $P73, $P74, "$!version", $P72
.annotate 'line', 29
    .return ($P72)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block56"  :anon :subid("16_1300090353.08319") :outer("15_1300090353.08319")
    .param pmc param_58
.annotate 'line', 36
    .lex "$_", param_58
.annotate 'line', 37
    find_lex $P59, "self"
    get_global $P60, "$?CLASS"
    getattribute $P61, $P59, $P60, "$!usage"
    unless_null $P61, vivify_84
    new $P61, "Undef"
  vivify_84:
    new $P62, 'String'
    set $P62, "    "
    find_lex $P63, "$_"
    concat $P64, $P62, $P63
    concat $P65, $P64, "\n"
    concat $P66, $P61, $P65
    find_lex $P67, "self"
    get_global $P68, "$?CLASS"
    setattribute $P67, $P68, "$!usage", $P66
.annotate 'line', 36
    .return ($P66)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "get_exports"  :subid("17_1300090353.08319") :outer("12_1300090353.08319")
    .param pmc param_77
    .param pmc param_78
    .param pmc param_81 :slurpy
    .param pmc param_79 :optional :named("tagset")
    .param int has_param_79 :opt_flag
.annotate 'line', 70
    .const 'Sub' $P147 = "19_1300090353.08319" 
    capture_lex $P147
    .const 'Sub' $P126 = "18_1300090353.08319" 
    capture_lex $P126
    .lex "self", param_77
    .lex "$module", param_78
    if has_param_79, optparam_85
    new $P80, "Undef"
    set param_79, $P80
  optparam_85:
    .lex "$tagset", param_79
    .lex "@symbols", param_81
.annotate 'line', 77
    $P82 = root_new ['parrot';'Hash']
    .lex "%exports", $P82
.annotate 'line', 78
    $P83 = root_new ['parrot';'Hash']
    .lex "%source", $P83
.annotate 'line', 72
    find_lex $P85, "$module"
    does $I86, $P85, "hash"
    new $P87, 'Integer'
    set $P87, $I86
    isfalse $I88, $P87
    unless $I88, if_84_end
.annotate 'line', 73
    find_lex $P89, "self"
    find_lex $P90, "$module"
    $P91 = $P89."get_module"($P90)
    store_lex "$module", $P91
  if_84_end:
.annotate 'line', 76
    find_lex $P93, "$tagset"
    set $P92, $P93
    defined $I95, $P92
    if $I95, default_94
    find_lex $P98, "@symbols"
    if $P98, if_97
    new $P100, "String"
    assign $P100, "DEFAULT"
    set $P96, $P100
    goto if_97_end
  if_97:
    new $P99, "String"
    assign $P99, "ALL"
    set $P96, $P99
  if_97_end:
    set $P92, $P96
  default_94:
    store_lex "$tagset", $P92
    find_lex $P101, "%exports"
.annotate 'line', 78
    find_lex $P102, "$tagset"
    set $S103, $P102
    find_lex $P104, "$module"
    unless_null $P104, vivify_86
    $P104 = root_new ['parrot';'Hash']
  vivify_86:
    set $P105, $P104["EXPORT"]
    unless_null $P105, vivify_87
    $P105 = root_new ['parrot';'Hash']
  vivify_87:
    set $P106, $P105[$S103]
    unless_null $P106, vivify_88
    new $P106, "Undef"
  vivify_88:
    store_lex "%source", $P106
.annotate 'line', 79
    find_lex $P108, "%source"
    defined $I109, $P108
    new $P110, 'Integer'
    set $P110, $I109
    isfalse $I111, $P110
    unless $I111, if_107_end
.annotate 'line', 80
    find_lex $P114, "$tagset"
    set $S115, $P114
    iseq $I116, $S115, "ALL"
    if $I116, if_113
    $P118 = root_new ['parrot';'Hash']
    set $P112, $P118
    goto if_113_end
  if_113:
    find_lex $P117, "$module"
    set $P112, $P117
  if_113_end:
    store_lex "%source", $P112
  if_107_end:
.annotate 'line', 82
    find_lex $P120, "@symbols"
    if $P120, if_119
.annotate 'line', 89
    find_lex $P143, "%source"
    defined $I144, $P143
    unless $I144, for_undef_89
    iter $P142, $P143
    new $P160, 'ExceptionHandler'
    set_label $P160, loop159_handler
    $P160."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P160
  loop159_test:
    unless $P142, loop159_done
    shift $P145, $P142
  loop159_redo:
    .const 'Sub' $P147 = "19_1300090353.08319" 
    capture_lex $P147
    $P147($P145)
  loop159_next:
    goto loop159_test
  loop159_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P161, exception, 'type'
    eq $P161, .CONTROL_LOOP_NEXT, loop159_next
    eq $P161, .CONTROL_LOOP_REDO, loop159_redo
  loop159_done:
    pop_eh 
  for_undef_89:
.annotate 'line', 88
    goto if_119_end
  if_119:
.annotate 'line', 83
    find_lex $P122, "@symbols"
    defined $I123, $P122
    unless $I123, for_undef_92
    iter $P121, $P122
    new $P140, 'ExceptionHandler'
    set_label $P140, loop139_handler
    $P140."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P140
  loop139_test:
    unless $P121, loop139_done
    shift $P124, $P121
  loop139_redo:
    .const 'Sub' $P126 = "18_1300090353.08319" 
    capture_lex $P126
    $P126($P124)
  loop139_next:
    goto loop139_test
  loop139_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P141, exception, 'type'
    eq $P141, .CONTROL_LOOP_NEXT, loop139_next
    eq $P141, .CONTROL_LOOP_REDO, loop139_redo
  loop139_done:
    pop_eh 
  for_undef_92:
  if_119_end:
.annotate 'line', 82
    find_lex $P162, "%exports"
.annotate 'line', 70
    .return ($P162)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block146"  :anon :subid("19_1300090353.08319") :outer("17_1300090353.08319")
    .param pmc param_149
.annotate 'line', 90
    new $P148, "Undef"
    .lex "$value", $P148
    .lex "$_", param_149
    find_lex $P150, "$_"
    $P151 = $P150."value"()
    store_lex "$value", $P151
.annotate 'line', 91
    find_lex $P152, "$value"
    find_lex $P153, "$_"
    $P154 = $P153."key"()
    find_lex $P155, "$value"
    $P156 = "value_type"($P155)
    find_lex $P157, "%exports"
    unless_null $P157, vivify_90
    $P157 = root_new ['parrot';'Hash']
    store_lex "%exports", $P157
  vivify_90:
    set $P158, $P157[$P156]
    unless_null $P158, vivify_91
    $P158 = root_new ['parrot';'Hash']
    set $P157[$P156], $P158
  vivify_91:
    set $P158[$P154], $P152
.annotate 'line', 89
    .return ($P152)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block125"  :anon :subid("18_1300090353.08319") :outer("17_1300090353.08319")
    .param pmc param_128
.annotate 'line', 84
    new $P127, "Undef"
    .lex "$value", $P127
    .lex "$_", param_128
    find_lex $P129, "$_"
    set $S130, $P129
    find_lex $P131, "%source"
    unless_null $P131, vivify_93
    $P131 = root_new ['parrot';'Hash']
  vivify_93:
    set $P132, $P131[$S130]
    unless_null $P132, vivify_94
    new $P132, "Undef"
  vivify_94:
    store_lex "$value", $P132
.annotate 'line', 85
    find_lex $P133, "$value"
    find_lex $P134, "$_"
    find_lex $P135, "$value"
    $P136 = "value_type"($P135)
    find_lex $P137, "%exports"
    unless_null $P137, vivify_95
    $P137 = root_new ['parrot';'Hash']
    store_lex "%exports", $P137
  vivify_95:
    set $P138, $P137[$P136]
    unless_null $P138, vivify_96
    $P138 = root_new ['parrot';'Hash']
    set $P137[$P136], $P138
  vivify_96:
    set $P138[$P134], $P133
.annotate 'line', 83
    .return ($P133)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "get_module"  :subid("20_1300090353.08319") :outer("12_1300090353.08319")
    .param pmc param_164
    .param pmc param_165
.annotate 'line', 97
    .lex "self", param_164
    .lex "$name", param_165
.annotate 'line', 98
    $P166 = root_new ['parrot';'ResizablePMCArray']
    .lex "@name", $P166
    find_lex $P167, "self"
    find_lex $P168, "$name"
    $P169 = $P167."parse_name"($P168)
    store_lex "@name", $P169
.annotate 'line', 99
    find_lex $P170, "@name"
    find_lex $P171, "self"
    get_global $P172, "$?CLASS"
    getattribute $P173, $P171, $P172, "$!language"
    unless_null $P173, vivify_97
    new $P173, "Undef"
  vivify_97:
    set $S174, $P173
    downcase $S175, $S174
    $P170."unshift"($S175)
.annotate 'line', 100
    find_lex $P176, "@name"
    get_root_namespace $P177, $P176
.annotate 'line', 97
    .return ($P177)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "language"  :subid("21_1300090353.08319") :outer("12_1300090353.08319")
    .param pmc param_179
    .param pmc param_180 :optional
    .param int has_param_180 :opt_flag
.annotate 'line', 103
    .lex "self", param_179
    if has_param_180, optparam_98
    new $P181, "Undef"
    set param_180, $P181
  optparam_98:
    .lex "$name", param_180
.annotate 'line', 104
    find_lex $P183, "$name"
    unless $P183, if_182_end
.annotate 'line', 105
    find_lex $P184, "$name"
    find_lex $P185, "self"
    get_global $P186, "$?CLASS"
    setattribute $P185, $P186, "$!language", $P184
.annotate 'line', 106
    find_lex $P187, "$name"
    set $S188, $P187
    find_lex $P189, "self"
    compreg $S188, $P189
  if_182_end:
.annotate 'line', 104
    find_lex $P190, "self"
    get_global $P191, "$?CLASS"
    getattribute $P192, $P190, $P191, "$!language"
    unless_null $P192, vivify_99
    new $P192, "Undef"
  vivify_99:
.annotate 'line', 103
    .return ($P192)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "load_module"  :subid("22_1300090353.08319") :outer("12_1300090353.08319")
    .param pmc param_194
    .param pmc param_195
.annotate 'line', 111
    .const 'Sub' $P205 = "23_1300090353.08319" 
    capture_lex $P205
    .lex "self", param_194
    .lex "$name", param_195
.annotate 'line', 112
    new $P196, "Undef"
    .lex "$base", $P196
.annotate 'line', 113
    new $P197, "Undef"
    .lex "$loaded", $P197
.annotate 'line', 112
    find_lex $P198, "self"
    find_lex $P199, "$name"
    $P200 = $P198."parse_name"($P199)
    join $S201, "/", $P200
    new $P202, 'String'
    set $P202, $S201
    store_lex "$base", $P202
.annotate 'line', 113
    new $P203, "Integer"
    assign $P203, 0
    store_lex "$loaded", $P203
.annotate 'line', 114
    .const 'Sub' $P205 = "23_1300090353.08319" 
    capture_lex $P205
    $P205()
.annotate 'line', 115
    find_lex $P218, "$loaded"
    if $P218, unless_217_end
    find_lex $P219, "$base"
    concat $P220, $P219, ".pir"
    set $S221, $P220
    load_bytecode $S221
    new $P222, "Integer"
    assign $P222, 1
    store_lex "$loaded", $P222
  unless_217_end:
.annotate 'line', 116
    find_lex $P223, "self"
    find_lex $P224, "$name"
    $P225 = $P223."get_module"($P224)
.annotate 'line', 111
    .return ($P225)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block204"  :anon :subid("23_1300090353.08319") :outer("22_1300090353.08319")
.annotate 'line', 114
    new $P212, 'ExceptionHandler'
    set_label $P212, control_211
    $P212."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P212
    find_lex $P206, "$base"
    concat $P207, $P206, ".pbc"
    set $S208, $P207
    load_bytecode $S208
    new $P209, "Integer"
    assign $P209, 1
    store_lex "$loaded", $P209
    pop_eh 
    goto skip_handler_210
  control_211:
    .local pmc exception 
    .get_results (exception) 
    new $P215, 'Integer'
    set $P215, 1
    set exception["handled"], $P215
    set $I216, exception["handled"]
    ne $I216, 1, nothandled_214
  handled_213:
    .return (exception)
  nothandled_214:
    rethrow exception
  skip_handler_210:
    .return ($P209)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "import"  :subid("24_1300090353.08319") :outer("12_1300090353.08319")
    .param pmc param_227
    .param pmc param_228
    .param pmc param_229
.annotate 'line', 119
    .const 'Sub' $P235 = "25_1300090353.08319" 
    capture_lex $P235
    .lex "self", param_227
    .lex "$target", param_228
    .lex "%exports", param_229
.annotate 'line', 120
    find_lex $P231, "%exports"
    defined $I232, $P231
    unless $I232, for_undef_100
    iter $P230, $P231
    new $P317, 'ExceptionHandler'
    set_label $P317, loop316_handler
    $P317."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P317
  loop316_test:
    unless $P230, loop316_done
    shift $P233, $P230
  loop316_redo:
    .const 'Sub' $P235 = "25_1300090353.08319" 
    capture_lex $P235
    $P235($P233)
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
  for_undef_100:
.annotate 'line', 119
    .return ($P230)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block234"  :anon :subid("25_1300090353.08319") :outer("24_1300090353.08319")
    .param pmc param_238
.annotate 'line', 120
    .const 'Sub' $P305 = "28_1300090353.08319" 
    capture_lex $P305
    .const 'Sub' $P285 = "27_1300090353.08319" 
    capture_lex $P285
    .const 'Sub' $P256 = "26_1300090353.08319" 
    capture_lex $P256
.annotate 'line', 121
    new $P236, "Undef"
    .lex "$type", $P236
.annotate 'line', 122
    $P237 = root_new ['parrot';'Hash']
    .lex "%items", $P237
    .lex "$_", param_238
.annotate 'line', 121
    find_lex $P239, "$_"
    $P240 = $P239."key"()
    store_lex "$type", $P240
.annotate 'line', 122
    find_lex $P241, "$_"
    $P242 = $P241."value"()
    store_lex "%items", $P242
.annotate 'line', 123
    find_lex $P245, "self"
    new $P246, 'String'
    set $P246, "import_"
    find_lex $P247, "$type"
    concat $P248, $P246, $P247
    set $S249, $P248
    can $I250, $P245, $S249
    if $I250, if_244
.annotate 'line', 126
    find_lex $P274, "$target"
    new $P275, 'String'
    set $P275, "add_"
    find_lex $P276, "$type"
    concat $P277, $P275, $P276
    set $S278, $P277
    can $I279, $P274, $S278
    if $I279, if_273
.annotate 'line', 130
    find_lex $P301, "%items"
    defined $I302, $P301
    unless $I302, for_undef_101
    iter $P300, $P301
    new $P314, 'ExceptionHandler'
    set_label $P314, loop313_handler
    $P314."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P314
  loop313_test:
    unless $P300, loop313_done
    shift $P303, $P300
  loop313_redo:
    .const 'Sub' $P305 = "28_1300090353.08319" 
    capture_lex $P305
    $P305($P303)
  loop313_next:
    goto loop313_test
  loop313_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P315, exception, 'type'
    eq $P315, .CONTROL_LOOP_NEXT, loop313_next
    eq $P315, .CONTROL_LOOP_REDO, loop313_redo
  loop313_done:
    pop_eh 
  for_undef_101:
.annotate 'line', 129
    set $P272, $P300
.annotate 'line', 126
    goto if_273_end
  if_273:
.annotate 'line', 127
    find_lex $P281, "%items"
    defined $I282, $P281
    unless $I282, for_undef_103
    iter $P280, $P281
    new $P298, 'ExceptionHandler'
    set_label $P298, loop297_handler
    $P298."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P298
  loop297_test:
    unless $P280, loop297_done
    shift $P283, $P280
  loop297_redo:
    .const 'Sub' $P285 = "27_1300090353.08319" 
    capture_lex $P285
    $P285($P283)
  loop297_next:
    goto loop297_test
  loop297_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P299, exception, 'type'
    eq $P299, .CONTROL_LOOP_NEXT, loop297_next
    eq $P299, .CONTROL_LOOP_REDO, loop297_redo
  loop297_done:
    pop_eh 
  for_undef_103:
.annotate 'line', 126
    set $P272, $P280
  if_273_end:
    set $P243, $P272
.annotate 'line', 123
    goto if_244_end
  if_244:
.annotate 'line', 124
    find_lex $P252, "%items"
    defined $I253, $P252
    unless $I253, for_undef_104
    iter $P251, $P252
    new $P270, 'ExceptionHandler'
    set_label $P270, loop269_handler
    $P270."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P270
  loop269_test:
    unless $P251, loop269_done
    shift $P254, $P251
  loop269_redo:
    .const 'Sub' $P256 = "26_1300090353.08319" 
    capture_lex $P256
    $P256($P254)
  loop269_next:
    goto loop269_test
  loop269_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P271, exception, 'type'
    eq $P271, .CONTROL_LOOP_NEXT, loop269_next
    eq $P271, .CONTROL_LOOP_REDO, loop269_redo
  loop269_done:
    pop_eh 
  for_undef_104:
.annotate 'line', 123
    set $P243, $P251
  if_244_end:
.annotate 'line', 120
    .return ($P243)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block304"  :anon :subid("28_1300090353.08319") :outer("25_1300090353.08319")
    .param pmc param_306
.annotate 'line', 130
    .lex "$_", param_306
    find_lex $P307, "$_"
    $P308 = $P307."value"()
    find_lex $P309, "$_"
    $P310 = $P309."key"()
    set $S311, $P310
    find_lex $P312, "$target"
    unless_null $P312, vivify_102
    $P312 = root_new ['parrot';'Hash']
    store_lex "$target", $P312
  vivify_102:
    set $P312[$S311], $P308
    .return ($P308)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block284"  :anon :subid("27_1300090353.08319") :outer("25_1300090353.08319")
    .param pmc param_286
.annotate 'line', 127
    .lex "$_", param_286
    find_lex $P287, "$target"
    find_lex $P288, "$_"
    $P289 = $P288."key"()
    find_lex $P290, "$_"
    $P291 = $P290."value"()
    new $P292, 'String'
    set $P292, "add_"
    find_lex $P293, "$type"
    concat $P294, $P292, $P293
    set $S295, $P294
    $P296 = $P287.$S295($P289, $P291)
    .return ($P296)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block255"  :anon :subid("26_1300090353.08319") :outer("25_1300090353.08319")
    .param pmc param_257
.annotate 'line', 124
    .lex "$_", param_257
    find_lex $P258, "self"
    find_lex $P259, "$target"
    find_lex $P260, "$_"
    $P261 = $P260."key"()
    find_lex $P262, "$_"
    $P263 = $P262."value"()
    new $P264, 'String'
    set $P264, "import_"
    find_lex $P265, "$type"
    concat $P266, $P264, $P265
    set $S267, $P266
    $P268 = $P258.$S267($P259, $P261, $P263)
    .return ($P268)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "autoprint"  :subid("29_1300090353.08319") :outer("12_1300090353.08319")
    .param pmc param_320
    .param pmc param_321
.annotate 'line', 135
    .lex "self", param_320
    .lex "$value", param_321
.annotate 'line', 137
    getinterp $P324
    $P325 = $P324."stdout_handle"()
    $N326 = $P325."tell"()
    find_dynamic_lex $P327, "$*AUTOPRINTPOS"
    unless_null $P327, vivify_105
    get_hll_global $P327, "$AUTOPRINTPOS"
    unless_null $P327, vivify_106
    die "Contextual $*AUTOPRINTPOS not found"
  vivify_106:
  vivify_105:
    set $N328, $P327
    isgt $I329, $N326, $N328
    unless $I329, unless_323
    new $P322, 'Integer'
    set $P322, $I329
    goto unless_323_end
  unless_323:
.annotate 'line', 136
    find_lex $P330, "$value"
    set $S331, $P330
    say $S331
  unless_323_end:
.annotate 'line', 135
    .return ($P322)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "interactive"  :subid("30_1300090353.08319") :outer("12_1300090353.08319")
    .param pmc param_333
    .param pmc param_334 :slurpy :named
.annotate 'line', 140
    .const 'Sub' $P366 = "31_1300090353.08319" 
    capture_lex $P366
    .lex "self", param_333
    .lex "%adverbs", param_334
.annotate 'line', 141
    new $P335, "Undef"
    .lex "$target", $P335
.annotate 'line', 145
    new $P336, "Undef"
    .lex "$stdin", $P336
.annotate 'line', 146
    new $P337, "Undef"
    .lex "$encoding", $P337
.annotate 'line', 151
    new $P338, "Undef"
    .lex "$save_ctx", $P338
.annotate 'line', 141
    find_lex $P339, "%adverbs"
    unless_null $P339, vivify_107
    $P339 = root_new ['parrot';'Hash']
  vivify_107:
    set $P340, $P339["target"]
    unless_null $P340, vivify_108
    new $P340, "Undef"
  vivify_108:
    set $S341, $P340
    downcase $S342, $S341
    new $P343, 'String'
    set $P343, $S342
    store_lex "$target", $P343
.annotate 'line', 143
    getinterp $P344
    $P345 = $P344."stderr_handle"()
    find_lex $P346, "self"
    $S347 = $P346."commandline_banner"()
    print $P345, $S347
.annotate 'line', 145
    getinterp $P348
    $P349 = $P348."stdin_handle"()
    store_lex "$stdin", $P349
.annotate 'line', 146
    find_lex $P350, "%adverbs"
    unless_null $P350, vivify_109
    $P350 = root_new ['parrot';'Hash']
  vivify_109:
    set $P351, $P350["encoding"]
    unless_null $P351, vivify_110
    new $P351, "Undef"
  vivify_110:
    set $S352, $P351
    new $P353, 'String'
    set $P353, $S352
    store_lex "$encoding", $P353
.annotate 'line', 147
    find_lex $P357, "$encoding"
    if $P357, if_356
    set $P355, $P357
    goto if_356_end
  if_356:
    find_lex $P358, "$encoding"
    set $S359, $P358
    isne $I360, $S359, "fixed_8"
    new $P355, 'Integer'
    set $P355, $I360
  if_356_end:
    unless $P355, if_354_end
.annotate 'line', 148
    find_lex $P361, "$stdin"
    find_lex $P362, "$encoding"
    $P361."encoding"($P362)
  if_354_end:
.annotate 'line', 147
    find_lex $P363, "$save_ctx"
.annotate 'line', 152
    new $P477, 'ExceptionHandler'
    set_label $P477, loop476_handler
    $P477."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P477
  loop476_test:
    new $P364, "Integer"
    assign $P364, 1
    unless $P364, loop476_done
  loop476_redo:
    .const 'Sub' $P366 = "31_1300090353.08319" 
    capture_lex $P366
    $P366()
  loop476_next:
    goto loop476_test
  loop476_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P478, exception, 'type'
    eq $P478, .CONTROL_LOOP_NEXT, loop476_next
    eq $P478, .CONTROL_LOOP_REDO, loop476_redo
  loop476_done:
    pop_eh 
.annotate 'line', 140
    .return ($P364)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block365"  :anon :subid("31_1300090353.08319") :outer("30_1300090353.08319")
.annotate 'line', 152
    .const 'Sub' $P398 = "32_1300090353.08319" 
    capture_lex $P398
.annotate 'line', 155
    new $P367, "Undef"
    .lex "$prompt", $P367
.annotate 'line', 156
    new $P368, "Undef"
    .lex "$code", $P368
.annotate 'line', 161
    new $P369, "Undef"
    .lex "$*AUTOPRINTPOS", $P369
.annotate 'line', 162
    new $P370, "Undef"
    .lex "$*CTXSAVE", $P370
.annotate 'line', 163
    new $P371, "Undef"
    .lex "$*MAIN_CTX", $P371
.annotate 'line', 153
    find_lex $P373, "$stdin"
    if $P373, unless_372_end
    set $I374, .CONTROL_LOOP_LAST
    die 0, $I374
  unless_372_end:
.annotate 'line', 155
    find_lex $P376, "self"
    $P377 = $P376."commandline_prompt"()
    set $P375, $P377
    defined $I379, $P375
    if $I379, default_378
    new $P380, "String"
    assign $P380, "> "
    set $P375, $P380
  default_378:
    store_lex "$prompt", $P375
.annotate 'line', 156
    find_lex $P381, "$stdin"
    find_lex $P382, "$prompt"
    set $S383, $P382
    $P384 = $P381."readline_interactive"($S383)
    store_lex "$code", $P384
.annotate 'line', 158
    find_lex $P386, "$code"
    isnull $I387, $P386
    unless $I387, if_385_end
    set $I388, .CONTROL_LOOP_LAST
    die 0, $I388
  if_385_end:
.annotate 'line', 161
    getinterp $P389
    $P390 = $P389."stdout_handle"()
    $P391 = $P390."tell"()
    store_lex "$*AUTOPRINTPOS", $P391
.annotate 'line', 162
    find_lex $P392, "self"
    store_lex "$*CTXSAVE", $P392
    find_lex $P393, "$*MAIN_CTX"
    unless_null $P393, vivify_111
    get_hll_global $P393, "$MAIN_CTX"
    unless_null $P393, vivify_112
    die "Contextual $*MAIN_CTX not found"
  vivify_112:
  vivify_111:
.annotate 'line', 165
    find_lex $P396, "$code"
    if $P396, if_395
    set $P394, $P396
    goto if_395_end
  if_395:
    .const 'Sub' $P398 = "32_1300090353.08319" 
    capture_lex $P398
    $P475 = $P398()
    set $P394, $P475
  if_395_end:
.annotate 'line', 152
    .return ($P394)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block397"  :anon :subid("32_1300090353.08319") :outer("31_1300090353.08319")
.annotate 'line', 165
    .const 'Sub' $P431 = "35_1300090353.08319" 
    capture_lex $P431
    .const 'Sub' $P404 = "33_1300090353.08319" 
    capture_lex $P404
.annotate 'line', 167
    new $P399, "Undef"
    .lex "$output", $P399
.annotate 'line', 166
    find_lex $P400, "$code"
    concat $P401, $P400, "\n"
    store_lex "$code", $P401
    find_lex $P402, "$output"
.annotate 'line', 168
    .const 'Sub' $P404 = "33_1300090353.08319" 
    capture_lex $P404
    $P404()
.annotate 'line', 175
    find_dynamic_lex $P428, "$*MAIN_CTX"
    unless_null $P428, vivify_113
    get_hll_global $P428, "$MAIN_CTX"
    unless_null $P428, vivify_114
    die "Contextual $*MAIN_CTX not found"
  vivify_114:
  vivify_113:
    defined $I429, $P428
    unless $I429, if_427_end
    .const 'Sub' $P431 = "35_1300090353.08319" 
    capture_lex $P431
    $P431()
  if_427_end:
.annotate 'line', 183
    find_lex $P454, "$output"
    isnull $I455, $P454
    unless $I455, if_453_end
    set $I456, .CONTROL_LOOP_NEXT
    die 0, $I456
  if_453_end:
.annotate 'line', 185
    find_lex $P459, "$target"
    isfalse $I460, $P459
    if $I460, if_458
.annotate 'line', 187
    find_lex $P466, "$target"
    set $S467, $P466
    iseq $I468, $S467, "pir"
    if $I468, if_465
.annotate 'line', 190
    find_lex $P470, "self"
    find_lex $P471, "$output"
    find_lex $P472, "$target"
    find_lex $P473, "%adverbs"
    $P474 = $P470."dumper"($P471, $P472, $P473 :flat)
.annotate 'line', 189
    set $P464, $P474
.annotate 'line', 187
    goto if_465_end
  if_465:
.annotate 'line', 188
    find_lex $P469, "$output"
    say $P469
  if_465_end:
.annotate 'line', 187
    set $P457, $P464
.annotate 'line', 185
    goto if_458_end
  if_458:
.annotate 'line', 186
    find_lex $P461, "self"
    find_lex $P462, "$output"
    $P463 = $P461."autoprint"($P462)
.annotate 'line', 185
    set $P457, $P463
  if_458_end:
.annotate 'line', 165
    .return ($P457)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block403"  :anon :subid("33_1300090353.08319") :outer("32_1300090353.08319")
.annotate 'line', 168
    .const 'Sub' $P416 = "34_1300090353.08319" 
    capture_lex $P416
    new $P412, 'ExceptionHandler'
    set_label $P412, control_411
    $P412."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P412
.annotate 'line', 169
    find_lex $P405, "self"
    find_lex $P406, "$code"
    find_lex $P407, "$save_ctx"
    find_lex $P408, "%adverbs"
    $P409 = $P405."eval"($P406, $P408 :flat, $P407 :named("outer_ctx"))
    store_lex "$output", $P409
.annotate 'line', 168
    pop_eh 
    goto skip_handler_410
  control_411:
.annotate 'line', 170
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P416 = "34_1300090353.08319" 
    newclosure $P424, $P416
    $P424(exception)
    new $P425, 'Integer'
    set $P425, 1
    set exception["handled"], $P425
    set $I426, exception["handled"]
    ne $I426, 1, nothandled_414
  handled_413:
    .return (exception)
  nothandled_414:
    rethrow exception
  skip_handler_410:
.annotate 'line', 168
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block415"  :anon :subid("34_1300090353.08319") :outer("33_1300090353.08319")
    .param pmc param_417
.annotate 'line', 170
    .lex "$_", param_417
    find_lex $P418, "$_"
    .lex "$!", $P418
.annotate 'line', 171
    find_lex $P419, "$!"
    set $S420, $P419
    new $P421, 'String'
    set $P421, $S420
    concat $P422, $P421, "\n"
    print $P422
.annotate 'line', 172
    set $I423, .CONTROL_LOOP_NEXT
    die 0, $I423
.annotate 'line', 170
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block430"  :anon :subid("35_1300090353.08319") :outer("32_1300090353.08319")
.annotate 'line', 175
    .const 'Sub' $P442 = "36_1300090353.08319" 
    capture_lex $P442
.annotate 'line', 176
    get_global $P432, "$interactive_ctx"
    unless_null $P432, vivify_115
    new $P432, "Undef"
    set_global "$interactive_ctx", $P432
  vivify_115:
.annotate 'line', 177
    get_global $P433, "%interactive_pad"
    unless_null $P433, vivify_116
    $P433 = root_new ['parrot';'Hash']
    set_global "%interactive_pad", $P433
  vivify_116:
.annotate 'line', 175
    get_global $P434, "$interactive_ctx"
    get_global $P435, "%interactive_pad"
.annotate 'line', 178
    find_dynamic_lex $P437, "$*MAIN_CTX"
    unless_null $P437, vivify_117
    get_hll_global $P437, "$MAIN_CTX"
    unless_null $P437, vivify_118
    die "Contextual $*MAIN_CTX not found"
  vivify_118:
  vivify_117:
    $P438 = $P437."lexpad_full"()
    defined $I439, $P438
    unless $I439, for_undef_119
    iter $P436, $P438
    new $P450, 'ExceptionHandler'
    set_label $P450, loop449_handler
    $P450."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P450
  loop449_test:
    unless $P436, loop449_done
    shift $P440, $P436
  loop449_redo:
    .const 'Sub' $P442 = "36_1300090353.08319" 
    capture_lex $P442
    $P442($P440)
  loop449_next:
    goto loop449_test
  loop449_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P451, exception, 'type'
    eq $P451, .CONTROL_LOOP_NEXT, loop449_next
    eq $P451, .CONTROL_LOOP_REDO, loop449_redo
  loop449_done:
    pop_eh 
  for_undef_119:
.annotate 'line', 181
    get_global $P452, "$interactive_ctx"
    store_lex "$save_ctx", $P452
.annotate 'line', 175
    .return ($P452)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block441"  :anon :subid("36_1300090353.08319") :outer("35_1300090353.08319")
    .param pmc param_443
.annotate 'line', 178
    .lex "$_", param_443
.annotate 'line', 179
    find_lex $P444, "$_"
    $P445 = $P444."value"()
    find_lex $P446, "$_"
    $P447 = $P446."key"()
    get_global $P448, "%interactive_pad"
    unless_null $P448, vivify_120
    $P448 = root_new ['parrot';'Hash']
    set_global "%interactive_pad", $P448
  vivify_120:
    set $P448[$P447], $P445
.annotate 'line', 178
    .return ($P445)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "eval"  :subid("37_1300090353.08319") :outer("12_1300090353.08319")
    .param pmc param_480
    .param pmc param_481
    .param pmc param_482 :slurpy
    .param pmc param_483 :slurpy :named
.annotate 'line', 196
    .const 'Sub' $P502 = "38_1300090353.08319" 
    capture_lex $P502
    .lex "self", param_480
    .lex "$code", param_481
    .lex "@args", param_482
    .lex "%adverbs", param_483
.annotate 'line', 197
    new $P484, "Undef"
    .lex "$output", $P484
.annotate 'line', 196
    find_lex $P485, "$output"
.annotate 'line', 198
    find_lex $P486, "self"
    find_lex $P487, "$code"
    find_lex $P488, "%adverbs"
    $P489 = $P486."compile"($P487, $P488 :flat)
    store_lex "$output", $P489
.annotate 'line', 200
    find_lex $P493, "$output"
    isa $I494, $P493, "String"
    new $P495, 'Integer'
    set $P495, $I494
    isfalse $I496, $P495
    if $I496, if_492
    new $P491, 'Integer'
    set $P491, $I496
    goto if_492_end
  if_492:
.annotate 'line', 201
    find_lex $P497, "%adverbs"
    unless_null $P497, vivify_121
    $P497 = root_new ['parrot';'Hash']
  vivify_121:
    set $P498, $P497["target"]
    unless_null $P498, vivify_122
    new $P498, "Undef"
  vivify_122:
    set $S499, $P498
    iseq $I500, $S499, ""
    new $P491, 'Integer'
    set $P491, $I500
  if_492_end:
    unless $P491, if_490_end
    .const 'Sub' $P502 = "38_1300090353.08319" 
    capture_lex $P502
    $P502()
  if_490_end:
.annotate 'line', 200
    find_lex $P518, "$output"
.annotate 'line', 196
    .return ($P518)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block501"  :anon :subid("38_1300090353.08319") :outer("37_1300090353.08319")
.annotate 'line', 202
    new $P503, "Undef"
    .lex "$outer_ctx", $P503
    find_lex $P504, "%adverbs"
    unless_null $P504, vivify_123
    $P504 = root_new ['parrot';'Hash']
  vivify_123:
    set $P505, $P504["outer_ctx"]
    unless_null $P505, vivify_124
    new $P505, "Undef"
  vivify_124:
    store_lex "$outer_ctx", $P505
.annotate 'line', 203
    find_lex $P507, "$outer_ctx"
    defined $I508, $P507
    unless $I508, if_506_end
.annotate 'line', 204
    find_lex $P509, "$output"
    unless_null $P509, vivify_125
    $P509 = root_new ['parrot';'ResizablePMCArray']
  vivify_125:
    set $P510, $P509[0]
    unless_null $P510, vivify_126
    new $P510, "Undef"
  vivify_126:
    find_lex $P511, "$outer_ctx"
    $P510."set_outer_ctx"($P511)
  if_506_end:
.annotate 'line', 207
    find_lex $P512, "%adverbs"
    unless_null $P512, vivify_127
    $P512 = root_new ['parrot';'Hash']
  vivify_127:
    set $P513, $P512["trace"]
    unless_null $P513, vivify_128
    new $P513, "Undef"
  vivify_128:
    set $I514, $P513
    trace $I514
.annotate 'line', 208
    find_lex $P515, "$output"
    find_lex $P516, "@args"
    $P517 = $P515($P516 :flat)
    store_lex "$output", $P517
.annotate 'line', 209
    trace 0
.annotate 'line', 201
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "ctxsave"  :subid("39_1300090353.08319") :outer("12_1300090353.08319")
    .param pmc param_520
.annotate 'line', 215
    .lex "self", param_520
.annotate 'line', 217

                $P0 = getinterp
                $P521 = $P0['context';1]
            
    store_dynamic_lex "$*MAIN_CTX", $P521
.annotate 'line', 221
    new $P522, "Integer"
    assign $P522, 0
    store_dynamic_lex "$*CTXSAVE", $P522
.annotate 'line', 215
    .return ($P522)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "panic"  :subid("40_1300090353.08319") :outer("12_1300090353.08319")
    .param pmc param_524
    .param pmc param_525 :slurpy
.annotate 'line', 224
    .lex "self", param_524
    .lex "@args", param_525
.annotate 'line', 225
    find_lex $P526, "@args"
    join $S527, "", $P526
    die $S527
.annotate 'line', 224
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "stages"  :subid("41_1300090353.08319") :outer("12_1300090353.08319")
    .param pmc param_529
    .param pmc param_530 :optional
    .param int has_param_530 :opt_flag
.annotate 'line', 228
    .lex "self", param_529
    if has_param_530, optparam_129
    $P531 = root_new ['parrot';'ResizablePMCArray']
    set param_530, $P531
  optparam_129:
    .lex "@value", param_530
.annotate 'line', 229
    find_lex $P533, "@value"
    set $N534, $P533
    unless $N534, if_532_end
.annotate 'line', 230
    find_lex $P535, "@value"
    find_lex $P536, "self"
    get_global $P537, "$?CLASS"
    setattribute $P536, $P537, "@!stages", $P535
  if_532_end:
.annotate 'line', 229
    find_lex $P538, "self"
    get_global $P539, "$?CLASS"
    getattribute $P540, $P538, $P539, "@!stages"
    unless_null $P540, vivify_130
    $P540 = root_new ['parrot';'ResizablePMCArray']
  vivify_130:
.annotate 'line', 228
    .return ($P540)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "parsegrammar"  :subid("42_1300090353.08319") :outer("12_1300090353.08319")
    .param pmc param_542
    .param pmc param_543 :slurpy
.annotate 'line', 235
    .lex "self", param_542
    .lex "@value", param_543
.annotate 'line', 236
    find_lex $P545, "@value"
    set $N546, $P545
    unless $N546, if_544_end
.annotate 'line', 237
    find_lex $P547, "@value"
    unless_null $P547, vivify_131
    $P547 = root_new ['parrot';'ResizablePMCArray']
  vivify_131:
    set $P548, $P547[0]
    unless_null $P548, vivify_132
    new $P548, "Undef"
  vivify_132:
    find_lex $P549, "self"
    get_global $P550, "$?CLASS"
    setattribute $P549, $P550, "$!parsegrammar", $P548
  if_544_end:
.annotate 'line', 236
    find_lex $P551, "self"
    get_global $P552, "$?CLASS"
    getattribute $P553, $P551, $P552, "$!parsegrammar"
    unless_null $P553, vivify_133
    new $P553, "Undef"
  vivify_133:
.annotate 'line', 235
    .return ($P553)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "parseactions"  :subid("43_1300090353.08319") :outer("12_1300090353.08319")
    .param pmc param_555
    .param pmc param_556 :slurpy
.annotate 'line', 242
    .lex "self", param_555
    .lex "@value", param_556
.annotate 'line', 243
    find_lex $P558, "@value"
    set $N559, $P558
    unless $N559, if_557_end
.annotate 'line', 244
    find_lex $P560, "@value"
    unless_null $P560, vivify_134
    $P560 = root_new ['parrot';'ResizablePMCArray']
  vivify_134:
    set $P561, $P560[0]
    unless_null $P561, vivify_135
    new $P561, "Undef"
  vivify_135:
    find_lex $P562, "self"
    get_global $P563, "$?CLASS"
    setattribute $P562, $P563, "$!parseactions", $P561
  if_557_end:
.annotate 'line', 243
    find_lex $P564, "self"
    get_global $P565, "$?CLASS"
    getattribute $P566, $P564, $P565, "$!parseactions"
    unless_null $P566, vivify_136
    new $P566, "Undef"
  vivify_136:
.annotate 'line', 242
    .return ($P566)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "astgrammar"  :subid("44_1300090353.08319") :outer("12_1300090353.08319")
    .param pmc param_568
    .param pmc param_569 :slurpy
.annotate 'line', 249
    .lex "self", param_568
    .lex "@value", param_569
.annotate 'line', 250
    find_lex $P571, "@value"
    set $N572, $P571
    unless $N572, if_570_end
.annotate 'line', 251
    find_lex $P573, "@value"
    unless_null $P573, vivify_137
    $P573 = root_new ['parrot';'ResizablePMCArray']
  vivify_137:
    set $P574, $P573[0]
    unless_null $P574, vivify_138
    new $P574, "Undef"
  vivify_138:
    find_lex $P575, "self"
    get_global $P576, "$?CLASS"
    setattribute $P575, $P576, "$!astgrammar", $P574
  if_570_end:
.annotate 'line', 250
    find_lex $P577, "self"
    get_global $P578, "$?CLASS"
    getattribute $P579, $P577, $P578, "$!astgrammar"
    unless_null $P579, vivify_139
    new $P579, "Undef"
  vivify_139:
.annotate 'line', 249
    .return ($P579)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "commandline_banner"  :subid("45_1300090353.08319") :outer("12_1300090353.08319")
    .param pmc param_581
    .param pmc param_582 :optional
    .param int has_param_582 :opt_flag
.annotate 'line', 256
    .lex "self", param_581
    if has_param_582, optparam_140
    new $P583, "Undef"
    set param_582, $P583
  optparam_140:
    .lex "$value", param_582
.annotate 'line', 257
    find_lex $P585, "$value"
    defined $I586, $P585
    unless $I586, if_584_end
.annotate 'line', 258
    find_lex $P587, "$value"
    find_lex $P588, "self"
    get_global $P589, "$?CLASS"
    setattribute $P588, $P589, "$!commandline_banner", $P587
  if_584_end:
.annotate 'line', 257
    find_lex $P590, "self"
    get_global $P591, "$?CLASS"
    getattribute $P592, $P590, $P591, "$!commandline_banner"
    unless_null $P592, vivify_141
    new $P592, "Undef"
  vivify_141:
.annotate 'line', 256
    .return ($P592)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "commandline_prompt"  :subid("46_1300090353.08319") :outer("12_1300090353.08319")
    .param pmc param_594
    .param pmc param_595 :optional
    .param int has_param_595 :opt_flag
.annotate 'line', 263
    .lex "self", param_594
    if has_param_595, optparam_142
    new $P596, "Undef"
    set param_595, $P596
  optparam_142:
    .lex "$value", param_595
.annotate 'line', 264
    find_lex $P598, "$value"
    defined $I599, $P598
    unless $I599, if_597_end
.annotate 'line', 265
    find_lex $P600, "$value"
    find_lex $P601, "self"
    get_global $P602, "$?CLASS"
    setattribute $P601, $P602, "$!commandline_prompt", $P600
  if_597_end:
.annotate 'line', 264
    find_lex $P603, "self"
    get_global $P604, "$?CLASS"
    getattribute $P605, $P603, $P604, "$!commandline_prompt"
    unless_null $P605, vivify_143
    new $P605, "Undef"
  vivify_143:
.annotate 'line', 263
    .return ($P605)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "compiler_progname"  :subid("47_1300090353.08319") :outer("12_1300090353.08319")
    .param pmc param_607
    .param pmc param_608 :optional
    .param int has_param_608 :opt_flag
.annotate 'line', 270
    .lex "self", param_607
    if has_param_608, optparam_144
    new $P609, "Undef"
    set param_608, $P609
  optparam_144:
    .lex "$value", param_608
.annotate 'line', 271
    find_lex $P611, "$value"
    defined $I612, $P611
    unless $I612, if_610_end
.annotate 'line', 272
    find_lex $P613, "$value"
    find_lex $P614, "self"
    get_global $P615, "$?CLASS"
    setattribute $P614, $P615, "$!compiler_progname", $P613
  if_610_end:
.annotate 'line', 271
    find_lex $P616, "self"
    get_global $P617, "$?CLASS"
    getattribute $P618, $P616, $P617, "$!compiler_progname"
    unless_null $P618, vivify_145
    new $P618, "Undef"
  vivify_145:
.annotate 'line', 270
    .return ($P618)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "commandline_options"  :subid("48_1300090353.08319") :outer("12_1300090353.08319")
    .param pmc param_620
    .param pmc param_621 :optional
    .param int has_param_621 :opt_flag
.annotate 'line', 277
    .lex "self", param_620
    if has_param_621, optparam_146
    $P622 = root_new ['parrot';'ResizablePMCArray']
    set param_621, $P622
  optparam_146:
    .lex "@value", param_621
.annotate 'line', 278
    find_lex $P624, "@value"
    set $N625, $P624
    unless $N625, if_623_end
.annotate 'line', 279
    find_lex $P626, "@value"
    find_lex $P627, "self"
    get_global $P628, "$?CLASS"
    setattribute $P627, $P628, "@!cmdoptions", $P626
  if_623_end:
.annotate 'line', 278
    find_lex $P629, "self"
    get_global $P630, "$?CLASS"
    getattribute $P631, $P629, $P630, "@!cmdoptions"
    unless_null $P631, vivify_147
    $P631 = root_new ['parrot';'ResizablePMCArray']
  vivify_147:
.annotate 'line', 277
    .return ($P631)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "command_line"  :subid("49_1300090353.08319") :outer("12_1300090353.08319")
    .param pmc param_633
    .param pmc param_634
    .param pmc param_635 :slurpy :named
.annotate 'line', 284
    .const 'Sub' $P661 = "50_1300090353.08319" 
    capture_lex $P661
    .lex "self", param_633
    .lex "@args", param_634
    .lex "%adverbs", param_635
.annotate 'line', 297
    new $P636, "Undef"
    .lex "$program-name", $P636
.annotate 'line', 298
    new $P637, "Undef"
    .lex "$res", $P637
.annotate 'line', 299
    $P638 = root_new ['parrot';'Hash']
    .lex "%opts", $P638
.annotate 'line', 300
    $P639 = root_new ['parrot';'ResizablePMCArray']
    .lex "@a", $P639
.annotate 'line', 293
    find_lex $P641, "@args"
    unless_null $P641, vivify_148
    $P641 = root_new ['parrot';'ResizablePMCArray']
  vivify_148:
    set $P642, $P641[2]
    unless_null $P642, vivify_149
    new $P642, "Undef"
  vivify_149:
    set $S643, $P642
    index $I644, $S643, "@INC"
    set $N645, $I644
    isge $I646, $N645, 0.0
    unless $I646, if_640_end
.annotate 'line', 294
    exit 0
  if_640_end:
.annotate 'line', 297
    find_lex $P647, "@args"
    unless_null $P647, vivify_150
    $P647 = root_new ['parrot';'ResizablePMCArray']
  vivify_150:
    set $P648, $P647[0]
    unless_null $P648, vivify_151
    new $P648, "Undef"
  vivify_151:
    store_lex "$program-name", $P648
.annotate 'line', 298
    find_lex $P649, "self"
    find_lex $P650, "@args"
    $P651 = $P649."process_args"($P650)
    store_lex "$res", $P651
.annotate 'line', 299
    find_lex $P652, "$res"
    $P653 = $P652."options"()
    store_lex "%opts", $P653
.annotate 'line', 300
    find_lex $P654, "$res"
    $P655 = $P654."arguments"()
    store_lex "@a", $P655
.annotate 'line', 302
    find_lex $P657, "%opts"
    defined $I658, $P657
    unless $I658, for_undef_152
    iter $P656, $P657
    new $P669, 'ExceptionHandler'
    set_label $P669, loop668_handler
    $P669."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P669
  loop668_test:
    unless $P656, loop668_done
    shift $P659, $P656
  loop668_redo:
    .const 'Sub' $P661 = "50_1300090353.08319" 
    capture_lex $P661
    $P661($P659)
  loop668_next:
    goto loop668_test
  loop668_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P670, exception, 'type'
    eq $P670, .CONTROL_LOOP_NEXT, loop668_next
    eq $P670, .CONTROL_LOOP_REDO, loop668_redo
  loop668_done:
    pop_eh 
  for_undef_152:
.annotate 'line', 305
    find_lex $P672, "%adverbs"
    unless_null $P672, vivify_156
    $P672 = root_new ['parrot';'Hash']
  vivify_156:
    set $P673, $P672["help"]
    unless_null $P673, vivify_157
    new $P673, "Undef"
  vivify_157:
    unless $P673, if_671_end
    find_lex $P674, "self"
    find_lex $P675, "$program-name"
    $P674."usage"($P675)
  if_671_end:
.annotate 'line', 306
    find_lex $P677, "%adverbs"
    unless_null $P677, vivify_158
    $P677 = root_new ['parrot';'Hash']
  vivify_158:
    set $P678, $P677["version"]
    unless_null $P678, vivify_159
    new $P678, "Undef"
  vivify_159:
    unless $P678, if_676_end
    find_lex $P679, "self"
    $P679."version"()
  if_676_end:
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
.sub "_block660"  :anon :subid("50_1300090353.08319") :outer("49_1300090353.08319")
    .param pmc param_662
.annotate 'line', 302
    .lex "$k", param_662
.annotate 'line', 303
    find_lex $P663, "$k"
    find_lex $P664, "%opts"
    unless_null $P664, vivify_153
    $P664 = root_new ['parrot';'Hash']
  vivify_153:
    set $P665, $P664[$P663]
    unless_null $P665, vivify_154
    new $P665, "Undef"
  vivify_154:
    find_lex $P666, "$k"
    find_lex $P667, "%adverbs"
    unless_null $P667, vivify_155
    $P667 = root_new ['parrot';'Hash']
    store_lex "%adverbs", $P667
  vivify_155:
    set $P667[$P666], $P665
.annotate 'line', 302
    .return ($P665)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "process_args"  :subid("51_1300090353.08319") :outer("12_1300090353.08319")
    .param pmc param_681
    .param pmc param_682
.annotate 'line', 402
    .const 'Sub' $P697 = "52_1300090353.08319" 
    capture_lex $P697
    .lex "self", param_681
    .lex "@args", param_682
.annotate 'line', 406
    new $P683, "Undef"
    .lex "$p", $P683
.annotate 'line', 409
    new $P684, "Undef"
    .lex "$res", $P684
.annotate 'line', 404
    find_lex $P685, "self"
    find_lex $P686, "@args"
    $P687 = $P686."shift"()
    $P685."compiler_progname"($P687)
.annotate 'line', 406
    get_hll_global $P688, ["HLL";"CommandLine"], "Parser"
    find_lex $P689, "self"
    get_global $P690, "$?CLASS"
    getattribute $P691, $P689, $P690, "@!cmdoptions"
    unless_null $P691, vivify_160
    $P691 = root_new ['parrot';'ResizablePMCArray']
  vivify_160:
    $P692 = $P688."new"($P691)
    store_lex "$p", $P692
.annotate 'line', 407
    find_lex $P693, "$p"
    $P693."add-stopper"("-e")
.annotate 'line', 408
    find_lex $P694, "$p"
    $P694."stop-after-first-arg"()
    find_lex $P695, "$res"
.annotate 'line', 410
    .const 'Sub' $P697 = "52_1300090353.08319" 
    capture_lex $P697
    $P697()
    find_lex $P715, "$res"
.annotate 'line', 402
    .return ($P715)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block696"  :anon :subid("52_1300090353.08319") :outer("51_1300090353.08319")
.annotate 'line', 410
    .const 'Sub' $P707 = "53_1300090353.08319" 
    capture_lex $P707
    new $P703, 'ExceptionHandler'
    set_label $P703, control_702
    $P703."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P703
.annotate 'line', 411
    find_lex $P698, "$p"
    find_lex $P699, "@args"
    $P700 = $P698."parse"($P699)
    store_lex "$res", $P700
.annotate 'line', 410
    pop_eh 
    goto skip_handler_701
  control_702:
.annotate 'line', 412
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P707 = "53_1300090353.08319" 
    newclosure $P712, $P707
    $P712(exception)
    new $P713, 'Integer'
    set $P713, 1
    set exception["handled"], $P713
    set $I714, exception["handled"]
    ne $I714, 1, nothandled_705
  handled_704:
    .return (exception)
  nothandled_705:
    rethrow exception
  skip_handler_701:
.annotate 'line', 410
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block706"  :anon :subid("53_1300090353.08319") :outer("52_1300090353.08319")
    .param pmc param_708
.annotate 'line', 412
    .lex "$_", param_708
    find_lex $P709, "$_"
    .lex "$!", $P709
.annotate 'line', 413
    find_lex $P710, "$_"
    say $P710
.annotate 'line', 414
    find_lex $P711, "self"
    $P711."usage"()
.annotate 'line', 415
    exit 1
.annotate 'line', 412
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "evalfiles"  :subid("54_1300090353.08319") :outer("12_1300090353.08319")
    .param pmc param_719
    .param pmc param_720
    .param pmc param_721 :slurpy
    .param pmc param_722 :slurpy :named
.annotate 'line', 421
    .const 'Sub' $P747 = "55_1300090353.08319" 
    capture_lex $P747
    new $P718, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P718, control_717
    push_eh $P718
    .lex "self", param_719
    .lex "$files", param_720
    .lex "@args", param_721
    .lex "%adverbs", param_722
.annotate 'line', 422
    new $P723, "Undef"
    .lex "$target", $P723
.annotate 'line', 423
    new $P724, "Undef"
    .lex "$encoding", $P724
.annotate 'line', 424
    $P725 = root_new ['parrot';'ResizablePMCArray']
    .lex "@files", $P725
.annotate 'line', 425
    $P726 = root_new ['parrot';'ResizablePMCArray']
    .lex "@codes", $P726
.annotate 'line', 422
    find_lex $P727, "%adverbs"
    unless_null $P727, vivify_161
    $P727 = root_new ['parrot';'Hash']
  vivify_161:
    set $P728, $P727["target"]
    unless_null $P728, vivify_162
    new $P728, "Undef"
  vivify_162:
    set $S729, $P728
    downcase $S730, $S729
    new $P731, 'String'
    set $P731, $S730
    store_lex "$target", $P731
.annotate 'line', 423
    find_lex $P732, "%adverbs"
    unless_null $P732, vivify_163
    $P732 = root_new ['parrot';'Hash']
  vivify_163:
    set $P733, $P732["encoding"]
    unless_null $P733, vivify_164
    new $P733, "Undef"
  vivify_164:
    store_lex "$encoding", $P733
.annotate 'line', 424
    find_lex $P736, "$files"
    does $I737, $P736, "array"
    if $I737, if_735
    find_lex $P739, "$files"
    new $P740, "ResizablePMCArray"
    push $P740, $P739
    set $P734, $P740
    goto if_735_end
  if_735:
    find_lex $P738, "$files"
    set $P734, $P738
  if_735_end:
    store_lex "@files", $P734
    find_lex $P741, "@codes"
.annotate 'line', 426
    find_lex $P743, "@files"
    defined $I744, $P743
    unless $I744, for_undef_165
    iter $P742, $P743
    new $P809, 'ExceptionHandler'
    set_label $P809, loop808_handler
    $P809."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P809
  loop808_test:
    unless $P742, loop808_done
    shift $P745, $P742
  loop808_redo:
    .const 'Sub' $P747 = "55_1300090353.08319" 
    capture_lex $P747
    $P747($P745)
  loop808_next:
    goto loop808_test
  loop808_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P810, exception, 'type'
    eq $P810, .CONTROL_LOOP_NEXT, loop808_next
    eq $P810, .CONTROL_LOOP_REDO, loop808_redo
  loop808_done:
    pop_eh 
  for_undef_165:
.annotate 'line', 421
    .return ($P742)
  control_717:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P811, exception, "payload"
    .return ($P811)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block746"  :anon :subid("55_1300090353.08319") :outer("54_1300090353.08319")
    .param pmc param_752
.annotate 'line', 426
    .const 'Sub' $P756 = "56_1300090353.08319" 
    capture_lex $P756
.annotate 'line', 427
    new $P748, "Undef"
    .lex "$in-handle", $P748
.annotate 'line', 428
    new $P749, "Undef"
    .lex "$err", $P749
.annotate 'line', 441
    new $P750, "Undef"
    .lex "$code", $P750
.annotate 'line', 443
    new $P751, "Undef"
    .lex "$r", $P751
    .lex "$_", param_752
.annotate 'line', 427
    new $P753, "FileHandle"
    store_lex "$in-handle", $P753
.annotate 'line', 428
    new $P754, "Integer"
    assign $P754, 0
    store_lex "$err", $P754
.annotate 'line', 429
    .const 'Sub' $P756 = "56_1300090353.08319" 
    capture_lex $P756
    $P756()
.annotate 'line', 440
    find_lex $P780, "$err"
    unless $P780, if_779_end
    find_lex $P781, "$err"
    die $P781
  if_779_end:
.annotate 'line', 441
    find_lex $P782, "@codes"
    join $S783, "", $P782
    new $P784, 'String'
    set $P784, $S783
    store_lex "$code", $P784
.annotate 'line', 443
    find_lex $P785, "self"
    find_lex $P786, "$code"
    find_lex $P787, "@args"
    find_lex $P788, "%adverbs"
    $P789 = $P785."eval"($P786, $P787 :flat, $P788 :flat)
    store_lex "$r", $P789
.annotate 'line', 444
    find_lex $P794, "$target"
    set $S795, $P794
    iseq $I796, $S795, ""
    unless $I796, unless_793
    new $P792, 'Integer'
    set $P792, $I796
    goto unless_793_end
  unless_793:
    find_lex $P797, "$target"
    set $S798, $P797
    iseq $I799, $S798, "pir"
    new $P792, 'Integer'
    set $P792, $I799
  unless_793_end:
    if $P792, if_791
.annotate 'line', 447
    new $P802, "Exception"
    set $P802['type'], .CONTROL_RETURN
    find_lex $P803, "self"
    find_lex $P804, "$r"
    find_lex $P805, "$target"
    find_lex $P806, "%adverbs"
    $P807 = $P803."dumper"($P804, $P805, $P806 :flat)
    setattribute $P802, 'payload', $P807
    throw $P802
.annotate 'line', 446
    goto if_791_end
  if_791:
.annotate 'line', 445
    new $P800, "Exception"
    set $P800['type'], .CONTROL_RETURN
    find_lex $P801, "$r"
    setattribute $P800, 'payload', $P801
    throw $P800
  if_791_end:
.annotate 'line', 426
    .return ($P790)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block755"  :anon :subid("56_1300090353.08319") :outer("55_1300090353.08319")
.annotate 'line', 429
    .const 'Sub' $P770 = "57_1300090353.08319" 
    capture_lex $P770
    new $P766, 'ExceptionHandler'
    set_label $P766, control_765
    $P766."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P766
.annotate 'line', 433
    find_lex $P757, "$in-handle"
    find_lex $P758, "$encoding"
    $P757."encoding"($P758)
.annotate 'line', 434
    find_lex $P759, "@codes"
    find_lex $P760, "$in-handle"
    find_lex $P761, "$_"
    $P762 = $P760."readall"($P761)
    push $P759, $P762
.annotate 'line', 435
    find_lex $P763, "$in-handle"
    $P763."close"()
.annotate 'line', 429
    pop_eh 
    goto skip_handler_764
  control_765:
.annotate 'line', 436
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P770 = "57_1300090353.08319" 
    newclosure $P776, $P770
    $P776(exception)
    new $P777, 'Integer'
    set $P777, 1
    set exception["handled"], $P777
    set $I778, exception["handled"]
    ne $I778, 1, nothandled_768
  handled_767:
    .return (exception)
  nothandled_768:
    rethrow exception
  skip_handler_764:
.annotate 'line', 429
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block769"  :anon :subid("57_1300090353.08319") :outer("56_1300090353.08319")
    .param pmc param_771
.annotate 'line', 436
    .lex "$_", param_771
    find_lex $P772, "$_"
    .lex "$!", $P772
.annotate 'line', 437
    new $P773, 'String'
    set $P773, "Error while reading from file: "
    find_lex $P774, "$_"
    concat $P775, $P773, $P774
    store_lex "$err", $P775
.annotate 'line', 436
    .return ($P775)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "compile"  :subid("58_1300090353.08319") :outer("12_1300090353.08319")
    .param pmc param_815
    .param pmc param_816
    .param pmc param_817 :slurpy :named
.annotate 'line', 453
    .const 'Sub' $P838 = "59_1300090353.08319" 
    capture_lex $P838
    new $P814, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P814, control_813
    push_eh $P814
    .lex "self", param_815
    .lex "$source", param_816
    .lex "%adverbs", param_817
.annotate 'line', 454
    $P818 = root_new ['parrot';'Hash']
    .lex "%*COMPILING", $P818
.annotate 'line', 456
    new $P819, "Undef"
    .lex "$target", $P819
.annotate 'line', 457
    new $P820, "Undef"
    .lex "$result", $P820
.annotate 'line', 458
    new $P821, "Undef"
    .lex "$stderr", $P821
.annotate 'line', 454
    find_lex $P822, "%adverbs"
    find_lex $P823, "%*COMPILING"
    unless_null $P823, vivify_166
    get_hll_global $P823, "%COMPILING"
    unless_null $P823, vivify_167
    die "Contextual %*COMPILING not found"
  vivify_167:
    store_lex "%*COMPILING", $P823
  vivify_166:
    set $P823["%?OPTIONS"], $P822
.annotate 'line', 456
    find_lex $P824, "%adverbs"
    unless_null $P824, vivify_168
    $P824 = root_new ['parrot';'Hash']
  vivify_168:
    set $P825, $P824["target"]
    unless_null $P825, vivify_169
    new $P825, "Undef"
  vivify_169:
    set $S826, $P825
    downcase $S827, $S826
    new $P828, 'String'
    set $P828, $S827
    store_lex "$target", $P828
.annotate 'line', 457
    find_lex $P829, "$source"
    store_lex "$result", $P829
.annotate 'line', 458
    getinterp $P830
    $P831 = $P830."stderr_handle"()
    store_lex "$stderr", $P831
.annotate 'line', 459
    find_lex $P833, "self"
    $P834 = $P833."stages"()
    defined $I835, $P834
    unless $I835, for_undef_170
    iter $P832, $P834
    new $P874, 'ExceptionHandler'
    set_label $P874, loop873_handler
    $P874."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P874
  loop873_test:
    unless $P832, loop873_done
    shift $P836, $P832
  loop873_redo:
    .const 'Sub' $P838 = "59_1300090353.08319" 
    capture_lex $P838
    $P838($P836)
  loop873_next:
    goto loop873_test
  loop873_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P875, exception, 'type'
    eq $P875, .CONTROL_LOOP_NEXT, loop873_next
    eq $P875, .CONTROL_LOOP_REDO, loop873_redo
  loop873_done:
    pop_eh 
  for_undef_170:
.annotate 'line', 469
    new $P876, "Exception"
    set $P876['type'], .CONTROL_RETURN
    find_lex $P877, "$result"
    setattribute $P876, 'payload', $P877
    throw $P876
.annotate 'line', 453
    .return ()
  control_813:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P878, exception, "payload"
    .return ($P878)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block837"  :anon :subid("59_1300090353.08319") :outer("58_1300090353.08319")
    .param pmc param_841
.annotate 'line', 460
    new $P839, "Undef"
    .lex "$timestamp", $P839
.annotate 'line', 462
    new $P840, "Undef"
    .lex "$diff", $P840
    .lex "$_", param_841
.annotate 'line', 460
    time $N842
    new $P843, 'Float'
    set $P843, $N842
    store_lex "$timestamp", $P843
.annotate 'line', 461
    find_lex $P844, "self"
    find_lex $P845, "$result"
    find_lex $P846, "%adverbs"
    find_lex $P847, "$_"
    set $S848, $P847
    $P849 = $P844.$S848($P845, $P846 :flat)
    store_lex "$result", $P849
.annotate 'line', 462
    time $N850
    new $P851, 'Float'
    set $P851, $N850
    find_lex $P852, "$timestamp"
    sub $P853, $P851, $P852
    store_lex "$diff", $P853
.annotate 'line', 463
    find_lex $P855, "%adverbs"
    unless_null $P855, vivify_171
    $P855 = root_new ['parrot';'Hash']
  vivify_171:
    set $P856, $P855["stagestats"]
    unless_null $P856, vivify_172
    new $P856, "Undef"
  vivify_172:
    unless $P856, if_854_end
.annotate 'line', 465
    find_lex $P857, "$stderr"
    new $P858, 'String'
    set $P858, "Stage "
    find_lex $P859, "$_"
    concat $P860, $P858, $P859
    concat $P861, $P860, ": "
    find_lex $P862, "$diff"
    concat $P863, $P861, $P862
    concat $P864, $P863, "\n"
    $P857."print__N"($P864)
  if_854_end:
.annotate 'line', 467
    find_lex $P867, "$_"
    set $S868, $P867
    find_lex $P869, "$target"
    set $S870, $P869
    iseq $I871, $S868, $S870
    if $I871, if_866
    new $P865, 'Integer'
    set $P865, $I871
    goto if_866_end
  if_866:
    set $I872, .CONTROL_LOOP_LAST
    die 0, $I872
  if_866_end:
.annotate 'line', 459
    .return ($P865)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "parse"  :subid("60_1300090353.08319") :outer("12_1300090353.08319")
    .param pmc param_880
    .param pmc param_881
    .param pmc param_882 :slurpy :named
.annotate 'line', 472
    .lex "self", param_880
    .lex "$source", param_881
    .lex "%adverbs", param_882
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
.sub "past"  :subid("61_1300090353.08319") :outer("12_1300090353.08319")
    .param pmc param_884
    .param pmc param_885
    .param pmc param_886 :slurpy :named
.annotate 'line', 521
    .lex "self", param_884
    .lex "$source", param_885
    .lex "%adverbs", param_886
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
.sub "post"  :subid("62_1300090353.08319") :outer("12_1300090353.08319")
    .param pmc param_888
    .param pmc param_889
    .param pmc param_890 :slurpy :named
.annotate 'line', 561
    .lex "self", param_888
    .lex "$source", param_889
    .lex "%adverbs", param_890
.annotate 'line', 562
    compreg $P891, "PAST"
    find_lex $P892, "$source"
    find_lex $P893, "%adverbs"
    $P894 = $P891."to_post"($P892, $P893 :flat)
.annotate 'line', 561
    .return ($P894)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "pir"  :subid("63_1300090353.08319") :outer("12_1300090353.08319")
    .param pmc param_896
    .param pmc param_897
    .param pmc param_898 :slurpy :named
.annotate 'line', 565
    .lex "self", param_896
    .lex "$source", param_897
    .lex "%adverbs", param_898
.annotate 'line', 566
    compreg $P899, "POST"
    find_lex $P900, "$source"
    find_lex $P901, "%adverbs"
    $P902 = $P899."to_pir"($P900, $P901 :flat)
.annotate 'line', 565
    .return ($P902)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "evalpmc"  :subid("64_1300090353.08319") :outer("12_1300090353.08319")
    .param pmc param_904
    .param pmc param_905
    .param pmc param_906 :slurpy :named
.annotate 'line', 569
    .lex "self", param_904
    .lex "$source", param_905
    .lex "%adverbs", param_906
.annotate 'line', 570
    new $P907, "Undef"
    .lex "$compiler", $P907
    compreg $P908, "PIR"
    store_lex "$compiler", $P908
.annotate 'line', 571
    find_lex $P909, "$compiler"
    find_lex $P910, "$source"
    $P911 = $P909($P910)
.annotate 'line', 569
    .return ($P911)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "dumper"  :subid("65_1300090353.08319") :outer("12_1300090353.08319")
    .param pmc param_913
    .param pmc param_914
    .param pmc param_915
    .param pmc param_916 :slurpy :named
.annotate 'line', 574
    .const 'Sub' $P922 = "66_1300090353.08319" 
    capture_lex $P922
    .lex "self", param_913
    .lex "$obj", param_914
    .lex "$name", param_915
    .lex "%options", param_916
.annotate 'line', 575
    find_lex $P919, "%options"
    unless_null $P919, vivify_173
    $P919 = root_new ['parrot';'Hash']
  vivify_173:
    set $P920, $P919["dumper"]
    unless_null $P920, vivify_174
    new $P920, "Undef"
  vivify_174:
    if $P920, if_918
.annotate 'line', 581
    find_lex $P935, "$obj"
    find_lex $P936, "$name"
    $P937 = "_dumper"($P935, $P936)
.annotate 'line', 580
    set $P917, $P937
.annotate 'line', 575
    goto if_918_end
  if_918:
    .const 'Sub' $P922 = "66_1300090353.08319" 
    capture_lex $P922
    $P934 = $P922()
    set $P917, $P934
  if_918_end:
.annotate 'line', 574
    .return ($P917)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block921"  :anon :subid("66_1300090353.08319") :outer("65_1300090353.08319")
.annotate 'line', 577
    new $P923, "Undef"
    .lex "$dumper", $P923
.annotate 'line', 576
    load_bytecode "PCT/Dumper.pbc"
.annotate 'line', 577
    find_lex $P924, "%options"
    unless_null $P924, vivify_175
    $P924 = root_new ['parrot';'Hash']
  vivify_175:
    set $P925, $P924["dumper"]
    unless_null $P925, vivify_176
    new $P925, "Undef"
  vivify_176:
    set $S926, $P925
    downcase $S927, $S926
    get_hll_global $P928, ["PCT"], "Dumper"
    unless_null $P928, vivify_177
    $P928 = root_new ['parrot';'Hash']
  vivify_177:
    set $P929, $P928[$S927]
    unless_null $P929, vivify_178
    new $P929, "Undef"
  vivify_178:
    store_lex "$dumper", $P929
.annotate 'line', 578
    find_lex $P930, "$dumper"
    find_lex $P931, "$obj"
    find_lex $P932, "$name"
    $P933 = $P930($P931, $P932)
.annotate 'line', 575
    .return ($P933)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "usage"  :subid("67_1300090353.08319") :outer("12_1300090353.08319")
    .param pmc param_939
    .param pmc param_940 :optional
    .param int has_param_940 :opt_flag
.annotate 'line', 585
    .lex "self", param_939
    if has_param_940, optparam_179
    new $P941, "Undef"
    set param_940, $P941
  optparam_179:
    .lex "$name", param_940
.annotate 'line', 586
    find_lex $P943, "$name"
    unless $P943, if_942_end
.annotate 'line', 587
    find_lex $P944, "$name"
    "say"($P944)
  if_942_end:
.annotate 'line', 589
    find_lex $P945, "self"
    get_global $P946, "$?CLASS"
    getattribute $P947, $P945, $P946, "$!usage"
    unless_null $P947, vivify_180
    new $P947, "Undef"
  vivify_180:
    say $P947
.annotate 'line', 590
    exit 0
.annotate 'line', 585
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "version"  :subid("68_1300090353.08319") :outer("12_1300090353.08319")
    .param pmc param_949
.annotate 'line', 593
    .lex "self", param_949
.annotate 'line', 594
    find_lex $P950, "self"
    get_global $P951, "$?CLASS"
    getattribute $P952, $P950, $P951, "$!version"
    unless_null $P952, vivify_181
    new $P952, "Undef"
  vivify_181:
    say $P952
.annotate 'line', 595
    exit 0
.annotate 'line', 593
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "removestage"  :subid("69_1300090353.08319") :outer("12_1300090353.08319")
    .param pmc param_954
    .param pmc param_955
.annotate 'line', 598
    .const 'Sub' $P965 = "70_1300090353.08319" 
    capture_lex $P965
    .lex "self", param_954
    .lex "$stagename", param_955
.annotate 'line', 599
    $P956 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new_stages", $P956
    new $P957, "ResizableStringArray"
    store_lex "@new_stages", $P957
.annotate 'line', 600
    find_lex $P959, "self"
    get_global $P960, "$?CLASS"
    getattribute $P961, $P959, $P960, "@!stages"
    unless_null $P961, vivify_182
    $P961 = root_new ['parrot';'ResizablePMCArray']
  vivify_182:
    defined $I962, $P961
    unless $I962, for_undef_183
    iter $P958, $P961
    new $P978, 'ExceptionHandler'
    set_label $P978, loop977_handler
    $P978."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P978
  loop977_test:
    unless $P958, loop977_done
    shift $P963, $P958
  loop977_redo:
    .const 'Sub' $P965 = "70_1300090353.08319" 
    capture_lex $P965
    $P965($P963)
  loop977_next:
    goto loop977_test
  loop977_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P979, exception, 'type'
    eq $P979, .CONTROL_LOOP_NEXT, loop977_next
    eq $P979, .CONTROL_LOOP_REDO, loop977_redo
  loop977_done:
    pop_eh 
  for_undef_183:
.annotate 'line', 605
    find_lex $P980, "@new_stages"
    find_lex $P981, "self"
    get_global $P982, "$?CLASS"
    setattribute $P981, $P982, "@!stages", $P980
.annotate 'line', 598
    .return ($P980)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block964"  :anon :subid("70_1300090353.08319") :outer("69_1300090353.08319")
    .param pmc param_966
.annotate 'line', 600
    .lex "$_", param_966
.annotate 'line', 601
    find_lex $P969, "$_"
    set $S970, $P969
    find_lex $P971, "$stagename"
    set $S972, $P971
    isne $I973, $S970, $S972
    if $I973, if_968
    new $P967, 'Integer'
    set $P967, $I973
    goto if_968_end
  if_968:
.annotate 'line', 602
    find_lex $P974, "@new_stages"
    find_lex $P975, "$_"
    $P976 = $P974."push"($P975)
.annotate 'line', 601
    set $P967, $P976
  if_968_end:
.annotate 'line', 600
    .return ($P967)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "addstage"  :subid("71_1300090353.08319") :outer("12_1300090353.08319")
    .param pmc param_986
    .param pmc param_987
    .param pmc param_988 :slurpy :named
.annotate 'line', 608
    .const 'Sub' $P1025 = "73_1300090353.08319" 
    capture_lex $P1025
    .const 'Sub' $P1007 = "72_1300090353.08319" 
    capture_lex $P1007
    new $P985, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P985, control_984
    push_eh $P985
    .lex "self", param_986
    .lex "$stagename", param_987
    .lex "%adverbs", param_988
.annotate 'line', 609
    new $P989, "Undef"
    .lex "$position", $P989
.annotate 'line', 610
    new $P990, "Undef"
    .lex "$where", $P990
.annotate 'line', 623
    $P991 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new-stages", $P991
.annotate 'line', 608
    find_lex $P992, "$position"
    find_lex $P993, "$where"
.annotate 'line', 611
    find_lex $P995, "%adverbs"
    unless_null $P995, vivify_184
    $P995 = root_new ['parrot';'Hash']
  vivify_184:
    set $P996, $P995["before"]
    unless_null $P996, vivify_185
    new $P996, "Undef"
  vivify_185:
    if $P996, if_994
.annotate 'line', 614
    find_lex $P1001, "%adverbs"
    unless_null $P1001, vivify_186
    $P1001 = root_new ['parrot';'Hash']
  vivify_186:
    set $P1002, $P1001["after"]
    unless_null $P1002, vivify_187
    new $P1002, "Undef"
  vivify_187:
    if $P1002, if_1000
.annotate 'line', 617
    .const 'Sub' $P1007 = "72_1300090353.08319" 
    capture_lex $P1007
    $P1007()
    goto if_1000_end
  if_1000:
.annotate 'line', 615
    find_lex $P1003, "%adverbs"
    unless_null $P1003, vivify_188
    $P1003 = root_new ['parrot';'Hash']
  vivify_188:
    set $P1004, $P1003["after"]
    unless_null $P1004, vivify_189
    new $P1004, "Undef"
  vivify_189:
    store_lex "$where", $P1004
.annotate 'line', 616
    new $P1005, "String"
    assign $P1005, "after"
    store_lex "$position", $P1005
  if_1000_end:
.annotate 'line', 614
    goto if_994_end
  if_994:
.annotate 'line', 612
    find_lex $P997, "%adverbs"
    unless_null $P997, vivify_190
    $P997 = root_new ['parrot';'Hash']
  vivify_190:
    set $P998, $P997["before"]
    unless_null $P998, vivify_191
    new $P998, "Undef"
  vivify_191:
    store_lex "$where", $P998
.annotate 'line', 613
    new $P999, "String"
    assign $P999, "before"
    store_lex "$position", $P999
  if_994_end:
.annotate 'line', 623
    new $P1018, "ResizableStringArray"
    store_lex "@new-stages", $P1018
.annotate 'line', 624
    find_lex $P1020, "self"
    $P1021 = $P1020."stages"()
    defined $I1022, $P1021
    unless $I1022, for_undef_192
    iter $P1019, $P1021
    new $P1050, 'ExceptionHandler'
    set_label $P1050, loop1049_handler
    $P1050."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1050
  loop1049_test:
    unless $P1019, loop1049_done
    shift $P1023, $P1019
  loop1049_redo:
    .const 'Sub' $P1025 = "73_1300090353.08319" 
    capture_lex $P1025
    $P1025($P1023)
  loop1049_next:
    goto loop1049_test
  loop1049_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1051, exception, 'type'
    eq $P1051, .CONTROL_LOOP_NEXT, loop1049_next
    eq $P1051, .CONTROL_LOOP_REDO, loop1049_redo
  loop1049_done:
    pop_eh 
  for_undef_192:
.annotate 'line', 637
    find_lex $P1052, "self"
    find_lex $P1053, "@new-stages"
    $P1054 = $P1052."stages"($P1053)
.annotate 'line', 608
    .return ($P1054)
  control_984:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1055, exception, "payload"
    .return ($P1055)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1006"  :anon :subid("72_1300090353.08319") :outer("71_1300090353.08319")
.annotate 'line', 618
    $P1008 = root_new ['parrot';'ResizablePMCArray']
    .lex "@new-stages", $P1008
    find_lex $P1009, "self"
    $P1010 = $P1009."stages"()
    clone $P1011, $P1010
    store_lex "@new-stages", $P1011
.annotate 'line', 619
    find_lex $P1012, "@new-stages"
    find_lex $P1013, "$stagename"
    push $P1012, $P1013
.annotate 'line', 620
    find_lex $P1014, "self"
    find_lex $P1015, "@new-stages"
    $P1014."stages"($P1015)
.annotate 'line', 621
    new $P1016, "Exception"
    set $P1016['type'], .CONTROL_RETURN
    new $P1017, "Integer"
    assign $P1017, 1
    setattribute $P1016, 'payload', $P1017
    throw $P1016
.annotate 'line', 617
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1024"  :anon :subid("73_1300090353.08319") :outer("71_1300090353.08319")
    .param pmc param_1026
.annotate 'line', 624
    .lex "$_", param_1026
.annotate 'line', 625
    find_lex $P1029, "$_"
    set $S1030, $P1029
    find_lex $P1031, "$where"
    set $S1032, $P1031
    iseq $I1033, $S1030, $S1032
    if $I1033, if_1028
.annotate 'line', 634
    find_lex $P1047, "@new-stages"
    find_lex $P1048, "$_"
    push $P1047, $P1048
.annotate 'line', 633
    set $P1027, $P1047
.annotate 'line', 625
    goto if_1028_end
  if_1028:
.annotate 'line', 626
    find_lex $P1036, "$position"
    set $S1037, $P1036
    iseq $I1038, $S1037, "before"
    if $I1038, if_1035
.annotate 'line', 630
    find_lex $P1043, "@new-stages"
    find_lex $P1044, "$_"
    push $P1043, $P1044
.annotate 'line', 631
    find_lex $P1045, "@new-stages"
    find_lex $P1046, "$stagename"
    push $P1045, $P1046
.annotate 'line', 629
    set $P1034, $P1045
.annotate 'line', 626
    goto if_1035_end
  if_1035:
.annotate 'line', 627
    find_lex $P1039, "@new-stages"
    find_lex $P1040, "$stagename"
    push $P1039, $P1040
.annotate 'line', 628
    find_lex $P1041, "@new-stages"
    find_lex $P1042, "$_"
    push $P1041, $P1042
.annotate 'line', 626
    set $P1034, $P1041
  if_1035_end:
.annotate 'line', 625
    set $P1027, $P1034
  if_1028_end:
.annotate 'line', 624
    .return ($P1027)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "parse_name"  :subid("74_1300090353.08319") :outer("12_1300090353.08319")
    .param pmc param_1057
    .param pmc param_1058
.annotate 'line', 640
    .const 'Sub' $P1096 = "75_1300090353.08319" 
    capture_lex $P1096
    .lex "self", param_1057
    .lex "$name", param_1058
.annotate 'line', 641
    $P1059 = root_new ['parrot';'ResizablePMCArray']
    .lex "@ns", $P1059
.annotate 'line', 642
    new $P1060, "Undef"
    .lex "$sigil", $P1060
.annotate 'line', 645
    new $P1061, "Undef"
    .lex "$idx", $P1061
.annotate 'line', 653
    $P1062 = root_new ['parrot';'ResizablePMCArray']
    .lex "@actual_ns", $P1062
.annotate 'line', 641
    find_lex $P1063, "$name"
    set $S1064, $P1063
    split $P1065, "::", $S1064
    store_lex "@ns", $P1065
.annotate 'line', 642
    find_lex $P1066, "@ns"
    unless_null $P1066, vivify_193
    $P1066 = root_new ['parrot';'ResizablePMCArray']
  vivify_193:
    set $P1067, $P1066[0]
    unless_null $P1067, vivify_194
    new $P1067, "Undef"
  vivify_194:
    set $S1068, $P1067
    substr $S1069, $S1068, 0, 1
    new $P1070, 'String'
    set $P1070, $S1069
    store_lex "$sigil", $P1070
.annotate 'line', 645
    find_lex $P1071, "$sigil"
    set $S1072, $P1071
    index $I1073, "$@%&", $S1072
    new $P1074, 'Integer'
    set $P1074, $I1073
    store_lex "$idx", $P1074
.annotate 'line', 646
    find_lex $P1076, "$idx"
    set $N1077, $P1076
    isge $I1078, $N1077, 0.0
    unless $I1078, if_1075_end
.annotate 'line', 647
    find_lex $P1079, "@ns"
    unless_null $P1079, vivify_195
    $P1079 = root_new ['parrot';'ResizablePMCArray']
  vivify_195:
    set $P1080, $P1079[0]
    unless_null $P1080, vivify_196
    new $P1080, "Undef"
  vivify_196:
    set $S1081, $P1080
    substr $S1082, $S1081, 1
    new $P1083, 'String'
    set $P1083, $S1082
    find_lex $P1084, "@ns"
    unless_null $P1084, vivify_197
    $P1084 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@ns", $P1084
  vivify_197:
    set $P1084[0], $P1083
.annotate 'line', 648
    find_lex $P1085, "$sigil"
    find_lex $P1086, "@ns"
    unless_null $P1086, vivify_198
    $P1086 = root_new ['parrot';'ResizablePMCArray']
  vivify_198:
    set $P1087, $P1086[-1]
    unless_null $P1087, vivify_199
    new $P1087, "Undef"
  vivify_199:
    concat $P1088, $P1085, $P1087
    find_lex $P1089, "@ns"
    unless_null $P1089, vivify_200
    $P1089 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@ns", $P1089
  vivify_200:
    set $P1089[-1], $P1088
  if_1075_end:
.annotate 'line', 646
    find_lex $P1090, "@actual_ns"
.annotate 'line', 654
    find_lex $P1092, "@ns"
    defined $I1093, $P1092
    unless $I1093, for_undef_201
    iter $P1091, $P1092
    new $P1106, 'ExceptionHandler'
    set_label $P1106, loop1105_handler
    $P1106."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P1106
  loop1105_test:
    unless $P1091, loop1105_done
    shift $P1094, $P1091
  loop1105_redo:
    .const 'Sub' $P1096 = "75_1300090353.08319" 
    capture_lex $P1096
    $P1096($P1094)
  loop1105_next:
    goto loop1105_test
  loop1105_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P1107, exception, 'type'
    eq $P1107, .CONTROL_LOOP_NEXT, loop1105_next
    eq $P1107, .CONTROL_LOOP_REDO, loop1105_redo
  loop1105_done:
    pop_eh 
  for_undef_201:
    find_lex $P1108, "@actual_ns"
.annotate 'line', 640
    .return ($P1108)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1095"  :anon :subid("75_1300090353.08319") :outer("74_1300090353.08319")
    .param pmc param_1097
.annotate 'line', 654
    .lex "$_", param_1097
.annotate 'line', 655
    find_lex $P1100, "$_"
    set $S1101, $P1100
    iseq $I1102, $S1101, ""
    unless $I1102, unless_1099
    new $P1098, 'Integer'
    set $P1098, $I1102
    goto unless_1099_end
  unless_1099:
    find_lex $P1103, "@actual_ns"
    find_lex $P1104, "$_"
    push $P1103, $P1104
    set $P1098, $P1103
  unless_1099_end:
.annotate 'line', 654
    .return ($P1098)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "lineof"  :subid("76_1300090353.08319") :outer("12_1300090353.08319")
    .param pmc param_1110
    .param pmc param_1111
    .param pmc param_1112
    .param pmc param_1113 :optional :named("cache")
    .param int has_param_1113 :opt_flag
.annotate 'line', 660
    .lex "self", param_1110
    .lex "$target", param_1111
    .lex "$pos", param_1112
    if has_param_1113, optparam_202
    new $P1114, "Undef"
    set param_1113, $P1114
  optparam_202:
    .lex "$cache", param_1113
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
.sub "_block1227" :load :anon :subid("78_1300090353.08319")
.annotate 'line', 1
    .const 'Sub' $P1229 = "10_1300090353.08319" 
    $P1230 = $P1229()
    .return ($P1230)
.end

### .include 'gen/hllcommandline.pir'

.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1300090355.49236")
.annotate 'line', 0
    get_hll_global $P112, ["HLL";"CommandLine";"Parser"], "_block111" 
    capture_lex $P112
    get_hll_global $P14, ["HLL";"CommandLine";"Result"], "_block13" 
    capture_lex $P14
.annotate 'line', 1
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 91
    get_hll_global $P14, ["HLL";"CommandLine";"Result"], "_block13" 
    capture_lex $P14
    $P14()
.annotate 'line', 124
    get_hll_global $P112, ["HLL";"CommandLine";"Parser"], "_block111" 
    capture_lex $P112
    $P570 = $P112()
.annotate 'line', 1
    .return ($P570)
    .const 'Sub' $P572 = "39_1300090355.49236" 
    .return ($P572)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post40") :outer("10_1300090355.49236")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1300090355.49236" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P576, "1300090354.13093"
    isnull $I577, $P576
    if $I577, if_575
    nqp_get_sc_object $P590, "1300090354.13093", 0
    set_hll_global ["HLL";"CommandLine"], "Result", $P590
    nqp_get_sc_object $P591, "1300090354.13093", 1
    set_hll_global ["HLL";"CommandLine"], "Parser", $P591
    goto if_575_end
  if_575:
    nqp_dynop_setup 
    getinterp $P578
    get_class $P579, "LexPad"
    get_class $P580, "NQPLexPad"
    $P578."hll_map"($P579, $P580)
    load_bytecode "nqpmo.pbc"
    nqp_create_sc $P581, "1300090354.13093"
    .local pmc cur_sc
    set cur_sc, $P581
    load_bytecode "SettingManager.pbc"
    get_hll_global $P582, ["HLL"], "SettingManager"
    $P583 = $P582."load_setting"("NQPCORE")
    block."set_outer_ctx"($P583)
    get_hll_global $P584, "NQPClassHOW"
    $P585 = $P584."new_type"("HLL::CommandLine::Result" :named("name"))
    nqp_set_sc_for_object $P585, cur_sc
    nqp_set_sc_object "1300090354.13093", 0, $P585
    nqp_get_sc_object $P586, "1300090354.13093", 0
    set_hll_global ["HLL";"CommandLine"], "Result", $P586
    get_hll_global $P587, "NQPClassHOW"
    $P588 = $P587."new_type"("HLL::CommandLine::Parser" :named("name"))
    nqp_set_sc_for_object $P588, cur_sc
    nqp_set_sc_object "1300090354.13093", 1, $P588
    nqp_get_sc_object $P589, "1300090354.13093", 1
    set_hll_global ["HLL";"CommandLine"], "Parser", $P589
  if_575_end:
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "_block13"  :subid("11_1300090355.49236") :outer("10_1300090355.49236")
.annotate 'line', 91
    .const 'Sub' $P91 = "18_1300090355.49236" 
    capture_lex $P91
    .const 'Sub' $P41 = "16_1300090355.49236" 
    capture_lex $P41
    .const 'Sub' $P34 = "15_1300090355.49236" 
    capture_lex $P34
    .const 'Sub' $P29 = "14_1300090355.49236" 
    capture_lex $P29
    .const 'Sub' $P24 = "13_1300090355.49236" 
    capture_lex $P24
    .const 'Sub' $P16 = "12_1300090355.49236" 
    capture_lex $P16
    get_global $P15, "$?CLASS"
.annotate 'line', 107
    .const 'Sub' $P41 = "16_1300090355.49236" 
    newclosure $P89, $P41
.annotate 'line', 91
    .return ($P89)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "" :load :init :subid("post41") :outer("11_1300090355.49236")
.annotate 'line', 91
    get_hll_global $P14, ["HLL";"CommandLine";"Result"], "_block13" 
    .local pmc block
    set block, $P14
    .const 'Sub' $P91 = "18_1300090355.49236" 
    capture_lex $P91
    $P91()
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "_block90"  :anon :subid("18_1300090355.49236") :outer("11_1300090355.49236")
.annotate 'line', 91
    nqp_get_sc_object $P92, "1300090354.13093", 0
    .local pmc type_obj
    set type_obj, $P92
    set_global "$?CLASS", type_obj
    get_how $P93, type_obj
    get_hll_global $P94, "NQPAttribute"
    $P95 = $P94."new"("@!arguments" :named("name"))
    $P93."add_attribute"(type_obj, $P95)
    get_how $P96, type_obj
    get_hll_global $P97, "NQPAttribute"
    $P98 = $P97."new"("%!options" :named("name"))
    $P96."add_attribute"(type_obj, $P98)
    get_how $P99, type_obj
    .const 'Sub' $P100 = "12_1300090355.49236" 
    $P99."add_method"(type_obj, "init", $P100)
    get_how $P101, type_obj
    .const 'Sub' $P102 = "13_1300090355.49236" 
    $P101."add_method"(type_obj, "arguments", $P102)
    get_how $P103, type_obj
    .const 'Sub' $P104 = "14_1300090355.49236" 
    $P103."add_method"(type_obj, "options", $P104)
    get_how $P105, type_obj
    .const 'Sub' $P106 = "15_1300090355.49236" 
    $P105."add_method"(type_obj, "add-argument", $P106)
    get_how $P107, type_obj
    .const 'Sub' $P108 = "16_1300090355.49236" 
    $P107."add_method"(type_obj, "add-option", $P108)
    get_how $P109, type_obj
    $P110 = $P109."compose"(type_obj)
    .return ($P110)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "init"  :subid("12_1300090355.49236") :outer("11_1300090355.49236")
    .param pmc param_17
.annotate 'line', 95
    .lex "self", param_17
.annotate 'line', 96
    new $P18, "ResizablePMCArray"
    find_lex $P19, "self"
    get_global $P20, "$?CLASS"
    setattribute $P19, $P20, "@!arguments", $P18
.annotate 'line', 97
    new $P21, "Hash"
    find_lex $P22, "self"
    get_global $P23, "$?CLASS"
    setattribute $P22, $P23, "%!options", $P21
.annotate 'line', 95
    .return ($P21)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "arguments"  :subid("13_1300090355.49236") :outer("11_1300090355.49236")
    .param pmc param_25
.annotate 'line', 100
    .lex "self", param_25
    find_lex $P26, "self"
    get_global $P27, "$?CLASS"
    getattribute $P28, $P26, $P27, "@!arguments"
    unless_null $P28, vivify_42
    $P28 = root_new ['parrot';'ResizablePMCArray']
  vivify_42:
    .return ($P28)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "options"  :subid("14_1300090355.49236") :outer("11_1300090355.49236")
    .param pmc param_30
.annotate 'line', 101
    .lex "self", param_30
    find_lex $P31, "self"
    get_global $P32, "$?CLASS"
    getattribute $P33, $P31, $P32, "%!options"
    unless_null $P33, vivify_43
    $P33 = root_new ['parrot';'Hash']
  vivify_43:
    .return ($P33)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "add-argument"  :subid("15_1300090355.49236") :outer("11_1300090355.49236")
    .param pmc param_35
    .param pmc param_36
.annotate 'line', 103
    .lex "self", param_35
    .lex "$x", param_36
.annotate 'line', 104
    find_lex $P37, "self"
    get_global $P38, "$?CLASS"
    getattribute $P39, $P37, $P38, "@!arguments"
    unless_null $P39, vivify_44
    $P39 = root_new ['parrot';'ResizablePMCArray']
  vivify_44:
    find_lex $P40, "$x"
    push $P39, $P40
.annotate 'line', 103
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "add-option"  :subid("16_1300090355.49236") :outer("11_1300090355.49236")
    .param pmc param_42
    .param pmc param_43
    .param pmc param_44
.annotate 'line', 107
    .const 'Sub' $P53 = "17_1300090355.49236" 
    capture_lex $P53
    .lex "self", param_42
    .lex "$name", param_43
    .lex "$value", param_44
.annotate 'line', 110
    find_lex $P50, "$name"
    find_lex $P47, "self"
    get_global $P48, "$?CLASS"
    getattribute $P49, $P47, $P48, "%!options"
    unless_null $P49, vivify_45
    $P49 = root_new ['parrot';'Hash']
  vivify_45:
    exists $I51, $P49[$P50]
    if $I51, if_46
.annotate 'line', 119
    find_lex $P84, "$value"
    find_lex $P85, "$name"
    find_lex $P86, "self"
    get_global $P87, "$?CLASS"
    getattribute $P88, $P86, $P87, "%!options"
    unless_null $P88, vivify_46
    $P88 = root_new ['parrot';'Hash']
    setattribute $P86, $P87, "%!options", $P88
  vivify_46:
    set $P88[$P85], $P84
.annotate 'line', 118
    set $P45, $P84
.annotate 'line', 110
    goto if_46_end
  if_46:
    .const 'Sub' $P53 = "17_1300090355.49236" 
    capture_lex $P53
    $P83 = $P53()
    set $P45, $P83
  if_46_end:
.annotate 'line', 107
    .return ($P45)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "_block52"  :anon :subid("17_1300090355.49236") :outer("16_1300090355.49236")
.annotate 'line', 111
    new $P54, "Undef"
    .lex "$t", $P54
    find_lex $P55, "self"
    get_global $P56, "$?CLASS"
    getattribute $P57, $P55, $P56, "%!options"
    unless_null $P57, vivify_47
    $P57 = root_new ['parrot';'Hash']
  vivify_47:
    typeof $S58, $P57
    new $P59, 'String'
    set $P59, $S58
    store_lex "$t", $P59
.annotate 'line', 112
    find_lex $P60, "$t"
    "say"($P60)
.annotate 'line', 113
    find_lex $P63, "$t"
    set $S64, $P63
    iseq $I65, $S64, "ResizablePMCArray"
    if $I65, if_62
.annotate 'line', 116
    find_lex $P72, "$name"
    find_lex $P73, "self"
    get_global $P74, "$?CLASS"
    getattribute $P75, $P73, $P74, "%!options"
    unless_null $P75, vivify_48
    $P75 = root_new ['parrot';'Hash']
  vivify_48:
    set $P76, $P75[$P72]
    unless_null $P76, vivify_49
    new $P76, "Undef"
  vivify_49:
    find_lex $P77, "$name"
    new $P78, "ResizablePMCArray"
    push $P78, $P76
    push $P78, $P77
    find_lex $P79, "$name"
    find_lex $P80, "self"
    get_global $P81, "$?CLASS"
    getattribute $P82, $P80, $P81, "%!options"
    unless_null $P82, vivify_50
    $P82 = root_new ['parrot';'Hash']
    setattribute $P80, $P81, "%!options", $P82
  vivify_50:
    set $P82[$P79], $P78
.annotate 'line', 115
    set $P61, $P78
.annotate 'line', 113
    goto if_62_end
  if_62:
.annotate 'line', 114
    find_lex $P66, "$name"
    find_lex $P67, "self"
    get_global $P68, "$?CLASS"
    getattribute $P69, $P67, $P68, "%!options"
    unless_null $P69, vivify_51
    $P69 = root_new ['parrot';'Hash']
  vivify_51:
    set $P70, $P69[$P66]
    unless_null $P70, vivify_52
    new $P70, "Undef"
  vivify_52:
    find_lex $P71, "$value"
    push $P70, $P71
.annotate 'line', 113
    set $P61, $P70
  if_62_end:
.annotate 'line', 110
    .return ($P61)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block111"  :subid("19_1300090355.49236") :outer("10_1300090355.49236")
.annotate 'line', 124
    .const 'Sub' $P536 = "38_1300090355.49236" 
    capture_lex $P536
    .const 'Sub' $P251 = "30_1300090355.49236" 
    capture_lex $P251
    .const 'Sub' $P239 = "29_1300090355.49236" 
    capture_lex $P239
    .const 'Sub' $P215 = "28_1300090355.49236" 
    capture_lex $P215
    .const 'Sub' $P166 = "26_1300090355.49236" 
    capture_lex $P166
    .const 'Sub' $P160 = "25_1300090355.49236" 
    capture_lex $P160
    .const 'Sub' $P152 = "24_1300090355.49236" 
    capture_lex $P152
    .const 'Sub' $P128 = "22_1300090355.49236" 
    capture_lex $P128
    .const 'Sub' $P123 = "21_1300090355.49236" 
    capture_lex $P123
    .const 'Sub' $P114 = "20_1300090355.49236" 
    capture_lex $P114
    get_global $P113, "$?CLASS"
.annotate 'line', 184
    .const 'Sub' $P251 = "30_1300090355.49236" 
    newclosure $P534, $P251
.annotate 'line', 124
    .return ($P534)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "" :load :init :subid("post53") :outer("19_1300090355.49236")
.annotate 'line', 124
    get_hll_global $P112, ["HLL";"CommandLine";"Parser"], "_block111" 
    .local pmc block
    set block, $P112
    .const 'Sub' $P536 = "38_1300090355.49236" 
    capture_lex $P536
    $P536()
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block535"  :anon :subid("38_1300090355.49236") :outer("19_1300090355.49236")
.annotate 'line', 124
    nqp_get_sc_object $P537, "1300090354.13093", 1
    .local pmc type_obj
    set type_obj, $P537
    set_global "$?CLASS", type_obj
    get_how $P538, type_obj
    get_hll_global $P539, "NQPAttribute"
    $P540 = $P539."new"("@!specs" :named("name"))
    $P538."add_attribute"(type_obj, $P540)
    get_how $P541, type_obj
    get_hll_global $P542, "NQPAttribute"
    $P543 = $P542."new"("%!options" :named("name"))
    $P541."add_attribute"(type_obj, $P543)
    get_how $P544, type_obj
    get_hll_global $P545, "NQPAttribute"
    $P546 = $P545."new"("%!stopper" :named("name"))
    $P544."add_attribute"(type_obj, $P546)
    get_how $P547, type_obj
    get_hll_global $P548, "NQPAttribute"
    $P549 = $P548."new"("$!stop-after-first-arg" :named("name"))
    $P547."add_attribute"(type_obj, $P549)
    get_how $P550, type_obj
    .const 'Sub' $P551 = "20_1300090355.49236" 
    $P550."add_method"(type_obj, "new", $P551)
    get_how $P552, type_obj
    .const 'Sub' $P553 = "21_1300090355.49236" 
    $P552."add_method"(type_obj, "stop-after-first-arg", $P553)
    get_how $P554, type_obj
    .const 'Sub' $P555 = "22_1300090355.49236" 
    $P554."add_method"(type_obj, "BUILD", $P555)
    get_how $P556, type_obj
    .const 'Sub' $P557 = "24_1300090355.49236" 
    $P556."add_method"(type_obj, "add-stopper", $P557)
    get_how $P558, type_obj
    .const 'Sub' $P559 = "25_1300090355.49236" 
    $P558."add_method"(type_obj, "split-option-aliases", $P559)
    get_how $P560, type_obj
    .const 'Sub' $P561 = "26_1300090355.49236" 
    $P560."add_method"(type_obj, "add-spec", $P561)
    get_how $P562, type_obj
    .const 'Sub' $P563 = "28_1300090355.49236" 
    $P562."add_method"(type_obj, "is-option", $P563)
    get_how $P564, type_obj
    .const 'Sub' $P565 = "29_1300090355.49236" 
    $P564."add_method"(type_obj, "wants-value", $P565)
    get_how $P566, type_obj
    .const 'Sub' $P567 = "30_1300090355.49236" 
    $P566."add_method"(type_obj, "parse", $P567)
    get_how $P568, type_obj
    $P569 = $P568."compose"(type_obj)
    .return ($P569)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "new"  :subid("20_1300090355.49236") :outer("19_1300090355.49236")
    .param pmc param_115
    .param pmc param_116
.annotate 'line', 130
    .lex "self", param_115
    .lex "@specs", param_116
.annotate 'line', 131
    new $P117, "Undef"
    .lex "$obj", $P117
    find_lex $P118, "self"
    $P119 = $P118."CREATE"()
    store_lex "$obj", $P119
.annotate 'line', 132
    find_lex $P120, "$obj"
    find_lex $P121, "@specs"
    $P120."BUILD"($P121 :named("specs"))
    find_lex $P122, "$obj"
.annotate 'line', 130
    .return ($P122)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "stop-after-first-arg"  :subid("21_1300090355.49236") :outer("19_1300090355.49236")
    .param pmc param_124
.annotate 'line', 136
    .lex "self", param_124
.annotate 'line', 137
    new $P125, "Integer"
    assign $P125, 1
    find_lex $P126, "self"
    get_global $P127, "$?CLASS"
    setattribute $P126, $P127, "$!stop-after-first-arg", $P125
.annotate 'line', 136
    .return ($P125)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "BUILD"  :subid("22_1300090355.49236") :outer("19_1300090355.49236")
    .param pmc param_129
    .param pmc param_130 :optional :named("specs")
    .param int has_param_130 :opt_flag
.annotate 'line', 140
    .const 'Sub' $P144 = "23_1300090355.49236" 
    capture_lex $P144
    .lex "self", param_129
    if has_param_130, optparam_54
    $P131 = root_new ['parrot';'ResizablePMCArray']
    set param_130, $P131
  optparam_54:
    .lex "@specs", param_130
.annotate 'line', 141
    new $P132, "Integer"
    assign $P132, 1
    find_lex $P133, "self"
    get_global $P134, "$?CLASS"
    getattribute $P135, $P133, $P134, "%!stopper"
    unless_null $P135, vivify_55
    $P135 = root_new ['parrot';'Hash']
    setattribute $P133, $P134, "%!stopper", $P135
  vivify_55:
    set $P135["--"], $P132
.annotate 'line', 142
    new $P136, "Integer"
    assign $P136, 0
    find_lex $P137, "self"
    get_global $P138, "$?CLASS"
    setattribute $P137, $P138, "$!stop-after-first-arg", $P136
.annotate 'line', 143
    find_lex $P140, "@specs"
    defined $I141, $P140
    unless $I141, for_undef_56
    iter $P139, $P140
    new $P150, 'ExceptionHandler'
    set_label $P150, loop149_handler
    $P150."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P150
  loop149_test:
    unless $P139, loop149_done
    shift $P142, $P139
  loop149_redo:
    .const 'Sub' $P144 = "23_1300090355.49236" 
    capture_lex $P144
    $P144($P142)
  loop149_next:
    goto loop149_test
  loop149_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P151, exception, 'type'
    eq $P151, .CONTROL_LOOP_NEXT, loop149_next
    eq $P151, .CONTROL_LOOP_REDO, loop149_redo
  loop149_done:
    pop_eh 
  for_undef_56:
.annotate 'line', 140
    .return ($P139)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block143"  :anon :subid("23_1300090355.49236") :outer("22_1300090355.49236")
    .param pmc param_145
.annotate 'line', 143
    .lex "$_", param_145
.annotate 'line', 144
    find_lex $P146, "self"
    find_lex $P147, "$_"
    $P148 = $P146."add-spec"($P147)
.annotate 'line', 143
    .return ($P148)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "add-stopper"  :subid("24_1300090355.49236") :outer("19_1300090355.49236")
    .param pmc param_153
    .param pmc param_154
.annotate 'line', 147
    .lex "self", param_153
    .lex "$x", param_154
.annotate 'line', 148
    new $P155, "Integer"
    assign $P155, 1
    find_lex $P156, "$x"
    find_lex $P157, "self"
    get_global $P158, "$?CLASS"
    getattribute $P159, $P157, $P158, "%!stopper"
    unless_null $P159, vivify_57
    $P159 = root_new ['parrot';'Hash']
    setattribute $P157, $P158, "%!stopper", $P159
  vivify_57:
    set $P159[$P156], $P155
.annotate 'line', 147
    .return ($P155)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "split-option-aliases"  :subid("25_1300090355.49236") :outer("19_1300090355.49236")
    .param pmc param_161
    .param pmc param_162
.annotate 'line', 151
    .lex "self", param_161
    .lex "$s", param_162
.annotate 'line', 152
    find_lex $P163, "$s"
    set $S164, $P163
    split $P165, "|", $S164
.annotate 'line', 151
    .return ($P165)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "add-spec"  :subid("26_1300090355.49236") :outer("19_1300090355.49236")
    .param pmc param_167
    .param pmc param_168
.annotate 'line', 156
    .const 'Sub' $P205 = "27_1300090355.49236" 
    capture_lex $P205
    .lex "self", param_167
    .lex "$s", param_168
.annotate 'line', 157
    new $P169, "Undef"
    .lex "$i", $P169
.annotate 'line', 158
    new $P170, "Undef"
    .lex "$type", $P170
.annotate 'line', 159
    $P171 = root_new ['parrot';'ResizablePMCArray']
    .lex "@options", $P171
.annotate 'line', 157
    find_lex $P172, "$s"
    set $S173, $P172
    index $I174, $S173, "="
    new $P175, 'Integer'
    set $P175, $I174
    store_lex "$i", $P175
    find_lex $P176, "$type"
    find_lex $P177, "@options"
.annotate 'line', 160
    find_lex $P179, "$i"
    set $N180, $P179
    islt $I181, $N180, 0.0
    if $I181, if_178
.annotate 'line', 164
    find_lex $P186, "$s"
    set $S187, $P186
    find_lex $P188, "$i"
    add $P189, $P188, 1
    set $I190, $P189
    substr $S191, $S187, $I190
    new $P192, 'String'
    set $P192, $S191
    store_lex "$type", $P192
.annotate 'line', 165
    find_lex $P193, "self"
    find_lex $P194, "$s"
    set $S195, $P194
    find_lex $P196, "$i"
    set $I197, $P196
    substr $S198, $S195, 0, $I197
    $P199 = $P193."split-option-aliases"($S198)
    store_lex "@options", $P199
.annotate 'line', 163
    goto if_178_end
  if_178:
.annotate 'line', 161
    new $P182, "String"
    assign $P182, "b"
    store_lex "$type", $P182
.annotate 'line', 162
    find_lex $P183, "self"
    find_lex $P184, "$s"
    $P185 = $P183."split-option-aliases"($P184)
    store_lex "@options", $P185
  if_178_end:
.annotate 'line', 167
    find_lex $P201, "@options"
    defined $I202, $P201
    unless $I202, for_undef_58
    iter $P200, $P201
    new $P213, 'ExceptionHandler'
    set_label $P213, loop212_handler
    $P213."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P213
  loop212_test:
    unless $P200, loop212_done
    shift $P203, $P200
  loop212_redo:
    .const 'Sub' $P205 = "27_1300090355.49236" 
    capture_lex $P205
    $P205($P203)
  loop212_next:
    goto loop212_test
  loop212_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P214, exception, 'type'
    eq $P214, .CONTROL_LOOP_NEXT, loop212_next
    eq $P214, .CONTROL_LOOP_REDO, loop212_redo
  loop212_done:
    pop_eh 
  for_undef_58:
.annotate 'line', 156
    .return ($P200)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block204"  :anon :subid("27_1300090355.49236") :outer("26_1300090355.49236")
    .param pmc param_206
.annotate 'line', 167
    .lex "$_", param_206
.annotate 'line', 168
    find_lex $P207, "$type"
    find_lex $P208, "$_"
    find_lex $P209, "self"
    get_global $P210, "$?CLASS"
    getattribute $P211, $P209, $P210, "%!options"
    unless_null $P211, vivify_59
    $P211 = root_new ['parrot';'Hash']
    setattribute $P209, $P210, "%!options", $P211
  vivify_59:
    set $P211[$P208], $P207
.annotate 'line', 167
    .return ($P207)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "is-option"  :subid("28_1300090355.49236") :outer("19_1300090355.49236")
    .param pmc param_218
    .param pmc param_219
.annotate 'line', 173
    new $P217, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P217, control_216
    push_eh $P217
    .lex "self", param_218
    .lex "$x", param_219
.annotate 'line', 174
    find_lex $P223, "$x"
    set $S224, $P223
    iseq $I225, $S224, "-"
    unless $I225, unless_222
    new $P221, 'Integer'
    set $P221, $I225
    goto unless_222_end
  unless_222:
    find_lex $P226, "$x"
    set $S227, $P226
    iseq $I228, $S227, "--"
    new $P221, 'Integer'
    set $P221, $I228
  unless_222_end:
    unless $P221, if_220_end
    new $P229, "Exception"
    set $P229['type'], .CONTROL_RETURN
    new $P230, "Integer"
    assign $P230, 0
    setattribute $P229, 'payload', $P230
    throw $P229
  if_220_end:
.annotate 'line', 175
    find_lex $P232, "$x"
    set $S233, $P232
    substr $S234, $S233, 0, 1
    iseq $I235, $S234, "-"
    unless $I235, if_231_end
    new $P236, "Exception"
    set $P236['type'], .CONTROL_RETURN
    new $P237, "Integer"
    assign $P237, 1
    setattribute $P236, 'payload', $P237
    throw $P236
  if_231_end:
.annotate 'line', 173
    .return (0)
  control_216:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P238, exception, "payload"
    .return ($P238)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "wants-value"  :subid("29_1300090355.49236") :outer("19_1300090355.49236")
    .param pmc param_240
    .param pmc param_241
.annotate 'line', 179
    .lex "self", param_240
    .lex "$x", param_241
.annotate 'line', 180
    new $P242, "Undef"
    .lex "$spec", $P242
    find_lex $P243, "$x"
    find_lex $P244, "self"
    get_global $P245, "$?CLASS"
    getattribute $P246, $P244, $P245, "%!options"
    unless_null $P246, vivify_60
    $P246 = root_new ['parrot';'Hash']
  vivify_60:
    set $P247, $P246[$P243]
    unless_null $P247, vivify_61
    new $P247, "Undef"
  vivify_61:
    store_lex "$spec", $P247
.annotate 'line', 181
    find_lex $P248, "$spec"
    set $S249, $P248
    iseq $I250, $S249, "s"
.annotate 'line', 179
    .return ($I250)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "parse"  :subid("30_1300090355.49236") :outer("19_1300090355.49236")
    .param pmc param_254
    .param pmc param_255
.annotate 'line', 184
    .const 'Sub' $P342 = "33_1300090355.49236" 
    capture_lex $P342
    .const 'Sub' $P308 = "32_1300090355.49236" 
    capture_lex $P308
    .const 'Sub' $P259 = "31_1300090355.49236" 
    capture_lex $P259
    new $P253, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P253, control_252
    push_eh $P253
    .lex "self", param_254
    .lex "@args", param_255
.annotate 'line', 185
    new $P256, "Undef"
    .lex "$i", $P256
.annotate 'line', 186
    new $P257, "Undef"
    .lex "$arg-count", $P257
.annotate 'line', 188
    new $P258, "Undef"
    .lex "$result", $P258
.annotate 'line', 192
    .const 'Sub' $P259 = "31_1300090355.49236" 
    newclosure $P307, $P259
    .lex "get-value", $P307
.annotate 'line', 207
    .const 'Sub' $P308 = "32_1300090355.49236" 
    newclosure $P326, $P308
    .lex "slurp-rest", $P326
.annotate 'line', 185
    new $P327, "Integer"
    assign $P327, 0
    store_lex "$i", $P327
.annotate 'line', 186
    find_lex $P328, "@args"
    set $N329, $P328
    new $P330, 'Float'
    set $P330, $N329
    store_lex "$arg-count", $P330
.annotate 'line', 188
    get_hll_global $P331, ["HLL";"CommandLine"], "Result"
    $P332 = $P331."new"()
    store_lex "$result", $P332
.annotate 'line', 189
    find_lex $P333, "$result"
    $P333."init"()
    find_lex $P334, "get-value"
    find_lex $P335, "slurp-rest"
.annotate 'line', 215
    new $P529, 'ExceptionHandler'
    set_label $P529, loop528_handler
    $P529."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P529
  loop528_test:
    find_lex $P336, "$i"
    set $N337, $P336
    find_lex $P338, "$arg-count"
    set $N339, $P338
    islt $I340, $N337, $N339
    unless $I340, loop528_done
  loop528_redo:
    .const 'Sub' $P342 = "33_1300090355.49236" 
    capture_lex $P342
    $P342()
  loop528_next:
    goto loop528_test
  loop528_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P530, exception, 'type'
    eq $P530, .CONTROL_LOOP_NEXT, loop528_next
    eq $P530, .CONTROL_LOOP_REDO, loop528_redo
  loop528_done:
    pop_eh 
.annotate 'line', 267
    new $P531, "Exception"
    set $P531['type'], .CONTROL_RETURN
    find_lex $P532, "$result"
    setattribute $P531, 'payload', $P532
    throw $P531
.annotate 'line', 184
    .return ()
  control_252:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P533, exception, "payload"
    .return ($P533)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "get-value"  :subid("31_1300090355.49236") :outer("30_1300090355.49236")
    .param pmc param_260
.annotate 'line', 192
    .lex "$opt", param_260
.annotate 'line', 193
    find_lex $P263, "$i"
    set $N264, $P263
    find_lex $P265, "$arg-count"
    sub $P266, $P265, 1
    set $N267, $P266
    iseq $I268, $N264, $N267
    if $I268, if_262
.annotate 'line', 195
    find_lex $P275, "self"
    find_lex $P276, "$i"
    add $P277, $P276, 1
    set $I278, $P277
    find_lex $P279, "@args"
    unless_null $P279, vivify_62
    $P279 = root_new ['parrot';'ResizablePMCArray']
  vivify_62:
    set $P280, $P279[$I278]
    unless_null $P280, vivify_63
    new $P280, "Undef"
  vivify_63:
    $P281 = $P275."is-option"($P280)
    if $P281, if_274
.annotate 'line', 197
    find_lex $P288, "$i"
    add $P289, $P288, 1
    set $I290, $P289
    find_lex $P291, "@args"
    unless_null $P291, vivify_64
    $P291 = root_new ['parrot';'ResizablePMCArray']
  vivify_64:
    set $P292, $P291[$I290]
    unless_null $P292, vivify_65
    new $P292, "Undef"
  vivify_65:
    find_lex $P293, "self"
    get_global $P294, "$?CLASS"
    getattribute $P295, $P293, $P294, "%!stopper"
    unless_null $P295, vivify_66
    $P295 = root_new ['parrot';'Hash']
  vivify_66:
    set $P296, $P295[$P292]
    unless_null $P296, vivify_67
    new $P296, "Undef"
  vivify_67:
    if $P296, if_287
.annotate 'line', 199
    find_lex $P301, "$i"
    clone $P302, $P301
    inc $P301
    find_lex $P303, "$i"
    set $I304, $P303
    find_lex $P305, "@args"
    unless_null $P305, vivify_68
    $P305 = root_new ['parrot';'ResizablePMCArray']
  vivify_68:
    set $P306, $P305[$I304]
    unless_null $P306, vivify_69
    new $P306, "Undef"
  vivify_69:
    set $P286, $P306
.annotate 'line', 197
    goto if_287_end
  if_287:
.annotate 'line', 198
    new $P297, 'String'
    set $P297, "Option "
    find_lex $P298, "$opt"
    concat $P299, $P297, $P298
    concat $P300, $P299, " needs a value, but is followed by a stopper"
    die $P300
  if_287_end:
.annotate 'line', 197
    set $P273, $P286
.annotate 'line', 195
    goto if_274_end
  if_274:
.annotate 'line', 196
    new $P282, 'String'
    set $P282, "Option "
    find_lex $P283, "$opt"
    concat $P284, $P282, $P283
    concat $P285, $P284, " needs a value, but is followed by an option"
    die $P285
  if_274_end:
.annotate 'line', 195
    set $P261, $P273
.annotate 'line', 193
    goto if_262_end
  if_262:
.annotate 'line', 194
    new $P269, 'String'
    set $P269, "Option "
    find_lex $P270, "$opt"
    concat $P271, $P269, $P270
    concat $P272, $P271, " needs a value"
    die $P272
  if_262_end:
.annotate 'line', 192
    .return ($P261)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "slurp-rest"  :subid("32_1300090355.49236") :outer("30_1300090355.49236")
.annotate 'line', 207
    find_lex $P309, "$i"
    clone $P310, $P309
    inc $P309
.annotate 'line', 209
    new $P324, 'ExceptionHandler'
    set_label $P324, loop323_handler
    $P324."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P324
  loop323_test:
    find_lex $P311, "$i"
    set $N312, $P311
    find_lex $P313, "$arg-count"
    set $N314, $P313
    islt $I315, $N312, $N314
    unless $I315, loop323_done
  loop323_redo:
.annotate 'line', 210
    find_lex $P316, "$result"
    find_lex $P317, "$i"
    set $I318, $P317
    find_lex $P319, "@args"
    unless_null $P319, vivify_70
    $P319 = root_new ['parrot';'ResizablePMCArray']
  vivify_70:
    set $P320, $P319[$I318]
    unless_null $P320, vivify_71
    new $P320, "Undef"
  vivify_71:
    $P316."add-argument"($P320)
    find_lex $P321, "$i"
    clone $P322, $P321
    inc $P321
  loop323_next:
.annotate 'line', 209
    goto loop323_test
  loop323_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P325, exception, 'type'
    eq $P325, .CONTROL_LOOP_NEXT, loop323_next
    eq $P325, .CONTROL_LOOP_REDO, loop323_redo
  loop323_done:
    pop_eh 
.annotate 'line', 207
    .return ($I315)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block341"  :anon :subid("33_1300090355.49236") :outer("30_1300090355.49236")
.annotate 'line', 215
    .const 'Sub' $P444 = "35_1300090355.49236" 
    capture_lex $P444
    .const 'Sub' $P358 = "34_1300090355.49236" 
    capture_lex $P358
.annotate 'line', 216
    new $P343, "Undef"
    .lex "$cur", $P343
    find_lex $P344, "$i"
    set $I345, $P344
    find_lex $P346, "@args"
    unless_null $P346, vivify_72
    $P346 = root_new ['parrot';'ResizablePMCArray']
  vivify_72:
    set $P347, $P346[$I345]
    unless_null $P347, vivify_73
    new $P347, "Undef"
  vivify_73:
    store_lex "$cur", $P347
.annotate 'line', 217
    find_lex $P349, "self"
    find_lex $P350, "$cur"
    $P351 = $P349."is-option"($P350)
    if $P351, if_348
.annotate 'line', 259
    find_lex $P515, "$cur"
    find_lex $P516, "self"
    get_global $P517, "$?CLASS"
    getattribute $P518, $P516, $P517, "%!stopper"
    unless_null $P518, vivify_74
    $P518 = root_new ['parrot';'Hash']
  vivify_74:
    set $P519, $P518[$P515]
    unless_null $P519, vivify_75
    new $P519, "Undef"
  vivify_75:
    if $P519, if_514
.annotate 'line', 262
    find_lex $P520, "$result"
    find_lex $P521, "$cur"
    $P520."add-argument"($P521)
.annotate 'line', 263
    find_lex $P523, "self"
    get_global $P524, "$?CLASS"
    getattribute $P525, $P523, $P524, "$!stop-after-first-arg"
    unless_null $P525, vivify_76
    new $P525, "Undef"
  vivify_76:
    unless $P525, if_522_end
    "slurp-rest"()
  if_522_end:
.annotate 'line', 261
    goto if_514_end
  if_514:
.annotate 'line', 260
    "slurp-rest"()
  if_514_end:
.annotate 'line', 259
    goto if_348_end
  if_348:
.annotate 'line', 218
    find_lex $P353, "$cur"
    set $S354, $P353
    substr $S355, $S354, 0, 2
    iseq $I356, $S355, "--"
    if $I356, if_352
.annotate 'line', 237
    .const 'Sub' $P444 = "35_1300090355.49236" 
    capture_lex $P444
    $P444()
    goto if_352_end
  if_352:
.annotate 'line', 218
    .const 'Sub' $P358 = "34_1300090355.49236" 
    capture_lex $P358
    $P358()
  if_352_end:
  if_348_end:
.annotate 'line', 217
    find_lex $P526, "$i"
    clone $P527, $P526
    inc $P526
.annotate 'line', 215
    .return ($P527)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block443"  :anon :subid("35_1300090355.49236") :outer("33_1300090355.49236")
.annotate 'line', 237
    .const 'Sub' $P489 = "36_1300090355.49236" 
    capture_lex $P489
.annotate 'line', 238
    new $P445, "Undef"
    .lex "$opt", $P445
    find_lex $P446, "$cur"
    set $S447, $P446
    substr $S448, $S447, 1
    new $P449, 'String'
    set $P449, $S448
    store_lex "$opt", $P449
.annotate 'line', 239
    find_lex $P452, "$opt"
    set $S453, $P452
    length $I454, $S453
    set $N455, $I454
    iseq $I456, $N455, 1.0
    if $I456, if_451
.annotate 'line', 249
    .const 'Sub' $P489 = "36_1300090355.49236" 
    capture_lex $P489
    $P513 = $P489()
    set $P450, $P513
.annotate 'line', 239
    goto if_451_end
  if_451:
.annotate 'line', 241
    find_lex $P458, "$opt"
    find_lex $P459, "self"
    get_global $P460, "$?CLASS"
    getattribute $P461, $P459, $P460, "%!options"
    unless_null $P461, vivify_77
    $P461 = root_new ['parrot';'Hash']
  vivify_77:
    set $P462, $P461[$P458]
    unless_null $P462, vivify_78
    new $P462, "Undef"
  vivify_78:
    if $P462, unless_457_end
    new $P463, 'String'
    set $P463, "No such option -"
    find_lex $P464, "$opt"
    concat $P465, $P463, $P464
    die $P465
  unless_457_end:
.annotate 'line', 242
    find_lex $P467, "self"
    find_lex $P468, "$opt"
    $P469 = $P467."wants-value"($P468)
    if $P469, if_466
.annotate 'line', 246
    find_lex $P476, "$result"
    find_lex $P477, "$opt"
    $P476."add-option"($P477, 1)
.annotate 'line', 245
    goto if_466_end
  if_466:
.annotate 'line', 243
    find_lex $P470, "$result"
    find_lex $P471, "$opt"
.annotate 'line', 244
    new $P472, 'String'
    set $P472, "-"
    find_lex $P473, "$opt"
    concat $P474, $P472, $P473
    $P475 = "get-value"($P474)
    $P470."add-option"($P471, $P475)
  if_466_end:
.annotate 'line', 248
    new $P480, 'String'
    set $P480, "-"
    find_lex $P481, "$opt"
    concat $P482, $P480, $P481
    find_lex $P483, "self"
    get_global $P484, "$?CLASS"
    getattribute $P485, $P483, $P484, "%!stopper"
    unless_null $P485, vivify_79
    $P485 = root_new ['parrot';'Hash']
  vivify_79:
    set $P486, $P485[$P482]
    unless_null $P486, vivify_80
    new $P486, "Undef"
  vivify_80:
    if $P486, if_479
    set $P478, $P486
    goto if_479_end
  if_479:
    $P487 = "slurp-rest"()
    set $P478, $P487
  if_479_end:
.annotate 'line', 239
    set $P450, $P478
  if_451_end:
.annotate 'line', 237
    .return ($P450)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "_block488"  :anon :subid("36_1300090355.49236") :outer("35_1300090355.49236")
.annotate 'line', 249
    .const 'Sub' $P495 = "37_1300090355.49236" 
    capture_lex $P495
.annotate 'line', 251
    new $P490, "Undef"
    .lex "$iter", $P490
    find_lex $P491, "$opt"
    iter $P492, $P491
    store_lex "$iter", $P492
.annotate 'line', 252
    new $P511, 'ExceptionHandler'
    set_label $P511, loop510_handler
    $P511."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P511
  loop510_test:
    find_lex $P493, "$iter"
    unless $P493, loop510_done
  loop510_redo:
    .const 'Sub' $P495 = "37_1300090355.49236" 
    capture_lex $P495
    $P495()
  loop510_next:
    goto loop510_test
  loop510_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P512, exception, 'type'
    eq $P512, .CONTROL_LOOP_NEXT, loop510_next
    eq $P512, .CONTROL_LOOP_REDO, loop510_redo
  loop510_done:
    pop_eh 
.annotate 'line', 249
    .return ($P493)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block494"  :anon :subid("37_1300090355.49236") :outer("36_1300090355.49236")
.annotate 'line', 253
    new $P496, "Undef"
    .lex "$o", $P496
    find_lex $P497, "$iter"
    shift $P498, $P497
    store_lex "$o", $P498
.annotate 'line', 254
    find_lex $P500, "self"
    find_lex $P501, "$o"
    $P502 = $P500."wants-value"($P501)
    unless $P502, if_499_end
    new $P503, 'String'
    set $P503, "Option -"
    find_lex $P504, "$o"
    concat $P505, $P503, $P504
    concat $P506, $P505, " requires a value and cannot be grouped"
    die $P506
  if_499_end:
.annotate 'line', 255
    find_lex $P507, "$result"
    find_lex $P508, "$o"
    $P509 = $P507."add-option"($P508, 1)
.annotate 'line', 252
    .return ($P509)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block357"  :anon :subid("34_1300090355.49236") :outer("33_1300090355.49236")
.annotate 'line', 220
    new $P359, "Undef"
    .lex "$opt", $P359
.annotate 'line', 221
    new $P360, "Undef"
    .lex "$idx", $P360
.annotate 'line', 222
    new $P361, "Undef"
    .lex "$value", $P361
.annotate 'line', 223
    new $P362, "Undef"
    .lex "$has-value", $P362
.annotate 'line', 220
    find_lex $P363, "$i"
    set $I364, $P363
    find_lex $P365, "@args"
    unless_null $P365, vivify_81
    $P365 = root_new ['parrot';'ResizablePMCArray']
  vivify_81:
    set $P366, $P365[$I364]
    unless_null $P366, vivify_82
    new $P366, "Undef"
  vivify_82:
    set $S367, $P366
    substr $S368, $S367, 2
    new $P369, 'String'
    set $P369, $S368
    store_lex "$opt", $P369
.annotate 'line', 221
    find_lex $P370, "$opt"
    set $S371, $P370
    index $I372, $S371, "="
    new $P373, 'Integer'
    set $P373, $I372
    store_lex "$idx", $P373
.annotate 'line', 222
    new $P374, "Integer"
    assign $P374, 1
    store_lex "$value", $P374
.annotate 'line', 223
    new $P375, "Integer"
    assign $P375, 0
    store_lex "$has-value", $P375
.annotate 'line', 225
    find_lex $P377, "$idx"
    set $N378, $P377
    isge $I379, $N378, 0.0
    unless $I379, if_376_end
.annotate 'line', 226
    find_lex $P380, "$opt"
    set $S381, $P380
    find_lex $P382, "$idx"
    add $P383, $P382, 1
    set $I384, $P383
    substr $S385, $S381, $I384
    new $P386, 'String'
    set $P386, $S385
    store_lex "$value", $P386
.annotate 'line', 227
    find_lex $P387, "$opt"
    set $S388, $P387
    find_lex $P389, "$idx"
    set $I390, $P389
    substr $S391, $S388, 0, $I390
    new $P392, 'String'
    set $P392, $S391
    store_lex "$opt", $P392
.annotate 'line', 228
    new $P393, "Integer"
    assign $P393, 1
    store_lex "$has-value", $P393
  if_376_end:
.annotate 'line', 230
    find_lex $P398, "$opt"
    find_lex $P395, "self"
    get_global $P396, "$?CLASS"
    getattribute $P397, $P395, $P396, "%!options"
    unless_null $P397, vivify_83
    $P397 = root_new ['parrot';'Hash']
  vivify_83:
    exists $I399, $P397[$P398]
    if $I399, unless_394_end
    new $P400, 'String'
    set $P400, "Illegal option --"
    find_lex $P401, "$opt"
    concat $P402, $P400, $P401
    die $P402
  unless_394_end:
.annotate 'line', 231
    find_lex $P406, "$opt"
    find_lex $P407, "self"
    get_global $P408, "$?CLASS"
    getattribute $P409, $P407, $P408, "%!options"
    unless_null $P409, vivify_84
    $P409 = root_new ['parrot';'Hash']
  vivify_84:
    set $P410, $P409[$P406]
    unless_null $P410, vivify_85
    new $P410, "Undef"
  vivify_85:
    set $S411, $P410
    isne $I412, $S411, "s"
    if $I412, if_405
    new $P404, 'Integer'
    set $P404, $I412
    goto if_405_end
  if_405:
    find_lex $P413, "$has-value"
    set $P404, $P413
  if_405_end:
    unless $P404, if_403_end
    new $P414, 'String'
    set $P414, "Option --"
    find_lex $P415, "$opt"
    concat $P416, $P414, $P415
    concat $P417, $P416, " does not allow a value"
    die $P417
  if_403_end:
.annotate 'line', 232
    find_lex $P421, "$has-value"
    isfalse $I422, $P421
    if $I422, if_420
    new $P419, 'Integer'
    set $P419, $I422
    goto if_420_end
  if_420:
    find_lex $P423, "self"
    find_lex $P424, "$opt"
    $P425 = $P423."wants-value"($P424)
    set $P419, $P425
  if_420_end:
    unless $P419, if_418_end
.annotate 'line', 233
    new $P426, 'String'
    set $P426, "--"
    find_lex $P427, "$opt"
    concat $P428, $P426, $P427
    $P429 = "get-value"($P428)
    store_lex "$value", $P429
  if_418_end:
.annotate 'line', 235
    find_lex $P430, "$result"
    find_lex $P431, "$opt"
    find_lex $P432, "$value"
    $P430."add-option"($P431, $P432)
.annotate 'line', 236
    new $P435, 'String'
    set $P435, "--"
    find_lex $P436, "$opt"
    concat $P437, $P435, $P436
    find_lex $P438, "self"
    get_global $P439, "$?CLASS"
    getattribute $P440, $P438, $P439, "%!stopper"
    unless_null $P440, vivify_86
    $P440 = root_new ['parrot';'Hash']
  vivify_86:
    set $P441, $P440[$P437]
    unless_null $P441, vivify_87
    new $P441, "Undef"
  vivify_87:
    if $P441, if_434
    set $P433, $P441
    goto if_434_end
  if_434:
    find_lex $P442, "slurp-rest"
    set $P433, $P442
  if_434_end:
.annotate 'line', 218
    .return ($P433)
.end


.HLL "nqp"

.namespace []
.sub "_block571" :load :anon :subid("39_1300090355.49236")
.annotate 'line', 1
    .const 'Sub' $P573 = "10_1300090355.49236" 
    $P574 = $P573()
    .return ($P574)
.end

### .include 'gen/hllserializationcontextbuilder.pir'

.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1300090357.92449")
.annotate 'line', 0
    get_hll_global $P43, ["HLL";"Compiler";"SerializationContextBuilder"], "_block42" 
    capture_lex $P43
    get_hll_global $P14, ["HLL";"Compiler";"SerializationContextBuilder";"Event"], "_block13" 
    capture_lex $P14
.annotate 'line', 1
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 29
    get_hll_global $P14, ["HLL";"Compiler";"SerializationContextBuilder";"Event"], "_block13" 
    capture_lex $P14
    $P14()
.annotate 'line', 39
    get_hll_global $P43, ["HLL";"Compiler";"SerializationContextBuilder"], "_block42" 
    capture_lex $P43
    $P537 = $P43()
.annotate 'line', 1
    .return ($P537)
    .const 'Sub' $P539 = "38_1300090357.92449" 
    .return ($P539)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post39") :outer("10_1300090357.92449")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1300090357.92449" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P543, "1300090356.01455"
    isnull $I544, $P543
    if $I544, if_542
    nqp_get_sc_object $P557, "1300090356.01455", 0
    set_hll_global ["HLL";"Compiler";"SerializationContextBuilder"], "Event", $P557
    nqp_get_sc_object $P558, "1300090356.01455", 1
    set_hll_global ["HLL";"Compiler"], "SerializationContextBuilder", $P558
    goto if_542_end
  if_542:
    nqp_dynop_setup 
    getinterp $P545
    get_class $P546, "LexPad"
    get_class $P547, "NQPLexPad"
    $P545."hll_map"($P546, $P547)
    load_bytecode "nqpmo.pbc"
    nqp_create_sc $P548, "1300090356.01455"
    .local pmc cur_sc
    set cur_sc, $P548
    load_bytecode "SettingManager.pbc"
    get_hll_global $P549, ["HLL"], "SettingManager"
    $P550 = $P549."load_setting"("NQPCORE")
    block."set_outer_ctx"($P550)
    get_hll_global $P551, "NQPClassHOW"
    $P552 = $P551."new_type"("HLL::Compiler::SerializationContextBuilder::Event" :named("name"))
    nqp_set_sc_for_object $P552, cur_sc
    nqp_set_sc_object "1300090356.01455", 0, $P552
    nqp_get_sc_object $P553, "1300090356.01455", 0
    set_hll_global ["HLL";"Compiler";"SerializationContextBuilder"], "Event", $P553
    get_hll_global $P554, "NQPClassHOW"
    $P555 = $P554."new_type"("HLL::Compiler::SerializationContextBuilder" :named("name"))
    nqp_set_sc_for_object $P555, cur_sc
    nqp_set_sc_object "1300090356.01455", 1, $P555
    nqp_get_sc_object $P556, "1300090356.01455", 1
    set_hll_global ["HLL";"Compiler"], "SerializationContextBuilder", $P556
  if_542_end:
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder";"Event"]
.sub "_block13"  :subid("11_1300090357.92449") :outer("10_1300090357.92449")
.annotate 'line', 29
    .const 'Sub' $P28 = "14_1300090357.92449" 
    capture_lex $P28
    .const 'Sub' $P21 = "13_1300090357.92449" 
    capture_lex $P21
    .const 'Sub' $P16 = "12_1300090357.92449" 
    capture_lex $P16
    get_global $P15, "$?CLASS"
.annotate 'line', 36
    .const 'Sub' $P21 = "13_1300090357.92449" 
    newclosure $P26, $P21
.annotate 'line', 29
    .return ($P26)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder";"Event"]
.sub "" :load :init :subid("post40") :outer("11_1300090357.92449")
.annotate 'line', 29
    get_hll_global $P14, ["HLL";"Compiler";"SerializationContextBuilder";"Event"], "_block13" 
    .local pmc block
    set block, $P14
    .const 'Sub' $P28 = "14_1300090357.92449" 
    capture_lex $P28
    $P28()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder";"Event"]
.sub "_block27"  :anon :subid("14_1300090357.92449") :outer("11_1300090357.92449")
.annotate 'line', 29
    nqp_get_sc_object $P29, "1300090356.01455", 0
    .local pmc type_obj
    set type_obj, $P29
    set_global "$?CLASS", type_obj
    get_how $P30, type_obj
    get_hll_global $P31, "NQPAttribute"
    $P32 = $P31."new"("$!deserialize_past" :named("name"))
    $P30."add_attribute"(type_obj, $P32)
    get_how $P33, type_obj
    .const 'Sub' $P34 = "12_1300090357.92449" 
    $P33."add_method"(type_obj, "deserialize_past", $P34)
    get_how $P35, type_obj
    get_hll_global $P36, "NQPAttribute"
    $P37 = $P36."new"("$!fixup_past" :named("name"))
    $P35."add_attribute"(type_obj, $P37)
    get_how $P38, type_obj
    .const 'Sub' $P39 = "13_1300090357.92449" 
    $P38."add_method"(type_obj, "fixup_past", $P39)
    get_how $P40, type_obj
    $P41 = $P40."compose"(type_obj)
    .return ($P41)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder";"Event"]
.sub "deserialize_past"  :subid("12_1300090357.92449") :outer("11_1300090357.92449")
    .param pmc param_17
.annotate 'line', 32
    .lex "self", param_17
    find_lex $P18, "self"
    get_global $P19, "$?CLASS"
    getattribute $P20, $P18, $P19, "$!deserialize_past"
    unless_null $P20, vivify_41
    new $P20, "Undef"
  vivify_41:
    .return ($P20)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder";"Event"]
.sub "fixup_past"  :subid("13_1300090357.92449") :outer("11_1300090357.92449")
    .param pmc param_22
.annotate 'line', 36
    .lex "self", param_22
    find_lex $P23, "self"
    get_global $P24, "$?CLASS"
    getattribute $P25, $P23, $P24, "$!fixup_past"
    unless_null $P25, vivify_42
    new $P25, "Undef"
  vivify_42:
    .return ($P25)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block42"  :subid("15_1300090357.92449") :outer("10_1300090357.92449")
.annotate 'line', 39
    .const 'Sub' $P485 = "37_1300090357.92449" 
    capture_lex $P485
    .const 'Sub' $P411 = "35_1300090357.92449" 
    capture_lex $P411
    .const 'Sub' $P406 = "34_1300090357.92449" 
    capture_lex $P406
    .const 'Sub' $P389 = "33_1300090357.92449" 
    capture_lex $P389
    .const 'Sub' $P363 = "32_1300090357.92449" 
    capture_lex $P363
    .const 'Sub' $P357 = "31_1300090357.92449" 
    capture_lex $P357
    .const 'Sub' $P288 = "30_1300090357.92449" 
    capture_lex $P288
    .const 'Sub' $P257 = "29_1300090357.92449" 
    capture_lex $P257
    .const 'Sub' $P238 = "28_1300090357.92449" 
    capture_lex $P238
    .const 'Sub' $P205 = "26_1300090357.92449" 
    capture_lex $P205
    .const 'Sub' $P171 = "25_1300090357.92449" 
    capture_lex $P171
    .const 'Sub' $P157 = "24_1300090357.92449" 
    capture_lex $P157
    .const 'Sub' $P132 = "23_1300090357.92449" 
    capture_lex $P132
    .const 'Sub' $P124 = "22_1300090357.92449" 
    capture_lex $P124
    .const 'Sub' $P109 = "21_1300090357.92449" 
    capture_lex $P109
    .const 'Sub' $P92 = "20_1300090357.92449" 
    capture_lex $P92
    .const 'Sub' $P78 = "19_1300090357.92449" 
    capture_lex $P78
    .const 'Sub' $P60 = "18_1300090357.92449" 
    capture_lex $P60
    .const 'Sub' $P51 = "17_1300090357.92449" 
    capture_lex $P51
    .const 'Sub' $P45 = "16_1300090357.92449" 
    capture_lex $P45
    get_global $P44, "$?CLASS"
.annotate 'line', 49
    .const 'Sub' $P45 = "16_1300090357.92449" 
    newclosure $P49, $P45
    .lex "addr", $P49
.annotate 'line', 39
    find_lex $P50, "addr"
.annotate 'line', 288
    .const 'Sub' $P411 = "35_1300090357.92449" 
    newclosure $P483, $P411
.annotate 'line', 39
    .return ($P483)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "" :load :init :subid("post43") :outer("15_1300090357.92449")
.annotate 'line', 39
    get_hll_global $P43, ["HLL";"Compiler";"SerializationContextBuilder"], "_block42" 
    .local pmc block
    set block, $P43
    .const 'Sub' $P485 = "37_1300090357.92449" 
    capture_lex $P485
    $P485()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block484"  :anon :subid("37_1300090357.92449") :outer("15_1300090357.92449")
.annotate 'line', 39
    nqp_get_sc_object $P486, "1300090356.01455", 1
    .local pmc type_obj
    set type_obj, $P486
    set_global "$?CLASS", type_obj
    get_how $P487, type_obj
    get_hll_global $P488, "NQPAttribute"
    $P489 = $P488."new"("$!sc" :named("name"))
    $P487."add_attribute"(type_obj, $P489)
    get_how $P490, type_obj
    get_hll_global $P491, "NQPAttribute"
    $P492 = $P491."new"("$!handle" :named("name"))
    $P490."add_attribute"(type_obj, $P492)
    get_how $P493, type_obj
    get_hll_global $P494, "NQPAttribute"
    $P495 = $P494."new"("%!addr_to_slot" :named("name"))
    $P493."add_attribute"(type_obj, $P495)
    get_how $P496, type_obj
    get_hll_global $P497, "NQPAttribute"
    $P498 = $P497."new"("@!event_stream" :named("name"))
    $P496."add_attribute"(type_obj, $P498)
    get_how $P499, type_obj
    .const 'Sub' $P500 = "17_1300090357.92449" 
    $P499."add_method"(type_obj, "new", $P500)
    get_how $P501, type_obj
    .const 'Sub' $P502 = "18_1300090357.92449" 
    $P501."add_method"(type_obj, "BUILD", $P502)
    get_how $P503, type_obj
    .const 'Sub' $P504 = "19_1300090357.92449" 
    $P503."add_method"(type_obj, "slot_for_object", $P504)
    get_how $P505, type_obj
    .const 'Sub' $P506 = "20_1300090357.92449" 
    $P505."add_method"(type_obj, "get_slot_past_for_object", $P506)
    get_how $P507, type_obj
    .const 'Sub' $P508 = "21_1300090357.92449" 
    $P507."add_method"(type_obj, "set_slot_past", $P508)
    get_how $P509, type_obj
    .const 'Sub' $P510 = "22_1300090357.92449" 
    $P509."add_method"(type_obj, "set_cur_sc", $P510)
    get_how $P511, type_obj
    .const 'Sub' $P512 = "23_1300090357.92449" 
    $P511."add_method"(type_obj, "add_object", $P512)
    get_how $P513, type_obj
    .const 'Sub' $P514 = "24_1300090357.92449" 
    $P513."add_method"(type_obj, "add_event", $P514)
    get_how $P515, type_obj
    .const 'Sub' $P516 = "25_1300090357.92449" 
    $P515."add_method"(type_obj, "get_object_sc_ref_past", $P516)
    get_how $P517, type_obj
    .const 'Sub' $P518 = "26_1300090357.92449" 
    $P517."add_method"(type_obj, "load_setting", $P518)
    get_how $P519, type_obj
    .const 'Sub' $P520 = "28_1300090357.92449" 
    $P519."add_method"(type_obj, "load_module", $P520)
    get_how $P521, type_obj
    .const 'Sub' $P522 = "29_1300090357.92449" 
    $P521."add_method"(type_obj, "install_package_symbol", $P522)
    get_how $P523, type_obj
    .const 'Sub' $P524 = "30_1300090357.92449" 
    $P523."add_method"(type_obj, "pkg_create_mo", $P524)
    get_how $P525, type_obj
    .const 'Sub' $P526 = "31_1300090357.92449" 
    $P525."add_method"(type_obj, "pkg_add_method", $P526)
    get_how $P527, type_obj
    .const 'Sub' $P528 = "32_1300090357.92449" 
    $P527."add_method"(type_obj, "pkg_add_parent_or_role", $P528)
    get_how $P529, type_obj
    .const 'Sub' $P530 = "33_1300090357.92449" 
    $P529."add_method"(type_obj, "pkg_compose", $P530)
    get_how $P531, type_obj
    .const 'Sub' $P532 = "34_1300090357.92449" 
    $P531."add_method"(type_obj, "sc", $P532)
    get_how $P533, type_obj
    .const 'Sub' $P534 = "35_1300090357.92449" 
    $P533."add_method"(type_obj, "to_past", $P534)
    get_how $P535, type_obj
    $P536 = $P535."compose"(type_obj)
    .return ($P536)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "addr"  :subid("16_1300090357.92449") :outer("15_1300090357.92449")
    .param pmc param_46
.annotate 'line', 49
    .lex "$obj", param_46
.annotate 'line', 50
    find_lex $P47, "$obj"
    get_addr $I48, $P47
.annotate 'line', 49
    .return ($I48)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "new"  :subid("17_1300090357.92449") :outer("15_1300090357.92449")
    .param pmc param_52
    .param pmc param_53 :named("handle")
.annotate 'line', 57
    .lex "self", param_52
    .lex "$handle", param_53
.annotate 'line', 58
    new $P54, "Undef"
    .lex "$obj", $P54
    find_lex $P55, "self"
    $P56 = $P55."CREATE"()
    store_lex "$obj", $P56
.annotate 'line', 59
    find_lex $P57, "$obj"
    find_lex $P58, "$handle"
    $P57."BUILD"($P58 :named("handle"))
    find_lex $P59, "$obj"
.annotate 'line', 57
    .return ($P59)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "BUILD"  :subid("18_1300090357.92449") :outer("15_1300090357.92449")
    .param pmc param_61
    .param pmc param_62 :optional :named("handle")
    .param int has_param_62 :opt_flag
.annotate 'line', 63
    .lex "self", param_61
    if has_param_62, optparam_44
    new $P63, "Undef"
    set param_62, $P63
  optparam_44:
    .lex "$handle", param_62
.annotate 'line', 64
    find_lex $P64, "$handle"
    set $S65, $P64
    nqp_create_sc $P66, $S65
    find_lex $P67, "self"
    get_global $P68, "$?CLASS"
    setattribute $P67, $P68, "$!sc", $P66
.annotate 'line', 65
    find_lex $P69, "$handle"
    find_lex $P70, "self"
    get_global $P71, "$?CLASS"
    setattribute $P70, $P71, "$!handle", $P69
.annotate 'line', 66
    new $P72, "Hash"
    find_lex $P73, "self"
    get_global $P74, "$?CLASS"
    setattribute $P73, $P74, "%!addr_to_slot", $P72
.annotate 'line', 67
    new $P75, "ResizablePMCArray"
    find_lex $P76, "self"
    get_global $P77, "$?CLASS"
    setattribute $P76, $P77, "@!event_stream", $P75
.annotate 'line', 63
    .return ($P75)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "slot_for_object"  :subid("19_1300090357.92449") :outer("15_1300090357.92449")
    .param pmc param_79
    .param pmc param_80
.annotate 'line', 71
    .lex "self", param_79
    .lex "$obj", param_80
.annotate 'line', 72
    new $P81, "Undef"
    .lex "$slot", $P81
    find_lex $P82, "$obj"
    $P83 = "addr"($P82)
    find_lex $P84, "self"
    get_global $P85, "$?CLASS"
    getattribute $P86, $P84, $P85, "%!addr_to_slot"
    unless_null $P86, vivify_45
    $P86 = root_new ['parrot';'Hash']
  vivify_45:
    set $P87, $P86[$P83]
    unless_null $P87, vivify_46
    new $P87, "Undef"
  vivify_46:
    store_lex "$slot", $P87
.annotate 'line', 73
    find_lex $P89, "$slot"
    defined $I90, $P89
    if $I90, unless_88_end
.annotate 'line', 74
    die "slot_for_object called on object not in context"
  unless_88_end:
.annotate 'line', 73
    find_lex $P91, "$slot"
.annotate 'line', 71
    .return ($P91)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "get_slot_past_for_object"  :subid("20_1300090357.92449") :outer("15_1300090357.92449")
    .param pmc param_95
    .param pmc param_96
.annotate 'line', 83
    new $P94, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P94, control_93
    push_eh $P94
    .lex "self", param_95
    .lex "$obj", param_96
.annotate 'line', 84
    new $P97, "Undef"
    .lex "$slot", $P97
    find_lex $P98, "self"
    find_lex $P99, "$obj"
    $P100 = $P98."slot_for_object"($P99)
    store_lex "$slot", $P100
.annotate 'line', 85
    new $P101, "Exception"
    set $P101['type'], .CONTROL_RETURN
    get_hll_global $P102, ["PAST"], "Op"
    find_lex $P103, "self"
    get_global $P104, "$?CLASS"
    getattribute $P105, $P103, $P104, "$!handle"
    unless_null $P105, vivify_47
    new $P105, "Undef"
  vivify_47:
    find_lex $P106, "$slot"
    $P107 = $P102."new"($P105, $P106, "nqp_get_sc_object Psi" :named("pirop"))
    setattribute $P101, 'payload', $P107
    throw $P101
.annotate 'line', 83
    .return ()
  control_93:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P108, exception, "payload"
    .return ($P108)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "set_slot_past"  :subid("21_1300090357.92449") :outer("15_1300090357.92449")
    .param pmc param_112
    .param pmc param_113
    .param pmc param_114
.annotate 'line', 89
    new $P111, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P111, control_110
    push_eh $P111
    .lex "self", param_112
    .lex "$slot", param_113
    .lex "$past_to_set", param_114
.annotate 'line', 90
    new $P115, "Exception"
    set $P115['type'], .CONTROL_RETURN
    get_hll_global $P116, ["PAST"], "Op"
    find_lex $P117, "self"
    get_global $P118, "$?CLASS"
    getattribute $P119, $P117, $P118, "$!handle"
    unless_null $P119, vivify_48
    new $P119, "Undef"
  vivify_48:
    find_lex $P120, "$slot"
    find_lex $P121, "$past_to_set"
    $P122 = $P116."new"($P119, $P120, $P121, "nqp_set_sc_object vsiP" :named("pirop"))
    setattribute $P115, 'payload', $P122
    throw $P115
.annotate 'line', 89
    .return ()
  control_110:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P123, exception, "payload"
    .return ($P123)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "set_cur_sc"  :subid("22_1300090357.92449") :outer("15_1300090357.92449")
    .param pmc param_125
    .param pmc param_126
.annotate 'line', 96
    .lex "self", param_125
    .lex "$to_wrap", param_126
.annotate 'line', 97
    get_hll_global $P127, ["PAST"], "Op"
    find_lex $P128, "$to_wrap"
.annotate 'line', 100
    get_hll_global $P129, ["PAST"], "Var"
    $P130 = $P129."new"("cur_sc" :named("name"), "register" :named("scope"))
    $P131 = $P127."new"($P128, $P130, "nqp_set_sc_for_object__0PP" :named("pirop"))
.annotate 'line', 96
    .return ($P131)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "add_object"  :subid("23_1300090357.92449") :outer("15_1300090357.92449")
    .param pmc param_133
    .param pmc param_134
.annotate 'line', 105
    .lex "self", param_133
    .lex "$obj", param_134
.annotate 'line', 107
    new $P135, "Undef"
    .lex "$idx", $P135
.annotate 'line', 106
    find_lex $P136, "$obj"
    find_lex $P137, "self"
    get_global $P138, "$?CLASS"
    getattribute $P139, $P137, $P138, "$!sc"
    unless_null $P139, vivify_49
    new $P139, "Undef"
  vivify_49:
    nqp_set_sc_for_object $P136, $P139
.annotate 'line', 107
    find_lex $P140, "self"
    get_global $P141, "$?CLASS"
    getattribute $P142, $P140, $P141, "$!sc"
    unless_null $P142, vivify_50
    new $P142, "Undef"
  vivify_50:
    $P143 = $P142."elems"()
    store_lex "$idx", $P143
.annotate 'line', 108
    find_lex $P144, "$obj"
    find_lex $P145, "$idx"
    set $I146, $P145
    find_lex $P147, "self"
    get_global $P148, "$?CLASS"
    getattribute $P149, $P147, $P148, "$!sc"
    unless_null $P149, vivify_51
    $P149 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P147, $P148, "$!sc", $P149
  vivify_51:
    set $P149[$I146], $P144
.annotate 'line', 109
    find_lex $P150, "$idx"
    find_lex $P151, "$obj"
    $P152 = "addr"($P151)
    find_lex $P153, "self"
    get_global $P154, "$?CLASS"
    getattribute $P155, $P153, $P154, "%!addr_to_slot"
    unless_null $P155, vivify_52
    $P155 = root_new ['parrot';'Hash']
    setattribute $P153, $P154, "%!addr_to_slot", $P155
  vivify_52:
    set $P155[$P152], $P150
    find_lex $P156, "$idx"
.annotate 'line', 105
    .return ($P156)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "add_event"  :subid("24_1300090357.92449") :outer("15_1300090357.92449")
    .param pmc param_158
    .param pmc param_159 :optional :named("deserialize_past")
    .param int has_param_159 :opt_flag
    .param pmc param_161 :optional :named("fixup_past")
    .param int has_param_161 :opt_flag
.annotate 'line', 114
    .lex "self", param_158
    if has_param_159, optparam_53
    new $P160, "Undef"
    set param_159, $P160
  optparam_53:
    .lex "$deserialize_past", param_159
    if has_param_161, optparam_54
    new $P162, "Undef"
    set param_161, $P162
  optparam_54:
    .lex "$fixup_past", param_161
.annotate 'line', 115
    find_lex $P163, "self"
    get_global $P164, "$?CLASS"
    getattribute $P165, $P163, $P164, "@!event_stream"
    unless_null $P165, vivify_55
    $P165 = root_new ['parrot';'ResizablePMCArray']
  vivify_55:
    get_hll_global $P166, ["HLL";"Compiler";"SerializationContextBuilder"], "Event"
    find_lex $P167, "$deserialize_past"
    find_lex $P168, "$fixup_past"
    $P169 = $P166."new"($P167 :named("deserialize_past"), $P168 :named("fixup_past"))
    $P170 = $P165."push"($P169)
.annotate 'line', 114
    .return ($P170)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "get_object_sc_ref_past"  :subid("25_1300090357.92449") :outer("15_1300090357.92449")
    .param pmc param_172
    .param pmc param_173
.annotate 'line', 122
    .lex "self", param_172
    .lex "$obj", param_173
.annotate 'line', 125
    new $P174, "Undef"
    .lex "$sc", $P174
    find_lex $P175, "$obj"
    nqp_get_sc_for_object $P176, $P175
    store_lex "$sc", $P176
.annotate 'line', 126
    find_lex $P178, "$sc"
    isnull $I179, $P178
    unless $I179, if_177_end
.annotate 'line', 127
    new $P180, "String"
    assign $P180, "Object of type '"
    find_lex $P181, "$obj"
    get_how $P182, $P181
    find_lex $P183, "$obj"
    $S184 = $P182."name"($P183)
    concat $P185, $P180, $S184
    concat $P186, $P185, "' cannot be referenced without having been "
    concat $P187, $P186, "assigned a serialization context"
.annotate 'line', 128
    die $P187
  if_177_end:
.annotate 'line', 134
    find_lex $P190, "$sc"
    find_lex $P191, "self"
    get_global $P192, "$?CLASS"
    getattribute $P193, $P191, $P192, "$!sc"
    unless_null $P193, vivify_56
    new $P193, "Undef"
  vivify_56:
    issame $I194, $P190, $P193
    if $I194, if_189
.annotate 'line', 138
    get_hll_global $P198, ["PAST"], "Op"
.annotate 'line', 139
    find_lex $P199, "$sc"
    $P200 = $P199."handle"()
    find_lex $P201, "$sc"
    find_lex $P202, "$obj"
    $P203 = $P201."slot_index_for"($P202)
    $P204 = $P198."new"($P200, $P203, "nqp_get_sc_object Psi" :named("pirop"))
.annotate 'line', 137
    set $P188, $P204
.annotate 'line', 134
    goto if_189_end
  if_189:
.annotate 'line', 135
    find_lex $P195, "self"
    find_lex $P196, "$obj"
    $P197 = $P195."get_slot_past_for_object"($P196)
.annotate 'line', 134
    set $P188, $P197
  if_189_end:
.annotate 'line', 122
    .return ($P188)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "load_setting"  :subid("26_1300090357.92449") :outer("15_1300090357.92449")
    .param pmc param_206
    .param pmc param_207
.annotate 'line', 145
    .const 'Sub' $P214 = "27_1300090357.92449" 
    capture_lex $P214
    .lex "self", param_206
    .lex "$setting_name", param_207
.annotate 'line', 147
    find_lex $P210, "$setting_name"
    set $S211, $P210
    isne $I212, $S211, "NULL"
    if $I212, if_209
    new $P208, 'Integer'
    set $P208, $I212
    goto if_209_end
  if_209:
    .const 'Sub' $P214 = "27_1300090357.92449" 
    capture_lex $P214
    $P237 = $P214()
    set $P208, $P237
  if_209_end:
.annotate 'line', 145
    .return ($P208)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block213"  :anon :subid("27_1300090357.92449") :outer("26_1300090357.92449")
.annotate 'line', 154
    new $P215, "Undef"
    .lex "$load_past", $P215
.annotate 'line', 151
    get_hll_global $P216, ["HLL"], "SettingManager"
    find_lex $P217, "$setting_name"
    $P218 = $P216."load_setting"($P217)
    find_dynamic_lex $P219, "%*COMPILING"
    unless_null $P219, vivify_57
    get_hll_global $P219, "%COMPILING"
    unless_null $P219, vivify_58
    die "Contextual %*COMPILING not found"
  vivify_58:
    store_dynamic_lex "%*COMPILING", $P219
  vivify_57:
    set $P220, $P219["%?OPTIONS"]
    unless_null $P220, vivify_59
    $P220 = root_new ['parrot';'Hash']
    set $P219["%?OPTIONS"], $P220
  vivify_59:
    set $P220["outer_ctx"], $P218
.annotate 'line', 154
    get_hll_global $P221, ["PAST"], "Stmts"
.annotate 'line', 155
    get_hll_global $P222, ["PAST"], "Op"
    $P223 = $P222."new"("SettingManager.pbc", "load_bytecode vs" :named("pirop"))
.annotate 'line', 158
    get_hll_global $P224, ["PAST"], "Op"
.annotate 'line', 160
    get_hll_global $P225, ["PAST"], "Var"
    $P226 = $P225."new"("block" :named("name"), "register" :named("scope"))
.annotate 'line', 161
    get_hll_global $P227, ["PAST"], "Op"
.annotate 'line', 163
    get_hll_global $P228, ["PAST"], "Var"
    $P229 = $P228."new"("SettingManager" :named("name"), "HLL" :named("namespace"), "package" :named("scope"))
    find_lex $P230, "$setting_name"
    $P231 = $P227."new"($P229, $P230, "callmethod" :named("pasttype"), "load_setting" :named("name"))
.annotate 'line', 161
    $P232 = $P224."new"($P226, $P231, "callmethod" :named("pasttype"), "set_outer_ctx" :named("name"))
.annotate 'line', 158
    $P233 = $P221."new"($P223, $P232)
.annotate 'line', 154
    store_lex "$load_past", $P233
.annotate 'line', 168
    find_lex $P234, "self"
    find_lex $P235, "$load_past"
    $P236 = $P234."add_event"($P235 :named("deserialize_past"))
.annotate 'line', 147
    .return ($P236)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "load_module"  :subid("28_1300090357.92449") :outer("15_1300090357.92449")
    .param pmc param_239
    .param pmc param_240
.annotate 'line', 174
    .lex "self", param_239
    .lex "$module_name", param_240
.annotate 'line', 176
    new $P241, "Undef"
    .lex "$*LOAD_UNIT", $P241
.annotate 'line', 177
    new $P242, "Undef"
    .lex "$path", $P242
.annotate 'line', 174
    find_lex $P243, "$*LOAD_UNIT"
    unless_null $P243, vivify_60
    get_hll_global $P243, "$LOAD_UNIT"
    unless_null $P243, vivify_61
    die "Contextual $*LOAD_UNIT not found"
  vivify_61:
  vivify_60:
.annotate 'line', 177
    find_lex $P244, "$module_name"
    set $S245, $P244
    split $P246, "::", $S245
    join $S247, "/", $P246
    new $P248, 'String'
    set $P248, $S247
    concat $P249, $P248, ".pbc"
    store_lex "$path", $P249
.annotate 'line', 178
    find_lex $P250, "$path"
    set $S251, $P250
    load_bytecode $S251
.annotate 'line', 181
    find_lex $P252, "self"
.annotate 'line', 182
    get_hll_global $P253, ["PAST"], "Op"
    find_lex $P254, "$path"
    $P255 = $P253."new"($P254, "load_bytecode vs" :named("pirop"))
    $P252."add_event"($P255 :named("deserialize_past"))
.annotate 'line', 181
    find_lex $P256, "$*LOAD_UNIT"
    unless_null $P256, vivify_62
    get_hll_global $P256, "$LOAD_UNIT"
    unless_null $P256, vivify_63
    die "Contextual $*LOAD_UNIT not found"
  vivify_63:
  vivify_62:
.annotate 'line', 174
    .return ($P256)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "install_package_symbol"  :subid("29_1300090357.92449") :outer("15_1300090357.92449")
    .param pmc param_258
    .param pmc param_259
    .param pmc param_260
.annotate 'line', 190
    .lex "self", param_258
    .lex "@sym", param_259
    .lex "$obj", param_260
.annotate 'line', 192
    new $P261, "Undef"
    .lex "$name", $P261
.annotate 'line', 191
    find_lex $P262, "@sym"
    clone $P263, $P262
    store_lex "@sym", $P263
.annotate 'line', 192
    find_lex $P264, "@sym"
    $P265 = $P264."pop"()
    set $S266, $P265
    new $P267, 'String'
    set $P267, $S266
    store_lex "$name", $P267
.annotate 'line', 199
    find_lex $P268, "self"
.annotate 'line', 200
    get_hll_global $P269, ["PAST"], "Op"
.annotate 'line', 202
    get_hll_global $P270, ["PAST"], "Var"
    find_lex $P271, "$name"
    find_lex $P272, "@sym"
    $P273 = $P270."new"($P271 :named("name"), $P272 :named("namespace"), "package" :named("scope"))
.annotate 'line', 203
    find_lex $P274, "self"
    find_lex $P275, "$obj"
    $P276 = $P274."get_slot_past_for_object"($P275)
    $P277 = $P269."new"($P273, $P276, "bind" :named("pasttype"))
.annotate 'line', 205
    get_hll_global $P278, ["PAST"], "Op"
.annotate 'line', 207
    get_hll_global $P279, ["PAST"], "Var"
    find_lex $P280, "$name"
    find_lex $P281, "@sym"
    $P282 = $P279."new"($P280 :named("name"), $P281 :named("namespace"), "package" :named("scope"))
.annotate 'line', 208
    find_lex $P283, "self"
    find_lex $P284, "$obj"
    $P285 = $P283."get_slot_past_for_object"($P284)
    $P286 = $P278."new"($P282, $P285, "bind" :named("pasttype"))
.annotate 'line', 205
    $P287 = $P268."add_event"($P277 :named("deserialize_past"), $P286 :named("fixup_past"))
.annotate 'line', 190
    .return ($P287)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "pkg_create_mo"  :subid("30_1300090357.92449") :outer("15_1300090357.92449")
    .param pmc param_291
    .param pmc param_292
    .param pmc param_293 :optional :named("name")
    .param int has_param_293 :opt_flag
    .param pmc param_295 :optional :named("repr")
    .param int has_param_295 :opt_flag
.annotate 'line', 214
    new $P290, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P290, control_289
    push_eh $P290
    .lex "self", param_291
    .lex "$how", param_292
    if has_param_293, optparam_64
    new $P294, "Undef"
    set param_293, $P294
  optparam_64:
    .lex "$name", param_293
    if has_param_295, optparam_65
    new $P296, "Undef"
    set param_295, $P296
  optparam_65:
    .lex "$repr", param_295
.annotate 'line', 216
    $P297 = root_new ['parrot';'Hash']
    .lex "%args", $P297
.annotate 'line', 219
    new $P298, "Undef"
    .lex "$mo", $P298
.annotate 'line', 220
    new $P299, "Undef"
    .lex "$slot", $P299
.annotate 'line', 224
    $P300 = root_new ['parrot';'ResizablePMCArray']
    .lex "@how_ns", $P300
.annotate 'line', 225
    new $P301, "Undef"
    .lex "$how_name", $P301
.annotate 'line', 226
    new $P302, "Undef"
    .lex "$setup_call", $P302
.annotate 'line', 214
    find_lex $P303, "%args"
.annotate 'line', 217
    find_lex $P305, "$name"
    defined $I306, $P305
    unless $I306, if_304_end
    find_lex $P307, "$name"
    find_lex $P308, "%args"
    unless_null $P308, vivify_66
    $P308 = root_new ['parrot';'Hash']
    store_lex "%args", $P308
  vivify_66:
    set $P308["name"], $P307
  if_304_end:
.annotate 'line', 218
    find_lex $P310, "$repr"
    defined $I311, $P310
    unless $I311, if_309_end
    find_lex $P312, "$repr"
    find_lex $P313, "%args"
    unless_null $P313, vivify_67
    $P313 = root_new ['parrot';'Hash']
    store_lex "%args", $P313
  vivify_67:
    set $P313["repr"], $P312
  if_309_end:
.annotate 'line', 219
    find_lex $P314, "$how"
    find_lex $P315, "%args"
    $P316 = $P314."new_type"($P315 :flat)
    store_lex "$mo", $P316
.annotate 'line', 220
    find_lex $P317, "self"
    find_lex $P318, "$mo"
    $P319 = $P317."add_object"($P318)
    store_lex "$slot", $P319
.annotate 'line', 224
    find_lex $P320, "$how"
    get_how $P321, $P320
    find_lex $P322, "$how"
    $S323 = $P321."name"($P322)
    split $P324, "::", $S323
    store_lex "@how_ns", $P324
.annotate 'line', 225
    find_lex $P325, "@how_ns"
    $P326 = $P325."pop"()
    store_lex "$how_name", $P326
.annotate 'line', 226
    get_hll_global $P327, ["PAST"], "Op"
.annotate 'line', 228
    get_hll_global $P328, ["PAST"], "Var"
    find_lex $P329, "$how_name"
    find_lex $P330, "@how_ns"
    $P331 = $P328."new"($P329 :named("name"), $P330 :named("namespace"), "package" :named("scope"))
    $P332 = $P327."new"($P331, "callmethod" :named("pasttype"), "new_type" :named("name"))
.annotate 'line', 226
    store_lex "$setup_call", $P332
.annotate 'line', 232
    find_lex $P334, "$name"
    defined $I335, $P334
    unless $I335, if_333_end
.annotate 'line', 233
    find_lex $P336, "$setup_call"
    get_hll_global $P337, ["PAST"], "Val"
    find_lex $P338, "$name"
    $P339 = $P337."new"($P338 :named("value"), "name" :named("named"))
    $P336."push"($P339)
  if_333_end:
.annotate 'line', 235
    find_lex $P341, "$repr"
    defined $I342, $P341
    unless $I342, if_340_end
.annotate 'line', 236
    find_lex $P343, "$setup_call"
    get_hll_global $P344, ["PAST"], "Val"
    find_lex $P345, "$repr"
    $P346 = $P344."new"($P345 :named("value"), "repr" :named("named"))
    $P343."push"($P346)
  if_340_end:
.annotate 'line', 238
    find_lex $P347, "self"
.annotate 'line', 239
    find_lex $P348, "self"
    find_lex $P349, "$slot"
    find_lex $P350, "self"
    find_lex $P351, "$setup_call"
    $P352 = $P350."set_cur_sc"($P351)
    $P353 = $P348."set_slot_past"($P349, $P352)
    $P347."add_event"($P353 :named("deserialize_past"))
.annotate 'line', 242
    new $P354, "Exception"
    set $P354['type'], .CONTROL_RETURN
    find_lex $P355, "$mo"
    setattribute $P354, 'payload', $P355
    throw $P354
.annotate 'line', 214
    .return ()
  control_289:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P356, exception, "payload"
    .return ($P356)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "pkg_add_method"  :subid("31_1300090357.92449") :outer("15_1300090357.92449")
    .param pmc param_358
    .param pmc param_359
    .param pmc param_360
    .param pmc param_361
    .param pmc param_362
.annotate 'line', 248
    .lex "self", param_358
    .lex "$obj", param_359
    .lex "$meta_method_name", param_360
    .lex "$name", param_361
    .lex "$method_past", param_362
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "pkg_add_parent_or_role"  :subid("32_1300090357.92449") :outer("15_1300090357.92449")
    .param pmc param_364
    .param pmc param_365
    .param pmc param_366
    .param pmc param_367
.annotate 'line', 253
    .lex "self", param_364
    .lex "$obj", param_365
    .lex "$meta_method_name", param_366
    .lex "$to_add", param_367
.annotate 'line', 258
    new $P368, "Undef"
    .lex "$slot_past", $P368
.annotate 'line', 255
    find_lex $P369, "$obj"
    get_how $P370, $P369
    find_lex $P371, "$obj"
    find_lex $P372, "$to_add"
    find_lex $P373, "$meta_method_name"
    set $S374, $P373
    $P370.$S374($P371, $P372)
.annotate 'line', 258
    find_lex $P375, "$obj"
    $P376 = "get_slot_past_for_object"($P375)
    store_lex "$slot_past", $P376
.annotate 'line', 259
    find_lex $P377, "self"
    get_hll_global $P378, ["PAST"], "Op"
    find_lex $P379, "$meta_method_name"
.annotate 'line', 261
    get_hll_global $P380, ["PAST"], "Op"
    find_lex $P381, "$slot_past"
    $P382 = $P380."new"($P381, "get_how PP" :named("pirop"))
    find_lex $P383, "$slot_past"
.annotate 'line', 263
    find_lex $P384, "self"
    find_lex $P385, "$to_add"
    $P386 = $P384."get_object_sc_ref_past"($P385)
    $P387 = $P378."new"($P382, $P383, $P386, "callmethod" :named("pasttype"), $P379 :named("name"))
.annotate 'line', 259
    $P388 = $P377."add_event"($P387 :named("deserialize_past"))
.annotate 'line', 253
    .return ($P388)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "pkg_compose"  :subid("33_1300090357.92449") :outer("15_1300090357.92449")
    .param pmc param_390
    .param pmc param_391
.annotate 'line', 268
    .lex "self", param_390
    .lex "$obj", param_391
.annotate 'line', 273
    new $P392, "Undef"
    .lex "$slot_past", $P392
.annotate 'line', 270
    find_lex $P393, "$obj"
    get_how $P394, $P393
    find_lex $P395, "$obj"
    $P394."compose"($P395)
.annotate 'line', 273
    find_lex $P396, "$obj"
    $P397 = "get_slot_past_for_object"($P396)
    store_lex "$slot_past", $P397
.annotate 'line', 274
    find_lex $P398, "self"
    get_hll_global $P399, ["PAST"], "Op"
.annotate 'line', 276
    get_hll_global $P400, ["PAST"], "Op"
    find_lex $P401, "$slot_past"
    $P402 = $P400."new"($P401, "get_how PP" :named("pirop"))
    find_lex $P403, "$slot_past"
    $P404 = $P399."new"($P402, $P403, "callmethod" :named("pasttype"), "compose" :named("name"))
.annotate 'line', 274
    $P405 = $P398."add_event"($P404 :named("deserialize_past"))
.annotate 'line', 268
    .return ($P405)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "sc"  :subid("34_1300090357.92449") :outer("15_1300090357.92449")
    .param pmc param_407
.annotate 'line', 282
    .lex "self", param_407
    find_lex $P408, "self"
    get_global $P409, "$?CLASS"
    getattribute $P410, $P408, $P409, "@!sc"
    unless_null $P410, vivify_68
    $P410 = root_new ['parrot';'ResizablePMCArray']
  vivify_68:
    .return ($P410)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "to_past"  :subid("35_1300090357.92449") :outer("15_1300090357.92449")
    .param pmc param_412
.annotate 'line', 288
    .const 'Sub' $P426 = "36_1300090357.92449" 
    capture_lex $P426
    .lex "self", param_412
.annotate 'line', 289
    new $P413, "Undef"
    .lex "$des", $P413
.annotate 'line', 290
    new $P414, "Undef"
    .lex "$fix", $P414
.annotate 'line', 289
    get_hll_global $P415, ["PAST"], "Stmts"
    $P416 = $P415."new"()
    store_lex "$des", $P416
.annotate 'line', 290
    get_hll_global $P417, ["PAST"], "Stmts"
    $P418 = $P417."new"()
    store_lex "$fix", $P418
.annotate 'line', 291
    find_lex $P420, "self"
    get_global $P421, "$?CLASS"
    getattribute $P422, $P420, $P421, "@!event_stream"
    unless_null $P422, vivify_69
    $P422 = root_new ['parrot';'ResizablePMCArray']
  vivify_69:
    defined $I423, $P422
    unless $I423, for_undef_70
    iter $P419, $P422
    new $P445, 'ExceptionHandler'
    set_label $P445, loop444_handler
    $P445."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P445
  loop444_test:
    unless $P419, loop444_done
    shift $P424, $P419
  loop444_redo:
    .const 'Sub' $P426 = "36_1300090357.92449" 
    capture_lex $P426
    $P426($P424)
  loop444_next:
    goto loop444_test
  loop444_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P446, exception, 'type'
    eq $P446, .CONTROL_LOOP_NEXT, loop444_next
    eq $P446, .CONTROL_LOOP_REDO, loop444_redo
  loop444_done:
    pop_eh 
  for_undef_70:
.annotate 'line', 295
    find_dynamic_lex $P447, "$/"
    get_hll_global $P448, ["PAST"], "Op"
.annotate 'line', 297
    get_hll_global $P449, ["PAST"], "Op"
.annotate 'line', 299
    get_hll_global $P450, ["PAST"], "Op"
    find_lex $P451, "self"
    get_global $P452, "$?CLASS"
    getattribute $P453, $P451, $P452, "$!handle"
    unless_null $P453, vivify_71
    new $P453, "Undef"
  vivify_71:
    $P454 = $P450."new"($P453, "nqp_get_sc Ps" :named("pirop"))
    $P455 = $P449."new"($P454, "isnull IP" :named("pirop"))
.annotate 'line', 301
    get_hll_global $P456, ["PAST"], "Stmts"
.annotate 'line', 302
    get_hll_global $P457, ["PAST"], "Op"
    $P458 = $P457."new"("nqp_dynop_setup v" :named("pirop"))
.annotate 'line', 303
    get_hll_global $P459, ["PAST"], "Op"
.annotate 'line', 305
    get_hll_global $P460, ["PAST"], "Op"
    $P461 = $P460."new"("getinterp P" :named("pirop"))
.annotate 'line', 306
    get_hll_global $P462, ["PAST"], "Op"
    $P463 = $P462."new"("LexPad", "get_class Ps" :named("pirop"))
.annotate 'line', 307
    get_hll_global $P464, ["PAST"], "Op"
    $P465 = $P464."new"("NQPLexPad", "get_class Ps" :named("pirop"))
    $P466 = $P459."new"($P461, $P463, $P465, "callmethod" :named("pasttype"), "hll_map" :named("name"))
.annotate 'line', 309
    get_hll_global $P467, ["PAST"], "Op"
    $P468 = $P467."new"("nqpmo.pbc", "load_bytecode vs" :named("pirop"))
.annotate 'line', 310
    get_hll_global $P469, ["PAST"], "Op"
.annotate 'line', 312
    get_hll_global $P470, ["PAST"], "Var"
    $P471 = $P470."new"("cur_sc" :named("name"), "register" :named("scope"), 1 :named("isdecl"))
.annotate 'line', 313
    get_hll_global $P472, ["PAST"], "Op"
    find_lex $P473, "self"
    get_global $P474, "$?CLASS"
    getattribute $P475, $P473, $P474, "$!handle"
    unless_null $P475, vivify_72
    new $P475, "Undef"
  vivify_72:
    $P476 = $P472."new"($P475, "nqp_create_sc Ps" :named("pirop"))
    $P477 = $P469."new"($P471, $P476, "bind" :named("pasttype"))
.annotate 'line', 310
    find_lex $P478, "$des"
    $P479 = $P456."new"($P458, $P466, $P468, $P477, $P478)
.annotate 'line', 301
    find_lex $P480, "$fix"
    $P481 = $P448."new"($P455, $P479, $P480, "if" :named("pasttype"))
.annotate 'line', 295
    $P482 = $P447."!make"($P481)
.annotate 'line', 288
    .return ($P482)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block425"  :anon :subid("36_1300090357.92449") :outer("35_1300090357.92449")
    .param pmc param_427
.annotate 'line', 291
    .lex "$_", param_427
.annotate 'line', 292
    find_lex $P429, "$_"
    $P430 = $P429."deserialize_past"()
    defined $I431, $P430
    unless $I431, if_428_end
    find_lex $P432, "$des"
    find_lex $P433, "$_"
    $P434 = $P433."deserialize_past"()
    $P432."push"($P434)
  if_428_end:
.annotate 'line', 293
    find_lex $P437, "$_"
    $P438 = $P437."fixup_past"()
    defined $I439, $P438
    if $I439, if_436
    new $P435, 'Integer'
    set $P435, $I439
    goto if_436_end
  if_436:
    find_lex $P440, "$fix"
    find_lex $P441, "$_"
    $P442 = $P441."fixup_past"()
    $P443 = $P440."push"($P442)
    set $P435, $P443
  if_436_end:
.annotate 'line', 291
    .return ($P435)
.end


.HLL "nqp"

.namespace []
.sub "_block538" :load :anon :subid("38_1300090357.92449")
.annotate 'line', 1
    .const 'Sub' $P540 = "10_1300090357.92449" 
    $P541 = $P540()
    .return ($P541)
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
