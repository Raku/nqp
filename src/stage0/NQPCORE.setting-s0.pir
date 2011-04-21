
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1303391582.169")
.annotate 'line', 0
    get_hll_global $P289, ["NQPMu"], "_block288" 
    capture_lex $P289
    .const 'Sub' $P280 = "29_1303391582.169" 
    capture_lex $P280
    .const 'Sub' $P271 = "27_1303391582.169" 
    capture_lex $P271
    .const 'Sub' $P262 = "25_1303391582.169" 
    capture_lex $P262
    .const 'Sub' $P248 = "24_1303391582.169" 
    capture_lex $P248
    .const 'Sub' $P226 = "23_1303391582.169" 
    capture_lex $P226
    .const 'Sub' $P219 = "22_1303391582.169" 
    capture_lex $P219
    .const 'Sub' $P131 = "20_1303391582.169" 
    capture_lex $P131
    .const 'Sub' $P98 = "18_1303391582.169" 
    capture_lex $P98
    .const 'Sub' $P93 = "17_1303391582.169" 
    capture_lex $P93
    .const 'Sub' $P79 = "15_1303391582.169" 
    capture_lex $P79
    .const 'Sub' $P67 = "14_1303391582.169" 
    capture_lex $P67
    .const 'Sub' $P56 = "13_1303391582.169" 
    capture_lex $P56
    .const 'Sub' $P51 = "12_1303391582.169" 
    capture_lex $P51
    .const 'Sub' $P18 = "11_1303391582.169" 
    capture_lex $P18
.annotate 'line', 1
    .lex "GLOBALish", $P13
    .lex "$?PACKAGE", $P14
    .lex "int", $P15
    .lex "num", $P16
    .lex "str", $P17
.annotate 'line', 73
    .const 'Sub' $P18 = "11_1303391582.169" 
    newclosure $P50, $P18
    .lex "open", $P50
.annotate 'line', 85
    .const 'Sub' $P51 = "12_1303391582.169" 
    newclosure $P55, $P51
    .lex "close", $P55
.annotate 'line', 93
    .const 'Sub' $P56 = "13_1303391582.169" 
    newclosure $P66, $P56
    .lex "slurp", $P66
.annotate 'line', 105
    .const 'Sub' $P67 = "14_1303391582.169" 
    newclosure $P78, $P67
    .lex "spew", $P78
.annotate 'line', 112
    .const 'Sub' $P79 = "15_1303391582.169" 
    newclosure $P92, $P79
    .lex "print", $P92
.annotate 'line', 119
    .const 'Sub' $P93 = "17_1303391582.169" 
    newclosure $P97, $P93
    .lex "say", $P97
.annotate 'line', 137
    .const 'Sub' $P98 = "18_1303391582.169" 
    newclosure $P130, $P98
    .lex "match", $P130
.annotate 'line', 159
    .const 'Sub' $P131 = "20_1303391582.169" 
    newclosure $P217, $P131
    .lex "subst", $P217
.annotate 'line', 185
    new $P218, "Undef"
    .lex "$test_counter", $P218
.annotate 'line', 187
    .const 'Sub' $P219 = "22_1303391582.169" 
    newclosure $P225, $P219
    .lex "plan", $P225
.annotate 'line', 191
    .const 'Sub' $P226 = "23_1303391582.169" 
    newclosure $P247, $P226
    .lex "ok", $P247
.annotate 'line', 206
    .const 'Sub' $P248 = "24_1303391582.169" 
    newclosure $P260, $P248
    .lex "skip", $P260
.annotate 'line', 7
    .const 'Sub' $P262 = "25_1303391582.169" 
    capture_lex $P262
    $P262()
.annotate 'line', 9
    .const 'Sub' $P271 = "27_1303391582.169" 
    capture_lex $P271
    $P271()
.annotate 'line', 11
    .const 'Sub' $P280 = "29_1303391582.169" 
    capture_lex $P280
    $P280()
.annotate 'line', 14
    get_hll_global $P289, ["NQPMu"], "_block288" 
    capture_lex $P289
    $P289()
    find_lex $P442, "open"
    find_lex $P443, "close"
    find_lex $P444, "slurp"
    find_lex $P445, "spew"
    find_lex $P446, "print"
    find_lex $P447, "say"
    find_lex $P448, "match"
    find_lex $P449, "subst"
.annotate 'line', 185
    new $P450, "Integer"
    assign $P450, 0
    store_lex "$test_counter", $P450
    find_lex $P451, "plan"
    find_lex $P452, "ok"
    find_lex $P453, "skip"
    new $P454, "Integer"
    assign $P454, 1
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 1
    .return ()
    .const 'Sub' $P456 = "45_1303391582.169" 
    .return ($P456)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post46") :outer("10_1303391582.169")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1303391582.169" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P460, "1303391581.542"
    isnull $I461, $P460
    if $I461, if_459
    .const 'Sub' $P545 = "10_1303391582.169" 
    $P546 = $P545."get_lexinfo"()
    nqp_get_sc_object $P547, "1303391581.542", 0
    $P546."set_static_lexpad_value"("GLOBALish", $P547)
    .const 'Sub' $P548 = "10_1303391582.169" 
    $P549 = $P548."get_lexinfo"()
    $P549."finish_static_lexpad"()
    .const 'Sub' $P550 = "10_1303391582.169" 
    $P551 = $P550."get_lexinfo"()
    nqp_get_sc_object $P552, "1303391581.542", 0
    $P551."set_static_lexpad_value"("$?PACKAGE", $P552)
    .const 'Sub' $P553 = "10_1303391582.169" 
    $P554 = $P553."get_lexinfo"()
    $P554."finish_static_lexpad"()
    .const 'Sub' $P555 = "10_1303391582.169" 
    $P556 = $P555."get_lexinfo"()
    nqp_get_sc_object $P557, "1303391581.542", 1
    $P556."set_static_lexpad_value"("int", $P557)
    .const 'Sub' $P558 = "10_1303391582.169" 
    $P559 = $P558."get_lexinfo"()
    $P559."finish_static_lexpad"()
    .const 'Sub' $P560 = "25_1303391582.169" 
    $P561 = $P560."get_lexinfo"()
    nqp_get_sc_object $P562, "1303391581.542", 1
    $P561."set_static_lexpad_value"("$?PACKAGE", $P562)
    .const 'Sub' $P563 = "25_1303391582.169" 
    $P564 = $P563."get_lexinfo"()
    $P564."finish_static_lexpad"()
    .const 'Sub' $P565 = "25_1303391582.169" 
    $P566 = $P565."get_lexinfo"()
    nqp_get_sc_object $P567, "1303391581.542", 1
    $P566."set_static_lexpad_value"("$?CLASS", $P567)
    .const 'Sub' $P568 = "25_1303391582.169" 
    $P569 = $P568."get_lexinfo"()
    $P569."finish_static_lexpad"()
    .const 'Sub' $P570 = "10_1303391582.169" 
    $P571 = $P570."get_lexinfo"()
    nqp_get_sc_object $P572, "1303391581.542", 2
    $P571."set_static_lexpad_value"("num", $P572)
    .const 'Sub' $P573 = "10_1303391582.169" 
    $P574 = $P573."get_lexinfo"()
    $P574."finish_static_lexpad"()
    .const 'Sub' $P575 = "27_1303391582.169" 
    $P576 = $P575."get_lexinfo"()
    nqp_get_sc_object $P577, "1303391581.542", 2
    $P576."set_static_lexpad_value"("$?PACKAGE", $P577)
    .const 'Sub' $P578 = "27_1303391582.169" 
    $P579 = $P578."get_lexinfo"()
    $P579."finish_static_lexpad"()
    .const 'Sub' $P580 = "27_1303391582.169" 
    $P581 = $P580."get_lexinfo"()
    nqp_get_sc_object $P582, "1303391581.542", 2
    $P581."set_static_lexpad_value"("$?CLASS", $P582)
    .const 'Sub' $P583 = "27_1303391582.169" 
    $P584 = $P583."get_lexinfo"()
    $P584."finish_static_lexpad"()
    .const 'Sub' $P585 = "10_1303391582.169" 
    $P586 = $P585."get_lexinfo"()
    nqp_get_sc_object $P587, "1303391581.542", 3
    $P586."set_static_lexpad_value"("str", $P587)
    .const 'Sub' $P588 = "10_1303391582.169" 
    $P589 = $P588."get_lexinfo"()
    $P589."finish_static_lexpad"()
    .const 'Sub' $P590 = "29_1303391582.169" 
    $P591 = $P590."get_lexinfo"()
    nqp_get_sc_object $P592, "1303391581.542", 3
    $P591."set_static_lexpad_value"("$?PACKAGE", $P592)
    .const 'Sub' $P593 = "29_1303391582.169" 
    $P594 = $P593."get_lexinfo"()
    $P594."finish_static_lexpad"()
    .const 'Sub' $P595 = "29_1303391582.169" 
    $P596 = $P595."get_lexinfo"()
    nqp_get_sc_object $P597, "1303391581.542", 3
    $P596."set_static_lexpad_value"("$?CLASS", $P597)
    .const 'Sub' $P598 = "29_1303391582.169" 
    $P599 = $P598."get_lexinfo"()
    $P599."finish_static_lexpad"()
    nqp_get_sc_object $P600, "1303391581.542", 4
    set_hll_global "NQPMu", $P600
    .const 'Sub' $P601 = "31_1303391582.169" 
    $P602 = $P601."get_lexinfo"()
    nqp_get_sc_object $P603, "1303391581.542", 4
    $P602."set_static_lexpad_value"("$?PACKAGE", $P603)
    .const 'Sub' $P604 = "31_1303391582.169" 
    $P605 = $P604."get_lexinfo"()
    $P605."finish_static_lexpad"()
    .const 'Sub' $P606 = "31_1303391582.169" 
    $P607 = $P606."get_lexinfo"()
    nqp_get_sc_object $P608, "1303391581.542", 4
    $P607."set_static_lexpad_value"("$?CLASS", $P608)
    .const 'Sub' $P609 = "31_1303391582.169" 
    $P610 = $P609."get_lexinfo"()
    $P610."finish_static_lexpad"()
    goto if_459_end
  if_459:
    nqp_dynop_setup 
    getinterp $P462
    get_class $P463, "LexPad"
    get_class $P464, "NQPLexPad"
    $P462."hll_map"($P463, $P464)
    load_bytecode "nqpmo.pbc"
    nqp_create_sc $P465, "1303391581.542"
    .local pmc cur_sc
    set cur_sc, $P465
    get_hll_global $P466, "KnowHOW"
    $P467 = $P466."new_type"("GLOBALish" :named("name"))
    nqp_set_sc_for_object $P467, cur_sc
    nqp_set_sc_object "1303391581.542", 0, $P467
    .const 'Sub' $P468 = "10_1303391582.169" 
    $P469 = $P468."get_lexinfo"()
    nqp_get_sc_object $P470, "1303391581.542", 0
    $P469."set_static_lexpad_value"("GLOBALish", $P470)
    .const 'Sub' $P471 = "10_1303391582.169" 
    $P472 = $P471."get_lexinfo"()
    $P472."finish_static_lexpad"()
    .const 'Sub' $P473 = "10_1303391582.169" 
    $P474 = $P473."get_lexinfo"()
    nqp_get_sc_object $P475, "1303391581.542", 0
    $P474."set_static_lexpad_value"("$?PACKAGE", $P475)
    .const 'Sub' $P476 = "10_1303391582.169" 
    $P477 = $P476."get_lexinfo"()
    $P477."finish_static_lexpad"()
    get_hll_global $P478, "NQPNativeHOW"
    $P479 = $P478."new_type"("int" :named("name"), "P6int" :named("repr"))
    nqp_set_sc_for_object $P479, cur_sc
    nqp_set_sc_object "1303391581.542", 1, $P479
    .const 'Sub' $P480 = "10_1303391582.169" 
    $P481 = $P480."get_lexinfo"()
    nqp_get_sc_object $P482, "1303391581.542", 1
    $P481."set_static_lexpad_value"("int", $P482)
    .const 'Sub' $P483 = "10_1303391582.169" 
    $P484 = $P483."get_lexinfo"()
    $P484."finish_static_lexpad"()
    .const 'Sub' $P485 = "25_1303391582.169" 
    $P486 = $P485."get_lexinfo"()
    nqp_get_sc_object $P487, "1303391581.542", 1
    $P486."set_static_lexpad_value"("$?PACKAGE", $P487)
    .const 'Sub' $P488 = "25_1303391582.169" 
    $P489 = $P488."get_lexinfo"()
    $P489."finish_static_lexpad"()
    .const 'Sub' $P490 = "25_1303391582.169" 
    $P491 = $P490."get_lexinfo"()
    nqp_get_sc_object $P492, "1303391581.542", 1
    $P491."set_static_lexpad_value"("$?CLASS", $P492)
    .const 'Sub' $P493 = "25_1303391582.169" 
    $P494 = $P493."get_lexinfo"()
    $P494."finish_static_lexpad"()
    get_hll_global $P495, "NQPNativeHOW"
    $P496 = $P495."new_type"("num" :named("name"), "P6num" :named("repr"))
    nqp_set_sc_for_object $P496, cur_sc
    nqp_set_sc_object "1303391581.542", 2, $P496
    .const 'Sub' $P497 = "10_1303391582.169" 
    $P498 = $P497."get_lexinfo"()
    nqp_get_sc_object $P499, "1303391581.542", 2
    $P498."set_static_lexpad_value"("num", $P499)
    .const 'Sub' $P500 = "10_1303391582.169" 
    $P501 = $P500."get_lexinfo"()
    $P501."finish_static_lexpad"()
    .const 'Sub' $P502 = "27_1303391582.169" 
    $P503 = $P502."get_lexinfo"()
    nqp_get_sc_object $P504, "1303391581.542", 2
    $P503."set_static_lexpad_value"("$?PACKAGE", $P504)
    .const 'Sub' $P505 = "27_1303391582.169" 
    $P506 = $P505."get_lexinfo"()
    $P506."finish_static_lexpad"()
    .const 'Sub' $P507 = "27_1303391582.169" 
    $P508 = $P507."get_lexinfo"()
    nqp_get_sc_object $P509, "1303391581.542", 2
    $P508."set_static_lexpad_value"("$?CLASS", $P509)
    .const 'Sub' $P510 = "27_1303391582.169" 
    $P511 = $P510."get_lexinfo"()
    $P511."finish_static_lexpad"()
    get_hll_global $P512, "NQPNativeHOW"
    $P513 = $P512."new_type"("str" :named("name"), "P6str" :named("repr"))
    nqp_set_sc_for_object $P513, cur_sc
    nqp_set_sc_object "1303391581.542", 3, $P513
    .const 'Sub' $P514 = "10_1303391582.169" 
    $P515 = $P514."get_lexinfo"()
    nqp_get_sc_object $P516, "1303391581.542", 3
    $P515."set_static_lexpad_value"("str", $P516)
    .const 'Sub' $P517 = "10_1303391582.169" 
    $P518 = $P517."get_lexinfo"()
    $P518."finish_static_lexpad"()
    .const 'Sub' $P519 = "29_1303391582.169" 
    $P520 = $P519."get_lexinfo"()
    nqp_get_sc_object $P521, "1303391581.542", 3
    $P520."set_static_lexpad_value"("$?PACKAGE", $P521)
    .const 'Sub' $P522 = "29_1303391582.169" 
    $P523 = $P522."get_lexinfo"()
    $P523."finish_static_lexpad"()
    .const 'Sub' $P524 = "29_1303391582.169" 
    $P525 = $P524."get_lexinfo"()
    nqp_get_sc_object $P526, "1303391581.542", 3
    $P525."set_static_lexpad_value"("$?CLASS", $P526)
    .const 'Sub' $P527 = "29_1303391582.169" 
    $P528 = $P527."get_lexinfo"()
    $P528."finish_static_lexpad"()
    get_hll_global $P529, "NQPClassHOW"
    $P530 = $P529."new_type"("NQPMu" :named("name"))
    nqp_set_sc_for_object $P530, cur_sc
    nqp_set_sc_object "1303391581.542", 4, $P530
    nqp_get_sc_object $P531, "1303391581.542", 4
    nqp_get_sc_object $P532, "1303391581.542", 0
    get_who $P533, $P532
    set $P533["NQPMu"], $P531
    nqp_get_sc_object $P534, "1303391581.542", 4
    set_hll_global "NQPMu", $P534
    .const 'Sub' $P535 = "31_1303391582.169" 
    $P536 = $P535."get_lexinfo"()
    nqp_get_sc_object $P537, "1303391581.542", 4
    $P536."set_static_lexpad_value"("$?PACKAGE", $P537)
    .const 'Sub' $P538 = "31_1303391582.169" 
    $P539 = $P538."get_lexinfo"()
    $P539."finish_static_lexpad"()
    .const 'Sub' $P540 = "31_1303391582.169" 
    $P541 = $P540."get_lexinfo"()
    nqp_get_sc_object $P542, "1303391581.542", 4
    $P541."set_static_lexpad_value"("$?CLASS", $P542)
    .const 'Sub' $P543 = "31_1303391582.169" 
    $P544 = $P543."get_lexinfo"()
    $P544."finish_static_lexpad"()
  if_459_end:
    nqp_get_sc_object $P611, "1303391581.542", 0
    set_hll_global "GLOBAL", $P611
.end


.HLL "nqp"

.namespace []
.sub "open"  :subid("11_1303391582.169") :outer("10_1303391582.169")
    .param pmc param_19
    .param pmc param_20 :optional :named("r")
    .param int has_param_20 :opt_flag
    .param pmc param_22 :optional :named("w")
    .param int has_param_22 :opt_flag
    .param pmc param_24 :optional :named("a")
    .param int has_param_24 :opt_flag
    .param pmc param_26 :optional :named("bin")
    .param int has_param_26 :opt_flag
.annotate 'line', 73
    .lex "$filename", param_19
    if has_param_20, optparam_47
    new $P21, "Undef"
    set param_20, $P21
  optparam_47:
    .lex "$r", param_20
    if has_param_22, optparam_48
    new $P23, "Undef"
    set param_22, $P23
  optparam_48:
    .lex "$w", param_22
    if has_param_24, optparam_49
    new $P25, "Undef"
    set param_24, $P25
  optparam_49:
    .lex "$a", param_24
    if has_param_26, optparam_50
    new $P27, "Undef"
    set param_26, $P27
  optparam_50:
    .lex "$bin", param_26
.annotate 'line', 74
    new $P28, "Undef"
    .lex "$mode", $P28
.annotate 'line', 75
    new $P29, "Undef"
    .lex "$handle", $P29
.annotate 'line', 74
    find_lex $P32, "$w"
    unless_null $P32, vivify_51
    new $P32, "Undef"
  vivify_51:
    if $P32, if_31
    find_lex $P36, "$a"
    unless_null $P36, vivify_52
    new $P36, "Undef"
  vivify_52:
    if $P36, if_35
    new $P38, "String"
    assign $P38, "r"
    set $P34, $P38
    goto if_35_end
  if_35:
    new $P37, "String"
    assign $P37, "wa"
    set $P34, $P37
  if_35_end:
    set $P30, $P34
    goto if_31_end
  if_31:
    new $P33, "String"
    assign $P33, "w"
    set $P30, $P33
  if_31_end:
    store_lex "$mode", $P30
.annotate 'line', 75
    new $P39, "FileHandle"
    store_lex "$handle", $P39
.annotate 'line', 76
    find_lex $P40, "$handle"
    unless_null $P40, vivify_53
    new $P40, "Undef"
  vivify_53:
    find_lex $P41, "$filename"
    unless_null $P41, vivify_54
    new $P41, "Undef"
  vivify_54:
    find_lex $P42, "$mode"
    unless_null $P42, vivify_55
    new $P42, "Undef"
  vivify_55:
    $P40."open"($P41, $P42)
.annotate 'line', 77
    find_lex $P43, "$handle"
    unless_null $P43, vivify_56
    new $P43, "Undef"
  vivify_56:
    find_lex $P46, "$bin"
    unless_null $P46, vivify_57
    new $P46, "Undef"
  vivify_57:
    if $P46, if_45
    new $P48, "String"
    assign $P48, "utf8"
    set $P44, $P48
    goto if_45_end
  if_45:
    new $P47, "String"
    assign $P47, "binary"
    set $P44, $P47
  if_45_end:
    $P43."encoding"($P44)
    find_lex $P49, "$handle"
    unless_null $P49, vivify_58
    new $P49, "Undef"
  vivify_58:
.annotate 'line', 73
    .return ($P49)
.end


.HLL "nqp"

.namespace []
.sub "close"  :subid("12_1303391582.169") :outer("10_1303391582.169")
    .param pmc param_52
.annotate 'line', 85
    .lex "$handle", param_52
.annotate 'line', 86
    find_lex $P53, "$handle"
    unless_null $P53, vivify_59
    new $P53, "Undef"
  vivify_59:
    $P54 = $P53."close"()
.annotate 'line', 85
    .return ($P54)
.end


.HLL "nqp"

.namespace []
.sub "slurp"  :subid("13_1303391582.169") :outer("10_1303391582.169")
    .param pmc param_57
.annotate 'line', 93
    .lex "$filename", param_57
.annotate 'line', 94
    new $P58, "Undef"
    .lex "$handle", $P58
.annotate 'line', 95
    new $P59, "Undef"
    .lex "$contents", $P59
.annotate 'line', 94
    find_lex $P60, "$filename"
    unless_null $P60, vivify_60
    new $P60, "Undef"
  vivify_60:
    $P61 = "open"($P60, 1 :named("r"))
    store_lex "$handle", $P61
.annotate 'line', 95
    find_lex $P62, "$handle"
    unless_null $P62, vivify_61
    new $P62, "Undef"
  vivify_61:
    $P63 = $P62."readall"()
    store_lex "$contents", $P63
.annotate 'line', 96
    find_lex $P64, "$handle"
    unless_null $P64, vivify_62
    new $P64, "Undef"
  vivify_62:
    $P64."close"()
    find_lex $P65, "$contents"
    unless_null $P65, vivify_63
    new $P65, "Undef"
  vivify_63:
.annotate 'line', 93
    .return ($P65)
.end


.HLL "nqp"

.namespace []
.sub "spew"  :subid("14_1303391582.169") :outer("10_1303391582.169")
    .param pmc param_68
    .param pmc param_69
.annotate 'line', 105
    .lex "$filename", param_68
    .lex "$contents", param_69
.annotate 'line', 106
    new $P70, "Undef"
    .lex "$handle", $P70
    new $P71, "FileHandle"
    store_lex "$handle", $P71
.annotate 'line', 107
    find_lex $P72, "$handle"
    unless_null $P72, vivify_64
    new $P72, "Undef"
  vivify_64:
    find_lex $P73, "$filename"
    unless_null $P73, vivify_65
    new $P73, "Undef"
  vivify_65:
    $P72."open"($P73, "w")
.annotate 'line', 108
    find_lex $P74, "$handle"
    unless_null $P74, vivify_66
    new $P74, "Undef"
  vivify_66:
    find_lex $P75, "$contents"
    unless_null $P75, vivify_67
    new $P75, "Undef"
  vivify_67:
    $P74."print"($P75)
.annotate 'line', 109
    find_lex $P76, "$handle"
    unless_null $P76, vivify_68
    new $P76, "Undef"
  vivify_68:
    $P77 = $P76."close"()
.annotate 'line', 105
    .return ($P77)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "print"  :subid("15_1303391582.169") :outer("10_1303391582.169")
    .param pmc param_80 :slurpy
.annotate 'line', 112
    .const 'Sub' $P86 = "16_1303391582.169" 
    capture_lex $P86
    .lex "@args", param_80
.annotate 'line', 113
    find_lex $P82, "@args"
    unless_null $P82, vivify_69
    $P82 = root_new ['parrot';'ResizablePMCArray']
  vivify_69:
    defined $I83, $P82
    unless $I83, for_undef_70
    iter $P81, $P82
    new $P90, 'ExceptionHandler'
    set_label $P90, loop89_handler
    $P90."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P90
  loop89_test:
    unless $P81, loop89_done
    shift $P84, $P81
  loop89_redo:
    .const 'Sub' $P86 = "16_1303391582.169" 
    capture_lex $P86
    $P86($P84)
  loop89_next:
    goto loop89_test
  loop89_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P91, exception, 'type'
    eq $P91, .CONTROL_LOOP_NEXT, loop89_next
    eq $P91, .CONTROL_LOOP_REDO, loop89_redo
  loop89_done:
    pop_eh 
  for_undef_70:
.annotate 'line', 112
    .return (1)
.end


.HLL "nqp"

.namespace []
.sub "_block85"  :anon :subid("16_1303391582.169") :outer("15_1303391582.169")
    .param pmc param_87
.annotate 'line', 113
    .lex "$_", param_87
.annotate 'line', 114
    find_lex $P88, "$_"
    unless_null $P88, vivify_71
    new $P88, "Undef"
  vivify_71:
    print $P88
.annotate 'line', 113
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "say"  :subid("17_1303391582.169") :outer("10_1303391582.169")
    .param pmc param_94 :slurpy
.annotate 'line', 119
    .lex "@args", param_94
.annotate 'line', 120
    find_lex $P95, "@args"
    unless_null $P95, vivify_72
    $P95 = root_new ['parrot';'ResizablePMCArray']
  vivify_72:
    $P96 = "print"($P95 :flat, "\n")
.annotate 'line', 119
    .return ($P96)
.end


.HLL "nqp"

.namespace []
.sub "match"  :subid("18_1303391582.169") :outer("10_1303391582.169")
    .param pmc param_99
    .param pmc param_100
    .param pmc param_101 :optional :named("global")
    .param int has_param_101 :opt_flag
.annotate 'line', 137
    .const 'Sub' $P111 = "19_1303391582.169" 
    capture_lex $P111
    .lex "$text", param_99
    .lex "$regex", param_100
    if has_param_101, optparam_73
    new $P102, "Undef"
    set param_101, $P102
  optparam_73:
    .lex "$global", param_101
.annotate 'line', 138
    new $P103, "Undef"
    .lex "$match", $P103
    find_lex $P104, "$regex"
    unless_null $P104, vivify_74
    new $P104, "Undef"
  vivify_74:
    find_lex $P105, "$text"
    unless_null $P105, vivify_75
    new $P105, "Undef"
  vivify_75:
    $P106 = $P104."ACCEPTS"($P105)
    store_lex "$match", $P106
.annotate 'line', 139
    find_lex $P109, "$global"
    unless_null $P109, vivify_76
    new $P109, "Undef"
  vivify_76:
    if $P109, if_108
.annotate 'line', 147
    find_lex $P129, "$match"
    unless_null $P129, vivify_77
    new $P129, "Undef"
  vivify_77:
    set $P107, $P129
.annotate 'line', 139
    goto if_108_end
  if_108:
    .const 'Sub' $P111 = "19_1303391582.169" 
    capture_lex $P111
    $P128 = $P111()
    set $P107, $P128
  if_108_end:
.annotate 'line', 137
    .return ($P107)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "_block110"  :anon :subid("19_1303391582.169") :outer("18_1303391582.169")
.annotate 'line', 140
    $P112 = root_new ['parrot';'ResizablePMCArray']
    .lex "@matches", $P112
.annotate 'line', 139
    find_lex $P113, "@matches"
    unless_null $P113, vivify_78
    $P113 = root_new ['parrot';'ResizablePMCArray']
  vivify_78:
.annotate 'line', 141
    new $P125, 'ExceptionHandler'
    set_label $P125, loop124_handler
    $P125."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P125
  loop124_test:
    find_lex $P114, "$match"
    unless_null $P114, vivify_79
    new $P114, "Undef"
  vivify_79:
    unless $P114, loop124_done
  loop124_redo:
.annotate 'line', 142
    find_lex $P115, "@matches"
    unless_null $P115, vivify_80
    $P115 = root_new ['parrot';'ResizablePMCArray']
  vivify_80:
    find_lex $P116, "$match"
    unless_null $P116, vivify_81
    new $P116, "Undef"
  vivify_81:
    $P115."push"($P116)
.annotate 'line', 143
    find_lex $P117, "$match"
    unless_null $P117, vivify_82
    new $P117, "Undef"
  vivify_82:
    $P118 = $P117."CURSOR"()
    find_lex $P119, "$text"
    unless_null $P119, vivify_83
    new $P119, "Undef"
  vivify_83:
    find_lex $P120, "$regex"
    unless_null $P120, vivify_84
    new $P120, "Undef"
  vivify_84:
    find_lex $P121, "$match"
    unless_null $P121, vivify_85
    new $P121, "Undef"
  vivify_85:
    $P122 = $P121."to"()
    $P123 = $P118."parse"($P119, $P120 :named("rule"), $P122 :named("c"))
    store_lex "$match", $P123
  loop124_next:
.annotate 'line', 141
    goto loop124_test
  loop124_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P126, exception, 'type'
    eq $P126, .CONTROL_LOOP_NEXT, loop124_next
    eq $P126, .CONTROL_LOOP_REDO, loop124_redo
  loop124_done:
    pop_eh 
    find_lex $P127, "@matches"
    unless_null $P127, vivify_86
    $P127 = root_new ['parrot';'ResizablePMCArray']
  vivify_86:
.annotate 'line', 139
    .return ($P127)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "subst"  :subid("20_1303391582.169") :outer("10_1303391582.169")
    .param pmc param_132
    .param pmc param_133
    .param pmc param_134
    .param pmc param_135 :optional :named("global")
    .param int has_param_135 :opt_flag
.annotate 'line', 159
    .const 'Sub' $P162 = "21_1303391582.169" 
    capture_lex $P162
    .lex "$text", param_132
    .lex "$regex", param_133
    .lex "$repl", param_134
    if has_param_135, optparam_87
    new $P136, "Undef"
    set param_135, $P136
  optparam_87:
    .lex "$global", param_135
.annotate 'line', 160
    $P137 = root_new ['parrot';'ResizablePMCArray']
    .lex "@matches", $P137
.annotate 'line', 162
    new $P138, "Undef"
    .lex "$is_code", $P138
.annotate 'line', 163
    new $P139, "Undef"
    .lex "$offset", $P139
.annotate 'line', 164
    new $P140, "Undef"
    .lex "$result", $P140
.annotate 'line', 175
    new $P141, "Undef"
    .lex "$chars", $P141
.annotate 'line', 160
    find_lex $P144, "$global"
    unless_null $P144, vivify_88
    new $P144, "Undef"
  vivify_88:
    if $P144, if_143
.annotate 'line', 161
    find_lex $P148, "$regex"
    unless_null $P148, vivify_89
    new $P148, "Undef"
  vivify_89:
    find_lex $P149, "$text"
    unless_null $P149, vivify_90
    new $P149, "Undef"
  vivify_90:
    $P150 = $P148."ACCEPTS"($P149)
    new $P151, "ResizablePMCArray"
    push $P151, $P150
.annotate 'line', 160
    set $P142, $P151
    goto if_143_end
  if_143:
    find_lex $P145, "$text"
    unless_null $P145, vivify_91
    new $P145, "Undef"
  vivify_91:
    find_lex $P146, "$regex"
    unless_null $P146, vivify_92
    new $P146, "Undef"
  vivify_92:
    $P147 = "match"($P145, $P146, 1 :named("global"))
    set $P142, $P147
  if_143_end:
    store_lex "@matches", $P142
.annotate 'line', 162
    find_lex $P152, "$repl"
    unless_null $P152, vivify_93
    new $P152, "Undef"
  vivify_93:
    isa $I153, $P152, "Sub"
    new $P154, 'Integer'
    set $P154, $I153
    store_lex "$is_code", $P154
.annotate 'line', 163
    new $P155, "Integer"
    assign $P155, 0
    store_lex "$offset", $P155
.annotate 'line', 164
    new $P156, "StringBuilder"
    store_lex "$result", $P156
.annotate 'line', 166
    find_lex $P158, "@matches"
    unless_null $P158, vivify_94
    $P158 = root_new ['parrot';'ResizablePMCArray']
  vivify_94:
    defined $I159, $P158
    unless $I159, for_undef_95
    iter $P157, $P158
    new $P195, 'ExceptionHandler'
    set_label $P195, loop194_handler
    $P195."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P195
  loop194_test:
    unless $P157, loop194_done
    shift $P160, $P157
  loop194_redo:
    .const 'Sub' $P162 = "21_1303391582.169" 
    capture_lex $P162
    $P162($P160)
  loop194_next:
    goto loop194_test
  loop194_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P196, exception, 'type'
    eq $P196, .CONTROL_LOOP_NEXT, loop194_next
    eq $P196, .CONTROL_LOOP_REDO, loop194_redo
  loop194_done:
    pop_eh 
  for_undef_95:
.annotate 'line', 175
    find_lex $P197, "$text"
    unless_null $P197, vivify_110
    new $P197, "Undef"
  vivify_110:
    set $S198, $P197
    length $I199, $S198
    new $P200, 'Integer'
    set $P200, $I199
    store_lex "$chars", $P200
.annotate 'line', 177
    find_lex $P202, "$chars"
    unless_null $P202, vivify_111
    new $P202, "Undef"
  vivify_111:
    set $N203, $P202
    find_lex $P204, "$offset"
    unless_null $P204, vivify_112
    new $P204, "Undef"
  vivify_112:
    set $N205, $P204
    isgt $I206, $N203, $N205
    unless $I206, if_201_end
.annotate 'line', 176
    find_lex $P207, "$result"
    unless_null $P207, vivify_113
    new $P207, "Undef"
  vivify_113:
    find_lex $P208, "$text"
    unless_null $P208, vivify_114
    new $P208, "Undef"
  vivify_114:
    set $S209, $P208
    find_lex $P210, "$offset"
    unless_null $P210, vivify_115
    new $P210, "Undef"
  vivify_115:
    set $I211, $P210
    find_lex $P212, "$chars"
    unless_null $P212, vivify_116
    new $P212, "Undef"
  vivify_116:
    set $I213, $P212
    substr $S214, $S209, $I211, $I213
    push $P207, $S214
  if_201_end:
.annotate 'line', 179
    find_lex $P215, "$result"
    unless_null $P215, vivify_117
    new $P215, "Undef"
  vivify_117:
    set $S216, $P215
.annotate 'line', 159
    .return ($S216)
.end


.HLL "nqp"

.namespace []
.sub "_block161"  :anon :subid("21_1303391582.169") :outer("20_1303391582.169")
    .param pmc param_163
.annotate 'line', 166
    .lex "$match", param_163
.annotate 'line', 167
    find_lex $P166, "$match"
    unless_null $P166, vivify_96
    new $P166, "Undef"
  vivify_96:
    if $P166, if_165
    set $P164, $P166
    goto if_165_end
  if_165:
.annotate 'line', 169
    find_lex $P168, "$match"
    unless_null $P168, vivify_97
    new $P168, "Undef"
  vivify_97:
    $N169 = $P168."from"()
    find_lex $P170, "$offset"
    unless_null $P170, vivify_98
    new $P170, "Undef"
  vivify_98:
    set $N171, $P170
    isgt $I172, $N169, $N171
    unless $I172, if_167_end
.annotate 'line', 168
    find_lex $P173, "$result"
    unless_null $P173, vivify_99
    new $P173, "Undef"
  vivify_99:
    find_lex $P174, "$text"
    unless_null $P174, vivify_100
    new $P174, "Undef"
  vivify_100:
    set $S175, $P174
    find_lex $P176, "$offset"
    unless_null $P176, vivify_101
    new $P176, "Undef"
  vivify_101:
    set $I177, $P176
    find_lex $P178, "$match"
    unless_null $P178, vivify_102
    new $P178, "Undef"
  vivify_102:
    $P179 = $P178."from"()
    find_lex $P180, "$offset"
    unless_null $P180, vivify_103
    new $P180, "Undef"
  vivify_103:
    sub $P181, $P179, $P180
    set $I182, $P181
    substr $S183, $S175, $I177, $I182
    push $P173, $S183
  if_167_end:
.annotate 'line', 170
    find_lex $P184, "$result"
    unless_null $P184, vivify_104
    new $P184, "Undef"
  vivify_104:
    find_lex $P187, "$is_code"
    unless_null $P187, vivify_105
    new $P187, "Undef"
  vivify_105:
    if $P187, if_186
    find_lex $P191, "$repl"
    unless_null $P191, vivify_106
    new $P191, "Undef"
  vivify_106:
    set $P185, $P191
    goto if_186_end
  if_186:
    find_lex $P188, "$repl"
    unless_null $P188, vivify_107
    new $P188, "Undef"
  vivify_107:
    find_lex $P189, "$match"
    unless_null $P189, vivify_108
    new $P189, "Undef"
  vivify_108:
    $P190 = $P188($P189)
    set $P185, $P190
  if_186_end:
    push $P184, $P185
.annotate 'line', 171
    find_lex $P192, "$match"
    unless_null $P192, vivify_109
    new $P192, "Undef"
  vivify_109:
    $P193 = $P192."to"()
    store_lex "$offset", $P193
.annotate 'line', 167
    set $P164, $P193
  if_165_end:
.annotate 'line', 166
    .return ($P164)
.end


.HLL "nqp"

.namespace []
.sub "plan"  :subid("22_1303391582.169") :outer("10_1303391582.169")
    .param pmc param_220
.annotate 'line', 187
    .lex "$quantity", param_220
.annotate 'line', 188
    new $P221, 'String'
    set $P221, "1.."
    find_lex $P222, "$quantity"
    unless_null $P222, vivify_118
    new $P222, "Undef"
  vivify_118:
    concat $P223, $P221, $P222
    $P224 = "say"($P223)
.annotate 'line', 187
    .return ($P224)
.end


.HLL "nqp"

.namespace []
.sub "ok"  :subid("23_1303391582.169") :outer("10_1303391582.169")
    .param pmc param_227
    .param pmc param_228 :optional
    .param int has_param_228 :opt_flag
.annotate 'line', 191
    .lex "$condition", param_227
    if has_param_228, optparam_119
    new $P229, "Undef"
    set param_228, $P229
  optparam_119:
    .lex "$desc", param_228
.annotate 'line', 192
    find_lex $P230, "$test_counter"
    unless_null $P230, vivify_120
    new $P230, "Undef"
  vivify_120:
    add $P231, $P230, 1
    store_lex "$test_counter", $P231
.annotate 'line', 194
    find_lex $P233, "$condition"
    unless_null $P233, vivify_121
    new $P233, "Undef"
  vivify_121:
    if $P233, unless_232_end
.annotate 'line', 195
    "print"("not ")
  unless_232_end:
.annotate 'line', 197
    new $P234, 'String'
    set $P234, "ok "
    find_lex $P235, "$test_counter"
    unless_null $P235, vivify_122
    new $P235, "Undef"
  vivify_122:
    concat $P236, $P234, $P235
    "print"($P236)
.annotate 'line', 198
    find_lex $P238, "$desc"
    unless_null $P238, vivify_123
    new $P238, "Undef"
  vivify_123:
    unless $P238, if_237_end
.annotate 'line', 199
    new $P239, 'String'
    set $P239, " - "
    find_lex $P240, "$desc"
    unless_null $P240, vivify_124
    new $P240, "Undef"
  vivify_124:
    concat $P241, $P239, $P240
    "print"($P241)
  if_237_end:
.annotate 'line', 201
    "print"("\n")
.annotate 'line', 203
    find_lex $P244, "$condition"
    unless_null $P244, vivify_125
    new $P244, "Undef"
  vivify_125:
    if $P244, if_243
    new $P246, "Integer"
    assign $P246, 0
    set $P242, $P246
    goto if_243_end
  if_243:
    new $P245, "Integer"
    assign $P245, 1
    set $P242, $P245
  if_243_end:
.annotate 'line', 191
    .return ($P242)
.end


.HLL "nqp"

.namespace []
.sub "skip"  :subid("24_1303391582.169") :outer("10_1303391582.169")
    .param pmc param_249
.annotate 'line', 206
    .lex "$desc", param_249
.annotate 'line', 207
    find_lex $P250, "$test_counter"
    unless_null $P250, vivify_126
    new $P250, "Undef"
  vivify_126:
    add $P251, $P250, 1
    store_lex "$test_counter", $P251
.annotate 'line', 208
    new $P252, 'String'
    set $P252, "ok "
    find_lex $P253, "$test_counter"
    unless_null $P253, vivify_127
    new $P253, "Undef"
  vivify_127:
    concat $P254, $P252, $P253
    concat $P255, $P254, " # SKIP "
    find_lex $P256, "$desc"
    unless_null $P256, vivify_128
    new $P256, "Undef"
  vivify_128:
    concat $P257, $P255, $P256
    concat $P258, $P257, "\n"
    $P259 = "say"($P258)
.annotate 'line', 206
    .return ($P259)
.end


.HLL "nqp"

.namespace []
.sub "_block261"  :anon :subid("25_1303391582.169") :outer("10_1303391582.169")
.annotate 'line', 7
    .const 'Sub' $P266 = "26_1303391582.169" 
    capture_lex $P266
    .lex "$?PACKAGE", $P263
    .lex "$?CLASS", $P264
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post129") :outer("25_1303391582.169")
.annotate 'line', 7
    .const 'Sub' $P262 = "25_1303391582.169" 
    .local pmc block
    set block, $P262
    .const 'Sub' $P266 = "26_1303391582.169" 
    capture_lex $P266
    $P266()
.end


.HLL "nqp"

.namespace []
.sub "_block265"  :anon :subid("26_1303391582.169") :outer("25_1303391582.169")
.annotate 'line', 7
    nqp_get_sc_object $P267, "1303391581.542", 1
    .local pmc type_obj
    set type_obj, $P267
    get_how $P268, type_obj
    $P269 = $P268."compose"(type_obj)
    .return ($P269)
.end


.HLL "nqp"

.namespace []
.sub "_block270"  :anon :subid("27_1303391582.169") :outer("10_1303391582.169")
.annotate 'line', 9
    .const 'Sub' $P275 = "28_1303391582.169" 
    capture_lex $P275
    .lex "$?PACKAGE", $P272
    .lex "$?CLASS", $P273
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post130") :outer("27_1303391582.169")
.annotate 'line', 9
    .const 'Sub' $P271 = "27_1303391582.169" 
    .local pmc block
    set block, $P271
    .const 'Sub' $P275 = "28_1303391582.169" 
    capture_lex $P275
    $P275()
.end


.HLL "nqp"

.namespace []
.sub "_block274"  :anon :subid("28_1303391582.169") :outer("27_1303391582.169")
.annotate 'line', 9
    nqp_get_sc_object $P276, "1303391581.542", 2
    .local pmc type_obj
    set type_obj, $P276
    get_how $P277, type_obj
    $P278 = $P277."compose"(type_obj)
    .return ($P278)
.end


.HLL "nqp"

.namespace []
.sub "_block279"  :anon :subid("29_1303391582.169") :outer("10_1303391582.169")
.annotate 'line', 11
    .const 'Sub' $P284 = "30_1303391582.169" 
    capture_lex $P284
    .lex "$?PACKAGE", $P281
    .lex "$?CLASS", $P282
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post131") :outer("29_1303391582.169")
.annotate 'line', 11
    .const 'Sub' $P280 = "29_1303391582.169" 
    .local pmc block
    set block, $P280
    .const 'Sub' $P284 = "30_1303391582.169" 
    capture_lex $P284
    $P284()
.end


.HLL "nqp"

.namespace []
.sub "_block283"  :anon :subid("30_1303391582.169") :outer("29_1303391582.169")
.annotate 'line', 11
    nqp_get_sc_object $P285, "1303391581.542", 3
    .local pmc type_obj
    set type_obj, $P285
    get_how $P286, type_obj
    $P287 = $P286."compose"(type_obj)
    .return ($P287)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "_block288"  :subid("31_1303391582.169") :outer("10_1303391582.169")
.annotate 'line', 14
    .const 'Sub' $P411 = "44_1303391582.169" 
    capture_lex $P411
    .const 'Sub' $P401 = "43_1303391582.169" 
    capture_lex $P401
    .const 'Sub' $P389 = "42_1303391582.169" 
    capture_lex $P389
    .const 'Sub' $P385 = "41_1303391582.169" 
    capture_lex $P385
    .const 'Sub' $P374 = "40_1303391582.169" 
    capture_lex $P374
    .const 'Sub' $P371 = "39_1303391582.169" 
    capture_lex $P371
    .const 'Sub' $P365 = "38_1303391582.169" 
    capture_lex $P365
    .const 'Sub' $P327 = "36_1303391582.169" 
    capture_lex $P327
    .const 'Sub' $P306 = "34_1303391582.169" 
    capture_lex $P306
    .const 'Sub' $P296 = "33_1303391582.169" 
    capture_lex $P296
    .const 'Sub' $P292 = "32_1303391582.169" 
    capture_lex $P292
    .lex "$?PACKAGE", $P290
    .lex "$?CLASS", $P291
.annotate 'line', 56
    .const 'Sub' $P401 = "43_1303391582.169" 
    newclosure $P409, $P401
.annotate 'line', 14
    .return ($P409)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "" :load :init :subid("post132") :outer("31_1303391582.169")
.annotate 'line', 14
    get_hll_global $P289, ["NQPMu"], "_block288" 
    .local pmc block
    set block, $P289
    .const 'Sub' $P411 = "44_1303391582.169" 
    capture_lex $P411
    $P411()
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "_block410"  :anon :subid("44_1303391582.169") :outer("31_1303391582.169")
.annotate 'line', 14
    .const 'Sub' $P427 = "39_1303391582.169" 
    capture_lex $P427
    nqp_get_sc_object $P412, "1303391581.542", 4
    .local pmc type_obj
    set type_obj, $P412
    get_how $P413, type_obj
    .const 'Sub' $P414 = "32_1303391582.169" 
    $P413."add_method"(type_obj, "CREATE", $P414)
    get_how $P415, type_obj
    .const 'Sub' $P416 = "33_1303391582.169" 
    $P415."add_method"(type_obj, "bless", $P416)
    get_how $P417, type_obj
    .const 'Sub' $P418 = "34_1303391582.169" 
    $P417."add_method"(type_obj, "BUILDALL", $P418)
    get_how $P419, type_obj
    .const 'Sub' $P420 = "36_1303391582.169" 
    $P419."add_method"(type_obj, "BUILD_MAGIC", $P420)
    get_how $P421, type_obj
    .const 'Sub' $P422 = "38_1303391582.169" 
    $P421."add_method"(type_obj, "new", $P422)
    get_how $P423, type_obj
    .const 'Sub' $P424 = "39_1303391582.169" 
    new $P425, "ResizablePMCArray"
    set_dispatchees $P424, $P425
    $P423."add_method"(type_obj, "Str", $P424)
    get_how $P426, type_obj
    .const 'Sub' $P427 = "39_1303391582.169" 
    newclosure $P430, $P427
    $P426."add_parrot_vtable_mapping"(type_obj, "get_string", $P430)
    get_how $P431, type_obj
    .const 'Sub' $P432 = "40_1303391582.169" 
    $P431."add_multi_method"(type_obj, "Str", $P432)
    get_how $P433, type_obj
    .const 'Sub' $P434 = "41_1303391582.169" 
    new $P435, "ResizablePMCArray"
    set_dispatchees $P434, $P435
    $P433."add_method"(type_obj, "ACCEPTS", $P434)
    get_how $P436, type_obj
    .const 'Sub' $P437 = "42_1303391582.169" 
    $P436."add_multi_method"(type_obj, "ACCEPTS", $P437)
    get_how $P438, type_obj
    .const 'Sub' $P439 = "43_1303391582.169" 
    $P438."add_method"(type_obj, "isa", $P439)
    get_how $P440, type_obj
    $P441 = $P440."compose"(type_obj)
    .return ($P441)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "Str" :instanceof("DispatcherSub") :subid("39_1303391582.169") :outer("44_1303391582.169")
    .param pmc param_428
.annotate 'line', 14
    .lex "self", param_428
    multi_dispatch_over_lexical_candidates $P429
    .return ($P429)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "CREATE"  :subid("32_1303391582.169") :outer("31_1303391582.169")
    .param pmc param_293
.annotate 'line', 15
    .lex "self", param_293
.annotate 'line', 16
    find_lex $P294, "self"
    repr_instance_of $P295, $P294
.annotate 'line', 15
    .return ($P295)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "bless"  :subid("33_1303391582.169") :outer("31_1303391582.169")
    .param pmc param_297
    .param pmc param_299 :slurpy :named
.annotate 'line', 20
    .lex "$self", param_297
    find_lex $P298, "$self"
    .lex "self", $P298
    .lex "%attributes", param_299
.annotate 'line', 21
    new $P300, "Undef"
    .lex "$instance", $P300
    find_lex $P301, "self"
    $P302 = $P301."CREATE"()
    store_lex "$instance", $P302
.annotate 'line', 22
    find_lex $P303, "$instance"
    unless_null $P303, vivify_133
    new $P303, "Undef"
  vivify_133:
    find_lex $P304, "%attributes"
    unless_null $P304, vivify_134
    $P304 = root_new ['parrot';'Hash']
  vivify_134:
    $P303."BUILDALL"($P304 :flat)
    find_lex $P305, "$instance"
    unless_null $P305, vivify_135
    new $P305, "Undef"
  vivify_135:
.annotate 'line', 20
    .return ($P305)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.include "except_types.pasm"
.sub "BUILDALL"  :subid("34_1303391582.169") :outer("31_1303391582.169")
    .param pmc param_307
    .param pmc param_309 :slurpy :named
.annotate 'line', 26
    .const 'Sub' $P318 = "35_1303391582.169" 
    capture_lex $P318
    .lex "$self", param_307
    find_lex $P308, "$self"
    .lex "self", $P308
    .lex "%attributes", param_309
.annotate 'line', 27
    find_lex $P311, "$self"
    unless_null $P311, vivify_136
    new $P311, "Undef"
  vivify_136:
    get_how $P312, $P311
    find_lex $P313, "$self"
    unless_null $P313, vivify_137
    new $P313, "Undef"
  vivify_137:
    $P314 = $P312."parents"($P313)
    defined $I315, $P314
    unless $I315, for_undef_138
    iter $P310, $P314
    new $P325, 'ExceptionHandler'
    set_label $P325, loop324_handler
    $P325."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P325
  loop324_test:
    unless $P310, loop324_done
    shift $P316, $P310
  loop324_redo:
    .const 'Sub' $P318 = "35_1303391582.169" 
    capture_lex $P318
    $P318($P316)
  loop324_next:
    goto loop324_test
  loop324_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P326, exception, 'type'
    eq $P326, .CONTROL_LOOP_NEXT, loop324_next
    eq $P326, .CONTROL_LOOP_REDO, loop324_redo
  loop324_done:
    pop_eh 
  for_undef_138:
.annotate 'line', 26
    .return ($P310)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "_block317"  :anon :subid("35_1303391582.169") :outer("34_1303391582.169")
    .param pmc param_319
.annotate 'line', 27
    .lex "$class", param_319
.annotate 'line', 28
    find_lex $P320, "$self"
    unless_null $P320, vivify_139
    new $P320, "Undef"
  vivify_139:
    find_lex $P321, "$class"
    unless_null $P321, vivify_140
    new $P321, "Undef"
  vivify_140:
    find_lex $P322, "%attributes"
    unless_null $P322, vivify_141
    $P322 = root_new ['parrot';'Hash']
  vivify_141:
    $P323 = $P320."BUILD_MAGIC"($P321, $P322 :flat)
.annotate 'line', 27
    .return ($P323)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.include "except_types.pasm"
.sub "BUILD_MAGIC"  :subid("36_1303391582.169") :outer("31_1303391582.169")
    .param pmc param_328
    .param pmc param_330
    .param pmc param_331 :slurpy :named
.annotate 'line', 32
    .const 'Sub' $P340 = "37_1303391582.169" 
    capture_lex $P340
    .lex "$self", param_328
    find_lex $P329, "$self"
    .lex "self", $P329
    .lex "$type", param_330
    .lex "%attributes", param_331
.annotate 'line', 33
    find_lex $P333, "$type"
    unless_null $P333, vivify_142
    new $P333, "Undef"
  vivify_142:
    get_how $P334, $P333
    find_lex $P335, "$type"
    unless_null $P335, vivify_143
    new $P335, "Undef"
  vivify_143:
    $P336 = $P334."attributes"($P335, 1 :named("local"))
    defined $I337, $P336
    unless $I337, for_undef_144
    iter $P332, $P336
    new $P363, 'ExceptionHandler'
    set_label $P363, loop362_handler
    $P363."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P363
  loop362_test:
    unless $P332, loop362_done
    shift $P338, $P332
  loop362_redo:
    .const 'Sub' $P340 = "37_1303391582.169" 
    capture_lex $P340
    $P340($P338)
  loop362_next:
    goto loop362_test
  loop362_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P364, exception, 'type'
    eq $P364, .CONTROL_LOOP_NEXT, loop362_next
    eq $P364, .CONTROL_LOOP_REDO, loop362_redo
  loop362_done:
    pop_eh 
  for_undef_144:
.annotate 'line', 32
    .return ($P332)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "_block339"  :anon :subid("37_1303391582.169") :outer("36_1303391582.169")
    .param pmc param_343
.annotate 'line', 34
    new $P341, "Undef"
    .lex "$name", $P341
.annotate 'line', 35
    new $P342, "Undef"
    .lex "$shortname", $P342
    .lex "$_", param_343
.annotate 'line', 34
    find_lex $P344, "$_"
    unless_null $P344, vivify_145
    new $P344, "Undef"
  vivify_145:
    $P345 = $P344."name"()
    store_lex "$name", $P345
.annotate 'line', 35
    find_lex $P346, "$name"
    unless_null $P346, vivify_146
    new $P346, "Undef"
  vivify_146:
    set $S347, $P346
    substr $S348, $S347, 2
    new $P349, 'String'
    set $P349, $S348
    store_lex "$shortname", $P349
.annotate 'line', 36
    find_lex $P353, "$shortname"
    unless_null $P353, vivify_147
    new $P353, "Undef"
  vivify_147:
    find_lex $P352, "%attributes"
    unless_null $P352, vivify_148
    $P352 = root_new ['parrot';'Hash']
  vivify_148:
    exists $I354, $P352[$P353]
    if $I354, if_351
    new $P350, 'Integer'
    set $P350, $I354
    goto if_351_end
  if_351:
.annotate 'line', 37
    find_lex $P355, "$self"
    unless_null $P355, vivify_149
    new $P355, "Undef"
  vivify_149:
    find_lex $P356, "$type"
    unless_null $P356, vivify_150
    new $P356, "Undef"
  vivify_150:
    find_lex $P357, "$name"
    unless_null $P357, vivify_151
    new $P357, "Undef"
  vivify_151:
    set $S358, $P357
    find_lex $P359, "$shortname"
    unless_null $P359, vivify_152
    new $P359, "Undef"
  vivify_152:
    find_lex $P360, "%attributes"
    unless_null $P360, vivify_153
    $P360 = root_new ['parrot';'Hash']
  vivify_153:
    set $P361, $P360[$P359]
    unless_null $P361, vivify_154
    new $P361, "Undef"
  vivify_154:
    setattribute $P355, $P356, $S358, $P361
  if_351_end:
.annotate 'line', 33
    .return ($P350)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "new"  :subid("38_1303391582.169") :outer("31_1303391582.169")
    .param pmc param_366
    .param pmc param_367 :slurpy :named
.annotate 'line', 42
    .lex "self", param_366
    .lex "%attributes", param_367
.annotate 'line', 43
    find_lex $P368, "self"
    find_lex $P369, "%attributes"
    unless_null $P369, vivify_155
    $P369 = root_new ['parrot';'Hash']
  vivify_155:
    $P370 = $P368."bless"($P369 :flat)
.annotate 'line', 42
    .return ($P370)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "Str" :instanceof("DispatcherSub") :subid("39_1303391582.169") :outer("31_1303391582.169")
    .param pmc param_372
.annotate 'line', 42
    .lex "self", param_372
    multi_dispatch_over_lexical_candidates $P373
    .return ($P373)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "Str"  :subid("40_1303391582.169") :outer("31_1303391582.169")
    .param pmc param_375
.annotate 'line', 47
    .lex "$self", param_375
    find_lex $P376, "$self"
    .lex "self", $P376
.annotate 'line', 48
    find_lex $P377, "self"
    get_how $P378, $P377
    find_lex $P379, "self"
    $P380 = $P378."name"($P379)
    concat $P381, $P380, "()"
.annotate 'line', 47
    .return ($P381)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "" :load :init :subid("post156") :outer("40_1303391582.169")
.annotate 'line', 47
    .const 'Sub' $P374 = "40_1303391582.169" 
    .local pmc block
    set block, $P374
    get_hll_global $P382, "Mu"
    new $P383, "ResizablePMCArray"
    push $P383, $P382
    new $P384, "ResizablePMCArray"
    push $P384, 2
    set_sub_multisig block, $P383, $P384
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "ACCEPTS" :instanceof("DispatcherSub") :subid("41_1303391582.169") :outer("31_1303391582.169")
    .param pmc param_386
    .param pmc param_387
.annotate 'line', 47
    .lex "self", param_386
.annotate 'line', 51
    .lex "$topic", param_387
.annotate 'line', 47
    multi_dispatch_over_lexical_candidates $P388
    .return ($P388)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "ACCEPTS"  :subid("42_1303391582.169") :outer("31_1303391582.169")
    .param pmc param_390
    .param pmc param_392
.annotate 'line', 52
    .lex "$self", param_390
    find_lex $P391, "$self"
    .lex "self", $P391
    .lex "$topic", param_392
.annotate 'line', 53
    find_lex $P393, "$topic"
    unless_null $P393, vivify_158
    new $P393, "Undef"
  vivify_158:
    find_lex $P394, "self"
    get_what $P395, $P394
    type_check $I396, $P393, $P395
.annotate 'line', 52
    .return ($I396)
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "" :load :init :subid("post157") :outer("42_1303391582.169")
.annotate 'line', 52
    .const 'Sub' $P389 = "42_1303391582.169" 
    .local pmc block
    set block, $P389
    get_hll_global $P397, "NQPMu"
    null $P398
    new $P399, "ResizablePMCArray"
    push $P399, $P397
    push $P399, $P398
    new $P400, "ResizablePMCArray"
    push $P400, 2
    push $P400, 0
    set_sub_multisig block, $P399, $P400
.end


.HLL "nqp"

.namespace ["NQPMu"]
.sub "isa"  :subid("43_1303391582.169") :outer("31_1303391582.169")
    .param pmc param_402
    .param pmc param_403
.annotate 'line', 56
    .lex "self", param_402
    .lex "$type", param_403
.annotate 'line', 57
    find_lex $P404, "self"
    get_how $P405, $P404
    find_lex $P406, "self"
    find_lex $P407, "$type"
    unless_null $P407, vivify_159
    new $P407, "Undef"
  vivify_159:
    $P408 = $P405."isa"($P406, $P407)
.annotate 'line', 56
    .return ($P408)
.end


.HLL "nqp"

.namespace []
.sub "_block455" :load :anon :subid("45_1303391582.169")
.annotate 'line', 1
    .const 'Sub' $P457 = "10_1303391582.169" 
    $P458 = $P457()
    .return ($P458)
.end

