.include 'cclass.pasm'
.include 'except_severity.pasm'
.include 'except_types.pasm'
.include 'iglobals.pasm'
.include 'interpinfo.pasm'
.include 'iterator.pasm'
.include 'sysinfo.pasm'
.include 'datatypes.pasm'

.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.loadlib "trans_ops"

.loadlib "io_ops"

.namespace []
.sub "_block1000"  :anon :subid("10_1309859073.622")
    .param pmc param_1002 :slurpy
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 0
    .const 'Sub' $P2345 = "270_1309859073.622" 
    capture_lex $P2345
    .const 'Sub' $P2215 = "251_1309859073.622" 
    capture_lex $P2215
    .const 'Sub' $P2183 = "244_1309859073.622" 
    capture_lex $P2183
    .const 'Sub' $P1582 = "167_1309859073.622" 
    capture_lex $P1582
    .const 'Sub' $P1325 = "121_1309859073.622" 
    capture_lex $P1325
    .const 'Sub' $P1014 = "13_1309859073.622" 
    capture_lex $P1014
    .const 'Sub' $P1007 = "11_1309859073.622" 
    capture_lex $P1007
.annotate 'line', 1
    .lex "@ARGS", param_1002
    .lex "GLOBALish", $P1003
    .lex "$?PACKAGE", $P1004
.annotate 'line', 1691
    new $P100, "Undef"
    set $P1005, $P100
    .lex "$compiler", $P1005
.annotate 'line', 1065
    .const 'Sub' $P1007 = "11_1309859073.622" 
    capture_lex $P1007
    $P1007()
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 7
    .const 'Sub' $P1014 = "13_1309859073.622" 
    capture_lex $P1014
    $P1014()
.annotate 'line', 865
    .const 'Sub' $P1325 = "121_1309859073.622" 
    capture_lex $P1325
    $P1325()
.annotate 'line', 1079
    .const 'Sub' $P1582 = "167_1309859073.622" 
    capture_lex $P1582
    $P1582()
.annotate 'line', 1691
    get_hll_global $P103, "GLOBAL"
    nqp_get_package_through_who $P104, $P103, "HLL"
    get_who $P105, $P104
    set $P106, $P105["Compiler"]
    $P107 = $P106."new"()
    store_lex "$compiler", $P107
.annotate 'line', 1692
    find_lex $P103, "$compiler"
    unless_null $P103, vivify_1098
    new $P103, "Undef"
  vivify_1098:
    $P103."language"("parrot")
.annotate 'line', 1785
    .const 'Sub' $P2183 = "244_1309859073.622" 
    capture_lex $P2183
    $P2183()
.annotate 'line', 1818
    .const 'Sub' $P2215 = "251_1309859073.622" 
    capture_lex $P2215
    $P2215()
.annotate 'line', 1996
    .const 'Sub' $P2345 = "270_1309859073.622" 
    capture_lex $P2345
    $P2345()
.annotate 'line', 1
    find_lex $P104, "@ARGS"
    if $P104, if_2424
    set $P103, $P104
    goto if_2424_end
  if_2424:
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P105, "ModuleLoader"
    getinterp $P106
    set $P107, $P106["context"]
    $P108 = $P105."set_mainline_module"($P107)
    set $P103, $P108
  if_2424_end:
    .return ($P103)
.annotate 'line', 1065
    .const 'Sub' $P2426 = "288_1309859073.622" 
.annotate 'line', 1
    .return ($P2426)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post289") :outer("10_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 0
    .const 'Sub' $P1001 = "10_1309859073.622" 
    .local pmc block
    set block, $P1001
    nqp_get_sc $P110, "1309859065.392"
    isnull $I100, $P110
    if $I100, if_2428
    goto if_2428_end
  if_2428:
    nqp_dynop_setup 
    getinterp $P111
    get_class $P112, "LexPad"
    get_class $P113, "NQPLexPad"
    $P111."hll_map"($P112, $P113)
    nqp_create_sc $P114, "1309859065.392"
    .local pmc cur_sc
    set cur_sc, $P114
    nqp_get_sc_object $P115, "__6MODEL_CORE__", 0
    $P116 = $P115."new_type"("GLOBALish" :named("name"))
    nqp_set_sc_for_object $P116, cur_sc
    nqp_set_sc_object "1309859065.392", 0, $P116
    .const 'Sub' $P2429 = "10_1309859073.622" 
    $P115 = $P2429."get_lexinfo"()
    nqp_get_sc_object $P116, "1309859065.392", 0
    $P115."set_static_lexpad_value"("GLOBALish", $P116)
    .const 'Sub' $P2430 = "10_1309859073.622" 
    $P117 = $P2430."get_lexinfo"()
    $P117."finish_static_lexpad"()
    .const 'Sub' $P2431 = "10_1309859073.622" 
    $P115 = $P2431."get_lexinfo"()
    nqp_get_sc_object $P116, "1309859065.392", 0
    $P115."set_static_lexpad_value"("$?PACKAGE", $P116)
    .const 'Sub' $P2432 = "10_1309859073.622" 
    $P117 = $P2432."get_lexinfo"()
    $P117."finish_static_lexpad"()
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P115, "ModuleLoader"
    $P116 = $P115."load_setting"("NQPCORE")
    block."set_outer_ctx"($P116)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P115, "ModuleLoader"
    nqp_get_sc_object $P116, "1309859065.392", 0
    $P115."load_module"("NQPRegex", $P116)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P115, "ModuleLoader"
    nqp_get_sc_object $P116, "1309859065.392", 0
    $P115."load_module"("NQPRegex", $P116)
    nqp_get_sc_object $P115, "1309859056.502", 41
    $P116 = $P115."new_type"("HLL::Grammar" :named("name"))
    nqp_set_sc_for_object $P116, cur_sc
    nqp_set_sc_object "1309859065.392", 1, $P116
    nqp_get_sc_object $P115, "1309859065.392", 1
    nqp_get_sc_object $P116, "1309859065.392", 0
    nqp_get_package_through_who $P117, $P116, "HLL"
    get_who $P118, $P117
    set $P118["Grammar"], $P115
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2433 = "14_1309859073.622" 
    $P116."add_method"($P117, "ws", $P2433)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2434 = "15_1309859073.622" 
    $P116."add_method"($P117, "!PREFIX__ws", $P2434)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2435 = "16_1309859073.622" 
    $P116."add_method"($P117, "termish", $P2435)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2436 = "17_1309859073.622" 
    $P116."add_method"($P117, "!PREFIX__termish", $P2436)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2437 = "18_1309859073.622" 
    $P116."add_method"($P117, "term", $P2437)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2438 = "19_1309859073.622" 
    $P116."add_method"($P117, "!PREFIX__term", $P2438)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2439 = "20_1309859073.622" 
    $P116."add_method"($P117, "infix", $P2439)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2440 = "21_1309859073.622" 
    $P116."add_method"($P117, "!PREFIX__infix", $P2440)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2441 = "22_1309859073.622" 
    $P116."add_method"($P117, "prefix", $P2441)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2442 = "23_1309859073.622" 
    $P116."add_method"($P117, "!PREFIX__prefix", $P2442)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2443 = "24_1309859073.622" 
    $P116."add_method"($P117, "postfix", $P2443)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2444 = "25_1309859073.622" 
    $P116."add_method"($P117, "!PREFIX__postfix", $P2444)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2445 = "26_1309859073.622" 
    $P116."add_method"($P117, "circumfix", $P2445)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2446 = "27_1309859073.622" 
    $P116."add_method"($P117, "!PREFIX__circumfix", $P2446)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2447 = "28_1309859073.622" 
    $P116."add_method"($P117, "postcircumfix", $P2447)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2448 = "29_1309859073.622" 
    $P116."add_method"($P117, "!PREFIX__postcircumfix", $P2448)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2449 = "30_1309859073.622" 
    $P116."add_method"($P117, "term:sym<circumfix>", $P2449)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2450 = "31_1309859073.622" 
    $P116."add_method"($P117, "!PREFIX__term:sym<circumfix>", $P2450)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2451 = "32_1309859073.622" 
    $P116."add_method"($P117, "infixish", $P2451)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2452 = "33_1309859073.622" 
    $P116."add_method"($P117, "!PREFIX__infixish", $P2452)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2453 = "34_1309859073.622" 
    $P116."add_method"($P117, "prefixish", $P2453)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2454 = "35_1309859073.622" 
    $P116."add_method"($P117, "!PREFIX__prefixish", $P2454)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2455 = "36_1309859073.622" 
    $P116."add_method"($P117, "postfixish", $P2455)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2456 = "37_1309859073.622" 
    $P116."add_method"($P117, "!PREFIX__postfixish", $P2456)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2457 = "38_1309859073.622" 
    $P116."add_method"($P117, "nullterm", $P2457)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2458 = "39_1309859073.622" 
    $P116."add_method"($P117, "!PREFIX__nullterm", $P2458)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2459 = "40_1309859073.622" 
    $P116."add_method"($P117, "nullterm_alt", $P2459)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2460 = "41_1309859073.622" 
    $P116."add_method"($P117, "!PREFIX__nullterm_alt", $P2460)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2461 = "42_1309859073.622" 
    $P116."add_method"($P117, "nulltermish", $P2461)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2462 = "43_1309859073.622" 
    $P116."add_method"($P117, "quote_delimited", $P2462)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2463 = "44_1309859073.622" 
    $P116."add_method"($P117, "!PREFIX__quote_delimited", $P2463)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2464 = "45_1309859073.622" 
    $P116."add_method"($P117, "quote_atom", $P2464)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2465 = "46_1309859073.622" 
    $P116."add_method"($P117, "!PREFIX__quote_atom", $P2465)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2466 = "47_1309859073.622" 
    $P116."add_method"($P117, "decint", $P2466)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2467 = "48_1309859073.622" 
    $P116."add_method"($P117, "!PREFIX__decint", $P2467)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2468 = "49_1309859073.622" 
    $P116."add_method"($P117, "decints", $P2468)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2469 = "50_1309859073.622" 
    $P116."add_method"($P117, "!PREFIX__decints", $P2469)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2470 = "51_1309859073.622" 
    $P116."add_method"($P117, "hexint", $P2470)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2471 = "52_1309859073.622" 
    $P116."add_method"($P117, "!PREFIX__hexint", $P2471)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2472 = "53_1309859073.622" 
    $P116."add_method"($P117, "hexints", $P2472)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2473 = "54_1309859073.622" 
    $P116."add_method"($P117, "!PREFIX__hexints", $P2473)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2474 = "55_1309859073.622" 
    $P116."add_method"($P117, "octint", $P2474)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2475 = "56_1309859073.622" 
    $P116."add_method"($P117, "!PREFIX__octint", $P2475)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2476 = "57_1309859073.622" 
    $P116."add_method"($P117, "octints", $P2476)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2477 = "58_1309859073.622" 
    $P116."add_method"($P117, "!PREFIX__octints", $P2477)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2478 = "59_1309859073.622" 
    $P116."add_method"($P117, "binint", $P2478)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2479 = "60_1309859073.622" 
    $P116."add_method"($P117, "!PREFIX__binint", $P2479)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2480 = "61_1309859073.622" 
    $P116."add_method"($P117, "binints", $P2480)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2481 = "62_1309859073.622" 
    $P116."add_method"($P117, "!PREFIX__binints", $P2481)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2482 = "63_1309859073.622" 
    $P116."add_method"($P117, "integer", $P2482)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2483 = "64_1309859073.622" 
    $P116."add_method"($P117, "!PREFIX__integer", $P2483)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2484 = "65_1309859073.622" 
    $P116."add_method"($P117, "dec_number", $P2484)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2485 = "66_1309859073.622" 
    $P116."add_method"($P117, "!PREFIX__dec_number", $P2485)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2486 = "67_1309859073.622" 
    $P116."add_method"($P117, "escale", $P2486)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2487 = "68_1309859073.622" 
    $P116."add_method"($P117, "!PREFIX__escale", $P2487)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2488 = "69_1309859073.622" 
    $P116."add_method"($P117, "quote_escape", $P2488)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2489 = "70_1309859073.622" 
    $P116."add_method"($P117, "!PREFIX__quote_escape", $P2489)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2490 = "71_1309859073.622" 
    $P116."add_method"($P117, "quote_escape:sym<backslash>", $P2490)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2491 = "72_1309859073.622" 
    $P116."add_method"($P117, "!PREFIX__quote_escape:sym<backslash>", $P2491)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2492 = "73_1309859073.622" 
    $P116."add_method"($P117, "quote_escape:sym<stopper>", $P2492)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2493 = "74_1309859073.622" 
    $P116."add_method"($P117, "!PREFIX__quote_escape:sym<stopper>", $P2493)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2494 = "75_1309859073.622" 
    $P116."add_method"($P117, "quote_escape:sym<bs>", $P2494)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2495 = "76_1309859073.622" 
    $P116."add_method"($P117, "!PREFIX__quote_escape:sym<bs>", $P2495)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2496 = "77_1309859073.622" 
    $P116."add_method"($P117, "quote_escape:sym<nl>", $P2496)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2497 = "78_1309859073.622" 
    $P116."add_method"($P117, "!PREFIX__quote_escape:sym<nl>", $P2497)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2498 = "79_1309859073.622" 
    $P116."add_method"($P117, "quote_escape:sym<cr>", $P2498)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2499 = "80_1309859073.622" 
    $P116."add_method"($P117, "!PREFIX__quote_escape:sym<cr>", $P2499)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2500 = "81_1309859073.622" 
    $P116."add_method"($P117, "quote_escape:sym<tab>", $P2500)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2501 = "82_1309859073.622" 
    $P116."add_method"($P117, "!PREFIX__quote_escape:sym<tab>", $P2501)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2502 = "83_1309859073.622" 
    $P116."add_method"($P117, "quote_escape:sym<ff>", $P2502)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2503 = "84_1309859073.622" 
    $P116."add_method"($P117, "!PREFIX__quote_escape:sym<ff>", $P2503)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2504 = "85_1309859073.622" 
    $P116."add_method"($P117, "quote_escape:sym<esc>", $P2504)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2505 = "86_1309859073.622" 
    $P116."add_method"($P117, "!PREFIX__quote_escape:sym<esc>", $P2505)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2506 = "87_1309859073.622" 
    $P116."add_method"($P117, "quote_escape:sym<hex>", $P2506)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2507 = "88_1309859073.622" 
    $P116."add_method"($P117, "!PREFIX__quote_escape:sym<hex>", $P2507)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2508 = "89_1309859073.622" 
    $P116."add_method"($P117, "quote_escape:sym<oct>", $P2508)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2509 = "90_1309859073.622" 
    $P116."add_method"($P117, "!PREFIX__quote_escape:sym<oct>", $P2509)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2510 = "91_1309859073.622" 
    $P116."add_method"($P117, "quote_escape:sym<chr>", $P2510)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2511 = "92_1309859073.622" 
    $P116."add_method"($P117, "!PREFIX__quote_escape:sym<chr>", $P2511)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2512 = "93_1309859073.622" 
    $P116."add_method"($P117, "quote_escape:sym<0>", $P2512)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2513 = "94_1309859073.622" 
    $P116."add_method"($P117, "!PREFIX__quote_escape:sym<0>", $P2513)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2514 = "95_1309859073.622" 
    $P116."add_method"($P117, "quote_escape:sym<misc>", $P2514)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2515 = "99_1309859073.622" 
    $P116."add_method"($P117, "!PREFIX__quote_escape:sym<misc>", $P2515)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2516 = "100_1309859073.622" 
    $P116."add_method"($P117, "charname", $P2516)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2517 = "102_1309859073.622" 
    $P116."add_method"($P117, "!PREFIX__charname", $P2517)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2518 = "103_1309859073.622" 
    $P116."add_method"($P117, "charnames", $P2518)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2519 = "104_1309859073.622" 
    $P116."add_method"($P117, "!PREFIX__charnames", $P2519)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2520 = "105_1309859073.622" 
    $P116."add_method"($P117, "charspec", $P2520)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2521 = "106_1309859073.622" 
    $P116."add_method"($P117, "!PREFIX__charspec", $P2521)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2522 = "107_1309859073.622" 
    $P116."add_method"($P117, "O", $P2522)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2523 = "108_1309859073.622" 
    $P116."add_method"($P117, "panic", $P2523)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2524 = "109_1309859073.622" 
    $P116."add_method"($P117, "peek_delimiters", $P2524)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2525 = "110_1309859073.622" 
    $P116."add_method"($P117, "quote_EXPR", $P2525)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2526 = "111_1309859073.622" 
    $P116."add_method"($P117, "quotemod_check", $P2526)
    .const 'Sub' $P2527 = "111_1309859073.622" 
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_who $P116, $P115
    set $P116["quotemod_check"], $P2527
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2528 = "112_1309859073.622" 
    $P116."add_method"($P117, "starter", $P2528)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2529 = "113_1309859073.622" 
    $P116."add_method"($P117, "stopper", $P2529)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2530 = "114_1309859073.622" 
    $P116."add_method"($P117, "split_words", $P2530)
    .const 'Sub' $P2531 = "114_1309859073.622" 
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_who $P116, $P115
    set $P116["split_words"], $P2531
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2532 = "115_1309859073.622" 
    $P116."add_method"($P117, "EXPR", $P2532)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2533 = "116_1309859073.622" 
    $P116."add_method"($P117, "EXPR_reduce", $P2533)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2534 = "117_1309859073.622" 
    $P116."add_method"($P117, "ternary", $P2534)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2535 = "118_1309859073.622" 
    $P116."add_method"($P117, "MARKER", $P2535)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2536 = "119_1309859073.622" 
    $P116."add_method"($P117, "MARKED", $P2536)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    .const 'Sub' $P2537 = "120_1309859073.622" 
    $P116."add_method"($P117, "LANG", $P2537)
    .const 'Sub' $P2538 = "13_1309859073.622" 
    $P115 = $P2538."get_lexinfo"()
    nqp_get_sc_object $P116, "1309859065.392", 1
    $P115."set_static_lexpad_value"("$?PACKAGE", $P116)
    .const 'Sub' $P2539 = "13_1309859073.622" 
    $P117 = $P2539."get_lexinfo"()
    $P117."finish_static_lexpad"()
    .const 'Sub' $P2540 = "13_1309859073.622" 
    $P115 = $P2540."get_lexinfo"()
    nqp_get_sc_object $P116, "1309859065.392", 1
    $P115."set_static_lexpad_value"("$?CLASS", $P116)
    .const 'Sub' $P2541 = "13_1309859073.622" 
    $P117 = $P2541."get_lexinfo"()
    $P117."finish_static_lexpad"()
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    nqp_get_sc_object $P118, "__REGEX_CORE_SC__", 0
    $P116."set_default_parent"($P117, $P118)
    nqp_get_sc_object $P115, "1309859065.392", 1
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 1
    $P116."compose"($P117)
    nqp_get_sc_object $P115, "1309859056.502", 41
    $P116 = $P115."new_type"("HLL::Actions" :named("name"))
    nqp_set_sc_for_object $P116, cur_sc
    nqp_set_sc_object "1309859065.392", 105, $P116
    nqp_get_sc_object $P115, "1309859065.392", 105
    nqp_get_sc_object $P116, "1309859065.392", 0
    nqp_get_package_through_who $P117, $P116, "HLL"
    get_who $P118, $P117
    set $P118["Actions"], $P115
    .const 'Sub' $P2542 = "122_1309859073.622" 
    nqp_get_sc_object $P115, "1309859065.392", 105
    get_who $P116, $P115
    set $P116["string_to_int"], $P2542
    .const 'Sub' $P2543 = "124_1309859073.622" 
    nqp_get_sc_object $P115, "1309859065.392", 105
    get_who $P116, $P115
    set $P116["ints_to_string"], $P2543
    nqp_get_sc_object $P115, "1309859065.392", 105
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 105
    .const 'Sub' $P2544 = "127_1309859073.622" 
    $P116."add_method"($P117, "CTXSAVE", $P2544)
    nqp_get_sc_object $P115, "1309859065.392", 105
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 105
    .const 'Sub' $P2545 = "128_1309859073.622" 
    $P116."add_method"($P117, "SET_BLOCK_OUTER_CTX", $P2545)
    nqp_get_sc_object $P115, "1309859065.392", 105
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 105
    .const 'Sub' $P2546 = "131_1309859073.622" 
    $P116."add_method"($P117, "EXPR", $P2546)
    nqp_get_sc_object $P115, "1309859065.392", 105
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 105
    .const 'Sub' $P2547 = "134_1309859073.622" 
    $P116."add_method"($P117, "term:sym<circumfix>", $P2547)
    nqp_get_sc_object $P115, "1309859065.392", 105
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 105
    .const 'Sub' $P2548 = "135_1309859073.622" 
    $P116."add_method"($P117, "termish", $P2548)
    nqp_get_sc_object $P115, "1309859065.392", 105
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 105
    .const 'Sub' $P2549 = "136_1309859073.622" 
    $P116."add_method"($P117, "nullterm", $P2549)
    nqp_get_sc_object $P115, "1309859065.392", 105
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 105
    .const 'Sub' $P2550 = "137_1309859073.622" 
    $P116."add_method"($P117, "nullterm_alt", $P2550)
    nqp_get_sc_object $P115, "1309859065.392", 105
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 105
    .const 'Sub' $P2551 = "138_1309859073.622" 
    $P116."add_method"($P117, "integer", $P2551)
    nqp_get_sc_object $P115, "1309859065.392", 105
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 105
    .const 'Sub' $P2552 = "139_1309859073.622" 
    $P116."add_method"($P117, "dec_number", $P2552)
    nqp_get_sc_object $P115, "1309859065.392", 105
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 105
    .const 'Sub' $P2553 = "140_1309859073.622" 
    $P116."add_method"($P117, "decint", $P2553)
    nqp_get_sc_object $P115, "1309859065.392", 105
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 105
    .const 'Sub' $P2554 = "141_1309859073.622" 
    $P116."add_method"($P117, "hexint", $P2554)
    nqp_get_sc_object $P115, "1309859065.392", 105
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 105
    .const 'Sub' $P2555 = "142_1309859073.622" 
    $P116."add_method"($P117, "octint", $P2555)
    nqp_get_sc_object $P115, "1309859065.392", 105
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 105
    .const 'Sub' $P2556 = "143_1309859073.622" 
    $P116."add_method"($P117, "binint", $P2556)
    nqp_get_sc_object $P115, "1309859065.392", 105
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 105
    .const 'Sub' $P2557 = "144_1309859073.622" 
    $P116."add_method"($P117, "quote_EXPR", $P2557)
    nqp_get_sc_object $P115, "1309859065.392", 105
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 105
    .const 'Sub' $P2558 = "147_1309859073.622" 
    $P116."add_method"($P117, "quote_delimited", $P2558)
    nqp_get_sc_object $P115, "1309859065.392", 105
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 105
    .const 'Sub' $P2559 = "149_1309859073.622" 
    $P116."add_method"($P117, "quote_atom", $P2559)
    nqp_get_sc_object $P115, "1309859065.392", 105
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 105
    .const 'Sub' $P2560 = "150_1309859073.622" 
    $P116."add_method"($P117, "quote_escape:sym<backslash>", $P2560)
    nqp_get_sc_object $P115, "1309859065.392", 105
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 105
    .const 'Sub' $P2561 = "151_1309859073.622" 
    $P116."add_method"($P117, "quote_escape:sym<stopper>", $P2561)
    nqp_get_sc_object $P115, "1309859065.392", 105
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 105
    .const 'Sub' $P2562 = "152_1309859073.622" 
    $P116."add_method"($P117, "quote_escape:sym<bs>", $P2562)
    nqp_get_sc_object $P115, "1309859065.392", 105
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 105
    .const 'Sub' $P2563 = "153_1309859073.622" 
    $P116."add_method"($P117, "quote_escape:sym<nl>", $P2563)
    nqp_get_sc_object $P115, "1309859065.392", 105
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 105
    .const 'Sub' $P2564 = "154_1309859073.622" 
    $P116."add_method"($P117, "quote_escape:sym<cr>", $P2564)
    nqp_get_sc_object $P115, "1309859065.392", 105
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 105
    .const 'Sub' $P2565 = "155_1309859073.622" 
    $P116."add_method"($P117, "quote_escape:sym<tab>", $P2565)
    nqp_get_sc_object $P115, "1309859065.392", 105
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 105
    .const 'Sub' $P2566 = "156_1309859073.622" 
    $P116."add_method"($P117, "quote_escape:sym<ff>", $P2566)
    nqp_get_sc_object $P115, "1309859065.392", 105
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 105
    .const 'Sub' $P2567 = "157_1309859073.622" 
    $P116."add_method"($P117, "quote_escape:sym<esc>", $P2567)
    nqp_get_sc_object $P115, "1309859065.392", 105
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 105
    .const 'Sub' $P2568 = "158_1309859073.622" 
    $P116."add_method"($P117, "quote_escape:sym<hex>", $P2568)
    nqp_get_sc_object $P115, "1309859065.392", 105
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 105
    .const 'Sub' $P2569 = "159_1309859073.622" 
    $P116."add_method"($P117, "quote_escape:sym<oct>", $P2569)
    nqp_get_sc_object $P115, "1309859065.392", 105
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 105
    .const 'Sub' $P2570 = "160_1309859073.622" 
    $P116."add_method"($P117, "quote_escape:sym<chr>", $P2570)
    nqp_get_sc_object $P115, "1309859065.392", 105
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 105
    .const 'Sub' $P2571 = "161_1309859073.622" 
    $P116."add_method"($P117, "quote_escape:sym<0>", $P2571)
    nqp_get_sc_object $P115, "1309859065.392", 105
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 105
    .const 'Sub' $P2572 = "162_1309859073.622" 
    $P116."add_method"($P117, "quote_escape:sym<misc>", $P2572)
    nqp_get_sc_object $P115, "1309859065.392", 105
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 105
    .const 'Sub' $P2573 = "163_1309859073.622" 
    $P116."add_method"($P117, "charname", $P2573)
    nqp_get_sc_object $P115, "1309859065.392", 105
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 105
    .const 'Sub' $P2574 = "164_1309859073.622" 
    $P116."add_method"($P117, "charnames", $P2574)
    nqp_get_sc_object $P115, "1309859065.392", 105
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 105
    .const 'Sub' $P2575 = "166_1309859073.622" 
    $P116."add_method"($P117, "charspec", $P2575)
    .const 'Sub' $P2576 = "121_1309859073.622" 
    $P115 = $P2576."get_lexinfo"()
    nqp_get_sc_object $P116, "1309859065.392", 105
    $P115."set_static_lexpad_value"("$?PACKAGE", $P116)
    .const 'Sub' $P2577 = "121_1309859073.622" 
    $P117 = $P2577."get_lexinfo"()
    $P117."finish_static_lexpad"()
    .const 'Sub' $P2578 = "121_1309859073.622" 
    $P115 = $P2578."get_lexinfo"()
    nqp_get_sc_object $P116, "1309859065.392", 105
    $P115."set_static_lexpad_value"("$?CLASS", $P116)
    .const 'Sub' $P2579 = "121_1309859073.622" 
    $P117 = $P2579."get_lexinfo"()
    $P117."finish_static_lexpad"()
    nqp_get_sc_object $P115, "1309859065.392", 105
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 105
    nqp_get_sc_object $P118, "1309859063.427", 5
    $P116."set_default_parent"($P117, $P118)
    nqp_get_sc_object $P115, "1309859065.392", 105
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 105
    $P116."compose"($P117)
    nqp_get_sc_object $P115, "1309859056.502", 41
    $P116 = $P115."new_type"("HLL::Compiler" :named("name"))
    nqp_set_sc_for_object $P116, cur_sc
    nqp_set_sc_object "1309859065.392", 138, $P116
    nqp_get_sc_object $P115, "1309859065.392", 138
    nqp_get_sc_object $P116, "1309859065.392", 0
    nqp_get_package_through_who $P117, $P116, "HLL"
    get_who $P118, $P117
    set $P118["Compiler"], $P115
    nqp_get_sc_object $P115, "1309859065.392", 138
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 138
    nqp_get_sc_object $P118, "1309859056.502", 81
    $P119 = $P118."new"("@!stages" :named("name"))
    $P116."add_attribute"($P117, $P119)
    nqp_get_sc_object $P115, "1309859065.392", 138
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 138
    nqp_get_sc_object $P118, "1309859056.502", 81
    $P119 = $P118."new"("$!parsegrammar" :named("name"))
    $P116."add_attribute"($P117, $P119)
    nqp_get_sc_object $P115, "1309859065.392", 138
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 138
    nqp_get_sc_object $P118, "1309859056.502", 81
    $P119 = $P118."new"("$!parseactions" :named("name"))
    $P116."add_attribute"($P117, $P119)
    nqp_get_sc_object $P115, "1309859065.392", 138
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 138
    nqp_get_sc_object $P118, "1309859056.502", 81
    $P119 = $P118."new"("$!commandline_banner" :named("name"))
    $P116."add_attribute"($P117, $P119)
    nqp_get_sc_object $P115, "1309859065.392", 138
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 138
    nqp_get_sc_object $P118, "1309859056.502", 81
    $P119 = $P118."new"("$!commandline_prompt" :named("name"))
    $P116."add_attribute"($P117, $P119)
    nqp_get_sc_object $P115, "1309859065.392", 138
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 138
    nqp_get_sc_object $P118, "1309859056.502", 81
    $P119 = $P118."new"("@!cmdoptions" :named("name"))
    $P116."add_attribute"($P117, $P119)
    nqp_get_sc_object $P115, "1309859065.392", 138
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 138
    nqp_get_sc_object $P118, "1309859056.502", 81
    $P119 = $P118."new"("$!usage" :named("name"))
    $P116."add_attribute"($P117, $P119)
    nqp_get_sc_object $P115, "1309859065.392", 138
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 138
    nqp_get_sc_object $P118, "1309859056.502", 81
    $P119 = $P118."new"("$!compiler_progname" :named("name"))
    $P116."add_attribute"($P117, $P119)
    nqp_get_sc_object $P115, "1309859065.392", 138
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 138
    nqp_get_sc_object $P118, "1309859056.502", 81
    $P119 = $P118."new"("$!language" :named("name"))
    $P116."add_attribute"($P117, $P119)
    nqp_get_sc_object $P115, "1309859065.392", 138
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 138
    nqp_get_sc_object $P118, "1309859056.502", 81
    $P119 = $P118."new"("%!config" :named("name"))
    $P116."add_attribute"($P117, $P119)
    nqp_get_sc_object $P115, "1309859065.392", 138
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 138
    .const 'Sub' $P2580 = "170_1309859073.622" 
    $P116."add_method"($P117, "new", $P2580)
    nqp_get_sc_object $P115, "1309859065.392", 138
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 138
    .const 'Sub' $P2581 = "171_1309859073.622" 
    $P116."add_method"($P117, "BUILD", $P2581)
    nqp_get_sc_object $P115, "1309859065.392", 138
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 138
    .const 'Sub' $P2582 = "173_1309859073.622" 
    $P116."add_method"($P117, "get_exports", $P2582)
    nqp_get_sc_object $P115, "1309859065.392", 138
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 138
    .const 'Sub' $P2583 = "176_1309859073.622" 
    $P116."add_method"($P117, "get_module", $P2583)
    nqp_get_sc_object $P115, "1309859065.392", 138
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 138
    .const 'Sub' $P2584 = "177_1309859073.622" 
    $P116."add_method"($P117, "language", $P2584)
    nqp_get_sc_object $P115, "1309859065.392", 138
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 138
    .const 'Sub' $P2585 = "178_1309859073.622" 
    $P116."add_method"($P117, "compiler", $P2585)
    nqp_get_sc_object $P115, "1309859065.392", 138
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 138
    .const 'Sub' $P2586 = "179_1309859073.622" 
    $P116."add_method"($P117, "config", $P2586)
    nqp_get_sc_object $P115, "1309859065.392", 138
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 138
    .const 'Sub' $P2587 = "180_1309859073.622" 
    $P116."add_method"($P117, "load_module", $P2587)
    nqp_get_sc_object $P115, "1309859065.392", 138
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 138
    .const 'Sub' $P2588 = "182_1309859073.622" 
    $P116."add_method"($P117, "import", $P2588)
    nqp_get_sc_object $P115, "1309859065.392", 138
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 138
    .const 'Sub' $P2589 = "187_1309859073.622" 
    $P116."add_method"($P117, "autoprint", $P2589)
    nqp_get_sc_object $P115, "1309859065.392", 138
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 138
    .const 'Sub' $P2590 = "188_1309859073.622" 
    $P116."add_method"($P117, "interactive", $P2590)
    nqp_get_sc_object $P115, "1309859065.392", 138
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 138
    .const 'Sub' $P2591 = "195_1309859073.622" 
    $P116."add_method"($P117, "eval", $P2591)
    nqp_get_sc_object $P115, "1309859065.392", 138
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 138
    .const 'Sub' $P2592 = "197_1309859073.622" 
    $P116."add_method"($P117, "ctxsave", $P2592)
    nqp_get_sc_object $P115, "1309859065.392", 138
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 138
    .const 'Sub' $P2593 = "198_1309859073.622" 
    $P116."add_method"($P117, "panic", $P2593)
    nqp_get_sc_object $P115, "1309859065.392", 138
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 138
    .const 'Sub' $P2594 = "199_1309859073.622" 
    $P116."add_method"($P117, "stages", $P2594)
    nqp_get_sc_object $P115, "1309859065.392", 138
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 138
    .const 'Sub' $P2595 = "200_1309859073.622" 
    $P116."add_method"($P117, "parsegrammar", $P2595)
    nqp_get_sc_object $P115, "1309859065.392", 138
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 138
    .const 'Sub' $P2596 = "201_1309859073.622" 
    $P116."add_method"($P117, "parseactions", $P2596)
    nqp_get_sc_object $P115, "1309859065.392", 138
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 138
    .const 'Sub' $P2597 = "202_1309859073.622" 
    $P116."add_method"($P117, "commandline_banner", $P2597)
    nqp_get_sc_object $P115, "1309859065.392", 138
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 138
    .const 'Sub' $P2598 = "203_1309859073.622" 
    $P116."add_method"($P117, "commandline_prompt", $P2598)
    nqp_get_sc_object $P115, "1309859065.392", 138
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 138
    .const 'Sub' $P2599 = "204_1309859073.622" 
    $P116."add_method"($P117, "compiler_progname", $P2599)
    nqp_get_sc_object $P115, "1309859065.392", 138
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 138
    .const 'Sub' $P2600 = "205_1309859073.622" 
    $P116."add_method"($P117, "commandline_options", $P2600)
    nqp_get_sc_object $P115, "1309859065.392", 138
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 138
    .const 'Sub' $P2601 = "206_1309859073.622" 
    $P116."add_method"($P117, "command_line", $P2601)
    nqp_get_sc_object $P115, "1309859065.392", 138
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 138
    .const 'Sub' $P2602 = "210_1309859073.622" 
    $P116."add_method"($P117, "process_args", $P2602)
    nqp_get_sc_object $P115, "1309859065.392", 138
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 138
    .const 'Sub' $P2603 = "213_1309859073.622" 
    $P116."add_method"($P117, "evalfiles", $P2603)
    nqp_get_sc_object $P115, "1309859065.392", 138
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 138
    .const 'Sub' $P2604 = "217_1309859073.622" 
    $P116."add_method"($P117, "compile", $P2604)
    nqp_get_sc_object $P115, "1309859065.392", 138
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 138
    .const 'Sub' $P2605 = "219_1309859073.622" 
    $P116."add_method"($P117, "parse", $P2605)
    nqp_get_sc_object $P115, "1309859065.392", 138
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 138
    .const 'Sub' $P2606 = "222_1309859073.622" 
    $P116."add_method"($P117, "past", $P2606)
    nqp_get_sc_object $P115, "1309859065.392", 138
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 138
    .const 'Sub' $P2607 = "223_1309859073.622" 
    $P116."add_method"($P117, "post", $P2607)
    nqp_get_sc_object $P115, "1309859065.392", 138
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 138
    .const 'Sub' $P2608 = "224_1309859073.622" 
    $P116."add_method"($P117, "pirbegin", $P2608)
    nqp_get_sc_object $P115, "1309859065.392", 138
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 138
    .const 'Sub' $P2609 = "225_1309859073.622" 
    $P116."add_method"($P117, "pir", $P2609)
    nqp_get_sc_object $P115, "1309859065.392", 138
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 138
    .const 'Sub' $P2610 = "226_1309859073.622" 
    $P116."add_method"($P117, "evalpmc", $P2610)
    nqp_get_sc_object $P115, "1309859065.392", 138
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 138
    .const 'Sub' $P2611 = "227_1309859073.622" 
    $P116."add_method"($P117, "dumper", $P2611)
    nqp_get_sc_object $P115, "1309859065.392", 138
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 138
    .const 'Sub' $P2612 = "229_1309859073.622" 
    $P116."add_method"($P117, "usage", $P2612)
    nqp_get_sc_object $P115, "1309859065.392", 138
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 138
    .const 'Sub' $P2613 = "230_1309859073.622" 
    $P116."add_method"($P117, "version", $P2613)
    nqp_get_sc_object $P115, "1309859065.392", 138
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 138
    .const 'Sub' $P2614 = "231_1309859073.622" 
    $P116."add_method"($P117, "show-config", $P2614)
    nqp_get_sc_object $P115, "1309859065.392", 138
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 138
    .const 'Sub' $P2615 = "234_1309859073.622" 
    $P116."add_method"($P117, "nqpevent", $P2615)
    nqp_get_sc_object $P115, "1309859065.392", 138
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 138
    .const 'Sub' $P2616 = "236_1309859073.622" 
    $P116."add_method"($P117, "removestage", $P2616)
    nqp_get_sc_object $P115, "1309859065.392", 138
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 138
    .const 'Sub' $P2617 = "238_1309859073.622" 
    $P116."add_method"($P117, "addstage", $P2617)
    nqp_get_sc_object $P115, "1309859065.392", 138
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 138
    .const 'Sub' $P2618 = "241_1309859073.622" 
    $P116."add_method"($P117, "parse_name", $P2618)
    nqp_get_sc_object $P115, "1309859065.392", 138
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 138
    .const 'Sub' $P2619 = "243_1309859073.622" 
    $P116."add_method"($P117, "lineof", $P2619)
    .const 'Sub' $P2620 = "167_1309859073.622" 
    $P115 = $P2620."get_lexinfo"()
    nqp_get_sc_object $P116, "1309859065.392", 138
    $P115."set_static_lexpad_value"("$?PACKAGE", $P116)
    .const 'Sub' $P2621 = "167_1309859073.622" 
    $P117 = $P2621."get_lexinfo"()
    $P117."finish_static_lexpad"()
    .const 'Sub' $P2622 = "167_1309859073.622" 
    $P115 = $P2622."get_lexinfo"()
    nqp_get_sc_object $P116, "1309859065.392", 138
    $P115."set_static_lexpad_value"("$?CLASS", $P116)
    .const 'Sub' $P2623 = "167_1309859073.622" 
    $P117 = $P2623."get_lexinfo"()
    $P117."finish_static_lexpad"()
    nqp_get_sc_object $P115, "1309859065.392", 138
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 138
    nqp_get_sc_object $P118, "1309859063.427", 5
    $P116."set_default_parent"($P117, $P118)
    nqp_get_sc_object $P115, "1309859065.392", 138
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 138
    $P116."compose"($P117)
    nqp_get_sc_object $P115, "1309859056.502", 41
    $P116 = $P115."new_type"("HLL::CommandLine::Result" :named("name"))
    nqp_set_sc_for_object $P116, cur_sc
    nqp_set_sc_object "1309859065.392", 179, $P116
    nqp_get_sc_object $P115, "1309859065.392", 179
    nqp_get_sc_object $P116, "1309859065.392", 0
    nqp_get_package_through_who $P117, $P116, "HLL"
    nqp_get_package_through_who $P118, $P117, "CommandLine"
    get_who $P119, $P118
    set $P119["Result"], $P115
    nqp_get_sc_object $P115, "1309859065.392", 179
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 179
    nqp_get_sc_object $P118, "1309859056.502", 81
    $P119 = $P118."new"("@!arguments" :named("name"))
    $P116."add_attribute"($P117, $P119)
    nqp_get_sc_object $P115, "1309859065.392", 179
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 179
    nqp_get_sc_object $P118, "1309859056.502", 81
    $P119 = $P118."new"("%!options" :named("name"))
    $P116."add_attribute"($P117, $P119)
    nqp_get_sc_object $P115, "1309859065.392", 179
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 179
    .const 'Sub' $P2624 = "245_1309859073.622" 
    $P116."add_method"($P117, "init", $P2624)
    nqp_get_sc_object $P115, "1309859065.392", 179
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 179
    .const 'Sub' $P2625 = "246_1309859073.622" 
    $P116."add_method"($P117, "arguments", $P2625)
    nqp_get_sc_object $P115, "1309859065.392", 179
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 179
    .const 'Sub' $P2626 = "247_1309859073.622" 
    $P116."add_method"($P117, "options", $P2626)
    nqp_get_sc_object $P115, "1309859065.392", 179
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 179
    .const 'Sub' $P2627 = "248_1309859073.622" 
    $P116."add_method"($P117, "add-argument", $P2627)
    nqp_get_sc_object $P115, "1309859065.392", 179
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 179
    .const 'Sub' $P2628 = "249_1309859073.622" 
    $P116."add_method"($P117, "add-option", $P2628)
    .const 'Sub' $P2629 = "244_1309859073.622" 
    $P115 = $P2629."get_lexinfo"()
    nqp_get_sc_object $P116, "1309859065.392", 179
    $P115."set_static_lexpad_value"("$?PACKAGE", $P116)
    .const 'Sub' $P2630 = "244_1309859073.622" 
    $P117 = $P2630."get_lexinfo"()
    $P117."finish_static_lexpad"()
    .const 'Sub' $P2631 = "244_1309859073.622" 
    $P115 = $P2631."get_lexinfo"()
    nqp_get_sc_object $P116, "1309859065.392", 179
    $P115."set_static_lexpad_value"("$?CLASS", $P116)
    .const 'Sub' $P2632 = "244_1309859073.622" 
    $P117 = $P2632."get_lexinfo"()
    $P117."finish_static_lexpad"()
    nqp_get_sc_object $P115, "1309859065.392", 179
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 179
    nqp_get_sc_object $P118, "1309859063.427", 5
    $P116."set_default_parent"($P117, $P118)
    nqp_get_sc_object $P115, "1309859065.392", 179
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 179
    $P116."compose"($P117)
    nqp_get_sc_object $P115, "1309859056.502", 41
    $P116 = $P115."new_type"("HLL::CommandLine::Parser" :named("name"))
    nqp_set_sc_for_object $P116, cur_sc
    nqp_set_sc_object "1309859065.392", 185, $P116
    nqp_get_sc_object $P115, "1309859065.392", 185
    nqp_get_sc_object $P116, "1309859065.392", 0
    nqp_get_package_through_who $P117, $P116, "HLL"
    nqp_get_package_through_who $P118, $P117, "CommandLine"
    get_who $P119, $P118
    set $P119["Parser"], $P115
    nqp_get_sc_object $P115, "1309859065.392", 185
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 185
    nqp_get_sc_object $P118, "1309859056.502", 81
    $P119 = $P118."new"("@!specs" :named("name"))
    $P116."add_attribute"($P117, $P119)
    nqp_get_sc_object $P115, "1309859065.392", 185
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 185
    nqp_get_sc_object $P118, "1309859056.502", 81
    $P119 = $P118."new"("%!options" :named("name"))
    $P116."add_attribute"($P117, $P119)
    nqp_get_sc_object $P115, "1309859065.392", 185
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 185
    nqp_get_sc_object $P118, "1309859056.502", 81
    $P119 = $P118."new"("%!stopper" :named("name"))
    $P116."add_attribute"($P117, $P119)
    nqp_get_sc_object $P115, "1309859065.392", 185
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 185
    nqp_get_sc_object $P118, "1309859056.502", 81
    $P119 = $P118."new"("$!stop-after-first-arg" :named("name"))
    $P116."add_attribute"($P117, $P119)
    nqp_get_sc_object $P115, "1309859065.392", 185
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 185
    .const 'Sub' $P2633 = "252_1309859073.622" 
    $P116."add_method"($P117, "new", $P2633)
    nqp_get_sc_object $P115, "1309859065.392", 185
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 185
    .const 'Sub' $P2634 = "253_1309859073.622" 
    $P116."add_method"($P117, "stop-after-first-arg", $P2634)
    nqp_get_sc_object $P115, "1309859065.392", 185
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 185
    .const 'Sub' $P2635 = "254_1309859073.622" 
    $P116."add_method"($P117, "BUILD", $P2635)
    nqp_get_sc_object $P115, "1309859065.392", 185
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 185
    .const 'Sub' $P2636 = "256_1309859073.622" 
    $P116."add_method"($P117, "add-stopper", $P2636)
    nqp_get_sc_object $P115, "1309859065.392", 185
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 185
    .const 'Sub' $P2637 = "257_1309859073.622" 
    $P116."add_method"($P117, "split-option-aliases", $P2637)
    nqp_get_sc_object $P115, "1309859065.392", 185
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 185
    .const 'Sub' $P2638 = "258_1309859073.622" 
    $P116."add_method"($P117, "add-spec", $P2638)
    nqp_get_sc_object $P115, "1309859065.392", 185
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 185
    .const 'Sub' $P2639 = "260_1309859073.622" 
    $P116."add_method"($P117, "is-option", $P2639)
    nqp_get_sc_object $P115, "1309859065.392", 185
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 185
    .const 'Sub' $P2640 = "261_1309859073.622" 
    $P116."add_method"($P117, "wants-value", $P2640)
    nqp_get_sc_object $P115, "1309859065.392", 185
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 185
    .const 'Sub' $P2641 = "262_1309859073.622" 
    $P116."add_method"($P117, "parse", $P2641)
    .const 'Sub' $P2642 = "251_1309859073.622" 
    $P115 = $P2642."get_lexinfo"()
    nqp_get_sc_object $P116, "1309859065.392", 185
    $P115."set_static_lexpad_value"("$?PACKAGE", $P116)
    .const 'Sub' $P2643 = "251_1309859073.622" 
    $P117 = $P2643."get_lexinfo"()
    $P117."finish_static_lexpad"()
    .const 'Sub' $P2644 = "251_1309859073.622" 
    $P115 = $P2644."get_lexinfo"()
    nqp_get_sc_object $P116, "1309859065.392", 185
    $P115."set_static_lexpad_value"("$?CLASS", $P116)
    .const 'Sub' $P2645 = "251_1309859073.622" 
    $P117 = $P2645."get_lexinfo"()
    $P117."finish_static_lexpad"()
    nqp_get_sc_object $P115, "1309859065.392", 185
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 185
    nqp_get_sc_object $P118, "1309859063.427", 5
    $P116."set_default_parent"($P117, $P118)
    nqp_get_sc_object $P115, "1309859065.392", 185
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 185
    $P116."compose"($P117)
    nqp_get_sc_object $P115, "1309859056.502", 41
    $P116 = $P115."new_type"("HLL::Compiler::SerializationContextBuilder" :named("name"))
    nqp_set_sc_for_object $P116, cur_sc
    nqp_set_sc_object "1309859065.392", 195, $P116
    nqp_get_sc_object $P115, "1309859065.392", 195
    nqp_get_sc_object $P116, "1309859065.392", 0
    nqp_get_package_through_who $P117, $P116, "HLL"
    nqp_get_package_through_who $P118, $P117, "Compiler"
    get_who $P119, $P118
    set $P119["SerializationContextBuilder"], $P115
    nqp_get_sc_object $P115, "1309859056.502", 41
    $P116 = $P115."new_type"("Event" :named("name"))
    nqp_set_sc_for_object $P116, cur_sc
    nqp_set_sc_object "1309859065.392", 196, $P116
    .const 'Sub' $P2646 = "270_1309859073.622" 
    $P115 = $P2646."get_lexinfo"()
    nqp_get_sc_object $P116, "1309859065.392", 196
    $P115."set_static_lexpad_value"("Event", $P116)
    .const 'Sub' $P2647 = "270_1309859073.622" 
    $P117 = $P2647."get_lexinfo"()
    $P117."finish_static_lexpad"()
    nqp_get_sc_object $P115, "1309859065.392", 196
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 196
    nqp_get_sc_object $P118, "1309859056.502", 81
    $P119 = $P118."new"("$!deserialize_past" :named("name"))
    $P116."add_attribute"($P117, $P119)
    nqp_get_sc_object $P115, "1309859065.392", 196
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 196
    .const 'Sub' $P2648 = "273_1309859073.622" 
    $P116."add_method"($P117, "deserialize_past", $P2648)
    nqp_get_sc_object $P115, "1309859065.392", 196
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 196
    nqp_get_sc_object $P118, "1309859056.502", 81
    $P119 = $P118."new"("$!fixup_past" :named("name"))
    $P116."add_attribute"($P117, $P119)
    nqp_get_sc_object $P115, "1309859065.392", 196
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 196
    .const 'Sub' $P2649 = "274_1309859073.622" 
    $P116."add_method"($P117, "fixup_past", $P2649)
    .const 'Sub' $P2650 = "272_1309859073.622" 
    $P115 = $P2650."get_lexinfo"()
    nqp_get_sc_object $P116, "1309859065.392", 196
    $P115."set_static_lexpad_value"("$?PACKAGE", $P116)
    .const 'Sub' $P2651 = "272_1309859073.622" 
    $P117 = $P2651."get_lexinfo"()
    $P117."finish_static_lexpad"()
    .const 'Sub' $P2652 = "272_1309859073.622" 
    $P115 = $P2652."get_lexinfo"()
    nqp_get_sc_object $P116, "1309859065.392", 196
    $P115."set_static_lexpad_value"("$?CLASS", $P116)
    .const 'Sub' $P2653 = "272_1309859073.622" 
    $P117 = $P2653."get_lexinfo"()
    $P117."finish_static_lexpad"()
    nqp_get_sc_object $P115, "1309859065.392", 196
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 196
    nqp_get_sc_object $P118, "1309859063.427", 5
    $P116."set_default_parent"($P117, $P118)
    nqp_get_sc_object $P115, "1309859065.392", 196
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 196
    $P116."compose"($P117)
    nqp_get_sc_object $P115, "1309859065.392", 195
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 195
    nqp_get_sc_object $P118, "1309859056.502", 81
    $P119 = $P118."new"("$!sc" :named("name"))
    $P116."add_attribute"($P117, $P119)
    nqp_get_sc_object $P115, "1309859065.392", 195
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 195
    nqp_get_sc_object $P118, "1309859056.502", 81
    $P119 = $P118."new"("$!handle" :named("name"))
    $P116."add_attribute"($P117, $P119)
    nqp_get_sc_object $P115, "1309859065.392", 195
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 195
    nqp_get_sc_object $P118, "1309859056.502", 81
    $P119 = $P118."new"("%!addr_to_slot" :named("name"))
    $P116."add_attribute"($P117, $P119)
    nqp_get_sc_object $P115, "1309859065.392", 195
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 195
    nqp_get_sc_object $P118, "1309859056.502", 81
    $P119 = $P118."new"("@!event_stream" :named("name"))
    $P116."add_attribute"($P117, $P119)
    nqp_get_sc_object $P115, "1309859065.392", 195
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 195
    .const 'Sub' $P2654 = "275_1309859073.622" 
    $P116."add_method"($P117, "new", $P2654)
    nqp_get_sc_object $P115, "1309859065.392", 195
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 195
    .const 'Sub' $P2655 = "276_1309859073.622" 
    $P116."add_method"($P117, "BUILD", $P2655)
    nqp_get_sc_object $P115, "1309859065.392", 195
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 195
    .const 'Sub' $P2656 = "277_1309859073.622" 
    $P116."add_method"($P117, "slot_for_object", $P2656)
    nqp_get_sc_object $P115, "1309859065.392", 195
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 195
    .const 'Sub' $P2657 = "278_1309859073.622" 
    $P116."add_method"($P117, "get_slot_past_for_object", $P2657)
    nqp_get_sc_object $P115, "1309859065.392", 195
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 195
    .const 'Sub' $P2658 = "279_1309859073.622" 
    $P116."add_method"($P117, "set_slot_past", $P2658)
    nqp_get_sc_object $P115, "1309859065.392", 195
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 195
    .const 'Sub' $P2659 = "280_1309859073.622" 
    $P116."add_method"($P117, "set_cur_sc", $P2659)
    nqp_get_sc_object $P115, "1309859065.392", 195
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 195
    .const 'Sub' $P2660 = "281_1309859073.622" 
    $P116."add_method"($P117, "add_object", $P2660)
    nqp_get_sc_object $P115, "1309859065.392", 195
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 195
    .const 'Sub' $P2661 = "282_1309859073.622" 
    $P116."add_method"($P117, "add_code", $P2661)
    nqp_get_sc_object $P115, "1309859065.392", 195
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 195
    .const 'Sub' $P2662 = "283_1309859073.622" 
    $P116."add_method"($P117, "add_event", $P2662)
    nqp_get_sc_object $P115, "1309859065.392", 195
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 195
    .const 'Sub' $P2663 = "284_1309859073.622" 
    $P116."add_method"($P117, "get_object_sc_ref_past", $P2663)
    nqp_get_sc_object $P115, "1309859065.392", 195
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 195
    .const 'Sub' $P2664 = "285_1309859073.622" 
    $P116."add_method"($P117, "sc", $P2664)
    nqp_get_sc_object $P115, "1309859065.392", 195
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 195
    .const 'Sub' $P2665 = "286_1309859073.622" 
    $P116."add_method"($P117, "handle", $P2665)
    nqp_get_sc_object $P115, "1309859065.392", 195
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 195
    .const 'Sub' $P2666 = "287_1309859073.622" 
    $P116."add_method"($P117, "event_stream", $P2666)
    .const 'Sub' $P2667 = "270_1309859073.622" 
    $P115 = $P2667."get_lexinfo"()
    nqp_get_sc_object $P116, "1309859065.392", 195
    $P115."set_static_lexpad_value"("$?PACKAGE", $P116)
    .const 'Sub' $P2668 = "270_1309859073.622" 
    $P117 = $P2668."get_lexinfo"()
    $P117."finish_static_lexpad"()
    .const 'Sub' $P2669 = "270_1309859073.622" 
    $P115 = $P2669."get_lexinfo"()
    nqp_get_sc_object $P116, "1309859065.392", 195
    $P115."set_static_lexpad_value"("$?CLASS", $P116)
    .const 'Sub' $P2670 = "270_1309859073.622" 
    $P117 = $P2670."get_lexinfo"()
    $P117."finish_static_lexpad"()
    nqp_get_sc_object $P115, "1309859065.392", 195
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 195
    nqp_get_sc_object $P118, "1309859063.427", 5
    $P116."set_default_parent"($P117, $P118)
    nqp_get_sc_object $P115, "1309859065.392", 195
    get_how $P116, $P115
    nqp_get_sc_object $P117, "1309859065.392", 195
    $P116."compose"($P117)
  if_2428_end:
    nqp_get_sc_object $P115, "1309859065.392", 0
    set_hll_global "GLOBAL", $P115
.end


.HLL "nqp"

.namespace []
.sub "_block1006"  :anon :subid("11_1309859073.622") :outer("10_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1065
    .const 'Sub' $P1011 = "12_1309859073.622" 
    capture_lex $P1011
.annotate 'line', 1067
    new $P101, "Undef"
    set $P1008, $P101
    .lex "$file", $P1008
.annotate 'line', 1066
    load_bytecode "Parrot/Exception.pbc"
.annotate 'line', 1067
    new $P102, "Env"
    set $P103, $P102["NQPEVENT"]
    unless_null $P103, vivify_290
    new $P103, "Undef"
  vivify_290:
    store_lex "$file", $P103
.annotate 'line', 1068
    find_lex $P103, "$file"
    unless_null $P103, vivify_291
    new $P103, "Undef"
  vivify_291:
    if $P103, if_1009
    set $P102, $P103
    goto if_1009_end
  if_1009:
    .const 'Sub' $P1011 = "12_1309859073.622" 
    capture_lex $P1011
    $P105 = $P1011()
    set $P102, $P105
  if_1009_end:
.annotate 'line', 1065
    .return ($P102)
.end


.HLL "nqp"

.namespace []
.sub "_block1010"  :anon :subid("12_1309859073.622") :outer("11_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1069
    new $P104, "Undef"
    set $P1012, $P104
    .lex "$fh", $P1012
    new $P105, "FileHandle"
    store_lex "$fh", $P105
.annotate 'line', 1070
    find_lex $P105, "$fh"
    unless_null $P105, vivify_292
    new $P105, "Undef"
  vivify_292:
    find_lex $P106, "$file"
    unless_null $P106, vivify_293
    new $P106, "Undef"
  vivify_293:
    $P105."open"($P106, "w")
.annotate 'line', 1071
    find_lex $P105, "$fh"
    unless_null $P105, vivify_294
    new $P105, "Undef"
  vivify_294:
    nqpevent_fh $P105
.annotate 'line', 1068
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block1013"  :subid("13_1309859073.622") :outer("10_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .const 'Sub' $P1315 = "120_1309859073.622" 
    capture_lex $P1315
    .const 'Sub' $P1312 = "119_1309859073.622" 
    capture_lex $P1312
    .const 'Sub' $P1304 = "118_1309859073.622" 
    capture_lex $P1304
    .const 'Sub' $P1296 = "117_1309859073.622" 
    capture_lex $P1296
    .const 'Sub' $P1292 = "116_1309859073.622" 
    capture_lex $P1292
    .const 'Sub' $P1289 = "115_1309859073.622" 
    capture_lex $P1289
    .const 'Sub' $P1286 = "114_1309859073.622" 
    capture_lex $P1286
    .const 'Sub' $P1284 = "113_1309859073.622" 
    capture_lex $P1284
    .const 'Sub' $P1282 = "112_1309859073.622" 
    capture_lex $P1282
    .const 'Sub' $P1279 = "111_1309859073.622" 
    capture_lex $P1279
    .const 'Sub' $P1276 = "110_1309859073.622" 
    capture_lex $P1276
    .const 'Sub' $P1272 = "109_1309859073.622" 
    capture_lex $P1272
    .const 'Sub' $P1261 = "108_1309859073.622" 
    capture_lex $P1261
    .const 'Sub' $P1257 = "107_1309859073.622" 
    capture_lex $P1257
    .const 'Sub' $P1256 = "106_1309859073.622" 
    capture_lex $P1256
    .const 'Sub' $P1251 = "105_1309859073.622" 
    capture_lex $P1251
    .const 'Sub' $P1250 = "104_1309859073.622" 
    capture_lex $P1250
    .const 'Sub' $P1246 = "103_1309859073.622" 
    capture_lex $P1246
    .const 'Sub' $P1245 = "102_1309859073.622" 
    capture_lex $P1245
    .const 'Sub' $P1235 = "100_1309859073.622" 
    capture_lex $P1235
    .const 'Sub' $P1234 = "99_1309859073.622" 
    capture_lex $P1234
    .const 'Sub' $P1218 = "95_1309859073.622" 
    capture_lex $P1218
    .const 'Sub' $P1217 = "94_1309859073.622" 
    capture_lex $P1217
    .const 'Sub' $P1213 = "93_1309859073.622" 
    capture_lex $P1213
    .const 'Sub' $P1212 = "92_1309859073.622" 
    capture_lex $P1212
    .const 'Sub' $P1209 = "91_1309859073.622" 
    capture_lex $P1209
    .const 'Sub' $P1208 = "90_1309859073.622" 
    capture_lex $P1208
    .const 'Sub' $P1204 = "89_1309859073.622" 
    capture_lex $P1204
    .const 'Sub' $P1203 = "88_1309859073.622" 
    capture_lex $P1203
    .const 'Sub' $P1199 = "87_1309859073.622" 
    capture_lex $P1199
    .const 'Sub' $P1198 = "86_1309859073.622" 
    capture_lex $P1198
    .const 'Sub' $P1195 = "85_1309859073.622" 
    capture_lex $P1195
    .const 'Sub' $P1194 = "84_1309859073.622" 
    capture_lex $P1194
    .const 'Sub' $P1191 = "83_1309859073.622" 
    capture_lex $P1191
    .const 'Sub' $P1190 = "82_1309859073.622" 
    capture_lex $P1190
    .const 'Sub' $P1187 = "81_1309859073.622" 
    capture_lex $P1187
    .const 'Sub' $P1186 = "80_1309859073.622" 
    capture_lex $P1186
    .const 'Sub' $P1183 = "79_1309859073.622" 
    capture_lex $P1183
    .const 'Sub' $P1182 = "78_1309859073.622" 
    capture_lex $P1182
    .const 'Sub' $P1179 = "77_1309859073.622" 
    capture_lex $P1179
    .const 'Sub' $P1178 = "76_1309859073.622" 
    capture_lex $P1178
    .const 'Sub' $P1175 = "75_1309859073.622" 
    capture_lex $P1175
    .const 'Sub' $P1174 = "74_1309859073.622" 
    capture_lex $P1174
    .const 'Sub' $P1171 = "73_1309859073.622" 
    capture_lex $P1171
    .const 'Sub' $P1170 = "72_1309859073.622" 
    capture_lex $P1170
    .const 'Sub' $P1167 = "71_1309859073.622" 
    capture_lex $P1167
    .const 'Sub' $P1162 = "68_1309859073.622" 
    capture_lex $P1162
    .const 'Sub' $P1158 = "67_1309859073.622" 
    capture_lex $P1158
    .const 'Sub' $P1157 = "66_1309859073.622" 
    capture_lex $P1157
    .const 'Sub' $P1146 = "65_1309859073.622" 
    capture_lex $P1146
    .const 'Sub' $P1145 = "64_1309859073.622" 
    capture_lex $P1145
    .const 'Sub' $P1140 = "63_1309859073.622" 
    capture_lex $P1140
    .const 'Sub' $P1139 = "62_1309859073.622" 
    capture_lex $P1139
    .const 'Sub' $P1135 = "61_1309859073.622" 
    capture_lex $P1135
    .const 'Sub' $P1134 = "60_1309859073.622" 
    capture_lex $P1134
    .const 'Sub' $P1129 = "59_1309859073.622" 
    capture_lex $P1129
    .const 'Sub' $P1128 = "58_1309859073.622" 
    capture_lex $P1128
    .const 'Sub' $P1124 = "57_1309859073.622" 
    capture_lex $P1124
    .const 'Sub' $P1123 = "56_1309859073.622" 
    capture_lex $P1123
    .const 'Sub' $P1118 = "55_1309859073.622" 
    capture_lex $P1118
    .const 'Sub' $P1117 = "54_1309859073.622" 
    capture_lex $P1117
    .const 'Sub' $P1113 = "53_1309859073.622" 
    capture_lex $P1113
    .const 'Sub' $P1112 = "52_1309859073.622" 
    capture_lex $P1112
    .const 'Sub' $P1107 = "51_1309859073.622" 
    capture_lex $P1107
    .const 'Sub' $P1106 = "50_1309859073.622" 
    capture_lex $P1106
    .const 'Sub' $P1102 = "49_1309859073.622" 
    capture_lex $P1102
    .const 'Sub' $P1101 = "48_1309859073.622" 
    capture_lex $P1101
    .const 'Sub' $P1097 = "47_1309859073.622" 
    capture_lex $P1097
    .const 'Sub' $P1096 = "46_1309859073.622" 
    capture_lex $P1096
    .const 'Sub' $P1091 = "45_1309859073.622" 
    capture_lex $P1091
    .const 'Sub' $P1090 = "44_1309859073.622" 
    capture_lex $P1090
    .const 'Sub' $P1085 = "43_1309859073.622" 
    capture_lex $P1085
    .const 'Sub' $P1082 = "42_1309859073.622" 
    capture_lex $P1082
    .const 'Sub' $P1081 = "41_1309859073.622" 
    capture_lex $P1081
    .const 'Sub' $P1078 = "40_1309859073.622" 
    capture_lex $P1078
    .const 'Sub' $P1077 = "39_1309859073.622" 
    capture_lex $P1077
    .const 'Sub' $P1074 = "38_1309859073.622" 
    capture_lex $P1074
    .const 'Sub' $P1073 = "37_1309859073.622" 
    capture_lex $P1073
    .const 'Sub' $P1069 = "36_1309859073.622" 
    capture_lex $P1069
    .const 'Sub' $P1068 = "35_1309859073.622" 
    capture_lex $P1068
    .const 'Sub' $P1065 = "34_1309859073.622" 
    capture_lex $P1065
    .const 'Sub' $P1064 = "33_1309859073.622" 
    capture_lex $P1064
    .const 'Sub' $P1061 = "32_1309859073.622" 
    capture_lex $P1061
    .const 'Sub' $P1060 = "31_1309859073.622" 
    capture_lex $P1060
    .const 'Sub' $P1057 = "30_1309859073.622" 
    capture_lex $P1057
    .const 'Sub' $P1032 = "17_1309859073.622" 
    capture_lex $P1032
    .const 'Sub' $P1025 = "16_1309859073.622" 
    capture_lex $P1025
    .const 'Sub' $P1024 = "15_1309859073.622" 
    capture_lex $P1024
    .const 'Sub' $P1019 = "14_1309859073.622" 
    capture_lex $P1019
.annotate 'line', 8
    new $P103, "Undef"
    set $P1015, $P103
    .lex "$brackets", $P1015
.annotate 'line', 10
    new $P104, "Undef"
    set $P1016, $P104
    .lex "$cursor_class", $P1016
    .lex "$?PACKAGE", $P1017
    .lex "$?CLASS", $P1018
.annotate 'line', 8
    new $P105, "String"
    assign $P105, unicode:"<>[](){}\x{ab}\x{bb}\u0f3a\u0f3b\u0f3c\u0f3d\u169b\u169c\u2045\u2046\u207d\u207e\u208d\u208e\u2329\u232a\u2768\u2769\u276a\u276b\u276c\u276d\u276e\u276f\u2770\u2771\u2772\u2773\u2774\u2775\u27c5\u27c6\u27e6\u27e7\u27e8\u27e9\u27ea\u27eb\u2983\u2984\u2985\u2986\u2987\u2988\u2989\u298a\u298b\u298c\u298d\u298e\u298f\u2990\u2991\u2992\u2993\u2994\u2995\u2996\u2997\u2998\u29d8\u29d9\u29da\u29db\u29fc\u29fd\u3008\u3009\u300a\u300b\u300c\u300d\u300e\u300f\u3010\u3011\u3014\u3015\u3016\u3017\u3018\u3019\u301a\u301b\u301d\u301e\ufd3e\ufd3f\ufe17\ufe18\ufe35\ufe36\ufe37\ufe38\ufe39\ufe3a\ufe3b\ufe3c\ufe3d\ufe3e\ufe3f\ufe40\ufe41\ufe42\ufe43\ufe44\ufe47\ufe48\ufe59\ufe5a\ufe5b\ufe5c\ufe5d\ufe5e\uff08\uff09\uff3b\uff3d\uff5b\uff5d\uff5f\uff60\uff62\uff63"
    store_lex "$brackets", $P105
.annotate 'line', 10
    find_lex $P105, "GLOBALish"
    get_who $P106, $P105
    set $P107, $P106["Regex"]
    unless_null $P107, vivify_295
    new $P107, "Undef"
  vivify_295:
    get_who $P108, $P107
    set $P109, $P108["Cursor"]
    unless_null $P109, vivify_296
    new $P109, "Undef"
  vivify_296:
    store_lex "$cursor_class", $P109
.annotate 'line', 849
    .const 'Sub' $P1315 = "120_1309859073.622" 
    newclosure $P1323, $P1315
.annotate 'line', 7
    .return ($P1323)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "ws"  :subid("14_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1020_tgt
    .local int rx1020_pos
    .local int rx1020_off
    .local int rx1020_eos
    .local int rx1020_rep
    .local pmc rx1020_cur
    .local pmc rx1020_debug
    (rx1020_cur, rx1020_pos, rx1020_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1020_cur
    .local pmc match
    .lex "$/", match
    length rx1020_eos, rx1020_tgt
    gt rx1020_pos, rx1020_eos, rx1020_done
    set rx1020_off, 0
    lt rx1020_pos, 2, rx1020_start
    sub rx1020_off, rx1020_pos, 1
    substr rx1020_tgt, rx1020_tgt, rx1020_off
  rx1020_start:
    eq $I10, 1, rx1020_restart
    if_null rx1020_debug, debug_297
    rx1020_cur."!cursor_debug"("START", "ws")
  debug_297:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1021_done
    goto rxscan1021_scan
  rxscan1021_loop:
    (rx1020_pos) = rx1020_cur."from"()
    inc rx1020_pos
    rx1020_cur."!cursor_from"(rx1020_pos)
    ge rx1020_pos, rx1020_eos, rxscan1021_done
  rxscan1021_scan:
    set_addr $I10, rxscan1021_loop
    rx1020_cur."!mark_push"(0, rx1020_pos, $I10)
  rxscan1021_done:
.annotate 'line', 12
  # rx subrule "ww" subtype=zerowidth negate=1
    rx1020_cur."!cursor_pos"(rx1020_pos)
    $P10 = rx1020_cur."ww"()
    if $P10, rx1020_fail
  # rx rxquantr1022 ** 0..*
    set_addr $I10, rxquantr1022_done
    rx1020_cur."!mark_push"(0, rx1020_pos, $I10)
  rxquantr1022_loop:
  alt1023_0:
    set_addr $I10, alt1023_1
    rx1020_cur."!mark_push"(0, rx1020_pos, $I10)
  # rx charclass_q s r 1..-1
    sub $I10, rx1020_pos, rx1020_off
    find_not_cclass $I11, .CCLASS_WHITESPACE, rx1020_tgt, $I10, rx1020_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx1020_fail
    add rx1020_pos, rx1020_off, $I11
    goto alt1023_end
  alt1023_1:
  # rx literal  "#"
    add $I11, rx1020_pos, 1
    gt $I11, rx1020_eos, rx1020_fail
    sub $I11, rx1020_pos, rx1020_off
    ord $I11, rx1020_tgt, $I11
    ne $I11, 35, rx1020_fail
    add rx1020_pos, 1
  # rx charclass_q N r 0..-1
    sub $I10, rx1020_pos, rx1020_off
    find_cclass $I11, .CCLASS_NEWLINE, rx1020_tgt, $I10, rx1020_eos
    add rx1020_pos, rx1020_off, $I11
  alt1023_end:
    set_addr $I10, rxquantr1022_done
    (rx1020_rep) = rx1020_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr1022_done
    rx1020_cur."!mark_push"(rx1020_rep, rx1020_pos, $I10)
    goto rxquantr1022_loop
  rxquantr1022_done:
  # rx pass
    rx1020_cur."!cursor_pass"(rx1020_pos, "ws")
    if_null rx1020_debug, debug_298
    rx1020_cur."!cursor_debug"("PASS", "ws", " at pos=", rx1020_pos)
  debug_298:
    .return (rx1020_cur)
  rx1020_restart:
.annotate 'line', 7
    if_null rx1020_debug, debug_299
    rx1020_cur."!cursor_debug"("NEXT", "ws")
  debug_299:
  rx1020_fail:
    (rx1020_rep, rx1020_pos, $I10, $P10) = rx1020_cur."!mark_fail"(0)
    lt rx1020_pos, -1, rx1020_done
    eq rx1020_pos, -1, rx1020_fail
    jump $I10
  rx1020_done:
    rx1020_cur."!cursor_fail"()
    if_null rx1020_debug, debug_300
    rx1020_cur."!cursor_debug"("FAIL", "ws")
  debug_300:
    .return (rx1020_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__ws"  :subid("15_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    new $P105, "ResizablePMCArray"
    push $P105, ""
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "termish"  :subid("16_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1026_tgt
    .local int rx1026_pos
    .local int rx1026_off
    .local int rx1026_eos
    .local int rx1026_rep
    .local pmc rx1026_cur
    .local pmc rx1026_debug
    (rx1026_cur, rx1026_pos, rx1026_tgt, $I10) = self."!cursor_start"()
    rx1026_cur."!cursor_caparray"("prefixish", "postfixish")
    .lex unicode:"$\x{a2}", rx1026_cur
    .local pmc match
    .lex "$/", match
    length rx1026_eos, rx1026_tgt
    gt rx1026_pos, rx1026_eos, rx1026_done
    set rx1026_off, 0
    lt rx1026_pos, 2, rx1026_start
    sub rx1026_off, rx1026_pos, 1
    substr rx1026_tgt, rx1026_tgt, rx1026_off
  rx1026_start:
    eq $I10, 1, rx1026_restart
    if_null rx1026_debug, debug_301
    rx1026_cur."!cursor_debug"("START", "termish")
  debug_301:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1027_done
    goto rxscan1027_scan
  rxscan1027_loop:
    (rx1026_pos) = rx1026_cur."from"()
    inc rx1026_pos
    rx1026_cur."!cursor_from"(rx1026_pos)
    ge rx1026_pos, rx1026_eos, rxscan1027_done
  rxscan1027_scan:
    set_addr $I10, rxscan1027_loop
    rx1026_cur."!mark_push"(0, rx1026_pos, $I10)
  rxscan1027_done:
.annotate 'line', 15
  # rx rxquantr1028 ** 0..*
    set_addr $I10, rxquantr1028_done
    rx1026_cur."!mark_push"(0, rx1026_pos, $I10)
  rxquantr1028_loop:
  # rx subrule "prefixish" subtype=capture negate=
    rx1026_cur."!cursor_pos"(rx1026_pos)
    $P10 = rx1026_cur."prefixish"()
    unless $P10, rx1026_fail
    goto rxsubrule1029_pass
  rxsubrule1029_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx1026_fail
  rxsubrule1029_pass:
    set_addr $I10, rxsubrule1029_back
    rx1026_cur."!mark_push"(0, rx1026_pos, $I10, $P10)
    $P10."!cursor_names"("prefixish")
    rx1026_pos = $P10."pos"()
    set_addr $I10, rxquantr1028_done
    (rx1026_rep) = rx1026_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr1028_done
    rx1026_cur."!mark_push"(rx1026_rep, rx1026_pos, $I10)
    goto rxquantr1028_loop
  rxquantr1028_done:
.annotate 'line', 16
  # rx subrule "term" subtype=capture negate=
    rx1026_cur."!cursor_pos"(rx1026_pos)
    $P10 = rx1026_cur."term"()
    unless $P10, rx1026_fail
    rx1026_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("term")
    rx1026_pos = $P10."pos"()
.annotate 'line', 17
  # rx rxquantr1030 ** 0..*
    set_addr $I10, rxquantr1030_done
    rx1026_cur."!mark_push"(0, rx1026_pos, $I10)
  rxquantr1030_loop:
  # rx subrule "postfixish" subtype=capture negate=
    rx1026_cur."!cursor_pos"(rx1026_pos)
    $P10 = rx1026_cur."postfixish"()
    unless $P10, rx1026_fail
    goto rxsubrule1031_pass
  rxsubrule1031_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx1026_fail
  rxsubrule1031_pass:
    set_addr $I10, rxsubrule1031_back
    rx1026_cur."!mark_push"(0, rx1026_pos, $I10, $P10)
    $P10."!cursor_names"("postfixish")
    rx1026_pos = $P10."pos"()
    set_addr $I10, rxquantr1030_done
    (rx1026_rep) = rx1026_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr1030_done
    rx1026_cur."!mark_push"(rx1026_rep, rx1026_pos, $I10)
    goto rxquantr1030_loop
  rxquantr1030_done:
.annotate 'line', 14
  # rx pass
    rx1026_cur."!cursor_pass"(rx1026_pos, "termish")
    if_null rx1026_debug, debug_302
    rx1026_cur."!cursor_debug"("PASS", "termish", " at pos=", rx1026_pos)
  debug_302:
    .return (rx1026_cur)
  rx1026_restart:
.annotate 'line', 7
    if_null rx1026_debug, debug_303
    rx1026_cur."!cursor_debug"("NEXT", "termish")
  debug_303:
  rx1026_fail:
    (rx1026_rep, rx1026_pos, $I10, $P10) = rx1026_cur."!mark_fail"(0)
    lt rx1026_pos, -1, rx1026_done
    eq rx1026_pos, -1, rx1026_fail
    jump $I10
  rx1026_done:
    rx1026_cur."!cursor_fail"()
    if_null rx1026_debug, debug_304
    rx1026_cur."!cursor_debug"("FAIL", "termish")
  debug_304:
    .return (rx1026_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__termish"  :subid("17_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    new $P105, "ResizablePMCArray"
    push $P105, ""
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "term"  :subid("18_1309859073.622")
    .param pmc param_1034
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 20
    .lex "self", param_1034
    $P105 = param_1034."!protoregex"("term")
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__term"  :subid("19_1309859073.622")
    .param pmc param_1036
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 20
    .lex "self", param_1036
    $P106 = param_1036."!PREFIX__!protoregex"("term")
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "infix"  :subid("20_1309859073.622")
    .param pmc param_1038
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 21
    .lex "self", param_1038
    $P105 = param_1038."!protoregex"("infix")
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__infix"  :subid("21_1309859073.622")
    .param pmc param_1040
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 21
    .lex "self", param_1040
    $P106 = param_1040."!PREFIX__!protoregex"("infix")
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "prefix"  :subid("22_1309859073.622")
    .param pmc param_1042
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 22
    .lex "self", param_1042
    $P105 = param_1042."!protoregex"("prefix")
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__prefix"  :subid("23_1309859073.622")
    .param pmc param_1044
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 22
    .lex "self", param_1044
    $P106 = param_1044."!PREFIX__!protoregex"("prefix")
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postfix"  :subid("24_1309859073.622")
    .param pmc param_1046
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 23
    .lex "self", param_1046
    $P105 = param_1046."!protoregex"("postfix")
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postfix"  :subid("25_1309859073.622")
    .param pmc param_1048
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 23
    .lex "self", param_1048
    $P106 = param_1048."!PREFIX__!protoregex"("postfix")
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "circumfix"  :subid("26_1309859073.622")
    .param pmc param_1050
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 24
    .lex "self", param_1050
    $P105 = param_1050."!protoregex"("circumfix")
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__circumfix"  :subid("27_1309859073.622")
    .param pmc param_1052
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 24
    .lex "self", param_1052
    $P106 = param_1052."!PREFIX__!protoregex"("circumfix")
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postcircumfix"  :subid("28_1309859073.622")
    .param pmc param_1054
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 25
    .lex "self", param_1054
    $P105 = param_1054."!protoregex"("postcircumfix")
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postcircumfix"  :subid("29_1309859073.622")
    .param pmc param_1056
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 25
    .lex "self", param_1056
    $P106 = param_1056."!PREFIX__!protoregex"("postcircumfix")
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "term:sym<circumfix>"  :subid("30_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1058_tgt
    .local int rx1058_pos
    .local int rx1058_off
    .local int rx1058_eos
    .local int rx1058_rep
    .local pmc rx1058_cur
    .local pmc rx1058_debug
    (rx1058_cur, rx1058_pos, rx1058_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1058_cur
    .local pmc match
    .lex "$/", match
    length rx1058_eos, rx1058_tgt
    gt rx1058_pos, rx1058_eos, rx1058_done
    set rx1058_off, 0
    lt rx1058_pos, 2, rx1058_start
    sub rx1058_off, rx1058_pos, 1
    substr rx1058_tgt, rx1058_tgt, rx1058_off
  rx1058_start:
    eq $I10, 1, rx1058_restart
    if_null rx1058_debug, debug_305
    rx1058_cur."!cursor_debug"("START", "term:sym<circumfix>")
  debug_305:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1059_done
    goto rxscan1059_scan
  rxscan1059_loop:
    (rx1058_pos) = rx1058_cur."from"()
    inc rx1058_pos
    rx1058_cur."!cursor_from"(rx1058_pos)
    ge rx1058_pos, rx1058_eos, rxscan1059_done
  rxscan1059_scan:
    set_addr $I10, rxscan1059_loop
    rx1058_cur."!mark_push"(0, rx1058_pos, $I10)
  rxscan1059_done:
.annotate 'line', 27
  # rx subrule "circumfix" subtype=capture negate=
    rx1058_cur."!cursor_pos"(rx1058_pos)
    $P10 = rx1058_cur."circumfix"()
    unless $P10, rx1058_fail
    rx1058_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("circumfix")
    rx1058_pos = $P10."pos"()
  # rx pass
    rx1058_cur."!cursor_pass"(rx1058_pos, "term:sym<circumfix>")
    if_null rx1058_debug, debug_306
    rx1058_cur."!cursor_debug"("PASS", "term:sym<circumfix>", " at pos=", rx1058_pos)
  debug_306:
    .return (rx1058_cur)
  rx1058_restart:
.annotate 'line', 7
    if_null rx1058_debug, debug_307
    rx1058_cur."!cursor_debug"("NEXT", "term:sym<circumfix>")
  debug_307:
  rx1058_fail:
    (rx1058_rep, rx1058_pos, $I10, $P10) = rx1058_cur."!mark_fail"(0)
    lt rx1058_pos, -1, rx1058_done
    eq rx1058_pos, -1, rx1058_fail
    jump $I10
  rx1058_done:
    rx1058_cur."!cursor_fail"()
    if_null rx1058_debug, debug_308
    rx1058_cur."!cursor_debug"("FAIL", "term:sym<circumfix>")
  debug_308:
    .return (rx1058_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__term:sym<circumfix>"  :subid("31_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    $P105 = self."!PREFIX__!subrule"("circumfix", "")
    new $P106, "ResizablePMCArray"
    push $P106, $P105
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "infixish"  :subid("32_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1062_tgt
    .local int rx1062_pos
    .local int rx1062_off
    .local int rx1062_eos
    .local int rx1062_rep
    .local pmc rx1062_cur
    .local pmc rx1062_debug
    (rx1062_cur, rx1062_pos, rx1062_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1062_cur
    .local pmc match
    .lex "$/", match
    length rx1062_eos, rx1062_tgt
    gt rx1062_pos, rx1062_eos, rx1062_done
    set rx1062_off, 0
    lt rx1062_pos, 2, rx1062_start
    sub rx1062_off, rx1062_pos, 1
    substr rx1062_tgt, rx1062_tgt, rx1062_off
  rx1062_start:
    eq $I10, 1, rx1062_restart
    if_null rx1062_debug, debug_309
    rx1062_cur."!cursor_debug"("START", "infixish")
  debug_309:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1063_done
    goto rxscan1063_scan
  rxscan1063_loop:
    (rx1062_pos) = rx1062_cur."from"()
    inc rx1062_pos
    rx1062_cur."!cursor_from"(rx1062_pos)
    ge rx1062_pos, rx1062_eos, rxscan1063_done
  rxscan1063_scan:
    set_addr $I10, rxscan1063_loop
    rx1062_cur."!mark_push"(0, rx1062_pos, $I10)
  rxscan1063_done:
.annotate 'line', 29
  # rx subrule "infix" subtype=capture negate=
    rx1062_cur."!cursor_pos"(rx1062_pos)
    $P10 = rx1062_cur."infix"()
    unless $P10, rx1062_fail
    rx1062_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=infix")
    rx1062_pos = $P10."pos"()
  # rx pass
    rx1062_cur."!cursor_pass"(rx1062_pos, "infixish")
    if_null rx1062_debug, debug_310
    rx1062_cur."!cursor_debug"("PASS", "infixish", " at pos=", rx1062_pos)
  debug_310:
    .return (rx1062_cur)
  rx1062_restart:
.annotate 'line', 7
    if_null rx1062_debug, debug_311
    rx1062_cur."!cursor_debug"("NEXT", "infixish")
  debug_311:
  rx1062_fail:
    (rx1062_rep, rx1062_pos, $I10, $P10) = rx1062_cur."!mark_fail"(0)
    lt rx1062_pos, -1, rx1062_done
    eq rx1062_pos, -1, rx1062_fail
    jump $I10
  rx1062_done:
    rx1062_cur."!cursor_fail"()
    if_null rx1062_debug, debug_312
    rx1062_cur."!cursor_debug"("FAIL", "infixish")
  debug_312:
    .return (rx1062_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__infixish"  :subid("33_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    $P105 = self."!PREFIX__!subrule"("infix", "")
    new $P106, "ResizablePMCArray"
    push $P106, $P105
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "prefixish"  :subid("34_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1066_tgt
    .local int rx1066_pos
    .local int rx1066_off
    .local int rx1066_eos
    .local int rx1066_rep
    .local pmc rx1066_cur
    .local pmc rx1066_debug
    (rx1066_cur, rx1066_pos, rx1066_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1066_cur
    .local pmc match
    .lex "$/", match
    length rx1066_eos, rx1066_tgt
    gt rx1066_pos, rx1066_eos, rx1066_done
    set rx1066_off, 0
    lt rx1066_pos, 2, rx1066_start
    sub rx1066_off, rx1066_pos, 1
    substr rx1066_tgt, rx1066_tgt, rx1066_off
  rx1066_start:
    eq $I10, 1, rx1066_restart
    if_null rx1066_debug, debug_313
    rx1066_cur."!cursor_debug"("START", "prefixish")
  debug_313:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1067_done
    goto rxscan1067_scan
  rxscan1067_loop:
    (rx1066_pos) = rx1066_cur."from"()
    inc rx1066_pos
    rx1066_cur."!cursor_from"(rx1066_pos)
    ge rx1066_pos, rx1066_eos, rxscan1067_done
  rxscan1067_scan:
    set_addr $I10, rxscan1067_loop
    rx1066_cur."!mark_push"(0, rx1066_pos, $I10)
  rxscan1067_done:
.annotate 'line', 30
  # rx subrule "prefix" subtype=capture negate=
    rx1066_cur."!cursor_pos"(rx1066_pos)
    $P10 = rx1066_cur."prefix"()
    unless $P10, rx1066_fail
    rx1066_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=prefix")
    rx1066_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx1066_cur."!cursor_pos"(rx1066_pos)
    $P10 = rx1066_cur."ws"()
    unless $P10, rx1066_fail
    rx1066_pos = $P10."pos"()
  # rx pass
    rx1066_cur."!cursor_pass"(rx1066_pos, "prefixish")
    if_null rx1066_debug, debug_314
    rx1066_cur."!cursor_debug"("PASS", "prefixish", " at pos=", rx1066_pos)
  debug_314:
    .return (rx1066_cur)
  rx1066_restart:
.annotate 'line', 7
    if_null rx1066_debug, debug_315
    rx1066_cur."!cursor_debug"("NEXT", "prefixish")
  debug_315:
  rx1066_fail:
    (rx1066_rep, rx1066_pos, $I10, $P10) = rx1066_cur."!mark_fail"(0)
    lt rx1066_pos, -1, rx1066_done
    eq rx1066_pos, -1, rx1066_fail
    jump $I10
  rx1066_done:
    rx1066_cur."!cursor_fail"()
    if_null rx1066_debug, debug_316
    rx1066_cur."!cursor_debug"("FAIL", "prefixish")
  debug_316:
    .return (rx1066_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__prefixish"  :subid("35_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    $P105 = self."!PREFIX__!subrule"("prefix", "")
    new $P106, "ResizablePMCArray"
    push $P106, $P105
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postfixish"  :subid("36_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1070_tgt
    .local int rx1070_pos
    .local int rx1070_off
    .local int rx1070_eos
    .local int rx1070_rep
    .local pmc rx1070_cur
    .local pmc rx1070_debug
    (rx1070_cur, rx1070_pos, rx1070_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1070_cur
    .local pmc match
    .lex "$/", match
    length rx1070_eos, rx1070_tgt
    gt rx1070_pos, rx1070_eos, rx1070_done
    set rx1070_off, 0
    lt rx1070_pos, 2, rx1070_start
    sub rx1070_off, rx1070_pos, 1
    substr rx1070_tgt, rx1070_tgt, rx1070_off
  rx1070_start:
    eq $I10, 1, rx1070_restart
    if_null rx1070_debug, debug_317
    rx1070_cur."!cursor_debug"("START", "postfixish")
  debug_317:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1071_done
    goto rxscan1071_scan
  rxscan1071_loop:
    (rx1070_pos) = rx1070_cur."from"()
    inc rx1070_pos
    rx1070_cur."!cursor_from"(rx1070_pos)
    ge rx1070_pos, rx1070_eos, rxscan1071_done
  rxscan1071_scan:
    set_addr $I10, rxscan1071_loop
    rx1070_cur."!mark_push"(0, rx1070_pos, $I10)
  rxscan1071_done:
  alt1072_0:
.annotate 'line', 31
    set_addr $I10, alt1072_1
    rx1070_cur."!mark_push"(0, rx1070_pos, $I10)
.annotate 'line', 32
  # rx subrule "postfix" subtype=capture negate=
    rx1070_cur."!cursor_pos"(rx1070_pos)
    $P10 = rx1070_cur."postfix"()
    unless $P10, rx1070_fail
    rx1070_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=postfix")
    rx1070_pos = $P10."pos"()
    goto alt1072_end
  alt1072_1:
.annotate 'line', 33
  # rx subrule "postcircumfix" subtype=capture negate=
    rx1070_cur."!cursor_pos"(rx1070_pos)
    $P10 = rx1070_cur."postcircumfix"()
    unless $P10, rx1070_fail
    rx1070_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=postcircumfix")
    rx1070_pos = $P10."pos"()
  alt1072_end:
.annotate 'line', 31
  # rx pass
    rx1070_cur."!cursor_pass"(rx1070_pos, "postfixish")
    if_null rx1070_debug, debug_318
    rx1070_cur."!cursor_debug"("PASS", "postfixish", " at pos=", rx1070_pos)
  debug_318:
    .return (rx1070_cur)
  rx1070_restart:
.annotate 'line', 7
    if_null rx1070_debug, debug_319
    rx1070_cur."!cursor_debug"("NEXT", "postfixish")
  debug_319:
  rx1070_fail:
    (rx1070_rep, rx1070_pos, $I10, $P10) = rx1070_cur."!mark_fail"(0)
    lt rx1070_pos, -1, rx1070_done
    eq rx1070_pos, -1, rx1070_fail
    jump $I10
  rx1070_done:
    rx1070_cur."!cursor_fail"()
    if_null rx1070_debug, debug_320
    rx1070_cur."!cursor_debug"("FAIL", "postfixish")
  debug_320:
    .return (rx1070_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postfixish"  :subid("37_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    $P105 = self."!PREFIX__!subrule"("postcircumfix", "")
    $P106 = self."!PREFIX__!subrule"("postfix", "")
    new $P107, "ResizablePMCArray"
    push $P107, $P105
    push $P107, $P106
    .return ($P107)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "nullterm"  :subid("38_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1075_tgt
    .local int rx1075_pos
    .local int rx1075_off
    .local int rx1075_eos
    .local int rx1075_rep
    .local pmc rx1075_cur
    .local pmc rx1075_debug
    (rx1075_cur, rx1075_pos, rx1075_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1075_cur
    .local pmc match
    .lex "$/", match
    length rx1075_eos, rx1075_tgt
    gt rx1075_pos, rx1075_eos, rx1075_done
    set rx1075_off, 0
    lt rx1075_pos, 2, rx1075_start
    sub rx1075_off, rx1075_pos, 1
    substr rx1075_tgt, rx1075_tgt, rx1075_off
  rx1075_start:
    eq $I10, 1, rx1075_restart
    if_null rx1075_debug, debug_321
    rx1075_cur."!cursor_debug"("START", "nullterm")
  debug_321:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1076_done
    goto rxscan1076_scan
  rxscan1076_loop:
    (rx1075_pos) = rx1075_cur."from"()
    inc rx1075_pos
    rx1075_cur."!cursor_from"(rx1075_pos)
    ge rx1075_pos, rx1075_eos, rxscan1076_done
  rxscan1076_scan:
    set_addr $I10, rxscan1076_loop
    rx1075_cur."!mark_push"(0, rx1075_pos, $I10)
  rxscan1076_done:
.annotate 'line', 36
  # rx pass
    rx1075_cur."!cursor_pass"(rx1075_pos, "nullterm")
    if_null rx1075_debug, debug_322
    rx1075_cur."!cursor_debug"("PASS", "nullterm", " at pos=", rx1075_pos)
  debug_322:
    .return (rx1075_cur)
  rx1075_restart:
.annotate 'line', 7
    if_null rx1075_debug, debug_323
    rx1075_cur."!cursor_debug"("NEXT", "nullterm")
  debug_323:
  rx1075_fail:
    (rx1075_rep, rx1075_pos, $I10, $P10) = rx1075_cur."!mark_fail"(0)
    lt rx1075_pos, -1, rx1075_done
    eq rx1075_pos, -1, rx1075_fail
    jump $I10
  rx1075_done:
    rx1075_cur."!cursor_fail"()
    if_null rx1075_debug, debug_324
    rx1075_cur."!cursor_debug"("FAIL", "nullterm")
  debug_324:
    .return (rx1075_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__nullterm"  :subid("39_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    new $P105, "ResizablePMCArray"
    push $P105, ""
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "nullterm_alt"  :subid("40_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1079_tgt
    .local int rx1079_pos
    .local int rx1079_off
    .local int rx1079_eos
    .local int rx1079_rep
    .local pmc rx1079_cur
    .local pmc rx1079_debug
    (rx1079_cur, rx1079_pos, rx1079_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1079_cur
    .local pmc match
    .lex "$/", match
    length rx1079_eos, rx1079_tgt
    gt rx1079_pos, rx1079_eos, rx1079_done
    set rx1079_off, 0
    lt rx1079_pos, 2, rx1079_start
    sub rx1079_off, rx1079_pos, 1
    substr rx1079_tgt, rx1079_tgt, rx1079_off
  rx1079_start:
    eq $I10, 1, rx1079_restart
    if_null rx1079_debug, debug_325
    rx1079_cur."!cursor_debug"("START", "nullterm_alt")
  debug_325:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1080_done
    goto rxscan1080_scan
  rxscan1080_loop:
    (rx1079_pos) = rx1079_cur."from"()
    inc rx1079_pos
    rx1079_cur."!cursor_from"(rx1079_pos)
    ge rx1079_pos, rx1079_eos, rxscan1080_done
  rxscan1080_scan:
    set_addr $I10, rxscan1080_loop
    rx1079_cur."!mark_push"(0, rx1079_pos, $I10)
  rxscan1080_done:
.annotate 'line', 37
  # rx subrule "nullterm" subtype=capture negate=
    rx1079_cur."!cursor_pos"(rx1079_pos)
    $P10 = rx1079_cur."nullterm"()
    unless $P10, rx1079_fail
    rx1079_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("term")
    rx1079_pos = $P10."pos"()
  # rx pass
    rx1079_cur."!cursor_pass"(rx1079_pos, "nullterm_alt")
    if_null rx1079_debug, debug_326
    rx1079_cur."!cursor_debug"("PASS", "nullterm_alt", " at pos=", rx1079_pos)
  debug_326:
    .return (rx1079_cur)
  rx1079_restart:
.annotate 'line', 7
    if_null rx1079_debug, debug_327
    rx1079_cur."!cursor_debug"("NEXT", "nullterm_alt")
  debug_327:
  rx1079_fail:
    (rx1079_rep, rx1079_pos, $I10, $P10) = rx1079_cur."!mark_fail"(0)
    lt rx1079_pos, -1, rx1079_done
    eq rx1079_pos, -1, rx1079_fail
    jump $I10
  rx1079_done:
    rx1079_cur."!cursor_fail"()
    if_null rx1079_debug, debug_328
    rx1079_cur."!cursor_debug"("FAIL", "nullterm_alt")
  debug_328:
    .return (rx1079_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__nullterm_alt"  :subid("41_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    $P105 = self."!PREFIX__!subrule"("nullterm", "")
    new $P106, "ResizablePMCArray"
    push $P106, $P105
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "nulltermish" :anon :subid("42_1309859073.622") :outer("13_1309859073.622")
    .param pmc param_1083
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 40
    .lex "self", param_1083
    find_lex $P106, "self"
    $P107 = $P106."termish"()
    unless $P107, unless_1084
    set $P105, $P107
    goto unless_1084_end
  unless_1084:
    find_lex $P108, "self"
    $P109 = $P108."nullterm_alt"()
    set $P105, $P109
  unless_1084_end:
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_delimited"  :subid("43_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1086_tgt
    .local int rx1086_pos
    .local int rx1086_off
    .local int rx1086_eos
    .local int rx1086_rep
    .local pmc rx1086_cur
    .local pmc rx1086_debug
    (rx1086_cur, rx1086_pos, rx1086_tgt, $I10) = self."!cursor_start"()
    rx1086_cur."!cursor_caparray"("quote_atom")
    .lex unicode:"$\x{a2}", rx1086_cur
    .local pmc match
    .lex "$/", match
    length rx1086_eos, rx1086_tgt
    gt rx1086_pos, rx1086_eos, rx1086_done
    set rx1086_off, 0
    lt rx1086_pos, 2, rx1086_start
    sub rx1086_off, rx1086_pos, 1
    substr rx1086_tgt, rx1086_tgt, rx1086_off
  rx1086_start:
    eq $I10, 1, rx1086_restart
    if_null rx1086_debug, debug_329
    rx1086_cur."!cursor_debug"("START", "quote_delimited")
  debug_329:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1087_done
    goto rxscan1087_scan
  rxscan1087_loop:
    (rx1086_pos) = rx1086_cur."from"()
    inc rx1086_pos
    rx1086_cur."!cursor_from"(rx1086_pos)
    ge rx1086_pos, rx1086_eos, rxscan1087_done
  rxscan1087_scan:
    set_addr $I10, rxscan1087_loop
    rx1086_cur."!mark_push"(0, rx1086_pos, $I10)
  rxscan1087_done:
.annotate 'line', 44
  # rx subrule "starter" subtype=capture negate=
    rx1086_cur."!cursor_pos"(rx1086_pos)
    $P10 = rx1086_cur."starter"()
    unless $P10, rx1086_fail
    rx1086_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("starter")
    rx1086_pos = $P10."pos"()
  # rx rxquantr1088 ** 0..*
    set_addr $I10, rxquantr1088_done
    rx1086_cur."!mark_push"(0, rx1086_pos, $I10)
  rxquantr1088_loop:
  # rx subrule "quote_atom" subtype=capture negate=
    rx1086_cur."!cursor_pos"(rx1086_pos)
    $P10 = rx1086_cur."quote_atom"()
    unless $P10, rx1086_fail
    goto rxsubrule1089_pass
  rxsubrule1089_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx1086_fail
  rxsubrule1089_pass:
    set_addr $I10, rxsubrule1089_back
    rx1086_cur."!mark_push"(0, rx1086_pos, $I10, $P10)
    $P10."!cursor_names"("quote_atom")
    rx1086_pos = $P10."pos"()
    set_addr $I10, rxquantr1088_done
    (rx1086_rep) = rx1086_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr1088_done
    rx1086_cur."!mark_push"(rx1086_rep, rx1086_pos, $I10)
    goto rxquantr1088_loop
  rxquantr1088_done:
  # rx subrule "stopper" subtype=capture negate=
    rx1086_cur."!cursor_pos"(rx1086_pos)
    $P10 = rx1086_cur."stopper"()
    unless $P10, rx1086_fail
    rx1086_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("stopper")
    rx1086_pos = $P10."pos"()
.annotate 'line', 43
  # rx pass
    rx1086_cur."!cursor_pass"(rx1086_pos, "quote_delimited")
    if_null rx1086_debug, debug_330
    rx1086_cur."!cursor_debug"("PASS", "quote_delimited", " at pos=", rx1086_pos)
  debug_330:
    .return (rx1086_cur)
  rx1086_restart:
.annotate 'line', 7
    if_null rx1086_debug, debug_331
    rx1086_cur."!cursor_debug"("NEXT", "quote_delimited")
  debug_331:
  rx1086_fail:
    (rx1086_rep, rx1086_pos, $I10, $P10) = rx1086_cur."!mark_fail"(0)
    lt rx1086_pos, -1, rx1086_done
    eq rx1086_pos, -1, rx1086_fail
    jump $I10
  rx1086_done:
    rx1086_cur."!cursor_fail"()
    if_null rx1086_debug, debug_332
    rx1086_cur."!cursor_debug"("FAIL", "quote_delimited")
  debug_332:
    .return (rx1086_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_delimited"  :subid("44_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    $P105 = self."!PREFIX__!subrule"("starter", "")
    new $P106, "ResizablePMCArray"
    push $P106, $P105
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_atom"  :subid("45_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1092_tgt
    .local int rx1092_pos
    .local int rx1092_off
    .local int rx1092_eos
    .local int rx1092_rep
    .local pmc rx1092_cur
    .local pmc rx1092_debug
    (rx1092_cur, rx1092_pos, rx1092_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1092_cur
    .local pmc match
    .lex "$/", match
    length rx1092_eos, rx1092_tgt
    gt rx1092_pos, rx1092_eos, rx1092_done
    set rx1092_off, 0
    lt rx1092_pos, 2, rx1092_start
    sub rx1092_off, rx1092_pos, 1
    substr rx1092_tgt, rx1092_tgt, rx1092_off
  rx1092_start:
    eq $I10, 1, rx1092_restart
    if_null rx1092_debug, debug_333
    rx1092_cur."!cursor_debug"("START", "quote_atom")
  debug_333:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1093_done
    goto rxscan1093_scan
  rxscan1093_loop:
    (rx1092_pos) = rx1092_cur."from"()
    inc rx1092_pos
    rx1092_cur."!cursor_from"(rx1092_pos)
    ge rx1092_pos, rx1092_eos, rxscan1093_done
  rxscan1093_scan:
    set_addr $I10, rxscan1093_loop
    rx1092_cur."!mark_push"(0, rx1092_pos, $I10)
  rxscan1093_done:
.annotate 'line', 48
  # rx subrule "stopper" subtype=zerowidth negate=1
    rx1092_cur."!cursor_pos"(rx1092_pos)
    $P10 = rx1092_cur."stopper"()
    if $P10, rx1092_fail
  alt1094_0:
.annotate 'line', 49
    set_addr $I10, alt1094_1
    rx1092_cur."!mark_push"(0, rx1092_pos, $I10)
.annotate 'line', 50
  # rx subrule "quote_escape" subtype=capture negate=
    rx1092_cur."!cursor_pos"(rx1092_pos)
    $P10 = rx1092_cur."quote_escape"()
    unless $P10, rx1092_fail
    rx1092_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_escape")
    rx1092_pos = $P10."pos"()
    goto alt1094_end
  alt1094_1:
.annotate 'line', 51
  # rx rxquantr1095 ** 1..*
    set_addr $I10, rxquantr1095_done
    rx1092_cur."!mark_push"(0, -1, $I10)
  rxquantr1095_loop:
  # rx subrule "stopper" subtype=zerowidth negate=1
    rx1092_cur."!cursor_pos"(rx1092_pos)
    $P10 = rx1092_cur."stopper"()
    if $P10, rx1092_fail
  # rx subrule "quote_escape" subtype=zerowidth negate=1
    rx1092_cur."!cursor_pos"(rx1092_pos)
    $P10 = rx1092_cur."quote_escape"()
    if $P10, rx1092_fail
  # rx charclass .
    ge rx1092_pos, rx1092_eos, rx1092_fail
    inc rx1092_pos
    set_addr $I10, rxquantr1095_done
    (rx1092_rep) = rx1092_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr1095_done
    rx1092_cur."!mark_push"(rx1092_rep, rx1092_pos, $I10)
    goto rxquantr1095_loop
  rxquantr1095_done:
  alt1094_end:
.annotate 'line', 47
  # rx pass
    rx1092_cur."!cursor_pass"(rx1092_pos, "quote_atom")
    if_null rx1092_debug, debug_334
    rx1092_cur."!cursor_debug"("PASS", "quote_atom", " at pos=", rx1092_pos)
  debug_334:
    .return (rx1092_cur)
  rx1092_restart:
.annotate 'line', 7
    if_null rx1092_debug, debug_335
    rx1092_cur."!cursor_debug"("NEXT", "quote_atom")
  debug_335:
  rx1092_fail:
    (rx1092_rep, rx1092_pos, $I10, $P10) = rx1092_cur."!mark_fail"(0)
    lt rx1092_pos, -1, rx1092_done
    eq rx1092_pos, -1, rx1092_fail
    jump $I10
  rx1092_done:
    rx1092_cur."!cursor_fail"()
    if_null rx1092_debug, debug_336
    rx1092_cur."!cursor_debug"("FAIL", "quote_atom")
  debug_336:
    .return (rx1092_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_atom"  :subid("46_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    new $P107, "ResizablePMCArray"
    push $P107, ""
    .return ($P107)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "decint"  :subid("47_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1098_tgt
    .local int rx1098_pos
    .local int rx1098_off
    .local int rx1098_eos
    .local int rx1098_rep
    .local pmc rx1098_cur
    .local pmc rx1098_debug
    (rx1098_cur, rx1098_pos, rx1098_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1098_cur
    .local pmc match
    .lex "$/", match
    length rx1098_eos, rx1098_tgt
    gt rx1098_pos, rx1098_eos, rx1098_done
    set rx1098_off, 0
    lt rx1098_pos, 2, rx1098_start
    sub rx1098_off, rx1098_pos, 1
    substr rx1098_tgt, rx1098_tgt, rx1098_off
  rx1098_start:
    eq $I10, 1, rx1098_restart
    if_null rx1098_debug, debug_337
    rx1098_cur."!cursor_debug"("START", "decint")
  debug_337:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1099_done
    goto rxscan1099_scan
  rxscan1099_loop:
    (rx1098_pos) = rx1098_cur."from"()
    inc rx1098_pos
    rx1098_cur."!cursor_from"(rx1098_pos)
    ge rx1098_pos, rx1098_eos, rxscan1099_done
  rxscan1099_scan:
    set_addr $I10, rxscan1099_loop
    rx1098_cur."!mark_push"(0, rx1098_pos, $I10)
  rxscan1099_done:
.annotate 'line', 55
  # rx rxquantr1100 ** 1..*
    set_addr $I10, rxquantr1100_done
    rx1098_cur."!mark_push"(0, -1, $I10)
  rxquantr1100_loop:
  # rx charclass_q d r 1..-1
    sub $I10, rx1098_pos, rx1098_off
    find_not_cclass $I11, .CCLASS_NUMERIC, rx1098_tgt, $I10, rx1098_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx1098_fail
    add rx1098_pos, rx1098_off, $I11
    set_addr $I10, rxquantr1100_done
    (rx1098_rep) = rx1098_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr1100_done
    rx1098_cur."!mark_push"(rx1098_rep, rx1098_pos, $I10)
  # rx literal  "_"
    add $I11, rx1098_pos, 1
    gt $I11, rx1098_eos, rx1098_fail
    sub $I11, rx1098_pos, rx1098_off
    ord $I11, rx1098_tgt, $I11
    ne $I11, 95, rx1098_fail
    add rx1098_pos, 1
    goto rxquantr1100_loop
  rxquantr1100_done:
  # rx pass
    rx1098_cur."!cursor_pass"(rx1098_pos, "decint")
    if_null rx1098_debug, debug_338
    rx1098_cur."!cursor_debug"("PASS", "decint", " at pos=", rx1098_pos)
  debug_338:
    .return (rx1098_cur)
  rx1098_restart:
.annotate 'line', 7
    if_null rx1098_debug, debug_339
    rx1098_cur."!cursor_debug"("NEXT", "decint")
  debug_339:
  rx1098_fail:
    (rx1098_rep, rx1098_pos, $I10, $P10) = rx1098_cur."!mark_fail"(0)
    lt rx1098_pos, -1, rx1098_done
    eq rx1098_pos, -1, rx1098_fail
    jump $I10
  rx1098_done:
    rx1098_cur."!cursor_fail"()
    if_null rx1098_debug, debug_340
    rx1098_cur."!cursor_debug"("FAIL", "decint")
  debug_340:
    .return (rx1098_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__decint"  :subid("48_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    new $P105, "ResizablePMCArray"
    push $P105, ""
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "decints"  :subid("49_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1103_tgt
    .local int rx1103_pos
    .local int rx1103_off
    .local int rx1103_eos
    .local int rx1103_rep
    .local pmc rx1103_cur
    .local pmc rx1103_debug
    (rx1103_cur, rx1103_pos, rx1103_tgt, $I10) = self."!cursor_start"()
    rx1103_cur."!cursor_caparray"("decint")
    .lex unicode:"$\x{a2}", rx1103_cur
    .local pmc match
    .lex "$/", match
    length rx1103_eos, rx1103_tgt
    gt rx1103_pos, rx1103_eos, rx1103_done
    set rx1103_off, 0
    lt rx1103_pos, 2, rx1103_start
    sub rx1103_off, rx1103_pos, 1
    substr rx1103_tgt, rx1103_tgt, rx1103_off
  rx1103_start:
    eq $I10, 1, rx1103_restart
    if_null rx1103_debug, debug_341
    rx1103_cur."!cursor_debug"("START", "decints")
  debug_341:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1104_done
    goto rxscan1104_scan
  rxscan1104_loop:
    (rx1103_pos) = rx1103_cur."from"()
    inc rx1103_pos
    rx1103_cur."!cursor_from"(rx1103_pos)
    ge rx1103_pos, rx1103_eos, rxscan1104_done
  rxscan1104_scan:
    set_addr $I10, rxscan1104_loop
    rx1103_cur."!mark_push"(0, rx1103_pos, $I10)
  rxscan1104_done:
.annotate 'line', 56
  # rx rxquantr1105 ** 1..*
    set_addr $I10, rxquantr1105_done
    rx1103_cur."!mark_push"(0, -1, $I10)
  rxquantr1105_loop:
  # rx subrule "ws" subtype=method negate=
    rx1103_cur."!cursor_pos"(rx1103_pos)
    $P10 = rx1103_cur."ws"()
    unless $P10, rx1103_fail
    rx1103_pos = $P10."pos"()
  # rx subrule "decint" subtype=capture negate=
    rx1103_cur."!cursor_pos"(rx1103_pos)
    $P10 = rx1103_cur."decint"()
    unless $P10, rx1103_fail
    rx1103_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("decint")
    rx1103_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx1103_cur."!cursor_pos"(rx1103_pos)
    $P10 = rx1103_cur."ws"()
    unless $P10, rx1103_fail
    rx1103_pos = $P10."pos"()
    set_addr $I10, rxquantr1105_done
    (rx1103_rep) = rx1103_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr1105_done
    rx1103_cur."!mark_push"(rx1103_rep, rx1103_pos, $I10)
  # rx literal  ","
    add $I11, rx1103_pos, 1
    gt $I11, rx1103_eos, rx1103_fail
    sub $I11, rx1103_pos, rx1103_off
    ord $I11, rx1103_tgt, $I11
    ne $I11, 44, rx1103_fail
    add rx1103_pos, 1
    goto rxquantr1105_loop
  rxquantr1105_done:
  # rx pass
    rx1103_cur."!cursor_pass"(rx1103_pos, "decints")
    if_null rx1103_debug, debug_342
    rx1103_cur."!cursor_debug"("PASS", "decints", " at pos=", rx1103_pos)
  debug_342:
    .return (rx1103_cur)
  rx1103_restart:
.annotate 'line', 7
    if_null rx1103_debug, debug_343
    rx1103_cur."!cursor_debug"("NEXT", "decints")
  debug_343:
  rx1103_fail:
    (rx1103_rep, rx1103_pos, $I10, $P10) = rx1103_cur."!mark_fail"(0)
    lt rx1103_pos, -1, rx1103_done
    eq rx1103_pos, -1, rx1103_fail
    jump $I10
  rx1103_done:
    rx1103_cur."!cursor_fail"()
    if_null rx1103_debug, debug_344
    rx1103_cur."!cursor_debug"("FAIL", "decints")
  debug_344:
    .return (rx1103_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__decints"  :subid("50_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    new $P105, "ResizablePMCArray"
    push $P105, ""
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "hexint"  :subid("51_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1108_tgt
    .local int rx1108_pos
    .local int rx1108_off
    .local int rx1108_eos
    .local int rx1108_rep
    .local pmc rx1108_cur
    .local pmc rx1108_debug
    (rx1108_cur, rx1108_pos, rx1108_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1108_cur
    .local pmc match
    .lex "$/", match
    length rx1108_eos, rx1108_tgt
    gt rx1108_pos, rx1108_eos, rx1108_done
    set rx1108_off, 0
    lt rx1108_pos, 2, rx1108_start
    sub rx1108_off, rx1108_pos, 1
    substr rx1108_tgt, rx1108_tgt, rx1108_off
  rx1108_start:
    eq $I10, 1, rx1108_restart
    if_null rx1108_debug, debug_345
    rx1108_cur."!cursor_debug"("START", "hexint")
  debug_345:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1109_done
    goto rxscan1109_scan
  rxscan1109_loop:
    (rx1108_pos) = rx1108_cur."from"()
    inc rx1108_pos
    rx1108_cur."!cursor_from"(rx1108_pos)
    ge rx1108_pos, rx1108_eos, rxscan1109_done
  rxscan1109_scan:
    set_addr $I10, rxscan1109_loop
    rx1108_cur."!mark_push"(0, rx1108_pos, $I10)
  rxscan1109_done:
.annotate 'line', 58
  # rx rxquantr1110 ** 1..*
    set_addr $I10, rxquantr1110_done
    rx1108_cur."!mark_push"(0, -1, $I10)
  rxquantr1110_loop:
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx1108_pos, rx1108_off
    set rx1108_rep, 0
    sub $I12, rx1108_eos, rx1108_pos
  rxenumcharlistq1111_loop:
    le $I12, 0, rxenumcharlistq1111_done
    substr $S10, rx1108_tgt, $I10, 1
    index $I11, "0123456789abcdefABCDEF", $S10
    lt $I11, 0, rxenumcharlistq1111_done
    inc rx1108_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq1111_loop
  rxenumcharlistq1111_done:
    lt rx1108_rep, 1, rx1108_fail
    add rx1108_pos, rx1108_pos, rx1108_rep
    set_addr $I10, rxquantr1110_done
    (rx1108_rep) = rx1108_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr1110_done
    rx1108_cur."!mark_push"(rx1108_rep, rx1108_pos, $I10)
  # rx literal  "_"
    add $I11, rx1108_pos, 1
    gt $I11, rx1108_eos, rx1108_fail
    sub $I11, rx1108_pos, rx1108_off
    ord $I11, rx1108_tgt, $I11
    ne $I11, 95, rx1108_fail
    add rx1108_pos, 1
    goto rxquantr1110_loop
  rxquantr1110_done:
  # rx pass
    rx1108_cur."!cursor_pass"(rx1108_pos, "hexint")
    if_null rx1108_debug, debug_346
    rx1108_cur."!cursor_debug"("PASS", "hexint", " at pos=", rx1108_pos)
  debug_346:
    .return (rx1108_cur)
  rx1108_restart:
.annotate 'line', 7
    if_null rx1108_debug, debug_347
    rx1108_cur."!cursor_debug"("NEXT", "hexint")
  debug_347:
  rx1108_fail:
    (rx1108_rep, rx1108_pos, $I10, $P10) = rx1108_cur."!mark_fail"(0)
    lt rx1108_pos, -1, rx1108_done
    eq rx1108_pos, -1, rx1108_fail
    jump $I10
  rx1108_done:
    rx1108_cur."!cursor_fail"()
    if_null rx1108_debug, debug_348
    rx1108_cur."!cursor_debug"("FAIL", "hexint")
  debug_348:
    .return (rx1108_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__hexint"  :subid("52_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    new $P105, "ResizablePMCArray"
    push $P105, ""
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "hexints"  :subid("53_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1114_tgt
    .local int rx1114_pos
    .local int rx1114_off
    .local int rx1114_eos
    .local int rx1114_rep
    .local pmc rx1114_cur
    .local pmc rx1114_debug
    (rx1114_cur, rx1114_pos, rx1114_tgt, $I10) = self."!cursor_start"()
    rx1114_cur."!cursor_caparray"("hexint")
    .lex unicode:"$\x{a2}", rx1114_cur
    .local pmc match
    .lex "$/", match
    length rx1114_eos, rx1114_tgt
    gt rx1114_pos, rx1114_eos, rx1114_done
    set rx1114_off, 0
    lt rx1114_pos, 2, rx1114_start
    sub rx1114_off, rx1114_pos, 1
    substr rx1114_tgt, rx1114_tgt, rx1114_off
  rx1114_start:
    eq $I10, 1, rx1114_restart
    if_null rx1114_debug, debug_349
    rx1114_cur."!cursor_debug"("START", "hexints")
  debug_349:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1115_done
    goto rxscan1115_scan
  rxscan1115_loop:
    (rx1114_pos) = rx1114_cur."from"()
    inc rx1114_pos
    rx1114_cur."!cursor_from"(rx1114_pos)
    ge rx1114_pos, rx1114_eos, rxscan1115_done
  rxscan1115_scan:
    set_addr $I10, rxscan1115_loop
    rx1114_cur."!mark_push"(0, rx1114_pos, $I10)
  rxscan1115_done:
.annotate 'line', 59
  # rx rxquantr1116 ** 1..*
    set_addr $I10, rxquantr1116_done
    rx1114_cur."!mark_push"(0, -1, $I10)
  rxquantr1116_loop:
  # rx subrule "ws" subtype=method negate=
    rx1114_cur."!cursor_pos"(rx1114_pos)
    $P10 = rx1114_cur."ws"()
    unless $P10, rx1114_fail
    rx1114_pos = $P10."pos"()
  # rx subrule "hexint" subtype=capture negate=
    rx1114_cur."!cursor_pos"(rx1114_pos)
    $P10 = rx1114_cur."hexint"()
    unless $P10, rx1114_fail
    rx1114_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexint")
    rx1114_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx1114_cur."!cursor_pos"(rx1114_pos)
    $P10 = rx1114_cur."ws"()
    unless $P10, rx1114_fail
    rx1114_pos = $P10."pos"()
    set_addr $I10, rxquantr1116_done
    (rx1114_rep) = rx1114_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr1116_done
    rx1114_cur."!mark_push"(rx1114_rep, rx1114_pos, $I10)
  # rx literal  ","
    add $I11, rx1114_pos, 1
    gt $I11, rx1114_eos, rx1114_fail
    sub $I11, rx1114_pos, rx1114_off
    ord $I11, rx1114_tgt, $I11
    ne $I11, 44, rx1114_fail
    add rx1114_pos, 1
    goto rxquantr1116_loop
  rxquantr1116_done:
  # rx pass
    rx1114_cur."!cursor_pass"(rx1114_pos, "hexints")
    if_null rx1114_debug, debug_350
    rx1114_cur."!cursor_debug"("PASS", "hexints", " at pos=", rx1114_pos)
  debug_350:
    .return (rx1114_cur)
  rx1114_restart:
.annotate 'line', 7
    if_null rx1114_debug, debug_351
    rx1114_cur."!cursor_debug"("NEXT", "hexints")
  debug_351:
  rx1114_fail:
    (rx1114_rep, rx1114_pos, $I10, $P10) = rx1114_cur."!mark_fail"(0)
    lt rx1114_pos, -1, rx1114_done
    eq rx1114_pos, -1, rx1114_fail
    jump $I10
  rx1114_done:
    rx1114_cur."!cursor_fail"()
    if_null rx1114_debug, debug_352
    rx1114_cur."!cursor_debug"("FAIL", "hexints")
  debug_352:
    .return (rx1114_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__hexints"  :subid("54_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    new $P105, "ResizablePMCArray"
    push $P105, ""
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "octint"  :subid("55_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1119_tgt
    .local int rx1119_pos
    .local int rx1119_off
    .local int rx1119_eos
    .local int rx1119_rep
    .local pmc rx1119_cur
    .local pmc rx1119_debug
    (rx1119_cur, rx1119_pos, rx1119_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1119_cur
    .local pmc match
    .lex "$/", match
    length rx1119_eos, rx1119_tgt
    gt rx1119_pos, rx1119_eos, rx1119_done
    set rx1119_off, 0
    lt rx1119_pos, 2, rx1119_start
    sub rx1119_off, rx1119_pos, 1
    substr rx1119_tgt, rx1119_tgt, rx1119_off
  rx1119_start:
    eq $I10, 1, rx1119_restart
    if_null rx1119_debug, debug_353
    rx1119_cur."!cursor_debug"("START", "octint")
  debug_353:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1120_done
    goto rxscan1120_scan
  rxscan1120_loop:
    (rx1119_pos) = rx1119_cur."from"()
    inc rx1119_pos
    rx1119_cur."!cursor_from"(rx1119_pos)
    ge rx1119_pos, rx1119_eos, rxscan1120_done
  rxscan1120_scan:
    set_addr $I10, rxscan1120_loop
    rx1119_cur."!mark_push"(0, rx1119_pos, $I10)
  rxscan1120_done:
.annotate 'line', 61
  # rx rxquantr1121 ** 1..*
    set_addr $I10, rxquantr1121_done
    rx1119_cur."!mark_push"(0, -1, $I10)
  rxquantr1121_loop:
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx1119_pos, rx1119_off
    set rx1119_rep, 0
    sub $I12, rx1119_eos, rx1119_pos
  rxenumcharlistq1122_loop:
    le $I12, 0, rxenumcharlistq1122_done
    substr $S10, rx1119_tgt, $I10, 1
    index $I11, "01234567", $S10
    lt $I11, 0, rxenumcharlistq1122_done
    inc rx1119_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq1122_loop
  rxenumcharlistq1122_done:
    lt rx1119_rep, 1, rx1119_fail
    add rx1119_pos, rx1119_pos, rx1119_rep
    set_addr $I10, rxquantr1121_done
    (rx1119_rep) = rx1119_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr1121_done
    rx1119_cur."!mark_push"(rx1119_rep, rx1119_pos, $I10)
  # rx literal  "_"
    add $I11, rx1119_pos, 1
    gt $I11, rx1119_eos, rx1119_fail
    sub $I11, rx1119_pos, rx1119_off
    ord $I11, rx1119_tgt, $I11
    ne $I11, 95, rx1119_fail
    add rx1119_pos, 1
    goto rxquantr1121_loop
  rxquantr1121_done:
  # rx pass
    rx1119_cur."!cursor_pass"(rx1119_pos, "octint")
    if_null rx1119_debug, debug_354
    rx1119_cur."!cursor_debug"("PASS", "octint", " at pos=", rx1119_pos)
  debug_354:
    .return (rx1119_cur)
  rx1119_restart:
.annotate 'line', 7
    if_null rx1119_debug, debug_355
    rx1119_cur."!cursor_debug"("NEXT", "octint")
  debug_355:
  rx1119_fail:
    (rx1119_rep, rx1119_pos, $I10, $P10) = rx1119_cur."!mark_fail"(0)
    lt rx1119_pos, -1, rx1119_done
    eq rx1119_pos, -1, rx1119_fail
    jump $I10
  rx1119_done:
    rx1119_cur."!cursor_fail"()
    if_null rx1119_debug, debug_356
    rx1119_cur."!cursor_debug"("FAIL", "octint")
  debug_356:
    .return (rx1119_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__octint"  :subid("56_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    new $P105, "ResizablePMCArray"
    push $P105, ""
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "octints"  :subid("57_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1125_tgt
    .local int rx1125_pos
    .local int rx1125_off
    .local int rx1125_eos
    .local int rx1125_rep
    .local pmc rx1125_cur
    .local pmc rx1125_debug
    (rx1125_cur, rx1125_pos, rx1125_tgt, $I10) = self."!cursor_start"()
    rx1125_cur."!cursor_caparray"("octint")
    .lex unicode:"$\x{a2}", rx1125_cur
    .local pmc match
    .lex "$/", match
    length rx1125_eos, rx1125_tgt
    gt rx1125_pos, rx1125_eos, rx1125_done
    set rx1125_off, 0
    lt rx1125_pos, 2, rx1125_start
    sub rx1125_off, rx1125_pos, 1
    substr rx1125_tgt, rx1125_tgt, rx1125_off
  rx1125_start:
    eq $I10, 1, rx1125_restart
    if_null rx1125_debug, debug_357
    rx1125_cur."!cursor_debug"("START", "octints")
  debug_357:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1126_done
    goto rxscan1126_scan
  rxscan1126_loop:
    (rx1125_pos) = rx1125_cur."from"()
    inc rx1125_pos
    rx1125_cur."!cursor_from"(rx1125_pos)
    ge rx1125_pos, rx1125_eos, rxscan1126_done
  rxscan1126_scan:
    set_addr $I10, rxscan1126_loop
    rx1125_cur."!mark_push"(0, rx1125_pos, $I10)
  rxscan1126_done:
.annotate 'line', 62
  # rx rxquantr1127 ** 1..*
    set_addr $I10, rxquantr1127_done
    rx1125_cur."!mark_push"(0, -1, $I10)
  rxquantr1127_loop:
  # rx subrule "ws" subtype=method negate=
    rx1125_cur."!cursor_pos"(rx1125_pos)
    $P10 = rx1125_cur."ws"()
    unless $P10, rx1125_fail
    rx1125_pos = $P10."pos"()
  # rx subrule "octint" subtype=capture negate=
    rx1125_cur."!cursor_pos"(rx1125_pos)
    $P10 = rx1125_cur."octint"()
    unless $P10, rx1125_fail
    rx1125_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octint")
    rx1125_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx1125_cur."!cursor_pos"(rx1125_pos)
    $P10 = rx1125_cur."ws"()
    unless $P10, rx1125_fail
    rx1125_pos = $P10."pos"()
    set_addr $I10, rxquantr1127_done
    (rx1125_rep) = rx1125_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr1127_done
    rx1125_cur."!mark_push"(rx1125_rep, rx1125_pos, $I10)
  # rx literal  ","
    add $I11, rx1125_pos, 1
    gt $I11, rx1125_eos, rx1125_fail
    sub $I11, rx1125_pos, rx1125_off
    ord $I11, rx1125_tgt, $I11
    ne $I11, 44, rx1125_fail
    add rx1125_pos, 1
    goto rxquantr1127_loop
  rxquantr1127_done:
  # rx pass
    rx1125_cur."!cursor_pass"(rx1125_pos, "octints")
    if_null rx1125_debug, debug_358
    rx1125_cur."!cursor_debug"("PASS", "octints", " at pos=", rx1125_pos)
  debug_358:
    .return (rx1125_cur)
  rx1125_restart:
.annotate 'line', 7
    if_null rx1125_debug, debug_359
    rx1125_cur."!cursor_debug"("NEXT", "octints")
  debug_359:
  rx1125_fail:
    (rx1125_rep, rx1125_pos, $I10, $P10) = rx1125_cur."!mark_fail"(0)
    lt rx1125_pos, -1, rx1125_done
    eq rx1125_pos, -1, rx1125_fail
    jump $I10
  rx1125_done:
    rx1125_cur."!cursor_fail"()
    if_null rx1125_debug, debug_360
    rx1125_cur."!cursor_debug"("FAIL", "octints")
  debug_360:
    .return (rx1125_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__octints"  :subid("58_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    new $P105, "ResizablePMCArray"
    push $P105, ""
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "binint"  :subid("59_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1130_tgt
    .local int rx1130_pos
    .local int rx1130_off
    .local int rx1130_eos
    .local int rx1130_rep
    .local pmc rx1130_cur
    .local pmc rx1130_debug
    (rx1130_cur, rx1130_pos, rx1130_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1130_cur
    .local pmc match
    .lex "$/", match
    length rx1130_eos, rx1130_tgt
    gt rx1130_pos, rx1130_eos, rx1130_done
    set rx1130_off, 0
    lt rx1130_pos, 2, rx1130_start
    sub rx1130_off, rx1130_pos, 1
    substr rx1130_tgt, rx1130_tgt, rx1130_off
  rx1130_start:
    eq $I10, 1, rx1130_restart
    if_null rx1130_debug, debug_361
    rx1130_cur."!cursor_debug"("START", "binint")
  debug_361:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1131_done
    goto rxscan1131_scan
  rxscan1131_loop:
    (rx1130_pos) = rx1130_cur."from"()
    inc rx1130_pos
    rx1130_cur."!cursor_from"(rx1130_pos)
    ge rx1130_pos, rx1130_eos, rxscan1131_done
  rxscan1131_scan:
    set_addr $I10, rxscan1131_loop
    rx1130_cur."!mark_push"(0, rx1130_pos, $I10)
  rxscan1131_done:
.annotate 'line', 64
  # rx rxquantr1132 ** 1..*
    set_addr $I10, rxquantr1132_done
    rx1130_cur."!mark_push"(0, -1, $I10)
  rxquantr1132_loop:
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx1130_pos, rx1130_off
    set rx1130_rep, 0
    sub $I12, rx1130_eos, rx1130_pos
  rxenumcharlistq1133_loop:
    le $I12, 0, rxenumcharlistq1133_done
    substr $S10, rx1130_tgt, $I10, 1
    index $I11, "01", $S10
    lt $I11, 0, rxenumcharlistq1133_done
    inc rx1130_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq1133_loop
  rxenumcharlistq1133_done:
    lt rx1130_rep, 1, rx1130_fail
    add rx1130_pos, rx1130_pos, rx1130_rep
    set_addr $I10, rxquantr1132_done
    (rx1130_rep) = rx1130_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr1132_done
    rx1130_cur."!mark_push"(rx1130_rep, rx1130_pos, $I10)
  # rx literal  "_"
    add $I11, rx1130_pos, 1
    gt $I11, rx1130_eos, rx1130_fail
    sub $I11, rx1130_pos, rx1130_off
    ord $I11, rx1130_tgt, $I11
    ne $I11, 95, rx1130_fail
    add rx1130_pos, 1
    goto rxquantr1132_loop
  rxquantr1132_done:
  # rx pass
    rx1130_cur."!cursor_pass"(rx1130_pos, "binint")
    if_null rx1130_debug, debug_362
    rx1130_cur."!cursor_debug"("PASS", "binint", " at pos=", rx1130_pos)
  debug_362:
    .return (rx1130_cur)
  rx1130_restart:
.annotate 'line', 7
    if_null rx1130_debug, debug_363
    rx1130_cur."!cursor_debug"("NEXT", "binint")
  debug_363:
  rx1130_fail:
    (rx1130_rep, rx1130_pos, $I10, $P10) = rx1130_cur."!mark_fail"(0)
    lt rx1130_pos, -1, rx1130_done
    eq rx1130_pos, -1, rx1130_fail
    jump $I10
  rx1130_done:
    rx1130_cur."!cursor_fail"()
    if_null rx1130_debug, debug_364
    rx1130_cur."!cursor_debug"("FAIL", "binint")
  debug_364:
    .return (rx1130_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__binint"  :subid("60_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    new $P105, "ResizablePMCArray"
    push $P105, ""
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "binints"  :subid("61_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1136_tgt
    .local int rx1136_pos
    .local int rx1136_off
    .local int rx1136_eos
    .local int rx1136_rep
    .local pmc rx1136_cur
    .local pmc rx1136_debug
    (rx1136_cur, rx1136_pos, rx1136_tgt, $I10) = self."!cursor_start"()
    rx1136_cur."!cursor_caparray"("binint")
    .lex unicode:"$\x{a2}", rx1136_cur
    .local pmc match
    .lex "$/", match
    length rx1136_eos, rx1136_tgt
    gt rx1136_pos, rx1136_eos, rx1136_done
    set rx1136_off, 0
    lt rx1136_pos, 2, rx1136_start
    sub rx1136_off, rx1136_pos, 1
    substr rx1136_tgt, rx1136_tgt, rx1136_off
  rx1136_start:
    eq $I10, 1, rx1136_restart
    if_null rx1136_debug, debug_365
    rx1136_cur."!cursor_debug"("START", "binints")
  debug_365:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1137_done
    goto rxscan1137_scan
  rxscan1137_loop:
    (rx1136_pos) = rx1136_cur."from"()
    inc rx1136_pos
    rx1136_cur."!cursor_from"(rx1136_pos)
    ge rx1136_pos, rx1136_eos, rxscan1137_done
  rxscan1137_scan:
    set_addr $I10, rxscan1137_loop
    rx1136_cur."!mark_push"(0, rx1136_pos, $I10)
  rxscan1137_done:
.annotate 'line', 65
  # rx rxquantr1138 ** 1..*
    set_addr $I10, rxquantr1138_done
    rx1136_cur."!mark_push"(0, -1, $I10)
  rxquantr1138_loop:
  # rx subrule "ws" subtype=method negate=
    rx1136_cur."!cursor_pos"(rx1136_pos)
    $P10 = rx1136_cur."ws"()
    unless $P10, rx1136_fail
    rx1136_pos = $P10."pos"()
  # rx subrule "binint" subtype=capture negate=
    rx1136_cur."!cursor_pos"(rx1136_pos)
    $P10 = rx1136_cur."binint"()
    unless $P10, rx1136_fail
    rx1136_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("binint")
    rx1136_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx1136_cur."!cursor_pos"(rx1136_pos)
    $P10 = rx1136_cur."ws"()
    unless $P10, rx1136_fail
    rx1136_pos = $P10."pos"()
    set_addr $I10, rxquantr1138_done
    (rx1136_rep) = rx1136_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr1138_done
    rx1136_cur."!mark_push"(rx1136_rep, rx1136_pos, $I10)
  # rx literal  ","
    add $I11, rx1136_pos, 1
    gt $I11, rx1136_eos, rx1136_fail
    sub $I11, rx1136_pos, rx1136_off
    ord $I11, rx1136_tgt, $I11
    ne $I11, 44, rx1136_fail
    add rx1136_pos, 1
    goto rxquantr1138_loop
  rxquantr1138_done:
  # rx pass
    rx1136_cur."!cursor_pass"(rx1136_pos, "binints")
    if_null rx1136_debug, debug_366
    rx1136_cur."!cursor_debug"("PASS", "binints", " at pos=", rx1136_pos)
  debug_366:
    .return (rx1136_cur)
  rx1136_restart:
.annotate 'line', 7
    if_null rx1136_debug, debug_367
    rx1136_cur."!cursor_debug"("NEXT", "binints")
  debug_367:
  rx1136_fail:
    (rx1136_rep, rx1136_pos, $I10, $P10) = rx1136_cur."!mark_fail"(0)
    lt rx1136_pos, -1, rx1136_done
    eq rx1136_pos, -1, rx1136_fail
    jump $I10
  rx1136_done:
    rx1136_cur."!cursor_fail"()
    if_null rx1136_debug, debug_368
    rx1136_cur."!cursor_debug"("FAIL", "binints")
  debug_368:
    .return (rx1136_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__binints"  :subid("62_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    new $P105, "ResizablePMCArray"
    push $P105, ""
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "integer"  :subid("63_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1141_tgt
    .local int rx1141_pos
    .local int rx1141_off
    .local int rx1141_eos
    .local int rx1141_rep
    .local pmc rx1141_cur
    .local pmc rx1141_debug
    (rx1141_cur, rx1141_pos, rx1141_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1141_cur
    .local pmc match
    .lex "$/", match
    length rx1141_eos, rx1141_tgt
    gt rx1141_pos, rx1141_eos, rx1141_done
    set rx1141_off, 0
    lt rx1141_pos, 2, rx1141_start
    sub rx1141_off, rx1141_pos, 1
    substr rx1141_tgt, rx1141_tgt, rx1141_off
  rx1141_start:
    eq $I10, 1, rx1141_restart
    if_null rx1141_debug, debug_369
    rx1141_cur."!cursor_debug"("START", "integer")
  debug_369:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1142_done
    goto rxscan1142_scan
  rxscan1142_loop:
    (rx1141_pos) = rx1141_cur."from"()
    inc rx1141_pos
    rx1141_cur."!cursor_from"(rx1141_pos)
    ge rx1141_pos, rx1141_eos, rxscan1142_done
  rxscan1142_scan:
    set_addr $I10, rxscan1142_loop
    rx1141_cur."!mark_push"(0, rx1141_pos, $I10)
  rxscan1142_done:
  alt1143_0:
.annotate 'line', 68
    set_addr $I10, alt1143_1
    rx1141_cur."!mark_push"(0, rx1141_pos, $I10)
.annotate 'line', 69
  # rx literal  "0"
    add $I11, rx1141_pos, 1
    gt $I11, rx1141_eos, rx1141_fail
    sub $I11, rx1141_pos, rx1141_off
    ord $I11, rx1141_tgt, $I11
    ne $I11, 48, rx1141_fail
    add rx1141_pos, 1
  alt1144_0:
    set_addr $I10, alt1144_1
    rx1141_cur."!mark_push"(0, rx1141_pos, $I10)
  # rx literal  "b"
    add $I11, rx1141_pos, 1
    gt $I11, rx1141_eos, rx1141_fail
    sub $I11, rx1141_pos, rx1141_off
    ord $I11, rx1141_tgt, $I11
    ne $I11, 98, rx1141_fail
    add rx1141_pos, 1
  # rx subrule "binint" subtype=capture negate=
    rx1141_cur."!cursor_pos"(rx1141_pos)
    $P10 = rx1141_cur."binint"()
    unless $P10, rx1141_fail
    rx1141_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=binint")
    rx1141_pos = $P10."pos"()
    goto alt1144_end
  alt1144_1:
    set_addr $I10, alt1144_2
    rx1141_cur."!mark_push"(0, rx1141_pos, $I10)
.annotate 'line', 70
  # rx literal  "o"
    add $I11, rx1141_pos, 1
    gt $I11, rx1141_eos, rx1141_fail
    sub $I11, rx1141_pos, rx1141_off
    ord $I11, rx1141_tgt, $I11
    ne $I11, 111, rx1141_fail
    add rx1141_pos, 1
  # rx subrule "octint" subtype=capture negate=
    rx1141_cur."!cursor_pos"(rx1141_pos)
    $P10 = rx1141_cur."octint"()
    unless $P10, rx1141_fail
    rx1141_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=octint")
    rx1141_pos = $P10."pos"()
    goto alt1144_end
  alt1144_2:
    set_addr $I10, alt1144_3
    rx1141_cur."!mark_push"(0, rx1141_pos, $I10)
.annotate 'line', 71
  # rx literal  "x"
    add $I11, rx1141_pos, 1
    gt $I11, rx1141_eos, rx1141_fail
    sub $I11, rx1141_pos, rx1141_off
    ord $I11, rx1141_tgt, $I11
    ne $I11, 120, rx1141_fail
    add rx1141_pos, 1
  # rx subrule "hexint" subtype=capture negate=
    rx1141_cur."!cursor_pos"(rx1141_pos)
    $P10 = rx1141_cur."hexint"()
    unless $P10, rx1141_fail
    rx1141_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=hexint")
    rx1141_pos = $P10."pos"()
    goto alt1144_end
  alt1144_3:
.annotate 'line', 72
  # rx literal  "d"
    add $I11, rx1141_pos, 1
    gt $I11, rx1141_eos, rx1141_fail
    sub $I11, rx1141_pos, rx1141_off
    ord $I11, rx1141_tgt, $I11
    ne $I11, 100, rx1141_fail
    add rx1141_pos, 1
  # rx subrule "decint" subtype=capture negate=
    rx1141_cur."!cursor_pos"(rx1141_pos)
    $P10 = rx1141_cur."decint"()
    unless $P10, rx1141_fail
    rx1141_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=decint")
    rx1141_pos = $P10."pos"()
  alt1144_end:
.annotate 'line', 69
    goto alt1143_end
  alt1143_1:
.annotate 'line', 74
  # rx subrule "decint" subtype=capture negate=
    rx1141_cur."!cursor_pos"(rx1141_pos)
    $P10 = rx1141_cur."decint"()
    unless $P10, rx1141_fail
    rx1141_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=decint")
    rx1141_pos = $P10."pos"()
  alt1143_end:
.annotate 'line', 67
  # rx pass
    rx1141_cur."!cursor_pass"(rx1141_pos, "integer")
    if_null rx1141_debug, debug_370
    rx1141_cur."!cursor_debug"("PASS", "integer", " at pos=", rx1141_pos)
  debug_370:
    .return (rx1141_cur)
  rx1141_restart:
.annotate 'line', 7
    if_null rx1141_debug, debug_371
    rx1141_cur."!cursor_debug"("NEXT", "integer")
  debug_371:
  rx1141_fail:
    (rx1141_rep, rx1141_pos, $I10, $P10) = rx1141_cur."!mark_fail"(0)
    lt rx1141_pos, -1, rx1141_done
    eq rx1141_pos, -1, rx1141_fail
    jump $I10
  rx1141_done:
    rx1141_cur."!cursor_fail"()
    if_null rx1141_debug, debug_372
    rx1141_cur."!cursor_debug"("FAIL", "integer")
  debug_372:
    .return (rx1141_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__integer"  :subid("64_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    $P105 = self."!PREFIX__!subrule"("decint", "")
    $P106 = self."!PREFIX__!subrule"("decint", "0d")
    $P107 = self."!PREFIX__!subrule"("hexint", "0x")
    $P108 = self."!PREFIX__!subrule"("octint", "0o")
    $P109 = self."!PREFIX__!subrule"("binint", "0b")
    new $P110, "ResizablePMCArray"
    push $P110, $P105
    push $P110, $P106
    push $P110, $P107
    push $P110, $P108
    push $P110, $P109
    .return ($P110)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "dec_number"  :subid("65_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1147_tgt
    .local int rx1147_pos
    .local int rx1147_off
    .local int rx1147_eos
    .local int rx1147_rep
    .local pmc rx1147_cur
    .local pmc rx1147_debug
    (rx1147_cur, rx1147_pos, rx1147_tgt, $I10) = self."!cursor_start"()
    rx1147_cur."!cursor_caparray"("escale")
    .lex unicode:"$\x{a2}", rx1147_cur
    .local pmc match
    .lex "$/", match
    length rx1147_eos, rx1147_tgt
    gt rx1147_pos, rx1147_eos, rx1147_done
    set rx1147_off, 0
    lt rx1147_pos, 2, rx1147_start
    sub rx1147_off, rx1147_pos, 1
    substr rx1147_tgt, rx1147_tgt, rx1147_off
  rx1147_start:
    eq $I10, 1, rx1147_restart
    if_null rx1147_debug, debug_373
    rx1147_cur."!cursor_debug"("START", "dec_number")
  debug_373:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1148_done
    goto rxscan1148_scan
  rxscan1148_loop:
    (rx1147_pos) = rx1147_cur."from"()
    inc rx1147_pos
    rx1147_cur."!cursor_from"(rx1147_pos)
    ge rx1147_pos, rx1147_eos, rxscan1148_done
  rxscan1148_scan:
    set_addr $I10, rxscan1148_loop
    rx1147_cur."!mark_push"(0, rx1147_pos, $I10)
  rxscan1148_done:
  alt1149_0:
.annotate 'line', 78
    set_addr $I10, alt1149_1
    rx1147_cur."!mark_push"(0, rx1147_pos, $I10)
.annotate 'line', 79
  # rx subcapture "coeff"
    set_addr $I10, rxcap_1150_fail
    rx1147_cur."!mark_push"(0, rx1147_pos, $I10)
  # rx literal  "."
    add $I11, rx1147_pos, 1
    gt $I11, rx1147_eos, rx1147_fail
    sub $I11, rx1147_pos, rx1147_off
    ord $I11, rx1147_tgt, $I11
    ne $I11, 46, rx1147_fail
    add rx1147_pos, 1
  # rx charclass_q d r 1..-1
    sub $I10, rx1147_pos, rx1147_off
    find_not_cclass $I11, .CCLASS_NUMERIC, rx1147_tgt, $I10, rx1147_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx1147_fail
    add rx1147_pos, rx1147_off, $I11
    set_addr $I10, rxcap_1150_fail
    ($I12, $I11) = rx1147_cur."!mark_peek"($I10)
    rx1147_cur."!cursor_pos"($I11)
    ($P10) = rx1147_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1147_pos, "")
    rx1147_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("coeff")
    goto rxcap_1150_done
  rxcap_1150_fail:
    goto rx1147_fail
  rxcap_1150_done:
  # rx rxquantr1151 ** 0..1
    set_addr $I10, rxquantr1151_done
    rx1147_cur."!mark_push"(0, rx1147_pos, $I10)
  rxquantr1151_loop:
  # rx subrule "escale" subtype=capture negate=
    rx1147_cur."!cursor_pos"(rx1147_pos)
    $P10 = rx1147_cur."escale"()
    unless $P10, rx1147_fail
    goto rxsubrule1152_pass
  rxsubrule1152_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx1147_fail
  rxsubrule1152_pass:
    set_addr $I10, rxsubrule1152_back
    rx1147_cur."!mark_push"(0, rx1147_pos, $I10, $P10)
    $P10."!cursor_names"("escale")
    rx1147_pos = $P10."pos"()
    set_addr $I10, rxquantr1151_done
    (rx1147_rep) = rx1147_cur."!mark_commit"($I10)
  rxquantr1151_done:
    goto alt1149_end
  alt1149_1:
    set_addr $I10, alt1149_2
    rx1147_cur."!mark_push"(0, rx1147_pos, $I10)
.annotate 'line', 80
  # rx subcapture "coeff"
    set_addr $I10, rxcap_1153_fail
    rx1147_cur."!mark_push"(0, rx1147_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx1147_pos, rx1147_off
    find_not_cclass $I11, .CCLASS_NUMERIC, rx1147_tgt, $I10, rx1147_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx1147_fail
    add rx1147_pos, rx1147_off, $I11
  # rx literal  "."
    add $I11, rx1147_pos, 1
    gt $I11, rx1147_eos, rx1147_fail
    sub $I11, rx1147_pos, rx1147_off
    ord $I11, rx1147_tgt, $I11
    ne $I11, 46, rx1147_fail
    add rx1147_pos, 1
  # rx charclass_q d r 1..-1
    sub $I10, rx1147_pos, rx1147_off
    find_not_cclass $I11, .CCLASS_NUMERIC, rx1147_tgt, $I10, rx1147_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx1147_fail
    add rx1147_pos, rx1147_off, $I11
    set_addr $I10, rxcap_1153_fail
    ($I12, $I11) = rx1147_cur."!mark_peek"($I10)
    rx1147_cur."!cursor_pos"($I11)
    ($P10) = rx1147_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1147_pos, "")
    rx1147_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("coeff")
    goto rxcap_1153_done
  rxcap_1153_fail:
    goto rx1147_fail
  rxcap_1153_done:
  # rx rxquantr1154 ** 0..1
    set_addr $I10, rxquantr1154_done
    rx1147_cur."!mark_push"(0, rx1147_pos, $I10)
  rxquantr1154_loop:
  # rx subrule "escale" subtype=capture negate=
    rx1147_cur."!cursor_pos"(rx1147_pos)
    $P10 = rx1147_cur."escale"()
    unless $P10, rx1147_fail
    goto rxsubrule1155_pass
  rxsubrule1155_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx1147_fail
  rxsubrule1155_pass:
    set_addr $I10, rxsubrule1155_back
    rx1147_cur."!mark_push"(0, rx1147_pos, $I10, $P10)
    $P10."!cursor_names"("escale")
    rx1147_pos = $P10."pos"()
    set_addr $I10, rxquantr1154_done
    (rx1147_rep) = rx1147_cur."!mark_commit"($I10)
  rxquantr1154_done:
    goto alt1149_end
  alt1149_2:
.annotate 'line', 81
  # rx subcapture "coeff"
    set_addr $I10, rxcap_1156_fail
    rx1147_cur."!mark_push"(0, rx1147_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx1147_pos, rx1147_off
    find_not_cclass $I11, .CCLASS_NUMERIC, rx1147_tgt, $I10, rx1147_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx1147_fail
    add rx1147_pos, rx1147_off, $I11
    set_addr $I10, rxcap_1156_fail
    ($I12, $I11) = rx1147_cur."!mark_peek"($I10)
    rx1147_cur."!cursor_pos"($I11)
    ($P10) = rx1147_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1147_pos, "")
    rx1147_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("coeff")
    goto rxcap_1156_done
  rxcap_1156_fail:
    goto rx1147_fail
  rxcap_1156_done:
  # rx subrule "escale" subtype=capture negate=
    rx1147_cur."!cursor_pos"(rx1147_pos)
    $P10 = rx1147_cur."escale"()
    unless $P10, rx1147_fail
    rx1147_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("escale")
    rx1147_pos = $P10."pos"()
  alt1149_end:
.annotate 'line', 78
  # rx pass
    rx1147_cur."!cursor_pass"(rx1147_pos, "dec_number")
    if_null rx1147_debug, debug_374
    rx1147_cur."!cursor_debug"("PASS", "dec_number", " at pos=", rx1147_pos)
  debug_374:
    .return (rx1147_cur)
  rx1147_restart:
.annotate 'line', 7
    if_null rx1147_debug, debug_375
    rx1147_cur."!cursor_debug"("NEXT", "dec_number")
  debug_375:
  rx1147_fail:
    (rx1147_rep, rx1147_pos, $I10, $P10) = rx1147_cur."!mark_fail"(0)
    lt rx1147_pos, -1, rx1147_done
    eq rx1147_pos, -1, rx1147_fail
    jump $I10
  rx1147_done:
    rx1147_cur."!cursor_fail"()
    if_null rx1147_debug, debug_376
    rx1147_cur."!cursor_debug"("FAIL", "dec_number")
  debug_376:
    .return (rx1147_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__dec_number"  :subid("66_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    new $P105, "ResizablePMCArray"
    push $P105, ""
    push $P105, ""
    push $P105, "."
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "escale"  :subid("67_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1159_tgt
    .local int rx1159_pos
    .local int rx1159_off
    .local int rx1159_eos
    .local int rx1159_rep
    .local pmc rx1159_cur
    .local pmc rx1159_debug
    (rx1159_cur, rx1159_pos, rx1159_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1159_cur
    .local pmc match
    .lex "$/", match
    length rx1159_eos, rx1159_tgt
    gt rx1159_pos, rx1159_eos, rx1159_done
    set rx1159_off, 0
    lt rx1159_pos, 2, rx1159_start
    sub rx1159_off, rx1159_pos, 1
    substr rx1159_tgt, rx1159_tgt, rx1159_off
  rx1159_start:
    eq $I10, 1, rx1159_restart
    if_null rx1159_debug, debug_377
    rx1159_cur."!cursor_debug"("START", "escale")
  debug_377:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1160_done
    goto rxscan1160_scan
  rxscan1160_loop:
    (rx1159_pos) = rx1159_cur."from"()
    inc rx1159_pos
    rx1159_cur."!cursor_from"(rx1159_pos)
    ge rx1159_pos, rx1159_eos, rxscan1160_done
  rxscan1160_scan:
    set_addr $I10, rxscan1160_loop
    rx1159_cur."!mark_push"(0, rx1159_pos, $I10)
  rxscan1160_done:
.annotate 'line', 84
  # rx enumcharlist negate=0 
    ge rx1159_pos, rx1159_eos, rx1159_fail
    sub $I10, rx1159_pos, rx1159_off
    substr $S10, rx1159_tgt, $I10, 1
    index $I11, "Ee", $S10
    lt $I11, 0, rx1159_fail
    inc rx1159_pos
  # rx enumcharlist_q negate=0  r 0..1
    sub $I10, rx1159_pos, rx1159_off
    set rx1159_rep, 0
    sub $I12, rx1159_eos, rx1159_pos
    le $I12, 1, rxenumcharlistq1161_loop
    set $I12, 1
  rxenumcharlistq1161_loop:
    le $I12, 0, rxenumcharlistq1161_done
    substr $S10, rx1159_tgt, $I10, 1
    index $I11, "+-", $S10
    lt $I11, 0, rxenumcharlistq1161_done
    inc rx1159_rep
  rxenumcharlistq1161_done:
    add rx1159_pos, rx1159_pos, rx1159_rep
  # rx charclass_q d r 1..-1
    sub $I10, rx1159_pos, rx1159_off
    find_not_cclass $I11, .CCLASS_NUMERIC, rx1159_tgt, $I10, rx1159_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx1159_fail
    add rx1159_pos, rx1159_off, $I11
  # rx pass
    rx1159_cur."!cursor_pass"(rx1159_pos, "escale")
    if_null rx1159_debug, debug_378
    rx1159_cur."!cursor_debug"("PASS", "escale", " at pos=", rx1159_pos)
  debug_378:
    .return (rx1159_cur)
  rx1159_restart:
.annotate 'line', 7
    if_null rx1159_debug, debug_379
    rx1159_cur."!cursor_debug"("NEXT", "escale")
  debug_379:
  rx1159_fail:
    (rx1159_rep, rx1159_pos, $I10, $P10) = rx1159_cur."!mark_fail"(0)
    lt rx1159_pos, -1, rx1159_done
    eq rx1159_pos, -1, rx1159_fail
    jump $I10
  rx1159_done:
    rx1159_cur."!cursor_fail"()
    if_null rx1159_debug, debug_380
    rx1159_cur."!cursor_debug"("FAIL", "escale")
  debug_380:
    .return (rx1159_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__escale"  :subid("68_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    new $P105, "ResizablePMCArray"
    push $P105, "e"
    push $P105, "E"
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape"  :subid("69_1309859073.622")
    .param pmc param_1164
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 86
    .lex "self", param_1164
    $P105 = param_1164."!protoregex"("quote_escape")
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape"  :subid("70_1309859073.622")
    .param pmc param_1166
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 86
    .lex "self", param_1166
    $P106 = param_1166."!PREFIX__!protoregex"("quote_escape")
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<backslash>"  :subid("71_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1168_tgt
    .local int rx1168_pos
    .local int rx1168_off
    .local int rx1168_eos
    .local int rx1168_rep
    .local pmc rx1168_cur
    .local pmc rx1168_debug
    (rx1168_cur, rx1168_pos, rx1168_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1168_cur
    .local pmc match
    .lex "$/", match
    length rx1168_eos, rx1168_tgt
    gt rx1168_pos, rx1168_eos, rx1168_done
    set rx1168_off, 0
    lt rx1168_pos, 2, rx1168_start
    sub rx1168_off, rx1168_pos, 1
    substr rx1168_tgt, rx1168_tgt, rx1168_off
  rx1168_start:
    eq $I10, 1, rx1168_restart
    if_null rx1168_debug, debug_381
    rx1168_cur."!cursor_debug"("START", "quote_escape:sym<backslash>")
  debug_381:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1169_done
    goto rxscan1169_scan
  rxscan1169_loop:
    (rx1168_pos) = rx1168_cur."from"()
    inc rx1168_pos
    rx1168_cur."!cursor_from"(rx1168_pos)
    ge rx1168_pos, rx1168_eos, rxscan1169_done
  rxscan1169_scan:
    set_addr $I10, rxscan1169_loop
    rx1168_cur."!mark_push"(0, rx1168_pos, $I10)
  rxscan1169_done:
.annotate 'line', 87
  # rx literal  "\\\\"
    add $I11, rx1168_pos, 2
    gt $I11, rx1168_eos, rx1168_fail
    sub $I11, rx1168_pos, rx1168_off
    substr $S10, rx1168_tgt, $I11, 2
    ne $S10, "\\\\", rx1168_fail
    add rx1168_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx1168_cur."!cursor_pos"(rx1168_pos)
    $P10 = rx1168_cur."quotemod_check"("q")
    unless $P10, rx1168_fail
  # rx pass
    rx1168_cur."!cursor_pass"(rx1168_pos, "quote_escape:sym<backslash>")
    if_null rx1168_debug, debug_382
    rx1168_cur."!cursor_debug"("PASS", "quote_escape:sym<backslash>", " at pos=", rx1168_pos)
  debug_382:
    .return (rx1168_cur)
  rx1168_restart:
.annotate 'line', 7
    if_null rx1168_debug, debug_383
    rx1168_cur."!cursor_debug"("NEXT", "quote_escape:sym<backslash>")
  debug_383:
  rx1168_fail:
    (rx1168_rep, rx1168_pos, $I10, $P10) = rx1168_cur."!mark_fail"(0)
    lt rx1168_pos, -1, rx1168_done
    eq rx1168_pos, -1, rx1168_fail
    jump $I10
  rx1168_done:
    rx1168_cur."!cursor_fail"()
    if_null rx1168_debug, debug_384
    rx1168_cur."!cursor_debug"("FAIL", "quote_escape:sym<backslash>")
  debug_384:
    .return (rx1168_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<backslash>"  :subid("72_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    new $P105, "ResizablePMCArray"
    push $P105, "\\\\"
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<stopper>"  :subid("73_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1172_tgt
    .local int rx1172_pos
    .local int rx1172_off
    .local int rx1172_eos
    .local int rx1172_rep
    .local pmc rx1172_cur
    .local pmc rx1172_debug
    (rx1172_cur, rx1172_pos, rx1172_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1172_cur
    .local pmc match
    .lex "$/", match
    length rx1172_eos, rx1172_tgt
    gt rx1172_pos, rx1172_eos, rx1172_done
    set rx1172_off, 0
    lt rx1172_pos, 2, rx1172_start
    sub rx1172_off, rx1172_pos, 1
    substr rx1172_tgt, rx1172_tgt, rx1172_off
  rx1172_start:
    eq $I10, 1, rx1172_restart
    if_null rx1172_debug, debug_385
    rx1172_cur."!cursor_debug"("START", "quote_escape:sym<stopper>")
  debug_385:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1173_done
    goto rxscan1173_scan
  rxscan1173_loop:
    (rx1172_pos) = rx1172_cur."from"()
    inc rx1172_pos
    rx1172_cur."!cursor_from"(rx1172_pos)
    ge rx1172_pos, rx1172_eos, rxscan1173_done
  rxscan1173_scan:
    set_addr $I10, rxscan1173_loop
    rx1172_cur."!mark_push"(0, rx1172_pos, $I10)
  rxscan1173_done:
.annotate 'line', 88
  # rx literal  "\\"
    add $I11, rx1172_pos, 1
    gt $I11, rx1172_eos, rx1172_fail
    sub $I11, rx1172_pos, rx1172_off
    ord $I11, rx1172_tgt, $I11
    ne $I11, 92, rx1172_fail
    add rx1172_pos, 1
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx1172_cur."!cursor_pos"(rx1172_pos)
    $P10 = rx1172_cur."quotemod_check"("q")
    unless $P10, rx1172_fail
  # rx subrule "stopper" subtype=capture negate=
    rx1172_cur."!cursor_pos"(rx1172_pos)
    $P10 = rx1172_cur."stopper"()
    unless $P10, rx1172_fail
    rx1172_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("stopper")
    rx1172_pos = $P10."pos"()
  # rx pass
    rx1172_cur."!cursor_pass"(rx1172_pos, "quote_escape:sym<stopper>")
    if_null rx1172_debug, debug_386
    rx1172_cur."!cursor_debug"("PASS", "quote_escape:sym<stopper>", " at pos=", rx1172_pos)
  debug_386:
    .return (rx1172_cur)
  rx1172_restart:
.annotate 'line', 7
    if_null rx1172_debug, debug_387
    rx1172_cur."!cursor_debug"("NEXT", "quote_escape:sym<stopper>")
  debug_387:
  rx1172_fail:
    (rx1172_rep, rx1172_pos, $I10, $P10) = rx1172_cur."!mark_fail"(0)
    lt rx1172_pos, -1, rx1172_done
    eq rx1172_pos, -1, rx1172_fail
    jump $I10
  rx1172_done:
    rx1172_cur."!cursor_fail"()
    if_null rx1172_debug, debug_388
    rx1172_cur."!cursor_debug"("FAIL", "quote_escape:sym<stopper>")
  debug_388:
    .return (rx1172_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<stopper>"  :subid("74_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    new $P105, "ResizablePMCArray"
    push $P105, "\\"
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<bs>"  :subid("75_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1176_tgt
    .local int rx1176_pos
    .local int rx1176_off
    .local int rx1176_eos
    .local int rx1176_rep
    .local pmc rx1176_cur
    .local pmc rx1176_debug
    (rx1176_cur, rx1176_pos, rx1176_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1176_cur
    .local pmc match
    .lex "$/", match
    length rx1176_eos, rx1176_tgt
    gt rx1176_pos, rx1176_eos, rx1176_done
    set rx1176_off, 0
    lt rx1176_pos, 2, rx1176_start
    sub rx1176_off, rx1176_pos, 1
    substr rx1176_tgt, rx1176_tgt, rx1176_off
  rx1176_start:
    eq $I10, 1, rx1176_restart
    if_null rx1176_debug, debug_389
    rx1176_cur."!cursor_debug"("START", "quote_escape:sym<bs>")
  debug_389:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1177_done
    goto rxscan1177_scan
  rxscan1177_loop:
    (rx1176_pos) = rx1176_cur."from"()
    inc rx1176_pos
    rx1176_cur."!cursor_from"(rx1176_pos)
    ge rx1176_pos, rx1176_eos, rxscan1177_done
  rxscan1177_scan:
    set_addr $I10, rxscan1177_loop
    rx1176_cur."!mark_push"(0, rx1176_pos, $I10)
  rxscan1177_done:
.annotate 'line', 90
  # rx literal  "\\b"
    add $I11, rx1176_pos, 2
    gt $I11, rx1176_eos, rx1176_fail
    sub $I11, rx1176_pos, rx1176_off
    substr $S10, rx1176_tgt, $I11, 2
    ne $S10, "\\b", rx1176_fail
    add rx1176_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx1176_cur."!cursor_pos"(rx1176_pos)
    $P10 = rx1176_cur."quotemod_check"("b")
    unless $P10, rx1176_fail
  # rx pass
    rx1176_cur."!cursor_pass"(rx1176_pos, "quote_escape:sym<bs>")
    if_null rx1176_debug, debug_390
    rx1176_cur."!cursor_debug"("PASS", "quote_escape:sym<bs>", " at pos=", rx1176_pos)
  debug_390:
    .return (rx1176_cur)
  rx1176_restart:
.annotate 'line', 7
    if_null rx1176_debug, debug_391
    rx1176_cur."!cursor_debug"("NEXT", "quote_escape:sym<bs>")
  debug_391:
  rx1176_fail:
    (rx1176_rep, rx1176_pos, $I10, $P10) = rx1176_cur."!mark_fail"(0)
    lt rx1176_pos, -1, rx1176_done
    eq rx1176_pos, -1, rx1176_fail
    jump $I10
  rx1176_done:
    rx1176_cur."!cursor_fail"()
    if_null rx1176_debug, debug_392
    rx1176_cur."!cursor_debug"("FAIL", "quote_escape:sym<bs>")
  debug_392:
    .return (rx1176_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<bs>"  :subid("76_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    new $P105, "ResizablePMCArray"
    push $P105, "\\b"
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<nl>"  :subid("77_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1180_tgt
    .local int rx1180_pos
    .local int rx1180_off
    .local int rx1180_eos
    .local int rx1180_rep
    .local pmc rx1180_cur
    .local pmc rx1180_debug
    (rx1180_cur, rx1180_pos, rx1180_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1180_cur
    .local pmc match
    .lex "$/", match
    length rx1180_eos, rx1180_tgt
    gt rx1180_pos, rx1180_eos, rx1180_done
    set rx1180_off, 0
    lt rx1180_pos, 2, rx1180_start
    sub rx1180_off, rx1180_pos, 1
    substr rx1180_tgt, rx1180_tgt, rx1180_off
  rx1180_start:
    eq $I10, 1, rx1180_restart
    if_null rx1180_debug, debug_393
    rx1180_cur."!cursor_debug"("START", "quote_escape:sym<nl>")
  debug_393:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1181_done
    goto rxscan1181_scan
  rxscan1181_loop:
    (rx1180_pos) = rx1180_cur."from"()
    inc rx1180_pos
    rx1180_cur."!cursor_from"(rx1180_pos)
    ge rx1180_pos, rx1180_eos, rxscan1181_done
  rxscan1181_scan:
    set_addr $I10, rxscan1181_loop
    rx1180_cur."!mark_push"(0, rx1180_pos, $I10)
  rxscan1181_done:
.annotate 'line', 91
  # rx literal  "\\n"
    add $I11, rx1180_pos, 2
    gt $I11, rx1180_eos, rx1180_fail
    sub $I11, rx1180_pos, rx1180_off
    substr $S10, rx1180_tgt, $I11, 2
    ne $S10, "\\n", rx1180_fail
    add rx1180_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx1180_cur."!cursor_pos"(rx1180_pos)
    $P10 = rx1180_cur."quotemod_check"("b")
    unless $P10, rx1180_fail
  # rx pass
    rx1180_cur."!cursor_pass"(rx1180_pos, "quote_escape:sym<nl>")
    if_null rx1180_debug, debug_394
    rx1180_cur."!cursor_debug"("PASS", "quote_escape:sym<nl>", " at pos=", rx1180_pos)
  debug_394:
    .return (rx1180_cur)
  rx1180_restart:
.annotate 'line', 7
    if_null rx1180_debug, debug_395
    rx1180_cur."!cursor_debug"("NEXT", "quote_escape:sym<nl>")
  debug_395:
  rx1180_fail:
    (rx1180_rep, rx1180_pos, $I10, $P10) = rx1180_cur."!mark_fail"(0)
    lt rx1180_pos, -1, rx1180_done
    eq rx1180_pos, -1, rx1180_fail
    jump $I10
  rx1180_done:
    rx1180_cur."!cursor_fail"()
    if_null rx1180_debug, debug_396
    rx1180_cur."!cursor_debug"("FAIL", "quote_escape:sym<nl>")
  debug_396:
    .return (rx1180_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<nl>"  :subid("78_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    new $P105, "ResizablePMCArray"
    push $P105, "\\n"
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<cr>"  :subid("79_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1184_tgt
    .local int rx1184_pos
    .local int rx1184_off
    .local int rx1184_eos
    .local int rx1184_rep
    .local pmc rx1184_cur
    .local pmc rx1184_debug
    (rx1184_cur, rx1184_pos, rx1184_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1184_cur
    .local pmc match
    .lex "$/", match
    length rx1184_eos, rx1184_tgt
    gt rx1184_pos, rx1184_eos, rx1184_done
    set rx1184_off, 0
    lt rx1184_pos, 2, rx1184_start
    sub rx1184_off, rx1184_pos, 1
    substr rx1184_tgt, rx1184_tgt, rx1184_off
  rx1184_start:
    eq $I10, 1, rx1184_restart
    if_null rx1184_debug, debug_397
    rx1184_cur."!cursor_debug"("START", "quote_escape:sym<cr>")
  debug_397:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1185_done
    goto rxscan1185_scan
  rxscan1185_loop:
    (rx1184_pos) = rx1184_cur."from"()
    inc rx1184_pos
    rx1184_cur."!cursor_from"(rx1184_pos)
    ge rx1184_pos, rx1184_eos, rxscan1185_done
  rxscan1185_scan:
    set_addr $I10, rxscan1185_loop
    rx1184_cur."!mark_push"(0, rx1184_pos, $I10)
  rxscan1185_done:
.annotate 'line', 92
  # rx literal  "\\r"
    add $I11, rx1184_pos, 2
    gt $I11, rx1184_eos, rx1184_fail
    sub $I11, rx1184_pos, rx1184_off
    substr $S10, rx1184_tgt, $I11, 2
    ne $S10, "\\r", rx1184_fail
    add rx1184_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx1184_cur."!cursor_pos"(rx1184_pos)
    $P10 = rx1184_cur."quotemod_check"("b")
    unless $P10, rx1184_fail
  # rx pass
    rx1184_cur."!cursor_pass"(rx1184_pos, "quote_escape:sym<cr>")
    if_null rx1184_debug, debug_398
    rx1184_cur."!cursor_debug"("PASS", "quote_escape:sym<cr>", " at pos=", rx1184_pos)
  debug_398:
    .return (rx1184_cur)
  rx1184_restart:
.annotate 'line', 7
    if_null rx1184_debug, debug_399
    rx1184_cur."!cursor_debug"("NEXT", "quote_escape:sym<cr>")
  debug_399:
  rx1184_fail:
    (rx1184_rep, rx1184_pos, $I10, $P10) = rx1184_cur."!mark_fail"(0)
    lt rx1184_pos, -1, rx1184_done
    eq rx1184_pos, -1, rx1184_fail
    jump $I10
  rx1184_done:
    rx1184_cur."!cursor_fail"()
    if_null rx1184_debug, debug_400
    rx1184_cur."!cursor_debug"("FAIL", "quote_escape:sym<cr>")
  debug_400:
    .return (rx1184_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<cr>"  :subid("80_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    new $P105, "ResizablePMCArray"
    push $P105, "\\r"
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<tab>"  :subid("81_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1188_tgt
    .local int rx1188_pos
    .local int rx1188_off
    .local int rx1188_eos
    .local int rx1188_rep
    .local pmc rx1188_cur
    .local pmc rx1188_debug
    (rx1188_cur, rx1188_pos, rx1188_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1188_cur
    .local pmc match
    .lex "$/", match
    length rx1188_eos, rx1188_tgt
    gt rx1188_pos, rx1188_eos, rx1188_done
    set rx1188_off, 0
    lt rx1188_pos, 2, rx1188_start
    sub rx1188_off, rx1188_pos, 1
    substr rx1188_tgt, rx1188_tgt, rx1188_off
  rx1188_start:
    eq $I10, 1, rx1188_restart
    if_null rx1188_debug, debug_401
    rx1188_cur."!cursor_debug"("START", "quote_escape:sym<tab>")
  debug_401:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1189_done
    goto rxscan1189_scan
  rxscan1189_loop:
    (rx1188_pos) = rx1188_cur."from"()
    inc rx1188_pos
    rx1188_cur."!cursor_from"(rx1188_pos)
    ge rx1188_pos, rx1188_eos, rxscan1189_done
  rxscan1189_scan:
    set_addr $I10, rxscan1189_loop
    rx1188_cur."!mark_push"(0, rx1188_pos, $I10)
  rxscan1189_done:
.annotate 'line', 93
  # rx literal  "\\t"
    add $I11, rx1188_pos, 2
    gt $I11, rx1188_eos, rx1188_fail
    sub $I11, rx1188_pos, rx1188_off
    substr $S10, rx1188_tgt, $I11, 2
    ne $S10, "\\t", rx1188_fail
    add rx1188_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx1188_cur."!cursor_pos"(rx1188_pos)
    $P10 = rx1188_cur."quotemod_check"("b")
    unless $P10, rx1188_fail
  # rx pass
    rx1188_cur."!cursor_pass"(rx1188_pos, "quote_escape:sym<tab>")
    if_null rx1188_debug, debug_402
    rx1188_cur."!cursor_debug"("PASS", "quote_escape:sym<tab>", " at pos=", rx1188_pos)
  debug_402:
    .return (rx1188_cur)
  rx1188_restart:
.annotate 'line', 7
    if_null rx1188_debug, debug_403
    rx1188_cur."!cursor_debug"("NEXT", "quote_escape:sym<tab>")
  debug_403:
  rx1188_fail:
    (rx1188_rep, rx1188_pos, $I10, $P10) = rx1188_cur."!mark_fail"(0)
    lt rx1188_pos, -1, rx1188_done
    eq rx1188_pos, -1, rx1188_fail
    jump $I10
  rx1188_done:
    rx1188_cur."!cursor_fail"()
    if_null rx1188_debug, debug_404
    rx1188_cur."!cursor_debug"("FAIL", "quote_escape:sym<tab>")
  debug_404:
    .return (rx1188_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<tab>"  :subid("82_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    new $P105, "ResizablePMCArray"
    push $P105, "\\t"
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<ff>"  :subid("83_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1192_tgt
    .local int rx1192_pos
    .local int rx1192_off
    .local int rx1192_eos
    .local int rx1192_rep
    .local pmc rx1192_cur
    .local pmc rx1192_debug
    (rx1192_cur, rx1192_pos, rx1192_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1192_cur
    .local pmc match
    .lex "$/", match
    length rx1192_eos, rx1192_tgt
    gt rx1192_pos, rx1192_eos, rx1192_done
    set rx1192_off, 0
    lt rx1192_pos, 2, rx1192_start
    sub rx1192_off, rx1192_pos, 1
    substr rx1192_tgt, rx1192_tgt, rx1192_off
  rx1192_start:
    eq $I10, 1, rx1192_restart
    if_null rx1192_debug, debug_405
    rx1192_cur."!cursor_debug"("START", "quote_escape:sym<ff>")
  debug_405:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1193_done
    goto rxscan1193_scan
  rxscan1193_loop:
    (rx1192_pos) = rx1192_cur."from"()
    inc rx1192_pos
    rx1192_cur."!cursor_from"(rx1192_pos)
    ge rx1192_pos, rx1192_eos, rxscan1193_done
  rxscan1193_scan:
    set_addr $I10, rxscan1193_loop
    rx1192_cur."!mark_push"(0, rx1192_pos, $I10)
  rxscan1193_done:
.annotate 'line', 94
  # rx literal  "\\f"
    add $I11, rx1192_pos, 2
    gt $I11, rx1192_eos, rx1192_fail
    sub $I11, rx1192_pos, rx1192_off
    substr $S10, rx1192_tgt, $I11, 2
    ne $S10, "\\f", rx1192_fail
    add rx1192_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx1192_cur."!cursor_pos"(rx1192_pos)
    $P10 = rx1192_cur."quotemod_check"("b")
    unless $P10, rx1192_fail
  # rx pass
    rx1192_cur."!cursor_pass"(rx1192_pos, "quote_escape:sym<ff>")
    if_null rx1192_debug, debug_406
    rx1192_cur."!cursor_debug"("PASS", "quote_escape:sym<ff>", " at pos=", rx1192_pos)
  debug_406:
    .return (rx1192_cur)
  rx1192_restart:
.annotate 'line', 7
    if_null rx1192_debug, debug_407
    rx1192_cur."!cursor_debug"("NEXT", "quote_escape:sym<ff>")
  debug_407:
  rx1192_fail:
    (rx1192_rep, rx1192_pos, $I10, $P10) = rx1192_cur."!mark_fail"(0)
    lt rx1192_pos, -1, rx1192_done
    eq rx1192_pos, -1, rx1192_fail
    jump $I10
  rx1192_done:
    rx1192_cur."!cursor_fail"()
    if_null rx1192_debug, debug_408
    rx1192_cur."!cursor_debug"("FAIL", "quote_escape:sym<ff>")
  debug_408:
    .return (rx1192_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<ff>"  :subid("84_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    new $P105, "ResizablePMCArray"
    push $P105, "\\f"
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<esc>"  :subid("85_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1196_tgt
    .local int rx1196_pos
    .local int rx1196_off
    .local int rx1196_eos
    .local int rx1196_rep
    .local pmc rx1196_cur
    .local pmc rx1196_debug
    (rx1196_cur, rx1196_pos, rx1196_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1196_cur
    .local pmc match
    .lex "$/", match
    length rx1196_eos, rx1196_tgt
    gt rx1196_pos, rx1196_eos, rx1196_done
    set rx1196_off, 0
    lt rx1196_pos, 2, rx1196_start
    sub rx1196_off, rx1196_pos, 1
    substr rx1196_tgt, rx1196_tgt, rx1196_off
  rx1196_start:
    eq $I10, 1, rx1196_restart
    if_null rx1196_debug, debug_409
    rx1196_cur."!cursor_debug"("START", "quote_escape:sym<esc>")
  debug_409:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1197_done
    goto rxscan1197_scan
  rxscan1197_loop:
    (rx1196_pos) = rx1196_cur."from"()
    inc rx1196_pos
    rx1196_cur."!cursor_from"(rx1196_pos)
    ge rx1196_pos, rx1196_eos, rxscan1197_done
  rxscan1197_scan:
    set_addr $I10, rxscan1197_loop
    rx1196_cur."!mark_push"(0, rx1196_pos, $I10)
  rxscan1197_done:
.annotate 'line', 95
  # rx literal  "\\e"
    add $I11, rx1196_pos, 2
    gt $I11, rx1196_eos, rx1196_fail
    sub $I11, rx1196_pos, rx1196_off
    substr $S10, rx1196_tgt, $I11, 2
    ne $S10, "\\e", rx1196_fail
    add rx1196_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx1196_cur."!cursor_pos"(rx1196_pos)
    $P10 = rx1196_cur."quotemod_check"("b")
    unless $P10, rx1196_fail
  # rx pass
    rx1196_cur."!cursor_pass"(rx1196_pos, "quote_escape:sym<esc>")
    if_null rx1196_debug, debug_410
    rx1196_cur."!cursor_debug"("PASS", "quote_escape:sym<esc>", " at pos=", rx1196_pos)
  debug_410:
    .return (rx1196_cur)
  rx1196_restart:
.annotate 'line', 7
    if_null rx1196_debug, debug_411
    rx1196_cur."!cursor_debug"("NEXT", "quote_escape:sym<esc>")
  debug_411:
  rx1196_fail:
    (rx1196_rep, rx1196_pos, $I10, $P10) = rx1196_cur."!mark_fail"(0)
    lt rx1196_pos, -1, rx1196_done
    eq rx1196_pos, -1, rx1196_fail
    jump $I10
  rx1196_done:
    rx1196_cur."!cursor_fail"()
    if_null rx1196_debug, debug_412
    rx1196_cur."!cursor_debug"("FAIL", "quote_escape:sym<esc>")
  debug_412:
    .return (rx1196_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<esc>"  :subid("86_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    new $P105, "ResizablePMCArray"
    push $P105, "\\e"
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<hex>"  :subid("87_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1200_tgt
    .local int rx1200_pos
    .local int rx1200_off
    .local int rx1200_eos
    .local int rx1200_rep
    .local pmc rx1200_cur
    .local pmc rx1200_debug
    (rx1200_cur, rx1200_pos, rx1200_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1200_cur
    .local pmc match
    .lex "$/", match
    length rx1200_eos, rx1200_tgt
    gt rx1200_pos, rx1200_eos, rx1200_done
    set rx1200_off, 0
    lt rx1200_pos, 2, rx1200_start
    sub rx1200_off, rx1200_pos, 1
    substr rx1200_tgt, rx1200_tgt, rx1200_off
  rx1200_start:
    eq $I10, 1, rx1200_restart
    if_null rx1200_debug, debug_413
    rx1200_cur."!cursor_debug"("START", "quote_escape:sym<hex>")
  debug_413:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1201_done
    goto rxscan1201_scan
  rxscan1201_loop:
    (rx1200_pos) = rx1200_cur."from"()
    inc rx1200_pos
    rx1200_cur."!cursor_from"(rx1200_pos)
    ge rx1200_pos, rx1200_eos, rxscan1201_done
  rxscan1201_scan:
    set_addr $I10, rxscan1201_loop
    rx1200_cur."!mark_push"(0, rx1200_pos, $I10)
  rxscan1201_done:
.annotate 'line', 97
  # rx literal  unicode:"\\x"
    add $I11, rx1200_pos, 2
    gt $I11, rx1200_eos, rx1200_fail
    sub $I11, rx1200_pos, rx1200_off
    substr $S10, rx1200_tgt, $I11, 2
    ne $S10, unicode:"\\x", rx1200_fail
    add rx1200_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx1200_cur."!cursor_pos"(rx1200_pos)
    $P10 = rx1200_cur."quotemod_check"("b")
    unless $P10, rx1200_fail
  alt1202_0:
.annotate 'line', 98
    set_addr $I10, alt1202_1
    rx1200_cur."!mark_push"(0, rx1200_pos, $I10)
  # rx subrule "hexint" subtype=capture negate=
    rx1200_cur."!cursor_pos"(rx1200_pos)
    $P10 = rx1200_cur."hexint"()
    unless $P10, rx1200_fail
    rx1200_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexint")
    rx1200_pos = $P10."pos"()
    goto alt1202_end
  alt1202_1:
  # rx literal  "["
    add $I11, rx1200_pos, 1
    gt $I11, rx1200_eos, rx1200_fail
    sub $I11, rx1200_pos, rx1200_off
    ord $I11, rx1200_tgt, $I11
    ne $I11, 91, rx1200_fail
    add rx1200_pos, 1
  # rx subrule "hexints" subtype=capture negate=
    rx1200_cur."!cursor_pos"(rx1200_pos)
    $P10 = rx1200_cur."hexints"()
    unless $P10, rx1200_fail
    rx1200_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexints")
    rx1200_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx1200_pos, 1
    gt $I11, rx1200_eos, rx1200_fail
    sub $I11, rx1200_pos, rx1200_off
    ord $I11, rx1200_tgt, $I11
    ne $I11, 93, rx1200_fail
    add rx1200_pos, 1
  alt1202_end:
.annotate 'line', 96
  # rx pass
    rx1200_cur."!cursor_pass"(rx1200_pos, "quote_escape:sym<hex>")
    if_null rx1200_debug, debug_414
    rx1200_cur."!cursor_debug"("PASS", "quote_escape:sym<hex>", " at pos=", rx1200_pos)
  debug_414:
    .return (rx1200_cur)
  rx1200_restart:
.annotate 'line', 7
    if_null rx1200_debug, debug_415
    rx1200_cur."!cursor_debug"("NEXT", "quote_escape:sym<hex>")
  debug_415:
  rx1200_fail:
    (rx1200_rep, rx1200_pos, $I10, $P10) = rx1200_cur."!mark_fail"(0)
    lt rx1200_pos, -1, rx1200_done
    eq rx1200_pos, -1, rx1200_fail
    jump $I10
  rx1200_done:
    rx1200_cur."!cursor_fail"()
    if_null rx1200_debug, debug_416
    rx1200_cur."!cursor_debug"("FAIL", "quote_escape:sym<hex>")
  debug_416:
    .return (rx1200_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<hex>"  :subid("88_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    new $P105, "ResizablePMCArray"
    push $P105, unicode:"\\x"
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<oct>"  :subid("89_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1205_tgt
    .local int rx1205_pos
    .local int rx1205_off
    .local int rx1205_eos
    .local int rx1205_rep
    .local pmc rx1205_cur
    .local pmc rx1205_debug
    (rx1205_cur, rx1205_pos, rx1205_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1205_cur
    .local pmc match
    .lex "$/", match
    length rx1205_eos, rx1205_tgt
    gt rx1205_pos, rx1205_eos, rx1205_done
    set rx1205_off, 0
    lt rx1205_pos, 2, rx1205_start
    sub rx1205_off, rx1205_pos, 1
    substr rx1205_tgt, rx1205_tgt, rx1205_off
  rx1205_start:
    eq $I10, 1, rx1205_restart
    if_null rx1205_debug, debug_417
    rx1205_cur."!cursor_debug"("START", "quote_escape:sym<oct>")
  debug_417:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1206_done
    goto rxscan1206_scan
  rxscan1206_loop:
    (rx1205_pos) = rx1205_cur."from"()
    inc rx1205_pos
    rx1205_cur."!cursor_from"(rx1205_pos)
    ge rx1205_pos, rx1205_eos, rxscan1206_done
  rxscan1206_scan:
    set_addr $I10, rxscan1206_loop
    rx1205_cur."!mark_push"(0, rx1205_pos, $I10)
  rxscan1206_done:
.annotate 'line', 101
  # rx literal  "\\o"
    add $I11, rx1205_pos, 2
    gt $I11, rx1205_eos, rx1205_fail
    sub $I11, rx1205_pos, rx1205_off
    substr $S10, rx1205_tgt, $I11, 2
    ne $S10, "\\o", rx1205_fail
    add rx1205_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx1205_cur."!cursor_pos"(rx1205_pos)
    $P10 = rx1205_cur."quotemod_check"("b")
    unless $P10, rx1205_fail
  alt1207_0:
.annotate 'line', 102
    set_addr $I10, alt1207_1
    rx1205_cur."!mark_push"(0, rx1205_pos, $I10)
  # rx subrule "octint" subtype=capture negate=
    rx1205_cur."!cursor_pos"(rx1205_pos)
    $P10 = rx1205_cur."octint"()
    unless $P10, rx1205_fail
    rx1205_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octint")
    rx1205_pos = $P10."pos"()
    goto alt1207_end
  alt1207_1:
  # rx literal  "["
    add $I11, rx1205_pos, 1
    gt $I11, rx1205_eos, rx1205_fail
    sub $I11, rx1205_pos, rx1205_off
    ord $I11, rx1205_tgt, $I11
    ne $I11, 91, rx1205_fail
    add rx1205_pos, 1
  # rx subrule "octints" subtype=capture negate=
    rx1205_cur."!cursor_pos"(rx1205_pos)
    $P10 = rx1205_cur."octints"()
    unless $P10, rx1205_fail
    rx1205_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octints")
    rx1205_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx1205_pos, 1
    gt $I11, rx1205_eos, rx1205_fail
    sub $I11, rx1205_pos, rx1205_off
    ord $I11, rx1205_tgt, $I11
    ne $I11, 93, rx1205_fail
    add rx1205_pos, 1
  alt1207_end:
.annotate 'line', 100
  # rx pass
    rx1205_cur."!cursor_pass"(rx1205_pos, "quote_escape:sym<oct>")
    if_null rx1205_debug, debug_418
    rx1205_cur."!cursor_debug"("PASS", "quote_escape:sym<oct>", " at pos=", rx1205_pos)
  debug_418:
    .return (rx1205_cur)
  rx1205_restart:
.annotate 'line', 7
    if_null rx1205_debug, debug_419
    rx1205_cur."!cursor_debug"("NEXT", "quote_escape:sym<oct>")
  debug_419:
  rx1205_fail:
    (rx1205_rep, rx1205_pos, $I10, $P10) = rx1205_cur."!mark_fail"(0)
    lt rx1205_pos, -1, rx1205_done
    eq rx1205_pos, -1, rx1205_fail
    jump $I10
  rx1205_done:
    rx1205_cur."!cursor_fail"()
    if_null rx1205_debug, debug_420
    rx1205_cur."!cursor_debug"("FAIL", "quote_escape:sym<oct>")
  debug_420:
    .return (rx1205_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<oct>"  :subid("90_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    new $P105, "ResizablePMCArray"
    push $P105, "\\o"
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<chr>"  :subid("91_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1210_tgt
    .local int rx1210_pos
    .local int rx1210_off
    .local int rx1210_eos
    .local int rx1210_rep
    .local pmc rx1210_cur
    .local pmc rx1210_debug
    (rx1210_cur, rx1210_pos, rx1210_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1210_cur
    .local pmc match
    .lex "$/", match
    length rx1210_eos, rx1210_tgt
    gt rx1210_pos, rx1210_eos, rx1210_done
    set rx1210_off, 0
    lt rx1210_pos, 2, rx1210_start
    sub rx1210_off, rx1210_pos, 1
    substr rx1210_tgt, rx1210_tgt, rx1210_off
  rx1210_start:
    eq $I10, 1, rx1210_restart
    if_null rx1210_debug, debug_421
    rx1210_cur."!cursor_debug"("START", "quote_escape:sym<chr>")
  debug_421:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1211_done
    goto rxscan1211_scan
  rxscan1211_loop:
    (rx1210_pos) = rx1210_cur."from"()
    inc rx1210_pos
    rx1210_cur."!cursor_from"(rx1210_pos)
    ge rx1210_pos, rx1210_eos, rxscan1211_done
  rxscan1211_scan:
    set_addr $I10, rxscan1211_loop
    rx1210_cur."!mark_push"(0, rx1210_pos, $I10)
  rxscan1211_done:
.annotate 'line', 104
  # rx literal  "\\c"
    add $I11, rx1210_pos, 2
    gt $I11, rx1210_eos, rx1210_fail
    sub $I11, rx1210_pos, rx1210_off
    substr $S10, rx1210_tgt, $I11, 2
    ne $S10, "\\c", rx1210_fail
    add rx1210_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx1210_cur."!cursor_pos"(rx1210_pos)
    $P10 = rx1210_cur."quotemod_check"("b")
    unless $P10, rx1210_fail
  # rx subrule "charspec" subtype=capture negate=
    rx1210_cur."!cursor_pos"(rx1210_pos)
    $P10 = rx1210_cur."charspec"()
    unless $P10, rx1210_fail
    rx1210_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charspec")
    rx1210_pos = $P10."pos"()
  # rx pass
    rx1210_cur."!cursor_pass"(rx1210_pos, "quote_escape:sym<chr>")
    if_null rx1210_debug, debug_422
    rx1210_cur."!cursor_debug"("PASS", "quote_escape:sym<chr>", " at pos=", rx1210_pos)
  debug_422:
    .return (rx1210_cur)
  rx1210_restart:
.annotate 'line', 7
    if_null rx1210_debug, debug_423
    rx1210_cur."!cursor_debug"("NEXT", "quote_escape:sym<chr>")
  debug_423:
  rx1210_fail:
    (rx1210_rep, rx1210_pos, $I10, $P10) = rx1210_cur."!mark_fail"(0)
    lt rx1210_pos, -1, rx1210_done
    eq rx1210_pos, -1, rx1210_fail
    jump $I10
  rx1210_done:
    rx1210_cur."!cursor_fail"()
    if_null rx1210_debug, debug_424
    rx1210_cur."!cursor_debug"("FAIL", "quote_escape:sym<chr>")
  debug_424:
    .return (rx1210_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<chr>"  :subid("92_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    new $P105, "ResizablePMCArray"
    push $P105, "\\c"
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<0>"  :subid("93_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1214_tgt
    .local int rx1214_pos
    .local int rx1214_off
    .local int rx1214_eos
    .local int rx1214_rep
    .local pmc rx1214_cur
    .local pmc rx1214_debug
    (rx1214_cur, rx1214_pos, rx1214_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1214_cur
    .local pmc match
    .lex "$/", match
    length rx1214_eos, rx1214_tgt
    gt rx1214_pos, rx1214_eos, rx1214_done
    set rx1214_off, 0
    lt rx1214_pos, 2, rx1214_start
    sub rx1214_off, rx1214_pos, 1
    substr rx1214_tgt, rx1214_tgt, rx1214_off
  rx1214_start:
    eq $I10, 1, rx1214_restart
    if_null rx1214_debug, debug_425
    rx1214_cur."!cursor_debug"("START", "quote_escape:sym<0>")
  debug_425:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1215_done
    goto rxscan1215_scan
  rxscan1215_loop:
    (rx1214_pos) = rx1214_cur."from"()
    inc rx1214_pos
    rx1214_cur."!cursor_from"(rx1214_pos)
    ge rx1214_pos, rx1214_eos, rxscan1215_done
  rxscan1215_scan:
    set_addr $I10, rxscan1215_loop
    rx1214_cur."!mark_push"(0, rx1214_pos, $I10)
  rxscan1215_done:
.annotate 'line', 105
  # rx literal  "\\"
    add $I11, rx1214_pos, 1
    gt $I11, rx1214_eos, rx1214_fail
    sub $I11, rx1214_pos, rx1214_off
    ord $I11, rx1214_tgt, $I11
    ne $I11, 92, rx1214_fail
    add rx1214_pos, 1
  # rx subcapture "sym"
    set_addr $I10, rxcap_1216_fail
    rx1214_cur."!mark_push"(0, rx1214_pos, $I10)
  # rx literal  "0"
    add $I11, rx1214_pos, 1
    gt $I11, rx1214_eos, rx1214_fail
    sub $I11, rx1214_pos, rx1214_off
    ord $I11, rx1214_tgt, $I11
    ne $I11, 48, rx1214_fail
    add rx1214_pos, 1
    set_addr $I10, rxcap_1216_fail
    ($I12, $I11) = rx1214_cur."!mark_peek"($I10)
    rx1214_cur."!cursor_pos"($I11)
    ($P10) = rx1214_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1214_pos, "")
    rx1214_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1216_done
  rxcap_1216_fail:
    goto rx1214_fail
  rxcap_1216_done:
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx1214_cur."!cursor_pos"(rx1214_pos)
    $P10 = rx1214_cur."quotemod_check"("b")
    unless $P10, rx1214_fail
  # rx pass
    rx1214_cur."!cursor_pass"(rx1214_pos, "quote_escape:sym<0>")
    if_null rx1214_debug, debug_426
    rx1214_cur."!cursor_debug"("PASS", "quote_escape:sym<0>", " at pos=", rx1214_pos)
  debug_426:
    .return (rx1214_cur)
  rx1214_restart:
.annotate 'line', 7
    if_null rx1214_debug, debug_427
    rx1214_cur."!cursor_debug"("NEXT", "quote_escape:sym<0>")
  debug_427:
  rx1214_fail:
    (rx1214_rep, rx1214_pos, $I10, $P10) = rx1214_cur."!mark_fail"(0)
    lt rx1214_pos, -1, rx1214_done
    eq rx1214_pos, -1, rx1214_fail
    jump $I10
  rx1214_done:
    rx1214_cur."!cursor_fail"()
    if_null rx1214_debug, debug_428
    rx1214_cur."!cursor_debug"("FAIL", "quote_escape:sym<0>")
  debug_428:
    .return (rx1214_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<0>"  :subid("94_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    new $P105, "ResizablePMCArray"
    push $P105, "\\0"
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<misc>"  :subid("95_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .const 'Sub' $P1231 = "98_1309859073.622" 
    capture_lex $P1231
    .const 'Sub' $P1226 = "97_1309859073.622" 
    capture_lex $P1226
    .const 'Sub' $P1222 = "96_1309859073.622" 
    capture_lex $P1222
    .local string rx1219_tgt
    .local int rx1219_pos
    .local int rx1219_off
    .local int rx1219_eos
    .local int rx1219_rep
    .local pmc rx1219_cur
    .local pmc rx1219_debug
    (rx1219_cur, rx1219_pos, rx1219_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1219_cur
    .local pmc match
    .lex "$/", match
    length rx1219_eos, rx1219_tgt
    gt rx1219_pos, rx1219_eos, rx1219_done
    set rx1219_off, 0
    lt rx1219_pos, 2, rx1219_start
    sub rx1219_off, rx1219_pos, 1
    substr rx1219_tgt, rx1219_tgt, rx1219_off
  rx1219_start:
    eq $I10, 1, rx1219_restart
    if_null rx1219_debug, debug_429
    rx1219_cur."!cursor_debug"("START", "quote_escape:sym<misc>")
  debug_429:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1220_done
    goto rxscan1220_scan
  rxscan1220_loop:
    (rx1219_pos) = rx1219_cur."from"()
    inc rx1219_pos
    rx1219_cur."!cursor_from"(rx1219_pos)
    ge rx1219_pos, rx1219_eos, rxscan1220_done
  rxscan1220_scan:
    set_addr $I10, rxscan1220_loop
    rx1219_cur."!mark_push"(0, rx1219_pos, $I10)
  rxscan1220_done:
.annotate 'line', 107
    rx1219_cur."!cursor_pos"(rx1219_pos)
    find_lex $P105, unicode:"$\x{a2}"
    $P106 = $P105."MATCH"()
    store_lex "$/", $P106
    .const 'Sub' $P1222 = "96_1309859073.622" 
    capture_lex $P1222
    $P107 = $P1222()
  # rx literal  "\\"
    add $I11, rx1219_pos, 1
    gt $I11, rx1219_eos, rx1219_fail
    sub $I11, rx1219_pos, rx1219_off
    ord $I11, rx1219_tgt, $I11
    ne $I11, 92, rx1219_fail
    add rx1219_pos, 1
  alt1223_0:
.annotate 'line', 108
    set_addr $I10, alt1223_1
    rx1219_cur."!mark_push"(0, rx1219_pos, $I10)
.annotate 'line', 109
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx1219_cur."!cursor_pos"(rx1219_pos)
    $P10 = rx1219_cur."quotemod_check"("b")
    unless $P10, rx1219_fail
  alt1224_0:
.annotate 'line', 110
    set_addr $I10, alt1224_1
    rx1219_cur."!mark_push"(0, rx1219_pos, $I10)
.annotate 'line', 111
  # rx subrule $P1226 subtype=capture negate=
    rx1219_cur."!cursor_pos"(rx1219_pos)
    .const 'Sub' $P1226 = "97_1309859073.622" 
    capture_lex $P1226
    $P10 = rx1219_cur.$P1226()
    unless $P10, rx1219_fail
    rx1219_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("textqq")
    rx1219_pos = $P10."pos"()
    goto alt1224_end
  alt1224_1:
.annotate 'line', 112
  # rx subcapture "x"
    set_addr $I10, rxcap_1229_fail
    rx1219_cur."!mark_push"(0, rx1219_pos, $I10)
  # rx charclass w
    ge rx1219_pos, rx1219_eos, rx1219_fail
    sub $I10, rx1219_pos, rx1219_off
    is_cclass $I11, .CCLASS_WORD, rx1219_tgt, $I10
    unless $I11, rx1219_fail
    inc rx1219_pos
    set_addr $I10, rxcap_1229_fail
    ($I12, $I11) = rx1219_cur."!mark_peek"($I10)
    rx1219_cur."!cursor_pos"($I11)
    ($P10) = rx1219_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1219_pos, "")
    rx1219_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("x")
    goto rxcap_1229_done
  rxcap_1229_fail:
    goto rx1219_fail
  rxcap_1229_done:
    rx1219_cur."!cursor_pos"(rx1219_pos)
    find_lex $P108, unicode:"$\x{a2}"
    $P109 = $P108."MATCH"()
    store_lex "$/", $P109
    .const 'Sub' $P1231 = "98_1309859073.622" 
    capture_lex $P1231
    $P110 = $P1231()
  alt1224_end:
.annotate 'line', 109
    goto alt1223_end
  alt1223_1:
.annotate 'line', 114
  # rx subcapture "textq"
    set_addr $I10, rxcap_1233_fail
    rx1219_cur."!mark_push"(0, rx1219_pos, $I10)
  # rx charclass .
    ge rx1219_pos, rx1219_eos, rx1219_fail
    inc rx1219_pos
    set_addr $I10, rxcap_1233_fail
    ($I12, $I11) = rx1219_cur."!mark_peek"($I10)
    rx1219_cur."!cursor_pos"($I11)
    ($P10) = rx1219_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1219_pos, "")
    rx1219_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("textq")
    goto rxcap_1233_done
  rxcap_1233_fail:
    goto rx1219_fail
  rxcap_1233_done:
  alt1223_end:
.annotate 'line', 106
  # rx pass
    rx1219_cur."!cursor_pass"(rx1219_pos, "quote_escape:sym<misc>")
    if_null rx1219_debug, debug_437
    rx1219_cur."!cursor_debug"("PASS", "quote_escape:sym<misc>", " at pos=", rx1219_pos)
  debug_437:
    .return (rx1219_cur)
  rx1219_restart:
.annotate 'line', 7
    if_null rx1219_debug, debug_438
    rx1219_cur."!cursor_debug"("NEXT", "quote_escape:sym<misc>")
  debug_438:
  rx1219_fail:
    (rx1219_rep, rx1219_pos, $I10, $P10) = rx1219_cur."!mark_fail"(0)
    lt rx1219_pos, -1, rx1219_done
    eq rx1219_pos, -1, rx1219_fail
    jump $I10
  rx1219_done:
    rx1219_cur."!cursor_fail"()
    if_null rx1219_debug, debug_439
    rx1219_cur."!cursor_debug"("FAIL", "quote_escape:sym<misc>")
  debug_439:
    .return (rx1219_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block1221"  :anon :subid("96_1309859073.622") :outer("95_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 107
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block1225"  :anon :subid("97_1309859073.622") :method :outer("95_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 111
    .local string rx1227_tgt
    .local int rx1227_pos
    .local int rx1227_off
    .local int rx1227_eos
    .local int rx1227_rep
    .local pmc rx1227_cur
    .local pmc rx1227_debug
    (rx1227_cur, rx1227_pos, rx1227_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1227_cur
    .local pmc match
    .lex "$/", match
    length rx1227_eos, rx1227_tgt
    gt rx1227_pos, rx1227_eos, rx1227_done
    set rx1227_off, 0
    lt rx1227_pos, 2, rx1227_start
    sub rx1227_off, rx1227_pos, 1
    substr rx1227_tgt, rx1227_tgt, rx1227_off
  rx1227_start:
    eq $I10, 1, rx1227_restart
    if_null rx1227_debug, debug_430
    rx1227_cur."!cursor_debug"("START", "")
  debug_430:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1228_done
    goto rxscan1228_scan
  rxscan1228_loop:
    (rx1227_pos) = rx1227_cur."from"()
    inc rx1227_pos
    rx1227_cur."!cursor_from"(rx1227_pos)
    ge rx1227_pos, rx1227_eos, rxscan1228_done
  rxscan1228_scan:
    set_addr $I10, rxscan1228_loop
    rx1227_cur."!mark_push"(0, rx1227_pos, $I10)
  rxscan1228_done:
  # rx charclass W
    ge rx1227_pos, rx1227_eos, rx1227_fail
    sub $I10, rx1227_pos, rx1227_off
    is_cclass $I11, .CCLASS_WORD, rx1227_tgt, $I10
    if $I11, rx1227_fail
    inc rx1227_pos
  # rx pass
    rx1227_cur."!cursor_pass"(rx1227_pos, "")
    if_null rx1227_debug, debug_431
    rx1227_cur."!cursor_debug"("PASS", "", " at pos=", rx1227_pos)
  debug_431:
    .return (rx1227_cur)
  rx1227_restart:
    if_null rx1227_debug, debug_432
    rx1227_cur."!cursor_debug"("NEXT", "")
  debug_432:
  rx1227_fail:
    (rx1227_rep, rx1227_pos, $I10, $P10) = rx1227_cur."!mark_fail"(0)
    lt rx1227_pos, -1, rx1227_done
    eq rx1227_pos, -1, rx1227_fail
    jump $I10
  rx1227_done:
    rx1227_cur."!cursor_fail"()
    if_null rx1227_debug, debug_433
    rx1227_cur."!cursor_debug"("FAIL", "")
  debug_433:
    .return (rx1227_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block1230"  :anon :subid("98_1309859073.622") :outer("95_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 112
    find_lex $P110, "$/"
    unless_null $P110, vivify_434
    new $P110, "Undef"
  vivify_434:
    $P111 = $P110."CURSOR"()
    new $P112, "String"
    assign $P112, "Unrecognized backslash sequence: '\\"
    find_lex $P1232, "$/"
    unless_null $P1232, vivify_435
    $P1232 = root_new ['parrot';'Hash']
  vivify_435:
    set $P113, $P1232["x"]
    unless_null $P113, vivify_436
    new $P113, "Undef"
  vivify_436:
    $S100 = $P113."Str"()
    concat $P114, $P112, $S100
    concat $P115, $P114, "'"
    $P116 = $P111."panic"($P115)
    .return ($P116)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<misc>"  :subid("99_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    new $P111, "ResizablePMCArray"
    push $P111, ""
    .return ($P111)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "charname"  :subid("100_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .const 'Sub' $P1242 = "101_1309859073.622" 
    capture_lex $P1242
    .local string rx1236_tgt
    .local int rx1236_pos
    .local int rx1236_off
    .local int rx1236_eos
    .local int rx1236_rep
    .local pmc rx1236_cur
    .local pmc rx1236_debug
    (rx1236_cur, rx1236_pos, rx1236_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1236_cur
    .local pmc match
    .lex "$/", match
    length rx1236_eos, rx1236_tgt
    gt rx1236_pos, rx1236_eos, rx1236_done
    set rx1236_off, 0
    lt rx1236_pos, 2, rx1236_start
    sub rx1236_off, rx1236_pos, 1
    substr rx1236_tgt, rx1236_tgt, rx1236_off
  rx1236_start:
    eq $I10, 1, rx1236_restart
    if_null rx1236_debug, debug_440
    rx1236_cur."!cursor_debug"("START", "charname")
  debug_440:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1237_done
    goto rxscan1237_scan
  rxscan1237_loop:
    (rx1236_pos) = rx1236_cur."from"()
    inc rx1236_pos
    rx1236_cur."!cursor_from"(rx1236_pos)
    ge rx1236_pos, rx1236_eos, rxscan1237_done
  rxscan1237_scan:
    set_addr $I10, rxscan1237_loop
    rx1236_cur."!mark_push"(0, rx1236_pos, $I10)
  rxscan1237_done:
  alt1238_0:
.annotate 'line', 118
    set_addr $I10, alt1238_1
    rx1236_cur."!mark_push"(0, rx1236_pos, $I10)
.annotate 'line', 119
  # rx subrule "integer" subtype=capture negate=
    rx1236_cur."!cursor_pos"(rx1236_pos)
    $P10 = rx1236_cur."integer"()
    unless $P10, rx1236_fail
    rx1236_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("integer")
    rx1236_pos = $P10."pos"()
    goto alt1238_end
  alt1238_1:
.annotate 'line', 120
  # rx enumcharlist negate=0 
    ge rx1236_pos, rx1236_eos, rx1236_fail
    sub $I10, rx1236_pos, rx1236_off
    substr $S10, rx1236_tgt, $I10, 1
    index $I11, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ", $S10
    lt $I11, 0, rx1236_fail
    inc rx1236_pos
  # rx rxquantf1239 ** 0..*
    set_addr $I10, rxquantf1239_loop
    rx1236_cur."!mark_push"(0, rx1236_pos, $I10)
    goto rxquantf1239_done
  rxquantf1239_loop:
  # rx enumcharlist negate=1 
    ge rx1236_pos, rx1236_eos, rx1236_fail
    sub $I10, rx1236_pos, rx1236_off
    substr $S10, rx1236_tgt, $I10, 1
    index $I11, "],#", $S10
    ge $I11, 0, rx1236_fail
    inc rx1236_pos
    set_addr $I10, rxquantf1239_loop
    rx1236_cur."!mark_push"(rx1236_rep, rx1236_pos, $I10)
  rxquantf1239_done:
  # rx enumcharlist negate=0 
    ge rx1236_pos, rx1236_eos, rx1236_fail
    sub $I10, rx1236_pos, rx1236_off
    substr $S10, rx1236_tgt, $I10, 1
    index $I11, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ)", $S10
    lt $I11, 0, rx1236_fail
    inc rx1236_pos
.annotate 'line', 121
  # rx subrule "before" subtype=zerowidth negate=
    rx1236_cur."!cursor_pos"(rx1236_pos)
    .const 'Sub' $P1242 = "101_1309859073.622" 
    capture_lex $P1242
    $P10 = rx1236_cur."before"($P1242)
    unless $P10, rx1236_fail
  alt1238_end:
.annotate 'line', 118
  # rx pass
    rx1236_cur."!cursor_pass"(rx1236_pos, "charname")
    if_null rx1236_debug, debug_445
    rx1236_cur."!cursor_debug"("PASS", "charname", " at pos=", rx1236_pos)
  debug_445:
    .return (rx1236_cur)
  rx1236_restart:
.annotate 'line', 7
    if_null rx1236_debug, debug_446
    rx1236_cur."!cursor_debug"("NEXT", "charname")
  debug_446:
  rx1236_fail:
    (rx1236_rep, rx1236_pos, $I10, $P10) = rx1236_cur."!mark_fail"(0)
    lt rx1236_pos, -1, rx1236_done
    eq rx1236_pos, -1, rx1236_fail
    jump $I10
  rx1236_done:
    rx1236_cur."!cursor_fail"()
    if_null rx1236_debug, debug_447
    rx1236_cur."!cursor_debug"("FAIL", "charname")
  debug_447:
    .return (rx1236_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block1241"  :anon :subid("101_1309859073.622") :method :outer("100_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 121
    .local string rx1243_tgt
    .local int rx1243_pos
    .local int rx1243_off
    .local int rx1243_eos
    .local int rx1243_rep
    .local pmc rx1243_cur
    .local pmc rx1243_debug
    (rx1243_cur, rx1243_pos, rx1243_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1243_cur
    .local pmc match
    .lex "$/", match
    length rx1243_eos, rx1243_tgt
    gt rx1243_pos, rx1243_eos, rx1243_done
    set rx1243_off, 0
    lt rx1243_pos, 2, rx1243_start
    sub rx1243_off, rx1243_pos, 1
    substr rx1243_tgt, rx1243_tgt, rx1243_off
  rx1243_start:
    eq $I10, 1, rx1243_restart
    if_null rx1243_debug, debug_441
    rx1243_cur."!cursor_debug"("START", "")
  debug_441:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1244_done
    goto rxscan1244_scan
  rxscan1244_loop:
    (rx1243_pos) = rx1243_cur."from"()
    inc rx1243_pos
    rx1243_cur."!cursor_from"(rx1243_pos)
    ge rx1243_pos, rx1243_eos, rxscan1244_done
  rxscan1244_scan:
    set_addr $I10, rxscan1244_loop
    rx1243_cur."!mark_push"(0, rx1243_pos, $I10)
  rxscan1244_done:
  # rx charclass_q s r 0..-1
    sub $I10, rx1243_pos, rx1243_off
    find_not_cclass $I11, .CCLASS_WHITESPACE, rx1243_tgt, $I10, rx1243_eos
    add rx1243_pos, rx1243_off, $I11
  # rx enumcharlist negate=0 
    ge rx1243_pos, rx1243_eos, rx1243_fail
    sub $I10, rx1243_pos, rx1243_off
    substr $S10, rx1243_tgt, $I10, 1
    index $I11, "],#", $S10
    lt $I11, 0, rx1243_fail
    inc rx1243_pos
  # rx pass
    rx1243_cur."!cursor_pass"(rx1243_pos, "")
    if_null rx1243_debug, debug_442
    rx1243_cur."!cursor_debug"("PASS", "", " at pos=", rx1243_pos)
  debug_442:
    .return (rx1243_cur)
  rx1243_restart:
    if_null rx1243_debug, debug_443
    rx1243_cur."!cursor_debug"("NEXT", "")
  debug_443:
  rx1243_fail:
    (rx1243_rep, rx1243_pos, $I10, $P10) = rx1243_cur."!mark_fail"(0)
    lt rx1243_pos, -1, rx1243_done
    eq rx1243_pos, -1, rx1243_fail
    jump $I10
  rx1243_done:
    rx1243_cur."!cursor_fail"()
    if_null rx1243_debug, debug_444
    rx1243_cur."!cursor_debug"("FAIL", "")
  debug_444:
    .return (rx1243_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charname"  :subid("102_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    $P105 = self."!PREFIX__!subrule"("integer", "")
    new $P106, "ResizablePMCArray"
    push $P106, "Z"
    push $P106, "Y"
    push $P106, "X"
    push $P106, "W"
    push $P106, "V"
    push $P106, "U"
    push $P106, "T"
    push $P106, "S"
    push $P106, "R"
    push $P106, "Q"
    push $P106, "P"
    push $P106, "O"
    push $P106, "N"
    push $P106, "M"
    push $P106, "L"
    push $P106, "K"
    push $P106, "J"
    push $P106, "I"
    push $P106, "H"
    push $P106, "G"
    push $P106, "F"
    push $P106, "E"
    push $P106, "D"
    push $P106, "C"
    push $P106, "B"
    push $P106, "A"
    push $P106, "z"
    push $P106, "y"
    push $P106, "x"
    push $P106, "w"
    push $P106, "v"
    push $P106, "u"
    push $P106, "t"
    push $P106, "s"
    push $P106, "r"
    push $P106, "q"
    push $P106, "p"
    push $P106, "o"
    push $P106, "n"
    push $P106, "m"
    push $P106, "l"
    push $P106, "k"
    push $P106, "j"
    push $P106, "i"
    push $P106, "h"
    push $P106, "g"
    push $P106, "f"
    push $P106, "e"
    push $P106, "d"
    push $P106, "c"
    push $P106, "b"
    push $P106, "a"
    push $P106, $P105
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "charnames"  :subid("103_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1247_tgt
    .local int rx1247_pos
    .local int rx1247_off
    .local int rx1247_eos
    .local int rx1247_rep
    .local pmc rx1247_cur
    .local pmc rx1247_debug
    (rx1247_cur, rx1247_pos, rx1247_tgt, $I10) = self."!cursor_start"()
    rx1247_cur."!cursor_caparray"("charname")
    .lex unicode:"$\x{a2}", rx1247_cur
    .local pmc match
    .lex "$/", match
    length rx1247_eos, rx1247_tgt
    gt rx1247_pos, rx1247_eos, rx1247_done
    set rx1247_off, 0
    lt rx1247_pos, 2, rx1247_start
    sub rx1247_off, rx1247_pos, 1
    substr rx1247_tgt, rx1247_tgt, rx1247_off
  rx1247_start:
    eq $I10, 1, rx1247_restart
    if_null rx1247_debug, debug_448
    rx1247_cur."!cursor_debug"("START", "charnames")
  debug_448:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1248_done
    goto rxscan1248_scan
  rxscan1248_loop:
    (rx1247_pos) = rx1247_cur."from"()
    inc rx1247_pos
    rx1247_cur."!cursor_from"(rx1247_pos)
    ge rx1247_pos, rx1247_eos, rxscan1248_done
  rxscan1248_scan:
    set_addr $I10, rxscan1248_loop
    rx1247_cur."!mark_push"(0, rx1247_pos, $I10)
  rxscan1248_done:
.annotate 'line', 123
  # rx rxquantr1249 ** 1..*
    set_addr $I10, rxquantr1249_done
    rx1247_cur."!mark_push"(0, -1, $I10)
  rxquantr1249_loop:
  # rx subrule "ws" subtype=method negate=
    rx1247_cur."!cursor_pos"(rx1247_pos)
    $P10 = rx1247_cur."ws"()
    unless $P10, rx1247_fail
    rx1247_pos = $P10."pos"()
  # rx subrule "charname" subtype=capture negate=
    rx1247_cur."!cursor_pos"(rx1247_pos)
    $P10 = rx1247_cur."charname"()
    unless $P10, rx1247_fail
    rx1247_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charname")
    rx1247_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx1247_cur."!cursor_pos"(rx1247_pos)
    $P10 = rx1247_cur."ws"()
    unless $P10, rx1247_fail
    rx1247_pos = $P10."pos"()
    set_addr $I10, rxquantr1249_done
    (rx1247_rep) = rx1247_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr1249_done
    rx1247_cur."!mark_push"(rx1247_rep, rx1247_pos, $I10)
  # rx literal  ","
    add $I11, rx1247_pos, 1
    gt $I11, rx1247_eos, rx1247_fail
    sub $I11, rx1247_pos, rx1247_off
    ord $I11, rx1247_tgt, $I11
    ne $I11, 44, rx1247_fail
    add rx1247_pos, 1
    goto rxquantr1249_loop
  rxquantr1249_done:
  # rx pass
    rx1247_cur."!cursor_pass"(rx1247_pos, "charnames")
    if_null rx1247_debug, debug_449
    rx1247_cur."!cursor_debug"("PASS", "charnames", " at pos=", rx1247_pos)
  debug_449:
    .return (rx1247_cur)
  rx1247_restart:
.annotate 'line', 7
    if_null rx1247_debug, debug_450
    rx1247_cur."!cursor_debug"("NEXT", "charnames")
  debug_450:
  rx1247_fail:
    (rx1247_rep, rx1247_pos, $I10, $P10) = rx1247_cur."!mark_fail"(0)
    lt rx1247_pos, -1, rx1247_done
    eq rx1247_pos, -1, rx1247_fail
    jump $I10
  rx1247_done:
    rx1247_cur."!cursor_fail"()
    if_null rx1247_debug, debug_451
    rx1247_cur."!cursor_debug"("FAIL", "charnames")
  debug_451:
    .return (rx1247_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charnames"  :subid("104_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    new $P105, "ResizablePMCArray"
    push $P105, ""
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "charspec"  :subid("105_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1252_tgt
    .local int rx1252_pos
    .local int rx1252_off
    .local int rx1252_eos
    .local int rx1252_rep
    .local pmc rx1252_cur
    .local pmc rx1252_debug
    (rx1252_cur, rx1252_pos, rx1252_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1252_cur
    .local pmc match
    .lex "$/", match
    length rx1252_eos, rx1252_tgt
    gt rx1252_pos, rx1252_eos, rx1252_done
    set rx1252_off, 0
    lt rx1252_pos, 2, rx1252_start
    sub rx1252_off, rx1252_pos, 1
    substr rx1252_tgt, rx1252_tgt, rx1252_off
  rx1252_start:
    eq $I10, 1, rx1252_restart
    if_null rx1252_debug, debug_452
    rx1252_cur."!cursor_debug"("START", "charspec")
  debug_452:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1253_done
    goto rxscan1253_scan
  rxscan1253_loop:
    (rx1252_pos) = rx1252_cur."from"()
    inc rx1252_pos
    rx1252_cur."!cursor_from"(rx1252_pos)
    ge rx1252_pos, rx1252_eos, rxscan1253_done
  rxscan1253_scan:
    set_addr $I10, rxscan1253_loop
    rx1252_cur."!mark_push"(0, rx1252_pos, $I10)
  rxscan1253_done:
  alt1254_0:
.annotate 'line', 125
    set_addr $I10, alt1254_1
    rx1252_cur."!mark_push"(0, rx1252_pos, $I10)
.annotate 'line', 126
  # rx literal  "["
    add $I11, rx1252_pos, 1
    gt $I11, rx1252_eos, rx1252_fail
    sub $I11, rx1252_pos, rx1252_off
    ord $I11, rx1252_tgt, $I11
    ne $I11, 91, rx1252_fail
    add rx1252_pos, 1
  # rx subrule "charnames" subtype=capture negate=
    rx1252_cur."!cursor_pos"(rx1252_pos)
    $P10 = rx1252_cur."charnames"()
    unless $P10, rx1252_fail
    rx1252_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charnames")
    rx1252_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx1252_pos, 1
    gt $I11, rx1252_eos, rx1252_fail
    sub $I11, rx1252_pos, rx1252_off
    ord $I11, rx1252_tgt, $I11
    ne $I11, 93, rx1252_fail
    add rx1252_pos, 1
    goto alt1254_end
  alt1254_1:
    set_addr $I10, alt1254_2
    rx1252_cur."!mark_push"(0, rx1252_pos, $I10)
.annotate 'line', 127
  # rx charclass_q d r 1..-1
    sub $I10, rx1252_pos, rx1252_off
    find_not_cclass $I11, .CCLASS_NUMERIC, rx1252_tgt, $I10, rx1252_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx1252_fail
    add rx1252_pos, rx1252_off, $I11
  # rx rxquantr1255 ** 0..*
    set_addr $I10, rxquantr1255_done
    rx1252_cur."!mark_push"(0, rx1252_pos, $I10)
  rxquantr1255_loop:
  # rx literal  "_"
    add $I11, rx1252_pos, 1
    gt $I11, rx1252_eos, rx1252_fail
    sub $I11, rx1252_pos, rx1252_off
    ord $I11, rx1252_tgt, $I11
    ne $I11, 95, rx1252_fail
    add rx1252_pos, 1
  # rx charclass_q d r 1..-1
    sub $I10, rx1252_pos, rx1252_off
    find_not_cclass $I11, .CCLASS_NUMERIC, rx1252_tgt, $I10, rx1252_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx1252_fail
    add rx1252_pos, rx1252_off, $I11
    set_addr $I10, rxquantr1255_done
    (rx1252_rep) = rx1252_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr1255_done
    rx1252_cur."!mark_push"(rx1252_rep, rx1252_pos, $I10)
    goto rxquantr1255_loop
  rxquantr1255_done:
    goto alt1254_end
  alt1254_2:
    set_addr $I10, alt1254_3
    rx1252_cur."!mark_push"(0, rx1252_pos, $I10)
.annotate 'line', 128
  # rx enumcharlist negate=0 
    ge rx1252_pos, rx1252_eos, rx1252_fail
    sub $I10, rx1252_pos, rx1252_off
    substr $S10, rx1252_tgt, $I10, 1
    index $I11, "?@ABCDEFGHIJKLMNOPQRSTUVWXYZ", $S10
    lt $I11, 0, rx1252_fail
    inc rx1252_pos
    goto alt1254_end
  alt1254_3:
.annotate 'line', 129
  # rx subrule "panic" subtype=method negate=
    rx1252_cur."!cursor_pos"(rx1252_pos)
    $P10 = rx1252_cur."panic"("Unrecognized \\c character")
    unless $P10, rx1252_fail
    rx1252_pos = $P10."pos"()
  alt1254_end:
.annotate 'line', 124
  # rx pass
    rx1252_cur."!cursor_pass"(rx1252_pos, "charspec")
    if_null rx1252_debug, debug_453
    rx1252_cur."!cursor_debug"("PASS", "charspec", " at pos=", rx1252_pos)
  debug_453:
    .return (rx1252_cur)
  rx1252_restart:
.annotate 'line', 7
    if_null rx1252_debug, debug_454
    rx1252_cur."!cursor_debug"("NEXT", "charspec")
  debug_454:
  rx1252_fail:
    (rx1252_rep, rx1252_pos, $I10, $P10) = rx1252_cur."!mark_fail"(0)
    lt rx1252_pos, -1, rx1252_done
    eq rx1252_pos, -1, rx1252_fail
    jump $I10
  rx1252_done:
    rx1252_cur."!cursor_fail"()
    if_null rx1252_debug, debug_455
    rx1252_cur."!cursor_debug"("FAIL", "charspec")
  debug_455:
    .return (rx1252_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charspec"  :subid("106_1309859073.622") :method :outer("13_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    $P105 = self."!PREFIX__!subrule"("panic", "")
    $P106 = self."!PREFIX__!subrule"("charnames", "[")
    new $P107, "ResizablePMCArray"
    push $P107, $P105
    push $P107, "?"
    push $P107, "@"
    push $P107, "A"
    push $P107, "B"
    push $P107, "C"
    push $P107, "D"
    push $P107, "E"
    push $P107, "F"
    push $P107, "G"
    push $P107, "H"
    push $P107, "I"
    push $P107, "J"
    push $P107, "K"
    push $P107, "L"
    push $P107, "M"
    push $P107, "N"
    push $P107, "O"
    push $P107, "P"
    push $P107, "Q"
    push $P107, "R"
    push $P107, "S"
    push $P107, "T"
    push $P107, "U"
    push $P107, "V"
    push $P107, "W"
    push $P107, "X"
    push $P107, "Y"
    push $P107, "Z"
    push $P107, ""
    push $P107, $P106
    .return ($P107)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "O" :anon :subid("107_1309859073.622") :outer("13_1309859073.622")
    .param pmc param_1258
    .param pmc param_1259
    .param pmc param_1260 :optional
    .param int has_param_1260 :opt_flag
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 175
    .lex "self", param_1258
    .lex "$spec", param_1259
    if has_param_1260, optparam_456
    new $P105, "Undef"
    set param_1260, $P105
  optparam_456:
    .lex "$save", param_1260
.annotate 'line', 176

            .local pmc self, cur_class
            .local string spec, save
            .local int has_save
            self = find_lex 'self'
            cur_class = find_lex '$cursor_class'
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
        
.annotate 'line', 175
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "panic" :anon :subid("108_1309859073.622") :outer("13_1309859073.622")
    .param pmc param_1262
    .param pmc param_1263 :slurpy
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 321
    .lex "self", param_1262
    .lex "@args", param_1263
.annotate 'line', 322
    new $P105, "Undef"
    set $P1264, $P105
    .lex "$pos", $P1264
.annotate 'line', 323
    new $P106, "Undef"
    set $P1265, $P106
    .lex "$target", $P1265
.annotate 'line', 322
    find_lex $P107, "self"
    $P108 = $P107."pos"()
    store_lex "$pos", $P108
.annotate 'line', 323
    find_lex $P107, "self"
    get_hll_global $P108, "GLOBAL"
    nqp_get_package_through_who $P109, $P108, "Regex"
    get_who $P110, $P109
    set $P111, $P110["Cursor"]
    getattribute $P112, $P107, $P111, "$!target"
    store_lex "$target", $P112
.annotate 'line', 324
    find_lex $P1266, "@args"
    unless_null $P1266, vivify_457
    $P1266 = root_new ['parrot';'ResizablePMCArray']
  vivify_457:
    $P1266."push"(" at line ")
.annotate 'line', 325
    find_lex $P1267, "@args"
    unless_null $P1267, vivify_458
    $P1267 = root_new ['parrot';'ResizablePMCArray']
  vivify_458:
    get_hll_global $P107, "GLOBAL"
    nqp_get_package_through_who $P108, $P107, "HLL"
    get_who $P109, $P108
    set $P110, $P109["Compiler"]
    find_lex $P111, "$target"
    unless_null $P111, vivify_459
    new $P111, "Undef"
  vivify_459:
    find_lex $P112, "$pos"
    unless_null $P112, vivify_460
    new $P112, "Undef"
  vivify_460:
    $P113 = $P110."lineof"($P111, $P112)
    add $P114, $P113, 1
    $P1267."push"($P114)
.annotate 'line', 326
    find_lex $P1268, "@args"
    unless_null $P1268, vivify_461
    $P1268 = root_new ['parrot';'ResizablePMCArray']
  vivify_461:
    $P1268."push"(", near \"")
.annotate 'line', 327
    find_lex $P1269, "@args"
    unless_null $P1269, vivify_462
    $P1269 = root_new ['parrot';'ResizablePMCArray']
  vivify_462:
    find_lex $P107, "$target"
    unless_null $P107, vivify_463
    new $P107, "Undef"
  vivify_463:
    set $S100, $P107
    find_lex $P108, "$pos"
    unless_null $P108, vivify_464
    new $P108, "Undef"
  vivify_464:
    set $I100, $P108
    substr $S101, $S100, $I100, 10
    escape $S102, $S101
    $P1269."push"($S102)
.annotate 'line', 328
    find_lex $P1270, "@args"
    unless_null $P1270, vivify_465
    $P1270 = root_new ['parrot';'ResizablePMCArray']
  vivify_465:
    $P1270."push"("\"")
.annotate 'line', 329
    find_lex $P1271, "@args"
    unless_null $P1271, vivify_466
    $P1271 = root_new ['parrot';'ResizablePMCArray']
  vivify_466:
    join $S100, "", $P1271
    die $S100
.annotate 'line', 321
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "peek_delimiters" :anon :subid("109_1309859073.622") :outer("13_1309859073.622")
    .param pmc param_1273
    .param pmc param_1274
    .param pmc param_1275
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 342
    .lex "self", param_1273
    .lex "$target", param_1274
    .lex "$pos", param_1275
.annotate 'line', 343

            .local pmc self
            self = find_lex 'self'
            .local string target
            $P0 = find_lex '$target'
            target = $P0
            .local int pos
            $P0 = find_lex '$pos'
            pos = $P0

            .local string brackets, start, stop
            $P0 = find_lex '$brackets'
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
        
.annotate 'line', 342
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_EXPR" :anon :subid("110_1309859073.622") :outer("13_1309859073.622")
    .param pmc param_1277
    .param pmc param_1278 :slurpy
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 404
    .lex "self", param_1277
    .lex "@args", param_1278
.annotate 'line', 405

            .include 'src/Regex/constants.pir'
            
            .local pmc self, cur_class, args
            self = find_lex 'self'
            cur_class = find_lex '$cursor_class'
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
        
.annotate 'line', 404
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quotemod_check"  :subid("111_1309859073.622") :outer("13_1309859073.622")
    .param pmc param_1280
    .param pmc param_1281
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 475
    .lex "self", param_1280
    .lex "$mod", param_1281
    find_lex $P105, "$mod"
    unless_null $P105, vivify_467
    new $P105, "Undef"
  vivify_467:
    find_dynamic_lex $P108, "%*QUOTEMOD"
    unless_null $P108, vivify_468
    get_hll_global $P106, "GLOBAL"
    get_who $P107, $P106
    set $P108, $P107["%QUOTEMOD"]
    unless_null $P108, vivify_469
    die "Contextual %*QUOTEMOD not found"
  vivify_469:
  vivify_468:
    set $P109, $P108[$P105]
    unless_null $P109, vivify_470
    new $P109, "Undef"
  vivify_470:
    .return ($P109)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "starter" :anon :subid("112_1309859073.622") :outer("13_1309859073.622")
    .param pmc param_1283
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 479
    .lex "self", param_1283
.annotate 'line', 480

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
        
.annotate 'line', 479
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "stopper" :anon :subid("113_1309859073.622") :outer("13_1309859073.622")
    .param pmc param_1285
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 502
    .lex "self", param_1285
.annotate 'line', 503

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
        
.annotate 'line', 502
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "split_words"  :subid("114_1309859073.622") :outer("13_1309859073.622")
    .param pmc param_1287
    .param pmc param_1288
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 525
    .lex "self", param_1287
    .lex "$words", param_1288
.annotate 'line', 526

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
        
.annotate 'line', 525
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "EXPR" :anon :subid("115_1309859073.622") :outer("13_1309859073.622")
    .param pmc param_1290
    .param pmc param_1291 :optional
    .param int has_param_1291 :opt_flag
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 557
    .lex "self", param_1290
    if has_param_1291, optparam_471
    new $P105, "String"
    assign $P105, ""
    set param_1291, $P105
  optparam_471:
    .lex "$preclim", param_1291
.annotate 'line', 558

            .local pmc self, cur_class
            self = find_lex 'self'
            cur_class = find_lex '$cursor_class'

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
            self.'EXPR_reduce'(termstack, opstack)
            goto reduce_loop
          reduce_gt_done:

            unless opprec == inprec goto reduce_done
            # equal precedence, use associativity to decide
            unless inassoc == 'left' goto reduce_done
            # left associative, reduce immediately
            self.'EXPR_reduce'(termstack, opstack)
          reduce_done:

            push opstack, infix        # The Shift
            here = infixcur.'ws'()
            goto term_loop
          term_done:

          opstack_loop:
            unless opstack goto opstack_done
            self.'EXPR_reduce'(termstack, opstack)
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
        
.annotate 'line', 557
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "EXPR_reduce" :anon :subid("116_1309859073.622") :outer("13_1309859073.622")
    .param pmc param_1293
    .param pmc param_1294
    .param pmc param_1295
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 731
    .lex "self", param_1293
    .lex "$termstack", param_1294
    .lex "$opstack", param_1295
.annotate 'line', 732

            .local pmc self, termstack, opstack
            self = find_lex 'self'
            termstack = find_lex '$termstack'
            opstack = find_lex '$opstack'

            .local pmc op, opOPER, opO
            .local string opassoc
            op = pop opstack
            opOPER = op['OPER']
            opO = opOPER['O']
            $P0 = opO['assoc']
            opassoc = $P0
            if opassoc == 'unary' goto op_unary
            if opassoc == 'list' goto op_list
          op_infix:
            .local pmc right, left
            right = pop termstack
            left = pop termstack
            op[0] = left
            op[1] = right
            $P0 = opO['reducecheck']
            if null $P0 goto op_infix_1
            $S0 = $P0
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
            sym = ''
            $P0 = opOPER['sym']
            if null $P0 goto op_list_1
            sym = $P0
          op_list_1:
            arg = pop termstack
            unshift op, arg
          op_sym_loop:
            unless opstack goto op_sym_done
            $S0 = ''
            $P0 = opstack[-1]
            $P0 = $P0['OPER']
            $P0 = $P0['sym']
            if null $P0 goto op_sym_1
            $S0 = $P0
          op_sym_1:
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
        
.annotate 'line', 731
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "ternary" :anon :subid("117_1309859073.622") :outer("13_1309859073.622")
    .param pmc param_1297
    .param pmc param_1298
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 809
    .lex "self", param_1297
    .lex "$match", param_1298
.annotate 'line', 810
    find_lex $P1299, "$match"
    unless_null $P1299, vivify_472
    $P1299 = root_new ['parrot';'ResizablePMCArray']
  vivify_472:
    set $P105, $P1299[1]
    unless_null $P105, vivify_473
    new $P105, "Undef"
  vivify_473:
    find_lex $P1300, "$match"
    unless_null $P1300, vivify_474
    $P1300 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$match", $P1300
  vivify_474:
    set $P1300[2], $P105
.annotate 'line', 811
    find_lex $P1301, "$match"
    unless_null $P1301, vivify_475
    $P1301 = root_new ['parrot';'Hash']
  vivify_475:
    set $P1302, $P1301["infix"]
    unless_null $P1302, vivify_476
    $P1302 = root_new ['parrot';'Hash']
  vivify_476:
    set $P105, $P1302["EXPR"]
    unless_null $P105, vivify_477
    new $P105, "Undef"
  vivify_477:
    find_lex $P1303, "$match"
    unless_null $P1303, vivify_478
    $P1303 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$match", $P1303
  vivify_478:
    set $P1303[1], $P105
.annotate 'line', 809
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "MARKER" :anon :subid("118_1309859073.622") :outer("13_1309859073.622")
    .param pmc param_1305
    .param pmc param_1306
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 814
    .lex "self", param_1305
    .lex "$markname", param_1306
.annotate 'line', 815
    new $P105, "Undef"
    set $P1307, $P105
    .lex "$pos", $P1307
.annotate 'line', 817
    $P1309 = root_new ['parrot';'Hash']
    set $P1308, $P1309
    .lex "%markhash", $P1308
.annotate 'line', 815
    find_lex $P106, "self"
    $P107 = $P106."pos"()
    store_lex "$pos", $P107
.annotate 'line', 816
    find_lex $P106, "self"
    find_lex $P107, "$markname"
    unless_null $P107, vivify_479
    new $P107, "Undef"
  vivify_479:
    find_lex $P108, "$pos"
    unless_null $P108, vivify_480
    new $P108, "Undef"
  vivify_480:
    $P106."!cursor_debug"("START", "MARKER name=", $P107, ", pos=", $P108)
.annotate 'line', 817

            $P1310 = get_global '%!MARKHASH'
            unless null $P1310 goto have_markhash
            $P1310 = new ['Hash']
            set_global '%!MARKHASH', $P1310
          have_markhash:
        
    store_lex "%markhash", $P1310
.annotate 'line', 824
    find_lex $P106, "$pos"
    unless_null $P106, vivify_481
    new $P106, "Undef"
  vivify_481:
    find_lex $P107, "$markname"
    unless_null $P107, vivify_482
    new $P107, "Undef"
  vivify_482:
    find_lex $P1311, "%markhash"
    unless_null $P1311, vivify_483
    $P1311 = root_new ['parrot';'Hash']
    store_lex "%markhash", $P1311
  vivify_483:
    set $P1311[$P107], $P106
.annotate 'line', 825
    find_lex $P106, "self"
    $P106."!cursor_debug"("PASS", "MARKER")
.annotate 'line', 814
    .return (1)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "MARKED" :anon :subid("119_1309859073.622") :outer("13_1309859073.622")
    .param pmc param_1313
    .param pmc param_1314
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 829
    .lex "self", param_1313
    .lex "$markname", param_1314
.annotate 'line', 830
    find_lex $P105, "self"
    find_lex $P106, "$markname"
    unless_null $P106, vivify_484
    new $P106, "Undef"
  vivify_484:
    $P105."!cursor_debug"("START", "MARKED name=", $P106)
.annotate 'line', 831

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
        
.annotate 'line', 829
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "LANG" :anon :subid("120_1309859073.622") :outer("13_1309859073.622")
    .param pmc param_1316
    .param pmc param_1317
    .param pmc param_1318
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 849
    .lex "self", param_1316
    .lex "$lang", param_1317
    .lex "$regex", param_1318
.annotate 'line', 850
    new $P105, "Undef"
    set $P1319, $P105
    .lex "$lang_cursor", $P1319
.annotate 'line', 851
    new $P106, "Undef"
    set $P1320, $P106
    .lex "$*ACTIONS", $P1320
.annotate 'line', 852
    new $P107, "Undef"
    set $P1321, $P107
    .lex "$cur", $P1321
.annotate 'line', 850
    find_lex $P108, "$lang"
    unless_null $P108, vivify_485
    new $P108, "Undef"
  vivify_485:
    find_dynamic_lex $P111, "%*LANG"
    unless_null $P111, vivify_486
    get_hll_global $P109, "GLOBAL"
    get_who $P110, $P109
    set $P111, $P110["%LANG"]
    unless_null $P111, vivify_487
    die "Contextual %*LANG not found"
  vivify_487:
  vivify_486:
    set $P112, $P111[$P108]
    unless_null $P112, vivify_488
    new $P112, "Undef"
  vivify_488:
    store_lex "$lang_cursor", $P112
.annotate 'line', 851
    find_lex $P108, "$lang"
    unless_null $P108, vivify_489
    new $P108, "Undef"
  vivify_489:
    concat $P109, $P108, "-actions"
    find_dynamic_lex $P112, "%*LANG"
    unless_null $P112, vivify_490
    get_hll_global $P110, "GLOBAL"
    get_who $P111, $P110
    set $P112, $P111["%LANG"]
    unless_null $P112, vivify_491
    die "Contextual %*LANG not found"
  vivify_491:
  vivify_490:
    set $P113, $P112[$P109]
    unless_null $P113, vivify_492
    new $P113, "Undef"
  vivify_492:
    store_lex "$*ACTIONS", $P113
.annotate 'line', 852

            .local pmc self
            .local int pos
            self = find_lex 'self'
            $P0 = find_lex '$lang_cursor'
            ($P1322, pos) = self.'!cursor_start'($P0)
            $P1322.'!cursor_pos'(pos)
        
    store_lex "$cur", $P1322
.annotate 'line', 860
    find_lex $P108, "$cur"
    unless_null $P108, vivify_493
    new $P108, "Undef"
  vivify_493:
    find_lex $P109, "$regex"
    unless_null $P109, vivify_494
    new $P109, "Undef"
  vivify_494:
    set $S100, $P109
    $P110 = $P108.$S100()
.annotate 'line', 849
    .return ($P110)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1324"  :subid("121_1309859073.622") :outer("10_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 865
    .const 'Sub' $P1574 = "166_1309859073.622" 
    capture_lex $P1574
    .const 'Sub' $P1565 = "164_1309859073.622" 
    capture_lex $P1565
    .const 'Sub' $P1557 = "163_1309859073.622" 
    capture_lex $P1557
    .const 'Sub' $P1550 = "162_1309859073.622" 
    capture_lex $P1550
    .const 'Sub' $P1547 = "161_1309859073.622" 
    capture_lex $P1547
    .const 'Sub' $P1543 = "160_1309859073.622" 
    capture_lex $P1543
    .const 'Sub' $P1535 = "159_1309859073.622" 
    capture_lex $P1535
    .const 'Sub' $P1527 = "158_1309859073.622" 
    capture_lex $P1527
    .const 'Sub' $P1524 = "157_1309859073.622" 
    capture_lex $P1524
    .const 'Sub' $P1521 = "156_1309859073.622" 
    capture_lex $P1521
    .const 'Sub' $P1518 = "155_1309859073.622" 
    capture_lex $P1518
    .const 'Sub' $P1515 = "154_1309859073.622" 
    capture_lex $P1515
    .const 'Sub' $P1512 = "153_1309859073.622" 
    capture_lex $P1512
    .const 'Sub' $P1509 = "152_1309859073.622" 
    capture_lex $P1509
    .const 'Sub' $P1505 = "151_1309859073.622" 
    capture_lex $P1505
    .const 'Sub' $P1502 = "150_1309859073.622" 
    capture_lex $P1502
    .const 'Sub' $P1496 = "149_1309859073.622" 
    capture_lex $P1496
    .const 'Sub' $P1469 = "147_1309859073.622" 
    capture_lex $P1469
    .const 'Sub' $P1449 = "144_1309859073.622" 
    capture_lex $P1449
    .const 'Sub' $P1446 = "143_1309859073.622" 
    capture_lex $P1446
    .const 'Sub' $P1443 = "142_1309859073.622" 
    capture_lex $P1443
    .const 'Sub' $P1440 = "141_1309859073.622" 
    capture_lex $P1440
    .const 'Sub' $P1437 = "140_1309859073.622" 
    capture_lex $P1437
    .const 'Sub' $P1434 = "139_1309859073.622" 
    capture_lex $P1434
    .const 'Sub' $P1430 = "138_1309859073.622" 
    capture_lex $P1430
    .const 'Sub' $P1426 = "137_1309859073.622" 
    capture_lex $P1426
    .const 'Sub' $P1423 = "136_1309859073.622" 
    capture_lex $P1423
    .const 'Sub' $P1419 = "135_1309859073.622" 
    capture_lex $P1419
    .const 'Sub' $P1415 = "134_1309859073.622" 
    capture_lex $P1415
    .const 'Sub' $P1374 = "131_1309859073.622" 
    capture_lex $P1374
    .const 'Sub' $P1358 = "128_1309859073.622" 
    capture_lex $P1358
    .const 'Sub' $P1356 = "127_1309859073.622" 
    capture_lex $P1356
    .const 'Sub' $P1343 = "124_1309859073.622" 
    capture_lex $P1343
    .const 'Sub' $P1327 = "122_1309859073.622" 
    capture_lex $P1327
.annotate 'line', 866
    .const 'Sub' $P1327 = "122_1309859073.622" 
    newclosure $P1341, $P1327
    set $P1326, $P1341
    .lex "string_to_int", $P1326
.annotate 'line', 865
    find_lex $P107, "string_to_int"
    find_lex $P108, "$?PACKAGE"
    get_who $P109, $P108
    set $P109["string_to_int"], $P107
.annotate 'line', 888
    .const 'Sub' $P1343 = "124_1309859073.622" 
    newclosure $P1353, $P1343
    set $P1342, $P1353
    .lex "ints_to_string", $P1342
.annotate 'line', 865
    find_lex $P111, "ints_to_string"
    find_lex $P112, "$?PACKAGE"
    get_who $P113, $P112
    set $P113["ints_to_string"], $P111
    .lex "$?PACKAGE", $P1354
    .lex "$?CLASS", $P1355
    find_lex $P114, "string_to_int"
    find_lex $P114, "ints_to_string"
.annotate 'line', 1059
    .const 'Sub' $P1574 = "166_1309859073.622" 
    newclosure $P1580, $P1574
.annotate 'line', 865
    .return ($P1580)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "string_to_int"  :subid("122_1309859073.622") :outer("121_1309859073.622")
    .param pmc param_1328
    .param pmc param_1329
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 866
    .const 'Sub' $P1334 = "123_1309859073.622" 
    capture_lex $P1334
    .lex "$src", param_1328
    .lex "$base", param_1329
.annotate 'line', 867
    new $P103, "Undef"
    set $P1330, $P103
    .lex "$len", $P1330
.annotate 'line', 868
    new $P104, "Undef"
    set $P1331, $P104
    .lex "$i", $P1331
.annotate 'line', 869
    new $P105, "Undef"
    set $P1332, $P105
    .lex "$result", $P1332
.annotate 'line', 867
    find_lex $P106, "$src"
    unless_null $P106, vivify_495
    new $P106, "Undef"
  vivify_495:
    set $S100, $P106
    length $I100, $S100
    new $P107, 'Integer'
    set $P107, $I100
    store_lex "$len", $P107
.annotate 'line', 868
    new $P106, "Integer"
    assign $P106, 0
    store_lex "$i", $P106
.annotate 'line', 869
    new $P106, "Integer"
    assign $P106, 0
    store_lex "$result", $P106
.annotate 'line', 871
    new $P110, 'ExceptionHandler'
    set_label $P110, loop1340_handler
    $P110."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P110
  loop1340_test:
    find_lex $P106, "$i"
    unless_null $P106, vivify_496
    new $P106, "Undef"
  vivify_496:
    set $N100, $P106
    find_lex $P107, "$len"
    unless_null $P107, vivify_497
    new $P107, "Undef"
  vivify_497:
    set $N101, $P107
    islt $I100, $N100, $N101
    unless $I100, loop1340_done
  loop1340_redo:
    .const 'Sub' $P1334 = "123_1309859073.622" 
    capture_lex $P1334
    $P1334()
  loop1340_next:
    goto loop1340_test
  loop1340_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P111, exception, 'type'
    eq $P111, .CONTROL_LOOP_NEXT, loop1340_next
    eq $P111, .CONTROL_LOOP_REDO, loop1340_redo
  loop1340_done:
    pop_eh 
.annotate 'line', 866
    find_lex $P106, "$result"
    unless_null $P106, vivify_513
    new $P106, "Undef"
  vivify_513:
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1333"  :anon :subid("123_1309859073.622") :outer("122_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 872
    new $P108, "Undef"
    set $P1335, $P108
    .lex "$char", $P1335
.annotate 'line', 877
    new $P109, "Undef"
    set $P1336, $P109
    .lex "$digitval", $P1336
.annotate 'line', 872
    find_lex $P110, "$src"
    unless_null $P110, vivify_498
    new $P110, "Undef"
  vivify_498:
    set $S100, $P110
    find_lex $P111, "$i"
    unless_null $P111, vivify_499
    new $P111, "Undef"
  vivify_499:
    set $I101, $P111
    substr $S101, $S100, $I101, 1
    new $P112, 'String'
    set $P112, $S101
    store_lex "$char", $P112
.annotate 'line', 873
    find_lex $P110, "$char"
    unless_null $P110, vivify_500
    new $P110, "Undef"
  vivify_500:
    set $S100, $P110
    iseq $I101, $S100, "_"
    unless $I101, if_1337_end
.annotate 'line', 874
    find_lex $P111, "$i"
    unless_null $P111, vivify_501
    new $P111, "Undef"
  vivify_501:
    add $P112, $P111, 1
    store_lex "$i", $P112
.annotate 'line', 875
    die 0, .CONTROL_LOOP_NEXT
  if_1337_end:
.annotate 'line', 877
    find_lex $P110, "$char"
    unless_null $P110, vivify_502
    new $P110, "Undef"
  vivify_502:
    set $S100, $P110
    index $I101, "00112233445566778899AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz", $S100
    new $P111, 'Integer'
    set $P111, $I101
    store_lex "$digitval", $P111
.annotate 'line', 878
    find_lex $P110, "$digitval"
    unless_null $P110, vivify_503
    new $P110, "Undef"
  vivify_503:
    div $P111, $P110, 2
    set $I101, $P111
    new $P112, 'Integer'
    set $P112, $I101
    store_lex "$digitval", $P112
.annotate 'line', 879
    find_lex $P111, "$digitval"
    unless_null $P111, vivify_504
    new $P111, "Undef"
  vivify_504:
    set $N102, $P111
    islt $I101, $N102, 0.0
    unless $I101, unless_1339
    new $P110, 'Integer'
    set $P110, $I101
    goto unless_1339_end
  unless_1339:
    find_lex $P112, "$digitval"
    unless_null $P112, vivify_505
    new $P112, "Undef"
  vivify_505:
    set $N103, $P112
    find_lex $P113, "$base"
    unless_null $P113, vivify_506
    new $P113, "Undef"
  vivify_506:
    set $N104, $P113
    isge $I102, $N103, $N104
    new $P110, 'Integer'
    set $P110, $I102
  unless_1339_end:
    unless $P110, if_1338_end
.annotate 'line', 880
    find_lex $P114, "$src"
    unless_null $P114, vivify_507
    new $P114, "Undef"
  vivify_507:
    $P115 = $P114."CURSOR"()
    new $P116, 'String'
    set $P116, "Invalid radix conversion of character '"
    find_lex $P117, "$char"
    unless_null $P117, vivify_508
    new $P117, "Undef"
  vivify_508:
    concat $P118, $P116, $P117
    concat $P119, $P118, "'"
    $P115."panic"($P119)
  if_1338_end:
.annotate 'line', 882
    find_lex $P110, "$base"
    unless_null $P110, vivify_509
    new $P110, "Undef"
  vivify_509:
    find_lex $P111, "$result"
    unless_null $P111, vivify_510
    new $P111, "Undef"
  vivify_510:
    mul $P112, $P110, $P111
    find_lex $P113, "$digitval"
    unless_null $P113, vivify_511
    new $P113, "Undef"
  vivify_511:
    add $P114, $P112, $P113
    store_lex "$result", $P114
.annotate 'line', 883
    find_lex $P115, "$i"
    unless_null $P115, vivify_512
    new $P115, "Undef"
  vivify_512:
    add $P116, $P115, 1
    store_lex "$i", $P116
    new $P117, "ResizablePMCArray"
    push $P117, $P114
    push $P117, $P116
.annotate 'line', 871
    .return ($P117)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "ints_to_string"  :subid("124_1309859073.622") :outer("121_1309859073.622")
    .param pmc param_1344
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 888
    .const 'Sub' $P1347 = "125_1309859073.622" 
    capture_lex $P1347
    .lex "$ints", param_1344
.annotate 'line', 889
    find_lex $P111, "$ints"
    unless_null $P111, vivify_514
    new $P111, "Undef"
  vivify_514:
    does $I100, $P111, "array"
    if $I100, if_1345
.annotate 'line', 896
    find_lex $P115, "$ints"
    unless_null $P115, vivify_515
    new $P115, "Undef"
  vivify_515:
    $I101 = $P115."ast"()
    chr $S100, $I101
    new $P116, 'String'
    set $P116, $S100
.annotate 'line', 895
    set $P110, $P116
.annotate 'line', 889
    goto if_1345_end
  if_1345:
    .const 'Sub' $P1347 = "125_1309859073.622" 
    capture_lex $P1347
    $P114 = $P1347()
    set $P110, $P114
  if_1345_end:
.annotate 'line', 888
    .return ($P110)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block1346"  :anon :subid("125_1309859073.622") :outer("124_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 889
    .const 'Sub' $P1350 = "126_1309859073.622" 
    capture_lex $P1350
.annotate 'line', 890
    new $P112, "Undef"
    set $P1348, $P112
    .lex "$result", $P1348
    new $P113, "String"
    assign $P113, ""
    store_lex "$result", $P113
.annotate 'line', 891
    find_lex $P114, "$ints"
    unless_null $P114, vivify_516
    new $P114, "Undef"
  vivify_516:
    defined $I101, $P114
    unless $I101, for_undef_517
    iter $P113, $P114
    new $P116, 'ExceptionHandler'
    set_label $P116, loop1352_handler
    $P116."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P116
  loop1352_test:
    unless $P113, loop1352_done
    shift $P115, $P113
  loop1352_redo:
    .const 'Sub' $P1350 = "126_1309859073.622" 
    capture_lex $P1350
    $P1350($P115)
  loop1352_next:
    goto loop1352_test
  loop1352_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P117, exception, 'type'
    eq $P117, .CONTROL_LOOP_NEXT, loop1352_next
    eq $P117, .CONTROL_LOOP_REDO, loop1352_redo
  loop1352_done:
    pop_eh 
  for_undef_517:
.annotate 'line', 889
    find_lex $P113, "$result"
    unless_null $P113, vivify_520
    new $P113, "Undef"
  vivify_520:
    .return ($P113)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1349"  :anon :subid("126_1309859073.622") :outer("125_1309859073.622")
    .param pmc param_1351
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 891
    .lex "$_", param_1351
.annotate 'line', 892
    find_lex $P116, "$result"
    unless_null $P116, vivify_518
    new $P116, "Undef"
  vivify_518:
    find_lex $P117, "$_"
    unless_null $P117, vivify_519
    new $P117, "Undef"
  vivify_519:
    $I102 = $P117."ast"()
    chr $S100, $I102
    concat $P118, $P116, $S100
    store_lex "$result", $P118
.annotate 'line', 891
    .return ($P118)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "CTXSAVE" :anon :subid("127_1309859073.622") :outer("121_1309859073.622")
    .param pmc param_1357
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 901
    .lex "self", param_1357
.annotate 'line', 902
    get_hll_global $P114, "GLOBAL"
    nqp_get_package_through_who $P115, $P114, "PAST"
    get_who $P116, $P115
    set $P117, $P116["Op"]
.annotate 'line', 908
    new $P118, "ResizablePMCArray"
    push $P118, "    $P0 = find_dynamic_lex \"$*CTXSAVE\""
    push $P118, "    if null $P0 goto ctxsave_done"
    push $P118, "    $I0 = can $P0, \"ctxsave\""
    push $P118, "    unless $I0 goto ctxsave_done"
    push $P118, "    $P0.\"ctxsave\"()"
    push $P118, "  ctxsave_done:"
.annotate 'line', 902
    $P119 = $P117."new"($P118 :named("inline"))
.annotate 'line', 901
    .return ($P119)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "SET_BLOCK_OUTER_CTX" :anon :subid("128_1309859073.622") :outer("121_1309859073.622")
    .param pmc param_1359
    .param pmc param_1360
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 915
    .const 'Sub' $P1365 = "129_1309859073.622" 
    capture_lex $P1365
    .lex "self", param_1359
    .lex "$block", param_1360
.annotate 'line', 916
    new $P114, "Undef"
    set $P1361, $P114
    .lex "$outer_ctx", $P1361
    find_dynamic_lex $P117, "%*COMPILING"
    unless_null $P117, vivify_521
    get_hll_global $P115, "GLOBAL"
    get_who $P116, $P115
    set $P117, $P116["%COMPILING"]
    unless_null $P117, vivify_522
    die "Contextual %*COMPILING not found"
  vivify_522:
  vivify_521:
    set $P1362, $P117["%?OPTIONS"]
    unless_null $P1362, vivify_523
    $P1362 = root_new ['parrot';'Hash']
  vivify_523:
    set $P118, $P1362["outer_ctx"]
    unless_null $P118, vivify_524
    new $P118, "Undef"
  vivify_524:
    store_lex "$outer_ctx", $P118
.annotate 'line', 917
    find_lex $P116, "$outer_ctx"
    unless_null $P116, vivify_525
    new $P116, "Undef"
  vivify_525:
    defined $I100, $P116
    if $I100, if_1363
    new $P115, 'Integer'
    set $P115, $I100
    goto if_1363_end
  if_1363:
    .const 'Sub' $P1365 = "129_1309859073.622" 
    capture_lex $P1365
    $P118 = $P1365()
    set $P115, $P118
  if_1363_end:
.annotate 'line', 915
    .return ($P115)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block1364"  :anon :subid("129_1309859073.622") :outer("128_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 917
    .const 'Sub' $P1371 = "130_1309859073.622" 
    capture_lex $P1371
.annotate 'line', 918
    $P1367 = root_new ['parrot';'ResizablePMCArray']
    set $P1366, $P1367
    .lex "@ns", $P1366
    find_lex $P117, "$outer_ctx"
    unless_null $P117, vivify_526
    new $P117, "Undef"
  vivify_526:
    getattribute $P118, $P117, "current_namespace"
    $P119 = $P118."get_name"()
    store_lex "@ns", $P119
.annotate 'line', 919
    find_lex $P1368, "@ns"
    unless_null $P1368, vivify_527
    $P1368 = root_new ['parrot';'ResizablePMCArray']
  vivify_527:
    $P1368."shift"()
.annotate 'line', 920
    find_lex $P117, "$block"
    unless_null $P117, vivify_528
    new $P117, "Undef"
  vivify_528:
    find_lex $P1369, "@ns"
    unless_null $P1369, vivify_529
    $P1369 = root_new ['parrot';'ResizablePMCArray']
  vivify_529:
    $P117."namespace"($P1369)
.annotate 'line', 921
    find_lex $P118, "$outer_ctx"
    unless_null $P118, vivify_530
    new $P118, "Undef"
  vivify_530:
    $P119 = $P118."lexpad_full"()
    defined $I101, $P119
    unless $I101, for_undef_531
    iter $P117, $P119
    new $P121, 'ExceptionHandler'
    set_label $P121, loop1373_handler
    $P121."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P121
  loop1373_test:
    unless $P117, loop1373_done
    shift $P120, $P117
  loop1373_redo:
    .const 'Sub' $P1371 = "130_1309859073.622" 
    capture_lex $P1371
    $P1371($P120)
  loop1373_next:
    goto loop1373_test
  loop1373_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P122, exception, 'type'
    eq $P122, .CONTROL_LOOP_NEXT, loop1373_next
    eq $P122, .CONTROL_LOOP_REDO, loop1373_redo
  loop1373_done:
    pop_eh 
  for_undef_531:
.annotate 'line', 917
    .return ($P117)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1370"  :anon :subid("130_1309859073.622") :outer("129_1309859073.622")
    .param pmc param_1372
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 921
    .lex "$_", param_1372
.annotate 'line', 922
    find_lex $P121, "$block"
    unless_null $P121, vivify_532
    new $P121, "Undef"
  vivify_532:
    find_lex $P122, "$_"
    unless_null $P122, vivify_533
    new $P122, "Undef"
  vivify_533:
    $P123 = $P122."key"()
    find_lex $P124, "$_"
    unless_null $P124, vivify_534
    new $P124, "Undef"
  vivify_534:
    $P125 = $P124."value"()
    $P126 = $P121."symbol"($P123, "lexical" :named("scope"), $P125 :named("value"))
.annotate 'line', 921
    .return ($P126)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "EXPR" :anon :subid("131_1309859073.622") :outer("121_1309859073.622")
    .param pmc param_1377
    .param pmc param_1378
    .param pmc param_1379 :optional
    .param int has_param_1379 :opt_flag
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 928
    .const 'Sub' $P1411 = "133_1309859073.622" 
    capture_lex $P1411
    .const 'Sub' $P1403 = "132_1309859073.622" 
    capture_lex $P1403
    new $P1376, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1376, control_1375
    push_eh $P1376
    .lex "self", param_1377
    .lex "$/", param_1378
    if has_param_1379, optparam_535
    new $P114, "Undef"
    set param_1379, $P114
  optparam_535:
    .lex "$key", param_1379
.annotate 'line', 930
    new $P115, "Undef"
    set $P1380, $P115
    .lex "$past", $P1380
.annotate 'line', 929
    find_lex $P116, "$key"
    unless_null $P116, vivify_536
    new $P116, "Undef"
  vivify_536:
    if $P116, unless_1381_end
    new $P117, "Exception"
    set $P117['type'], .CONTROL_RETURN
    new $P118, "Integer"
    assign $P118, 0
    setattribute $P117, 'payload', $P118
    throw $P117
  unless_1381_end:
.annotate 'line', 930
    find_lex $P116, "$/"
    unless_null $P116, vivify_537
    new $P116, "Undef"
  vivify_537:
    $P117 = $P116."ast"()
    set $P1382, $P117
    defined $I1384, $P1382
    if $I1384, default_1383
    find_lex $P1385, "$/"
    unless_null $P1385, vivify_538
    $P1385 = root_new ['parrot';'Hash']
  vivify_538:
    set $P118, $P1385["OPER"]
    unless_null $P118, vivify_539
    new $P118, "Undef"
  vivify_539:
    $P119 = $P118."ast"()
    set $P1382, $P119
  default_1383:
    store_lex "$past", $P1382
.annotate 'line', 931
    find_lex $P116, "$past"
    unless_null $P116, vivify_540
    new $P116, "Undef"
  vivify_540:
    if $P116, unless_1386_end
.annotate 'line', 932
    get_hll_global $P117, "GLOBAL"
    nqp_get_package_through_who $P118, $P117, "PAST"
    get_who $P119, $P118
    set $P120, $P119["Op"]
    find_lex $P121, "$/"
    unless_null $P121, vivify_541
    new $P121, "Undef"
  vivify_541:
    $P122 = $P120."new"($P121 :named("node"))
    store_lex "$past", $P122
.annotate 'line', 933
    find_lex $P1388, "$/"
    unless_null $P1388, vivify_542
    $P1388 = root_new ['parrot';'Hash']
  vivify_542:
    set $P1389, $P1388["OPER"]
    unless_null $P1389, vivify_543
    $P1389 = root_new ['parrot';'Hash']
  vivify_543:
    set $P1390, $P1389["O"]
    unless_null $P1390, vivify_544
    $P1390 = root_new ['parrot';'Hash']
  vivify_544:
    set $P117, $P1390["pasttype"]
    unless_null $P117, vivify_545
    new $P117, "Undef"
  vivify_545:
    if $P117, if_1387
.annotate 'line', 934
    find_lex $P1395, "$/"
    unless_null $P1395, vivify_546
    $P1395 = root_new ['parrot';'Hash']
  vivify_546:
    set $P1396, $P1395["OPER"]
    unless_null $P1396, vivify_547
    $P1396 = root_new ['parrot';'Hash']
  vivify_547:
    set $P1397, $P1396["O"]
    unless_null $P1397, vivify_548
    $P1397 = root_new ['parrot';'Hash']
  vivify_548:
    set $P118, $P1397["pirop"]
    unless_null $P118, vivify_549
    new $P118, "Undef"
  vivify_549:
    unless $P118, if_1394_end
    find_lex $P119, "$past"
    unless_null $P119, vivify_550
    new $P119, "Undef"
  vivify_550:
    find_lex $P1398, "$/"
    unless_null $P1398, vivify_551
    $P1398 = root_new ['parrot';'Hash']
  vivify_551:
    set $P1399, $P1398["OPER"]
    unless_null $P1399, vivify_552
    $P1399 = root_new ['parrot';'Hash']
  vivify_552:
    set $P1400, $P1399["O"]
    unless_null $P1400, vivify_553
    $P1400 = root_new ['parrot';'Hash']
  vivify_553:
    set $P120, $P1400["pirop"]
    unless_null $P120, vivify_554
    new $P120, "Undef"
  vivify_554:
    set $S100, $P120
    $P119."pirop"($S100)
  if_1394_end:
    goto if_1387_end
  if_1387:
.annotate 'line', 933
    find_lex $P118, "$past"
    unless_null $P118, vivify_555
    new $P118, "Undef"
  vivify_555:
    find_lex $P1391, "$/"
    unless_null $P1391, vivify_556
    $P1391 = root_new ['parrot';'Hash']
  vivify_556:
    set $P1392, $P1391["OPER"]
    unless_null $P1392, vivify_557
    $P1392 = root_new ['parrot';'Hash']
  vivify_557:
    set $P1393, $P1392["O"]
    unless_null $P1393, vivify_558
    $P1393 = root_new ['parrot';'Hash']
  vivify_558:
    set $P119, $P1393["pasttype"]
    unless_null $P119, vivify_559
    new $P119, "Undef"
  vivify_559:
    set $S100, $P119
    $P118."pasttype"($S100)
  if_1387_end:
.annotate 'line', 935
    find_lex $P117, "$past"
    unless_null $P117, vivify_560
    new $P117, "Undef"
  vivify_560:
    $P118 = $P117."name"()
    if $P118, unless_1401_end
    .const 'Sub' $P1403 = "132_1309859073.622" 
    capture_lex $P1403
    $P1403()
  unless_1401_end:
  unless_1386_end:
.annotate 'line', 941
    find_lex $P116, "$key"
    unless_null $P116, vivify_568
    new $P116, "Undef"
  vivify_568:
    set $S100, $P116
    iseq $I100, $S100, "POSTFIX"
    if $I100, if_1408
.annotate 'line', 943
    find_lex $P118, "$/"
    unless_null $P118, vivify_569
    new $P118, "Undef"
  vivify_569:
    $P119 = $P118."list"()
    defined $I101, $P119
    unless $I101, for_undef_570
    iter $P117, $P119
    new $P122, 'ExceptionHandler'
    set_label $P122, loop1414_handler
    $P122."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P122
  loop1414_test:
    unless $P117, loop1414_done
    shift $P120, $P117
  loop1414_redo:
    .const 'Sub' $P1411 = "133_1309859073.622" 
    capture_lex $P1411
    $P1411($P120)
  loop1414_next:
    goto loop1414_test
  loop1414_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P123, exception, 'type'
    eq $P123, .CONTROL_LOOP_NEXT, loop1414_next
    eq $P123, .CONTROL_LOOP_REDO, loop1414_redo
  loop1414_done:
    pop_eh 
  for_undef_570:
.annotate 'line', 942
    goto if_1408_end
  if_1408:
.annotate 'line', 941
    find_lex $P117, "$past"
    unless_null $P117, vivify_574
    new $P117, "Undef"
  vivify_574:
    find_lex $P1409, "$/"
    unless_null $P1409, vivify_575
    $P1409 = root_new ['parrot';'ResizablePMCArray']
  vivify_575:
    set $P118, $P1409[0]
    unless_null $P118, vivify_576
    new $P118, "Undef"
  vivify_576:
    $P119 = $P118."ast"()
    $P117."unshift"($P119)
  if_1408_end:
.annotate 'line', 945
    find_lex $P116, "$/"
    find_lex $P117, "$past"
    unless_null $P117, vivify_577
    new $P117, "Undef"
  vivify_577:
    $P118 = $P116."!make"($P117)
.annotate 'line', 928
    .return ($P118)
  control_1375:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P116, exception, "payload"
    .return ($P116)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1402"  :anon :subid("132_1309859073.622") :outer("131_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 937
    new $P119, "Undef"
    set $P1404, $P119
    .lex "$name", $P1404
.annotate 'line', 936
    find_lex $P120, "$key"
    unless_null $P120, vivify_561
    new $P120, "Undef"
  vivify_561:
    set $S100, $P120
    iseq $I100, $S100, "LIST"
    unless $I100, if_1405_end
    new $P121, "String"
    assign $P121, "infix"
    store_lex "$key", $P121
  if_1405_end:
.annotate 'line', 937
    find_lex $P120, "$key"
    unless_null $P120, vivify_562
    new $P120, "Undef"
  vivify_562:
    set $S100, $P120
    downcase $S101, $S100
    new $P121, 'String'
    set $P121, $S101
    concat $P122, $P121, ":<"
    find_lex $P1406, "$/"
    unless_null $P1406, vivify_563
    $P1406 = root_new ['parrot';'Hash']
  vivify_563:
    set $P1407, $P1406["OPER"]
    unless_null $P1407, vivify_564
    $P1407 = root_new ['parrot';'Hash']
  vivify_564:
    set $P123, $P1407["sym"]
    unless_null $P123, vivify_565
    new $P123, "Undef"
  vivify_565:
    concat $P124, $P122, $P123
    concat $P125, $P124, ">"
    store_lex "$name", $P125
.annotate 'line', 938
    find_lex $P120, "$past"
    unless_null $P120, vivify_566
    new $P120, "Undef"
  vivify_566:
    new $P121, "String"
    assign $P121, "&"
    find_lex $P122, "$name"
    unless_null $P122, vivify_567
    new $P122, "Undef"
  vivify_567:
    concat $P123, $P121, $P122
    $P124 = $P120."name"($P123)
.annotate 'line', 935
    .return ($P124)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1410"  :anon :subid("133_1309859073.622") :outer("131_1309859073.622")
    .param pmc param_1412
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 943
    .lex "$_", param_1412
    find_lex $P122, "$_"
    unless_null $P122, vivify_571
    new $P122, "Undef"
  vivify_571:
    $P123 = $P122."ast"()
    defined $I102, $P123
    if $I102, if_1413
    new $P121, 'Integer'
    set $P121, $I102
    goto if_1413_end
  if_1413:
    find_lex $P124, "$past"
    unless_null $P124, vivify_572
    new $P124, "Undef"
  vivify_572:
    find_lex $P125, "$_"
    unless_null $P125, vivify_573
    new $P125, "Undef"
  vivify_573:
    $P126 = $P125."ast"()
    $P127 = $P124."push"($P126)
    set $P121, $P127
  if_1413_end:
    .return ($P121)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "term:sym<circumfix>" :anon :subid("134_1309859073.622") :outer("121_1309859073.622")
    .param pmc param_1416
    .param pmc param_1417
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 948
    .lex "self", param_1416
    .lex "$/", param_1417
    find_lex $P114, "$/"
    find_lex $P1418, "$/"
    unless_null $P1418, vivify_578
    $P1418 = root_new ['parrot';'Hash']
  vivify_578:
    set $P115, $P1418["circumfix"]
    unless_null $P115, vivify_579
    new $P115, "Undef"
  vivify_579:
    $P116 = $P115."ast"()
    $P117 = $P114."!make"($P116)
    .return ($P117)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "termish" :anon :subid("135_1309859073.622") :outer("121_1309859073.622")
    .param pmc param_1420
    .param pmc param_1421
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 950
    .lex "self", param_1420
    .lex "$/", param_1421
    find_lex $P114, "$/"
    find_lex $P1422, "$/"
    unless_null $P1422, vivify_580
    $P1422 = root_new ['parrot';'Hash']
  vivify_580:
    set $P115, $P1422["term"]
    unless_null $P115, vivify_581
    new $P115, "Undef"
  vivify_581:
    $P116 = $P115."ast"()
    $P117 = $P114."!make"($P116)
    .return ($P117)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "nullterm" :anon :subid("136_1309859073.622") :outer("121_1309859073.622")
    .param pmc param_1424
    .param pmc param_1425
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 951
    .lex "self", param_1424
    .lex "$/", param_1425
    find_lex $P114, "$/"
    new $P115, "Undef"
    $P116 = $P114."!make"($P115)
    .return ($P116)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "nullterm_alt" :anon :subid("137_1309859073.622") :outer("121_1309859073.622")
    .param pmc param_1427
    .param pmc param_1428
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 952
    .lex "self", param_1427
    .lex "$/", param_1428
    find_lex $P114, "$/"
    find_lex $P1429, "$/"
    unless_null $P1429, vivify_582
    $P1429 = root_new ['parrot';'Hash']
  vivify_582:
    set $P115, $P1429["term"]
    unless_null $P115, vivify_583
    new $P115, "Undef"
  vivify_583:
    $P116 = $P115."ast"()
    $P117 = $P114."!make"($P116)
    .return ($P117)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "integer" :anon :subid("138_1309859073.622") :outer("121_1309859073.622")
    .param pmc param_1431
    .param pmc param_1432
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 954
    .lex "self", param_1431
    .lex "$/", param_1432
    find_lex $P114, "$/"
    find_lex $P1433, "$/"
    unless_null $P1433, vivify_584
    $P1433 = root_new ['parrot';'Hash']
  vivify_584:
    set $P115, $P1433["VALUE"]
    unless_null $P115, vivify_585
    new $P115, "Undef"
  vivify_585:
    $P116 = $P115."ast"()
    $P117 = $P114."!make"($P116)
    .return ($P117)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "dec_number" :anon :subid("139_1309859073.622") :outer("121_1309859073.622")
    .param pmc param_1435
    .param pmc param_1436
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 956
    .lex "self", param_1435
    .lex "$/", param_1436
    find_lex $P114, "$/"
    find_lex $P115, "$/"
    unless_null $P115, vivify_586
    new $P115, "Undef"
  vivify_586:
    set $N100, $P115
    $P116 = $P114."!make"($N100)
    .return ($P116)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "decint" :anon :subid("140_1309859073.622") :outer("121_1309859073.622")
    .param pmc param_1438
    .param pmc param_1439
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 958
    .lex "self", param_1438
    .lex "$/", param_1439
    find_lex $P114, "$/"
    find_lex $P115, "$/"
    unless_null $P115, vivify_587
    new $P115, "Undef"
  vivify_587:
    $P116 = "string_to_int"($P115, 10)
    $P117 = $P114."!make"($P116)
    .return ($P117)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "hexint" :anon :subid("141_1309859073.622") :outer("121_1309859073.622")
    .param pmc param_1441
    .param pmc param_1442
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 959
    .lex "self", param_1441
    .lex "$/", param_1442
    find_lex $P114, "$/"
    find_lex $P115, "$/"
    unless_null $P115, vivify_588
    new $P115, "Undef"
  vivify_588:
    $P116 = "string_to_int"($P115, 16)
    $P117 = $P114."!make"($P116)
    .return ($P117)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "octint" :anon :subid("142_1309859073.622") :outer("121_1309859073.622")
    .param pmc param_1444
    .param pmc param_1445
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 960
    .lex "self", param_1444
    .lex "$/", param_1445
    find_lex $P114, "$/"
    find_lex $P115, "$/"
    unless_null $P115, vivify_589
    new $P115, "Undef"
  vivify_589:
    $P116 = "string_to_int"($P115, 8)
    $P117 = $P114."!make"($P116)
    .return ($P117)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "binint" :anon :subid("143_1309859073.622") :outer("121_1309859073.622")
    .param pmc param_1447
    .param pmc param_1448
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 961
    .lex "self", param_1447
    .lex "$/", param_1448
    find_lex $P114, "$/"
    find_lex $P115, "$/"
    unless_null $P115, vivify_590
    new $P115, "Undef"
  vivify_590:
    $P116 = "string_to_int"($P115, 2)
    $P117 = $P114."!make"($P116)
    .return ($P117)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_EXPR" :anon :subid("144_1309859073.622") :outer("121_1309859073.622")
    .param pmc param_1450
    .param pmc param_1451
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 963
    .const 'Sub' $P1457 = "145_1309859073.622" 
    capture_lex $P1457
    .lex "self", param_1450
    .lex "$/", param_1451
.annotate 'line', 964
    new $P114, "Undef"
    set $P1452, $P114
    .lex "$past", $P1452
    find_lex $P1453, "$/"
    unless_null $P1453, vivify_591
    $P1453 = root_new ['parrot';'Hash']
  vivify_591:
    set $P115, $P1453["quote_delimited"]
    unless_null $P115, vivify_592
    new $P115, "Undef"
  vivify_592:
    $P116 = $P115."ast"()
    store_lex "$past", $P116
.annotate 'line', 965
    find_lex $P115, "$/"
    unless_null $P115, vivify_593
    new $P115, "Undef"
  vivify_593:
    $P116 = $P115."CURSOR"()
    $P117 = $P116."quotemod_check"("w")
    unless $P117, if_1454_end
.annotate 'line', 966
    get_hll_global $P118, "GLOBAL"
    nqp_get_package_through_who $P119, $P118, "PAST"
    get_who $P120, $P119
    set $P121, $P120["Node"]
    find_lex $P122, "$past"
    unless_null $P122, vivify_594
    new $P122, "Undef"
  vivify_594:
    $P123 = $P121."ACCEPTS"($P122)
    if $P123, if_1455
.annotate 'line', 969
    .const 'Sub' $P1457 = "145_1309859073.622" 
    capture_lex $P1457
    $P1457()
    goto if_1455_end
  if_1455:
.annotate 'line', 967
    find_lex $P124, "$/"
    unless_null $P124, vivify_605
    new $P124, "Undef"
  vivify_605:
    $P125 = $P124."CURSOR"()
    $P125."panic"("Can't form :w list from non-constant strings (yet)")
  if_1455_end:
  if_1454_end:
.annotate 'line', 980
    get_hll_global $P115, "GLOBAL"
    nqp_get_package_through_who $P116, $P115, "PAST"
    get_who $P117, $P116
    set $P118, $P117["Node"]
    find_lex $P119, "$past"
    unless_null $P119, vivify_606
    new $P119, "Undef"
  vivify_606:
    $P120 = $P118."ACCEPTS"($P119)
    isfalse $I100, $P120
    unless $I100, if_1468_end
.annotate 'line', 981
    get_hll_global $P121, "GLOBAL"
    nqp_get_package_through_who $P122, $P121, "PAST"
    get_who $P123, $P122
    set $P124, $P123["Val"]
    find_lex $P125, "$past"
    unless_null $P125, vivify_607
    new $P125, "Undef"
  vivify_607:
    set $S100, $P125
    $P126 = $P124."new"($S100 :named("value"))
    store_lex "$past", $P126
  if_1468_end:
.annotate 'line', 983
    find_lex $P115, "$/"
    find_lex $P116, "$past"
    unless_null $P116, vivify_608
    new $P116, "Undef"
  vivify_608:
    $P117 = $P115."!make"($P116)
.annotate 'line', 963
    .return ($P117)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block1456"  :anon :subid("145_1309859073.622") :outer("144_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 969
    .const 'Sub' $P1464 = "146_1309859073.622" 
    capture_lex $P1464
.annotate 'line', 970
    $P1459 = root_new ['parrot';'ResizablePMCArray']
    set $P1458, $P1459
    .lex "@words", $P1458
    get_hll_global $P124, "GLOBAL"
    nqp_get_package_through_who $P125, $P124, "HLL"
    nqp_get_package_through_who $P126, $P125, "Grammar"
    get_who $P127, $P126
    set $P128, $P127["split_words"]
    find_lex $P129, "$/"
    unless_null $P129, vivify_595
    new $P129, "Undef"
  vivify_595:
    find_lex $P130, "$past"
    unless_null $P130, vivify_596
    new $P130, "Undef"
  vivify_596:
    $P131 = $P128($P129, $P130)
    store_lex "@words", $P131
.annotate 'line', 971
    find_lex $P1461, "@words"
    unless_null $P1461, vivify_597
    $P1461 = root_new ['parrot';'ResizablePMCArray']
  vivify_597:
    set $N100, $P1461
    isne $I100, $N100, 1.0
    if $I100, if_1460
.annotate 'line', 976
    find_lex $P1467, "@words"
    unless_null $P1467, vivify_598
    $P1467 = root_new ['parrot';'ResizablePMCArray']
  vivify_598:
    set $P126, $P1467[0]
    unless_null $P126, vivify_599
    new $P126, "Undef"
  vivify_599:
    set $S100, $P126
    new $P127, 'String'
    set $P127, $S100
    store_lex "$past", $P127
.annotate 'line', 975
    set $P124, $P127
.annotate 'line', 971
    goto if_1460_end
  if_1460:
.annotate 'line', 972
    get_hll_global $P125, "GLOBAL"
    nqp_get_package_through_who $P126, $P125, "PAST"
    get_who $P127, $P126
    set $P128, $P127["Op"]
    find_lex $P129, "$/"
    unless_null $P129, vivify_600
    new $P129, "Undef"
  vivify_600:
    $P130 = $P128."new"("list" :named("pasttype"), $P129 :named("node"))
    store_lex "$past", $P130
.annotate 'line', 973
    find_lex $P1462, "@words"
    unless_null $P1462, vivify_601
    $P1462 = root_new ['parrot';'ResizablePMCArray']
  vivify_601:
    defined $I101, $P1462
    unless $I101, for_undef_602
    iter $P125, $P1462
    new $P127, 'ExceptionHandler'
    set_label $P127, loop1466_handler
    $P127."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P127
  loop1466_test:
    unless $P125, loop1466_done
    shift $P126, $P125
  loop1466_redo:
    .const 'Sub' $P1464 = "146_1309859073.622" 
    capture_lex $P1464
    $P1464($P126)
  loop1466_next:
    goto loop1466_test
  loop1466_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P128, exception, 'type'
    eq $P128, .CONTROL_LOOP_NEXT, loop1466_next
    eq $P128, .CONTROL_LOOP_REDO, loop1466_redo
  loop1466_done:
    pop_eh 
  for_undef_602:
.annotate 'line', 971
    set $P124, $P125
  if_1460_end:
.annotate 'line', 969
    .return ($P124)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1463"  :anon :subid("146_1309859073.622") :outer("145_1309859073.622")
    .param pmc param_1465
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 973
    .lex "$_", param_1465
    find_lex $P127, "$past"
    unless_null $P127, vivify_603
    new $P127, "Undef"
  vivify_603:
    find_lex $P128, "$_"
    unless_null $P128, vivify_604
    new $P128, "Undef"
  vivify_604:
    $P129 = $P127."push"($P128)
    .return ($P129)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "quote_delimited" :anon :subid("147_1309859073.622") :outer("121_1309859073.622")
    .param pmc param_1470
    .param pmc param_1471
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 986
    .const 'Sub' $P1479 = "148_1309859073.622" 
    capture_lex $P1479
    .lex "self", param_1470
    .lex "$/", param_1471
.annotate 'line', 987
    $P1473 = root_new ['parrot';'ResizablePMCArray']
    set $P1472, $P1473
    .lex "@parts", $P1472
.annotate 'line', 988
    new $P114, "Undef"
    set $P1474, $P114
    .lex "$lastlit", $P1474
.annotate 'line', 1004
    new $P115, "Undef"
    set $P1475, $P115
    .lex "$past", $P1475
.annotate 'line', 986
    find_lex $P1476, "@parts"
    unless_null $P1476, vivify_609
    $P1476 = root_new ['parrot';'ResizablePMCArray']
  vivify_609:
.annotate 'line', 988
    new $P116, "String"
    assign $P116, ""
    store_lex "$lastlit", $P116
.annotate 'line', 989
    find_lex $P1477, "$/"
    unless_null $P1477, vivify_610
    $P1477 = root_new ['parrot';'Hash']
  vivify_610:
    set $P117, $P1477["quote_atom"]
    unless_null $P117, vivify_611
    new $P117, "Undef"
  vivify_611:
    defined $I100, $P117
    unless $I100, for_undef_612
    iter $P116, $P117
    new $P121, 'ExceptionHandler'
    set_label $P121, loop1487_handler
    $P121."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P121
  loop1487_test:
    unless $P116, loop1487_done
    shift $P118, $P116
  loop1487_redo:
    .const 'Sub' $P1479 = "148_1309859073.622" 
    capture_lex $P1479
    $P1479($P118)
  loop1487_next:
    goto loop1487_test
  loop1487_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P122, exception, 'type'
    eq $P122, .CONTROL_LOOP_NEXT, loop1487_next
    eq $P122, .CONTROL_LOOP_REDO, loop1487_redo
  loop1487_done:
    pop_eh 
  for_undef_612:
.annotate 'line', 1003
    find_lex $P116, "$lastlit"
    unless_null $P116, vivify_625
    new $P116, "Undef"
  vivify_625:
    set $S100, $P116
    isgt $I100, $S100, ""
    unless $I100, if_1488_end
    find_lex $P1489, "@parts"
    unless_null $P1489, vivify_626
    $P1489 = root_new ['parrot';'ResizablePMCArray']
  vivify_626:
    find_lex $P117, "$lastlit"
    unless_null $P117, vivify_627
    new $P117, "Undef"
  vivify_627:
    $P1489."push"($P117)
  if_1488_end:
.annotate 'line', 1004
    find_lex $P1491, "@parts"
    unless_null $P1491, vivify_628
    $P1491 = root_new ['parrot';'ResizablePMCArray']
  vivify_628:
    if $P1491, if_1490
    new $P118, "String"
    assign $P118, ""
    set $P116, $P118
    goto if_1490_end
  if_1490:
    find_lex $P1492, "@parts"
    unless_null $P1492, vivify_629
    $P1492 = root_new ['parrot';'ResizablePMCArray']
  vivify_629:
    $P117 = $P1492."shift"()
    set $P116, $P117
  if_1490_end:
    store_lex "$past", $P116
.annotate 'line', 1005
    new $P116, 'ExceptionHandler'
    set_label $P116, loop1495_handler
    $P116."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P116
  loop1495_test:
    find_lex $P1493, "@parts"
    unless_null $P1493, vivify_630
    $P1493 = root_new ['parrot';'ResizablePMCArray']
  vivify_630:
    unless $P1493, loop1495_done
  loop1495_redo:
.annotate 'line', 1006
    get_hll_global $P116, "GLOBAL"
    nqp_get_package_through_who $P117, $P116, "PAST"
    get_who $P118, $P117
    set $P119, $P118["Op"]
    find_lex $P120, "$past"
    unless_null $P120, vivify_631
    new $P120, "Undef"
  vivify_631:
    find_lex $P1494, "@parts"
    unless_null $P1494, vivify_632
    $P1494 = root_new ['parrot';'ResizablePMCArray']
  vivify_632:
    $P121 = $P1494."shift"()
    $P122 = $P119."new"($P120, $P121, "concat" :named("pirop"))
    store_lex "$past", $P122
  loop1495_next:
.annotate 'line', 1005
    goto loop1495_test
  loop1495_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P117, exception, 'type'
    eq $P117, .CONTROL_LOOP_NEXT, loop1495_next
    eq $P117, .CONTROL_LOOP_REDO, loop1495_redo
  loop1495_done:
    pop_eh 
.annotate 'line', 1008
    find_lex $P116, "$/"
    find_lex $P117, "$past"
    unless_null $P117, vivify_633
    new $P117, "Undef"
  vivify_633:
    $P118 = $P116."!make"($P117)
.annotate 'line', 986
    .return ($P118)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1478"  :anon :subid("148_1309859073.622") :outer("147_1309859073.622")
    .param pmc param_1481
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 990
    new $P119, "Undef"
    set $P1480, $P119
    .lex "$ast", $P1480
    .lex "$_", param_1481
    find_lex $P120, "$_"
    unless_null $P120, vivify_613
    new $P120, "Undef"
  vivify_613:
    $P121 = $P120."ast"()
    store_lex "$ast", $P121
.annotate 'line', 991
    get_hll_global $P121, "GLOBAL"
    nqp_get_package_through_who $P122, $P121, "PAST"
    get_who $P123, $P122
    set $P124, $P123["Node"]
    find_lex $P125, "$ast"
    unless_null $P125, vivify_614
    new $P125, "Undef"
  vivify_614:
    $P126 = $P124."ACCEPTS"($P125)
    isfalse $I101, $P126
    if $I101, if_1482
.annotate 'line', 994
    find_lex $P128, "$ast"
    unless_null $P128, vivify_615
    new $P128, "Undef"
  vivify_615:
    get_hll_global $P130, "GLOBAL"
    nqp_get_package_through_who $P131, $P130, "PAST"
    get_who $P132, $P131
    set $P133, $P132["Val"]
    $P134 = $P128."isa"($P133)
    if $P134, if_1483
.annotate 'line', 998
    find_lex $P135, "$lastlit"
    unless_null $P135, vivify_616
    new $P135, "Undef"
  vivify_616:
    set $S100, $P135
    isgt $I102, $S100, ""
    unless $I102, if_1484_end
    find_lex $P1485, "@parts"
    unless_null $P1485, vivify_617
    $P1485 = root_new ['parrot';'ResizablePMCArray']
  vivify_617:
    find_lex $P136, "$lastlit"
    unless_null $P136, vivify_618
    new $P136, "Undef"
  vivify_618:
    $P1485."push"($P136)
  if_1484_end:
.annotate 'line', 999
    find_lex $P1486, "@parts"
    unless_null $P1486, vivify_619
    $P1486 = root_new ['parrot';'ResizablePMCArray']
  vivify_619:
    find_lex $P135, "$ast"
    unless_null $P135, vivify_620
    new $P135, "Undef"
  vivify_620:
    $P1486."push"($P135)
.annotate 'line', 1000
    new $P135, "String"
    assign $P135, ""
    store_lex "$lastlit", $P135
.annotate 'line', 997
    set $P127, $P135
.annotate 'line', 994
    goto if_1483_end
  if_1483:
.annotate 'line', 995
    find_lex $P135, "$lastlit"
    unless_null $P135, vivify_621
    new $P135, "Undef"
  vivify_621:
    find_lex $P136, "$ast"
    unless_null $P136, vivify_622
    new $P136, "Undef"
  vivify_622:
    $S100 = $P136."value"()
    concat $P137, $P135, $S100
    store_lex "$lastlit", $P137
.annotate 'line', 994
    set $P127, $P137
  if_1483_end:
    set $P120, $P127
.annotate 'line', 991
    goto if_1482_end
  if_1482:
.annotate 'line', 992
    find_lex $P127, "$lastlit"
    unless_null $P127, vivify_623
    new $P127, "Undef"
  vivify_623:
    find_lex $P128, "$ast"
    unless_null $P128, vivify_624
    new $P128, "Undef"
  vivify_624:
    concat $P129, $P127, $P128
    store_lex "$lastlit", $P129
.annotate 'line', 991
    set $P120, $P129
  if_1482_end:
.annotate 'line', 989
    .return ($P120)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_atom" :anon :subid("149_1309859073.622") :outer("121_1309859073.622")
    .param pmc param_1497
    .param pmc param_1498
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1011
    .lex "self", param_1497
    .lex "$/", param_1498
.annotate 'line', 1012
    find_lex $P114, "$/"
    find_lex $P1500, "$/"
    unless_null $P1500, vivify_634
    $P1500 = root_new ['parrot';'Hash']
  vivify_634:
    set $P116, $P1500["quote_escape"]
    unless_null $P116, vivify_635
    new $P116, "Undef"
  vivify_635:
    if $P116, if_1499
    find_lex $P119, "$/"
    unless_null $P119, vivify_636
    new $P119, "Undef"
  vivify_636:
    set $S100, $P119
    new $P115, 'String'
    set $P115, $S100
    goto if_1499_end
  if_1499:
    find_lex $P1501, "$/"
    unless_null $P1501, vivify_637
    $P1501 = root_new ['parrot';'Hash']
  vivify_637:
    set $P117, $P1501["quote_escape"]
    unless_null $P117, vivify_638
    new $P117, "Undef"
  vivify_638:
    $P118 = $P117."ast"()
    set $P115, $P118
  if_1499_end:
    $P120 = $P114."!make"($P115)
.annotate 'line', 1011
    .return ($P120)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<backslash>" :anon :subid("150_1309859073.622") :outer("121_1309859073.622")
    .param pmc param_1503
    .param pmc param_1504
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1015
    .lex "self", param_1503
    .lex "$/", param_1504
    find_lex $P114, "$/"
    $P115 = $P114."!make"("\\")
    .return ($P115)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<stopper>" :anon :subid("151_1309859073.622") :outer("121_1309859073.622")
    .param pmc param_1506
    .param pmc param_1507
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1016
    .lex "self", param_1506
    .lex "$/", param_1507
    find_lex $P114, "$/"
    find_lex $P1508, "$/"
    unless_null $P1508, vivify_639
    $P1508 = root_new ['parrot';'Hash']
  vivify_639:
    set $P115, $P1508["stopper"]
    unless_null $P115, vivify_640
    new $P115, "Undef"
  vivify_640:
    set $S100, $P115
    $P116 = $P114."!make"($S100)
    .return ($P116)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<bs>" :anon :subid("152_1309859073.622") :outer("121_1309859073.622")
    .param pmc param_1510
    .param pmc param_1511
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1018
    .lex "self", param_1510
    .lex "$/", param_1511
    find_lex $P114, "$/"
    $P115 = $P114."!make"("\b")
    .return ($P115)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<nl>" :anon :subid("153_1309859073.622") :outer("121_1309859073.622")
    .param pmc param_1513
    .param pmc param_1514
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1019
    .lex "self", param_1513
    .lex "$/", param_1514
    find_lex $P114, "$/"
    $P115 = $P114."!make"("\n")
    .return ($P115)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<cr>" :anon :subid("154_1309859073.622") :outer("121_1309859073.622")
    .param pmc param_1516
    .param pmc param_1517
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1020
    .lex "self", param_1516
    .lex "$/", param_1517
    find_lex $P114, "$/"
    $P115 = $P114."!make"("\r")
    .return ($P115)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<tab>" :anon :subid("155_1309859073.622") :outer("121_1309859073.622")
    .param pmc param_1519
    .param pmc param_1520
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1021
    .lex "self", param_1519
    .lex "$/", param_1520
    find_lex $P114, "$/"
    $P115 = $P114."!make"("\t")
    .return ($P115)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<ff>" :anon :subid("156_1309859073.622") :outer("121_1309859073.622")
    .param pmc param_1522
    .param pmc param_1523
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1022
    .lex "self", param_1522
    .lex "$/", param_1523
    find_lex $P114, "$/"
    $P115 = $P114."!make"("\f")
    .return ($P115)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<esc>" :anon :subid("157_1309859073.622") :outer("121_1309859073.622")
    .param pmc param_1525
    .param pmc param_1526
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1023
    .lex "self", param_1525
    .lex "$/", param_1526
    find_lex $P114, "$/"
    $P115 = $P114."!make"("\e")
    .return ($P115)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<hex>" :anon :subid("158_1309859073.622") :outer("121_1309859073.622")
    .param pmc param_1528
    .param pmc param_1529
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1025
    .lex "self", param_1528
    .lex "$/", param_1529
.annotate 'line', 1026
    find_lex $P114, "$/"
    find_lex $P1531, "$/"
    unless_null $P1531, vivify_641
    $P1531 = root_new ['parrot';'Hash']
  vivify_641:
    set $P116, $P1531["hexint"]
    unless_null $P116, vivify_642
    new $P116, "Undef"
  vivify_642:
    if $P116, if_1530
    find_lex $P1533, "$/"
    unless_null $P1533, vivify_643
    $P1533 = root_new ['parrot';'Hash']
  vivify_643:
    set $P1534, $P1533["hexints"]
    unless_null $P1534, vivify_644
    $P1534 = root_new ['parrot';'Hash']
  vivify_644:
    set $P118, $P1534["hexint"]
    unless_null $P118, vivify_645
    new $P118, "Undef"
  vivify_645:
    set $P115, $P118
    goto if_1530_end
  if_1530:
    find_lex $P1532, "$/"
    unless_null $P1532, vivify_646
    $P1532 = root_new ['parrot';'Hash']
  vivify_646:
    set $P117, $P1532["hexint"]
    unless_null $P117, vivify_647
    new $P117, "Undef"
  vivify_647:
    set $P115, $P117
  if_1530_end:
    $P119 = "ints_to_string"($P115)
    $P120 = $P114."!make"($P119)
.annotate 'line', 1025
    .return ($P120)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<oct>" :anon :subid("159_1309859073.622") :outer("121_1309859073.622")
    .param pmc param_1536
    .param pmc param_1537
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1029
    .lex "self", param_1536
    .lex "$/", param_1537
.annotate 'line', 1030
    find_lex $P114, "$/"
    find_lex $P1539, "$/"
    unless_null $P1539, vivify_648
    $P1539 = root_new ['parrot';'Hash']
  vivify_648:
    set $P116, $P1539["octint"]
    unless_null $P116, vivify_649
    new $P116, "Undef"
  vivify_649:
    if $P116, if_1538
    find_lex $P1541, "$/"
    unless_null $P1541, vivify_650
    $P1541 = root_new ['parrot';'Hash']
  vivify_650:
    set $P1542, $P1541["octints"]
    unless_null $P1542, vivify_651
    $P1542 = root_new ['parrot';'Hash']
  vivify_651:
    set $P118, $P1542["octint"]
    unless_null $P118, vivify_652
    new $P118, "Undef"
  vivify_652:
    set $P115, $P118
    goto if_1538_end
  if_1538:
    find_lex $P1540, "$/"
    unless_null $P1540, vivify_653
    $P1540 = root_new ['parrot';'Hash']
  vivify_653:
    set $P117, $P1540["octint"]
    unless_null $P117, vivify_654
    new $P117, "Undef"
  vivify_654:
    set $P115, $P117
  if_1538_end:
    $P119 = "ints_to_string"($P115)
    $P120 = $P114."!make"($P119)
.annotate 'line', 1029
    .return ($P120)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<chr>" :anon :subid("160_1309859073.622") :outer("121_1309859073.622")
    .param pmc param_1544
    .param pmc param_1545
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1033
    .lex "self", param_1544
    .lex "$/", param_1545
.annotate 'line', 1034
    find_lex $P114, "$/"
    find_lex $P1546, "$/"
    unless_null $P1546, vivify_655
    $P1546 = root_new ['parrot';'Hash']
  vivify_655:
    set $P115, $P1546["charspec"]
    unless_null $P115, vivify_656
    new $P115, "Undef"
  vivify_656:
    $P116 = $P115."ast"()
    $P117 = $P114."!make"($P116)
.annotate 'line', 1033
    .return ($P117)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<0>" :anon :subid("161_1309859073.622") :outer("121_1309859073.622")
    .param pmc param_1548
    .param pmc param_1549
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1037
    .lex "self", param_1548
    .lex "$/", param_1549
.annotate 'line', 1038
    find_lex $P114, "$/"
    $P115 = $P114."!make"(unicode:"\x{0}")
.annotate 'line', 1037
    .return ($P115)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<misc>" :anon :subid("162_1309859073.622") :outer("121_1309859073.622")
    .param pmc param_1551
    .param pmc param_1552
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1041
    .lex "self", param_1551
    .lex "$/", param_1552
.annotate 'line', 1042
    find_lex $P114, "$/"
    find_lex $P1554, "$/"
    unless_null $P1554, vivify_657
    $P1554 = root_new ['parrot';'Hash']
  vivify_657:
    set $P116, $P1554["textq"]
    unless_null $P116, vivify_658
    new $P116, "Undef"
  vivify_658:
    if $P116, if_1553
    find_lex $P1556, "$/"
    unless_null $P1556, vivify_659
    $P1556 = root_new ['parrot';'Hash']
  vivify_659:
    set $P120, $P1556["textqq"]
    unless_null $P120, vivify_660
    new $P120, "Undef"
  vivify_660:
    $P121 = $P120."Str"()
    set $P115, $P121
    goto if_1553_end
  if_1553:
    new $P117, "String"
    assign $P117, "\\"
    find_lex $P1555, "$/"
    unless_null $P1555, vivify_661
    $P1555 = root_new ['parrot';'Hash']
  vivify_661:
    set $P118, $P1555["textq"]
    unless_null $P118, vivify_662
    new $P118, "Undef"
  vivify_662:
    $S100 = $P118."Str"()
    concat $P119, $P117, $S100
    set $P115, $P119
  if_1553_end:
    $P122 = $P114."!make"($P115)
.annotate 'line', 1041
    .return ($P122)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "charname" :anon :subid("163_1309859073.622") :outer("121_1309859073.622")
    .param pmc param_1558
    .param pmc param_1559
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1045
    .lex "self", param_1558
    .lex "$/", param_1559
.annotate 'line', 1046
    new $P114, "Undef"
    set $P1560, $P114
    .lex "$codepoint", $P1560
.annotate 'line', 1047
    find_lex $P1562, "$/"
    unless_null $P1562, vivify_663
    $P1562 = root_new ['parrot';'Hash']
  vivify_663:
    set $P116, $P1562["integer"]
    unless_null $P116, vivify_664
    new $P116, "Undef"
  vivify_664:
    if $P116, if_1561
.annotate 'line', 1048
    find_lex $P119, "$/"
    unless_null $P119, vivify_665
    new $P119, "Undef"
  vivify_665:
    set $S100, $P119
    find_codepoint $I100, $S100
    new $P115, 'Integer'
    set $P115, $I100
.annotate 'line', 1047
    goto if_1561_end
  if_1561:
    find_lex $P1563, "$/"
    unless_null $P1563, vivify_666
    $P1563 = root_new ['parrot';'Hash']
  vivify_666:
    set $P117, $P1563["integer"]
    unless_null $P117, vivify_667
    new $P117, "Undef"
  vivify_667:
    $P118 = $P117."ast"()
    set $P115, $P118
  if_1561_end:
    store_lex "$codepoint", $P115
.annotate 'line', 1049
    find_lex $P115, "$codepoint"
    unless_null $P115, vivify_668
    new $P115, "Undef"
  vivify_668:
    set $N100, $P115
    islt $I100, $N100, 0.0
    unless $I100, if_1564_end
    find_lex $P116, "$/"
    unless_null $P116, vivify_669
    new $P116, "Undef"
  vivify_669:
    $P117 = $P116."CURSOR"()
    new $P118, 'String'
    set $P118, "Unrecognized character name "
    find_lex $P119, "$/"
    unless_null $P119, vivify_670
    new $P119, "Undef"
  vivify_670:
    concat $P120, $P118, $P119
    $P117."panic"($P120)
  if_1564_end:
.annotate 'line', 1050
    find_lex $P115, "$/"
    find_lex $P116, "$codepoint"
    unless_null $P116, vivify_671
    new $P116, "Undef"
  vivify_671:
    set $I100, $P116
    chr $S100, $I100
    $P117 = $P115."!make"($S100)
.annotate 'line', 1045
    .return ($P117)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "charnames" :anon :subid("164_1309859073.622") :outer("121_1309859073.622")
    .param pmc param_1566
    .param pmc param_1567
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1053
    .const 'Sub' $P1571 = "165_1309859073.622" 
    capture_lex $P1571
    .lex "self", param_1566
    .lex "$/", param_1567
.annotate 'line', 1054
    new $P114, "Undef"
    set $P1568, $P114
    .lex "$str", $P1568
    new $P115, "String"
    assign $P115, ""
    store_lex "$str", $P115
.annotate 'line', 1055
    find_lex $P1569, "$/"
    unless_null $P1569, vivify_672
    $P1569 = root_new ['parrot';'Hash']
  vivify_672:
    set $P116, $P1569["charname"]
    unless_null $P116, vivify_673
    new $P116, "Undef"
  vivify_673:
    defined $I100, $P116
    unless $I100, for_undef_674
    iter $P115, $P116
    new $P118, 'ExceptionHandler'
    set_label $P118, loop1573_handler
    $P118."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P118
  loop1573_test:
    unless $P115, loop1573_done
    shift $P117, $P115
  loop1573_redo:
    .const 'Sub' $P1571 = "165_1309859073.622" 
    capture_lex $P1571
    $P1571($P117)
  loop1573_next:
    goto loop1573_test
  loop1573_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P119, exception, 'type'
    eq $P119, .CONTROL_LOOP_NEXT, loop1573_next
    eq $P119, .CONTROL_LOOP_REDO, loop1573_redo
  loop1573_done:
    pop_eh 
  for_undef_674:
.annotate 'line', 1056
    find_lex $P115, "$/"
    find_lex $P116, "$str"
    unless_null $P116, vivify_677
    new $P116, "Undef"
  vivify_677:
    $P117 = $P115."!make"($P116)
.annotate 'line', 1053
    .return ($P117)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1570"  :anon :subid("165_1309859073.622") :outer("164_1309859073.622")
    .param pmc param_1572
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1055
    .lex "$_", param_1572
    find_lex $P118, "$str"
    unless_null $P118, vivify_675
    new $P118, "Undef"
  vivify_675:
    find_lex $P119, "$_"
    unless_null $P119, vivify_676
    new $P119, "Undef"
  vivify_676:
    $S100 = $P119."ast"()
    concat $P120, $P118, $S100
    store_lex "$str", $P120
    .return ($P120)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "charspec" :anon :subid("166_1309859073.622") :outer("121_1309859073.622")
    .param pmc param_1575
    .param pmc param_1576
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1059
    .lex "self", param_1575
    .lex "$/", param_1576
.annotate 'line', 1060
    find_lex $P114, "$/"
    find_lex $P1578, "$/"
    unless_null $P1578, vivify_678
    $P1578 = root_new ['parrot';'Hash']
  vivify_678:
    set $P116, $P1578["charnames"]
    unless_null $P116, vivify_679
    new $P116, "Undef"
  vivify_679:
    if $P116, if_1577
    find_lex $P119, "$/"
    unless_null $P119, vivify_680
    new $P119, "Undef"
  vivify_680:
    $I100 = "string_to_int"($P119, 10)
    chr $S100, $I100
    new $P115, 'String'
    set $P115, $S100
    goto if_1577_end
  if_1577:
    find_lex $P1579, "$/"
    unless_null $P1579, vivify_681
    $P1579 = root_new ['parrot';'Hash']
  vivify_681:
    set $P117, $P1579["charnames"]
    unless_null $P117, vivify_682
    new $P117, "Undef"
  vivify_682:
    $P118 = $P117."ast"()
    set $P115, $P118
  if_1577_end:
    $P120 = $P114."!make"($P115)
.annotate 'line', 1059
    .return ($P120)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1581"  :subid("167_1309859073.622") :outer("10_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1079
    .const 'Sub' $P2176 = "243_1309859073.622" 
    capture_lex $P2176
    .const 'Sub' $P2152 = "241_1309859073.622" 
    capture_lex $P2152
    .const 'Sub' $P2118 = "238_1309859073.622" 
    capture_lex $P2118
    .const 'Sub' $P2105 = "236_1309859073.622" 
    capture_lex $P2105
    .const 'Sub' $P2097 = "234_1309859073.622" 
    capture_lex $P2097
    .const 'Sub' $P2085 = "231_1309859073.622" 
    capture_lex $P2085
    .const 'Sub' $P2074 = "230_1309859073.622" 
    capture_lex $P2074
    .const 'Sub' $P2070 = "229_1309859073.622" 
    capture_lex $P2070
    .const 'Sub' $P2058 = "227_1309859073.622" 
    capture_lex $P2058
    .const 'Sub' $P2053 = "226_1309859073.622" 
    capture_lex $P2053
    .const 'Sub' $P2048 = "225_1309859073.622" 
    capture_lex $P2048
    .const 'Sub' $P2046 = "224_1309859073.622" 
    capture_lex $P2046
    .const 'Sub' $P2041 = "223_1309859073.622" 
    capture_lex $P2041
    .const 'Sub' $P2035 = "222_1309859073.622" 
    capture_lex $P2035
    .const 'Sub' $P2005 = "219_1309859073.622" 
    capture_lex $P2005
    .const 'Sub' $P1982 = "217_1309859073.622" 
    capture_lex $P1982
    .const 'Sub' $P1928 = "213_1309859073.622" 
    capture_lex $P1928
    .const 'Sub' $P1903 = "210_1309859073.622" 
    capture_lex $P1903
    .const 'Sub' $P1844 = "206_1309859073.622" 
    capture_lex $P1844
    .const 'Sub' $P1836 = "205_1309859073.622" 
    capture_lex $P1836
    .const 'Sub' $P1832 = "204_1309859073.622" 
    capture_lex $P1832
    .const 'Sub' $P1828 = "203_1309859073.622" 
    capture_lex $P1828
    .const 'Sub' $P1824 = "202_1309859073.622" 
    capture_lex $P1824
    .const 'Sub' $P1818 = "201_1309859073.622" 
    capture_lex $P1818
    .const 'Sub' $P1812 = "200_1309859073.622" 
    capture_lex $P1812
    .const 'Sub' $P1804 = "199_1309859073.622" 
    capture_lex $P1804
    .const 'Sub' $P1800 = "198_1309859073.622" 
    capture_lex $P1800
    .const 'Sub' $P1797 = "197_1309859073.622" 
    capture_lex $P1797
    .const 'Sub' $P1779 = "195_1309859073.622" 
    capture_lex $P1779
    .const 'Sub' $P1717 = "188_1309859073.622" 
    capture_lex $P1717
    .const 'Sub' $P1713 = "187_1309859073.622" 
    capture_lex $P1713
    .const 'Sub' $P1683 = "182_1309859073.622" 
    capture_lex $P1683
    .const 'Sub' $P1668 = "180_1309859073.622" 
    capture_lex $P1668
    .const 'Sub' $P1665 = "179_1309859073.622" 
    capture_lex $P1665
    .const 'Sub' $P1662 = "178_1309859073.622" 
    capture_lex $P1662
    .const 'Sub' $P1658 = "177_1309859073.622" 
    capture_lex $P1658
    .const 'Sub' $P1651 = "176_1309859073.622" 
    capture_lex $P1651
    .const 'Sub' $P1609 = "173_1309859073.622" 
    capture_lex $P1609
    .const 'Sub' $P1602 = "171_1309859073.622" 
    capture_lex $P1602
    .const 'Sub' $P1599 = "170_1309859073.622" 
    capture_lex $P1599
    .const 'Sub' $P1592 = "169_1309859073.622" 
    capture_lex $P1592
    .const 'Sub' $P1584 = "168_1309859073.622" 
    capture_lex $P1584
.annotate 'line', 1133
    .const 'Sub' $P1584 = "168_1309859073.622" 
    newclosure $P1588, $P1584
    set $P1583, $P1588
    .lex "value_type", $P1583
.annotate 'line', 1079
    .lex "$?PACKAGE", $P1589
    .lex "$?CLASS", $P1590
.annotate 'line', 1101
    .const 'Sub' $P1592 = "169_1309859073.622" 
    capture_lex $P1592
    $P1592()
.annotate 'line', 1079
    find_lex $P104, "$?PACKAGE"
    get_who $P105, $P104
    set $P106, $P105["$interactive_ctx"]
    unless_null $P106, vivify_689
    new $P106, "Undef"
  vivify_689:
    find_lex $P104, "$?PACKAGE"
    get_who $P105, $P104
    set $P1597, $P105["%interactive_pad"]
    unless_null $P1597, vivify_690
    $P1597 = root_new ['parrot';'Hash']
  vivify_690:
    find_lex $P104, "$?PACKAGE"
    get_who $P105, $P104
    set $P1598, $P105["%parrot_config"]
    unless_null $P1598, vivify_691
    $P1598 = root_new ['parrot';'Hash']
  vivify_691:
    find_lex $P104, "value_type"
.annotate 'line', 1630
    .const 'Sub' $P2176 = "243_1309859073.622" 
    newclosure $P2181, $P2176
.annotate 'line', 1079
    .return ($P2181)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "value_type"  :subid("168_1309859073.622") :outer("167_1309859073.622")
    .param pmc param_1585
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1133
    .lex "$value", param_1585
.annotate 'line', 1134
    find_lex $P104, "$value"
    unless_null $P104, vivify_683
    new $P104, "Undef"
  vivify_683:
    isa $I100, $P104, "NameSpace"
    if $I100, if_1586
.annotate 'line', 1136
    find_lex $P107, "$value"
    unless_null $P107, vivify_684
    new $P107, "Undef"
  vivify_684:
    isa $I101, $P107, "Sub"
    if $I101, if_1587
    new $P109, "String"
    assign $P109, "var"
    set $P106, $P109
    goto if_1587_end
  if_1587:
    new $P108, "String"
    assign $P108, "sub"
    set $P106, $P108
  if_1587_end:
    set $P103, $P106
.annotate 'line', 1134
    goto if_1586_end
  if_1586:
    new $P105, "String"
    assign $P105, "namespace"
    set $P103, $P105
  if_1586_end:
.annotate 'line', 1133
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1591"  :anon :subid("169_1309859073.622") :outer("167_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1106
    $P1594 = root_new ['parrot';'Hash']
    set $P1593, $P1594
    .lex "%pad_contents", $P1593
.annotate 'line', 1103
    getinterp $P104
    set $P105, $P104["context"]
    unless_null $P105, vivify_685
    new $P105, "Undef"
  vivify_685:
    find_lex $P106, "$?PACKAGE"
    get_who $P107, $P106
    set $P107["$interactive_ctx"], $P105
.annotate 'line', 1101
    find_lex $P1595, "%pad_contents"
    unless_null $P1595, vivify_686
    $P1595 = root_new ['parrot';'Hash']
  vivify_686:
.annotate 'line', 1108
    find_lex $P104, "$?PACKAGE"
    get_who $P105, $P104
    set $P106, $P105["$interactive_ctx"]
    unless_null $P106, vivify_687
    new $P106, "Undef"
  vivify_687:
    getattribute $P107, $P106, "lex_pad"
    find_lex $P1596, "%pad_contents"
    unless_null $P1596, vivify_688
    $P1596 = root_new ['parrot';'Hash']
  vivify_688:
    copy $P107, $P1596
.annotate 'line', 1107
    find_lex $P108, "$?PACKAGE"
    get_who $P109, $P108
    set $P109["%interactive_pad"], $P107
.annotate 'line', 1101
    .return ($P107)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "new" :anon :subid("170_1309859073.622") :outer("167_1309859073.622")
    .param pmc param_1600
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1113
    .lex "self", param_1600
.annotate 'line', 1114
    new $P104, "Undef"
    set $P1601, $P104
    .lex "$obj", $P1601
    find_lex $P105, "self"
    repr_instance_of $P106, $P105
    store_lex "$obj", $P106
.annotate 'line', 1115
    find_lex $P105, "$obj"
    unless_null $P105, vivify_692
    new $P105, "Undef"
  vivify_692:
    $P105."BUILD"()
.annotate 'line', 1113
    find_lex $P105, "$obj"
    unless_null $P105, vivify_693
    new $P105, "Undef"
  vivify_693:
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "BUILD" :anon :subid("171_1309859073.622") :outer("167_1309859073.622")
    .param pmc param_1603
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1119
    .const 'Sub' $P1606 = "172_1309859073.622" 
    capture_lex $P1606
    .lex "self", param_1603
.annotate 'line', 1121
    split $P104, " ", "parse past post pir evalpmc"
    find_lex $P105, "self"
    find_lex $P106, "$?CLASS"
    setattribute $P105, $P106, "@!stages", $P104
.annotate 'line', 1124
    split $P104, " ", "e=s help|h target=s dumper=s trace|t=s encoding=s output|o=s combine version|v show-config stagestats ll-backtrace nqpevent=s rxtrace"
    find_lex $P105, "self"
    find_lex $P106, "$?CLASS"
    setattribute $P105, $P106, "@!cmdoptions", $P104
.annotate 'line', 1125
    new $P104, "String"
    assign $P104, "This compiler is based on HLL::Compler.\n\nOptions:\n"
    find_lex $P105, "self"
    find_lex $P106, "$?CLASS"
    setattribute $P105, $P106, "$!usage", $P104
.annotate 'line', 1126
    find_lex $P105, "self"
    find_lex $P106, "$?CLASS"
    getattribute $P1604, $P105, $P106, "@!cmdoptions"
    unless_null $P1604, vivify_694
    $P1604 = root_new ['parrot';'ResizablePMCArray']
  vivify_694:
    defined $I100, $P1604
    unless $I100, for_undef_695
    iter $P104, $P1604
    new $P109, 'ExceptionHandler'
    set_label $P109, loop1608_handler
    $P109."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P109
  loop1608_test:
    unless $P104, loop1608_done
    shift $P108, $P104
  loop1608_redo:
    .const 'Sub' $P1606 = "172_1309859073.622" 
    capture_lex $P1606
    $P1606($P108)
  loop1608_next:
    goto loop1608_test
  loop1608_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P110, exception, 'type'
    eq $P110, .CONTROL_LOOP_NEXT, loop1608_next
    eq $P110, .CONTROL_LOOP_REDO, loop1608_redo
  loop1608_done:
    pop_eh 
  for_undef_695:
.annotate 'line', 1129
    getinterp $P104
    set $P105, $P104[.IGLOBALS_CONFIG_HASH]
    unless_null $P105, vivify_698
    new $P105, "Undef"
  vivify_698:
    find_lex $P106, "$?PACKAGE"
    get_who $P108, $P106
    set $P108["%parrot_config"], $P105
.annotate 'line', 1130
    new $P104, "Hash"
    find_lex $P105, "self"
    find_lex $P106, "$?CLASS"
    setattribute $P105, $P106, "%!config", $P104
.annotate 'line', 1119
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1605"  :anon :subid("172_1309859073.622") :outer("171_1309859073.622")
    .param pmc param_1607
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1126
    .lex "$_", param_1607
.annotate 'line', 1127
    find_lex $P109, "self"
    find_lex $P110, "$?CLASS"
    getattribute $P111, $P109, $P110, "$!usage"
    unless_null $P111, vivify_696
    new $P111, "Undef"
  vivify_696:
    new $P112, 'String'
    set $P112, "    "
    find_lex $P113, "$_"
    unless_null $P113, vivify_697
    new $P113, "Undef"
  vivify_697:
    concat $P114, $P112, $P113
    concat $P115, $P114, "\n"
    concat $P116, $P111, $P115
    find_lex $P117, "self"
    find_lex $P118, "$?CLASS"
    setattribute $P117, $P118, "$!usage", $P116
.annotate 'line', 1126
    .return ($P116)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "get_exports" :anon :subid("173_1309859073.622") :outer("167_1309859073.622")
    .param pmc param_1610
    .param pmc param_1611
    .param pmc param_1613 :slurpy
    .param pmc param_1612 :optional :named("tagset")
    .param int has_param_1612 :opt_flag
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1139
    .const 'Sub' $P1644 = "175_1309859073.622" 
    capture_lex $P1644
    .const 'Sub' $P1635 = "174_1309859073.622" 
    capture_lex $P1635
    .lex "self", param_1610
    .lex "$module", param_1611
    if has_param_1612, optparam_699
    new $P104, "Undef"
    set param_1612, $P104
  optparam_699:
    .lex "$tagset", param_1612
    .lex "@symbols", param_1613
.annotate 'line', 1146
    $P1615 = root_new ['parrot';'Hash']
    set $P1614, $P1615
    .lex "%exports", $P1614
.annotate 'line', 1147
    $P1617 = root_new ['parrot';'Hash']
    set $P1616, $P1617
    .lex "%source", $P1616
.annotate 'line', 1141
    find_lex $P105, "$module"
    unless_null $P105, vivify_700
    new $P105, "Undef"
  vivify_700:
    does $I100, $P105, "hash"
    new $P106, 'Integer'
    set $P106, $I100
    isfalse $I101, $P106
    unless $I101, if_1618_end
.annotate 'line', 1142
    find_lex $P108, "self"
    find_lex $P109, "$module"
    unless_null $P109, vivify_701
    new $P109, "Undef"
  vivify_701:
    $P110 = $P108."get_module"($P109)
    store_lex "$module", $P110
  if_1618_end:
.annotate 'line', 1145
    find_lex $P105, "$tagset"
    unless_null $P105, vivify_702
    new $P105, "Undef"
  vivify_702:
    set $P1619, $P105
    defined $I1621, $P1619
    if $I1621, default_1620
    find_lex $P1623, "@symbols"
    unless_null $P1623, vivify_703
    $P1623 = root_new ['parrot';'ResizablePMCArray']
  vivify_703:
    if $P1623, if_1622
    new $P109, "String"
    assign $P109, "DEFAULT"
    set $P106, $P109
    goto if_1622_end
  if_1622:
    new $P108, "String"
    assign $P108, "ALL"
    set $P106, $P108
  if_1622_end:
    set $P1619, $P106
  default_1620:
    store_lex "$tagset", $P1619
.annotate 'line', 1139
    find_lex $P1624, "%exports"
    unless_null $P1624, vivify_704
    $P1624 = root_new ['parrot';'Hash']
  vivify_704:
.annotate 'line', 1147
    find_lex $P105, "$tagset"
    unless_null $P105, vivify_705
    new $P105, "Undef"
  vivify_705:
    set $S100, $P105
    find_lex $P1625, "$module"
    unless_null $P1625, vivify_706
    $P1625 = root_new ['parrot';'Hash']
  vivify_706:
    set $P1626, $P1625["EXPORT"]
    unless_null $P1626, vivify_707
    $P1626 = root_new ['parrot';'Hash']
  vivify_707:
    set $P106, $P1626[$S100]
    unless_null $P106, vivify_708
    new $P106, "Undef"
  vivify_708:
    store_lex "%source", $P106
.annotate 'line', 1148
    find_lex $P1628, "%source"
    unless_null $P1628, vivify_709
    $P1628 = root_new ['parrot';'Hash']
  vivify_709:
    defined $I100, $P1628
    new $P105, 'Integer'
    set $P105, $I100
    isfalse $I101, $P105
    unless $I101, if_1627_end
.annotate 'line', 1149
    find_lex $P108, "$tagset"
    unless_null $P108, vivify_710
    new $P108, "Undef"
  vivify_710:
    set $S100, $P108
    iseq $I102, $S100, "ALL"
    if $I102, if_1629
    $P1630 = root_new ['parrot';'Hash']
    set $P106, $P1630
    goto if_1629_end
  if_1629:
    find_lex $P109, "$module"
    unless_null $P109, vivify_711
    new $P109, "Undef"
  vivify_711:
    set $P106, $P109
  if_1629_end:
    store_lex "%source", $P106
  if_1627_end:
.annotate 'line', 1151
    find_lex $P1632, "@symbols"
    unless_null $P1632, vivify_712
    $P1632 = root_new ['parrot';'ResizablePMCArray']
  vivify_712:
    if $P1632, if_1631
.annotate 'line', 1158
    find_lex $P1642, "%source"
    unless_null $P1642, vivify_713
    $P1642 = root_new ['parrot';'Hash']
  vivify_713:
    defined $I100, $P1642
    unless $I100, for_undef_714
    iter $P105, $P1642
    new $P110, 'ExceptionHandler'
    set_label $P110, loop1649_handler
    $P110."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P110
  loop1649_test:
    unless $P105, loop1649_done
    shift $P106, $P105
  loop1649_redo:
    .const 'Sub' $P1644 = "175_1309859073.622" 
    capture_lex $P1644
    $P1644($P106)
  loop1649_next:
    goto loop1649_test
  loop1649_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P111, exception, 'type'
    eq $P111, .CONTROL_LOOP_NEXT, loop1649_next
    eq $P111, .CONTROL_LOOP_REDO, loop1649_redo
  loop1649_done:
    pop_eh 
  for_undef_714:
.annotate 'line', 1157
    goto if_1631_end
  if_1631:
.annotate 'line', 1152
    find_lex $P1633, "@symbols"
    unless_null $P1633, vivify_721
    $P1633 = root_new ['parrot';'ResizablePMCArray']
  vivify_721:
    defined $I100, $P1633
    unless $I100, for_undef_722
    iter $P105, $P1633
    new $P110, 'ExceptionHandler'
    set_label $P110, loop1641_handler
    $P110."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P110
  loop1641_test:
    unless $P105, loop1641_done
    shift $P106, $P105
  loop1641_redo:
    .const 'Sub' $P1635 = "174_1309859073.622" 
    capture_lex $P1635
    $P1635($P106)
  loop1641_next:
    goto loop1641_test
  loop1641_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P111, exception, 'type'
    eq $P111, .CONTROL_LOOP_NEXT, loop1641_next
    eq $P111, .CONTROL_LOOP_REDO, loop1641_redo
  loop1641_done:
    pop_eh 
  for_undef_722:
  if_1631_end:
.annotate 'line', 1139
    find_lex $P1650, "%exports"
    unless_null $P1650, vivify_731
    $P1650 = root_new ['parrot';'Hash']
  vivify_731:
    .return ($P1650)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1643"  :anon :subid("175_1309859073.622") :outer("173_1309859073.622")
    .param pmc param_1646
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1159
    new $P108, "Undef"
    set $P1645, $P108
    .lex "$value", $P1645
    .lex "$_", param_1646
    find_lex $P109, "$_"
    unless_null $P109, vivify_715
    new $P109, "Undef"
  vivify_715:
    $P110 = $P109."value"()
    store_lex "$value", $P110
.annotate 'line', 1160
    find_lex $P109, "$value"
    unless_null $P109, vivify_716
    new $P109, "Undef"
  vivify_716:
    find_lex $P110, "$_"
    unless_null $P110, vivify_717
    new $P110, "Undef"
  vivify_717:
    $P111 = $P110."key"()
    find_lex $P112, "$value"
    unless_null $P112, vivify_718
    new $P112, "Undef"
  vivify_718:
    $P113 = "value_type"($P112)
    find_lex $P1647, "%exports"
    unless_null $P1647, vivify_719
    $P1647 = root_new ['parrot';'Hash']
    store_lex "%exports", $P1647
  vivify_719:
    set $P1648, $P1647[$P113]
    unless_null $P1648, vivify_720
    $P1648 = root_new ['parrot';'Hash']
    set $P1647[$P113], $P1648
  vivify_720:
    set $P1648[$P111], $P109
.annotate 'line', 1158
    .return ($P109)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1634"  :anon :subid("174_1309859073.622") :outer("173_1309859073.622")
    .param pmc param_1637
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1153
    new $P108, "Undef"
    set $P1636, $P108
    .lex "$value", $P1636
    .lex "$_", param_1637
    find_lex $P109, "$_"
    unless_null $P109, vivify_723
    new $P109, "Undef"
  vivify_723:
    set $S100, $P109
    find_lex $P1638, "%source"
    unless_null $P1638, vivify_724
    $P1638 = root_new ['parrot';'Hash']
  vivify_724:
    set $P110, $P1638[$S100]
    unless_null $P110, vivify_725
    new $P110, "Undef"
  vivify_725:
    store_lex "$value", $P110
.annotate 'line', 1154
    find_lex $P109, "$value"
    unless_null $P109, vivify_726
    new $P109, "Undef"
  vivify_726:
    find_lex $P110, "$_"
    unless_null $P110, vivify_727
    new $P110, "Undef"
  vivify_727:
    find_lex $P111, "$value"
    unless_null $P111, vivify_728
    new $P111, "Undef"
  vivify_728:
    $P112 = "value_type"($P111)
    find_lex $P1639, "%exports"
    unless_null $P1639, vivify_729
    $P1639 = root_new ['parrot';'Hash']
    store_lex "%exports", $P1639
  vivify_729:
    set $P1640, $P1639[$P112]
    unless_null $P1640, vivify_730
    $P1640 = root_new ['parrot';'Hash']
    set $P1639[$P112], $P1640
  vivify_730:
    set $P1640[$P110], $P109
.annotate 'line', 1152
    .return ($P109)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "get_module" :anon :subid("176_1309859073.622") :outer("167_1309859073.622")
    .param pmc param_1652
    .param pmc param_1653
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1166
    .lex "self", param_1652
    .lex "$name", param_1653
.annotate 'line', 1167
    $P1655 = root_new ['parrot';'ResizablePMCArray']
    set $P1654, $P1655
    .lex "@name", $P1654
    find_lex $P104, "self"
    find_lex $P105, "$name"
    unless_null $P105, vivify_732
    new $P105, "Undef"
  vivify_732:
    $P106 = $P104."parse_name"($P105)
    store_lex "@name", $P106
.annotate 'line', 1168
    find_lex $P1656, "@name"
    unless_null $P1656, vivify_733
    $P1656 = root_new ['parrot';'ResizablePMCArray']
  vivify_733:
    find_lex $P104, "self"
    find_lex $P105, "$?CLASS"
    getattribute $P106, $P104, $P105, "$!language"
    unless_null $P106, vivify_734
    new $P106, "Undef"
  vivify_734:
    set $S100, $P106
    downcase $S101, $S100
    $P1656."unshift"($S101)
.annotate 'line', 1169
    find_lex $P1657, "@name"
    unless_null $P1657, vivify_735
    $P1657 = root_new ['parrot';'ResizablePMCArray']
  vivify_735:
    get_root_namespace $P104, $P1657
.annotate 'line', 1166
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "language" :anon :subid("177_1309859073.622") :outer("167_1309859073.622")
    .param pmc param_1659
    .param pmc param_1660 :optional
    .param int has_param_1660 :opt_flag
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1172
    .lex "self", param_1659
    if has_param_1660, optparam_736
    new $P104, "Undef"
    set param_1660, $P104
  optparam_736:
    .lex "$name", param_1660
.annotate 'line', 1173
    find_lex $P105, "$name"
    unless_null $P105, vivify_737
    new $P105, "Undef"
  vivify_737:
    unless $P105, if_1661_end
.annotate 'line', 1174
    find_lex $P106, "$name"
    unless_null $P106, vivify_738
    new $P106, "Undef"
  vivify_738:
    find_lex $P108, "self"
    find_lex $P109, "$?CLASS"
    setattribute $P108, $P109, "$!language", $P106
.annotate 'line', 1175
    find_lex $P106, "$name"
    unless_null $P106, vivify_739
    new $P106, "Undef"
  vivify_739:
    set $S100, $P106
    find_lex $P108, "self"
    compreg $S100, $P108
  if_1661_end:
.annotate 'line', 1172
    find_lex $P105, "self"
    find_lex $P106, "$?CLASS"
    getattribute $P108, $P105, $P106, "$!language"
    unless_null $P108, vivify_740
    new $P108, "Undef"
  vivify_740:
    .return ($P108)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "compiler" :anon :subid("178_1309859073.622") :outer("167_1309859073.622")
    .param pmc param_1663
    .param pmc param_1664
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1180
    .lex "self", param_1663
    .lex "$name", param_1664
.annotate 'line', 1181
    find_lex $P104, "$name"
    unless_null $P104, vivify_741
    new $P104, "Undef"
  vivify_741:
    set $S100, $P104
    compreg $P105, $S100
.annotate 'line', 1180
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "config" :anon :subid("179_1309859073.622") :outer("167_1309859073.622")
    .param pmc param_1666
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1184
    .lex "self", param_1666
    find_lex $P104, "self"
    find_lex $P105, "$?CLASS"
    getattribute $P1667, $P104, $P105, "%!config"
    unless_null $P1667, vivify_742
    $P1667 = root_new ['parrot';'Hash']
  vivify_742:
    .return ($P1667)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "load_module" :anon :subid("180_1309859073.622") :outer("167_1309859073.622")
    .param pmc param_1669
    .param pmc param_1670
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1186
    .const 'Sub' $P1674 = "181_1309859073.622" 
    capture_lex $P1674
    .lex "self", param_1669
    .lex "$name", param_1670
.annotate 'line', 1187
    new $P104, "Undef"
    set $P1671, $P104
    .lex "$base", $P1671
.annotate 'line', 1188
    new $P105, "Undef"
    set $P1672, $P105
    .lex "$loaded", $P1672
.annotate 'line', 1187
    find_lex $P106, "self"
    find_lex $P108, "$name"
    unless_null $P108, vivify_743
    new $P108, "Undef"
  vivify_743:
    $P109 = $P106."parse_name"($P108)
    join $S100, "/", $P109
    new $P110, 'String'
    set $P110, $S100
    store_lex "$base", $P110
.annotate 'line', 1188
    new $P106, "Integer"
    assign $P106, 0
    store_lex "$loaded", $P106
.annotate 'line', 1189
    .const 'Sub' $P1674 = "181_1309859073.622" 
    capture_lex $P1674
    $P1674()
.annotate 'line', 1190
    find_lex $P106, "$loaded"
    unless_null $P106, vivify_745
    new $P106, "Undef"
  vivify_745:
    if $P106, unless_1682_end
    find_lex $P108, "$base"
    unless_null $P108, vivify_746
    new $P108, "Undef"
  vivify_746:
    concat $P109, $P108, ".pir"
    set $S100, $P109
    load_bytecode $S100
    new $P108, "Integer"
    assign $P108, 1
    store_lex "$loaded", $P108
  unless_1682_end:
.annotate 'line', 1191
    find_lex $P106, "self"
    find_lex $P108, "$name"
    unless_null $P108, vivify_747
    new $P108, "Undef"
  vivify_747:
    $P109 = $P106."get_module"($P108)
.annotate 'line', 1186
    .return ($P109)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1673"  :anon :subid("181_1309859073.622") :outer("180_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1189
    new $P1677, 'ExceptionHandler'
    set_label $P1677, control_1676
    $P1677."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P1677
    find_lex $P106, "$base"
    unless_null $P106, vivify_744
    new $P106, "Undef"
  vivify_744:
    concat $P108, $P106, ".pbc"
    set $S100, $P108
    load_bytecode $S100
    new $P106, "Integer"
    assign $P106, 1
    store_lex "$loaded", $P106
    pop_eh 
    goto skip_handler_1675
  control_1676:
    .local pmc exception 
    .get_results (exception) 
    new $P1680, 'Integer'
    set $P1680, 1
    set exception["handled"], $P1680
    set $I1681, exception["handled"]
    ne $I1681, 1, nothandled_1679
  handled_1678:
    .return (exception)
  nothandled_1679:
    rethrow exception
  skip_handler_1675:
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "import" :anon :subid("182_1309859073.622") :outer("167_1309859073.622")
    .param pmc param_1684
    .param pmc param_1685
    .param pmc param_1686
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1194
    .const 'Sub' $P1689 = "183_1309859073.622" 
    capture_lex $P1689
    .lex "self", param_1684
    .lex "$target", param_1685
    .lex "%exports", param_1686
.annotate 'line', 1195
    find_lex $P1687, "%exports"
    unless_null $P1687, vivify_748
    $P1687 = root_new ['parrot';'Hash']
  vivify_748:
    defined $I100, $P1687
    unless $I100, for_undef_749
    iter $P104, $P1687
    new $P109, 'ExceptionHandler'
    set_label $P109, loop1712_handler
    $P109."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P109
  loop1712_test:
    unless $P104, loop1712_done
    shift $P105, $P104
  loop1712_redo:
    .const 'Sub' $P1689 = "183_1309859073.622" 
    capture_lex $P1689
    $P1689($P105)
  loop1712_next:
    goto loop1712_test
  loop1712_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P110, exception, 'type'
    eq $P110, .CONTROL_LOOP_NEXT, loop1712_next
    eq $P110, .CONTROL_LOOP_REDO, loop1712_redo
  loop1712_done:
    pop_eh 
  for_undef_749:
.annotate 'line', 1194
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1688"  :anon :subid("183_1309859073.622") :outer("182_1309859073.622")
    .param pmc param_1693
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1195
    .const 'Sub' $P1708 = "186_1309859073.622" 
    capture_lex $P1708
    .const 'Sub' $P1703 = "185_1309859073.622" 
    capture_lex $P1703
    .const 'Sub' $P1697 = "184_1309859073.622" 
    capture_lex $P1697
.annotate 'line', 1196
    new $P106, "Undef"
    set $P1690, $P106
    .lex "$type", $P1690
.annotate 'line', 1197
    $P1692 = root_new ['parrot';'Hash']
    set $P1691, $P1692
    .lex "%items", $P1691
    .lex "$_", param_1693
.annotate 'line', 1196
    find_lex $P108, "$_"
    unless_null $P108, vivify_750
    new $P108, "Undef"
  vivify_750:
    $P109 = $P108."key"()
    store_lex "$type", $P109
.annotate 'line', 1197
    find_lex $P108, "$_"
    unless_null $P108, vivify_751
    new $P108, "Undef"
  vivify_751:
    $P109 = $P108."value"()
    store_lex "%items", $P109
.annotate 'line', 1198
    find_lex $P109, "self"
    new $P110, 'String'
    set $P110, "import_"
    find_lex $P111, "$type"
    unless_null $P111, vivify_752
    new $P111, "Undef"
  vivify_752:
    concat $P112, $P110, $P111
    set $S100, $P112
    can $I101, $P109, $S100
    if $I101, if_1694
.annotate 'line', 1201
    find_lex $P115, "$target"
    unless_null $P115, vivify_753
    new $P115, "Undef"
  vivify_753:
    new $P116, 'String'
    set $P116, "add_"
    find_lex $P117, "$type"
    unless_null $P117, vivify_754
    new $P117, "Undef"
  vivify_754:
    concat $P118, $P116, $P117
    set $S101, $P118
    can $I102, $P115, $S101
    if $I102, if_1700
.annotate 'line', 1205
    find_lex $P1706, "%items"
    unless_null $P1706, vivify_755
    $P1706 = root_new ['parrot';'Hash']
  vivify_755:
    defined $I103, $P1706
    unless $I103, for_undef_756
    iter $P120, $P1706
    new $P122, 'ExceptionHandler'
    set_label $P122, loop1711_handler
    $P122."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P122
  loop1711_test:
    unless $P120, loop1711_done
    shift $P121, $P120
  loop1711_redo:
    .const 'Sub' $P1708 = "186_1309859073.622" 
    capture_lex $P1708
    $P1708($P121)
  loop1711_next:
    goto loop1711_test
  loop1711_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P124, exception, 'type'
    eq $P124, .CONTROL_LOOP_NEXT, loop1711_next
    eq $P124, .CONTROL_LOOP_REDO, loop1711_redo
  loop1711_done:
    pop_eh 
  for_undef_756:
.annotate 'line', 1204
    set $P114, $P120
.annotate 'line', 1201
    goto if_1700_end
  if_1700:
.annotate 'line', 1202
    find_lex $P1701, "%items"
    unless_null $P1701, vivify_760
    $P1701 = root_new ['parrot';'Hash']
  vivify_760:
    defined $I103, $P1701
    unless $I103, for_undef_761
    iter $P119, $P1701
    new $P121, 'ExceptionHandler'
    set_label $P121, loop1705_handler
    $P121."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P121
  loop1705_test:
    unless $P119, loop1705_done
    shift $P120, $P119
  loop1705_redo:
    .const 'Sub' $P1703 = "185_1309859073.622" 
    capture_lex $P1703
    $P1703($P120)
  loop1705_next:
    goto loop1705_test
  loop1705_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P122, exception, 'type'
    eq $P122, .CONTROL_LOOP_NEXT, loop1705_next
    eq $P122, .CONTROL_LOOP_REDO, loop1705_redo
  loop1705_done:
    pop_eh 
  for_undef_761:
.annotate 'line', 1201
    set $P114, $P119
  if_1700_end:
    set $P108, $P114
.annotate 'line', 1198
    goto if_1694_end
  if_1694:
.annotate 'line', 1199
    find_lex $P1695, "%items"
    unless_null $P1695, vivify_766
    $P1695 = root_new ['parrot';'Hash']
  vivify_766:
    defined $I102, $P1695
    unless $I102, for_undef_767
    iter $P113, $P1695
    new $P115, 'ExceptionHandler'
    set_label $P115, loop1699_handler
    $P115."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P115
  loop1699_test:
    unless $P113, loop1699_done
    shift $P114, $P113
  loop1699_redo:
    .const 'Sub' $P1697 = "184_1309859073.622" 
    capture_lex $P1697
    $P1697($P114)
  loop1699_next:
    goto loop1699_test
  loop1699_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P116, exception, 'type'
    eq $P116, .CONTROL_LOOP_NEXT, loop1699_next
    eq $P116, .CONTROL_LOOP_REDO, loop1699_redo
  loop1699_done:
    pop_eh 
  for_undef_767:
.annotate 'line', 1198
    set $P108, $P113
  if_1694_end:
.annotate 'line', 1195
    .return ($P108)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1707"  :anon :subid("186_1309859073.622") :outer("183_1309859073.622")
    .param pmc param_1709
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1205
    .lex "$_", param_1709
    find_lex $P122, "$_"
    unless_null $P122, vivify_757
    new $P122, "Undef"
  vivify_757:
    $P123 = $P122."value"()
    find_lex $P124, "$_"
    unless_null $P124, vivify_758
    new $P124, "Undef"
  vivify_758:
    $P125 = $P124."key"()
    set $S102, $P125
    find_lex $P1710, "$target"
    unless_null $P1710, vivify_759
    $P1710 = root_new ['parrot';'Hash']
    store_lex "$target", $P1710
  vivify_759:
    set $P1710[$S102], $P123
    .return ($P123)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1702"  :anon :subid("185_1309859073.622") :outer("183_1309859073.622")
    .param pmc param_1704
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1202
    .lex "$_", param_1704
    find_lex $P121, "$target"
    unless_null $P121, vivify_762
    new $P121, "Undef"
  vivify_762:
    find_lex $P122, "$_"
    unless_null $P122, vivify_763
    new $P122, "Undef"
  vivify_763:
    $P123 = $P122."key"()
    find_lex $P124, "$_"
    unless_null $P124, vivify_764
    new $P124, "Undef"
  vivify_764:
    $P125 = $P124."value"()
    new $P126, 'String'
    set $P126, "add_"
    find_lex $P127, "$type"
    unless_null $P127, vivify_765
    new $P127, "Undef"
  vivify_765:
    concat $P128, $P126, $P127
    set $S102, $P128
    $P129 = $P121.$S102($P123, $P125)
    .return ($P129)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1696"  :anon :subid("184_1309859073.622") :outer("183_1309859073.622")
    .param pmc param_1698
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1199
    .lex "$_", param_1698
    find_lex $P115, "self"
    find_lex $P116, "$target"
    unless_null $P116, vivify_768
    new $P116, "Undef"
  vivify_768:
    find_lex $P117, "$_"
    unless_null $P117, vivify_769
    new $P117, "Undef"
  vivify_769:
    $P118 = $P117."key"()
    find_lex $P119, "$_"
    unless_null $P119, vivify_770
    new $P119, "Undef"
  vivify_770:
    $P120 = $P119."value"()
    new $P121, 'String'
    set $P121, "import_"
    find_lex $P122, "$type"
    unless_null $P122, vivify_771
    new $P122, "Undef"
  vivify_771:
    concat $P123, $P121, $P122
    set $S101, $P123
    $P124 = $P115.$S101($P116, $P118, $P120)
    .return ($P124)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "autoprint" :anon :subid("187_1309859073.622") :outer("167_1309859073.622")
    .param pmc param_1714
    .param pmc param_1715
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1210
    .lex "self", param_1714
    .lex "$value", param_1715
.annotate 'line', 1212
    getinterp $P105
    $P106 = $P105."stdout_handle"()
    $N100 = $P106."tell"()
    find_dynamic_lex $P110, "$*AUTOPRINTPOS"
    unless_null $P110, vivify_772
    get_hll_global $P108, "GLOBAL"
    get_who $P109, $P108
    set $P110, $P109["$AUTOPRINTPOS"]
    unless_null $P110, vivify_773
    die "Contextual $*AUTOPRINTPOS not found"
  vivify_773:
  vivify_772:
    set $N101, $P110
    isgt $I100, $N100, $N101
    unless $I100, unless_1716
    new $P104, 'Integer'
    set $P104, $I100
    goto unless_1716_end
  unless_1716:
.annotate 'line', 1211
    find_lex $P111, "$value"
    unless_null $P111, vivify_774
    new $P111, "Undef"
  vivify_774:
    set $S100, $P111
    say $S100
  unless_1716_end:
.annotate 'line', 1210
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "interactive" :anon :subid("188_1309859073.622") :outer("167_1309859073.622")
    .param pmc param_1718
    .param pmc param_1719 :slurpy :named
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1215
    .const 'Sub' $P1729 = "189_1309859073.622" 
    capture_lex $P1729
    .lex "self", param_1718
    .lex "%adverbs", param_1719
.annotate 'line', 1216
    new $P104, "Undef"
    set $P1720, $P104
    .lex "$target", $P1720
.annotate 'line', 1220
    new $P105, "Undef"
    set $P1721, $P105
    .lex "$stdin", $P1721
.annotate 'line', 1221
    new $P106, "Undef"
    set $P1722, $P106
    .lex "$encoding", $P1722
.annotate 'line', 1226
    new $P108, "Undef"
    set $P1723, $P108
    .lex "$save_ctx", $P1723
.annotate 'line', 1216
    find_lex $P1724, "%adverbs"
    unless_null $P1724, vivify_775
    $P1724 = root_new ['parrot';'Hash']
  vivify_775:
    set $P109, $P1724["target"]
    unless_null $P109, vivify_776
    new $P109, "Undef"
  vivify_776:
    set $S100, $P109
    downcase $S101, $S100
    new $P110, 'String'
    set $P110, $S101
    store_lex "$target", $P110
.annotate 'line', 1218
    getinterp $P109
    $P110 = $P109."stderr_handle"()
    find_lex $P111, "self"
    $S100 = $P111."commandline_banner"()
    print $P110, $S100
.annotate 'line', 1220
    getinterp $P109
    $P110 = $P109."stdin_handle"()
    store_lex "$stdin", $P110
.annotate 'line', 1221
    find_lex $P1725, "%adverbs"
    unless_null $P1725, vivify_777
    $P1725 = root_new ['parrot';'Hash']
  vivify_777:
    set $P109, $P1725["encoding"]
    unless_null $P109, vivify_778
    new $P109, "Undef"
  vivify_778:
    set $S100, $P109
    new $P110, 'String'
    set $P110, $S100
    store_lex "$encoding", $P110
.annotate 'line', 1222
    find_lex $P110, "$encoding"
    unless_null $P110, vivify_779
    new $P110, "Undef"
  vivify_779:
    if $P110, if_1727
    set $P109, $P110
    goto if_1727_end
  if_1727:
    find_lex $P111, "$encoding"
    unless_null $P111, vivify_780
    new $P111, "Undef"
  vivify_780:
    set $S100, $P111
    isne $I100, $S100, "fixed_8"
    new $P109, 'Integer'
    set $P109, $I100
  if_1727_end:
    unless $P109, if_1726_end
.annotate 'line', 1223
    find_lex $P112, "$stdin"
    unless_null $P112, vivify_781
    new $P112, "Undef"
  vivify_781:
    find_lex $P113, "$encoding"
    unless_null $P113, vivify_782
    new $P113, "Undef"
  vivify_782:
    $P112."encoding"($P113)
  if_1726_end:
.annotate 'line', 1215
    find_lex $P109, "$save_ctx"
    unless_null $P109, vivify_783
    new $P109, "Undef"
  vivify_783:
.annotate 'line', 1227
    new $P116, 'ExceptionHandler'
    set_label $P116, loop1778_handler
    $P116."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P116
  loop1778_test:
    new $P109, "Integer"
    assign $P109, 1
    unless $P109, loop1778_done
  loop1778_redo:
    .const 'Sub' $P1729 = "189_1309859073.622" 
    capture_lex $P1729
    $P1729()
  loop1778_next:
    goto loop1778_test
  loop1778_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P117, exception, 'type'
    eq $P117, .CONTROL_LOOP_NEXT, loop1778_next
    eq $P117, .CONTROL_LOOP_REDO, loop1778_redo
  loop1778_done:
    pop_eh 
.annotate 'line', 1215
    .return ($P109)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1728"  :anon :subid("189_1309859073.622") :outer("188_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1227
    .const 'Sub' $P1743 = "190_1309859073.622" 
    capture_lex $P1743
.annotate 'line', 1230
    new $P110, "Undef"
    set $P1730, $P110
    .lex "$prompt", $P1730
.annotate 'line', 1231
    new $P111, "Undef"
    set $P1731, $P111
    .lex "$code", $P1731
.annotate 'line', 1240
    new $P112, "Undef"
    set $P1732, $P112
    .lex "$*AUTOPRINTPOS", $P1732
.annotate 'line', 1241
    new $P113, "Undef"
    set $P1733, $P113
    .lex "$*CTXSAVE", $P1733
.annotate 'line', 1242
    new $P114, "Undef"
    set $P1734, $P114
    .lex "$*MAIN_CTX", $P1734
.annotate 'line', 1228
    find_lex $P115, "$stdin"
    unless_null $P115, vivify_784
    new $P115, "Undef"
  vivify_784:
    if $P115, unless_1735_end
    die 0, .CONTROL_LOOP_LAST
  unless_1735_end:
.annotate 'line', 1230
    find_lex $P115, "self"
    $P116 = $P115."commandline_prompt"()
    set $P1736, $P116
    defined $I1738, $P1736
    if $I1738, default_1737
    new $P117, "String"
    assign $P117, "> "
    set $P1736, $P117
  default_1737:
    store_lex "$prompt", $P1736
.annotate 'line', 1231
    find_lex $P115, "$stdin"
    unless_null $P115, vivify_785
    new $P115, "Undef"
  vivify_785:
    find_lex $P116, "$prompt"
    unless_null $P116, vivify_786
    new $P116, "Undef"
  vivify_786:
    set $S100, $P116
    $P117 = $P115."readline_interactive"($S100)
    store_lex "$code", $P117
.annotate 'line', 1233
    find_lex $P115, "$code"
    unless_null $P115, vivify_787
    new $P115, "Undef"
  vivify_787:
    isnull $I100, $P115
    unless $I100, if_1739_end
    die 0, .CONTROL_LOOP_LAST
  if_1739_end:
.annotate 'line', 1234
    find_lex $P115, "$code"
    unless_null $P115, vivify_788
    new $P115, "Undef"
  vivify_788:
    defined $I100, $P115
    if $I100, unless_1740_end
.annotate 'line', 1235
    print "\n"
.annotate 'line', 1236
    die 0, .CONTROL_LOOP_LAST
  unless_1740_end:
.annotate 'line', 1240
    getinterp $P115
    $P116 = $P115."stdout_handle"()
    $P117 = $P116."tell"()
    store_lex "$*AUTOPRINTPOS", $P117
.annotate 'line', 1241
    find_lex $P115, "self"
    store_lex "$*CTXSAVE", $P115
.annotate 'line', 1227
    find_lex $P117, "$*MAIN_CTX"
    unless_null $P117, vivify_789
    get_hll_global $P115, "GLOBAL"
    get_who $P116, $P115
    set $P117, $P116["$MAIN_CTX"]
    unless_null $P117, vivify_790
    die "Contextual $*MAIN_CTX not found"
  vivify_790:
  vivify_789:
.annotate 'line', 1244
    find_lex $P116, "$code"
    unless_null $P116, vivify_791
    new $P116, "Undef"
  vivify_791:
    if $P116, if_1741
    set $P115, $P116
    goto if_1741_end
  if_1741:
    .const 'Sub' $P1743 = "190_1309859073.622" 
    capture_lex $P1743
    $P119 = $P1743()
    set $P115, $P119
  if_1741_end:
.annotate 'line', 1227
    .return ($P115)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1742"  :anon :subid("190_1309859073.622") :outer("189_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1244
    .const 'Sub' $P1767 = "193_1309859073.622" 
    capture_lex $P1767
    .const 'Sub' $P1746 = "191_1309859073.622" 
    capture_lex $P1746
.annotate 'line', 1246
    new $P117, "Undef"
    set $P1744, $P117
    .lex "$output", $P1744
.annotate 'line', 1245
    find_lex $P118, "$code"
    unless_null $P118, vivify_792
    new $P118, "Undef"
  vivify_792:
    concat $P119, $P118, "\n"
    store_lex "$code", $P119
.annotate 'line', 1244
    find_lex $P118, "$output"
    unless_null $P118, vivify_793
    new $P118, "Undef"
  vivify_793:
.annotate 'line', 1247
    .const 'Sub' $P1746 = "191_1309859073.622" 
    capture_lex $P1746
    $P1746()
.annotate 'line', 1254
    find_dynamic_lex $P120, "$*MAIN_CTX"
    unless_null $P120, vivify_798
    get_hll_global $P118, "GLOBAL"
    get_who $P119, $P118
    set $P120, $P119["$MAIN_CTX"]
    unless_null $P120, vivify_799
    die "Contextual $*MAIN_CTX not found"
  vivify_799:
  vivify_798:
    defined $I100, $P120
    unless $I100, if_1765_end
    .const 'Sub' $P1767 = "193_1309859073.622" 
    capture_lex $P1767
    $P1767()
  if_1765_end:
.annotate 'line', 1262
    find_lex $P118, "$output"
    unless_null $P118, vivify_809
    new $P118, "Undef"
  vivify_809:
    isnull $I100, $P118
    unless $I100, if_1774_end
    die 0, .CONTROL_LOOP_NEXT
  if_1774_end:
.annotate 'line', 1264
    find_lex $P119, "$target"
    unless_null $P119, vivify_810
    new $P119, "Undef"
  vivify_810:
    isfalse $I100, $P119
    if $I100, if_1775
.annotate 'line', 1266
    find_lex $P121, "$target"
    unless_null $P121, vivify_811
    new $P121, "Undef"
  vivify_811:
    set $S100, $P121
    iseq $I101, $S100, "pir"
    if $I101, if_1776
.annotate 'line', 1269
    find_lex $P123, "self"
    find_lex $P124, "$output"
    unless_null $P124, vivify_812
    new $P124, "Undef"
  vivify_812:
    find_lex $P125, "$target"
    unless_null $P125, vivify_813
    new $P125, "Undef"
  vivify_813:
    find_lex $P1777, "%adverbs"
    unless_null $P1777, vivify_814
    $P1777 = root_new ['parrot';'Hash']
  vivify_814:
    $P126 = $P123."dumper"($P124, $P125, $P1777 :flat)
.annotate 'line', 1268
    set $P120, $P126
.annotate 'line', 1266
    goto if_1776_end
  if_1776:
.annotate 'line', 1267
    find_lex $P123, "$output"
    unless_null $P123, vivify_815
    new $P123, "Undef"
  vivify_815:
    say $P123
  if_1776_end:
.annotate 'line', 1266
    set $P118, $P120
.annotate 'line', 1264
    goto if_1775_end
  if_1775:
.annotate 'line', 1265
    find_lex $P120, "self"
    find_lex $P121, "$output"
    unless_null $P121, vivify_816
    new $P121, "Undef"
  vivify_816:
    $P122 = $P120."autoprint"($P121)
.annotate 'line', 1264
    set $P118, $P122
  if_1775_end:
.annotate 'line', 1244
    .return ($P118)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1745"  :anon :subid("191_1309859073.622") :outer("190_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1247
    .const 'Sub' $P1754 = "192_1309859073.622" 
    capture_lex $P1754
    new $P1750, 'ExceptionHandler'
    set_label $P1750, control_1749
    $P1750."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P1750
.annotate 'line', 1248
    find_lex $P118, "self"
    find_lex $P119, "$code"
    unless_null $P119, vivify_794
    new $P119, "Undef"
  vivify_794:
    find_lex $P120, "$save_ctx"
    unless_null $P120, vivify_795
    new $P120, "Undef"
  vivify_795:
    find_lex $P1747, "%adverbs"
    unless_null $P1747, vivify_796
    $P1747 = root_new ['parrot';'Hash']
  vivify_796:
    $P121 = $P118."eval"($P119, $P1747 :flat, $P120 :named("outer_ctx"))
    store_lex "$output", $P121
.annotate 'line', 1247
    pop_eh 
    goto skip_handler_1748
  control_1749:
.annotate 'line', 1249
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P1754 = "192_1309859073.622" 
    newclosure $P1762, $P1754
    $P1762(exception)
    new $P1763, 'Integer'
    set $P1763, 1
    set exception["handled"], $P1763
    set $I1764, exception["handled"]
    ne $I1764, 1, nothandled_1752
  handled_1751:
    .return (exception)
  nothandled_1752:
    rethrow exception
  skip_handler_1748:
.annotate 'line', 1247
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1753"  :anon :subid("192_1309859073.622") :outer("191_1309859073.622")
    .param pmc param_1755
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1249
    .lex "$_", param_1755
    find_lex $P1756, "$_"
    set $P1757, $P1756
    .lex "$!", $P1757
.annotate 'line', 1250
    find_lex $P1758, "$!"
    unless_null $P1758, vivify_797
    new $P1758, "Undef"
  vivify_797:
    set $S1759, $P1758
    new $P1760, 'String'
    set $P1760, $S1759
    concat $P1761, $P1760, "\n"
    print $P1761
.annotate 'line', 1251
    die 0, .CONTROL_LOOP_NEXT
.annotate 'line', 1249
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1766"  :anon :subid("193_1309859073.622") :outer("190_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1254
    .const 'Sub' $P1770 = "194_1309859073.622" 
    capture_lex $P1770
    find_lex $P121, "$?PACKAGE"
    get_who $P122, $P121
    set $P123, $P122["$interactive_ctx"]
    unless_null $P123, vivify_800
    new $P123, "Undef"
  vivify_800:
    find_lex $P121, "$?PACKAGE"
    get_who $P122, $P121
    set $P1768, $P122["%interactive_pad"]
    unless_null $P1768, vivify_801
    $P1768 = root_new ['parrot';'Hash']
  vivify_801:
.annotate 'line', 1257
    find_dynamic_lex $P124, "$*MAIN_CTX"
    unless_null $P124, vivify_802
    get_hll_global $P122, "GLOBAL"
    get_who $P123, $P122
    set $P124, $P123["$MAIN_CTX"]
    unless_null $P124, vivify_803
    die "Contextual $*MAIN_CTX not found"
  vivify_803:
  vivify_802:
    $P125 = $P124."lexpad_full"()
    defined $I101, $P125
    unless $I101, for_undef_804
    iter $P121, $P125
    new $P127, 'ExceptionHandler'
    set_label $P127, loop1773_handler
    $P127."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P127
  loop1773_test:
    unless $P121, loop1773_done
    shift $P126, $P121
  loop1773_redo:
    .const 'Sub' $P1770 = "194_1309859073.622" 
    capture_lex $P1770
    $P1770($P126)
  loop1773_next:
    goto loop1773_test
  loop1773_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P129, exception, 'type'
    eq $P129, .CONTROL_LOOP_NEXT, loop1773_next
    eq $P129, .CONTROL_LOOP_REDO, loop1773_redo
  loop1773_done:
    pop_eh 
  for_undef_804:
.annotate 'line', 1260
    find_lex $P121, "$?PACKAGE"
    get_who $P122, $P121
    set $P123, $P122["$interactive_ctx"]
    unless_null $P123, vivify_808
    new $P123, "Undef"
  vivify_808:
    store_lex "$save_ctx", $P123
.annotate 'line', 1254
    .return ($P123)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1769"  :anon :subid("194_1309859073.622") :outer("193_1309859073.622")
    .param pmc param_1771
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1257
    .lex "$_", param_1771
.annotate 'line', 1258
    find_lex $P127, "$_"
    unless_null $P127, vivify_805
    new $P127, "Undef"
  vivify_805:
    $P128 = $P127."value"()
    find_lex $P129, "$_"
    unless_null $P129, vivify_806
    new $P129, "Undef"
  vivify_806:
    $P130 = $P129."key"()
    find_lex $P131, "$?PACKAGE"
    get_who $P132, $P131
    set $P1772, $P132["%interactive_pad"]
    unless_null $P1772, vivify_807
    $P1772 = root_new ['parrot';'Hash']
    set $P132["%interactive_pad"], $P1772
  vivify_807:
    set $P1772[$P130], $P128
.annotate 'line', 1257
    .return ($P128)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "eval" :anon :subid("195_1309859073.622") :outer("167_1309859073.622")
    .param pmc param_1780
    .param pmc param_1781
    .param pmc param_1782 :slurpy
    .param pmc param_1783 :slurpy :named
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1275
    .const 'Sub' $P1790 = "196_1309859073.622" 
    capture_lex $P1790
    .lex "self", param_1780
    .lex "$code", param_1781
    .lex "@args", param_1782
    .lex "%adverbs", param_1783
.annotate 'line', 1276
    new $P104, "Undef"
    set $P1784, $P104
    .lex "$output", $P1784
.annotate 'line', 1275
    find_lex $P105, "$output"
    unless_null $P105, vivify_817
    new $P105, "Undef"
  vivify_817:
.annotate 'line', 1277
    find_lex $P105, "self"
    find_lex $P106, "$code"
    unless_null $P106, vivify_818
    new $P106, "Undef"
  vivify_818:
    find_lex $P1785, "%adverbs"
    unless_null $P1785, vivify_819
    $P1785 = root_new ['parrot';'Hash']
  vivify_819:
    $P108 = $P105."compile"($P106, $P1785 :flat)
    store_lex "$output", $P108
.annotate 'line', 1279
    find_lex $P106, "$output"
    unless_null $P106, vivify_820
    new $P106, "Undef"
  vivify_820:
    isa $I100, $P106, "String"
    new $P108, 'Integer'
    set $P108, $I100
    isfalse $I101, $P108
    if $I101, if_1787
    new $P105, 'Integer'
    set $P105, $I101
    goto if_1787_end
  if_1787:
.annotate 'line', 1280
    find_lex $P1788, "%adverbs"
    unless_null $P1788, vivify_821
    $P1788 = root_new ['parrot';'Hash']
  vivify_821:
    set $P109, $P1788["target"]
    unless_null $P109, vivify_822
    new $P109, "Undef"
  vivify_822:
    set $S100, $P109
    iseq $I102, $S100, ""
    new $P105, 'Integer'
    set $P105, $I102
  if_1787_end:
    unless $P105, if_1786_end
    .const 'Sub' $P1790 = "196_1309859073.622" 
    capture_lex $P1790
    $P1790()
  if_1786_end:
.annotate 'line', 1275
    find_lex $P105, "$output"
    unless_null $P105, vivify_833
    new $P105, "Undef"
  vivify_833:
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1789"  :anon :subid("196_1309859073.622") :outer("195_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1281
    new $P110, "Undef"
    set $P1791, $P110
    .lex "$outer_ctx", $P1791
    find_lex $P1792, "%adverbs"
    unless_null $P1792, vivify_823
    $P1792 = root_new ['parrot';'Hash']
  vivify_823:
    set $P111, $P1792["outer_ctx"]
    unless_null $P111, vivify_824
    new $P111, "Undef"
  vivify_824:
    store_lex "$outer_ctx", $P111
.annotate 'line', 1282
    find_lex $P111, "$outer_ctx"
    unless_null $P111, vivify_825
    new $P111, "Undef"
  vivify_825:
    defined $I103, $P111
    unless $I103, if_1793_end
.annotate 'line', 1283
    find_lex $P1794, "$output"
    unless_null $P1794, vivify_826
    $P1794 = root_new ['parrot';'ResizablePMCArray']
  vivify_826:
    set $P112, $P1794[0]
    unless_null $P112, vivify_827
    new $P112, "Undef"
  vivify_827:
    find_lex $P113, "$outer_ctx"
    unless_null $P113, vivify_828
    new $P113, "Undef"
  vivify_828:
    $P112."set_outer_ctx"($P113)
  if_1793_end:
.annotate 'line', 1286
    find_lex $P1795, "%adverbs"
    unless_null $P1795, vivify_829
    $P1795 = root_new ['parrot';'Hash']
  vivify_829:
    set $P111, $P1795["trace"]
    unless_null $P111, vivify_830
    new $P111, "Undef"
  vivify_830:
    set $I103, $P111
    trace $I103
.annotate 'line', 1287
    find_lex $P111, "$output"
    unless_null $P111, vivify_831
    new $P111, "Undef"
  vivify_831:
    find_lex $P1796, "@args"
    unless_null $P1796, vivify_832
    $P1796 = root_new ['parrot';'ResizablePMCArray']
  vivify_832:
    $P112 = $P111($P1796 :flat)
    store_lex "$output", $P112
.annotate 'line', 1288
    trace 0
.annotate 'line', 1280
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "ctxsave" :anon :subid("197_1309859073.622") :outer("167_1309859073.622")
    .param pmc param_1798
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1294
    .lex "self", param_1798
.annotate 'line', 1296

                $P0 = getinterp
                $P1799 = $P0['context';1]
            
    store_dynamic_lex "$*MAIN_CTX", $P1799
.annotate 'line', 1300
    new $P104, "Integer"
    assign $P104, 0
    store_dynamic_lex "$*CTXSAVE", $P104
.annotate 'line', 1294
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "panic" :anon :subid("198_1309859073.622") :outer("167_1309859073.622")
    .param pmc param_1801
    .param pmc param_1802 :slurpy
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1303
    .lex "self", param_1801
    .lex "@args", param_1802
.annotate 'line', 1304
    find_lex $P1803, "@args"
    unless_null $P1803, vivify_834
    $P1803 = root_new ['parrot';'ResizablePMCArray']
  vivify_834:
    join $S100, "", $P1803
    die $S100
.annotate 'line', 1303
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "stages" :anon :subid("199_1309859073.622") :outer("167_1309859073.622")
    .param pmc param_1805
    .param pmc param_1806 :optional
    .param int has_param_1806 :opt_flag
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1307
    .lex "self", param_1805
    if has_param_1806, optparam_835
    $P1807 = root_new ['parrot';'ResizablePMCArray']
    set param_1806, $P1807
  optparam_835:
    .lex "@value", param_1806
.annotate 'line', 1308
    find_lex $P1809, "@value"
    unless_null $P1809, vivify_836
    $P1809 = root_new ['parrot';'ResizablePMCArray']
  vivify_836:
    set $N100, $P1809
    unless $N100, if_1808_end
.annotate 'line', 1309
    find_lex $P1810, "@value"
    unless_null $P1810, vivify_837
    $P1810 = root_new ['parrot';'ResizablePMCArray']
  vivify_837:
    find_lex $P104, "self"
    find_lex $P105, "$?CLASS"
    setattribute $P104, $P105, "@!stages", $P1810
  if_1808_end:
.annotate 'line', 1307
    find_lex $P104, "self"
    find_lex $P105, "$?CLASS"
    getattribute $P1811, $P104, $P105, "@!stages"
    unless_null $P1811, vivify_838
    $P1811 = root_new ['parrot';'ResizablePMCArray']
  vivify_838:
    .return ($P1811)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "parsegrammar" :anon :subid("200_1309859073.622") :outer("167_1309859073.622")
    .param pmc param_1813
    .param pmc param_1814 :slurpy
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1314
    .lex "self", param_1813
    .lex "@value", param_1814
.annotate 'line', 1315
    find_lex $P1816, "@value"
    unless_null $P1816, vivify_839
    $P1816 = root_new ['parrot';'ResizablePMCArray']
  vivify_839:
    set $N100, $P1816
    unless $N100, if_1815_end
.annotate 'line', 1316
    find_lex $P1817, "@value"
    unless_null $P1817, vivify_840
    $P1817 = root_new ['parrot';'ResizablePMCArray']
  vivify_840:
    set $P104, $P1817[0]
    unless_null $P104, vivify_841
    new $P104, "Undef"
  vivify_841:
    find_lex $P105, "self"
    find_lex $P106, "$?CLASS"
    setattribute $P105, $P106, "$!parsegrammar", $P104
  if_1815_end:
.annotate 'line', 1314
    find_lex $P104, "self"
    find_lex $P105, "$?CLASS"
    getattribute $P106, $P104, $P105, "$!parsegrammar"
    unless_null $P106, vivify_842
    new $P106, "Undef"
  vivify_842:
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "parseactions" :anon :subid("201_1309859073.622") :outer("167_1309859073.622")
    .param pmc param_1819
    .param pmc param_1820 :slurpy
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1321
    .lex "self", param_1819
    .lex "@value", param_1820
.annotate 'line', 1322
    find_lex $P1822, "@value"
    unless_null $P1822, vivify_843
    $P1822 = root_new ['parrot';'ResizablePMCArray']
  vivify_843:
    set $N100, $P1822
    unless $N100, if_1821_end
.annotate 'line', 1323
    find_lex $P1823, "@value"
    unless_null $P1823, vivify_844
    $P1823 = root_new ['parrot';'ResizablePMCArray']
  vivify_844:
    set $P104, $P1823[0]
    unless_null $P104, vivify_845
    new $P104, "Undef"
  vivify_845:
    find_lex $P105, "self"
    find_lex $P106, "$?CLASS"
    setattribute $P105, $P106, "$!parseactions", $P104
  if_1821_end:
.annotate 'line', 1321
    find_lex $P104, "self"
    find_lex $P105, "$?CLASS"
    getattribute $P106, $P104, $P105, "$!parseactions"
    unless_null $P106, vivify_846
    new $P106, "Undef"
  vivify_846:
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "commandline_banner" :anon :subid("202_1309859073.622") :outer("167_1309859073.622")
    .param pmc param_1825
    .param pmc param_1826 :optional
    .param int has_param_1826 :opt_flag
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1328
    .lex "self", param_1825
    if has_param_1826, optparam_847
    new $P104, "Undef"
    set param_1826, $P104
  optparam_847:
    .lex "$value", param_1826
.annotate 'line', 1329
    find_lex $P105, "$value"
    unless_null $P105, vivify_848
    new $P105, "Undef"
  vivify_848:
    defined $I100, $P105
    unless $I100, if_1827_end
.annotate 'line', 1330
    find_lex $P106, "$value"
    unless_null $P106, vivify_849
    new $P106, "Undef"
  vivify_849:
    find_lex $P108, "self"
    find_lex $P109, "$?CLASS"
    setattribute $P108, $P109, "$!commandline_banner", $P106
  if_1827_end:
.annotate 'line', 1328
    find_lex $P105, "self"
    find_lex $P106, "$?CLASS"
    getattribute $P108, $P105, $P106, "$!commandline_banner"
    unless_null $P108, vivify_850
    new $P108, "Undef"
  vivify_850:
    .return ($P108)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "commandline_prompt" :anon :subid("203_1309859073.622") :outer("167_1309859073.622")
    .param pmc param_1829
    .param pmc param_1830 :optional
    .param int has_param_1830 :opt_flag
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1335
    .lex "self", param_1829
    if has_param_1830, optparam_851
    new $P104, "Undef"
    set param_1830, $P104
  optparam_851:
    .lex "$value", param_1830
.annotate 'line', 1336
    find_lex $P105, "$value"
    unless_null $P105, vivify_852
    new $P105, "Undef"
  vivify_852:
    defined $I100, $P105
    unless $I100, if_1831_end
.annotate 'line', 1337
    find_lex $P106, "$value"
    unless_null $P106, vivify_853
    new $P106, "Undef"
  vivify_853:
    find_lex $P108, "self"
    find_lex $P109, "$?CLASS"
    setattribute $P108, $P109, "$!commandline_prompt", $P106
  if_1831_end:
.annotate 'line', 1335
    find_lex $P105, "self"
    find_lex $P106, "$?CLASS"
    getattribute $P108, $P105, $P106, "$!commandline_prompt"
    unless_null $P108, vivify_854
    new $P108, "Undef"
  vivify_854:
    .return ($P108)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "compiler_progname" :anon :subid("204_1309859073.622") :outer("167_1309859073.622")
    .param pmc param_1833
    .param pmc param_1834 :optional
    .param int has_param_1834 :opt_flag
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1342
    .lex "self", param_1833
    if has_param_1834, optparam_855
    new $P104, "Undef"
    set param_1834, $P104
  optparam_855:
    .lex "$value", param_1834
.annotate 'line', 1343
    find_lex $P105, "$value"
    unless_null $P105, vivify_856
    new $P105, "Undef"
  vivify_856:
    defined $I100, $P105
    unless $I100, if_1835_end
.annotate 'line', 1344
    find_lex $P106, "$value"
    unless_null $P106, vivify_857
    new $P106, "Undef"
  vivify_857:
    find_lex $P108, "self"
    find_lex $P109, "$?CLASS"
    setattribute $P108, $P109, "$!compiler_progname", $P106
  if_1835_end:
.annotate 'line', 1342
    find_lex $P105, "self"
    find_lex $P106, "$?CLASS"
    getattribute $P108, $P105, $P106, "$!compiler_progname"
    unless_null $P108, vivify_858
    new $P108, "Undef"
  vivify_858:
    .return ($P108)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "commandline_options" :anon :subid("205_1309859073.622") :outer("167_1309859073.622")
    .param pmc param_1837
    .param pmc param_1838 :optional
    .param int has_param_1838 :opt_flag
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1349
    .lex "self", param_1837
    if has_param_1838, optparam_859
    $P1839 = root_new ['parrot';'ResizablePMCArray']
    set param_1838, $P1839
  optparam_859:
    .lex "@value", param_1838
.annotate 'line', 1350
    find_lex $P1841, "@value"
    unless_null $P1841, vivify_860
    $P1841 = root_new ['parrot';'ResizablePMCArray']
  vivify_860:
    set $N100, $P1841
    unless $N100, if_1840_end
.annotate 'line', 1351
    find_lex $P1842, "@value"
    unless_null $P1842, vivify_861
    $P1842 = root_new ['parrot';'ResizablePMCArray']
  vivify_861:
    find_lex $P104, "self"
    find_lex $P105, "$?CLASS"
    setattribute $P104, $P105, "@!cmdoptions", $P1842
  if_1840_end:
.annotate 'line', 1349
    find_lex $P104, "self"
    find_lex $P105, "$?CLASS"
    getattribute $P1843, $P104, $P105, "@!cmdoptions"
    unless_null $P1843, vivify_862
    $P1843 = root_new ['parrot';'ResizablePMCArray']
  vivify_862:
    .return ($P1843)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "command_line" :anon :subid("206_1309859073.622") :outer("167_1309859073.622")
    .param pmc param_1845
    .param pmc param_1846
    .param pmc param_1847 :slurpy :named
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1356
    .const 'Sub' $P1875 = "208_1309859073.622" 
    capture_lex $P1875
    .const 'Sub' $P1860 = "207_1309859073.622" 
    capture_lex $P1860
    .lex "self", param_1845
    .lex "@args", param_1846
    .lex "%adverbs", param_1847
.annotate 'line', 1369
    new $P104, "Undef"
    set $P1848, $P104
    .lex "$program-name", $P1848
.annotate 'line', 1370
    new $P105, "Undef"
    set $P1849, $P105
    .lex "$res", $P1849
.annotate 'line', 1371
    $P1851 = root_new ['parrot';'Hash']
    set $P1850, $P1851
    .lex "%opts", $P1850
.annotate 'line', 1372
    $P1853 = root_new ['parrot';'ResizablePMCArray']
    set $P1852, $P1853
    .lex "@a", $P1852
.annotate 'line', 1365
    find_lex $P1855, "@args"
    unless_null $P1855, vivify_863
    $P1855 = root_new ['parrot';'ResizablePMCArray']
  vivify_863:
    set $P106, $P1855[2]
    unless_null $P106, vivify_864
    new $P106, "Undef"
  vivify_864:
    set $S100, $P106
    index $I100, $S100, "@INC"
    set $N100, $I100
    isge $I101, $N100, 0.0
    unless $I101, if_1854_end
.annotate 'line', 1366
    exit 0
  if_1854_end:
.annotate 'line', 1369
    find_lex $P1856, "@args"
    unless_null $P1856, vivify_865
    $P1856 = root_new ['parrot';'ResizablePMCArray']
  vivify_865:
    set $P106, $P1856[0]
    unless_null $P106, vivify_866
    new $P106, "Undef"
  vivify_866:
    store_lex "$program-name", $P106
.annotate 'line', 1370
    find_lex $P106, "self"
    find_lex $P1857, "@args"
    unless_null $P1857, vivify_867
    $P1857 = root_new ['parrot';'ResizablePMCArray']
  vivify_867:
    $P108 = $P106."process_args"($P1857)
    store_lex "$res", $P108
.annotate 'line', 1371
    find_lex $P106, "$res"
    unless_null $P106, vivify_868
    new $P106, "Undef"
  vivify_868:
    $P108 = $P106."options"()
    store_lex "%opts", $P108
.annotate 'line', 1372
    find_lex $P106, "$res"
    unless_null $P106, vivify_869
    new $P106, "Undef"
  vivify_869:
    $P108 = $P106."arguments"()
    store_lex "@a", $P108
.annotate 'line', 1374
    find_lex $P1858, "%opts"
    unless_null $P1858, vivify_870
    $P1858 = root_new ['parrot';'Hash']
  vivify_870:
    defined $I100, $P1858
    unless $I100, for_undef_871
    iter $P106, $P1858
    new $P109, 'ExceptionHandler'
    set_label $P109, loop1864_handler
    $P109."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P109
  loop1864_test:
    unless $P106, loop1864_done
    shift $P108, $P106
  loop1864_redo:
    .const 'Sub' $P1860 = "207_1309859073.622" 
    capture_lex $P1860
    $P1860($P108)
  loop1864_next:
    goto loop1864_test
  loop1864_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P111, exception, 'type'
    eq $P111, .CONTROL_LOOP_NEXT, loop1864_next
    eq $P111, .CONTROL_LOOP_REDO, loop1864_redo
  loop1864_done:
    pop_eh 
  for_undef_871:
.annotate 'line', 1377
    find_lex $P1866, "%adverbs"
    unless_null $P1866, vivify_877
    $P1866 = root_new ['parrot';'Hash']
  vivify_877:
    set $P106, $P1866["help"]
    unless_null $P106, vivify_878
    new $P106, "Undef"
  vivify_878:
    unless $P106, if_1865_end
    find_lex $P108, "self"
    find_lex $P109, "$program-name"
    unless_null $P109, vivify_879
    new $P109, "Undef"
  vivify_879:
    $P108."usage"($P109)
  if_1865_end:
.annotate 'line', 1378
    find_lex $P1868, "%adverbs"
    unless_null $P1868, vivify_880
    $P1868 = root_new ['parrot';'Hash']
  vivify_880:
    set $P106, $P1868["version"]
    unless_null $P106, vivify_881
    new $P106, "Undef"
  vivify_881:
    unless $P106, if_1867_end
    find_lex $P108, "self"
    $P108."version"()
  if_1867_end:
.annotate 'line', 1379
    find_lex $P1870, "%adverbs"
    unless_null $P1870, vivify_882
    $P1870 = root_new ['parrot';'Hash']
  vivify_882:
    set $P106, $P1870["show-config"]
    unless_null $P106, vivify_883
    new $P106, "Undef"
  vivify_883:
    unless $P106, if_1869_end
    find_lex $P108, "self"
    $P108."show-config"()
  if_1869_end:
.annotate 'line', 1380
    find_lex $P1872, "%adverbs"
    unless_null $P1872, vivify_884
    $P1872 = root_new ['parrot';'Hash']
  vivify_884:
    set $P106, $P1872["nqpevent"]
    unless_null $P106, vivify_885
    new $P106, "Undef"
  vivify_885:
    unless $P106, if_1871_end
    find_lex $P108, "self"
    find_lex $P1873, "%adverbs"
    unless_null $P1873, vivify_886
    $P1873 = root_new ['parrot';'Hash']
  vivify_886:
    set $P109, $P1873["nqpevent"]
    unless_null $P109, vivify_887
    new $P109, "Undef"
  vivify_887:
    $P108."nqpevent"($P109)
  if_1871_end:
.annotate 'line', 1382
    load_bytecode "dumper.pbc"
.annotate 'line', 1383
    load_bytecode "PGE/Dumper.pbc"
.annotate 'line', 1385
    .const 'Sub' $P1875 = "208_1309859073.622" 
    capture_lex $P1875
    $P109 = $P1875()
.annotate 'line', 1356
    .return ($P109)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1859"  :anon :subid("207_1309859073.622") :outer("206_1309859073.622")
    .param pmc param_1861
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1374
    .lex "$k", param_1861
.annotate 'line', 1375
    find_lex $P109, "$k"
    unless_null $P109, vivify_872
    new $P109, "Undef"
  vivify_872:
    find_lex $P1862, "%opts"
    unless_null $P1862, vivify_873
    $P1862 = root_new ['parrot';'Hash']
  vivify_873:
    set $P110, $P1862[$P109]
    unless_null $P110, vivify_874
    new $P110, "Undef"
  vivify_874:
    find_lex $P111, "$k"
    unless_null $P111, vivify_875
    new $P111, "Undef"
  vivify_875:
    find_lex $P1863, "%adverbs"
    unless_null $P1863, vivify_876
    $P1863 = root_new ['parrot';'Hash']
    store_lex "%adverbs", $P1863
  vivify_876:
    set $P1863[$P111], $P110
.annotate 'line', 1374
    .return ($P110)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1874"  :anon :subid("208_1309859073.622") :outer("206_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1385
    .const 'Sub' $P1896 = "209_1309859073.622" 
    capture_lex $P1896
.annotate 'line', 1386
    new $P106, "Undef"
    set $P1876, $P106
    .lex "$result", $P1876
.annotate 'line', 1385
    find_lex $P108, "$result"
    unless_null $P108, vivify_888
    new $P108, "Undef"
  vivify_888:
.annotate 'line', 1387
    find_lex $P1878, "%adverbs"
    unless_null $P1878, vivify_889
    $P1878 = root_new ['parrot';'Hash']
  vivify_889:
    set $P108, $P1878["e"]
    unless_null $P108, vivify_890
    new $P108, "Undef"
  vivify_890:
    if $P108, if_1877
.annotate 'line', 1388
    find_lex $P1883, "@a"
    unless_null $P1883, vivify_891
    $P1883 = root_new ['parrot';'ResizablePMCArray']
  vivify_891:
    isfalse $I100, $P1883
    if $I100, if_1882
.annotate 'line', 1389
    find_lex $P1886, "%adverbs"
    unless_null $P1886, vivify_892
    $P1886 = root_new ['parrot';'Hash']
  vivify_892:
    set $P109, $P1886["combine"]
    unless_null $P109, vivify_893
    new $P109, "Undef"
  vivify_893:
    if $P109, if_1885
.annotate 'line', 1390
    find_lex $P110, "self"
    find_lex $P1889, "@a"
    unless_null $P1889, vivify_894
    $P1889 = root_new ['parrot';'ResizablePMCArray']
  vivify_894:
    set $P111, $P1889[0]
    unless_null $P111, vivify_895
    new $P111, "Undef"
  vivify_895:
    find_lex $P1890, "@a"
    unless_null $P1890, vivify_896
    $P1890 = root_new ['parrot';'ResizablePMCArray']
  vivify_896:
    find_lex $P1891, "%adverbs"
    unless_null $P1891, vivify_897
    $P1891 = root_new ['parrot';'Hash']
  vivify_897:
    $P112 = $P110."evalfiles"($P111, $P1890 :flat, $P1891 :flat)
    store_lex "$result", $P112
    goto if_1885_end
  if_1885:
.annotate 'line', 1389
    find_lex $P110, "self"
    find_lex $P1887, "@a"
    unless_null $P1887, vivify_898
    $P1887 = root_new ['parrot';'ResizablePMCArray']
  vivify_898:
    find_lex $P1888, "%adverbs"
    unless_null $P1888, vivify_899
    $P1888 = root_new ['parrot';'Hash']
  vivify_899:
    $P111 = $P110."evalfiles"($P1887, $P1888 :flat)
    store_lex "$result", $P111
  if_1885_end:
    goto if_1882_end
  if_1882:
.annotate 'line', 1388
    find_lex $P109, "self"
    find_lex $P1884, "%adverbs"
    unless_null $P1884, vivify_900
    $P1884 = root_new ['parrot';'Hash']
  vivify_900:
    $P110 = $P109."interactive"($P1884 :flat)
    store_lex "$result", $P110
  if_1882_end:
    goto if_1877_end
  if_1877:
.annotate 'line', 1387
    find_lex $P109, "self"
    find_lex $P1879, "%adverbs"
    unless_null $P1879, vivify_901
    $P1879 = root_new ['parrot';'Hash']
  vivify_901:
    set $P110, $P1879["e"]
    unless_null $P110, vivify_902
    new $P110, "Undef"
  vivify_902:
    find_lex $P1880, "@a"
    unless_null $P1880, vivify_903
    $P1880 = root_new ['parrot';'ResizablePMCArray']
  vivify_903:
    find_lex $P1881, "%adverbs"
    unless_null $P1881, vivify_904
    $P1881 = root_new ['parrot';'Hash']
  vivify_904:
    $P111 = $P109."eval"($P110, $P1880 :flat, $P1881 :flat)
    store_lex "$result", $P111
  if_1877_end:
.annotate 'line', 1392
    find_lex $P110, "$result"
    unless_null $P110, vivify_905
    new $P110, "Undef"
  vivify_905:
    isnull $I100, $P110
    new $P111, 'Integer'
    set $P111, $I100
    isfalse $I101, $P111
    if $I101, if_1893
    new $P109, 'Integer'
    set $P109, $I101
    goto if_1893_end
  if_1893:
    find_lex $P1894, "%adverbs"
    unless_null $P1894, vivify_906
    $P1894 = root_new ['parrot';'Hash']
  vivify_906:
    set $P112, $P1894["target"]
    unless_null $P112, vivify_907
    new $P112, "Undef"
  vivify_907:
    set $S100, $P112
    iseq $I102, $S100, "pir"
    new $P109, 'Integer'
    set $P109, $I102
  if_1893_end:
    if $P109, if_1892
    set $P108, $P109
    goto if_1892_end
  if_1892:
    .const 'Sub' $P1896 = "209_1309859073.622" 
    capture_lex $P1896
    $P115 = $P1896()
    set $P108, $P115
  if_1892_end:
.annotate 'line', 1385
    .return ($P108)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1895"  :anon :subid("209_1309859073.622") :outer("208_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1393
    new $P113, "Undef"
    set $P1897, $P113
    .lex "$output", $P1897
.annotate 'line', 1394
    new $P114, "Undef"
    set $P1898, $P114
    .lex "$fh", $P1898
.annotate 'line', 1393
    find_lex $P1899, "%adverbs"
    unless_null $P1899, vivify_908
    $P1899 = root_new ['parrot';'Hash']
  vivify_908:
    set $P115, $P1899["output"]
    unless_null $P115, vivify_909
    new $P115, "Undef"
  vivify_909:
    store_lex "$output", $P115
.annotate 'line', 1394
    find_lex $P117, "$output"
    unless_null $P117, vivify_910
    new $P117, "Undef"
  vivify_910:
    set $S101, $P117
    iseq $I103, $S101, ""
    unless $I103, unless_1901
    new $P116, 'Integer'
    set $P116, $I103
    goto unless_1901_end
  unless_1901:
    find_lex $P118, "$output"
    unless_null $P118, vivify_911
    new $P118, "Undef"
  vivify_911:
    set $S102, $P118
    iseq $I104, $S102, "-"
    new $P116, 'Integer'
    set $P116, $I104
  unless_1901_end:
    if $P116, if_1900
.annotate 'line', 1396
    new $P121, "FileHandle"
    find_lex $P122, "$output"
    unless_null $P122, vivify_912
    new $P122, "Undef"
  vivify_912:
    $P123 = $P121."open"($P122, "w")
    set $P115, $P123
.annotate 'line', 1394
    goto if_1900_end
  if_1900:
.annotate 'line', 1395
    getinterp $P119
    $P120 = $P119."stdout_handle"()
    set $P115, $P120
  if_1900_end:
    store_lex "$fh", $P115
.annotate 'line', 1397
    find_lex $P115, "$fh"
    unless_null $P115, vivify_913
    new $P115, "Undef"
  vivify_913:
    if $P115, unless_1902_end
    find_lex $P116, "self"
    new $P117, 'String'
    set $P117, "Cannot write to "
    find_lex $P118, "$output"
    unless_null $P118, vivify_914
    new $P118, "Undef"
  vivify_914:
    concat $P119, $P117, $P118
    $P116."panic"($P119)
  unless_1902_end:
.annotate 'line', 1398
    find_lex $P115, "$fh"
    unless_null $P115, vivify_915
    new $P115, "Undef"
  vivify_915:
    find_lex $P116, "$result"
    unless_null $P116, vivify_916
    new $P116, "Undef"
  vivify_916:
    print $P115, $P116
.annotate 'line', 1399
    find_lex $P115, "$fh"
    unless_null $P115, vivify_917
    new $P115, "Undef"
  vivify_917:
    $P116 = $P115."close"()
.annotate 'line', 1392
    .return ($P116)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "process_args" :anon :subid("210_1309859073.622") :outer("167_1309859073.622")
    .param pmc param_1904
    .param pmc param_1905
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1404
    .const 'Sub' $P1911 = "211_1309859073.622" 
    capture_lex $P1911
    .lex "self", param_1904
    .lex "@args", param_1905
.annotate 'line', 1408
    new $P104, "Undef"
    set $P1906, $P104
    .lex "$p", $P1906
.annotate 'line', 1411
    new $P105, "Undef"
    set $P1907, $P105
    .lex "$res", $P1907
.annotate 'line', 1406
    find_lex $P106, "self"
    find_lex $P1908, "@args"
    unless_null $P1908, vivify_918
    $P1908 = root_new ['parrot';'ResizablePMCArray']
  vivify_918:
    $P108 = $P1908."shift"()
    $P106."compiler_progname"($P108)
.annotate 'line', 1408
    get_hll_global $P106, "GLOBAL"
    nqp_get_package_through_who $P108, $P106, "HLL"
    nqp_get_package_through_who $P109, $P108, "CommandLine"
    get_who $P110, $P109
    set $P111, $P110["Parser"]
    find_lex $P112, "self"
    find_lex $P113, "$?CLASS"
    getattribute $P1909, $P112, $P113, "@!cmdoptions"
    unless_null $P1909, vivify_919
    $P1909 = root_new ['parrot';'ResizablePMCArray']
  vivify_919:
    $P114 = $P111."new"($P1909)
    store_lex "$p", $P114
.annotate 'line', 1409
    find_lex $P106, "$p"
    unless_null $P106, vivify_920
    new $P106, "Undef"
  vivify_920:
    $P106."add-stopper"("-e")
.annotate 'line', 1410
    find_lex $P106, "$p"
    unless_null $P106, vivify_921
    new $P106, "Undef"
  vivify_921:
    $P106."stop-after-first-arg"()
.annotate 'line', 1404
    find_lex $P106, "$res"
    unless_null $P106, vivify_922
    new $P106, "Undef"
  vivify_922:
.annotate 'line', 1412
    .const 'Sub' $P1911 = "211_1309859073.622" 
    capture_lex $P1911
    $P1911()
.annotate 'line', 1404
    find_lex $P106, "$res"
    unless_null $P106, vivify_926
    new $P106, "Undef"
  vivify_926:
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1910"  :anon :subid("211_1309859073.622") :outer("210_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1412
    .const 'Sub' $P1919 = "212_1309859073.622" 
    capture_lex $P1919
    new $P1915, 'ExceptionHandler'
    set_label $P1915, control_1914
    $P1915."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P1915
.annotate 'line', 1413
    find_lex $P106, "$p"
    unless_null $P106, vivify_923
    new $P106, "Undef"
  vivify_923:
    find_lex $P1912, "@args"
    unless_null $P1912, vivify_924
    $P1912 = root_new ['parrot';'ResizablePMCArray']
  vivify_924:
    $P108 = $P106."parse"($P1912)
    store_lex "$res", $P108
.annotate 'line', 1412
    pop_eh 
    goto skip_handler_1913
  control_1914:
.annotate 'line', 1414
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P1919 = "212_1309859073.622" 
    newclosure $P1925, $P1919
    $P1925(exception)
    new $P1926, 'Integer'
    set $P1926, 1
    set exception["handled"], $P1926
    set $I1927, exception["handled"]
    ne $I1927, 1, nothandled_1917
  handled_1916:
    .return (exception)
  nothandled_1917:
    rethrow exception
  skip_handler_1913:
.annotate 'line', 1412
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1918"  :anon :subid("212_1309859073.622") :outer("211_1309859073.622")
    .param pmc param_1920
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1414
    .lex "$_", param_1920
    find_lex $P1921, "$_"
    set $P1922, $P1921
    .lex "$!", $P1922
.annotate 'line', 1415
    find_lex $P1923, "$_"
    unless_null $P1923, vivify_925
    new $P1923, "Undef"
  vivify_925:
    say $P1923
.annotate 'line', 1416
    find_lex $P1924, "self"
    $P1924."usage"()
.annotate 'line', 1417
    exit 1
.annotate 'line', 1414
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "evalfiles" :anon :subid("213_1309859073.622") :outer("167_1309859073.622")
    .param pmc param_1931
    .param pmc param_1932
    .param pmc param_1933 :slurpy
    .param pmc param_1934 :slurpy :named
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1423
    .const 'Sub' $P1950 = "214_1309859073.622" 
    capture_lex $P1950
    new $P1930, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1930, control_1929
    push_eh $P1930
    .lex "self", param_1931
    .lex "$files", param_1932
    .lex "@args", param_1933
    .lex "%adverbs", param_1934
.annotate 'line', 1424
    new $P104, "Undef"
    set $P1935, $P104
    .lex "$target", $P1935
.annotate 'line', 1425
    new $P105, "Undef"
    set $P1936, $P105
    .lex "$encoding", $P1936
.annotate 'line', 1426
    $P1938 = root_new ['parrot';'ResizablePMCArray']
    set $P1937, $P1938
    .lex "@files", $P1937
.annotate 'line', 1427
    $P1940 = root_new ['parrot';'ResizablePMCArray']
    set $P1939, $P1940
    .lex "@codes", $P1939
.annotate 'line', 1444
    new $P106, "Undef"
    set $P1941, $P106
    .lex "$code", $P1941
.annotate 'line', 1445
    new $P108, "Undef"
    set $P1942, $P108
    .lex "$?FILES", $P1942
.annotate 'line', 1446
    new $P109, "Undef"
    set $P1943, $P109
    .lex "$r", $P1943
.annotate 'line', 1424
    find_lex $P1944, "%adverbs"
    unless_null $P1944, vivify_927
    $P1944 = root_new ['parrot';'Hash']
  vivify_927:
    set $P110, $P1944["target"]
    unless_null $P110, vivify_928
    new $P110, "Undef"
  vivify_928:
    set $S100, $P110
    downcase $S101, $S100
    new $P111, 'String'
    set $P111, $S101
    store_lex "$target", $P111
.annotate 'line', 1425
    find_lex $P1945, "%adverbs"
    unless_null $P1945, vivify_929
    $P1945 = root_new ['parrot';'Hash']
  vivify_929:
    set $P110, $P1945["encoding"]
    unless_null $P110, vivify_930
    new $P110, "Undef"
  vivify_930:
    store_lex "$encoding", $P110
.annotate 'line', 1426
    find_lex $P111, "$files"
    unless_null $P111, vivify_931
    new $P111, "Undef"
  vivify_931:
    does $I100, $P111, "array"
    if $I100, if_1946
    find_lex $P113, "$files"
    unless_null $P113, vivify_932
    new $P113, "Undef"
  vivify_932:
    new $P114, "ResizablePMCArray"
    push $P114, $P113
    set $P110, $P114
    goto if_1946_end
  if_1946:
    find_lex $P112, "$files"
    unless_null $P112, vivify_933
    new $P112, "Undef"
  vivify_933:
    set $P110, $P112
  if_1946_end:
    store_lex "@files", $P110
.annotate 'line', 1423
    find_lex $P1947, "@codes"
    unless_null $P1947, vivify_934
    $P1947 = root_new ['parrot';'ResizablePMCArray']
  vivify_934:
.annotate 'line', 1428
    find_lex $P1948, "@files"
    unless_null $P1948, vivify_935
    $P1948 = root_new ['parrot';'ResizablePMCArray']
  vivify_935:
    defined $I100, $P1948
    unless $I100, for_undef_936
    iter $P110, $P1948
    new $P115, 'ExceptionHandler'
    set_label $P115, loop1974_handler
    $P115."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P115
  loop1974_test:
    unless $P110, loop1974_done
    shift $P111, $P110
  loop1974_redo:
    .const 'Sub' $P1950 = "214_1309859073.622" 
    capture_lex $P1950
    $P1950($P111)
  loop1974_next:
    goto loop1974_test
  loop1974_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P116, exception, 'type'
    eq $P116, .CONTROL_LOOP_NEXT, loop1974_next
    eq $P116, .CONTROL_LOOP_REDO, loop1974_redo
  loop1974_done:
    pop_eh 
  for_undef_936:
.annotate 'line', 1444
    find_lex $P1975, "@codes"
    unless_null $P1975, vivify_946
    $P1975 = root_new ['parrot';'ResizablePMCArray']
  vivify_946:
    join $S100, "", $P1975
    new $P110, 'String'
    set $P110, $S100
    store_lex "$code", $P110
.annotate 'line', 1445
    find_lex $P1976, "@files"
    unless_null $P1976, vivify_947
    $P1976 = root_new ['parrot';'ResizablePMCArray']
  vivify_947:
    join $S100, " ", $P1976
    new $P110, 'String'
    set $P110, $S100
    store_lex "$?FILES", $P110
.annotate 'line', 1446
    find_lex $P110, "self"
    find_lex $P111, "$code"
    unless_null $P111, vivify_948
    new $P111, "Undef"
  vivify_948:
    find_lex $P1977, "@args"
    unless_null $P1977, vivify_949
    $P1977 = root_new ['parrot';'ResizablePMCArray']
  vivify_949:
    find_lex $P1978, "%adverbs"
    unless_null $P1978, vivify_950
    $P1978 = root_new ['parrot';'Hash']
  vivify_950:
    $P112 = $P110."eval"($P111, $P1977 :flat, $P1978 :flat)
    store_lex "$r", $P112
.annotate 'line', 1447
    find_lex $P112, "$target"
    unless_null $P112, vivify_951
    new $P112, "Undef"
  vivify_951:
    set $S100, $P112
    iseq $I100, $S100, ""
    unless $I100, unless_1980
    new $P111, 'Integer'
    set $P111, $I100
    goto unless_1980_end
  unless_1980:
    find_lex $P113, "$target"
    unless_null $P113, vivify_952
    new $P113, "Undef"
  vivify_952:
    set $S101, $P113
    iseq $I101, $S101, "pir"
    new $P111, 'Integer'
    set $P111, $I101
  unless_1980_end:
    if $P111, if_1979
.annotate 'line', 1450
    new $P114, "Exception"
    set $P114['type'], .CONTROL_RETURN
    find_lex $P115, "self"
    find_lex $P116, "$r"
    unless_null $P116, vivify_953
    new $P116, "Undef"
  vivify_953:
    find_lex $P117, "$target"
    unless_null $P117, vivify_954
    new $P117, "Undef"
  vivify_954:
    find_lex $P1981, "%adverbs"
    unless_null $P1981, vivify_955
    $P1981 = root_new ['parrot';'Hash']
  vivify_955:
    $P118 = $P115."dumper"($P116, $P117, $P1981 :flat)
    setattribute $P114, 'payload', $P118
    throw $P114
.annotate 'line', 1449
    goto if_1979_end
  if_1979:
.annotate 'line', 1448
    new $P114, "Exception"
    set $P114['type'], .CONTROL_RETURN
    find_lex $P115, "$r"
    unless_null $P115, vivify_956
    new $P115, "Undef"
  vivify_956:
    setattribute $P114, 'payload', $P115
    throw $P114
  if_1979_end:
.annotate 'line', 1423
    .return ($P110)
  control_1929:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P111, exception, "payload"
    .return ($P111)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1949"  :anon :subid("214_1309859073.622") :outer("213_1309859073.622")
    .param pmc param_1953
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1428
    .const 'Sub' $P1955 = "215_1309859073.622" 
    capture_lex $P1955
.annotate 'line', 1429
    new $P112, "Undef"
    set $P1951, $P112
    .lex "$in-handle", $P1951
.annotate 'line', 1430
    new $P113, "Undef"
    set $P1952, $P113
    .lex "$err", $P1952
    .lex "$_", param_1953
.annotate 'line', 1429
    new $P114, "FileHandle"
    store_lex "$in-handle", $P114
.annotate 'line', 1430
    new $P114, "Integer"
    assign $P114, 0
    store_lex "$err", $P114
.annotate 'line', 1431
    .const 'Sub' $P1955 = "215_1309859073.622" 
    capture_lex $P1955
    $P1955()
.annotate 'line', 1442
    find_lex $P115, "$err"
    unless_null $P115, vivify_944
    new $P115, "Undef"
  vivify_944:
    if $P115, if_1973
    set $P114, $P115
    goto if_1973_end
  if_1973:
    find_lex $P116, "$err"
    unless_null $P116, vivify_945
    new $P116, "Undef"
  vivify_945:
    die $P116
  if_1973_end:
.annotate 'line', 1428
    .return ($P114)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1954"  :anon :subid("215_1309859073.622") :outer("214_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1431
    .const 'Sub' $P1963 = "216_1309859073.622" 
    capture_lex $P1963
    new $P1959, 'ExceptionHandler'
    set_label $P1959, control_1958
    $P1959."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P1959
.annotate 'line', 1435
    find_lex $P114, "$in-handle"
    unless_null $P114, vivify_937
    new $P114, "Undef"
  vivify_937:
    find_lex $P115, "$encoding"
    unless_null $P115, vivify_938
    new $P115, "Undef"
  vivify_938:
    $P114."encoding"($P115)
.annotate 'line', 1436
    find_lex $P1956, "@codes"
    unless_null $P1956, vivify_939
    $P1956 = root_new ['parrot';'ResizablePMCArray']
  vivify_939:
    find_lex $P114, "$in-handle"
    unless_null $P114, vivify_940
    new $P114, "Undef"
  vivify_940:
    find_lex $P115, "$_"
    unless_null $P115, vivify_941
    new $P115, "Undef"
  vivify_941:
    $P116 = $P114."readall"($P115)
    push $P1956, $P116
.annotate 'line', 1437
    find_lex $P114, "$in-handle"
    unless_null $P114, vivify_942
    new $P114, "Undef"
  vivify_942:
    $P114."close"()
.annotate 'line', 1431
    pop_eh 
    goto skip_handler_1957
  control_1958:
.annotate 'line', 1438
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P1963 = "216_1309859073.622" 
    newclosure $P1970, $P1963
    $P1970(exception)
    new $P1971, 'Integer'
    set $P1971, 1
    set exception["handled"], $P1971
    set $I1972, exception["handled"]
    ne $I1972, 1, nothandled_1961
  handled_1960:
    .return (exception)
  nothandled_1961:
    rethrow exception
  skip_handler_1957:
.annotate 'line', 1431
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1962"  :anon :subid("216_1309859073.622") :outer("215_1309859073.622")
    .param pmc param_1964
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1438
    .lex "$_", param_1964
    find_lex $P1965, "$_"
    set $P1966, $P1965
    .lex "$!", $P1966
.annotate 'line', 1439
    new $P1967, 'String'
    set $P1967, "Error while reading from file: "
    find_lex $P1968, "$_"
    unless_null $P1968, vivify_943
    new $P1968, "Undef"
  vivify_943:
    concat $P1969, $P1967, $P1968
    store_lex "$err", $P1969
.annotate 'line', 1438
    .return ($P1969)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "compile" :anon :subid("217_1309859073.622") :outer("167_1309859073.622")
    .param pmc param_1985
    .param pmc param_1986
    .param pmc param_1987 :slurpy :named
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1454
    .const 'Sub' $P1996 = "218_1309859073.622" 
    capture_lex $P1996
    new $P1984, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1984, control_1983
    push_eh $P1984
    .lex "self", param_1985
    .lex "$source", param_1986
    .lex "%adverbs", param_1987
.annotate 'line', 1455
    $P1989 = root_new ['parrot';'Hash']
    set $P1988, $P1989
    .lex "%*COMPILING", $P1988
.annotate 'line', 1457
    new $P104, "Undef"
    set $P1990, $P104
    .lex "$target", $P1990
.annotate 'line', 1458
    new $P105, "Undef"
    set $P1991, $P105
    .lex "$result", $P1991
.annotate 'line', 1459
    new $P106, "Undef"
    set $P1992, $P106
    .lex "$stderr", $P1992
.annotate 'line', 1455
    find_lex $P1993, "%adverbs"
    unless_null $P1993, vivify_957
    $P1993 = root_new ['parrot';'Hash']
  vivify_957:
    find_lex $P110, "%*COMPILING"
    unless_null $P110, vivify_958
    get_hll_global $P108, "GLOBAL"
    get_who $P109, $P108
    set $P110, $P109["%COMPILING"]
    unless_null $P110, vivify_959
    die "Contextual %*COMPILING not found"
  vivify_959:
    store_lex "%*COMPILING", $P110
  vivify_958:
    set $P110["%?OPTIONS"], $P1993
.annotate 'line', 1457
    find_lex $P1994, "%adverbs"
    unless_null $P1994, vivify_960
    $P1994 = root_new ['parrot';'Hash']
  vivify_960:
    set $P108, $P1994["target"]
    unless_null $P108, vivify_961
    new $P108, "Undef"
  vivify_961:
    set $S100, $P108
    downcase $S101, $S100
    new $P109, 'String'
    set $P109, $S101
    store_lex "$target", $P109
.annotate 'line', 1458
    find_lex $P108, "$source"
    unless_null $P108, vivify_962
    new $P108, "Undef"
  vivify_962:
    store_lex "$result", $P108
.annotate 'line', 1459
    getinterp $P108
    $P109 = $P108."stderr_handle"()
    store_lex "$stderr", $P109
.annotate 'line', 1460
    find_lex $P109, "self"
    $P110 = $P109."stages"()
    defined $I100, $P110
    unless $I100, for_undef_963
    iter $P108, $P110
    new $P115, 'ExceptionHandler'
    set_label $P115, loop2004_handler
    $P115."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P115
  loop2004_test:
    unless $P108, loop2004_done
    shift $P111, $P108
  loop2004_redo:
    .const 'Sub' $P1996 = "218_1309859073.622" 
    capture_lex $P1996
    $P1996($P111)
  loop2004_next:
    goto loop2004_test
  loop2004_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P116, exception, 'type'
    eq $P116, .CONTROL_LOOP_NEXT, loop2004_next
    eq $P116, .CONTROL_LOOP_REDO, loop2004_redo
  loop2004_done:
    pop_eh 
  for_undef_963:
.annotate 'line', 1470
    new $P108, "Exception"
    set $P108['type'], .CONTROL_RETURN
    find_lex $P109, "$result"
    unless_null $P109, vivify_975
    new $P109, "Undef"
  vivify_975:
    setattribute $P108, 'payload', $P109
    throw $P108
.annotate 'line', 1454
    .return ()
  control_1983:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P108, exception, "payload"
    .return ($P108)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1995"  :anon :subid("218_1309859073.622") :outer("217_1309859073.622")
    .param pmc param_1999
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1461
    new $P112, "Undef"
    set $P1997, $P112
    .lex "$timestamp", $P1997
.annotate 'line', 1463
    new $P113, "Undef"
    set $P1998, $P113
    .lex "$diff", $P1998
    .lex "$_", param_1999
.annotate 'line', 1461
    time $N100
    new $P114, 'Float'
    set $P114, $N100
    store_lex "$timestamp", $P114
.annotate 'line', 1462
    find_lex $P114, "self"
    find_lex $P115, "$result"
    unless_null $P115, vivify_964
    new $P115, "Undef"
  vivify_964:
    find_lex $P2000, "%adverbs"
    unless_null $P2000, vivify_965
    $P2000 = root_new ['parrot';'Hash']
  vivify_965:
    find_lex $P116, "$_"
    unless_null $P116, vivify_966
    new $P116, "Undef"
  vivify_966:
    set $S100, $P116
    $P117 = $P114.$S100($P115, $P2000 :flat)
    store_lex "$result", $P117
.annotate 'line', 1463
    time $N100
    new $P114, 'Float'
    set $P114, $N100
    find_lex $P115, "$timestamp"
    unless_null $P115, vivify_967
    new $P115, "Undef"
  vivify_967:
    sub $P116, $P114, $P115
    store_lex "$diff", $P116
.annotate 'line', 1464
    find_lex $P2002, "%adverbs"
    unless_null $P2002, vivify_968
    $P2002 = root_new ['parrot';'Hash']
  vivify_968:
    set $P114, $P2002["stagestats"]
    unless_null $P114, vivify_969
    new $P114, "Undef"
  vivify_969:
    unless $P114, if_2001_end
.annotate 'line', 1466
    find_lex $P115, "$stderr"
    unless_null $P115, vivify_970
    new $P115, "Undef"
  vivify_970:
    new $P116, 'String'
    set $P116, "Stage "
    find_lex $P117, "$_"
    unless_null $P117, vivify_971
    new $P117, "Undef"
  vivify_971:
    concat $P118, $P116, $P117
    concat $P119, $P118, ": "
    find_lex $P120, "$diff"
    unless_null $P120, vivify_972
    new $P120, "Undef"
  vivify_972:
    concat $P121, $P119, $P120
    concat $P122, $P121, "\n"
    $P115."print__N"($P122)
  if_2001_end:
.annotate 'line', 1468
    find_lex $P115, "$_"
    unless_null $P115, vivify_973
    new $P115, "Undef"
  vivify_973:
    set $S100, $P115
    find_lex $P116, "$target"
    unless_null $P116, vivify_974
    new $P116, "Undef"
  vivify_974:
    set $S101, $P116
    iseq $I101, $S100, $S101
    if $I101, if_2003
    new $P114, 'Integer'
    set $P114, $I101
    goto if_2003_end
  if_2003:
    die 0, .CONTROL_LOOP_LAST
  if_2003_end:
.annotate 'line', 1460
    .return ($P114)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "parse" :anon :subid("219_1309859073.622") :outer("167_1309859073.622")
    .param pmc param_2008
    .param pmc param_2009
    .param pmc param_2010 :slurpy :named
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1473
    .const 'Sub' $P2019 = "220_1309859073.622" 
    capture_lex $P2019
    new $P2007, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2007, control_2006
    push_eh $P2007
    .lex "self", param_2008
    .lex "$source", param_2009
    .lex "%adverbs", param_2010
.annotate 'line', 1474
    new $P104, "Undef"
    set $P2011, $P104
    .lex "$s", $P2011
.annotate 'line', 1483
    new $P105, "Undef"
    set $P2012, $P105
    .lex "$grammar", $P2012
.annotate 'line', 1484
    new $P106, "Undef"
    set $P2013, $P106
    .lex "$actions", $P2013
.annotate 'line', 1486
    new $P108, "Undef"
    set $P2014, $P108
    .lex "$match", $P2014
.annotate 'line', 1474
    find_lex $P109, "$source"
    unless_null $P109, vivify_976
    new $P109, "Undef"
  vivify_976:
    store_lex "$s", $P109
.annotate 'line', 1475
    find_lex $P2016, "%adverbs"
    unless_null $P2016, vivify_977
    $P2016 = root_new ['parrot';'Hash']
  vivify_977:
    set $P109, $P2016["transcode"]
    unless_null $P109, vivify_978
    new $P109, "Undef"
  vivify_978:
    unless $P109, if_2015_end
.annotate 'line', 1476
    find_lex $P2017, "%adverbs"
    unless_null $P2017, vivify_979
    $P2017 = root_new ['parrot';'Hash']
  vivify_979:
    set $P111, $P2017["transcode"]
    unless_null $P111, vivify_980
    new $P111, "Undef"
  vivify_980:
    set $S100, $P111
    split $P112, " ", $S100
    defined $I100, $P112
    unless $I100, for_undef_981
    iter $P110, $P112
    new $P115, 'ExceptionHandler'
    set_label $P115, loop2030_handler
    $P115."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P115
  loop2030_test:
    unless $P110, loop2030_done
    shift $P113, $P110
  loop2030_redo:
    .const 'Sub' $P2019 = "220_1309859073.622" 
    capture_lex $P2019
    $P2019($P113)
  loop2030_next:
    goto loop2030_test
  loop2030_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P116, exception, 'type'
    eq $P116, .CONTROL_LOOP_NEXT, loop2030_next
    eq $P116, .CONTROL_LOOP_REDO, loop2030_redo
  loop2030_done:
    pop_eh 
  for_undef_981:
  if_2015_end:
.annotate 'line', 1483
    find_lex $P109, "self"
    $P110 = $P109."parsegrammar"()
    store_lex "$grammar", $P110
.annotate 'line', 1473
    find_lex $P109, "$actions"
    unless_null $P109, vivify_984
    new $P109, "Undef"
  vivify_984:
.annotate 'line', 1485
    find_lex $P2032, "%adverbs"
    unless_null $P2032, vivify_985
    $P2032 = root_new ['parrot';'Hash']
  vivify_985:
    set $P109, $P2032["target"]
    unless_null $P109, vivify_986
    new $P109, "Undef"
  vivify_986:
    set $S100, $P109
    iseq $I100, $S100, "parse"
    if $I100, unless_2031_end
    find_lex $P110, "self"
    $P111 = $P110."parseactions"()
    store_lex "$actions", $P111
  unless_2031_end:
.annotate 'line', 1486
    find_lex $P109, "$grammar"
    unless_null $P109, vivify_987
    new $P109, "Undef"
  vivify_987:
    find_lex $P110, "$s"
    unless_null $P110, vivify_988
    new $P110, "Undef"
  vivify_988:
    find_lex $P111, "$actions"
    unless_null $P111, vivify_989
    new $P111, "Undef"
  vivify_989:
    find_lex $P2033, "%adverbs"
    unless_null $P2033, vivify_990
    $P2033 = root_new ['parrot';'Hash']
  vivify_990:
    set $P112, $P2033["rxtrace"]
    unless_null $P112, vivify_991
    new $P112, "Undef"
  vivify_991:
    $P113 = $P109."parse"($P110, 0 :named("p"), $P111 :named("actions"), $P112 :named("rxtrace"))
    store_lex "$match", $P113
.annotate 'line', 1487
    find_lex $P109, "$match"
    unless_null $P109, vivify_992
    new $P109, "Undef"
  vivify_992:
    if $P109, unless_2034_end
    find_lex $P110, "self"
    $P110."panic"("Unable to parse source")
  unless_2034_end:
.annotate 'line', 1488
    new $P109, "Exception"
    set $P109['type'], .CONTROL_RETURN
    find_lex $P110, "$match"
    unless_null $P110, vivify_993
    new $P110, "Undef"
  vivify_993:
    setattribute $P109, 'payload', $P110
    throw $P109
.annotate 'line', 1473
    .return ()
  control_2006:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P109, exception, "payload"
    .return ($P109)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2018"  :anon :subid("220_1309859073.622") :outer("219_1309859073.622")
    .param pmc param_2020
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1476
    .const 'Sub' $P2022 = "221_1309859073.622" 
    capture_lex $P2022
    .lex "$_", param_2020
.annotate 'line', 1477
    .const 'Sub' $P2022 = "221_1309859073.622" 
    capture_lex $P2022
    $P114 = $P2022()
.annotate 'line', 1476
    .return ($P114)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2021"  :anon :subid("221_1309859073.622") :outer("220_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1477
    new $P2025, 'ExceptionHandler'
    set_label $P2025, control_2024
    $P2025."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P2025
.annotate 'line', 1478
    find_lex $P114, "$s"
    unless_null $P114, vivify_982
    new $P114, "Undef"
  vivify_982:
    set $S101, $P114
.annotate 'line', 1479
    find_lex $P115, "$_"
    unless_null $P115, vivify_983
    new $P115, "Undef"
  vivify_983:
    set $S102, $P115
    find_encoding $I101, $S102
    trans_encoding $S103, $S101, $I101
.annotate 'line', 1478
    new $P116, 'String'
    set $P116, $S103
    store_lex "$s", $P116
.annotate 'line', 1477
    pop_eh 
    goto skip_handler_2023
  control_2024:
    .local pmc exception 
    .get_results (exception) 
    new $P2028, 'Integer'
    set $P2028, 1
    set exception["handled"], $P2028
    set $I2029, exception["handled"]
    ne $I2029, 1, nothandled_2027
  handled_2026:
    .return (exception)
  nothandled_2027:
    rethrow exception
  skip_handler_2023:
    .return ($P116)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "past" :anon :subid("222_1309859073.622") :outer("167_1309859073.622")
    .param pmc param_2036
    .param pmc param_2037
    .param pmc param_2038 :slurpy :named
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1491
    .lex "self", param_2036
    .lex "$source", param_2037
    .lex "%adverbs", param_2038
.annotate 'line', 1492
    new $P104, "Undef"
    set $P2039, $P104
    .lex "$ast", $P2039
    find_lex $P105, "$source"
    unless_null $P105, vivify_994
    new $P105, "Undef"
  vivify_994:
    $P106 = $P105."ast"()
    store_lex "$ast", $P106
.annotate 'line', 1494
    get_hll_global $P105, "GLOBAL"
    nqp_get_package_through_who $P106, $P105, "PAST"
    get_who $P108, $P106
    set $P109, $P108["Node"]
    find_lex $P110, "$ast"
    unless_null $P110, vivify_995
    new $P110, "Undef"
  vivify_995:
    $P111 = $P109."ACCEPTS"($P110)
    if $P111, unless_2040_end
.annotate 'line', 1493
    find_lex $P112, "self"
    new $P113, "String"
    assign $P113, "Unable to obtain ast from "
    find_lex $P114, "$source"
    unless_null $P114, vivify_996
    new $P114, "Undef"
  vivify_996:
    typeof $S100, $P114
    concat $P115, $P113, $S100
    $P112."panic"($P115)
  unless_2040_end:
.annotate 'line', 1491
    find_lex $P105, "$ast"
    unless_null $P105, vivify_997
    new $P105, "Undef"
  vivify_997:
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "post" :anon :subid("223_1309859073.622") :outer("167_1309859073.622")
    .param pmc param_2042
    .param pmc param_2043
    .param pmc param_2044 :slurpy :named
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1498
    .lex "self", param_2042
    .lex "$source", param_2043
    .lex "%adverbs", param_2044
.annotate 'line', 1499
    compreg $P104, "PAST"
    find_lex $P105, "$source"
    unless_null $P105, vivify_998
    new $P105, "Undef"
  vivify_998:
    find_lex $P2045, "%adverbs"
    unless_null $P2045, vivify_999
    $P2045 = root_new ['parrot';'Hash']
  vivify_999:
    $P106 = $P104."to_post"($P105, $P2045 :flat)
.annotate 'line', 1498
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "pirbegin" :anon :subid("224_1309859073.622") :outer("167_1309859073.622")
    .param pmc param_2047
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1502
    .lex "self", param_2047
.annotate 'line', 1504
    new $P104, "String"
    assign $P104, ".include 'cclass.pasm'\n"
    concat $P105, $P104, ".include 'except_severity.pasm'\n"
    concat $P106, $P105, ".include 'except_types.pasm'\n"
.annotate 'line', 1505
    concat $P108, $P106, ".include 'iglobals.pasm'\n"
.annotate 'line', 1506
    concat $P109, $P108, ".include 'interpinfo.pasm'\n"
.annotate 'line', 1507
    concat $P110, $P109, ".include 'iterator.pasm'\n"
.annotate 'line', 1508
    concat $P111, $P110, ".include 'sysinfo.pasm'\n"
.annotate 'line', 1509
    concat $P112, $P111, ".include 'datatypes.pasm'\n"
.annotate 'line', 1502
    .return ($P112)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "pir" :anon :subid("225_1309859073.622") :outer("167_1309859073.622")
    .param pmc param_2049
    .param pmc param_2050
    .param pmc param_2051 :slurpy :named
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1513
    .lex "self", param_2049
    .lex "$source", param_2050
    .lex "%adverbs", param_2051
.annotate 'line', 1514
    find_lex $P104, "self"
    $P105 = $P104."pirbegin"()
    compreg $P106, "POST"
    find_lex $P108, "$source"
    unless_null $P108, vivify_1000
    new $P108, "Undef"
  vivify_1000:
    find_lex $P2052, "%adverbs"
    unless_null $P2052, vivify_1001
    $P2052 = root_new ['parrot';'Hash']
  vivify_1001:
    $S100 = $P106."to_pir"($P108, $P2052 :flat)
    concat $P109, $P105, $S100
.annotate 'line', 1513
    .return ($P109)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "evalpmc" :anon :subid("226_1309859073.622") :outer("167_1309859073.622")
    .param pmc param_2054
    .param pmc param_2055
    .param pmc param_2056 :slurpy :named
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1517
    .lex "self", param_2054
    .lex "$source", param_2055
    .lex "%adverbs", param_2056
.annotate 'line', 1518
    new $P104, "Undef"
    set $P2057, $P104
    .lex "$compiler", $P2057
    compreg $P105, "PIR"
    store_lex "$compiler", $P105
.annotate 'line', 1519
    find_lex $P105, "$compiler"
    unless_null $P105, vivify_1002
    new $P105, "Undef"
  vivify_1002:
    find_lex $P106, "$source"
    unless_null $P106, vivify_1003
    new $P106, "Undef"
  vivify_1003:
    $P108 = $P105($P106)
.annotate 'line', 1517
    .return ($P108)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "dumper" :anon :subid("227_1309859073.622") :outer("167_1309859073.622")
    .param pmc param_2059
    .param pmc param_2060
    .param pmc param_2061
    .param pmc param_2062 :slurpy :named
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1522
    .const 'Sub' $P2066 = "228_1309859073.622" 
    capture_lex $P2066
    .lex "self", param_2059
    .lex "$obj", param_2060
    .lex "$name", param_2061
    .lex "%options", param_2062
.annotate 'line', 1523
    find_lex $P2064, "%options"
    unless_null $P2064, vivify_1004
    $P2064 = root_new ['parrot';'Hash']
  vivify_1004:
    set $P105, $P2064["dumper"]
    unless_null $P105, vivify_1005
    new $P105, "Undef"
  vivify_1005:
    if $P105, if_2063
.annotate 'line', 1529
    find_lex $P109, "$obj"
    unless_null $P109, vivify_1006
    new $P109, "Undef"
  vivify_1006:
    find_lex $P110, "$name"
    unless_null $P110, vivify_1007
    new $P110, "Undef"
  vivify_1007:
    $P112 = "_dumper"($P109, $P110)
.annotate 'line', 1528
    set $P104, $P112
.annotate 'line', 1523
    goto if_2063_end
  if_2063:
    .const 'Sub' $P2066 = "228_1309859073.622" 
    capture_lex $P2066
    $P108 = $P2066()
    set $P104, $P108
  if_2063_end:
.annotate 'line', 1522
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2065"  :anon :subid("228_1309859073.622") :outer("227_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1525
    new $P106, "Undef"
    set $P2067, $P106
    .lex "$dumper", $P2067
.annotate 'line', 1524
    load_bytecode "PCT/Dumper.pbc"
.annotate 'line', 1525
    find_lex $P2068, "%options"
    unless_null $P2068, vivify_1008
    $P2068 = root_new ['parrot';'Hash']
  vivify_1008:
    set $P108, $P2068["dumper"]
    unless_null $P108, vivify_1009
    new $P108, "Undef"
  vivify_1009:
    set $S100, $P108
    downcase $S101, $S100
    get_hll_global $P109, "GLOBAL"
    nqp_get_package_through_who $P110, $P109, "PCT"
    get_who $P111, $P110
    set $P2069, $P111["Dumper"]
    unless_null $P2069, vivify_1010
    $P2069 = root_new ['parrot';'Hash']
  vivify_1010:
    set $P112, $P2069[$S101]
    unless_null $P112, vivify_1011
    new $P112, "Undef"
  vivify_1011:
    store_lex "$dumper", $P112
.annotate 'line', 1526
    find_lex $P108, "$dumper"
    unless_null $P108, vivify_1012
    new $P108, "Undef"
  vivify_1012:
    find_lex $P109, "$obj"
    unless_null $P109, vivify_1013
    new $P109, "Undef"
  vivify_1013:
    find_lex $P110, "$name"
    unless_null $P110, vivify_1014
    new $P110, "Undef"
  vivify_1014:
    $P111 = $P108($P109, $P110)
.annotate 'line', 1523
    .return ($P111)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "usage" :anon :subid("229_1309859073.622") :outer("167_1309859073.622")
    .param pmc param_2071
    .param pmc param_2072 :optional
    .param int has_param_2072 :opt_flag
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1533
    .lex "self", param_2071
    if has_param_2072, optparam_1015
    new $P104, "Undef"
    set param_2072, $P104
  optparam_1015:
    .lex "$name", param_2072
.annotate 'line', 1534
    find_lex $P105, "$name"
    unless_null $P105, vivify_1016
    new $P105, "Undef"
  vivify_1016:
    unless $P105, if_2073_end
.annotate 'line', 1535
    find_lex $P106, "$name"
    unless_null $P106, vivify_1017
    new $P106, "Undef"
  vivify_1017:
    "say"($P106)
  if_2073_end:
.annotate 'line', 1537
    find_lex $P105, "self"
    find_lex $P106, "$?CLASS"
    getattribute $P108, $P105, $P106, "$!usage"
    unless_null $P108, vivify_1018
    new $P108, "Undef"
  vivify_1018:
    say $P108
.annotate 'line', 1538
    exit 0
.annotate 'line', 1533
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "version" :anon :subid("230_1309859073.622") :outer("167_1309859073.622")
    .param pmc param_2075
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1541
    .lex "self", param_2075
.annotate 'line', 1542
    new $P104, "Undef"
    set $P2076, $P104
    .lex "$version", $P2076
.annotate 'line', 1543
    new $P105, "Undef"
    set $P2077, $P105
    .lex "$parver", $P2077
.annotate 'line', 1544
    new $P106, "Undef"
    set $P2078, $P106
    .lex "$parrev", $P2078
.annotate 'line', 1542
    find_lex $P108, "self"
    find_lex $P109, "$?CLASS"
    getattribute $P2079, $P108, $P109, "%!config"
    unless_null $P2079, vivify_1019
    $P2079 = root_new ['parrot';'Hash']
  vivify_1019:
    set $P110, $P2079["version"]
    unless_null $P110, vivify_1020
    new $P110, "Undef"
  vivify_1020:
    store_lex "$version", $P110
.annotate 'line', 1543
    find_lex $P108, "$?PACKAGE"
    get_who $P109, $P108
    set $P2080, $P109["%parrot_config"]
    unless_null $P2080, vivify_1021
    $P2080 = root_new ['parrot';'Hash']
  vivify_1021:
    set $P110, $P2080["VERSION"]
    unless_null $P110, vivify_1022
    new $P110, "Undef"
  vivify_1022:
    store_lex "$parver", $P110
.annotate 'line', 1544
    find_lex $P108, "$?PACKAGE"
    get_who $P109, $P108
    set $P2082, $P109["%parrot_config"]
    unless_null $P2082, vivify_1023
    $P2082 = root_new ['parrot';'Hash']
  vivify_1023:
    set $P110, $P2082["git_describe"]
    unless_null $P110, vivify_1024
    new $P110, "Undef"
  vivify_1024:
    set $P2081, $P110
    defined $I2084, $P2081
    if $I2084, default_2083
    new $P111, "String"
    assign $P111, "(unknown)"
    set $P2081, $P111
  default_2083:
    store_lex "$parrev", $P2081
.annotate 'line', 1545
    new $P108, 'String'
    set $P108, "This is "
    find_lex $P109, "self"
    find_lex $P110, "$?CLASS"
    getattribute $P111, $P109, $P110, "$!language"
    unless_null $P111, vivify_1025
    new $P111, "Undef"
  vivify_1025:
    concat $P112, $P108, $P111
    concat $P113, $P112, " version "
    find_lex $P114, "$version"
    unless_null $P114, vivify_1026
    new $P114, "Undef"
  vivify_1026:
    concat $P115, $P113, $P114
    concat $P116, $P115, " built on parrot "
    find_lex $P117, "$parver"
    unless_null $P117, vivify_1027
    new $P117, "Undef"
  vivify_1027:
    concat $P118, $P116, $P117
    concat $P119, $P118, " revision "
    find_lex $P120, "$parrev"
    unless_null $P120, vivify_1028
    new $P120, "Undef"
  vivify_1028:
    concat $P121, $P119, $P120
    say $P121
.annotate 'line', 1546
    exit 0
.annotate 'line', 1541
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "show-config" :anon :subid("231_1309859073.622") :outer("167_1309859073.622")
    .param pmc param_2086
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1549
    .const 'Sub' $P2094 = "233_1309859073.622" 
    capture_lex $P2094
    .const 'Sub' $P2089 = "232_1309859073.622" 
    capture_lex $P2089
    .lex "self", param_2086
.annotate 'line', 1550
    find_lex $P105, "$?PACKAGE"
    get_who $P106, $P105
    set $P2087, $P106["%parrot_config"]
    unless_null $P2087, vivify_1029
    $P2087 = root_new ['parrot';'Hash']
  vivify_1029:
    defined $I100, $P2087
    unless $I100, for_undef_1030
    iter $P104, $P2087
    new $P109, 'ExceptionHandler'
    set_label $P109, loop2091_handler
    $P109."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P109
  loop2091_test:
    unless $P104, loop2091_done
    shift $P108, $P104
  loop2091_redo:
    .const 'Sub' $P2089 = "232_1309859073.622" 
    capture_lex $P2089
    $P2089($P108)
  loop2091_next:
    goto loop2091_test
  loop2091_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P110, exception, 'type'
    eq $P110, .CONTROL_LOOP_NEXT, loop2091_next
    eq $P110, .CONTROL_LOOP_REDO, loop2091_redo
  loop2091_done:
    pop_eh 
  for_undef_1030:
.annotate 'line', 1553
    find_lex $P105, "self"
    find_lex $P106, "$?CLASS"
    getattribute $P2092, $P105, $P106, "%!config"
    unless_null $P2092, vivify_1033
    $P2092 = root_new ['parrot';'Hash']
  vivify_1033:
    defined $I100, $P2092
    unless $I100, for_undef_1034
    iter $P104, $P2092
    new $P109, 'ExceptionHandler'
    set_label $P109, loop2096_handler
    $P109."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P109
  loop2096_test:
    unless $P104, loop2096_done
    shift $P108, $P104
  loop2096_redo:
    .const 'Sub' $P2094 = "233_1309859073.622" 
    capture_lex $P2094
    $P2094($P108)
  loop2096_next:
    goto loop2096_test
  loop2096_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P110, exception, 'type'
    eq $P110, .CONTROL_LOOP_NEXT, loop2096_next
    eq $P110, .CONTROL_LOOP_REDO, loop2096_redo
  loop2096_done:
    pop_eh 
  for_undef_1034:
.annotate 'line', 1556
    exit 0
.annotate 'line', 1549
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2088"  :anon :subid("232_1309859073.622") :outer("231_1309859073.622")
    .param pmc param_2090
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1550
    .lex "$_", param_2090
.annotate 'line', 1551
    new $P109, "String"
    assign $P109, "parrot::"
    find_lex $P110, "$_"
    unless_null $P110, vivify_1031
    new $P110, "Undef"
  vivify_1031:
    $S100 = $P110."key"()
    concat $P111, $P109, $S100
    concat $P112, $P111, "="
    find_lex $P113, "$_"
    unless_null $P113, vivify_1032
    new $P113, "Undef"
  vivify_1032:
    $S101 = $P113."value"()
    concat $P114, $P112, $S101
    say $P114
.annotate 'line', 1550
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2093"  :anon :subid("233_1309859073.622") :outer("231_1309859073.622")
    .param pmc param_2095
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1553
    .lex "$_", param_2095
.annotate 'line', 1554
    find_lex $P109, "self"
    find_lex $P110, "$?CLASS"
    getattribute $P111, $P109, $P110, "$!language"
    unless_null $P111, vivify_1035
    new $P111, "Undef"
  vivify_1035:
    concat $P112, $P111, "::"
    find_lex $P113, "$_"
    unless_null $P113, vivify_1036
    new $P113, "Undef"
  vivify_1036:
    $S100 = $P113."key"()
    concat $P114, $P112, $S100
    concat $P115, $P114, "="
    find_lex $P116, "$_"
    unless_null $P116, vivify_1037
    new $P116, "Undef"
  vivify_1037:
    $S101 = $P116."value"()
    concat $P117, $P115, $S101
    say $P117
.annotate 'line', 1553
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "nqpevent" :anon :subid("234_1309859073.622") :outer("167_1309859073.622")
    .param pmc param_2098
    .param pmc param_2099
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1559
    .const 'Sub' $P2102 = "235_1309859073.622" 
    capture_lex $P2102
    .lex "self", param_2098
    .lex "$file", param_2099
.annotate 'line', 1560
    null $P104
    nqpevent_fh $P104
.annotate 'line', 1561
    find_lex $P105, "$file"
    unless_null $P105, vivify_1038
    new $P105, "Undef"
  vivify_1038:
    if $P105, if_2100
    set $P104, $P105
    goto if_2100_end
  if_2100:
    .const 'Sub' $P2102 = "235_1309859073.622" 
    capture_lex $P2102
    $P108 = $P2102()
    set $P104, $P108
  if_2100_end:
.annotate 'line', 1559
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2101"  :anon :subid("235_1309859073.622") :outer("234_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1562
    new $P106, "Undef"
    set $P2103, $P106
    .lex "$fh", $P2103
    new $P108, "FileHandle"
    store_lex "$fh", $P108
.annotate 'line', 1563
    find_lex $P108, "$fh"
    unless_null $P108, vivify_1039
    new $P108, "Undef"
  vivify_1039:
    find_lex $P109, "$file"
    unless_null $P109, vivify_1040
    new $P109, "Undef"
  vivify_1040:
    $P110 = $P108."open"($P109, "w")
    if $P110, unless_2104_end
    find_lex $P111, "self"
    new $P112, 'String'
    set $P112, "Cannot write to "
    find_lex $P113, "$file"
    unless_null $P113, vivify_1041
    new $P113, "Undef"
  vivify_1041:
    concat $P114, $P112, $P113
    $P111."panic"($P114)
  unless_2104_end:
.annotate 'line', 1564
    find_lex $P108, "$fh"
    unless_null $P108, vivify_1042
    new $P108, "Undef"
  vivify_1042:
    nqpevent_fh $P108
.annotate 'line', 1561
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "removestage" :anon :subid("236_1309859073.622") :outer("167_1309859073.622")
    .param pmc param_2106
    .param pmc param_2107
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1568
    .const 'Sub' $P2112 = "237_1309859073.622" 
    capture_lex $P2112
    .lex "self", param_2106
    .lex "$stagename", param_2107
.annotate 'line', 1569
    $P2109 = root_new ['parrot';'ResizablePMCArray']
    set $P2108, $P2109
    .lex "@new_stages", $P2108
    new $P104, "ResizableStringArray"
    store_lex "@new_stages", $P104
.annotate 'line', 1570
    find_lex $P105, "self"
    find_lex $P106, "$?CLASS"
    getattribute $P2110, $P105, $P106, "@!stages"
    unless_null $P2110, vivify_1043
    $P2110 = root_new ['parrot';'ResizablePMCArray']
  vivify_1043:
    defined $I100, $P2110
    unless $I100, for_undef_1044
    iter $P104, $P2110
    new $P110, 'ExceptionHandler'
    set_label $P110, loop2116_handler
    $P110."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P110
  loop2116_test:
    unless $P104, loop2116_done
    shift $P108, $P104
  loop2116_redo:
    .const 'Sub' $P2112 = "237_1309859073.622" 
    capture_lex $P2112
    $P2112($P108)
  loop2116_next:
    goto loop2116_test
  loop2116_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P111, exception, 'type'
    eq $P111, .CONTROL_LOOP_NEXT, loop2116_next
    eq $P111, .CONTROL_LOOP_REDO, loop2116_redo
  loop2116_done:
    pop_eh 
  for_undef_1044:
.annotate 'line', 1575
    find_lex $P2117, "@new_stages"
    unless_null $P2117, vivify_1049
    $P2117 = root_new ['parrot';'ResizablePMCArray']
  vivify_1049:
    find_lex $P104, "self"
    find_lex $P105, "$?CLASS"
    setattribute $P104, $P105, "@!stages", $P2117
.annotate 'line', 1568
    .return ($P2117)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2111"  :anon :subid("237_1309859073.622") :outer("236_1309859073.622")
    .param pmc param_2113
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1570
    .lex "$_", param_2113
.annotate 'line', 1571
    find_lex $P110, "$_"
    unless_null $P110, vivify_1045
    new $P110, "Undef"
  vivify_1045:
    set $S100, $P110
    find_lex $P111, "$stagename"
    unless_null $P111, vivify_1046
    new $P111, "Undef"
  vivify_1046:
    set $S101, $P111
    isne $I101, $S100, $S101
    if $I101, if_2114
    new $P109, 'Integer'
    set $P109, $I101
    goto if_2114_end
  if_2114:
.annotate 'line', 1572
    find_lex $P2115, "@new_stages"
    unless_null $P2115, vivify_1047
    $P2115 = root_new ['parrot';'ResizablePMCArray']
  vivify_1047:
    find_lex $P112, "$_"
    unless_null $P112, vivify_1048
    new $P112, "Undef"
  vivify_1048:
    $P113 = $P2115."push"($P112)
.annotate 'line', 1571
    set $P109, $P113
  if_2114_end:
.annotate 'line', 1570
    .return ($P109)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "addstage" :anon :subid("238_1309859073.622") :outer("167_1309859073.622")
    .param pmc param_2121
    .param pmc param_2122
    .param pmc param_2123 :slurpy :named
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1578
    .const 'Sub' $P2141 = "240_1309859073.622" 
    capture_lex $P2141
    .const 'Sub' $P2135 = "239_1309859073.622" 
    capture_lex $P2135
    new $P2120, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2120, control_2119
    push_eh $P2120
    .lex "self", param_2121
    .lex "$stagename", param_2122
    .lex "%adverbs", param_2123
.annotate 'line', 1579
    new $P104, "Undef"
    set $P2124, $P104
    .lex "$position", $P2124
.annotate 'line', 1580
    new $P105, "Undef"
    set $P2125, $P105
    .lex "$where", $P2125
.annotate 'line', 1593
    $P2127 = root_new ['parrot';'ResizablePMCArray']
    set $P2126, $P2127
    .lex "@new-stages", $P2126
.annotate 'line', 1578
    find_lex $P106, "$position"
    unless_null $P106, vivify_1050
    new $P106, "Undef"
  vivify_1050:
    find_lex $P106, "$where"
    unless_null $P106, vivify_1051
    new $P106, "Undef"
  vivify_1051:
.annotate 'line', 1581
    find_lex $P2129, "%adverbs"
    unless_null $P2129, vivify_1052
    $P2129 = root_new ['parrot';'Hash']
  vivify_1052:
    set $P106, $P2129["before"]
    unless_null $P106, vivify_1053
    new $P106, "Undef"
  vivify_1053:
    if $P106, if_2128
.annotate 'line', 1584
    find_lex $P2132, "%adverbs"
    unless_null $P2132, vivify_1054
    $P2132 = root_new ['parrot';'Hash']
  vivify_1054:
    set $P108, $P2132["after"]
    unless_null $P108, vivify_1055
    new $P108, "Undef"
  vivify_1055:
    if $P108, if_2131
.annotate 'line', 1587
    .const 'Sub' $P2135 = "239_1309859073.622" 
    capture_lex $P2135
    $P2135()
    goto if_2131_end
  if_2131:
.annotate 'line', 1585
    find_lex $P2133, "%adverbs"
    unless_null $P2133, vivify_1059
    $P2133 = root_new ['parrot';'Hash']
  vivify_1059:
    set $P109, $P2133["after"]
    unless_null $P109, vivify_1060
    new $P109, "Undef"
  vivify_1060:
    store_lex "$where", $P109
.annotate 'line', 1586
    new $P109, "String"
    assign $P109, "after"
    store_lex "$position", $P109
  if_2131_end:
.annotate 'line', 1584
    goto if_2128_end
  if_2128:
.annotate 'line', 1582
    find_lex $P2130, "%adverbs"
    unless_null $P2130, vivify_1061
    $P2130 = root_new ['parrot';'Hash']
  vivify_1061:
    set $P108, $P2130["before"]
    unless_null $P108, vivify_1062
    new $P108, "Undef"
  vivify_1062:
    store_lex "$where", $P108
.annotate 'line', 1583
    new $P108, "String"
    assign $P108, "before"
    store_lex "$position", $P108
  if_2128_end:
.annotate 'line', 1593
    new $P106, "ResizableStringArray"
    store_lex "@new-stages", $P106
.annotate 'line', 1594
    find_lex $P108, "self"
    $P109 = $P108."stages"()
    defined $I100, $P109
    unless $I100, for_undef_1063
    iter $P106, $P109
    new $P112, 'ExceptionHandler'
    set_label $P112, loop2150_handler
    $P112."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P112
  loop2150_test:
    unless $P106, loop2150_done
    shift $P110, $P106
  loop2150_redo:
    .const 'Sub' $P2141 = "240_1309859073.622" 
    capture_lex $P2141
    $P2141($P110)
  loop2150_next:
    goto loop2150_test
  loop2150_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P113, exception, 'type'
    eq $P113, .CONTROL_LOOP_NEXT, loop2150_next
    eq $P113, .CONTROL_LOOP_REDO, loop2150_redo
  loop2150_done:
    pop_eh 
  for_undef_1063:
.annotate 'line', 1607
    find_lex $P106, "self"
    find_lex $P2151, "@new-stages"
    unless_null $P2151, vivify_1077
    $P2151 = root_new ['parrot';'ResizablePMCArray']
  vivify_1077:
    $P108 = $P106."stages"($P2151)
.annotate 'line', 1578
    .return ($P108)
  control_2119:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P106, exception, "payload"
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2134"  :anon :subid("239_1309859073.622") :outer("238_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1588
    $P2137 = root_new ['parrot';'ResizablePMCArray']
    set $P2136, $P2137
    .lex "@new-stages", $P2136
    find_lex $P109, "self"
    $P110 = $P109."stages"()
    clone $P111, $P110
    store_lex "@new-stages", $P111
.annotate 'line', 1589
    find_lex $P2138, "@new-stages"
    unless_null $P2138, vivify_1056
    $P2138 = root_new ['parrot';'ResizablePMCArray']
  vivify_1056:
    find_lex $P109, "$stagename"
    unless_null $P109, vivify_1057
    new $P109, "Undef"
  vivify_1057:
    push $P2138, $P109
.annotate 'line', 1590
    find_lex $P109, "self"
    find_lex $P2139, "@new-stages"
    unless_null $P2139, vivify_1058
    $P2139 = root_new ['parrot';'ResizablePMCArray']
  vivify_1058:
    $P109."stages"($P2139)
.annotate 'line', 1591
    new $P109, "Exception"
    set $P109['type'], .CONTROL_RETURN
    new $P110, "Integer"
    assign $P110, 1
    setattribute $P109, 'payload', $P110
    throw $P109
.annotate 'line', 1587
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2140"  :anon :subid("240_1309859073.622") :outer("238_1309859073.622")
    .param pmc param_2142
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1594
    .lex "$_", param_2142
.annotate 'line', 1595
    find_lex $P112, "$_"
    unless_null $P112, vivify_1064
    new $P112, "Undef"
  vivify_1064:
    set $S100, $P112
    find_lex $P113, "$where"
    unless_null $P113, vivify_1065
    new $P113, "Undef"
  vivify_1065:
    set $S101, $P113
    iseq $I101, $S100, $S101
    if $I101, if_2143
.annotate 'line', 1604
    find_lex $P2149, "@new-stages"
    unless_null $P2149, vivify_1066
    $P2149 = root_new ['parrot';'ResizablePMCArray']
  vivify_1066:
    find_lex $P115, "$_"
    unless_null $P115, vivify_1067
    new $P115, "Undef"
  vivify_1067:
    push $P2149, $P115
.annotate 'line', 1603
    set $P111, $P2149
.annotate 'line', 1595
    goto if_2143_end
  if_2143:
.annotate 'line', 1596
    find_lex $P115, "$position"
    unless_null $P115, vivify_1068
    new $P115, "Undef"
  vivify_1068:
    set $S102, $P115
    iseq $I102, $S102, "before"
    if $I102, if_2144
.annotate 'line', 1600
    find_lex $P2147, "@new-stages"
    unless_null $P2147, vivify_1069
    $P2147 = root_new ['parrot';'ResizablePMCArray']
  vivify_1069:
    find_lex $P116, "$_"
    unless_null $P116, vivify_1070
    new $P116, "Undef"
  vivify_1070:
    push $P2147, $P116
.annotate 'line', 1601
    find_lex $P2148, "@new-stages"
    unless_null $P2148, vivify_1071
    $P2148 = root_new ['parrot';'ResizablePMCArray']
  vivify_1071:
    find_lex $P116, "$stagename"
    unless_null $P116, vivify_1072
    new $P116, "Undef"
  vivify_1072:
    push $P2148, $P116
.annotate 'line', 1599
    set $P114, $P2148
.annotate 'line', 1596
    goto if_2144_end
  if_2144:
.annotate 'line', 1597
    find_lex $P2145, "@new-stages"
    unless_null $P2145, vivify_1073
    $P2145 = root_new ['parrot';'ResizablePMCArray']
  vivify_1073:
    find_lex $P116, "$stagename"
    unless_null $P116, vivify_1074
    new $P116, "Undef"
  vivify_1074:
    push $P2145, $P116
.annotate 'line', 1598
    find_lex $P2146, "@new-stages"
    unless_null $P2146, vivify_1075
    $P2146 = root_new ['parrot';'ResizablePMCArray']
  vivify_1075:
    find_lex $P116, "$_"
    unless_null $P116, vivify_1076
    new $P116, "Undef"
  vivify_1076:
    push $P2146, $P116
.annotate 'line', 1596
    set $P114, $P2146
  if_2144_end:
.annotate 'line', 1595
    set $P111, $P114
  if_2143_end:
.annotate 'line', 1594
    .return ($P111)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "parse_name" :anon :subid("241_1309859073.622") :outer("167_1309859073.622")
    .param pmc param_2153
    .param pmc param_2154
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1610
    .const 'Sub' $P2170 = "242_1309859073.622" 
    capture_lex $P2170
    .lex "self", param_2153
    .lex "$name", param_2154
.annotate 'line', 1611
    $P2156 = root_new ['parrot';'ResizablePMCArray']
    set $P2155, $P2156
    .lex "@ns", $P2155
.annotate 'line', 1612
    new $P104, "Undef"
    set $P2157, $P104
    .lex "$sigil", $P2157
.annotate 'line', 1615
    new $P105, "Undef"
    set $P2158, $P105
    .lex "$idx", $P2158
.annotate 'line', 1623
    $P2160 = root_new ['parrot';'ResizablePMCArray']
    set $P2159, $P2160
    .lex "@actual_ns", $P2159
.annotate 'line', 1611
    find_lex $P106, "$name"
    unless_null $P106, vivify_1078
    new $P106, "Undef"
  vivify_1078:
    set $S100, $P106
    split $P108, "::", $S100
    store_lex "@ns", $P108
.annotate 'line', 1612
    find_lex $P2161, "@ns"
    unless_null $P2161, vivify_1079
    $P2161 = root_new ['parrot';'ResizablePMCArray']
  vivify_1079:
    set $P106, $P2161[0]
    unless_null $P106, vivify_1080
    new $P106, "Undef"
  vivify_1080:
    set $S100, $P106
    substr $S101, $S100, 0, 1
    new $P108, 'String'
    set $P108, $S101
    store_lex "$sigil", $P108
.annotate 'line', 1615
    find_lex $P106, "$sigil"
    unless_null $P106, vivify_1081
    new $P106, "Undef"
  vivify_1081:
    set $S100, $P106
    index $I100, "$@%&", $S100
    new $P108, 'Integer'
    set $P108, $I100
    store_lex "$idx", $P108
.annotate 'line', 1616
    find_lex $P106, "$idx"
    unless_null $P106, vivify_1082
    new $P106, "Undef"
  vivify_1082:
    set $N100, $P106
    isge $I100, $N100, 0.0
    unless $I100, if_2162_end
.annotate 'line', 1617
    find_lex $P2163, "@ns"
    unless_null $P2163, vivify_1083
    $P2163 = root_new ['parrot';'ResizablePMCArray']
  vivify_1083:
    set $P108, $P2163[0]
    unless_null $P108, vivify_1084
    new $P108, "Undef"
  vivify_1084:
    set $S100, $P108
    substr $S101, $S100, 1
    new $P109, 'String'
    set $P109, $S101
    find_lex $P2164, "@ns"
    unless_null $P2164, vivify_1085
    $P2164 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@ns", $P2164
  vivify_1085:
    set $P2164[0], $P109
.annotate 'line', 1618
    find_lex $P108, "$sigil"
    unless_null $P108, vivify_1086
    new $P108, "Undef"
  vivify_1086:
    find_lex $P2165, "@ns"
    unless_null $P2165, vivify_1087
    $P2165 = root_new ['parrot';'ResizablePMCArray']
  vivify_1087:
    set $P109, $P2165[-1]
    unless_null $P109, vivify_1088
    new $P109, "Undef"
  vivify_1088:
    concat $P110, $P108, $P109
    find_lex $P2166, "@ns"
    unless_null $P2166, vivify_1089
    $P2166 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@ns", $P2166
  vivify_1089:
    set $P2166[-1], $P110
  if_2162_end:
.annotate 'line', 1610
    find_lex $P2167, "@actual_ns"
    unless_null $P2167, vivify_1090
    $P2167 = root_new ['parrot';'ResizablePMCArray']
  vivify_1090:
.annotate 'line', 1624
    find_lex $P2168, "@ns"
    unless_null $P2168, vivify_1091
    $P2168 = root_new ['parrot';'ResizablePMCArray']
  vivify_1091:
    defined $I100, $P2168
    unless $I100, for_undef_1092
    iter $P106, $P2168
    new $P110, 'ExceptionHandler'
    set_label $P110, loop2174_handler
    $P110."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P110
  loop2174_test:
    unless $P106, loop2174_done
    shift $P108, $P106
  loop2174_redo:
    .const 'Sub' $P2170 = "242_1309859073.622" 
    capture_lex $P2170
    $P2170($P108)
  loop2174_next:
    goto loop2174_test
  loop2174_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P111, exception, 'type'
    eq $P111, .CONTROL_LOOP_NEXT, loop2174_next
    eq $P111, .CONTROL_LOOP_REDO, loop2174_redo
  loop2174_done:
    pop_eh 
  for_undef_1092:
.annotate 'line', 1610
    find_lex $P2175, "@actual_ns"
    unless_null $P2175, vivify_1096
    $P2175 = root_new ['parrot';'ResizablePMCArray']
  vivify_1096:
    .return ($P2175)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2169"  :anon :subid("242_1309859073.622") :outer("241_1309859073.622")
    .param pmc param_2171
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1624
    .lex "$_", param_2171
.annotate 'line', 1625
    find_lex $P110, "$_"
    unless_null $P110, vivify_1093
    new $P110, "Undef"
  vivify_1093:
    set $S100, $P110
    iseq $I101, $S100, ""
    unless $I101, unless_2172
    new $P109, 'Integer'
    set $P109, $I101
    goto unless_2172_end
  unless_2172:
    find_lex $P2173, "@actual_ns"
    unless_null $P2173, vivify_1094
    $P2173 = root_new ['parrot';'ResizablePMCArray']
  vivify_1094:
    find_lex $P111, "$_"
    unless_null $P111, vivify_1095
    new $P111, "Undef"
  vivify_1095:
    push $P2173, $P111
    set $P109, $P2173
  unless_2172_end:
.annotate 'line', 1624
    .return ($P109)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "lineof" :anon :subid("243_1309859073.622") :outer("167_1309859073.622")
    .param pmc param_2177
    .param pmc param_2178
    .param pmc param_2179
    .param pmc param_2180 :optional :named("cache")
    .param int has_param_2180 :opt_flag
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1630
    .lex "self", param_2177
    .lex "$target", param_2178
    .lex "$pos", param_2179
    if has_param_2180, optparam_1097
    new $P104, "Undef"
    set param_2180, $P104
  optparam_1097:
    .lex "$cache", param_2180
.annotate 'line', 1631

            .local pmc target, linepos
            .local int pos, cache
            target = find_lex '$target'
            $P0 = find_lex '$pos'
            pos = $P0
            $P0 = find_lex '$cache'
            cache = $P0

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
        
.annotate 'line', 1630
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "_block2182"  :subid("244_1309859073.622") :outer("10_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1785
    .const 'Sub' $P2198 = "249_1309859073.622" 
    capture_lex $P2198
    .const 'Sub' $P2194 = "248_1309859073.622" 
    capture_lex $P2194
    .const 'Sub' $P2191 = "247_1309859073.622" 
    capture_lex $P2191
    .const 'Sub' $P2188 = "246_1309859073.622" 
    capture_lex $P2188
    .const 'Sub' $P2186 = "245_1309859073.622" 
    capture_lex $P2186
    .lex "$?PACKAGE", $P2184
    .lex "$?CLASS", $P2185
.annotate 'line', 1801
    .const 'Sub' $P2198 = "249_1309859073.622" 
    newclosure $P2213, $P2198
.annotate 'line', 1785
    .return ($P2213)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "init" :anon :subid("245_1309859073.622") :outer("244_1309859073.622")
    .param pmc param_2187
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1789
    .lex "self", param_2187
.annotate 'line', 1790
    new $P103, "ResizablePMCArray"
    find_lex $P104, "self"
    find_lex $P105, "$?CLASS"
    setattribute $P104, $P105, "@!arguments", $P103
.annotate 'line', 1791
    new $P103, "Hash"
    find_lex $P104, "self"
    find_lex $P105, "$?CLASS"
    setattribute $P104, $P105, "%!options", $P103
.annotate 'line', 1789
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "arguments" :anon :subid("246_1309859073.622") :outer("244_1309859073.622")
    .param pmc param_2189
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1794
    .lex "self", param_2189
    find_lex $P103, "self"
    find_lex $P104, "$?CLASS"
    getattribute $P2190, $P103, $P104, "@!arguments"
    unless_null $P2190, vivify_1099
    $P2190 = root_new ['parrot';'ResizablePMCArray']
  vivify_1099:
    .return ($P2190)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "options" :anon :subid("247_1309859073.622") :outer("244_1309859073.622")
    .param pmc param_2192
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1795
    .lex "self", param_2192
    find_lex $P103, "self"
    find_lex $P104, "$?CLASS"
    getattribute $P2193, $P103, $P104, "%!options"
    unless_null $P2193, vivify_1100
    $P2193 = root_new ['parrot';'Hash']
  vivify_1100:
    .return ($P2193)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "add-argument" :anon :subid("248_1309859073.622") :outer("244_1309859073.622")
    .param pmc param_2195
    .param pmc param_2196
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1797
    .lex "self", param_2195
    .lex "$x", param_2196
.annotate 'line', 1798
    find_lex $P103, "self"
    find_lex $P104, "$?CLASS"
    getattribute $P2197, $P103, $P104, "@!arguments"
    unless_null $P2197, vivify_1101
    $P2197 = root_new ['parrot';'ResizablePMCArray']
  vivify_1101:
    find_lex $P105, "$x"
    unless_null $P105, vivify_1102
    new $P105, "Undef"
  vivify_1102:
    push $P2197, $P105
.annotate 'line', 1797
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "add-option" :anon :subid("249_1309859073.622") :outer("244_1309859073.622")
    .param pmc param_2199
    .param pmc param_2200
    .param pmc param_2201
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1801
    .const 'Sub' $P2205 = "250_1309859073.622" 
    capture_lex $P2205
    .lex "self", param_2199
    .lex "$name", param_2200
    .lex "$value", param_2201
.annotate 'line', 1804
    find_lex $P106, "$name"
    unless_null $P106, vivify_1103
    new $P106, "Undef"
  vivify_1103:
    find_lex $P104, "self"
    find_lex $P105, "$?CLASS"
    getattribute $P2203, $P104, $P105, "%!options"
    unless_null $P2203, vivify_1104
    $P2203 = root_new ['parrot';'Hash']
  vivify_1104:
    exists $I100, $P2203[$P106]
    if $I100, if_2202
.annotate 'line', 1813
    find_lex $P110, "$value"
    unless_null $P110, vivify_1105
    new $P110, "Undef"
  vivify_1105:
    find_lex $P111, "$name"
    unless_null $P111, vivify_1106
    new $P111, "Undef"
  vivify_1106:
    find_lex $P112, "self"
    find_lex $P113, "$?CLASS"
    getattribute $P2212, $P112, $P113, "%!options"
    unless_null $P2212, vivify_1107
    $P2212 = root_new ['parrot';'Hash']
    setattribute $P112, $P113, "%!options", $P2212
  vivify_1107:
    set $P2212[$P111], $P110
.annotate 'line', 1812
    set $P103, $P110
.annotate 'line', 1804
    goto if_2202_end
  if_2202:
    .const 'Sub' $P2205 = "250_1309859073.622" 
    capture_lex $P2205
    $P109 = $P2205()
    set $P103, $P109
  if_2202_end:
.annotate 'line', 1801
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "_block2204"  :anon :subid("250_1309859073.622") :outer("249_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1805
    new $P107, "Undef"
    set $P2206, $P107
    .lex "$t", $P2206
    find_lex $P108, "self"
    find_lex $P109, "$?CLASS"
    getattribute $P2207, $P108, $P109, "%!options"
    unless_null $P2207, vivify_1108
    $P2207 = root_new ['parrot';'Hash']
  vivify_1108:
    typeof $S100, $P2207
    new $P110, 'String'
    set $P110, $S100
    store_lex "$t", $P110
.annotate 'line', 1806
    find_lex $P108, "$t"
    unless_null $P108, vivify_1109
    new $P108, "Undef"
  vivify_1109:
    "say"($P108)
.annotate 'line', 1807
    find_lex $P109, "$t"
    unless_null $P109, vivify_1110
    new $P109, "Undef"
  vivify_1110:
    set $S100, $P109
    iseq $I101, $S100, "ResizablePMCArray"
    if $I101, if_2208
.annotate 'line', 1810
    find_lex $P110, "$name"
    unless_null $P110, vivify_1111
    new $P110, "Undef"
  vivify_1111:
    find_lex $P111, "self"
    find_lex $P112, "$?CLASS"
    getattribute $P2210, $P111, $P112, "%!options"
    unless_null $P2210, vivify_1112
    $P2210 = root_new ['parrot';'Hash']
  vivify_1112:
    set $P114, $P2210[$P110]
    unless_null $P114, vivify_1113
    new $P114, "Undef"
  vivify_1113:
    find_lex $P115, "$name"
    unless_null $P115, vivify_1114
    new $P115, "Undef"
  vivify_1114:
    new $P116, "ResizablePMCArray"
    push $P116, $P114
    push $P116, $P115
    find_lex $P117, "$name"
    unless_null $P117, vivify_1115
    new $P117, "Undef"
  vivify_1115:
    find_lex $P118, "self"
    find_lex $P119, "$?CLASS"
    getattribute $P2211, $P118, $P119, "%!options"
    unless_null $P2211, vivify_1116
    $P2211 = root_new ['parrot';'Hash']
    setattribute $P118, $P119, "%!options", $P2211
  vivify_1116:
    set $P2211[$P117], $P116
.annotate 'line', 1809
    set $P108, $P116
.annotate 'line', 1807
    goto if_2208_end
  if_2208:
.annotate 'line', 1808
    find_lex $P110, "$name"
    unless_null $P110, vivify_1117
    new $P110, "Undef"
  vivify_1117:
    find_lex $P111, "self"
    find_lex $P112, "$?CLASS"
    getattribute $P2209, $P111, $P112, "%!options"
    unless_null $P2209, vivify_1118
    $P2209 = root_new ['parrot';'Hash']
  vivify_1118:
    set $P113, $P2209[$P110]
    unless_null $P113, vivify_1119
    new $P113, "Undef"
  vivify_1119:
    find_lex $P114, "$value"
    unless_null $P114, vivify_1120
    new $P114, "Undef"
  vivify_1120:
    push $P113, $P114
.annotate 'line', 1807
    set $P108, $P113
  if_2208_end:
.annotate 'line', 1804
    .return ($P108)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2214"  :subid("251_1309859073.622") :outer("10_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1818
    .const 'Sub' $P2270 = "262_1309859073.622" 
    capture_lex $P2270
    .const 'Sub' $P2265 = "261_1309859073.622" 
    capture_lex $P2265
    .const 'Sub' $P2257 = "260_1309859073.622" 
    capture_lex $P2257
    .const 'Sub' $P2242 = "258_1309859073.622" 
    capture_lex $P2242
    .const 'Sub' $P2239 = "257_1309859073.622" 
    capture_lex $P2239
    .const 'Sub' $P2235 = "256_1309859073.622" 
    capture_lex $P2235
    .const 'Sub' $P2225 = "254_1309859073.622" 
    capture_lex $P2225
    .const 'Sub' $P2223 = "253_1309859073.622" 
    capture_lex $P2223
    .const 'Sub' $P2218 = "252_1309859073.622" 
    capture_lex $P2218
    .lex "$?PACKAGE", $P2216
    .lex "$?CLASS", $P2217
.annotate 'line', 1878
    .const 'Sub' $P2270 = "262_1309859073.622" 
    newclosure $P2343, $P2270
.annotate 'line', 1818
    .return ($P2343)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "new" :anon :subid("252_1309859073.622") :outer("251_1309859073.622")
    .param pmc param_2219
    .param pmc param_2220
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1824
    .lex "self", param_2219
    .lex "@specs", param_2220
.annotate 'line', 1825
    new $P103, "Undef"
    set $P2221, $P103
    .lex "$obj", $P2221
    find_lex $P104, "self"
    $P105 = $P104."CREATE"()
    store_lex "$obj", $P105
.annotate 'line', 1826
    find_lex $P104, "$obj"
    unless_null $P104, vivify_1121
    new $P104, "Undef"
  vivify_1121:
    find_lex $P2222, "@specs"
    unless_null $P2222, vivify_1122
    $P2222 = root_new ['parrot';'ResizablePMCArray']
  vivify_1122:
    $P104."BUILD"($P2222 :named("specs"))
.annotate 'line', 1824
    find_lex $P104, "$obj"
    unless_null $P104, vivify_1123
    new $P104, "Undef"
  vivify_1123:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "stop-after-first-arg" :anon :subid("253_1309859073.622") :outer("251_1309859073.622")
    .param pmc param_2224
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1830
    .lex "self", param_2224
.annotate 'line', 1831
    new $P103, "Integer"
    assign $P103, 1
    find_lex $P104, "self"
    find_lex $P105, "$?CLASS"
    setattribute $P104, $P105, "$!stop-after-first-arg", $P103
.annotate 'line', 1830
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "BUILD" :anon :subid("254_1309859073.622") :outer("251_1309859073.622")
    .param pmc param_2226
    .param pmc param_2227 :optional :named("specs")
    .param int has_param_2227 :opt_flag
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1834
    .const 'Sub' $P2232 = "255_1309859073.622" 
    capture_lex $P2232
    .lex "self", param_2226
    if has_param_2227, optparam_1124
    $P2228 = root_new ['parrot';'ResizablePMCArray']
    set param_2227, $P2228
  optparam_1124:
    .lex "@specs", param_2227
.annotate 'line', 1835
    new $P103, "Integer"
    assign $P103, 1
    find_lex $P104, "self"
    find_lex $P105, "$?CLASS"
    getattribute $P2229, $P104, $P105, "%!stopper"
    unless_null $P2229, vivify_1125
    $P2229 = root_new ['parrot';'Hash']
    setattribute $P104, $P105, "%!stopper", $P2229
  vivify_1125:
    set $P2229["--"], $P103
.annotate 'line', 1836
    new $P103, "Integer"
    assign $P103, 0
    find_lex $P104, "self"
    find_lex $P105, "$?CLASS"
    setattribute $P104, $P105, "$!stop-after-first-arg", $P103
.annotate 'line', 1837
    find_lex $P2230, "@specs"
    unless_null $P2230, vivify_1126
    $P2230 = root_new ['parrot';'ResizablePMCArray']
  vivify_1126:
    defined $I100, $P2230
    unless $I100, for_undef_1127
    iter $P103, $P2230
    new $P105, 'ExceptionHandler'
    set_label $P105, loop2234_handler
    $P105."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P105
  loop2234_test:
    unless $P103, loop2234_done
    shift $P104, $P103
  loop2234_redo:
    .const 'Sub' $P2232 = "255_1309859073.622" 
    capture_lex $P2232
    $P2232($P104)
  loop2234_next:
    goto loop2234_test
  loop2234_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P106, exception, 'type'
    eq $P106, .CONTROL_LOOP_NEXT, loop2234_next
    eq $P106, .CONTROL_LOOP_REDO, loop2234_redo
  loop2234_done:
    pop_eh 
  for_undef_1127:
.annotate 'line', 1834
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2231"  :anon :subid("255_1309859073.622") :outer("254_1309859073.622")
    .param pmc param_2233
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1837
    .lex "$_", param_2233
.annotate 'line', 1838
    find_lex $P105, "self"
    find_lex $P106, "$_"
    unless_null $P106, vivify_1128
    new $P106, "Undef"
  vivify_1128:
    $P107 = $P105."add-spec"($P106)
.annotate 'line', 1837
    .return ($P107)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "add-stopper" :anon :subid("256_1309859073.622") :outer("251_1309859073.622")
    .param pmc param_2236
    .param pmc param_2237
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1841
    .lex "self", param_2236
    .lex "$x", param_2237
.annotate 'line', 1842
    new $P103, "Integer"
    assign $P103, 1
    find_lex $P104, "$x"
    unless_null $P104, vivify_1129
    new $P104, "Undef"
  vivify_1129:
    find_lex $P105, "self"
    find_lex $P106, "$?CLASS"
    getattribute $P2238, $P105, $P106, "%!stopper"
    unless_null $P2238, vivify_1130
    $P2238 = root_new ['parrot';'Hash']
    setattribute $P105, $P106, "%!stopper", $P2238
  vivify_1130:
    set $P2238[$P104], $P103
.annotate 'line', 1841
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "split-option-aliases" :anon :subid("257_1309859073.622") :outer("251_1309859073.622")
    .param pmc param_2240
    .param pmc param_2241
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1845
    .lex "self", param_2240
    .lex "$s", param_2241
.annotate 'line', 1846
    find_lex $P103, "$s"
    unless_null $P103, vivify_1131
    new $P103, "Undef"
  vivify_1131:
    set $S100, $P103
    split $P104, "|", $S100
.annotate 'line', 1845
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "add-spec" :anon :subid("258_1309859073.622") :outer("251_1309859073.622")
    .param pmc param_2243
    .param pmc param_2244
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1850
    .const 'Sub' $P2253 = "259_1309859073.622" 
    capture_lex $P2253
    .lex "self", param_2243
    .lex "$s", param_2244
.annotate 'line', 1851
    new $P103, "Undef"
    set $P2245, $P103
    .lex "$i", $P2245
.annotate 'line', 1852
    new $P104, "Undef"
    set $P2246, $P104
    .lex "$type", $P2246
.annotate 'line', 1853
    $P2248 = root_new ['parrot';'ResizablePMCArray']
    set $P2247, $P2248
    .lex "@options", $P2247
.annotate 'line', 1851
    find_lex $P105, "$s"
    unless_null $P105, vivify_1132
    new $P105, "Undef"
  vivify_1132:
    set $S100, $P105
    index $I100, $S100, "="
    new $P106, 'Integer'
    set $P106, $I100
    store_lex "$i", $P106
.annotate 'line', 1850
    find_lex $P105, "$type"
    unless_null $P105, vivify_1133
    new $P105, "Undef"
  vivify_1133:
    find_lex $P2249, "@options"
    unless_null $P2249, vivify_1134
    $P2249 = root_new ['parrot';'ResizablePMCArray']
  vivify_1134:
.annotate 'line', 1854
    find_lex $P105, "$i"
    unless_null $P105, vivify_1135
    new $P105, "Undef"
  vivify_1135:
    set $N100, $P105
    islt $I100, $N100, 0.0
    if $I100, if_2250
.annotate 'line', 1858
    find_lex $P106, "$s"
    unless_null $P106, vivify_1136
    new $P106, "Undef"
  vivify_1136:
    set $S100, $P106
    find_lex $P107, "$i"
    unless_null $P107, vivify_1137
    new $P107, "Undef"
  vivify_1137:
    add $P108, $P107, 1
    set $I101, $P108
    substr $S101, $S100, $I101
    new $P109, 'String'
    set $P109, $S101
    store_lex "$type", $P109
.annotate 'line', 1859
    find_lex $P106, "self"
    find_lex $P107, "$s"
    unless_null $P107, vivify_1138
    new $P107, "Undef"
  vivify_1138:
    set $S100, $P107
    find_lex $P108, "$i"
    unless_null $P108, vivify_1139
    new $P108, "Undef"
  vivify_1139:
    set $I101, $P108
    substr $S101, $S100, 0, $I101
    $P109 = $P106."split-option-aliases"($S101)
    store_lex "@options", $P109
.annotate 'line', 1857
    goto if_2250_end
  if_2250:
.annotate 'line', 1855
    new $P106, "String"
    assign $P106, "b"
    store_lex "$type", $P106
.annotate 'line', 1856
    find_lex $P106, "self"
    find_lex $P107, "$s"
    unless_null $P107, vivify_1140
    new $P107, "Undef"
  vivify_1140:
    $P108 = $P106."split-option-aliases"($P107)
    store_lex "@options", $P108
  if_2250_end:
.annotate 'line', 1861
    find_lex $P2251, "@options"
    unless_null $P2251, vivify_1141
    $P2251 = root_new ['parrot';'ResizablePMCArray']
  vivify_1141:
    defined $I100, $P2251
    unless $I100, for_undef_1142
    iter $P105, $P2251
    new $P108, 'ExceptionHandler'
    set_label $P108, loop2256_handler
    $P108."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P108
  loop2256_test:
    unless $P105, loop2256_done
    shift $P106, $P105
  loop2256_redo:
    .const 'Sub' $P2253 = "259_1309859073.622" 
    capture_lex $P2253
    $P2253($P106)
  loop2256_next:
    goto loop2256_test
  loop2256_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P109, exception, 'type'
    eq $P109, .CONTROL_LOOP_NEXT, loop2256_next
    eq $P109, .CONTROL_LOOP_REDO, loop2256_redo
  loop2256_done:
    pop_eh 
  for_undef_1142:
.annotate 'line', 1850
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2252"  :anon :subid("259_1309859073.622") :outer("258_1309859073.622")
    .param pmc param_2254
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1861
    .lex "$_", param_2254
.annotate 'line', 1862
    find_lex $P107, "$type"
    unless_null $P107, vivify_1143
    new $P107, "Undef"
  vivify_1143:
    find_lex $P108, "$_"
    unless_null $P108, vivify_1144
    new $P108, "Undef"
  vivify_1144:
    find_lex $P109, "self"
    find_lex $P110, "$?CLASS"
    getattribute $P2255, $P109, $P110, "%!options"
    unless_null $P2255, vivify_1145
    $P2255 = root_new ['parrot';'Hash']
    setattribute $P109, $P110, "%!options", $P2255
  vivify_1145:
    set $P2255[$P108], $P107
.annotate 'line', 1861
    .return ($P107)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "is-option" :anon :subid("260_1309859073.622") :outer("251_1309859073.622")
    .param pmc param_2260
    .param pmc param_2261
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1867
    new $P2259, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2259, control_2258
    push_eh $P2259
    .lex "self", param_2260
    .lex "$x", param_2261
.annotate 'line', 1868
    find_lex $P104, "$x"
    unless_null $P104, vivify_1146
    new $P104, "Undef"
  vivify_1146:
    set $S100, $P104
    iseq $I100, $S100, "-"
    unless $I100, unless_2263
    new $P103, 'Integer'
    set $P103, $I100
    goto unless_2263_end
  unless_2263:
    find_lex $P105, "$x"
    unless_null $P105, vivify_1147
    new $P105, "Undef"
  vivify_1147:
    set $S101, $P105
    iseq $I101, $S101, "--"
    new $P103, 'Integer'
    set $P103, $I101
  unless_2263_end:
    unless $P103, if_2262_end
    new $P106, "Exception"
    set $P106['type'], .CONTROL_RETURN
    new $P107, "Integer"
    assign $P107, 0
    setattribute $P106, 'payload', $P107
    throw $P106
  if_2262_end:
.annotate 'line', 1869
    find_lex $P103, "$x"
    unless_null $P103, vivify_1148
    new $P103, "Undef"
  vivify_1148:
    set $S100, $P103
    substr $S101, $S100, 0, 1
    iseq $I100, $S101, "-"
    unless $I100, if_2264_end
    new $P104, "Exception"
    set $P104['type'], .CONTROL_RETURN
    new $P105, "Integer"
    assign $P105, 1
    setattribute $P104, 'payload', $P105
    throw $P104
  if_2264_end:
.annotate 'line', 1867
    .return (0)
  control_2258:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P103, exception, "payload"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "wants-value" :anon :subid("261_1309859073.622") :outer("251_1309859073.622")
    .param pmc param_2266
    .param pmc param_2267
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1873
    .lex "self", param_2266
    .lex "$x", param_2267
.annotate 'line', 1874
    new $P103, "Undef"
    set $P2268, $P103
    .lex "$spec", $P2268
    find_lex $P104, "$x"
    unless_null $P104, vivify_1149
    new $P104, "Undef"
  vivify_1149:
    find_lex $P105, "self"
    find_lex $P106, "$?CLASS"
    getattribute $P2269, $P105, $P106, "%!options"
    unless_null $P2269, vivify_1150
    $P2269 = root_new ['parrot';'Hash']
  vivify_1150:
    set $P107, $P2269[$P104]
    unless_null $P107, vivify_1151
    new $P107, "Undef"
  vivify_1151:
    store_lex "$spec", $P107
.annotate 'line', 1875
    find_lex $P104, "$spec"
    unless_null $P104, vivify_1152
    new $P104, "Undef"
  vivify_1152:
    set $S100, $P104
    iseq $I100, $S100, "s"
.annotate 'line', 1873
    .return ($I100)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "parse" :anon :subid("262_1309859073.622") :outer("251_1309859073.622")
    .param pmc param_2273
    .param pmc param_2274
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1878
    .const 'Sub' $P2299 = "265_1309859073.622" 
    capture_lex $P2299
    .const 'Sub' $P2291 = "264_1309859073.622" 
    capture_lex $P2291
    .const 'Sub' $P2279 = "263_1309859073.622" 
    capture_lex $P2279
    new $P2272, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2272, control_2271
    push_eh $P2272
    .lex "self", param_2273
    .lex "@args", param_2274
.annotate 'line', 1879
    new $P103, "Undef"
    set $P2275, $P103
    .lex "$i", $P2275
.annotate 'line', 1880
    new $P104, "Undef"
    set $P2276, $P104
    .lex "$arg-count", $P2276
.annotate 'line', 1882
    new $P105, "Undef"
    set $P2277, $P105
    .lex "$result", $P2277
.annotate 'line', 1886
    .const 'Sub' $P2279 = "263_1309859073.622" 
    newclosure $P2289, $P2279
    set $P2278, $P2289
    .lex "get-value", $P2278
.annotate 'line', 1901
    .const 'Sub' $P2291 = "264_1309859073.622" 
    newclosure $P2296, $P2291
    set $P2290, $P2296
    .lex "slurp-rest", $P2290
.annotate 'line', 1879
    new $P107, "Integer"
    assign $P107, 0
    store_lex "$i", $P107
.annotate 'line', 1880
    find_lex $P2297, "@args"
    unless_null $P2297, vivify_1178
    $P2297 = root_new ['parrot';'ResizablePMCArray']
  vivify_1178:
    set $N100, $P2297
    new $P107, 'Float'
    set $P107, $N100
    store_lex "$arg-count", $P107
.annotate 'line', 1882
    get_hll_global $P107, "GLOBAL"
    nqp_get_package_through_who $P108, $P107, "HLL"
    nqp_get_package_through_who $P109, $P108, "CommandLine"
    get_who $P110, $P109
    set $P111, $P110["Result"]
    $P112 = $P111."new"()
    store_lex "$result", $P112
.annotate 'line', 1883
    find_lex $P107, "$result"
    unless_null $P107, vivify_1179
    new $P107, "Undef"
  vivify_1179:
    $P107."init"()
.annotate 'line', 1878
    find_lex $P107, "get-value"
    find_lex $P107, "slurp-rest"
.annotate 'line', 1909
    new $P110, 'ExceptionHandler'
    set_label $P110, loop2342_handler
    $P110."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P110
  loop2342_test:
    find_lex $P107, "$i"
    unless_null $P107, vivify_1180
    new $P107, "Undef"
  vivify_1180:
    set $N100, $P107
    find_lex $P108, "$arg-count"
    unless_null $P108, vivify_1181
    new $P108, "Undef"
  vivify_1181:
    set $N101, $P108
    islt $I101, $N100, $N101
    unless $I101, loop2342_done
  loop2342_redo:
    .const 'Sub' $P2299 = "265_1309859073.622" 
    capture_lex $P2299
    $P2299()
  loop2342_next:
    goto loop2342_test
  loop2342_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P111, exception, 'type'
    eq $P111, .CONTROL_LOOP_NEXT, loop2342_next
    eq $P111, .CONTROL_LOOP_REDO, loop2342_redo
  loop2342_done:
    pop_eh 
.annotate 'line', 1961
    new $P107, "Exception"
    set $P107['type'], .CONTROL_RETURN
    find_lex $P108, "$result"
    unless_null $P108, vivify_1242
    new $P108, "Undef"
  vivify_1242:
    setattribute $P107, 'payload', $P108
    throw $P107
.annotate 'line', 1878
    .return ()
  control_2271:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P107, exception, "payload"
    .return ($P107)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "get-value"  :subid("263_1309859073.622") :outer("262_1309859073.622")
    .param pmc param_2280
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1886
    .lex "$opt", param_2280
.annotate 'line', 1887
    find_lex $P107, "$i"
    unless_null $P107, vivify_1153
    new $P107, "Undef"
  vivify_1153:
    set $N100, $P107
    find_lex $P108, "$arg-count"
    unless_null $P108, vivify_1154
    new $P108, "Undef"
  vivify_1154:
    sub $P109, $P108, 1
    set $N101, $P109
    iseq $I100, $N100, $N101
    if $I100, if_2281
.annotate 'line', 1889
    find_lex $P111, "self"
    find_lex $P112, "$i"
    unless_null $P112, vivify_1155
    new $P112, "Undef"
  vivify_1155:
    add $P113, $P112, 1
    set $I101, $P113
    find_lex $P2283, "@args"
    unless_null $P2283, vivify_1156
    $P2283 = root_new ['parrot';'ResizablePMCArray']
  vivify_1156:
    set $P114, $P2283[$I101]
    unless_null $P114, vivify_1157
    new $P114, "Undef"
  vivify_1157:
    $P115 = $P111."is-option"($P114)
    if $P115, if_2282
.annotate 'line', 1891
    find_lex $P117, "$i"
    unless_null $P117, vivify_1158
    new $P117, "Undef"
  vivify_1158:
    add $P118, $P117, 1
    set $I102, $P118
    find_lex $P2285, "@args"
    unless_null $P2285, vivify_1159
    $P2285 = root_new ['parrot';'ResizablePMCArray']
  vivify_1159:
    set $P119, $P2285[$I102]
    unless_null $P119, vivify_1160
    new $P119, "Undef"
  vivify_1160:
    find_lex $P120, "self"
    find_lex $P121, "$?CLASS"
    getattribute $P2286, $P120, $P121, "%!stopper"
    unless_null $P2286, vivify_1161
    $P2286 = root_new ['parrot';'Hash']
  vivify_1161:
    set $P122, $P2286[$P119]
    unless_null $P122, vivify_1162
    new $P122, "Undef"
  vivify_1162:
    if $P122, if_2284
.annotate 'line', 1893
    find_lex $P123, "$i"
    unless_null $P123, vivify_1163
    new $P123, "Undef"
  vivify_1163:
    clone $P2287, $P123
    inc $P123
    find_lex $P123, "$i"
    unless_null $P123, vivify_1164
    new $P123, "Undef"
  vivify_1164:
    set $I103, $P123
    find_lex $P2288, "@args"
    unless_null $P2288, vivify_1165
    $P2288 = root_new ['parrot';'ResizablePMCArray']
  vivify_1165:
    set $P124, $P2288[$I103]
    unless_null $P124, vivify_1166
    new $P124, "Undef"
  vivify_1166:
    set $P116, $P124
.annotate 'line', 1891
    goto if_2284_end
  if_2284:
.annotate 'line', 1892
    new $P123, 'String'
    set $P123, "Option "
    find_lex $P124, "$opt"
    unless_null $P124, vivify_1167
    new $P124, "Undef"
  vivify_1167:
    concat $P125, $P123, $P124
    concat $P126, $P125, " needs a value, but is followed by a stopper"
    die $P126
  if_2284_end:
.annotate 'line', 1891
    set $P110, $P116
.annotate 'line', 1889
    goto if_2282_end
  if_2282:
.annotate 'line', 1890
    new $P116, 'String'
    set $P116, "Option "
    find_lex $P117, "$opt"
    unless_null $P117, vivify_1168
    new $P117, "Undef"
  vivify_1168:
    concat $P118, $P116, $P117
    concat $P119, $P118, " needs a value, but is followed by an option"
    die $P119
  if_2282_end:
.annotate 'line', 1889
    set $P106, $P110
.annotate 'line', 1887
    goto if_2281_end
  if_2281:
.annotate 'line', 1888
    new $P110, 'String'
    set $P110, "Option "
    find_lex $P111, "$opt"
    unless_null $P111, vivify_1169
    new $P111, "Undef"
  vivify_1169:
    concat $P112, $P110, $P111
    concat $P113, $P112, " needs a value"
    die $P113
  if_2281_end:
.annotate 'line', 1886
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "slurp-rest"  :subid("264_1309859073.622") :outer("262_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1901
    find_lex $P107, "$i"
    unless_null $P107, vivify_1170
    new $P107, "Undef"
  vivify_1170:
    clone $P2292, $P107
    inc $P107
.annotate 'line', 1903
    new $P109, 'ExceptionHandler'
    set_label $P109, loop2295_handler
    $P109."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P109
  loop2295_test:
    find_lex $P107, "$i"
    unless_null $P107, vivify_1171
    new $P107, "Undef"
  vivify_1171:
    set $N100, $P107
    find_lex $P108, "$arg-count"
    unless_null $P108, vivify_1172
    new $P108, "Undef"
  vivify_1172:
    set $N101, $P108
    islt $I100, $N100, $N101
    unless $I100, loop2295_done
  loop2295_redo:
.annotate 'line', 1904
    find_lex $P109, "$result"
    unless_null $P109, vivify_1173
    new $P109, "Undef"
  vivify_1173:
    find_lex $P110, "$i"
    unless_null $P110, vivify_1174
    new $P110, "Undef"
  vivify_1174:
    set $I101, $P110
    find_lex $P2293, "@args"
    unless_null $P2293, vivify_1175
    $P2293 = root_new ['parrot';'ResizablePMCArray']
  vivify_1175:
    set $P111, $P2293[$I101]
    unless_null $P111, vivify_1176
    new $P111, "Undef"
  vivify_1176:
    $P109."add-argument"($P111)
.annotate 'line', 1903
    find_lex $P109, "$i"
    unless_null $P109, vivify_1177
    new $P109, "Undef"
  vivify_1177:
    clone $P2294, $P109
    inc $P109
  loop2295_next:
    goto loop2295_test
  loop2295_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P110, exception, 'type'
    eq $P110, .CONTROL_LOOP_NEXT, loop2295_next
    eq $P110, .CONTROL_LOOP_REDO, loop2295_redo
  loop2295_done:
    pop_eh 
.annotate 'line', 1901
    .return ($I100)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2298"  :anon :subid("265_1309859073.622") :outer("262_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1909
    .const 'Sub' $P2322 = "267_1309859073.622" 
    capture_lex $P2322
    .const 'Sub' $P2305 = "266_1309859073.622" 
    capture_lex $P2305
.annotate 'line', 1910
    new $P109, "Undef"
    set $P2300, $P109
    .lex "$cur", $P2300
    find_lex $P110, "$i"
    unless_null $P110, vivify_1182
    new $P110, "Undef"
  vivify_1182:
    set $I102, $P110
    find_lex $P2301, "@args"
    unless_null $P2301, vivify_1183
    $P2301 = root_new ['parrot';'ResizablePMCArray']
  vivify_1183:
    set $P111, $P2301[$I102]
    unless_null $P111, vivify_1184
    new $P111, "Undef"
  vivify_1184:
    store_lex "$cur", $P111
.annotate 'line', 1911
    find_lex $P110, "self"
    find_lex $P111, "$cur"
    unless_null $P111, vivify_1185
    new $P111, "Undef"
  vivify_1185:
    $P112 = $P110."is-option"($P111)
    if $P112, if_2302
.annotate 'line', 1953
    find_lex $P113, "$cur"
    unless_null $P113, vivify_1186
    new $P113, "Undef"
  vivify_1186:
    find_lex $P114, "self"
    find_lex $P115, "$?CLASS"
    getattribute $P2339, $P114, $P115, "%!stopper"
    unless_null $P2339, vivify_1187
    $P2339 = root_new ['parrot';'Hash']
  vivify_1187:
    set $P116, $P2339[$P113]
    unless_null $P116, vivify_1188
    new $P116, "Undef"
  vivify_1188:
    if $P116, if_2338
.annotate 'line', 1956
    find_lex $P117, "$result"
    unless_null $P117, vivify_1189
    new $P117, "Undef"
  vivify_1189:
    find_lex $P118, "$cur"
    unless_null $P118, vivify_1190
    new $P118, "Undef"
  vivify_1190:
    $P117."add-argument"($P118)
.annotate 'line', 1957
    find_lex $P117, "self"
    find_lex $P118, "$?CLASS"
    getattribute $P119, $P117, $P118, "$!stop-after-first-arg"
    unless_null $P119, vivify_1191
    new $P119, "Undef"
  vivify_1191:
    unless $P119, if_2340_end
    "slurp-rest"()
  if_2340_end:
.annotate 'line', 1955
    goto if_2338_end
  if_2338:
.annotate 'line', 1954
    "slurp-rest"()
  if_2338_end:
.annotate 'line', 1953
    goto if_2302_end
  if_2302:
.annotate 'line', 1912
    find_lex $P113, "$cur"
    unless_null $P113, vivify_1192
    new $P113, "Undef"
  vivify_1192:
    set $S100, $P113
    substr $S101, $S100, 0, 2
    iseq $I102, $S101, "--"
    if $I102, if_2303
.annotate 'line', 1931
    .const 'Sub' $P2322 = "267_1309859073.622" 
    capture_lex $P2322
    $P2322()
    goto if_2303_end
  if_2303:
.annotate 'line', 1912
    .const 'Sub' $P2305 = "266_1309859073.622" 
    capture_lex $P2305
    $P2305()
  if_2303_end:
  if_2302_end:
.annotate 'line', 1909
    find_lex $P110, "$i"
    unless_null $P110, vivify_1241
    new $P110, "Undef"
  vivify_1241:
    clone $P2341, $P110
    inc $P110
    .return ($P2341)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2321"  :anon :subid("267_1309859073.622") :outer("265_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1931
    .const 'Sub' $P2331 = "268_1309859073.622" 
    capture_lex $P2331
.annotate 'line', 1932
    new $P119, "Undef"
    set $P2323, $P119
    .lex "$opt", $P2323
    find_lex $P120, "$cur"
    unless_null $P120, vivify_1193
    new $P120, "Undef"
  vivify_1193:
    set $S102, $P120
    substr $S103, $S102, 1
    new $P121, 'String'
    set $P121, $S103
    store_lex "$opt", $P121
.annotate 'line', 1933
    find_lex $P121, "$opt"
    unless_null $P121, vivify_1194
    new $P121, "Undef"
  vivify_1194:
    set $S102, $P121
    length $I103, $S102
    set $N102, $I103
    iseq $I104, $N102, 1.0
    if $I104, if_2324
.annotate 'line', 1943
    .const 'Sub' $P2331 = "268_1309859073.622" 
    capture_lex $P2331
    $P125 = $P2331()
    set $P120, $P125
.annotate 'line', 1933
    goto if_2324_end
  if_2324:
.annotate 'line', 1935
    find_lex $P122, "$opt"
    unless_null $P122, vivify_1202
    new $P122, "Undef"
  vivify_1202:
    find_lex $P123, "self"
    find_lex $P124, "$?CLASS"
    getattribute $P2326, $P123, $P124, "%!options"
    unless_null $P2326, vivify_1203
    $P2326 = root_new ['parrot';'Hash']
  vivify_1203:
    set $P125, $P2326[$P122]
    unless_null $P125, vivify_1204
    new $P125, "Undef"
  vivify_1204:
    if $P125, unless_2325_end
    new $P126, 'String'
    set $P126, "No such option -"
    find_lex $P127, "$opt"
    unless_null $P127, vivify_1205
    new $P127, "Undef"
  vivify_1205:
    concat $P128, $P126, $P127
    die $P128
  unless_2325_end:
.annotate 'line', 1936
    find_lex $P122, "self"
    find_lex $P123, "$opt"
    unless_null $P123, vivify_1206
    new $P123, "Undef"
  vivify_1206:
    $P124 = $P122."wants-value"($P123)
    if $P124, if_2327
.annotate 'line', 1940
    find_lex $P125, "$result"
    unless_null $P125, vivify_1207
    new $P125, "Undef"
  vivify_1207:
    find_lex $P126, "$opt"
    unless_null $P126, vivify_1208
    new $P126, "Undef"
  vivify_1208:
    $P125."add-option"($P126, 1)
.annotate 'line', 1939
    goto if_2327_end
  if_2327:
.annotate 'line', 1937
    find_lex $P125, "$result"
    unless_null $P125, vivify_1209
    new $P125, "Undef"
  vivify_1209:
    find_lex $P126, "$opt"
    unless_null $P126, vivify_1210
    new $P126, "Undef"
  vivify_1210:
.annotate 'line', 1938
    new $P127, 'String'
    set $P127, "-"
    find_lex $P128, "$opt"
    unless_null $P128, vivify_1211
    new $P128, "Undef"
  vivify_1211:
    concat $P129, $P127, $P128
    $P130 = "get-value"($P129)
    $P125."add-option"($P126, $P130)
  if_2327_end:
.annotate 'line', 1942
    new $P123, 'String'
    set $P123, "-"
    find_lex $P124, "$opt"
    unless_null $P124, vivify_1212
    new $P124, "Undef"
  vivify_1212:
    concat $P125, $P123, $P124
    find_lex $P126, "self"
    find_lex $P127, "$?CLASS"
    getattribute $P2329, $P126, $P127, "%!stopper"
    unless_null $P2329, vivify_1213
    $P2329 = root_new ['parrot';'Hash']
  vivify_1213:
    set $P128, $P2329[$P125]
    unless_null $P128, vivify_1214
    new $P128, "Undef"
  vivify_1214:
    if $P128, if_2328
    set $P122, $P128
    goto if_2328_end
  if_2328:
    $P129 = "slurp-rest"()
    set $P122, $P129
  if_2328_end:
.annotate 'line', 1933
    set $P120, $P122
  if_2324_end:
.annotate 'line', 1931
    .return ($P120)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "_block2330"  :anon :subid("268_1309859073.622") :outer("267_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1943
    .const 'Sub' $P2334 = "269_1309859073.622" 
    capture_lex $P2334
.annotate 'line', 1945
    new $P123, "Undef"
    set $P2332, $P123
    .lex "$iter", $P2332
    find_lex $P124, "$opt"
    unless_null $P124, vivify_1195
    new $P124, "Undef"
  vivify_1195:
    iter $P125, $P124
    store_lex "$iter", $P125
.annotate 'line', 1946
    new $P126, 'ExceptionHandler'
    set_label $P126, loop2337_handler
    $P126."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P126
  loop2337_test:
    find_lex $P124, "$iter"
    unless_null $P124, vivify_1196
    new $P124, "Undef"
  vivify_1196:
    unless $P124, loop2337_done
  loop2337_redo:
    .const 'Sub' $P2334 = "269_1309859073.622" 
    capture_lex $P2334
    $P2334()
  loop2337_next:
    goto loop2337_test
  loop2337_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P127, exception, 'type'
    eq $P127, .CONTROL_LOOP_NEXT, loop2337_next
    eq $P127, .CONTROL_LOOP_REDO, loop2337_redo
  loop2337_done:
    pop_eh 
.annotate 'line', 1943
    .return ($P124)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2333"  :anon :subid("269_1309859073.622") :outer("268_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1947
    new $P125, "Undef"
    set $P2335, $P125
    .lex "$o", $P2335
    find_lex $P126, "$iter"
    unless_null $P126, vivify_1197
    new $P126, "Undef"
  vivify_1197:
    shift $P127, $P126
    store_lex "$o", $P127
.annotate 'line', 1948
    find_lex $P126, "self"
    find_lex $P127, "$o"
    unless_null $P127, vivify_1198
    new $P127, "Undef"
  vivify_1198:
    $P128 = $P126."wants-value"($P127)
    unless $P128, if_2336_end
    new $P129, 'String'
    set $P129, "Option -"
    find_lex $P130, "$o"
    unless_null $P130, vivify_1199
    new $P130, "Undef"
  vivify_1199:
    concat $P131, $P129, $P130
    concat $P132, $P131, " requires a value and cannot be grouped"
    die $P132
  if_2336_end:
.annotate 'line', 1949
    find_lex $P126, "$result"
    unless_null $P126, vivify_1200
    new $P126, "Undef"
  vivify_1200:
    find_lex $P127, "$o"
    unless_null $P127, vivify_1201
    new $P127, "Undef"
  vivify_1201:
    $P128 = $P126."add-option"($P127, 1)
.annotate 'line', 1946
    .return ($P128)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2304"  :anon :subid("266_1309859073.622") :outer("265_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1914
    new $P114, "Undef"
    set $P2306, $P114
    .lex "$opt", $P2306
.annotate 'line', 1915
    new $P115, "Undef"
    set $P2307, $P115
    .lex "$idx", $P2307
.annotate 'line', 1916
    new $P116, "Undef"
    set $P2308, $P116
    .lex "$value", $P2308
.annotate 'line', 1917
    new $P117, "Undef"
    set $P2309, $P117
    .lex "$has-value", $P2309
.annotate 'line', 1914
    find_lex $P118, "$i"
    unless_null $P118, vivify_1215
    new $P118, "Undef"
  vivify_1215:
    set $I103, $P118
    find_lex $P2310, "@args"
    unless_null $P2310, vivify_1216
    $P2310 = root_new ['parrot';'ResizablePMCArray']
  vivify_1216:
    set $P119, $P2310[$I103]
    unless_null $P119, vivify_1217
    new $P119, "Undef"
  vivify_1217:
    set $S102, $P119
    substr $S103, $S102, 2
    new $P120, 'String'
    set $P120, $S103
    store_lex "$opt", $P120
.annotate 'line', 1915
    find_lex $P118, "$opt"
    unless_null $P118, vivify_1218
    new $P118, "Undef"
  vivify_1218:
    set $S102, $P118
    index $I103, $S102, "="
    new $P119, 'Integer'
    set $P119, $I103
    store_lex "$idx", $P119
.annotate 'line', 1916
    new $P118, "Integer"
    assign $P118, 1
    store_lex "$value", $P118
.annotate 'line', 1917
    new $P118, "Integer"
    assign $P118, 0
    store_lex "$has-value", $P118
.annotate 'line', 1919
    find_lex $P118, "$idx"
    unless_null $P118, vivify_1219
    new $P118, "Undef"
  vivify_1219:
    set $N102, $P118
    isge $I103, $N102, 0.0
    unless $I103, if_2311_end
.annotate 'line', 1920
    find_lex $P119, "$opt"
    unless_null $P119, vivify_1220
    new $P119, "Undef"
  vivify_1220:
    set $S102, $P119
    find_lex $P120, "$idx"
    unless_null $P120, vivify_1221
    new $P120, "Undef"
  vivify_1221:
    add $P121, $P120, 1
    set $I104, $P121
    substr $S103, $S102, $I104
    new $P122, 'String'
    set $P122, $S103
    store_lex "$value", $P122
.annotate 'line', 1921
    find_lex $P119, "$opt"
    unless_null $P119, vivify_1222
    new $P119, "Undef"
  vivify_1222:
    set $S102, $P119
    find_lex $P120, "$idx"
    unless_null $P120, vivify_1223
    new $P120, "Undef"
  vivify_1223:
    set $I104, $P120
    substr $S103, $S102, 0, $I104
    new $P121, 'String'
    set $P121, $S103
    store_lex "$opt", $P121
.annotate 'line', 1922
    new $P119, "Integer"
    assign $P119, 1
    store_lex "$has-value", $P119
  if_2311_end:
.annotate 'line', 1924
    find_lex $P120, "$opt"
    unless_null $P120, vivify_1224
    new $P120, "Undef"
  vivify_1224:
    find_lex $P118, "self"
    find_lex $P119, "$?CLASS"
    getattribute $P2313, $P118, $P119, "%!options"
    unless_null $P2313, vivify_1225
    $P2313 = root_new ['parrot';'Hash']
  vivify_1225:
    exists $I103, $P2313[$P120]
    if $I103, unless_2312_end
    new $P121, 'String'
    set $P121, "Illegal option --"
    find_lex $P122, "$opt"
    unless_null $P122, vivify_1226
    new $P122, "Undef"
  vivify_1226:
    concat $P123, $P121, $P122
    die $P123
  unless_2312_end:
.annotate 'line', 1925
    find_lex $P119, "$opt"
    unless_null $P119, vivify_1227
    new $P119, "Undef"
  vivify_1227:
    find_lex $P120, "self"
    find_lex $P121, "$?CLASS"
    getattribute $P2316, $P120, $P121, "%!options"
    unless_null $P2316, vivify_1228
    $P2316 = root_new ['parrot';'Hash']
  vivify_1228:
    set $P122, $P2316[$P119]
    unless_null $P122, vivify_1229
    new $P122, "Undef"
  vivify_1229:
    set $S102, $P122
    isne $I103, $S102, "s"
    if $I103, if_2315
    new $P118, 'Integer'
    set $P118, $I103
    goto if_2315_end
  if_2315:
    find_lex $P123, "$has-value"
    unless_null $P123, vivify_1230
    new $P123, "Undef"
  vivify_1230:
    set $P118, $P123
  if_2315_end:
    unless $P118, if_2314_end
    new $P124, 'String'
    set $P124, "Option --"
    find_lex $P125, "$opt"
    unless_null $P125, vivify_1231
    new $P125, "Undef"
  vivify_1231:
    concat $P126, $P124, $P125
    concat $P127, $P126, " does not allow a value"
    die $P127
  if_2314_end:
.annotate 'line', 1926
    find_lex $P119, "$has-value"
    unless_null $P119, vivify_1232
    new $P119, "Undef"
  vivify_1232:
    isfalse $I103, $P119
    if $I103, if_2318
    new $P118, 'Integer'
    set $P118, $I103
    goto if_2318_end
  if_2318:
    find_lex $P120, "self"
    find_lex $P121, "$opt"
    unless_null $P121, vivify_1233
    new $P121, "Undef"
  vivify_1233:
    $P122 = $P120."wants-value"($P121)
    set $P118, $P122
  if_2318_end:
    unless $P118, if_2317_end
.annotate 'line', 1927
    new $P123, 'String'
    set $P123, "--"
    find_lex $P124, "$opt"
    unless_null $P124, vivify_1234
    new $P124, "Undef"
  vivify_1234:
    concat $P125, $P123, $P124
    $P126 = "get-value"($P125)
    store_lex "$value", $P126
  if_2317_end:
.annotate 'line', 1929
    find_lex $P118, "$result"
    unless_null $P118, vivify_1235
    new $P118, "Undef"
  vivify_1235:
    find_lex $P119, "$opt"
    unless_null $P119, vivify_1236
    new $P119, "Undef"
  vivify_1236:
    find_lex $P120, "$value"
    unless_null $P120, vivify_1237
    new $P120, "Undef"
  vivify_1237:
    $P118."add-option"($P119, $P120)
.annotate 'line', 1930
    new $P119, 'String'
    set $P119, "--"
    find_lex $P120, "$opt"
    unless_null $P120, vivify_1238
    new $P120, "Undef"
  vivify_1238:
    concat $P121, $P119, $P120
    find_lex $P122, "self"
    find_lex $P123, "$?CLASS"
    getattribute $P2320, $P122, $P123, "%!stopper"
    unless_null $P2320, vivify_1239
    $P2320 = root_new ['parrot';'Hash']
  vivify_1239:
    set $P124, $P2320[$P121]
    unless_null $P124, vivify_1240
    new $P124, "Undef"
  vivify_1240:
    if $P124, if_2319
    set $P118, $P124
    goto if_2319_end
  if_2319:
    find_lex $P125, "slurp-rest"
    set $P118, $P125
  if_2319_end:
.annotate 'line', 1912
    .return ($P118)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block2344"  :subid("270_1309859073.622") :outer("10_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1996
    .const 'Sub' $P2420 = "287_1309859073.622" 
    capture_lex $P2420
    .const 'Sub' $P2418 = "286_1309859073.622" 
    capture_lex $P2418
    .const 'Sub' $P2416 = "285_1309859073.622" 
    capture_lex $P2416
    .const 'Sub' $P2410 = "284_1309859073.622" 
    capture_lex $P2410
    .const 'Sub' $P2402 = "283_1309859073.622" 
    capture_lex $P2402
    .const 'Sub' $P2396 = "282_1309859073.622" 
    capture_lex $P2396
    .const 'Sub' $P2390 = "281_1309859073.622" 
    capture_lex $P2390
    .const 'Sub' $P2387 = "280_1309859073.622" 
    capture_lex $P2387
    .const 'Sub' $P2381 = "279_1309859073.622" 
    capture_lex $P2381
    .const 'Sub' $P2375 = "278_1309859073.622" 
    capture_lex $P2375
    .const 'Sub' $P2369 = "277_1309859073.622" 
    capture_lex $P2369
    .const 'Sub' $P2366 = "276_1309859073.622" 
    capture_lex $P2366
    .const 'Sub' $P2362 = "275_1309859073.622" 
    capture_lex $P2362
    .const 'Sub' $P2354 = "272_1309859073.622" 
    capture_lex $P2354
    .const 'Sub' $P2348 = "271_1309859073.622" 
    capture_lex $P2348
    .lex "Event", $P2346
.annotate 'line', 2017
    .const 'Sub' $P2348 = "271_1309859073.622" 
    newclosure $P2350, $P2348
    set $P2347, $P2350
    .lex "addr", $P2347
.annotate 'line', 1996
    .lex "$?PACKAGE", $P2351
    .lex "$?CLASS", $P2352
.annotate 'line', 1998
    .const 'Sub' $P2354 = "272_1309859073.622" 
    capture_lex $P2354
    $P2354()
.annotate 'line', 1996
    find_lex $P103, "addr"
.annotate 'line', 2138
    .const 'Sub' $P2420 = "287_1309859073.622" 
    newclosure $P2423, $P2420
.annotate 'line', 1996
    .return ($P2423)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "addr"  :subid("271_1309859073.622") :outer("270_1309859073.622")
    .param pmc param_2349
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2017
    .lex "$obj", param_2349
.annotate 'line', 2018
    find_lex $P103, "$obj"
    unless_null $P103, vivify_1243
    new $P103, "Undef"
  vivify_1243:
    get_addr $I100, $P103
.annotate 'line', 2017
    .return ($I100)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block2353"  :anon :subid("272_1309859073.622") :outer("270_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1998
    .const 'Sub' $P2359 = "274_1309859073.622" 
    capture_lex $P2359
    .const 'Sub' $P2357 = "273_1309859073.622" 
    capture_lex $P2357
    .lex "$?PACKAGE", $P2355
    .lex "$?CLASS", $P2356
.annotate 'line', 2005
    .const 'Sub' $P2359 = "274_1309859073.622" 
    newclosure $P2361, $P2359
.annotate 'line', 1998
    .return ($P2361)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "deserialize_past" :anon :subid("273_1309859073.622") :outer("272_1309859073.622")
    .param pmc param_2358
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2001
    .lex "self", param_2358
    find_lex $P103, "self"
    find_lex $P104, "$?CLASS"
    getattribute $P105, $P103, $P104, "$!deserialize_past"
    unless_null $P105, vivify_1244
    new $P105, "Undef"
  vivify_1244:
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "fixup_past" :anon :subid("274_1309859073.622") :outer("272_1309859073.622")
    .param pmc param_2360
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2005
    .lex "self", param_2360
    find_lex $P103, "self"
    find_lex $P104, "$?CLASS"
    getattribute $P105, $P103, $P104, "$!fixup_past"
    unless_null $P105, vivify_1245
    new $P105, "Undef"
  vivify_1245:
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "new" :anon :subid("275_1309859073.622") :outer("270_1309859073.622")
    .param pmc param_2363
    .param pmc param_2364 :named("handle")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2025
    .lex "self", param_2363
    .lex "$handle", param_2364
.annotate 'line', 2026
    new $P103, "Undef"
    set $P2365, $P103
    .lex "$obj", $P2365
    find_lex $P104, "self"
    $P105 = $P104."CREATE"()
    store_lex "$obj", $P105
.annotate 'line', 2027
    find_lex $P104, "$obj"
    unless_null $P104, vivify_1246
    new $P104, "Undef"
  vivify_1246:
    find_lex $P105, "$handle"
    unless_null $P105, vivify_1247
    new $P105, "Undef"
  vivify_1247:
    $P104."BUILD"($P105 :named("handle"))
.annotate 'line', 2025
    find_lex $P104, "$obj"
    unless_null $P104, vivify_1248
    new $P104, "Undef"
  vivify_1248:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "BUILD" :anon :subid("276_1309859073.622") :outer("270_1309859073.622")
    .param pmc param_2367
    .param pmc param_2368 :optional :named("handle")
    .param int has_param_2368 :opt_flag
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2031
    .lex "self", param_2367
    if has_param_2368, optparam_1249
    new $P103, "Undef"
    set param_2368, $P103
  optparam_1249:
    .lex "$handle", param_2368
.annotate 'line', 2032
    find_lex $P104, "$handle"
    unless_null $P104, vivify_1250
    new $P104, "Undef"
  vivify_1250:
    set $S100, $P104
    nqp_create_sc $P105, $S100
    find_lex $P106, "self"
    find_lex $P107, "$?CLASS"
    setattribute $P106, $P107, "$!sc", $P105
.annotate 'line', 2033
    find_lex $P104, "$handle"
    unless_null $P104, vivify_1251
    new $P104, "Undef"
  vivify_1251:
    find_lex $P105, "self"
    find_lex $P106, "$?CLASS"
    setattribute $P105, $P106, "$!handle", $P104
.annotate 'line', 2034
    new $P104, "Hash"
    find_lex $P105, "self"
    find_lex $P106, "$?CLASS"
    setattribute $P105, $P106, "%!addr_to_slot", $P104
.annotate 'line', 2035
    new $P104, "ResizablePMCArray"
    find_lex $P105, "self"
    find_lex $P106, "$?CLASS"
    setattribute $P105, $P106, "@!event_stream", $P104
.annotate 'line', 2031
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "slot_for_object" :anon :subid("277_1309859073.622") :outer("270_1309859073.622")
    .param pmc param_2370
    .param pmc param_2371
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2039
    .lex "self", param_2370
    .lex "$obj", param_2371
.annotate 'line', 2040
    new $P103, "Undef"
    set $P2372, $P103
    .lex "$slot", $P2372
    find_lex $P104, "$obj"
    unless_null $P104, vivify_1252
    new $P104, "Undef"
  vivify_1252:
    $P105 = "addr"($P104)
    find_lex $P106, "self"
    find_lex $P107, "$?CLASS"
    getattribute $P2373, $P106, $P107, "%!addr_to_slot"
    unless_null $P2373, vivify_1253
    $P2373 = root_new ['parrot';'Hash']
  vivify_1253:
    set $P108, $P2373[$P105]
    unless_null $P108, vivify_1254
    new $P108, "Undef"
  vivify_1254:
    store_lex "$slot", $P108
.annotate 'line', 2041
    find_lex $P104, "$slot"
    unless_null $P104, vivify_1255
    new $P104, "Undef"
  vivify_1255:
    defined $I101, $P104
    if $I101, unless_2374_end
.annotate 'line', 2042
    die "slot_for_object called on object not in context"
  unless_2374_end:
.annotate 'line', 2039
    find_lex $P104, "$slot"
    unless_null $P104, vivify_1256
    new $P104, "Undef"
  vivify_1256:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "get_slot_past_for_object" :anon :subid("278_1309859073.622") :outer("270_1309859073.622")
    .param pmc param_2378
    .param pmc param_2379
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2051
    new $P2377, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2377, control_2376
    push_eh $P2377
    .lex "self", param_2378
    .lex "$obj", param_2379
.annotate 'line', 2052
    new $P103, "Undef"
    set $P2380, $P103
    .lex "$slot", $P2380
    find_lex $P104, "self"
    find_lex $P105, "$obj"
    unless_null $P105, vivify_1257
    new $P105, "Undef"
  vivify_1257:
    $P106 = $P104."slot_for_object"($P105)
    store_lex "$slot", $P106
.annotate 'line', 2053
    new $P104, "Exception"
    set $P104['type'], .CONTROL_RETURN
    get_hll_global $P105, "GLOBAL"
    nqp_get_package_through_who $P106, $P105, "PAST"
    get_who $P107, $P106
    set $P108, $P107["Op"]
    find_lex $P109, "self"
    find_lex $P110, "$?CLASS"
    getattribute $P111, $P109, $P110, "$!handle"
    unless_null $P111, vivify_1258
    new $P111, "Undef"
  vivify_1258:
    find_lex $P112, "$slot"
    unless_null $P112, vivify_1259
    new $P112, "Undef"
  vivify_1259:
    $P113 = $P108."new"($P111, $P112, "nqp_get_sc_object Psi" :named("pirop"))
    setattribute $P104, 'payload', $P113
    throw $P104
.annotate 'line', 2051
    .return ()
  control_2376:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P104, exception, "payload"
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "set_slot_past" :anon :subid("279_1309859073.622") :outer("270_1309859073.622")
    .param pmc param_2384
    .param pmc param_2385
    .param pmc param_2386
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2057
    new $P2383, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2383, control_2382
    push_eh $P2383
    .lex "self", param_2384
    .lex "$slot", param_2385
    .lex "$past_to_set", param_2386
.annotate 'line', 2058
    new $P103, "Exception"
    set $P103['type'], .CONTROL_RETURN
    get_hll_global $P104, "GLOBAL"
    nqp_get_package_through_who $P105, $P104, "PAST"
    get_who $P106, $P105
    set $P107, $P106["Op"]
    find_lex $P108, "self"
    find_lex $P109, "$?CLASS"
    getattribute $P110, $P108, $P109, "$!handle"
    unless_null $P110, vivify_1260
    new $P110, "Undef"
  vivify_1260:
    find_lex $P111, "$slot"
    unless_null $P111, vivify_1261
    new $P111, "Undef"
  vivify_1261:
    find_lex $P112, "$past_to_set"
    unless_null $P112, vivify_1262
    new $P112, "Undef"
  vivify_1262:
    $P113 = $P107."new"($P110, $P111, $P112, "nqp_set_sc_object vsiP" :named("pirop"))
    setattribute $P103, 'payload', $P113
    throw $P103
.annotate 'line', 2057
    .return ()
  control_2382:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P103, exception, "payload"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "set_cur_sc" :anon :subid("280_1309859073.622") :outer("270_1309859073.622")
    .param pmc param_2388
    .param pmc param_2389
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2064
    .lex "self", param_2388
    .lex "$to_wrap", param_2389
.annotate 'line', 2065
    get_hll_global $P103, "GLOBAL"
    nqp_get_package_through_who $P104, $P103, "PAST"
    get_who $P105, $P104
    set $P106, $P105["Op"]
    find_lex $P107, "$to_wrap"
    unless_null $P107, vivify_1263
    new $P107, "Undef"
  vivify_1263:
.annotate 'line', 2068
    get_hll_global $P108, "GLOBAL"
    nqp_get_package_through_who $P109, $P108, "PAST"
    get_who $P110, $P109
    set $P111, $P110["Var"]
    $P112 = $P111."new"("cur_sc" :named("name"), "register" :named("scope"))
    $P113 = $P106."new"($P107, $P112, "nqp_set_sc_for_object__0PP" :named("pirop"))
.annotate 'line', 2064
    .return ($P113)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "add_object" :anon :subid("281_1309859073.622") :outer("270_1309859073.622")
    .param pmc param_2391
    .param pmc param_2392
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2073
    .lex "self", param_2391
    .lex "$obj", param_2392
.annotate 'line', 2075
    new $P103, "Undef"
    set $P2393, $P103
    .lex "$idx", $P2393
.annotate 'line', 2074
    find_lex $P104, "$obj"
    unless_null $P104, vivify_1264
    new $P104, "Undef"
  vivify_1264:
    find_lex $P105, "self"
    find_lex $P106, "$?CLASS"
    getattribute $P107, $P105, $P106, "$!sc"
    unless_null $P107, vivify_1265
    new $P107, "Undef"
  vivify_1265:
    nqp_set_sc_for_object $P104, $P107
.annotate 'line', 2075
    find_lex $P104, "self"
    find_lex $P105, "$?CLASS"
    getattribute $P106, $P104, $P105, "$!sc"
    unless_null $P106, vivify_1266
    new $P106, "Undef"
  vivify_1266:
    $P107 = $P106."elems"()
    store_lex "$idx", $P107
.annotate 'line', 2076
    find_lex $P104, "$obj"
    unless_null $P104, vivify_1267
    new $P104, "Undef"
  vivify_1267:
    find_lex $P105, "$idx"
    unless_null $P105, vivify_1268
    new $P105, "Undef"
  vivify_1268:
    set $I101, $P105
    find_lex $P106, "self"
    find_lex $P107, "$?CLASS"
    getattribute $P2394, $P106, $P107, "$!sc"
    unless_null $P2394, vivify_1269
    $P2394 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P106, $P107, "$!sc", $P2394
  vivify_1269:
    set $P2394[$I101], $P104
.annotate 'line', 2077
    find_lex $P104, "$idx"
    unless_null $P104, vivify_1270
    new $P104, "Undef"
  vivify_1270:
    find_lex $P105, "$obj"
    unless_null $P105, vivify_1271
    new $P105, "Undef"
  vivify_1271:
    $P106 = "addr"($P105)
    find_lex $P107, "self"
    find_lex $P108, "$?CLASS"
    getattribute $P2395, $P107, $P108, "%!addr_to_slot"
    unless_null $P2395, vivify_1272
    $P2395 = root_new ['parrot';'Hash']
    setattribute $P107, $P108, "%!addr_to_slot", $P2395
  vivify_1272:
    set $P2395[$P106], $P104
.annotate 'line', 2073
    find_lex $P104, "$idx"
    unless_null $P104, vivify_1273
    new $P104, "Undef"
  vivify_1273:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "add_code" :anon :subid("282_1309859073.622") :outer("270_1309859073.622")
    .param pmc param_2397
    .param pmc param_2398
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2082
    .lex "self", param_2397
    .lex "$obj", param_2398
.annotate 'line', 2083
    new $P103, "Undef"
    set $P2399, $P103
    .lex "$idx", $P2399
    find_lex $P104, "self"
    find_lex $P105, "$?CLASS"
    getattribute $P106, $P104, $P105, "$!sc"
    unless_null $P106, vivify_1274
    new $P106, "Undef"
  vivify_1274:
    $P107 = $P106."elems"()
    store_lex "$idx", $P107
.annotate 'line', 2084
    find_lex $P104, "$obj"
    unless_null $P104, vivify_1275
    new $P104, "Undef"
  vivify_1275:
    find_lex $P105, "$idx"
    unless_null $P105, vivify_1276
    new $P105, "Undef"
  vivify_1276:
    set $I101, $P105
    find_lex $P106, "self"
    find_lex $P107, "$?CLASS"
    getattribute $P2400, $P106, $P107, "$!sc"
    unless_null $P2400, vivify_1277
    $P2400 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P106, $P107, "$!sc", $P2400
  vivify_1277:
    set $P2400[$I101], $P104
.annotate 'line', 2085
    find_lex $P104, "$idx"
    unless_null $P104, vivify_1278
    new $P104, "Undef"
  vivify_1278:
    find_lex $P105, "$obj"
    unless_null $P105, vivify_1279
    new $P105, "Undef"
  vivify_1279:
    $P106 = "addr"($P105)
    find_lex $P107, "self"
    find_lex $P108, "$?CLASS"
    getattribute $P2401, $P107, $P108, "%!addr_to_slot"
    unless_null $P2401, vivify_1280
    $P2401 = root_new ['parrot';'Hash']
    setattribute $P107, $P108, "%!addr_to_slot", $P2401
  vivify_1280:
    set $P2401[$P106], $P104
.annotate 'line', 2082
    find_lex $P104, "$idx"
    unless_null $P104, vivify_1281
    new $P104, "Undef"
  vivify_1281:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "add_event" :anon :subid("283_1309859073.622") :outer("270_1309859073.622")
    .param pmc param_2403
    .param pmc param_2404 :optional :named("deserialize_past")
    .param int has_param_2404 :opt_flag
    .param pmc param_2405 :optional :named("fixup_past")
    .param int has_param_2405 :opt_flag
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2092
    .lex "self", param_2403
    if has_param_2404, optparam_1282
    new $P103, "Undef"
    set param_2404, $P103
  optparam_1282:
    .lex "$deserialize_past", param_2404
    if has_param_2405, optparam_1283
    new $P104, "Undef"
    set param_2405, $P104
  optparam_1283:
    .lex "$fixup_past", param_2405
.annotate 'line', 2093
    find_dynamic_lex $P108, "%*COMPILING"
    unless_null $P108, vivify_1284
    get_hll_global $P106, "GLOBAL"
    get_who $P107, $P106
    set $P108, $P107["%COMPILING"]
    unless_null $P108, vivify_1285
    die "Contextual %*COMPILING not found"
  vivify_1285:
  vivify_1284:
    set $P2407, $P108["%?OPTIONS"]
    unless_null $P2407, vivify_1286
    $P2407 = root_new ['parrot';'Hash']
  vivify_1286:
    set $P109, $P2407["target"]
    unless_null $P109, vivify_1287
    new $P109, "Undef"
  vivify_1287:
    set $S100, $P109
    iseq $I101, $S100, "pir"
    if $I101, if_2406
.annotate 'line', 2099
    find_lex $P110, "self"
    find_lex $P111, "$?CLASS"
    getattribute $P2409, $P110, $P111, "@!event_stream"
    unless_null $P2409, vivify_1288
    $P2409 = root_new ['parrot';'ResizablePMCArray']
  vivify_1288:
    find_lex $P112, "Event"
    find_lex $P113, "$fixup_past"
    unless_null $P113, vivify_1289
    new $P113, "Undef"
  vivify_1289:
    $P114 = $P112."new"($P113 :named("fixup_past"))
    $P116 = $P2409."push"($P114)
.annotate 'line', 2097
    set $P105, $P116
.annotate 'line', 2093
    goto if_2406_end
  if_2406:
.annotate 'line', 2095
    find_lex $P110, "self"
    find_lex $P111, "$?CLASS"
    getattribute $P2408, $P110, $P111, "@!event_stream"
    unless_null $P2408, vivify_1290
    $P2408 = root_new ['parrot';'ResizablePMCArray']
  vivify_1290:
    find_lex $P112, "Event"
    find_lex $P113, "$deserialize_past"
    unless_null $P113, vivify_1291
    new $P113, "Undef"
  vivify_1291:
    $P114 = $P112."new"($P113 :named("deserialize_past"))
    $P115 = $P2408."push"($P114)
.annotate 'line', 2093
    set $P105, $P115
  if_2406_end:
.annotate 'line', 2092
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "get_object_sc_ref_past" :anon :subid("284_1309859073.622") :outer("270_1309859073.622")
    .param pmc param_2411
    .param pmc param_2412
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2105
    .lex "self", param_2411
    .lex "$obj", param_2412
.annotate 'line', 2108
    new $P103, "Undef"
    set $P2413, $P103
    .lex "$sc", $P2413
    find_lex $P104, "$obj"
    unless_null $P104, vivify_1292
    new $P104, "Undef"
  vivify_1292:
    nqp_get_sc_for_object $P105, $P104
    store_lex "$sc", $P105
.annotate 'line', 2109
    find_lex $P104, "$sc"
    unless_null $P104, vivify_1293
    new $P104, "Undef"
  vivify_1293:
    defined $I101, $P104
    if $I101, unless_2414_end
.annotate 'line', 2110
    new $P105, "String"
    assign $P105, "Object of type '"
    find_lex $P106, "$obj"
    unless_null $P106, vivify_1294
    new $P106, "Undef"
  vivify_1294:
    get_how $P107, $P106
    find_lex $P108, "$obj"
    unless_null $P108, vivify_1295
    new $P108, "Undef"
  vivify_1295:
    $S100 = $P107."name"($P108)
    concat $P109, $P105, $S100
    concat $P110, $P109, "' cannot be referenced without having been "
    concat $P111, $P110, "assigned a serialization context"
.annotate 'line', 2111
    die $P111
  unless_2414_end:
.annotate 'line', 2117
    find_lex $P105, "$sc"
    unless_null $P105, vivify_1296
    new $P105, "Undef"
  vivify_1296:
    find_lex $P106, "self"
    find_lex $P107, "$?CLASS"
    getattribute $P108, $P106, $P107, "$!sc"
    unless_null $P108, vivify_1297
    new $P108, "Undef"
  vivify_1297:
    issame $I101, $P105, $P108
    if $I101, if_2415
.annotate 'line', 2121
    get_hll_global $P109, "GLOBAL"
    nqp_get_package_through_who $P110, $P109, "PAST"
    get_who $P112, $P110
    set $P113, $P112["Op"]
.annotate 'line', 2122
    find_lex $P114, "$sc"
    unless_null $P114, vivify_1298
    new $P114, "Undef"
  vivify_1298:
    $P115 = $P114."handle"()
    find_lex $P116, "$sc"
    unless_null $P116, vivify_1299
    new $P116, "Undef"
  vivify_1299:
    find_lex $P117, "$obj"
    unless_null $P117, vivify_1300
    new $P117, "Undef"
  vivify_1300:
    $P118 = $P116."slot_index_for"($P117)
    $P119 = $P113."new"($P115, $P118, "nqp_get_sc_object Psi" :named("pirop"))
.annotate 'line', 2120
    set $P104, $P119
.annotate 'line', 2117
    goto if_2415_end
  if_2415:
.annotate 'line', 2118
    find_lex $P109, "self"
    find_lex $P110, "$obj"
    unless_null $P110, vivify_1301
    new $P110, "Undef"
  vivify_1301:
    $P111 = $P109."get_slot_past_for_object"($P110)
.annotate 'line', 2117
    set $P104, $P111
  if_2415_end:
.annotate 'line', 2105
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "sc" :anon :subid("285_1309859073.622") :outer("270_1309859073.622")
    .param pmc param_2417
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2128
    .lex "self", param_2417
    find_lex $P103, "self"
    find_lex $P104, "$?CLASS"
    getattribute $P105, $P103, $P104, "$!sc"
    unless_null $P105, vivify_1302
    new $P105, "Undef"
  vivify_1302:
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "handle" :anon :subid("286_1309859073.622") :outer("270_1309859073.622")
    .param pmc param_2419
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2133
    .lex "self", param_2419
    find_lex $P103, "self"
    find_lex $P104, "$?CLASS"
    getattribute $P105, $P103, $P104, "$!handle"
    unless_null $P105, vivify_1303
    new $P105, "Undef"
  vivify_1303:
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "event_stream" :anon :subid("287_1309859073.622") :outer("270_1309859073.622")
    .param pmc param_2421
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2138
    .lex "self", param_2421
    find_lex $P103, "self"
    find_lex $P104, "$?CLASS"
    getattribute $P2422, $P103, $P104, "@!event_stream"
    unless_null $P2422, vivify_1304
    $P2422 = root_new ['parrot';'ResizablePMCArray']
  vivify_1304:
    .return ($P2422)
.end


.HLL "nqp"

.namespace []
.sub "_block2425" :load :anon :subid("288_1309859073.622")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1065
    .const 'Sub' $P2427 = "10_1309859073.622" 
    $P109 = $P2427()
    .return ($P109)
.end

