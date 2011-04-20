
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1303340925.969")
.annotate 'line', 0
    get_hll_global $P288, ["NQPMu"], "_block287" 
    capture_lex $P288
    .const 'Sub' $P279 = "29_1303340925.969" 
    capture_lex $P279
    .const 'Sub' $P270 = "27_1303340925.969" 
    capture_lex $P270
    .const 'Sub' $P261 = "25_1303340925.969" 
    capture_lex $P261
    .const 'Sub' $P247 = "24_1303340925.969" 
    capture_lex $P247
    .const 'Sub' $P225 = "23_1303340925.969" 
    capture_lex $P225
    .const 'Sub' $P218 = "22_1303340925.969" 
    capture_lex $P218
    .const 'Sub' $P130 = "20_1303340925.969" 
    capture_lex $P130
    .const 'Sub' $P97 = "18_1303340925.969" 
    capture_lex $P97
    .const 'Sub' $P92 = "17_1303340925.969" 
    capture_lex $P92
    .const 'Sub' $P78 = "15_1303340925.969" 
    capture_lex $P78
    .const 'Sub' $P66 = "14_1303340925.969" 
    capture_lex $P66
    .const 'Sub' $P55 = "13_1303340925.969" 
    capture_lex $P55
    .const 'Sub' $P50 = "12_1303340925.969" 
    capture_lex $P50
    .const 'Sub' $P17 = "11_1303340925.969" 
    capture_lex $P17
.annotate 'line', 1
    .lex "GLOBALish", $P13
    .lex "int", $P14
    .lex "num", $P15
    .lex "str", $P16
.annotate 'line', 73
    .const 'Sub' $P17 = "11_1303340925.969" 
    newclosure $P49, $P17
    .lex "open", $P49
.annotate 'line', 85
    .const 'Sub' $P50 = "12_1303340925.969" 
    newclosure $P54, $P50
    .lex "close", $P54
.annotate 'line', 93
    .const 'Sub' $P55 = "13_1303340925.969" 
    newclosure $P65, $P55
    .lex "slurp", $P65
.annotate 'line', 105
    .const 'Sub' $P66 = "14_1303340925.969" 
    newclosure $P77, $P66
    .lex "spew", $P77
.annotate 'line', 112
    .const 'Sub' $P78 = "15_1303340925.969" 
    newclosure $P91, $P78
    .lex "print", $P91
.annotate 'line', 119
    .const 'Sub' $P92 = "17_1303340925.969" 
    newclosure $P96, $P92
    .lex "say", $P96
.annotate 'line', 137
    .const 'Sub' $P97 = "18_1303340925.969" 
    newclosure $P129, $P97
    .lex "match", $P129
.annotate 'line', 159
    .const 'Sub' $P130 = "20_1303340925.969" 
    newclosure $P216, $P130
    .lex "subst", $P216
.annotate 'line', 185
    new $P217, "Undef"
    .lex "$test_counter", $P217
.annotate 'line', 187
    .const 'Sub' $P218 = "22_1303340925.969" 
    newclosure $P224, $P218
    .lex "plan", $P224
.annotate 'line', 191
    .const 'Sub' $P225 = "23_1303340925.969" 
    newclosure $P246, $P225
    .lex "ok", $P246
.annotate 'line', 206
    .const 'Sub' $P247 = "24_1303340925.969" 
    newclosure $P259, $P247
    .lex "skip", $P259
.annotate 'line', 7
    .const 'Sub' $P261 = "25_1303340925.969" 
    capture_lex $P261
    $P261()
.annotate 'line', 9
    .const 'Sub' $P270 = "27_1303340925.969" 
    capture_lex $P270
    $P270()
.annotate 'line', 11
    .const 'Sub' $P279 = "29_1303340925.969" 
    capture_lex $P279
    $P279()
.annotate 'line', 14
    get_hll_global $P288, ["NQPMu"], "_block287" 
    capture_lex $P288
    $P288()
    find_lex $P441, "open"
    find_lex $P442, "close"
    find_lex $P443, "slurp"
    find_lex $P444, "spew"
    find_lex $P445, "print"
    find_lex $P446, "say"
    find_lex $P447, "match"
    find_lex $P448, "subst"
.annotate 'line', 185
    new $P449, "Integer"
    assign $P449, 0
    store_lex "$test_counter", $P449
    find_lex $P450, "plan"
    find_lex $P451, "ok"
    find_lex $P452, "skip"
    new $P453, "Integer"
    assign $P453, 1
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 1
    .return ()
    .const 'Sub' $P455 = "45_1303340925.969" 
    .return ($P455)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post46") :outer("10_1303340925.969")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1303340925.969" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P459, "1303340925.343"
    isnull $I460, $P459
    if $I460, if_458
    .const 'Sub' $P536 = "10_1303340925.969" 
    $P537 = $P536."get_lexinfo"()
    nqp_get_sc_object $P538, "1303340925.343", 0
    $P537."set_static_lexpad_value"("GLOBALish", $P538)
    .const 'Sub' $P539 = "10_1303340925.969" 
    $P540 = $P539."get_lexinfo"()
    $P540."finish_static_lexpad"()
    .const 'Sub' $P541 = "10_1303340925.969" 
    $P542 = $P541."get_lexinfo"()
    nqp_get_sc_object $P543, "1303340925.343", 1
    $P542."set_static_lexpad_value"("int", $P543)
    .const 'Sub' $P544 = "10_1303340925.969" 
    $P545 = $P544."get_lexinfo"()
    $P545."finish_static_lexpad"()
    .const 'Sub' $P546 = "25_1303340925.969" 
    $P547 = $P546."get_lexinfo"()
    nqp_get_sc_object $P548, "1303340925.343", 1
    $P547."set_static_lexpad_value"("$?PACKAGE", $P548)
    .const 'Sub' $P549 = "25_1303340925.969" 
    $P550 = $P549."get_lexinfo"()
    $P550."finish_static_lexpad"()
    .const 'Sub' $P551 = "25_1303340925.969" 
    $P552 = $P551."get_lexinfo"()
    nqp_get_sc_object $P553, "1303340925.343", 1
    $P552."set_static_lexpad_value"("$?CLASS", $P553)
    .const 'Sub' $P554 = "25_1303340925.969" 
    $P555 = $P554."get_lexinfo"()
    $P555."finish_static_lexpad"()
    .const 'Sub' $P556 = "10_1303340925.969" 
    $P557 = $P556."get_lexinfo"()
    nqp_get_sc_object $P558, "1303340925.343", 2
    $P557."set_static_lexpad_value"("num", $P558)
    .const 'Sub' $P559 = "10_1303340925.969" 
    $P560 = $P559."get_lexinfo"()
    $P560."finish_static_lexpad"()
    .const 'Sub' $P561 = "27_1303340925.969" 
    $P562 = $P561."get_lexinfo"()
    nqp_get_sc_object $P563, "1303340925.343", 2
    $P562."set_static_lexpad_value"("$?PACKAGE", $P563)
    .const 'Sub' $P564 = "27_1303340925.969" 
    $P565 = $P564."get_lexinfo"()
    $P565."finish_static_lexpad"()
    .const 'Sub' $P566 = "27_1303340925.969" 
    $P567 = $P566."get_lexinfo"()
    nqp_get_sc_object $P568, "1303340925.343", 2
    $P567."set_static_lexpad_value"("$?CLASS", $P568)
    .const 'Sub' $P569 = "27_1303340925.969" 
    $P570 = $P569."get_lexinfo"()
    $P570."finish_static_lexpad"()
    .const 'Sub' $P571 = "10_1303340925.969" 
    $P572 = $P571."get_lexinfo"()
    nqp_get_sc_object $P573, "1303340925.343", 3
    $P572."set_static_lexpad_value"("str", $P573)
    .const 'Sub' $P574 = "10_1303340925.969" 
    $P575 = $P574."get_lexinfo"()
    $P575."finish_static_lexpad"()
    .const 'Sub' $P576 = "29_1303340925.969" 
    $P577 = $P576."get_lexinfo"()
    nqp_get_sc_object $P578, "1303340925.343", 3
    $P577."set_static_lexpad_value"("$?PACKAGE", $P578)
    .const 'Sub' $P579 = "29_1303340925.969" 
    $P580 = $P579."get_lexinfo"()
    $P580."finish_static_lexpad"()
    .const 'Sub' $P581 = "29_1303340925.969" 
    $P582 = $P581."get_lexinfo"()
    nqp_get_sc_object $P583, "1303340925.343", 3
    $P582."set_static_lexpad_value"("$?CLASS", $P583)
    .const 'Sub' $P584 = "29_1303340925.969" 
    $P585 = $P584."get_lexinfo"()
    $P585."finish_static_lexpad"()
    nqp_get_sc_object $P586, "1303340925.343", 4
    set_hll_global "NQPMu", $P586
    .const 'Sub' $P587 = "31_1303340925.969" 
    $P588 = $P587."get_lexinfo"()
    nqp_get_sc_object $P589, "1303340925.343", 4
    $P588."set_static_lexpad_value"("$?PACKAGE", $P589)
    .const 'Sub' $P590 = "31_1303340925.969" 
    $P591 = $P590."get_lexinfo"()
    $P591."finish_static_lexpad"()
    .const 'Sub' $P592 = "31_1303340925.969" 
    $P593 = $P592."get_lexinfo"()
    nqp_get_sc_object $P594, "1303340925.343", 4
    $P593."set_static_lexpad_value"("$?CLASS", $P594)
    .const 'Sub' $P595 = "31_1303340925.969" 
    $P596 = $P595."get_lexinfo"()
    $P596."finish_static_lexpad"()
    goto if_458_end
  if_458:
    nqp_dynop_setup 
    getinterp $P461
    get_class $P462, "LexPad"
    get_class $P463, "NQPLexPad"
    $P461."hll_map"($P462, $P463)
    load_bytecode "nqpmo.pbc"
    nqp_create_sc $P464, "1303340925.343"
    .local pmc cur_sc
    set cur_sc, $P464
    get_hll_global $P465, "KnowHOW"
    $P466 = $P465."new_type"("GLOBALish" :named("name"))
    nqp_set_sc_for_object $P466, cur_sc
    nqp_set_sc_object "1303340925.343", 0, $P466
    .const 'Sub' $P467 = "10_1303340925.969" 
    $P468 = $P467."get_lexinfo"()
    nqp_get_sc_object $P469, "1303340925.343", 0
    $P468."set_static_lexpad_value"("GLOBALish", $P469)
    .const 'Sub' $P470 = "10_1303340925.969" 
    $P471 = $P470."get_lexinfo"()
    $P471."finish_static_lexpad"()
    get_hll_global $P472, "NQPNativeHOW"
    $P473 = $P472."new_type"("int" :named("name"), "P6int" :named("repr"))
    nqp_set_sc_for_object $P473, cur_sc
    nqp_set_sc_object "1303340925.343", 1, $P473
    .const 'Sub' $P474 = "10_1303340925.969" 
    $P475 = $P474."get_lexinfo"()
    nqp_get_sc_object $P476, "1303340925.343", 1
    $P475."set_static_lexpad_value"("int", $P476)
    .const 'Sub' $P477 = "10_1303340925.969" 
    $P478 = $P477."get_lexinfo"()
    $P478."finish_static_lexpad"()
    .const 'Sub' $P479 = "25_1303340925.969" 
    $P480 = $P479."get_lexinfo"()
    nqp_get_sc_object $P481, "1303340925.343", 1
    $P480."set_static_lexpad_value"("$?PACKAGE", $P481)
    .const 'Sub' $P482 = "25_1303340925.969" 
    $P483 = $P482."get_lexinfo"()
    $P483."finish_static_lexpad"()
    .const 'Sub' $P484 = "25_1303340925.969" 
    $P485 = $P484."get_lexinfo"()
    nqp_get_sc_object $P486, "1303340925.343", 1
    $P485."set_static_lexpad_value"("$?CLASS", $P486)
    .const 'Sub' $P487 = "25_1303340925.969" 
    $P488 = $P487."get_lexinfo"()
    $P488."finish_static_lexpad"()
    get_hll_global $P489, "NQPNativeHOW"
    $P490 = $P489."new_type"("num" :named("name"), "P6num" :named("repr"))
    nqp_set_sc_for_object $P490, cur_sc
    nqp_set_sc_object "1303340925.343", 2, $P490
    .const 'Sub' $P491 = "10_1303340925.969" 
    $P492 = $P491."get_lexinfo"()
    nqp_get_sc_object $P493, "1303340925.343", 2
    $P492."set_static_lexpad_value"("num", $P493)
    .const 'Sub' $P494 = "10_1303340925.969" 
    $P495 = $P494."get_lexinfo"()
    $P495."finish_static_lexpad"()
    .const 'Sub' $P496 = "27_1303340925.969" 
    $P497 = $P496."get_lexinfo"()
    nqp_get_sc_object $P498, "1303340925.343", 2
    $P497."set_static_lexpad_value"("$?PACKAGE", $P498)
    .const 'Sub' $P499 = "27_1303340925.969" 
    $P500 = $P499."get_lexinfo"()
    $P500."finish_static_lexpad"()
    .const 'Sub' $P501 = "27_1303340925.969" 
    $P502 = $P501."get_lexinfo"()
    nqp_get_sc_object $P503, "1303340925.343", 2
    $P502."set_static_lexpad_value"("$?CLASS", $P503)
    .const 'Sub' $P504 = "27_1303340925.969" 
    $P505 = $P504."get_lexinfo"()
    $P505."finish_static_lexpad"()
    get_hll_global $P506, "NQPNativeHOW"
    $P507 = $P506."new_type"("str" :named("name"), "P6str" :named("repr"))
    nqp_set_sc_for_object $P507, cur_sc
    nqp_set_sc_object "1303340925.343", 3, $P507
    .const 'Sub' $P508 = "10_1303340925.969" 
    $P509 = $P508."get_lexinfo"()
    nqp_get_sc_object $P510, "1303340925.343", 3
    $P509."set_static_lexpad_value"("str", $P510)
    .const 'Sub' $P511 = "10_1303340925.969" 
    $P512 = $P511."get_lexinfo"()
    $P512."finish_static_lexpad"()
    .const 'Sub' $P513 = "29_1303340925.969" 
    $P514 = $P513."get_lexinfo"()
    nqp_get_sc_object $P515, "1303340925.343", 3
    $P514."set_static_lexpad_value"("$?PACKAGE", $P515)
    .const 'Sub' $P516 = "29_1303340925.969" 
    $P517 = $P516."get_lexinfo"()
    $P517."finish_static_lexpad"()
    .const 'Sub' $P518 = "29_1303340925.969" 
    $P519 = $P518."get_lexinfo"()
    nqp_get_sc_object $P520, "1303340925.343", 3
    $P519."set_static_lexpad_value"("$?CLASS", $P520)
    .const 'Sub' $P521 = "29_1303340925.969" 
    $P522 = $P521."get_lexinfo"()
    $P522."finish_static_lexpad"()
    get_hll_global $P523, "NQPClassHOW"
    $P524 = $P523."new_type"("NQPMu" :named("name"))
    nqp_set_sc_for_object $P524, cur_sc
    nqp_set_sc_object "1303340925.343", 4, $P524
    nqp_get_sc_object $P525, "1303340925.343", 4
    set_hll_global "NQPMu", $P525
    .const 'Sub' $P526 = "31_1303340925.969" 
    $P527 = $P526."get_lexinfo"()
    nqp_get_sc_object $P528, "1303340925.343", 4
    $P527."set_static_lexpad_value"("$?PACKAGE", $P528)
    .const 'Sub' $P529 = "31_1303340925.969" 
    $P530 = $P529."get_lexinfo"()
    $P530."finish_static_lexpad"()
    .const 'Sub' $P531 = "31_1303340925.969" 
    $P532 = $P531."get_lexinfo"()
    nqp_get_sc_object $P533, "1303340925.343", 4
    $P532."set_static_lexpad_value"("$?CLASS", $P533)
    .const 'Sub' $P534 = "31_1303340925.969" 
    $P535 = $P534."get_lexinfo"()
    $P535."finish_static_lexpad"()
  if_458_end:
.end


.HLL "nqp"

.namespace []
.sub "open"  :subid("11_1303340925.969") :outer("10_1303340925.969")
    .param pmc param_18
    .param pmc param_19 :optional :named("r")
    .param int has_param_19 :opt_flag
    .param pmc param_21 :optional :named("w")
    .param int has_param_21 :opt_flag
    .param pmc param_23 :optional :named("a")
    .param int has_param_23 :opt_flag
    .param pmc param_25 :optional :named("bin")
    .param int has_param_25 :opt_flag
.annotate 'line', 73
    .lex "$filename", param_18
    if has_param_19, optparam_47
    new $P20, "Undef"
    set param_19, $P20
  optparam_47:
    .lex "$r", param_19
    if has_param_21, optparam_48
    new $P22, "Undef"
    set param_21, $P22
  optparam_48:
    .lex "$w", param_21
    if has_param_23, optparam_49
    new $P24, "Undef"
    set param_23, $P24
  optparam_49:
    .lex "$a", param_23
    if has_param_25, optparam_50
    new $P26, "Undef"
    set param_25, $P26
  optparam_50:
    .lex "$bin", param_25
.annotate 'line', 74
    new $P27, "Undef"
    .lex "$mode", $P27
.annotate 'line', 75
    new $P28, "Undef"
    .lex "$handle", $P28
.annotate 'line', 74
    find_lex $P31, "$w"
    unless_null $P31, vivify_51
    new $P31, "Undef"
  vivify_51:
    if $P31, if_30
    find_lex $P35, "$a"
    unless_null $P35, vivify_52
    new $P35, "Undef"
  vivify_52:
    if $P35, if_34
    new $P37, "String"
    assign $P37, "r"
    set $P33, $P37
    goto if_34_end
  if_34:
    new $P36, "String"
    assign $P36, "wa"
    set $P33, $P36
  if_34_end:
    set $P29, $P33
    goto if_30_end
  if_30:
    new $P32, "String"
    assign $P32, "w"
    set $P29, $P32
  if_30_end:
    store_lex "$mode", $P29
.annotate 'line', 75
    new $P38, "FileHandle"
    store_lex "$handle", $P38
.annotate 'line', 76
    find_lex $P39, "$handle"
    unless_null $P39, vivify_53
    new $P39, "Undef"
  vivify_53:
    find_lex $P40, "$filename"
    unless_null $P40, vivify_54
    new $P40, "Undef"
  vivify_54:
    find_lex $P41, "$mode"
    unless_null $P41, vivify_55
    new $P41, "Undef"
  vivify_55:
    $P39."open"($P40, $P41)
.annotate 'line', 77
    find_lex $P42, "$handle"
    unless_null $P42, vivify_56
    new $P42, "Undef"
  vivify_56:
    find_lex $P45, "$bin"
    unless_null $P45, vivify_57
    new $P45, "Undef"
  vivify_57:
    if $P45, if_44
    new $P47, "String"
    assign $P47, "utf8"
    set $P43, $P47
    goto if_44_end
  if_44:
    new $P46, "String"
    assign $P46, "binary"
    set $P43, $P46
  if_44_end:
    $P42."encoding"($P43)
    find_lex $P48, "$handle"
    unless_null $P48, vivify_58
    new $P48, "Undef"
  vivify_58:
.annotate 'line', 73
    .return ($P48)
.end


.HLL "nqp"

.namespace []
.sub "close"  :subid("12_1303340925.969") :outer("10_1303340925.969")
    .param pmc param_51
.annotate 'line', 85
    .lex "$handle", param_51
.annotate 'line', 86
    find_lex $P52, "$handle"
    unless_null $P52, vivify_59
    new $P52, "Undef"
  vivify_59:
    $P53 = $P52."close"()
.annotate 'line', 85
    .return ($P53)
.end


.HLL "nqp"

.namespace []
.sub "slurp"  :subid("13_1303340925.969") :outer("10_1303340925.969")
    .param pmc param_56
.annotate 'line', 93
    .lex "$filename", param_56
.annotate 'line', 94
    new $P57, "Undef"
    .lex "$handle", $P57
.annotate 'line', 95
    new $P58, "Undef"
    .lex "$contents", $P58
.annotate 'line', 94
    find_lex $P59, "$filename"
    unless_null $P59, vivify_60
    new $P59, "Undef"
  vivify_60:
    $P60 = "open"($P59, 1 :named("r"))
    store_lex "$handle", $P60
.annotate 'line', 95
    find_lex $P61, "$handle"
    unless_null $P61, vivify_61
    new $P61, "Undef"
  vivify_61:
    $P62 = $P61."readall"()
    store_lex "$contents", $P62
.annotate 'line', 96
    find_lex $P63, "$handle"
    unless_null $P63, vivify_62
    new $P63, "Undef"
  vivify_62:
    $P63."close"()
    find_lex $P64, "$contents"
    unless_null $P64, vivify_63
    new $P64, "Undef"
  vivify_63:
.annotate 'line', 93
    .return ($P64)
.end


.HLL "nqp"

.namespace []
.sub "spew"  :subid("14_1303340925.969") :outer("10_1303340925.969")
    .param pmc param_67
    .param pmc param_68
.annotate 'line', 105
    .lex "$filename", param_67
    .lex "$contents", param_68
.annotate 'line', 106
    new $P69, "Undef"
    .lex "$handle", $P69
    new $P70, "FileHandle"
    store_lex "$handle", $P70
.annotate 'line', 107
    find_lex $P71, "$handle"
    unless_null $P71, vivify_64
    new $P71, "Undef"
  vivify_64:
    find_lex $P72, "$filename"
    unless_null $P72, vivify_65
    new $P72, "Undef"
  vivify_65:
    $P71."open"($P72, "w")
.annotate 'line', 108
    find_lex $P73, "$handle"
    unless_null $P73, vivify_66
    new $P73, "Undef"
  vivify_66:
    find_lex $P74, "$contents"
    unless_null $P74, vivify_67
    new $P74, "Undef"
  vivify_67:
    $P73."print"($P74)
.annotate 'line', 109
    find_lex $P75, "$handle"
    unless_null $P75, vivify_68
    new $P75, "Undef"
  vivify_68:
    $P76 = $P75."close"()
.annotate 'line', 105
    .return ($P76)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "print"  :subid("15_1303340925.969") :outer("10_1303340925.969")
    .param pmc param_79 :slurpy
.annotate 'line', 112
    .const 'Sub' $P85 = "16_1303340925.969" 
    capture_lex $P85
    .lex "@args", param_79
.annotate 'line', 113
    find_lex $P81, "@args"
    unless_null $P81, vivify_69
    $P81 = root_new ['parrot';'ResizablePMCArray']
  vivify_69:
    defined $I82, $P81
    unless $I82, for_undef_70
    iter $P80, $P81
    new $P89, 'ExceptionHandler'
    set_label $P89, loop88_handler
    $P89."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P89
  loop88_test:
    unless $P80, loop88_done
    shift $P83, $P80
  loop88_redo:
    .const 'Sub' $P85 = "16_1303340925.969" 
    capture_lex $P85
    $P85($P83)
  loop88_next:
    goto loop88_test
  loop88_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P90, exception, 'type'
    eq $P90, .CONTROL_LOOP_NEXT, loop88_next
    eq $P90, .CONTROL_LOOP_REDO, loop88_redo
  loop88_done:
    pop_eh 
  for_undef_70:
.annotate 'line', 112
    .return (1)
.end


.HLL "nqp"

.namespace []
.sub "_block84"  :anon :subid("16_1303340925.969") :outer("15_1303340925.969")
    .param pmc param_86
.annotate 'line', 113
    .lex "$_", param_86
.annotate 'line', 114
    find_lex $P87, "$_"
    unless_null $P87, vivify_71
    new $P87, "Undef"
  vivify_71:
    print $P87
.annotate 'line', 113
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "say"  :subid("17_1303340925.969") :outer("10_1303340925.969")
    .param pmc param_93 :slurpy
.annotate 'line', 119
    .lex "@args", param_93
.annotate 'line', 120
    find_lex $P94, "@args"
    unless_null $P94, vivify_72
    $P94 = root_new ['parrot';'ResizablePMCArray']
  vivify_72:
    $P95 = "print"($P94 :flat, "\n")
.annotate 'line', 119
    .return ($P95)
.end


.HLL "nqp"

.namespace []
.sub "match"  :subid("18_1303340925.969") :outer("10_1303340925.969")
    .param pmc param_98
    .param pmc param_99
    .param pmc param_100 :optional :named("global")
    .param int has_param_100 :opt_flag
.annotate 'line', 137
    .const 'Sub' $P110 = "19_1303340925.969" 
    capture_lex $P110
    .lex "$text", param_98
    .lex "$regex", param_99
    if has_param_100, optparam_73
    new $P101, "Undef"
    set param_100, $P101
  optparam_73:
    .lex "$global", param_100
.annotate 'line', 138
    new $P102, "Undef"
    .lex "$match", $P102
    find_lex $P103, "$regex"
    unless_null $P103, vivify_74
    new $P103, "Undef"
  vivify_74:
    find_lex $P104, "$text"
    unless_null $P104, vivify_75
    new $P104, "Undef"
  vivify_75:
    $P105 = $P103."ACCEPTS"($P104)
    store_lex "$match", $P105
.annotate 'line', 139
    find_lex $P108, "$global"
    unless_null $P108, vivify_76
    new $P108, "Undef"
  vivify_76:
    if $P108, if_107
.annotate 'line', 147
    find_lex $P128, "$match"
    unless_null $P128, vivify_77
    new $P128, "Undef"
  vivify_77:
    set $P106, $P128
.annotate 'line', 139
    goto if_107_end
  if_107:
    .const 'Sub' $P110 = "19_1303340925.969" 
    capture_lex $P110
    $P127 = $P110()
    set $P106, $P127
  if_107_end:
.annotate 'line', 137
    .return ($P106)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "_block109"  :anon :subid("19_1303340925.969") :outer("18_1303340925.969")
.annotate 'line', 140
    $P111 = root_new ['parrot';'ResizablePMCArray']
    .lex "@matches", $P111
.annotate 'line', 139
    find_lex $P112, "@matches"
    unless_null $P112, vivify_78
    $P112 = root_new ['parrot';'ResizablePMCArray']
  vivify_78:
.annotate 'line', 141
    new $P124, 'ExceptionHandler'
    set_label $P124, loop123_handler
    $P124."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P124
  loop123_test:
    find_lex $P113, "$match"
    unless_null $P113, vivify_79
    new $P113, "Undef"
  vivify_79:
    unless $P113, loop123_done
  loop123_redo:
.annotate 'line', 142
    find_lex $P114, "@matches"
    unless_null $P114, vivify_80
    $P114 = root_new ['parrot';'ResizablePMCArray']
  vivify_80:
    find_lex $P115, "$match"
    unless_null $P115, vivify_81
    new $P115, "Undef"
  vivify_81:
    $P114."push"($P115)
.annotate 'line', 143
    find_lex $P116, "$match"
    unless_null $P116, vivify_82
    new $P116, "Undef"
  vivify_82:
    $P117 = $P116."CURSOR"()
    find_lex $P118, "$text"
    unless_null $P118, vivify_83
    new $P118, "Undef"
  vivify_83:
    find_lex $P119, "$regex"
    unless_null $P119, vivify_84
    new $P119, "Undef"
  vivify_84:
    find_lex $P120, "$match"
    unless_null $P120, vivify_85
    new $P120, "Undef"
  vivify_85:
    $P121 = $P120."to"()
    $P122 = $P117."parse"($P118, $P119 :named("rule"), $P121 :named("c"))
    store_lex "$match", $P122
  loop123_next:
.annotate 'line', 141
    goto loop123_test
  loop123_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P125, exception, 'type'
    eq $P125, .CONTROL_LOOP_NEXT, loop123_next
    eq $P125, .CONTROL_LOOP_REDO, loop123_redo
  loop123_done:
    pop_eh 
    find_lex $P126, "@matches"
    unless_null $P126, vivify_86
    $P126 = root_new ['parrot';'ResizablePMCArray']
  vivify_86:
.annotate 'line', 139
    .return ($P126)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "subst"  :subid("20_1303340925.969") :outer("10_1303340925.969")
    .param pmc param_131
    .param pmc param_132
    .param pmc param_133
    .param pmc param_134 :optional :named("global")
    .param int has_param_134 :opt_flag
.annotate 'line', 159
    .const 'Sub' $P161 = "21_1303340925.969" 
    capture_lex $P161
    .lex "$text", param_131
    .lex "$regex", param_132
    .lex "$repl", param_133
    if has_param_134, optparam_87
    new $P135, "Undef"
    set param_134, $P135
  optparam_87:
    .lex "$global", param_134
.annotate 'line', 160
    $P136 = root_new ['parrot';'ResizablePMCArray']
    .lex "@matches", $P136
.annotate 'line', 162
    new $P137, "Undef"
    .lex "$is_code", $P137
.annotate 'line', 163
    new $P138, "Undef"
    .lex "$offset", $P138
.annotate 'line', 164
    new $P139, "Undef"
    .lex "$result", $P139
.annotate 'line', 175
    new $P140, "Undef"
    .lex "$chars", $P140
.annotate 'line', 160
    find_lex $P143, "$global"
    unless_null $P143, vivify_88
    new $P143, "Undef"
  vivify_88:
    if $P143, if_142
.annotate 'line', 161
    find_lex $P147, "$regex"
    unless_null $P147, vivify_89
    new $P147, "Undef"
  vivify_89:
    find_lex $P148, "$text"
    unless_null $P148, vivify_90
    new $P148, "Undef"
  vivify_90:
    $P149 = $P147."ACCEPTS"($P148)
    new $P150, "ResizablePMCArray"
    push $P150, $P149
.annotate 'line', 160
    set $P141, $P150
    goto if_142_end
  if_142:
    find_lex $P144, "$text"
    unless_null $P144, vivify_91
    new $P144, "Undef"
  vivify_91:
    find_lex $P145, "$regex"
    unless_null $P145, vivify_92
    new $P145, "Undef"
  vivify_92:
    $P146 = "match"($P144, $P145, 1 :named("global"))
    set $P141, $P146
  if_142_end:
    store_lex "@matches", $P141
.annotate 'line', 162
    find_lex $P151, "$repl"
    unless_null $P151, vivify_93
    new $P151, "Undef"
  vivify_93:
    isa $I152, $P151, "Sub"
    new $P153, 'Integer'
    set $P153, $I152
    store_lex "$is_code", $P153
.annotate 'line', 163
    new $P154, "Integer"
    assign $P154, 0
    store_lex "$offset", $P154
.annotate 'line', 164
    new $P155, "StringBuilder"
    store_lex "$result", $P155
.annotate 'line', 166
    find_lex $P157, "@matches"
    unless_null $P157, vivify_94
    $P157 = root_new ['parrot';'ResizablePMCArray']
  vivify_94:
    defined $I158, $P157
    unless $I158, for_undef_95
    iter $P156, $P157
    new $P194, 'ExceptionHandler'
    set_label $P194, loop193_handler
    $P194."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P194
  loop193_test:
    unless $P156, loop193_done
    shift $P159, $P156
  loop193_redo:
    .const 'Sub' $P161 = "21_1303340925.969" 
    capture_lex $P161
    $P161($P159)
  loop193_next:
    goto loop193_test
  loop193_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P195, exception, 'type'
    eq $P195, .CONTROL_LOOP_NEXT, loop193_next
    eq $P195, .CONTROL_LOOP_REDO, loop193_redo
  loop193_done:
    pop_eh 
  for_undef_95:
.annotate 'line', 175
    find_lex $P196, "$text"
    unless_null $P196, vivify_110
    new $P196, "Undef"
  vivify_110:
    set $S197, $P196
    length $I198, $S197
    new $P199, 'Integer'
    set $P199, $I198
    store_lex "$chars", $P199
.annotate 'line', 177
    find_lex $P201, "$chars"
    unless_null $P201, vivify_111
    new $P201, "Undef"
  vivify_111:
    set $N202, $P201
    find_lex $P203, "$offset"
    unless_null $P203, vivify_112
    new $P203, "Undef"
  vivify_112:
    set $N204, $P203
    isgt $I205, $N202, $N204
    unless $I205, if_200_end
.annotate 'line', 176
    find_lex $P206, "$result"
    unless_null $P206, vivify_113
    new $P206, "Undef"
  vivify_113:
    find_lex $P207, "$text"
    unless_null $P207, vivify_114
    new $P207, "Undef"
  vivify_114:
    set $S208, $P207
    find_lex $P209, "$offset"
    unless_null $P209, vivify_115
    new $P209, "Undef"
  vivify_115:
    set $I210, $P209
    find_lex $P211, "$chars"
    unless_null $P211, vivify_116
    new $P211, "Undef"
  vivify_116:
    set $I212, $P211
    substr $S213, $S208, $I210, $I212
    push $P206, $S213
  if_200_end:
.annotate 'line', 179
    find_lex $P214, "$result"
    unless_null $P214, vivify_117
    new $P214, "Undef"
  vivify_117:
    set $S215, $P214
.annotate 'line', 159
    .return ($S215)
.end


.HLL "nqp"

.namespace []
.sub "_block160"  :anon :subid("21_1303340925.969") :outer("20_1303340925.969")
    .param pmc param_162
.annotate 'line', 166
    .lex "$match", param_162
.annotate 'line', 167
    find_lex $P165, "$match"
    unless_null $P165, vivify_96
    new $P165, "Undef"
  vivify_96:
    if $P165, if_164
    set $P163, $P165
    goto if_164_end
  if_164:
.annotate 'line', 169
    find_lex $P167, "$match"
    unless_null $P167, vivify_97
    new $P167, "Undef"
  vivify_97:
    $N168 = $P167."from"()
    find_lex $P169, "$offset"
    unless_null $P169, vivify_98
    new $P169, "Undef"
  vivify_98:
    set $N170, $P169
    isgt $I171, $N168, $N170
    unless $I171, if_166_end
.annotate 'line', 168
    find_lex $P172, "$result"
    unless_null $P172, vivify_99
    new $P172, "Undef"
  vivify_99:
    find_lex $P173, "$text"
    unless_null $P173, vivify_100
    new $P173, "Undef"
  vivify_100:
    set $S174, $P173
    find_lex $P175, "$offset"
    unless_null $P175, vivify_101
    new $P175, "Undef"
  vivify_101:
    set $I176, $P175
    find_lex $P177, "$match"
    unless_null $P177, vivify_102
    new $P177, "Undef"
  vivify_102:
    $P178 = $P177."from"()
    find_lex $P179, "$offset"
    unless_null $P179, vivify_103
    new $P179, "Undef"
  vivify_103:
    sub $P180, $P178, $P179
    set $I181, $P180
    substr $S182, $S174, $I176, $I181
    push $P172, $S182
  if_166_end:
.annotate 'line', 170
    find_lex $P183, "$result"
    unless_null $P183, vivify_104
    new $P183, "Undef"
  vivify_104:
    find_lex $P186, "$is_code"
    unless_null $P186, vivify_105
    new $P186, "Undef"
  vivify_105:
    if $P186, if_185
    find_lex $P190, "$repl"
    unless_null $P190, vivify_106
    new $P190, "Undef"
  vivify_106:
    set $P184, $P190
    goto if_185_end
  if_185:
    find_lex $P187, "$repl"
    unless_null $P187, vivify_107
    new $P187, "Undef"
  vivify_107:
    find_lex $P188, "$match"
    unless_null $P188, vivify_108
    new $P188, "Undef"
  vivify_108:
    $P189 = $P187($P188)
    set $P184, $P189
  if_185_end:
    push $P183, $P184
.annotate 'line', 171
    find_lex $P191, "$match"
    unless_null $P191, vivify_109
    new $P191, "Undef"
  vivify_109:
    $P192 = $P191."to"()
    store_lex "$offset", $P192
.annotate 'line', 167
    set $P163, $P192
  if_164_end:
.annotate 'line', 166
    .return ($P163)
.end


.HLL "nqp"

.namespace []
.sub "plan"  :subid("22_1303340925.969") :outer("10_1303340925.969")
    .param pmc param_219
.annotate 'line', 187
    .lex "$quantity", param_219
.annotate 'line', 188
    new $P220, 'String'
    set $P220, "1.."
    find_lex $P221, "$quantity"
    unless_null $P221, vivify_118
    new $P221, "Undef"
  vivify_118:
    concat $P222, $P220, $P221
    $P223 = "say"($P222)
.annotate 'line', 187
    .return ($P223)
.end


.HLL "nqp"

.namespace []
.sub "ok"  :subid("23_1303340925.969") :outer("10_1303340925.969")
    .param pmc param_226
    .param pmc param_227 :optional
    .param int has_param_227 :opt_flag
.annotate 'line', 191
    .lex "$condition", param_226
    if has_param_227, optparam_119
    new $P228, "Undef"
    set param_227, $P228
  optparam_119:
    .lex "$desc", param_227
.annotate 'line', 192
    find_lex $P229, "$test_counter"
    unless_null $P229, vivify_120
    new $P229, "Undef"
  vivify_120:
    add $P230, $P229, 1
    store_lex "$test_counter", $P230
.annotate 'line', 194
    find_lex $P232, "$condition"
    unless_null $P232, vivify_121
    new $P232, "Undef"
  vivify_121:
    if $P232, unless_231_end
.annotate 'line', 195
    "print"("not ")
  unless_231_end:
.annotate 'line', 197
    new $P233, 'String'
    set $P233, "ok "
    find_lex $P234, "$test_counter"
    unless_null $P234, vivify_122
    new $P234, "Undef"
  vivify_122:
    concat $P235, $P233, $P234
    "print"($P235)
.annotate 'line', 198
    find_lex $P237, "$desc"
    unless_null $P237, vivify_123
    new $P237, "Undef"
  vivify_123:
    unless $P237, if_236_end
.annotate 'line', 199
    new $P238, 'String'
    set $P238, " - "
    find_lex $P239, "$desc"
    unless_null $P239, vivify_124
    new $P239, "Undef"
  vivify_124:
    concat $P240, $P238, $P239
    "print"($P240)
  if_236_end:
.annotate 'line', 201
    "print"("\n")
.annotate 'line', 203
    find_lex $P243, "$condition"
    unless_null $P243, vivify_125
    new $P243, "Undef"
  vivify_125:
    if $P243, if_242
    new $P245, "Integer"
    assign $P245, 0
    set $P241, $P245
    goto if_242_end
  if_242:
    new $P244, "Integer"
    assign $P244, 1
    set $P241, $P244
  if_242_end:
.annotate 'line', 191
    .return ($P241)
.end


.HLL "nqp"

.namespace []
.sub "skip"  :subid("24_1303340925.969") :outer("10_1303340925.969")
    .param pmc param_248
.annotate 'line', 206
    .lex "$desc", param_248
.annotate 'line', 207
    find_lex $P249, "$test_counter"
    unless_null $P249, vivify_126
    new $P249, "Undef"
  vivify_126:
    add $P250, $P249, 1
    store_lex "$test_counter", $P250
.annotate 'line', 208
    new $P251, 'String'
    set $P251, "ok "
    find_lex $P252, "$test_counter"
    unless_null $P252, vivify_127
    new $P252, "Undef"
  vivify_127:
    concat $P253, $P251, $P252
    concat $P254, $P253, " # SKIP "
    find_lex $P255, "$desc"
    unless_null $P255, vivify_128
    new $P255, "Undef"
  vivify_128:
    concat $P256, $P254, $P255
    concat $P257, $P256, "\n"
    $P258 = "say"($P257)
.annotate 'line', 206
    .return ($P258)
.end


.HLL "nqp"

.namespace []
.sub "_block260"  :anon :subid("25_1303340925.969") :outer("10_1303340925.969")
.annotate 'line', 7
    .const 'Sub' $P265 = "26_1303340925.969" 
    capture_lex $P265
    .lex "$?PACKAGE", $P262
    .lex "$?CLASS", $P263
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post129") :outer("25_1303340925.969")
.annotate 'line', 7
    .const 'Sub' $P261 = "25_1303340925.969" 
    .local pmc block
    set block, $P261
    .const 'Sub' $P265 = "26_1303340925.969" 
    capture_lex $P265
    $P265()
.end


.HLL "nqp"

.namespace []
.sub "_block264"  :anon :subid("26_1303340925.969") :outer("25_1303340925.969")
.annotate 'line', 7
    nqp_get_sc_object $P266, "1303340925.343", 1
    .local pmc type_obj
    set type_obj, $P266
    get_how $P267, type_obj
    $P268 = $P267."compose"(type_obj)
    .return ($P268)
.end


.HLL "nqp"

.namespace []
.sub "_block269"  :anon :subid("27_1303340925.969") :outer("10_1303340925.969")
.annotate 'line', 9
    .const 'Sub' $P274 = "28_1303340925.969" 
    capture_lex $P274
    .lex "$?PACKAGE", $P271
    .lex "$?CLASS", $P272
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post130") :outer("27_1303340925.969")
.annotate 'line', 9
    .const 'Sub' $P270 = "27_1303340925.969" 
    .local pmc block
    set block, $P270
    .const 'Sub' $P274 = "28_1303340925.969" 
    capture_lex $P274
    $P274()
.end


.HLL "nqp"

.namespace []
.sub "_block273"  :anon :subid("28_1303340925.969") :outer("27_1303340925.969")
.annotate 'line', 9
    nqp_get_sc_object $P275, "1303340925.343", 2
    .local pmc type_obj
    set type_obj, $P275
    get_how $P276, type_obj
    $P277 = $P276."compose"(type_obj)
    .return ($P277)
.end


.HLL "nqp"

.namespace []
.sub "_block278"  :anon :subid("29_1303340925.969") :outer("10_1303340925.969")
.annotate 'line', 11
    .const 'Sub' $P283 = "30_1303340925.969" 
    capture_lex $P283
    .lex "$?PACKAGE", $P280
    .lex "$?CLASS", $P281
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post131") :outer("29_1303340925.969")
.annotate 'line', 11
    .const 'Sub' $P279 = "29_1303340925.969" 
    .local pmc block
    set block, $P279
    .const 'Sub' $P283 = "30_1303340925.969" 
    capture_lex $P283
    $P283()
.end


.HLL "nqp"

.namespace []
.sub "_block282"  :anon :subid("30_1303340925.969") :outer("29_1303340925.969")
.annotate 'line', 11
    nqp_get_sc_object $P284, "1303340925.343", 3
    .local pmc type_obj
    set type_obj, $P284
    get_how $P285, type_obj
    $P286 = $P285."compose"(type_obj)
    .return ($P286)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "_block287"  :subid("31_1303340925.969") :outer("10_1303340925.969")
.annotate 'line', 14
    .const 'Sub' $P410 = "44_1303340925.969" 
    capture_lex $P410
    .const 'Sub' $P400 = "43_1303340925.969" 
    capture_lex $P400
    .const 'Sub' $P388 = "42_1303340925.969" 
    capture_lex $P388
    .const 'Sub' $P384 = "41_1303340925.969" 
    capture_lex $P384
    .const 'Sub' $P373 = "40_1303340925.969" 
    capture_lex $P373
    .const 'Sub' $P370 = "39_1303340925.969" 
    capture_lex $P370
    .const 'Sub' $P364 = "38_1303340925.969" 
    capture_lex $P364
    .const 'Sub' $P326 = "36_1303340925.969" 
    capture_lex $P326
    .const 'Sub' $P305 = "34_1303340925.969" 
    capture_lex $P305
    .const 'Sub' $P295 = "33_1303340925.969" 
    capture_lex $P295
    .const 'Sub' $P291 = "32_1303340925.969" 
    capture_lex $P291
    .lex "$?PACKAGE", $P289
    .lex "$?CLASS", $P290
.annotate 'line', 56
    .const 'Sub' $P400 = "43_1303340925.969" 
    newclosure $P408, $P400
.annotate 'line', 14
    .return ($P408)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "" :load :init :subid("post132") :outer("31_1303340925.969")
.annotate 'line', 14
    get_hll_global $P288, ["NQPMu"], "_block287" 
    .local pmc block
    set block, $P288
    .const 'Sub' $P410 = "44_1303340925.969" 
    capture_lex $P410
    $P410()
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "_block409"  :anon :subid("44_1303340925.969") :outer("31_1303340925.969")
.annotate 'line', 14
    .const 'Sub' $P426 = "39_1303340925.969" 
    capture_lex $P426
    nqp_get_sc_object $P411, "1303340925.343", 4
    .local pmc type_obj
    set type_obj, $P411
    get_how $P412, type_obj
    .const 'Sub' $P413 = "32_1303340925.969" 
    $P412."add_method"(type_obj, "CREATE", $P413)
    get_how $P414, type_obj
    .const 'Sub' $P415 = "33_1303340925.969" 
    $P414."add_method"(type_obj, "bless", $P415)
    get_how $P416, type_obj
    .const 'Sub' $P417 = "34_1303340925.969" 
    $P416."add_method"(type_obj, "BUILDALL", $P417)
    get_how $P418, type_obj
    .const 'Sub' $P419 = "36_1303340925.969" 
    $P418."add_method"(type_obj, "BUILD_MAGIC", $P419)
    get_how $P420, type_obj
    .const 'Sub' $P421 = "38_1303340925.969" 
    $P420."add_method"(type_obj, "new", $P421)
    get_how $P422, type_obj
    .const 'Sub' $P423 = "39_1303340925.969" 
    new $P424, "ResizablePMCArray"
    set_dispatchees $P423, $P424
    $P422."add_method"(type_obj, "Str", $P423)
    get_how $P425, type_obj
    .const 'Sub' $P426 = "39_1303340925.969" 
    newclosure $P429, $P426
    $P425."add_parrot_vtable_mapping"(type_obj, "get_string", $P429)
    get_how $P430, type_obj
    .const 'Sub' $P431 = "40_1303340925.969" 
    $P430."add_multi_method"(type_obj, "Str", $P431)
    get_how $P432, type_obj
    .const 'Sub' $P433 = "41_1303340925.969" 
    new $P434, "ResizablePMCArray"
    set_dispatchees $P433, $P434
    $P432."add_method"(type_obj, "ACCEPTS", $P433)
    get_how $P435, type_obj
    .const 'Sub' $P436 = "42_1303340925.969" 
    $P435."add_multi_method"(type_obj, "ACCEPTS", $P436)
    get_how $P437, type_obj
    .const 'Sub' $P438 = "43_1303340925.969" 
    $P437."add_method"(type_obj, "isa", $P438)
    get_how $P439, type_obj
    $P440 = $P439."compose"(type_obj)
    .return ($P440)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "Str" :instanceof("DispatcherSub") :subid("39_1303340925.969") :outer("44_1303340925.969")
    .param pmc param_427
.annotate 'line', 14
    .lex "self", param_427
    multi_dispatch_over_lexical_candidates $P428
    .return ($P428)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "CREATE"  :subid("32_1303340925.969") :outer("31_1303340925.969")
    .param pmc param_292
.annotate 'line', 15
    .lex "self", param_292
.annotate 'line', 16
    find_lex $P293, "self"
    repr_instance_of $P294, $P293
.annotate 'line', 15
    .return ($P294)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "bless"  :subid("33_1303340925.969") :outer("31_1303340925.969")
    .param pmc param_296
    .param pmc param_298 :slurpy :named
.annotate 'line', 20
    .lex "$self", param_296
    find_lex $P297, "$self"
    .lex "self", $P297
    .lex "%attributes", param_298
.annotate 'line', 21
    new $P299, "Undef"
    .lex "$instance", $P299
    find_lex $P300, "self"
    $P301 = $P300."CREATE"()
    store_lex "$instance", $P301
.annotate 'line', 22
    find_lex $P302, "$instance"
    unless_null $P302, vivify_133
    new $P302, "Undef"
  vivify_133:
    find_lex $P303, "%attributes"
    unless_null $P303, vivify_134
    $P303 = root_new ['parrot';'Hash']
  vivify_134:
    $P302."BUILDALL"($P303 :flat)
    find_lex $P304, "$instance"
    unless_null $P304, vivify_135
    new $P304, "Undef"
  vivify_135:
.annotate 'line', 20
    .return ($P304)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.include "except_types.pasm"
.sub "BUILDALL"  :subid("34_1303340925.969") :outer("31_1303340925.969")
    .param pmc param_306
    .param pmc param_308 :slurpy :named
.annotate 'line', 26
    .const 'Sub' $P317 = "35_1303340925.969" 
    capture_lex $P317
    .lex "$self", param_306
    find_lex $P307, "$self"
    .lex "self", $P307
    .lex "%attributes", param_308
.annotate 'line', 27
    find_lex $P310, "$self"
    unless_null $P310, vivify_136
    new $P310, "Undef"
  vivify_136:
    get_how $P311, $P310
    find_lex $P312, "$self"
    unless_null $P312, vivify_137
    new $P312, "Undef"
  vivify_137:
    $P313 = $P311."parents"($P312)
    defined $I314, $P313
    unless $I314, for_undef_138
    iter $P309, $P313
    new $P324, 'ExceptionHandler'
    set_label $P324, loop323_handler
    $P324."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P324
  loop323_test:
    unless $P309, loop323_done
    shift $P315, $P309
  loop323_redo:
    .const 'Sub' $P317 = "35_1303340925.969" 
    capture_lex $P317
    $P317($P315)
  loop323_next:
    goto loop323_test
  loop323_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P325, exception, 'type'
    eq $P325, .CONTROL_LOOP_NEXT, loop323_next
    eq $P325, .CONTROL_LOOP_REDO, loop323_redo
  loop323_done:
    pop_eh 
  for_undef_138:
.annotate 'line', 26
    .return ($P309)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "_block316"  :anon :subid("35_1303340925.969") :outer("34_1303340925.969")
    .param pmc param_318
.annotate 'line', 27
    .lex "$class", param_318
.annotate 'line', 28
    find_lex $P319, "$self"
    unless_null $P319, vivify_139
    new $P319, "Undef"
  vivify_139:
    find_lex $P320, "$class"
    unless_null $P320, vivify_140
    new $P320, "Undef"
  vivify_140:
    find_lex $P321, "%attributes"
    unless_null $P321, vivify_141
    $P321 = root_new ['parrot';'Hash']
  vivify_141:
    $P322 = $P319."BUILD_MAGIC"($P320, $P321 :flat)
.annotate 'line', 27
    .return ($P322)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.include "except_types.pasm"
.sub "BUILD_MAGIC"  :subid("36_1303340925.969") :outer("31_1303340925.969")
    .param pmc param_327
    .param pmc param_329
    .param pmc param_330 :slurpy :named
.annotate 'line', 32
    .const 'Sub' $P339 = "37_1303340925.969" 
    capture_lex $P339
    .lex "$self", param_327
    find_lex $P328, "$self"
    .lex "self", $P328
    .lex "$type", param_329
    .lex "%attributes", param_330
.annotate 'line', 33
    find_lex $P332, "$type"
    unless_null $P332, vivify_142
    new $P332, "Undef"
  vivify_142:
    get_how $P333, $P332
    find_lex $P334, "$type"
    unless_null $P334, vivify_143
    new $P334, "Undef"
  vivify_143:
    $P335 = $P333."attributes"($P334, 1 :named("local"))
    defined $I336, $P335
    unless $I336, for_undef_144
    iter $P331, $P335
    new $P362, 'ExceptionHandler'
    set_label $P362, loop361_handler
    $P362."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P362
  loop361_test:
    unless $P331, loop361_done
    shift $P337, $P331
  loop361_redo:
    .const 'Sub' $P339 = "37_1303340925.969" 
    capture_lex $P339
    $P339($P337)
  loop361_next:
    goto loop361_test
  loop361_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P363, exception, 'type'
    eq $P363, .CONTROL_LOOP_NEXT, loop361_next
    eq $P363, .CONTROL_LOOP_REDO, loop361_redo
  loop361_done:
    pop_eh 
  for_undef_144:
.annotate 'line', 32
    .return ($P331)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "_block338"  :anon :subid("37_1303340925.969") :outer("36_1303340925.969")
    .param pmc param_342
.annotate 'line', 34
    new $P340, "Undef"
    .lex "$name", $P340
.annotate 'line', 35
    new $P341, "Undef"
    .lex "$shortname", $P341
    .lex "$_", param_342
.annotate 'line', 34
    find_lex $P343, "$_"
    unless_null $P343, vivify_145
    new $P343, "Undef"
  vivify_145:
    $P344 = $P343."name"()
    store_lex "$name", $P344
.annotate 'line', 35
    find_lex $P345, "$name"
    unless_null $P345, vivify_146
    new $P345, "Undef"
  vivify_146:
    set $S346, $P345
    substr $S347, $S346, 2
    new $P348, 'String'
    set $P348, $S347
    store_lex "$shortname", $P348
.annotate 'line', 36
    find_lex $P352, "$shortname"
    unless_null $P352, vivify_147
    new $P352, "Undef"
  vivify_147:
    find_lex $P351, "%attributes"
    unless_null $P351, vivify_148
    $P351 = root_new ['parrot';'Hash']
  vivify_148:
    exists $I353, $P351[$P352]
    if $I353, if_350
    new $P349, 'Integer'
    set $P349, $I353
    goto if_350_end
  if_350:
.annotate 'line', 37
    find_lex $P354, "$self"
    unless_null $P354, vivify_149
    new $P354, "Undef"
  vivify_149:
    find_lex $P355, "$type"
    unless_null $P355, vivify_150
    new $P355, "Undef"
  vivify_150:
    find_lex $P356, "$name"
    unless_null $P356, vivify_151
    new $P356, "Undef"
  vivify_151:
    set $S357, $P356
    find_lex $P358, "$shortname"
    unless_null $P358, vivify_152
    new $P358, "Undef"
  vivify_152:
    find_lex $P359, "%attributes"
    unless_null $P359, vivify_153
    $P359 = root_new ['parrot';'Hash']
  vivify_153:
    set $P360, $P359[$P358]
    unless_null $P360, vivify_154
    new $P360, "Undef"
  vivify_154:
    setattribute $P354, $P355, $S357, $P360
  if_350_end:
.annotate 'line', 33
    .return ($P349)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "new"  :subid("38_1303340925.969") :outer("31_1303340925.969")
    .param pmc param_365
    .param pmc param_366 :slurpy :named
.annotate 'line', 42
    .lex "self", param_365
    .lex "%attributes", param_366
.annotate 'line', 43
    find_lex $P367, "self"
    find_lex $P368, "%attributes"
    unless_null $P368, vivify_155
    $P368 = root_new ['parrot';'Hash']
  vivify_155:
    $P369 = $P367."bless"($P368 :flat)
.annotate 'line', 42
    .return ($P369)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "Str" :instanceof("DispatcherSub") :subid("39_1303340925.969") :outer("31_1303340925.969")
    .param pmc param_371
.annotate 'line', 42
    .lex "self", param_371
    multi_dispatch_over_lexical_candidates $P372
    .return ($P372)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "Str"  :subid("40_1303340925.969") :outer("31_1303340925.969")
    .param pmc param_374
.annotate 'line', 47
    .lex "$self", param_374
    find_lex $P375, "$self"
    .lex "self", $P375
.annotate 'line', 48
    find_lex $P376, "self"
    get_how $P377, $P376
    find_lex $P378, "self"
    $P379 = $P377."name"($P378)
    concat $P380, $P379, "()"
.annotate 'line', 47
    .return ($P380)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "" :load :init :subid("post156") :outer("40_1303340925.969")
.annotate 'line', 47
    .const 'Sub' $P373 = "40_1303340925.969" 
    .local pmc block
    set block, $P373
    get_hll_global $P381, "Mu"
    new $P382, "ResizablePMCArray"
    push $P382, $P381
    new $P383, "ResizablePMCArray"
    push $P383, 2
    set_sub_multisig block, $P382, $P383
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "ACCEPTS" :instanceof("DispatcherSub") :subid("41_1303340925.969") :outer("31_1303340925.969")
    .param pmc param_385
    .param pmc param_386
.annotate 'line', 47
    .lex "self", param_385
.annotate 'line', 51
    .lex "$topic", param_386
.annotate 'line', 47
    multi_dispatch_over_lexical_candidates $P387
    .return ($P387)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "ACCEPTS"  :subid("42_1303340925.969") :outer("31_1303340925.969")
    .param pmc param_389
    .param pmc param_391
.annotate 'line', 52
    .lex "$self", param_389
    find_lex $P390, "$self"
    .lex "self", $P390
    .lex "$topic", param_391
.annotate 'line', 53
    find_lex $P392, "$topic"
    unless_null $P392, vivify_158
    new $P392, "Undef"
  vivify_158:
    find_lex $P393, "self"
    get_what $P394, $P393
    type_check $I395, $P392, $P394
.annotate 'line', 52
    .return ($I395)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "" :load :init :subid("post157") :outer("42_1303340925.969")
.annotate 'line', 52
    .const 'Sub' $P388 = "42_1303340925.969" 
    .local pmc block
    set block, $P388
    get_hll_global $P396, "NQPMu"
    null $P397
    new $P398, "ResizablePMCArray"
    push $P398, $P396
    push $P398, $P397
    new $P399, "ResizablePMCArray"
    push $P399, 2
    push $P399, 0
    set_sub_multisig block, $P398, $P399
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "isa"  :subid("43_1303340925.969") :outer("31_1303340925.969")
    .param pmc param_401
    .param pmc param_402
.annotate 'line', 56
    .lex "self", param_401
    .lex "$type", param_402
.annotate 'line', 57
    find_lex $P403, "self"
    get_how $P404, $P403
    find_lex $P405, "self"
    find_lex $P406, "$type"
    unless_null $P406, vivify_159
    new $P406, "Undef"
  vivify_159:
    $P407 = $P404."isa"($P405, $P406)
.annotate 'line', 56
    .return ($P407)
.end


.HLL "nqp"

.namespace []
.sub "_block454" :load :anon :subid("45_1303340925.969")
.annotate 'line', 1
    .const 'Sub' $P456 = "10_1303340925.969" 
    $P457 = $P456()
    .return ($P457)
.end

