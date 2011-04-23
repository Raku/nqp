
.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.namespace []
.sub "_block11"  :anon :subid("10_1303576167.766")
.annotate 'line', 0
    .const 'Sub' $P290 = "31_1303576167.766" 
    capture_lex $P290
    .const 'Sub' $P281 = "29_1303576167.766" 
    capture_lex $P281
    .const 'Sub' $P272 = "27_1303576167.766" 
    capture_lex $P272
    .const 'Sub' $P263 = "25_1303576167.766" 
    capture_lex $P263
    .const 'Sub' $P249 = "24_1303576167.766" 
    capture_lex $P249
    .const 'Sub' $P227 = "23_1303576167.766" 
    capture_lex $P227
    .const 'Sub' $P220 = "22_1303576167.766" 
    capture_lex $P220
    .const 'Sub' $P132 = "20_1303576167.766" 
    capture_lex $P132
    .const 'Sub' $P99 = "18_1303576167.766" 
    capture_lex $P99
    .const 'Sub' $P94 = "17_1303576167.766" 
    capture_lex $P94
    .const 'Sub' $P80 = "15_1303576167.766" 
    capture_lex $P80
    .const 'Sub' $P68 = "14_1303576167.766" 
    capture_lex $P68
    .const 'Sub' $P57 = "13_1303576167.766" 
    capture_lex $P57
    .const 'Sub' $P52 = "12_1303576167.766" 
    capture_lex $P52
    .const 'Sub' $P19 = "11_1303576167.766" 
    capture_lex $P19
.annotate 'line', 1
    .lex "GLOBALish", $P13
    .lex "$?PACKAGE", $P14
    .lex "int", $P15
    .lex "num", $P16
    .lex "str", $P17
    .lex "NQPMu", $P18
.annotate 'line', 73
    .const 'Sub' $P19 = "11_1303576167.766" 
    newclosure $P51, $P19
    .lex "open", $P51
.annotate 'line', 85
    .const 'Sub' $P52 = "12_1303576167.766" 
    newclosure $P56, $P52
    .lex "close", $P56
.annotate 'line', 93
    .const 'Sub' $P57 = "13_1303576167.766" 
    newclosure $P67, $P57
    .lex "slurp", $P67
.annotate 'line', 105
    .const 'Sub' $P68 = "14_1303576167.766" 
    newclosure $P79, $P68
    .lex "spew", $P79
.annotate 'line', 112
    .const 'Sub' $P80 = "15_1303576167.766" 
    newclosure $P93, $P80
    .lex "print", $P93
.annotate 'line', 119
    .const 'Sub' $P94 = "17_1303576167.766" 
    newclosure $P98, $P94
    .lex "say", $P98
.annotate 'line', 137
    .const 'Sub' $P99 = "18_1303576167.766" 
    newclosure $P131, $P99
    .lex "match", $P131
.annotate 'line', 159
    .const 'Sub' $P132 = "20_1303576167.766" 
    newclosure $P218, $P132
    .lex "subst", $P218
.annotate 'line', 185
    new $P219, "Undef"
    .lex "$test_counter", $P219
.annotate 'line', 187
    .const 'Sub' $P220 = "22_1303576167.766" 
    newclosure $P226, $P220
    .lex "plan", $P226
.annotate 'line', 191
    .const 'Sub' $P227 = "23_1303576167.766" 
    newclosure $P248, $P227
    .lex "ok", $P248
.annotate 'line', 206
    .const 'Sub' $P249 = "24_1303576167.766" 
    newclosure $P261, $P249
    .lex "skip", $P261
.annotate 'line', 9
    .const 'Sub' $P263 = "25_1303576167.766" 
    capture_lex $P263
    $P263()
.annotate 'line', 11
    .const 'Sub' $P272 = "27_1303576167.766" 
    capture_lex $P272
    $P272()
.annotate 'line', 13
    .const 'Sub' $P281 = "29_1303576167.766" 
    capture_lex $P281
    $P281()
.annotate 'line', 16
    .const 'Sub' $P290 = "31_1303576167.766" 
    capture_lex $P290
    $P290()
    find_lex $P445, "open"
    find_lex $P446, "close"
    find_lex $P447, "slurp"
    find_lex $P448, "spew"
    find_lex $P449, "print"
    find_lex $P450, "say"
    find_lex $P451, "match"
    find_lex $P452, "subst"
.annotate 'line', 185
    new $P453, "Integer"
    assign $P453, 0
    store_lex "$test_counter", $P453
    find_lex $P454, "plan"
    find_lex $P455, "ok"
    find_lex $P456, "skip"
    new $P457, "Integer"
    assign $P457, 1
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 1
    .return ()
    .const 'Sub' $P459 = "45_1303576167.766" 
    .return ($P459)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post46") :outer("10_1303576167.766")
.annotate 'line', 0
    .const 'Sub' $P12 = "10_1303576167.766" 
    .local pmc block
    set block, $P12
    nqp_get_sc $P463, "1303576167.137"
    isnull $I464, $P463
    if $I464, if_462
    .const 'Sub' $P551 = "10_1303576167.766" 
    $P552 = $P551."get_lexinfo"()
    nqp_get_sc_object $P553, "1303576167.137", 0
    $P552."set_static_lexpad_value"("GLOBALish", $P553)
    .const 'Sub' $P554 = "10_1303576167.766" 
    $P555 = $P554."get_lexinfo"()
    $P555."finish_static_lexpad"()
    .const 'Sub' $P556 = "10_1303576167.766" 
    $P557 = $P556."get_lexinfo"()
    nqp_get_sc_object $P558, "1303576167.137", 0
    $P557."set_static_lexpad_value"("$?PACKAGE", $P558)
    .const 'Sub' $P559 = "10_1303576167.766" 
    $P560 = $P559."get_lexinfo"()
    $P560."finish_static_lexpad"()
    .const 'Sub' $P561 = "10_1303576167.766" 
    $P562 = $P561."get_lexinfo"()
    nqp_get_sc_object $P563, "1303576167.137", 1
    $P562."set_static_lexpad_value"("int", $P563)
    .const 'Sub' $P564 = "10_1303576167.766" 
    $P565 = $P564."get_lexinfo"()
    $P565."finish_static_lexpad"()
    .const 'Sub' $P566 = "25_1303576167.766" 
    $P567 = $P566."get_lexinfo"()
    nqp_get_sc_object $P568, "1303576167.137", 1
    $P567."set_static_lexpad_value"("$?PACKAGE", $P568)
    .const 'Sub' $P569 = "25_1303576167.766" 
    $P570 = $P569."get_lexinfo"()
    $P570."finish_static_lexpad"()
    .const 'Sub' $P571 = "25_1303576167.766" 
    $P572 = $P571."get_lexinfo"()
    nqp_get_sc_object $P573, "1303576167.137", 1
    $P572."set_static_lexpad_value"("$?CLASS", $P573)
    .const 'Sub' $P574 = "25_1303576167.766" 
    $P575 = $P574."get_lexinfo"()
    $P575."finish_static_lexpad"()
    .const 'Sub' $P576 = "10_1303576167.766" 
    $P577 = $P576."get_lexinfo"()
    nqp_get_sc_object $P578, "1303576167.137", 2
    $P577."set_static_lexpad_value"("num", $P578)
    .const 'Sub' $P579 = "10_1303576167.766" 
    $P580 = $P579."get_lexinfo"()
    $P580."finish_static_lexpad"()
    .const 'Sub' $P581 = "27_1303576167.766" 
    $P582 = $P581."get_lexinfo"()
    nqp_get_sc_object $P583, "1303576167.137", 2
    $P582."set_static_lexpad_value"("$?PACKAGE", $P583)
    .const 'Sub' $P584 = "27_1303576167.766" 
    $P585 = $P584."get_lexinfo"()
    $P585."finish_static_lexpad"()
    .const 'Sub' $P586 = "27_1303576167.766" 
    $P587 = $P586."get_lexinfo"()
    nqp_get_sc_object $P588, "1303576167.137", 2
    $P587."set_static_lexpad_value"("$?CLASS", $P588)
    .const 'Sub' $P589 = "27_1303576167.766" 
    $P590 = $P589."get_lexinfo"()
    $P590."finish_static_lexpad"()
    .const 'Sub' $P591 = "10_1303576167.766" 
    $P592 = $P591."get_lexinfo"()
    nqp_get_sc_object $P593, "1303576167.137", 3
    $P592."set_static_lexpad_value"("str", $P593)
    .const 'Sub' $P594 = "10_1303576167.766" 
    $P595 = $P594."get_lexinfo"()
    $P595."finish_static_lexpad"()
    .const 'Sub' $P596 = "29_1303576167.766" 
    $P597 = $P596."get_lexinfo"()
    nqp_get_sc_object $P598, "1303576167.137", 3
    $P597."set_static_lexpad_value"("$?PACKAGE", $P598)
    .const 'Sub' $P599 = "29_1303576167.766" 
    $P600 = $P599."get_lexinfo"()
    $P600."finish_static_lexpad"()
    .const 'Sub' $P601 = "29_1303576167.766" 
    $P602 = $P601."get_lexinfo"()
    nqp_get_sc_object $P603, "1303576167.137", 3
    $P602."set_static_lexpad_value"("$?CLASS", $P603)
    .const 'Sub' $P604 = "29_1303576167.766" 
    $P605 = $P604."get_lexinfo"()
    $P605."finish_static_lexpad"()
    .const 'Sub' $P606 = "10_1303576167.766" 
    $P607 = $P606."get_lexinfo"()
    nqp_get_sc_object $P608, "1303576167.137", 4
    $P607."set_static_lexpad_value"("NQPMu", $P608)
    .const 'Sub' $P609 = "10_1303576167.766" 
    $P610 = $P609."get_lexinfo"()
    $P610."finish_static_lexpad"()
    .const 'Sub' $P611 = "31_1303576167.766" 
    $P612 = $P611."get_lexinfo"()
    nqp_get_sc_object $P613, "1303576167.137", 4
    $P612."set_static_lexpad_value"("$?PACKAGE", $P613)
    .const 'Sub' $P614 = "31_1303576167.766" 
    $P615 = $P614."get_lexinfo"()
    $P615."finish_static_lexpad"()
    .const 'Sub' $P616 = "31_1303576167.766" 
    $P617 = $P616."get_lexinfo"()
    nqp_get_sc_object $P618, "1303576167.137", 4
    $P617."set_static_lexpad_value"("$?CLASS", $P618)
    .const 'Sub' $P619 = "31_1303576167.766" 
    $P620 = $P619."get_lexinfo"()
    $P620."finish_static_lexpad"()
    goto if_462_end
  if_462:
    nqp_dynop_setup 
    getinterp $P465
    get_class $P466, "LexPad"
    get_class $P467, "NQPLexPad"
    $P465."hll_map"($P466, $P467)
    nqp_create_sc $P468, "1303576167.137"
    .local pmc cur_sc
    set cur_sc, $P468
    get_hll_global $P469, "KnowHOW"
    $P470 = $P469."new_type"("GLOBALish" :named("name"))
    nqp_set_sc_for_object $P470, cur_sc
    nqp_set_sc_object "1303576167.137", 0, $P470
    .const 'Sub' $P471 = "10_1303576167.766" 
    $P472 = $P471."get_lexinfo"()
    nqp_get_sc_object $P473, "1303576167.137", 0
    $P472."set_static_lexpad_value"("GLOBALish", $P473)
    .const 'Sub' $P474 = "10_1303576167.766" 
    $P475 = $P474."get_lexinfo"()
    $P475."finish_static_lexpad"()
    .const 'Sub' $P476 = "10_1303576167.766" 
    $P477 = $P476."get_lexinfo"()
    nqp_get_sc_object $P478, "1303576167.137", 0
    $P477."set_static_lexpad_value"("$?PACKAGE", $P478)
    .const 'Sub' $P479 = "10_1303576167.766" 
    $P480 = $P479."get_lexinfo"()
    $P480."finish_static_lexpad"()
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P481, "ModuleLoader"
    nqp_get_sc_object $P482, "1303576167.137", 0
    $P481."load_module"("nqpmo", $P482)
    get_hll_global $P483, "NQPNativeHOW"
    $P484 = $P483."new_type"("int" :named("name"), "P6int" :named("repr"))
    nqp_set_sc_for_object $P484, cur_sc
    nqp_set_sc_object "1303576167.137", 1, $P484
    .const 'Sub' $P485 = "10_1303576167.766" 
    $P486 = $P485."get_lexinfo"()
    nqp_get_sc_object $P487, "1303576167.137", 1
    $P486."set_static_lexpad_value"("int", $P487)
    .const 'Sub' $P488 = "10_1303576167.766" 
    $P489 = $P488."get_lexinfo"()
    $P489."finish_static_lexpad"()
    .const 'Sub' $P490 = "25_1303576167.766" 
    $P491 = $P490."get_lexinfo"()
    nqp_get_sc_object $P492, "1303576167.137", 1
    $P491."set_static_lexpad_value"("$?PACKAGE", $P492)
    .const 'Sub' $P493 = "25_1303576167.766" 
    $P494 = $P493."get_lexinfo"()
    $P494."finish_static_lexpad"()
    .const 'Sub' $P495 = "25_1303576167.766" 
    $P496 = $P495."get_lexinfo"()
    nqp_get_sc_object $P497, "1303576167.137", 1
    $P496."set_static_lexpad_value"("$?CLASS", $P497)
    .const 'Sub' $P498 = "25_1303576167.766" 
    $P499 = $P498."get_lexinfo"()
    $P499."finish_static_lexpad"()
    get_hll_global $P500, "NQPNativeHOW"
    $P501 = $P500."new_type"("num" :named("name"), "P6num" :named("repr"))
    nqp_set_sc_for_object $P501, cur_sc
    nqp_set_sc_object "1303576167.137", 2, $P501
    .const 'Sub' $P502 = "10_1303576167.766" 
    $P503 = $P502."get_lexinfo"()
    nqp_get_sc_object $P504, "1303576167.137", 2
    $P503."set_static_lexpad_value"("num", $P504)
    .const 'Sub' $P505 = "10_1303576167.766" 
    $P506 = $P505."get_lexinfo"()
    $P506."finish_static_lexpad"()
    .const 'Sub' $P507 = "27_1303576167.766" 
    $P508 = $P507."get_lexinfo"()
    nqp_get_sc_object $P509, "1303576167.137", 2
    $P508."set_static_lexpad_value"("$?PACKAGE", $P509)
    .const 'Sub' $P510 = "27_1303576167.766" 
    $P511 = $P510."get_lexinfo"()
    $P511."finish_static_lexpad"()
    .const 'Sub' $P512 = "27_1303576167.766" 
    $P513 = $P512."get_lexinfo"()
    nqp_get_sc_object $P514, "1303576167.137", 2
    $P513."set_static_lexpad_value"("$?CLASS", $P514)
    .const 'Sub' $P515 = "27_1303576167.766" 
    $P516 = $P515."get_lexinfo"()
    $P516."finish_static_lexpad"()
    get_hll_global $P517, "NQPNativeHOW"
    $P518 = $P517."new_type"("str" :named("name"), "P6str" :named("repr"))
    nqp_set_sc_for_object $P518, cur_sc
    nqp_set_sc_object "1303576167.137", 3, $P518
    .const 'Sub' $P519 = "10_1303576167.766" 
    $P520 = $P519."get_lexinfo"()
    nqp_get_sc_object $P521, "1303576167.137", 3
    $P520."set_static_lexpad_value"("str", $P521)
    .const 'Sub' $P522 = "10_1303576167.766" 
    $P523 = $P522."get_lexinfo"()
    $P523."finish_static_lexpad"()
    .const 'Sub' $P524 = "29_1303576167.766" 
    $P525 = $P524."get_lexinfo"()
    nqp_get_sc_object $P526, "1303576167.137", 3
    $P525."set_static_lexpad_value"("$?PACKAGE", $P526)
    .const 'Sub' $P527 = "29_1303576167.766" 
    $P528 = $P527."get_lexinfo"()
    $P528."finish_static_lexpad"()
    .const 'Sub' $P529 = "29_1303576167.766" 
    $P530 = $P529."get_lexinfo"()
    nqp_get_sc_object $P531, "1303576167.137", 3
    $P530."set_static_lexpad_value"("$?CLASS", $P531)
    .const 'Sub' $P532 = "29_1303576167.766" 
    $P533 = $P532."get_lexinfo"()
    $P533."finish_static_lexpad"()
    get_hll_global $P534, "NQPClassHOW"
    $P535 = $P534."new_type"("NQPMu" :named("name"))
    nqp_set_sc_for_object $P535, cur_sc
    nqp_set_sc_object "1303576167.137", 4, $P535
    .const 'Sub' $P536 = "10_1303576167.766" 
    $P537 = $P536."get_lexinfo"()
    nqp_get_sc_object $P538, "1303576167.137", 4
    $P537."set_static_lexpad_value"("NQPMu", $P538)
    .const 'Sub' $P539 = "10_1303576167.766" 
    $P540 = $P539."get_lexinfo"()
    $P540."finish_static_lexpad"()
    .const 'Sub' $P541 = "31_1303576167.766" 
    $P542 = $P541."get_lexinfo"()
    nqp_get_sc_object $P543, "1303576167.137", 4
    $P542."set_static_lexpad_value"("$?PACKAGE", $P543)
    .const 'Sub' $P544 = "31_1303576167.766" 
    $P545 = $P544."get_lexinfo"()
    $P545."finish_static_lexpad"()
    .const 'Sub' $P546 = "31_1303576167.766" 
    $P547 = $P546."get_lexinfo"()
    nqp_get_sc_object $P548, "1303576167.137", 4
    $P547."set_static_lexpad_value"("$?CLASS", $P548)
    .const 'Sub' $P549 = "31_1303576167.766" 
    $P550 = $P549."get_lexinfo"()
    $P550."finish_static_lexpad"()
  if_462_end:
    nqp_get_sc_object $P621, "1303576167.137", 0
    set_hll_global "GLOBAL", $P621
.end


.HLL "nqp"

.namespace []
.sub "open"  :subid("11_1303576167.766") :outer("10_1303576167.766")
    .param pmc param_20
    .param pmc param_21 :optional :named("r")
    .param int has_param_21 :opt_flag
    .param pmc param_23 :optional :named("w")
    .param int has_param_23 :opt_flag
    .param pmc param_25 :optional :named("a")
    .param int has_param_25 :opt_flag
    .param pmc param_27 :optional :named("bin")
    .param int has_param_27 :opt_flag
.annotate 'line', 73
    .lex "$filename", param_20
    if has_param_21, optparam_47
    new $P22, "Undef"
    set param_21, $P22
  optparam_47:
    .lex "$r", param_21
    if has_param_23, optparam_48
    new $P24, "Undef"
    set param_23, $P24
  optparam_48:
    .lex "$w", param_23
    if has_param_25, optparam_49
    new $P26, "Undef"
    set param_25, $P26
  optparam_49:
    .lex "$a", param_25
    if has_param_27, optparam_50
    new $P28, "Undef"
    set param_27, $P28
  optparam_50:
    .lex "$bin", param_27
.annotate 'line', 74
    new $P29, "Undef"
    .lex "$mode", $P29
.annotate 'line', 75
    new $P30, "Undef"
    .lex "$handle", $P30
.annotate 'line', 74
    find_lex $P33, "$w"
    unless_null $P33, vivify_51
    new $P33, "Undef"
  vivify_51:
    if $P33, if_32
    find_lex $P37, "$a"
    unless_null $P37, vivify_52
    new $P37, "Undef"
  vivify_52:
    if $P37, if_36
    new $P39, "String"
    assign $P39, "r"
    set $P35, $P39
    goto if_36_end
  if_36:
    new $P38, "String"
    assign $P38, "wa"
    set $P35, $P38
  if_36_end:
    set $P31, $P35
    goto if_32_end
  if_32:
    new $P34, "String"
    assign $P34, "w"
    set $P31, $P34
  if_32_end:
    store_lex "$mode", $P31
.annotate 'line', 75
    new $P40, "FileHandle"
    store_lex "$handle", $P40
.annotate 'line', 76
    find_lex $P41, "$handle"
    unless_null $P41, vivify_53
    new $P41, "Undef"
  vivify_53:
    find_lex $P42, "$filename"
    unless_null $P42, vivify_54
    new $P42, "Undef"
  vivify_54:
    find_lex $P43, "$mode"
    unless_null $P43, vivify_55
    new $P43, "Undef"
  vivify_55:
    $P41."open"($P42, $P43)
.annotate 'line', 77
    find_lex $P44, "$handle"
    unless_null $P44, vivify_56
    new $P44, "Undef"
  vivify_56:
    find_lex $P47, "$bin"
    unless_null $P47, vivify_57
    new $P47, "Undef"
  vivify_57:
    if $P47, if_46
    new $P49, "String"
    assign $P49, "utf8"
    set $P45, $P49
    goto if_46_end
  if_46:
    new $P48, "String"
    assign $P48, "binary"
    set $P45, $P48
  if_46_end:
    $P44."encoding"($P45)
    find_lex $P50, "$handle"
    unless_null $P50, vivify_58
    new $P50, "Undef"
  vivify_58:
.annotate 'line', 73
    .return ($P50)
.end


.HLL "nqp"

.namespace []
.sub "close"  :subid("12_1303576167.766") :outer("10_1303576167.766")
    .param pmc param_53
.annotate 'line', 85
    .lex "$handle", param_53
.annotate 'line', 86
    find_lex $P54, "$handle"
    unless_null $P54, vivify_59
    new $P54, "Undef"
  vivify_59:
    $P55 = $P54."close"()
.annotate 'line', 85
    .return ($P55)
.end


.HLL "nqp"

.namespace []
.sub "slurp"  :subid("13_1303576167.766") :outer("10_1303576167.766")
    .param pmc param_58
.annotate 'line', 93
    .lex "$filename", param_58
.annotate 'line', 94
    new $P59, "Undef"
    .lex "$handle", $P59
.annotate 'line', 95
    new $P60, "Undef"
    .lex "$contents", $P60
.annotate 'line', 94
    find_lex $P61, "$filename"
    unless_null $P61, vivify_60
    new $P61, "Undef"
  vivify_60:
    $P62 = "open"($P61, 1 :named("r"))
    store_lex "$handle", $P62
.annotate 'line', 95
    find_lex $P63, "$handle"
    unless_null $P63, vivify_61
    new $P63, "Undef"
  vivify_61:
    $P64 = $P63."readall"()
    store_lex "$contents", $P64
.annotate 'line', 96
    find_lex $P65, "$handle"
    unless_null $P65, vivify_62
    new $P65, "Undef"
  vivify_62:
    $P65."close"()
    find_lex $P66, "$contents"
    unless_null $P66, vivify_63
    new $P66, "Undef"
  vivify_63:
.annotate 'line', 93
    .return ($P66)
.end


.HLL "nqp"

.namespace []
.sub "spew"  :subid("14_1303576167.766") :outer("10_1303576167.766")
    .param pmc param_69
    .param pmc param_70
.annotate 'line', 105
    .lex "$filename", param_69
    .lex "$contents", param_70
.annotate 'line', 106
    new $P71, "Undef"
    .lex "$handle", $P71
    new $P72, "FileHandle"
    store_lex "$handle", $P72
.annotate 'line', 107
    find_lex $P73, "$handle"
    unless_null $P73, vivify_64
    new $P73, "Undef"
  vivify_64:
    find_lex $P74, "$filename"
    unless_null $P74, vivify_65
    new $P74, "Undef"
  vivify_65:
    $P73."open"($P74, "w")
.annotate 'line', 108
    find_lex $P75, "$handle"
    unless_null $P75, vivify_66
    new $P75, "Undef"
  vivify_66:
    find_lex $P76, "$contents"
    unless_null $P76, vivify_67
    new $P76, "Undef"
  vivify_67:
    $P75."print"($P76)
.annotate 'line', 109
    find_lex $P77, "$handle"
    unless_null $P77, vivify_68
    new $P77, "Undef"
  vivify_68:
    $P78 = $P77."close"()
.annotate 'line', 105
    .return ($P78)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "print"  :subid("15_1303576167.766") :outer("10_1303576167.766")
    .param pmc param_81 :slurpy
.annotate 'line', 112
    .const 'Sub' $P87 = "16_1303576167.766" 
    capture_lex $P87
    .lex "@args", param_81
.annotate 'line', 113
    find_lex $P83, "@args"
    unless_null $P83, vivify_69
    $P83 = root_new ['parrot';'ResizablePMCArray']
  vivify_69:
    defined $I84, $P83
    unless $I84, for_undef_70
    iter $P82, $P83
    new $P91, 'ExceptionHandler'
    set_label $P91, loop90_handler
    $P91."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P91
  loop90_test:
    unless $P82, loop90_done
    shift $P85, $P82
  loop90_redo:
    .const 'Sub' $P87 = "16_1303576167.766" 
    capture_lex $P87
    $P87($P85)
  loop90_next:
    goto loop90_test
  loop90_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P92, exception, 'type'
    eq $P92, .CONTROL_LOOP_NEXT, loop90_next
    eq $P92, .CONTROL_LOOP_REDO, loop90_redo
  loop90_done:
    pop_eh 
  for_undef_70:
.annotate 'line', 112
    .return (1)
.end


.HLL "nqp"

.namespace []
.sub "_block86"  :anon :subid("16_1303576167.766") :outer("15_1303576167.766")
    .param pmc param_88
.annotate 'line', 113
    .lex "$_", param_88
.annotate 'line', 114
    find_lex $P89, "$_"
    unless_null $P89, vivify_71
    new $P89, "Undef"
  vivify_71:
    print $P89
.annotate 'line', 113
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "say"  :subid("17_1303576167.766") :outer("10_1303576167.766")
    .param pmc param_95 :slurpy
.annotate 'line', 119
    .lex "@args", param_95
.annotate 'line', 120
    find_lex $P96, "@args"
    unless_null $P96, vivify_72
    $P96 = root_new ['parrot';'ResizablePMCArray']
  vivify_72:
    $P97 = "print"($P96 :flat, "\n")
.annotate 'line', 119
    .return ($P97)
.end


.HLL "nqp"

.namespace []
.sub "match"  :subid("18_1303576167.766") :outer("10_1303576167.766")
    .param pmc param_100
    .param pmc param_101
    .param pmc param_102 :optional :named("global")
    .param int has_param_102 :opt_flag
.annotate 'line', 137
    .const 'Sub' $P112 = "19_1303576167.766" 
    capture_lex $P112
    .lex "$text", param_100
    .lex "$regex", param_101
    if has_param_102, optparam_73
    new $P103, "Undef"
    set param_102, $P103
  optparam_73:
    .lex "$global", param_102
.annotate 'line', 138
    new $P104, "Undef"
    .lex "$match", $P104
    find_lex $P105, "$regex"
    unless_null $P105, vivify_74
    new $P105, "Undef"
  vivify_74:
    find_lex $P106, "$text"
    unless_null $P106, vivify_75
    new $P106, "Undef"
  vivify_75:
    $P107 = $P105."ACCEPTS"($P106)
    store_lex "$match", $P107
.annotate 'line', 139
    find_lex $P110, "$global"
    unless_null $P110, vivify_76
    new $P110, "Undef"
  vivify_76:
    if $P110, if_109
.annotate 'line', 147
    find_lex $P130, "$match"
    unless_null $P130, vivify_77
    new $P130, "Undef"
  vivify_77:
    set $P108, $P130
.annotate 'line', 139
    goto if_109_end
  if_109:
    .const 'Sub' $P112 = "19_1303576167.766" 
    capture_lex $P112
    $P129 = $P112()
    set $P108, $P129
  if_109_end:
.annotate 'line', 137
    .return ($P108)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "_block111"  :anon :subid("19_1303576167.766") :outer("18_1303576167.766")
.annotate 'line', 140
    $P113 = root_new ['parrot';'ResizablePMCArray']
    .lex "@matches", $P113
.annotate 'line', 139
    find_lex $P114, "@matches"
    unless_null $P114, vivify_78
    $P114 = root_new ['parrot';'ResizablePMCArray']
  vivify_78:
.annotate 'line', 141
    new $P126, 'ExceptionHandler'
    set_label $P126, loop125_handler
    $P126."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P126
  loop125_test:
    find_lex $P115, "$match"
    unless_null $P115, vivify_79
    new $P115, "Undef"
  vivify_79:
    unless $P115, loop125_done
  loop125_redo:
.annotate 'line', 142
    find_lex $P116, "@matches"
    unless_null $P116, vivify_80
    $P116 = root_new ['parrot';'ResizablePMCArray']
  vivify_80:
    find_lex $P117, "$match"
    unless_null $P117, vivify_81
    new $P117, "Undef"
  vivify_81:
    $P116."push"($P117)
.annotate 'line', 143
    find_lex $P118, "$match"
    unless_null $P118, vivify_82
    new $P118, "Undef"
  vivify_82:
    $P119 = $P118."CURSOR"()
    find_lex $P120, "$text"
    unless_null $P120, vivify_83
    new $P120, "Undef"
  vivify_83:
    find_lex $P121, "$regex"
    unless_null $P121, vivify_84
    new $P121, "Undef"
  vivify_84:
    find_lex $P122, "$match"
    unless_null $P122, vivify_85
    new $P122, "Undef"
  vivify_85:
    $P123 = $P122."to"()
    $P124 = $P119."parse"($P120, $P121 :named("rule"), $P123 :named("c"))
    store_lex "$match", $P124
  loop125_next:
.annotate 'line', 141
    goto loop125_test
  loop125_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P127, exception, 'type'
    eq $P127, .CONTROL_LOOP_NEXT, loop125_next
    eq $P127, .CONTROL_LOOP_REDO, loop125_redo
  loop125_done:
    pop_eh 
    find_lex $P128, "@matches"
    unless_null $P128, vivify_86
    $P128 = root_new ['parrot';'ResizablePMCArray']
  vivify_86:
.annotate 'line', 139
    .return ($P128)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "subst"  :subid("20_1303576167.766") :outer("10_1303576167.766")
    .param pmc param_133
    .param pmc param_134
    .param pmc param_135
    .param pmc param_136 :optional :named("global")
    .param int has_param_136 :opt_flag
.annotate 'line', 159
    .const 'Sub' $P163 = "21_1303576167.766" 
    capture_lex $P163
    .lex "$text", param_133
    .lex "$regex", param_134
    .lex "$repl", param_135
    if has_param_136, optparam_87
    new $P137, "Undef"
    set param_136, $P137
  optparam_87:
    .lex "$global", param_136
.annotate 'line', 160
    $P138 = root_new ['parrot';'ResizablePMCArray']
    .lex "@matches", $P138
.annotate 'line', 162
    new $P139, "Undef"
    .lex "$is_code", $P139
.annotate 'line', 163
    new $P140, "Undef"
    .lex "$offset", $P140
.annotate 'line', 164
    new $P141, "Undef"
    .lex "$result", $P141
.annotate 'line', 175
    new $P142, "Undef"
    .lex "$chars", $P142
.annotate 'line', 160
    find_lex $P145, "$global"
    unless_null $P145, vivify_88
    new $P145, "Undef"
  vivify_88:
    if $P145, if_144
.annotate 'line', 161
    find_lex $P149, "$regex"
    unless_null $P149, vivify_89
    new $P149, "Undef"
  vivify_89:
    find_lex $P150, "$text"
    unless_null $P150, vivify_90
    new $P150, "Undef"
  vivify_90:
    $P151 = $P149."ACCEPTS"($P150)
    new $P152, "ResizablePMCArray"
    push $P152, $P151
.annotate 'line', 160
    set $P143, $P152
    goto if_144_end
  if_144:
    find_lex $P146, "$text"
    unless_null $P146, vivify_91
    new $P146, "Undef"
  vivify_91:
    find_lex $P147, "$regex"
    unless_null $P147, vivify_92
    new $P147, "Undef"
  vivify_92:
    $P148 = "match"($P146, $P147, 1 :named("global"))
    set $P143, $P148
  if_144_end:
    store_lex "@matches", $P143
.annotate 'line', 162
    find_lex $P153, "$repl"
    unless_null $P153, vivify_93
    new $P153, "Undef"
  vivify_93:
    isa $I154, $P153, "Sub"
    new $P155, 'Integer'
    set $P155, $I154
    store_lex "$is_code", $P155
.annotate 'line', 163
    new $P156, "Integer"
    assign $P156, 0
    store_lex "$offset", $P156
.annotate 'line', 164
    new $P157, "StringBuilder"
    store_lex "$result", $P157
.annotate 'line', 166
    find_lex $P159, "@matches"
    unless_null $P159, vivify_94
    $P159 = root_new ['parrot';'ResizablePMCArray']
  vivify_94:
    defined $I160, $P159
    unless $I160, for_undef_95
    iter $P158, $P159
    new $P196, 'ExceptionHandler'
    set_label $P196, loop195_handler
    $P196."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P196
  loop195_test:
    unless $P158, loop195_done
    shift $P161, $P158
  loop195_redo:
    .const 'Sub' $P163 = "21_1303576167.766" 
    capture_lex $P163
    $P163($P161)
  loop195_next:
    goto loop195_test
  loop195_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P197, exception, 'type'
    eq $P197, .CONTROL_LOOP_NEXT, loop195_next
    eq $P197, .CONTROL_LOOP_REDO, loop195_redo
  loop195_done:
    pop_eh 
  for_undef_95:
.annotate 'line', 175
    find_lex $P198, "$text"
    unless_null $P198, vivify_110
    new $P198, "Undef"
  vivify_110:
    set $S199, $P198
    length $I200, $S199
    new $P201, 'Integer'
    set $P201, $I200
    store_lex "$chars", $P201
.annotate 'line', 177
    find_lex $P203, "$chars"
    unless_null $P203, vivify_111
    new $P203, "Undef"
  vivify_111:
    set $N204, $P203
    find_lex $P205, "$offset"
    unless_null $P205, vivify_112
    new $P205, "Undef"
  vivify_112:
    set $N206, $P205
    isgt $I207, $N204, $N206
    unless $I207, if_202_end
.annotate 'line', 176
    find_lex $P208, "$result"
    unless_null $P208, vivify_113
    new $P208, "Undef"
  vivify_113:
    find_lex $P209, "$text"
    unless_null $P209, vivify_114
    new $P209, "Undef"
  vivify_114:
    set $S210, $P209
    find_lex $P211, "$offset"
    unless_null $P211, vivify_115
    new $P211, "Undef"
  vivify_115:
    set $I212, $P211
    find_lex $P213, "$chars"
    unless_null $P213, vivify_116
    new $P213, "Undef"
  vivify_116:
    set $I214, $P213
    substr $S215, $S210, $I212, $I214
    push $P208, $S215
  if_202_end:
.annotate 'line', 179
    find_lex $P216, "$result"
    unless_null $P216, vivify_117
    new $P216, "Undef"
  vivify_117:
    set $S217, $P216
.annotate 'line', 159
    .return ($S217)
.end


.HLL "nqp"

.namespace []
.sub "_block162"  :anon :subid("21_1303576167.766") :outer("20_1303576167.766")
    .param pmc param_164
.annotate 'line', 166
    .lex "$match", param_164
.annotate 'line', 167
    find_lex $P167, "$match"
    unless_null $P167, vivify_96
    new $P167, "Undef"
  vivify_96:
    if $P167, if_166
    set $P165, $P167
    goto if_166_end
  if_166:
.annotate 'line', 169
    find_lex $P169, "$match"
    unless_null $P169, vivify_97
    new $P169, "Undef"
  vivify_97:
    $N170 = $P169."from"()
    find_lex $P171, "$offset"
    unless_null $P171, vivify_98
    new $P171, "Undef"
  vivify_98:
    set $N172, $P171
    isgt $I173, $N170, $N172
    unless $I173, if_168_end
.annotate 'line', 168
    find_lex $P174, "$result"
    unless_null $P174, vivify_99
    new $P174, "Undef"
  vivify_99:
    find_lex $P175, "$text"
    unless_null $P175, vivify_100
    new $P175, "Undef"
  vivify_100:
    set $S176, $P175
    find_lex $P177, "$offset"
    unless_null $P177, vivify_101
    new $P177, "Undef"
  vivify_101:
    set $I178, $P177
    find_lex $P179, "$match"
    unless_null $P179, vivify_102
    new $P179, "Undef"
  vivify_102:
    $P180 = $P179."from"()
    find_lex $P181, "$offset"
    unless_null $P181, vivify_103
    new $P181, "Undef"
  vivify_103:
    sub $P182, $P180, $P181
    set $I183, $P182
    substr $S184, $S176, $I178, $I183
    push $P174, $S184
  if_168_end:
.annotate 'line', 170
    find_lex $P185, "$result"
    unless_null $P185, vivify_104
    new $P185, "Undef"
  vivify_104:
    find_lex $P188, "$is_code"
    unless_null $P188, vivify_105
    new $P188, "Undef"
  vivify_105:
    if $P188, if_187
    find_lex $P192, "$repl"
    unless_null $P192, vivify_106
    new $P192, "Undef"
  vivify_106:
    set $P186, $P192
    goto if_187_end
  if_187:
    find_lex $P189, "$repl"
    unless_null $P189, vivify_107
    new $P189, "Undef"
  vivify_107:
    find_lex $P190, "$match"
    unless_null $P190, vivify_108
    new $P190, "Undef"
  vivify_108:
    $P191 = $P189($P190)
    set $P186, $P191
  if_187_end:
    push $P185, $P186
.annotate 'line', 171
    find_lex $P193, "$match"
    unless_null $P193, vivify_109
    new $P193, "Undef"
  vivify_109:
    $P194 = $P193."to"()
    store_lex "$offset", $P194
.annotate 'line', 167
    set $P165, $P194
  if_166_end:
.annotate 'line', 166
    .return ($P165)
.end


.HLL "nqp"

.namespace []
.sub "plan"  :subid("22_1303576167.766") :outer("10_1303576167.766")
    .param pmc param_221
.annotate 'line', 187
    .lex "$quantity", param_221
.annotate 'line', 188
    new $P222, 'String'
    set $P222, "1.."
    find_lex $P223, "$quantity"
    unless_null $P223, vivify_118
    new $P223, "Undef"
  vivify_118:
    concat $P224, $P222, $P223
    $P225 = "say"($P224)
.annotate 'line', 187
    .return ($P225)
.end


.HLL "nqp"

.namespace []
.sub "ok"  :subid("23_1303576167.766") :outer("10_1303576167.766")
    .param pmc param_228
    .param pmc param_229 :optional
    .param int has_param_229 :opt_flag
.annotate 'line', 191
    .lex "$condition", param_228
    if has_param_229, optparam_119
    new $P230, "Undef"
    set param_229, $P230
  optparam_119:
    .lex "$desc", param_229
.annotate 'line', 192
    find_lex $P231, "$test_counter"
    unless_null $P231, vivify_120
    new $P231, "Undef"
  vivify_120:
    add $P232, $P231, 1
    store_lex "$test_counter", $P232
.annotate 'line', 194
    find_lex $P234, "$condition"
    unless_null $P234, vivify_121
    new $P234, "Undef"
  vivify_121:
    if $P234, unless_233_end
.annotate 'line', 195
    "print"("not ")
  unless_233_end:
.annotate 'line', 197
    new $P235, 'String'
    set $P235, "ok "
    find_lex $P236, "$test_counter"
    unless_null $P236, vivify_122
    new $P236, "Undef"
  vivify_122:
    concat $P237, $P235, $P236
    "print"($P237)
.annotate 'line', 198
    find_lex $P239, "$desc"
    unless_null $P239, vivify_123
    new $P239, "Undef"
  vivify_123:
    unless $P239, if_238_end
.annotate 'line', 199
    new $P240, 'String'
    set $P240, " - "
    find_lex $P241, "$desc"
    unless_null $P241, vivify_124
    new $P241, "Undef"
  vivify_124:
    concat $P242, $P240, $P241
    "print"($P242)
  if_238_end:
.annotate 'line', 201
    "print"("\n")
.annotate 'line', 203
    find_lex $P245, "$condition"
    unless_null $P245, vivify_125
    new $P245, "Undef"
  vivify_125:
    if $P245, if_244
    new $P247, "Integer"
    assign $P247, 0
    set $P243, $P247
    goto if_244_end
  if_244:
    new $P246, "Integer"
    assign $P246, 1
    set $P243, $P246
  if_244_end:
.annotate 'line', 191
    .return ($P243)
.end


.HLL "nqp"

.namespace []
.sub "skip"  :subid("24_1303576167.766") :outer("10_1303576167.766")
    .param pmc param_250
.annotate 'line', 206
    .lex "$desc", param_250
.annotate 'line', 207
    find_lex $P251, "$test_counter"
    unless_null $P251, vivify_126
    new $P251, "Undef"
  vivify_126:
    add $P252, $P251, 1
    store_lex "$test_counter", $P252
.annotate 'line', 208
    new $P253, 'String'
    set $P253, "ok "
    find_lex $P254, "$test_counter"
    unless_null $P254, vivify_127
    new $P254, "Undef"
  vivify_127:
    concat $P255, $P253, $P254
    concat $P256, $P255, " # SKIP "
    find_lex $P257, "$desc"
    unless_null $P257, vivify_128
    new $P257, "Undef"
  vivify_128:
    concat $P258, $P256, $P257
    concat $P259, $P258, "\n"
    $P260 = "say"($P259)
.annotate 'line', 206
    .return ($P260)
.end


.HLL "nqp"

.namespace []
.sub "_block262"  :anon :subid("25_1303576167.766") :outer("10_1303576167.766")
.annotate 'line', 9
    .const 'Sub' $P267 = "26_1303576167.766" 
    capture_lex $P267
    .lex "$?PACKAGE", $P264
    .lex "$?CLASS", $P265
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post129") :outer("25_1303576167.766")
.annotate 'line', 9
    .const 'Sub' $P263 = "25_1303576167.766" 
    .local pmc block
    set block, $P263
    .const 'Sub' $P267 = "26_1303576167.766" 
    capture_lex $P267
    $P267()
.end


.HLL "nqp"

.namespace []
.sub "_block266"  :anon :subid("26_1303576167.766") :outer("25_1303576167.766")
.annotate 'line', 9
    nqp_get_sc_object $P268, "1303576167.137", 1
    .local pmc type_obj
    set type_obj, $P268
    get_how $P269, type_obj
    $P270 = $P269."compose"(type_obj)
    .return ($P270)
.end


.HLL "nqp"

.namespace []
.sub "_block271"  :anon :subid("27_1303576167.766") :outer("10_1303576167.766")
.annotate 'line', 11
    .const 'Sub' $P276 = "28_1303576167.766" 
    capture_lex $P276
    .lex "$?PACKAGE", $P273
    .lex "$?CLASS", $P274
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post130") :outer("27_1303576167.766")
.annotate 'line', 11
    .const 'Sub' $P272 = "27_1303576167.766" 
    .local pmc block
    set block, $P272
    .const 'Sub' $P276 = "28_1303576167.766" 
    capture_lex $P276
    $P276()
.end


.HLL "nqp"

.namespace []
.sub "_block275"  :anon :subid("28_1303576167.766") :outer("27_1303576167.766")
.annotate 'line', 11
    nqp_get_sc_object $P277, "1303576167.137", 2
    .local pmc type_obj
    set type_obj, $P277
    get_how $P278, type_obj
    $P279 = $P278."compose"(type_obj)
    .return ($P279)
.end


.HLL "nqp"

.namespace []
.sub "_block280"  :anon :subid("29_1303576167.766") :outer("10_1303576167.766")
.annotate 'line', 13
    .const 'Sub' $P285 = "30_1303576167.766" 
    capture_lex $P285
    .lex "$?PACKAGE", $P282
    .lex "$?CLASS", $P283
    .return ()
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post131") :outer("29_1303576167.766")
.annotate 'line', 13
    .const 'Sub' $P281 = "29_1303576167.766" 
    .local pmc block
    set block, $P281
    .const 'Sub' $P285 = "30_1303576167.766" 
    capture_lex $P285
    $P285()
.end


.HLL "nqp"

.namespace []
.sub "_block284"  :anon :subid("30_1303576167.766") :outer("29_1303576167.766")
.annotate 'line', 13
    nqp_get_sc_object $P286, "1303576167.137", 3
    .local pmc type_obj
    set type_obj, $P286
    get_how $P287, type_obj
    $P288 = $P287."compose"(type_obj)
    .return ($P288)
.end


.HLL "nqp"

.namespace []
.sub "_block289"  :anon :subid("31_1303576167.766") :outer("10_1303576167.766")
.annotate 'line', 16
    .const 'Sub' $P412 = "44_1303576167.766" 
    capture_lex $P412
    .const 'Sub' $P402 = "43_1303576167.766" 
    capture_lex $P402
    .const 'Sub' $P390 = "42_1303576167.766" 
    capture_lex $P390
    .const 'Sub' $P386 = "41_1303576167.766" 
    capture_lex $P386
    .const 'Sub' $P375 = "40_1303576167.766" 
    capture_lex $P375
    .const 'Sub' $P372 = "39_1303576167.766" 
    capture_lex $P372
    .const 'Sub' $P366 = "38_1303576167.766" 
    capture_lex $P366
    .const 'Sub' $P328 = "36_1303576167.766" 
    capture_lex $P328
    .const 'Sub' $P307 = "34_1303576167.766" 
    capture_lex $P307
    .const 'Sub' $P297 = "33_1303576167.766" 
    capture_lex $P297
    .const 'Sub' $P293 = "32_1303576167.766" 
    capture_lex $P293
    .lex "$?PACKAGE", $P291
    .lex "$?CLASS", $P292
.annotate 'line', 57
    .const 'Sub' $P402 = "43_1303576167.766" 
    newclosure $P410, $P402
.annotate 'line', 16
    .return ($P410)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post132") :outer("31_1303576167.766")
.annotate 'line', 16
    .const 'Sub' $P290 = "31_1303576167.766" 
    .local pmc block
    set block, $P290
    .const 'Sub' $P412 = "44_1303576167.766" 
    capture_lex $P412
    $P412()
.end


.HLL "nqp"

.namespace []
.sub "_block411"  :anon :subid("44_1303576167.766") :outer("31_1303576167.766")
.annotate 'line', 16
    .const 'Sub' $P428 = "39_1303576167.766" 
    capture_lex $P428
    nqp_get_sc_object $P413, "1303576167.137", 4
    .local pmc type_obj
    set type_obj, $P413
    get_how $P414, type_obj
    .const 'Sub' $P415 = "32_1303576167.766" 
    $P414."add_method"(type_obj, "CREATE", $P415)
    get_how $P416, type_obj
    .const 'Sub' $P417 = "33_1303576167.766" 
    $P416."add_method"(type_obj, "bless", $P417)
    get_how $P418, type_obj
    .const 'Sub' $P419 = "34_1303576167.766" 
    $P418."add_method"(type_obj, "BUILDALL", $P419)
    get_how $P420, type_obj
    .const 'Sub' $P421 = "36_1303576167.766" 
    $P420."add_method"(type_obj, "BUILD_MAGIC", $P421)
    get_how $P422, type_obj
    .const 'Sub' $P423 = "38_1303576167.766" 
    $P422."add_method"(type_obj, "new", $P423)
    get_how $P424, type_obj
    .const 'Sub' $P425 = "39_1303576167.766" 
    new $P426, "ResizablePMCArray"
    set_dispatchees $P425, $P426
    $P424."add_method"(type_obj, "Str", $P425)
    get_how $P427, type_obj
    .const 'Sub' $P428 = "39_1303576167.766" 
    newclosure $P431, $P428
    $P427."add_parrot_vtable_mapping"(type_obj, "get_string", $P431)
    get_how $P432, type_obj
    .const 'Sub' $P433 = "40_1303576167.766" 
    $P432."add_multi_method"(type_obj, "Str", $P433)
    get_how $P434, type_obj
    .const 'Sub' $P435 = "41_1303576167.766" 
    new $P436, "ResizablePMCArray"
    set_dispatchees $P435, $P436
    $P434."add_method"(type_obj, "ACCEPTS", $P435)
    get_how $P437, type_obj
    .const 'Sub' $P438 = "42_1303576167.766" 
    $P437."add_multi_method"(type_obj, "ACCEPTS", $P438)
    get_how $P439, type_obj
    .const 'Sub' $P440 = "43_1303576167.766" 
    $P439."add_method"(type_obj, "isa", $P440)
    get_how $P441, type_obj
    nqp_get_sc_object $P442, "1303576167.137", 4
    $P441."set_default_parent"(type_obj, $P442)
    get_how $P443, type_obj
    $P444 = $P443."compose"(type_obj)
    .return ($P444)
.end


.HLL "nqp"

.namespace []
.sub "Str" :instanceof("DispatcherSub") :subid("39_1303576167.766") :outer("44_1303576167.766")
    .param pmc param_429
.annotate 'line', 16
    .lex "self", param_429
    multi_dispatch_over_lexical_candidates $P430
    .return ($P430)
.end


.HLL "nqp"

.namespace []
.sub "CREATE"  :subid("32_1303576167.766") :outer("31_1303576167.766")
    .param pmc param_294
.annotate 'line', 17
    .lex "self", param_294
.annotate 'line', 18
    find_lex $P295, "self"
    repr_instance_of $P296, $P295
.annotate 'line', 17
    .return ($P296)
.end


.HLL "nqp"

.namespace []
.sub "bless"  :subid("33_1303576167.766") :outer("31_1303576167.766")
    .param pmc param_298
    .param pmc param_300 :slurpy :named
.annotate 'line', 21
    .lex "$self", param_298
    find_lex $P299, "$self"
    .lex "self", $P299
    .lex "%attributes", param_300
.annotate 'line', 22
    new $P301, "Undef"
    .lex "$instance", $P301
    find_lex $P302, "self"
    $P303 = $P302."CREATE"()
    store_lex "$instance", $P303
.annotate 'line', 23
    find_lex $P304, "$instance"
    unless_null $P304, vivify_133
    new $P304, "Undef"
  vivify_133:
    find_lex $P305, "%attributes"
    unless_null $P305, vivify_134
    $P305 = root_new ['parrot';'Hash']
  vivify_134:
    $P304."BUILDALL"($P305 :flat)
    find_lex $P306, "$instance"
    unless_null $P306, vivify_135
    new $P306, "Undef"
  vivify_135:
.annotate 'line', 21
    .return ($P306)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "BUILDALL"  :subid("34_1303576167.766") :outer("31_1303576167.766")
    .param pmc param_308
    .param pmc param_310 :slurpy :named
.annotate 'line', 27
    .const 'Sub' $P319 = "35_1303576167.766" 
    capture_lex $P319
    .lex "$self", param_308
    find_lex $P309, "$self"
    .lex "self", $P309
    .lex "%attributes", param_310
.annotate 'line', 28
    find_lex $P312, "$self"
    unless_null $P312, vivify_136
    new $P312, "Undef"
  vivify_136:
    get_how $P313, $P312
    find_lex $P314, "$self"
    unless_null $P314, vivify_137
    new $P314, "Undef"
  vivify_137:
    $P315 = $P313."parents"($P314)
    defined $I316, $P315
    unless $I316, for_undef_138
    iter $P311, $P315
    new $P326, 'ExceptionHandler'
    set_label $P326, loop325_handler
    $P326."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P326
  loop325_test:
    unless $P311, loop325_done
    shift $P317, $P311
  loop325_redo:
    .const 'Sub' $P319 = "35_1303576167.766" 
    capture_lex $P319
    $P319($P317)
  loop325_next:
    goto loop325_test
  loop325_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P327, exception, 'type'
    eq $P327, .CONTROL_LOOP_NEXT, loop325_next
    eq $P327, .CONTROL_LOOP_REDO, loop325_redo
  loop325_done:
    pop_eh 
  for_undef_138:
.annotate 'line', 27
    .return ($P311)
.end


.HLL "nqp"

.namespace []
.sub "_block318"  :anon :subid("35_1303576167.766") :outer("34_1303576167.766")
    .param pmc param_320
.annotate 'line', 28
    .lex "$class", param_320
.annotate 'line', 29
    find_lex $P321, "$self"
    unless_null $P321, vivify_139
    new $P321, "Undef"
  vivify_139:
    find_lex $P322, "$class"
    unless_null $P322, vivify_140
    new $P322, "Undef"
  vivify_140:
    find_lex $P323, "%attributes"
    unless_null $P323, vivify_141
    $P323 = root_new ['parrot';'Hash']
  vivify_141:
    $P324 = $P321."BUILD_MAGIC"($P322, $P323 :flat)
.annotate 'line', 28
    .return ($P324)
.end


.HLL "nqp"

.namespace []
.include "except_types.pasm"
.sub "BUILD_MAGIC"  :subid("36_1303576167.766") :outer("31_1303576167.766")
    .param pmc param_329
    .param pmc param_331
    .param pmc param_332 :slurpy :named
.annotate 'line', 33
    .const 'Sub' $P341 = "37_1303576167.766" 
    capture_lex $P341
    .lex "$self", param_329
    find_lex $P330, "$self"
    .lex "self", $P330
    .lex "$type", param_331
    .lex "%attributes", param_332
.annotate 'line', 34
    find_lex $P334, "$type"
    unless_null $P334, vivify_142
    new $P334, "Undef"
  vivify_142:
    get_how $P335, $P334
    find_lex $P336, "$type"
    unless_null $P336, vivify_143
    new $P336, "Undef"
  vivify_143:
    $P337 = $P335."attributes"($P336, 1 :named("local"))
    defined $I338, $P337
    unless $I338, for_undef_144
    iter $P333, $P337
    new $P364, 'ExceptionHandler'
    set_label $P364, loop363_handler
    $P364."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P364
  loop363_test:
    unless $P333, loop363_done
    shift $P339, $P333
  loop363_redo:
    .const 'Sub' $P341 = "37_1303576167.766" 
    capture_lex $P341
    $P341($P339)
  loop363_next:
    goto loop363_test
  loop363_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P365, exception, 'type'
    eq $P365, .CONTROL_LOOP_NEXT, loop363_next
    eq $P365, .CONTROL_LOOP_REDO, loop363_redo
  loop363_done:
    pop_eh 
  for_undef_144:
.annotate 'line', 33
    .return ($P333)
.end


.HLL "nqp"

.namespace []
.sub "_block340"  :anon :subid("37_1303576167.766") :outer("36_1303576167.766")
    .param pmc param_344
.annotate 'line', 35
    new $P342, "Undef"
    .lex "$name", $P342
.annotate 'line', 36
    new $P343, "Undef"
    .lex "$shortname", $P343
    .lex "$_", param_344
.annotate 'line', 35
    find_lex $P345, "$_"
    unless_null $P345, vivify_145
    new $P345, "Undef"
  vivify_145:
    $P346 = $P345."name"()
    store_lex "$name", $P346
.annotate 'line', 36
    find_lex $P347, "$name"
    unless_null $P347, vivify_146
    new $P347, "Undef"
  vivify_146:
    set $S348, $P347
    substr $S349, $S348, 2
    new $P350, 'String'
    set $P350, $S349
    store_lex "$shortname", $P350
.annotate 'line', 37
    find_lex $P354, "$shortname"
    unless_null $P354, vivify_147
    new $P354, "Undef"
  vivify_147:
    find_lex $P353, "%attributes"
    unless_null $P353, vivify_148
    $P353 = root_new ['parrot';'Hash']
  vivify_148:
    exists $I355, $P353[$P354]
    if $I355, if_352
    new $P351, 'Integer'
    set $P351, $I355
    goto if_352_end
  if_352:
.annotate 'line', 38
    find_lex $P356, "$self"
    unless_null $P356, vivify_149
    new $P356, "Undef"
  vivify_149:
    find_lex $P357, "$type"
    unless_null $P357, vivify_150
    new $P357, "Undef"
  vivify_150:
    find_lex $P358, "$name"
    unless_null $P358, vivify_151
    new $P358, "Undef"
  vivify_151:
    set $S359, $P358
    find_lex $P360, "$shortname"
    unless_null $P360, vivify_152
    new $P360, "Undef"
  vivify_152:
    find_lex $P361, "%attributes"
    unless_null $P361, vivify_153
    $P361 = root_new ['parrot';'Hash']
  vivify_153:
    set $P362, $P361[$P360]
    unless_null $P362, vivify_154
    new $P362, "Undef"
  vivify_154:
    setattribute $P356, $P357, $S359, $P362
  if_352_end:
.annotate 'line', 34
    .return ($P351)
.end


.HLL "nqp"

.namespace []
.sub "new"  :subid("38_1303576167.766") :outer("31_1303576167.766")
    .param pmc param_367
    .param pmc param_368 :slurpy :named
.annotate 'line', 43
    .lex "self", param_367
    .lex "%attributes", param_368
.annotate 'line', 44
    find_lex $P369, "self"
    find_lex $P370, "%attributes"
    unless_null $P370, vivify_155
    $P370 = root_new ['parrot';'Hash']
  vivify_155:
    $P371 = $P369."bless"($P370 :flat)
.annotate 'line', 43
    .return ($P371)
.end


.HLL "nqp"

.namespace []
.sub "Str" :instanceof("DispatcherSub") :subid("39_1303576167.766") :outer("31_1303576167.766")
    .param pmc param_373
.annotate 'line', 43
    .lex "self", param_373
    multi_dispatch_over_lexical_candidates $P374
    .return ($P374)
.end


.HLL "nqp"

.namespace []
.sub "Str"  :subid("40_1303576167.766") :outer("31_1303576167.766")
    .param pmc param_376
.annotate 'line', 48
    .lex "$self", param_376
    find_lex $P377, "$self"
    .lex "self", $P377
.annotate 'line', 49
    find_lex $P378, "self"
    get_how $P379, $P378
    find_lex $P380, "self"
    $P381 = $P379."name"($P380)
    concat $P382, $P381, "()"
.annotate 'line', 48
    .return ($P382)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post156") :outer("40_1303576167.766")
.annotate 'line', 48
    .const 'Sub' $P375 = "40_1303576167.766" 
    .local pmc block
    set block, $P375
    get_hll_global $P383, "Mu"
    new $P384, "ResizablePMCArray"
    push $P384, $P383
    new $P385, "ResizablePMCArray"
    push $P385, 2
    set_sub_multisig block, $P384, $P385
.end


.HLL "nqp"

.namespace []
.sub "ACCEPTS" :instanceof("DispatcherSub") :subid("41_1303576167.766") :outer("31_1303576167.766")
    .param pmc param_387
    .param pmc param_388
.annotate 'line', 48
    .lex "self", param_387
.annotate 'line', 52
    .lex "$topic", param_388
.annotate 'line', 48
    multi_dispatch_over_lexical_candidates $P389
    .return ($P389)
.end


.HLL "nqp"

.namespace []
.sub "ACCEPTS"  :subid("42_1303576167.766") :outer("31_1303576167.766")
    .param pmc param_391
    .param pmc param_393
.annotate 'line', 53
    .lex "$self", param_391
    find_lex $P392, "$self"
    .lex "self", $P392
    .lex "$topic", param_393
.annotate 'line', 54
    find_lex $P394, "$topic"
    unless_null $P394, vivify_158
    new $P394, "Undef"
  vivify_158:
    find_lex $P395, "self"
    get_what $P396, $P395
    type_check $I397, $P394, $P396
.annotate 'line', 53
    .return ($I397)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post157") :outer("42_1303576167.766")
.annotate 'line', 53
    .const 'Sub' $P390 = "42_1303576167.766" 
    .local pmc block
    set block, $P390
    get_hll_global $P398, "NQPMu"
    null $P399
    new $P400, "ResizablePMCArray"
    push $P400, $P398
    push $P400, $P399
    new $P401, "ResizablePMCArray"
    push $P401, 2
    push $P401, 0
    set_sub_multisig block, $P400, $P401
.end


.HLL "nqp"

.namespace []
.sub "isa"  :subid("43_1303576167.766") :outer("31_1303576167.766")
    .param pmc param_403
    .param pmc param_404
.annotate 'line', 57
    .lex "self", param_403
    .lex "$type", param_404
.annotate 'line', 58
    find_lex $P405, "self"
    get_how $P406, $P405
    find_lex $P407, "self"
    find_lex $P408, "$type"
    unless_null $P408, vivify_159
    new $P408, "Undef"
  vivify_159:
    $P409 = $P406."isa"($P407, $P408)
.annotate 'line', 57
    .return ($P409)
.end


.HLL "nqp"

.namespace []
.sub "_block458" :load :anon :subid("45_1303576167.766")
.annotate 'line', 1
    .const 'Sub' $P460 = "10_1303576167.766" 
    $P461 = $P460()
    .return ($P461)
.end

