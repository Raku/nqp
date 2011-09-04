.include 'cclass.pasm'
.include 'except_severity.pasm'
.include 'except_types.pasm'
.include 'iglobals.pasm'
.include 'interpinfo.pasm'
.include 'iterator.pasm'
.include 'sysinfo.pasm'
.include 'stat.pasm'
.include 'datatypes.pasm'

.HLL "nqp"

.loadlib "nqp_group"

.loadlib "nqp_ops"

.loadlib "trans_ops"

.loadlib "io_ops"

.namespace []
.sub "_block1000"  :anon :subid("10_1315150096.049")
    .param pmc param_1002 :slurpy
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 0
    .const 'Sub' $P2375 = "272_1315150096.049" 
    capture_lex $P2375
    .const 'Sub' $P2240 = "252_1315150096.049" 
    capture_lex $P2240
    .const 'Sub' $P2208 = "245_1315150096.049" 
    capture_lex $P2208
    .const 'Sub' $P1566 = "164_1315150096.049" 
    capture_lex $P1566
    .const 'Sub' $P1318 = "119_1315150096.049" 
    capture_lex $P1318
    .const 'Sub' $P1007 = "11_1315150096.049" 
    capture_lex $P1007
.annotate 'line', 1
    .lex "@ARGS", param_1002
    .lex "GLOBALish", $P1003
    .lex "$?PACKAGE", $P1004
.annotate 'line', 1697
    new $P100, "Undef"
    set $P1005, $P100
    .lex "$compiler", $P1005
.annotate 'line', 1051
    load_bytecode "Parrot/Exception.pbc"
.annotate 'line', 1050
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 7
    .const 'Sub' $P1007 = "11_1315150096.049" 
    capture_lex $P1007
    $P1007()
.annotate 'line', 865
    .const 'Sub' $P1318 = "119_1315150096.049" 
    capture_lex $P1318
    $P1318()
.annotate 'line', 1058
    .const 'Sub' $P1566 = "164_1315150096.049" 
    capture_lex $P1566
    $P1566()
.annotate 'line', 1697
    get_hll_global $P101, "GLOBAL"
    nqp_get_package_through_who $P102, $P101, "HLL"
    get_who $P103, $P102
    set $P104, $P103["Compiler"]
    $P105 = $P104."new"()
    store_lex "$compiler", $P105
.annotate 'line', 1698
    find_lex $P101, "$compiler"
    unless_null $P101, vivify_1101
    new $P101, "Undef"
  vivify_1101:
    $P101."language"("parrot")
.annotate 'line', 1792
    .const 'Sub' $P2208 = "245_1315150096.049" 
    capture_lex $P2208
    $P2208()
.annotate 'line', 1825
    .const 'Sub' $P2240 = "252_1315150096.049" 
    capture_lex $P2240
    $P2240()
.annotate 'line', 2011
    .const 'Sub' $P2375 = "272_1315150096.049" 
    capture_lex $P2375
    $P2375()
.annotate 'line', 1
    find_lex $P102, "@ARGS"
    if $P102, if_2469
    set $P101, $P102
    goto if_2469_end
  if_2469:
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P103, "ModuleLoader"
    getinterp $P104
    set $P105, $P104["context"]
    $P106 = $P103."set_mainline_module"($P105)
    set $P101, $P106
  if_2469_end:
    .return ($P101)
.annotate 'line', 1050
    .const 'Sub' $P2471 = "293_1315150096.049" 
.annotate 'line', 1
    .return ($P2471)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post294") :outer("10_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 0
    .const 'Sub' $P1001 = "10_1315150096.049" 
    .local pmc block
    set block, $P1001
    nqp_get_sc $P108, "1315150090.044"
    isnull $I100, $P108
    if $I100, if_2473
    goto if_2473_end
  if_2473:
    nqp_dynop_setup 
    getinterp $P109
    get_class $P110, "LexPad"
    get_class $P111, "NQPLexPad"
    $P109."hll_map"($P110, $P111)
    nqp_create_sc $P112, "1315150090.044"
    .local pmc cur_sc
    set cur_sc, $P112
    cur_sc."set_description"("src\\stage2\\gen\\NQPHLL.pm")
    nqp_get_sc $P113, "__6MODEL_CORE__"
    isnull $I101, $P113
    unless $I101, if_2474_end
    set $S100, "Incorrect pre-compiled version of <unknown> loaded"
    die $S100
  if_2474_end:
    nqp_get_sc_object $P113, "__6MODEL_CORE__", 0
    $P114 = $P113."new_type"("GLOBALish" :named("name"))
    nqp_add_object_to_sc cur_sc, 0, $P114
    .const 'Sub' $P2475 = "10_1315150096.049" 
    $P113 = $P2475."get_lexinfo"()
    nqp_get_sc_object $P114, "1315150090.044", 0
    $P113."set_static_lexpad_value"("GLOBALish", $P114)
    .const 'Sub' $P2476 = "10_1315150096.049" 
    $P115 = $P2476."get_lexinfo"()
    $P115."finish_static_lexpad"()
    .const 'Sub' $P2477 = "10_1315150096.049" 
    $P113 = $P2477."get_lexinfo"()
    nqp_get_sc_object $P114, "1315150090.044", 0
    $P113."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'Sub' $P2478 = "10_1315150096.049" 
    $P115 = $P2478."get_lexinfo"()
    $P115."finish_static_lexpad"()
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P113, "ModuleLoader"
    $P114 = $P113."load_setting"("NQPCORE")
    block."set_outer_ctx"($P114)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P113, "ModuleLoader"
    nqp_get_sc_object $P114, "1315150090.044", 0
    $P113."load_module"("NQPRegex", $P114)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P113, "ModuleLoader"
    nqp_get_sc_object $P114, "1315150090.044", 0
    $P113."load_module"("NQPRegex", $P114)
    nqp_get_sc $P113, "1315150083.514"
    isnull $I101, $P113
    unless $I101, if_2479_end
    set $S100, "Incorrect pre-compiled version of src\\stage2\\gen\\nqp-mo.pm loaded"
    die $S100
  if_2479_end:
    nqp_get_sc_object $P113, "1315150083.514", 42
    $P114 = $P113."new_type"("HLL::Grammar" :named("name"))
    nqp_add_object_to_sc cur_sc, 1, $P114
    nqp_get_sc_object $P113, "1315150090.044", 1
    nqp_get_sc_object $P114, "1315150090.044", 0
    nqp_get_package_through_who $P115, $P114, "HLL"
    get_who $P116, $P115
    set $P116["Grammar"], $P113
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2480 = "12_1315150096.049" 
    $P114."add_method"($P115, "ws", $P2480)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2481 = "13_1315150096.049" 
    $P114."add_method"($P115, "!PREFIX__ws", $P2481)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2482 = "14_1315150096.049" 
    $P114."add_method"($P115, "termish", $P2482)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2483 = "15_1315150096.049" 
    $P114."add_method"($P115, "!PREFIX__termish", $P2483)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2484 = "16_1315150096.049" 
    $P114."add_method"($P115, "term", $P2484)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2485 = "17_1315150096.049" 
    $P114."add_method"($P115, "!PREFIX__term", $P2485)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2486 = "18_1315150096.049" 
    $P114."add_method"($P115, "infix", $P2486)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2487 = "19_1315150096.049" 
    $P114."add_method"($P115, "!PREFIX__infix", $P2487)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2488 = "20_1315150096.049" 
    $P114."add_method"($P115, "prefix", $P2488)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2489 = "21_1315150096.049" 
    $P114."add_method"($P115, "!PREFIX__prefix", $P2489)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2490 = "22_1315150096.049" 
    $P114."add_method"($P115, "postfix", $P2490)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2491 = "23_1315150096.049" 
    $P114."add_method"($P115, "!PREFIX__postfix", $P2491)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2492 = "24_1315150096.049" 
    $P114."add_method"($P115, "circumfix", $P2492)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2493 = "25_1315150096.049" 
    $P114."add_method"($P115, "!PREFIX__circumfix", $P2493)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2494 = "26_1315150096.049" 
    $P114."add_method"($P115, "postcircumfix", $P2494)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2495 = "27_1315150096.049" 
    $P114."add_method"($P115, "!PREFIX__postcircumfix", $P2495)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2496 = "28_1315150096.049" 
    $P114."add_method"($P115, "term:sym<circumfix>", $P2496)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2497 = "29_1315150096.049" 
    $P114."add_method"($P115, "!PREFIX__term:sym<circumfix>", $P2497)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2498 = "30_1315150096.049" 
    $P114."add_method"($P115, "infixish", $P2498)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2499 = "31_1315150096.049" 
    $P114."add_method"($P115, "!PREFIX__infixish", $P2499)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2500 = "32_1315150096.049" 
    $P114."add_method"($P115, "prefixish", $P2500)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2501 = "33_1315150096.049" 
    $P114."add_method"($P115, "!PREFIX__prefixish", $P2501)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2502 = "34_1315150096.049" 
    $P114."add_method"($P115, "postfixish", $P2502)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2503 = "35_1315150096.049" 
    $P114."add_method"($P115, "!PREFIX__postfixish", $P2503)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2504 = "36_1315150096.049" 
    $P114."add_method"($P115, "nullterm", $P2504)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2505 = "37_1315150096.049" 
    $P114."add_method"($P115, "!PREFIX__nullterm", $P2505)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2506 = "38_1315150096.049" 
    $P114."add_method"($P115, "nullterm_alt", $P2506)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2507 = "39_1315150096.049" 
    $P114."add_method"($P115, "!PREFIX__nullterm_alt", $P2507)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2508 = "40_1315150096.049" 
    $P114."add_method"($P115, "nulltermish", $P2508)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2509 = "41_1315150096.049" 
    $P114."add_method"($P115, "quote_delimited", $P2509)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2510 = "42_1315150096.049" 
    $P114."add_method"($P115, "!PREFIX__quote_delimited", $P2510)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2511 = "43_1315150096.049" 
    $P114."add_method"($P115, "quote_atom", $P2511)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2512 = "44_1315150096.049" 
    $P114."add_method"($P115, "!PREFIX__quote_atom", $P2512)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2513 = "45_1315150096.049" 
    $P114."add_method"($P115, "decint", $P2513)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2514 = "46_1315150096.049" 
    $P114."add_method"($P115, "!PREFIX__decint", $P2514)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2515 = "47_1315150096.049" 
    $P114."add_method"($P115, "decints", $P2515)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2516 = "48_1315150096.049" 
    $P114."add_method"($P115, "!PREFIX__decints", $P2516)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2517 = "49_1315150096.049" 
    $P114."add_method"($P115, "hexint", $P2517)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2518 = "50_1315150096.049" 
    $P114."add_method"($P115, "!PREFIX__hexint", $P2518)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2519 = "51_1315150096.049" 
    $P114."add_method"($P115, "hexints", $P2519)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2520 = "52_1315150096.049" 
    $P114."add_method"($P115, "!PREFIX__hexints", $P2520)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2521 = "53_1315150096.049" 
    $P114."add_method"($P115, "octint", $P2521)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2522 = "54_1315150096.049" 
    $P114."add_method"($P115, "!PREFIX__octint", $P2522)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2523 = "55_1315150096.049" 
    $P114."add_method"($P115, "octints", $P2523)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2524 = "56_1315150096.049" 
    $P114."add_method"($P115, "!PREFIX__octints", $P2524)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2525 = "57_1315150096.049" 
    $P114."add_method"($P115, "binint", $P2525)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2526 = "58_1315150096.049" 
    $P114."add_method"($P115, "!PREFIX__binint", $P2526)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2527 = "59_1315150096.049" 
    $P114."add_method"($P115, "binints", $P2527)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2528 = "60_1315150096.049" 
    $P114."add_method"($P115, "!PREFIX__binints", $P2528)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2529 = "61_1315150096.049" 
    $P114."add_method"($P115, "integer", $P2529)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2530 = "62_1315150096.049" 
    $P114."add_method"($P115, "!PREFIX__integer", $P2530)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2531 = "63_1315150096.049" 
    $P114."add_method"($P115, "dec_number", $P2531)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2532 = "64_1315150096.049" 
    $P114."add_method"($P115, "!PREFIX__dec_number", $P2532)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2533 = "65_1315150096.049" 
    $P114."add_method"($P115, "escale", $P2533)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2534 = "66_1315150096.049" 
    $P114."add_method"($P115, "!PREFIX__escale", $P2534)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2535 = "67_1315150096.049" 
    $P114."add_method"($P115, "quote_escape", $P2535)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2536 = "68_1315150096.049" 
    $P114."add_method"($P115, "!PREFIX__quote_escape", $P2536)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2537 = "69_1315150096.049" 
    $P114."add_method"($P115, "quote_escape:sym<backslash>", $P2537)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2538 = "70_1315150096.049" 
    $P114."add_method"($P115, "!PREFIX__quote_escape:sym<backslash>", $P2538)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2539 = "71_1315150096.049" 
    $P114."add_method"($P115, "quote_escape:sym<stopper>", $P2539)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2540 = "72_1315150096.049" 
    $P114."add_method"($P115, "!PREFIX__quote_escape:sym<stopper>", $P2540)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2541 = "73_1315150096.049" 
    $P114."add_method"($P115, "quote_escape:sym<bs>", $P2541)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2542 = "74_1315150096.049" 
    $P114."add_method"($P115, "!PREFIX__quote_escape:sym<bs>", $P2542)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2543 = "75_1315150096.049" 
    $P114."add_method"($P115, "quote_escape:sym<nl>", $P2543)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2544 = "76_1315150096.049" 
    $P114."add_method"($P115, "!PREFIX__quote_escape:sym<nl>", $P2544)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2545 = "77_1315150096.049" 
    $P114."add_method"($P115, "quote_escape:sym<cr>", $P2545)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2546 = "78_1315150096.049" 
    $P114."add_method"($P115, "!PREFIX__quote_escape:sym<cr>", $P2546)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2547 = "79_1315150096.049" 
    $P114."add_method"($P115, "quote_escape:sym<tab>", $P2547)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2548 = "80_1315150096.049" 
    $P114."add_method"($P115, "!PREFIX__quote_escape:sym<tab>", $P2548)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2549 = "81_1315150096.049" 
    $P114."add_method"($P115, "quote_escape:sym<ff>", $P2549)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2550 = "82_1315150096.049" 
    $P114."add_method"($P115, "!PREFIX__quote_escape:sym<ff>", $P2550)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2551 = "83_1315150096.049" 
    $P114."add_method"($P115, "quote_escape:sym<esc>", $P2551)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2552 = "84_1315150096.049" 
    $P114."add_method"($P115, "!PREFIX__quote_escape:sym<esc>", $P2552)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2553 = "85_1315150096.049" 
    $P114."add_method"($P115, "quote_escape:sym<hex>", $P2553)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2554 = "86_1315150096.049" 
    $P114."add_method"($P115, "!PREFIX__quote_escape:sym<hex>", $P2554)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2555 = "87_1315150096.049" 
    $P114."add_method"($P115, "quote_escape:sym<oct>", $P2555)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2556 = "88_1315150096.049" 
    $P114."add_method"($P115, "!PREFIX__quote_escape:sym<oct>", $P2556)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2557 = "89_1315150096.049" 
    $P114."add_method"($P115, "quote_escape:sym<chr>", $P2557)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2558 = "90_1315150096.049" 
    $P114."add_method"($P115, "!PREFIX__quote_escape:sym<chr>", $P2558)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2559 = "91_1315150096.049" 
    $P114."add_method"($P115, "quote_escape:sym<0>", $P2559)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2560 = "92_1315150096.049" 
    $P114."add_method"($P115, "!PREFIX__quote_escape:sym<0>", $P2560)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2561 = "93_1315150096.049" 
    $P114."add_method"($P115, "quote_escape:sym<misc>", $P2561)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2562 = "97_1315150096.049" 
    $P114."add_method"($P115, "!PREFIX__quote_escape:sym<misc>", $P2562)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2563 = "98_1315150096.049" 
    $P114."add_method"($P115, "charname", $P2563)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2564 = "100_1315150096.049" 
    $P114."add_method"($P115, "!PREFIX__charname", $P2564)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2565 = "101_1315150096.049" 
    $P114."add_method"($P115, "charnames", $P2565)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2566 = "102_1315150096.049" 
    $P114."add_method"($P115, "!PREFIX__charnames", $P2566)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2567 = "103_1315150096.049" 
    $P114."add_method"($P115, "charspec", $P2567)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2568 = "104_1315150096.049" 
    $P114."add_method"($P115, "!PREFIX__charspec", $P2568)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2569 = "105_1315150096.049" 
    $P114."add_method"($P115, "O", $P2569)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2570 = "106_1315150096.049" 
    $P114."add_method"($P115, "panic", $P2570)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2571 = "107_1315150096.049" 
    $P114."add_method"($P115, "peek_delimiters", $P2571)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2572 = "108_1315150096.049" 
    $P114."add_method"($P115, "quote_EXPR", $P2572)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2573 = "109_1315150096.049" 
    $P114."add_method"($P115, "quotemod_check", $P2573)
    .const 'Sub' $P2574 = "109_1315150096.049" 
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_who $P114, $P113
    set $P114["quotemod_check"], $P2574
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2575 = "110_1315150096.049" 
    $P114."add_method"($P115, "starter", $P2575)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2576 = "111_1315150096.049" 
    $P114."add_method"($P115, "stopper", $P2576)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2577 = "112_1315150096.049" 
    $P114."add_method"($P115, "split_words", $P2577)
    .const 'Sub' $P2578 = "112_1315150096.049" 
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_who $P114, $P113
    set $P114["split_words"], $P2578
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2579 = "113_1315150096.049" 
    $P114."add_method"($P115, "EXPR", $P2579)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2580 = "114_1315150096.049" 
    $P114."add_method"($P115, "EXPR_reduce", $P2580)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2581 = "115_1315150096.049" 
    $P114."add_method"($P115, "ternary", $P2581)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2582 = "116_1315150096.049" 
    $P114."add_method"($P115, "MARKER", $P2582)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2583 = "117_1315150096.049" 
    $P114."add_method"($P115, "MARKED", $P2583)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    .const 'Sub' $P2584 = "118_1315150096.049" 
    $P114."add_method"($P115, "LANG", $P2584)
    .const 'Sub' $P2585 = "11_1315150096.049" 
    $P113 = $P2585."get_lexinfo"()
    nqp_get_sc_object $P114, "1315150090.044", 1
    $P113."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'Sub' $P2586 = "11_1315150096.049" 
    $P115 = $P2586."get_lexinfo"()
    $P115."finish_static_lexpad"()
    .const 'Sub' $P2587 = "11_1315150096.049" 
    $P113 = $P2587."get_lexinfo"()
    nqp_get_sc_object $P114, "1315150090.044", 1
    $P113."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'Sub' $P2588 = "11_1315150096.049" 
    $P115 = $P2588."get_lexinfo"()
    $P115."finish_static_lexpad"()
    nqp_get_sc $P113, "__REGEX_CORE_SC__"
    isnull $I101, $P113
    unless $I101, if_2589_end
    set $S100, "Incorrect pre-compiled version of <unknown> loaded"
    die $S100
  if_2589_end:
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    nqp_get_sc_object $P116, "__REGEX_CORE_SC__", 0
    $P114."set_default_parent"($P115, $P116)
    nqp_get_sc_object $P113, "1315150090.044", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 1
    $P114."compose"($P115)
    nqp_get_sc_object $P113, "1315150083.514", 42
    $P114 = $P113."new_type"("HLL::Actions" :named("name"))
    nqp_add_object_to_sc cur_sc, 105, $P114
    nqp_get_sc_object $P113, "1315150090.044", 105
    nqp_get_sc_object $P114, "1315150090.044", 0
    nqp_get_package_through_who $P115, $P114, "HLL"
    get_who $P116, $P115
    set $P116["Actions"], $P113
    .const 'Sub' $P2590 = "120_1315150096.049" 
    nqp_get_sc_object $P113, "1315150090.044", 105
    get_who $P114, $P113
    set $P114["string_to_int"], $P2590
    .const 'Sub' $P2591 = "121_1315150096.049" 
    nqp_get_sc_object $P113, "1315150090.044", 105
    get_who $P114, $P113
    set $P114["ints_to_string"], $P2591
    nqp_get_sc_object $P113, "1315150090.044", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 105
    .const 'Sub' $P2592 = "124_1315150096.049" 
    $P114."add_method"($P115, "CTXSAVE", $P2592)
    nqp_get_sc_object $P113, "1315150090.044", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 105
    .const 'Sub' $P2593 = "125_1315150096.049" 
    $P114."add_method"($P115, "SET_BLOCK_OUTER_CTX", $P2593)
    nqp_get_sc_object $P113, "1315150090.044", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 105
    .const 'Sub' $P2594 = "128_1315150096.049" 
    $P114."add_method"($P115, "EXPR", $P2594)
    nqp_get_sc_object $P113, "1315150090.044", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 105
    .const 'Sub' $P2595 = "131_1315150096.049" 
    $P114."add_method"($P115, "term:sym<circumfix>", $P2595)
    nqp_get_sc_object $P113, "1315150090.044", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 105
    .const 'Sub' $P2596 = "132_1315150096.049" 
    $P114."add_method"($P115, "termish", $P2596)
    nqp_get_sc_object $P113, "1315150090.044", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 105
    .const 'Sub' $P2597 = "133_1315150096.049" 
    $P114."add_method"($P115, "nullterm", $P2597)
    nqp_get_sc_object $P113, "1315150090.044", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 105
    .const 'Sub' $P2598 = "134_1315150096.049" 
    $P114."add_method"($P115, "nullterm_alt", $P2598)
    nqp_get_sc_object $P113, "1315150090.044", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 105
    .const 'Sub' $P2599 = "135_1315150096.049" 
    $P114."add_method"($P115, "integer", $P2599)
    nqp_get_sc_object $P113, "1315150090.044", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 105
    .const 'Sub' $P2600 = "136_1315150096.049" 
    $P114."add_method"($P115, "dec_number", $P2600)
    nqp_get_sc_object $P113, "1315150090.044", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 105
    .const 'Sub' $P2601 = "137_1315150096.049" 
    $P114."add_method"($P115, "decint", $P2601)
    nqp_get_sc_object $P113, "1315150090.044", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 105
    .const 'Sub' $P2602 = "138_1315150096.049" 
    $P114."add_method"($P115, "hexint", $P2602)
    nqp_get_sc_object $P113, "1315150090.044", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 105
    .const 'Sub' $P2603 = "139_1315150096.049" 
    $P114."add_method"($P115, "octint", $P2603)
    nqp_get_sc_object $P113, "1315150090.044", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 105
    .const 'Sub' $P2604 = "140_1315150096.049" 
    $P114."add_method"($P115, "binint", $P2604)
    nqp_get_sc_object $P113, "1315150090.044", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 105
    .const 'Sub' $P2605 = "141_1315150096.049" 
    $P114."add_method"($P115, "quote_EXPR", $P2605)
    nqp_get_sc_object $P113, "1315150090.044", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 105
    .const 'Sub' $P2606 = "144_1315150096.049" 
    $P114."add_method"($P115, "quote_delimited", $P2606)
    nqp_get_sc_object $P113, "1315150090.044", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 105
    .const 'Sub' $P2607 = "146_1315150096.049" 
    $P114."add_method"($P115, "quote_atom", $P2607)
    nqp_get_sc_object $P113, "1315150090.044", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 105
    .const 'Sub' $P2608 = "147_1315150096.049" 
    $P114."add_method"($P115, "quote_escape:sym<backslash>", $P2608)
    nqp_get_sc_object $P113, "1315150090.044", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 105
    .const 'Sub' $P2609 = "148_1315150096.049" 
    $P114."add_method"($P115, "quote_escape:sym<stopper>", $P2609)
    nqp_get_sc_object $P113, "1315150090.044", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 105
    .const 'Sub' $P2610 = "149_1315150096.049" 
    $P114."add_method"($P115, "quote_escape:sym<bs>", $P2610)
    nqp_get_sc_object $P113, "1315150090.044", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 105
    .const 'Sub' $P2611 = "150_1315150096.049" 
    $P114."add_method"($P115, "quote_escape:sym<nl>", $P2611)
    nqp_get_sc_object $P113, "1315150090.044", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 105
    .const 'Sub' $P2612 = "151_1315150096.049" 
    $P114."add_method"($P115, "quote_escape:sym<cr>", $P2612)
    nqp_get_sc_object $P113, "1315150090.044", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 105
    .const 'Sub' $P2613 = "152_1315150096.049" 
    $P114."add_method"($P115, "quote_escape:sym<tab>", $P2613)
    nqp_get_sc_object $P113, "1315150090.044", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 105
    .const 'Sub' $P2614 = "153_1315150096.049" 
    $P114."add_method"($P115, "quote_escape:sym<ff>", $P2614)
    nqp_get_sc_object $P113, "1315150090.044", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 105
    .const 'Sub' $P2615 = "154_1315150096.049" 
    $P114."add_method"($P115, "quote_escape:sym<esc>", $P2615)
    nqp_get_sc_object $P113, "1315150090.044", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 105
    .const 'Sub' $P2616 = "155_1315150096.049" 
    $P114."add_method"($P115, "quote_escape:sym<hex>", $P2616)
    nqp_get_sc_object $P113, "1315150090.044", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 105
    .const 'Sub' $P2617 = "156_1315150096.049" 
    $P114."add_method"($P115, "quote_escape:sym<oct>", $P2617)
    nqp_get_sc_object $P113, "1315150090.044", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 105
    .const 'Sub' $P2618 = "157_1315150096.049" 
    $P114."add_method"($P115, "quote_escape:sym<chr>", $P2618)
    nqp_get_sc_object $P113, "1315150090.044", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 105
    .const 'Sub' $P2619 = "158_1315150096.049" 
    $P114."add_method"($P115, "quote_escape:sym<0>", $P2619)
    nqp_get_sc_object $P113, "1315150090.044", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 105
    .const 'Sub' $P2620 = "159_1315150096.049" 
    $P114."add_method"($P115, "quote_escape:sym<misc>", $P2620)
    nqp_get_sc_object $P113, "1315150090.044", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 105
    .const 'Sub' $P2621 = "160_1315150096.049" 
    $P114."add_method"($P115, "charname", $P2621)
    nqp_get_sc_object $P113, "1315150090.044", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 105
    .const 'Sub' $P2622 = "161_1315150096.049" 
    $P114."add_method"($P115, "charnames", $P2622)
    nqp_get_sc_object $P113, "1315150090.044", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 105
    .const 'Sub' $P2623 = "163_1315150096.049" 
    $P114."add_method"($P115, "charspec", $P2623)
    .const 'Sub' $P2624 = "119_1315150096.049" 
    $P113 = $P2624."get_lexinfo"()
    nqp_get_sc_object $P114, "1315150090.044", 105
    $P113."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'Sub' $P2625 = "119_1315150096.049" 
    $P115 = $P2625."get_lexinfo"()
    $P115."finish_static_lexpad"()
    .const 'Sub' $P2626 = "119_1315150096.049" 
    $P113 = $P2626."get_lexinfo"()
    nqp_get_sc_object $P114, "1315150090.044", 105
    $P113."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'Sub' $P2627 = "119_1315150096.049" 
    $P115 = $P2627."get_lexinfo"()
    $P115."finish_static_lexpad"()
    nqp_get_sc $P113, "1315150088.461"
    isnull $I101, $P113
    unless $I101, if_2628_end
    set $S100, "Incorrect pre-compiled version of src\\stage2\\NQPCORE.setting loaded"
    die $S100
  if_2628_end:
    nqp_get_sc_object $P113, "1315150090.044", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 105
    nqp_get_sc_object $P116, "1315150088.461", 5
    $P114."set_default_parent"($P115, $P116)
    nqp_get_sc_object $P113, "1315150090.044", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 105
    $P114."compose"($P115)
    nqp_get_sc_object $P113, "1315150083.514", 42
    $P114 = $P113."new_type"("HLL::Compiler" :named("name"))
    nqp_add_object_to_sc cur_sc, 138, $P114
    nqp_get_sc_object $P113, "1315150090.044", 138
    nqp_get_sc_object $P114, "1315150090.044", 0
    nqp_get_package_through_who $P115, $P114, "HLL"
    get_who $P116, $P115
    set $P116["Compiler"], $P113
    nqp_get_sc_object $P113, "1315150090.044", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 138
    nqp_get_sc_object $P116, "1315150083.514", 83
    $P117 = $P116."new"("@!stages" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1315150090.044", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 138
    nqp_get_sc_object $P116, "1315150083.514", 83
    $P117 = $P116."new"("$!parsegrammar" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1315150090.044", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 138
    nqp_get_sc_object $P116, "1315150083.514", 83
    $P117 = $P116."new"("$!parseactions" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1315150090.044", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 138
    nqp_get_sc_object $P116, "1315150083.514", 83
    $P117 = $P116."new"("@!cmdoptions" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1315150090.044", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 138
    nqp_get_sc_object $P116, "1315150083.514", 83
    $P117 = $P116."new"("$!usage" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1315150090.044", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 138
    nqp_get_sc_object $P116, "1315150083.514", 83
    $P117 = $P116."new"("$!compiler_progname" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1315150090.044", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 138
    nqp_get_sc_object $P116, "1315150083.514", 83
    $P117 = $P116."new"("$!language" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1315150090.044", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 138
    nqp_get_sc_object $P116, "1315150083.514", 83
    $P117 = $P116."new"("%!config" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1315150090.044", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 138
    .const 'Sub' $P2629 = "166_1315150096.049" 
    $P114."add_method"($P115, "new", $P2629)
    nqp_get_sc_object $P113, "1315150090.044", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 138
    .const 'Sub' $P2630 = "167_1315150096.049" 
    $P114."add_method"($P115, "BUILD", $P2630)
    nqp_get_sc_object $P113, "1315150090.044", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 138
    .const 'Sub' $P2631 = "169_1315150096.049" 
    $P114."add_method"($P115, "get_exports", $P2631)
    nqp_get_sc_object $P113, "1315150090.044", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 138
    .const 'Sub' $P2632 = "172_1315150096.049" 
    $P114."add_method"($P115, "get_module", $P2632)
    nqp_get_sc_object $P113, "1315150090.044", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 138
    .const 'Sub' $P2633 = "173_1315150096.049" 
    $P114."add_method"($P115, "language", $P2633)
    nqp_get_sc_object $P113, "1315150090.044", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 138
    .const 'Sub' $P2634 = "174_1315150096.049" 
    $P114."add_method"($P115, "compiler", $P2634)
    nqp_get_sc_object $P113, "1315150090.044", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 138
    .const 'Sub' $P2635 = "175_1315150096.049" 
    $P114."add_method"($P115, "config", $P2635)
    nqp_get_sc_object $P113, "1315150090.044", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 138
    .const 'Sub' $P2636 = "176_1315150096.049" 
    $P114."add_method"($P115, "load_module", $P2636)
    nqp_get_sc_object $P113, "1315150090.044", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 138
    .const 'Sub' $P2637 = "178_1315150096.049" 
    $P114."add_method"($P115, "import", $P2637)
    nqp_get_sc_object $P113, "1315150090.044", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 138
    .const 'Sub' $P2638 = "183_1315150096.049" 
    $P114."add_method"($P115, "autoprint", $P2638)
    nqp_get_sc_object $P113, "1315150090.044", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 138
    .const 'Sub' $P2639 = "184_1315150096.049" 
    $P114."add_method"($P115, "interactive", $P2639)
    nqp_get_sc_object $P113, "1315150090.044", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 138
    .const 'Sub' $P2640 = "191_1315150096.049" 
    $P114."add_method"($P115, "eval", $P2640)
    nqp_get_sc_object $P113, "1315150090.044", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 138
    .const 'Sub' $P2641 = "193_1315150096.049" 
    $P114."add_method"($P115, "ctxsave", $P2641)
    nqp_get_sc_object $P113, "1315150090.044", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 138
    .const 'Sub' $P2642 = "194_1315150096.049" 
    $P114."add_method"($P115, "panic", $P2642)
    nqp_get_sc_object $P113, "1315150090.044", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 138
    .const 'Sub' $P2643 = "195_1315150096.049" 
    $P114."add_method"($P115, "stages", $P2643)
    nqp_get_sc_object $P113, "1315150090.044", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 138
    .const 'Sub' $P2644 = "196_1315150096.049" 
    $P114."add_method"($P115, "parsegrammar", $P2644)
    nqp_get_sc_object $P113, "1315150090.044", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 138
    .const 'Sub' $P2645 = "197_1315150096.049" 
    $P114."add_method"($P115, "parseactions", $P2645)
    nqp_get_sc_object $P113, "1315150090.044", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 138
    .const 'Sub' $P2646 = "198_1315150096.049" 
    $P114."add_method"($P115, "interactive_banner", $P2646)
    nqp_get_sc_object $P113, "1315150090.044", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 138
    .const 'Sub' $P2647 = "199_1315150096.049" 
    $P114."add_method"($P115, "interactive_prompt", $P2647)
    nqp_get_sc_object $P113, "1315150090.044", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 138
    .const 'Sub' $P2648 = "200_1315150096.049" 
    $P114."add_method"($P115, "compiler_progname", $P2648)
    nqp_get_sc_object $P113, "1315150090.044", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 138
    .const 'Sub' $P2649 = "201_1315150096.049" 
    $P114."add_method"($P115, "commandline_options", $P2649)
    nqp_get_sc_object $P113, "1315150090.044", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 138
    .const 'Sub' $P2650 = "202_1315150096.049" 
    $P114."add_method"($P115, "command_line", $P2650)
    nqp_get_sc_object $P113, "1315150090.044", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 138
    .const 'Sub' $P2651 = "204_1315150096.049" 
    $P114."add_method"($P115, "command_eval", $P2651)
    nqp_get_sc_object $P113, "1315150090.044", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 138
    .const 'Sub' $P2652 = "209_1315150096.049" 
    $P114."add_method"($P115, "process_args", $P2652)
    nqp_get_sc_object $P113, "1315150090.044", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 138
    .const 'Sub' $P2653 = "212_1315150096.049" 
    $P114."add_method"($P115, "evalfiles", $P2653)
    nqp_get_sc_object $P113, "1315150090.044", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 138
    .const 'Sub' $P2654 = "216_1315150096.049" 
    $P114."add_method"($P115, "compile", $P2654)
    nqp_get_sc_object $P113, "1315150090.044", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 138
    .const 'Sub' $P2655 = "219_1315150096.049" 
    $P114."add_method"($P115, "parse", $P2655)
    nqp_get_sc_object $P113, "1315150090.044", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 138
    .const 'Sub' $P2656 = "222_1315150096.049" 
    $P114."add_method"($P115, "past", $P2656)
    nqp_get_sc_object $P113, "1315150090.044", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 138
    .const 'Sub' $P2657 = "223_1315150096.049" 
    $P114."add_method"($P115, "post", $P2657)
    nqp_get_sc_object $P113, "1315150090.044", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 138
    .const 'Sub' $P2658 = "224_1315150096.049" 
    $P114."add_method"($P115, "pirbegin", $P2658)
    nqp_get_sc_object $P113, "1315150090.044", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 138
    .const 'Sub' $P2659 = "225_1315150096.049" 
    $P114."add_method"($P115, "pir", $P2659)
    nqp_get_sc_object $P113, "1315150090.044", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 138
    .const 'Sub' $P2660 = "226_1315150096.049" 
    $P114."add_method"($P115, "evalpmc", $P2660)
    nqp_get_sc_object $P113, "1315150090.044", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 138
    .const 'Sub' $P2661 = "227_1315150096.049" 
    $P114."add_method"($P115, "dumper", $P2661)
    nqp_get_sc_object $P113, "1315150090.044", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 138
    .const 'Sub' $P2662 = "229_1315150096.049" 
    $P114."add_method"($P115, "usage", $P2662)
    nqp_get_sc_object $P113, "1315150090.044", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 138
    .const 'Sub' $P2663 = "230_1315150096.049" 
    $P114."add_method"($P115, "version", $P2663)
    nqp_get_sc_object $P113, "1315150090.044", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 138
    .const 'Sub' $P2664 = "231_1315150096.049" 
    $P114."add_method"($P115, "show-config", $P2664)
    nqp_get_sc_object $P113, "1315150090.044", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 138
    .const 'Sub' $P2665 = "234_1315150096.049" 
    $P114."add_method"($P115, "nqpevent", $P2665)
    nqp_get_sc_object $P113, "1315150090.044", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 138
    .const 'Sub' $P2666 = "237_1315150096.049" 
    $P114."add_method"($P115, "removestage", $P2666)
    nqp_get_sc_object $P113, "1315150090.044", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 138
    .const 'Sub' $P2667 = "239_1315150096.049" 
    $P114."add_method"($P115, "addstage", $P2667)
    nqp_get_sc_object $P113, "1315150090.044", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 138
    .const 'Sub' $P2668 = "242_1315150096.049" 
    $P114."add_method"($P115, "parse_name", $P2668)
    nqp_get_sc_object $P113, "1315150090.044", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 138
    .const 'Sub' $P2669 = "244_1315150096.049" 
    $P114."add_method"($P115, "lineof", $P2669)
    .const 'Sub' $P2670 = "164_1315150096.049" 
    $P113 = $P2670."get_lexinfo"()
    nqp_get_sc_object $P114, "1315150090.044", 138
    $P113."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'Sub' $P2671 = "164_1315150096.049" 
    $P115 = $P2671."get_lexinfo"()
    $P115."finish_static_lexpad"()
    .const 'Sub' $P2672 = "164_1315150096.049" 
    $P113 = $P2672."get_lexinfo"()
    nqp_get_sc_object $P114, "1315150090.044", 138
    $P113."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'Sub' $P2673 = "164_1315150096.049" 
    $P115 = $P2673."get_lexinfo"()
    $P115."finish_static_lexpad"()
    nqp_get_sc_object $P113, "1315150090.044", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 138
    nqp_get_sc_object $P116, "1315150088.461", 5
    $P114."set_default_parent"($P115, $P116)
    nqp_get_sc_object $P113, "1315150090.044", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 138
    $P114."compose"($P115)
    nqp_get_sc_object $P113, "1315150083.514", 42
    $P114 = $P113."new_type"("HLL::CommandLine::Result" :named("name"))
    nqp_add_object_to_sc cur_sc, 180, $P114
    nqp_get_sc_object $P113, "1315150090.044", 180
    nqp_get_sc_object $P114, "1315150090.044", 0
    nqp_get_package_through_who $P115, $P114, "HLL"
    nqp_get_package_through_who $P116, $P115, "CommandLine"
    get_who $P117, $P116
    set $P117["Result"], $P113
    nqp_get_sc_object $P113, "1315150090.044", 180
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 180
    nqp_get_sc_object $P116, "1315150083.514", 83
    $P117 = $P116."new"("@!arguments" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1315150090.044", 180
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 180
    nqp_get_sc_object $P116, "1315150083.514", 83
    $P117 = $P116."new"("%!options" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1315150090.044", 180
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 180
    .const 'Sub' $P2674 = "246_1315150096.049" 
    $P114."add_method"($P115, "init", $P2674)
    nqp_get_sc_object $P113, "1315150090.044", 180
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 180
    .const 'Sub' $P2675 = "247_1315150096.049" 
    $P114."add_method"($P115, "arguments", $P2675)
    nqp_get_sc_object $P113, "1315150090.044", 180
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 180
    .const 'Sub' $P2676 = "248_1315150096.049" 
    $P114."add_method"($P115, "options", $P2676)
    nqp_get_sc_object $P113, "1315150090.044", 180
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 180
    .const 'Sub' $P2677 = "249_1315150096.049" 
    $P114."add_method"($P115, "add-argument", $P2677)
    nqp_get_sc_object $P113, "1315150090.044", 180
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 180
    .const 'Sub' $P2678 = "250_1315150096.049" 
    $P114."add_method"($P115, "add-option", $P2678)
    .const 'Sub' $P2679 = "245_1315150096.049" 
    $P113 = $P2679."get_lexinfo"()
    nqp_get_sc_object $P114, "1315150090.044", 180
    $P113."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'Sub' $P2680 = "245_1315150096.049" 
    $P115 = $P2680."get_lexinfo"()
    $P115."finish_static_lexpad"()
    .const 'Sub' $P2681 = "245_1315150096.049" 
    $P113 = $P2681."get_lexinfo"()
    nqp_get_sc_object $P114, "1315150090.044", 180
    $P113."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'Sub' $P2682 = "245_1315150096.049" 
    $P115 = $P2682."get_lexinfo"()
    $P115."finish_static_lexpad"()
    nqp_get_sc_object $P113, "1315150090.044", 180
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 180
    nqp_get_sc_object $P116, "1315150088.461", 5
    $P114."set_default_parent"($P115, $P116)
    nqp_get_sc_object $P113, "1315150090.044", 180
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 180
    $P114."compose"($P115)
    nqp_get_sc_object $P113, "1315150083.514", 42
    $P114 = $P113."new_type"("HLL::CommandLine::Parser" :named("name"))
    nqp_add_object_to_sc cur_sc, 186, $P114
    nqp_get_sc_object $P113, "1315150090.044", 186
    nqp_get_sc_object $P114, "1315150090.044", 0
    nqp_get_package_through_who $P115, $P114, "HLL"
    nqp_get_package_through_who $P116, $P115, "CommandLine"
    get_who $P117, $P116
    set $P117["Parser"], $P113
    nqp_get_sc_object $P113, "1315150090.044", 186
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 186
    nqp_get_sc_object $P116, "1315150083.514", 83
    $P117 = $P116."new"("@!specs" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1315150090.044", 186
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 186
    nqp_get_sc_object $P116, "1315150083.514", 83
    $P117 = $P116."new"("%!options" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1315150090.044", 186
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 186
    nqp_get_sc_object $P116, "1315150083.514", 83
    $P117 = $P116."new"("%!stopper" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1315150090.044", 186
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 186
    nqp_get_sc_object $P116, "1315150083.514", 83
    $P117 = $P116."new"("$!stop-after-first-arg" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1315150090.044", 186
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 186
    .const 'Sub' $P2683 = "253_1315150096.049" 
    $P114."add_method"($P115, "new", $P2683)
    nqp_get_sc_object $P113, "1315150090.044", 186
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 186
    .const 'Sub' $P2684 = "254_1315150096.049" 
    $P114."add_method"($P115, "stop-after-first-arg", $P2684)
    nqp_get_sc_object $P113, "1315150090.044", 186
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 186
    .const 'Sub' $P2685 = "255_1315150096.049" 
    $P114."add_method"($P115, "BUILD", $P2685)
    nqp_get_sc_object $P113, "1315150090.044", 186
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 186
    .const 'Sub' $P2686 = "257_1315150096.049" 
    $P114."add_method"($P115, "add-stopper", $P2686)
    nqp_get_sc_object $P113, "1315150090.044", 186
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 186
    .const 'Sub' $P2687 = "258_1315150096.049" 
    $P114."add_method"($P115, "split-option-aliases", $P2687)
    nqp_get_sc_object $P113, "1315150090.044", 186
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 186
    .const 'Sub' $P2688 = "259_1315150096.049" 
    $P114."add_method"($P115, "add-spec", $P2688)
    nqp_get_sc_object $P113, "1315150090.044", 186
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 186
    .const 'Sub' $P2689 = "261_1315150096.049" 
    $P114."add_method"($P115, "is-option", $P2689)
    nqp_get_sc_object $P113, "1315150090.044", 186
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 186
    .const 'Sub' $P2690 = "262_1315150096.049" 
    $P114."add_method"($P115, "wants-value", $P2690)
    nqp_get_sc_object $P113, "1315150090.044", 186
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 186
    .const 'Sub' $P2691 = "263_1315150096.049" 
    $P114."add_method"($P115, "optional-value", $P2691)
    nqp_get_sc_object $P113, "1315150090.044", 186
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 186
    .const 'Sub' $P2692 = "264_1315150096.049" 
    $P114."add_method"($P115, "parse", $P2692)
    .const 'Sub' $P2693 = "252_1315150096.049" 
    $P113 = $P2693."get_lexinfo"()
    nqp_get_sc_object $P114, "1315150090.044", 186
    $P113."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'Sub' $P2694 = "252_1315150096.049" 
    $P115 = $P2694."get_lexinfo"()
    $P115."finish_static_lexpad"()
    .const 'Sub' $P2695 = "252_1315150096.049" 
    $P113 = $P2695."get_lexinfo"()
    nqp_get_sc_object $P114, "1315150090.044", 186
    $P113."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'Sub' $P2696 = "252_1315150096.049" 
    $P115 = $P2696."get_lexinfo"()
    $P115."finish_static_lexpad"()
    nqp_get_sc_object $P113, "1315150090.044", 186
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 186
    nqp_get_sc_object $P116, "1315150088.461", 5
    $P114."set_default_parent"($P115, $P116)
    nqp_get_sc_object $P113, "1315150090.044", 186
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 186
    $P114."compose"($P115)
    nqp_get_sc_object $P113, "1315150083.514", 42
    $P114 = $P113."new_type"("HLL::Compiler::SerializationContextBuilder" :named("name"))
    nqp_add_object_to_sc cur_sc, 197, $P114
    nqp_get_sc_object $P113, "1315150090.044", 197
    nqp_get_sc_object $P114, "1315150090.044", 0
    nqp_get_package_through_who $P115, $P114, "HLL"
    nqp_get_package_through_who $P116, $P115, "Compiler"
    get_who $P117, $P116
    set $P117["SerializationContextBuilder"], $P113
    nqp_get_sc_object $P113, "1315150083.514", 42
    $P114 = $P113."new_type"("Event" :named("name"))
    nqp_add_object_to_sc cur_sc, 198, $P114
    .const 'Sub' $P2697 = "272_1315150096.049" 
    $P113 = $P2697."get_lexinfo"()
    nqp_get_sc_object $P114, "1315150090.044", 198
    $P113."set_static_lexpad_value"("Event", $P114)
    .const 'Sub' $P2698 = "272_1315150096.049" 
    $P115 = $P2698."get_lexinfo"()
    $P115."finish_static_lexpad"()
    nqp_get_sc_object $P113, "1315150090.044", 198
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 198
    nqp_get_sc_object $P116, "1315150083.514", 83
    $P117 = $P116."new"("$!deserialize_past" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1315150090.044", 198
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 198
    .const 'Sub' $P2699 = "275_1315150096.049" 
    $P114."add_method"($P115, "deserialize_past", $P2699)
    nqp_get_sc_object $P113, "1315150090.044", 198
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 198
    nqp_get_sc_object $P116, "1315150083.514", 83
    $P117 = $P116."new"("$!fixup_past" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1315150090.044", 198
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 198
    .const 'Sub' $P2700 = "276_1315150096.049" 
    $P114."add_method"($P115, "fixup_past", $P2700)
    .const 'Sub' $P2701 = "274_1315150096.049" 
    $P113 = $P2701."get_lexinfo"()
    nqp_get_sc_object $P114, "1315150090.044", 198
    $P113."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'Sub' $P2702 = "274_1315150096.049" 
    $P115 = $P2702."get_lexinfo"()
    $P115."finish_static_lexpad"()
    .const 'Sub' $P2703 = "274_1315150096.049" 
    $P113 = $P2703."get_lexinfo"()
    nqp_get_sc_object $P114, "1315150090.044", 198
    $P113."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'Sub' $P2704 = "274_1315150096.049" 
    $P115 = $P2704."get_lexinfo"()
    $P115."finish_static_lexpad"()
    nqp_get_sc_object $P113, "1315150090.044", 198
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 198
    nqp_get_sc_object $P116, "1315150088.461", 5
    $P114."set_default_parent"($P115, $P116)
    nqp_get_sc_object $P113, "1315150090.044", 198
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 198
    $P114."compose"($P115)
    nqp_get_sc_object $P113, "1315150090.044", 197
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 197
    nqp_get_sc_object $P116, "1315150083.514", 83
    $P117 = $P116."new"("$!sc" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1315150090.044", 197
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 197
    nqp_get_sc_object $P116, "1315150083.514", 83
    $P117 = $P116."new"("$!handle" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1315150090.044", 197
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 197
    nqp_get_sc_object $P116, "1315150083.514", 83
    $P117 = $P116."new"("%!addr_to_slot" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1315150090.044", 197
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 197
    nqp_get_sc_object $P116, "1315150083.514", 83
    $P117 = $P116."new"("@!event_stream" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1315150090.044", 197
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 197
    nqp_get_sc_object $P116, "1315150083.514", 83
    $P117 = $P116."new"("%!dependencies" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1315150090.044", 197
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 197
    nqp_get_sc_object $P116, "1315150083.514", 83
    $P117 = $P116."new"("$!precomp_mode" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1315150090.044", 197
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 197
    .const 'Sub' $P2705 = "277_1315150096.049" 
    $P114."add_method"($P115, "new", $P2705)
    nqp_get_sc_object $P113, "1315150090.044", 197
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 197
    .const 'Sub' $P2706 = "278_1315150096.049" 
    $P114."add_method"($P115, "BUILD", $P2706)
    nqp_get_sc_object $P113, "1315150090.044", 197
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 197
    .const 'Sub' $P2707 = "279_1315150096.049" 
    $P114."add_method"($P115, "slot_for_object", $P2707)
    nqp_get_sc_object $P113, "1315150090.044", 197
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 197
    .const 'Sub' $P2708 = "280_1315150096.049" 
    $P114."add_method"($P115, "get_slot_past_for_object", $P2708)
    nqp_get_sc_object $P113, "1315150090.044", 197
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 197
    .const 'Sub' $P2709 = "281_1315150096.049" 
    $P114."add_method"($P115, "set_slot_past", $P2709)
    nqp_get_sc_object $P113, "1315150090.044", 197
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 197
    .const 'Sub' $P2710 = "282_1315150096.049" 
    $P114."add_method"($P115, "set_cur_sc", $P2710)
    nqp_get_sc_object $P113, "1315150090.044", 197
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 197
    .const 'Sub' $P2711 = "283_1315150096.049" 
    $P114."add_method"($P115, "add_object_to_cur_sc_past", $P2711)
    nqp_get_sc_object $P113, "1315150090.044", 197
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 197
    .const 'Sub' $P2712 = "284_1315150096.049" 
    $P114."add_method"($P115, "add_object", $P2712)
    nqp_get_sc_object $P113, "1315150090.044", 197
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 197
    .const 'Sub' $P2713 = "285_1315150096.049" 
    $P114."add_method"($P115, "add_code", $P2713)
    nqp_get_sc_object $P113, "1315150090.044", 197
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 197
    .const 'Sub' $P2714 = "286_1315150096.049" 
    $P114."add_method"($P115, "is_precompilation_mode", $P2714)
    nqp_get_sc_object $P113, "1315150090.044", 197
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 197
    .const 'Sub' $P2715 = "287_1315150096.049" 
    $P114."add_method"($P115, "add_event", $P2715)
    nqp_get_sc_object $P113, "1315150090.044", 197
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 197
    .const 'Sub' $P2716 = "288_1315150096.049" 
    $P114."add_method"($P115, "get_object_sc_ref_past", $P2716)
    nqp_get_sc_object $P113, "1315150090.044", 197
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 197
    .const 'Sub' $P2717 = "290_1315150096.049" 
    $P114."add_method"($P115, "sc", $P2717)
    nqp_get_sc_object $P113, "1315150090.044", 197
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 197
    .const 'Sub' $P2718 = "291_1315150096.049" 
    $P114."add_method"($P115, "handle", $P2718)
    nqp_get_sc_object $P113, "1315150090.044", 197
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 197
    .const 'Sub' $P2719 = "292_1315150096.049" 
    $P114."add_method"($P115, "event_stream", $P2719)
    .const 'Sub' $P2720 = "272_1315150096.049" 
    $P113 = $P2720."get_lexinfo"()
    nqp_get_sc_object $P114, "1315150090.044", 197
    $P113."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'Sub' $P2721 = "272_1315150096.049" 
    $P115 = $P2721."get_lexinfo"()
    $P115."finish_static_lexpad"()
    .const 'Sub' $P2722 = "272_1315150096.049" 
    $P113 = $P2722."get_lexinfo"()
    nqp_get_sc_object $P114, "1315150090.044", 197
    $P113."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'Sub' $P2723 = "272_1315150096.049" 
    $P115 = $P2723."get_lexinfo"()
    $P115."finish_static_lexpad"()
    nqp_get_sc_object $P113, "1315150090.044", 197
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 197
    nqp_get_sc_object $P116, "1315150088.461", 5
    $P114."set_default_parent"($P115, $P116)
    nqp_get_sc_object $P113, "1315150090.044", 197
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1315150090.044", 197
    $P114."compose"($P115)
  if_2473_end:
    nqp_get_sc_object $P113, "1315150090.044", 0
    set_hll_global "GLOBAL", $P113
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block1006"  :subid("11_1315150096.049") :outer("10_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .const 'Sub' $P1308 = "118_1315150096.049" 
    capture_lex $P1308
    .const 'Sub' $P1305 = "117_1315150096.049" 
    capture_lex $P1305
    .const 'Sub' $P1297 = "116_1315150096.049" 
    capture_lex $P1297
    .const 'Sub' $P1289 = "115_1315150096.049" 
    capture_lex $P1289
    .const 'Sub' $P1285 = "114_1315150096.049" 
    capture_lex $P1285
    .const 'Sub' $P1282 = "113_1315150096.049" 
    capture_lex $P1282
    .const 'Sub' $P1279 = "112_1315150096.049" 
    capture_lex $P1279
    .const 'Sub' $P1277 = "111_1315150096.049" 
    capture_lex $P1277
    .const 'Sub' $P1275 = "110_1315150096.049" 
    capture_lex $P1275
    .const 'Sub' $P1272 = "109_1315150096.049" 
    capture_lex $P1272
    .const 'Sub' $P1269 = "108_1315150096.049" 
    capture_lex $P1269
    .const 'Sub' $P1265 = "107_1315150096.049" 
    capture_lex $P1265
    .const 'Sub' $P1254 = "106_1315150096.049" 
    capture_lex $P1254
    .const 'Sub' $P1250 = "105_1315150096.049" 
    capture_lex $P1250
    .const 'Sub' $P1249 = "104_1315150096.049" 
    capture_lex $P1249
    .const 'Sub' $P1244 = "103_1315150096.049" 
    capture_lex $P1244
    .const 'Sub' $P1243 = "102_1315150096.049" 
    capture_lex $P1243
    .const 'Sub' $P1239 = "101_1315150096.049" 
    capture_lex $P1239
    .const 'Sub' $P1238 = "100_1315150096.049" 
    capture_lex $P1238
    .const 'Sub' $P1228 = "98_1315150096.049" 
    capture_lex $P1228
    .const 'Sub' $P1227 = "97_1315150096.049" 
    capture_lex $P1227
    .const 'Sub' $P1211 = "93_1315150096.049" 
    capture_lex $P1211
    .const 'Sub' $P1210 = "92_1315150096.049" 
    capture_lex $P1210
    .const 'Sub' $P1206 = "91_1315150096.049" 
    capture_lex $P1206
    .const 'Sub' $P1205 = "90_1315150096.049" 
    capture_lex $P1205
    .const 'Sub' $P1202 = "89_1315150096.049" 
    capture_lex $P1202
    .const 'Sub' $P1201 = "88_1315150096.049" 
    capture_lex $P1201
    .const 'Sub' $P1197 = "87_1315150096.049" 
    capture_lex $P1197
    .const 'Sub' $P1196 = "86_1315150096.049" 
    capture_lex $P1196
    .const 'Sub' $P1192 = "85_1315150096.049" 
    capture_lex $P1192
    .const 'Sub' $P1191 = "84_1315150096.049" 
    capture_lex $P1191
    .const 'Sub' $P1188 = "83_1315150096.049" 
    capture_lex $P1188
    .const 'Sub' $P1187 = "82_1315150096.049" 
    capture_lex $P1187
    .const 'Sub' $P1184 = "81_1315150096.049" 
    capture_lex $P1184
    .const 'Sub' $P1183 = "80_1315150096.049" 
    capture_lex $P1183
    .const 'Sub' $P1180 = "79_1315150096.049" 
    capture_lex $P1180
    .const 'Sub' $P1179 = "78_1315150096.049" 
    capture_lex $P1179
    .const 'Sub' $P1176 = "77_1315150096.049" 
    capture_lex $P1176
    .const 'Sub' $P1175 = "76_1315150096.049" 
    capture_lex $P1175
    .const 'Sub' $P1172 = "75_1315150096.049" 
    capture_lex $P1172
    .const 'Sub' $P1171 = "74_1315150096.049" 
    capture_lex $P1171
    .const 'Sub' $P1168 = "73_1315150096.049" 
    capture_lex $P1168
    .const 'Sub' $P1167 = "72_1315150096.049" 
    capture_lex $P1167
    .const 'Sub' $P1164 = "71_1315150096.049" 
    capture_lex $P1164
    .const 'Sub' $P1163 = "70_1315150096.049" 
    capture_lex $P1163
    .const 'Sub' $P1160 = "69_1315150096.049" 
    capture_lex $P1160
    .const 'Sub' $P1155 = "66_1315150096.049" 
    capture_lex $P1155
    .const 'Sub' $P1151 = "65_1315150096.049" 
    capture_lex $P1151
    .const 'Sub' $P1150 = "64_1315150096.049" 
    capture_lex $P1150
    .const 'Sub' $P1139 = "63_1315150096.049" 
    capture_lex $P1139
    .const 'Sub' $P1138 = "62_1315150096.049" 
    capture_lex $P1138
    .const 'Sub' $P1133 = "61_1315150096.049" 
    capture_lex $P1133
    .const 'Sub' $P1132 = "60_1315150096.049" 
    capture_lex $P1132
    .const 'Sub' $P1128 = "59_1315150096.049" 
    capture_lex $P1128
    .const 'Sub' $P1127 = "58_1315150096.049" 
    capture_lex $P1127
    .const 'Sub' $P1122 = "57_1315150096.049" 
    capture_lex $P1122
    .const 'Sub' $P1121 = "56_1315150096.049" 
    capture_lex $P1121
    .const 'Sub' $P1117 = "55_1315150096.049" 
    capture_lex $P1117
    .const 'Sub' $P1116 = "54_1315150096.049" 
    capture_lex $P1116
    .const 'Sub' $P1111 = "53_1315150096.049" 
    capture_lex $P1111
    .const 'Sub' $P1110 = "52_1315150096.049" 
    capture_lex $P1110
    .const 'Sub' $P1106 = "51_1315150096.049" 
    capture_lex $P1106
    .const 'Sub' $P1105 = "50_1315150096.049" 
    capture_lex $P1105
    .const 'Sub' $P1100 = "49_1315150096.049" 
    capture_lex $P1100
    .const 'Sub' $P1099 = "48_1315150096.049" 
    capture_lex $P1099
    .const 'Sub' $P1095 = "47_1315150096.049" 
    capture_lex $P1095
    .const 'Sub' $P1094 = "46_1315150096.049" 
    capture_lex $P1094
    .const 'Sub' $P1090 = "45_1315150096.049" 
    capture_lex $P1090
    .const 'Sub' $P1089 = "44_1315150096.049" 
    capture_lex $P1089
    .const 'Sub' $P1084 = "43_1315150096.049" 
    capture_lex $P1084
    .const 'Sub' $P1083 = "42_1315150096.049" 
    capture_lex $P1083
    .const 'Sub' $P1078 = "41_1315150096.049" 
    capture_lex $P1078
    .const 'Sub' $P1075 = "40_1315150096.049" 
    capture_lex $P1075
    .const 'Sub' $P1074 = "39_1315150096.049" 
    capture_lex $P1074
    .const 'Sub' $P1071 = "38_1315150096.049" 
    capture_lex $P1071
    .const 'Sub' $P1070 = "37_1315150096.049" 
    capture_lex $P1070
    .const 'Sub' $P1067 = "36_1315150096.049" 
    capture_lex $P1067
    .const 'Sub' $P1066 = "35_1315150096.049" 
    capture_lex $P1066
    .const 'Sub' $P1062 = "34_1315150096.049" 
    capture_lex $P1062
    .const 'Sub' $P1061 = "33_1315150096.049" 
    capture_lex $P1061
    .const 'Sub' $P1058 = "32_1315150096.049" 
    capture_lex $P1058
    .const 'Sub' $P1057 = "31_1315150096.049" 
    capture_lex $P1057
    .const 'Sub' $P1054 = "30_1315150096.049" 
    capture_lex $P1054
    .const 'Sub' $P1053 = "29_1315150096.049" 
    capture_lex $P1053
    .const 'Sub' $P1050 = "28_1315150096.049" 
    capture_lex $P1050
    .const 'Sub' $P1025 = "15_1315150096.049" 
    capture_lex $P1025
    .const 'Sub' $P1018 = "14_1315150096.049" 
    capture_lex $P1018
    .const 'Sub' $P1017 = "13_1315150096.049" 
    capture_lex $P1017
    .const 'Sub' $P1012 = "12_1315150096.049" 
    capture_lex $P1012
.annotate 'line', 8
    new $P101, "Undef"
    set $P1008, $P101
    .lex "$brackets", $P1008
.annotate 'line', 10
    new $P102, "Undef"
    set $P1009, $P102
    .lex "$cursor_class", $P1009
    .lex "$?PACKAGE", $P1010
    .lex "$?CLASS", $P1011
.annotate 'line', 8
    new $P103, "String"
    assign $P103, unicode:"<>[](){}\x{ab}\x{bb}\u0f3a\u0f3b\u0f3c\u0f3d\u169b\u169c\u2045\u2046\u207d\u207e\u208d\u208e\u2329\u232a\u2768\u2769\u276a\u276b\u276c\u276d\u276e\u276f\u2770\u2771\u2772\u2773\u2774\u2775\u27c5\u27c6\u27e6\u27e7\u27e8\u27e9\u27ea\u27eb\u2983\u2984\u2985\u2986\u2987\u2988\u2989\u298a\u298b\u298c\u298d\u298e\u298f\u2990\u2991\u2992\u2993\u2994\u2995\u2996\u2997\u2998\u29d8\u29d9\u29da\u29db\u29fc\u29fd\u3008\u3009\u300a\u300b\u300c\u300d\u300e\u300f\u3010\u3011\u3014\u3015\u3016\u3017\u3018\u3019\u301a\u301b\u301d\u301e\ufd3e\ufd3f\ufe17\ufe18\ufe35\ufe36\ufe37\ufe38\ufe39\ufe3a\ufe3b\ufe3c\ufe3d\ufe3e\ufe3f\ufe40\ufe41\ufe42\ufe43\ufe44\ufe47\ufe48\ufe59\ufe5a\ufe5b\ufe5c\ufe5d\ufe5e\uff08\uff09\uff3b\uff3d\uff5b\uff5d\uff5f\uff60\uff62\uff63"
    store_lex "$brackets", $P103
.annotate 'line', 10
    find_lex $P103, "GLOBALish"
    get_who $P104, $P103
    set $P105, $P104["Regex"]
    unless_null $P105, vivify_295
    new $P105, "Undef"
  vivify_295:
    get_who $P106, $P105
    set $P107, $P106["Cursor"]
    unless_null $P107, vivify_296
    new $P107, "Undef"
  vivify_296:
    store_lex "$cursor_class", $P107
.annotate 'line', 849
    .const 'Sub' $P1308 = "118_1315150096.049" 
    newclosure $P1316, $P1308
.annotate 'line', 7
    .return ($P1316)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "ws"  :subid("12_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1013_tgt
    .local int rx1013_pos
    .local int rx1013_off
    .local int rx1013_eos
    .local int rx1013_rep
    .local pmc rx1013_cur
    .local pmc rx1013_debug
    (rx1013_cur, rx1013_pos, rx1013_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1013_cur
    .local pmc match
    .lex "$/", match
    length rx1013_eos, rx1013_tgt
    gt rx1013_pos, rx1013_eos, rx1013_done
    set rx1013_off, 0
    lt rx1013_pos, 2, rx1013_start
    sub rx1013_off, rx1013_pos, 1
    substr rx1013_tgt, rx1013_tgt, rx1013_off
  rx1013_start:
    eq $I10, 1, rx1013_restart
    if_null rx1013_debug, debug_297
    rx1013_cur."!cursor_debug"("START", "ws")
  debug_297:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1014_done
    goto rxscan1014_scan
  rxscan1014_loop:
    (rx1013_pos) = rx1013_cur."from"()
    inc rx1013_pos
    rx1013_cur."!cursor_from"(rx1013_pos)
    ge rx1013_pos, rx1013_eos, rxscan1014_done
  rxscan1014_scan:
    set_addr $I10, rxscan1014_loop
    rx1013_cur."!mark_push"(0, rx1013_pos, $I10)
  rxscan1014_done:
.annotate 'line', 12
  # rx subrule "ww" subtype=zerowidth negate=1
    rx1013_cur."!cursor_pos"(rx1013_pos)
    $P10 = rx1013_cur."ww"()
    if $P10, rx1013_fail
  # rx rxquantr1015 ** 0..*
    set_addr $I10, rxquantr1015_done
    rx1013_cur."!mark_push"(0, rx1013_pos, $I10)
  rxquantr1015_loop:
  alt1016_0:
    set_addr $I10, alt1016_1
    rx1013_cur."!mark_push"(0, rx1013_pos, $I10)
  # rx charclass_q s r 1..-1
    sub $I10, rx1013_pos, rx1013_off
    find_not_cclass $I11, .CCLASS_WHITESPACE, rx1013_tgt, $I10, rx1013_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx1013_fail
    add rx1013_pos, rx1013_off, $I11
    goto alt1016_end
  alt1016_1:
  # rx literal  "#"
    add $I11, rx1013_pos, 1
    gt $I11, rx1013_eos, rx1013_fail
    sub $I11, rx1013_pos, rx1013_off
    ord $I11, rx1013_tgt, $I11
    ne $I11, 35, rx1013_fail
    add rx1013_pos, 1
  # rx charclass_q N r 0..-1
    sub $I10, rx1013_pos, rx1013_off
    find_cclass $I11, .CCLASS_NEWLINE, rx1013_tgt, $I10, rx1013_eos
    add rx1013_pos, rx1013_off, $I11
  alt1016_end:
    set_addr $I10, rxquantr1015_done
    (rx1013_rep) = rx1013_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr1015_done
    rx1013_cur."!mark_push"(rx1013_rep, rx1013_pos, $I10)
    goto rxquantr1015_loop
  rxquantr1015_done:
  # rx pass
    rx1013_cur."!cursor_pass"(rx1013_pos, "ws")
    if_null rx1013_debug, debug_298
    rx1013_cur."!cursor_debug"("PASS", "ws", " at pos=", rx1013_pos)
  debug_298:
    .return (rx1013_cur)
  rx1013_restart:
.annotate 'line', 7
    if_null rx1013_debug, debug_299
    rx1013_cur."!cursor_debug"("NEXT", "ws")
  debug_299:
  rx1013_fail:
    (rx1013_rep, rx1013_pos, $I10, $P10) = rx1013_cur."!mark_fail"(0)
    lt rx1013_pos, -1, rx1013_done
    eq rx1013_pos, -1, rx1013_fail
    jump $I10
  rx1013_done:
    rx1013_cur."!cursor_fail"()
    if_null rx1013_debug, debug_300
    rx1013_cur."!cursor_debug"("FAIL", "ws")
  debug_300:
    .return (rx1013_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__ws"  :subid("13_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, ""
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "termish"  :subid("14_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1019_tgt
    .local int rx1019_pos
    .local int rx1019_off
    .local int rx1019_eos
    .local int rx1019_rep
    .local pmc rx1019_cur
    .local pmc rx1019_debug
    (rx1019_cur, rx1019_pos, rx1019_tgt, $I10) = self."!cursor_start"()
    rx1019_cur."!cursor_caparray"("prefixish", "postfixish")
    .lex unicode:"$\x{a2}", rx1019_cur
    .local pmc match
    .lex "$/", match
    length rx1019_eos, rx1019_tgt
    gt rx1019_pos, rx1019_eos, rx1019_done
    set rx1019_off, 0
    lt rx1019_pos, 2, rx1019_start
    sub rx1019_off, rx1019_pos, 1
    substr rx1019_tgt, rx1019_tgt, rx1019_off
  rx1019_start:
    eq $I10, 1, rx1019_restart
    if_null rx1019_debug, debug_301
    rx1019_cur."!cursor_debug"("START", "termish")
  debug_301:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1020_done
    goto rxscan1020_scan
  rxscan1020_loop:
    (rx1019_pos) = rx1019_cur."from"()
    inc rx1019_pos
    rx1019_cur."!cursor_from"(rx1019_pos)
    ge rx1019_pos, rx1019_eos, rxscan1020_done
  rxscan1020_scan:
    set_addr $I10, rxscan1020_loop
    rx1019_cur."!mark_push"(0, rx1019_pos, $I10)
  rxscan1020_done:
.annotate 'line', 15
  # rx rxquantr1021 ** 0..*
    set_addr $I10, rxquantr1021_done
    rx1019_cur."!mark_push"(0, rx1019_pos, $I10)
  rxquantr1021_loop:
  # rx subrule "prefixish" subtype=capture negate=
    rx1019_cur."!cursor_pos"(rx1019_pos)
    $P10 = rx1019_cur."prefixish"()
    unless $P10, rx1019_fail
    goto rxsubrule1022_pass
  rxsubrule1022_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx1019_fail
  rxsubrule1022_pass:
    set_addr $I10, rxsubrule1022_back
    rx1019_cur."!mark_push"(0, rx1019_pos, $I10, $P10)
    $P10."!cursor_names"("prefixish")
    rx1019_pos = $P10."pos"()
    set_addr $I10, rxquantr1021_done
    (rx1019_rep) = rx1019_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr1021_done
    rx1019_cur."!mark_push"(rx1019_rep, rx1019_pos, $I10)
    goto rxquantr1021_loop
  rxquantr1021_done:
.annotate 'line', 16
  # rx subrule "term" subtype=capture negate=
    rx1019_cur."!cursor_pos"(rx1019_pos)
    $P10 = rx1019_cur."term"()
    unless $P10, rx1019_fail
    rx1019_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("term")
    rx1019_pos = $P10."pos"()
.annotate 'line', 17
  # rx rxquantr1023 ** 0..*
    set_addr $I10, rxquantr1023_done
    rx1019_cur."!mark_push"(0, rx1019_pos, $I10)
  rxquantr1023_loop:
  # rx subrule "postfixish" subtype=capture negate=
    rx1019_cur."!cursor_pos"(rx1019_pos)
    $P10 = rx1019_cur."postfixish"()
    unless $P10, rx1019_fail
    goto rxsubrule1024_pass
  rxsubrule1024_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx1019_fail
  rxsubrule1024_pass:
    set_addr $I10, rxsubrule1024_back
    rx1019_cur."!mark_push"(0, rx1019_pos, $I10, $P10)
    $P10."!cursor_names"("postfixish")
    rx1019_pos = $P10."pos"()
    set_addr $I10, rxquantr1023_done
    (rx1019_rep) = rx1019_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr1023_done
    rx1019_cur."!mark_push"(rx1019_rep, rx1019_pos, $I10)
    goto rxquantr1023_loop
  rxquantr1023_done:
.annotate 'line', 14
  # rx pass
    rx1019_cur."!cursor_pass"(rx1019_pos, "termish")
    if_null rx1019_debug, debug_302
    rx1019_cur."!cursor_debug"("PASS", "termish", " at pos=", rx1019_pos)
  debug_302:
    .return (rx1019_cur)
  rx1019_restart:
.annotate 'line', 7
    if_null rx1019_debug, debug_303
    rx1019_cur."!cursor_debug"("NEXT", "termish")
  debug_303:
  rx1019_fail:
    (rx1019_rep, rx1019_pos, $I10, $P10) = rx1019_cur."!mark_fail"(0)
    lt rx1019_pos, -1, rx1019_done
    eq rx1019_pos, -1, rx1019_fail
    jump $I10
  rx1019_done:
    rx1019_cur."!cursor_fail"()
    if_null rx1019_debug, debug_304
    rx1019_cur."!cursor_debug"("FAIL", "termish")
  debug_304:
    .return (rx1019_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__termish"  :subid("15_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, ""
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "term"  :subid("16_1315150096.049")
    .param pmc param_1027
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 20
    .lex "self", param_1027
    $P103 = param_1027."!protoregex"("term")
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__term"  :subid("17_1315150096.049")
    .param pmc param_1029
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 20
    .lex "self", param_1029
    $P104 = param_1029."!PREFIX__!protoregex"("term")
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "infix"  :subid("18_1315150096.049")
    .param pmc param_1031
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 21
    .lex "self", param_1031
    $P103 = param_1031."!protoregex"("infix")
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__infix"  :subid("19_1315150096.049")
    .param pmc param_1033
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 21
    .lex "self", param_1033
    $P104 = param_1033."!PREFIX__!protoregex"("infix")
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "prefix"  :subid("20_1315150096.049")
    .param pmc param_1035
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 22
    .lex "self", param_1035
    $P103 = param_1035."!protoregex"("prefix")
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__prefix"  :subid("21_1315150096.049")
    .param pmc param_1037
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 22
    .lex "self", param_1037
    $P104 = param_1037."!PREFIX__!protoregex"("prefix")
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postfix"  :subid("22_1315150096.049")
    .param pmc param_1039
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 23
    .lex "self", param_1039
    $P103 = param_1039."!protoregex"("postfix")
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postfix"  :subid("23_1315150096.049")
    .param pmc param_1041
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 23
    .lex "self", param_1041
    $P104 = param_1041."!PREFIX__!protoregex"("postfix")
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "circumfix"  :subid("24_1315150096.049")
    .param pmc param_1043
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 24
    .lex "self", param_1043
    $P103 = param_1043."!protoregex"("circumfix")
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__circumfix"  :subid("25_1315150096.049")
    .param pmc param_1045
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 24
    .lex "self", param_1045
    $P104 = param_1045."!PREFIX__!protoregex"("circumfix")
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postcircumfix"  :subid("26_1315150096.049")
    .param pmc param_1047
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 25
    .lex "self", param_1047
    $P103 = param_1047."!protoregex"("postcircumfix")
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postcircumfix"  :subid("27_1315150096.049")
    .param pmc param_1049
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 25
    .lex "self", param_1049
    $P104 = param_1049."!PREFIX__!protoregex"("postcircumfix")
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "term:sym<circumfix>"  :subid("28_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1051_tgt
    .local int rx1051_pos
    .local int rx1051_off
    .local int rx1051_eos
    .local int rx1051_rep
    .local pmc rx1051_cur
    .local pmc rx1051_debug
    (rx1051_cur, rx1051_pos, rx1051_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1051_cur
    .local pmc match
    .lex "$/", match
    length rx1051_eos, rx1051_tgt
    gt rx1051_pos, rx1051_eos, rx1051_done
    set rx1051_off, 0
    lt rx1051_pos, 2, rx1051_start
    sub rx1051_off, rx1051_pos, 1
    substr rx1051_tgt, rx1051_tgt, rx1051_off
  rx1051_start:
    eq $I10, 1, rx1051_restart
    if_null rx1051_debug, debug_305
    rx1051_cur."!cursor_debug"("START", "term:sym<circumfix>")
  debug_305:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1052_done
    goto rxscan1052_scan
  rxscan1052_loop:
    (rx1051_pos) = rx1051_cur."from"()
    inc rx1051_pos
    rx1051_cur."!cursor_from"(rx1051_pos)
    ge rx1051_pos, rx1051_eos, rxscan1052_done
  rxscan1052_scan:
    set_addr $I10, rxscan1052_loop
    rx1051_cur."!mark_push"(0, rx1051_pos, $I10)
  rxscan1052_done:
.annotate 'line', 27
  # rx subrule "circumfix" subtype=capture negate=
    rx1051_cur."!cursor_pos"(rx1051_pos)
    $P10 = rx1051_cur."circumfix"()
    unless $P10, rx1051_fail
    rx1051_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("circumfix")
    rx1051_pos = $P10."pos"()
  # rx pass
    rx1051_cur."!cursor_pass"(rx1051_pos, "term:sym<circumfix>")
    if_null rx1051_debug, debug_306
    rx1051_cur."!cursor_debug"("PASS", "term:sym<circumfix>", " at pos=", rx1051_pos)
  debug_306:
    .return (rx1051_cur)
  rx1051_restart:
.annotate 'line', 7
    if_null rx1051_debug, debug_307
    rx1051_cur."!cursor_debug"("NEXT", "term:sym<circumfix>")
  debug_307:
  rx1051_fail:
    (rx1051_rep, rx1051_pos, $I10, $P10) = rx1051_cur."!mark_fail"(0)
    lt rx1051_pos, -1, rx1051_done
    eq rx1051_pos, -1, rx1051_fail
    jump $I10
  rx1051_done:
    rx1051_cur."!cursor_fail"()
    if_null rx1051_debug, debug_308
    rx1051_cur."!cursor_debug"("FAIL", "term:sym<circumfix>")
  debug_308:
    .return (rx1051_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__term:sym<circumfix>"  :subid("29_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    $P103 = self."!PREFIX__!subrule"("circumfix", "")
    new $P104, "ResizablePMCArray"
    push $P104, $P103
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "infixish"  :subid("30_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1055_tgt
    .local int rx1055_pos
    .local int rx1055_off
    .local int rx1055_eos
    .local int rx1055_rep
    .local pmc rx1055_cur
    .local pmc rx1055_debug
    (rx1055_cur, rx1055_pos, rx1055_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1055_cur
    .local pmc match
    .lex "$/", match
    length rx1055_eos, rx1055_tgt
    gt rx1055_pos, rx1055_eos, rx1055_done
    set rx1055_off, 0
    lt rx1055_pos, 2, rx1055_start
    sub rx1055_off, rx1055_pos, 1
    substr rx1055_tgt, rx1055_tgt, rx1055_off
  rx1055_start:
    eq $I10, 1, rx1055_restart
    if_null rx1055_debug, debug_309
    rx1055_cur."!cursor_debug"("START", "infixish")
  debug_309:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1056_done
    goto rxscan1056_scan
  rxscan1056_loop:
    (rx1055_pos) = rx1055_cur."from"()
    inc rx1055_pos
    rx1055_cur."!cursor_from"(rx1055_pos)
    ge rx1055_pos, rx1055_eos, rxscan1056_done
  rxscan1056_scan:
    set_addr $I10, rxscan1056_loop
    rx1055_cur."!mark_push"(0, rx1055_pos, $I10)
  rxscan1056_done:
.annotate 'line', 29
  # rx subrule "infix" subtype=capture negate=
    rx1055_cur."!cursor_pos"(rx1055_pos)
    $P10 = rx1055_cur."infix"()
    unless $P10, rx1055_fail
    rx1055_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=infix")
    rx1055_pos = $P10."pos"()
  # rx pass
    rx1055_cur."!cursor_pass"(rx1055_pos, "infixish")
    if_null rx1055_debug, debug_310
    rx1055_cur."!cursor_debug"("PASS", "infixish", " at pos=", rx1055_pos)
  debug_310:
    .return (rx1055_cur)
  rx1055_restart:
.annotate 'line', 7
    if_null rx1055_debug, debug_311
    rx1055_cur."!cursor_debug"("NEXT", "infixish")
  debug_311:
  rx1055_fail:
    (rx1055_rep, rx1055_pos, $I10, $P10) = rx1055_cur."!mark_fail"(0)
    lt rx1055_pos, -1, rx1055_done
    eq rx1055_pos, -1, rx1055_fail
    jump $I10
  rx1055_done:
    rx1055_cur."!cursor_fail"()
    if_null rx1055_debug, debug_312
    rx1055_cur."!cursor_debug"("FAIL", "infixish")
  debug_312:
    .return (rx1055_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__infixish"  :subid("31_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    $P103 = self."!PREFIX__!subrule"("infix", "")
    new $P104, "ResizablePMCArray"
    push $P104, $P103
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "prefixish"  :subid("32_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1059_tgt
    .local int rx1059_pos
    .local int rx1059_off
    .local int rx1059_eos
    .local int rx1059_rep
    .local pmc rx1059_cur
    .local pmc rx1059_debug
    (rx1059_cur, rx1059_pos, rx1059_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1059_cur
    .local pmc match
    .lex "$/", match
    length rx1059_eos, rx1059_tgt
    gt rx1059_pos, rx1059_eos, rx1059_done
    set rx1059_off, 0
    lt rx1059_pos, 2, rx1059_start
    sub rx1059_off, rx1059_pos, 1
    substr rx1059_tgt, rx1059_tgt, rx1059_off
  rx1059_start:
    eq $I10, 1, rx1059_restart
    if_null rx1059_debug, debug_313
    rx1059_cur."!cursor_debug"("START", "prefixish")
  debug_313:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1060_done
    goto rxscan1060_scan
  rxscan1060_loop:
    (rx1059_pos) = rx1059_cur."from"()
    inc rx1059_pos
    rx1059_cur."!cursor_from"(rx1059_pos)
    ge rx1059_pos, rx1059_eos, rxscan1060_done
  rxscan1060_scan:
    set_addr $I10, rxscan1060_loop
    rx1059_cur."!mark_push"(0, rx1059_pos, $I10)
  rxscan1060_done:
.annotate 'line', 30
  # rx subrule "prefix" subtype=capture negate=
    rx1059_cur."!cursor_pos"(rx1059_pos)
    $P10 = rx1059_cur."prefix"()
    unless $P10, rx1059_fail
    rx1059_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=prefix")
    rx1059_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx1059_cur."!cursor_pos"(rx1059_pos)
    $P10 = rx1059_cur."ws"()
    unless $P10, rx1059_fail
    rx1059_pos = $P10."pos"()
  # rx pass
    rx1059_cur."!cursor_pass"(rx1059_pos, "prefixish")
    if_null rx1059_debug, debug_314
    rx1059_cur."!cursor_debug"("PASS", "prefixish", " at pos=", rx1059_pos)
  debug_314:
    .return (rx1059_cur)
  rx1059_restart:
.annotate 'line', 7
    if_null rx1059_debug, debug_315
    rx1059_cur."!cursor_debug"("NEXT", "prefixish")
  debug_315:
  rx1059_fail:
    (rx1059_rep, rx1059_pos, $I10, $P10) = rx1059_cur."!mark_fail"(0)
    lt rx1059_pos, -1, rx1059_done
    eq rx1059_pos, -1, rx1059_fail
    jump $I10
  rx1059_done:
    rx1059_cur."!cursor_fail"()
    if_null rx1059_debug, debug_316
    rx1059_cur."!cursor_debug"("FAIL", "prefixish")
  debug_316:
    .return (rx1059_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__prefixish"  :subid("33_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    $P103 = self."!PREFIX__!subrule"("prefix", "")
    new $P104, "ResizablePMCArray"
    push $P104, $P103
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postfixish"  :subid("34_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1063_tgt
    .local int rx1063_pos
    .local int rx1063_off
    .local int rx1063_eos
    .local int rx1063_rep
    .local pmc rx1063_cur
    .local pmc rx1063_debug
    (rx1063_cur, rx1063_pos, rx1063_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1063_cur
    .local pmc match
    .lex "$/", match
    length rx1063_eos, rx1063_tgt
    gt rx1063_pos, rx1063_eos, rx1063_done
    set rx1063_off, 0
    lt rx1063_pos, 2, rx1063_start
    sub rx1063_off, rx1063_pos, 1
    substr rx1063_tgt, rx1063_tgt, rx1063_off
  rx1063_start:
    eq $I10, 1, rx1063_restart
    if_null rx1063_debug, debug_317
    rx1063_cur."!cursor_debug"("START", "postfixish")
  debug_317:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1064_done
    goto rxscan1064_scan
  rxscan1064_loop:
    (rx1063_pos) = rx1063_cur."from"()
    inc rx1063_pos
    rx1063_cur."!cursor_from"(rx1063_pos)
    ge rx1063_pos, rx1063_eos, rxscan1064_done
  rxscan1064_scan:
    set_addr $I10, rxscan1064_loop
    rx1063_cur."!mark_push"(0, rx1063_pos, $I10)
  rxscan1064_done:
  alt1065_0:
.annotate 'line', 31
    set_addr $I10, alt1065_1
    rx1063_cur."!mark_push"(0, rx1063_pos, $I10)
.annotate 'line', 32
  # rx subrule "postfix" subtype=capture negate=
    rx1063_cur."!cursor_pos"(rx1063_pos)
    $P10 = rx1063_cur."postfix"()
    unless $P10, rx1063_fail
    rx1063_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=postfix")
    rx1063_pos = $P10."pos"()
    goto alt1065_end
  alt1065_1:
.annotate 'line', 33
  # rx subrule "postcircumfix" subtype=capture negate=
    rx1063_cur."!cursor_pos"(rx1063_pos)
    $P10 = rx1063_cur."postcircumfix"()
    unless $P10, rx1063_fail
    rx1063_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("OPER=postcircumfix")
    rx1063_pos = $P10."pos"()
  alt1065_end:
.annotate 'line', 31
  # rx pass
    rx1063_cur."!cursor_pass"(rx1063_pos, "postfixish")
    if_null rx1063_debug, debug_318
    rx1063_cur."!cursor_debug"("PASS", "postfixish", " at pos=", rx1063_pos)
  debug_318:
    .return (rx1063_cur)
  rx1063_restart:
.annotate 'line', 7
    if_null rx1063_debug, debug_319
    rx1063_cur."!cursor_debug"("NEXT", "postfixish")
  debug_319:
  rx1063_fail:
    (rx1063_rep, rx1063_pos, $I10, $P10) = rx1063_cur."!mark_fail"(0)
    lt rx1063_pos, -1, rx1063_done
    eq rx1063_pos, -1, rx1063_fail
    jump $I10
  rx1063_done:
    rx1063_cur."!cursor_fail"()
    if_null rx1063_debug, debug_320
    rx1063_cur."!cursor_debug"("FAIL", "postfixish")
  debug_320:
    .return (rx1063_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postfixish"  :subid("35_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    $P103 = self."!PREFIX__!subrule"("postcircumfix", "")
    $P104 = self."!PREFIX__!subrule"("postfix", "")
    new $P105, "ResizablePMCArray"
    push $P105, $P103
    push $P105, $P104
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "nullterm"  :subid("36_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1068_tgt
    .local int rx1068_pos
    .local int rx1068_off
    .local int rx1068_eos
    .local int rx1068_rep
    .local pmc rx1068_cur
    .local pmc rx1068_debug
    (rx1068_cur, rx1068_pos, rx1068_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1068_cur
    .local pmc match
    .lex "$/", match
    length rx1068_eos, rx1068_tgt
    gt rx1068_pos, rx1068_eos, rx1068_done
    set rx1068_off, 0
    lt rx1068_pos, 2, rx1068_start
    sub rx1068_off, rx1068_pos, 1
    substr rx1068_tgt, rx1068_tgt, rx1068_off
  rx1068_start:
    eq $I10, 1, rx1068_restart
    if_null rx1068_debug, debug_321
    rx1068_cur."!cursor_debug"("START", "nullterm")
  debug_321:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1069_done
    goto rxscan1069_scan
  rxscan1069_loop:
    (rx1068_pos) = rx1068_cur."from"()
    inc rx1068_pos
    rx1068_cur."!cursor_from"(rx1068_pos)
    ge rx1068_pos, rx1068_eos, rxscan1069_done
  rxscan1069_scan:
    set_addr $I10, rxscan1069_loop
    rx1068_cur."!mark_push"(0, rx1068_pos, $I10)
  rxscan1069_done:
.annotate 'line', 36
  # rx pass
    rx1068_cur."!cursor_pass"(rx1068_pos, "nullterm")
    if_null rx1068_debug, debug_322
    rx1068_cur."!cursor_debug"("PASS", "nullterm", " at pos=", rx1068_pos)
  debug_322:
    .return (rx1068_cur)
  rx1068_restart:
.annotate 'line', 7
    if_null rx1068_debug, debug_323
    rx1068_cur."!cursor_debug"("NEXT", "nullterm")
  debug_323:
  rx1068_fail:
    (rx1068_rep, rx1068_pos, $I10, $P10) = rx1068_cur."!mark_fail"(0)
    lt rx1068_pos, -1, rx1068_done
    eq rx1068_pos, -1, rx1068_fail
    jump $I10
  rx1068_done:
    rx1068_cur."!cursor_fail"()
    if_null rx1068_debug, debug_324
    rx1068_cur."!cursor_debug"("FAIL", "nullterm")
  debug_324:
    .return (rx1068_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__nullterm"  :subid("37_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, ""
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "nullterm_alt"  :subid("38_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1072_tgt
    .local int rx1072_pos
    .local int rx1072_off
    .local int rx1072_eos
    .local int rx1072_rep
    .local pmc rx1072_cur
    .local pmc rx1072_debug
    (rx1072_cur, rx1072_pos, rx1072_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1072_cur
    .local pmc match
    .lex "$/", match
    length rx1072_eos, rx1072_tgt
    gt rx1072_pos, rx1072_eos, rx1072_done
    set rx1072_off, 0
    lt rx1072_pos, 2, rx1072_start
    sub rx1072_off, rx1072_pos, 1
    substr rx1072_tgt, rx1072_tgt, rx1072_off
  rx1072_start:
    eq $I10, 1, rx1072_restart
    if_null rx1072_debug, debug_325
    rx1072_cur."!cursor_debug"("START", "nullterm_alt")
  debug_325:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1073_done
    goto rxscan1073_scan
  rxscan1073_loop:
    (rx1072_pos) = rx1072_cur."from"()
    inc rx1072_pos
    rx1072_cur."!cursor_from"(rx1072_pos)
    ge rx1072_pos, rx1072_eos, rxscan1073_done
  rxscan1073_scan:
    set_addr $I10, rxscan1073_loop
    rx1072_cur."!mark_push"(0, rx1072_pos, $I10)
  rxscan1073_done:
.annotate 'line', 37
  # rx subrule "nullterm" subtype=capture negate=
    rx1072_cur."!cursor_pos"(rx1072_pos)
    $P10 = rx1072_cur."nullterm"()
    unless $P10, rx1072_fail
    rx1072_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("term")
    rx1072_pos = $P10."pos"()
  # rx pass
    rx1072_cur."!cursor_pass"(rx1072_pos, "nullterm_alt")
    if_null rx1072_debug, debug_326
    rx1072_cur."!cursor_debug"("PASS", "nullterm_alt", " at pos=", rx1072_pos)
  debug_326:
    .return (rx1072_cur)
  rx1072_restart:
.annotate 'line', 7
    if_null rx1072_debug, debug_327
    rx1072_cur."!cursor_debug"("NEXT", "nullterm_alt")
  debug_327:
  rx1072_fail:
    (rx1072_rep, rx1072_pos, $I10, $P10) = rx1072_cur."!mark_fail"(0)
    lt rx1072_pos, -1, rx1072_done
    eq rx1072_pos, -1, rx1072_fail
    jump $I10
  rx1072_done:
    rx1072_cur."!cursor_fail"()
    if_null rx1072_debug, debug_328
    rx1072_cur."!cursor_debug"("FAIL", "nullterm_alt")
  debug_328:
    .return (rx1072_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__nullterm_alt"  :subid("39_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    $P103 = self."!PREFIX__!subrule"("nullterm", "")
    new $P104, "ResizablePMCArray"
    push $P104, $P103
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "nulltermish" :anon :subid("40_1315150096.049") :outer("11_1315150096.049")
    .param pmc param_1076
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 40
    .lex "self", param_1076
    find_lex $P104, "self"
    $P105 = $P104."termish"()
    unless $P105, unless_1077
    set $P103, $P105
    goto unless_1077_end
  unless_1077:
    find_lex $P106, "self"
    $P107 = $P106."nullterm_alt"()
    set $P103, $P107
  unless_1077_end:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_delimited"  :subid("41_1315150096.049") :method :outer("11_1315150096.049")
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
    rx1079_cur."!cursor_caparray"("quote_atom")
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
    if_null rx1079_debug, debug_329
    rx1079_cur."!cursor_debug"("START", "quote_delimited")
  debug_329:
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
.annotate 'line', 44
  # rx subrule "starter" subtype=capture negate=
    rx1079_cur."!cursor_pos"(rx1079_pos)
    $P10 = rx1079_cur."starter"()
    unless $P10, rx1079_fail
    rx1079_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("starter")
    rx1079_pos = $P10."pos"()
  # rx rxquantr1081 ** 0..*
    set_addr $I10, rxquantr1081_done
    rx1079_cur."!mark_push"(0, rx1079_pos, $I10)
  rxquantr1081_loop:
  # rx subrule "quote_atom" subtype=capture negate=
    rx1079_cur."!cursor_pos"(rx1079_pos)
    $P10 = rx1079_cur."quote_atom"()
    unless $P10, rx1079_fail
    goto rxsubrule1082_pass
  rxsubrule1082_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx1079_fail
  rxsubrule1082_pass:
    set_addr $I10, rxsubrule1082_back
    rx1079_cur."!mark_push"(0, rx1079_pos, $I10, $P10)
    $P10."!cursor_names"("quote_atom")
    rx1079_pos = $P10."pos"()
    set_addr $I10, rxquantr1081_done
    (rx1079_rep) = rx1079_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr1081_done
    rx1079_cur."!mark_push"(rx1079_rep, rx1079_pos, $I10)
    goto rxquantr1081_loop
  rxquantr1081_done:
  # rx subrule "stopper" subtype=capture negate=
    rx1079_cur."!cursor_pos"(rx1079_pos)
    $P10 = rx1079_cur."stopper"()
    unless $P10, rx1079_fail
    rx1079_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("stopper")
    rx1079_pos = $P10."pos"()
.annotate 'line', 43
  # rx pass
    rx1079_cur."!cursor_pass"(rx1079_pos, "quote_delimited")
    if_null rx1079_debug, debug_330
    rx1079_cur."!cursor_debug"("PASS", "quote_delimited", " at pos=", rx1079_pos)
  debug_330:
    .return (rx1079_cur)
  rx1079_restart:
.annotate 'line', 7
    if_null rx1079_debug, debug_331
    rx1079_cur."!cursor_debug"("NEXT", "quote_delimited")
  debug_331:
  rx1079_fail:
    (rx1079_rep, rx1079_pos, $I10, $P10) = rx1079_cur."!mark_fail"(0)
    lt rx1079_pos, -1, rx1079_done
    eq rx1079_pos, -1, rx1079_fail
    jump $I10
  rx1079_done:
    rx1079_cur."!cursor_fail"()
    if_null rx1079_debug, debug_332
    rx1079_cur."!cursor_debug"("FAIL", "quote_delimited")
  debug_332:
    .return (rx1079_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_delimited"  :subid("42_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    $P103 = self."!PREFIX__!subrule"("starter", "")
    new $P104, "ResizablePMCArray"
    push $P104, $P103
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_atom"  :subid("43_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1085_tgt
    .local int rx1085_pos
    .local int rx1085_off
    .local int rx1085_eos
    .local int rx1085_rep
    .local pmc rx1085_cur
    .local pmc rx1085_debug
    (rx1085_cur, rx1085_pos, rx1085_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1085_cur
    .local pmc match
    .lex "$/", match
    length rx1085_eos, rx1085_tgt
    gt rx1085_pos, rx1085_eos, rx1085_done
    set rx1085_off, 0
    lt rx1085_pos, 2, rx1085_start
    sub rx1085_off, rx1085_pos, 1
    substr rx1085_tgt, rx1085_tgt, rx1085_off
  rx1085_start:
    eq $I10, 1, rx1085_restart
    if_null rx1085_debug, debug_333
    rx1085_cur."!cursor_debug"("START", "quote_atom")
  debug_333:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1086_done
    goto rxscan1086_scan
  rxscan1086_loop:
    (rx1085_pos) = rx1085_cur."from"()
    inc rx1085_pos
    rx1085_cur."!cursor_from"(rx1085_pos)
    ge rx1085_pos, rx1085_eos, rxscan1086_done
  rxscan1086_scan:
    set_addr $I10, rxscan1086_loop
    rx1085_cur."!mark_push"(0, rx1085_pos, $I10)
  rxscan1086_done:
.annotate 'line', 48
  # rx subrule "stopper" subtype=zerowidth negate=1
    rx1085_cur."!cursor_pos"(rx1085_pos)
    $P10 = rx1085_cur."stopper"()
    if $P10, rx1085_fail
  alt1087_0:
.annotate 'line', 49
    set_addr $I10, alt1087_1
    rx1085_cur."!mark_push"(0, rx1085_pos, $I10)
.annotate 'line', 50
  # rx subrule "quote_escape" subtype=capture negate=
    rx1085_cur."!cursor_pos"(rx1085_pos)
    $P10 = rx1085_cur."quote_escape"()
    unless $P10, rx1085_fail
    rx1085_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("quote_escape")
    rx1085_pos = $P10."pos"()
    goto alt1087_end
  alt1087_1:
.annotate 'line', 51
  # rx rxquantr1088 ** 1..*
    set_addr $I10, rxquantr1088_done
    rx1085_cur."!mark_push"(0, -1, $I10)
  rxquantr1088_loop:
  # rx subrule "stopper" subtype=zerowidth negate=1
    rx1085_cur."!cursor_pos"(rx1085_pos)
    $P10 = rx1085_cur."stopper"()
    if $P10, rx1085_fail
  # rx subrule "quote_escape" subtype=zerowidth negate=1
    rx1085_cur."!cursor_pos"(rx1085_pos)
    $P10 = rx1085_cur."quote_escape"()
    if $P10, rx1085_fail
  # rx charclass .
    ge rx1085_pos, rx1085_eos, rx1085_fail
    inc rx1085_pos
    set_addr $I10, rxquantr1088_done
    (rx1085_rep) = rx1085_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr1088_done
    rx1085_cur."!mark_push"(rx1085_rep, rx1085_pos, $I10)
    goto rxquantr1088_loop
  rxquantr1088_done:
  alt1087_end:
.annotate 'line', 47
  # rx pass
    rx1085_cur."!cursor_pass"(rx1085_pos, "quote_atom")
    if_null rx1085_debug, debug_334
    rx1085_cur."!cursor_debug"("PASS", "quote_atom", " at pos=", rx1085_pos)
  debug_334:
    .return (rx1085_cur)
  rx1085_restart:
.annotate 'line', 7
    if_null rx1085_debug, debug_335
    rx1085_cur."!cursor_debug"("NEXT", "quote_atom")
  debug_335:
  rx1085_fail:
    (rx1085_rep, rx1085_pos, $I10, $P10) = rx1085_cur."!mark_fail"(0)
    lt rx1085_pos, -1, rx1085_done
    eq rx1085_pos, -1, rx1085_fail
    jump $I10
  rx1085_done:
    rx1085_cur."!cursor_fail"()
    if_null rx1085_debug, debug_336
    rx1085_cur."!cursor_debug"("FAIL", "quote_atom")
  debug_336:
    .return (rx1085_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_atom"  :subid("44_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    new $P105, "ResizablePMCArray"
    push $P105, ""
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "decint"  :subid("45_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1091_tgt
    .local int rx1091_pos
    .local int rx1091_off
    .local int rx1091_eos
    .local int rx1091_rep
    .local pmc rx1091_cur
    .local pmc rx1091_debug
    (rx1091_cur, rx1091_pos, rx1091_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1091_cur
    .local pmc match
    .lex "$/", match
    length rx1091_eos, rx1091_tgt
    gt rx1091_pos, rx1091_eos, rx1091_done
    set rx1091_off, 0
    lt rx1091_pos, 2, rx1091_start
    sub rx1091_off, rx1091_pos, 1
    substr rx1091_tgt, rx1091_tgt, rx1091_off
  rx1091_start:
    eq $I10, 1, rx1091_restart
    if_null rx1091_debug, debug_337
    rx1091_cur."!cursor_debug"("START", "decint")
  debug_337:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1092_done
    goto rxscan1092_scan
  rxscan1092_loop:
    (rx1091_pos) = rx1091_cur."from"()
    inc rx1091_pos
    rx1091_cur."!cursor_from"(rx1091_pos)
    ge rx1091_pos, rx1091_eos, rxscan1092_done
  rxscan1092_scan:
    set_addr $I10, rxscan1092_loop
    rx1091_cur."!mark_push"(0, rx1091_pos, $I10)
  rxscan1092_done:
.annotate 'line', 55
  # rx rxquantr1093 ** 1..*
    set_addr $I10, rxquantr1093_done
    rx1091_cur."!mark_push"(0, -1, $I10)
  rxquantr1093_loop:
  # rx charclass_q d r 1..-1
    sub $I10, rx1091_pos, rx1091_off
    find_not_cclass $I11, .CCLASS_NUMERIC, rx1091_tgt, $I10, rx1091_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx1091_fail
    add rx1091_pos, rx1091_off, $I11
    set_addr $I10, rxquantr1093_done
    (rx1091_rep) = rx1091_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr1093_done
    rx1091_cur."!mark_push"(rx1091_rep, rx1091_pos, $I10)
  # rx literal  "_"
    add $I11, rx1091_pos, 1
    gt $I11, rx1091_eos, rx1091_fail
    sub $I11, rx1091_pos, rx1091_off
    ord $I11, rx1091_tgt, $I11
    ne $I11, 95, rx1091_fail
    add rx1091_pos, 1
    goto rxquantr1093_loop
  rxquantr1093_done:
  # rx pass
    rx1091_cur."!cursor_pass"(rx1091_pos, "decint")
    if_null rx1091_debug, debug_338
    rx1091_cur."!cursor_debug"("PASS", "decint", " at pos=", rx1091_pos)
  debug_338:
    .return (rx1091_cur)
  rx1091_restart:
.annotate 'line', 7
    if_null rx1091_debug, debug_339
    rx1091_cur."!cursor_debug"("NEXT", "decint")
  debug_339:
  rx1091_fail:
    (rx1091_rep, rx1091_pos, $I10, $P10) = rx1091_cur."!mark_fail"(0)
    lt rx1091_pos, -1, rx1091_done
    eq rx1091_pos, -1, rx1091_fail
    jump $I10
  rx1091_done:
    rx1091_cur."!cursor_fail"()
    if_null rx1091_debug, debug_340
    rx1091_cur."!cursor_debug"("FAIL", "decint")
  debug_340:
    .return (rx1091_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__decint"  :subid("46_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, ""
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "decints"  :subid("47_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1096_tgt
    .local int rx1096_pos
    .local int rx1096_off
    .local int rx1096_eos
    .local int rx1096_rep
    .local pmc rx1096_cur
    .local pmc rx1096_debug
    (rx1096_cur, rx1096_pos, rx1096_tgt, $I10) = self."!cursor_start"()
    rx1096_cur."!cursor_caparray"("decint")
    .lex unicode:"$\x{a2}", rx1096_cur
    .local pmc match
    .lex "$/", match
    length rx1096_eos, rx1096_tgt
    gt rx1096_pos, rx1096_eos, rx1096_done
    set rx1096_off, 0
    lt rx1096_pos, 2, rx1096_start
    sub rx1096_off, rx1096_pos, 1
    substr rx1096_tgt, rx1096_tgt, rx1096_off
  rx1096_start:
    eq $I10, 1, rx1096_restart
    if_null rx1096_debug, debug_341
    rx1096_cur."!cursor_debug"("START", "decints")
  debug_341:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1097_done
    goto rxscan1097_scan
  rxscan1097_loop:
    (rx1096_pos) = rx1096_cur."from"()
    inc rx1096_pos
    rx1096_cur."!cursor_from"(rx1096_pos)
    ge rx1096_pos, rx1096_eos, rxscan1097_done
  rxscan1097_scan:
    set_addr $I10, rxscan1097_loop
    rx1096_cur."!mark_push"(0, rx1096_pos, $I10)
  rxscan1097_done:
.annotate 'line', 56
  # rx rxquantr1098 ** 1..*
    set_addr $I10, rxquantr1098_done
    rx1096_cur."!mark_push"(0, -1, $I10)
  rxquantr1098_loop:
  # rx subrule "ws" subtype=method negate=
    rx1096_cur."!cursor_pos"(rx1096_pos)
    $P10 = rx1096_cur."ws"()
    unless $P10, rx1096_fail
    rx1096_pos = $P10."pos"()
  # rx subrule "decint" subtype=capture negate=
    rx1096_cur."!cursor_pos"(rx1096_pos)
    $P10 = rx1096_cur."decint"()
    unless $P10, rx1096_fail
    rx1096_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("decint")
    rx1096_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx1096_cur."!cursor_pos"(rx1096_pos)
    $P10 = rx1096_cur."ws"()
    unless $P10, rx1096_fail
    rx1096_pos = $P10."pos"()
    set_addr $I10, rxquantr1098_done
    (rx1096_rep) = rx1096_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr1098_done
    rx1096_cur."!mark_push"(rx1096_rep, rx1096_pos, $I10)
  # rx literal  ","
    add $I11, rx1096_pos, 1
    gt $I11, rx1096_eos, rx1096_fail
    sub $I11, rx1096_pos, rx1096_off
    ord $I11, rx1096_tgt, $I11
    ne $I11, 44, rx1096_fail
    add rx1096_pos, 1
    goto rxquantr1098_loop
  rxquantr1098_done:
  # rx pass
    rx1096_cur."!cursor_pass"(rx1096_pos, "decints")
    if_null rx1096_debug, debug_342
    rx1096_cur."!cursor_debug"("PASS", "decints", " at pos=", rx1096_pos)
  debug_342:
    .return (rx1096_cur)
  rx1096_restart:
.annotate 'line', 7
    if_null rx1096_debug, debug_343
    rx1096_cur."!cursor_debug"("NEXT", "decints")
  debug_343:
  rx1096_fail:
    (rx1096_rep, rx1096_pos, $I10, $P10) = rx1096_cur."!mark_fail"(0)
    lt rx1096_pos, -1, rx1096_done
    eq rx1096_pos, -1, rx1096_fail
    jump $I10
  rx1096_done:
    rx1096_cur."!cursor_fail"()
    if_null rx1096_debug, debug_344
    rx1096_cur."!cursor_debug"("FAIL", "decints")
  debug_344:
    .return (rx1096_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__decints"  :subid("48_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, ""
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "hexint"  :subid("49_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1101_tgt
    .local int rx1101_pos
    .local int rx1101_off
    .local int rx1101_eos
    .local int rx1101_rep
    .local pmc rx1101_cur
    .local pmc rx1101_debug
    (rx1101_cur, rx1101_pos, rx1101_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1101_cur
    .local pmc match
    .lex "$/", match
    length rx1101_eos, rx1101_tgt
    gt rx1101_pos, rx1101_eos, rx1101_done
    set rx1101_off, 0
    lt rx1101_pos, 2, rx1101_start
    sub rx1101_off, rx1101_pos, 1
    substr rx1101_tgt, rx1101_tgt, rx1101_off
  rx1101_start:
    eq $I10, 1, rx1101_restart
    if_null rx1101_debug, debug_345
    rx1101_cur."!cursor_debug"("START", "hexint")
  debug_345:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1102_done
    goto rxscan1102_scan
  rxscan1102_loop:
    (rx1101_pos) = rx1101_cur."from"()
    inc rx1101_pos
    rx1101_cur."!cursor_from"(rx1101_pos)
    ge rx1101_pos, rx1101_eos, rxscan1102_done
  rxscan1102_scan:
    set_addr $I10, rxscan1102_loop
    rx1101_cur."!mark_push"(0, rx1101_pos, $I10)
  rxscan1102_done:
.annotate 'line', 58
  # rx rxquantr1103 ** 1..*
    set_addr $I10, rxquantr1103_done
    rx1101_cur."!mark_push"(0, -1, $I10)
  rxquantr1103_loop:
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx1101_pos, rx1101_off
    set rx1101_rep, 0
    sub $I12, rx1101_eos, rx1101_pos
  rxenumcharlistq1104_loop:
    le $I12, 0, rxenumcharlistq1104_done
    substr $S10, rx1101_tgt, $I10, 1
    index $I11, "0123456789abcdefABCDEF", $S10
    lt $I11, 0, rxenumcharlistq1104_done
    inc rx1101_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq1104_loop
  rxenumcharlistq1104_done:
    lt rx1101_rep, 1, rx1101_fail
    add rx1101_pos, rx1101_pos, rx1101_rep
    set_addr $I10, rxquantr1103_done
    (rx1101_rep) = rx1101_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr1103_done
    rx1101_cur."!mark_push"(rx1101_rep, rx1101_pos, $I10)
  # rx literal  "_"
    add $I11, rx1101_pos, 1
    gt $I11, rx1101_eos, rx1101_fail
    sub $I11, rx1101_pos, rx1101_off
    ord $I11, rx1101_tgt, $I11
    ne $I11, 95, rx1101_fail
    add rx1101_pos, 1
    goto rxquantr1103_loop
  rxquantr1103_done:
  # rx pass
    rx1101_cur."!cursor_pass"(rx1101_pos, "hexint")
    if_null rx1101_debug, debug_346
    rx1101_cur."!cursor_debug"("PASS", "hexint", " at pos=", rx1101_pos)
  debug_346:
    .return (rx1101_cur)
  rx1101_restart:
.annotate 'line', 7
    if_null rx1101_debug, debug_347
    rx1101_cur."!cursor_debug"("NEXT", "hexint")
  debug_347:
  rx1101_fail:
    (rx1101_rep, rx1101_pos, $I10, $P10) = rx1101_cur."!mark_fail"(0)
    lt rx1101_pos, -1, rx1101_done
    eq rx1101_pos, -1, rx1101_fail
    jump $I10
  rx1101_done:
    rx1101_cur."!cursor_fail"()
    if_null rx1101_debug, debug_348
    rx1101_cur."!cursor_debug"("FAIL", "hexint")
  debug_348:
    .return (rx1101_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__hexint"  :subid("50_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, ""
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "hexints"  :subid("51_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1107_tgt
    .local int rx1107_pos
    .local int rx1107_off
    .local int rx1107_eos
    .local int rx1107_rep
    .local pmc rx1107_cur
    .local pmc rx1107_debug
    (rx1107_cur, rx1107_pos, rx1107_tgt, $I10) = self."!cursor_start"()
    rx1107_cur."!cursor_caparray"("hexint")
    .lex unicode:"$\x{a2}", rx1107_cur
    .local pmc match
    .lex "$/", match
    length rx1107_eos, rx1107_tgt
    gt rx1107_pos, rx1107_eos, rx1107_done
    set rx1107_off, 0
    lt rx1107_pos, 2, rx1107_start
    sub rx1107_off, rx1107_pos, 1
    substr rx1107_tgt, rx1107_tgt, rx1107_off
  rx1107_start:
    eq $I10, 1, rx1107_restart
    if_null rx1107_debug, debug_349
    rx1107_cur."!cursor_debug"("START", "hexints")
  debug_349:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1108_done
    goto rxscan1108_scan
  rxscan1108_loop:
    (rx1107_pos) = rx1107_cur."from"()
    inc rx1107_pos
    rx1107_cur."!cursor_from"(rx1107_pos)
    ge rx1107_pos, rx1107_eos, rxscan1108_done
  rxscan1108_scan:
    set_addr $I10, rxscan1108_loop
    rx1107_cur."!mark_push"(0, rx1107_pos, $I10)
  rxscan1108_done:
.annotate 'line', 59
  # rx rxquantr1109 ** 1..*
    set_addr $I10, rxquantr1109_done
    rx1107_cur."!mark_push"(0, -1, $I10)
  rxquantr1109_loop:
  # rx subrule "ws" subtype=method negate=
    rx1107_cur."!cursor_pos"(rx1107_pos)
    $P10 = rx1107_cur."ws"()
    unless $P10, rx1107_fail
    rx1107_pos = $P10."pos"()
  # rx subrule "hexint" subtype=capture negate=
    rx1107_cur."!cursor_pos"(rx1107_pos)
    $P10 = rx1107_cur."hexint"()
    unless $P10, rx1107_fail
    rx1107_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexint")
    rx1107_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx1107_cur."!cursor_pos"(rx1107_pos)
    $P10 = rx1107_cur."ws"()
    unless $P10, rx1107_fail
    rx1107_pos = $P10."pos"()
    set_addr $I10, rxquantr1109_done
    (rx1107_rep) = rx1107_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr1109_done
    rx1107_cur."!mark_push"(rx1107_rep, rx1107_pos, $I10)
  # rx literal  ","
    add $I11, rx1107_pos, 1
    gt $I11, rx1107_eos, rx1107_fail
    sub $I11, rx1107_pos, rx1107_off
    ord $I11, rx1107_tgt, $I11
    ne $I11, 44, rx1107_fail
    add rx1107_pos, 1
    goto rxquantr1109_loop
  rxquantr1109_done:
  # rx pass
    rx1107_cur."!cursor_pass"(rx1107_pos, "hexints")
    if_null rx1107_debug, debug_350
    rx1107_cur."!cursor_debug"("PASS", "hexints", " at pos=", rx1107_pos)
  debug_350:
    .return (rx1107_cur)
  rx1107_restart:
.annotate 'line', 7
    if_null rx1107_debug, debug_351
    rx1107_cur."!cursor_debug"("NEXT", "hexints")
  debug_351:
  rx1107_fail:
    (rx1107_rep, rx1107_pos, $I10, $P10) = rx1107_cur."!mark_fail"(0)
    lt rx1107_pos, -1, rx1107_done
    eq rx1107_pos, -1, rx1107_fail
    jump $I10
  rx1107_done:
    rx1107_cur."!cursor_fail"()
    if_null rx1107_debug, debug_352
    rx1107_cur."!cursor_debug"("FAIL", "hexints")
  debug_352:
    .return (rx1107_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__hexints"  :subid("52_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, ""
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "octint"  :subid("53_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1112_tgt
    .local int rx1112_pos
    .local int rx1112_off
    .local int rx1112_eos
    .local int rx1112_rep
    .local pmc rx1112_cur
    .local pmc rx1112_debug
    (rx1112_cur, rx1112_pos, rx1112_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1112_cur
    .local pmc match
    .lex "$/", match
    length rx1112_eos, rx1112_tgt
    gt rx1112_pos, rx1112_eos, rx1112_done
    set rx1112_off, 0
    lt rx1112_pos, 2, rx1112_start
    sub rx1112_off, rx1112_pos, 1
    substr rx1112_tgt, rx1112_tgt, rx1112_off
  rx1112_start:
    eq $I10, 1, rx1112_restart
    if_null rx1112_debug, debug_353
    rx1112_cur."!cursor_debug"("START", "octint")
  debug_353:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1113_done
    goto rxscan1113_scan
  rxscan1113_loop:
    (rx1112_pos) = rx1112_cur."from"()
    inc rx1112_pos
    rx1112_cur."!cursor_from"(rx1112_pos)
    ge rx1112_pos, rx1112_eos, rxscan1113_done
  rxscan1113_scan:
    set_addr $I10, rxscan1113_loop
    rx1112_cur."!mark_push"(0, rx1112_pos, $I10)
  rxscan1113_done:
.annotate 'line', 61
  # rx rxquantr1114 ** 1..*
    set_addr $I10, rxquantr1114_done
    rx1112_cur."!mark_push"(0, -1, $I10)
  rxquantr1114_loop:
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx1112_pos, rx1112_off
    set rx1112_rep, 0
    sub $I12, rx1112_eos, rx1112_pos
  rxenumcharlistq1115_loop:
    le $I12, 0, rxenumcharlistq1115_done
    substr $S10, rx1112_tgt, $I10, 1
    index $I11, "01234567", $S10
    lt $I11, 0, rxenumcharlistq1115_done
    inc rx1112_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq1115_loop
  rxenumcharlistq1115_done:
    lt rx1112_rep, 1, rx1112_fail
    add rx1112_pos, rx1112_pos, rx1112_rep
    set_addr $I10, rxquantr1114_done
    (rx1112_rep) = rx1112_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr1114_done
    rx1112_cur."!mark_push"(rx1112_rep, rx1112_pos, $I10)
  # rx literal  "_"
    add $I11, rx1112_pos, 1
    gt $I11, rx1112_eos, rx1112_fail
    sub $I11, rx1112_pos, rx1112_off
    ord $I11, rx1112_tgt, $I11
    ne $I11, 95, rx1112_fail
    add rx1112_pos, 1
    goto rxquantr1114_loop
  rxquantr1114_done:
  # rx pass
    rx1112_cur."!cursor_pass"(rx1112_pos, "octint")
    if_null rx1112_debug, debug_354
    rx1112_cur."!cursor_debug"("PASS", "octint", " at pos=", rx1112_pos)
  debug_354:
    .return (rx1112_cur)
  rx1112_restart:
.annotate 'line', 7
    if_null rx1112_debug, debug_355
    rx1112_cur."!cursor_debug"("NEXT", "octint")
  debug_355:
  rx1112_fail:
    (rx1112_rep, rx1112_pos, $I10, $P10) = rx1112_cur."!mark_fail"(0)
    lt rx1112_pos, -1, rx1112_done
    eq rx1112_pos, -1, rx1112_fail
    jump $I10
  rx1112_done:
    rx1112_cur."!cursor_fail"()
    if_null rx1112_debug, debug_356
    rx1112_cur."!cursor_debug"("FAIL", "octint")
  debug_356:
    .return (rx1112_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__octint"  :subid("54_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, ""
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "octints"  :subid("55_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1118_tgt
    .local int rx1118_pos
    .local int rx1118_off
    .local int rx1118_eos
    .local int rx1118_rep
    .local pmc rx1118_cur
    .local pmc rx1118_debug
    (rx1118_cur, rx1118_pos, rx1118_tgt, $I10) = self."!cursor_start"()
    rx1118_cur."!cursor_caparray"("octint")
    .lex unicode:"$\x{a2}", rx1118_cur
    .local pmc match
    .lex "$/", match
    length rx1118_eos, rx1118_tgt
    gt rx1118_pos, rx1118_eos, rx1118_done
    set rx1118_off, 0
    lt rx1118_pos, 2, rx1118_start
    sub rx1118_off, rx1118_pos, 1
    substr rx1118_tgt, rx1118_tgt, rx1118_off
  rx1118_start:
    eq $I10, 1, rx1118_restart
    if_null rx1118_debug, debug_357
    rx1118_cur."!cursor_debug"("START", "octints")
  debug_357:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1119_done
    goto rxscan1119_scan
  rxscan1119_loop:
    (rx1118_pos) = rx1118_cur."from"()
    inc rx1118_pos
    rx1118_cur."!cursor_from"(rx1118_pos)
    ge rx1118_pos, rx1118_eos, rxscan1119_done
  rxscan1119_scan:
    set_addr $I10, rxscan1119_loop
    rx1118_cur."!mark_push"(0, rx1118_pos, $I10)
  rxscan1119_done:
.annotate 'line', 62
  # rx rxquantr1120 ** 1..*
    set_addr $I10, rxquantr1120_done
    rx1118_cur."!mark_push"(0, -1, $I10)
  rxquantr1120_loop:
  # rx subrule "ws" subtype=method negate=
    rx1118_cur."!cursor_pos"(rx1118_pos)
    $P10 = rx1118_cur."ws"()
    unless $P10, rx1118_fail
    rx1118_pos = $P10."pos"()
  # rx subrule "octint" subtype=capture negate=
    rx1118_cur."!cursor_pos"(rx1118_pos)
    $P10 = rx1118_cur."octint"()
    unless $P10, rx1118_fail
    rx1118_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octint")
    rx1118_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx1118_cur."!cursor_pos"(rx1118_pos)
    $P10 = rx1118_cur."ws"()
    unless $P10, rx1118_fail
    rx1118_pos = $P10."pos"()
    set_addr $I10, rxquantr1120_done
    (rx1118_rep) = rx1118_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr1120_done
    rx1118_cur."!mark_push"(rx1118_rep, rx1118_pos, $I10)
  # rx literal  ","
    add $I11, rx1118_pos, 1
    gt $I11, rx1118_eos, rx1118_fail
    sub $I11, rx1118_pos, rx1118_off
    ord $I11, rx1118_tgt, $I11
    ne $I11, 44, rx1118_fail
    add rx1118_pos, 1
    goto rxquantr1120_loop
  rxquantr1120_done:
  # rx pass
    rx1118_cur."!cursor_pass"(rx1118_pos, "octints")
    if_null rx1118_debug, debug_358
    rx1118_cur."!cursor_debug"("PASS", "octints", " at pos=", rx1118_pos)
  debug_358:
    .return (rx1118_cur)
  rx1118_restart:
.annotate 'line', 7
    if_null rx1118_debug, debug_359
    rx1118_cur."!cursor_debug"("NEXT", "octints")
  debug_359:
  rx1118_fail:
    (rx1118_rep, rx1118_pos, $I10, $P10) = rx1118_cur."!mark_fail"(0)
    lt rx1118_pos, -1, rx1118_done
    eq rx1118_pos, -1, rx1118_fail
    jump $I10
  rx1118_done:
    rx1118_cur."!cursor_fail"()
    if_null rx1118_debug, debug_360
    rx1118_cur."!cursor_debug"("FAIL", "octints")
  debug_360:
    .return (rx1118_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__octints"  :subid("56_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, ""
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "binint"  :subid("57_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1123_tgt
    .local int rx1123_pos
    .local int rx1123_off
    .local int rx1123_eos
    .local int rx1123_rep
    .local pmc rx1123_cur
    .local pmc rx1123_debug
    (rx1123_cur, rx1123_pos, rx1123_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1123_cur
    .local pmc match
    .lex "$/", match
    length rx1123_eos, rx1123_tgt
    gt rx1123_pos, rx1123_eos, rx1123_done
    set rx1123_off, 0
    lt rx1123_pos, 2, rx1123_start
    sub rx1123_off, rx1123_pos, 1
    substr rx1123_tgt, rx1123_tgt, rx1123_off
  rx1123_start:
    eq $I10, 1, rx1123_restart
    if_null rx1123_debug, debug_361
    rx1123_cur."!cursor_debug"("START", "binint")
  debug_361:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1124_done
    goto rxscan1124_scan
  rxscan1124_loop:
    (rx1123_pos) = rx1123_cur."from"()
    inc rx1123_pos
    rx1123_cur."!cursor_from"(rx1123_pos)
    ge rx1123_pos, rx1123_eos, rxscan1124_done
  rxscan1124_scan:
    set_addr $I10, rxscan1124_loop
    rx1123_cur."!mark_push"(0, rx1123_pos, $I10)
  rxscan1124_done:
.annotate 'line', 64
  # rx rxquantr1125 ** 1..*
    set_addr $I10, rxquantr1125_done
    rx1123_cur."!mark_push"(0, -1, $I10)
  rxquantr1125_loop:
  # rx enumcharlist_q negate=0  r 1..-1
    sub $I10, rx1123_pos, rx1123_off
    set rx1123_rep, 0
    sub $I12, rx1123_eos, rx1123_pos
  rxenumcharlistq1126_loop:
    le $I12, 0, rxenumcharlistq1126_done
    substr $S10, rx1123_tgt, $I10, 1
    index $I11, "01", $S10
    lt $I11, 0, rxenumcharlistq1126_done
    inc rx1123_rep
    inc $I10
    dec $I12
    goto rxenumcharlistq1126_loop
  rxenumcharlistq1126_done:
    lt rx1123_rep, 1, rx1123_fail
    add rx1123_pos, rx1123_pos, rx1123_rep
    set_addr $I10, rxquantr1125_done
    (rx1123_rep) = rx1123_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr1125_done
    rx1123_cur."!mark_push"(rx1123_rep, rx1123_pos, $I10)
  # rx literal  "_"
    add $I11, rx1123_pos, 1
    gt $I11, rx1123_eos, rx1123_fail
    sub $I11, rx1123_pos, rx1123_off
    ord $I11, rx1123_tgt, $I11
    ne $I11, 95, rx1123_fail
    add rx1123_pos, 1
    goto rxquantr1125_loop
  rxquantr1125_done:
  # rx pass
    rx1123_cur."!cursor_pass"(rx1123_pos, "binint")
    if_null rx1123_debug, debug_362
    rx1123_cur."!cursor_debug"("PASS", "binint", " at pos=", rx1123_pos)
  debug_362:
    .return (rx1123_cur)
  rx1123_restart:
.annotate 'line', 7
    if_null rx1123_debug, debug_363
    rx1123_cur."!cursor_debug"("NEXT", "binint")
  debug_363:
  rx1123_fail:
    (rx1123_rep, rx1123_pos, $I10, $P10) = rx1123_cur."!mark_fail"(0)
    lt rx1123_pos, -1, rx1123_done
    eq rx1123_pos, -1, rx1123_fail
    jump $I10
  rx1123_done:
    rx1123_cur."!cursor_fail"()
    if_null rx1123_debug, debug_364
    rx1123_cur."!cursor_debug"("FAIL", "binint")
  debug_364:
    .return (rx1123_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__binint"  :subid("58_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, ""
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "binints"  :subid("59_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1129_tgt
    .local int rx1129_pos
    .local int rx1129_off
    .local int rx1129_eos
    .local int rx1129_rep
    .local pmc rx1129_cur
    .local pmc rx1129_debug
    (rx1129_cur, rx1129_pos, rx1129_tgt, $I10) = self."!cursor_start"()
    rx1129_cur."!cursor_caparray"("binint")
    .lex unicode:"$\x{a2}", rx1129_cur
    .local pmc match
    .lex "$/", match
    length rx1129_eos, rx1129_tgt
    gt rx1129_pos, rx1129_eos, rx1129_done
    set rx1129_off, 0
    lt rx1129_pos, 2, rx1129_start
    sub rx1129_off, rx1129_pos, 1
    substr rx1129_tgt, rx1129_tgt, rx1129_off
  rx1129_start:
    eq $I10, 1, rx1129_restart
    if_null rx1129_debug, debug_365
    rx1129_cur."!cursor_debug"("START", "binints")
  debug_365:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1130_done
    goto rxscan1130_scan
  rxscan1130_loop:
    (rx1129_pos) = rx1129_cur."from"()
    inc rx1129_pos
    rx1129_cur."!cursor_from"(rx1129_pos)
    ge rx1129_pos, rx1129_eos, rxscan1130_done
  rxscan1130_scan:
    set_addr $I10, rxscan1130_loop
    rx1129_cur."!mark_push"(0, rx1129_pos, $I10)
  rxscan1130_done:
.annotate 'line', 65
  # rx rxquantr1131 ** 1..*
    set_addr $I10, rxquantr1131_done
    rx1129_cur."!mark_push"(0, -1, $I10)
  rxquantr1131_loop:
  # rx subrule "ws" subtype=method negate=
    rx1129_cur."!cursor_pos"(rx1129_pos)
    $P10 = rx1129_cur."ws"()
    unless $P10, rx1129_fail
    rx1129_pos = $P10."pos"()
  # rx subrule "binint" subtype=capture negate=
    rx1129_cur."!cursor_pos"(rx1129_pos)
    $P10 = rx1129_cur."binint"()
    unless $P10, rx1129_fail
    rx1129_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("binint")
    rx1129_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx1129_cur."!cursor_pos"(rx1129_pos)
    $P10 = rx1129_cur."ws"()
    unless $P10, rx1129_fail
    rx1129_pos = $P10."pos"()
    set_addr $I10, rxquantr1131_done
    (rx1129_rep) = rx1129_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr1131_done
    rx1129_cur."!mark_push"(rx1129_rep, rx1129_pos, $I10)
  # rx literal  ","
    add $I11, rx1129_pos, 1
    gt $I11, rx1129_eos, rx1129_fail
    sub $I11, rx1129_pos, rx1129_off
    ord $I11, rx1129_tgt, $I11
    ne $I11, 44, rx1129_fail
    add rx1129_pos, 1
    goto rxquantr1131_loop
  rxquantr1131_done:
  # rx pass
    rx1129_cur."!cursor_pass"(rx1129_pos, "binints")
    if_null rx1129_debug, debug_366
    rx1129_cur."!cursor_debug"("PASS", "binints", " at pos=", rx1129_pos)
  debug_366:
    .return (rx1129_cur)
  rx1129_restart:
.annotate 'line', 7
    if_null rx1129_debug, debug_367
    rx1129_cur."!cursor_debug"("NEXT", "binints")
  debug_367:
  rx1129_fail:
    (rx1129_rep, rx1129_pos, $I10, $P10) = rx1129_cur."!mark_fail"(0)
    lt rx1129_pos, -1, rx1129_done
    eq rx1129_pos, -1, rx1129_fail
    jump $I10
  rx1129_done:
    rx1129_cur."!cursor_fail"()
    if_null rx1129_debug, debug_368
    rx1129_cur."!cursor_debug"("FAIL", "binints")
  debug_368:
    .return (rx1129_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__binints"  :subid("60_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, ""
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "integer"  :subid("61_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1134_tgt
    .local int rx1134_pos
    .local int rx1134_off
    .local int rx1134_eos
    .local int rx1134_rep
    .local pmc rx1134_cur
    .local pmc rx1134_debug
    (rx1134_cur, rx1134_pos, rx1134_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1134_cur
    .local pmc match
    .lex "$/", match
    length rx1134_eos, rx1134_tgt
    gt rx1134_pos, rx1134_eos, rx1134_done
    set rx1134_off, 0
    lt rx1134_pos, 2, rx1134_start
    sub rx1134_off, rx1134_pos, 1
    substr rx1134_tgt, rx1134_tgt, rx1134_off
  rx1134_start:
    eq $I10, 1, rx1134_restart
    if_null rx1134_debug, debug_369
    rx1134_cur."!cursor_debug"("START", "integer")
  debug_369:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1135_done
    goto rxscan1135_scan
  rxscan1135_loop:
    (rx1134_pos) = rx1134_cur."from"()
    inc rx1134_pos
    rx1134_cur."!cursor_from"(rx1134_pos)
    ge rx1134_pos, rx1134_eos, rxscan1135_done
  rxscan1135_scan:
    set_addr $I10, rxscan1135_loop
    rx1134_cur."!mark_push"(0, rx1134_pos, $I10)
  rxscan1135_done:
  alt1136_0:
.annotate 'line', 68
    set_addr $I10, alt1136_1
    rx1134_cur."!mark_push"(0, rx1134_pos, $I10)
.annotate 'line', 69
  # rx literal  "0"
    add $I11, rx1134_pos, 1
    gt $I11, rx1134_eos, rx1134_fail
    sub $I11, rx1134_pos, rx1134_off
    ord $I11, rx1134_tgt, $I11
    ne $I11, 48, rx1134_fail
    add rx1134_pos, 1
  alt1137_0:
    set_addr $I10, alt1137_1
    rx1134_cur."!mark_push"(0, rx1134_pos, $I10)
  # rx literal  "b"
    add $I11, rx1134_pos, 1
    gt $I11, rx1134_eos, rx1134_fail
    sub $I11, rx1134_pos, rx1134_off
    ord $I11, rx1134_tgt, $I11
    ne $I11, 98, rx1134_fail
    add rx1134_pos, 1
  # rx subrule "binint" subtype=capture negate=
    rx1134_cur."!cursor_pos"(rx1134_pos)
    $P10 = rx1134_cur."binint"()
    unless $P10, rx1134_fail
    rx1134_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=binint")
    rx1134_pos = $P10."pos"()
    goto alt1137_end
  alt1137_1:
    set_addr $I10, alt1137_2
    rx1134_cur."!mark_push"(0, rx1134_pos, $I10)
.annotate 'line', 70
  # rx literal  "o"
    add $I11, rx1134_pos, 1
    gt $I11, rx1134_eos, rx1134_fail
    sub $I11, rx1134_pos, rx1134_off
    ord $I11, rx1134_tgt, $I11
    ne $I11, 111, rx1134_fail
    add rx1134_pos, 1
  # rx subrule "octint" subtype=capture negate=
    rx1134_cur."!cursor_pos"(rx1134_pos)
    $P10 = rx1134_cur."octint"()
    unless $P10, rx1134_fail
    rx1134_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=octint")
    rx1134_pos = $P10."pos"()
    goto alt1137_end
  alt1137_2:
    set_addr $I10, alt1137_3
    rx1134_cur."!mark_push"(0, rx1134_pos, $I10)
.annotate 'line', 71
  # rx literal  "x"
    add $I11, rx1134_pos, 1
    gt $I11, rx1134_eos, rx1134_fail
    sub $I11, rx1134_pos, rx1134_off
    ord $I11, rx1134_tgt, $I11
    ne $I11, 120, rx1134_fail
    add rx1134_pos, 1
  # rx subrule "hexint" subtype=capture negate=
    rx1134_cur."!cursor_pos"(rx1134_pos)
    $P10 = rx1134_cur."hexint"()
    unless $P10, rx1134_fail
    rx1134_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=hexint")
    rx1134_pos = $P10."pos"()
    goto alt1137_end
  alt1137_3:
.annotate 'line', 72
  # rx literal  "d"
    add $I11, rx1134_pos, 1
    gt $I11, rx1134_eos, rx1134_fail
    sub $I11, rx1134_pos, rx1134_off
    ord $I11, rx1134_tgt, $I11
    ne $I11, 100, rx1134_fail
    add rx1134_pos, 1
  # rx subrule "decint" subtype=capture negate=
    rx1134_cur."!cursor_pos"(rx1134_pos)
    $P10 = rx1134_cur."decint"()
    unless $P10, rx1134_fail
    rx1134_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=decint")
    rx1134_pos = $P10."pos"()
  alt1137_end:
.annotate 'line', 69
    goto alt1136_end
  alt1136_1:
.annotate 'line', 74
  # rx subrule "decint" subtype=capture negate=
    rx1134_cur."!cursor_pos"(rx1134_pos)
    $P10 = rx1134_cur."decint"()
    unless $P10, rx1134_fail
    rx1134_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("VALUE=decint")
    rx1134_pos = $P10."pos"()
  alt1136_end:
.annotate 'line', 67
  # rx pass
    rx1134_cur."!cursor_pass"(rx1134_pos, "integer")
    if_null rx1134_debug, debug_370
    rx1134_cur."!cursor_debug"("PASS", "integer", " at pos=", rx1134_pos)
  debug_370:
    .return (rx1134_cur)
  rx1134_restart:
.annotate 'line', 7
    if_null rx1134_debug, debug_371
    rx1134_cur."!cursor_debug"("NEXT", "integer")
  debug_371:
  rx1134_fail:
    (rx1134_rep, rx1134_pos, $I10, $P10) = rx1134_cur."!mark_fail"(0)
    lt rx1134_pos, -1, rx1134_done
    eq rx1134_pos, -1, rx1134_fail
    jump $I10
  rx1134_done:
    rx1134_cur."!cursor_fail"()
    if_null rx1134_debug, debug_372
    rx1134_cur."!cursor_debug"("FAIL", "integer")
  debug_372:
    .return (rx1134_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__integer"  :subid("62_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    $P103 = self."!PREFIX__!subrule"("decint", "")
    $P104 = self."!PREFIX__!subrule"("decint", "0d")
    $P105 = self."!PREFIX__!subrule"("hexint", "0x")
    $P106 = self."!PREFIX__!subrule"("octint", "0o")
    $P107 = self."!PREFIX__!subrule"("binint", "0b")
    new $P108, "ResizablePMCArray"
    push $P108, $P103
    push $P108, $P104
    push $P108, $P105
    push $P108, $P106
    push $P108, $P107
    .return ($P108)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "dec_number"  :subid("63_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1140_tgt
    .local int rx1140_pos
    .local int rx1140_off
    .local int rx1140_eos
    .local int rx1140_rep
    .local pmc rx1140_cur
    .local pmc rx1140_debug
    (rx1140_cur, rx1140_pos, rx1140_tgt, $I10) = self."!cursor_start"()
    rx1140_cur."!cursor_caparray"("escale")
    .lex unicode:"$\x{a2}", rx1140_cur
    .local pmc match
    .lex "$/", match
    length rx1140_eos, rx1140_tgt
    gt rx1140_pos, rx1140_eos, rx1140_done
    set rx1140_off, 0
    lt rx1140_pos, 2, rx1140_start
    sub rx1140_off, rx1140_pos, 1
    substr rx1140_tgt, rx1140_tgt, rx1140_off
  rx1140_start:
    eq $I10, 1, rx1140_restart
    if_null rx1140_debug, debug_373
    rx1140_cur."!cursor_debug"("START", "dec_number")
  debug_373:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1141_done
    goto rxscan1141_scan
  rxscan1141_loop:
    (rx1140_pos) = rx1140_cur."from"()
    inc rx1140_pos
    rx1140_cur."!cursor_from"(rx1140_pos)
    ge rx1140_pos, rx1140_eos, rxscan1141_done
  rxscan1141_scan:
    set_addr $I10, rxscan1141_loop
    rx1140_cur."!mark_push"(0, rx1140_pos, $I10)
  rxscan1141_done:
  alt1142_0:
.annotate 'line', 78
    set_addr $I10, alt1142_1
    rx1140_cur."!mark_push"(0, rx1140_pos, $I10)
.annotate 'line', 79
  # rx subcapture "coeff"
    set_addr $I10, rxcap_1143_fail
    rx1140_cur."!mark_push"(0, rx1140_pos, $I10)
  # rx literal  "."
    add $I11, rx1140_pos, 1
    gt $I11, rx1140_eos, rx1140_fail
    sub $I11, rx1140_pos, rx1140_off
    ord $I11, rx1140_tgt, $I11
    ne $I11, 46, rx1140_fail
    add rx1140_pos, 1
  # rx charclass_q d r 1..-1
    sub $I10, rx1140_pos, rx1140_off
    find_not_cclass $I11, .CCLASS_NUMERIC, rx1140_tgt, $I10, rx1140_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx1140_fail
    add rx1140_pos, rx1140_off, $I11
    set_addr $I10, rxcap_1143_fail
    ($I12, $I11) = rx1140_cur."!mark_peek"($I10)
    rx1140_cur."!cursor_pos"($I11)
    ($P10) = rx1140_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1140_pos, "")
    rx1140_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("coeff")
    goto rxcap_1143_done
  rxcap_1143_fail:
    goto rx1140_fail
  rxcap_1143_done:
  # rx rxquantr1144 ** 0..1
    set_addr $I10, rxquantr1144_done
    rx1140_cur."!mark_push"(0, rx1140_pos, $I10)
  rxquantr1144_loop:
  # rx subrule "escale" subtype=capture negate=
    rx1140_cur."!cursor_pos"(rx1140_pos)
    $P10 = rx1140_cur."escale"()
    unless $P10, rx1140_fail
    goto rxsubrule1145_pass
  rxsubrule1145_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx1140_fail
  rxsubrule1145_pass:
    set_addr $I10, rxsubrule1145_back
    rx1140_cur."!mark_push"(0, rx1140_pos, $I10, $P10)
    $P10."!cursor_names"("escale")
    rx1140_pos = $P10."pos"()
    set_addr $I10, rxquantr1144_done
    (rx1140_rep) = rx1140_cur."!mark_commit"($I10)
  rxquantr1144_done:
    goto alt1142_end
  alt1142_1:
    set_addr $I10, alt1142_2
    rx1140_cur."!mark_push"(0, rx1140_pos, $I10)
.annotate 'line', 80
  # rx subcapture "coeff"
    set_addr $I10, rxcap_1146_fail
    rx1140_cur."!mark_push"(0, rx1140_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx1140_pos, rx1140_off
    find_not_cclass $I11, .CCLASS_NUMERIC, rx1140_tgt, $I10, rx1140_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx1140_fail
    add rx1140_pos, rx1140_off, $I11
  # rx literal  "."
    add $I11, rx1140_pos, 1
    gt $I11, rx1140_eos, rx1140_fail
    sub $I11, rx1140_pos, rx1140_off
    ord $I11, rx1140_tgt, $I11
    ne $I11, 46, rx1140_fail
    add rx1140_pos, 1
  # rx charclass_q d r 1..-1
    sub $I10, rx1140_pos, rx1140_off
    find_not_cclass $I11, .CCLASS_NUMERIC, rx1140_tgt, $I10, rx1140_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx1140_fail
    add rx1140_pos, rx1140_off, $I11
    set_addr $I10, rxcap_1146_fail
    ($I12, $I11) = rx1140_cur."!mark_peek"($I10)
    rx1140_cur."!cursor_pos"($I11)
    ($P10) = rx1140_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1140_pos, "")
    rx1140_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("coeff")
    goto rxcap_1146_done
  rxcap_1146_fail:
    goto rx1140_fail
  rxcap_1146_done:
  # rx rxquantr1147 ** 0..1
    set_addr $I10, rxquantr1147_done
    rx1140_cur."!mark_push"(0, rx1140_pos, $I10)
  rxquantr1147_loop:
  # rx subrule "escale" subtype=capture negate=
    rx1140_cur."!cursor_pos"(rx1140_pos)
    $P10 = rx1140_cur."escale"()
    unless $P10, rx1140_fail
    goto rxsubrule1148_pass
  rxsubrule1148_back:
    $P10 = $P10."!cursor_next"()
    unless $P10, rx1140_fail
  rxsubrule1148_pass:
    set_addr $I10, rxsubrule1148_back
    rx1140_cur."!mark_push"(0, rx1140_pos, $I10, $P10)
    $P10."!cursor_names"("escale")
    rx1140_pos = $P10."pos"()
    set_addr $I10, rxquantr1147_done
    (rx1140_rep) = rx1140_cur."!mark_commit"($I10)
  rxquantr1147_done:
    goto alt1142_end
  alt1142_2:
.annotate 'line', 81
  # rx subcapture "coeff"
    set_addr $I10, rxcap_1149_fail
    rx1140_cur."!mark_push"(0, rx1140_pos, $I10)
  # rx charclass_q d r 1..-1
    sub $I10, rx1140_pos, rx1140_off
    find_not_cclass $I11, .CCLASS_NUMERIC, rx1140_tgt, $I10, rx1140_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx1140_fail
    add rx1140_pos, rx1140_off, $I11
    set_addr $I10, rxcap_1149_fail
    ($I12, $I11) = rx1140_cur."!mark_peek"($I10)
    rx1140_cur."!cursor_pos"($I11)
    ($P10) = rx1140_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1140_pos, "")
    rx1140_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("coeff")
    goto rxcap_1149_done
  rxcap_1149_fail:
    goto rx1140_fail
  rxcap_1149_done:
  # rx subrule "escale" subtype=capture negate=
    rx1140_cur."!cursor_pos"(rx1140_pos)
    $P10 = rx1140_cur."escale"()
    unless $P10, rx1140_fail
    rx1140_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("escale")
    rx1140_pos = $P10."pos"()
  alt1142_end:
.annotate 'line', 78
  # rx pass
    rx1140_cur."!cursor_pass"(rx1140_pos, "dec_number")
    if_null rx1140_debug, debug_374
    rx1140_cur."!cursor_debug"("PASS", "dec_number", " at pos=", rx1140_pos)
  debug_374:
    .return (rx1140_cur)
  rx1140_restart:
.annotate 'line', 7
    if_null rx1140_debug, debug_375
    rx1140_cur."!cursor_debug"("NEXT", "dec_number")
  debug_375:
  rx1140_fail:
    (rx1140_rep, rx1140_pos, $I10, $P10) = rx1140_cur."!mark_fail"(0)
    lt rx1140_pos, -1, rx1140_done
    eq rx1140_pos, -1, rx1140_fail
    jump $I10
  rx1140_done:
    rx1140_cur."!cursor_fail"()
    if_null rx1140_debug, debug_376
    rx1140_cur."!cursor_debug"("FAIL", "dec_number")
  debug_376:
    .return (rx1140_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__dec_number"  :subid("64_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, ""
    push $P103, ""
    push $P103, "."
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "escale"  :subid("65_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1152_tgt
    .local int rx1152_pos
    .local int rx1152_off
    .local int rx1152_eos
    .local int rx1152_rep
    .local pmc rx1152_cur
    .local pmc rx1152_debug
    (rx1152_cur, rx1152_pos, rx1152_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1152_cur
    .local pmc match
    .lex "$/", match
    length rx1152_eos, rx1152_tgt
    gt rx1152_pos, rx1152_eos, rx1152_done
    set rx1152_off, 0
    lt rx1152_pos, 2, rx1152_start
    sub rx1152_off, rx1152_pos, 1
    substr rx1152_tgt, rx1152_tgt, rx1152_off
  rx1152_start:
    eq $I10, 1, rx1152_restart
    if_null rx1152_debug, debug_377
    rx1152_cur."!cursor_debug"("START", "escale")
  debug_377:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1153_done
    goto rxscan1153_scan
  rxscan1153_loop:
    (rx1152_pos) = rx1152_cur."from"()
    inc rx1152_pos
    rx1152_cur."!cursor_from"(rx1152_pos)
    ge rx1152_pos, rx1152_eos, rxscan1153_done
  rxscan1153_scan:
    set_addr $I10, rxscan1153_loop
    rx1152_cur."!mark_push"(0, rx1152_pos, $I10)
  rxscan1153_done:
.annotate 'line', 84
  # rx enumcharlist negate=0 
    ge rx1152_pos, rx1152_eos, rx1152_fail
    sub $I10, rx1152_pos, rx1152_off
    substr $S10, rx1152_tgt, $I10, 1
    index $I11, "Ee", $S10
    lt $I11, 0, rx1152_fail
    inc rx1152_pos
  # rx enumcharlist_q negate=0  r 0..1
    sub $I10, rx1152_pos, rx1152_off
    set rx1152_rep, 0
    sub $I12, rx1152_eos, rx1152_pos
    le $I12, 1, rxenumcharlistq1154_loop
    set $I12, 1
  rxenumcharlistq1154_loop:
    le $I12, 0, rxenumcharlistq1154_done
    substr $S10, rx1152_tgt, $I10, 1
    index $I11, "+-", $S10
    lt $I11, 0, rxenumcharlistq1154_done
    inc rx1152_rep
  rxenumcharlistq1154_done:
    add rx1152_pos, rx1152_pos, rx1152_rep
  # rx charclass_q d r 1..-1
    sub $I10, rx1152_pos, rx1152_off
    find_not_cclass $I11, .CCLASS_NUMERIC, rx1152_tgt, $I10, rx1152_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx1152_fail
    add rx1152_pos, rx1152_off, $I11
  # rx pass
    rx1152_cur."!cursor_pass"(rx1152_pos, "escale")
    if_null rx1152_debug, debug_378
    rx1152_cur."!cursor_debug"("PASS", "escale", " at pos=", rx1152_pos)
  debug_378:
    .return (rx1152_cur)
  rx1152_restart:
.annotate 'line', 7
    if_null rx1152_debug, debug_379
    rx1152_cur."!cursor_debug"("NEXT", "escale")
  debug_379:
  rx1152_fail:
    (rx1152_rep, rx1152_pos, $I10, $P10) = rx1152_cur."!mark_fail"(0)
    lt rx1152_pos, -1, rx1152_done
    eq rx1152_pos, -1, rx1152_fail
    jump $I10
  rx1152_done:
    rx1152_cur."!cursor_fail"()
    if_null rx1152_debug, debug_380
    rx1152_cur."!cursor_debug"("FAIL", "escale")
  debug_380:
    .return (rx1152_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__escale"  :subid("66_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, "e"
    push $P103, "E"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape"  :subid("67_1315150096.049")
    .param pmc param_1157
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 86
    .lex "self", param_1157
    $P103 = param_1157."!protoregex"("quote_escape")
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape"  :subid("68_1315150096.049")
    .param pmc param_1159
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 86
    .lex "self", param_1159
    $P104 = param_1159."!PREFIX__!protoregex"("quote_escape")
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<backslash>"  :subid("69_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1161_tgt
    .local int rx1161_pos
    .local int rx1161_off
    .local int rx1161_eos
    .local int rx1161_rep
    .local pmc rx1161_cur
    .local pmc rx1161_debug
    (rx1161_cur, rx1161_pos, rx1161_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1161_cur
    .local pmc match
    .lex "$/", match
    length rx1161_eos, rx1161_tgt
    gt rx1161_pos, rx1161_eos, rx1161_done
    set rx1161_off, 0
    lt rx1161_pos, 2, rx1161_start
    sub rx1161_off, rx1161_pos, 1
    substr rx1161_tgt, rx1161_tgt, rx1161_off
  rx1161_start:
    eq $I10, 1, rx1161_restart
    if_null rx1161_debug, debug_381
    rx1161_cur."!cursor_debug"("START", "quote_escape:sym<backslash>")
  debug_381:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1162_done
    goto rxscan1162_scan
  rxscan1162_loop:
    (rx1161_pos) = rx1161_cur."from"()
    inc rx1161_pos
    rx1161_cur."!cursor_from"(rx1161_pos)
    ge rx1161_pos, rx1161_eos, rxscan1162_done
  rxscan1162_scan:
    set_addr $I10, rxscan1162_loop
    rx1161_cur."!mark_push"(0, rx1161_pos, $I10)
  rxscan1162_done:
.annotate 'line', 87
  # rx literal  "\\\\"
    add $I11, rx1161_pos, 2
    gt $I11, rx1161_eos, rx1161_fail
    sub $I11, rx1161_pos, rx1161_off
    substr $S10, rx1161_tgt, $I11, 2
    ne $S10, "\\\\", rx1161_fail
    add rx1161_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx1161_cur."!cursor_pos"(rx1161_pos)
    $P10 = rx1161_cur."quotemod_check"("q")
    unless $P10, rx1161_fail
  # rx pass
    rx1161_cur."!cursor_pass"(rx1161_pos, "quote_escape:sym<backslash>")
    if_null rx1161_debug, debug_382
    rx1161_cur."!cursor_debug"("PASS", "quote_escape:sym<backslash>", " at pos=", rx1161_pos)
  debug_382:
    .return (rx1161_cur)
  rx1161_restart:
.annotate 'line', 7
    if_null rx1161_debug, debug_383
    rx1161_cur."!cursor_debug"("NEXT", "quote_escape:sym<backslash>")
  debug_383:
  rx1161_fail:
    (rx1161_rep, rx1161_pos, $I10, $P10) = rx1161_cur."!mark_fail"(0)
    lt rx1161_pos, -1, rx1161_done
    eq rx1161_pos, -1, rx1161_fail
    jump $I10
  rx1161_done:
    rx1161_cur."!cursor_fail"()
    if_null rx1161_debug, debug_384
    rx1161_cur."!cursor_debug"("FAIL", "quote_escape:sym<backslash>")
  debug_384:
    .return (rx1161_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<backslash>"  :subid("70_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, "\\\\"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<stopper>"  :subid("71_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1165_tgt
    .local int rx1165_pos
    .local int rx1165_off
    .local int rx1165_eos
    .local int rx1165_rep
    .local pmc rx1165_cur
    .local pmc rx1165_debug
    (rx1165_cur, rx1165_pos, rx1165_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1165_cur
    .local pmc match
    .lex "$/", match
    length rx1165_eos, rx1165_tgt
    gt rx1165_pos, rx1165_eos, rx1165_done
    set rx1165_off, 0
    lt rx1165_pos, 2, rx1165_start
    sub rx1165_off, rx1165_pos, 1
    substr rx1165_tgt, rx1165_tgt, rx1165_off
  rx1165_start:
    eq $I10, 1, rx1165_restart
    if_null rx1165_debug, debug_385
    rx1165_cur."!cursor_debug"("START", "quote_escape:sym<stopper>")
  debug_385:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1166_done
    goto rxscan1166_scan
  rxscan1166_loop:
    (rx1165_pos) = rx1165_cur."from"()
    inc rx1165_pos
    rx1165_cur."!cursor_from"(rx1165_pos)
    ge rx1165_pos, rx1165_eos, rxscan1166_done
  rxscan1166_scan:
    set_addr $I10, rxscan1166_loop
    rx1165_cur."!mark_push"(0, rx1165_pos, $I10)
  rxscan1166_done:
.annotate 'line', 88
  # rx literal  "\\"
    add $I11, rx1165_pos, 1
    gt $I11, rx1165_eos, rx1165_fail
    sub $I11, rx1165_pos, rx1165_off
    ord $I11, rx1165_tgt, $I11
    ne $I11, 92, rx1165_fail
    add rx1165_pos, 1
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx1165_cur."!cursor_pos"(rx1165_pos)
    $P10 = rx1165_cur."quotemod_check"("q")
    unless $P10, rx1165_fail
  # rx subrule "stopper" subtype=capture negate=
    rx1165_cur."!cursor_pos"(rx1165_pos)
    $P10 = rx1165_cur."stopper"()
    unless $P10, rx1165_fail
    rx1165_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("stopper")
    rx1165_pos = $P10."pos"()
  # rx pass
    rx1165_cur."!cursor_pass"(rx1165_pos, "quote_escape:sym<stopper>")
    if_null rx1165_debug, debug_386
    rx1165_cur."!cursor_debug"("PASS", "quote_escape:sym<stopper>", " at pos=", rx1165_pos)
  debug_386:
    .return (rx1165_cur)
  rx1165_restart:
.annotate 'line', 7
    if_null rx1165_debug, debug_387
    rx1165_cur."!cursor_debug"("NEXT", "quote_escape:sym<stopper>")
  debug_387:
  rx1165_fail:
    (rx1165_rep, rx1165_pos, $I10, $P10) = rx1165_cur."!mark_fail"(0)
    lt rx1165_pos, -1, rx1165_done
    eq rx1165_pos, -1, rx1165_fail
    jump $I10
  rx1165_done:
    rx1165_cur."!cursor_fail"()
    if_null rx1165_debug, debug_388
    rx1165_cur."!cursor_debug"("FAIL", "quote_escape:sym<stopper>")
  debug_388:
    .return (rx1165_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<stopper>"  :subid("72_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, "\\"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<bs>"  :subid("73_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1169_tgt
    .local int rx1169_pos
    .local int rx1169_off
    .local int rx1169_eos
    .local int rx1169_rep
    .local pmc rx1169_cur
    .local pmc rx1169_debug
    (rx1169_cur, rx1169_pos, rx1169_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1169_cur
    .local pmc match
    .lex "$/", match
    length rx1169_eos, rx1169_tgt
    gt rx1169_pos, rx1169_eos, rx1169_done
    set rx1169_off, 0
    lt rx1169_pos, 2, rx1169_start
    sub rx1169_off, rx1169_pos, 1
    substr rx1169_tgt, rx1169_tgt, rx1169_off
  rx1169_start:
    eq $I10, 1, rx1169_restart
    if_null rx1169_debug, debug_389
    rx1169_cur."!cursor_debug"("START", "quote_escape:sym<bs>")
  debug_389:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1170_done
    goto rxscan1170_scan
  rxscan1170_loop:
    (rx1169_pos) = rx1169_cur."from"()
    inc rx1169_pos
    rx1169_cur."!cursor_from"(rx1169_pos)
    ge rx1169_pos, rx1169_eos, rxscan1170_done
  rxscan1170_scan:
    set_addr $I10, rxscan1170_loop
    rx1169_cur."!mark_push"(0, rx1169_pos, $I10)
  rxscan1170_done:
.annotate 'line', 90
  # rx literal  "\\b"
    add $I11, rx1169_pos, 2
    gt $I11, rx1169_eos, rx1169_fail
    sub $I11, rx1169_pos, rx1169_off
    substr $S10, rx1169_tgt, $I11, 2
    ne $S10, "\\b", rx1169_fail
    add rx1169_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx1169_cur."!cursor_pos"(rx1169_pos)
    $P10 = rx1169_cur."quotemod_check"("b")
    unless $P10, rx1169_fail
  # rx pass
    rx1169_cur."!cursor_pass"(rx1169_pos, "quote_escape:sym<bs>")
    if_null rx1169_debug, debug_390
    rx1169_cur."!cursor_debug"("PASS", "quote_escape:sym<bs>", " at pos=", rx1169_pos)
  debug_390:
    .return (rx1169_cur)
  rx1169_restart:
.annotate 'line', 7
    if_null rx1169_debug, debug_391
    rx1169_cur."!cursor_debug"("NEXT", "quote_escape:sym<bs>")
  debug_391:
  rx1169_fail:
    (rx1169_rep, rx1169_pos, $I10, $P10) = rx1169_cur."!mark_fail"(0)
    lt rx1169_pos, -1, rx1169_done
    eq rx1169_pos, -1, rx1169_fail
    jump $I10
  rx1169_done:
    rx1169_cur."!cursor_fail"()
    if_null rx1169_debug, debug_392
    rx1169_cur."!cursor_debug"("FAIL", "quote_escape:sym<bs>")
  debug_392:
    .return (rx1169_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<bs>"  :subid("74_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, "\\b"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<nl>"  :subid("75_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1173_tgt
    .local int rx1173_pos
    .local int rx1173_off
    .local int rx1173_eos
    .local int rx1173_rep
    .local pmc rx1173_cur
    .local pmc rx1173_debug
    (rx1173_cur, rx1173_pos, rx1173_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1173_cur
    .local pmc match
    .lex "$/", match
    length rx1173_eos, rx1173_tgt
    gt rx1173_pos, rx1173_eos, rx1173_done
    set rx1173_off, 0
    lt rx1173_pos, 2, rx1173_start
    sub rx1173_off, rx1173_pos, 1
    substr rx1173_tgt, rx1173_tgt, rx1173_off
  rx1173_start:
    eq $I10, 1, rx1173_restart
    if_null rx1173_debug, debug_393
    rx1173_cur."!cursor_debug"("START", "quote_escape:sym<nl>")
  debug_393:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1174_done
    goto rxscan1174_scan
  rxscan1174_loop:
    (rx1173_pos) = rx1173_cur."from"()
    inc rx1173_pos
    rx1173_cur."!cursor_from"(rx1173_pos)
    ge rx1173_pos, rx1173_eos, rxscan1174_done
  rxscan1174_scan:
    set_addr $I10, rxscan1174_loop
    rx1173_cur."!mark_push"(0, rx1173_pos, $I10)
  rxscan1174_done:
.annotate 'line', 91
  # rx literal  "\\n"
    add $I11, rx1173_pos, 2
    gt $I11, rx1173_eos, rx1173_fail
    sub $I11, rx1173_pos, rx1173_off
    substr $S10, rx1173_tgt, $I11, 2
    ne $S10, "\\n", rx1173_fail
    add rx1173_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx1173_cur."!cursor_pos"(rx1173_pos)
    $P10 = rx1173_cur."quotemod_check"("b")
    unless $P10, rx1173_fail
  # rx pass
    rx1173_cur."!cursor_pass"(rx1173_pos, "quote_escape:sym<nl>")
    if_null rx1173_debug, debug_394
    rx1173_cur."!cursor_debug"("PASS", "quote_escape:sym<nl>", " at pos=", rx1173_pos)
  debug_394:
    .return (rx1173_cur)
  rx1173_restart:
.annotate 'line', 7
    if_null rx1173_debug, debug_395
    rx1173_cur."!cursor_debug"("NEXT", "quote_escape:sym<nl>")
  debug_395:
  rx1173_fail:
    (rx1173_rep, rx1173_pos, $I10, $P10) = rx1173_cur."!mark_fail"(0)
    lt rx1173_pos, -1, rx1173_done
    eq rx1173_pos, -1, rx1173_fail
    jump $I10
  rx1173_done:
    rx1173_cur."!cursor_fail"()
    if_null rx1173_debug, debug_396
    rx1173_cur."!cursor_debug"("FAIL", "quote_escape:sym<nl>")
  debug_396:
    .return (rx1173_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<nl>"  :subid("76_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, "\\n"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<cr>"  :subid("77_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1177_tgt
    .local int rx1177_pos
    .local int rx1177_off
    .local int rx1177_eos
    .local int rx1177_rep
    .local pmc rx1177_cur
    .local pmc rx1177_debug
    (rx1177_cur, rx1177_pos, rx1177_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1177_cur
    .local pmc match
    .lex "$/", match
    length rx1177_eos, rx1177_tgt
    gt rx1177_pos, rx1177_eos, rx1177_done
    set rx1177_off, 0
    lt rx1177_pos, 2, rx1177_start
    sub rx1177_off, rx1177_pos, 1
    substr rx1177_tgt, rx1177_tgt, rx1177_off
  rx1177_start:
    eq $I10, 1, rx1177_restart
    if_null rx1177_debug, debug_397
    rx1177_cur."!cursor_debug"("START", "quote_escape:sym<cr>")
  debug_397:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1178_done
    goto rxscan1178_scan
  rxscan1178_loop:
    (rx1177_pos) = rx1177_cur."from"()
    inc rx1177_pos
    rx1177_cur."!cursor_from"(rx1177_pos)
    ge rx1177_pos, rx1177_eos, rxscan1178_done
  rxscan1178_scan:
    set_addr $I10, rxscan1178_loop
    rx1177_cur."!mark_push"(0, rx1177_pos, $I10)
  rxscan1178_done:
.annotate 'line', 92
  # rx literal  "\\r"
    add $I11, rx1177_pos, 2
    gt $I11, rx1177_eos, rx1177_fail
    sub $I11, rx1177_pos, rx1177_off
    substr $S10, rx1177_tgt, $I11, 2
    ne $S10, "\\r", rx1177_fail
    add rx1177_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx1177_cur."!cursor_pos"(rx1177_pos)
    $P10 = rx1177_cur."quotemod_check"("b")
    unless $P10, rx1177_fail
  # rx pass
    rx1177_cur."!cursor_pass"(rx1177_pos, "quote_escape:sym<cr>")
    if_null rx1177_debug, debug_398
    rx1177_cur."!cursor_debug"("PASS", "quote_escape:sym<cr>", " at pos=", rx1177_pos)
  debug_398:
    .return (rx1177_cur)
  rx1177_restart:
.annotate 'line', 7
    if_null rx1177_debug, debug_399
    rx1177_cur."!cursor_debug"("NEXT", "quote_escape:sym<cr>")
  debug_399:
  rx1177_fail:
    (rx1177_rep, rx1177_pos, $I10, $P10) = rx1177_cur."!mark_fail"(0)
    lt rx1177_pos, -1, rx1177_done
    eq rx1177_pos, -1, rx1177_fail
    jump $I10
  rx1177_done:
    rx1177_cur."!cursor_fail"()
    if_null rx1177_debug, debug_400
    rx1177_cur."!cursor_debug"("FAIL", "quote_escape:sym<cr>")
  debug_400:
    .return (rx1177_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<cr>"  :subid("78_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, "\\r"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<tab>"  :subid("79_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1181_tgt
    .local int rx1181_pos
    .local int rx1181_off
    .local int rx1181_eos
    .local int rx1181_rep
    .local pmc rx1181_cur
    .local pmc rx1181_debug
    (rx1181_cur, rx1181_pos, rx1181_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1181_cur
    .local pmc match
    .lex "$/", match
    length rx1181_eos, rx1181_tgt
    gt rx1181_pos, rx1181_eos, rx1181_done
    set rx1181_off, 0
    lt rx1181_pos, 2, rx1181_start
    sub rx1181_off, rx1181_pos, 1
    substr rx1181_tgt, rx1181_tgt, rx1181_off
  rx1181_start:
    eq $I10, 1, rx1181_restart
    if_null rx1181_debug, debug_401
    rx1181_cur."!cursor_debug"("START", "quote_escape:sym<tab>")
  debug_401:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1182_done
    goto rxscan1182_scan
  rxscan1182_loop:
    (rx1181_pos) = rx1181_cur."from"()
    inc rx1181_pos
    rx1181_cur."!cursor_from"(rx1181_pos)
    ge rx1181_pos, rx1181_eos, rxscan1182_done
  rxscan1182_scan:
    set_addr $I10, rxscan1182_loop
    rx1181_cur."!mark_push"(0, rx1181_pos, $I10)
  rxscan1182_done:
.annotate 'line', 93
  # rx literal  "\\t"
    add $I11, rx1181_pos, 2
    gt $I11, rx1181_eos, rx1181_fail
    sub $I11, rx1181_pos, rx1181_off
    substr $S10, rx1181_tgt, $I11, 2
    ne $S10, "\\t", rx1181_fail
    add rx1181_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx1181_cur."!cursor_pos"(rx1181_pos)
    $P10 = rx1181_cur."quotemod_check"("b")
    unless $P10, rx1181_fail
  # rx pass
    rx1181_cur."!cursor_pass"(rx1181_pos, "quote_escape:sym<tab>")
    if_null rx1181_debug, debug_402
    rx1181_cur."!cursor_debug"("PASS", "quote_escape:sym<tab>", " at pos=", rx1181_pos)
  debug_402:
    .return (rx1181_cur)
  rx1181_restart:
.annotate 'line', 7
    if_null rx1181_debug, debug_403
    rx1181_cur."!cursor_debug"("NEXT", "quote_escape:sym<tab>")
  debug_403:
  rx1181_fail:
    (rx1181_rep, rx1181_pos, $I10, $P10) = rx1181_cur."!mark_fail"(0)
    lt rx1181_pos, -1, rx1181_done
    eq rx1181_pos, -1, rx1181_fail
    jump $I10
  rx1181_done:
    rx1181_cur."!cursor_fail"()
    if_null rx1181_debug, debug_404
    rx1181_cur."!cursor_debug"("FAIL", "quote_escape:sym<tab>")
  debug_404:
    .return (rx1181_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<tab>"  :subid("80_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, "\\t"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<ff>"  :subid("81_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1185_tgt
    .local int rx1185_pos
    .local int rx1185_off
    .local int rx1185_eos
    .local int rx1185_rep
    .local pmc rx1185_cur
    .local pmc rx1185_debug
    (rx1185_cur, rx1185_pos, rx1185_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1185_cur
    .local pmc match
    .lex "$/", match
    length rx1185_eos, rx1185_tgt
    gt rx1185_pos, rx1185_eos, rx1185_done
    set rx1185_off, 0
    lt rx1185_pos, 2, rx1185_start
    sub rx1185_off, rx1185_pos, 1
    substr rx1185_tgt, rx1185_tgt, rx1185_off
  rx1185_start:
    eq $I10, 1, rx1185_restart
    if_null rx1185_debug, debug_405
    rx1185_cur."!cursor_debug"("START", "quote_escape:sym<ff>")
  debug_405:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1186_done
    goto rxscan1186_scan
  rxscan1186_loop:
    (rx1185_pos) = rx1185_cur."from"()
    inc rx1185_pos
    rx1185_cur."!cursor_from"(rx1185_pos)
    ge rx1185_pos, rx1185_eos, rxscan1186_done
  rxscan1186_scan:
    set_addr $I10, rxscan1186_loop
    rx1185_cur."!mark_push"(0, rx1185_pos, $I10)
  rxscan1186_done:
.annotate 'line', 94
  # rx literal  "\\f"
    add $I11, rx1185_pos, 2
    gt $I11, rx1185_eos, rx1185_fail
    sub $I11, rx1185_pos, rx1185_off
    substr $S10, rx1185_tgt, $I11, 2
    ne $S10, "\\f", rx1185_fail
    add rx1185_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx1185_cur."!cursor_pos"(rx1185_pos)
    $P10 = rx1185_cur."quotemod_check"("b")
    unless $P10, rx1185_fail
  # rx pass
    rx1185_cur."!cursor_pass"(rx1185_pos, "quote_escape:sym<ff>")
    if_null rx1185_debug, debug_406
    rx1185_cur."!cursor_debug"("PASS", "quote_escape:sym<ff>", " at pos=", rx1185_pos)
  debug_406:
    .return (rx1185_cur)
  rx1185_restart:
.annotate 'line', 7
    if_null rx1185_debug, debug_407
    rx1185_cur."!cursor_debug"("NEXT", "quote_escape:sym<ff>")
  debug_407:
  rx1185_fail:
    (rx1185_rep, rx1185_pos, $I10, $P10) = rx1185_cur."!mark_fail"(0)
    lt rx1185_pos, -1, rx1185_done
    eq rx1185_pos, -1, rx1185_fail
    jump $I10
  rx1185_done:
    rx1185_cur."!cursor_fail"()
    if_null rx1185_debug, debug_408
    rx1185_cur."!cursor_debug"("FAIL", "quote_escape:sym<ff>")
  debug_408:
    .return (rx1185_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<ff>"  :subid("82_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, "\\f"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<esc>"  :subid("83_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1189_tgt
    .local int rx1189_pos
    .local int rx1189_off
    .local int rx1189_eos
    .local int rx1189_rep
    .local pmc rx1189_cur
    .local pmc rx1189_debug
    (rx1189_cur, rx1189_pos, rx1189_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1189_cur
    .local pmc match
    .lex "$/", match
    length rx1189_eos, rx1189_tgt
    gt rx1189_pos, rx1189_eos, rx1189_done
    set rx1189_off, 0
    lt rx1189_pos, 2, rx1189_start
    sub rx1189_off, rx1189_pos, 1
    substr rx1189_tgt, rx1189_tgt, rx1189_off
  rx1189_start:
    eq $I10, 1, rx1189_restart
    if_null rx1189_debug, debug_409
    rx1189_cur."!cursor_debug"("START", "quote_escape:sym<esc>")
  debug_409:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1190_done
    goto rxscan1190_scan
  rxscan1190_loop:
    (rx1189_pos) = rx1189_cur."from"()
    inc rx1189_pos
    rx1189_cur."!cursor_from"(rx1189_pos)
    ge rx1189_pos, rx1189_eos, rxscan1190_done
  rxscan1190_scan:
    set_addr $I10, rxscan1190_loop
    rx1189_cur."!mark_push"(0, rx1189_pos, $I10)
  rxscan1190_done:
.annotate 'line', 95
  # rx literal  "\\e"
    add $I11, rx1189_pos, 2
    gt $I11, rx1189_eos, rx1189_fail
    sub $I11, rx1189_pos, rx1189_off
    substr $S10, rx1189_tgt, $I11, 2
    ne $S10, "\\e", rx1189_fail
    add rx1189_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx1189_cur."!cursor_pos"(rx1189_pos)
    $P10 = rx1189_cur."quotemod_check"("b")
    unless $P10, rx1189_fail
  # rx pass
    rx1189_cur."!cursor_pass"(rx1189_pos, "quote_escape:sym<esc>")
    if_null rx1189_debug, debug_410
    rx1189_cur."!cursor_debug"("PASS", "quote_escape:sym<esc>", " at pos=", rx1189_pos)
  debug_410:
    .return (rx1189_cur)
  rx1189_restart:
.annotate 'line', 7
    if_null rx1189_debug, debug_411
    rx1189_cur."!cursor_debug"("NEXT", "quote_escape:sym<esc>")
  debug_411:
  rx1189_fail:
    (rx1189_rep, rx1189_pos, $I10, $P10) = rx1189_cur."!mark_fail"(0)
    lt rx1189_pos, -1, rx1189_done
    eq rx1189_pos, -1, rx1189_fail
    jump $I10
  rx1189_done:
    rx1189_cur."!cursor_fail"()
    if_null rx1189_debug, debug_412
    rx1189_cur."!cursor_debug"("FAIL", "quote_escape:sym<esc>")
  debug_412:
    .return (rx1189_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<esc>"  :subid("84_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, "\\e"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<hex>"  :subid("85_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1193_tgt
    .local int rx1193_pos
    .local int rx1193_off
    .local int rx1193_eos
    .local int rx1193_rep
    .local pmc rx1193_cur
    .local pmc rx1193_debug
    (rx1193_cur, rx1193_pos, rx1193_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1193_cur
    .local pmc match
    .lex "$/", match
    length rx1193_eos, rx1193_tgt
    gt rx1193_pos, rx1193_eos, rx1193_done
    set rx1193_off, 0
    lt rx1193_pos, 2, rx1193_start
    sub rx1193_off, rx1193_pos, 1
    substr rx1193_tgt, rx1193_tgt, rx1193_off
  rx1193_start:
    eq $I10, 1, rx1193_restart
    if_null rx1193_debug, debug_413
    rx1193_cur."!cursor_debug"("START", "quote_escape:sym<hex>")
  debug_413:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1194_done
    goto rxscan1194_scan
  rxscan1194_loop:
    (rx1193_pos) = rx1193_cur."from"()
    inc rx1193_pos
    rx1193_cur."!cursor_from"(rx1193_pos)
    ge rx1193_pos, rx1193_eos, rxscan1194_done
  rxscan1194_scan:
    set_addr $I10, rxscan1194_loop
    rx1193_cur."!mark_push"(0, rx1193_pos, $I10)
  rxscan1194_done:
.annotate 'line', 97
  # rx literal  unicode:"\\x"
    add $I11, rx1193_pos, 2
    gt $I11, rx1193_eos, rx1193_fail
    sub $I11, rx1193_pos, rx1193_off
    substr $S10, rx1193_tgt, $I11, 2
    ne $S10, unicode:"\\x", rx1193_fail
    add rx1193_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx1193_cur."!cursor_pos"(rx1193_pos)
    $P10 = rx1193_cur."quotemod_check"("b")
    unless $P10, rx1193_fail
  alt1195_0:
.annotate 'line', 98
    set_addr $I10, alt1195_1
    rx1193_cur."!mark_push"(0, rx1193_pos, $I10)
  # rx subrule "hexint" subtype=capture negate=
    rx1193_cur."!cursor_pos"(rx1193_pos)
    $P10 = rx1193_cur."hexint"()
    unless $P10, rx1193_fail
    rx1193_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexint")
    rx1193_pos = $P10."pos"()
    goto alt1195_end
  alt1195_1:
  # rx literal  "["
    add $I11, rx1193_pos, 1
    gt $I11, rx1193_eos, rx1193_fail
    sub $I11, rx1193_pos, rx1193_off
    ord $I11, rx1193_tgt, $I11
    ne $I11, 91, rx1193_fail
    add rx1193_pos, 1
  # rx subrule "hexints" subtype=capture negate=
    rx1193_cur."!cursor_pos"(rx1193_pos)
    $P10 = rx1193_cur."hexints"()
    unless $P10, rx1193_fail
    rx1193_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("hexints")
    rx1193_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx1193_pos, 1
    gt $I11, rx1193_eos, rx1193_fail
    sub $I11, rx1193_pos, rx1193_off
    ord $I11, rx1193_tgt, $I11
    ne $I11, 93, rx1193_fail
    add rx1193_pos, 1
  alt1195_end:
.annotate 'line', 96
  # rx pass
    rx1193_cur."!cursor_pass"(rx1193_pos, "quote_escape:sym<hex>")
    if_null rx1193_debug, debug_414
    rx1193_cur."!cursor_debug"("PASS", "quote_escape:sym<hex>", " at pos=", rx1193_pos)
  debug_414:
    .return (rx1193_cur)
  rx1193_restart:
.annotate 'line', 7
    if_null rx1193_debug, debug_415
    rx1193_cur."!cursor_debug"("NEXT", "quote_escape:sym<hex>")
  debug_415:
  rx1193_fail:
    (rx1193_rep, rx1193_pos, $I10, $P10) = rx1193_cur."!mark_fail"(0)
    lt rx1193_pos, -1, rx1193_done
    eq rx1193_pos, -1, rx1193_fail
    jump $I10
  rx1193_done:
    rx1193_cur."!cursor_fail"()
    if_null rx1193_debug, debug_416
    rx1193_cur."!cursor_debug"("FAIL", "quote_escape:sym<hex>")
  debug_416:
    .return (rx1193_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<hex>"  :subid("86_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, unicode:"\\x"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<oct>"  :subid("87_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1198_tgt
    .local int rx1198_pos
    .local int rx1198_off
    .local int rx1198_eos
    .local int rx1198_rep
    .local pmc rx1198_cur
    .local pmc rx1198_debug
    (rx1198_cur, rx1198_pos, rx1198_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1198_cur
    .local pmc match
    .lex "$/", match
    length rx1198_eos, rx1198_tgt
    gt rx1198_pos, rx1198_eos, rx1198_done
    set rx1198_off, 0
    lt rx1198_pos, 2, rx1198_start
    sub rx1198_off, rx1198_pos, 1
    substr rx1198_tgt, rx1198_tgt, rx1198_off
  rx1198_start:
    eq $I10, 1, rx1198_restart
    if_null rx1198_debug, debug_417
    rx1198_cur."!cursor_debug"("START", "quote_escape:sym<oct>")
  debug_417:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1199_done
    goto rxscan1199_scan
  rxscan1199_loop:
    (rx1198_pos) = rx1198_cur."from"()
    inc rx1198_pos
    rx1198_cur."!cursor_from"(rx1198_pos)
    ge rx1198_pos, rx1198_eos, rxscan1199_done
  rxscan1199_scan:
    set_addr $I10, rxscan1199_loop
    rx1198_cur."!mark_push"(0, rx1198_pos, $I10)
  rxscan1199_done:
.annotate 'line', 101
  # rx literal  "\\o"
    add $I11, rx1198_pos, 2
    gt $I11, rx1198_eos, rx1198_fail
    sub $I11, rx1198_pos, rx1198_off
    substr $S10, rx1198_tgt, $I11, 2
    ne $S10, "\\o", rx1198_fail
    add rx1198_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx1198_cur."!cursor_pos"(rx1198_pos)
    $P10 = rx1198_cur."quotemod_check"("b")
    unless $P10, rx1198_fail
  alt1200_0:
.annotate 'line', 102
    set_addr $I10, alt1200_1
    rx1198_cur."!mark_push"(0, rx1198_pos, $I10)
  # rx subrule "octint" subtype=capture negate=
    rx1198_cur."!cursor_pos"(rx1198_pos)
    $P10 = rx1198_cur."octint"()
    unless $P10, rx1198_fail
    rx1198_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octint")
    rx1198_pos = $P10."pos"()
    goto alt1200_end
  alt1200_1:
  # rx literal  "["
    add $I11, rx1198_pos, 1
    gt $I11, rx1198_eos, rx1198_fail
    sub $I11, rx1198_pos, rx1198_off
    ord $I11, rx1198_tgt, $I11
    ne $I11, 91, rx1198_fail
    add rx1198_pos, 1
  # rx subrule "octints" subtype=capture negate=
    rx1198_cur."!cursor_pos"(rx1198_pos)
    $P10 = rx1198_cur."octints"()
    unless $P10, rx1198_fail
    rx1198_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("octints")
    rx1198_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx1198_pos, 1
    gt $I11, rx1198_eos, rx1198_fail
    sub $I11, rx1198_pos, rx1198_off
    ord $I11, rx1198_tgt, $I11
    ne $I11, 93, rx1198_fail
    add rx1198_pos, 1
  alt1200_end:
.annotate 'line', 100
  # rx pass
    rx1198_cur."!cursor_pass"(rx1198_pos, "quote_escape:sym<oct>")
    if_null rx1198_debug, debug_418
    rx1198_cur."!cursor_debug"("PASS", "quote_escape:sym<oct>", " at pos=", rx1198_pos)
  debug_418:
    .return (rx1198_cur)
  rx1198_restart:
.annotate 'line', 7
    if_null rx1198_debug, debug_419
    rx1198_cur."!cursor_debug"("NEXT", "quote_escape:sym<oct>")
  debug_419:
  rx1198_fail:
    (rx1198_rep, rx1198_pos, $I10, $P10) = rx1198_cur."!mark_fail"(0)
    lt rx1198_pos, -1, rx1198_done
    eq rx1198_pos, -1, rx1198_fail
    jump $I10
  rx1198_done:
    rx1198_cur."!cursor_fail"()
    if_null rx1198_debug, debug_420
    rx1198_cur."!cursor_debug"("FAIL", "quote_escape:sym<oct>")
  debug_420:
    .return (rx1198_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<oct>"  :subid("88_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, "\\o"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<chr>"  :subid("89_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1203_tgt
    .local int rx1203_pos
    .local int rx1203_off
    .local int rx1203_eos
    .local int rx1203_rep
    .local pmc rx1203_cur
    .local pmc rx1203_debug
    (rx1203_cur, rx1203_pos, rx1203_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1203_cur
    .local pmc match
    .lex "$/", match
    length rx1203_eos, rx1203_tgt
    gt rx1203_pos, rx1203_eos, rx1203_done
    set rx1203_off, 0
    lt rx1203_pos, 2, rx1203_start
    sub rx1203_off, rx1203_pos, 1
    substr rx1203_tgt, rx1203_tgt, rx1203_off
  rx1203_start:
    eq $I10, 1, rx1203_restart
    if_null rx1203_debug, debug_421
    rx1203_cur."!cursor_debug"("START", "quote_escape:sym<chr>")
  debug_421:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1204_done
    goto rxscan1204_scan
  rxscan1204_loop:
    (rx1203_pos) = rx1203_cur."from"()
    inc rx1203_pos
    rx1203_cur."!cursor_from"(rx1203_pos)
    ge rx1203_pos, rx1203_eos, rxscan1204_done
  rxscan1204_scan:
    set_addr $I10, rxscan1204_loop
    rx1203_cur."!mark_push"(0, rx1203_pos, $I10)
  rxscan1204_done:
.annotate 'line', 104
  # rx literal  "\\c"
    add $I11, rx1203_pos, 2
    gt $I11, rx1203_eos, rx1203_fail
    sub $I11, rx1203_pos, rx1203_off
    substr $S10, rx1203_tgt, $I11, 2
    ne $S10, "\\c", rx1203_fail
    add rx1203_pos, 2
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx1203_cur."!cursor_pos"(rx1203_pos)
    $P10 = rx1203_cur."quotemod_check"("b")
    unless $P10, rx1203_fail
  # rx subrule "charspec" subtype=capture negate=
    rx1203_cur."!cursor_pos"(rx1203_pos)
    $P10 = rx1203_cur."charspec"()
    unless $P10, rx1203_fail
    rx1203_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charspec")
    rx1203_pos = $P10."pos"()
  # rx pass
    rx1203_cur."!cursor_pass"(rx1203_pos, "quote_escape:sym<chr>")
    if_null rx1203_debug, debug_422
    rx1203_cur."!cursor_debug"("PASS", "quote_escape:sym<chr>", " at pos=", rx1203_pos)
  debug_422:
    .return (rx1203_cur)
  rx1203_restart:
.annotate 'line', 7
    if_null rx1203_debug, debug_423
    rx1203_cur."!cursor_debug"("NEXT", "quote_escape:sym<chr>")
  debug_423:
  rx1203_fail:
    (rx1203_rep, rx1203_pos, $I10, $P10) = rx1203_cur."!mark_fail"(0)
    lt rx1203_pos, -1, rx1203_done
    eq rx1203_pos, -1, rx1203_fail
    jump $I10
  rx1203_done:
    rx1203_cur."!cursor_fail"()
    if_null rx1203_debug, debug_424
    rx1203_cur."!cursor_debug"("FAIL", "quote_escape:sym<chr>")
  debug_424:
    .return (rx1203_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<chr>"  :subid("90_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, "\\c"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<0>"  :subid("91_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1207_tgt
    .local int rx1207_pos
    .local int rx1207_off
    .local int rx1207_eos
    .local int rx1207_rep
    .local pmc rx1207_cur
    .local pmc rx1207_debug
    (rx1207_cur, rx1207_pos, rx1207_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1207_cur
    .local pmc match
    .lex "$/", match
    length rx1207_eos, rx1207_tgt
    gt rx1207_pos, rx1207_eos, rx1207_done
    set rx1207_off, 0
    lt rx1207_pos, 2, rx1207_start
    sub rx1207_off, rx1207_pos, 1
    substr rx1207_tgt, rx1207_tgt, rx1207_off
  rx1207_start:
    eq $I10, 1, rx1207_restart
    if_null rx1207_debug, debug_425
    rx1207_cur."!cursor_debug"("START", "quote_escape:sym<0>")
  debug_425:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1208_done
    goto rxscan1208_scan
  rxscan1208_loop:
    (rx1207_pos) = rx1207_cur."from"()
    inc rx1207_pos
    rx1207_cur."!cursor_from"(rx1207_pos)
    ge rx1207_pos, rx1207_eos, rxscan1208_done
  rxscan1208_scan:
    set_addr $I10, rxscan1208_loop
    rx1207_cur."!mark_push"(0, rx1207_pos, $I10)
  rxscan1208_done:
.annotate 'line', 105
  # rx literal  "\\"
    add $I11, rx1207_pos, 1
    gt $I11, rx1207_eos, rx1207_fail
    sub $I11, rx1207_pos, rx1207_off
    ord $I11, rx1207_tgt, $I11
    ne $I11, 92, rx1207_fail
    add rx1207_pos, 1
  # rx subcapture "sym"
    set_addr $I10, rxcap_1209_fail
    rx1207_cur."!mark_push"(0, rx1207_pos, $I10)
  # rx literal  "0"
    add $I11, rx1207_pos, 1
    gt $I11, rx1207_eos, rx1207_fail
    sub $I11, rx1207_pos, rx1207_off
    ord $I11, rx1207_tgt, $I11
    ne $I11, 48, rx1207_fail
    add rx1207_pos, 1
    set_addr $I10, rxcap_1209_fail
    ($I12, $I11) = rx1207_cur."!mark_peek"($I10)
    rx1207_cur."!cursor_pos"($I11)
    ($P10) = rx1207_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1207_pos, "")
    rx1207_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("sym")
    goto rxcap_1209_done
  rxcap_1209_fail:
    goto rx1207_fail
  rxcap_1209_done:
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx1207_cur."!cursor_pos"(rx1207_pos)
    $P10 = rx1207_cur."quotemod_check"("b")
    unless $P10, rx1207_fail
  # rx pass
    rx1207_cur."!cursor_pass"(rx1207_pos, "quote_escape:sym<0>")
    if_null rx1207_debug, debug_426
    rx1207_cur."!cursor_debug"("PASS", "quote_escape:sym<0>", " at pos=", rx1207_pos)
  debug_426:
    .return (rx1207_cur)
  rx1207_restart:
.annotate 'line', 7
    if_null rx1207_debug, debug_427
    rx1207_cur."!cursor_debug"("NEXT", "quote_escape:sym<0>")
  debug_427:
  rx1207_fail:
    (rx1207_rep, rx1207_pos, $I10, $P10) = rx1207_cur."!mark_fail"(0)
    lt rx1207_pos, -1, rx1207_done
    eq rx1207_pos, -1, rx1207_fail
    jump $I10
  rx1207_done:
    rx1207_cur."!cursor_fail"()
    if_null rx1207_debug, debug_428
    rx1207_cur."!cursor_debug"("FAIL", "quote_escape:sym<0>")
  debug_428:
    .return (rx1207_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<0>"  :subid("92_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, "\\0"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<misc>"  :subid("93_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .const 'Sub' $P1224 = "96_1315150096.049" 
    capture_lex $P1224
    .const 'Sub' $P1219 = "95_1315150096.049" 
    capture_lex $P1219
    .const 'Sub' $P1215 = "94_1315150096.049" 
    capture_lex $P1215
    .local string rx1212_tgt
    .local int rx1212_pos
    .local int rx1212_off
    .local int rx1212_eos
    .local int rx1212_rep
    .local pmc rx1212_cur
    .local pmc rx1212_debug
    (rx1212_cur, rx1212_pos, rx1212_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1212_cur
    .local pmc match
    .lex "$/", match
    length rx1212_eos, rx1212_tgt
    gt rx1212_pos, rx1212_eos, rx1212_done
    set rx1212_off, 0
    lt rx1212_pos, 2, rx1212_start
    sub rx1212_off, rx1212_pos, 1
    substr rx1212_tgt, rx1212_tgt, rx1212_off
  rx1212_start:
    eq $I10, 1, rx1212_restart
    if_null rx1212_debug, debug_429
    rx1212_cur."!cursor_debug"("START", "quote_escape:sym<misc>")
  debug_429:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1213_done
    goto rxscan1213_scan
  rxscan1213_loop:
    (rx1212_pos) = rx1212_cur."from"()
    inc rx1212_pos
    rx1212_cur."!cursor_from"(rx1212_pos)
    ge rx1212_pos, rx1212_eos, rxscan1213_done
  rxscan1213_scan:
    set_addr $I10, rxscan1213_loop
    rx1212_cur."!mark_push"(0, rx1212_pos, $I10)
  rxscan1213_done:
.annotate 'line', 107
    rx1212_cur."!cursor_pos"(rx1212_pos)
    find_lex $P103, unicode:"$\x{a2}"
    $P104 = $P103."MATCH"()
    store_lex "$/", $P104
    .const 'Sub' $P1215 = "94_1315150096.049" 
    capture_lex $P1215
    $P105 = $P1215()
  # rx literal  "\\"
    add $I11, rx1212_pos, 1
    gt $I11, rx1212_eos, rx1212_fail
    sub $I11, rx1212_pos, rx1212_off
    ord $I11, rx1212_tgt, $I11
    ne $I11, 92, rx1212_fail
    add rx1212_pos, 1
  alt1216_0:
.annotate 'line', 108
    set_addr $I10, alt1216_1
    rx1212_cur."!mark_push"(0, rx1212_pos, $I10)
.annotate 'line', 109
  # rx subrule "quotemod_check" subtype=zerowidth negate=
    rx1212_cur."!cursor_pos"(rx1212_pos)
    $P10 = rx1212_cur."quotemod_check"("b")
    unless $P10, rx1212_fail
  alt1217_0:
.annotate 'line', 110
    set_addr $I10, alt1217_1
    rx1212_cur."!mark_push"(0, rx1212_pos, $I10)
.annotate 'line', 111
  # rx subrule $P1219 subtype=capture negate=
    rx1212_cur."!cursor_pos"(rx1212_pos)
    .const 'Sub' $P1219 = "95_1315150096.049" 
    capture_lex $P1219
    $P10 = rx1212_cur.$P1219()
    unless $P10, rx1212_fail
    rx1212_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("textqq")
    rx1212_pos = $P10."pos"()
    goto alt1217_end
  alt1217_1:
.annotate 'line', 112
  # rx subcapture "x"
    set_addr $I10, rxcap_1222_fail
    rx1212_cur."!mark_push"(0, rx1212_pos, $I10)
  # rx charclass w
    ge rx1212_pos, rx1212_eos, rx1212_fail
    sub $I10, rx1212_pos, rx1212_off
    is_cclass $I11, .CCLASS_WORD, rx1212_tgt, $I10
    unless $I11, rx1212_fail
    inc rx1212_pos
    set_addr $I10, rxcap_1222_fail
    ($I12, $I11) = rx1212_cur."!mark_peek"($I10)
    rx1212_cur."!cursor_pos"($I11)
    ($P10) = rx1212_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1212_pos, "")
    rx1212_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("x")
    goto rxcap_1222_done
  rxcap_1222_fail:
    goto rx1212_fail
  rxcap_1222_done:
    rx1212_cur."!cursor_pos"(rx1212_pos)
    find_lex $P106, unicode:"$\x{a2}"
    $P107 = $P106."MATCH"()
    store_lex "$/", $P107
    .const 'Sub' $P1224 = "96_1315150096.049" 
    capture_lex $P1224
    $P108 = $P1224()
  alt1217_end:
.annotate 'line', 109
    goto alt1216_end
  alt1216_1:
.annotate 'line', 114
  # rx subcapture "textq"
    set_addr $I10, rxcap_1226_fail
    rx1212_cur."!mark_push"(0, rx1212_pos, $I10)
  # rx charclass .
    ge rx1212_pos, rx1212_eos, rx1212_fail
    inc rx1212_pos
    set_addr $I10, rxcap_1226_fail
    ($I12, $I11) = rx1212_cur."!mark_peek"($I10)
    rx1212_cur."!cursor_pos"($I11)
    ($P10) = rx1212_cur."!cursor_start"()
    $P10."!cursor_pass"(rx1212_pos, "")
    rx1212_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("textq")
    goto rxcap_1226_done
  rxcap_1226_fail:
    goto rx1212_fail
  rxcap_1226_done:
  alt1216_end:
.annotate 'line', 106
  # rx pass
    rx1212_cur."!cursor_pass"(rx1212_pos, "quote_escape:sym<misc>")
    if_null rx1212_debug, debug_437
    rx1212_cur."!cursor_debug"("PASS", "quote_escape:sym<misc>", " at pos=", rx1212_pos)
  debug_437:
    .return (rx1212_cur)
  rx1212_restart:
.annotate 'line', 7
    if_null rx1212_debug, debug_438
    rx1212_cur."!cursor_debug"("NEXT", "quote_escape:sym<misc>")
  debug_438:
  rx1212_fail:
    (rx1212_rep, rx1212_pos, $I10, $P10) = rx1212_cur."!mark_fail"(0)
    lt rx1212_pos, -1, rx1212_done
    eq rx1212_pos, -1, rx1212_fail
    jump $I10
  rx1212_done:
    rx1212_cur."!cursor_fail"()
    if_null rx1212_debug, debug_439
    rx1212_cur."!cursor_debug"("FAIL", "quote_escape:sym<misc>")
  debug_439:
    .return (rx1212_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block1214"  :anon :subid("94_1315150096.049") :outer("93_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 107
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block1218"  :anon :subid("95_1315150096.049") :method :outer("93_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 111
    .local string rx1220_tgt
    .local int rx1220_pos
    .local int rx1220_off
    .local int rx1220_eos
    .local int rx1220_rep
    .local pmc rx1220_cur
    .local pmc rx1220_debug
    (rx1220_cur, rx1220_pos, rx1220_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1220_cur
    .local pmc match
    .lex "$/", match
    length rx1220_eos, rx1220_tgt
    gt rx1220_pos, rx1220_eos, rx1220_done
    set rx1220_off, 0
    lt rx1220_pos, 2, rx1220_start
    sub rx1220_off, rx1220_pos, 1
    substr rx1220_tgt, rx1220_tgt, rx1220_off
  rx1220_start:
    eq $I10, 1, rx1220_restart
    if_null rx1220_debug, debug_430
    rx1220_cur."!cursor_debug"("START", "")
  debug_430:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1221_done
    goto rxscan1221_scan
  rxscan1221_loop:
    (rx1220_pos) = rx1220_cur."from"()
    inc rx1220_pos
    rx1220_cur."!cursor_from"(rx1220_pos)
    ge rx1220_pos, rx1220_eos, rxscan1221_done
  rxscan1221_scan:
    set_addr $I10, rxscan1221_loop
    rx1220_cur."!mark_push"(0, rx1220_pos, $I10)
  rxscan1221_done:
  # rx charclass W
    ge rx1220_pos, rx1220_eos, rx1220_fail
    sub $I10, rx1220_pos, rx1220_off
    is_cclass $I11, .CCLASS_WORD, rx1220_tgt, $I10
    if $I11, rx1220_fail
    inc rx1220_pos
  # rx pass
    rx1220_cur."!cursor_pass"(rx1220_pos, "")
    if_null rx1220_debug, debug_431
    rx1220_cur."!cursor_debug"("PASS", "", " at pos=", rx1220_pos)
  debug_431:
    .return (rx1220_cur)
  rx1220_restart:
    if_null rx1220_debug, debug_432
    rx1220_cur."!cursor_debug"("NEXT", "")
  debug_432:
  rx1220_fail:
    (rx1220_rep, rx1220_pos, $I10, $P10) = rx1220_cur."!mark_fail"(0)
    lt rx1220_pos, -1, rx1220_done
    eq rx1220_pos, -1, rx1220_fail
    jump $I10
  rx1220_done:
    rx1220_cur."!cursor_fail"()
    if_null rx1220_debug, debug_433
    rx1220_cur."!cursor_debug"("FAIL", "")
  debug_433:
    .return (rx1220_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block1223"  :anon :subid("96_1315150096.049") :outer("93_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 112
    find_lex $P108, "$/"
    unless_null $P108, vivify_434
    new $P108, "Undef"
  vivify_434:
    $P109 = $P108."CURSOR"()
    new $P110, "String"
    assign $P110, "Unrecognized backslash sequence: '\\"
    find_lex $P1225, "$/"
    unless_null $P1225, vivify_435
    $P1225 = root_new ['parrot';'Hash']
  vivify_435:
    set $P111, $P1225["x"]
    unless_null $P111, vivify_436
    new $P111, "Undef"
  vivify_436:
    $S100 = $P111."Str"()
    concat $P112, $P110, $S100
    concat $P113, $P112, "'"
    $P114 = $P109."panic"($P113)
    .return ($P114)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<misc>"  :subid("97_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    new $P109, "ResizablePMCArray"
    push $P109, ""
    .return ($P109)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "charname"  :subid("98_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .const 'Sub' $P1235 = "99_1315150096.049" 
    capture_lex $P1235
    .local string rx1229_tgt
    .local int rx1229_pos
    .local int rx1229_off
    .local int rx1229_eos
    .local int rx1229_rep
    .local pmc rx1229_cur
    .local pmc rx1229_debug
    (rx1229_cur, rx1229_pos, rx1229_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1229_cur
    .local pmc match
    .lex "$/", match
    length rx1229_eos, rx1229_tgt
    gt rx1229_pos, rx1229_eos, rx1229_done
    set rx1229_off, 0
    lt rx1229_pos, 2, rx1229_start
    sub rx1229_off, rx1229_pos, 1
    substr rx1229_tgt, rx1229_tgt, rx1229_off
  rx1229_start:
    eq $I10, 1, rx1229_restart
    if_null rx1229_debug, debug_440
    rx1229_cur."!cursor_debug"("START", "charname")
  debug_440:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1230_done
    goto rxscan1230_scan
  rxscan1230_loop:
    (rx1229_pos) = rx1229_cur."from"()
    inc rx1229_pos
    rx1229_cur."!cursor_from"(rx1229_pos)
    ge rx1229_pos, rx1229_eos, rxscan1230_done
  rxscan1230_scan:
    set_addr $I10, rxscan1230_loop
    rx1229_cur."!mark_push"(0, rx1229_pos, $I10)
  rxscan1230_done:
  alt1231_0:
.annotate 'line', 118
    set_addr $I10, alt1231_1
    rx1229_cur."!mark_push"(0, rx1229_pos, $I10)
.annotate 'line', 119
  # rx subrule "integer" subtype=capture negate=
    rx1229_cur."!cursor_pos"(rx1229_pos)
    $P10 = rx1229_cur."integer"()
    unless $P10, rx1229_fail
    rx1229_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("integer")
    rx1229_pos = $P10."pos"()
    goto alt1231_end
  alt1231_1:
.annotate 'line', 120
  # rx enumcharlist negate=0 
    ge rx1229_pos, rx1229_eos, rx1229_fail
    sub $I10, rx1229_pos, rx1229_off
    substr $S10, rx1229_tgt, $I10, 1
    index $I11, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ", $S10
    lt $I11, 0, rx1229_fail
    inc rx1229_pos
  # rx rxquantf1232 ** 0..*
    set_addr $I10, rxquantf1232_loop
    rx1229_cur."!mark_push"(0, rx1229_pos, $I10)
    goto rxquantf1232_done
  rxquantf1232_loop:
  # rx enumcharlist negate=1 
    ge rx1229_pos, rx1229_eos, rx1229_fail
    sub $I10, rx1229_pos, rx1229_off
    substr $S10, rx1229_tgt, $I10, 1
    index $I11, "],#", $S10
    ge $I11, 0, rx1229_fail
    inc rx1229_pos
    set_addr $I10, rxquantf1232_loop
    rx1229_cur."!mark_push"(rx1229_rep, rx1229_pos, $I10)
  rxquantf1232_done:
  # rx enumcharlist negate=0 
    ge rx1229_pos, rx1229_eos, rx1229_fail
    sub $I10, rx1229_pos, rx1229_off
    substr $S10, rx1229_tgt, $I10, 1
    index $I11, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ)", $S10
    lt $I11, 0, rx1229_fail
    inc rx1229_pos
.annotate 'line', 121
  # rx subrule "before" subtype=zerowidth negate=
    rx1229_cur."!cursor_pos"(rx1229_pos)
    .const 'Sub' $P1235 = "99_1315150096.049" 
    capture_lex $P1235
    $P10 = rx1229_cur."before"($P1235)
    unless $P10, rx1229_fail
  alt1231_end:
.annotate 'line', 118
  # rx pass
    rx1229_cur."!cursor_pass"(rx1229_pos, "charname")
    if_null rx1229_debug, debug_445
    rx1229_cur."!cursor_debug"("PASS", "charname", " at pos=", rx1229_pos)
  debug_445:
    .return (rx1229_cur)
  rx1229_restart:
.annotate 'line', 7
    if_null rx1229_debug, debug_446
    rx1229_cur."!cursor_debug"("NEXT", "charname")
  debug_446:
  rx1229_fail:
    (rx1229_rep, rx1229_pos, $I10, $P10) = rx1229_cur."!mark_fail"(0)
    lt rx1229_pos, -1, rx1229_done
    eq rx1229_pos, -1, rx1229_fail
    jump $I10
  rx1229_done:
    rx1229_cur."!cursor_fail"()
    if_null rx1229_debug, debug_447
    rx1229_cur."!cursor_debug"("FAIL", "charname")
  debug_447:
    .return (rx1229_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block1234"  :anon :subid("99_1315150096.049") :method :outer("98_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 121
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
    if_null rx1236_debug, debug_441
    rx1236_cur."!cursor_debug"("START", "")
  debug_441:
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
  # rx charclass_q s r 0..-1
    sub $I10, rx1236_pos, rx1236_off
    find_not_cclass $I11, .CCLASS_WHITESPACE, rx1236_tgt, $I10, rx1236_eos
    add rx1236_pos, rx1236_off, $I11
  # rx enumcharlist negate=0 
    ge rx1236_pos, rx1236_eos, rx1236_fail
    sub $I10, rx1236_pos, rx1236_off
    substr $S10, rx1236_tgt, $I10, 1
    index $I11, "],#", $S10
    lt $I11, 0, rx1236_fail
    inc rx1236_pos
  # rx pass
    rx1236_cur."!cursor_pass"(rx1236_pos, "")
    if_null rx1236_debug, debug_442
    rx1236_cur."!cursor_debug"("PASS", "", " at pos=", rx1236_pos)
  debug_442:
    .return (rx1236_cur)
  rx1236_restart:
    if_null rx1236_debug, debug_443
    rx1236_cur."!cursor_debug"("NEXT", "")
  debug_443:
  rx1236_fail:
    (rx1236_rep, rx1236_pos, $I10, $P10) = rx1236_cur."!mark_fail"(0)
    lt rx1236_pos, -1, rx1236_done
    eq rx1236_pos, -1, rx1236_fail
    jump $I10
  rx1236_done:
    rx1236_cur."!cursor_fail"()
    if_null rx1236_debug, debug_444
    rx1236_cur."!cursor_debug"("FAIL", "")
  debug_444:
    .return (rx1236_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charname"  :subid("100_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    $P103 = self."!PREFIX__!subrule"("integer", "")
    new $P104, "ResizablePMCArray"
    push $P104, "Z"
    push $P104, "Y"
    push $P104, "X"
    push $P104, "W"
    push $P104, "V"
    push $P104, "U"
    push $P104, "T"
    push $P104, "S"
    push $P104, "R"
    push $P104, "Q"
    push $P104, "P"
    push $P104, "O"
    push $P104, "N"
    push $P104, "M"
    push $P104, "L"
    push $P104, "K"
    push $P104, "J"
    push $P104, "I"
    push $P104, "H"
    push $P104, "G"
    push $P104, "F"
    push $P104, "E"
    push $P104, "D"
    push $P104, "C"
    push $P104, "B"
    push $P104, "A"
    push $P104, "z"
    push $P104, "y"
    push $P104, "x"
    push $P104, "w"
    push $P104, "v"
    push $P104, "u"
    push $P104, "t"
    push $P104, "s"
    push $P104, "r"
    push $P104, "q"
    push $P104, "p"
    push $P104, "o"
    push $P104, "n"
    push $P104, "m"
    push $P104, "l"
    push $P104, "k"
    push $P104, "j"
    push $P104, "i"
    push $P104, "h"
    push $P104, "g"
    push $P104, "f"
    push $P104, "e"
    push $P104, "d"
    push $P104, "c"
    push $P104, "b"
    push $P104, "a"
    push $P104, $P103
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "charnames"  :subid("101_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1240_tgt
    .local int rx1240_pos
    .local int rx1240_off
    .local int rx1240_eos
    .local int rx1240_rep
    .local pmc rx1240_cur
    .local pmc rx1240_debug
    (rx1240_cur, rx1240_pos, rx1240_tgt, $I10) = self."!cursor_start"()
    rx1240_cur."!cursor_caparray"("charname")
    .lex unicode:"$\x{a2}", rx1240_cur
    .local pmc match
    .lex "$/", match
    length rx1240_eos, rx1240_tgt
    gt rx1240_pos, rx1240_eos, rx1240_done
    set rx1240_off, 0
    lt rx1240_pos, 2, rx1240_start
    sub rx1240_off, rx1240_pos, 1
    substr rx1240_tgt, rx1240_tgt, rx1240_off
  rx1240_start:
    eq $I10, 1, rx1240_restart
    if_null rx1240_debug, debug_448
    rx1240_cur."!cursor_debug"("START", "charnames")
  debug_448:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1241_done
    goto rxscan1241_scan
  rxscan1241_loop:
    (rx1240_pos) = rx1240_cur."from"()
    inc rx1240_pos
    rx1240_cur."!cursor_from"(rx1240_pos)
    ge rx1240_pos, rx1240_eos, rxscan1241_done
  rxscan1241_scan:
    set_addr $I10, rxscan1241_loop
    rx1240_cur."!mark_push"(0, rx1240_pos, $I10)
  rxscan1241_done:
.annotate 'line', 123
  # rx rxquantr1242 ** 1..*
    set_addr $I10, rxquantr1242_done
    rx1240_cur."!mark_push"(0, -1, $I10)
  rxquantr1242_loop:
  # rx subrule "ws" subtype=method negate=
    rx1240_cur."!cursor_pos"(rx1240_pos)
    $P10 = rx1240_cur."ws"()
    unless $P10, rx1240_fail
    rx1240_pos = $P10."pos"()
  # rx subrule "charname" subtype=capture negate=
    rx1240_cur."!cursor_pos"(rx1240_pos)
    $P10 = rx1240_cur."charname"()
    unless $P10, rx1240_fail
    rx1240_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charname")
    rx1240_pos = $P10."pos"()
  # rx subrule "ws" subtype=method negate=
    rx1240_cur."!cursor_pos"(rx1240_pos)
    $P10 = rx1240_cur."ws"()
    unless $P10, rx1240_fail
    rx1240_pos = $P10."pos"()
    set_addr $I10, rxquantr1242_done
    (rx1240_rep) = rx1240_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr1242_done
    rx1240_cur."!mark_push"(rx1240_rep, rx1240_pos, $I10)
  # rx literal  ","
    add $I11, rx1240_pos, 1
    gt $I11, rx1240_eos, rx1240_fail
    sub $I11, rx1240_pos, rx1240_off
    ord $I11, rx1240_tgt, $I11
    ne $I11, 44, rx1240_fail
    add rx1240_pos, 1
    goto rxquantr1242_loop
  rxquantr1242_done:
  # rx pass
    rx1240_cur."!cursor_pass"(rx1240_pos, "charnames")
    if_null rx1240_debug, debug_449
    rx1240_cur."!cursor_debug"("PASS", "charnames", " at pos=", rx1240_pos)
  debug_449:
    .return (rx1240_cur)
  rx1240_restart:
.annotate 'line', 7
    if_null rx1240_debug, debug_450
    rx1240_cur."!cursor_debug"("NEXT", "charnames")
  debug_450:
  rx1240_fail:
    (rx1240_rep, rx1240_pos, $I10, $P10) = rx1240_cur."!mark_fail"(0)
    lt rx1240_pos, -1, rx1240_done
    eq rx1240_pos, -1, rx1240_fail
    jump $I10
  rx1240_done:
    rx1240_cur."!cursor_fail"()
    if_null rx1240_debug, debug_451
    rx1240_cur."!cursor_debug"("FAIL", "charnames")
  debug_451:
    .return (rx1240_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charnames"  :subid("102_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, ""
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "charspec"  :subid("103_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    .local string rx1245_tgt
    .local int rx1245_pos
    .local int rx1245_off
    .local int rx1245_eos
    .local int rx1245_rep
    .local pmc rx1245_cur
    .local pmc rx1245_debug
    (rx1245_cur, rx1245_pos, rx1245_tgt, $I10) = self."!cursor_start"()
    .lex unicode:"$\x{a2}", rx1245_cur
    .local pmc match
    .lex "$/", match
    length rx1245_eos, rx1245_tgt
    gt rx1245_pos, rx1245_eos, rx1245_done
    set rx1245_off, 0
    lt rx1245_pos, 2, rx1245_start
    sub rx1245_off, rx1245_pos, 1
    substr rx1245_tgt, rx1245_tgt, rx1245_off
  rx1245_start:
    eq $I10, 1, rx1245_restart
    if_null rx1245_debug, debug_452
    rx1245_cur."!cursor_debug"("START", "charspec")
  debug_452:
    $I10 = self.'from'()
    ne $I10, -1, rxscan1246_done
    goto rxscan1246_scan
  rxscan1246_loop:
    (rx1245_pos) = rx1245_cur."from"()
    inc rx1245_pos
    rx1245_cur."!cursor_from"(rx1245_pos)
    ge rx1245_pos, rx1245_eos, rxscan1246_done
  rxscan1246_scan:
    set_addr $I10, rxscan1246_loop
    rx1245_cur."!mark_push"(0, rx1245_pos, $I10)
  rxscan1246_done:
  alt1247_0:
.annotate 'line', 125
    set_addr $I10, alt1247_1
    rx1245_cur."!mark_push"(0, rx1245_pos, $I10)
.annotate 'line', 126
  # rx literal  "["
    add $I11, rx1245_pos, 1
    gt $I11, rx1245_eos, rx1245_fail
    sub $I11, rx1245_pos, rx1245_off
    ord $I11, rx1245_tgt, $I11
    ne $I11, 91, rx1245_fail
    add rx1245_pos, 1
  # rx subrule "charnames" subtype=capture negate=
    rx1245_cur."!cursor_pos"(rx1245_pos)
    $P10 = rx1245_cur."charnames"()
    unless $P10, rx1245_fail
    rx1245_cur."!mark_push"(0, -1, 0, $P10)
    $P10."!cursor_names"("charnames")
    rx1245_pos = $P10."pos"()
  # rx literal  "]"
    add $I11, rx1245_pos, 1
    gt $I11, rx1245_eos, rx1245_fail
    sub $I11, rx1245_pos, rx1245_off
    ord $I11, rx1245_tgt, $I11
    ne $I11, 93, rx1245_fail
    add rx1245_pos, 1
    goto alt1247_end
  alt1247_1:
    set_addr $I10, alt1247_2
    rx1245_cur."!mark_push"(0, rx1245_pos, $I10)
.annotate 'line', 127
  # rx charclass_q d r 1..-1
    sub $I10, rx1245_pos, rx1245_off
    find_not_cclass $I11, .CCLASS_NUMERIC, rx1245_tgt, $I10, rx1245_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx1245_fail
    add rx1245_pos, rx1245_off, $I11
  # rx rxquantr1248 ** 0..*
    set_addr $I10, rxquantr1248_done
    rx1245_cur."!mark_push"(0, rx1245_pos, $I10)
  rxquantr1248_loop:
  # rx literal  "_"
    add $I11, rx1245_pos, 1
    gt $I11, rx1245_eos, rx1245_fail
    sub $I11, rx1245_pos, rx1245_off
    ord $I11, rx1245_tgt, $I11
    ne $I11, 95, rx1245_fail
    add rx1245_pos, 1
  # rx charclass_q d r 1..-1
    sub $I10, rx1245_pos, rx1245_off
    find_not_cclass $I11, .CCLASS_NUMERIC, rx1245_tgt, $I10, rx1245_eos
    add $I12, $I10, 1
    lt $I11, $I12, rx1245_fail
    add rx1245_pos, rx1245_off, $I11
    set_addr $I10, rxquantr1248_done
    (rx1245_rep) = rx1245_cur."!mark_commit"($I10)
    set_addr $I10, rxquantr1248_done
    rx1245_cur."!mark_push"(rx1245_rep, rx1245_pos, $I10)
    goto rxquantr1248_loop
  rxquantr1248_done:
    goto alt1247_end
  alt1247_2:
    set_addr $I10, alt1247_3
    rx1245_cur."!mark_push"(0, rx1245_pos, $I10)
.annotate 'line', 128
  # rx enumcharlist negate=0 
    ge rx1245_pos, rx1245_eos, rx1245_fail
    sub $I10, rx1245_pos, rx1245_off
    substr $S10, rx1245_tgt, $I10, 1
    index $I11, "?@ABCDEFGHIJKLMNOPQRSTUVWXYZ", $S10
    lt $I11, 0, rx1245_fail
    inc rx1245_pos
    goto alt1247_end
  alt1247_3:
.annotate 'line', 129
  # rx subrule "panic" subtype=method negate=
    rx1245_cur."!cursor_pos"(rx1245_pos)
    $P10 = rx1245_cur."panic"("Unrecognized \\c character")
    unless $P10, rx1245_fail
    rx1245_pos = $P10."pos"()
  alt1247_end:
.annotate 'line', 124
  # rx pass
    rx1245_cur."!cursor_pass"(rx1245_pos, "charspec")
    if_null rx1245_debug, debug_453
    rx1245_cur."!cursor_debug"("PASS", "charspec", " at pos=", rx1245_pos)
  debug_453:
    .return (rx1245_cur)
  rx1245_restart:
.annotate 'line', 7
    if_null rx1245_debug, debug_454
    rx1245_cur."!cursor_debug"("NEXT", "charspec")
  debug_454:
  rx1245_fail:
    (rx1245_rep, rx1245_pos, $I10, $P10) = rx1245_cur."!mark_fail"(0)
    lt rx1245_pos, -1, rx1245_done
    eq rx1245_pos, -1, rx1245_fail
    jump $I10
  rx1245_done:
    rx1245_cur."!cursor_fail"()
    if_null rx1245_debug, debug_455
    rx1245_cur."!cursor_debug"("FAIL", "charspec")
  debug_455:
    .return (rx1245_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charspec"  :subid("104_1315150096.049") :method :outer("11_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 7
    $P103 = self."!PREFIX__!subrule"("panic", "")
    $P104 = self."!PREFIX__!subrule"("charnames", "[")
    new $P105, "ResizablePMCArray"
    push $P105, $P103
    push $P105, "?"
    push $P105, "@"
    push $P105, "A"
    push $P105, "B"
    push $P105, "C"
    push $P105, "D"
    push $P105, "E"
    push $P105, "F"
    push $P105, "G"
    push $P105, "H"
    push $P105, "I"
    push $P105, "J"
    push $P105, "K"
    push $P105, "L"
    push $P105, "M"
    push $P105, "N"
    push $P105, "O"
    push $P105, "P"
    push $P105, "Q"
    push $P105, "R"
    push $P105, "S"
    push $P105, "T"
    push $P105, "U"
    push $P105, "V"
    push $P105, "W"
    push $P105, "X"
    push $P105, "Y"
    push $P105, "Z"
    push $P105, ""
    push $P105, $P104
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "O" :anon :subid("105_1315150096.049") :outer("11_1315150096.049")
    .param pmc param_1251
    .param pmc param_1252
    .param pmc param_1253 :optional
    .param int has_param_1253 :opt_flag
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 175
    .lex "self", param_1251
    .lex "$spec", param_1252
    if has_param_1253, optparam_456
    new $P103, "Undef"
    set param_1253, $P103
  optparam_456:
    .lex "$save", param_1253
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
.sub "panic" :anon :subid("106_1315150096.049") :outer("11_1315150096.049")
    .param pmc param_1255
    .param pmc param_1256 :slurpy
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 321
    .lex "self", param_1255
    .lex "@args", param_1256
.annotate 'line', 322
    new $P103, "Undef"
    set $P1257, $P103
    .lex "$pos", $P1257
.annotate 'line', 323
    new $P104, "Undef"
    set $P1258, $P104
    .lex "$target", $P1258
.annotate 'line', 322
    find_lex $P105, "self"
    $P106 = $P105."pos"()
    store_lex "$pos", $P106
.annotate 'line', 323
    find_lex $P105, "self"
    get_hll_global $P106, "GLOBAL"
    nqp_get_package_through_who $P107, $P106, "Regex"
    get_who $P108, $P107
    set $P109, $P108["Cursor"]
    getattribute $P110, $P105, $P109, "$!target"
    store_lex "$target", $P110
.annotate 'line', 324
    find_lex $P1259, "@args"
    unless_null $P1259, vivify_457
    $P1259 = root_new ['parrot';'ResizablePMCArray']
  vivify_457:
    $P1259."push"(" at line ")
.annotate 'line', 325
    find_lex $P1260, "@args"
    unless_null $P1260, vivify_458
    $P1260 = root_new ['parrot';'ResizablePMCArray']
  vivify_458:
    get_hll_global $P105, "GLOBAL"
    nqp_get_package_through_who $P106, $P105, "HLL"
    get_who $P107, $P106
    set $P108, $P107["Compiler"]
    find_lex $P109, "$target"
    unless_null $P109, vivify_459
    new $P109, "Undef"
  vivify_459:
    find_lex $P110, "$pos"
    unless_null $P110, vivify_460
    new $P110, "Undef"
  vivify_460:
    $P111 = $P108."lineof"($P109, $P110)
    add $P112, $P111, 1
    $P1260."push"($P112)
.annotate 'line', 326
    find_lex $P1261, "@args"
    unless_null $P1261, vivify_461
    $P1261 = root_new ['parrot';'ResizablePMCArray']
  vivify_461:
    $P1261."push"(", near \"")
.annotate 'line', 327
    find_lex $P1262, "@args"
    unless_null $P1262, vivify_462
    $P1262 = root_new ['parrot';'ResizablePMCArray']
  vivify_462:
    find_lex $P105, "$target"
    unless_null $P105, vivify_463
    new $P105, "Undef"
  vivify_463:
    set $S100, $P105
    find_lex $P106, "$pos"
    unless_null $P106, vivify_464
    new $P106, "Undef"
  vivify_464:
    set $I100, $P106
    new $P107, "Float"
    assign $P107, 10
    set $I101, $P107
    substr $S101, $S100, $I100, $I101
    escape $S102, $S101
    $P1262."push"($S102)
.annotate 'line', 328
    find_lex $P1263, "@args"
    unless_null $P1263, vivify_465
    $P1263 = root_new ['parrot';'ResizablePMCArray']
  vivify_465:
    $P1263."push"("\"")
.annotate 'line', 329
    find_lex $P1264, "@args"
    unless_null $P1264, vivify_466
    $P1264 = root_new ['parrot';'ResizablePMCArray']
  vivify_466:
    join $S100, "", $P1264
    die $S100
.annotate 'line', 321
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "peek_delimiters" :anon :subid("107_1315150096.049") :outer("11_1315150096.049")
    .param pmc param_1266
    .param pmc param_1267
    .param pmc param_1268
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 342
    .lex "self", param_1266
    .lex "$target", param_1267
    .lex "$pos", param_1268
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
.sub "quote_EXPR" :anon :subid("108_1315150096.049") :outer("11_1315150096.049")
    .param pmc param_1270
    .param pmc param_1271 :slurpy
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 404
    .lex "self", param_1270
    .lex "@args", param_1271
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
.sub "quotemod_check"  :subid("109_1315150096.049") :outer("11_1315150096.049")
    .param pmc param_1273
    .param pmc param_1274
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 475
    .lex "self", param_1273
    .lex "$mod", param_1274
    find_lex $P103, "$mod"
    unless_null $P103, vivify_467
    new $P103, "Undef"
  vivify_467:
    find_dynamic_lex $P106, "%*QUOTEMOD"
    unless_null $P106, vivify_468
    get_hll_global $P104, "GLOBAL"
    get_who $P105, $P104
    set $P106, $P105["%QUOTEMOD"]
    unless_null $P106, vivify_469
    die "Contextual %*QUOTEMOD not found"
  vivify_469:
  vivify_468:
    set $P107, $P106[$P103]
    unless_null $P107, vivify_470
    new $P107, "Undef"
  vivify_470:
    .return ($P107)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "starter" :anon :subid("110_1315150096.049") :outer("11_1315150096.049")
    .param pmc param_1276
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 479
    .lex "self", param_1276
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
.sub "stopper" :anon :subid("111_1315150096.049") :outer("11_1315150096.049")
    .param pmc param_1278
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 502
    .lex "self", param_1278
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
.sub "split_words"  :subid("112_1315150096.049") :outer("11_1315150096.049")
    .param pmc param_1280
    .param pmc param_1281
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 525
    .lex "self", param_1280
    .lex "$words", param_1281
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
.sub "EXPR" :anon :subid("113_1315150096.049") :outer("11_1315150096.049")
    .param pmc param_1283
    .param pmc param_1284 :optional
    .param int has_param_1284 :opt_flag
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 557
    .lex "self", param_1283
    if has_param_1284, optparam_471
    new $P103, "String"
    assign $P103, ""
    set param_1284, $P103
  optparam_471:
    .lex "$preclim", param_1284
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
.sub "EXPR_reduce" :anon :subid("114_1315150096.049") :outer("11_1315150096.049")
    .param pmc param_1286
    .param pmc param_1287
    .param pmc param_1288
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 731
    .lex "self", param_1286
    .lex "$termstack", param_1287
    .lex "$opstack", param_1288
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
.sub "ternary" :anon :subid("115_1315150096.049") :outer("11_1315150096.049")
    .param pmc param_1290
    .param pmc param_1291
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 809
    .lex "self", param_1290
    .lex "$match", param_1291
.annotate 'line', 810
    new $P103, "Float"
    assign $P103, 1
    set $I100, $P103
    find_lex $P1292, "$match"
    unless_null $P1292, vivify_472
    $P1292 = root_new ['parrot';'ResizablePMCArray']
  vivify_472:
    set $P104, $P1292[$I100]
    unless_null $P104, vivify_473
    new $P104, "Undef"
  vivify_473:
    new $P105, "Float"
    assign $P105, 2
    set $I101, $P105
    find_lex $P1293, "$match"
    unless_null $P1293, vivify_474
    $P1293 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$match", $P1293
  vivify_474:
    set $P1293[$I101], $P104
.annotate 'line', 811
    find_lex $P1294, "$match"
    unless_null $P1294, vivify_475
    $P1294 = root_new ['parrot';'Hash']
  vivify_475:
    set $P1295, $P1294["infix"]
    unless_null $P1295, vivify_476
    $P1295 = root_new ['parrot';'Hash']
  vivify_476:
    set $P103, $P1295["EXPR"]
    unless_null $P103, vivify_477
    new $P103, "Undef"
  vivify_477:
    new $P104, "Float"
    assign $P104, 1
    set $I100, $P104
    find_lex $P1296, "$match"
    unless_null $P1296, vivify_478
    $P1296 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$match", $P1296
  vivify_478:
    set $P1296[$I100], $P103
.annotate 'line', 809
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "MARKER" :anon :subid("116_1315150096.049") :outer("11_1315150096.049")
    .param pmc param_1298
    .param pmc param_1299
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 814
    .lex "self", param_1298
    .lex "$markname", param_1299
.annotate 'line', 815
    new $P103, "Undef"
    set $P1300, $P103
    .lex "$pos", $P1300
.annotate 'line', 817
    $P1302 = root_new ['parrot';'Hash']
    set $P1301, $P1302
    .lex "%markhash", $P1301
.annotate 'line', 815
    find_lex $P104, "self"
    $P105 = $P104."pos"()
    store_lex "$pos", $P105
.annotate 'line', 816
    find_lex $P104, "self"
    find_lex $P105, "$markname"
    unless_null $P105, vivify_479
    new $P105, "Undef"
  vivify_479:
    find_lex $P106, "$pos"
    unless_null $P106, vivify_480
    new $P106, "Undef"
  vivify_480:
    $P104."!cursor_debug"("START", "MARKER name=", $P105, ", pos=", $P106)
.annotate 'line', 817

            $P1303 = get_global '%!MARKHASH'
            unless null $P1303 goto have_markhash
            $P1303 = new ['Hash']
            set_global '%!MARKHASH', $P1303
          have_markhash:
        
    store_lex "%markhash", $P1303
.annotate 'line', 824
    find_lex $P104, "$pos"
    unless_null $P104, vivify_481
    new $P104, "Undef"
  vivify_481:
    find_lex $P105, "$markname"
    unless_null $P105, vivify_482
    new $P105, "Undef"
  vivify_482:
    find_lex $P1304, "%markhash"
    unless_null $P1304, vivify_483
    $P1304 = root_new ['parrot';'Hash']
    store_lex "%markhash", $P1304
  vivify_483:
    set $P1304[$P105], $P104
.annotate 'line', 825
    find_lex $P104, "self"
    $P104."!cursor_debug"("PASS", "MARKER")
.annotate 'line', 814
    .return (1)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "MARKED" :anon :subid("117_1315150096.049") :outer("11_1315150096.049")
    .param pmc param_1306
    .param pmc param_1307
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 829
    .lex "self", param_1306
    .lex "$markname", param_1307
.annotate 'line', 830
    find_lex $P103, "self"
    find_lex $P104, "$markname"
    unless_null $P104, vivify_484
    new $P104, "Undef"
  vivify_484:
    $P103."!cursor_debug"("START", "MARKED name=", $P104)
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
.sub "LANG" :anon :subid("118_1315150096.049") :outer("11_1315150096.049")
    .param pmc param_1309
    .param pmc param_1310
    .param pmc param_1311
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 849
    .lex "self", param_1309
    .lex "$lang", param_1310
    .lex "$regex", param_1311
.annotate 'line', 850
    new $P103, "Undef"
    set $P1312, $P103
    .lex "$lang_cursor", $P1312
.annotate 'line', 851
    new $P104, "Undef"
    set $P1313, $P104
    .lex "$*ACTIONS", $P1313
.annotate 'line', 852
    new $P105, "Undef"
    set $P1314, $P105
    .lex "$cur", $P1314
.annotate 'line', 850
    find_lex $P106, "$lang"
    unless_null $P106, vivify_485
    new $P106, "Undef"
  vivify_485:
    find_dynamic_lex $P109, "%*LANG"
    unless_null $P109, vivify_486
    get_hll_global $P107, "GLOBAL"
    get_who $P108, $P107
    set $P109, $P108["%LANG"]
    unless_null $P109, vivify_487
    die "Contextual %*LANG not found"
  vivify_487:
  vivify_486:
    set $P110, $P109[$P106]
    unless_null $P110, vivify_488
    new $P110, "Undef"
  vivify_488:
    store_lex "$lang_cursor", $P110
.annotate 'line', 851
    find_lex $P106, "$lang"
    unless_null $P106, vivify_489
    new $P106, "Undef"
  vivify_489:
    concat $P107, $P106, "-actions"
    find_dynamic_lex $P110, "%*LANG"
    unless_null $P110, vivify_490
    get_hll_global $P108, "GLOBAL"
    get_who $P109, $P108
    set $P110, $P109["%LANG"]
    unless_null $P110, vivify_491
    die "Contextual %*LANG not found"
  vivify_491:
  vivify_490:
    set $P111, $P110[$P107]
    unless_null $P111, vivify_492
    new $P111, "Undef"
  vivify_492:
    store_lex "$*ACTIONS", $P111
.annotate 'line', 852

            .local pmc self
            .local int pos
            self = find_lex 'self'
            $P0 = find_lex '$lang_cursor'
            ($P1315, pos) = self.'!cursor_start'($P0)
            $P1315.'!cursor_pos'(pos)
        
    store_lex "$cur", $P1315
.annotate 'line', 860
    find_lex $P106, "$cur"
    unless_null $P106, vivify_493
    new $P106, "Undef"
  vivify_493:
    find_lex $P107, "$regex"
    unless_null $P107, vivify_494
    new $P107, "Undef"
  vivify_494:
    set $S100, $P107
    $P108 = $P106.$S100()
.annotate 'line', 849
    .return ($P108)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1317"  :subid("119_1315150096.049") :outer("10_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 865
    .const 'Sub' $P1558 = "163_1315150096.049" 
    capture_lex $P1558
    .const 'Sub' $P1549 = "161_1315150096.049" 
    capture_lex $P1549
    .const 'Sub' $P1541 = "160_1315150096.049" 
    capture_lex $P1541
    .const 'Sub' $P1534 = "159_1315150096.049" 
    capture_lex $P1534
    .const 'Sub' $P1531 = "158_1315150096.049" 
    capture_lex $P1531
    .const 'Sub' $P1527 = "157_1315150096.049" 
    capture_lex $P1527
    .const 'Sub' $P1519 = "156_1315150096.049" 
    capture_lex $P1519
    .const 'Sub' $P1511 = "155_1315150096.049" 
    capture_lex $P1511
    .const 'Sub' $P1508 = "154_1315150096.049" 
    capture_lex $P1508
    .const 'Sub' $P1505 = "153_1315150096.049" 
    capture_lex $P1505
    .const 'Sub' $P1502 = "152_1315150096.049" 
    capture_lex $P1502
    .const 'Sub' $P1499 = "151_1315150096.049" 
    capture_lex $P1499
    .const 'Sub' $P1496 = "150_1315150096.049" 
    capture_lex $P1496
    .const 'Sub' $P1493 = "149_1315150096.049" 
    capture_lex $P1493
    .const 'Sub' $P1489 = "148_1315150096.049" 
    capture_lex $P1489
    .const 'Sub' $P1486 = "147_1315150096.049" 
    capture_lex $P1486
    .const 'Sub' $P1480 = "146_1315150096.049" 
    capture_lex $P1480
    .const 'Sub' $P1453 = "144_1315150096.049" 
    capture_lex $P1453
    .const 'Sub' $P1433 = "141_1315150096.049" 
    capture_lex $P1433
    .const 'Sub' $P1430 = "140_1315150096.049" 
    capture_lex $P1430
    .const 'Sub' $P1427 = "139_1315150096.049" 
    capture_lex $P1427
    .const 'Sub' $P1424 = "138_1315150096.049" 
    capture_lex $P1424
    .const 'Sub' $P1421 = "137_1315150096.049" 
    capture_lex $P1421
    .const 'Sub' $P1418 = "136_1315150096.049" 
    capture_lex $P1418
    .const 'Sub' $P1414 = "135_1315150096.049" 
    capture_lex $P1414
    .const 'Sub' $P1410 = "134_1315150096.049" 
    capture_lex $P1410
    .const 'Sub' $P1407 = "133_1315150096.049" 
    capture_lex $P1407
    .const 'Sub' $P1403 = "132_1315150096.049" 
    capture_lex $P1403
    .const 'Sub' $P1399 = "131_1315150096.049" 
    capture_lex $P1399
    .const 'Sub' $P1358 = "128_1315150096.049" 
    capture_lex $P1358
    .const 'Sub' $P1342 = "125_1315150096.049" 
    capture_lex $P1342
    .const 'Sub' $P1340 = "124_1315150096.049" 
    capture_lex $P1340
    .const 'Sub' $P1327 = "121_1315150096.049" 
    capture_lex $P1327
    .const 'Sub' $P1320 = "120_1315150096.049" 
    capture_lex $P1320
.annotate 'line', 866
    .const 'Sub' $P1320 = "120_1315150096.049" 
    newclosure $P1325, $P1320
    set $P1319, $P1325
    .lex "string_to_int", $P1319
.annotate 'line', 865
    find_lex $P102, "string_to_int"
    find_lex $P103, "$?PACKAGE"
    get_who $P105, $P103
    set $P105["string_to_int"], $P102
.annotate 'line', 873
    .const 'Sub' $P1327 = "121_1315150096.049" 
    newclosure $P1337, $P1327
    set $P1326, $P1337
    .lex "ints_to_string", $P1326
.annotate 'line', 865
    find_lex $P107, "ints_to_string"
    find_lex $P108, "$?PACKAGE"
    get_who $P109, $P108
    set $P109["ints_to_string"], $P107
    .lex "$?PACKAGE", $P1338
    .lex "$?CLASS", $P1339
    find_lex $P110, "string_to_int"
    find_lex $P110, "ints_to_string"
.annotate 'line', 1044
    .const 'Sub' $P1558 = "163_1315150096.049" 
    newclosure $P1564, $P1558
.annotate 'line', 865
    .return ($P1564)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "string_to_int"  :subid("120_1315150096.049") :outer("119_1315150096.049")
    .param pmc param_1321
    .param pmc param_1322
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 866
    .lex "$src", param_1321
    .lex "$base", param_1322
.annotate 'line', 867
    new $P101, "Undef"
    set $P1323, $P101
    .lex "$res", $P1323
    find_lex $P102, "$base"
    unless_null $P102, vivify_495
    new $P102, "Undef"
  vivify_495:
    set $I100, $P102
    find_lex $P103, "$src"
    unless_null $P103, vivify_496
    new $P103, "Undef"
  vivify_496:
    set $S100, $P103
    new $P104, "Float"
    assign $P104, 0
    set $I101, $P104
    new $P105, "Float"
    assign $P105, 2
    set $I102, $P105
    nqp_radix $P106, $I100, $S100, $I101, $I102
    store_lex "$res", $P106
.annotate 'line', 869
    new $P103, "Float"
    assign $P103, 2
    set $S100, $P103
    find_lex $P102, "$res"
    unless_null $P102, vivify_497
    new $P102, "Undef"
  vivify_497:
    set $P104, $P102[$S100]
    set $N100, $P104
    find_lex $P105, "$src"
    unless_null $P105, vivify_498
    new $P105, "Undef"
  vivify_498:
    set $S101, $P105
    length $I100, $S101
    set $N101, $I100
    iseq $I101, $N100, $N101
    if $I101, unless_1324_end
.annotate 'line', 868
    find_lex $P106, "$src"
    unless_null $P106, vivify_499
    new $P106, "Undef"
  vivify_499:
    $P107 = $P106."CURSOR"()
    new $P108, 'String'
    set $P108, "'"
    find_lex $P109, "$src"
    unless_null $P109, vivify_500
    new $P109, "Undef"
  vivify_500:
    concat $P110, $P108, $P109
    concat $P111, $P110, "' is not a valid number"
    $P107."panic"($P111)
  unless_1324_end:
.annotate 'line', 870
    new $P103, "Float"
    assign $P103, 0
    set $S100, $P103
    find_lex $P102, "$res"
    unless_null $P102, vivify_501
    new $P102, "Undef"
  vivify_501:
    set $P104, $P102[$S100]
.annotate 'line', 866
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "ints_to_string"  :subid("121_1315150096.049") :outer("119_1315150096.049")
    .param pmc param_1328
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 873
    .const 'Sub' $P1331 = "122_1315150096.049" 
    capture_lex $P1331
    .lex "$ints", param_1328
.annotate 'line', 874
    find_lex $P107, "$ints"
    unless_null $P107, vivify_502
    new $P107, "Undef"
  vivify_502:
    does $I100, $P107, "array"
    if $I100, if_1329
.annotate 'line', 881
    find_lex $P111, "$ints"
    unless_null $P111, vivify_503
    new $P111, "Undef"
  vivify_503:
    $I101 = $P111."ast"()
    chr $S100, $I101
    new $P112, 'String'
    set $P112, $S100
.annotate 'line', 880
    set $P106, $P112
.annotate 'line', 874
    goto if_1329_end
  if_1329:
    .const 'Sub' $P1331 = "122_1315150096.049" 
    capture_lex $P1331
    $P110 = $P1331()
    set $P106, $P110
  if_1329_end:
.annotate 'line', 873
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block1330"  :anon :subid("122_1315150096.049") :outer("121_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 874
    .const 'Sub' $P1334 = "123_1315150096.049" 
    capture_lex $P1334
.annotate 'line', 875
    new $P108, "Undef"
    set $P1332, $P108
    .lex "$result", $P1332
    new $P109, "String"
    assign $P109, ""
    store_lex "$result", $P109
.annotate 'line', 876
    find_lex $P110, "$ints"
    unless_null $P110, vivify_504
    new $P110, "Undef"
  vivify_504:
    defined $I101, $P110
    unless $I101, for_undef_505
    iter $P109, $P110
    new $P112, 'ExceptionHandler'
    set_label $P112, loop1336_handler
    $P112."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P112
  loop1336_test:
    unless $P109, loop1336_done
    shift $P111, $P109
  loop1336_redo:
    .const 'Sub' $P1334 = "123_1315150096.049" 
    capture_lex $P1334
    $P1334($P111)
  loop1336_next:
    goto loop1336_test
  loop1336_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P113, exception, 'type'
    eq $P113, .CONTROL_LOOP_NEXT, loop1336_next
    eq $P113, .CONTROL_LOOP_REDO, loop1336_redo
  loop1336_done:
    pop_eh 
  for_undef_505:
.annotate 'line', 874
    find_lex $P109, "$result"
    unless_null $P109, vivify_508
    new $P109, "Undef"
  vivify_508:
    .return ($P109)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1333"  :anon :subid("123_1315150096.049") :outer("122_1315150096.049")
    .param pmc param_1335
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 876
    .lex "$_", param_1335
.annotate 'line', 877
    find_lex $P112, "$result"
    unless_null $P112, vivify_506
    new $P112, "Undef"
  vivify_506:
    find_lex $P113, "$_"
    unless_null $P113, vivify_507
    new $P113, "Undef"
  vivify_507:
    $I102 = $P113."ast"()
    chr $S100, $I102
    concat $P114, $P112, $S100
    store_lex "$result", $P114
.annotate 'line', 876
    .return ($P114)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "CTXSAVE" :anon :subid("124_1315150096.049") :outer("119_1315150096.049")
    .param pmc param_1341
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 886
    .lex "self", param_1341
.annotate 'line', 887
    get_hll_global $P110, "GLOBAL"
    nqp_get_package_through_who $P111, $P110, "PAST"
    get_who $P112, $P111
    set $P113, $P112["Op"]
.annotate 'line', 893
    new $P114, "ResizablePMCArray"
    push $P114, "    $P0 = find_dynamic_lex \"$*CTXSAVE\""
    push $P114, "    if null $P0 goto ctxsave_done"
    push $P114, "    $I0 = can $P0, \"ctxsave\""
    push $P114, "    unless $I0 goto ctxsave_done"
    push $P114, "    $P0.\"ctxsave\"()"
    push $P114, "  ctxsave_done:"
.annotate 'line', 887
    $P115 = $P113."new"($P114 :named("inline"))
.annotate 'line', 886
    .return ($P115)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "SET_BLOCK_OUTER_CTX" :anon :subid("125_1315150096.049") :outer("119_1315150096.049")
    .param pmc param_1343
    .param pmc param_1344
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 900
    .const 'Sub' $P1349 = "126_1315150096.049" 
    capture_lex $P1349
    .lex "self", param_1343
    .lex "$block", param_1344
.annotate 'line', 901
    new $P110, "Undef"
    set $P1345, $P110
    .lex "$outer_ctx", $P1345
    find_dynamic_lex $P113, "%*COMPILING"
    unless_null $P113, vivify_509
    get_hll_global $P111, "GLOBAL"
    get_who $P112, $P111
    set $P113, $P112["%COMPILING"]
    unless_null $P113, vivify_510
    die "Contextual %*COMPILING not found"
  vivify_510:
  vivify_509:
    set $P1346, $P113["%?OPTIONS"]
    unless_null $P1346, vivify_511
    $P1346 = root_new ['parrot';'Hash']
  vivify_511:
    set $P114, $P1346["outer_ctx"]
    unless_null $P114, vivify_512
    new $P114, "Undef"
  vivify_512:
    store_lex "$outer_ctx", $P114
.annotate 'line', 902
    find_lex $P112, "$outer_ctx"
    unless_null $P112, vivify_513
    new $P112, "Undef"
  vivify_513:
    defined $I100, $P112
    if $I100, if_1347
    new $P111, 'Integer'
    set $P111, $I100
    goto if_1347_end
  if_1347:
    .const 'Sub' $P1349 = "126_1315150096.049" 
    capture_lex $P1349
    $P114 = $P1349()
    set $P111, $P114
  if_1347_end:
.annotate 'line', 900
    .return ($P111)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block1348"  :anon :subid("126_1315150096.049") :outer("125_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 902
    .const 'Sub' $P1355 = "127_1315150096.049" 
    capture_lex $P1355
.annotate 'line', 903
    $P1351 = root_new ['parrot';'ResizablePMCArray']
    set $P1350, $P1351
    .lex "@ns", $P1350
    find_lex $P113, "$outer_ctx"
    unless_null $P113, vivify_514
    new $P113, "Undef"
  vivify_514:
    getattribute $P114, $P113, "current_namespace"
    $P115 = $P114."get_name"()
    store_lex "@ns", $P115
.annotate 'line', 904
    find_lex $P1352, "@ns"
    unless_null $P1352, vivify_515
    $P1352 = root_new ['parrot';'ResizablePMCArray']
  vivify_515:
    $P1352."shift"()
.annotate 'line', 905
    find_lex $P113, "$block"
    unless_null $P113, vivify_516
    new $P113, "Undef"
  vivify_516:
    find_lex $P1353, "@ns"
    unless_null $P1353, vivify_517
    $P1353 = root_new ['parrot';'ResizablePMCArray']
  vivify_517:
    $P113."namespace"($P1353)
.annotate 'line', 906
    find_lex $P114, "$outer_ctx"
    unless_null $P114, vivify_518
    new $P114, "Undef"
  vivify_518:
    $P115 = $P114."lexpad_full"()
    defined $I101, $P115
    unless $I101, for_undef_519
    iter $P113, $P115
    new $P117, 'ExceptionHandler'
    set_label $P117, loop1357_handler
    $P117."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P117
  loop1357_test:
    unless $P113, loop1357_done
    shift $P116, $P113
  loop1357_redo:
    .const 'Sub' $P1355 = "127_1315150096.049" 
    capture_lex $P1355
    $P1355($P116)
  loop1357_next:
    goto loop1357_test
  loop1357_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P118, exception, 'type'
    eq $P118, .CONTROL_LOOP_NEXT, loop1357_next
    eq $P118, .CONTROL_LOOP_REDO, loop1357_redo
  loop1357_done:
    pop_eh 
  for_undef_519:
.annotate 'line', 902
    .return ($P113)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1354"  :anon :subid("127_1315150096.049") :outer("126_1315150096.049")
    .param pmc param_1356
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 906
    .lex "$_", param_1356
.annotate 'line', 907
    find_lex $P117, "$block"
    unless_null $P117, vivify_520
    new $P117, "Undef"
  vivify_520:
    find_lex $P118, "$_"
    unless_null $P118, vivify_521
    new $P118, "Undef"
  vivify_521:
    $P119 = $P118."key"()
    find_lex $P120, "$_"
    unless_null $P120, vivify_522
    new $P120, "Undef"
  vivify_522:
    $P121 = $P120."value"()
    $P122 = $P117."symbol"($P119, "lexical" :named("scope"), $P121 :named("value"))
.annotate 'line', 906
    .return ($P122)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "EXPR" :anon :subid("128_1315150096.049") :outer("119_1315150096.049")
    .param pmc param_1361
    .param pmc param_1362
    .param pmc param_1363 :optional
    .param int has_param_1363 :opt_flag
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 913
    .const 'Sub' $P1395 = "130_1315150096.049" 
    capture_lex $P1395
    .const 'Sub' $P1387 = "129_1315150096.049" 
    capture_lex $P1387
    new $P1360, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1360, control_1359
    push_eh $P1360
    .lex "self", param_1361
    .lex "$/", param_1362
    if has_param_1363, optparam_523
    new $P110, "Undef"
    set param_1363, $P110
  optparam_523:
    .lex "$key", param_1363
.annotate 'line', 915
    new $P111, "Undef"
    set $P1364, $P111
    .lex "$past", $P1364
.annotate 'line', 914
    find_lex $P112, "$key"
    unless_null $P112, vivify_524
    new $P112, "Undef"
  vivify_524:
    if $P112, unless_1365_end
    new $P113, "Exception"
    set $P113['type'], .CONTROL_RETURN
    new $P114, "Float"
    assign $P114, 0
    setattribute $P113, 'payload', $P114
    throw $P113
  unless_1365_end:
.annotate 'line', 915
    find_lex $P112, "$/"
    unless_null $P112, vivify_525
    new $P112, "Undef"
  vivify_525:
    $P113 = $P112."ast"()
    set $P1366, $P113
    defined $I1368, $P1366
    if $I1368, default_1367
    find_lex $P1369, "$/"
    unless_null $P1369, vivify_526
    $P1369 = root_new ['parrot';'Hash']
  vivify_526:
    set $P114, $P1369["OPER"]
    unless_null $P114, vivify_527
    new $P114, "Undef"
  vivify_527:
    $P115 = $P114."ast"()
    set $P1366, $P115
  default_1367:
    store_lex "$past", $P1366
.annotate 'line', 916
    find_lex $P112, "$past"
    unless_null $P112, vivify_528
    new $P112, "Undef"
  vivify_528:
    if $P112, unless_1370_end
.annotate 'line', 917
    get_hll_global $P113, "GLOBAL"
    nqp_get_package_through_who $P114, $P113, "PAST"
    get_who $P115, $P114
    set $P116, $P115["Op"]
    find_lex $P117, "$/"
    unless_null $P117, vivify_529
    new $P117, "Undef"
  vivify_529:
    $P118 = $P116."new"($P117 :named("node"))
    store_lex "$past", $P118
.annotate 'line', 918
    find_lex $P1372, "$/"
    unless_null $P1372, vivify_530
    $P1372 = root_new ['parrot';'Hash']
  vivify_530:
    set $P1373, $P1372["OPER"]
    unless_null $P1373, vivify_531
    $P1373 = root_new ['parrot';'Hash']
  vivify_531:
    set $P1374, $P1373["O"]
    unless_null $P1374, vivify_532
    $P1374 = root_new ['parrot';'Hash']
  vivify_532:
    set $P113, $P1374["pasttype"]
    unless_null $P113, vivify_533
    new $P113, "Undef"
  vivify_533:
    if $P113, if_1371
.annotate 'line', 919
    find_lex $P1379, "$/"
    unless_null $P1379, vivify_534
    $P1379 = root_new ['parrot';'Hash']
  vivify_534:
    set $P1380, $P1379["OPER"]
    unless_null $P1380, vivify_535
    $P1380 = root_new ['parrot';'Hash']
  vivify_535:
    set $P1381, $P1380["O"]
    unless_null $P1381, vivify_536
    $P1381 = root_new ['parrot';'Hash']
  vivify_536:
    set $P114, $P1381["pirop"]
    unless_null $P114, vivify_537
    new $P114, "Undef"
  vivify_537:
    unless $P114, if_1378_end
    find_lex $P115, "$past"
    unless_null $P115, vivify_538
    new $P115, "Undef"
  vivify_538:
    find_lex $P1382, "$/"
    unless_null $P1382, vivify_539
    $P1382 = root_new ['parrot';'Hash']
  vivify_539:
    set $P1383, $P1382["OPER"]
    unless_null $P1383, vivify_540
    $P1383 = root_new ['parrot';'Hash']
  vivify_540:
    set $P1384, $P1383["O"]
    unless_null $P1384, vivify_541
    $P1384 = root_new ['parrot';'Hash']
  vivify_541:
    set $P116, $P1384["pirop"]
    unless_null $P116, vivify_542
    new $P116, "Undef"
  vivify_542:
    set $S100, $P116
    $P115."pirop"($S100)
  if_1378_end:
    goto if_1371_end
  if_1371:
.annotate 'line', 918
    find_lex $P114, "$past"
    unless_null $P114, vivify_543
    new $P114, "Undef"
  vivify_543:
    find_lex $P1375, "$/"
    unless_null $P1375, vivify_544
    $P1375 = root_new ['parrot';'Hash']
  vivify_544:
    set $P1376, $P1375["OPER"]
    unless_null $P1376, vivify_545
    $P1376 = root_new ['parrot';'Hash']
  vivify_545:
    set $P1377, $P1376["O"]
    unless_null $P1377, vivify_546
    $P1377 = root_new ['parrot';'Hash']
  vivify_546:
    set $P115, $P1377["pasttype"]
    unless_null $P115, vivify_547
    new $P115, "Undef"
  vivify_547:
    set $S100, $P115
    $P114."pasttype"($S100)
  if_1371_end:
.annotate 'line', 920
    find_lex $P113, "$past"
    unless_null $P113, vivify_548
    new $P113, "Undef"
  vivify_548:
    $P114 = $P113."name"()
    if $P114, unless_1385_end
    .const 'Sub' $P1387 = "129_1315150096.049" 
    capture_lex $P1387
    $P1387()
  unless_1385_end:
  unless_1370_end:
.annotate 'line', 926
    find_lex $P112, "$key"
    unless_null $P112, vivify_556
    new $P112, "Undef"
  vivify_556:
    set $S100, $P112
    iseq $I100, $S100, "POSTFIX"
    if $I100, if_1392
.annotate 'line', 928
    find_lex $P114, "$/"
    unless_null $P114, vivify_557
    new $P114, "Undef"
  vivify_557:
    $P115 = $P114."list"()
    defined $I101, $P115
    unless $I101, for_undef_558
    iter $P113, $P115
    new $P118, 'ExceptionHandler'
    set_label $P118, loop1398_handler
    $P118."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P118
  loop1398_test:
    unless $P113, loop1398_done
    shift $P116, $P113
  loop1398_redo:
    .const 'Sub' $P1395 = "130_1315150096.049" 
    capture_lex $P1395
    $P1395($P116)
  loop1398_next:
    goto loop1398_test
  loop1398_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P119, exception, 'type'
    eq $P119, .CONTROL_LOOP_NEXT, loop1398_next
    eq $P119, .CONTROL_LOOP_REDO, loop1398_redo
  loop1398_done:
    pop_eh 
  for_undef_558:
.annotate 'line', 927
    goto if_1392_end
  if_1392:
.annotate 'line', 926
    find_lex $P113, "$past"
    unless_null $P113, vivify_562
    new $P113, "Undef"
  vivify_562:
    new $P114, "Float"
    assign $P114, 0
    set $I101, $P114
    find_lex $P1393, "$/"
    unless_null $P1393, vivify_563
    $P1393 = root_new ['parrot';'ResizablePMCArray']
  vivify_563:
    set $P115, $P1393[$I101]
    unless_null $P115, vivify_564
    new $P115, "Undef"
  vivify_564:
    $P116 = $P115."ast"()
    $P113."unshift"($P116)
  if_1392_end:
.annotate 'line', 930
    find_lex $P112, "$/"
    find_lex $P113, "$past"
    unless_null $P113, vivify_565
    new $P113, "Undef"
  vivify_565:
    $P114 = $P112."!make"($P113)
.annotate 'line', 913
    .return ($P114)
  control_1359:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P112, exception, "payload"
    .return ($P112)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1386"  :anon :subid("129_1315150096.049") :outer("128_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 922
    new $P115, "Undef"
    set $P1388, $P115
    .lex "$name", $P1388
.annotate 'line', 921
    find_lex $P116, "$key"
    unless_null $P116, vivify_549
    new $P116, "Undef"
  vivify_549:
    set $S100, $P116
    iseq $I100, $S100, "LIST"
    unless $I100, if_1389_end
    new $P117, "String"
    assign $P117, "infix"
    store_lex "$key", $P117
  if_1389_end:
.annotate 'line', 922
    find_lex $P116, "$key"
    unless_null $P116, vivify_550
    new $P116, "Undef"
  vivify_550:
    set $S100, $P116
    downcase $S101, $S100
    new $P117, 'String'
    set $P117, $S101
    concat $P118, $P117, ":<"
    find_lex $P1390, "$/"
    unless_null $P1390, vivify_551
    $P1390 = root_new ['parrot';'Hash']
  vivify_551:
    set $P1391, $P1390["OPER"]
    unless_null $P1391, vivify_552
    $P1391 = root_new ['parrot';'Hash']
  vivify_552:
    set $P119, $P1391["sym"]
    unless_null $P119, vivify_553
    new $P119, "Undef"
  vivify_553:
    concat $P120, $P118, $P119
    concat $P121, $P120, ">"
    store_lex "$name", $P121
.annotate 'line', 923
    find_lex $P116, "$past"
    unless_null $P116, vivify_554
    new $P116, "Undef"
  vivify_554:
    new $P117, "String"
    assign $P117, "&"
    find_lex $P118, "$name"
    unless_null $P118, vivify_555
    new $P118, "Undef"
  vivify_555:
    concat $P119, $P117, $P118
    $P120 = $P116."name"($P119)
.annotate 'line', 920
    .return ($P120)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1394"  :anon :subid("130_1315150096.049") :outer("128_1315150096.049")
    .param pmc param_1396
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 928
    .lex "$_", param_1396
    find_lex $P118, "$_"
    unless_null $P118, vivify_559
    new $P118, "Undef"
  vivify_559:
    $P119 = $P118."ast"()
    defined $I102, $P119
    if $I102, if_1397
    new $P117, 'Integer'
    set $P117, $I102
    goto if_1397_end
  if_1397:
    find_lex $P120, "$past"
    unless_null $P120, vivify_560
    new $P120, "Undef"
  vivify_560:
    find_lex $P121, "$_"
    unless_null $P121, vivify_561
    new $P121, "Undef"
  vivify_561:
    $P122 = $P121."ast"()
    $P123 = $P120."push"($P122)
    set $P117, $P123
  if_1397_end:
    .return ($P117)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "term:sym<circumfix>" :anon :subid("131_1315150096.049") :outer("119_1315150096.049")
    .param pmc param_1400
    .param pmc param_1401
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 933
    .lex "self", param_1400
    .lex "$/", param_1401
    find_lex $P110, "$/"
    find_lex $P1402, "$/"
    unless_null $P1402, vivify_566
    $P1402 = root_new ['parrot';'Hash']
  vivify_566:
    set $P111, $P1402["circumfix"]
    unless_null $P111, vivify_567
    new $P111, "Undef"
  vivify_567:
    $P112 = $P111."ast"()
    $P113 = $P110."!make"($P112)
    .return ($P113)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "termish" :anon :subid("132_1315150096.049") :outer("119_1315150096.049")
    .param pmc param_1404
    .param pmc param_1405
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 935
    .lex "self", param_1404
    .lex "$/", param_1405
    find_lex $P110, "$/"
    find_lex $P1406, "$/"
    unless_null $P1406, vivify_568
    $P1406 = root_new ['parrot';'Hash']
  vivify_568:
    set $P111, $P1406["term"]
    unless_null $P111, vivify_569
    new $P111, "Undef"
  vivify_569:
    $P112 = $P111."ast"()
    $P113 = $P110."!make"($P112)
    .return ($P113)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "nullterm" :anon :subid("133_1315150096.049") :outer("119_1315150096.049")
    .param pmc param_1408
    .param pmc param_1409
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 936
    .lex "self", param_1408
    .lex "$/", param_1409
    find_lex $P110, "$/"
    new $P111, "Undef"
    $P112 = $P110."!make"($P111)
    .return ($P112)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "nullterm_alt" :anon :subid("134_1315150096.049") :outer("119_1315150096.049")
    .param pmc param_1411
    .param pmc param_1412
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 937
    .lex "self", param_1411
    .lex "$/", param_1412
    find_lex $P110, "$/"
    find_lex $P1413, "$/"
    unless_null $P1413, vivify_570
    $P1413 = root_new ['parrot';'Hash']
  vivify_570:
    set $P111, $P1413["term"]
    unless_null $P111, vivify_571
    new $P111, "Undef"
  vivify_571:
    $P112 = $P111."ast"()
    $P113 = $P110."!make"($P112)
    .return ($P113)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "integer" :anon :subid("135_1315150096.049") :outer("119_1315150096.049")
    .param pmc param_1415
    .param pmc param_1416
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 939
    .lex "self", param_1415
    .lex "$/", param_1416
    find_lex $P110, "$/"
    find_lex $P1417, "$/"
    unless_null $P1417, vivify_572
    $P1417 = root_new ['parrot';'Hash']
  vivify_572:
    set $P111, $P1417["VALUE"]
    unless_null $P111, vivify_573
    new $P111, "Undef"
  vivify_573:
    $P112 = $P111."ast"()
    $P113 = $P110."!make"($P112)
    .return ($P113)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "dec_number" :anon :subid("136_1315150096.049") :outer("119_1315150096.049")
    .param pmc param_1419
    .param pmc param_1420
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 941
    .lex "self", param_1419
    .lex "$/", param_1420
    find_lex $P110, "$/"
    find_lex $P111, "$/"
    unless_null $P111, vivify_574
    new $P111, "Undef"
  vivify_574:
    set $N100, $P111
    $P112 = $P110."!make"($N100)
    .return ($P112)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "decint" :anon :subid("137_1315150096.049") :outer("119_1315150096.049")
    .param pmc param_1422
    .param pmc param_1423
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 943
    .lex "self", param_1422
    .lex "$/", param_1423
    find_lex $P110, "$/"
    find_lex $P111, "$/"
    unless_null $P111, vivify_575
    new $P111, "Undef"
  vivify_575:
    $P112 = "string_to_int"($P111, 10)
    $P113 = $P110."!make"($P112)
    .return ($P113)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "hexint" :anon :subid("138_1315150096.049") :outer("119_1315150096.049")
    .param pmc param_1425
    .param pmc param_1426
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 944
    .lex "self", param_1425
    .lex "$/", param_1426
    find_lex $P110, "$/"
    find_lex $P111, "$/"
    unless_null $P111, vivify_576
    new $P111, "Undef"
  vivify_576:
    $P112 = "string_to_int"($P111, 16)
    $P113 = $P110."!make"($P112)
    .return ($P113)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "octint" :anon :subid("139_1315150096.049") :outer("119_1315150096.049")
    .param pmc param_1428
    .param pmc param_1429
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 945
    .lex "self", param_1428
    .lex "$/", param_1429
    find_lex $P110, "$/"
    find_lex $P111, "$/"
    unless_null $P111, vivify_577
    new $P111, "Undef"
  vivify_577:
    $P112 = "string_to_int"($P111, 8)
    $P113 = $P110."!make"($P112)
    .return ($P113)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "binint" :anon :subid("140_1315150096.049") :outer("119_1315150096.049")
    .param pmc param_1431
    .param pmc param_1432
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 946
    .lex "self", param_1431
    .lex "$/", param_1432
    find_lex $P110, "$/"
    find_lex $P111, "$/"
    unless_null $P111, vivify_578
    new $P111, "Undef"
  vivify_578:
    $P112 = "string_to_int"($P111, 2)
    $P113 = $P110."!make"($P112)
    .return ($P113)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_EXPR" :anon :subid("141_1315150096.049") :outer("119_1315150096.049")
    .param pmc param_1434
    .param pmc param_1435
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 948
    .const 'Sub' $P1441 = "142_1315150096.049" 
    capture_lex $P1441
    .lex "self", param_1434
    .lex "$/", param_1435
.annotate 'line', 949
    new $P110, "Undef"
    set $P1436, $P110
    .lex "$past", $P1436
    find_lex $P1437, "$/"
    unless_null $P1437, vivify_579
    $P1437 = root_new ['parrot';'Hash']
  vivify_579:
    set $P111, $P1437["quote_delimited"]
    unless_null $P111, vivify_580
    new $P111, "Undef"
  vivify_580:
    $P112 = $P111."ast"()
    store_lex "$past", $P112
.annotate 'line', 950
    find_lex $P111, "$/"
    unless_null $P111, vivify_581
    new $P111, "Undef"
  vivify_581:
    $P112 = $P111."CURSOR"()
    $P113 = $P112."quotemod_check"("w")
    unless $P113, if_1438_end
.annotate 'line', 951
    get_hll_global $P114, "GLOBAL"
    nqp_get_package_through_who $P115, $P114, "PAST"
    get_who $P116, $P115
    set $P117, $P116["Node"]
    find_lex $P118, "$past"
    unless_null $P118, vivify_582
    new $P118, "Undef"
  vivify_582:
    $P119 = $P117."ACCEPTS"($P118)
    if $P119, if_1439
.annotate 'line', 954
    .const 'Sub' $P1441 = "142_1315150096.049" 
    capture_lex $P1441
    $P1441()
    goto if_1439_end
  if_1439:
.annotate 'line', 952
    find_lex $P120, "$/"
    unless_null $P120, vivify_593
    new $P120, "Undef"
  vivify_593:
    $P121 = $P120."CURSOR"()
    $P121."panic"("Can't form :w list from non-constant strings (yet)")
  if_1439_end:
  if_1438_end:
.annotate 'line', 965
    get_hll_global $P111, "GLOBAL"
    nqp_get_package_through_who $P112, $P111, "PAST"
    get_who $P113, $P112
    set $P114, $P113["Node"]
    find_lex $P115, "$past"
    unless_null $P115, vivify_594
    new $P115, "Undef"
  vivify_594:
    $P116 = $P114."ACCEPTS"($P115)
    isfalse $I100, $P116
    unless $I100, if_1452_end
.annotate 'line', 966
    get_hll_global $P117, "GLOBAL"
    nqp_get_package_through_who $P118, $P117, "PAST"
    get_who $P119, $P118
    set $P120, $P119["Val"]
    find_lex $P121, "$past"
    unless_null $P121, vivify_595
    new $P121, "Undef"
  vivify_595:
    set $S100, $P121
    $P122 = $P120."new"($S100 :named("value"))
    store_lex "$past", $P122
  if_1452_end:
.annotate 'line', 968
    find_lex $P111, "$/"
    find_lex $P112, "$past"
    unless_null $P112, vivify_596
    new $P112, "Undef"
  vivify_596:
    $P113 = $P111."!make"($P112)
.annotate 'line', 948
    .return ($P113)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block1440"  :anon :subid("142_1315150096.049") :outer("141_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 954
    .const 'Sub' $P1448 = "143_1315150096.049" 
    capture_lex $P1448
.annotate 'line', 955
    $P1443 = root_new ['parrot';'ResizablePMCArray']
    set $P1442, $P1443
    .lex "@words", $P1442
    get_hll_global $P120, "GLOBAL"
    nqp_get_package_through_who $P121, $P120, "HLL"
    nqp_get_package_through_who $P122, $P121, "Grammar"
    get_who $P123, $P122
    set $P124, $P123["split_words"]
    find_lex $P125, "$/"
    unless_null $P125, vivify_583
    new $P125, "Undef"
  vivify_583:
    find_lex $P126, "$past"
    unless_null $P126, vivify_584
    new $P126, "Undef"
  vivify_584:
    $P127 = $P124($P125, $P126)
    store_lex "@words", $P127
.annotate 'line', 956
    find_lex $P1445, "@words"
    unless_null $P1445, vivify_585
    $P1445 = root_new ['parrot';'ResizablePMCArray']
  vivify_585:
    set $N100, $P1445
    set $N101, 1
    isne $I100, $N100, $N101
    if $I100, if_1444
.annotate 'line', 961
    new $P122, "Float"
    assign $P122, 0
    set $I101, $P122
    find_lex $P1451, "@words"
    unless_null $P1451, vivify_586
    $P1451 = root_new ['parrot';'ResizablePMCArray']
  vivify_586:
    set $P123, $P1451[$I101]
    unless_null $P123, vivify_587
    new $P123, "Undef"
  vivify_587:
    set $S100, $P123
    new $P124, 'String'
    set $P124, $S100
    store_lex "$past", $P124
.annotate 'line', 960
    set $P120, $P124
.annotate 'line', 956
    goto if_1444_end
  if_1444:
.annotate 'line', 957
    get_hll_global $P121, "GLOBAL"
    nqp_get_package_through_who $P122, $P121, "PAST"
    get_who $P123, $P122
    set $P124, $P123["Op"]
    find_lex $P125, "$/"
    unless_null $P125, vivify_588
    new $P125, "Undef"
  vivify_588:
    $P126 = $P124."new"("list" :named("pasttype"), $P125 :named("node"))
    store_lex "$past", $P126
.annotate 'line', 958
    find_lex $P1446, "@words"
    unless_null $P1446, vivify_589
    $P1446 = root_new ['parrot';'ResizablePMCArray']
  vivify_589:
    defined $I101, $P1446
    unless $I101, for_undef_590
    iter $P121, $P1446
    new $P123, 'ExceptionHandler'
    set_label $P123, loop1450_handler
    $P123."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P123
  loop1450_test:
    unless $P121, loop1450_done
    shift $P122, $P121
  loop1450_redo:
    .const 'Sub' $P1448 = "143_1315150096.049" 
    capture_lex $P1448
    $P1448($P122)
  loop1450_next:
    goto loop1450_test
  loop1450_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P124, exception, 'type'
    eq $P124, .CONTROL_LOOP_NEXT, loop1450_next
    eq $P124, .CONTROL_LOOP_REDO, loop1450_redo
  loop1450_done:
    pop_eh 
  for_undef_590:
.annotate 'line', 956
    set $P120, $P121
  if_1444_end:
.annotate 'line', 954
    .return ($P120)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1447"  :anon :subid("143_1315150096.049") :outer("142_1315150096.049")
    .param pmc param_1449
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 958
    .lex "$_", param_1449
    find_lex $P123, "$past"
    unless_null $P123, vivify_591
    new $P123, "Undef"
  vivify_591:
    find_lex $P124, "$_"
    unless_null $P124, vivify_592
    new $P124, "Undef"
  vivify_592:
    $P125 = $P123."push"($P124)
    .return ($P125)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "quote_delimited" :anon :subid("144_1315150096.049") :outer("119_1315150096.049")
    .param pmc param_1454
    .param pmc param_1455
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 971
    .const 'Sub' $P1463 = "145_1315150096.049" 
    capture_lex $P1463
    .lex "self", param_1454
    .lex "$/", param_1455
.annotate 'line', 972
    $P1457 = root_new ['parrot';'ResizablePMCArray']
    set $P1456, $P1457
    .lex "@parts", $P1456
.annotate 'line', 973
    new $P110, "Undef"
    set $P1458, $P110
    .lex "$lastlit", $P1458
.annotate 'line', 989
    new $P111, "Undef"
    set $P1459, $P111
    .lex "$past", $P1459
.annotate 'line', 971
    find_lex $P1460, "@parts"
    unless_null $P1460, vivify_597
    $P1460 = root_new ['parrot';'ResizablePMCArray']
  vivify_597:
.annotate 'line', 973
    new $P112, "String"
    assign $P112, ""
    store_lex "$lastlit", $P112
.annotate 'line', 974
    find_lex $P1461, "$/"
    unless_null $P1461, vivify_598
    $P1461 = root_new ['parrot';'Hash']
  vivify_598:
    set $P113, $P1461["quote_atom"]
    unless_null $P113, vivify_599
    new $P113, "Undef"
  vivify_599:
    defined $I100, $P113
    unless $I100, for_undef_600
    iter $P112, $P113
    new $P117, 'ExceptionHandler'
    set_label $P117, loop1471_handler
    $P117."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P117
  loop1471_test:
    unless $P112, loop1471_done
    shift $P114, $P112
  loop1471_redo:
    .const 'Sub' $P1463 = "145_1315150096.049" 
    capture_lex $P1463
    $P1463($P114)
  loop1471_next:
    goto loop1471_test
  loop1471_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P118, exception, 'type'
    eq $P118, .CONTROL_LOOP_NEXT, loop1471_next
    eq $P118, .CONTROL_LOOP_REDO, loop1471_redo
  loop1471_done:
    pop_eh 
  for_undef_600:
.annotate 'line', 988
    find_lex $P112, "$lastlit"
    unless_null $P112, vivify_613
    new $P112, "Undef"
  vivify_613:
    set $S100, $P112
    isgt $I100, $S100, ""
    unless $I100, if_1472_end
    find_lex $P1473, "@parts"
    unless_null $P1473, vivify_614
    $P1473 = root_new ['parrot';'ResizablePMCArray']
  vivify_614:
    find_lex $P113, "$lastlit"
    unless_null $P113, vivify_615
    new $P113, "Undef"
  vivify_615:
    $P1473."push"($P113)
  if_1472_end:
.annotate 'line', 989
    find_lex $P1475, "@parts"
    unless_null $P1475, vivify_616
    $P1475 = root_new ['parrot';'ResizablePMCArray']
  vivify_616:
    if $P1475, if_1474
    new $P114, "String"
    assign $P114, ""
    set $P112, $P114
    goto if_1474_end
  if_1474:
    find_lex $P1476, "@parts"
    unless_null $P1476, vivify_617
    $P1476 = root_new ['parrot';'ResizablePMCArray']
  vivify_617:
    $P113 = $P1476."shift"()
    set $P112, $P113
  if_1474_end:
    store_lex "$past", $P112
.annotate 'line', 990
    new $P112, 'ExceptionHandler'
    set_label $P112, loop1479_handler
    $P112."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P112
  loop1479_test:
    find_lex $P1477, "@parts"
    unless_null $P1477, vivify_618
    $P1477 = root_new ['parrot';'ResizablePMCArray']
  vivify_618:
    unless $P1477, loop1479_done
  loop1479_redo:
.annotate 'line', 991
    get_hll_global $P112, "GLOBAL"
    nqp_get_package_through_who $P113, $P112, "PAST"
    get_who $P114, $P113
    set $P115, $P114["Op"]
    find_lex $P116, "$past"
    unless_null $P116, vivify_619
    new $P116, "Undef"
  vivify_619:
    find_lex $P1478, "@parts"
    unless_null $P1478, vivify_620
    $P1478 = root_new ['parrot';'ResizablePMCArray']
  vivify_620:
    $P117 = $P1478."shift"()
    $P118 = $P115."new"($P116, $P117, "concat" :named("pirop"))
    store_lex "$past", $P118
  loop1479_next:
.annotate 'line', 990
    goto loop1479_test
  loop1479_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P113, exception, 'type'
    eq $P113, .CONTROL_LOOP_NEXT, loop1479_next
    eq $P113, .CONTROL_LOOP_REDO, loop1479_redo
  loop1479_done:
    pop_eh 
.annotate 'line', 993
    find_lex $P112, "$/"
    find_lex $P113, "$past"
    unless_null $P113, vivify_621
    new $P113, "Undef"
  vivify_621:
    $P114 = $P112."!make"($P113)
.annotate 'line', 971
    .return ($P114)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1462"  :anon :subid("145_1315150096.049") :outer("144_1315150096.049")
    .param pmc param_1465
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 975
    new $P115, "Undef"
    set $P1464, $P115
    .lex "$ast", $P1464
    .lex "$_", param_1465
    find_lex $P116, "$_"
    unless_null $P116, vivify_601
    new $P116, "Undef"
  vivify_601:
    $P117 = $P116."ast"()
    store_lex "$ast", $P117
.annotate 'line', 976
    get_hll_global $P117, "GLOBAL"
    nqp_get_package_through_who $P118, $P117, "PAST"
    get_who $P119, $P118
    set $P120, $P119["Node"]
    find_lex $P121, "$ast"
    unless_null $P121, vivify_602
    new $P121, "Undef"
  vivify_602:
    $P122 = $P120."ACCEPTS"($P121)
    isfalse $I101, $P122
    if $I101, if_1466
.annotate 'line', 979
    find_lex $P124, "$ast"
    unless_null $P124, vivify_603
    new $P124, "Undef"
  vivify_603:
    get_hll_global $P126, "GLOBAL"
    nqp_get_package_through_who $P127, $P126, "PAST"
    get_who $P128, $P127
    set $P129, $P128["Val"]
    $P130 = $P124."isa"($P129)
    if $P130, if_1467
.annotate 'line', 983
    find_lex $P131, "$lastlit"
    unless_null $P131, vivify_604
    new $P131, "Undef"
  vivify_604:
    set $S100, $P131
    isgt $I102, $S100, ""
    unless $I102, if_1468_end
    find_lex $P1469, "@parts"
    unless_null $P1469, vivify_605
    $P1469 = root_new ['parrot';'ResizablePMCArray']
  vivify_605:
    find_lex $P132, "$lastlit"
    unless_null $P132, vivify_606
    new $P132, "Undef"
  vivify_606:
    $P1469."push"($P132)
  if_1468_end:
.annotate 'line', 984
    find_lex $P1470, "@parts"
    unless_null $P1470, vivify_607
    $P1470 = root_new ['parrot';'ResizablePMCArray']
  vivify_607:
    find_lex $P131, "$ast"
    unless_null $P131, vivify_608
    new $P131, "Undef"
  vivify_608:
    $P1470."push"($P131)
.annotate 'line', 985
    new $P131, "String"
    assign $P131, ""
    store_lex "$lastlit", $P131
.annotate 'line', 982
    set $P123, $P131
.annotate 'line', 979
    goto if_1467_end
  if_1467:
.annotate 'line', 980
    find_lex $P131, "$lastlit"
    unless_null $P131, vivify_609
    new $P131, "Undef"
  vivify_609:
    find_lex $P132, "$ast"
    unless_null $P132, vivify_610
    new $P132, "Undef"
  vivify_610:
    $S100 = $P132."value"()
    concat $P133, $P131, $S100
    store_lex "$lastlit", $P133
.annotate 'line', 979
    set $P123, $P133
  if_1467_end:
    set $P116, $P123
.annotate 'line', 976
    goto if_1466_end
  if_1466:
.annotate 'line', 977
    find_lex $P123, "$lastlit"
    unless_null $P123, vivify_611
    new $P123, "Undef"
  vivify_611:
    find_lex $P124, "$ast"
    unless_null $P124, vivify_612
    new $P124, "Undef"
  vivify_612:
    concat $P125, $P123, $P124
    store_lex "$lastlit", $P125
.annotate 'line', 976
    set $P116, $P125
  if_1466_end:
.annotate 'line', 974
    .return ($P116)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_atom" :anon :subid("146_1315150096.049") :outer("119_1315150096.049")
    .param pmc param_1481
    .param pmc param_1482
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 996
    .lex "self", param_1481
    .lex "$/", param_1482
.annotate 'line', 997
    find_lex $P110, "$/"
    find_lex $P1484, "$/"
    unless_null $P1484, vivify_622
    $P1484 = root_new ['parrot';'Hash']
  vivify_622:
    set $P112, $P1484["quote_escape"]
    unless_null $P112, vivify_623
    new $P112, "Undef"
  vivify_623:
    if $P112, if_1483
    find_lex $P115, "$/"
    unless_null $P115, vivify_624
    new $P115, "Undef"
  vivify_624:
    set $S100, $P115
    new $P111, 'String'
    set $P111, $S100
    goto if_1483_end
  if_1483:
    find_lex $P1485, "$/"
    unless_null $P1485, vivify_625
    $P1485 = root_new ['parrot';'Hash']
  vivify_625:
    set $P113, $P1485["quote_escape"]
    unless_null $P113, vivify_626
    new $P113, "Undef"
  vivify_626:
    $P114 = $P113."ast"()
    set $P111, $P114
  if_1483_end:
    $P116 = $P110."!make"($P111)
.annotate 'line', 996
    .return ($P116)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<backslash>" :anon :subid("147_1315150096.049") :outer("119_1315150096.049")
    .param pmc param_1487
    .param pmc param_1488
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1000
    .lex "self", param_1487
    .lex "$/", param_1488
    find_lex $P110, "$/"
    $P111 = $P110."!make"("\\")
    .return ($P111)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<stopper>" :anon :subid("148_1315150096.049") :outer("119_1315150096.049")
    .param pmc param_1490
    .param pmc param_1491
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1001
    .lex "self", param_1490
    .lex "$/", param_1491
    find_lex $P110, "$/"
    find_lex $P1492, "$/"
    unless_null $P1492, vivify_627
    $P1492 = root_new ['parrot';'Hash']
  vivify_627:
    set $P111, $P1492["stopper"]
    unless_null $P111, vivify_628
    new $P111, "Undef"
  vivify_628:
    set $S100, $P111
    $P112 = $P110."!make"($S100)
    .return ($P112)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<bs>" :anon :subid("149_1315150096.049") :outer("119_1315150096.049")
    .param pmc param_1494
    .param pmc param_1495
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1003
    .lex "self", param_1494
    .lex "$/", param_1495
    find_lex $P110, "$/"
    $P111 = $P110."!make"("\b")
    .return ($P111)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<nl>" :anon :subid("150_1315150096.049") :outer("119_1315150096.049")
    .param pmc param_1497
    .param pmc param_1498
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1004
    .lex "self", param_1497
    .lex "$/", param_1498
    find_lex $P110, "$/"
    $P111 = $P110."!make"("\n")
    .return ($P111)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<cr>" :anon :subid("151_1315150096.049") :outer("119_1315150096.049")
    .param pmc param_1500
    .param pmc param_1501
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1005
    .lex "self", param_1500
    .lex "$/", param_1501
    find_lex $P110, "$/"
    $P111 = $P110."!make"("\r")
    .return ($P111)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<tab>" :anon :subid("152_1315150096.049") :outer("119_1315150096.049")
    .param pmc param_1503
    .param pmc param_1504
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1006
    .lex "self", param_1503
    .lex "$/", param_1504
    find_lex $P110, "$/"
    $P111 = $P110."!make"("\t")
    .return ($P111)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<ff>" :anon :subid("153_1315150096.049") :outer("119_1315150096.049")
    .param pmc param_1506
    .param pmc param_1507
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1007
    .lex "self", param_1506
    .lex "$/", param_1507
    find_lex $P110, "$/"
    $P111 = $P110."!make"("\f")
    .return ($P111)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<esc>" :anon :subid("154_1315150096.049") :outer("119_1315150096.049")
    .param pmc param_1509
    .param pmc param_1510
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1008
    .lex "self", param_1509
    .lex "$/", param_1510
    find_lex $P110, "$/"
    $P111 = $P110."!make"("\e")
    .return ($P111)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<hex>" :anon :subid("155_1315150096.049") :outer("119_1315150096.049")
    .param pmc param_1512
    .param pmc param_1513
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1010
    .lex "self", param_1512
    .lex "$/", param_1513
.annotate 'line', 1011
    find_lex $P110, "$/"
    find_lex $P1515, "$/"
    unless_null $P1515, vivify_629
    $P1515 = root_new ['parrot';'Hash']
  vivify_629:
    set $P112, $P1515["hexint"]
    unless_null $P112, vivify_630
    new $P112, "Undef"
  vivify_630:
    if $P112, if_1514
    find_lex $P1517, "$/"
    unless_null $P1517, vivify_631
    $P1517 = root_new ['parrot';'Hash']
  vivify_631:
    set $P1518, $P1517["hexints"]
    unless_null $P1518, vivify_632
    $P1518 = root_new ['parrot';'Hash']
  vivify_632:
    set $P114, $P1518["hexint"]
    unless_null $P114, vivify_633
    new $P114, "Undef"
  vivify_633:
    set $P111, $P114
    goto if_1514_end
  if_1514:
    find_lex $P1516, "$/"
    unless_null $P1516, vivify_634
    $P1516 = root_new ['parrot';'Hash']
  vivify_634:
    set $P113, $P1516["hexint"]
    unless_null $P113, vivify_635
    new $P113, "Undef"
  vivify_635:
    set $P111, $P113
  if_1514_end:
    $P115 = "ints_to_string"($P111)
    $P116 = $P110."!make"($P115)
.annotate 'line', 1010
    .return ($P116)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<oct>" :anon :subid("156_1315150096.049") :outer("119_1315150096.049")
    .param pmc param_1520
    .param pmc param_1521
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1014
    .lex "self", param_1520
    .lex "$/", param_1521
.annotate 'line', 1015
    find_lex $P110, "$/"
    find_lex $P1523, "$/"
    unless_null $P1523, vivify_636
    $P1523 = root_new ['parrot';'Hash']
  vivify_636:
    set $P112, $P1523["octint"]
    unless_null $P112, vivify_637
    new $P112, "Undef"
  vivify_637:
    if $P112, if_1522
    find_lex $P1525, "$/"
    unless_null $P1525, vivify_638
    $P1525 = root_new ['parrot';'Hash']
  vivify_638:
    set $P1526, $P1525["octints"]
    unless_null $P1526, vivify_639
    $P1526 = root_new ['parrot';'Hash']
  vivify_639:
    set $P114, $P1526["octint"]
    unless_null $P114, vivify_640
    new $P114, "Undef"
  vivify_640:
    set $P111, $P114
    goto if_1522_end
  if_1522:
    find_lex $P1524, "$/"
    unless_null $P1524, vivify_641
    $P1524 = root_new ['parrot';'Hash']
  vivify_641:
    set $P113, $P1524["octint"]
    unless_null $P113, vivify_642
    new $P113, "Undef"
  vivify_642:
    set $P111, $P113
  if_1522_end:
    $P115 = "ints_to_string"($P111)
    $P116 = $P110."!make"($P115)
.annotate 'line', 1014
    .return ($P116)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<chr>" :anon :subid("157_1315150096.049") :outer("119_1315150096.049")
    .param pmc param_1528
    .param pmc param_1529
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1018
    .lex "self", param_1528
    .lex "$/", param_1529
.annotate 'line', 1019
    find_lex $P110, "$/"
    find_lex $P1530, "$/"
    unless_null $P1530, vivify_643
    $P1530 = root_new ['parrot';'Hash']
  vivify_643:
    set $P111, $P1530["charspec"]
    unless_null $P111, vivify_644
    new $P111, "Undef"
  vivify_644:
    $P112 = $P111."ast"()
    $P113 = $P110."!make"($P112)
.annotate 'line', 1018
    .return ($P113)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<0>" :anon :subid("158_1315150096.049") :outer("119_1315150096.049")
    .param pmc param_1532
    .param pmc param_1533
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1022
    .lex "self", param_1532
    .lex "$/", param_1533
.annotate 'line', 1023
    find_lex $P110, "$/"
    $P111 = $P110."!make"(unicode:"\x{0}")
.annotate 'line', 1022
    .return ($P111)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<misc>" :anon :subid("159_1315150096.049") :outer("119_1315150096.049")
    .param pmc param_1535
    .param pmc param_1536
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1026
    .lex "self", param_1535
    .lex "$/", param_1536
.annotate 'line', 1027
    find_lex $P110, "$/"
    find_lex $P1538, "$/"
    unless_null $P1538, vivify_645
    $P1538 = root_new ['parrot';'Hash']
  vivify_645:
    set $P112, $P1538["textq"]
    unless_null $P112, vivify_646
    new $P112, "Undef"
  vivify_646:
    if $P112, if_1537
    find_lex $P1540, "$/"
    unless_null $P1540, vivify_647
    $P1540 = root_new ['parrot';'Hash']
  vivify_647:
    set $P116, $P1540["textqq"]
    unless_null $P116, vivify_648
    new $P116, "Undef"
  vivify_648:
    $P117 = $P116."Str"()
    set $P111, $P117
    goto if_1537_end
  if_1537:
    new $P113, "String"
    assign $P113, "\\"
    find_lex $P1539, "$/"
    unless_null $P1539, vivify_649
    $P1539 = root_new ['parrot';'Hash']
  vivify_649:
    set $P114, $P1539["textq"]
    unless_null $P114, vivify_650
    new $P114, "Undef"
  vivify_650:
    $S100 = $P114."Str"()
    concat $P115, $P113, $S100
    set $P111, $P115
  if_1537_end:
    $P118 = $P110."!make"($P111)
.annotate 'line', 1026
    .return ($P118)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "charname" :anon :subid("160_1315150096.049") :outer("119_1315150096.049")
    .param pmc param_1542
    .param pmc param_1543
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1030
    .lex "self", param_1542
    .lex "$/", param_1543
.annotate 'line', 1031
    new $P110, "Undef"
    set $P1544, $P110
    .lex "$codepoint", $P1544
.annotate 'line', 1032
    find_lex $P1546, "$/"
    unless_null $P1546, vivify_651
    $P1546 = root_new ['parrot';'Hash']
  vivify_651:
    set $P112, $P1546["integer"]
    unless_null $P112, vivify_652
    new $P112, "Undef"
  vivify_652:
    if $P112, if_1545
.annotate 'line', 1033
    find_lex $P115, "$/"
    unless_null $P115, vivify_653
    new $P115, "Undef"
  vivify_653:
    set $S100, $P115
    find_codepoint $I100, $S100
    new $P111, 'Integer'
    set $P111, $I100
.annotate 'line', 1032
    goto if_1545_end
  if_1545:
    find_lex $P1547, "$/"
    unless_null $P1547, vivify_654
    $P1547 = root_new ['parrot';'Hash']
  vivify_654:
    set $P113, $P1547["integer"]
    unless_null $P113, vivify_655
    new $P113, "Undef"
  vivify_655:
    $P114 = $P113."ast"()
    set $P111, $P114
  if_1545_end:
    store_lex "$codepoint", $P111
.annotate 'line', 1034
    find_lex $P111, "$codepoint"
    unless_null $P111, vivify_656
    new $P111, "Undef"
  vivify_656:
    set $N100, $P111
    set $N101, 0
    islt $I100, $N100, $N101
    unless $I100, if_1548_end
    find_lex $P112, "$/"
    unless_null $P112, vivify_657
    new $P112, "Undef"
  vivify_657:
    $P113 = $P112."CURSOR"()
    new $P114, 'String'
    set $P114, "Unrecognized character name "
    find_lex $P115, "$/"
    unless_null $P115, vivify_658
    new $P115, "Undef"
  vivify_658:
    concat $P116, $P114, $P115
    $P113."panic"($P116)
  if_1548_end:
.annotate 'line', 1035
    find_lex $P111, "$/"
    find_lex $P112, "$codepoint"
    unless_null $P112, vivify_659
    new $P112, "Undef"
  vivify_659:
    set $I100, $P112
    chr $S100, $I100
    $P113 = $P111."!make"($S100)
.annotate 'line', 1030
    .return ($P113)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "charnames" :anon :subid("161_1315150096.049") :outer("119_1315150096.049")
    .param pmc param_1550
    .param pmc param_1551
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1038
    .const 'Sub' $P1555 = "162_1315150096.049" 
    capture_lex $P1555
    .lex "self", param_1550
    .lex "$/", param_1551
.annotate 'line', 1039
    new $P110, "Undef"
    set $P1552, $P110
    .lex "$str", $P1552
    new $P111, "String"
    assign $P111, ""
    store_lex "$str", $P111
.annotate 'line', 1040
    find_lex $P1553, "$/"
    unless_null $P1553, vivify_660
    $P1553 = root_new ['parrot';'Hash']
  vivify_660:
    set $P112, $P1553["charname"]
    unless_null $P112, vivify_661
    new $P112, "Undef"
  vivify_661:
    defined $I100, $P112
    unless $I100, for_undef_662
    iter $P111, $P112
    new $P114, 'ExceptionHandler'
    set_label $P114, loop1557_handler
    $P114."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P114
  loop1557_test:
    unless $P111, loop1557_done
    shift $P113, $P111
  loop1557_redo:
    .const 'Sub' $P1555 = "162_1315150096.049" 
    capture_lex $P1555
    $P1555($P113)
  loop1557_next:
    goto loop1557_test
  loop1557_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P115, exception, 'type'
    eq $P115, .CONTROL_LOOP_NEXT, loop1557_next
    eq $P115, .CONTROL_LOOP_REDO, loop1557_redo
  loop1557_done:
    pop_eh 
  for_undef_662:
.annotate 'line', 1041
    find_lex $P111, "$/"
    find_lex $P112, "$str"
    unless_null $P112, vivify_665
    new $P112, "Undef"
  vivify_665:
    $P113 = $P111."!make"($P112)
.annotate 'line', 1038
    .return ($P113)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1554"  :anon :subid("162_1315150096.049") :outer("161_1315150096.049")
    .param pmc param_1556
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1040
    .lex "$_", param_1556
    find_lex $P114, "$str"
    unless_null $P114, vivify_663
    new $P114, "Undef"
  vivify_663:
    find_lex $P115, "$_"
    unless_null $P115, vivify_664
    new $P115, "Undef"
  vivify_664:
    $S100 = $P115."ast"()
    concat $P116, $P114, $S100
    store_lex "$str", $P116
    .return ($P116)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "charspec" :anon :subid("163_1315150096.049") :outer("119_1315150096.049")
    .param pmc param_1559
    .param pmc param_1560
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1044
    .lex "self", param_1559
    .lex "$/", param_1560
.annotate 'line', 1045
    find_lex $P110, "$/"
    find_lex $P1562, "$/"
    unless_null $P1562, vivify_666
    $P1562 = root_new ['parrot';'Hash']
  vivify_666:
    set $P112, $P1562["charnames"]
    unless_null $P112, vivify_667
    new $P112, "Undef"
  vivify_667:
    if $P112, if_1561
    find_lex $P115, "$/"
    unless_null $P115, vivify_668
    new $P115, "Undef"
  vivify_668:
    $I100 = "string_to_int"($P115, 10)
    chr $S100, $I100
    new $P111, 'String'
    set $P111, $S100
    goto if_1561_end
  if_1561:
    find_lex $P1563, "$/"
    unless_null $P1563, vivify_669
    $P1563 = root_new ['parrot';'Hash']
  vivify_669:
    set $P113, $P1563["charnames"]
    unless_null $P113, vivify_670
    new $P113, "Undef"
  vivify_670:
    $P114 = $P113."ast"()
    set $P111, $P114
  if_1561_end:
    $P116 = $P110."!make"($P111)
.annotate 'line', 1044
    .return ($P116)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1565"  :subid("164_1315150096.049") :outer("10_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1058
    .const 'Sub' $P2201 = "244_1315150096.049" 
    capture_lex $P2201
    .const 'Sub' $P2177 = "242_1315150096.049" 
    capture_lex $P2177
    .const 'Sub' $P2143 = "239_1315150096.049" 
    capture_lex $P2143
    .const 'Sub' $P2130 = "237_1315150096.049" 
    capture_lex $P2130
    .const 'Sub' $P2112 = "234_1315150096.049" 
    capture_lex $P2112
    .const 'Sub' $P2100 = "231_1315150096.049" 
    capture_lex $P2100
    .const 'Sub' $P2089 = "230_1315150096.049" 
    capture_lex $P2089
    .const 'Sub' $P2085 = "229_1315150096.049" 
    capture_lex $P2085
    .const 'Sub' $P2073 = "227_1315150096.049" 
    capture_lex $P2073
    .const 'Sub' $P2068 = "226_1315150096.049" 
    capture_lex $P2068
    .const 'Sub' $P2063 = "225_1315150096.049" 
    capture_lex $P2063
    .const 'Sub' $P2061 = "224_1315150096.049" 
    capture_lex $P2061
    .const 'Sub' $P2056 = "223_1315150096.049" 
    capture_lex $P2056
    .const 'Sub' $P2050 = "222_1315150096.049" 
    capture_lex $P2050
    .const 'Sub' $P2020 = "219_1315150096.049" 
    capture_lex $P2020
    .const 'Sub' $P1994 = "216_1315150096.049" 
    capture_lex $P1994
    .const 'Sub' $P1940 = "212_1315150096.049" 
    capture_lex $P1940
    .const 'Sub' $P1913 = "209_1315150096.049" 
    capture_lex $P1913
    .const 'Sub' $P1849 = "204_1315150096.049" 
    capture_lex $P1849
    .const 'Sub' $P1824 = "202_1315150096.049" 
    capture_lex $P1824
    .const 'Sub' $P1816 = "201_1315150096.049" 
    capture_lex $P1816
    .const 'Sub' $P1812 = "200_1315150096.049" 
    capture_lex $P1812
    .const 'Sub' $P1810 = "199_1315150096.049" 
    capture_lex $P1810
    .const 'Sub' $P1808 = "198_1315150096.049" 
    capture_lex $P1808
    .const 'Sub' $P1802 = "197_1315150096.049" 
    capture_lex $P1802
    .const 'Sub' $P1796 = "196_1315150096.049" 
    capture_lex $P1796
    .const 'Sub' $P1788 = "195_1315150096.049" 
    capture_lex $P1788
    .const 'Sub' $P1784 = "194_1315150096.049" 
    capture_lex $P1784
    .const 'Sub' $P1781 = "193_1315150096.049" 
    capture_lex $P1781
    .const 'Sub' $P1763 = "191_1315150096.049" 
    capture_lex $P1763
    .const 'Sub' $P1694 = "184_1315150096.049" 
    capture_lex $P1694
    .const 'Sub' $P1690 = "183_1315150096.049" 
    capture_lex $P1690
    .const 'Sub' $P1660 = "178_1315150096.049" 
    capture_lex $P1660
    .const 'Sub' $P1645 = "176_1315150096.049" 
    capture_lex $P1645
    .const 'Sub' $P1642 = "175_1315150096.049" 
    capture_lex $P1642
    .const 'Sub' $P1639 = "174_1315150096.049" 
    capture_lex $P1639
    .const 'Sub' $P1635 = "173_1315150096.049" 
    capture_lex $P1635
    .const 'Sub' $P1628 = "172_1315150096.049" 
    capture_lex $P1628
    .const 'Sub' $P1586 = "169_1315150096.049" 
    capture_lex $P1586
    .const 'Sub' $P1579 = "167_1315150096.049" 
    capture_lex $P1579
    .const 'Sub' $P1576 = "166_1315150096.049" 
    capture_lex $P1576
    .const 'Sub' $P1568 = "165_1315150096.049" 
    capture_lex $P1568
.annotate 'line', 1091
    .const 'Sub' $P1568 = "165_1315150096.049" 
    newclosure $P1572, $P1568
    set $P1567, $P1572
    .lex "value_type", $P1567
.annotate 'line', 1058
    .lex "$?PACKAGE", $P1573
    .lex "$?CLASS", $P1574
    find_lex $P102, "$?PACKAGE"
    get_who $P103, $P102
    set $P1575, $P103["%parrot_config"]
    unless_null $P1575, vivify_673
    $P1575 = root_new ['parrot';'Hash']
  vivify_673:
    find_lex $P102, "value_type"
.annotate 'line', 1636
    .const 'Sub' $P2201 = "244_1315150096.049" 
    newclosure $P2206, $P2201
.annotate 'line', 1058
    .return ($P2206)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "value_type"  :subid("165_1315150096.049") :outer("164_1315150096.049")
    .param pmc param_1569
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1091
    .lex "$value", param_1569
.annotate 'line', 1092
    find_lex $P102, "$value"
    unless_null $P102, vivify_671
    new $P102, "Undef"
  vivify_671:
    isa $I100, $P102, "NameSpace"
    if $I100, if_1570
.annotate 'line', 1094
    find_lex $P105, "$value"
    unless_null $P105, vivify_672
    new $P105, "Undef"
  vivify_672:
    isa $I101, $P105, "Sub"
    if $I101, if_1571
    new $P107, "String"
    assign $P107, "var"
    set $P104, $P107
    goto if_1571_end
  if_1571:
    new $P106, "String"
    assign $P106, "sub"
    set $P104, $P106
  if_1571_end:
    set $P101, $P104
.annotate 'line', 1092
    goto if_1570_end
  if_1570:
    new $P103, "String"
    assign $P103, "namespace"
    set $P101, $P103
  if_1570_end:
.annotate 'line', 1091
    .return ($P101)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "new" :anon :subid("166_1315150096.049") :outer("164_1315150096.049")
    .param pmc param_1577
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1071
    .lex "self", param_1577
.annotate 'line', 1072
    new $P102, "Undef"
    set $P1578, $P102
    .lex "$obj", $P1578
    find_lex $P103, "self"
    repr_instance_of $P104, $P103
    store_lex "$obj", $P104
.annotate 'line', 1073
    find_lex $P103, "$obj"
    unless_null $P103, vivify_674
    new $P103, "Undef"
  vivify_674:
    $P103."BUILD"()
.annotate 'line', 1071
    find_lex $P103, "$obj"
    unless_null $P103, vivify_675
    new $P103, "Undef"
  vivify_675:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "BUILD" :anon :subid("167_1315150096.049") :outer("164_1315150096.049")
    .param pmc param_1580
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1077
    .const 'Sub' $P1583 = "168_1315150096.049" 
    capture_lex $P1583
    .lex "self", param_1580
.annotate 'line', 1079
    split $P102, " ", "parse past post pir evalpmc"
    find_lex $P103, "self"
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    setattribute $P104, $P105, "@!stages", $P102
.annotate 'line', 1082
    split $P102, " ", "e=s help|h target=s dumper=s trace|t=s encoding=s output|o=s combine version|v show-config stagestats ll-exception nqpevent=s rxtrace"
    find_lex $P103, "self"
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    setattribute $P104, $P105, "@!cmdoptions", $P102
.annotate 'line', 1083
    new $P102, "String"
    assign $P102, "This compiler is based on HLL::Compiler.\n\nOptions:\n"
    find_lex $P103, "self"
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    setattribute $P104, $P105, "$!usage", $P102
.annotate 'line', 1084
    find_lex $P103, "self"
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    getattribute $P1581, $P104, $P105, "@!cmdoptions"
    unless_null $P1581, vivify_676
    $P1581 = root_new ['parrot';'ResizablePMCArray']
  vivify_676:
    defined $I100, $P1581
    unless $I100, for_undef_677
    iter $P102, $P1581
    new $P107, 'ExceptionHandler'
    set_label $P107, loop1585_handler
    $P107."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P107
  loop1585_test:
    unless $P102, loop1585_done
    shift $P106, $P102
  loop1585_redo:
    .const 'Sub' $P1583 = "168_1315150096.049" 
    capture_lex $P1583
    $P1583($P106)
  loop1585_next:
    goto loop1585_test
  loop1585_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P108, exception, 'type'
    eq $P108, .CONTROL_LOOP_NEXT, loop1585_next
    eq $P108, .CONTROL_LOOP_REDO, loop1585_redo
  loop1585_done:
    pop_eh 
  for_undef_677:
.annotate 'line', 1087
    getinterp $P102
    set $P103, $P102[.IGLOBALS_CONFIG_HASH]
    unless_null $P103, vivify_680
    new $P103, "Undef"
  vivify_680:
    find_lex $P104, "$?PACKAGE"
    get_who $P105, $P104
    set $P105["%parrot_config"], $P103
.annotate 'line', 1088
    new $P102, "Hash"
    find_lex $P103, "self"
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    setattribute $P104, $P105, "%!config", $P102
.annotate 'line', 1077
    .return ($P102)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1582"  :anon :subid("168_1315150096.049") :outer("167_1315150096.049")
    .param pmc param_1584
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1084
    .lex "$_", param_1584
.annotate 'line', 1085
    find_lex $P107, "self"
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    getattribute $P110, $P108, $P109, "$!usage"
    unless_null $P110, vivify_678
    new $P110, "Undef"
  vivify_678:
    new $P111, 'String'
    set $P111, "    "
    find_lex $P112, "$_"
    unless_null $P112, vivify_679
    new $P112, "Undef"
  vivify_679:
    concat $P113, $P111, $P112
    concat $P114, $P113, "\n"
    concat $P115, $P110, $P114
    find_lex $P116, "self"
    nqp_decontainerize $P117, $P116
    find_lex $P118, "$?CLASS"
    setattribute $P117, $P118, "$!usage", $P115
.annotate 'line', 1084
    .return ($P115)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "get_exports" :anon :subid("169_1315150096.049") :outer("164_1315150096.049")
    .param pmc param_1587
    .param pmc param_1588
    .param pmc param_1590 :slurpy
    .param pmc param_1589 :optional :named("tagset")
    .param int has_param_1589 :opt_flag
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1097
    .const 'Sub' $P1621 = "171_1315150096.049" 
    capture_lex $P1621
    .const 'Sub' $P1612 = "170_1315150096.049" 
    capture_lex $P1612
    .lex "self", param_1587
    .lex "$module", param_1588
    if has_param_1589, optparam_681
    new $P102, "Undef"
    set param_1589, $P102
  optparam_681:
    .lex "$tagset", param_1589
    .lex "@symbols", param_1590
.annotate 'line', 1104
    $P1592 = root_new ['parrot';'Hash']
    set $P1591, $P1592
    .lex "%exports", $P1591
.annotate 'line', 1105
    $P1594 = root_new ['parrot';'Hash']
    set $P1593, $P1594
    .lex "%source", $P1593
.annotate 'line', 1099
    find_lex $P103, "$module"
    unless_null $P103, vivify_682
    new $P103, "Undef"
  vivify_682:
    does $I100, $P103, "hash"
    new $P104, 'Integer'
    set $P104, $I100
    isfalse $I101, $P104
    unless $I101, if_1595_end
.annotate 'line', 1100
    find_lex $P105, "self"
    find_lex $P106, "$module"
    unless_null $P106, vivify_683
    new $P106, "Undef"
  vivify_683:
    $P107 = $P105."get_module"($P106)
    store_lex "$module", $P107
  if_1595_end:
.annotate 'line', 1103
    find_lex $P103, "$tagset"
    unless_null $P103, vivify_684
    new $P103, "Undef"
  vivify_684:
    set $P1596, $P103
    defined $I1598, $P1596
    if $I1598, default_1597
    find_lex $P1600, "@symbols"
    unless_null $P1600, vivify_685
    $P1600 = root_new ['parrot';'ResizablePMCArray']
  vivify_685:
    if $P1600, if_1599
    new $P106, "String"
    assign $P106, "DEFAULT"
    set $P104, $P106
    goto if_1599_end
  if_1599:
    new $P105, "String"
    assign $P105, "ALL"
    set $P104, $P105
  if_1599_end:
    set $P1596, $P104
  default_1597:
    store_lex "$tagset", $P1596
.annotate 'line', 1097
    find_lex $P1601, "%exports"
    unless_null $P1601, vivify_686
    $P1601 = root_new ['parrot';'Hash']
  vivify_686:
.annotate 'line', 1105
    find_lex $P103, "$tagset"
    unless_null $P103, vivify_687
    new $P103, "Undef"
  vivify_687:
    set $S100, $P103
    find_lex $P1602, "$module"
    unless_null $P1602, vivify_688
    $P1602 = root_new ['parrot';'Hash']
  vivify_688:
    set $P1603, $P1602["EXPORT"]
    unless_null $P1603, vivify_689
    $P1603 = root_new ['parrot';'Hash']
  vivify_689:
    set $P104, $P1603[$S100]
    unless_null $P104, vivify_690
    new $P104, "Undef"
  vivify_690:
    store_lex "%source", $P104
.annotate 'line', 1106
    find_lex $P1605, "%source"
    unless_null $P1605, vivify_691
    $P1605 = root_new ['parrot';'Hash']
  vivify_691:
    defined $I100, $P1605
    new $P103, 'Integer'
    set $P103, $I100
    isfalse $I101, $P103
    unless $I101, if_1604_end
.annotate 'line', 1107
    find_lex $P105, "$tagset"
    unless_null $P105, vivify_692
    new $P105, "Undef"
  vivify_692:
    set $S100, $P105
    iseq $I102, $S100, "ALL"
    if $I102, if_1606
    $P1607 = root_new ['parrot';'Hash']
    set $P104, $P1607
    goto if_1606_end
  if_1606:
    find_lex $P106, "$module"
    unless_null $P106, vivify_693
    new $P106, "Undef"
  vivify_693:
    set $P104, $P106
  if_1606_end:
    store_lex "%source", $P104
  if_1604_end:
.annotate 'line', 1109
    find_lex $P1609, "@symbols"
    unless_null $P1609, vivify_694
    $P1609 = root_new ['parrot';'ResizablePMCArray']
  vivify_694:
    if $P1609, if_1608
.annotate 'line', 1116
    find_lex $P1619, "%source"
    unless_null $P1619, vivify_695
    $P1619 = root_new ['parrot';'Hash']
  vivify_695:
    defined $I100, $P1619
    unless $I100, for_undef_696
    iter $P103, $P1619
    new $P107, 'ExceptionHandler'
    set_label $P107, loop1626_handler
    $P107."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P107
  loop1626_test:
    unless $P103, loop1626_done
    shift $P104, $P103
  loop1626_redo:
    .const 'Sub' $P1621 = "171_1315150096.049" 
    capture_lex $P1621
    $P1621($P104)
  loop1626_next:
    goto loop1626_test
  loop1626_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P108, exception, 'type'
    eq $P108, .CONTROL_LOOP_NEXT, loop1626_next
    eq $P108, .CONTROL_LOOP_REDO, loop1626_redo
  loop1626_done:
    pop_eh 
  for_undef_696:
.annotate 'line', 1115
    goto if_1608_end
  if_1608:
.annotate 'line', 1110
    find_lex $P1610, "@symbols"
    unless_null $P1610, vivify_703
    $P1610 = root_new ['parrot';'ResizablePMCArray']
  vivify_703:
    defined $I100, $P1610
    unless $I100, for_undef_704
    iter $P103, $P1610
    new $P107, 'ExceptionHandler'
    set_label $P107, loop1618_handler
    $P107."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P107
  loop1618_test:
    unless $P103, loop1618_done
    shift $P104, $P103
  loop1618_redo:
    .const 'Sub' $P1612 = "170_1315150096.049" 
    capture_lex $P1612
    $P1612($P104)
  loop1618_next:
    goto loop1618_test
  loop1618_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P108, exception, 'type'
    eq $P108, .CONTROL_LOOP_NEXT, loop1618_next
    eq $P108, .CONTROL_LOOP_REDO, loop1618_redo
  loop1618_done:
    pop_eh 
  for_undef_704:
  if_1608_end:
.annotate 'line', 1097
    find_lex $P1627, "%exports"
    unless_null $P1627, vivify_713
    $P1627 = root_new ['parrot';'Hash']
  vivify_713:
    .return ($P1627)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1620"  :anon :subid("171_1315150096.049") :outer("169_1315150096.049")
    .param pmc param_1623
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1117
    new $P105, "Undef"
    set $P1622, $P105
    .lex "$value", $P1622
    .lex "$_", param_1623
    find_lex $P106, "$_"
    unless_null $P106, vivify_697
    new $P106, "Undef"
  vivify_697:
    $P107 = $P106."value"()
    store_lex "$value", $P107
.annotate 'line', 1118
    find_lex $P106, "$value"
    unless_null $P106, vivify_698
    new $P106, "Undef"
  vivify_698:
    find_lex $P107, "$_"
    unless_null $P107, vivify_699
    new $P107, "Undef"
  vivify_699:
    $P108 = $P107."key"()
    find_lex $P109, "$value"
    unless_null $P109, vivify_700
    new $P109, "Undef"
  vivify_700:
    $P110 = "value_type"($P109)
    find_lex $P1624, "%exports"
    unless_null $P1624, vivify_701
    $P1624 = root_new ['parrot';'Hash']
    store_lex "%exports", $P1624
  vivify_701:
    set $P1625, $P1624[$P110]
    unless_null $P1625, vivify_702
    $P1625 = root_new ['parrot';'Hash']
    set $P1624[$P110], $P1625
  vivify_702:
    set $P1625[$P108], $P106
.annotate 'line', 1116
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1611"  :anon :subid("170_1315150096.049") :outer("169_1315150096.049")
    .param pmc param_1614
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1111
    new $P105, "Undef"
    set $P1613, $P105
    .lex "$value", $P1613
    .lex "$_", param_1614
    find_lex $P106, "$_"
    unless_null $P106, vivify_705
    new $P106, "Undef"
  vivify_705:
    set $S100, $P106
    find_lex $P1615, "%source"
    unless_null $P1615, vivify_706
    $P1615 = root_new ['parrot';'Hash']
  vivify_706:
    set $P107, $P1615[$S100]
    unless_null $P107, vivify_707
    new $P107, "Undef"
  vivify_707:
    store_lex "$value", $P107
.annotate 'line', 1112
    find_lex $P106, "$value"
    unless_null $P106, vivify_708
    new $P106, "Undef"
  vivify_708:
    find_lex $P107, "$_"
    unless_null $P107, vivify_709
    new $P107, "Undef"
  vivify_709:
    find_lex $P108, "$value"
    unless_null $P108, vivify_710
    new $P108, "Undef"
  vivify_710:
    $P109 = "value_type"($P108)
    find_lex $P1616, "%exports"
    unless_null $P1616, vivify_711
    $P1616 = root_new ['parrot';'Hash']
    store_lex "%exports", $P1616
  vivify_711:
    set $P1617, $P1616[$P109]
    unless_null $P1617, vivify_712
    $P1617 = root_new ['parrot';'Hash']
    set $P1616[$P109], $P1617
  vivify_712:
    set $P1617[$P107], $P106
.annotate 'line', 1110
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "get_module" :anon :subid("172_1315150096.049") :outer("164_1315150096.049")
    .param pmc param_1629
    .param pmc param_1630
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1124
    .lex "self", param_1629
    .lex "$name", param_1630
.annotate 'line', 1125
    $P1632 = root_new ['parrot';'ResizablePMCArray']
    set $P1631, $P1632
    .lex "@name", $P1631
    find_lex $P102, "self"
    find_lex $P103, "$name"
    unless_null $P103, vivify_714
    new $P103, "Undef"
  vivify_714:
    $P104 = $P102."parse_name"($P103)
    store_lex "@name", $P104
.annotate 'line', 1126
    find_lex $P1633, "@name"
    unless_null $P1633, vivify_715
    $P1633 = root_new ['parrot';'ResizablePMCArray']
  vivify_715:
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    getattribute $P105, $P103, $P104, "$!language"
    unless_null $P105, vivify_716
    new $P105, "Undef"
  vivify_716:
    set $S100, $P105
    downcase $S101, $S100
    $P1633."unshift"($S101)
.annotate 'line', 1127
    find_lex $P1634, "@name"
    unless_null $P1634, vivify_717
    $P1634 = root_new ['parrot';'ResizablePMCArray']
  vivify_717:
    get_root_namespace $P102, $P1634
.annotate 'line', 1124
    .return ($P102)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "language" :anon :subid("173_1315150096.049") :outer("164_1315150096.049")
    .param pmc param_1636
    .param pmc param_1637 :optional
    .param int has_param_1637 :opt_flag
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1130
    .lex "self", param_1636
    if has_param_1637, optparam_718
    new $P102, "Undef"
    set param_1637, $P102
  optparam_718:
    .lex "$name", param_1637
.annotate 'line', 1131
    find_lex $P103, "$name"
    unless_null $P103, vivify_719
    new $P103, "Undef"
  vivify_719:
    unless $P103, if_1638_end
.annotate 'line', 1132
    find_lex $P104, "$name"
    unless_null $P104, vivify_720
    new $P104, "Undef"
  vivify_720:
    find_lex $P105, "self"
    nqp_decontainerize $P106, $P105
    find_lex $P107, "$?CLASS"
    setattribute $P106, $P107, "$!language", $P104
.annotate 'line', 1133
    find_lex $P104, "$name"
    unless_null $P104, vivify_721
    new $P104, "Undef"
  vivify_721:
    set $S100, $P104
    find_lex $P105, "self"
    compreg $S100, $P105
  if_1638_end:
.annotate 'line', 1130
    find_lex $P103, "self"
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    getattribute $P106, $P104, $P105, "$!language"
    unless_null $P106, vivify_722
    new $P106, "Undef"
  vivify_722:
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "compiler" :anon :subid("174_1315150096.049") :outer("164_1315150096.049")
    .param pmc param_1640
    .param pmc param_1641
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1138
    .lex "self", param_1640
    .lex "$name", param_1641
.annotate 'line', 1139
    find_lex $P102, "$name"
    unless_null $P102, vivify_723
    new $P102, "Undef"
  vivify_723:
    set $S100, $P102
    compreg $P103, $S100
.annotate 'line', 1138
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "config" :anon :subid("175_1315150096.049") :outer("164_1315150096.049")
    .param pmc param_1643
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1142
    .lex "self", param_1643
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    getattribute $P1644, $P103, $P104, "%!config"
    unless_null $P1644, vivify_724
    $P1644 = root_new ['parrot';'Hash']
  vivify_724:
    .return ($P1644)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "load_module" :anon :subid("176_1315150096.049") :outer("164_1315150096.049")
    .param pmc param_1646
    .param pmc param_1647
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1144
    .const 'Sub' $P1651 = "177_1315150096.049" 
    capture_lex $P1651
    .lex "self", param_1646
    .lex "$name", param_1647
.annotate 'line', 1145
    new $P102, "Undef"
    set $P1648, $P102
    .lex "$base", $P1648
.annotate 'line', 1146
    new $P103, "Undef"
    set $P1649, $P103
    .lex "$loaded", $P1649
.annotate 'line', 1145
    find_lex $P104, "self"
    find_lex $P105, "$name"
    unless_null $P105, vivify_725
    new $P105, "Undef"
  vivify_725:
    $P106 = $P104."parse_name"($P105)
    join $S100, "/", $P106
    new $P107, 'String'
    set $P107, $S100
    store_lex "$base", $P107
.annotate 'line', 1146
    new $P104, "Float"
    assign $P104, 0
    store_lex "$loaded", $P104
.annotate 'line', 1147
    .const 'Sub' $P1651 = "177_1315150096.049" 
    capture_lex $P1651
    $P1651()
.annotate 'line', 1148
    find_lex $P104, "$loaded"
    unless_null $P104, vivify_727
    new $P104, "Undef"
  vivify_727:
    if $P104, unless_1659_end
    find_lex $P105, "$base"
    unless_null $P105, vivify_728
    new $P105, "Undef"
  vivify_728:
    concat $P106, $P105, ".pir"
    set $S100, $P106
    load_bytecode $S100
    new $P105, "Float"
    assign $P105, 1
    store_lex "$loaded", $P105
  unless_1659_end:
.annotate 'line', 1149
    find_lex $P104, "self"
    find_lex $P105, "$name"
    unless_null $P105, vivify_729
    new $P105, "Undef"
  vivify_729:
    $P106 = $P104."get_module"($P105)
.annotate 'line', 1144
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1650"  :anon :subid("177_1315150096.049") :outer("176_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1147
    new $P1654, 'ExceptionHandler'
    set_label $P1654, control_1653
    $P1654."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P1654
    find_lex $P104, "$base"
    unless_null $P104, vivify_726
    new $P104, "Undef"
  vivify_726:
    concat $P105, $P104, ".pbc"
    set $S100, $P105
    load_bytecode $S100
    new $P104, "Float"
    assign $P104, 1
    store_lex "$loaded", $P104
    pop_eh 
    goto skip_handler_1652
  control_1653:
    .local pmc exception 
    .get_results (exception) 
    new $P1657, 'Integer'
    set $P1657, 1
    set exception["handled"], $P1657
    set $I1658, exception["handled"]
    ne $I1658, 1, nothandled_1656
  handled_1655:
    .return (exception)
  nothandled_1656:
    rethrow exception
  skip_handler_1652:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "import" :anon :subid("178_1315150096.049") :outer("164_1315150096.049")
    .param pmc param_1661
    .param pmc param_1662
    .param pmc param_1663
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1152
    .const 'Sub' $P1666 = "179_1315150096.049" 
    capture_lex $P1666
    .lex "self", param_1661
    .lex "$target", param_1662
    .lex "%exports", param_1663
.annotate 'line', 1153
    find_lex $P1664, "%exports"
    unless_null $P1664, vivify_730
    $P1664 = root_new ['parrot';'Hash']
  vivify_730:
    defined $I100, $P1664
    unless $I100, for_undef_731
    iter $P102, $P1664
    new $P106, 'ExceptionHandler'
    set_label $P106, loop1689_handler
    $P106."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P106
  loop1689_test:
    unless $P102, loop1689_done
    shift $P103, $P102
  loop1689_redo:
    .const 'Sub' $P1666 = "179_1315150096.049" 
    capture_lex $P1666
    $P1666($P103)
  loop1689_next:
    goto loop1689_test
  loop1689_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P107, exception, 'type'
    eq $P107, .CONTROL_LOOP_NEXT, loop1689_next
    eq $P107, .CONTROL_LOOP_REDO, loop1689_redo
  loop1689_done:
    pop_eh 
  for_undef_731:
.annotate 'line', 1152
    .return ($P102)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1665"  :anon :subid("179_1315150096.049") :outer("178_1315150096.049")
    .param pmc param_1670
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1153
    .const 'Sub' $P1685 = "182_1315150096.049" 
    capture_lex $P1685
    .const 'Sub' $P1680 = "181_1315150096.049" 
    capture_lex $P1680
    .const 'Sub' $P1674 = "180_1315150096.049" 
    capture_lex $P1674
.annotate 'line', 1154
    new $P104, "Undef"
    set $P1667, $P104
    .lex "$type", $P1667
.annotate 'line', 1155
    $P1669 = root_new ['parrot';'Hash']
    set $P1668, $P1669
    .lex "%items", $P1668
    .lex "$_", param_1670
.annotate 'line', 1154
    find_lex $P105, "$_"
    unless_null $P105, vivify_732
    new $P105, "Undef"
  vivify_732:
    $P106 = $P105."key"()
    store_lex "$type", $P106
.annotate 'line', 1155
    find_lex $P105, "$_"
    unless_null $P105, vivify_733
    new $P105, "Undef"
  vivify_733:
    $P106 = $P105."value"()
    store_lex "%items", $P106
.annotate 'line', 1156
    find_lex $P106, "self"
    new $P107, 'String'
    set $P107, "import_"
    find_lex $P108, "$type"
    unless_null $P108, vivify_734
    new $P108, "Undef"
  vivify_734:
    concat $P109, $P107, $P108
    set $S100, $P109
    can $I101, $P106, $S100
    if $I101, if_1671
.annotate 'line', 1159
    find_lex $P112, "$target"
    unless_null $P112, vivify_735
    new $P112, "Undef"
  vivify_735:
    new $P113, 'String'
    set $P113, "add_"
    find_lex $P114, "$type"
    unless_null $P114, vivify_736
    new $P114, "Undef"
  vivify_736:
    concat $P115, $P113, $P114
    set $S101, $P115
    can $I102, $P112, $S101
    if $I102, if_1677
.annotate 'line', 1163
    find_lex $P1683, "%items"
    unless_null $P1683, vivify_737
    $P1683 = root_new ['parrot';'Hash']
  vivify_737:
    defined $I103, $P1683
    unless $I103, for_undef_738
    iter $P117, $P1683
    new $P119, 'ExceptionHandler'
    set_label $P119, loop1688_handler
    $P119."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P119
  loop1688_test:
    unless $P117, loop1688_done
    shift $P118, $P117
  loop1688_redo:
    .const 'Sub' $P1685 = "182_1315150096.049" 
    capture_lex $P1685
    $P1685($P118)
  loop1688_next:
    goto loop1688_test
  loop1688_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P121, exception, 'type'
    eq $P121, .CONTROL_LOOP_NEXT, loop1688_next
    eq $P121, .CONTROL_LOOP_REDO, loop1688_redo
  loop1688_done:
    pop_eh 
  for_undef_738:
.annotate 'line', 1162
    set $P111, $P117
.annotate 'line', 1159
    goto if_1677_end
  if_1677:
.annotate 'line', 1160
    find_lex $P1678, "%items"
    unless_null $P1678, vivify_742
    $P1678 = root_new ['parrot';'Hash']
  vivify_742:
    defined $I103, $P1678
    unless $I103, for_undef_743
    iter $P116, $P1678
    new $P118, 'ExceptionHandler'
    set_label $P118, loop1682_handler
    $P118."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P118
  loop1682_test:
    unless $P116, loop1682_done
    shift $P117, $P116
  loop1682_redo:
    .const 'Sub' $P1680 = "181_1315150096.049" 
    capture_lex $P1680
    $P1680($P117)
  loop1682_next:
    goto loop1682_test
  loop1682_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P119, exception, 'type'
    eq $P119, .CONTROL_LOOP_NEXT, loop1682_next
    eq $P119, .CONTROL_LOOP_REDO, loop1682_redo
  loop1682_done:
    pop_eh 
  for_undef_743:
.annotate 'line', 1159
    set $P111, $P116
  if_1677_end:
    set $P105, $P111
.annotate 'line', 1156
    goto if_1671_end
  if_1671:
.annotate 'line', 1157
    find_lex $P1672, "%items"
    unless_null $P1672, vivify_748
    $P1672 = root_new ['parrot';'Hash']
  vivify_748:
    defined $I102, $P1672
    unless $I102, for_undef_749
    iter $P110, $P1672
    new $P112, 'ExceptionHandler'
    set_label $P112, loop1676_handler
    $P112."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P112
  loop1676_test:
    unless $P110, loop1676_done
    shift $P111, $P110
  loop1676_redo:
    .const 'Sub' $P1674 = "180_1315150096.049" 
    capture_lex $P1674
    $P1674($P111)
  loop1676_next:
    goto loop1676_test
  loop1676_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P113, exception, 'type'
    eq $P113, .CONTROL_LOOP_NEXT, loop1676_next
    eq $P113, .CONTROL_LOOP_REDO, loop1676_redo
  loop1676_done:
    pop_eh 
  for_undef_749:
.annotate 'line', 1156
    set $P105, $P110
  if_1671_end:
.annotate 'line', 1153
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1684"  :anon :subid("182_1315150096.049") :outer("179_1315150096.049")
    .param pmc param_1686
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1163
    .lex "$_", param_1686
    find_lex $P119, "$_"
    unless_null $P119, vivify_739
    new $P119, "Undef"
  vivify_739:
    $P120 = $P119."value"()
    find_lex $P121, "$_"
    unless_null $P121, vivify_740
    new $P121, "Undef"
  vivify_740:
    $P122 = $P121."key"()
    set $S102, $P122
    find_lex $P1687, "$target"
    unless_null $P1687, vivify_741
    $P1687 = root_new ['parrot';'Hash']
    store_lex "$target", $P1687
  vivify_741:
    set $P1687[$S102], $P120
    .return ($P120)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1679"  :anon :subid("181_1315150096.049") :outer("179_1315150096.049")
    .param pmc param_1681
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1160
    .lex "$_", param_1681
    find_lex $P118, "$target"
    unless_null $P118, vivify_744
    new $P118, "Undef"
  vivify_744:
    find_lex $P119, "$_"
    unless_null $P119, vivify_745
    new $P119, "Undef"
  vivify_745:
    $P120 = $P119."key"()
    find_lex $P121, "$_"
    unless_null $P121, vivify_746
    new $P121, "Undef"
  vivify_746:
    $P122 = $P121."value"()
    new $P123, 'String'
    set $P123, "add_"
    find_lex $P124, "$type"
    unless_null $P124, vivify_747
    new $P124, "Undef"
  vivify_747:
    concat $P125, $P123, $P124
    set $S102, $P125
    $P126 = $P118.$S102($P120, $P122)
    .return ($P126)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1673"  :anon :subid("180_1315150096.049") :outer("179_1315150096.049")
    .param pmc param_1675
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1157
    .lex "$_", param_1675
    find_lex $P112, "self"
    find_lex $P113, "$target"
    unless_null $P113, vivify_750
    new $P113, "Undef"
  vivify_750:
    find_lex $P114, "$_"
    unless_null $P114, vivify_751
    new $P114, "Undef"
  vivify_751:
    $P115 = $P114."key"()
    find_lex $P116, "$_"
    unless_null $P116, vivify_752
    new $P116, "Undef"
  vivify_752:
    $P117 = $P116."value"()
    new $P118, 'String'
    set $P118, "import_"
    find_lex $P119, "$type"
    unless_null $P119, vivify_753
    new $P119, "Undef"
  vivify_753:
    concat $P120, $P118, $P119
    set $S101, $P120
    $P121 = $P112.$S101($P113, $P115, $P117)
    .return ($P121)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "autoprint" :anon :subid("183_1315150096.049") :outer("164_1315150096.049")
    .param pmc param_1691
    .param pmc param_1692
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1168
    .lex "self", param_1691
    .lex "$value", param_1692
.annotate 'line', 1170
    getinterp $P103
    $P104 = $P103."stdout_handle"()
    $N100 = $P104."tell"()
    find_dynamic_lex $P107, "$*AUTOPRINTPOS"
    unless_null $P107, vivify_754
    get_hll_global $P105, "GLOBAL"
    get_who $P106, $P105
    set $P107, $P106["$AUTOPRINTPOS"]
    unless_null $P107, vivify_755
    die "Contextual $*AUTOPRINTPOS not found"
  vivify_755:
  vivify_754:
    set $N101, $P107
    isgt $I100, $N100, $N101
    unless $I100, unless_1693
    new $P102, 'Integer'
    set $P102, $I100
    goto unless_1693_end
  unless_1693:
.annotate 'line', 1169
    find_lex $P108, "$value"
    unless_null $P108, vivify_756
    new $P108, "Undef"
  vivify_756:
    set $S100, $P108
    say $S100
  unless_1693_end:
.annotate 'line', 1168
    .return ($P102)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "interactive" :anon :subid("184_1315150096.049") :outer("164_1315150096.049")
    .param pmc param_1695
    .param pmc param_1696 :slurpy :named
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1173
    .const 'Sub' $P1716 = "186_1315150096.049" 
    capture_lex $P1716
    .const 'Sub' $P1698 = "185_1315150096.049" 
    capture_lex $P1698
    .lex "self", param_1695
    .lex "%adverbs", param_1696
.annotate 'line', 1179
    .const 'Sub' $P1698 = "185_1315150096.049" 
    newclosure $P1703, $P1698
    set $P1697, $P1703
    .lex "blank_context", $P1697
.annotate 'line', 1188
    new $P102, "Undef"
    set $P1704, $P102
    .lex "$interactive_ctx", $P1704
.annotate 'line', 1189
    $P1706 = root_new ['parrot';'Hash']
    set $P1705, $P1706
    .lex "%interactive_pad", $P1705
.annotate 'line', 1192
    new $P104, "Undef"
    set $P1707, $P104
    .lex "$target", $P1707
.annotate 'line', 1196
    new $P105, "Undef"
    set $P1708, $P105
    .lex "$stdin", $P1708
.annotate 'line', 1197
    new $P106, "Undef"
    set $P1709, $P106
    .lex "$encoding", $P1709
.annotate 'line', 1202
    new $P107, "Undef"
    set $P1710, $P107
    .lex "$save_ctx", $P1710
.annotate 'line', 1173
    find_lex $P108, "blank_context"
.annotate 'line', 1187
    find_lex $P108, "blank_context"
    null $P109
    $P108."set_outer"($P109)
.annotate 'line', 1188
    $P108 = "blank_context"()
    store_lex "$interactive_ctx", $P108
.annotate 'line', 1190
    find_lex $P108, "$interactive_ctx"
    unless_null $P108, vivify_761
    new $P108, "Undef"
  vivify_761:
    getattribute $P109, $P108, "lex_pad"
    store_lex "%interactive_pad", $P109
.annotate 'line', 1192
    find_lex $P1711, "%adverbs"
    unless_null $P1711, vivify_762
    $P1711 = root_new ['parrot';'Hash']
  vivify_762:
    set $P108, $P1711["target"]
    unless_null $P108, vivify_763
    new $P108, "Undef"
  vivify_763:
    set $S100, $P108
    downcase $S101, $S100
    new $P109, 'String'
    set $P109, $S101
    store_lex "$target", $P109
.annotate 'line', 1194
    getinterp $P108
    $P109 = $P108."stderr_handle"()
    find_lex $P110, "self"
    $P111 = $P110."interactive_banner"()
    print $P109, $P111
.annotate 'line', 1196
    getinterp $P108
    $P109 = $P108."stdin_handle"()
    store_lex "$stdin", $P109
.annotate 'line', 1197
    find_lex $P1712, "%adverbs"
    unless_null $P1712, vivify_764
    $P1712 = root_new ['parrot';'Hash']
  vivify_764:
    set $P108, $P1712["encoding"]
    unless_null $P108, vivify_765
    new $P108, "Undef"
  vivify_765:
    set $S100, $P108
    new $P109, 'String'
    set $P109, $S100
    store_lex "$encoding", $P109
.annotate 'line', 1198
    find_lex $P109, "$encoding"
    unless_null $P109, vivify_766
    new $P109, "Undef"
  vivify_766:
    if $P109, if_1714
    set $P108, $P109
    goto if_1714_end
  if_1714:
    find_lex $P110, "$encoding"
    unless_null $P110, vivify_767
    new $P110, "Undef"
  vivify_767:
    set $S100, $P110
    isne $I100, $S100, "fixed_8"
    new $P108, 'Integer'
    set $P108, $I100
  if_1714_end:
    unless $P108, if_1713_end
.annotate 'line', 1199
    find_lex $P111, "$stdin"
    unless_null $P111, vivify_768
    new $P111, "Undef"
  vivify_768:
    find_lex $P112, "$encoding"
    unless_null $P112, vivify_769
    new $P112, "Undef"
  vivify_769:
    $P111."encoding"($P112)
  if_1713_end:
.annotate 'line', 1173
    find_lex $P108, "$save_ctx"
    unless_null $P108, vivify_770
    new $P108, "Undef"
  vivify_770:
.annotate 'line', 1203
    new $P115, 'ExceptionHandler'
    set_label $P115, loop1762_handler
    $P115."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P115
  loop1762_test:
    new $P108, "Float"
    assign $P108, 1
    unless $P108, loop1762_done
  loop1762_redo:
    .const 'Sub' $P1716 = "186_1315150096.049" 
    capture_lex $P1716
    $P1716()
  loop1762_next:
    goto loop1762_test
  loop1762_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P116, exception, 'type'
    eq $P116, .CONTROL_LOOP_NEXT, loop1762_next
    eq $P116, .CONTROL_LOOP_REDO, loop1762_redo
  loop1762_done:
    pop_eh 
.annotate 'line', 1173
    .return ($P108)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "blank_context"  :subid("185_1315150096.049") :outer("184_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1181
    $P1700 = root_new ['parrot';'Hash']
    set $P1699, $P1700
    .lex "%blank_pad", $P1699
.annotate 'line', 1179
    find_lex $P1701, "%blank_pad"
    unless_null $P1701, vivify_757
    $P1701 = root_new ['parrot';'Hash']
  vivify_757:
.annotate 'line', 1183
    getinterp $P102
    set $P103, $P102["context"]
    unless_null $P103, vivify_758
    new $P103, "Undef"
  vivify_758:
    getattribute $P104, $P103, "lex_pad"
    find_lex $P1702, "%blank_pad"
    unless_null $P1702, vivify_759
    $P1702 = root_new ['parrot';'Hash']
  vivify_759:
    copy $P104, $P1702
.annotate 'line', 1185
    getinterp $P102
    set $P103, $P102["context"]
    unless_null $P103, vivify_760
    new $P103, "Undef"
  vivify_760:
.annotate 'line', 1179
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1715"  :anon :subid("186_1315150096.049") :outer("184_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1203
    .const 'Sub' $P1730 = "187_1315150096.049" 
    capture_lex $P1730
.annotate 'line', 1206
    new $P109, "Undef"
    set $P1717, $P109
    .lex "$prompt", $P1717
.annotate 'line', 1207
    new $P110, "Undef"
    set $P1718, $P110
    .lex "$code", $P1718
.annotate 'line', 1216
    new $P111, "Undef"
    set $P1719, $P111
    .lex "$*AUTOPRINTPOS", $P1719
.annotate 'line', 1217
    new $P112, "Undef"
    set $P1720, $P112
    .lex "$*CTXSAVE", $P1720
.annotate 'line', 1218
    new $P113, "Undef"
    set $P1721, $P113
    .lex "$*MAIN_CTX", $P1721
.annotate 'line', 1204
    find_lex $P114, "$stdin"
    unless_null $P114, vivify_771
    new $P114, "Undef"
  vivify_771:
    if $P114, unless_1722_end
    die 0, .CONTROL_LOOP_LAST
  unless_1722_end:
.annotate 'line', 1206
    find_lex $P114, "self"
    $P115 = $P114."interactive_prompt"()
    set $P1723, $P115
    defined $I1725, $P1723
    if $I1725, default_1724
    new $P116, "String"
    assign $P116, "> "
    set $P1723, $P116
  default_1724:
    store_lex "$prompt", $P1723
.annotate 'line', 1207
    find_lex $P114, "$stdin"
    unless_null $P114, vivify_772
    new $P114, "Undef"
  vivify_772:
    find_lex $P115, "$prompt"
    unless_null $P115, vivify_773
    new $P115, "Undef"
  vivify_773:
    set $S100, $P115
    $P116 = $P114."readline_interactive"($S100)
    store_lex "$code", $P116
.annotate 'line', 1209
    find_lex $P114, "$code"
    unless_null $P114, vivify_774
    new $P114, "Undef"
  vivify_774:
    isnull $I100, $P114
    unless $I100, if_1726_end
    die 0, .CONTROL_LOOP_LAST
  if_1726_end:
.annotate 'line', 1210
    find_lex $P114, "$code"
    unless_null $P114, vivify_775
    new $P114, "Undef"
  vivify_775:
    defined $I100, $P114
    if $I100, unless_1727_end
.annotate 'line', 1211
    print "\n"
.annotate 'line', 1212
    die 0, .CONTROL_LOOP_LAST
  unless_1727_end:
.annotate 'line', 1216
    getinterp $P114
    $P115 = $P114."stdout_handle"()
    $P116 = $P115."tell"()
    store_lex "$*AUTOPRINTPOS", $P116
.annotate 'line', 1217
    find_lex $P114, "self"
    store_lex "$*CTXSAVE", $P114
.annotate 'line', 1203
    find_lex $P116, "$*MAIN_CTX"
    unless_null $P116, vivify_776
    get_hll_global $P114, "GLOBAL"
    get_who $P115, $P114
    set $P116, $P115["$MAIN_CTX"]
    unless_null $P116, vivify_777
    die "Contextual $*MAIN_CTX not found"
  vivify_777:
  vivify_776:
.annotate 'line', 1220
    find_lex $P115, "$code"
    unless_null $P115, vivify_778
    new $P115, "Undef"
  vivify_778:
    if $P115, if_1728
    set $P114, $P115
    goto if_1728_end
  if_1728:
    .const 'Sub' $P1730 = "187_1315150096.049" 
    capture_lex $P1730
    $P118 = $P1730()
    set $P114, $P118
  if_1728_end:
.annotate 'line', 1203
    .return ($P114)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1729"  :anon :subid("187_1315150096.049") :outer("186_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1220
    .const 'Sub' $P1754 = "190_1315150096.049" 
    capture_lex $P1754
    .const 'Sub' $P1733 = "188_1315150096.049" 
    capture_lex $P1733
.annotate 'line', 1222
    new $P116, "Undef"
    set $P1731, $P116
    .lex "$output", $P1731
.annotate 'line', 1221
    find_lex $P117, "$code"
    unless_null $P117, vivify_779
    new $P117, "Undef"
  vivify_779:
    concat $P118, $P117, "\n"
    store_lex "$code", $P118
.annotate 'line', 1220
    find_lex $P117, "$output"
    unless_null $P117, vivify_780
    new $P117, "Undef"
  vivify_780:
.annotate 'line', 1223
    .const 'Sub' $P1733 = "188_1315150096.049" 
    capture_lex $P1733
    $P1733()
.annotate 'line', 1230
    find_dynamic_lex $P119, "$*MAIN_CTX"
    unless_null $P119, vivify_785
    get_hll_global $P117, "GLOBAL"
    get_who $P118, $P117
    set $P119, $P118["$MAIN_CTX"]
    unless_null $P119, vivify_786
    die "Contextual $*MAIN_CTX not found"
  vivify_786:
  vivify_785:
    defined $I100, $P119
    unless $I100, if_1752_end
.annotate 'line', 1231
    find_dynamic_lex $P123, "$*MAIN_CTX"
    unless_null $P123, vivify_787
    get_hll_global $P121, "GLOBAL"
    get_who $P122, $P121
    set $P123, $P122["$MAIN_CTX"]
    unless_null $P123, vivify_788
    die "Contextual $*MAIN_CTX not found"
  vivify_788:
  vivify_787:
    $P124 = $P123."lexpad_full"()
    defined $I101, $P124
    unless $I101, for_undef_789
    iter $P120, $P124
    new $P126, 'ExceptionHandler'
    set_label $P126, loop1757_handler
    $P126."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P126
  loop1757_test:
    unless $P120, loop1757_done
    shift $P125, $P120
  loop1757_redo:
    .const 'Sub' $P1754 = "190_1315150096.049" 
    capture_lex $P1754
    $P1754($P125)
  loop1757_next:
    goto loop1757_test
  loop1757_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P128, exception, 'type'
    eq $P128, .CONTROL_LOOP_NEXT, loop1757_next
    eq $P128, .CONTROL_LOOP_REDO, loop1757_redo
  loop1757_done:
    pop_eh 
  for_undef_789:
.annotate 'line', 1234
    find_lex $P120, "$interactive_ctx"
    unless_null $P120, vivify_793
    new $P120, "Undef"
  vivify_793:
    store_lex "$save_ctx", $P120
  if_1752_end:
.annotate 'line', 1236
    find_lex $P117, "$output"
    unless_null $P117, vivify_794
    new $P117, "Undef"
  vivify_794:
    isnull $I100, $P117
    unless $I100, if_1758_end
    die 0, .CONTROL_LOOP_NEXT
  if_1758_end:
.annotate 'line', 1238
    find_lex $P118, "$target"
    unless_null $P118, vivify_795
    new $P118, "Undef"
  vivify_795:
    isfalse $I100, $P118
    if $I100, if_1759
.annotate 'line', 1240
    find_lex $P120, "$target"
    unless_null $P120, vivify_796
    new $P120, "Undef"
  vivify_796:
    set $S100, $P120
    iseq $I101, $S100, "pir"
    if $I101, if_1760
.annotate 'line', 1243
    find_lex $P122, "self"
    find_lex $P123, "$output"
    unless_null $P123, vivify_797
    new $P123, "Undef"
  vivify_797:
    find_lex $P124, "$target"
    unless_null $P124, vivify_798
    new $P124, "Undef"
  vivify_798:
    find_lex $P1761, "%adverbs"
    unless_null $P1761, vivify_799
    $P1761 = root_new ['parrot';'Hash']
  vivify_799:
    $P125 = $P122."dumper"($P123, $P124, $P1761 :flat)
.annotate 'line', 1242
    set $P119, $P125
.annotate 'line', 1240
    goto if_1760_end
  if_1760:
.annotate 'line', 1241
    find_lex $P122, "$output"
    unless_null $P122, vivify_800
    new $P122, "Undef"
  vivify_800:
    say $P122
  if_1760_end:
.annotate 'line', 1240
    set $P117, $P119
.annotate 'line', 1238
    goto if_1759_end
  if_1759:
.annotate 'line', 1239
    find_lex $P119, "self"
    find_lex $P120, "$output"
    unless_null $P120, vivify_801
    new $P120, "Undef"
  vivify_801:
    $P121 = $P119."autoprint"($P120)
.annotate 'line', 1238
    set $P117, $P121
  if_1759_end:
.annotate 'line', 1220
    .return ($P117)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1732"  :anon :subid("188_1315150096.049") :outer("187_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1223
    .const 'Sub' $P1741 = "189_1315150096.049" 
    capture_lex $P1741
    new $P1737, 'ExceptionHandler'
    set_label $P1737, control_1736
    $P1737."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P1737
.annotate 'line', 1224
    find_lex $P117, "self"
    find_lex $P118, "$code"
    unless_null $P118, vivify_781
    new $P118, "Undef"
  vivify_781:
    find_lex $P119, "$save_ctx"
    unless_null $P119, vivify_782
    new $P119, "Undef"
  vivify_782:
    find_lex $P1734, "%adverbs"
    unless_null $P1734, vivify_783
    $P1734 = root_new ['parrot';'Hash']
  vivify_783:
    $P120 = $P117."eval"($P118, $P1734 :flat, $P119 :named("outer_ctx"))
    store_lex "$output", $P120
.annotate 'line', 1223
    pop_eh 
    goto skip_handler_1735
  control_1736:
.annotate 'line', 1225
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P1741 = "189_1315150096.049" 
    newclosure $P1749, $P1741
    $P1749(exception)
    new $P1750, 'Integer'
    set $P1750, 1
    set exception["handled"], $P1750
    set $I1751, exception["handled"]
    ne $I1751, 1, nothandled_1739
  handled_1738:
    .return (exception)
  nothandled_1739:
    rethrow exception
  skip_handler_1735:
.annotate 'line', 1223
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1740"  :anon :subid("189_1315150096.049") :outer("188_1315150096.049")
    .param pmc param_1742
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1225
    .lex "$_", param_1742
    find_lex $P1743, "$_"
    set $P1744, $P1743
    .lex "$!", $P1744
.annotate 'line', 1226
    find_lex $P1745, "$!"
    unless_null $P1745, vivify_784
    new $P1745, "Undef"
  vivify_784:
    set $S1746, $P1745
    new $P1747, 'String'
    set $P1747, $S1746
    concat $P1748, $P1747, "\n"
    print $P1748
.annotate 'line', 1227
    die 0, .CONTROL_LOOP_NEXT
.annotate 'line', 1225
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1753"  :anon :subid("190_1315150096.049") :outer("187_1315150096.049")
    .param pmc param_1755
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1231
    .lex "$_", param_1755
.annotate 'line', 1232
    find_lex $P126, "$_"
    unless_null $P126, vivify_790
    new $P126, "Undef"
  vivify_790:
    $P127 = $P126."value"()
    find_lex $P128, "$_"
    unless_null $P128, vivify_791
    new $P128, "Undef"
  vivify_791:
    $P129 = $P128."key"()
    find_lex $P1756, "%interactive_pad"
    unless_null $P1756, vivify_792
    $P1756 = root_new ['parrot';'Hash']
    store_lex "%interactive_pad", $P1756
  vivify_792:
    set $P1756[$P129], $P127
.annotate 'line', 1231
    .return ($P127)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "eval" :anon :subid("191_1315150096.049") :outer("164_1315150096.049")
    .param pmc param_1764
    .param pmc param_1765
    .param pmc param_1766 :slurpy
    .param pmc param_1767 :slurpy :named
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1249
    .const 'Sub' $P1774 = "192_1315150096.049" 
    capture_lex $P1774
    .lex "self", param_1764
    .lex "$code", param_1765
    .lex "@args", param_1766
    .lex "%adverbs", param_1767
.annotate 'line', 1250
    new $P102, "Undef"
    set $P1768, $P102
    .lex "$output", $P1768
.annotate 'line', 1249
    find_lex $P103, "$output"
    unless_null $P103, vivify_802
    new $P103, "Undef"
  vivify_802:
.annotate 'line', 1251
    find_lex $P103, "self"
    find_lex $P104, "$code"
    unless_null $P104, vivify_803
    new $P104, "Undef"
  vivify_803:
    find_lex $P1769, "%adverbs"
    unless_null $P1769, vivify_804
    $P1769 = root_new ['parrot';'Hash']
  vivify_804:
    $P105 = $P103."compile"($P104, $P1769 :flat)
    store_lex "$output", $P105
.annotate 'line', 1253
    find_lex $P104, "$output"
    unless_null $P104, vivify_805
    new $P104, "Undef"
  vivify_805:
    isa $I100, $P104, "String"
    new $P105, 'Integer'
    set $P105, $I100
    isfalse $I101, $P105
    if $I101, if_1771
    new $P103, 'Integer'
    set $P103, $I101
    goto if_1771_end
  if_1771:
.annotate 'line', 1254
    find_lex $P1772, "%adverbs"
    unless_null $P1772, vivify_806
    $P1772 = root_new ['parrot';'Hash']
  vivify_806:
    set $P106, $P1772["target"]
    unless_null $P106, vivify_807
    new $P106, "Undef"
  vivify_807:
    set $S100, $P106
    iseq $I102, $S100, ""
    new $P103, 'Integer'
    set $P103, $I102
  if_1771_end:
    unless $P103, if_1770_end
    .const 'Sub' $P1774 = "192_1315150096.049" 
    capture_lex $P1774
    $P1774()
  if_1770_end:
.annotate 'line', 1249
    find_lex $P103, "$output"
    unless_null $P103, vivify_818
    new $P103, "Undef"
  vivify_818:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1773"  :anon :subid("192_1315150096.049") :outer("191_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1255
    new $P107, "Undef"
    set $P1775, $P107
    .lex "$outer_ctx", $P1775
    find_lex $P1776, "%adverbs"
    unless_null $P1776, vivify_808
    $P1776 = root_new ['parrot';'Hash']
  vivify_808:
    set $P108, $P1776["outer_ctx"]
    unless_null $P108, vivify_809
    new $P108, "Undef"
  vivify_809:
    store_lex "$outer_ctx", $P108
.annotate 'line', 1256
    find_lex $P108, "$outer_ctx"
    unless_null $P108, vivify_810
    new $P108, "Undef"
  vivify_810:
    defined $I103, $P108
    unless $I103, if_1777_end
.annotate 'line', 1257
    new $P109, "Float"
    assign $P109, 0
    set $I104, $P109
    find_lex $P1778, "$output"
    unless_null $P1778, vivify_811
    $P1778 = root_new ['parrot';'ResizablePMCArray']
  vivify_811:
    set $P110, $P1778[$I104]
    unless_null $P110, vivify_812
    new $P110, "Undef"
  vivify_812:
    find_lex $P111, "$outer_ctx"
    unless_null $P111, vivify_813
    new $P111, "Undef"
  vivify_813:
    $P110."set_outer_ctx"($P111)
  if_1777_end:
.annotate 'line', 1260
    find_lex $P1779, "%adverbs"
    unless_null $P1779, vivify_814
    $P1779 = root_new ['parrot';'Hash']
  vivify_814:
    set $P108, $P1779["trace"]
    unless_null $P108, vivify_815
    new $P108, "Undef"
  vivify_815:
    set $I103, $P108
    trace $I103
.annotate 'line', 1261
    find_lex $P108, "$output"
    unless_null $P108, vivify_816
    new $P108, "Undef"
  vivify_816:
    find_lex $P1780, "@args"
    unless_null $P1780, vivify_817
    $P1780 = root_new ['parrot';'ResizablePMCArray']
  vivify_817:
    $P109 = $P108($P1780 :flat)
    store_lex "$output", $P109
.annotate 'line', 1262
    new $P108, "Float"
    assign $P108, 0
    set $I103, $P108
    trace $I103
.annotate 'line', 1254
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "ctxsave" :anon :subid("193_1315150096.049") :outer("164_1315150096.049")
    .param pmc param_1782
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1268
    .lex "self", param_1782
.annotate 'line', 1270

                $P0 = getinterp
                $P1783 = $P0['context';1]
            
    store_dynamic_lex "$*MAIN_CTX", $P1783
.annotate 'line', 1274
    new $P102, "Float"
    assign $P102, 0
    store_dynamic_lex "$*CTXSAVE", $P102
.annotate 'line', 1268
    .return ($P102)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "panic" :anon :subid("194_1315150096.049") :outer("164_1315150096.049")
    .param pmc param_1785
    .param pmc param_1786 :slurpy
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1277
    .lex "self", param_1785
    .lex "@args", param_1786
.annotate 'line', 1278
    find_lex $P1787, "@args"
    unless_null $P1787, vivify_819
    $P1787 = root_new ['parrot';'ResizablePMCArray']
  vivify_819:
    join $S100, "", $P1787
    die $S100
.annotate 'line', 1277
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "stages" :anon :subid("195_1315150096.049") :outer("164_1315150096.049")
    .param pmc param_1789
    .param pmc param_1790 :optional
    .param int has_param_1790 :opt_flag
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1281
    .lex "self", param_1789
    if has_param_1790, optparam_820
    $P1791 = root_new ['parrot';'ResizablePMCArray']
    set param_1790, $P1791
  optparam_820:
    .lex "@value", param_1790
.annotate 'line', 1282
    find_lex $P1793, "@value"
    unless_null $P1793, vivify_821
    $P1793 = root_new ['parrot';'ResizablePMCArray']
  vivify_821:
    set $N100, $P1793
    unless $N100, if_1792_end
.annotate 'line', 1283
    find_lex $P1794, "@value"
    unless_null $P1794, vivify_822
    $P1794 = root_new ['parrot';'ResizablePMCArray']
  vivify_822:
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    setattribute $P103, $P104, "@!stages", $P1794
  if_1792_end:
.annotate 'line', 1281
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    getattribute $P1795, $P103, $P104, "@!stages"
    unless_null $P1795, vivify_823
    $P1795 = root_new ['parrot';'ResizablePMCArray']
  vivify_823:
    .return ($P1795)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "parsegrammar" :anon :subid("196_1315150096.049") :outer("164_1315150096.049")
    .param pmc param_1797
    .param pmc param_1798 :slurpy
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1288
    .lex "self", param_1797
    .lex "@value", param_1798
.annotate 'line', 1289
    find_lex $P1800, "@value"
    unless_null $P1800, vivify_824
    $P1800 = root_new ['parrot';'ResizablePMCArray']
  vivify_824:
    set $N100, $P1800
    unless $N100, if_1799_end
.annotate 'line', 1290
    new $P102, "Float"
    assign $P102, 0
    set $I100, $P102
    find_lex $P1801, "@value"
    unless_null $P1801, vivify_825
    $P1801 = root_new ['parrot';'ResizablePMCArray']
  vivify_825:
    set $P103, $P1801[$I100]
    unless_null $P103, vivify_826
    new $P103, "Undef"
  vivify_826:
    find_lex $P104, "self"
    nqp_decontainerize $P105, $P104
    find_lex $P106, "$?CLASS"
    setattribute $P105, $P106, "$!parsegrammar", $P103
  if_1799_end:
.annotate 'line', 1288
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    getattribute $P105, $P103, $P104, "$!parsegrammar"
    unless_null $P105, vivify_827
    new $P105, "Undef"
  vivify_827:
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "parseactions" :anon :subid("197_1315150096.049") :outer("164_1315150096.049")
    .param pmc param_1803
    .param pmc param_1804 :slurpy
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1295
    .lex "self", param_1803
    .lex "@value", param_1804
.annotate 'line', 1296
    find_lex $P1806, "@value"
    unless_null $P1806, vivify_828
    $P1806 = root_new ['parrot';'ResizablePMCArray']
  vivify_828:
    set $N100, $P1806
    unless $N100, if_1805_end
.annotate 'line', 1297
    new $P102, "Float"
    assign $P102, 0
    set $I100, $P102
    find_lex $P1807, "@value"
    unless_null $P1807, vivify_829
    $P1807 = root_new ['parrot';'ResizablePMCArray']
  vivify_829:
    set $P103, $P1807[$I100]
    unless_null $P103, vivify_830
    new $P103, "Undef"
  vivify_830:
    find_lex $P104, "self"
    nqp_decontainerize $P105, $P104
    find_lex $P106, "$?CLASS"
    setattribute $P105, $P106, "$!parseactions", $P103
  if_1805_end:
.annotate 'line', 1295
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    getattribute $P105, $P103, $P104, "$!parseactions"
    unless_null $P105, vivify_831
    new $P105, "Undef"
  vivify_831:
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "interactive_banner" :anon :subid("198_1315150096.049") :outer("164_1315150096.049")
    .param pmc param_1809
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1302
    .lex "self", param_1809
    .return ("")
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "interactive_prompt" :anon :subid("199_1315150096.049") :outer("164_1315150096.049")
    .param pmc param_1811
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1304
    .lex "self", param_1811
    .return ("> ")
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "compiler_progname" :anon :subid("200_1315150096.049") :outer("164_1315150096.049")
    .param pmc param_1813
    .param pmc param_1814 :optional
    .param int has_param_1814 :opt_flag
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1306
    .lex "self", param_1813
    if has_param_1814, optparam_832
    new $P102, "Undef"
    set param_1814, $P102
  optparam_832:
    .lex "$value", param_1814
.annotate 'line', 1307
    find_lex $P103, "$value"
    unless_null $P103, vivify_833
    new $P103, "Undef"
  vivify_833:
    defined $I100, $P103
    unless $I100, if_1815_end
.annotate 'line', 1308
    find_lex $P104, "$value"
    unless_null $P104, vivify_834
    new $P104, "Undef"
  vivify_834:
    find_lex $P105, "self"
    nqp_decontainerize $P106, $P105
    find_lex $P107, "$?CLASS"
    setattribute $P106, $P107, "$!compiler_progname", $P104
  if_1815_end:
.annotate 'line', 1306
    find_lex $P103, "self"
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    getattribute $P106, $P104, $P105, "$!compiler_progname"
    unless_null $P106, vivify_835
    new $P106, "Undef"
  vivify_835:
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "commandline_options" :anon :subid("201_1315150096.049") :outer("164_1315150096.049")
    .param pmc param_1817
    .param pmc param_1818 :optional
    .param int has_param_1818 :opt_flag
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1313
    .lex "self", param_1817
    if has_param_1818, optparam_836
    $P1819 = root_new ['parrot';'ResizablePMCArray']
    set param_1818, $P1819
  optparam_836:
    .lex "@value", param_1818
.annotate 'line', 1314
    find_lex $P1821, "@value"
    unless_null $P1821, vivify_837
    $P1821 = root_new ['parrot';'ResizablePMCArray']
  vivify_837:
    set $N100, $P1821
    unless $N100, if_1820_end
.annotate 'line', 1315
    find_lex $P1822, "@value"
    unless_null $P1822, vivify_838
    $P1822 = root_new ['parrot';'ResizablePMCArray']
  vivify_838:
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    setattribute $P103, $P104, "@!cmdoptions", $P1822
  if_1820_end:
.annotate 'line', 1313
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    getattribute $P1823, $P103, $P104, "@!cmdoptions"
    unless_null $P1823, vivify_839
    $P1823 = root_new ['parrot';'ResizablePMCArray']
  vivify_839:
    .return ($P1823)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "command_line" :anon :subid("202_1315150096.049") :outer("164_1315150096.049")
    .param pmc param_1825
    .param pmc param_1826
    .param pmc param_1827 :slurpy :named
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1320
    .const 'Sub' $P1840 = "203_1315150096.049" 
    capture_lex $P1840
    .lex "self", param_1825
    .lex "@args", param_1826
    .lex "%adverbs", param_1827
.annotate 'line', 1333
    new $P102, "Undef"
    set $P1828, $P102
    .lex "$program-name", $P1828
.annotate 'line', 1334
    new $P103, "Undef"
    set $P1829, $P103
    .lex "$res", $P1829
.annotate 'line', 1335
    $P1831 = root_new ['parrot';'Hash']
    set $P1830, $P1831
    .lex "%opts", $P1830
.annotate 'line', 1336
    $P1833 = root_new ['parrot';'ResizablePMCArray']
    set $P1832, $P1833
    .lex "@a", $P1832
.annotate 'line', 1329
    new $P104, "Float"
    assign $P104, 2
    set $I100, $P104
    find_lex $P1835, "@args"
    unless_null $P1835, vivify_840
    $P1835 = root_new ['parrot';'ResizablePMCArray']
  vivify_840:
    set $P105, $P1835[$I100]
    unless_null $P105, vivify_841
    new $P105, "Undef"
  vivify_841:
    set $S100, $P105
    index $I101, $S100, "@INC"
    set $N100, $I101
    set $N101, 0
    isge $I102, $N100, $N101
    unless $I102, if_1834_end
.annotate 'line', 1330
    new $P106, "Float"
    assign $P106, 0
    set $I103, $P106
    exit $I103
  if_1834_end:
.annotate 'line', 1333
    new $P104, "Float"
    assign $P104, 0
    set $I100, $P104
    find_lex $P1836, "@args"
    unless_null $P1836, vivify_842
    $P1836 = root_new ['parrot';'ResizablePMCArray']
  vivify_842:
    set $P105, $P1836[$I100]
    unless_null $P105, vivify_843
    new $P105, "Undef"
  vivify_843:
    store_lex "$program-name", $P105
.annotate 'line', 1334
    find_lex $P104, "self"
    find_lex $P1837, "@args"
    unless_null $P1837, vivify_844
    $P1837 = root_new ['parrot';'ResizablePMCArray']
  vivify_844:
    $P105 = $P104."process_args"($P1837)
    store_lex "$res", $P105
.annotate 'line', 1335
    find_lex $P104, "$res"
    unless_null $P104, vivify_845
    new $P104, "Undef"
  vivify_845:
    $P105 = $P104."options"()
    store_lex "%opts", $P105
.annotate 'line', 1336
    find_lex $P104, "$res"
    unless_null $P104, vivify_846
    new $P104, "Undef"
  vivify_846:
    $P105 = $P104."arguments"()
    store_lex "@a", $P105
.annotate 'line', 1338
    find_lex $P1838, "%opts"
    unless_null $P1838, vivify_847
    $P1838 = root_new ['parrot';'Hash']
  vivify_847:
    defined $I100, $P1838
    unless $I100, for_undef_848
    iter $P104, $P1838
    new $P106, 'ExceptionHandler'
    set_label $P106, loop1844_handler
    $P106."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P106
  loop1844_test:
    unless $P104, loop1844_done
    shift $P105, $P104
  loop1844_redo:
    .const 'Sub' $P1840 = "203_1315150096.049" 
    capture_lex $P1840
    $P1840($P105)
  loop1844_next:
    goto loop1844_test
  loop1844_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P108, exception, 'type'
    eq $P108, .CONTROL_LOOP_NEXT, loop1844_next
    eq $P108, .CONTROL_LOOP_REDO, loop1844_redo
  loop1844_done:
    pop_eh 
  for_undef_848:
.annotate 'line', 1341
    find_lex $P1846, "%adverbs"
    unless_null $P1846, vivify_854
    $P1846 = root_new ['parrot';'Hash']
  vivify_854:
    set $P104, $P1846["help"]
    unless_null $P104, vivify_855
    new $P104, "Undef"
  vivify_855:
    unless $P104, if_1845_end
    find_lex $P105, "self"
    find_lex $P106, "$program-name"
    unless_null $P106, vivify_856
    new $P106, "Undef"
  vivify_856:
    $P105."usage"($P106)
  if_1845_end:
.annotate 'line', 1343
    load_bytecode "dumper.pbc"
.annotate 'line', 1344
    load_bytecode "PGE/Dumper.pbc"
.annotate 'line', 1346
    find_lex $P104, "self"
    find_lex $P1847, "@a"
    unless_null $P1847, vivify_857
    $P1847 = root_new ['parrot';'ResizablePMCArray']
  vivify_857:
    find_lex $P1848, "%adverbs"
    unless_null $P1848, vivify_858
    $P1848 = root_new ['parrot';'Hash']
  vivify_858:
    $P105 = $P104."command_eval"($P1847 :flat, $P1848 :flat)
.annotate 'line', 1320
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1839"  :anon :subid("203_1315150096.049") :outer("202_1315150096.049")
    .param pmc param_1841
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1338
    .lex "$k", param_1841
.annotate 'line', 1339
    find_lex $P106, "$k"
    unless_null $P106, vivify_849
    new $P106, "Undef"
  vivify_849:
    find_lex $P1842, "%opts"
    unless_null $P1842, vivify_850
    $P1842 = root_new ['parrot';'Hash']
  vivify_850:
    set $P107, $P1842[$P106]
    unless_null $P107, vivify_851
    new $P107, "Undef"
  vivify_851:
    find_lex $P108, "$k"
    unless_null $P108, vivify_852
    new $P108, "Undef"
  vivify_852:
    find_lex $P1843, "%adverbs"
    unless_null $P1843, vivify_853
    $P1843 = root_new ['parrot';'Hash']
    store_lex "%adverbs", $P1843
  vivify_853:
    set $P1843[$P108], $P107
.annotate 'line', 1338
    .return ($P107)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "command_eval" :anon :subid("204_1315150096.049") :outer("164_1315150096.049")
    .param pmc param_1850
    .param pmc param_1851 :slurpy
    .param pmc param_1852 :slurpy :named
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1350
    .const 'Sub' $P1911 = "208_1315150096.049" 
    capture_lex $P1911
    .const 'Sub' $P1864 = "205_1315150096.049" 
    capture_lex $P1864
    .lex "self", param_1850
    .lex "@a", param_1851
    .lex "%adverbs", param_1852
.annotate 'line', 1355
    new $P102, "Undef"
    set $P1853, $P102
    .lex "$result", $P1853
.annotate 'line', 1356
    new $P103, "Undef"
    set $P1854, $P103
    .lex "$error", $P1854
.annotate 'line', 1357
    new $P104, "Undef"
    set $P1855, $P104
    .lex "$has_error", $P1855
.annotate 'line', 1351
    find_lex $P1857, "%adverbs"
    unless_null $P1857, vivify_859
    $P1857 = root_new ['parrot';'Hash']
  vivify_859:
    set $P105, $P1857["version"]
    unless_null $P105, vivify_860
    new $P105, "Undef"
  vivify_860:
    unless $P105, if_1856_end
    find_lex $P106, "self"
    $P106."version"()
  if_1856_end:
.annotate 'line', 1352
    find_lex $P1859, "%adverbs"
    unless_null $P1859, vivify_861
    $P1859 = root_new ['parrot';'Hash']
  vivify_861:
    set $P105, $P1859["show-config"]
    unless_null $P105, vivify_862
    new $P105, "Undef"
  vivify_862:
    unless $P105, if_1858_end
    find_lex $P106, "self"
    $P106."show-config"()
  if_1858_end:
.annotate 'line', 1353
    find_lex $P1861, "%adverbs"
    unless_null $P1861, vivify_863
    $P1861 = root_new ['parrot';'Hash']
  vivify_863:
    set $P105, $P1861["nqpevent"]
    unless_null $P105, vivify_864
    new $P105, "Undef"
  vivify_864:
    unless $P105, if_1860_end
    find_lex $P106, "self"
    find_lex $P1862, "%adverbs"
    unless_null $P1862, vivify_865
    $P1862 = root_new ['parrot';'Hash']
  vivify_865:
    set $P107, $P1862["nqpevent"]
    unless_null $P107, vivify_866
    new $P107, "Undef"
  vivify_866:
    $P106."nqpevent"($P107)
  if_1860_end:
.annotate 'line', 1350
    find_lex $P105, "$result"
    unless_null $P105, vivify_867
    new $P105, "Undef"
  vivify_867:
    find_lex $P105, "$error"
    unless_null $P105, vivify_868
    new $P105, "Undef"
  vivify_868:
.annotate 'line', 1357
    new $P105, "Float"
    assign $P105, 0
    store_lex "$has_error", $P105
.annotate 'line', 1358
    .const 'Sub' $P1864 = "205_1315150096.049" 
    capture_lex $P1864
    $P1864()
.annotate 'line', 1380
    find_lex $P105, "$has_error"
    unless_null $P105, vivify_899
    new $P105, "Undef"
  vivify_899:
    unless $P105, if_1906_end
.annotate 'line', 1381
    find_lex $P1909, "%adverbs"
    unless_null $P1909, vivify_900
    $P1909 = root_new ['parrot';'Hash']
  vivify_900:
    set $P107, $P1909["ll-exception"]
    unless_null $P107, vivify_901
    new $P107, "Undef"
  vivify_901:
    unless $P107, unless_1908
    set $P106, $P107
    goto unless_1908_end
  unless_1908:
    find_lex $P108, "self"
    can $I100, $P108, "handle-exception"
    new $P109, 'Integer'
    set $P109, $I100
    isfalse $I101, $P109
    new $P106, 'Integer'
    set $P106, $I101
  unless_1908_end:
    if $P106, if_1907
.annotate 'line', 1388
    find_lex $P111, "self"
    find_lex $P112, "$error"
    unless_null $P112, vivify_902
    new $P112, "Undef"
  vivify_902:
    $P111."handle-exception"($P112)
.annotate 'line', 1387
    goto if_1907_end
  if_1907:
.annotate 'line', 1381
    .const 'Sub' $P1911 = "208_1315150096.049" 
    capture_lex $P1911
    $P1911()
  if_1907_end:
  if_1906_end:
.annotate 'line', 1350
    find_lex $P105, "$result"
    unless_null $P105, vivify_908
    new $P105, "Undef"
  vivify_908:
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1863"  :anon :subid("205_1315150096.049") :outer("204_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1358
    .const 'Sub' $P1897 = "207_1315150096.049" 
    capture_lex $P1897
    .const 'Sub' $P1884 = "206_1315150096.049" 
    capture_lex $P1884
    new $P1893, 'ExceptionHandler'
    set_label $P1893, control_1892
    $P1893."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P1893
.annotate 'line', 1359
    find_lex $P1866, "%adverbs"
    unless_null $P1866, vivify_869
    $P1866 = root_new ['parrot';'Hash']
  vivify_869:
    set $P105, $P1866["e"]
    unless_null $P105, vivify_870
    new $P105, "Undef"
  vivify_870:
    if $P105, if_1865
.annotate 'line', 1362
    find_lex $P1871, "@a"
    unless_null $P1871, vivify_871
    $P1871 = root_new ['parrot';'ResizablePMCArray']
  vivify_871:
    isfalse $I100, $P1871
    if $I100, if_1870
.annotate 'line', 1363
    find_lex $P1874, "%adverbs"
    unless_null $P1874, vivify_872
    $P1874 = root_new ['parrot';'Hash']
  vivify_872:
    set $P106, $P1874["combine"]
    unless_null $P106, vivify_873
    new $P106, "Undef"
  vivify_873:
    if $P106, if_1873
.annotate 'line', 1364
    find_lex $P107, "self"
    new $P108, "Float"
    assign $P108, 0
    set $I101, $P108
    find_lex $P1877, "@a"
    unless_null $P1877, vivify_874
    $P1877 = root_new ['parrot';'ResizablePMCArray']
  vivify_874:
    set $P109, $P1877[$I101]
    unless_null $P109, vivify_875
    new $P109, "Undef"
  vivify_875:
    find_lex $P1878, "@a"
    unless_null $P1878, vivify_876
    $P1878 = root_new ['parrot';'ResizablePMCArray']
  vivify_876:
    find_lex $P1879, "%adverbs"
    unless_null $P1879, vivify_877
    $P1879 = root_new ['parrot';'Hash']
  vivify_877:
    $P110 = $P107."evalfiles"($P109, $P1878 :flat, $P1879 :flat)
    store_lex "$result", $P110
    goto if_1873_end
  if_1873:
.annotate 'line', 1363
    find_lex $P107, "self"
    find_lex $P1875, "@a"
    unless_null $P1875, vivify_878
    $P1875 = root_new ['parrot';'ResizablePMCArray']
  vivify_878:
    find_lex $P1876, "%adverbs"
    unless_null $P1876, vivify_879
    $P1876 = root_new ['parrot';'Hash']
  vivify_879:
    $P108 = $P107."evalfiles"($P1875, $P1876 :flat)
    store_lex "$result", $P108
  if_1873_end:
    goto if_1870_end
  if_1870:
.annotate 'line', 1362
    find_lex $P106, "self"
    find_lex $P1872, "%adverbs"
    unless_null $P1872, vivify_880
    $P1872 = root_new ['parrot';'Hash']
  vivify_880:
    $P107 = $P106."interactive"($P1872 :flat)
    store_lex "$result", $P107
  if_1870_end:
    goto if_1865_end
  if_1865:
.annotate 'line', 1360
    find_lex $P106, "self"
    find_lex $P1867, "%adverbs"
    unless_null $P1867, vivify_881
    $P1867 = root_new ['parrot';'Hash']
  vivify_881:
    set $P107, $P1867["e"]
    unless_null $P107, vivify_882
    new $P107, "Undef"
  vivify_882:
    find_lex $P1868, "@a"
    unless_null $P1868, vivify_883
    $P1868 = root_new ['parrot';'ResizablePMCArray']
  vivify_883:
    find_lex $P1869, "%adverbs"
    unless_null $P1869, vivify_884
    $P1869 = root_new ['parrot';'Hash']
  vivify_884:
    $P108 = $P106."eval"($P107, "-e", $P1868 :flat, $P1869 :flat)
    store_lex "$result", $P108
  if_1865_end:
.annotate 'line', 1366
    find_lex $P106, "$result"
    unless_null $P106, vivify_885
    new $P106, "Undef"
  vivify_885:
    isnull $I100, $P106
    new $P107, 'Integer'
    set $P107, $I100
    isfalse $I101, $P107
    if $I101, if_1881
    new $P105, 'Integer'
    set $P105, $I101
    goto if_1881_end
  if_1881:
    find_lex $P1882, "%adverbs"
    unless_null $P1882, vivify_886
    $P1882 = root_new ['parrot';'Hash']
  vivify_886:
    set $P108, $P1882["target"]
    unless_null $P108, vivify_887
    new $P108, "Undef"
  vivify_887:
    set $S100, $P108
    iseq $I102, $S100, "pir"
    new $P105, 'Integer'
    set $P105, $I102
  if_1881_end:
    unless $P105, if_1880_end
    .const 'Sub' $P1884 = "206_1315150096.049" 
    capture_lex $P1884
    $P1884()
  if_1880_end:
.annotate 'line', 1358
    pop_eh 
    goto skip_handler_1891
  control_1892:
.annotate 'line', 1375
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P1897 = "207_1315150096.049" 
    newclosure $P1903, $P1897
    $P1903(exception)
    new $P1904, 'Integer'
    set $P1904, 1
    set exception["handled"], $P1904
    set $I1905, exception["handled"]
    ne $I1905, 1, nothandled_1895
  handled_1894:
    .return (exception)
  nothandled_1895:
    rethrow exception
  skip_handler_1891:
.annotate 'line', 1358
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1883"  :anon :subid("206_1315150096.049") :outer("205_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1367
    new $P109, "Undef"
    set $P1885, $P109
    .lex "$output", $P1885
.annotate 'line', 1368
    new $P110, "Undef"
    set $P1886, $P110
    .lex "$fh", $P1886
.annotate 'line', 1367
    find_lex $P1887, "%adverbs"
    unless_null $P1887, vivify_888
    $P1887 = root_new ['parrot';'Hash']
  vivify_888:
    set $P111, $P1887["output"]
    unless_null $P111, vivify_889
    new $P111, "Undef"
  vivify_889:
    store_lex "$output", $P111
.annotate 'line', 1368
    find_lex $P113, "$output"
    unless_null $P113, vivify_890
    new $P113, "Undef"
  vivify_890:
    set $S101, $P113
    iseq $I103, $S101, ""
    unless $I103, unless_1889
    new $P112, 'Integer'
    set $P112, $I103
    goto unless_1889_end
  unless_1889:
    find_lex $P114, "$output"
    unless_null $P114, vivify_891
    new $P114, "Undef"
  vivify_891:
    set $S102, $P114
    iseq $I104, $S102, "-"
    new $P112, 'Integer'
    set $P112, $I104
  unless_1889_end:
    if $P112, if_1888
.annotate 'line', 1370
    new $P117, "FileHandle"
    find_lex $P118, "$output"
    unless_null $P118, vivify_892
    new $P118, "Undef"
  vivify_892:
    $P119 = $P117."open"($P118, "w")
    set $P111, $P119
.annotate 'line', 1368
    goto if_1888_end
  if_1888:
.annotate 'line', 1369
    getinterp $P115
    $P116 = $P115."stdout_handle"()
    set $P111, $P116
  if_1888_end:
    store_lex "$fh", $P111
.annotate 'line', 1371
    find_lex $P111, "$fh"
    unless_null $P111, vivify_893
    new $P111, "Undef"
  vivify_893:
    if $P111, unless_1890_end
    find_lex $P112, "self"
    new $P113, 'String'
    set $P113, "Cannot write to "
    find_lex $P114, "$output"
    unless_null $P114, vivify_894
    new $P114, "Undef"
  vivify_894:
    concat $P115, $P113, $P114
    $P112."panic"($P115)
  unless_1890_end:
.annotate 'line', 1372
    find_lex $P111, "$fh"
    unless_null $P111, vivify_895
    new $P111, "Undef"
  vivify_895:
    find_lex $P112, "$result"
    unless_null $P112, vivify_896
    new $P112, "Undef"
  vivify_896:
    print $P111, $P112
.annotate 'line', 1373
    find_lex $P111, "$fh"
    unless_null $P111, vivify_897
    new $P111, "Undef"
  vivify_897:
    $P112 = $P111."close"()
.annotate 'line', 1366
    .return ($P112)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1896"  :anon :subid("207_1315150096.049") :outer("205_1315150096.049")
    .param pmc param_1898
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1375
    .lex "$_", param_1898
    find_lex $P1899, "$_"
    set $P1900, $P1899
    .lex "$!", $P1900
.annotate 'line', 1376
    new $P1901, "Float"
    assign $P1901, 1
    store_lex "$has_error", $P1901
.annotate 'line', 1377
    find_lex $P1902, "$_"
    unless_null $P1902, vivify_898
    new $P1902, "Undef"
  vivify_898:
    store_lex "$error", $P1902
.annotate 'line', 1375
    .return ($P1902)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1910"  :anon :subid("208_1315150096.049") :outer("204_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1382
    new $P110, "Undef"
    set $P1912, $P110
    .lex "$err", $P1912
    getstderr $P111
    store_lex "$err", $P111
.annotate 'line', 1383
    find_lex $P111, "$err"
    unless_null $P111, vivify_903
    new $P111, "Undef"
  vivify_903:
    find_lex $P112, "$error"
    unless_null $P112, vivify_904
    new $P112, "Undef"
  vivify_904:
    $P111."print"($P112)
.annotate 'line', 1384
    find_lex $P111, "$err"
    unless_null $P111, vivify_905
    new $P111, "Undef"
  vivify_905:
    $P111."print"("\n")
.annotate 'line', 1385
    find_lex $P111, "$err"
    unless_null $P111, vivify_906
    new $P111, "Undef"
  vivify_906:
    find_lex $P112, "$error"
    unless_null $P112, vivify_907
    new $P112, "Undef"
  vivify_907:
    $P113 = $P112."backtrace_strings"()
    join $S100, "\n", $P113
    $P111."print"($S100)
.annotate 'line', 1386
    new $P111, "Float"
    assign $P111, 1
    set $I102, $P111
    exit $I102
.annotate 'line', 1381
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "process_args" :anon :subid("209_1315150096.049") :outer("164_1315150096.049")
    .param pmc param_1914
    .param pmc param_1915
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1394
    .const 'Sub' $P1921 = "210_1315150096.049" 
    capture_lex $P1921
    .lex "self", param_1914
    .lex "@args", param_1915
.annotate 'line', 1398
    new $P102, "Undef"
    set $P1916, $P102
    .lex "$p", $P1916
.annotate 'line', 1401
    new $P103, "Undef"
    set $P1917, $P103
    .lex "$res", $P1917
.annotate 'line', 1396
    find_lex $P104, "self"
    find_lex $P1918, "@args"
    unless_null $P1918, vivify_909
    $P1918 = root_new ['parrot';'ResizablePMCArray']
  vivify_909:
    $P105 = $P1918."shift"()
    $P104."compiler_progname"($P105)
.annotate 'line', 1398
    get_hll_global $P104, "GLOBAL"
    nqp_get_package_through_who $P105, $P104, "HLL"
    nqp_get_package_through_who $P106, $P105, "CommandLine"
    get_who $P107, $P106
    set $P108, $P107["Parser"]
    find_lex $P109, "self"
    nqp_decontainerize $P110, $P109
    find_lex $P111, "$?CLASS"
    getattribute $P1919, $P110, $P111, "@!cmdoptions"
    unless_null $P1919, vivify_910
    $P1919 = root_new ['parrot';'ResizablePMCArray']
  vivify_910:
    $P112 = $P108."new"($P1919)
    store_lex "$p", $P112
.annotate 'line', 1399
    find_lex $P104, "$p"
    unless_null $P104, vivify_911
    new $P104, "Undef"
  vivify_911:
    $P104."add-stopper"("-e")
.annotate 'line', 1400
    find_lex $P104, "$p"
    unless_null $P104, vivify_912
    new $P104, "Undef"
  vivify_912:
    $P104."stop-after-first-arg"()
.annotate 'line', 1394
    find_lex $P104, "$res"
    unless_null $P104, vivify_913
    new $P104, "Undef"
  vivify_913:
.annotate 'line', 1402
    .const 'Sub' $P1921 = "210_1315150096.049" 
    capture_lex $P1921
    $P1921()
.annotate 'line', 1394
    find_lex $P104, "$res"
    unless_null $P104, vivify_917
    new $P104, "Undef"
  vivify_917:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1920"  :anon :subid("210_1315150096.049") :outer("209_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1402
    .const 'Sub' $P1929 = "211_1315150096.049" 
    capture_lex $P1929
    new $P1925, 'ExceptionHandler'
    set_label $P1925, control_1924
    $P1925."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P1925
.annotate 'line', 1403
    find_lex $P104, "$p"
    unless_null $P104, vivify_914
    new $P104, "Undef"
  vivify_914:
    find_lex $P1922, "@args"
    unless_null $P1922, vivify_915
    $P1922 = root_new ['parrot';'ResizablePMCArray']
  vivify_915:
    $P105 = $P104."parse"($P1922)
    store_lex "$res", $P105
.annotate 'line', 1402
    pop_eh 
    goto skip_handler_1923
  control_1924:
.annotate 'line', 1404
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P1929 = "211_1315150096.049" 
    newclosure $P1937, $P1929
    $P1937(exception)
    new $P1938, 'Integer'
    set $P1938, 1
    set exception["handled"], $P1938
    set $I1939, exception["handled"]
    ne $I1939, 1, nothandled_1927
  handled_1926:
    .return (exception)
  nothandled_1927:
    rethrow exception
  skip_handler_1923:
.annotate 'line', 1402
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1928"  :anon :subid("211_1315150096.049") :outer("210_1315150096.049")
    .param pmc param_1930
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1404
    .lex "$_", param_1930
    find_lex $P1931, "$_"
    set $P1932, $P1931
    .lex "$!", $P1932
.annotate 'line', 1405
    find_lex $P1933, "$_"
    unless_null $P1933, vivify_916
    new $P1933, "Undef"
  vivify_916:
    say $P1933
.annotate 'line', 1406
    find_lex $P1934, "self"
    $P1934."usage"()
.annotate 'line', 1407
    new $P1935, "Float"
    assign $P1935, 1
    set $I1936, $P1935
    exit $I1936
.annotate 'line', 1404
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "evalfiles" :anon :subid("212_1315150096.049") :outer("164_1315150096.049")
    .param pmc param_1943
    .param pmc param_1944
    .param pmc param_1945 :slurpy
    .param pmc param_1946 :slurpy :named
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1413
    .const 'Sub' $P1962 = "213_1315150096.049" 
    capture_lex $P1962
    new $P1942, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1942, control_1941
    push_eh $P1942
    .lex "self", param_1943
    .lex "$files", param_1944
    .lex "@args", param_1945
    .lex "%adverbs", param_1946
.annotate 'line', 1414
    new $P102, "Undef"
    set $P1947, $P102
    .lex "$target", $P1947
.annotate 'line', 1415
    new $P103, "Undef"
    set $P1948, $P103
    .lex "$encoding", $P1948
.annotate 'line', 1416
    $P1950 = root_new ['parrot';'ResizablePMCArray']
    set $P1949, $P1950
    .lex "@files", $P1949
.annotate 'line', 1417
    $P1952 = root_new ['parrot';'ResizablePMCArray']
    set $P1951, $P1952
    .lex "@codes", $P1951
.annotate 'line', 1434
    new $P104, "Undef"
    set $P1953, $P104
    .lex "$code", $P1953
.annotate 'line', 1435
    new $P105, "Undef"
    set $P1954, $P105
    .lex "$?FILES", $P1954
.annotate 'line', 1436
    new $P106, "Undef"
    set $P1955, $P106
    .lex "$r", $P1955
.annotate 'line', 1414
    find_lex $P1956, "%adverbs"
    unless_null $P1956, vivify_918
    $P1956 = root_new ['parrot';'Hash']
  vivify_918:
    set $P107, $P1956["target"]
    unless_null $P107, vivify_919
    new $P107, "Undef"
  vivify_919:
    set $S100, $P107
    downcase $S101, $S100
    new $P108, 'String'
    set $P108, $S101
    store_lex "$target", $P108
.annotate 'line', 1415
    find_lex $P1957, "%adverbs"
    unless_null $P1957, vivify_920
    $P1957 = root_new ['parrot';'Hash']
  vivify_920:
    set $P107, $P1957["encoding"]
    unless_null $P107, vivify_921
    new $P107, "Undef"
  vivify_921:
    store_lex "$encoding", $P107
.annotate 'line', 1416
    find_lex $P108, "$files"
    unless_null $P108, vivify_922
    new $P108, "Undef"
  vivify_922:
    does $I100, $P108, "array"
    if $I100, if_1958
    find_lex $P110, "$files"
    unless_null $P110, vivify_923
    new $P110, "Undef"
  vivify_923:
    new $P111, "ResizablePMCArray"
    push $P111, $P110
    set $P107, $P111
    goto if_1958_end
  if_1958:
    find_lex $P109, "$files"
    unless_null $P109, vivify_924
    new $P109, "Undef"
  vivify_924:
    set $P107, $P109
  if_1958_end:
    store_lex "@files", $P107
.annotate 'line', 1413
    find_lex $P1959, "@codes"
    unless_null $P1959, vivify_925
    $P1959 = root_new ['parrot';'ResizablePMCArray']
  vivify_925:
.annotate 'line', 1418
    find_lex $P1960, "@files"
    unless_null $P1960, vivify_926
    $P1960 = root_new ['parrot';'ResizablePMCArray']
  vivify_926:
    defined $I100, $P1960
    unless $I100, for_undef_927
    iter $P107, $P1960
    new $P112, 'ExceptionHandler'
    set_label $P112, loop1986_handler
    $P112."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P112
  loop1986_test:
    unless $P107, loop1986_done
    shift $P108, $P107
  loop1986_redo:
    .const 'Sub' $P1962 = "213_1315150096.049" 
    capture_lex $P1962
    $P1962($P108)
  loop1986_next:
    goto loop1986_test
  loop1986_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P113, exception, 'type'
    eq $P113, .CONTROL_LOOP_NEXT, loop1986_next
    eq $P113, .CONTROL_LOOP_REDO, loop1986_redo
  loop1986_done:
    pop_eh 
  for_undef_927:
.annotate 'line', 1434
    find_lex $P1987, "@codes"
    unless_null $P1987, vivify_937
    $P1987 = root_new ['parrot';'ResizablePMCArray']
  vivify_937:
    join $S100, "", $P1987
    new $P107, 'String'
    set $P107, $S100
    store_lex "$code", $P107
.annotate 'line', 1435
    find_lex $P1988, "@files"
    unless_null $P1988, vivify_938
    $P1988 = root_new ['parrot';'ResizablePMCArray']
  vivify_938:
    join $S100, " ", $P1988
    new $P107, 'String'
    set $P107, $S100
    store_lex "$?FILES", $P107
.annotate 'line', 1436
    find_lex $P107, "self"
    find_lex $P108, "$code"
    unless_null $P108, vivify_939
    new $P108, "Undef"
  vivify_939:
    find_lex $P1989, "@args"
    unless_null $P1989, vivify_940
    $P1989 = root_new ['parrot';'ResizablePMCArray']
  vivify_940:
    find_lex $P1990, "%adverbs"
    unless_null $P1990, vivify_941
    $P1990 = root_new ['parrot';'Hash']
  vivify_941:
    $P109 = $P107."eval"($P108, $P1989 :flat, $P1990 :flat)
    store_lex "$r", $P109
.annotate 'line', 1437
    find_lex $P109, "$target"
    unless_null $P109, vivify_942
    new $P109, "Undef"
  vivify_942:
    set $S100, $P109
    iseq $I100, $S100, ""
    unless $I100, unless_1992
    new $P108, 'Integer'
    set $P108, $I100
    goto unless_1992_end
  unless_1992:
    find_lex $P110, "$target"
    unless_null $P110, vivify_943
    new $P110, "Undef"
  vivify_943:
    set $S101, $P110
    iseq $I101, $S101, "pir"
    new $P108, 'Integer'
    set $P108, $I101
  unless_1992_end:
    if $P108, if_1991
.annotate 'line', 1440
    new $P111, "Exception"
    set $P111['type'], .CONTROL_RETURN
    find_lex $P112, "self"
    find_lex $P113, "$r"
    unless_null $P113, vivify_944
    new $P113, "Undef"
  vivify_944:
    find_lex $P114, "$target"
    unless_null $P114, vivify_945
    new $P114, "Undef"
  vivify_945:
    find_lex $P1993, "%adverbs"
    unless_null $P1993, vivify_946
    $P1993 = root_new ['parrot';'Hash']
  vivify_946:
    $P115 = $P112."dumper"($P113, $P114, $P1993 :flat)
    setattribute $P111, 'payload', $P115
    throw $P111
.annotate 'line', 1439
    goto if_1991_end
  if_1991:
.annotate 'line', 1438
    new $P111, "Exception"
    set $P111['type'], .CONTROL_RETURN
    find_lex $P112, "$r"
    unless_null $P112, vivify_947
    new $P112, "Undef"
  vivify_947:
    setattribute $P111, 'payload', $P112
    throw $P111
  if_1991_end:
.annotate 'line', 1413
    .return ($P107)
  control_1941:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P108, exception, "payload"
    .return ($P108)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1961"  :anon :subid("213_1315150096.049") :outer("212_1315150096.049")
    .param pmc param_1965
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1418
    .const 'Sub' $P1967 = "214_1315150096.049" 
    capture_lex $P1967
.annotate 'line', 1419
    new $P109, "Undef"
    set $P1963, $P109
    .lex "$in-handle", $P1963
.annotate 'line', 1420
    new $P110, "Undef"
    set $P1964, $P110
    .lex "$err", $P1964
    .lex "$_", param_1965
.annotate 'line', 1419
    new $P111, "FileHandle"
    store_lex "$in-handle", $P111
.annotate 'line', 1420
    new $P111, "Float"
    assign $P111, 0
    store_lex "$err", $P111
.annotate 'line', 1421
    .const 'Sub' $P1967 = "214_1315150096.049" 
    capture_lex $P1967
    $P1967()
.annotate 'line', 1432
    find_lex $P112, "$err"
    unless_null $P112, vivify_935
    new $P112, "Undef"
  vivify_935:
    if $P112, if_1985
    set $P111, $P112
    goto if_1985_end
  if_1985:
    find_lex $P113, "$err"
    unless_null $P113, vivify_936
    new $P113, "Undef"
  vivify_936:
    die $P113
  if_1985_end:
.annotate 'line', 1418
    .return ($P111)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1966"  :anon :subid("214_1315150096.049") :outer("213_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1421
    .const 'Sub' $P1975 = "215_1315150096.049" 
    capture_lex $P1975
    new $P1971, 'ExceptionHandler'
    set_label $P1971, control_1970
    $P1971."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P1971
.annotate 'line', 1425
    find_lex $P111, "$in-handle"
    unless_null $P111, vivify_928
    new $P111, "Undef"
  vivify_928:
    find_lex $P112, "$encoding"
    unless_null $P112, vivify_929
    new $P112, "Undef"
  vivify_929:
    $P111."encoding"($P112)
.annotate 'line', 1426
    find_lex $P1968, "@codes"
    unless_null $P1968, vivify_930
    $P1968 = root_new ['parrot';'ResizablePMCArray']
  vivify_930:
    find_lex $P111, "$in-handle"
    unless_null $P111, vivify_931
    new $P111, "Undef"
  vivify_931:
    find_lex $P112, "$_"
    unless_null $P112, vivify_932
    new $P112, "Undef"
  vivify_932:
    $P113 = $P111."readall"($P112)
    push $P1968, $P113
.annotate 'line', 1427
    find_lex $P111, "$in-handle"
    unless_null $P111, vivify_933
    new $P111, "Undef"
  vivify_933:
    $P111."close"()
.annotate 'line', 1421
    pop_eh 
    goto skip_handler_1969
  control_1970:
.annotate 'line', 1428
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P1975 = "215_1315150096.049" 
    newclosure $P1982, $P1975
    $P1982(exception)
    new $P1983, 'Integer'
    set $P1983, 1
    set exception["handled"], $P1983
    set $I1984, exception["handled"]
    ne $I1984, 1, nothandled_1973
  handled_1972:
    .return (exception)
  nothandled_1973:
    rethrow exception
  skip_handler_1969:
.annotate 'line', 1421
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1974"  :anon :subid("215_1315150096.049") :outer("214_1315150096.049")
    .param pmc param_1976
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1428
    .lex "$_", param_1976
    find_lex $P1977, "$_"
    set $P1978, $P1977
    .lex "$!", $P1978
.annotate 'line', 1429
    new $P1979, 'String'
    set $P1979, "Error while reading from file: "
    find_lex $P1980, "$_"
    unless_null $P1980, vivify_934
    new $P1980, "Undef"
  vivify_934:
    concat $P1981, $P1979, $P1980
    store_lex "$err", $P1981
.annotate 'line', 1428
    .return ($P1981)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "compile" :anon :subid("216_1315150096.049") :outer("164_1315150096.049")
    .param pmc param_1997
    .param pmc param_1998
    .param pmc param_1999 :slurpy :named
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1444
    .const 'Sub' $P2008 = "217_1315150096.049" 
    capture_lex $P2008
    new $P1996, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1996, control_1995
    push_eh $P1996
    .lex "self", param_1997
    .lex "$source", param_1998
    .lex "%adverbs", param_1999
.annotate 'line', 1445
    $P2001 = root_new ['parrot';'Hash']
    set $P2000, $P2001
    .lex "%*COMPILING", $P2000
.annotate 'line', 1447
    new $P102, "Undef"
    set $P2002, $P102
    .lex "$target", $P2002
.annotate 'line', 1448
    new $P103, "Undef"
    set $P2003, $P103
    .lex "$result", $P2003
.annotate 'line', 1449
    new $P104, "Undef"
    set $P2004, $P104
    .lex "$stderr", $P2004
.annotate 'line', 1445
    find_lex $P2005, "%adverbs"
    unless_null $P2005, vivify_948
    $P2005 = root_new ['parrot';'Hash']
  vivify_948:
    find_lex $P107, "%*COMPILING"
    unless_null $P107, vivify_949
    get_hll_global $P105, "GLOBAL"
    get_who $P106, $P105
    set $P107, $P106["%COMPILING"]
    unless_null $P107, vivify_950
    die "Contextual %*COMPILING not found"
  vivify_950:
    store_lex "%*COMPILING", $P107
  vivify_949:
    set $P107["%?OPTIONS"], $P2005
.annotate 'line', 1447
    find_lex $P2006, "%adverbs"
    unless_null $P2006, vivify_951
    $P2006 = root_new ['parrot';'Hash']
  vivify_951:
    set $P105, $P2006["target"]
    unless_null $P105, vivify_952
    new $P105, "Undef"
  vivify_952:
    set $S100, $P105
    downcase $S101, $S100
    new $P106, 'String'
    set $P106, $S101
    store_lex "$target", $P106
.annotate 'line', 1448
    find_lex $P105, "$source"
    unless_null $P105, vivify_953
    new $P105, "Undef"
  vivify_953:
    store_lex "$result", $P105
.annotate 'line', 1449
    getinterp $P105
    $P106 = $P105."stderr_handle"()
    store_lex "$stderr", $P106
.annotate 'line', 1450
    find_lex $P106, "self"
    $P107 = $P106."stages"()
    defined $I100, $P107
    unless $I100, for_undef_954
    iter $P105, $P107
    new $P112, 'ExceptionHandler'
    set_label $P112, loop2019_handler
    $P112."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P112
  loop2019_test:
    unless $P105, loop2019_done
    shift $P108, $P105
  loop2019_redo:
    .const 'Sub' $P2008 = "217_1315150096.049" 
    capture_lex $P2008
    $P2008($P108)
  loop2019_next:
    goto loop2019_test
  loop2019_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P113, exception, 'type'
    eq $P113, .CONTROL_LOOP_NEXT, loop2019_next
    eq $P113, .CONTROL_LOOP_REDO, loop2019_redo
  loop2019_done:
    pop_eh 
  for_undef_954:
.annotate 'line', 1460
    new $P105, "Exception"
    set $P105['type'], .CONTROL_RETURN
    find_lex $P106, "$result"
    unless_null $P106, vivify_967
    new $P106, "Undef"
  vivify_967:
    setattribute $P105, 'payload', $P106
    throw $P105
.annotate 'line', 1444
    .return ()
  control_1995:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P105, exception, "payload"
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2007"  :anon :subid("217_1315150096.049") :outer("216_1315150096.049")
    .param pmc param_2011
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1450
    .const 'Sub' $P2016 = "218_1315150096.049" 
    capture_lex $P2016
.annotate 'line', 1451
    new $P109, "Undef"
    set $P2009, $P109
    .lex "$timestamp", $P2009
.annotate 'line', 1453
    new $P110, "Undef"
    set $P2010, $P110
    .lex "$diff", $P2010
    .lex "$_", param_2011
.annotate 'line', 1451
    time $N100
    new $P111, 'Float'
    set $P111, $N100
    store_lex "$timestamp", $P111
.annotate 'line', 1452
    find_lex $P111, "self"
    find_lex $P112, "$result"
    unless_null $P112, vivify_955
    new $P112, "Undef"
  vivify_955:
    find_lex $P2012, "%adverbs"
    unless_null $P2012, vivify_956
    $P2012 = root_new ['parrot';'Hash']
  vivify_956:
    find_lex $P113, "$_"
    unless_null $P113, vivify_957
    new $P113, "Undef"
  vivify_957:
    set $S100, $P113
    $P114 = $P111.$S100($P112, $P2012 :flat)
    store_lex "$result", $P114
.annotate 'line', 1453
    time $N100
    new $P111, 'Float'
    set $P111, $N100
    find_lex $P112, "$timestamp"
    unless_null $P112, vivify_958
    new $P112, "Undef"
  vivify_958:
    sub $P113, $P111, $P112
    store_lex "$diff", $P113
.annotate 'line', 1454
    find_lex $P2014, "%adverbs"
    unless_null $P2014, vivify_959
    $P2014 = root_new ['parrot';'Hash']
  vivify_959:
    set $P111, $P2014["stagestats"]
    unless_null $P111, vivify_960
    new $P111, "Undef"
  vivify_960:
    unless $P111, if_2013_end
    .const 'Sub' $P2016 = "218_1315150096.049" 
    capture_lex $P2016
    $P2016()
  if_2013_end:
.annotate 'line', 1458
    find_lex $P112, "$_"
    unless_null $P112, vivify_965
    new $P112, "Undef"
  vivify_965:
    set $S100, $P112
    find_lex $P113, "$target"
    unless_null $P113, vivify_966
    new $P113, "Undef"
  vivify_966:
    set $S101, $P113
    iseq $I101, $S100, $S101
    if $I101, if_2018
    new $P111, 'Integer'
    set $P111, $I101
    goto if_2018_end
  if_2018:
    die 0, .CONTROL_LOOP_LAST
  if_2018_end:
.annotate 'line', 1450
    .return ($P111)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2015"  :anon :subid("218_1315150096.049") :outer("217_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1455
    new $P112, "Undef"
    set $P2017, $P112
    .lex "$difffmt", $P2017
    find_lex $P113, "$diff"
    unless_null $P113, vivify_961
    new $P113, "Undef"
  vivify_961:
    new $P114, "ResizablePMCArray"
    push $P114, $P113
    sprintf $S100, "%.3f", $P114
    new $P115, 'String'
    set $P115, $S100
    store_lex "$difffmt", $P115
.annotate 'line', 1456
    find_lex $P113, "$stderr"
    unless_null $P113, vivify_962
    new $P113, "Undef"
  vivify_962:
    new $P114, 'String'
    set $P114, "Stage "
    find_lex $P115, "$_"
    unless_null $P115, vivify_963
    new $P115, "Undef"
  vivify_963:
    concat $P116, $P114, $P115
    concat $P117, $P116, ": "
    find_lex $P118, "$difffmt"
    unless_null $P118, vivify_964
    new $P118, "Undef"
  vivify_964:
    concat $P119, $P117, $P118
    concat $P120, $P119, "\n"
    $P121 = $P113."print"($P120)
.annotate 'line', 1454
    .return ($P121)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "parse" :anon :subid("219_1315150096.049") :outer("164_1315150096.049")
    .param pmc param_2023
    .param pmc param_2024
    .param pmc param_2025 :slurpy :named
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1463
    .const 'Sub' $P2034 = "220_1315150096.049" 
    capture_lex $P2034
    new $P2022, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2022, control_2021
    push_eh $P2022
    .lex "self", param_2023
    .lex "$source", param_2024
    .lex "%adverbs", param_2025
.annotate 'line', 1464
    new $P102, "Undef"
    set $P2026, $P102
    .lex "$s", $P2026
.annotate 'line', 1473
    new $P103, "Undef"
    set $P2027, $P103
    .lex "$grammar", $P2027
.annotate 'line', 1474
    new $P104, "Undef"
    set $P2028, $P104
    .lex "$actions", $P2028
.annotate 'line', 1476
    new $P105, "Undef"
    set $P2029, $P105
    .lex "$match", $P2029
.annotate 'line', 1464
    find_lex $P106, "$source"
    unless_null $P106, vivify_968
    new $P106, "Undef"
  vivify_968:
    store_lex "$s", $P106
.annotate 'line', 1465
    find_lex $P2031, "%adverbs"
    unless_null $P2031, vivify_969
    $P2031 = root_new ['parrot';'Hash']
  vivify_969:
    set $P106, $P2031["transcode"]
    unless_null $P106, vivify_970
    new $P106, "Undef"
  vivify_970:
    unless $P106, if_2030_end
.annotate 'line', 1466
    find_lex $P2032, "%adverbs"
    unless_null $P2032, vivify_971
    $P2032 = root_new ['parrot';'Hash']
  vivify_971:
    set $P108, $P2032["transcode"]
    unless_null $P108, vivify_972
    new $P108, "Undef"
  vivify_972:
    set $S100, $P108
    split $P109, " ", $S100
    defined $I100, $P109
    unless $I100, for_undef_973
    iter $P107, $P109
    new $P112, 'ExceptionHandler'
    set_label $P112, loop2045_handler
    $P112."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P112
  loop2045_test:
    unless $P107, loop2045_done
    shift $P110, $P107
  loop2045_redo:
    .const 'Sub' $P2034 = "220_1315150096.049" 
    capture_lex $P2034
    $P2034($P110)
  loop2045_next:
    goto loop2045_test
  loop2045_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P113, exception, 'type'
    eq $P113, .CONTROL_LOOP_NEXT, loop2045_next
    eq $P113, .CONTROL_LOOP_REDO, loop2045_redo
  loop2045_done:
    pop_eh 
  for_undef_973:
  if_2030_end:
.annotate 'line', 1473
    find_lex $P106, "self"
    $P107 = $P106."parsegrammar"()
    store_lex "$grammar", $P107
.annotate 'line', 1463
    find_lex $P106, "$actions"
    unless_null $P106, vivify_976
    new $P106, "Undef"
  vivify_976:
.annotate 'line', 1475
    find_lex $P2047, "%adverbs"
    unless_null $P2047, vivify_977
    $P2047 = root_new ['parrot';'Hash']
  vivify_977:
    set $P106, $P2047["target"]
    unless_null $P106, vivify_978
    new $P106, "Undef"
  vivify_978:
    set $S100, $P106
    iseq $I100, $S100, "parse"
    if $I100, unless_2046_end
    find_lex $P107, "self"
    $P108 = $P107."parseactions"()
    store_lex "$actions", $P108
  unless_2046_end:
.annotate 'line', 1476
    find_lex $P106, "$grammar"
    unless_null $P106, vivify_979
    new $P106, "Undef"
  vivify_979:
    find_lex $P107, "$s"
    unless_null $P107, vivify_980
    new $P107, "Undef"
  vivify_980:
    find_lex $P108, "$actions"
    unless_null $P108, vivify_981
    new $P108, "Undef"
  vivify_981:
    find_lex $P2048, "%adverbs"
    unless_null $P2048, vivify_982
    $P2048 = root_new ['parrot';'Hash']
  vivify_982:
    set $P109, $P2048["rxtrace"]
    unless_null $P109, vivify_983
    new $P109, "Undef"
  vivify_983:
    $P110 = $P106."parse"($P107, 0 :named("p"), $P108 :named("actions"), $P109 :named("rxtrace"))
    store_lex "$match", $P110
.annotate 'line', 1477
    find_lex $P106, "$match"
    unless_null $P106, vivify_984
    new $P106, "Undef"
  vivify_984:
    if $P106, unless_2049_end
    find_lex $P107, "self"
    $P107."panic"("Unable to parse source")
  unless_2049_end:
.annotate 'line', 1478
    new $P106, "Exception"
    set $P106['type'], .CONTROL_RETURN
    find_lex $P107, "$match"
    unless_null $P107, vivify_985
    new $P107, "Undef"
  vivify_985:
    setattribute $P106, 'payload', $P107
    throw $P106
.annotate 'line', 1463
    .return ()
  control_2021:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P106, exception, "payload"
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2033"  :anon :subid("220_1315150096.049") :outer("219_1315150096.049")
    .param pmc param_2035
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1466
    .const 'Sub' $P2037 = "221_1315150096.049" 
    capture_lex $P2037
    .lex "$_", param_2035
.annotate 'line', 1467
    .const 'Sub' $P2037 = "221_1315150096.049" 
    capture_lex $P2037
    $P111 = $P2037()
.annotate 'line', 1466
    .return ($P111)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2036"  :anon :subid("221_1315150096.049") :outer("220_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1467
    new $P2040, 'ExceptionHandler'
    set_label $P2040, control_2039
    $P2040."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P2040
.annotate 'line', 1468
    find_lex $P111, "$s"
    unless_null $P111, vivify_974
    new $P111, "Undef"
  vivify_974:
    set $S101, $P111
.annotate 'line', 1469
    find_lex $P112, "$_"
    unless_null $P112, vivify_975
    new $P112, "Undef"
  vivify_975:
    set $S102, $P112
    find_encoding $I101, $S102
    trans_encoding $S103, $S101, $I101
.annotate 'line', 1468
    new $P113, 'String'
    set $P113, $S103
    store_lex "$s", $P113
.annotate 'line', 1467
    pop_eh 
    goto skip_handler_2038
  control_2039:
    .local pmc exception 
    .get_results (exception) 
    new $P2043, 'Integer'
    set $P2043, 1
    set exception["handled"], $P2043
    set $I2044, exception["handled"]
    ne $I2044, 1, nothandled_2042
  handled_2041:
    .return (exception)
  nothandled_2042:
    rethrow exception
  skip_handler_2038:
    .return ($P113)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "past" :anon :subid("222_1315150096.049") :outer("164_1315150096.049")
    .param pmc param_2051
    .param pmc param_2052
    .param pmc param_2053 :slurpy :named
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1481
    .lex "self", param_2051
    .lex "$source", param_2052
    .lex "%adverbs", param_2053
.annotate 'line', 1482
    new $P102, "Undef"
    set $P2054, $P102
    .lex "$ast", $P2054
    find_lex $P103, "$source"
    unless_null $P103, vivify_986
    new $P103, "Undef"
  vivify_986:
    $P104 = $P103."ast"()
    store_lex "$ast", $P104
.annotate 'line', 1484
    get_hll_global $P103, "GLOBAL"
    nqp_get_package_through_who $P104, $P103, "PAST"
    get_who $P105, $P104
    set $P106, $P105["Node"]
    find_lex $P107, "$ast"
    unless_null $P107, vivify_987
    new $P107, "Undef"
  vivify_987:
    $P108 = $P106."ACCEPTS"($P107)
    if $P108, unless_2055_end
.annotate 'line', 1483
    find_lex $P109, "self"
    new $P110, "String"
    assign $P110, "Unable to obtain ast from "
    find_lex $P111, "$source"
    unless_null $P111, vivify_988
    new $P111, "Undef"
  vivify_988:
    typeof $S100, $P111
    concat $P112, $P110, $S100
    $P109."panic"($P112)
  unless_2055_end:
.annotate 'line', 1481
    find_lex $P103, "$ast"
    unless_null $P103, vivify_989
    new $P103, "Undef"
  vivify_989:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "post" :anon :subid("223_1315150096.049") :outer("164_1315150096.049")
    .param pmc param_2057
    .param pmc param_2058
    .param pmc param_2059 :slurpy :named
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1488
    .lex "self", param_2057
    .lex "$source", param_2058
    .lex "%adverbs", param_2059
.annotate 'line', 1489
    compreg $P102, "PAST"
    find_lex $P103, "$source"
    unless_null $P103, vivify_990
    new $P103, "Undef"
  vivify_990:
    find_lex $P2060, "%adverbs"
    unless_null $P2060, vivify_991
    $P2060 = root_new ['parrot';'Hash']
  vivify_991:
    $P104 = $P102."to_post"($P103, $P2060 :flat)
.annotate 'line', 1488
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "pirbegin" :anon :subid("224_1315150096.049") :outer("164_1315150096.049")
    .param pmc param_2062
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1492
    .lex "self", param_2062
.annotate 'line', 1494
    new $P102, "String"
    assign $P102, ".include 'cclass.pasm'\n"
    concat $P103, $P102, ".include 'except_severity.pasm'\n"
    concat $P104, $P103, ".include 'except_types.pasm'\n"
.annotate 'line', 1495
    concat $P105, $P104, ".include 'iglobals.pasm'\n"
.annotate 'line', 1496
    concat $P106, $P105, ".include 'interpinfo.pasm'\n"
.annotate 'line', 1497
    concat $P107, $P106, ".include 'iterator.pasm'\n"
.annotate 'line', 1498
    concat $P108, $P107, ".include 'sysinfo.pasm'\n"
.annotate 'line', 1499
    concat $P109, $P108, ".include 'stat.pasm'\n"
.annotate 'line', 1500
    concat $P110, $P109, ".include 'datatypes.pasm'\n"
.annotate 'line', 1492
    .return ($P110)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "pir" :anon :subid("225_1315150096.049") :outer("164_1315150096.049")
    .param pmc param_2064
    .param pmc param_2065
    .param pmc param_2066 :slurpy :named
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1504
    .lex "self", param_2064
    .lex "$source", param_2065
    .lex "%adverbs", param_2066
.annotate 'line', 1505
    find_lex $P102, "self"
    $P103 = $P102."pirbegin"()
    compreg $P104, "POST"
    find_lex $P105, "$source"
    unless_null $P105, vivify_992
    new $P105, "Undef"
  vivify_992:
    find_lex $P2067, "%adverbs"
    unless_null $P2067, vivify_993
    $P2067 = root_new ['parrot';'Hash']
  vivify_993:
    $S100 = $P104."to_pir"($P105, $P2067 :flat)
    concat $P106, $P103, $S100
.annotate 'line', 1504
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "evalpmc" :anon :subid("226_1315150096.049") :outer("164_1315150096.049")
    .param pmc param_2069
    .param pmc param_2070
    .param pmc param_2071 :slurpy :named
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1508
    .lex "self", param_2069
    .lex "$source", param_2070
    .lex "%adverbs", param_2071
.annotate 'line', 1509
    new $P102, "Undef"
    set $P2072, $P102
    .lex "$compiler", $P2072
    compreg $P103, "PIR"
    store_lex "$compiler", $P103
.annotate 'line', 1510
    find_lex $P103, "$compiler"
    unless_null $P103, vivify_994
    new $P103, "Undef"
  vivify_994:
    find_lex $P104, "$source"
    unless_null $P104, vivify_995
    new $P104, "Undef"
  vivify_995:
    $P105 = $P103($P104)
.annotate 'line', 1508
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "dumper" :anon :subid("227_1315150096.049") :outer("164_1315150096.049")
    .param pmc param_2074
    .param pmc param_2075
    .param pmc param_2076
    .param pmc param_2077 :slurpy :named
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1513
    .const 'Sub' $P2081 = "228_1315150096.049" 
    capture_lex $P2081
    .lex "self", param_2074
    .lex "$obj", param_2075
    .lex "$name", param_2076
    .lex "%options", param_2077
.annotate 'line', 1514
    find_lex $P2079, "%options"
    unless_null $P2079, vivify_996
    $P2079 = root_new ['parrot';'Hash']
  vivify_996:
    set $P103, $P2079["dumper"]
    unless_null $P103, vivify_997
    new $P103, "Undef"
  vivify_997:
    if $P103, if_2078
.annotate 'line', 1520
    find_lex $P106, "$obj"
    unless_null $P106, vivify_998
    new $P106, "Undef"
  vivify_998:
    find_lex $P107, "$name"
    unless_null $P107, vivify_999
    new $P107, "Undef"
  vivify_999:
    $P109 = "_dumper"($P106, $P107)
.annotate 'line', 1519
    set $P102, $P109
.annotate 'line', 1514
    goto if_2078_end
  if_2078:
    .const 'Sub' $P2081 = "228_1315150096.049" 
    capture_lex $P2081
    $P105 = $P2081()
    set $P102, $P105
  if_2078_end:
.annotate 'line', 1513
    .return ($P102)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2080"  :anon :subid("228_1315150096.049") :outer("227_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1516
    new $P104, "Undef"
    set $P2082, $P104
    .lex "$dumper", $P2082
.annotate 'line', 1515
    load_bytecode "PCT/Dumper.pbc"
.annotate 'line', 1516
    find_lex $P2083, "%options"
    unless_null $P2083, vivify_1000
    $P2083 = root_new ['parrot';'Hash']
  vivify_1000:
    set $P105, $P2083["dumper"]
    unless_null $P105, vivify_1001
    new $P105, "Undef"
  vivify_1001:
    set $S100, $P105
    downcase $S101, $S100
    get_hll_global $P106, "GLOBAL"
    nqp_get_package_through_who $P107, $P106, "PCT"
    get_who $P108, $P107
    set $P2084, $P108["Dumper"]
    unless_null $P2084, vivify_1002
    $P2084 = root_new ['parrot';'Hash']
  vivify_1002:
    set $P109, $P2084[$S101]
    unless_null $P109, vivify_1003
    new $P109, "Undef"
  vivify_1003:
    store_lex "$dumper", $P109
.annotate 'line', 1517
    find_lex $P105, "$dumper"
    unless_null $P105, vivify_1004
    new $P105, "Undef"
  vivify_1004:
    find_lex $P106, "$obj"
    unless_null $P106, vivify_1005
    new $P106, "Undef"
  vivify_1005:
    find_lex $P107, "$name"
    unless_null $P107, vivify_1006
    new $P107, "Undef"
  vivify_1006:
    $P108 = $P105($P106, $P107)
.annotate 'line', 1514
    .return ($P108)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "usage" :anon :subid("229_1315150096.049") :outer("164_1315150096.049")
    .param pmc param_2086
    .param pmc param_2087 :optional
    .param int has_param_2087 :opt_flag
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1524
    .lex "self", param_2086
    if has_param_2087, optparam_1007
    new $P102, "Undef"
    set param_2087, $P102
  optparam_1007:
    .lex "$name", param_2087
.annotate 'line', 1525
    find_lex $P103, "$name"
    unless_null $P103, vivify_1008
    new $P103, "Undef"
  vivify_1008:
    unless $P103, if_2088_end
.annotate 'line', 1526
    find_lex $P104, "$name"
    unless_null $P104, vivify_1009
    new $P104, "Undef"
  vivify_1009:
    "say"($P104)
  if_2088_end:
.annotate 'line', 1528
    find_lex $P103, "self"
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    getattribute $P106, $P104, $P105, "$!usage"
    unless_null $P106, vivify_1010
    new $P106, "Undef"
  vivify_1010:
    say $P106
.annotate 'line', 1529
    new $P103, "Float"
    assign $P103, 0
    set $I100, $P103
    exit $I100
.annotate 'line', 1524
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "version" :anon :subid("230_1315150096.049") :outer("164_1315150096.049")
    .param pmc param_2090
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1532
    .lex "self", param_2090
.annotate 'line', 1533
    new $P102, "Undef"
    set $P2091, $P102
    .lex "$version", $P2091
.annotate 'line', 1534
    new $P103, "Undef"
    set $P2092, $P103
    .lex "$parver", $P2092
.annotate 'line', 1535
    new $P104, "Undef"
    set $P2093, $P104
    .lex "$parrev", $P2093
.annotate 'line', 1533
    find_lex $P105, "self"
    nqp_decontainerize $P106, $P105
    find_lex $P107, "$?CLASS"
    getattribute $P2094, $P106, $P107, "%!config"
    unless_null $P2094, vivify_1011
    $P2094 = root_new ['parrot';'Hash']
  vivify_1011:
    set $P108, $P2094["version"]
    unless_null $P108, vivify_1012
    new $P108, "Undef"
  vivify_1012:
    store_lex "$version", $P108
.annotate 'line', 1534
    find_lex $P105, "$?PACKAGE"
    get_who $P106, $P105
    set $P2095, $P106["%parrot_config"]
    unless_null $P2095, vivify_1013
    $P2095 = root_new ['parrot';'Hash']
  vivify_1013:
    set $P107, $P2095["VERSION"]
    unless_null $P107, vivify_1014
    new $P107, "Undef"
  vivify_1014:
    store_lex "$parver", $P107
.annotate 'line', 1535
    find_lex $P105, "$?PACKAGE"
    get_who $P106, $P105
    set $P2097, $P106["%parrot_config"]
    unless_null $P2097, vivify_1015
    $P2097 = root_new ['parrot';'Hash']
  vivify_1015:
    set $P107, $P2097["git_describe"]
    unless_null $P107, vivify_1016
    new $P107, "Undef"
  vivify_1016:
    set $P2096, $P107
    defined $I2099, $P2096
    if $I2099, default_2098
    new $P108, "String"
    assign $P108, "(unknown)"
    set $P2096, $P108
  default_2098:
    store_lex "$parrev", $P2096
.annotate 'line', 1536
    new $P105, 'String'
    set $P105, "This is "
    find_lex $P106, "self"
    nqp_decontainerize $P107, $P106
    find_lex $P108, "$?CLASS"
    getattribute $P109, $P107, $P108, "$!language"
    unless_null $P109, vivify_1017
    new $P109, "Undef"
  vivify_1017:
    concat $P110, $P105, $P109
    concat $P111, $P110, " version "
    find_lex $P112, "$version"
    unless_null $P112, vivify_1018
    new $P112, "Undef"
  vivify_1018:
    concat $P113, $P111, $P112
    concat $P114, $P113, " built on parrot "
    find_lex $P115, "$parver"
    unless_null $P115, vivify_1019
    new $P115, "Undef"
  vivify_1019:
    concat $P116, $P114, $P115
    concat $P117, $P116, " revision "
    find_lex $P118, "$parrev"
    unless_null $P118, vivify_1020
    new $P118, "Undef"
  vivify_1020:
    concat $P119, $P117, $P118
    say $P119
.annotate 'line', 1537
    new $P105, "Float"
    assign $P105, 0
    set $I100, $P105
    exit $I100
.annotate 'line', 1532
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "show-config" :anon :subid("231_1315150096.049") :outer("164_1315150096.049")
    .param pmc param_2101
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1540
    .const 'Sub' $P2109 = "233_1315150096.049" 
    capture_lex $P2109
    .const 'Sub' $P2104 = "232_1315150096.049" 
    capture_lex $P2104
    .lex "self", param_2101
.annotate 'line', 1541
    find_lex $P103, "$?PACKAGE"
    get_who $P104, $P103
    set $P2102, $P104["%parrot_config"]
    unless_null $P2102, vivify_1021
    $P2102 = root_new ['parrot';'Hash']
  vivify_1021:
    defined $I100, $P2102
    unless $I100, for_undef_1022
    iter $P102, $P2102
    new $P106, 'ExceptionHandler'
    set_label $P106, loop2106_handler
    $P106."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P106
  loop2106_test:
    unless $P102, loop2106_done
    shift $P105, $P102
  loop2106_redo:
    .const 'Sub' $P2104 = "232_1315150096.049" 
    capture_lex $P2104
    $P2104($P105)
  loop2106_next:
    goto loop2106_test
  loop2106_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P107, exception, 'type'
    eq $P107, .CONTROL_LOOP_NEXT, loop2106_next
    eq $P107, .CONTROL_LOOP_REDO, loop2106_redo
  loop2106_done:
    pop_eh 
  for_undef_1022:
.annotate 'line', 1544
    find_lex $P103, "self"
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    getattribute $P2107, $P104, $P105, "%!config"
    unless_null $P2107, vivify_1025
    $P2107 = root_new ['parrot';'Hash']
  vivify_1025:
    defined $I100, $P2107
    unless $I100, for_undef_1026
    iter $P102, $P2107
    new $P107, 'ExceptionHandler'
    set_label $P107, loop2111_handler
    $P107."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P107
  loop2111_test:
    unless $P102, loop2111_done
    shift $P106, $P102
  loop2111_redo:
    .const 'Sub' $P2109 = "233_1315150096.049" 
    capture_lex $P2109
    $P2109($P106)
  loop2111_next:
    goto loop2111_test
  loop2111_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P108, exception, 'type'
    eq $P108, .CONTROL_LOOP_NEXT, loop2111_next
    eq $P108, .CONTROL_LOOP_REDO, loop2111_redo
  loop2111_done:
    pop_eh 
  for_undef_1026:
.annotate 'line', 1547
    new $P102, "Float"
    assign $P102, 0
    set $I100, $P102
    exit $I100
.annotate 'line', 1540
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2103"  :anon :subid("232_1315150096.049") :outer("231_1315150096.049")
    .param pmc param_2105
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1541
    .lex "$_", param_2105
.annotate 'line', 1542
    new $P106, "String"
    assign $P106, "parrot::"
    find_lex $P107, "$_"
    unless_null $P107, vivify_1023
    new $P107, "Undef"
  vivify_1023:
    $S100 = $P107."key"()
    concat $P108, $P106, $S100
    concat $P109, $P108, "="
    find_lex $P110, "$_"
    unless_null $P110, vivify_1024
    new $P110, "Undef"
  vivify_1024:
    $S101 = $P110."value"()
    concat $P111, $P109, $S101
    say $P111
.annotate 'line', 1541
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2108"  :anon :subid("233_1315150096.049") :outer("231_1315150096.049")
    .param pmc param_2110
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1544
    .lex "$_", param_2110
.annotate 'line', 1545
    find_lex $P107, "self"
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    getattribute $P110, $P108, $P109, "$!language"
    unless_null $P110, vivify_1027
    new $P110, "Undef"
  vivify_1027:
    concat $P111, $P110, "::"
    find_lex $P112, "$_"
    unless_null $P112, vivify_1028
    new $P112, "Undef"
  vivify_1028:
    $S100 = $P112."key"()
    concat $P113, $P111, $S100
    concat $P114, $P113, "="
    find_lex $P115, "$_"
    unless_null $P115, vivify_1029
    new $P115, "Undef"
  vivify_1029:
    $S101 = $P115."value"()
    concat $P116, $P114, $S101
    say $P116
.annotate 'line', 1544
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "nqpevent" :anon :subid("234_1315150096.049") :outer("164_1315150096.049")
    .param pmc param_2113
    .param pmc param_2114 :optional
    .param int has_param_2114 :opt_flag
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1550
    .const 'Sub' $P2119 = "235_1315150096.049" 
    capture_lex $P2119
    .lex "self", param_2113
    if has_param_2114, optparam_1030
    new $P102, "Undef"
    set param_2114, $P102
  optparam_1030:
    .lex "$spec", param_2114
.annotate 'line', 1553
    new $P103, "Undef"
    set $P2115, $P103
    .lex "$fh", $P2115
.annotate 'line', 1552
    nqpevent "nqpevent: log finished"
.annotate 'line', 1553
    null $P104
    nqpevent_fh $P105, $P104
    store_lex "$fh", $P105
.annotate 'line', 1554
    find_lex $P104, "$fh"
    unless_null $P104, vivify_1031
    new $P104, "Undef"
  vivify_1031:
    unless $P104, if_2116_end
    find_lex $P105, "$fh"
    unless_null $P105, vivify_1032
    new $P105, "Undef"
  vivify_1032:
    $P105."flush"()
  if_2116_end:
.annotate 'line', 1557
    find_lex $P105, "$spec"
    unless_null $P105, vivify_1033
    new $P105, "Undef"
  vivify_1033:
    if $P105, if_2117
    set $P104, $P105
    goto if_2117_end
  if_2117:
    .const 'Sub' $P2119 = "235_1315150096.049" 
    capture_lex $P2119
    $P108 = $P2119()
    set $P104, $P108
  if_2117_end:
.annotate 'line', 1550
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2118"  :anon :subid("235_1315150096.049") :outer("234_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1557
    .const 'Sub' $P2126 = "236_1315150096.049" 
    capture_lex $P2126
.annotate 'line', 1559
    new $P106, "Undef"
    set $P2120, $P106
    .lex "$file", $P2120
.annotate 'line', 1560
    new $P107, "Undef"
    set $P2121, $P107
    .lex "$flags", $P2121
.annotate 'line', 1558
    find_lex $P108, "$spec"
    unless_null $P108, vivify_1034
    new $P108, "Undef"
  vivify_1034:
    set $S100, $P108
    split $P109, ";", $S100
    store_lex "$spec", $P109
.annotate 'line', 1559
    new $P108, "Float"
    assign $P108, 0
    set $I100, $P108
    find_lex $P2122, "$spec"
    unless_null $P2122, vivify_1035
    $P2122 = root_new ['parrot';'ResizablePMCArray']
  vivify_1035:
    set $P109, $P2122[$I100]
    unless_null $P109, vivify_1036
    new $P109, "Undef"
  vivify_1036:
    store_lex "$file", $P109
.annotate 'line', 1560
    new $P108, "Float"
    assign $P108, 1
    set $I100, $P108
    find_lex $P2123, "$spec"
    unless_null $P2123, vivify_1037
    $P2123 = root_new ['parrot';'ResizablePMCArray']
  vivify_1037:
    set $P109, $P2123[$I100]
    unless_null $P109, vivify_1038
    new $P109, "Undef"
  vivify_1038:
    store_lex "$flags", $P109
.annotate 'line', 1561
    find_lex $P108, "$file"
    unless_null $P108, vivify_1039
    new $P108, "Undef"
  vivify_1039:
    set $S100, $P108
    isgt $I100, $S100, ""
    if $I100, if_2124
.annotate 'line', 1567
    getinterp $P110
    $P112 = $P110."stderr_handle"()
    nqpevent_fh $P113, $P112
.annotate 'line', 1566
    goto if_2124_end
  if_2124:
.annotate 'line', 1561
    .const 'Sub' $P2126 = "236_1315150096.049" 
    capture_lex $P2126
    $P2126()
  if_2124_end:
.annotate 'line', 1569
    find_lex $P108, "$flags"
    unless_null $P108, vivify_1044
    new $P108, "Undef"
  vivify_1044:
    set $S100, $P108
    iseq $I101, $S100, ""
    if $I101, if_2129
    find_lex $P110, "$flags"
    unless_null $P110, vivify_1045
    new $P110, "Undef"
  vivify_1045:
    set $I100, $P110
    goto if_2129_end
  if_2129:
    new $P109, "Float"
    assign $P109, 31
    set $I100, $P109
  if_2129_end:
    nqpdebflags $I102, $I100
.annotate 'line', 1570
    nqpevent "nqpevent: log started"
.annotate 'line', 1557
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2125"  :anon :subid("236_1315150096.049") :outer("235_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1562
    new $P109, "Undef"
    set $P2127, $P109
    .lex "$fh", $P2127
    new $P110, "FileHandle"
    store_lex "$fh", $P110
.annotate 'line', 1563
    find_lex $P110, "$fh"
    unless_null $P110, vivify_1040
    new $P110, "Undef"
  vivify_1040:
    find_lex $P111, "$file"
    unless_null $P111, vivify_1041
    new $P111, "Undef"
  vivify_1041:
    $P112 = $P110."open"($P111, "w")
    if $P112, unless_2128_end
    find_lex $P113, "self"
    new $P114, 'String'
    set $P114, "Cannot write to "
    find_lex $P115, "$file"
    unless_null $P115, vivify_1042
    new $P115, "Undef"
  vivify_1042:
    concat $P116, $P114, $P115
    $P113."panic"($P116)
  unless_2128_end:
.annotate 'line', 1564
    find_lex $P110, "$fh"
    unless_null $P110, vivify_1043
    new $P110, "Undef"
  vivify_1043:
    nqpevent_fh $P111, $P110
.annotate 'line', 1561
    .return ($P111)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "removestage" :anon :subid("237_1315150096.049") :outer("164_1315150096.049")
    .param pmc param_2131
    .param pmc param_2132
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1574
    .const 'Sub' $P2137 = "238_1315150096.049" 
    capture_lex $P2137
    .lex "self", param_2131
    .lex "$stagename", param_2132
.annotate 'line', 1575
    $P2134 = root_new ['parrot';'ResizablePMCArray']
    set $P2133, $P2134
    .lex "@new_stages", $P2133
    new $P102, "ResizableStringArray"
    store_lex "@new_stages", $P102
.annotate 'line', 1576
    find_lex $P103, "self"
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    getattribute $P2135, $P104, $P105, "@!stages"
    unless_null $P2135, vivify_1046
    $P2135 = root_new ['parrot';'ResizablePMCArray']
  vivify_1046:
    defined $I100, $P2135
    unless $I100, for_undef_1047
    iter $P102, $P2135
    new $P108, 'ExceptionHandler'
    set_label $P108, loop2141_handler
    $P108."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P108
  loop2141_test:
    unless $P102, loop2141_done
    shift $P106, $P102
  loop2141_redo:
    .const 'Sub' $P2137 = "238_1315150096.049" 
    capture_lex $P2137
    $P2137($P106)
  loop2141_next:
    goto loop2141_test
  loop2141_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P109, exception, 'type'
    eq $P109, .CONTROL_LOOP_NEXT, loop2141_next
    eq $P109, .CONTROL_LOOP_REDO, loop2141_redo
  loop2141_done:
    pop_eh 
  for_undef_1047:
.annotate 'line', 1581
    find_lex $P2142, "@new_stages"
    unless_null $P2142, vivify_1052
    $P2142 = root_new ['parrot';'ResizablePMCArray']
  vivify_1052:
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    setattribute $P103, $P104, "@!stages", $P2142
.annotate 'line', 1574
    .return ($P2142)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2136"  :anon :subid("238_1315150096.049") :outer("237_1315150096.049")
    .param pmc param_2138
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1576
    .lex "$_", param_2138
.annotate 'line', 1577
    find_lex $P108, "$_"
    unless_null $P108, vivify_1048
    new $P108, "Undef"
  vivify_1048:
    set $S100, $P108
    find_lex $P109, "$stagename"
    unless_null $P109, vivify_1049
    new $P109, "Undef"
  vivify_1049:
    set $S101, $P109
    isne $I101, $S100, $S101
    if $I101, if_2139
    new $P107, 'Integer'
    set $P107, $I101
    goto if_2139_end
  if_2139:
.annotate 'line', 1578
    find_lex $P2140, "@new_stages"
    unless_null $P2140, vivify_1050
    $P2140 = root_new ['parrot';'ResizablePMCArray']
  vivify_1050:
    find_lex $P110, "$_"
    unless_null $P110, vivify_1051
    new $P110, "Undef"
  vivify_1051:
    $P111 = $P2140."push"($P110)
.annotate 'line', 1577
    set $P107, $P111
  if_2139_end:
.annotate 'line', 1576
    .return ($P107)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "addstage" :anon :subid("239_1315150096.049") :outer("164_1315150096.049")
    .param pmc param_2146
    .param pmc param_2147
    .param pmc param_2148 :slurpy :named
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1584
    .const 'Sub' $P2166 = "241_1315150096.049" 
    capture_lex $P2166
    .const 'Sub' $P2160 = "240_1315150096.049" 
    capture_lex $P2160
    new $P2145, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2145, control_2144
    push_eh $P2145
    .lex "self", param_2146
    .lex "$stagename", param_2147
    .lex "%adverbs", param_2148
.annotate 'line', 1585
    new $P102, "Undef"
    set $P2149, $P102
    .lex "$position", $P2149
.annotate 'line', 1586
    new $P103, "Undef"
    set $P2150, $P103
    .lex "$where", $P2150
.annotate 'line', 1599
    $P2152 = root_new ['parrot';'ResizablePMCArray']
    set $P2151, $P2152
    .lex "@new-stages", $P2151
.annotate 'line', 1584
    find_lex $P104, "$position"
    unless_null $P104, vivify_1053
    new $P104, "Undef"
  vivify_1053:
    find_lex $P104, "$where"
    unless_null $P104, vivify_1054
    new $P104, "Undef"
  vivify_1054:
.annotate 'line', 1587
    find_lex $P2154, "%adverbs"
    unless_null $P2154, vivify_1055
    $P2154 = root_new ['parrot';'Hash']
  vivify_1055:
    set $P104, $P2154["before"]
    unless_null $P104, vivify_1056
    new $P104, "Undef"
  vivify_1056:
    if $P104, if_2153
.annotate 'line', 1590
    find_lex $P2157, "%adverbs"
    unless_null $P2157, vivify_1057
    $P2157 = root_new ['parrot';'Hash']
  vivify_1057:
    set $P105, $P2157["after"]
    unless_null $P105, vivify_1058
    new $P105, "Undef"
  vivify_1058:
    if $P105, if_2156
.annotate 'line', 1593
    .const 'Sub' $P2160 = "240_1315150096.049" 
    capture_lex $P2160
    $P2160()
    goto if_2156_end
  if_2156:
.annotate 'line', 1591
    find_lex $P2158, "%adverbs"
    unless_null $P2158, vivify_1062
    $P2158 = root_new ['parrot';'Hash']
  vivify_1062:
    set $P106, $P2158["after"]
    unless_null $P106, vivify_1063
    new $P106, "Undef"
  vivify_1063:
    store_lex "$where", $P106
.annotate 'line', 1592
    new $P106, "String"
    assign $P106, "after"
    store_lex "$position", $P106
  if_2156_end:
.annotate 'line', 1590
    goto if_2153_end
  if_2153:
.annotate 'line', 1588
    find_lex $P2155, "%adverbs"
    unless_null $P2155, vivify_1064
    $P2155 = root_new ['parrot';'Hash']
  vivify_1064:
    set $P105, $P2155["before"]
    unless_null $P105, vivify_1065
    new $P105, "Undef"
  vivify_1065:
    store_lex "$where", $P105
.annotate 'line', 1589
    new $P105, "String"
    assign $P105, "before"
    store_lex "$position", $P105
  if_2153_end:
.annotate 'line', 1599
    new $P104, "ResizableStringArray"
    store_lex "@new-stages", $P104
.annotate 'line', 1600
    find_lex $P105, "self"
    $P106 = $P105."stages"()
    defined $I100, $P106
    unless $I100, for_undef_1066
    iter $P104, $P106
    new $P109, 'ExceptionHandler'
    set_label $P109, loop2175_handler
    $P109."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P109
  loop2175_test:
    unless $P104, loop2175_done
    shift $P107, $P104
  loop2175_redo:
    .const 'Sub' $P2166 = "241_1315150096.049" 
    capture_lex $P2166
    $P2166($P107)
  loop2175_next:
    goto loop2175_test
  loop2175_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P110, exception, 'type'
    eq $P110, .CONTROL_LOOP_NEXT, loop2175_next
    eq $P110, .CONTROL_LOOP_REDO, loop2175_redo
  loop2175_done:
    pop_eh 
  for_undef_1066:
.annotate 'line', 1613
    find_lex $P104, "self"
    find_lex $P2176, "@new-stages"
    unless_null $P2176, vivify_1080
    $P2176 = root_new ['parrot';'ResizablePMCArray']
  vivify_1080:
    $P105 = $P104."stages"($P2176)
.annotate 'line', 1584
    .return ($P105)
  control_2144:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P104, exception, "payload"
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2159"  :anon :subid("240_1315150096.049") :outer("239_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1594
    $P2162 = root_new ['parrot';'ResizablePMCArray']
    set $P2161, $P2162
    .lex "@new-stages", $P2161
    find_lex $P106, "self"
    $P107 = $P106."stages"()
    clone $P108, $P107
    store_lex "@new-stages", $P108
.annotate 'line', 1595
    find_lex $P2163, "@new-stages"
    unless_null $P2163, vivify_1059
    $P2163 = root_new ['parrot';'ResizablePMCArray']
  vivify_1059:
    find_lex $P106, "$stagename"
    unless_null $P106, vivify_1060
    new $P106, "Undef"
  vivify_1060:
    push $P2163, $P106
.annotate 'line', 1596
    find_lex $P106, "self"
    find_lex $P2164, "@new-stages"
    unless_null $P2164, vivify_1061
    $P2164 = root_new ['parrot';'ResizablePMCArray']
  vivify_1061:
    $P106."stages"($P2164)
.annotate 'line', 1597
    new $P106, "Exception"
    set $P106['type'], .CONTROL_RETURN
    new $P107, "Float"
    assign $P107, 1
    setattribute $P106, 'payload', $P107
    throw $P106
.annotate 'line', 1593
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2165"  :anon :subid("241_1315150096.049") :outer("239_1315150096.049")
    .param pmc param_2167
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1600
    .lex "$_", param_2167
.annotate 'line', 1601
    find_lex $P109, "$_"
    unless_null $P109, vivify_1067
    new $P109, "Undef"
  vivify_1067:
    set $S100, $P109
    find_lex $P110, "$where"
    unless_null $P110, vivify_1068
    new $P110, "Undef"
  vivify_1068:
    set $S101, $P110
    iseq $I101, $S100, $S101
    if $I101, if_2168
.annotate 'line', 1610
    find_lex $P2174, "@new-stages"
    unless_null $P2174, vivify_1069
    $P2174 = root_new ['parrot';'ResizablePMCArray']
  vivify_1069:
    find_lex $P112, "$_"
    unless_null $P112, vivify_1070
    new $P112, "Undef"
  vivify_1070:
    push $P2174, $P112
.annotate 'line', 1609
    set $P108, $P2174
.annotate 'line', 1601
    goto if_2168_end
  if_2168:
.annotate 'line', 1602
    find_lex $P112, "$position"
    unless_null $P112, vivify_1071
    new $P112, "Undef"
  vivify_1071:
    set $S102, $P112
    iseq $I102, $S102, "before"
    if $I102, if_2169
.annotate 'line', 1606
    find_lex $P2172, "@new-stages"
    unless_null $P2172, vivify_1072
    $P2172 = root_new ['parrot';'ResizablePMCArray']
  vivify_1072:
    find_lex $P113, "$_"
    unless_null $P113, vivify_1073
    new $P113, "Undef"
  vivify_1073:
    push $P2172, $P113
.annotate 'line', 1607
    find_lex $P2173, "@new-stages"
    unless_null $P2173, vivify_1074
    $P2173 = root_new ['parrot';'ResizablePMCArray']
  vivify_1074:
    find_lex $P113, "$stagename"
    unless_null $P113, vivify_1075
    new $P113, "Undef"
  vivify_1075:
    push $P2173, $P113
.annotate 'line', 1605
    set $P111, $P2173
.annotate 'line', 1602
    goto if_2169_end
  if_2169:
.annotate 'line', 1603
    find_lex $P2170, "@new-stages"
    unless_null $P2170, vivify_1076
    $P2170 = root_new ['parrot';'ResizablePMCArray']
  vivify_1076:
    find_lex $P113, "$stagename"
    unless_null $P113, vivify_1077
    new $P113, "Undef"
  vivify_1077:
    push $P2170, $P113
.annotate 'line', 1604
    find_lex $P2171, "@new-stages"
    unless_null $P2171, vivify_1078
    $P2171 = root_new ['parrot';'ResizablePMCArray']
  vivify_1078:
    find_lex $P113, "$_"
    unless_null $P113, vivify_1079
    new $P113, "Undef"
  vivify_1079:
    push $P2171, $P113
.annotate 'line', 1602
    set $P111, $P2171
  if_2169_end:
.annotate 'line', 1601
    set $P108, $P111
  if_2168_end:
.annotate 'line', 1600
    .return ($P108)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "parse_name" :anon :subid("242_1315150096.049") :outer("164_1315150096.049")
    .param pmc param_2178
    .param pmc param_2179
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1616
    .const 'Sub' $P2195 = "243_1315150096.049" 
    capture_lex $P2195
    .lex "self", param_2178
    .lex "$name", param_2179
.annotate 'line', 1617
    $P2181 = root_new ['parrot';'ResizablePMCArray']
    set $P2180, $P2181
    .lex "@ns", $P2180
.annotate 'line', 1618
    new $P102, "Undef"
    set $P2182, $P102
    .lex "$sigil", $P2182
.annotate 'line', 1621
    new $P103, "Undef"
    set $P2183, $P103
    .lex "$idx", $P2183
.annotate 'line', 1629
    $P2185 = root_new ['parrot';'ResizablePMCArray']
    set $P2184, $P2185
    .lex "@actual_ns", $P2184
.annotate 'line', 1617
    find_lex $P104, "$name"
    unless_null $P104, vivify_1081
    new $P104, "Undef"
  vivify_1081:
    set $S100, $P104
    split $P105, "::", $S100
    store_lex "@ns", $P105
.annotate 'line', 1618
    new $P104, "Float"
    assign $P104, 0
    set $I100, $P104
    find_lex $P2186, "@ns"
    unless_null $P2186, vivify_1082
    $P2186 = root_new ['parrot';'ResizablePMCArray']
  vivify_1082:
    set $P105, $P2186[$I100]
    unless_null $P105, vivify_1083
    new $P105, "Undef"
  vivify_1083:
    set $S100, $P105
    new $P106, "Float"
    assign $P106, 0
    set $I101, $P106
    new $P107, "Float"
    assign $P107, 1
    set $I102, $P107
    substr $S101, $S100, $I101, $I102
    new $P108, 'String'
    set $P108, $S101
    store_lex "$sigil", $P108
.annotate 'line', 1621
    find_lex $P104, "$sigil"
    unless_null $P104, vivify_1084
    new $P104, "Undef"
  vivify_1084:
    set $S100, $P104
    index $I100, "$@%&", $S100
    new $P105, 'Integer'
    set $P105, $I100
    store_lex "$idx", $P105
.annotate 'line', 1622
    find_lex $P104, "$idx"
    unless_null $P104, vivify_1085
    new $P104, "Undef"
  vivify_1085:
    set $N100, $P104
    set $N101, 0
    isge $I100, $N100, $N101
    unless $I100, if_2187_end
.annotate 'line', 1623
    new $P105, "Float"
    assign $P105, 0
    set $I101, $P105
    find_lex $P2188, "@ns"
    unless_null $P2188, vivify_1086
    $P2188 = root_new ['parrot';'ResizablePMCArray']
  vivify_1086:
    set $P106, $P2188[$I101]
    unless_null $P106, vivify_1087
    new $P106, "Undef"
  vivify_1087:
    set $S100, $P106
    new $P107, "Float"
    assign $P107, 1
    set $I102, $P107
    substr $S101, $S100, $I102
    new $P108, 'String'
    set $P108, $S101
    new $P109, "Float"
    assign $P109, 0
    set $I103, $P109
    find_lex $P2189, "@ns"
    unless_null $P2189, vivify_1088
    $P2189 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@ns", $P2189
  vivify_1088:
    set $P2189[$I103], $P108
.annotate 'line', 1624
    find_lex $P105, "$sigil"
    unless_null $P105, vivify_1089
    new $P105, "Undef"
  vivify_1089:
    new $P106, "Float"
    assign $P106, -1
    set $I101, $P106
    find_lex $P2190, "@ns"
    unless_null $P2190, vivify_1090
    $P2190 = root_new ['parrot';'ResizablePMCArray']
  vivify_1090:
    set $P107, $P2190[$I101]
    unless_null $P107, vivify_1091
    new $P107, "Undef"
  vivify_1091:
    concat $P108, $P105, $P107
    new $P109, "Float"
    assign $P109, -1
    set $I102, $P109
    find_lex $P2191, "@ns"
    unless_null $P2191, vivify_1092
    $P2191 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@ns", $P2191
  vivify_1092:
    set $P2191[$I102], $P108
  if_2187_end:
.annotate 'line', 1616
    find_lex $P2192, "@actual_ns"
    unless_null $P2192, vivify_1093
    $P2192 = root_new ['parrot';'ResizablePMCArray']
  vivify_1093:
.annotate 'line', 1630
    find_lex $P2193, "@ns"
    unless_null $P2193, vivify_1094
    $P2193 = root_new ['parrot';'ResizablePMCArray']
  vivify_1094:
    defined $I100, $P2193
    unless $I100, for_undef_1095
    iter $P104, $P2193
    new $P107, 'ExceptionHandler'
    set_label $P107, loop2199_handler
    $P107."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P107
  loop2199_test:
    unless $P104, loop2199_done
    shift $P105, $P104
  loop2199_redo:
    .const 'Sub' $P2195 = "243_1315150096.049" 
    capture_lex $P2195
    $P2195($P105)
  loop2199_next:
    goto loop2199_test
  loop2199_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P108, exception, 'type'
    eq $P108, .CONTROL_LOOP_NEXT, loop2199_next
    eq $P108, .CONTROL_LOOP_REDO, loop2199_redo
  loop2199_done:
    pop_eh 
  for_undef_1095:
.annotate 'line', 1616
    find_lex $P2200, "@actual_ns"
    unless_null $P2200, vivify_1099
    $P2200 = root_new ['parrot';'ResizablePMCArray']
  vivify_1099:
    .return ($P2200)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2194"  :anon :subid("243_1315150096.049") :outer("242_1315150096.049")
    .param pmc param_2196
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1630
    .lex "$_", param_2196
.annotate 'line', 1631
    find_lex $P107, "$_"
    unless_null $P107, vivify_1096
    new $P107, "Undef"
  vivify_1096:
    set $S100, $P107
    iseq $I101, $S100, ""
    unless $I101, unless_2197
    new $P106, 'Integer'
    set $P106, $I101
    goto unless_2197_end
  unless_2197:
    find_lex $P2198, "@actual_ns"
    unless_null $P2198, vivify_1097
    $P2198 = root_new ['parrot';'ResizablePMCArray']
  vivify_1097:
    find_lex $P108, "$_"
    unless_null $P108, vivify_1098
    new $P108, "Undef"
  vivify_1098:
    push $P2198, $P108
    set $P106, $P2198
  unless_2197_end:
.annotate 'line', 1630
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "lineof" :anon :subid("244_1315150096.049") :outer("164_1315150096.049")
    .param pmc param_2202
    .param pmc param_2203
    .param pmc param_2204
    .param pmc param_2205 :optional :named("cache")
    .param int has_param_2205 :opt_flag
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1636
    .lex "self", param_2202
    .lex "$target", param_2203
    .lex "$pos", param_2204
    if has_param_2205, optparam_1100
    new $P102, "Undef"
    set param_2205, $P102
  optparam_1100:
    .lex "$cache", param_2205
.annotate 'line', 1637

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
        
.annotate 'line', 1636
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "_block2207"  :subid("245_1315150096.049") :outer("10_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1792
    .const 'Sub' $P2223 = "250_1315150096.049" 
    capture_lex $P2223
    .const 'Sub' $P2219 = "249_1315150096.049" 
    capture_lex $P2219
    .const 'Sub' $P2216 = "248_1315150096.049" 
    capture_lex $P2216
    .const 'Sub' $P2213 = "247_1315150096.049" 
    capture_lex $P2213
    .const 'Sub' $P2211 = "246_1315150096.049" 
    capture_lex $P2211
    .lex "$?PACKAGE", $P2209
    .lex "$?CLASS", $P2210
.annotate 'line', 1808
    .const 'Sub' $P2223 = "250_1315150096.049" 
    newclosure $P2238, $P2223
.annotate 'line', 1792
    .return ($P2238)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "init" :anon :subid("246_1315150096.049") :outer("245_1315150096.049")
    .param pmc param_2212
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1796
    .lex "self", param_2212
.annotate 'line', 1797
    new $P101, "ResizablePMCArray"
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    setattribute $P103, $P104, "@!arguments", $P101
.annotate 'line', 1798
    new $P101, "Hash"
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    setattribute $P103, $P104, "%!options", $P101
.annotate 'line', 1796
    .return ($P101)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "arguments" :anon :subid("247_1315150096.049") :outer("245_1315150096.049")
    .param pmc param_2214
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1801
    .lex "self", param_2214
    find_lex $P101, "self"
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    getattribute $P2215, $P102, $P103, "@!arguments"
    unless_null $P2215, vivify_1102
    $P2215 = root_new ['parrot';'ResizablePMCArray']
  vivify_1102:
    .return ($P2215)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "options" :anon :subid("248_1315150096.049") :outer("245_1315150096.049")
    .param pmc param_2217
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1802
    .lex "self", param_2217
    find_lex $P101, "self"
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    getattribute $P2218, $P102, $P103, "%!options"
    unless_null $P2218, vivify_1103
    $P2218 = root_new ['parrot';'Hash']
  vivify_1103:
    .return ($P2218)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "add-argument" :anon :subid("249_1315150096.049") :outer("245_1315150096.049")
    .param pmc param_2220
    .param pmc param_2221
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1804
    .lex "self", param_2220
    .lex "$x", param_2221
.annotate 'line', 1805
    find_lex $P101, "self"
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    getattribute $P2222, $P102, $P103, "@!arguments"
    unless_null $P2222, vivify_1104
    $P2222 = root_new ['parrot';'ResizablePMCArray']
  vivify_1104:
    find_lex $P104, "$x"
    unless_null $P104, vivify_1105
    new $P104, "Undef"
  vivify_1105:
    push $P2222, $P104
.annotate 'line', 1804
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "add-option" :anon :subid("250_1315150096.049") :outer("245_1315150096.049")
    .param pmc param_2224
    .param pmc param_2225
    .param pmc param_2226
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1808
    .const 'Sub' $P2230 = "251_1315150096.049" 
    capture_lex $P2230
    .lex "self", param_2224
    .lex "$name", param_2225
    .lex "$value", param_2226
.annotate 'line', 1811
    find_lex $P105, "$name"
    unless_null $P105, vivify_1106
    new $P105, "Undef"
  vivify_1106:
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    getattribute $P2228, $P103, $P104, "%!options"
    unless_null $P2228, vivify_1107
    $P2228 = root_new ['parrot';'Hash']
  vivify_1107:
    exists $I100, $P2228[$P105]
    if $I100, if_2227
.annotate 'line', 1820
    find_lex $P109, "$value"
    unless_null $P109, vivify_1108
    new $P109, "Undef"
  vivify_1108:
    find_lex $P110, "$name"
    unless_null $P110, vivify_1109
    new $P110, "Undef"
  vivify_1109:
    find_lex $P111, "self"
    nqp_decontainerize $P112, $P111
    find_lex $P113, "$?CLASS"
    getattribute $P2237, $P112, $P113, "%!options"
    unless_null $P2237, vivify_1110
    $P2237 = root_new ['parrot';'Hash']
    setattribute $P112, $P113, "%!options", $P2237
  vivify_1110:
    set $P2237[$P110], $P109
.annotate 'line', 1819
    set $P101, $P109
.annotate 'line', 1811
    goto if_2227_end
  if_2227:
    .const 'Sub' $P2230 = "251_1315150096.049" 
    capture_lex $P2230
    $P108 = $P2230()
    set $P101, $P108
  if_2227_end:
.annotate 'line', 1808
    .return ($P101)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "_block2229"  :anon :subid("251_1315150096.049") :outer("250_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1812
    new $P106, "Undef"
    set $P2231, $P106
    .lex "$t", $P2231
    find_lex $P107, "self"
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    getattribute $P2232, $P108, $P109, "%!options"
    unless_null $P2232, vivify_1111
    $P2232 = root_new ['parrot';'Hash']
  vivify_1111:
    typeof $S100, $P2232
    new $P110, 'String'
    set $P110, $S100
    store_lex "$t", $P110
.annotate 'line', 1813
    find_lex $P107, "$t"
    unless_null $P107, vivify_1112
    new $P107, "Undef"
  vivify_1112:
    "say"($P107)
.annotate 'line', 1814
    find_lex $P108, "$t"
    unless_null $P108, vivify_1113
    new $P108, "Undef"
  vivify_1113:
    set $S100, $P108
    iseq $I101, $S100, "ResizablePMCArray"
    if $I101, if_2233
.annotate 'line', 1817
    find_lex $P109, "$name"
    unless_null $P109, vivify_1114
    new $P109, "Undef"
  vivify_1114:
    find_lex $P110, "self"
    nqp_decontainerize $P111, $P110
    find_lex $P112, "$?CLASS"
    getattribute $P2235, $P111, $P112, "%!options"
    unless_null $P2235, vivify_1115
    $P2235 = root_new ['parrot';'Hash']
  vivify_1115:
    set $P114, $P2235[$P109]
    unless_null $P114, vivify_1116
    new $P114, "Undef"
  vivify_1116:
    find_lex $P115, "$name"
    unless_null $P115, vivify_1117
    new $P115, "Undef"
  vivify_1117:
    new $P116, "ResizablePMCArray"
    push $P116, $P114
    push $P116, $P115
    find_lex $P117, "$name"
    unless_null $P117, vivify_1118
    new $P117, "Undef"
  vivify_1118:
    find_lex $P118, "self"
    nqp_decontainerize $P119, $P118
    find_lex $P120, "$?CLASS"
    getattribute $P2236, $P119, $P120, "%!options"
    unless_null $P2236, vivify_1119
    $P2236 = root_new ['parrot';'Hash']
    setattribute $P119, $P120, "%!options", $P2236
  vivify_1119:
    set $P2236[$P117], $P116
.annotate 'line', 1816
    set $P107, $P116
.annotate 'line', 1814
    goto if_2233_end
  if_2233:
.annotate 'line', 1815
    find_lex $P109, "$name"
    unless_null $P109, vivify_1120
    new $P109, "Undef"
  vivify_1120:
    find_lex $P110, "self"
    nqp_decontainerize $P111, $P110
    find_lex $P112, "$?CLASS"
    getattribute $P2234, $P111, $P112, "%!options"
    unless_null $P2234, vivify_1121
    $P2234 = root_new ['parrot';'Hash']
  vivify_1121:
    set $P113, $P2234[$P109]
    unless_null $P113, vivify_1122
    new $P113, "Undef"
  vivify_1122:
    find_lex $P114, "$value"
    unless_null $P114, vivify_1123
    new $P114, "Undef"
  vivify_1123:
    push $P113, $P114
.annotate 'line', 1814
    set $P107, $P113
  if_2233_end:
.annotate 'line', 1811
    .return ($P107)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2239"  :subid("252_1315150096.049") :outer("10_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1825
    .const 'Sub' $P2300 = "264_1315150096.049" 
    capture_lex $P2300
    .const 'Sub' $P2295 = "263_1315150096.049" 
    capture_lex $P2295
    .const 'Sub' $P2290 = "262_1315150096.049" 
    capture_lex $P2290
    .const 'Sub' $P2282 = "261_1315150096.049" 
    capture_lex $P2282
    .const 'Sub' $P2267 = "259_1315150096.049" 
    capture_lex $P2267
    .const 'Sub' $P2264 = "258_1315150096.049" 
    capture_lex $P2264
    .const 'Sub' $P2260 = "257_1315150096.049" 
    capture_lex $P2260
    .const 'Sub' $P2250 = "255_1315150096.049" 
    capture_lex $P2250
    .const 'Sub' $P2248 = "254_1315150096.049" 
    capture_lex $P2248
    .const 'Sub' $P2243 = "253_1315150096.049" 
    capture_lex $P2243
    .lex "$?PACKAGE", $P2241
    .lex "$?CLASS", $P2242
.annotate 'line', 1890
    .const 'Sub' $P2300 = "264_1315150096.049" 
    newclosure $P2373, $P2300
.annotate 'line', 1825
    .return ($P2373)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "new" :anon :subid("253_1315150096.049") :outer("252_1315150096.049")
    .param pmc param_2244
    .param pmc param_2245
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1831
    .lex "self", param_2244
    .lex "@specs", param_2245
.annotate 'line', 1832
    new $P101, "Undef"
    set $P2246, $P101
    .lex "$obj", $P2246
    find_lex $P102, "self"
    $P103 = $P102."CREATE"()
    store_lex "$obj", $P103
.annotate 'line', 1833
    find_lex $P102, "$obj"
    unless_null $P102, vivify_1124
    new $P102, "Undef"
  vivify_1124:
    find_lex $P2247, "@specs"
    unless_null $P2247, vivify_1125
    $P2247 = root_new ['parrot';'ResizablePMCArray']
  vivify_1125:
    $P102."BUILD"($P2247 :named("specs"))
.annotate 'line', 1831
    find_lex $P102, "$obj"
    unless_null $P102, vivify_1126
    new $P102, "Undef"
  vivify_1126:
    .return ($P102)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "stop-after-first-arg" :anon :subid("254_1315150096.049") :outer("252_1315150096.049")
    .param pmc param_2249
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1837
    .lex "self", param_2249
.annotate 'line', 1838
    new $P101, "Float"
    assign $P101, 1
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    setattribute $P103, $P104, "$!stop-after-first-arg", $P101
.annotate 'line', 1837
    .return ($P101)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "BUILD" :anon :subid("255_1315150096.049") :outer("252_1315150096.049")
    .param pmc param_2251
    .param pmc param_2252 :optional :named("specs")
    .param int has_param_2252 :opt_flag
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1841
    .const 'Sub' $P2257 = "256_1315150096.049" 
    capture_lex $P2257
    .lex "self", param_2251
    if has_param_2252, optparam_1127
    $P2253 = root_new ['parrot';'ResizablePMCArray']
    set param_2252, $P2253
  optparam_1127:
    .lex "@specs", param_2252
.annotate 'line', 1842
    new $P101, "Float"
    assign $P101, 1
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    getattribute $P2254, $P103, $P104, "%!stopper"
    unless_null $P2254, vivify_1128
    $P2254 = root_new ['parrot';'Hash']
    setattribute $P103, $P104, "%!stopper", $P2254
  vivify_1128:
    set $P2254["--"], $P101
.annotate 'line', 1843
    new $P101, "Float"
    assign $P101, 0
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    setattribute $P103, $P104, "$!stop-after-first-arg", $P101
.annotate 'line', 1844
    find_lex $P2255, "@specs"
    unless_null $P2255, vivify_1129
    $P2255 = root_new ['parrot';'ResizablePMCArray']
  vivify_1129:
    defined $I100, $P2255
    unless $I100, for_undef_1130
    iter $P101, $P2255
    new $P103, 'ExceptionHandler'
    set_label $P103, loop2259_handler
    $P103."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P103
  loop2259_test:
    unless $P101, loop2259_done
    shift $P102, $P101
  loop2259_redo:
    .const 'Sub' $P2257 = "256_1315150096.049" 
    capture_lex $P2257
    $P2257($P102)
  loop2259_next:
    goto loop2259_test
  loop2259_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P104, exception, 'type'
    eq $P104, .CONTROL_LOOP_NEXT, loop2259_next
    eq $P104, .CONTROL_LOOP_REDO, loop2259_redo
  loop2259_done:
    pop_eh 
  for_undef_1130:
.annotate 'line', 1841
    .return ($P101)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2256"  :anon :subid("256_1315150096.049") :outer("255_1315150096.049")
    .param pmc param_2258
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1844
    .lex "$_", param_2258
.annotate 'line', 1845
    find_lex $P103, "self"
    find_lex $P104, "$_"
    unless_null $P104, vivify_1131
    new $P104, "Undef"
  vivify_1131:
    $P105 = $P103."add-spec"($P104)
.annotate 'line', 1844
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "add-stopper" :anon :subid("257_1315150096.049") :outer("252_1315150096.049")
    .param pmc param_2261
    .param pmc param_2262
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1848
    .lex "self", param_2261
    .lex "$x", param_2262
.annotate 'line', 1849
    new $P101, "Float"
    assign $P101, 1
    find_lex $P102, "$x"
    unless_null $P102, vivify_1132
    new $P102, "Undef"
  vivify_1132:
    find_lex $P103, "self"
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    getattribute $P2263, $P104, $P105, "%!stopper"
    unless_null $P2263, vivify_1133
    $P2263 = root_new ['parrot';'Hash']
    setattribute $P104, $P105, "%!stopper", $P2263
  vivify_1133:
    set $P2263[$P102], $P101
.annotate 'line', 1848
    .return ($P101)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "split-option-aliases" :anon :subid("258_1315150096.049") :outer("252_1315150096.049")
    .param pmc param_2265
    .param pmc param_2266
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1852
    .lex "self", param_2265
    .lex "$s", param_2266
.annotate 'line', 1853
    find_lex $P101, "$s"
    unless_null $P101, vivify_1134
    new $P101, "Undef"
  vivify_1134:
    set $S100, $P101
    split $P102, "|", $S100
.annotate 'line', 1852
    .return ($P102)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "add-spec" :anon :subid("259_1315150096.049") :outer("252_1315150096.049")
    .param pmc param_2268
    .param pmc param_2269
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1857
    .const 'Sub' $P2278 = "260_1315150096.049" 
    capture_lex $P2278
    .lex "self", param_2268
    .lex "$s", param_2269
.annotate 'line', 1858
    new $P101, "Undef"
    set $P2270, $P101
    .lex "$i", $P2270
.annotate 'line', 1859
    new $P102, "Undef"
    set $P2271, $P102
    .lex "$type", $P2271
.annotate 'line', 1860
    $P2273 = root_new ['parrot';'ResizablePMCArray']
    set $P2272, $P2273
    .lex "@options", $P2272
.annotate 'line', 1858
    find_lex $P103, "$s"
    unless_null $P103, vivify_1135
    new $P103, "Undef"
  vivify_1135:
    set $S100, $P103
    index $I100, $S100, "="
    new $P104, 'Integer'
    set $P104, $I100
    store_lex "$i", $P104
.annotate 'line', 1857
    find_lex $P103, "$type"
    unless_null $P103, vivify_1136
    new $P103, "Undef"
  vivify_1136:
    find_lex $P2274, "@options"
    unless_null $P2274, vivify_1137
    $P2274 = root_new ['parrot';'ResizablePMCArray']
  vivify_1137:
.annotate 'line', 1861
    find_lex $P103, "$i"
    unless_null $P103, vivify_1138
    new $P103, "Undef"
  vivify_1138:
    set $N100, $P103
    set $N101, 0
    islt $I100, $N100, $N101
    if $I100, if_2275
.annotate 'line', 1865
    find_lex $P104, "$s"
    unless_null $P104, vivify_1139
    new $P104, "Undef"
  vivify_1139:
    set $S100, $P104
    find_lex $P105, "$i"
    unless_null $P105, vivify_1140
    new $P105, "Undef"
  vivify_1140:
    add $P106, $P105, 1
    set $I101, $P106
    substr $S101, $S100, $I101
    new $P107, 'String'
    set $P107, $S101
    store_lex "$type", $P107
.annotate 'line', 1866
    find_lex $P104, "self"
    find_lex $P105, "$s"
    unless_null $P105, vivify_1141
    new $P105, "Undef"
  vivify_1141:
    set $S100, $P105
    new $P106, "Float"
    assign $P106, 0
    set $I101, $P106
    find_lex $P107, "$i"
    unless_null $P107, vivify_1142
    new $P107, "Undef"
  vivify_1142:
    set $I102, $P107
    substr $S101, $S100, $I101, $I102
    $P108 = $P104."split-option-aliases"($S101)
    store_lex "@options", $P108
.annotate 'line', 1864
    goto if_2275_end
  if_2275:
.annotate 'line', 1862
    new $P104, "String"
    assign $P104, "b"
    store_lex "$type", $P104
.annotate 'line', 1863
    find_lex $P104, "self"
    find_lex $P105, "$s"
    unless_null $P105, vivify_1143
    new $P105, "Undef"
  vivify_1143:
    $P106 = $P104."split-option-aliases"($P105)
    store_lex "@options", $P106
  if_2275_end:
.annotate 'line', 1868
    find_lex $P2276, "@options"
    unless_null $P2276, vivify_1144
    $P2276 = root_new ['parrot';'ResizablePMCArray']
  vivify_1144:
    defined $I100, $P2276
    unless $I100, for_undef_1145
    iter $P103, $P2276
    new $P106, 'ExceptionHandler'
    set_label $P106, loop2281_handler
    $P106."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P106
  loop2281_test:
    unless $P103, loop2281_done
    shift $P104, $P103
  loop2281_redo:
    .const 'Sub' $P2278 = "260_1315150096.049" 
    capture_lex $P2278
    $P2278($P104)
  loop2281_next:
    goto loop2281_test
  loop2281_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P107, exception, 'type'
    eq $P107, .CONTROL_LOOP_NEXT, loop2281_next
    eq $P107, .CONTROL_LOOP_REDO, loop2281_redo
  loop2281_done:
    pop_eh 
  for_undef_1145:
.annotate 'line', 1857
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2277"  :anon :subid("260_1315150096.049") :outer("259_1315150096.049")
    .param pmc param_2279
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1868
    .lex "$_", param_2279
.annotate 'line', 1869
    find_lex $P105, "$type"
    unless_null $P105, vivify_1146
    new $P105, "Undef"
  vivify_1146:
    find_lex $P106, "$_"
    unless_null $P106, vivify_1147
    new $P106, "Undef"
  vivify_1147:
    find_lex $P107, "self"
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    getattribute $P2280, $P108, $P109, "%!options"
    unless_null $P2280, vivify_1148
    $P2280 = root_new ['parrot';'Hash']
    setattribute $P108, $P109, "%!options", $P2280
  vivify_1148:
    set $P2280[$P106], $P105
.annotate 'line', 1868
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "is-option" :anon :subid("261_1315150096.049") :outer("252_1315150096.049")
    .param pmc param_2285
    .param pmc param_2286
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1874
    new $P2284, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2284, control_2283
    push_eh $P2284
    .lex "self", param_2285
    .lex "$x", param_2286
.annotate 'line', 1875
    find_lex $P102, "$x"
    unless_null $P102, vivify_1149
    new $P102, "Undef"
  vivify_1149:
    set $S100, $P102
    iseq $I100, $S100, "-"
    unless $I100, unless_2288
    new $P101, 'Integer'
    set $P101, $I100
    goto unless_2288_end
  unless_2288:
    find_lex $P103, "$x"
    unless_null $P103, vivify_1150
    new $P103, "Undef"
  vivify_1150:
    set $S101, $P103
    iseq $I101, $S101, "--"
    new $P101, 'Integer'
    set $P101, $I101
  unless_2288_end:
    unless $P101, if_2287_end
    new $P104, "Exception"
    set $P104['type'], .CONTROL_RETURN
    new $P105, "Float"
    assign $P105, 0
    setattribute $P104, 'payload', $P105
    throw $P104
  if_2287_end:
.annotate 'line', 1876
    find_lex $P101, "$x"
    unless_null $P101, vivify_1151
    new $P101, "Undef"
  vivify_1151:
    set $S100, $P101
    new $P102, "Float"
    assign $P102, 0
    set $I100, $P102
    new $P103, "Float"
    assign $P103, 1
    set $I101, $P103
    substr $S101, $S100, $I100, $I101
    iseq $I102, $S101, "-"
    unless $I102, if_2289_end
    new $P104, "Exception"
    set $P104['type'], .CONTROL_RETURN
    new $P105, "Float"
    assign $P105, 1
    setattribute $P104, 'payload', $P105
    throw $P104
  if_2289_end:
.annotate 'line', 1874
    .return (0)
  control_2283:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P101, exception, "payload"
    .return ($P101)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "wants-value" :anon :subid("262_1315150096.049") :outer("252_1315150096.049")
    .param pmc param_2291
    .param pmc param_2292
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1880
    .lex "self", param_2291
    .lex "$x", param_2292
.annotate 'line', 1881
    new $P101, "Undef"
    set $P2293, $P101
    .lex "$spec", $P2293
    find_lex $P102, "$x"
    unless_null $P102, vivify_1152
    new $P102, "Undef"
  vivify_1152:
    find_lex $P103, "self"
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    getattribute $P2294, $P104, $P105, "%!options"
    unless_null $P2294, vivify_1153
    $P2294 = root_new ['parrot';'Hash']
  vivify_1153:
    set $P106, $P2294[$P102]
    unless_null $P106, vivify_1154
    new $P106, "Undef"
  vivify_1154:
    store_lex "$spec", $P106
.annotate 'line', 1882
    find_lex $P102, "$spec"
    unless_null $P102, vivify_1155
    new $P102, "Undef"
  vivify_1155:
    set $S100, $P102
    new $P103, "Float"
    assign $P103, 0
    set $I100, $P103
    new $P104, "Float"
    assign $P104, 1
    set $I101, $P104
    substr $S101, $S100, $I100, $I101
    iseq $I102, $S101, "s"
.annotate 'line', 1880
    .return ($I102)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "optional-value" :anon :subid("263_1315150096.049") :outer("252_1315150096.049")
    .param pmc param_2296
    .param pmc param_2297
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1885
    .lex "self", param_2296
    .lex "$x", param_2297
.annotate 'line', 1886
    new $P101, "Undef"
    set $P2298, $P101
    .lex "$spec", $P2298
    find_lex $P102, "$x"
    unless_null $P102, vivify_1156
    new $P102, "Undef"
  vivify_1156:
    find_lex $P103, "self"
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    getattribute $P2299, $P104, $P105, "%!options"
    unless_null $P2299, vivify_1157
    $P2299 = root_new ['parrot';'Hash']
  vivify_1157:
    set $P106, $P2299[$P102]
    unless_null $P106, vivify_1158
    new $P106, "Undef"
  vivify_1158:
    store_lex "$spec", $P106
.annotate 'line', 1887
    find_lex $P102, "$spec"
    unless_null $P102, vivify_1159
    new $P102, "Undef"
  vivify_1159:
    set $S100, $P102
    iseq $I100, $S100, "s?"
.annotate 'line', 1885
    .return ($I100)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "parse" :anon :subid("264_1315150096.049") :outer("252_1315150096.049")
    .param pmc param_2303
    .param pmc param_2304
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1890
    .const 'Sub' $P2329 = "267_1315150096.049" 
    capture_lex $P2329
    .const 'Sub' $P2321 = "266_1315150096.049" 
    capture_lex $P2321
    .const 'Sub' $P2309 = "265_1315150096.049" 
    capture_lex $P2309
    new $P2302, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2302, control_2301
    push_eh $P2302
    .lex "self", param_2303
    .lex "@args", param_2304
.annotate 'line', 1891
    new $P101, "Undef"
    set $P2305, $P101
    .lex "$i", $P2305
.annotate 'line', 1892
    new $P102, "Undef"
    set $P2306, $P102
    .lex "$arg-count", $P2306
.annotate 'line', 1894
    new $P103, "Undef"
    set $P2307, $P103
    .lex "$result", $P2307
.annotate 'line', 1898
    .const 'Sub' $P2309 = "265_1315150096.049" 
    newclosure $P2319, $P2309
    set $P2308, $P2319
    .lex "get-value", $P2308
.annotate 'line', 1913
    .const 'Sub' $P2321 = "266_1315150096.049" 
    newclosure $P2326, $P2321
    set $P2320, $P2326
    .lex "slurp-rest", $P2320
.annotate 'line', 1891
    new $P105, "Float"
    assign $P105, 0
    store_lex "$i", $P105
.annotate 'line', 1892
    find_lex $P2327, "@args"
    unless_null $P2327, vivify_1185
    $P2327 = root_new ['parrot';'ResizablePMCArray']
  vivify_1185:
    set $N100, $P2327
    new $P105, 'Float'
    set $P105, $N100
    store_lex "$arg-count", $P105
.annotate 'line', 1894
    get_hll_global $P105, "GLOBAL"
    nqp_get_package_through_who $P106, $P105, "HLL"
    nqp_get_package_through_who $P107, $P106, "CommandLine"
    get_who $P108, $P107
    set $P109, $P108["Result"]
    $P110 = $P109."new"()
    store_lex "$result", $P110
.annotate 'line', 1895
    find_lex $P105, "$result"
    unless_null $P105, vivify_1186
    new $P105, "Undef"
  vivify_1186:
    $P105."init"()
.annotate 'line', 1890
    find_lex $P105, "get-value"
    find_lex $P105, "slurp-rest"
.annotate 'line', 1921
    new $P108, 'ExceptionHandler'
    set_label $P108, loop2372_handler
    $P108."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P108
  loop2372_test:
    find_lex $P105, "$i"
    unless_null $P105, vivify_1187
    new $P105, "Undef"
  vivify_1187:
    set $N100, $P105
    find_lex $P106, "$arg-count"
    unless_null $P106, vivify_1188
    new $P106, "Undef"
  vivify_1188:
    set $N101, $P106
    islt $I101, $N100, $N101
    unless $I101, loop2372_done
  loop2372_redo:
    .const 'Sub' $P2329 = "267_1315150096.049" 
    capture_lex $P2329
    $P2329()
  loop2372_next:
    goto loop2372_test
  loop2372_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P109, exception, 'type'
    eq $P109, .CONTROL_LOOP_NEXT, loop2372_next
    eq $P109, .CONTROL_LOOP_REDO, loop2372_redo
  loop2372_done:
    pop_eh 
.annotate 'line', 1976
    new $P105, "Exception"
    set $P105['type'], .CONTROL_RETURN
    find_lex $P106, "$result"
    unless_null $P106, vivify_1248
    new $P106, "Undef"
  vivify_1248:
    setattribute $P105, 'payload', $P106
    throw $P105
.annotate 'line', 1890
    .return ()
  control_2301:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P105, exception, "payload"
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "get-value"  :subid("265_1315150096.049") :outer("264_1315150096.049")
    .param pmc param_2310
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1898
    .lex "$opt", param_2310
.annotate 'line', 1899
    find_lex $P105, "$i"
    unless_null $P105, vivify_1160
    new $P105, "Undef"
  vivify_1160:
    set $N100, $P105
    find_lex $P106, "$arg-count"
    unless_null $P106, vivify_1161
    new $P106, "Undef"
  vivify_1161:
    sub $P107, $P106, 1
    set $N101, $P107
    iseq $I100, $N100, $N101
    if $I100, if_2311
.annotate 'line', 1901
    find_lex $P109, "self"
    find_lex $P110, "$i"
    unless_null $P110, vivify_1162
    new $P110, "Undef"
  vivify_1162:
    add $P111, $P110, 1
    set $I101, $P111
    find_lex $P2313, "@args"
    unless_null $P2313, vivify_1163
    $P2313 = root_new ['parrot';'ResizablePMCArray']
  vivify_1163:
    set $P112, $P2313[$I101]
    unless_null $P112, vivify_1164
    new $P112, "Undef"
  vivify_1164:
    $P113 = $P109."is-option"($P112)
    if $P113, if_2312
.annotate 'line', 1903
    find_lex $P115, "$i"
    unless_null $P115, vivify_1165
    new $P115, "Undef"
  vivify_1165:
    add $P116, $P115, 1
    set $I102, $P116
    find_lex $P2315, "@args"
    unless_null $P2315, vivify_1166
    $P2315 = root_new ['parrot';'ResizablePMCArray']
  vivify_1166:
    set $P117, $P2315[$I102]
    unless_null $P117, vivify_1167
    new $P117, "Undef"
  vivify_1167:
    find_lex $P118, "self"
    nqp_decontainerize $P119, $P118
    find_lex $P120, "$?CLASS"
    getattribute $P2316, $P119, $P120, "%!stopper"
    unless_null $P2316, vivify_1168
    $P2316 = root_new ['parrot';'Hash']
  vivify_1168:
    set $P121, $P2316[$P117]
    unless_null $P121, vivify_1169
    new $P121, "Undef"
  vivify_1169:
    if $P121, if_2314
.annotate 'line', 1905
    find_lex $P122, "$i"
    unless_null $P122, vivify_1170
    new $P122, "Undef"
  vivify_1170:
    clone $P2317, $P122
    inc $P122
    find_lex $P122, "$i"
    unless_null $P122, vivify_1171
    new $P122, "Undef"
  vivify_1171:
    set $I103, $P122
    find_lex $P2318, "@args"
    unless_null $P2318, vivify_1172
    $P2318 = root_new ['parrot';'ResizablePMCArray']
  vivify_1172:
    set $P123, $P2318[$I103]
    unless_null $P123, vivify_1173
    new $P123, "Undef"
  vivify_1173:
    set $P114, $P123
.annotate 'line', 1903
    goto if_2314_end
  if_2314:
.annotate 'line', 1904
    new $P122, 'String'
    set $P122, "Option "
    find_lex $P123, "$opt"
    unless_null $P123, vivify_1174
    new $P123, "Undef"
  vivify_1174:
    concat $P124, $P122, $P123
    concat $P125, $P124, " needs a value, but is followed by a stopper"
    die $P125
  if_2314_end:
.annotate 'line', 1903
    set $P108, $P114
.annotate 'line', 1901
    goto if_2312_end
  if_2312:
.annotate 'line', 1902
    new $P114, 'String'
    set $P114, "Option "
    find_lex $P115, "$opt"
    unless_null $P115, vivify_1175
    new $P115, "Undef"
  vivify_1175:
    concat $P116, $P114, $P115
    concat $P117, $P116, " needs a value, but is followed by an option"
    die $P117
  if_2312_end:
.annotate 'line', 1901
    set $P104, $P108
.annotate 'line', 1899
    goto if_2311_end
  if_2311:
.annotate 'line', 1900
    new $P108, 'String'
    set $P108, "Option "
    find_lex $P109, "$opt"
    unless_null $P109, vivify_1176
    new $P109, "Undef"
  vivify_1176:
    concat $P110, $P108, $P109
    concat $P111, $P110, " needs a value"
    die $P111
  if_2311_end:
.annotate 'line', 1898
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "slurp-rest"  :subid("266_1315150096.049") :outer("264_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1913
    find_lex $P105, "$i"
    unless_null $P105, vivify_1177
    new $P105, "Undef"
  vivify_1177:
    clone $P2322, $P105
    inc $P105
.annotate 'line', 1915
    new $P107, 'ExceptionHandler'
    set_label $P107, loop2325_handler
    $P107."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P107
  loop2325_test:
    find_lex $P105, "$i"
    unless_null $P105, vivify_1178
    new $P105, "Undef"
  vivify_1178:
    set $N100, $P105
    find_lex $P106, "$arg-count"
    unless_null $P106, vivify_1179
    new $P106, "Undef"
  vivify_1179:
    set $N101, $P106
    islt $I100, $N100, $N101
    unless $I100, loop2325_done
  loop2325_redo:
.annotate 'line', 1916
    find_lex $P107, "$result"
    unless_null $P107, vivify_1180
    new $P107, "Undef"
  vivify_1180:
    find_lex $P108, "$i"
    unless_null $P108, vivify_1181
    new $P108, "Undef"
  vivify_1181:
    set $I101, $P108
    find_lex $P2323, "@args"
    unless_null $P2323, vivify_1182
    $P2323 = root_new ['parrot';'ResizablePMCArray']
  vivify_1182:
    set $P109, $P2323[$I101]
    unless_null $P109, vivify_1183
    new $P109, "Undef"
  vivify_1183:
    $P107."add-argument"($P109)
.annotate 'line', 1915
    find_lex $P107, "$i"
    unless_null $P107, vivify_1184
    new $P107, "Undef"
  vivify_1184:
    clone $P2324, $P107
    inc $P107
  loop2325_next:
    goto loop2325_test
  loop2325_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P108, exception, 'type'
    eq $P108, .CONTROL_LOOP_NEXT, loop2325_next
    eq $P108, .CONTROL_LOOP_REDO, loop2325_redo
  loop2325_done:
    pop_eh 
.annotate 'line', 1913
    .return ($I100)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2328"  :anon :subid("267_1315150096.049") :outer("264_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1921
    .const 'Sub' $P2352 = "269_1315150096.049" 
    capture_lex $P2352
    .const 'Sub' $P2335 = "268_1315150096.049" 
    capture_lex $P2335
.annotate 'line', 1922
    new $P107, "Undef"
    set $P2330, $P107
    .lex "$cur", $P2330
    find_lex $P108, "$i"
    unless_null $P108, vivify_1189
    new $P108, "Undef"
  vivify_1189:
    set $I102, $P108
    find_lex $P2331, "@args"
    unless_null $P2331, vivify_1190
    $P2331 = root_new ['parrot';'ResizablePMCArray']
  vivify_1190:
    set $P109, $P2331[$I102]
    unless_null $P109, vivify_1191
    new $P109, "Undef"
  vivify_1191:
    store_lex "$cur", $P109
.annotate 'line', 1923
    find_lex $P108, "self"
    find_lex $P109, "$cur"
    unless_null $P109, vivify_1192
    new $P109, "Undef"
  vivify_1192:
    $P110 = $P108."is-option"($P109)
    if $P110, if_2332
.annotate 'line', 1968
    find_lex $P111, "$cur"
    unless_null $P111, vivify_1193
    new $P111, "Undef"
  vivify_1193:
    find_lex $P112, "self"
    nqp_decontainerize $P113, $P112
    find_lex $P114, "$?CLASS"
    getattribute $P2369, $P113, $P114, "%!stopper"
    unless_null $P2369, vivify_1194
    $P2369 = root_new ['parrot';'Hash']
  vivify_1194:
    set $P115, $P2369[$P111]
    unless_null $P115, vivify_1195
    new $P115, "Undef"
  vivify_1195:
    if $P115, if_2368
.annotate 'line', 1971
    find_lex $P116, "$result"
    unless_null $P116, vivify_1196
    new $P116, "Undef"
  vivify_1196:
    find_lex $P117, "$cur"
    unless_null $P117, vivify_1197
    new $P117, "Undef"
  vivify_1197:
    $P116."add-argument"($P117)
.annotate 'line', 1972
    find_lex $P116, "self"
    nqp_decontainerize $P117, $P116
    find_lex $P118, "$?CLASS"
    getattribute $P119, $P117, $P118, "$!stop-after-first-arg"
    unless_null $P119, vivify_1198
    new $P119, "Undef"
  vivify_1198:
    unless $P119, if_2370_end
    "slurp-rest"()
  if_2370_end:
.annotate 'line', 1970
    goto if_2368_end
  if_2368:
.annotate 'line', 1969
    "slurp-rest"()
  if_2368_end:
.annotate 'line', 1968
    goto if_2332_end
  if_2332:
.annotate 'line', 1924
    find_lex $P111, "$cur"
    unless_null $P111, vivify_1199
    new $P111, "Undef"
  vivify_1199:
    set $S100, $P111
    new $P112, "Float"
    assign $P112, 0
    set $I102, $P112
    new $P113, "Float"
    assign $P113, 2
    set $I103, $P113
    substr $S101, $S100, $I102, $I103
    iseq $I104, $S101, "--"
    if $I104, if_2333
.annotate 'line', 1946
    .const 'Sub' $P2352 = "269_1315150096.049" 
    capture_lex $P2352
    $P2352()
    goto if_2333_end
  if_2333:
.annotate 'line', 1924
    .const 'Sub' $P2335 = "268_1315150096.049" 
    capture_lex $P2335
    $P2335()
  if_2333_end:
  if_2332_end:
.annotate 'line', 1921
    find_lex $P108, "$i"
    unless_null $P108, vivify_1247
    new $P108, "Undef"
  vivify_1247:
    clone $P2371, $P108
    inc $P108
    .return ($P2371)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2351"  :anon :subid("269_1315150096.049") :outer("267_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1946
    .const 'Sub' $P2361 = "270_1315150096.049" 
    capture_lex $P2361
.annotate 'line', 1947
    new $P119, "Undef"
    set $P2353, $P119
    .lex "$opt", $P2353
    find_lex $P120, "$cur"
    unless_null $P120, vivify_1200
    new $P120, "Undef"
  vivify_1200:
    set $S102, $P120
    new $P121, "Float"
    assign $P121, 1
    set $I105, $P121
    substr $S103, $S102, $I105
    new $P122, 'String'
    set $P122, $S103
    store_lex "$opt", $P122
.annotate 'line', 1948
    find_lex $P121, "$opt"
    unless_null $P121, vivify_1201
    new $P121, "Undef"
  vivify_1201:
    set $S102, $P121
    length $I105, $S102
    set $N102, $I105
    set $N103, 1
    iseq $I106, $N102, $N103
    if $I106, if_2354
.annotate 'line', 1958
    .const 'Sub' $P2361 = "270_1315150096.049" 
    capture_lex $P2361
    $P125 = $P2361()
    set $P120, $P125
.annotate 'line', 1948
    goto if_2354_end
  if_2354:
.annotate 'line', 1950
    find_lex $P122, "$opt"
    unless_null $P122, vivify_1209
    new $P122, "Undef"
  vivify_1209:
    find_lex $P123, "self"
    nqp_decontainerize $P124, $P123
    find_lex $P125, "$?CLASS"
    getattribute $P2356, $P124, $P125, "%!options"
    unless_null $P2356, vivify_1210
    $P2356 = root_new ['parrot';'Hash']
  vivify_1210:
    set $P126, $P2356[$P122]
    unless_null $P126, vivify_1211
    new $P126, "Undef"
  vivify_1211:
    if $P126, unless_2355_end
    new $P127, 'String'
    set $P127, "No such option -"
    find_lex $P128, "$opt"
    unless_null $P128, vivify_1212
    new $P128, "Undef"
  vivify_1212:
    concat $P129, $P127, $P128
    die $P129
  unless_2355_end:
.annotate 'line', 1951
    find_lex $P122, "self"
    find_lex $P123, "$opt"
    unless_null $P123, vivify_1213
    new $P123, "Undef"
  vivify_1213:
    $P124 = $P122."wants-value"($P123)
    if $P124, if_2357
.annotate 'line', 1955
    find_lex $P125, "$result"
    unless_null $P125, vivify_1214
    new $P125, "Undef"
  vivify_1214:
    find_lex $P126, "$opt"
    unless_null $P126, vivify_1215
    new $P126, "Undef"
  vivify_1215:
    $P125."add-option"($P126, 1)
.annotate 'line', 1954
    goto if_2357_end
  if_2357:
.annotate 'line', 1952
    find_lex $P125, "$result"
    unless_null $P125, vivify_1216
    new $P125, "Undef"
  vivify_1216:
    find_lex $P126, "$opt"
    unless_null $P126, vivify_1217
    new $P126, "Undef"
  vivify_1217:
.annotate 'line', 1953
    new $P127, 'String'
    set $P127, "-"
    find_lex $P128, "$opt"
    unless_null $P128, vivify_1218
    new $P128, "Undef"
  vivify_1218:
    concat $P129, $P127, $P128
    $P130 = "get-value"($P129)
    $P125."add-option"($P126, $P130)
  if_2357_end:
.annotate 'line', 1957
    new $P123, 'String'
    set $P123, "-"
    find_lex $P124, "$opt"
    unless_null $P124, vivify_1219
    new $P124, "Undef"
  vivify_1219:
    concat $P125, $P123, $P124
    find_lex $P126, "self"
    nqp_decontainerize $P127, $P126
    find_lex $P128, "$?CLASS"
    getattribute $P2359, $P127, $P128, "%!stopper"
    unless_null $P2359, vivify_1220
    $P2359 = root_new ['parrot';'Hash']
  vivify_1220:
    set $P129, $P2359[$P125]
    unless_null $P129, vivify_1221
    new $P129, "Undef"
  vivify_1221:
    if $P129, if_2358
    set $P122, $P129
    goto if_2358_end
  if_2358:
    $P130 = "slurp-rest"()
    set $P122, $P130
  if_2358_end:
.annotate 'line', 1948
    set $P120, $P122
  if_2354_end:
.annotate 'line', 1946
    .return ($P120)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "_block2360"  :anon :subid("270_1315150096.049") :outer("269_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1958
    .const 'Sub' $P2364 = "271_1315150096.049" 
    capture_lex $P2364
.annotate 'line', 1960
    new $P123, "Undef"
    set $P2362, $P123
    .lex "$iter", $P2362
    find_lex $P124, "$opt"
    unless_null $P124, vivify_1202
    new $P124, "Undef"
  vivify_1202:
    iter $P125, $P124
    store_lex "$iter", $P125
.annotate 'line', 1961
    new $P126, 'ExceptionHandler'
    set_label $P126, loop2367_handler
    $P126."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P126
  loop2367_test:
    find_lex $P124, "$iter"
    unless_null $P124, vivify_1203
    new $P124, "Undef"
  vivify_1203:
    unless $P124, loop2367_done
  loop2367_redo:
    .const 'Sub' $P2364 = "271_1315150096.049" 
    capture_lex $P2364
    $P2364()
  loop2367_next:
    goto loop2367_test
  loop2367_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P127, exception, 'type'
    eq $P127, .CONTROL_LOOP_NEXT, loop2367_next
    eq $P127, .CONTROL_LOOP_REDO, loop2367_redo
  loop2367_done:
    pop_eh 
.annotate 'line', 1958
    .return ($P124)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2363"  :anon :subid("271_1315150096.049") :outer("270_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1962
    new $P125, "Undef"
    set $P2365, $P125
    .lex "$o", $P2365
    find_lex $P126, "$iter"
    unless_null $P126, vivify_1204
    new $P126, "Undef"
  vivify_1204:
    shift $P127, $P126
    store_lex "$o", $P127
.annotate 'line', 1963
    find_lex $P126, "self"
    find_lex $P127, "$o"
    unless_null $P127, vivify_1205
    new $P127, "Undef"
  vivify_1205:
    $P128 = $P126."wants-value"($P127)
    unless $P128, if_2366_end
    new $P129, 'String'
    set $P129, "Option -"
    find_lex $P130, "$o"
    unless_null $P130, vivify_1206
    new $P130, "Undef"
  vivify_1206:
    concat $P131, $P129, $P130
    concat $P132, $P131, " requires a value and cannot be grouped"
    die $P132
  if_2366_end:
.annotate 'line', 1964
    find_lex $P126, "$result"
    unless_null $P126, vivify_1207
    new $P126, "Undef"
  vivify_1207:
    find_lex $P127, "$o"
    unless_null $P127, vivify_1208
    new $P127, "Undef"
  vivify_1208:
    $P128 = $P126."add-option"($P127, 1)
.annotate 'line', 1961
    .return ($P128)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2334"  :anon :subid("268_1315150096.049") :outer("267_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1926
    new $P114, "Undef"
    set $P2336, $P114
    .lex "$opt", $P2336
.annotate 'line', 1927
    new $P115, "Undef"
    set $P2337, $P115
    .lex "$idx", $P2337
.annotate 'line', 1928
    new $P116, "Undef"
    set $P2338, $P116
    .lex "$value", $P2338
.annotate 'line', 1929
    new $P117, "Undef"
    set $P2339, $P117
    .lex "$has-value", $P2339
.annotate 'line', 1926
    find_lex $P118, "$i"
    unless_null $P118, vivify_1222
    new $P118, "Undef"
  vivify_1222:
    set $I105, $P118
    find_lex $P2340, "@args"
    unless_null $P2340, vivify_1223
    $P2340 = root_new ['parrot';'ResizablePMCArray']
  vivify_1223:
    set $P119, $P2340[$I105]
    unless_null $P119, vivify_1224
    new $P119, "Undef"
  vivify_1224:
    set $S102, $P119
    new $P120, "Float"
    assign $P120, 2
    set $I106, $P120
    substr $S103, $S102, $I106
    new $P121, 'String'
    set $P121, $S103
    store_lex "$opt", $P121
.annotate 'line', 1927
    find_lex $P118, "$opt"
    unless_null $P118, vivify_1225
    new $P118, "Undef"
  vivify_1225:
    set $S102, $P118
    index $I105, $S102, "="
    new $P119, 'Integer'
    set $P119, $I105
    store_lex "$idx", $P119
.annotate 'line', 1928
    new $P118, "Float"
    assign $P118, 1
    store_lex "$value", $P118
.annotate 'line', 1929
    new $P118, "Float"
    assign $P118, 0
    store_lex "$has-value", $P118
.annotate 'line', 1931
    find_lex $P118, "$idx"
    unless_null $P118, vivify_1226
    new $P118, "Undef"
  vivify_1226:
    set $N102, $P118
    set $N103, 0
    isge $I105, $N102, $N103
    if $I105, if_2341
.annotate 'line', 1935
    find_lex $P119, "self"
    find_lex $P120, "$opt"
    unless_null $P120, vivify_1227
    new $P120, "Undef"
  vivify_1227:
    $P121 = $P119."optional-value"($P120)
    unless $P121, if_2342_end
.annotate 'line', 1936
    new $P122, "String"
    assign $P122, ""
    store_lex "$value", $P122
.annotate 'line', 1937
    new $P122, "Float"
    assign $P122, 1
    store_lex "$has-value", $P122
  if_2342_end:
.annotate 'line', 1935
    goto if_2341_end
  if_2341:
.annotate 'line', 1932
    find_lex $P119, "$opt"
    unless_null $P119, vivify_1228
    new $P119, "Undef"
  vivify_1228:
    set $S102, $P119
    find_lex $P120, "$idx"
    unless_null $P120, vivify_1229
    new $P120, "Undef"
  vivify_1229:
    add $P121, $P120, 1
    set $I106, $P121
    substr $S103, $S102, $I106
    new $P122, 'String'
    set $P122, $S103
    store_lex "$value", $P122
.annotate 'line', 1933
    find_lex $P119, "$opt"
    unless_null $P119, vivify_1230
    new $P119, "Undef"
  vivify_1230:
    set $S102, $P119
    new $P120, "Float"
    assign $P120, 0
    set $I106, $P120
    find_lex $P121, "$idx"
    unless_null $P121, vivify_1231
    new $P121, "Undef"
  vivify_1231:
    set $I107, $P121
    substr $S103, $S102, $I106, $I107
    new $P122, 'String'
    set $P122, $S103
    store_lex "$opt", $P122
.annotate 'line', 1934
    new $P119, "Float"
    assign $P119, 1
    store_lex "$has-value", $P119
  if_2341_end:
.annotate 'line', 1939
    find_lex $P121, "$opt"
    unless_null $P121, vivify_1232
    new $P121, "Undef"
  vivify_1232:
    find_lex $P118, "self"
    nqp_decontainerize $P119, $P118
    find_lex $P120, "$?CLASS"
    getattribute $P2344, $P119, $P120, "%!options"
    unless_null $P2344, vivify_1233
    $P2344 = root_new ['parrot';'Hash']
  vivify_1233:
    exists $I105, $P2344[$P121]
    if $I105, unless_2343_end
    new $P122, 'String'
    set $P122, "Illegal option --"
    find_lex $P123, "$opt"
    unless_null $P123, vivify_1234
    new $P123, "Undef"
  vivify_1234:
    concat $P124, $P122, $P123
    die $P124
  unless_2343_end:
.annotate 'line', 1940
    find_lex $P119, "self"
    find_lex $P120, "$opt"
    unless_null $P120, vivify_1235
    new $P120, "Undef"
  vivify_1235:
    $P121 = $P119."wants-value"($P120)
    isfalse $I105, $P121
    if $I105, if_2346
    new $P118, 'Integer'
    set $P118, $I105
    goto if_2346_end
  if_2346:
    find_lex $P122, "$has-value"
    unless_null $P122, vivify_1236
    new $P122, "Undef"
  vivify_1236:
    set $P118, $P122
  if_2346_end:
    unless $P118, if_2345_end
    new $P123, 'String'
    set $P123, "Option --"
    find_lex $P124, "$opt"
    unless_null $P124, vivify_1237
    new $P124, "Undef"
  vivify_1237:
    concat $P125, $P123, $P124
    concat $P126, $P125, " does not allow a value"
    die $P126
  if_2345_end:
.annotate 'line', 1941
    find_lex $P119, "$has-value"
    unless_null $P119, vivify_1238
    new $P119, "Undef"
  vivify_1238:
    isfalse $I105, $P119
    if $I105, if_2348
    new $P118, 'Integer'
    set $P118, $I105
    goto if_2348_end
  if_2348:
    find_lex $P120, "self"
    find_lex $P121, "$opt"
    unless_null $P121, vivify_1239
    new $P121, "Undef"
  vivify_1239:
    $P122 = $P120."wants-value"($P121)
    set $P118, $P122
  if_2348_end:
    unless $P118, if_2347_end
.annotate 'line', 1942
    new $P123, 'String'
    set $P123, "--"
    find_lex $P124, "$opt"
    unless_null $P124, vivify_1240
    new $P124, "Undef"
  vivify_1240:
    concat $P125, $P123, $P124
    $P126 = "get-value"($P125)
    store_lex "$value", $P126
  if_2347_end:
.annotate 'line', 1944
    find_lex $P118, "$result"
    unless_null $P118, vivify_1241
    new $P118, "Undef"
  vivify_1241:
    find_lex $P119, "$opt"
    unless_null $P119, vivify_1242
    new $P119, "Undef"
  vivify_1242:
    find_lex $P120, "$value"
    unless_null $P120, vivify_1243
    new $P120, "Undef"
  vivify_1243:
    $P118."add-option"($P119, $P120)
.annotate 'line', 1945
    new $P119, 'String'
    set $P119, "--"
    find_lex $P120, "$opt"
    unless_null $P120, vivify_1244
    new $P120, "Undef"
  vivify_1244:
    concat $P121, $P119, $P120
    find_lex $P122, "self"
    nqp_decontainerize $P123, $P122
    find_lex $P124, "$?CLASS"
    getattribute $P2350, $P123, $P124, "%!stopper"
    unless_null $P2350, vivify_1245
    $P2350 = root_new ['parrot';'Hash']
  vivify_1245:
    set $P125, $P2350[$P121]
    unless_null $P125, vivify_1246
    new $P125, "Undef"
  vivify_1246:
    if $P125, if_2349
    set $P118, $P125
    goto if_2349_end
  if_2349:
    find_lex $P126, "slurp-rest"
    set $P118, $P126
  if_2349_end:
.annotate 'line', 1924
    .return ($P118)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block2374"  :subid("272_1315150096.049") :outer("10_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2011
    .const 'Sub' $P2465 = "292_1315150096.049" 
    capture_lex $P2465
    .const 'Sub' $P2463 = "291_1315150096.049" 
    capture_lex $P2463
    .const 'Sub' $P2461 = "290_1315150096.049" 
    capture_lex $P2461
    .const 'Sub' $P2448 = "288_1315150096.049" 
    capture_lex $P2448
    .const 'Sub' $P2441 = "287_1315150096.049" 
    capture_lex $P2441
    .const 'Sub' $P2439 = "286_1315150096.049" 
    capture_lex $P2439
    .const 'Sub' $P2433 = "285_1315150096.049" 
    capture_lex $P2433
    .const 'Sub' $P2427 = "284_1315150096.049" 
    capture_lex $P2427
    .const 'Sub' $P2423 = "283_1315150096.049" 
    capture_lex $P2423
    .const 'Sub' $P2420 = "282_1315150096.049" 
    capture_lex $P2420
    .const 'Sub' $P2414 = "281_1315150096.049" 
    capture_lex $P2414
    .const 'Sub' $P2408 = "280_1315150096.049" 
    capture_lex $P2408
    .const 'Sub' $P2402 = "279_1315150096.049" 
    capture_lex $P2402
    .const 'Sub' $P2397 = "278_1315150096.049" 
    capture_lex $P2397
    .const 'Sub' $P2392 = "277_1315150096.049" 
    capture_lex $P2392
    .const 'Sub' $P2384 = "274_1315150096.049" 
    capture_lex $P2384
    .const 'Sub' $P2378 = "273_1315150096.049" 
    capture_lex $P2378
    .lex "Event", $P2376
.annotate 'line', 2032
    .const 'Sub' $P2378 = "273_1315150096.049" 
    newclosure $P2380, $P2378
    set $P2377, $P2380
    .lex "addr", $P2377
.annotate 'line', 2011
    .lex "$?PACKAGE", $P2381
    .lex "$?CLASS", $P2382
.annotate 'line', 2013
    .const 'Sub' $P2384 = "274_1315150096.049" 
    capture_lex $P2384
    $P2384()
.annotate 'line', 2011
    find_lex $P101, "addr"
.annotate 'line', 2189
    .const 'Sub' $P2465 = "292_1315150096.049" 
    newclosure $P2468, $P2465
.annotate 'line', 2011
    .return ($P2468)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "addr"  :subid("273_1315150096.049") :outer("272_1315150096.049")
    .param pmc param_2379
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2032
    .lex "$obj", param_2379
.annotate 'line', 2033
    find_lex $P101, "$obj"
    unless_null $P101, vivify_1249
    new $P101, "Undef"
  vivify_1249:
    get_addr $I100, $P101
.annotate 'line', 2032
    .return ($I100)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block2383"  :anon :subid("274_1315150096.049") :outer("272_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2013
    .const 'Sub' $P2389 = "276_1315150096.049" 
    capture_lex $P2389
    .const 'Sub' $P2387 = "275_1315150096.049" 
    capture_lex $P2387
    .lex "$?PACKAGE", $P2385
    .lex "$?CLASS", $P2386
.annotate 'line', 2020
    .const 'Sub' $P2389 = "276_1315150096.049" 
    newclosure $P2391, $P2389
.annotate 'line', 2013
    .return ($P2391)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "deserialize_past" :anon :subid("275_1315150096.049") :outer("274_1315150096.049")
    .param pmc param_2388
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2016
    .lex "self", param_2388
    find_lex $P101, "self"
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    getattribute $P104, $P102, $P103, "$!deserialize_past"
    unless_null $P104, vivify_1250
    new $P104, "Undef"
  vivify_1250:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "fixup_past" :anon :subid("276_1315150096.049") :outer("274_1315150096.049")
    .param pmc param_2390
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2020
    .lex "self", param_2390
    find_lex $P101, "self"
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    getattribute $P104, $P102, $P103, "$!fixup_past"
    unless_null $P104, vivify_1251
    new $P104, "Undef"
  vivify_1251:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "new" :anon :subid("277_1315150096.049") :outer("272_1315150096.049")
    .param pmc param_2393
    .param pmc param_2394 :named("handle")
    .param pmc param_2395 :optional :named("description")
    .param int has_param_2395 :opt_flag
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2045
    .lex "self", param_2393
    .lex "$handle", param_2394
    if has_param_2395, optparam_1252
    new $P101, "String"
    assign $P101, "<unknown>"
    set param_2395, $P101
  optparam_1252:
    .lex "$description", param_2395
.annotate 'line', 2046
    new $P102, "Undef"
    set $P2396, $P102
    .lex "$obj", $P2396
    find_lex $P103, "self"
    $P104 = $P103."CREATE"()
    store_lex "$obj", $P104
.annotate 'line', 2047
    find_lex $P103, "$obj"
    unless_null $P103, vivify_1253
    new $P103, "Undef"
  vivify_1253:
    find_lex $P104, "$handle"
    unless_null $P104, vivify_1254
    new $P104, "Undef"
  vivify_1254:
    find_lex $P105, "$description"
    unless_null $P105, vivify_1255
    new $P105, "Undef"
  vivify_1255:
    $P103."BUILD"($P104 :named("handle"), $P105 :named("description"))
.annotate 'line', 2045
    find_lex $P103, "$obj"
    unless_null $P103, vivify_1256
    new $P103, "Undef"
  vivify_1256:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "BUILD" :anon :subid("278_1315150096.049") :outer("272_1315150096.049")
    .param pmc param_2398
    .param pmc param_2399 :named("handle")
    .param pmc param_2400 :named("description")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2051
    .lex "self", param_2398
    .lex "$handle", param_2399
    .lex "$description", param_2400
.annotate 'line', 2052
    find_lex $P101, "$handle"
    unless_null $P101, vivify_1257
    new $P101, "Undef"
  vivify_1257:
    set $S100, $P101
    nqp_create_sc $P102, $S100
    find_lex $P103, "self"
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    setattribute $P104, $P105, "$!sc", $P102
.annotate 'line', 2053
    find_lex $P101, "$handle"
    unless_null $P101, vivify_1258
    new $P101, "Undef"
  vivify_1258:
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    setattribute $P103, $P104, "$!handle", $P101
.annotate 'line', 2054
    new $P101, "Hash"
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    setattribute $P103, $P104, "%!addr_to_slot", $P101
.annotate 'line', 2055
    new $P101, "ResizablePMCArray"
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    setattribute $P103, $P104, "@!event_stream", $P101
.annotate 'line', 2056
    find_lex $P101, "self"
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    getattribute $P104, $P102, $P103, "$!sc"
    unless_null $P104, vivify_1259
    new $P104, "Undef"
  vivify_1259:
    find_lex $P105, "$description"
    unless_null $P105, vivify_1260
    new $P105, "Undef"
  vivify_1260:
    $P104."set_description"($P105)
.annotate 'line', 2057
    find_dynamic_lex $P103, "%*COMPILING"
    unless_null $P103, vivify_1261
    get_hll_global $P101, "GLOBAL"
    get_who $P102, $P101
    set $P103, $P102["%COMPILING"]
    unless_null $P103, vivify_1262
    die "Contextual %*COMPILING not found"
  vivify_1262:
  vivify_1261:
    set $P2401, $P103["%?OPTIONS"]
    unless_null $P2401, vivify_1263
    $P2401 = root_new ['parrot';'Hash']
  vivify_1263:
    set $P104, $P2401["target"]
    unless_null $P104, vivify_1264
    new $P104, "Undef"
  vivify_1264:
    set $S100, $P104
    iseq $I101, $S100, "pir"
    new $P105, 'Integer'
    set $P105, $I101
    find_lex $P106, "self"
    nqp_decontainerize $P107, $P106
    find_lex $P108, "$?CLASS"
    setattribute $P107, $P108, "$!precomp_mode", $P105
.annotate 'line', 2051
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "slot_for_object" :anon :subid("279_1315150096.049") :outer("272_1315150096.049")
    .param pmc param_2403
    .param pmc param_2404
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2061
    .lex "self", param_2403
    .lex "$obj", param_2404
.annotate 'line', 2062
    new $P101, "Undef"
    set $P2405, $P101
    .lex "$slot", $P2405
    find_lex $P102, "$obj"
    unless_null $P102, vivify_1265
    new $P102, "Undef"
  vivify_1265:
    $P103 = "addr"($P102)
    find_lex $P104, "self"
    nqp_decontainerize $P105, $P104
    find_lex $P106, "$?CLASS"
    getattribute $P2406, $P105, $P106, "%!addr_to_slot"
    unless_null $P2406, vivify_1266
    $P2406 = root_new ['parrot';'Hash']
  vivify_1266:
    set $P107, $P2406[$P103]
    unless_null $P107, vivify_1267
    new $P107, "Undef"
  vivify_1267:
    store_lex "$slot", $P107
.annotate 'line', 2063
    find_lex $P102, "$slot"
    unless_null $P102, vivify_1268
    new $P102, "Undef"
  vivify_1268:
    defined $I101, $P102
    if $I101, unless_2407_end
.annotate 'line', 2064
    die "slot_for_object called on object not in context"
  unless_2407_end:
.annotate 'line', 2061
    find_lex $P102, "$slot"
    unless_null $P102, vivify_1269
    new $P102, "Undef"
  vivify_1269:
    .return ($P102)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "get_slot_past_for_object" :anon :subid("280_1315150096.049") :outer("272_1315150096.049")
    .param pmc param_2411
    .param pmc param_2412
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2073
    new $P2410, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2410, control_2409
    push_eh $P2410
    .lex "self", param_2411
    .lex "$obj", param_2412
.annotate 'line', 2074
    new $P101, "Undef"
    set $P2413, $P101
    .lex "$slot", $P2413
    find_lex $P102, "self"
    find_lex $P103, "$obj"
    unless_null $P103, vivify_1270
    new $P103, "Undef"
  vivify_1270:
    $P104 = $P102."slot_for_object"($P103)
    store_lex "$slot", $P104
.annotate 'line', 2075
    new $P102, "Exception"
    set $P102['type'], .CONTROL_RETURN
    get_hll_global $P103, "GLOBAL"
    nqp_get_package_through_who $P104, $P103, "PAST"
    get_who $P105, $P104
    set $P106, $P105["Op"]
    find_lex $P107, "self"
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    getattribute $P110, $P108, $P109, "$!handle"
    unless_null $P110, vivify_1271
    new $P110, "Undef"
  vivify_1271:
    find_lex $P111, "$slot"
    unless_null $P111, vivify_1272
    new $P111, "Undef"
  vivify_1272:
    $P112 = $P106."new"($P110, $P111, "nqp_get_sc_object Psi" :named("pirop"))
    setattribute $P102, 'payload', $P112
    throw $P102
.annotate 'line', 2073
    .return ()
  control_2409:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P102, exception, "payload"
    .return ($P102)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "set_slot_past" :anon :subid("281_1315150096.049") :outer("272_1315150096.049")
    .param pmc param_2417
    .param pmc param_2418
    .param pmc param_2419
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2079
    new $P2416, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2416, control_2415
    push_eh $P2416
    .lex "self", param_2417
    .lex "$slot", param_2418
    .lex "$past_to_set", param_2419
.annotate 'line', 2080
    new $P101, "Exception"
    set $P101['type'], .CONTROL_RETURN
    get_hll_global $P102, "GLOBAL"
    nqp_get_package_through_who $P103, $P102, "PAST"
    get_who $P104, $P103
    set $P105, $P104["Op"]
    find_lex $P106, "self"
    nqp_decontainerize $P107, $P106
    find_lex $P108, "$?CLASS"
    getattribute $P109, $P107, $P108, "$!handle"
    unless_null $P109, vivify_1273
    new $P109, "Undef"
  vivify_1273:
    find_lex $P110, "$slot"
    unless_null $P110, vivify_1274
    new $P110, "Undef"
  vivify_1274:
    find_lex $P111, "$past_to_set"
    unless_null $P111, vivify_1275
    new $P111, "Undef"
  vivify_1275:
    $P112 = $P105."new"($P109, $P110, $P111, "nqp_set_sc_object vsiP" :named("pirop"))
    setattribute $P101, 'payload', $P112
    throw $P101
.annotate 'line', 2079
    .return ()
  control_2415:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P101, exception, "payload"
    .return ($P101)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "set_cur_sc" :anon :subid("282_1315150096.049") :outer("272_1315150096.049")
    .param pmc param_2421
    .param pmc param_2422
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2086
    .lex "self", param_2421
    .lex "$to_wrap", param_2422
.annotate 'line', 2087
    get_hll_global $P101, "GLOBAL"
    nqp_get_package_through_who $P102, $P101, "PAST"
    get_who $P103, $P102
    set $P104, $P103["Op"]
    find_lex $P105, "$to_wrap"
    unless_null $P105, vivify_1276
    new $P105, "Undef"
  vivify_1276:
.annotate 'line', 2090
    get_hll_global $P106, "GLOBAL"
    nqp_get_package_through_who $P107, $P106, "PAST"
    get_who $P108, $P107
    set $P109, $P108["Var"]
    $P110 = $P109."new"("cur_sc" :named("name"), "register" :named("scope"))
    $P111 = $P104."new"($P105, $P110, "nqp_set_sc_for_object__0PP" :named("pirop"))
.annotate 'line', 2086
    .return ($P111)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "add_object_to_cur_sc_past" :anon :subid("283_1315150096.049") :outer("272_1315150096.049")
    .param pmc param_2424
    .param pmc param_2425
    .param pmc param_2426
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2094
    .lex "self", param_2424
    .lex "$slot", param_2425
    .lex "$to_wrap", param_2426
.annotate 'line', 2095
    get_hll_global $P101, "GLOBAL"
    nqp_get_package_through_who $P102, $P101, "PAST"
    get_who $P103, $P102
    set $P104, $P103["Op"]
.annotate 'line', 2097
    get_hll_global $P105, "GLOBAL"
    nqp_get_package_through_who $P106, $P105, "PAST"
    get_who $P107, $P106
    set $P108, $P107["Var"]
    $P109 = $P108."new"("cur_sc" :named("name"), "register" :named("scope"))
    find_lex $P110, "$slot"
    unless_null $P110, vivify_1277
    new $P110, "Undef"
  vivify_1277:
    find_lex $P111, "$to_wrap"
    unless_null $P111, vivify_1278
    new $P111, "Undef"
  vivify_1278:
    $P112 = $P104."new"($P109, $P110, $P111, "nqp_add_object_to_sc 2PiP" :named("pirop"))
.annotate 'line', 2094
    .return ($P112)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "add_object" :anon :subid("284_1315150096.049") :outer("272_1315150096.049")
    .param pmc param_2428
    .param pmc param_2429
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2104
    .lex "self", param_2428
    .lex "$obj", param_2429
.annotate 'line', 2106
    new $P101, "Undef"
    set $P2430, $P101
    .lex "$idx", $P2430
.annotate 'line', 2105
    find_lex $P102, "$obj"
    unless_null $P102, vivify_1279
    new $P102, "Undef"
  vivify_1279:
    find_lex $P103, "self"
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    getattribute $P106, $P104, $P105, "$!sc"
    unless_null $P106, vivify_1280
    new $P106, "Undef"
  vivify_1280:
    nqp_set_sc_for_object $P102, $P106
.annotate 'line', 2106
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    getattribute $P105, $P103, $P104, "$!sc"
    unless_null $P105, vivify_1281
    new $P105, "Undef"
  vivify_1281:
    $P106 = $P105."elems"()
    store_lex "$idx", $P106
.annotate 'line', 2107
    find_lex $P102, "$obj"
    unless_null $P102, vivify_1282
    new $P102, "Undef"
  vivify_1282:
    find_lex $P103, "$idx"
    unless_null $P103, vivify_1283
    new $P103, "Undef"
  vivify_1283:
    set $I101, $P103
    find_lex $P104, "self"
    nqp_decontainerize $P105, $P104
    find_lex $P106, "$?CLASS"
    getattribute $P2431, $P105, $P106, "$!sc"
    unless_null $P2431, vivify_1284
    $P2431 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P105, $P106, "$!sc", $P2431
  vivify_1284:
    set $P2431[$I101], $P102
.annotate 'line', 2108
    find_lex $P102, "$idx"
    unless_null $P102, vivify_1285
    new $P102, "Undef"
  vivify_1285:
    find_lex $P103, "$obj"
    unless_null $P103, vivify_1286
    new $P103, "Undef"
  vivify_1286:
    $P104 = "addr"($P103)
    find_lex $P105, "self"
    nqp_decontainerize $P106, $P105
    find_lex $P107, "$?CLASS"
    getattribute $P2432, $P106, $P107, "%!addr_to_slot"
    unless_null $P2432, vivify_1287
    $P2432 = root_new ['parrot';'Hash']
    setattribute $P106, $P107, "%!addr_to_slot", $P2432
  vivify_1287:
    set $P2432[$P104], $P102
.annotate 'line', 2104
    find_lex $P102, "$idx"
    unless_null $P102, vivify_1288
    new $P102, "Undef"
  vivify_1288:
    .return ($P102)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "add_code" :anon :subid("285_1315150096.049") :outer("272_1315150096.049")
    .param pmc param_2434
    .param pmc param_2435
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2113
    .lex "self", param_2434
    .lex "$obj", param_2435
.annotate 'line', 2114
    new $P101, "Undef"
    set $P2436, $P101
    .lex "$idx", $P2436
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    getattribute $P105, $P103, $P104, "$!sc"
    unless_null $P105, vivify_1289
    new $P105, "Undef"
  vivify_1289:
    $P106 = $P105."elems"()
    store_lex "$idx", $P106
.annotate 'line', 2115
    find_lex $P102, "$obj"
    unless_null $P102, vivify_1290
    new $P102, "Undef"
  vivify_1290:
    find_lex $P103, "$idx"
    unless_null $P103, vivify_1291
    new $P103, "Undef"
  vivify_1291:
    set $I101, $P103
    find_lex $P104, "self"
    nqp_decontainerize $P105, $P104
    find_lex $P106, "$?CLASS"
    getattribute $P2437, $P105, $P106, "$!sc"
    unless_null $P2437, vivify_1292
    $P2437 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P105, $P106, "$!sc", $P2437
  vivify_1292:
    set $P2437[$I101], $P102
.annotate 'line', 2116
    find_lex $P102, "$idx"
    unless_null $P102, vivify_1293
    new $P102, "Undef"
  vivify_1293:
    find_lex $P103, "$obj"
    unless_null $P103, vivify_1294
    new $P103, "Undef"
  vivify_1294:
    $P104 = "addr"($P103)
    find_lex $P105, "self"
    nqp_decontainerize $P106, $P105
    find_lex $P107, "$?CLASS"
    getattribute $P2438, $P106, $P107, "%!addr_to_slot"
    unless_null $P2438, vivify_1295
    $P2438 = root_new ['parrot';'Hash']
    setattribute $P106, $P107, "%!addr_to_slot", $P2438
  vivify_1295:
    set $P2438[$P104], $P102
.annotate 'line', 2113
    find_lex $P102, "$idx"
    unless_null $P102, vivify_1296
    new $P102, "Undef"
  vivify_1296:
    .return ($P102)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "is_precompilation_mode" :anon :subid("286_1315150096.049") :outer("272_1315150096.049")
    .param pmc param_2440
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2121
    .lex "self", param_2440
    find_lex $P101, "self"
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    getattribute $P104, $P102, $P103, "$!precomp_mode"
    unless_null $P104, vivify_1297
    new $P104, "Undef"
  vivify_1297:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "add_event" :anon :subid("287_1315150096.049") :outer("272_1315150096.049")
    .param pmc param_2442
    .param pmc param_2443 :optional :named("deserialize_past")
    .param int has_param_2443 :opt_flag
    .param pmc param_2444 :optional :named("fixup_past")
    .param int has_param_2444 :opt_flag
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2128
    .lex "self", param_2442
    if has_param_2443, optparam_1298
    new $P101, "Undef"
    set param_2443, $P101
  optparam_1298:
    .lex "$deserialize_past", param_2443
    if has_param_2444, optparam_1299
    new $P102, "Undef"
    set param_2444, $P102
  optparam_1299:
    .lex "$fixup_past", param_2444
.annotate 'line', 2129
    find_lex $P104, "self"
    nqp_decontainerize $P105, $P104
    find_lex $P106, "$?CLASS"
    getattribute $P107, $P105, $P106, "$!precomp_mode"
    unless_null $P107, vivify_1300
    new $P107, "Undef"
  vivify_1300:
    if $P107, if_2445
.annotate 'line', 2135
    find_lex $P108, "self"
    nqp_decontainerize $P109, $P108
    find_lex $P110, "$?CLASS"
    getattribute $P2447, $P109, $P110, "@!event_stream"
    unless_null $P2447, vivify_1301
    $P2447 = root_new ['parrot';'ResizablePMCArray']
  vivify_1301:
    find_lex $P111, "Event"
    find_lex $P112, "$fixup_past"
    unless_null $P112, vivify_1302
    new $P112, "Undef"
  vivify_1302:
    $P113 = $P111."new"($P112 :named("fixup_past"))
    $P115 = $P2447."push"($P113)
.annotate 'line', 2133
    set $P103, $P115
.annotate 'line', 2129
    goto if_2445_end
  if_2445:
.annotate 'line', 2131
    find_lex $P108, "self"
    nqp_decontainerize $P109, $P108
    find_lex $P110, "$?CLASS"
    getattribute $P2446, $P109, $P110, "@!event_stream"
    unless_null $P2446, vivify_1303
    $P2446 = root_new ['parrot';'ResizablePMCArray']
  vivify_1303:
    find_lex $P111, "Event"
    find_lex $P112, "$deserialize_past"
    unless_null $P112, vivify_1304
    new $P112, "Undef"
  vivify_1304:
    $P113 = $P111."new"($P112 :named("deserialize_past"))
    $P114 = $P2446."push"($P113)
.annotate 'line', 2129
    set $P103, $P114
  if_2445_end:
.annotate 'line', 2128
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "get_object_sc_ref_past" :anon :subid("288_1315150096.049") :outer("272_1315150096.049")
    .param pmc param_2449
    .param pmc param_2450
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2141
    .const 'Sub' $P2455 = "289_1315150096.049" 
    capture_lex $P2455
    .lex "self", param_2449
    .lex "$obj", param_2450
.annotate 'line', 2144
    new $P101, "Undef"
    set $P2451, $P101
    .lex "$sc", $P2451
    find_lex $P102, "$obj"
    unless_null $P102, vivify_1305
    new $P102, "Undef"
  vivify_1305:
    nqp_get_sc_for_object $P103, $P102
    store_lex "$sc", $P103
.annotate 'line', 2145
    find_lex $P102, "$sc"
    unless_null $P102, vivify_1306
    new $P102, "Undef"
  vivify_1306:
    defined $I101, $P102
    if $I101, unless_2452_end
.annotate 'line', 2146
    new $P103, "String"
    assign $P103, "Object of type '"
    find_lex $P104, "$obj"
    unless_null $P104, vivify_1307
    new $P104, "Undef"
  vivify_1307:
    get_how $P105, $P104
    find_lex $P106, "$obj"
    unless_null $P106, vivify_1308
    new $P106, "Undef"
  vivify_1308:
    $S100 = $P105."name"($P106)
    concat $P107, $P103, $S100
    concat $P108, $P107, "' cannot be referenced without having been "
    concat $P109, $P108, "assigned a serialization context"
.annotate 'line', 2147
    die $P109
  unless_2452_end:
.annotate 'line', 2154
    find_lex $P103, "$sc"
    unless_null $P103, vivify_1309
    new $P103, "Undef"
  vivify_1309:
    find_lex $P104, "self"
    nqp_decontainerize $P105, $P104
    find_lex $P106, "$?CLASS"
    getattribute $P107, $P105, $P106, "$!sc"
    unless_null $P107, vivify_1310
    new $P107, "Undef"
  vivify_1310:
    issame $I101, $P103, $P107
    if $I101, if_2453
.annotate 'line', 2157
    .const 'Sub' $P2455 = "289_1315150096.049" 
    capture_lex $P2455
    $P109 = $P2455()
    set $P102, $P109
.annotate 'line', 2154
    goto if_2453_end
  if_2453:
.annotate 'line', 2155
    find_lex $P108, "self"
    find_lex $P109, "$obj"
    unless_null $P109, vivify_1322
    new $P109, "Undef"
  vivify_1322:
    $P110 = $P108."get_slot_past_for_object"($P109)
.annotate 'line', 2154
    set $P102, $P110
  if_2453_end:
.annotate 'line', 2141
    .return ($P102)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block2454"  :anon :subid("289_1315150096.049") :outer("288_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2158
    new $P108, "Undef"
    set $P2456, $P108
    .lex "$handle", $P2456
    find_lex $P109, "$sc"
    unless_null $P109, vivify_1311
    new $P109, "Undef"
  vivify_1311:
    $P111 = $P109."handle"()
    store_lex "$handle", $P111
.annotate 'line', 2159
    find_lex $P113, "$handle"
    unless_null $P113, vivify_1312
    new $P113, "Undef"
  vivify_1312:
    find_lex $P109, "self"
    nqp_decontainerize $P111, $P109
    find_lex $P112, "$?CLASS"
    getattribute $P2458, $P111, $P112, "%!dependencies"
    unless_null $P2458, vivify_1313
    $P2458 = root_new ['parrot';'Hash']
  vivify_1313:
    exists $I102, $P2458[$P113]
    if $I102, unless_2457_end
.annotate 'line', 2160
    find_lex $P114, "$sc"
    unless_null $P114, vivify_1314
    new $P114, "Undef"
  vivify_1314:
    find_lex $P115, "$handle"
    unless_null $P115, vivify_1315
    new $P115, "Undef"
  vivify_1315:
    find_lex $P116, "self"
    nqp_decontainerize $P117, $P116
    find_lex $P118, "$?CLASS"
    getattribute $P2459, $P117, $P118, "%!dependencies"
    unless_null $P2459, vivify_1316
    $P2459 = root_new ['parrot';'Hash']
    setattribute $P117, $P118, "%!dependencies", $P2459
  vivify_1316:
    set $P2459[$P115], $P114
.annotate 'line', 2161
    find_lex $P114, "self"
    get_hll_global $P115, "GLOBAL"
    nqp_get_package_through_who $P116, $P115, "PAST"
    get_who $P117, $P116
    set $P118, $P117["Op"]
.annotate 'line', 2163
    get_hll_global $P119, "GLOBAL"
    nqp_get_package_through_who $P120, $P119, "PAST"
    get_who $P121, $P120
    set $P122, $P121["Op"]
.annotate 'line', 2165
    get_hll_global $P123, "GLOBAL"
    nqp_get_package_through_who $P124, $P123, "PAST"
    get_who $P125, $P124
    set $P126, $P125["Op"]
    find_lex $P127, "$handle"
    unless_null $P127, vivify_1317
    new $P127, "Undef"
  vivify_1317:
    $P128 = $P126."new"($P127, "nqp_get_sc Ps" :named("pirop"))
    $P129 = $P122."new"($P128, "isnull IP" :named("pirop"))
.annotate 'line', 2167
    get_hll_global $P130, "GLOBAL"
    nqp_get_package_through_who $P131, $P130, "PAST"
    get_who $P132, $P131
    set $P133, $P132["Op"]
.annotate 'line', 2169
    new $P134, "String"
    assign $P134, "Incorrect pre-compiled version of "
    find_lex $P135, "$sc"
    unless_null $P135, vivify_1318
    new $P135, "Undef"
  vivify_1318:
    $P136 = $P135."description"()
    unless $P136, unless_2460
    set $S100, $P136
    goto unless_2460_end
  unless_2460:
    set $S100, "<unknown>"
  unless_2460_end:
    concat $P137, $P134, $S100
    concat $P138, $P137, " loaded"
    $P139 = $P133."new"($P138, "die vS" :named("pirop"))
.annotate 'line', 2167
    $P140 = $P118."new"($P129, $P139, "if" :named("pasttype"))
.annotate 'line', 2161
    $P114."add_event"($P140 :named("deserialize_past"))
  unless_2457_end:
.annotate 'line', 2172
    get_hll_global $P109, "GLOBAL"
    nqp_get_package_through_who $P111, $P109, "PAST"
    get_who $P112, $P111
    set $P113, $P112["Op"]
    find_lex $P114, "$handle"
    unless_null $P114, vivify_1319
    new $P114, "Undef"
  vivify_1319:
.annotate 'line', 2173
    find_lex $P115, "$sc"
    unless_null $P115, vivify_1320
    new $P115, "Undef"
  vivify_1320:
    find_lex $P116, "$obj"
    unless_null $P116, vivify_1321
    new $P116, "Undef"
  vivify_1321:
    $P117 = $P115."slot_index_for"($P116)
    $P118 = $P113."new"($P114, $P117, "nqp_get_sc_object Psi" :named("pirop"))
.annotate 'line', 2157
    .return ($P118)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "sc" :anon :subid("290_1315150096.049") :outer("272_1315150096.049")
    .param pmc param_2462
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2179
    .lex "self", param_2462
    find_lex $P101, "self"
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    getattribute $P104, $P102, $P103, "$!sc"
    unless_null $P104, vivify_1323
    new $P104, "Undef"
  vivify_1323:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "handle" :anon :subid("291_1315150096.049") :outer("272_1315150096.049")
    .param pmc param_2464
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2184
    .lex "self", param_2464
    find_lex $P101, "self"
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    getattribute $P104, $P102, $P103, "$!handle"
    unless_null $P104, vivify_1324
    new $P104, "Undef"
  vivify_1324:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "event_stream" :anon :subid("292_1315150096.049") :outer("272_1315150096.049")
    .param pmc param_2466
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 2189
    .lex "self", param_2466
    find_lex $P101, "self"
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    getattribute $P2467, $P102, $P103, "@!event_stream"
    unless_null $P2467, vivify_1325
    $P2467 = root_new ['parrot';'ResizablePMCArray']
  vivify_1325:
    .return ($P2467)
.end


.HLL "nqp"

.namespace []
.sub "_block2470" :load :anon :subid("293_1315150096.049")
.annotate 'file', "src\\stage2\\gen\\NQPHLL.pm"
.annotate 'line', 1050
    .const 'Sub' $P2472 = "10_1315150096.049" 
    $P107 = $P2472()
    .return ($P107)
.end

