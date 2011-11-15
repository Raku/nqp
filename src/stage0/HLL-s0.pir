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

.loadlib "nqp_bigint_ops"

.loadlib "trans_ops"

.loadlib "io_ops"

.namespace []
.sub "_block1000"  :anon :subid("10_1321350743.52383")
    .param pmc param_1002 :slurpy
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 0
    .const 'Sub' $P2386 = "272_1321350743.52383" 
    capture_lex $P2386
    .const 'Sub' $P2251 = "252_1321350743.52383" 
    capture_lex $P2251
    .const 'Sub' $P2219 = "245_1321350743.52383" 
    capture_lex $P2219
    .const 'Sub' $P1565 = "164_1321350743.52383" 
    capture_lex $P1565
    .const 'Sub' $P1318 = "119_1321350743.52383" 
    capture_lex $P1318
    .const 'Sub' $P1007 = "11_1321350743.52383" 
    capture_lex $P1007
.annotate 'line', 1
    .lex "@ARGS", param_1002
    .lex "GLOBALish", $P1003
    .lex "$?PACKAGE", $P1004
.annotate 'line', 1708
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
    .const 'Sub' $P1007 = "11_1321350743.52383" 
    capture_lex $P1007
    $P1007()
.annotate 'line', 865
    .const 'Sub' $P1318 = "119_1321350743.52383" 
    capture_lex $P1318
    $P1318()
.annotate 'line', 1058
    .const 'Sub' $P1565 = "164_1321350743.52383" 
    capture_lex $P1565
    $P1565()
.annotate 'line', 1708
    get_hll_global $P101, "GLOBAL"
    nqp_get_package_through_who $P102, $P101, "HLL"
    get_who $P103, $P102
    set $P104, $P103["Compiler"]
    $P105 = $P104."new"()
    store_lex "$compiler", $P105
.annotate 'line', 1709
    find_lex $P101, "$compiler"
    unless_null $P101, vivify_1105
    new $P101, "Undef"
  vivify_1105:
    $P101."language"("parrot")
.annotate 'line', 1803
    .const 'Sub' $P2219 = "245_1321350743.52383" 
    capture_lex $P2219
    $P2219()
.annotate 'line', 1836
    .const 'Sub' $P2251 = "252_1321350743.52383" 
    capture_lex $P2251
    $P2251()
.annotate 'line', 2022
    .const 'Sub' $P2386 = "272_1321350743.52383" 
    capture_lex $P2386
    $P2386()
.annotate 'line', 1
    find_lex $P102, "@ARGS"
    if $P102, if_2485
    set $P101, $P102
    goto if_2485_end
  if_2485:
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P103, "ModuleLoader"
    getinterp $P104
    set $P105, $P104["context"]
    $P106 = $P103."set_mainline_module"($P105)
    set $P101, $P106
  if_2485_end:
    .return ($P101)
.annotate 'line', 1050
    .const 'Sub' $P2487 = "293_1321350743.52383" 
.annotate 'line', 1
    .return ($P2487)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post294") :outer("10_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 0
    .const 'Sub' $P1001 = "10_1321350743.52383" 
    .local pmc block
    set block, $P1001
    nqp_get_sc $P108, "1321350735.99463"
    isnull $I100, $P108
    if $I100, if_2489
    goto if_2489_end
  if_2489:
    nqp_dynop_setup 
    nqp_bigint_setup 
    getinterp $P109
    get_class $P110, "LexPad"
    get_class $P111, "NQPLexPad"
    $P109."hll_map"($P110, $P111)
    nqp_create_sc $P112, "1321350735.99463"
    .local pmc cur_sc
    set cur_sc, $P112
    cur_sc."set_description"("src/stage2/gen/NQPHLL.pm")
    nqp_get_sc $P113, "__6MODEL_CORE__"
    isnull $I101, $P113
    unless $I101, if_2490_end
    set $S100, "Incorrect pre-compiled version of <unknown> loaded"
    die $S100
  if_2490_end:
    nqp_get_sc_object $P113, "__6MODEL_CORE__", 0
    $P114 = $P113."new_type"("GLOBALish" :named("name"))
    nqp_add_object_to_sc cur_sc, 0, $P114
    .const 'Sub' $P2491 = "10_1321350743.52383" 
    $P113 = $P2491."get_lexinfo"()
    nqp_get_sc_object $P114, "1321350735.99463", 0
    $P113."set_static_lexpad_value"("GLOBALish", $P114)
    .const 'Sub' $P2492 = "10_1321350743.52383" 
    $P115 = $P2492."get_lexinfo"()
    $P115."finish_static_lexpad"()
    .const 'Sub' $P2493 = "10_1321350743.52383" 
    $P113 = $P2493."get_lexinfo"()
    nqp_get_sc_object $P114, "1321350735.99463", 0
    $P113."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'Sub' $P2494 = "10_1321350743.52383" 
    $P115 = $P2494."get_lexinfo"()
    $P115."finish_static_lexpad"()
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P113, "ModuleLoader"
    $P114 = $P113."load_setting"("NQPCORE")
    block."set_outer_ctx"($P114)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P113, "ModuleLoader"
    nqp_get_sc_object $P114, "1321350735.99463", 0
    $P113."load_module"("NQPRegex", $P114)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P113, "ModuleLoader"
    nqp_get_sc_object $P114, "1321350735.99463", 0
    $P113."load_module"("NQPRegex", $P114)
    nqp_get_sc $P113, "1321350728.68316"
    isnull $I101, $P113
    unless $I101, if_2495_end
    set $S100, "Incorrect pre-compiled version of src/stage2/gen/nqp-mo.pm loaded"
    die $S100
  if_2495_end:
    nqp_get_sc_object $P113, "1321350728.68316", 55
    $P114 = $P113."new_type"("HLL::Grammar" :named("name"))
    nqp_add_object_to_sc cur_sc, 1, $P114
    nqp_get_sc_object $P113, "1321350735.99463", 1
    nqp_get_sc_object $P114, "1321350735.99463", 0
    nqp_get_package_through_who $P115, $P114, "HLL"
    get_who $P116, $P115
    set $P116["Grammar"], $P113
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2496 = "12_1321350743.52383" 
    $P114."add_method"($P115, "ws", $P2496)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2497 = "13_1321350743.52383" 
    $P114."add_method"($P115, "!PREFIX__ws", $P2497)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2498 = "14_1321350743.52383" 
    $P114."add_method"($P115, "termish", $P2498)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2499 = "15_1321350743.52383" 
    $P114."add_method"($P115, "!PREFIX__termish", $P2499)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2500 = "16_1321350743.52383" 
    $P114."add_method"($P115, "term", $P2500)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2501 = "17_1321350743.52383" 
    $P114."add_method"($P115, "!PREFIX__term", $P2501)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2502 = "18_1321350743.52383" 
    $P114."add_method"($P115, "infix", $P2502)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2503 = "19_1321350743.52383" 
    $P114."add_method"($P115, "!PREFIX__infix", $P2503)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2504 = "20_1321350743.52383" 
    $P114."add_method"($P115, "prefix", $P2504)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2505 = "21_1321350743.52383" 
    $P114."add_method"($P115, "!PREFIX__prefix", $P2505)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2506 = "22_1321350743.52383" 
    $P114."add_method"($P115, "postfix", $P2506)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2507 = "23_1321350743.52383" 
    $P114."add_method"($P115, "!PREFIX__postfix", $P2507)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2508 = "24_1321350743.52383" 
    $P114."add_method"($P115, "circumfix", $P2508)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2509 = "25_1321350743.52383" 
    $P114."add_method"($P115, "!PREFIX__circumfix", $P2509)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2510 = "26_1321350743.52383" 
    $P114."add_method"($P115, "postcircumfix", $P2510)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2511 = "27_1321350743.52383" 
    $P114."add_method"($P115, "!PREFIX__postcircumfix", $P2511)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2512 = "28_1321350743.52383" 
    $P114."add_method"($P115, "term:sym<circumfix>", $P2512)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2513 = "29_1321350743.52383" 
    $P114."add_method"($P115, "!PREFIX__term:sym<circumfix>", $P2513)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2514 = "30_1321350743.52383" 
    $P114."add_method"($P115, "infixish", $P2514)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2515 = "31_1321350743.52383" 
    $P114."add_method"($P115, "!PREFIX__infixish", $P2515)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2516 = "32_1321350743.52383" 
    $P114."add_method"($P115, "prefixish", $P2516)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2517 = "33_1321350743.52383" 
    $P114."add_method"($P115, "!PREFIX__prefixish", $P2517)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2518 = "34_1321350743.52383" 
    $P114."add_method"($P115, "postfixish", $P2518)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2519 = "35_1321350743.52383" 
    $P114."add_method"($P115, "!PREFIX__postfixish", $P2519)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2520 = "36_1321350743.52383" 
    $P114."add_method"($P115, "nullterm", $P2520)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2521 = "37_1321350743.52383" 
    $P114."add_method"($P115, "!PREFIX__nullterm", $P2521)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2522 = "38_1321350743.52383" 
    $P114."add_method"($P115, "nullterm_alt", $P2522)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2523 = "39_1321350743.52383" 
    $P114."add_method"($P115, "!PREFIX__nullterm_alt", $P2523)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2524 = "40_1321350743.52383" 
    $P114."add_method"($P115, "nulltermish", $P2524)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2525 = "41_1321350743.52383" 
    $P114."add_method"($P115, "quote_delimited", $P2525)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2526 = "42_1321350743.52383" 
    $P114."add_method"($P115, "!PREFIX__quote_delimited", $P2526)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2527 = "43_1321350743.52383" 
    $P114."add_method"($P115, "quote_atom", $P2527)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2528 = "44_1321350743.52383" 
    $P114."add_method"($P115, "!PREFIX__quote_atom", $P2528)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2529 = "45_1321350743.52383" 
    $P114."add_method"($P115, "decint", $P2529)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2530 = "46_1321350743.52383" 
    $P114."add_method"($P115, "!PREFIX__decint", $P2530)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2531 = "47_1321350743.52383" 
    $P114."add_method"($P115, "decints", $P2531)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2532 = "48_1321350743.52383" 
    $P114."add_method"($P115, "!PREFIX__decints", $P2532)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2533 = "49_1321350743.52383" 
    $P114."add_method"($P115, "hexint", $P2533)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2534 = "50_1321350743.52383" 
    $P114."add_method"($P115, "!PREFIX__hexint", $P2534)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2535 = "51_1321350743.52383" 
    $P114."add_method"($P115, "hexints", $P2535)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2536 = "52_1321350743.52383" 
    $P114."add_method"($P115, "!PREFIX__hexints", $P2536)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2537 = "53_1321350743.52383" 
    $P114."add_method"($P115, "octint", $P2537)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2538 = "54_1321350743.52383" 
    $P114."add_method"($P115, "!PREFIX__octint", $P2538)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2539 = "55_1321350743.52383" 
    $P114."add_method"($P115, "octints", $P2539)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2540 = "56_1321350743.52383" 
    $P114."add_method"($P115, "!PREFIX__octints", $P2540)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2541 = "57_1321350743.52383" 
    $P114."add_method"($P115, "binint", $P2541)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2542 = "58_1321350743.52383" 
    $P114."add_method"($P115, "!PREFIX__binint", $P2542)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2543 = "59_1321350743.52383" 
    $P114."add_method"($P115, "binints", $P2543)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2544 = "60_1321350743.52383" 
    $P114."add_method"($P115, "!PREFIX__binints", $P2544)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2545 = "61_1321350743.52383" 
    $P114."add_method"($P115, "integer", $P2545)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2546 = "62_1321350743.52383" 
    $P114."add_method"($P115, "!PREFIX__integer", $P2546)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2547 = "63_1321350743.52383" 
    $P114."add_method"($P115, "dec_number", $P2547)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2548 = "64_1321350743.52383" 
    $P114."add_method"($P115, "!PREFIX__dec_number", $P2548)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2549 = "65_1321350743.52383" 
    $P114."add_method"($P115, "escale", $P2549)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2550 = "66_1321350743.52383" 
    $P114."add_method"($P115, "!PREFIX__escale", $P2550)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2551 = "67_1321350743.52383" 
    $P114."add_method"($P115, "quote_escape", $P2551)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2552 = "68_1321350743.52383" 
    $P114."add_method"($P115, "!PREFIX__quote_escape", $P2552)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2553 = "69_1321350743.52383" 
    $P114."add_method"($P115, "quote_escape:sym<backslash>", $P2553)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2554 = "70_1321350743.52383" 
    $P114."add_method"($P115, "!PREFIX__quote_escape:sym<backslash>", $P2554)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2555 = "71_1321350743.52383" 
    $P114."add_method"($P115, "quote_escape:sym<stopper>", $P2555)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2556 = "72_1321350743.52383" 
    $P114."add_method"($P115, "!PREFIX__quote_escape:sym<stopper>", $P2556)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2557 = "73_1321350743.52383" 
    $P114."add_method"($P115, "quote_escape:sym<bs>", $P2557)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2558 = "74_1321350743.52383" 
    $P114."add_method"($P115, "!PREFIX__quote_escape:sym<bs>", $P2558)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2559 = "75_1321350743.52383" 
    $P114."add_method"($P115, "quote_escape:sym<nl>", $P2559)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2560 = "76_1321350743.52383" 
    $P114."add_method"($P115, "!PREFIX__quote_escape:sym<nl>", $P2560)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2561 = "77_1321350743.52383" 
    $P114."add_method"($P115, "quote_escape:sym<cr>", $P2561)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2562 = "78_1321350743.52383" 
    $P114."add_method"($P115, "!PREFIX__quote_escape:sym<cr>", $P2562)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2563 = "79_1321350743.52383" 
    $P114."add_method"($P115, "quote_escape:sym<tab>", $P2563)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2564 = "80_1321350743.52383" 
    $P114."add_method"($P115, "!PREFIX__quote_escape:sym<tab>", $P2564)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2565 = "81_1321350743.52383" 
    $P114."add_method"($P115, "quote_escape:sym<ff>", $P2565)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2566 = "82_1321350743.52383" 
    $P114."add_method"($P115, "!PREFIX__quote_escape:sym<ff>", $P2566)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2567 = "83_1321350743.52383" 
    $P114."add_method"($P115, "quote_escape:sym<esc>", $P2567)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2568 = "84_1321350743.52383" 
    $P114."add_method"($P115, "!PREFIX__quote_escape:sym<esc>", $P2568)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2569 = "85_1321350743.52383" 
    $P114."add_method"($P115, "quote_escape:sym<hex>", $P2569)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2570 = "86_1321350743.52383" 
    $P114."add_method"($P115, "!PREFIX__quote_escape:sym<hex>", $P2570)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2571 = "87_1321350743.52383" 
    $P114."add_method"($P115, "quote_escape:sym<oct>", $P2571)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2572 = "88_1321350743.52383" 
    $P114."add_method"($P115, "!PREFIX__quote_escape:sym<oct>", $P2572)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2573 = "89_1321350743.52383" 
    $P114."add_method"($P115, "quote_escape:sym<chr>", $P2573)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2574 = "90_1321350743.52383" 
    $P114."add_method"($P115, "!PREFIX__quote_escape:sym<chr>", $P2574)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2575 = "91_1321350743.52383" 
    $P114."add_method"($P115, "quote_escape:sym<0>", $P2575)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2576 = "92_1321350743.52383" 
    $P114."add_method"($P115, "!PREFIX__quote_escape:sym<0>", $P2576)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2577 = "93_1321350743.52383" 
    $P114."add_method"($P115, "quote_escape:sym<misc>", $P2577)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2578 = "97_1321350743.52383" 
    $P114."add_method"($P115, "!PREFIX__quote_escape:sym<misc>", $P2578)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2579 = "98_1321350743.52383" 
    $P114."add_method"($P115, "charname", $P2579)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2580 = "100_1321350743.52383" 
    $P114."add_method"($P115, "!PREFIX__charname", $P2580)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2581 = "101_1321350743.52383" 
    $P114."add_method"($P115, "charnames", $P2581)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2582 = "102_1321350743.52383" 
    $P114."add_method"($P115, "!PREFIX__charnames", $P2582)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2583 = "103_1321350743.52383" 
    $P114."add_method"($P115, "charspec", $P2583)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2584 = "104_1321350743.52383" 
    $P114."add_method"($P115, "!PREFIX__charspec", $P2584)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2585 = "105_1321350743.52383" 
    $P114."add_method"($P115, "O", $P2585)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2586 = "106_1321350743.52383" 
    $P114."add_method"($P115, "panic", $P2586)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2587 = "107_1321350743.52383" 
    $P114."add_method"($P115, "peek_delimiters", $P2587)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2588 = "108_1321350743.52383" 
    $P114."add_method"($P115, "quote_EXPR", $P2588)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2589 = "109_1321350743.52383" 
    $P114."add_method"($P115, "quotemod_check", $P2589)
    .const 'Sub' $P2590 = "109_1321350743.52383" 
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_who $P114, $P113
    set $P114["quotemod_check"], $P2590
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2591 = "110_1321350743.52383" 
    $P114."add_method"($P115, "starter", $P2591)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2592 = "111_1321350743.52383" 
    $P114."add_method"($P115, "stopper", $P2592)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2593 = "112_1321350743.52383" 
    $P114."add_method"($P115, "split_words", $P2593)
    .const 'Sub' $P2594 = "112_1321350743.52383" 
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_who $P114, $P113
    set $P114["split_words"], $P2594
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2595 = "113_1321350743.52383" 
    $P114."add_method"($P115, "EXPR", $P2595)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2596 = "114_1321350743.52383" 
    $P114."add_method"($P115, "EXPR_reduce", $P2596)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2597 = "115_1321350743.52383" 
    $P114."add_method"($P115, "ternary", $P2597)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2598 = "116_1321350743.52383" 
    $P114."add_method"($P115, "MARKER", $P2598)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2599 = "117_1321350743.52383" 
    $P114."add_method"($P115, "MARKED", $P2599)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    .const 'Sub' $P2600 = "118_1321350743.52383" 
    $P114."add_method"($P115, "LANG", $P2600)
    .const 'Sub' $P2601 = "11_1321350743.52383" 
    $P113 = $P2601."get_lexinfo"()
    nqp_get_sc_object $P114, "1321350735.99463", 1
    $P113."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'Sub' $P2602 = "11_1321350743.52383" 
    $P115 = $P2602."get_lexinfo"()
    $P115."finish_static_lexpad"()
    .const 'Sub' $P2603 = "11_1321350743.52383" 
    $P113 = $P2603."get_lexinfo"()
    nqp_get_sc_object $P114, "1321350735.99463", 1
    $P113."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'Sub' $P2604 = "11_1321350743.52383" 
    $P115 = $P2604."get_lexinfo"()
    $P115."finish_static_lexpad"()
    nqp_get_sc $P113, "__REGEX_CORE_SC__"
    isnull $I101, $P113
    unless $I101, if_2605_end
    set $S100, "Incorrect pre-compiled version of <unknown> loaded"
    die $S100
  if_2605_end:
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    nqp_get_sc_object $P116, "__REGEX_CORE_SC__", 0
    $P114."set_default_parent"($P115, $P116)
    nqp_get_sc_object $P113, "1321350735.99463", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 1
    $P114."compose"($P115)
    nqp_get_sc_object $P113, "1321350728.68316", 55
    $P114 = $P113."new_type"("HLL::Actions" :named("name"))
    nqp_add_object_to_sc cur_sc, 105, $P114
    nqp_get_sc_object $P113, "1321350735.99463", 105
    nqp_get_sc_object $P114, "1321350735.99463", 0
    nqp_get_package_through_who $P115, $P114, "HLL"
    get_who $P116, $P115
    set $P116["Actions"], $P113
    .const 'Sub' $P2606 = "120_1321350743.52383" 
    nqp_get_sc_object $P113, "1321350735.99463", 105
    get_who $P114, $P113
    set $P114["string_to_int"], $P2606
    nqp_get_sc_object $P113, "1321350735.99463", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 105
    .const 'Sub' $P2607 = "121_1321350743.52383" 
    $P114."add_method"($P115, "ints_to_string", $P2607)
    nqp_get_sc_object $P113, "1321350735.99463", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 105
    .const 'Sub' $P2608 = "124_1321350743.52383" 
    $P114."add_method"($P115, "CTXSAVE", $P2608)
    nqp_get_sc_object $P113, "1321350735.99463", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 105
    .const 'Sub' $P2609 = "125_1321350743.52383" 
    $P114."add_method"($P115, "SET_BLOCK_OUTER_CTX", $P2609)
    nqp_get_sc_object $P113, "1321350735.99463", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 105
    .const 'Sub' $P2610 = "128_1321350743.52383" 
    $P114."add_method"($P115, "EXPR", $P2610)
    nqp_get_sc_object $P113, "1321350735.99463", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 105
    .const 'Sub' $P2611 = "131_1321350743.52383" 
    $P114."add_method"($P115, "term:sym<circumfix>", $P2611)
    nqp_get_sc_object $P113, "1321350735.99463", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 105
    .const 'Sub' $P2612 = "132_1321350743.52383" 
    $P114."add_method"($P115, "termish", $P2612)
    nqp_get_sc_object $P113, "1321350735.99463", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 105
    .const 'Sub' $P2613 = "133_1321350743.52383" 
    $P114."add_method"($P115, "nullterm", $P2613)
    nqp_get_sc_object $P113, "1321350735.99463", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 105
    .const 'Sub' $P2614 = "134_1321350743.52383" 
    $P114."add_method"($P115, "nullterm_alt", $P2614)
    nqp_get_sc_object $P113, "1321350735.99463", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 105
    .const 'Sub' $P2615 = "135_1321350743.52383" 
    $P114."add_method"($P115, "integer", $P2615)
    nqp_get_sc_object $P113, "1321350735.99463", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 105
    .const 'Sub' $P2616 = "136_1321350743.52383" 
    $P114."add_method"($P115, "dec_number", $P2616)
    nqp_get_sc_object $P113, "1321350735.99463", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 105
    .const 'Sub' $P2617 = "137_1321350743.52383" 
    $P114."add_method"($P115, "decint", $P2617)
    nqp_get_sc_object $P113, "1321350735.99463", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 105
    .const 'Sub' $P2618 = "138_1321350743.52383" 
    $P114."add_method"($P115, "hexint", $P2618)
    nqp_get_sc_object $P113, "1321350735.99463", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 105
    .const 'Sub' $P2619 = "139_1321350743.52383" 
    $P114."add_method"($P115, "octint", $P2619)
    nqp_get_sc_object $P113, "1321350735.99463", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 105
    .const 'Sub' $P2620 = "140_1321350743.52383" 
    $P114."add_method"($P115, "binint", $P2620)
    nqp_get_sc_object $P113, "1321350735.99463", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 105
    .const 'Sub' $P2621 = "141_1321350743.52383" 
    $P114."add_method"($P115, "quote_EXPR", $P2621)
    nqp_get_sc_object $P113, "1321350735.99463", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 105
    .const 'Sub' $P2622 = "144_1321350743.52383" 
    $P114."add_method"($P115, "quote_delimited", $P2622)
    nqp_get_sc_object $P113, "1321350735.99463", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 105
    .const 'Sub' $P2623 = "146_1321350743.52383" 
    $P114."add_method"($P115, "quote_atom", $P2623)
    nqp_get_sc_object $P113, "1321350735.99463", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 105
    .const 'Sub' $P2624 = "147_1321350743.52383" 
    $P114."add_method"($P115, "quote_escape:sym<backslash>", $P2624)
    nqp_get_sc_object $P113, "1321350735.99463", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 105
    .const 'Sub' $P2625 = "148_1321350743.52383" 
    $P114."add_method"($P115, "quote_escape:sym<stopper>", $P2625)
    nqp_get_sc_object $P113, "1321350735.99463", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 105
    .const 'Sub' $P2626 = "149_1321350743.52383" 
    $P114."add_method"($P115, "quote_escape:sym<bs>", $P2626)
    nqp_get_sc_object $P113, "1321350735.99463", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 105
    .const 'Sub' $P2627 = "150_1321350743.52383" 
    $P114."add_method"($P115, "quote_escape:sym<nl>", $P2627)
    nqp_get_sc_object $P113, "1321350735.99463", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 105
    .const 'Sub' $P2628 = "151_1321350743.52383" 
    $P114."add_method"($P115, "quote_escape:sym<cr>", $P2628)
    nqp_get_sc_object $P113, "1321350735.99463", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 105
    .const 'Sub' $P2629 = "152_1321350743.52383" 
    $P114."add_method"($P115, "quote_escape:sym<tab>", $P2629)
    nqp_get_sc_object $P113, "1321350735.99463", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 105
    .const 'Sub' $P2630 = "153_1321350743.52383" 
    $P114."add_method"($P115, "quote_escape:sym<ff>", $P2630)
    nqp_get_sc_object $P113, "1321350735.99463", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 105
    .const 'Sub' $P2631 = "154_1321350743.52383" 
    $P114."add_method"($P115, "quote_escape:sym<esc>", $P2631)
    nqp_get_sc_object $P113, "1321350735.99463", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 105
    .const 'Sub' $P2632 = "155_1321350743.52383" 
    $P114."add_method"($P115, "quote_escape:sym<hex>", $P2632)
    nqp_get_sc_object $P113, "1321350735.99463", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 105
    .const 'Sub' $P2633 = "156_1321350743.52383" 
    $P114."add_method"($P115, "quote_escape:sym<oct>", $P2633)
    nqp_get_sc_object $P113, "1321350735.99463", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 105
    .const 'Sub' $P2634 = "157_1321350743.52383" 
    $P114."add_method"($P115, "quote_escape:sym<chr>", $P2634)
    nqp_get_sc_object $P113, "1321350735.99463", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 105
    .const 'Sub' $P2635 = "158_1321350743.52383" 
    $P114."add_method"($P115, "quote_escape:sym<0>", $P2635)
    nqp_get_sc_object $P113, "1321350735.99463", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 105
    .const 'Sub' $P2636 = "159_1321350743.52383" 
    $P114."add_method"($P115, "quote_escape:sym<misc>", $P2636)
    nqp_get_sc_object $P113, "1321350735.99463", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 105
    .const 'Sub' $P2637 = "160_1321350743.52383" 
    $P114."add_method"($P115, "charname", $P2637)
    nqp_get_sc_object $P113, "1321350735.99463", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 105
    .const 'Sub' $P2638 = "161_1321350743.52383" 
    $P114."add_method"($P115, "charnames", $P2638)
    nqp_get_sc_object $P113, "1321350735.99463", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 105
    .const 'Sub' $P2639 = "163_1321350743.52383" 
    $P114."add_method"($P115, "charspec", $P2639)
    .const 'Sub' $P2640 = "119_1321350743.52383" 
    $P113 = $P2640."get_lexinfo"()
    nqp_get_sc_object $P114, "1321350735.99463", 105
    $P113."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'Sub' $P2641 = "119_1321350743.52383" 
    $P115 = $P2641."get_lexinfo"()
    $P115."finish_static_lexpad"()
    .const 'Sub' $P2642 = "119_1321350743.52383" 
    $P113 = $P2642."get_lexinfo"()
    nqp_get_sc_object $P114, "1321350735.99463", 105
    $P113."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'Sub' $P2643 = "119_1321350743.52383" 
    $P115 = $P2643."get_lexinfo"()
    $P115."finish_static_lexpad"()
    nqp_get_sc $P113, "1321350734.15221"
    isnull $I101, $P113
    unless $I101, if_2644_end
    set $S100, "Incorrect pre-compiled version of src/stage2/NQPCORE.setting loaded"
    die $S100
  if_2644_end:
    nqp_get_sc_object $P113, "1321350735.99463", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 105
    nqp_get_sc_object $P116, "1321350734.15221", 5
    $P114."set_default_parent"($P115, $P116)
    nqp_get_sc_object $P113, "1321350735.99463", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 105
    $P114."compose"($P115)
    nqp_get_sc_object $P113, "1321350728.68316", 55
    $P114 = $P113."new_type"("HLL::Compiler" :named("name"))
    nqp_add_object_to_sc cur_sc, 139, $P114
    nqp_get_sc_object $P113, "1321350735.99463", 139
    nqp_get_sc_object $P114, "1321350735.99463", 0
    nqp_get_package_through_who $P115, $P114, "HLL"
    get_who $P116, $P115
    set $P116["Compiler"], $P113
    nqp_get_sc_object $P113, "1321350735.99463", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 139
    nqp_get_sc_object $P116, "1321350728.68316", 98
    $P117 = $P116."new"("@!stages" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1321350735.99463", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 139
    nqp_get_sc_object $P116, "1321350728.68316", 98
    $P117 = $P116."new"("$!parsegrammar" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1321350735.99463", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 139
    nqp_get_sc_object $P116, "1321350728.68316", 98
    $P117 = $P116."new"("$!parseactions" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1321350735.99463", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 139
    nqp_get_sc_object $P116, "1321350728.68316", 98
    $P117 = $P116."new"("@!cmdoptions" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1321350735.99463", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 139
    nqp_get_sc_object $P116, "1321350728.68316", 98
    $P117 = $P116."new"("$!usage" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1321350735.99463", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 139
    nqp_get_sc_object $P116, "1321350728.68316", 98
    $P117 = $P116."new"("$!compiler_progname" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1321350735.99463", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 139
    nqp_get_sc_object $P116, "1321350728.68316", 98
    $P117 = $P116."new"("$!language" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1321350735.99463", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 139
    nqp_get_sc_object $P116, "1321350728.68316", 98
    $P117 = $P116."new"("%!config" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1321350735.99463", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 139
    .const 'Sub' $P2645 = "166_1321350743.52383" 
    $P114."add_method"($P115, "new", $P2645)
    nqp_get_sc_object $P113, "1321350735.99463", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 139
    .const 'Sub' $P2646 = "167_1321350743.52383" 
    $P114."add_method"($P115, "BUILD", $P2646)
    nqp_get_sc_object $P113, "1321350735.99463", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 139
    .const 'Sub' $P2647 = "169_1321350743.52383" 
    $P114."add_method"($P115, "get_exports", $P2647)
    nqp_get_sc_object $P113, "1321350735.99463", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 139
    .const 'Sub' $P2648 = "172_1321350743.52383" 
    $P114."add_method"($P115, "get_module", $P2648)
    nqp_get_sc_object $P113, "1321350735.99463", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 139
    .const 'Sub' $P2649 = "173_1321350743.52383" 
    $P114."add_method"($P115, "language", $P2649)
    nqp_get_sc_object $P113, "1321350735.99463", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 139
    .const 'Sub' $P2650 = "174_1321350743.52383" 
    $P114."add_method"($P115, "compiler", $P2650)
    nqp_get_sc_object $P113, "1321350735.99463", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 139
    .const 'Sub' $P2651 = "175_1321350743.52383" 
    $P114."add_method"($P115, "config", $P2651)
    nqp_get_sc_object $P113, "1321350735.99463", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 139
    .const 'Sub' $P2652 = "176_1321350743.52383" 
    $P114."add_method"($P115, "load_module", $P2652)
    nqp_get_sc_object $P113, "1321350735.99463", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 139
    .const 'Sub' $P2653 = "178_1321350743.52383" 
    $P114."add_method"($P115, "import", $P2653)
    nqp_get_sc_object $P113, "1321350735.99463", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 139
    .const 'Sub' $P2654 = "183_1321350743.52383" 
    $P114."add_method"($P115, "autoprint", $P2654)
    nqp_get_sc_object $P113, "1321350735.99463", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 139
    .const 'Sub' $P2655 = "184_1321350743.52383" 
    $P114."add_method"($P115, "interactive", $P2655)
    nqp_get_sc_object $P113, "1321350735.99463", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 139
    .const 'Sub' $P2656 = "191_1321350743.52383" 
    $P114."add_method"($P115, "eval", $P2656)
    nqp_get_sc_object $P113, "1321350735.99463", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 139
    .const 'Sub' $P2657 = "193_1321350743.52383" 
    $P114."add_method"($P115, "ctxsave", $P2657)
    nqp_get_sc_object $P113, "1321350735.99463", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 139
    .const 'Sub' $P2658 = "194_1321350743.52383" 
    $P114."add_method"($P115, "panic", $P2658)
    nqp_get_sc_object $P113, "1321350735.99463", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 139
    .const 'Sub' $P2659 = "195_1321350743.52383" 
    $P114."add_method"($P115, "stages", $P2659)
    nqp_get_sc_object $P113, "1321350735.99463", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 139
    .const 'Sub' $P2660 = "196_1321350743.52383" 
    $P114."add_method"($P115, "parsegrammar", $P2660)
    nqp_get_sc_object $P113, "1321350735.99463", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 139
    .const 'Sub' $P2661 = "197_1321350743.52383" 
    $P114."add_method"($P115, "parseactions", $P2661)
    nqp_get_sc_object $P113, "1321350735.99463", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 139
    .const 'Sub' $P2662 = "198_1321350743.52383" 
    $P114."add_method"($P115, "interactive_banner", $P2662)
    nqp_get_sc_object $P113, "1321350735.99463", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 139
    .const 'Sub' $P2663 = "199_1321350743.52383" 
    $P114."add_method"($P115, "interactive_prompt", $P2663)
    nqp_get_sc_object $P113, "1321350735.99463", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 139
    .const 'Sub' $P2664 = "200_1321350743.52383" 
    $P114."add_method"($P115, "compiler_progname", $P2664)
    nqp_get_sc_object $P113, "1321350735.99463", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 139
    .const 'Sub' $P2665 = "201_1321350743.52383" 
    $P114."add_method"($P115, "commandline_options", $P2665)
    nqp_get_sc_object $P113, "1321350735.99463", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 139
    .const 'Sub' $P2666 = "202_1321350743.52383" 
    $P114."add_method"($P115, "command_line", $P2666)
    nqp_get_sc_object $P113, "1321350735.99463", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 139
    .const 'Sub' $P2667 = "203_1321350743.52383" 
    $P114."add_method"($P115, "command_eval", $P2667)
    nqp_get_sc_object $P113, "1321350735.99463", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 139
    .const 'Sub' $P2668 = "209_1321350743.52383" 
    $P114."add_method"($P115, "process_args", $P2668)
    nqp_get_sc_object $P113, "1321350735.99463", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 139
    .const 'Sub' $P2669 = "212_1321350743.52383" 
    $P114."add_method"($P115, "evalfiles", $P2669)
    nqp_get_sc_object $P113, "1321350735.99463", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 139
    .const 'Sub' $P2670 = "216_1321350743.52383" 
    $P114."add_method"($P115, "compile", $P2670)
    nqp_get_sc_object $P113, "1321350735.99463", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 139
    .const 'Sub' $P2671 = "219_1321350743.52383" 
    $P114."add_method"($P115, "parse", $P2671)
    nqp_get_sc_object $P113, "1321350735.99463", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 139
    .const 'Sub' $P2672 = "222_1321350743.52383" 
    $P114."add_method"($P115, "past", $P2672)
    nqp_get_sc_object $P113, "1321350735.99463", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 139
    .const 'Sub' $P2673 = "223_1321350743.52383" 
    $P114."add_method"($P115, "post", $P2673)
    nqp_get_sc_object $P113, "1321350735.99463", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 139
    .const 'Sub' $P2674 = "224_1321350743.52383" 
    $P114."add_method"($P115, "pirbegin", $P2674)
    nqp_get_sc_object $P113, "1321350735.99463", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 139
    .const 'Sub' $P2675 = "225_1321350743.52383" 
    $P114."add_method"($P115, "pir", $P2675)
    nqp_get_sc_object $P113, "1321350735.99463", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 139
    .const 'Sub' $P2676 = "226_1321350743.52383" 
    $P114."add_method"($P115, "evalpmc", $P2676)
    nqp_get_sc_object $P113, "1321350735.99463", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 139
    .const 'Sub' $P2677 = "227_1321350743.52383" 
    $P114."add_method"($P115, "dumper", $P2677)
    nqp_get_sc_object $P113, "1321350735.99463", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 139
    .const 'Sub' $P2678 = "229_1321350743.52383" 
    $P114."add_method"($P115, "usage", $P2678)
    nqp_get_sc_object $P113, "1321350735.99463", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 139
    .const 'Sub' $P2679 = "230_1321350743.52383" 
    $P114."add_method"($P115, "version", $P2679)
    nqp_get_sc_object $P113, "1321350735.99463", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 139
    .const 'Sub' $P2680 = "231_1321350743.52383" 
    $P114."add_method"($P115, "show-config", $P2680)
    nqp_get_sc_object $P113, "1321350735.99463", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 139
    .const 'Sub' $P2681 = "234_1321350743.52383" 
    $P114."add_method"($P115, "nqpevent", $P2681)
    nqp_get_sc_object $P113, "1321350735.99463", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 139
    .const 'Sub' $P2682 = "237_1321350743.52383" 
    $P114."add_method"($P115, "removestage", $P2682)
    nqp_get_sc_object $P113, "1321350735.99463", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 139
    .const 'Sub' $P2683 = "239_1321350743.52383" 
    $P114."add_method"($P115, "addstage", $P2683)
    nqp_get_sc_object $P113, "1321350735.99463", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 139
    .const 'Sub' $P2684 = "242_1321350743.52383" 
    $P114."add_method"($P115, "parse_name", $P2684)
    nqp_get_sc_object $P113, "1321350735.99463", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 139
    .const 'Sub' $P2685 = "244_1321350743.52383" 
    $P114."add_method"($P115, "lineof", $P2685)
    .const 'Sub' $P2686 = "164_1321350743.52383" 
    $P113 = $P2686."get_lexinfo"()
    nqp_get_sc_object $P114, "1321350735.99463", 139
    $P113."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'Sub' $P2687 = "164_1321350743.52383" 
    $P115 = $P2687."get_lexinfo"()
    $P115."finish_static_lexpad"()
    .const 'Sub' $P2688 = "164_1321350743.52383" 
    $P113 = $P2688."get_lexinfo"()
    nqp_get_sc_object $P114, "1321350735.99463", 139
    $P113."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'Sub' $P2689 = "164_1321350743.52383" 
    $P115 = $P2689."get_lexinfo"()
    $P115."finish_static_lexpad"()
    nqp_get_sc_object $P113, "1321350735.99463", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 139
    nqp_get_sc_object $P116, "1321350734.15221", 5
    $P114."set_default_parent"($P115, $P116)
    nqp_get_sc_object $P113, "1321350735.99463", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 139
    $P114."compose"($P115)
    nqp_get_sc_object $P113, "1321350728.68316", 55
    $P114 = $P113."new_type"("HLL::CommandLine::Result" :named("name"))
    nqp_add_object_to_sc cur_sc, 181, $P114
    nqp_get_sc_object $P113, "1321350735.99463", 181
    nqp_get_sc_object $P114, "1321350735.99463", 0
    nqp_get_package_through_who $P115, $P114, "HLL"
    nqp_get_package_through_who $P116, $P115, "CommandLine"
    get_who $P117, $P116
    set $P117["Result"], $P113
    nqp_get_sc_object $P113, "1321350735.99463", 181
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 181
    nqp_get_sc_object $P116, "1321350728.68316", 98
    $P117 = $P116."new"("@!arguments" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1321350735.99463", 181
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 181
    nqp_get_sc_object $P116, "1321350728.68316", 98
    $P117 = $P116."new"("%!options" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1321350735.99463", 181
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 181
    .const 'Sub' $P2690 = "246_1321350743.52383" 
    $P114."add_method"($P115, "init", $P2690)
    nqp_get_sc_object $P113, "1321350735.99463", 181
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 181
    .const 'Sub' $P2691 = "247_1321350743.52383" 
    $P114."add_method"($P115, "arguments", $P2691)
    nqp_get_sc_object $P113, "1321350735.99463", 181
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 181
    .const 'Sub' $P2692 = "248_1321350743.52383" 
    $P114."add_method"($P115, "options", $P2692)
    nqp_get_sc_object $P113, "1321350735.99463", 181
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 181
    .const 'Sub' $P2693 = "249_1321350743.52383" 
    $P114."add_method"($P115, "add-argument", $P2693)
    nqp_get_sc_object $P113, "1321350735.99463", 181
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 181
    .const 'Sub' $P2694 = "250_1321350743.52383" 
    $P114."add_method"($P115, "add-option", $P2694)
    .const 'Sub' $P2695 = "245_1321350743.52383" 
    $P113 = $P2695."get_lexinfo"()
    nqp_get_sc_object $P114, "1321350735.99463", 181
    $P113."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'Sub' $P2696 = "245_1321350743.52383" 
    $P115 = $P2696."get_lexinfo"()
    $P115."finish_static_lexpad"()
    .const 'Sub' $P2697 = "245_1321350743.52383" 
    $P113 = $P2697."get_lexinfo"()
    nqp_get_sc_object $P114, "1321350735.99463", 181
    $P113."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'Sub' $P2698 = "245_1321350743.52383" 
    $P115 = $P2698."get_lexinfo"()
    $P115."finish_static_lexpad"()
    nqp_get_sc_object $P113, "1321350735.99463", 181
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 181
    nqp_get_sc_object $P116, "1321350734.15221", 5
    $P114."set_default_parent"($P115, $P116)
    nqp_get_sc_object $P113, "1321350735.99463", 181
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 181
    $P114."compose"($P115)
    nqp_get_sc_object $P113, "1321350728.68316", 55
    $P114 = $P113."new_type"("HLL::CommandLine::Parser" :named("name"))
    nqp_add_object_to_sc cur_sc, 187, $P114
    nqp_get_sc_object $P113, "1321350735.99463", 187
    nqp_get_sc_object $P114, "1321350735.99463", 0
    nqp_get_package_through_who $P115, $P114, "HLL"
    nqp_get_package_through_who $P116, $P115, "CommandLine"
    get_who $P117, $P116
    set $P117["Parser"], $P113
    nqp_get_sc_object $P113, "1321350735.99463", 187
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 187
    nqp_get_sc_object $P116, "1321350728.68316", 98
    $P117 = $P116."new"("@!specs" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1321350735.99463", 187
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 187
    nqp_get_sc_object $P116, "1321350728.68316", 98
    $P117 = $P116."new"("%!options" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1321350735.99463", 187
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 187
    nqp_get_sc_object $P116, "1321350728.68316", 98
    $P117 = $P116."new"("%!stopper" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1321350735.99463", 187
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 187
    nqp_get_sc_object $P116, "1321350728.68316", 98
    $P117 = $P116."new"("$!stop-after-first-arg" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1321350735.99463", 187
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 187
    .const 'Sub' $P2699 = "253_1321350743.52383" 
    $P114."add_method"($P115, "new", $P2699)
    nqp_get_sc_object $P113, "1321350735.99463", 187
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 187
    .const 'Sub' $P2700 = "254_1321350743.52383" 
    $P114."add_method"($P115, "stop-after-first-arg", $P2700)
    nqp_get_sc_object $P113, "1321350735.99463", 187
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 187
    .const 'Sub' $P2701 = "255_1321350743.52383" 
    $P114."add_method"($P115, "BUILD", $P2701)
    nqp_get_sc_object $P113, "1321350735.99463", 187
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 187
    .const 'Sub' $P2702 = "257_1321350743.52383" 
    $P114."add_method"($P115, "add-stopper", $P2702)
    nqp_get_sc_object $P113, "1321350735.99463", 187
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 187
    .const 'Sub' $P2703 = "258_1321350743.52383" 
    $P114."add_method"($P115, "split-option-aliases", $P2703)
    nqp_get_sc_object $P113, "1321350735.99463", 187
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 187
    .const 'Sub' $P2704 = "259_1321350743.52383" 
    $P114."add_method"($P115, "add-spec", $P2704)
    nqp_get_sc_object $P113, "1321350735.99463", 187
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 187
    .const 'Sub' $P2705 = "261_1321350743.52383" 
    $P114."add_method"($P115, "is-option", $P2705)
    nqp_get_sc_object $P113, "1321350735.99463", 187
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 187
    .const 'Sub' $P2706 = "262_1321350743.52383" 
    $P114."add_method"($P115, "wants-value", $P2706)
    nqp_get_sc_object $P113, "1321350735.99463", 187
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 187
    .const 'Sub' $P2707 = "263_1321350743.52383" 
    $P114."add_method"($P115, "optional-value", $P2707)
    nqp_get_sc_object $P113, "1321350735.99463", 187
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 187
    .const 'Sub' $P2708 = "264_1321350743.52383" 
    $P114."add_method"($P115, "parse", $P2708)
    .const 'Sub' $P2709 = "252_1321350743.52383" 
    $P113 = $P2709."get_lexinfo"()
    nqp_get_sc_object $P114, "1321350735.99463", 187
    $P113."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'Sub' $P2710 = "252_1321350743.52383" 
    $P115 = $P2710."get_lexinfo"()
    $P115."finish_static_lexpad"()
    .const 'Sub' $P2711 = "252_1321350743.52383" 
    $P113 = $P2711."get_lexinfo"()
    nqp_get_sc_object $P114, "1321350735.99463", 187
    $P113."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'Sub' $P2712 = "252_1321350743.52383" 
    $P115 = $P2712."get_lexinfo"()
    $P115."finish_static_lexpad"()
    nqp_get_sc_object $P113, "1321350735.99463", 187
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 187
    nqp_get_sc_object $P116, "1321350734.15221", 5
    $P114."set_default_parent"($P115, $P116)
    nqp_get_sc_object $P113, "1321350735.99463", 187
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 187
    $P114."compose"($P115)
    nqp_get_sc_object $P113, "1321350728.68316", 55
    $P114 = $P113."new_type"("HLL::Compiler::SerializationContextBuilder" :named("name"))
    nqp_add_object_to_sc cur_sc, 198, $P114
    nqp_get_sc_object $P113, "1321350735.99463", 198
    nqp_get_sc_object $P114, "1321350735.99463", 0
    nqp_get_package_through_who $P115, $P114, "HLL"
    nqp_get_package_through_who $P116, $P115, "Compiler"
    get_who $P117, $P116
    set $P117["SerializationContextBuilder"], $P113
    nqp_get_sc_object $P113, "1321350728.68316", 55
    $P114 = $P113."new_type"("Event" :named("name"))
    nqp_add_object_to_sc cur_sc, 199, $P114
    .const 'Sub' $P2713 = "272_1321350743.52383" 
    $P113 = $P2713."get_lexinfo"()
    nqp_get_sc_object $P114, "1321350735.99463", 199
    $P113."set_static_lexpad_value"("Event", $P114)
    .const 'Sub' $P2714 = "272_1321350743.52383" 
    $P115 = $P2714."get_lexinfo"()
    $P115."finish_static_lexpad"()
    nqp_get_sc_object $P113, "1321350735.99463", 199
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 199
    nqp_get_sc_object $P116, "1321350728.68316", 98
    $P117 = $P116."new"("$!deserialize_past" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1321350735.99463", 199
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 199
    .const 'Sub' $P2715 = "274_1321350743.52383" 
    $P114."add_method"($P115, "deserialize_past", $P2715)
    nqp_get_sc_object $P113, "1321350735.99463", 199
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 199
    nqp_get_sc_object $P116, "1321350728.68316", 98
    $P117 = $P116."new"("$!fixup_past" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1321350735.99463", 199
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 199
    .const 'Sub' $P2716 = "275_1321350743.52383" 
    $P114."add_method"($P115, "fixup_past", $P2716)
    nqp_get_sc_object $P113, "1321350735.99463", 199
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 199
    .const 'Sub' $P2717 = "276_1321350743.52383" 
    $P114."add_method"($P115, "new", $P2717)
    .const 'Sub' $P2718 = "273_1321350743.52383" 
    $P113 = $P2718."get_lexinfo"()
    nqp_get_sc_object $P114, "1321350735.99463", 199
    $P113."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'Sub' $P2719 = "273_1321350743.52383" 
    $P115 = $P2719."get_lexinfo"()
    $P115."finish_static_lexpad"()
    .const 'Sub' $P2720 = "273_1321350743.52383" 
    $P113 = $P2720."get_lexinfo"()
    nqp_get_sc_object $P114, "1321350735.99463", 199
    $P113."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'Sub' $P2721 = "273_1321350743.52383" 
    $P115 = $P2721."get_lexinfo"()
    $P115."finish_static_lexpad"()
    nqp_get_sc_object $P113, "1321350735.99463", 199
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 199
    nqp_get_sc_object $P116, "1321350734.15221", 5
    $P114."set_default_parent"($P115, $P116)
    nqp_get_sc_object $P113, "1321350735.99463", 199
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 199
    $P114."compose"($P115)
    nqp_get_sc_object $P113, "1321350735.99463", 198
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 198
    nqp_get_sc_object $P116, "1321350728.68316", 98
    $P117 = $P116."new"("$!sc" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1321350735.99463", 198
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 198
    nqp_get_sc_object $P116, "1321350728.68316", 98
    $P117 = $P116."new"("$!handle" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1321350735.99463", 198
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 198
    nqp_get_sc_object $P116, "1321350728.68316", 98
    $P117 = $P116."new"("%!addr_to_slot" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1321350735.99463", 198
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 198
    nqp_get_sc_object $P116, "1321350728.68316", 98
    $P117 = $P116."new"("@!event_stream" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1321350735.99463", 198
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 198
    nqp_get_sc_object $P116, "1321350728.68316", 98
    $P117 = $P116."new"("%!dependencies" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1321350735.99463", 198
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 198
    nqp_get_sc_object $P116, "1321350728.68316", 98
    $P117 = $P116."new"("$!precomp_mode" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1321350735.99463", 198
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 198
    .const 'Sub' $P2722 = "277_1321350743.52383" 
    $P114."add_method"($P115, "new", $P2722)
    nqp_get_sc_object $P113, "1321350735.99463", 198
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 198
    .const 'Sub' $P2723 = "278_1321350743.52383" 
    $P114."add_method"($P115, "BUILD", $P2723)
    nqp_get_sc_object $P113, "1321350735.99463", 198
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 198
    .const 'Sub' $P2724 = "279_1321350743.52383" 
    $P114."add_method"($P115, "slot_for_object", $P2724)
    nqp_get_sc_object $P113, "1321350735.99463", 198
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 198
    .const 'Sub' $P2725 = "280_1321350743.52383" 
    $P114."add_method"($P115, "get_slot_past_for_object", $P2725)
    nqp_get_sc_object $P113, "1321350735.99463", 198
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 198
    .const 'Sub' $P2726 = "281_1321350743.52383" 
    $P114."add_method"($P115, "set_slot_past", $P2726)
    nqp_get_sc_object $P113, "1321350735.99463", 198
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 198
    .const 'Sub' $P2727 = "282_1321350743.52383" 
    $P114."add_method"($P115, "set_cur_sc", $P2727)
    nqp_get_sc_object $P113, "1321350735.99463", 198
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 198
    .const 'Sub' $P2728 = "283_1321350743.52383" 
    $P114."add_method"($P115, "add_object_to_cur_sc_past", $P2728)
    nqp_get_sc_object $P113, "1321350735.99463", 198
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 198
    .const 'Sub' $P2729 = "284_1321350743.52383" 
    $P114."add_method"($P115, "add_object", $P2729)
    nqp_get_sc_object $P113, "1321350735.99463", 198
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 198
    .const 'Sub' $P2730 = "285_1321350743.52383" 
    $P114."add_method"($P115, "add_code", $P2730)
    nqp_get_sc_object $P113, "1321350735.99463", 198
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 198
    .const 'Sub' $P2731 = "286_1321350743.52383" 
    $P114."add_method"($P115, "is_precompilation_mode", $P2731)
    nqp_get_sc_object $P113, "1321350735.99463", 198
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 198
    .const 'Sub' $P2732 = "287_1321350743.52383" 
    $P114."add_method"($P115, "add_event", $P2732)
    nqp_get_sc_object $P113, "1321350735.99463", 198
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 198
    .const 'Sub' $P2733 = "288_1321350743.52383" 
    $P114."add_method"($P115, "get_object_sc_ref_past", $P2733)
    nqp_get_sc_object $P113, "1321350735.99463", 198
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 198
    .const 'Sub' $P2734 = "290_1321350743.52383" 
    $P114."add_method"($P115, "sc", $P2734)
    nqp_get_sc_object $P113, "1321350735.99463", 198
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 198
    .const 'Sub' $P2735 = "291_1321350743.52383" 
    $P114."add_method"($P115, "handle", $P2735)
    nqp_get_sc_object $P113, "1321350735.99463", 198
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 198
    .const 'Sub' $P2736 = "292_1321350743.52383" 
    $P114."add_method"($P115, "event_stream", $P2736)
    .const 'Sub' $P2737 = "272_1321350743.52383" 
    $P113 = $P2737."get_lexinfo"()
    nqp_get_sc_object $P114, "1321350735.99463", 198
    $P113."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'Sub' $P2738 = "272_1321350743.52383" 
    $P115 = $P2738."get_lexinfo"()
    $P115."finish_static_lexpad"()
    .const 'Sub' $P2739 = "272_1321350743.52383" 
    $P113 = $P2739."get_lexinfo"()
    nqp_get_sc_object $P114, "1321350735.99463", 198
    $P113."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'Sub' $P2740 = "272_1321350743.52383" 
    $P115 = $P2740."get_lexinfo"()
    $P115."finish_static_lexpad"()
    nqp_get_sc_object $P113, "1321350735.99463", 198
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 198
    nqp_get_sc_object $P116, "1321350734.15221", 5
    $P114."set_default_parent"($P115, $P116)
    nqp_get_sc_object $P113, "1321350735.99463", 198
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1321350735.99463", 198
    $P114."compose"($P115)
  if_2489_end:
    nqp_get_sc_object $P113, "1321350735.99463", 0
    set_hll_global "GLOBAL", $P113
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block1006"  :subid("11_1321350743.52383") :outer("10_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    .const 'Sub' $P1308 = "118_1321350743.52383" 
    capture_lex $P1308
    .const 'Sub' $P1305 = "117_1321350743.52383" 
    capture_lex $P1305
    .const 'Sub' $P1297 = "116_1321350743.52383" 
    capture_lex $P1297
    .const 'Sub' $P1289 = "115_1321350743.52383" 
    capture_lex $P1289
    .const 'Sub' $P1285 = "114_1321350743.52383" 
    capture_lex $P1285
    .const 'Sub' $P1282 = "113_1321350743.52383" 
    capture_lex $P1282
    .const 'Sub' $P1279 = "112_1321350743.52383" 
    capture_lex $P1279
    .const 'Sub' $P1277 = "111_1321350743.52383" 
    capture_lex $P1277
    .const 'Sub' $P1275 = "110_1321350743.52383" 
    capture_lex $P1275
    .const 'Sub' $P1272 = "109_1321350743.52383" 
    capture_lex $P1272
    .const 'Sub' $P1269 = "108_1321350743.52383" 
    capture_lex $P1269
    .const 'Sub' $P1265 = "107_1321350743.52383" 
    capture_lex $P1265
    .const 'Sub' $P1254 = "106_1321350743.52383" 
    capture_lex $P1254
    .const 'Sub' $P1250 = "105_1321350743.52383" 
    capture_lex $P1250
    .const 'Sub' $P1249 = "104_1321350743.52383" 
    capture_lex $P1249
    .const 'Sub' $P1244 = "103_1321350743.52383" 
    capture_lex $P1244
    .const 'Sub' $P1243 = "102_1321350743.52383" 
    capture_lex $P1243
    .const 'Sub' $P1239 = "101_1321350743.52383" 
    capture_lex $P1239
    .const 'Sub' $P1238 = "100_1321350743.52383" 
    capture_lex $P1238
    .const 'Sub' $P1228 = "98_1321350743.52383" 
    capture_lex $P1228
    .const 'Sub' $P1227 = "97_1321350743.52383" 
    capture_lex $P1227
    .const 'Sub' $P1211 = "93_1321350743.52383" 
    capture_lex $P1211
    .const 'Sub' $P1210 = "92_1321350743.52383" 
    capture_lex $P1210
    .const 'Sub' $P1206 = "91_1321350743.52383" 
    capture_lex $P1206
    .const 'Sub' $P1205 = "90_1321350743.52383" 
    capture_lex $P1205
    .const 'Sub' $P1202 = "89_1321350743.52383" 
    capture_lex $P1202
    .const 'Sub' $P1201 = "88_1321350743.52383" 
    capture_lex $P1201
    .const 'Sub' $P1197 = "87_1321350743.52383" 
    capture_lex $P1197
    .const 'Sub' $P1196 = "86_1321350743.52383" 
    capture_lex $P1196
    .const 'Sub' $P1192 = "85_1321350743.52383" 
    capture_lex $P1192
    .const 'Sub' $P1191 = "84_1321350743.52383" 
    capture_lex $P1191
    .const 'Sub' $P1188 = "83_1321350743.52383" 
    capture_lex $P1188
    .const 'Sub' $P1187 = "82_1321350743.52383" 
    capture_lex $P1187
    .const 'Sub' $P1184 = "81_1321350743.52383" 
    capture_lex $P1184
    .const 'Sub' $P1183 = "80_1321350743.52383" 
    capture_lex $P1183
    .const 'Sub' $P1180 = "79_1321350743.52383" 
    capture_lex $P1180
    .const 'Sub' $P1179 = "78_1321350743.52383" 
    capture_lex $P1179
    .const 'Sub' $P1176 = "77_1321350743.52383" 
    capture_lex $P1176
    .const 'Sub' $P1175 = "76_1321350743.52383" 
    capture_lex $P1175
    .const 'Sub' $P1172 = "75_1321350743.52383" 
    capture_lex $P1172
    .const 'Sub' $P1171 = "74_1321350743.52383" 
    capture_lex $P1171
    .const 'Sub' $P1168 = "73_1321350743.52383" 
    capture_lex $P1168
    .const 'Sub' $P1167 = "72_1321350743.52383" 
    capture_lex $P1167
    .const 'Sub' $P1164 = "71_1321350743.52383" 
    capture_lex $P1164
    .const 'Sub' $P1163 = "70_1321350743.52383" 
    capture_lex $P1163
    .const 'Sub' $P1160 = "69_1321350743.52383" 
    capture_lex $P1160
    .const 'Sub' $P1155 = "66_1321350743.52383" 
    capture_lex $P1155
    .const 'Sub' $P1151 = "65_1321350743.52383" 
    capture_lex $P1151
    .const 'Sub' $P1150 = "64_1321350743.52383" 
    capture_lex $P1150
    .const 'Sub' $P1139 = "63_1321350743.52383" 
    capture_lex $P1139
    .const 'Sub' $P1138 = "62_1321350743.52383" 
    capture_lex $P1138
    .const 'Sub' $P1133 = "61_1321350743.52383" 
    capture_lex $P1133
    .const 'Sub' $P1132 = "60_1321350743.52383" 
    capture_lex $P1132
    .const 'Sub' $P1128 = "59_1321350743.52383" 
    capture_lex $P1128
    .const 'Sub' $P1127 = "58_1321350743.52383" 
    capture_lex $P1127
    .const 'Sub' $P1122 = "57_1321350743.52383" 
    capture_lex $P1122
    .const 'Sub' $P1121 = "56_1321350743.52383" 
    capture_lex $P1121
    .const 'Sub' $P1117 = "55_1321350743.52383" 
    capture_lex $P1117
    .const 'Sub' $P1116 = "54_1321350743.52383" 
    capture_lex $P1116
    .const 'Sub' $P1111 = "53_1321350743.52383" 
    capture_lex $P1111
    .const 'Sub' $P1110 = "52_1321350743.52383" 
    capture_lex $P1110
    .const 'Sub' $P1106 = "51_1321350743.52383" 
    capture_lex $P1106
    .const 'Sub' $P1105 = "50_1321350743.52383" 
    capture_lex $P1105
    .const 'Sub' $P1100 = "49_1321350743.52383" 
    capture_lex $P1100
    .const 'Sub' $P1099 = "48_1321350743.52383" 
    capture_lex $P1099
    .const 'Sub' $P1095 = "47_1321350743.52383" 
    capture_lex $P1095
    .const 'Sub' $P1094 = "46_1321350743.52383" 
    capture_lex $P1094
    .const 'Sub' $P1090 = "45_1321350743.52383" 
    capture_lex $P1090
    .const 'Sub' $P1089 = "44_1321350743.52383" 
    capture_lex $P1089
    .const 'Sub' $P1084 = "43_1321350743.52383" 
    capture_lex $P1084
    .const 'Sub' $P1083 = "42_1321350743.52383" 
    capture_lex $P1083
    .const 'Sub' $P1078 = "41_1321350743.52383" 
    capture_lex $P1078
    .const 'Sub' $P1075 = "40_1321350743.52383" 
    capture_lex $P1075
    .const 'Sub' $P1074 = "39_1321350743.52383" 
    capture_lex $P1074
    .const 'Sub' $P1071 = "38_1321350743.52383" 
    capture_lex $P1071
    .const 'Sub' $P1070 = "37_1321350743.52383" 
    capture_lex $P1070
    .const 'Sub' $P1067 = "36_1321350743.52383" 
    capture_lex $P1067
    .const 'Sub' $P1066 = "35_1321350743.52383" 
    capture_lex $P1066
    .const 'Sub' $P1062 = "34_1321350743.52383" 
    capture_lex $P1062
    .const 'Sub' $P1061 = "33_1321350743.52383" 
    capture_lex $P1061
    .const 'Sub' $P1058 = "32_1321350743.52383" 
    capture_lex $P1058
    .const 'Sub' $P1057 = "31_1321350743.52383" 
    capture_lex $P1057
    .const 'Sub' $P1054 = "30_1321350743.52383" 
    capture_lex $P1054
    .const 'Sub' $P1053 = "29_1321350743.52383" 
    capture_lex $P1053
    .const 'Sub' $P1050 = "28_1321350743.52383" 
    capture_lex $P1050
    .const 'Sub' $P1025 = "15_1321350743.52383" 
    capture_lex $P1025
    .const 'Sub' $P1018 = "14_1321350743.52383" 
    capture_lex $P1018
    .const 'Sub' $P1017 = "13_1321350743.52383" 
    capture_lex $P1017
    .const 'Sub' $P1012 = "12_1321350743.52383" 
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
    .const 'Sub' $P1308 = "118_1321350743.52383" 
    newclosure $P1316, $P1308
.annotate 'line', 7
    .return ($P1316)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "ws"  :subid("12_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "!PREFIX__ws"  :subid("13_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, ""
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "termish"  :subid("14_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "!PREFIX__termish"  :subid("15_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, ""
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "term"  :subid("16_1321350743.52383")
    .param pmc param_1027
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 20
    .lex "self", param_1027
    $P103 = param_1027."!protoregex"("term")
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__term"  :subid("17_1321350743.52383")
    .param pmc param_1029
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 20
    .lex "self", param_1029
    $P104 = param_1029."!PREFIX__!protoregex"("term")
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "infix"  :subid("18_1321350743.52383")
    .param pmc param_1031
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 21
    .lex "self", param_1031
    $P103 = param_1031."!protoregex"("infix")
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__infix"  :subid("19_1321350743.52383")
    .param pmc param_1033
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 21
    .lex "self", param_1033
    $P104 = param_1033."!PREFIX__!protoregex"("infix")
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "prefix"  :subid("20_1321350743.52383")
    .param pmc param_1035
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 22
    .lex "self", param_1035
    $P103 = param_1035."!protoregex"("prefix")
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__prefix"  :subid("21_1321350743.52383")
    .param pmc param_1037
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 22
    .lex "self", param_1037
    $P104 = param_1037."!PREFIX__!protoregex"("prefix")
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postfix"  :subid("22_1321350743.52383")
    .param pmc param_1039
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 23
    .lex "self", param_1039
    $P103 = param_1039."!protoregex"("postfix")
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postfix"  :subid("23_1321350743.52383")
    .param pmc param_1041
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 23
    .lex "self", param_1041
    $P104 = param_1041."!PREFIX__!protoregex"("postfix")
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "circumfix"  :subid("24_1321350743.52383")
    .param pmc param_1043
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 24
    .lex "self", param_1043
    $P103 = param_1043."!protoregex"("circumfix")
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__circumfix"  :subid("25_1321350743.52383")
    .param pmc param_1045
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 24
    .lex "self", param_1045
    $P104 = param_1045."!PREFIX__!protoregex"("circumfix")
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postcircumfix"  :subid("26_1321350743.52383")
    .param pmc param_1047
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 25
    .lex "self", param_1047
    $P103 = param_1047."!protoregex"("postcircumfix")
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postcircumfix"  :subid("27_1321350743.52383")
    .param pmc param_1049
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 25
    .lex "self", param_1049
    $P104 = param_1049."!PREFIX__!protoregex"("postcircumfix")
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "term:sym<circumfix>"  :subid("28_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "!PREFIX__term:sym<circumfix>"  :subid("29_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    $P103 = self."!PREFIX__!subrule"("circumfix", "")
    new $P104, "ResizablePMCArray"
    push $P104, $P103
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "infixish"  :subid("30_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "!PREFIX__infixish"  :subid("31_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    $P103 = self."!PREFIX__!subrule"("infix", "")
    new $P104, "ResizablePMCArray"
    push $P104, $P103
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "prefixish"  :subid("32_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "!PREFIX__prefixish"  :subid("33_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    $P103 = self."!PREFIX__!subrule"("prefix", "")
    new $P104, "ResizablePMCArray"
    push $P104, $P103
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postfixish"  :subid("34_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "!PREFIX__postfixish"  :subid("35_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "nullterm"  :subid("36_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "!PREFIX__nullterm"  :subid("37_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, ""
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "nullterm_alt"  :subid("38_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "!PREFIX__nullterm_alt"  :subid("39_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    $P103 = self."!PREFIX__!subrule"("nullterm", "")
    new $P104, "ResizablePMCArray"
    push $P104, $P103
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "nulltermish" :anon :subid("40_1321350743.52383") :outer("11_1321350743.52383")
    .param pmc param_1076
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "quote_delimited"  :subid("41_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "!PREFIX__quote_delimited"  :subid("42_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    $P103 = self."!PREFIX__!subrule"("starter", "")
    new $P104, "ResizablePMCArray"
    push $P104, $P103
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_atom"  :subid("43_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "!PREFIX__quote_atom"  :subid("44_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    new $P105, "ResizablePMCArray"
    push $P105, ""
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "decint"  :subid("45_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "!PREFIX__decint"  :subid("46_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, ""
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "decints"  :subid("47_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "!PREFIX__decints"  :subid("48_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, ""
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "hexint"  :subid("49_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "!PREFIX__hexint"  :subid("50_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, ""
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "hexints"  :subid("51_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "!PREFIX__hexints"  :subid("52_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, ""
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "octint"  :subid("53_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "!PREFIX__octint"  :subid("54_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, ""
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "octints"  :subid("55_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "!PREFIX__octints"  :subid("56_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, ""
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "binint"  :subid("57_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "!PREFIX__binint"  :subid("58_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, ""
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "binints"  :subid("59_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "!PREFIX__binints"  :subid("60_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, ""
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "integer"  :subid("61_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "!PREFIX__integer"  :subid("62_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "dec_number"  :subid("63_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "!PREFIX__dec_number"  :subid("64_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, ""
    push $P103, ""
    push $P103, "."
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "escale"  :subid("65_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "!PREFIX__escale"  :subid("66_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, "e"
    push $P103, "E"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape"  :subid("67_1321350743.52383")
    .param pmc param_1157
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 86
    .lex "self", param_1157
    $P103 = param_1157."!protoregex"("quote_escape")
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape"  :subid("68_1321350743.52383")
    .param pmc param_1159
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 86
    .lex "self", param_1159
    $P104 = param_1159."!PREFIX__!protoregex"("quote_escape")
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<backslash>"  :subid("69_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "!PREFIX__quote_escape:sym<backslash>"  :subid("70_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, "\\\\"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<stopper>"  :subid("71_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "!PREFIX__quote_escape:sym<stopper>"  :subid("72_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, "\\"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<bs>"  :subid("73_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "!PREFIX__quote_escape:sym<bs>"  :subid("74_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, "\\b"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<nl>"  :subid("75_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "!PREFIX__quote_escape:sym<nl>"  :subid("76_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, "\\n"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<cr>"  :subid("77_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "!PREFIX__quote_escape:sym<cr>"  :subid("78_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, "\\r"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<tab>"  :subid("79_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "!PREFIX__quote_escape:sym<tab>"  :subid("80_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, "\\t"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<ff>"  :subid("81_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "!PREFIX__quote_escape:sym<ff>"  :subid("82_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, "\\f"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<esc>"  :subid("83_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "!PREFIX__quote_escape:sym<esc>"  :subid("84_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, "\\e"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<hex>"  :subid("85_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "!PREFIX__quote_escape:sym<hex>"  :subid("86_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, unicode:"\\x"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<oct>"  :subid("87_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "!PREFIX__quote_escape:sym<oct>"  :subid("88_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, "\\o"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<chr>"  :subid("89_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "!PREFIX__quote_escape:sym<chr>"  :subid("90_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, "\\c"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<0>"  :subid("91_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "!PREFIX__quote_escape:sym<0>"  :subid("92_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, "\\0"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<misc>"  :subid("93_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    .const 'Sub' $P1224 = "96_1321350743.52383" 
    capture_lex $P1224
    .const 'Sub' $P1219 = "95_1321350743.52383" 
    capture_lex $P1219
    .const 'Sub' $P1215 = "94_1321350743.52383" 
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
    .const 'Sub' $P1215 = "94_1321350743.52383" 
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
    .const 'Sub' $P1219 = "95_1321350743.52383" 
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
    .const 'Sub' $P1224 = "96_1321350743.52383" 
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
.sub "_block1214"  :anon :subid("94_1321350743.52383") :outer("93_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 107
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block1218"  :anon :subid("95_1321350743.52383") :method :outer("93_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "_block1223"  :anon :subid("96_1321350743.52383") :outer("93_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "!PREFIX__quote_escape:sym<misc>"  :subid("97_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    new $P109, "ResizablePMCArray"
    push $P109, ""
    .return ($P109)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "charname"  :subid("98_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    .const 'Sub' $P1235 = "99_1321350743.52383" 
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
    .const 'Sub' $P1235 = "99_1321350743.52383" 
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
.sub "_block1234"  :anon :subid("99_1321350743.52383") :method :outer("98_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "!PREFIX__charname"  :subid("100_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "charnames"  :subid("101_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "!PREFIX__charnames"  :subid("102_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, ""
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "charspec"  :subid("103_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "!PREFIX__charspec"  :subid("104_1321350743.52383") :method :outer("11_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "O" :anon :subid("105_1321350743.52383") :outer("11_1321350743.52383")
    .param pmc param_1251
    .param pmc param_1252
    .param pmc param_1253 :optional
    .param int has_param_1253 :opt_flag
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "panic" :anon :subid("106_1321350743.52383") :outer("11_1321350743.52383")
    .param pmc param_1255
    .param pmc param_1256 :slurpy
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "peek_delimiters" :anon :subid("107_1321350743.52383") :outer("11_1321350743.52383")
    .param pmc param_1266
    .param pmc param_1267
    .param pmc param_1268
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "quote_EXPR" :anon :subid("108_1321350743.52383") :outer("11_1321350743.52383")
    .param pmc param_1270
    .param pmc param_1271 :slurpy
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "quotemod_check"  :subid("109_1321350743.52383") :outer("11_1321350743.52383")
    .param pmc param_1273
    .param pmc param_1274
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "starter" :anon :subid("110_1321350743.52383") :outer("11_1321350743.52383")
    .param pmc param_1276
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "stopper" :anon :subid("111_1321350743.52383") :outer("11_1321350743.52383")
    .param pmc param_1278
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "split_words"  :subid("112_1321350743.52383") :outer("11_1321350743.52383")
    .param pmc param_1280
    .param pmc param_1281
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "EXPR" :anon :subid("113_1321350743.52383") :outer("11_1321350743.52383")
    .param pmc param_1283
    .param pmc param_1284 :optional
    .param int has_param_1284 :opt_flag
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "EXPR_reduce" :anon :subid("114_1321350743.52383") :outer("11_1321350743.52383")
    .param pmc param_1286
    .param pmc param_1287
    .param pmc param_1288
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "ternary" :anon :subid("115_1321350743.52383") :outer("11_1321350743.52383")
    .param pmc param_1290
    .param pmc param_1291
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "MARKER" :anon :subid("116_1321350743.52383") :outer("11_1321350743.52383")
    .param pmc param_1298
    .param pmc param_1299
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "MARKED" :anon :subid("117_1321350743.52383") :outer("11_1321350743.52383")
    .param pmc param_1306
    .param pmc param_1307
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "LANG" :anon :subid("118_1321350743.52383") :outer("11_1321350743.52383")
    .param pmc param_1309
    .param pmc param_1310
    .param pmc param_1311
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "_block1317"  :subid("119_1321350743.52383") :outer("10_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 865
    .const 'Sub' $P1557 = "163_1321350743.52383" 
    capture_lex $P1557
    .const 'Sub' $P1548 = "161_1321350743.52383" 
    capture_lex $P1548
    .const 'Sub' $P1540 = "160_1321350743.52383" 
    capture_lex $P1540
    .const 'Sub' $P1533 = "159_1321350743.52383" 
    capture_lex $P1533
    .const 'Sub' $P1530 = "158_1321350743.52383" 
    capture_lex $P1530
    .const 'Sub' $P1526 = "157_1321350743.52383" 
    capture_lex $P1526
    .const 'Sub' $P1518 = "156_1321350743.52383" 
    capture_lex $P1518
    .const 'Sub' $P1510 = "155_1321350743.52383" 
    capture_lex $P1510
    .const 'Sub' $P1507 = "154_1321350743.52383" 
    capture_lex $P1507
    .const 'Sub' $P1504 = "153_1321350743.52383" 
    capture_lex $P1504
    .const 'Sub' $P1501 = "152_1321350743.52383" 
    capture_lex $P1501
    .const 'Sub' $P1498 = "151_1321350743.52383" 
    capture_lex $P1498
    .const 'Sub' $P1495 = "150_1321350743.52383" 
    capture_lex $P1495
    .const 'Sub' $P1492 = "149_1321350743.52383" 
    capture_lex $P1492
    .const 'Sub' $P1488 = "148_1321350743.52383" 
    capture_lex $P1488
    .const 'Sub' $P1485 = "147_1321350743.52383" 
    capture_lex $P1485
    .const 'Sub' $P1479 = "146_1321350743.52383" 
    capture_lex $P1479
    .const 'Sub' $P1452 = "144_1321350743.52383" 
    capture_lex $P1452
    .const 'Sub' $P1432 = "141_1321350743.52383" 
    capture_lex $P1432
    .const 'Sub' $P1429 = "140_1321350743.52383" 
    capture_lex $P1429
    .const 'Sub' $P1426 = "139_1321350743.52383" 
    capture_lex $P1426
    .const 'Sub' $P1423 = "138_1321350743.52383" 
    capture_lex $P1423
    .const 'Sub' $P1420 = "137_1321350743.52383" 
    capture_lex $P1420
    .const 'Sub' $P1417 = "136_1321350743.52383" 
    capture_lex $P1417
    .const 'Sub' $P1413 = "135_1321350743.52383" 
    capture_lex $P1413
    .const 'Sub' $P1409 = "134_1321350743.52383" 
    capture_lex $P1409
    .const 'Sub' $P1406 = "133_1321350743.52383" 
    capture_lex $P1406
    .const 'Sub' $P1402 = "132_1321350743.52383" 
    capture_lex $P1402
    .const 'Sub' $P1398 = "131_1321350743.52383" 
    capture_lex $P1398
    .const 'Sub' $P1357 = "128_1321350743.52383" 
    capture_lex $P1357
    .const 'Sub' $P1341 = "125_1321350743.52383" 
    capture_lex $P1341
    .const 'Sub' $P1339 = "124_1321350743.52383" 
    capture_lex $P1339
    .const 'Sub' $P1328 = "121_1321350743.52383" 
    capture_lex $P1328
    .const 'Sub' $P1320 = "120_1321350743.52383" 
    capture_lex $P1320
.annotate 'line', 866
    .const 'Sub' $P1320 = "120_1321350743.52383" 
    newclosure $P1325, $P1320
    set $P1319, $P1325
    .lex "string_to_int", $P1319
.annotate 'line', 865
    find_lex $P102, "string_to_int"
    find_lex $P103, "$?PACKAGE"
    get_who $P105, $P103
    set $P105["string_to_int"], $P102
    .lex "$?PACKAGE", $P1326
    .lex "$?CLASS", $P1327
    find_lex $P106, "string_to_int"
.annotate 'line', 1044
    .const 'Sub' $P1557 = "163_1321350743.52383" 
    newclosure $P1563, $P1557
.annotate 'line', 865
    .return ($P1563)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "string_to_int"  :subid("120_1321350743.52383") :outer("119_1321350743.52383")
    .param pmc param_1321
    .param pmc param_1322
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
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
.sub "ints_to_string" :anon :subid("121_1321350743.52383") :outer("119_1321350743.52383")
    .param pmc param_1329
    .param pmc param_1330
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 873
    .const 'Sub' $P1333 = "122_1321350743.52383" 
    capture_lex $P1333
    .lex "self", param_1329
    .lex "$ints", param_1330
.annotate 'line', 874
    find_lex $P107, "$ints"
    unless_null $P107, vivify_502
    new $P107, "Undef"
  vivify_502:
    does $I100, $P107, "array"
    if $I100, if_1331
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
    goto if_1331_end
  if_1331:
    .const 'Sub' $P1333 = "122_1321350743.52383" 
    capture_lex $P1333
    $P110 = $P1333()
    set $P106, $P110
  if_1331_end:
.annotate 'line', 873
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block1332"  :anon :subid("122_1321350743.52383") :outer("121_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 874
    .const 'Sub' $P1336 = "123_1321350743.52383" 
    capture_lex $P1336
.annotate 'line', 875
    new $P108, "Undef"
    set $P1334, $P108
    .lex "$result", $P1334
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
    set_label $P112, loop1338_handler
    $P112."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P112
  loop1338_test:
    unless $P109, loop1338_done
    shift $P111, $P109
  loop1338_redo:
    .const 'Sub' $P1336 = "123_1321350743.52383" 
    capture_lex $P1336
    $P1336($P111)
  loop1338_next:
    goto loop1338_test
  loop1338_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P113, exception, 'type'
    eq $P113, .CONTROL_LOOP_NEXT, loop1338_next
    eq $P113, .CONTROL_LOOP_REDO, loop1338_redo
  loop1338_done:
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
.sub "_block1335"  :anon :subid("123_1321350743.52383") :outer("122_1321350743.52383")
    .param pmc param_1337
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 876
    .lex "$_", param_1337
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
.sub "CTXSAVE" :anon :subid("124_1321350743.52383") :outer("119_1321350743.52383")
    .param pmc param_1340
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 886
    .lex "self", param_1340
.annotate 'line', 887
    get_hll_global $P106, "GLOBAL"
    nqp_get_package_through_who $P107, $P106, "PAST"
    get_who $P108, $P107
    set $P109, $P108["Op"]
.annotate 'line', 893
    new $P110, "ResizablePMCArray"
    push $P110, "    $P0 = find_dynamic_lex \"$*CTXSAVE\""
    push $P110, "    if null $P0 goto ctxsave_done"
    push $P110, "    $I0 = can $P0, \"ctxsave\""
    push $P110, "    unless $I0 goto ctxsave_done"
    push $P110, "    $P0.\"ctxsave\"()"
    push $P110, "  ctxsave_done:"
.annotate 'line', 887
    $P111 = $P109."new"($P110 :named("inline"))
.annotate 'line', 886
    .return ($P111)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "SET_BLOCK_OUTER_CTX" :anon :subid("125_1321350743.52383") :outer("119_1321350743.52383")
    .param pmc param_1342
    .param pmc param_1343
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 900
    .const 'Sub' $P1348 = "126_1321350743.52383" 
    capture_lex $P1348
    .lex "self", param_1342
    .lex "$block", param_1343
.annotate 'line', 901
    new $P106, "Undef"
    set $P1344, $P106
    .lex "$outer_ctx", $P1344
    find_dynamic_lex $P109, "%*COMPILING"
    unless_null $P109, vivify_509
    get_hll_global $P107, "GLOBAL"
    get_who $P108, $P107
    set $P109, $P108["%COMPILING"]
    unless_null $P109, vivify_510
    die "Contextual %*COMPILING not found"
  vivify_510:
  vivify_509:
    set $P1345, $P109["%?OPTIONS"]
    unless_null $P1345, vivify_511
    $P1345 = root_new ['parrot';'Hash']
  vivify_511:
    set $P110, $P1345["outer_ctx"]
    unless_null $P110, vivify_512
    new $P110, "Undef"
  vivify_512:
    store_lex "$outer_ctx", $P110
.annotate 'line', 902
    find_lex $P108, "$outer_ctx"
    unless_null $P108, vivify_513
    new $P108, "Undef"
  vivify_513:
    defined $I100, $P108
    if $I100, if_1346
    new $P107, 'Integer'
    set $P107, $I100
    goto if_1346_end
  if_1346:
    .const 'Sub' $P1348 = "126_1321350743.52383" 
    capture_lex $P1348
    $P110 = $P1348()
    set $P107, $P110
  if_1346_end:
.annotate 'line', 900
    .return ($P107)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block1347"  :anon :subid("126_1321350743.52383") :outer("125_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 902
    .const 'Sub' $P1354 = "127_1321350743.52383" 
    capture_lex $P1354
.annotate 'line', 903
    $P1350 = root_new ['parrot';'ResizablePMCArray']
    set $P1349, $P1350
    .lex "@ns", $P1349
    find_lex $P109, "$outer_ctx"
    unless_null $P109, vivify_514
    new $P109, "Undef"
  vivify_514:
    getattribute $P110, $P109, "current_namespace"
    $P111 = $P110."get_name"()
    store_lex "@ns", $P111
.annotate 'line', 904
    find_lex $P1351, "@ns"
    unless_null $P1351, vivify_515
    $P1351 = root_new ['parrot';'ResizablePMCArray']
  vivify_515:
    $P1351."shift"()
.annotate 'line', 905
    find_lex $P109, "$block"
    unless_null $P109, vivify_516
    new $P109, "Undef"
  vivify_516:
    find_lex $P1352, "@ns"
    unless_null $P1352, vivify_517
    $P1352 = root_new ['parrot';'ResizablePMCArray']
  vivify_517:
    $P109."namespace"($P1352)
.annotate 'line', 906
    find_lex $P110, "$outer_ctx"
    unless_null $P110, vivify_518
    new $P110, "Undef"
  vivify_518:
    $P111 = $P110."lexpad_full"()
    defined $I101, $P111
    unless $I101, for_undef_519
    iter $P109, $P111
    new $P113, 'ExceptionHandler'
    set_label $P113, loop1356_handler
    $P113."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P113
  loop1356_test:
    unless $P109, loop1356_done
    shift $P112, $P109
  loop1356_redo:
    .const 'Sub' $P1354 = "127_1321350743.52383" 
    capture_lex $P1354
    $P1354($P112)
  loop1356_next:
    goto loop1356_test
  loop1356_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P114, exception, 'type'
    eq $P114, .CONTROL_LOOP_NEXT, loop1356_next
    eq $P114, .CONTROL_LOOP_REDO, loop1356_redo
  loop1356_done:
    pop_eh 
  for_undef_519:
.annotate 'line', 902
    .return ($P109)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1353"  :anon :subid("127_1321350743.52383") :outer("126_1321350743.52383")
    .param pmc param_1355
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 906
    .lex "$_", param_1355
.annotate 'line', 907
    find_lex $P113, "$block"
    unless_null $P113, vivify_520
    new $P113, "Undef"
  vivify_520:
    find_lex $P114, "$_"
    unless_null $P114, vivify_521
    new $P114, "Undef"
  vivify_521:
    $P115 = $P114."key"()
    find_lex $P116, "$_"
    unless_null $P116, vivify_522
    new $P116, "Undef"
  vivify_522:
    $P117 = $P116."value"()
    $P118 = $P113."symbol"($P115, "lexical" :named("scope"), $P117 :named("value"))
.annotate 'line', 906
    .return ($P118)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "EXPR" :anon :subid("128_1321350743.52383") :outer("119_1321350743.52383")
    .param pmc param_1360
    .param pmc param_1361
    .param pmc param_1362 :optional
    .param int has_param_1362 :opt_flag
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 913
    .const 'Sub' $P1394 = "130_1321350743.52383" 
    capture_lex $P1394
    .const 'Sub' $P1386 = "129_1321350743.52383" 
    capture_lex $P1386
    new $P1359, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1359, control_1358
    push_eh $P1359
    .lex "self", param_1360
    .lex "$/", param_1361
    if has_param_1362, optparam_523
    new $P106, "Undef"
    set param_1362, $P106
  optparam_523:
    .lex "$key", param_1362
.annotate 'line', 915
    new $P107, "Undef"
    set $P1363, $P107
    .lex "$past", $P1363
.annotate 'line', 914
    find_lex $P108, "$key"
    unless_null $P108, vivify_524
    new $P108, "Undef"
  vivify_524:
    if $P108, unless_1364_end
    new $P109, "Exception"
    set $P109['type'], .CONTROL_RETURN
    new $P110, "Float"
    assign $P110, 0
    setattribute $P109, 'payload', $P110
    throw $P109
  unless_1364_end:
.annotate 'line', 915
    find_lex $P108, "$/"
    unless_null $P108, vivify_525
    new $P108, "Undef"
  vivify_525:
    $P109 = $P108."ast"()
    set $P1365, $P109
    defined $I1367, $P1365
    if $I1367, default_1366
    find_lex $P1368, "$/"
    unless_null $P1368, vivify_526
    $P1368 = root_new ['parrot';'Hash']
  vivify_526:
    set $P110, $P1368["OPER"]
    unless_null $P110, vivify_527
    new $P110, "Undef"
  vivify_527:
    $P111 = $P110."ast"()
    set $P1365, $P111
  default_1366:
    store_lex "$past", $P1365
.annotate 'line', 916
    find_lex $P108, "$past"
    unless_null $P108, vivify_528
    new $P108, "Undef"
  vivify_528:
    if $P108, unless_1369_end
.annotate 'line', 917
    get_hll_global $P109, "GLOBAL"
    nqp_get_package_through_who $P110, $P109, "PAST"
    get_who $P111, $P110
    set $P112, $P111["Op"]
    find_lex $P113, "$/"
    unless_null $P113, vivify_529
    new $P113, "Undef"
  vivify_529:
    $P114 = $P112."new"($P113 :named("node"))
    store_lex "$past", $P114
.annotate 'line', 918
    find_lex $P1371, "$/"
    unless_null $P1371, vivify_530
    $P1371 = root_new ['parrot';'Hash']
  vivify_530:
    set $P1372, $P1371["OPER"]
    unless_null $P1372, vivify_531
    $P1372 = root_new ['parrot';'Hash']
  vivify_531:
    set $P1373, $P1372["O"]
    unless_null $P1373, vivify_532
    $P1373 = root_new ['parrot';'Hash']
  vivify_532:
    set $P109, $P1373["pasttype"]
    unless_null $P109, vivify_533
    new $P109, "Undef"
  vivify_533:
    if $P109, if_1370
.annotate 'line', 919
    find_lex $P1378, "$/"
    unless_null $P1378, vivify_534
    $P1378 = root_new ['parrot';'Hash']
  vivify_534:
    set $P1379, $P1378["OPER"]
    unless_null $P1379, vivify_535
    $P1379 = root_new ['parrot';'Hash']
  vivify_535:
    set $P1380, $P1379["O"]
    unless_null $P1380, vivify_536
    $P1380 = root_new ['parrot';'Hash']
  vivify_536:
    set $P110, $P1380["pirop"]
    unless_null $P110, vivify_537
    new $P110, "Undef"
  vivify_537:
    unless $P110, if_1377_end
    find_lex $P111, "$past"
    unless_null $P111, vivify_538
    new $P111, "Undef"
  vivify_538:
    find_lex $P1381, "$/"
    unless_null $P1381, vivify_539
    $P1381 = root_new ['parrot';'Hash']
  vivify_539:
    set $P1382, $P1381["OPER"]
    unless_null $P1382, vivify_540
    $P1382 = root_new ['parrot';'Hash']
  vivify_540:
    set $P1383, $P1382["O"]
    unless_null $P1383, vivify_541
    $P1383 = root_new ['parrot';'Hash']
  vivify_541:
    set $P112, $P1383["pirop"]
    unless_null $P112, vivify_542
    new $P112, "Undef"
  vivify_542:
    set $S100, $P112
    $P111."pirop"($S100)
  if_1377_end:
    goto if_1370_end
  if_1370:
.annotate 'line', 918
    find_lex $P110, "$past"
    unless_null $P110, vivify_543
    new $P110, "Undef"
  vivify_543:
    find_lex $P1374, "$/"
    unless_null $P1374, vivify_544
    $P1374 = root_new ['parrot';'Hash']
  vivify_544:
    set $P1375, $P1374["OPER"]
    unless_null $P1375, vivify_545
    $P1375 = root_new ['parrot';'Hash']
  vivify_545:
    set $P1376, $P1375["O"]
    unless_null $P1376, vivify_546
    $P1376 = root_new ['parrot';'Hash']
  vivify_546:
    set $P111, $P1376["pasttype"]
    unless_null $P111, vivify_547
    new $P111, "Undef"
  vivify_547:
    set $S100, $P111
    $P110."pasttype"($S100)
  if_1370_end:
.annotate 'line', 920
    find_lex $P109, "$past"
    unless_null $P109, vivify_548
    new $P109, "Undef"
  vivify_548:
    $P110 = $P109."name"()
    if $P110, unless_1384_end
    .const 'Sub' $P1386 = "129_1321350743.52383" 
    capture_lex $P1386
    $P1386()
  unless_1384_end:
  unless_1369_end:
.annotate 'line', 926
    find_lex $P108, "$key"
    unless_null $P108, vivify_556
    new $P108, "Undef"
  vivify_556:
    set $S100, $P108
    iseq $I100, $S100, "POSTFIX"
    if $I100, if_1391
.annotate 'line', 928
    find_lex $P110, "$/"
    unless_null $P110, vivify_557
    new $P110, "Undef"
  vivify_557:
    $P111 = $P110."list"()
    defined $I101, $P111
    unless $I101, for_undef_558
    iter $P109, $P111
    new $P114, 'ExceptionHandler'
    set_label $P114, loop1397_handler
    $P114."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P114
  loop1397_test:
    unless $P109, loop1397_done
    shift $P112, $P109
  loop1397_redo:
    .const 'Sub' $P1394 = "130_1321350743.52383" 
    capture_lex $P1394
    $P1394($P112)
  loop1397_next:
    goto loop1397_test
  loop1397_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P115, exception, 'type'
    eq $P115, .CONTROL_LOOP_NEXT, loop1397_next
    eq $P115, .CONTROL_LOOP_REDO, loop1397_redo
  loop1397_done:
    pop_eh 
  for_undef_558:
.annotate 'line', 927
    goto if_1391_end
  if_1391:
.annotate 'line', 926
    find_lex $P109, "$past"
    unless_null $P109, vivify_562
    new $P109, "Undef"
  vivify_562:
    new $P110, "Float"
    assign $P110, 0
    set $I101, $P110
    find_lex $P1392, "$/"
    unless_null $P1392, vivify_563
    $P1392 = root_new ['parrot';'ResizablePMCArray']
  vivify_563:
    set $P111, $P1392[$I101]
    unless_null $P111, vivify_564
    new $P111, "Undef"
  vivify_564:
    $P112 = $P111."ast"()
    $P109."unshift"($P112)
  if_1391_end:
.annotate 'line', 930
    find_lex $P108, "$/"
    find_lex $P109, "$past"
    unless_null $P109, vivify_565
    new $P109, "Undef"
  vivify_565:
    $P110 = $P108."!make"($P109)
.annotate 'line', 913
    .return ($P110)
  control_1358:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P108, exception, "payload"
    .return ($P108)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1385"  :anon :subid("129_1321350743.52383") :outer("128_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 922
    new $P111, "Undef"
    set $P1387, $P111
    .lex "$name", $P1387
.annotate 'line', 921
    find_lex $P112, "$key"
    unless_null $P112, vivify_549
    new $P112, "Undef"
  vivify_549:
    set $S100, $P112
    iseq $I100, $S100, "LIST"
    unless $I100, if_1388_end
    new $P113, "String"
    assign $P113, "infix"
    store_lex "$key", $P113
  if_1388_end:
.annotate 'line', 922
    find_lex $P112, "$key"
    unless_null $P112, vivify_550
    new $P112, "Undef"
  vivify_550:
    set $S100, $P112
    downcase $S101, $S100
    new $P113, 'String'
    set $P113, $S101
    concat $P114, $P113, ":<"
    find_lex $P1389, "$/"
    unless_null $P1389, vivify_551
    $P1389 = root_new ['parrot';'Hash']
  vivify_551:
    set $P1390, $P1389["OPER"]
    unless_null $P1390, vivify_552
    $P1390 = root_new ['parrot';'Hash']
  vivify_552:
    set $P115, $P1390["sym"]
    unless_null $P115, vivify_553
    new $P115, "Undef"
  vivify_553:
    concat $P116, $P114, $P115
    concat $P117, $P116, ">"
    store_lex "$name", $P117
.annotate 'line', 923
    find_lex $P112, "$past"
    unless_null $P112, vivify_554
    new $P112, "Undef"
  vivify_554:
    new $P113, "String"
    assign $P113, "&"
    find_lex $P114, "$name"
    unless_null $P114, vivify_555
    new $P114, "Undef"
  vivify_555:
    concat $P115, $P113, $P114
    $P116 = $P112."name"($P115)
.annotate 'line', 920
    .return ($P116)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1393"  :anon :subid("130_1321350743.52383") :outer("128_1321350743.52383")
    .param pmc param_1395
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 928
    .lex "$_", param_1395
    find_lex $P114, "$_"
    unless_null $P114, vivify_559
    new $P114, "Undef"
  vivify_559:
    $P115 = $P114."ast"()
    defined $I102, $P115
    if $I102, if_1396
    new $P113, 'Integer'
    set $P113, $I102
    goto if_1396_end
  if_1396:
    find_lex $P116, "$past"
    unless_null $P116, vivify_560
    new $P116, "Undef"
  vivify_560:
    find_lex $P117, "$_"
    unless_null $P117, vivify_561
    new $P117, "Undef"
  vivify_561:
    $P118 = $P117."ast"()
    $P119 = $P116."push"($P118)
    set $P113, $P119
  if_1396_end:
    .return ($P113)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "term:sym<circumfix>" :anon :subid("131_1321350743.52383") :outer("119_1321350743.52383")
    .param pmc param_1399
    .param pmc param_1400
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 933
    .lex "self", param_1399
    .lex "$/", param_1400
    find_lex $P106, "$/"
    find_lex $P1401, "$/"
    unless_null $P1401, vivify_566
    $P1401 = root_new ['parrot';'Hash']
  vivify_566:
    set $P107, $P1401["circumfix"]
    unless_null $P107, vivify_567
    new $P107, "Undef"
  vivify_567:
    $P108 = $P107."ast"()
    $P109 = $P106."!make"($P108)
    .return ($P109)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "termish" :anon :subid("132_1321350743.52383") :outer("119_1321350743.52383")
    .param pmc param_1403
    .param pmc param_1404
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 935
    .lex "self", param_1403
    .lex "$/", param_1404
    find_lex $P106, "$/"
    find_lex $P1405, "$/"
    unless_null $P1405, vivify_568
    $P1405 = root_new ['parrot';'Hash']
  vivify_568:
    set $P107, $P1405["term"]
    unless_null $P107, vivify_569
    new $P107, "Undef"
  vivify_569:
    $P108 = $P107."ast"()
    $P109 = $P106."!make"($P108)
    .return ($P109)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "nullterm" :anon :subid("133_1321350743.52383") :outer("119_1321350743.52383")
    .param pmc param_1407
    .param pmc param_1408
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 936
    .lex "self", param_1407
    .lex "$/", param_1408
    find_lex $P106, "$/"
    new $P107, "Undef"
    $P108 = $P106."!make"($P107)
    .return ($P108)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "nullterm_alt" :anon :subid("134_1321350743.52383") :outer("119_1321350743.52383")
    .param pmc param_1410
    .param pmc param_1411
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 937
    .lex "self", param_1410
    .lex "$/", param_1411
    find_lex $P106, "$/"
    find_lex $P1412, "$/"
    unless_null $P1412, vivify_570
    $P1412 = root_new ['parrot';'Hash']
  vivify_570:
    set $P107, $P1412["term"]
    unless_null $P107, vivify_571
    new $P107, "Undef"
  vivify_571:
    $P108 = $P107."ast"()
    $P109 = $P106."!make"($P108)
    .return ($P109)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "integer" :anon :subid("135_1321350743.52383") :outer("119_1321350743.52383")
    .param pmc param_1414
    .param pmc param_1415
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 939
    .lex "self", param_1414
    .lex "$/", param_1415
    find_lex $P106, "$/"
    find_lex $P1416, "$/"
    unless_null $P1416, vivify_572
    $P1416 = root_new ['parrot';'Hash']
  vivify_572:
    set $P107, $P1416["VALUE"]
    unless_null $P107, vivify_573
    new $P107, "Undef"
  vivify_573:
    $P108 = $P107."ast"()
    $P109 = $P106."!make"($P108)
    .return ($P109)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "dec_number" :anon :subid("136_1321350743.52383") :outer("119_1321350743.52383")
    .param pmc param_1418
    .param pmc param_1419
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 941
    .lex "self", param_1418
    .lex "$/", param_1419
    find_lex $P106, "$/"
    find_lex $P107, "$/"
    unless_null $P107, vivify_574
    new $P107, "Undef"
  vivify_574:
    set $N100, $P107
    $P108 = $P106."!make"($N100)
    .return ($P108)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "decint" :anon :subid("137_1321350743.52383") :outer("119_1321350743.52383")
    .param pmc param_1421
    .param pmc param_1422
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 943
    .lex "self", param_1421
    .lex "$/", param_1422
    find_lex $P106, "$/"
    find_lex $P107, "$/"
    unless_null $P107, vivify_575
    new $P107, "Undef"
  vivify_575:
    $P108 = "string_to_int"($P107, 10)
    $P109 = $P106."!make"($P108)
    .return ($P109)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "hexint" :anon :subid("138_1321350743.52383") :outer("119_1321350743.52383")
    .param pmc param_1424
    .param pmc param_1425
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 944
    .lex "self", param_1424
    .lex "$/", param_1425
    find_lex $P106, "$/"
    find_lex $P107, "$/"
    unless_null $P107, vivify_576
    new $P107, "Undef"
  vivify_576:
    $P108 = "string_to_int"($P107, 16)
    $P109 = $P106."!make"($P108)
    .return ($P109)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "octint" :anon :subid("139_1321350743.52383") :outer("119_1321350743.52383")
    .param pmc param_1427
    .param pmc param_1428
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 945
    .lex "self", param_1427
    .lex "$/", param_1428
    find_lex $P106, "$/"
    find_lex $P107, "$/"
    unless_null $P107, vivify_577
    new $P107, "Undef"
  vivify_577:
    $P108 = "string_to_int"($P107, 8)
    $P109 = $P106."!make"($P108)
    .return ($P109)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "binint" :anon :subid("140_1321350743.52383") :outer("119_1321350743.52383")
    .param pmc param_1430
    .param pmc param_1431
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 946
    .lex "self", param_1430
    .lex "$/", param_1431
    find_lex $P106, "$/"
    find_lex $P107, "$/"
    unless_null $P107, vivify_578
    new $P107, "Undef"
  vivify_578:
    $P108 = "string_to_int"($P107, 2)
    $P109 = $P106."!make"($P108)
    .return ($P109)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_EXPR" :anon :subid("141_1321350743.52383") :outer("119_1321350743.52383")
    .param pmc param_1433
    .param pmc param_1434
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 948
    .const 'Sub' $P1440 = "142_1321350743.52383" 
    capture_lex $P1440
    .lex "self", param_1433
    .lex "$/", param_1434
.annotate 'line', 949
    new $P106, "Undef"
    set $P1435, $P106
    .lex "$past", $P1435
    find_lex $P1436, "$/"
    unless_null $P1436, vivify_579
    $P1436 = root_new ['parrot';'Hash']
  vivify_579:
    set $P107, $P1436["quote_delimited"]
    unless_null $P107, vivify_580
    new $P107, "Undef"
  vivify_580:
    $P108 = $P107."ast"()
    store_lex "$past", $P108
.annotate 'line', 950
    find_lex $P107, "$/"
    unless_null $P107, vivify_581
    new $P107, "Undef"
  vivify_581:
    $P108 = $P107."CURSOR"()
    $P109 = $P108."quotemod_check"("w")
    unless $P109, if_1437_end
.annotate 'line', 951
    get_hll_global $P110, "GLOBAL"
    nqp_get_package_through_who $P111, $P110, "PAST"
    get_who $P112, $P111
    set $P113, $P112["Node"]
    find_lex $P114, "$past"
    unless_null $P114, vivify_582
    new $P114, "Undef"
  vivify_582:
    $P115 = $P113."ACCEPTS"($P114)
    if $P115, if_1438
.annotate 'line', 954
    .const 'Sub' $P1440 = "142_1321350743.52383" 
    capture_lex $P1440
    $P1440()
    goto if_1438_end
  if_1438:
.annotate 'line', 952
    find_lex $P116, "$/"
    unless_null $P116, vivify_593
    new $P116, "Undef"
  vivify_593:
    $P117 = $P116."CURSOR"()
    $P117."panic"("Can't form :w list from non-constant strings (yet)")
  if_1438_end:
  if_1437_end:
.annotate 'line', 965
    get_hll_global $P107, "GLOBAL"
    nqp_get_package_through_who $P108, $P107, "PAST"
    get_who $P109, $P108
    set $P110, $P109["Node"]
    find_lex $P111, "$past"
    unless_null $P111, vivify_594
    new $P111, "Undef"
  vivify_594:
    $P112 = $P110."ACCEPTS"($P111)
    isfalse $I100, $P112
    unless $I100, if_1451_end
.annotate 'line', 966
    get_hll_global $P113, "GLOBAL"
    nqp_get_package_through_who $P114, $P113, "PAST"
    get_who $P115, $P114
    set $P116, $P115["Val"]
    find_lex $P117, "$past"
    unless_null $P117, vivify_595
    new $P117, "Undef"
  vivify_595:
    set $S100, $P117
    $P118 = $P116."new"($S100 :named("value"))
    store_lex "$past", $P118
  if_1451_end:
.annotate 'line', 968
    find_lex $P107, "$/"
    find_lex $P108, "$past"
    unless_null $P108, vivify_596
    new $P108, "Undef"
  vivify_596:
    $P109 = $P107."!make"($P108)
.annotate 'line', 948
    .return ($P109)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block1439"  :anon :subid("142_1321350743.52383") :outer("141_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 954
    .const 'Sub' $P1447 = "143_1321350743.52383" 
    capture_lex $P1447
.annotate 'line', 955
    $P1442 = root_new ['parrot';'ResizablePMCArray']
    set $P1441, $P1442
    .lex "@words", $P1441
    get_hll_global $P116, "GLOBAL"
    nqp_get_package_through_who $P117, $P116, "HLL"
    nqp_get_package_through_who $P118, $P117, "Grammar"
    get_who $P119, $P118
    set $P120, $P119["split_words"]
    find_lex $P121, "$/"
    unless_null $P121, vivify_583
    new $P121, "Undef"
  vivify_583:
    find_lex $P122, "$past"
    unless_null $P122, vivify_584
    new $P122, "Undef"
  vivify_584:
    $P123 = $P120($P121, $P122)
    store_lex "@words", $P123
.annotate 'line', 956
    find_lex $P1444, "@words"
    unless_null $P1444, vivify_585
    $P1444 = root_new ['parrot';'ResizablePMCArray']
  vivify_585:
    set $N100, $P1444
    set $N101, 1
    isne $I100, $N100, $N101
    if $I100, if_1443
.annotate 'line', 961
    new $P118, "Float"
    assign $P118, 0
    set $I101, $P118
    find_lex $P1450, "@words"
    unless_null $P1450, vivify_586
    $P1450 = root_new ['parrot';'ResizablePMCArray']
  vivify_586:
    set $P119, $P1450[$I101]
    unless_null $P119, vivify_587
    new $P119, "Undef"
  vivify_587:
    set $S100, $P119
    new $P120, 'String'
    set $P120, $S100
    store_lex "$past", $P120
.annotate 'line', 960
    set $P116, $P120
.annotate 'line', 956
    goto if_1443_end
  if_1443:
.annotate 'line', 957
    get_hll_global $P117, "GLOBAL"
    nqp_get_package_through_who $P118, $P117, "PAST"
    get_who $P119, $P118
    set $P120, $P119["Op"]
    find_lex $P121, "$/"
    unless_null $P121, vivify_588
    new $P121, "Undef"
  vivify_588:
    $P122 = $P120."new"("list" :named("pasttype"), $P121 :named("node"))
    store_lex "$past", $P122
.annotate 'line', 958
    find_lex $P1445, "@words"
    unless_null $P1445, vivify_589
    $P1445 = root_new ['parrot';'ResizablePMCArray']
  vivify_589:
    defined $I101, $P1445
    unless $I101, for_undef_590
    iter $P117, $P1445
    new $P119, 'ExceptionHandler'
    set_label $P119, loop1449_handler
    $P119."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P119
  loop1449_test:
    unless $P117, loop1449_done
    shift $P118, $P117
  loop1449_redo:
    .const 'Sub' $P1447 = "143_1321350743.52383" 
    capture_lex $P1447
    $P1447($P118)
  loop1449_next:
    goto loop1449_test
  loop1449_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P120, exception, 'type'
    eq $P120, .CONTROL_LOOP_NEXT, loop1449_next
    eq $P120, .CONTROL_LOOP_REDO, loop1449_redo
  loop1449_done:
    pop_eh 
  for_undef_590:
.annotate 'line', 956
    set $P116, $P117
  if_1443_end:
.annotate 'line', 954
    .return ($P116)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1446"  :anon :subid("143_1321350743.52383") :outer("142_1321350743.52383")
    .param pmc param_1448
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 958
    .lex "$_", param_1448
    find_lex $P119, "$past"
    unless_null $P119, vivify_591
    new $P119, "Undef"
  vivify_591:
    find_lex $P120, "$_"
    unless_null $P120, vivify_592
    new $P120, "Undef"
  vivify_592:
    $P121 = $P119."push"($P120)
    .return ($P121)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "quote_delimited" :anon :subid("144_1321350743.52383") :outer("119_1321350743.52383")
    .param pmc param_1453
    .param pmc param_1454
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 971
    .const 'Sub' $P1462 = "145_1321350743.52383" 
    capture_lex $P1462
    .lex "self", param_1453
    .lex "$/", param_1454
.annotate 'line', 972
    $P1456 = root_new ['parrot';'ResizablePMCArray']
    set $P1455, $P1456
    .lex "@parts", $P1455
.annotate 'line', 973
    new $P106, "Undef"
    set $P1457, $P106
    .lex "$lastlit", $P1457
.annotate 'line', 989
    new $P107, "Undef"
    set $P1458, $P107
    .lex "$past", $P1458
.annotate 'line', 971
    find_lex $P1459, "@parts"
    unless_null $P1459, vivify_597
    $P1459 = root_new ['parrot';'ResizablePMCArray']
  vivify_597:
.annotate 'line', 973
    new $P108, "String"
    assign $P108, ""
    store_lex "$lastlit", $P108
.annotate 'line', 974
    find_lex $P1460, "$/"
    unless_null $P1460, vivify_598
    $P1460 = root_new ['parrot';'Hash']
  vivify_598:
    set $P109, $P1460["quote_atom"]
    unless_null $P109, vivify_599
    new $P109, "Undef"
  vivify_599:
    defined $I100, $P109
    unless $I100, for_undef_600
    iter $P108, $P109
    new $P113, 'ExceptionHandler'
    set_label $P113, loop1470_handler
    $P113."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P113
  loop1470_test:
    unless $P108, loop1470_done
    shift $P110, $P108
  loop1470_redo:
    .const 'Sub' $P1462 = "145_1321350743.52383" 
    capture_lex $P1462
    $P1462($P110)
  loop1470_next:
    goto loop1470_test
  loop1470_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P114, exception, 'type'
    eq $P114, .CONTROL_LOOP_NEXT, loop1470_next
    eq $P114, .CONTROL_LOOP_REDO, loop1470_redo
  loop1470_done:
    pop_eh 
  for_undef_600:
.annotate 'line', 988
    find_lex $P108, "$lastlit"
    unless_null $P108, vivify_613
    new $P108, "Undef"
  vivify_613:
    set $S100, $P108
    isgt $I100, $S100, ""
    unless $I100, if_1471_end
    find_lex $P1472, "@parts"
    unless_null $P1472, vivify_614
    $P1472 = root_new ['parrot';'ResizablePMCArray']
  vivify_614:
    find_lex $P109, "$lastlit"
    unless_null $P109, vivify_615
    new $P109, "Undef"
  vivify_615:
    $P1472."push"($P109)
  if_1471_end:
.annotate 'line', 989
    find_lex $P1474, "@parts"
    unless_null $P1474, vivify_616
    $P1474 = root_new ['parrot';'ResizablePMCArray']
  vivify_616:
    if $P1474, if_1473
    new $P110, "String"
    assign $P110, ""
    set $P108, $P110
    goto if_1473_end
  if_1473:
    find_lex $P1475, "@parts"
    unless_null $P1475, vivify_617
    $P1475 = root_new ['parrot';'ResizablePMCArray']
  vivify_617:
    $P109 = $P1475."shift"()
    set $P108, $P109
  if_1473_end:
    store_lex "$past", $P108
.annotate 'line', 990
    new $P108, 'ExceptionHandler'
    set_label $P108, loop1478_handler
    $P108."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P108
  loop1478_test:
    find_lex $P1476, "@parts"
    unless_null $P1476, vivify_618
    $P1476 = root_new ['parrot';'ResizablePMCArray']
  vivify_618:
    unless $P1476, loop1478_done
  loop1478_redo:
.annotate 'line', 991
    get_hll_global $P108, "GLOBAL"
    nqp_get_package_through_who $P109, $P108, "PAST"
    get_who $P110, $P109
    set $P111, $P110["Op"]
    find_lex $P112, "$past"
    unless_null $P112, vivify_619
    new $P112, "Undef"
  vivify_619:
    find_lex $P1477, "@parts"
    unless_null $P1477, vivify_620
    $P1477 = root_new ['parrot';'ResizablePMCArray']
  vivify_620:
    $P113 = $P1477."shift"()
    $P114 = $P111."new"($P112, $P113, "concat" :named("pirop"))
    store_lex "$past", $P114
  loop1478_next:
.annotate 'line', 990
    goto loop1478_test
  loop1478_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P109, exception, 'type'
    eq $P109, .CONTROL_LOOP_NEXT, loop1478_next
    eq $P109, .CONTROL_LOOP_REDO, loop1478_redo
  loop1478_done:
    pop_eh 
.annotate 'line', 993
    find_lex $P108, "$/"
    find_lex $P109, "$past"
    unless_null $P109, vivify_621
    new $P109, "Undef"
  vivify_621:
    $P110 = $P108."!make"($P109)
.annotate 'line', 971
    .return ($P110)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1461"  :anon :subid("145_1321350743.52383") :outer("144_1321350743.52383")
    .param pmc param_1464
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 975
    new $P111, "Undef"
    set $P1463, $P111
    .lex "$ast", $P1463
    .lex "$_", param_1464
    find_lex $P112, "$_"
    unless_null $P112, vivify_601
    new $P112, "Undef"
  vivify_601:
    $P113 = $P112."ast"()
    store_lex "$ast", $P113
.annotate 'line', 976
    get_hll_global $P113, "GLOBAL"
    nqp_get_package_through_who $P114, $P113, "PAST"
    get_who $P115, $P114
    set $P116, $P115["Node"]
    find_lex $P117, "$ast"
    unless_null $P117, vivify_602
    new $P117, "Undef"
  vivify_602:
    $P118 = $P116."ACCEPTS"($P117)
    isfalse $I101, $P118
    if $I101, if_1465
.annotate 'line', 979
    find_lex $P120, "$ast"
    unless_null $P120, vivify_603
    new $P120, "Undef"
  vivify_603:
    get_hll_global $P122, "GLOBAL"
    nqp_get_package_through_who $P123, $P122, "PAST"
    get_who $P124, $P123
    set $P125, $P124["Val"]
    $P126 = $P120."isa"($P125)
    if $P126, if_1466
.annotate 'line', 983
    find_lex $P127, "$lastlit"
    unless_null $P127, vivify_604
    new $P127, "Undef"
  vivify_604:
    set $S100, $P127
    isgt $I102, $S100, ""
    unless $I102, if_1467_end
    find_lex $P1468, "@parts"
    unless_null $P1468, vivify_605
    $P1468 = root_new ['parrot';'ResizablePMCArray']
  vivify_605:
    find_lex $P128, "$lastlit"
    unless_null $P128, vivify_606
    new $P128, "Undef"
  vivify_606:
    $P1468."push"($P128)
  if_1467_end:
.annotate 'line', 984
    find_lex $P1469, "@parts"
    unless_null $P1469, vivify_607
    $P1469 = root_new ['parrot';'ResizablePMCArray']
  vivify_607:
    find_lex $P127, "$ast"
    unless_null $P127, vivify_608
    new $P127, "Undef"
  vivify_608:
    $P1469."push"($P127)
.annotate 'line', 985
    new $P127, "String"
    assign $P127, ""
    store_lex "$lastlit", $P127
.annotate 'line', 982
    set $P119, $P127
.annotate 'line', 979
    goto if_1466_end
  if_1466:
.annotate 'line', 980
    find_lex $P127, "$lastlit"
    unless_null $P127, vivify_609
    new $P127, "Undef"
  vivify_609:
    find_lex $P128, "$ast"
    unless_null $P128, vivify_610
    new $P128, "Undef"
  vivify_610:
    $S100 = $P128."value"()
    concat $P129, $P127, $S100
    store_lex "$lastlit", $P129
.annotate 'line', 979
    set $P119, $P129
  if_1466_end:
    set $P112, $P119
.annotate 'line', 976
    goto if_1465_end
  if_1465:
.annotate 'line', 977
    find_lex $P119, "$lastlit"
    unless_null $P119, vivify_611
    new $P119, "Undef"
  vivify_611:
    find_lex $P120, "$ast"
    unless_null $P120, vivify_612
    new $P120, "Undef"
  vivify_612:
    concat $P121, $P119, $P120
    store_lex "$lastlit", $P121
.annotate 'line', 976
    set $P112, $P121
  if_1465_end:
.annotate 'line', 974
    .return ($P112)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_atom" :anon :subid("146_1321350743.52383") :outer("119_1321350743.52383")
    .param pmc param_1480
    .param pmc param_1481
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 996
    .lex "self", param_1480
    .lex "$/", param_1481
.annotate 'line', 997
    find_lex $P106, "$/"
    find_lex $P1483, "$/"
    unless_null $P1483, vivify_622
    $P1483 = root_new ['parrot';'Hash']
  vivify_622:
    set $P108, $P1483["quote_escape"]
    unless_null $P108, vivify_623
    new $P108, "Undef"
  vivify_623:
    if $P108, if_1482
    find_lex $P111, "$/"
    unless_null $P111, vivify_624
    new $P111, "Undef"
  vivify_624:
    set $S100, $P111
    new $P107, 'String'
    set $P107, $S100
    goto if_1482_end
  if_1482:
    find_lex $P1484, "$/"
    unless_null $P1484, vivify_625
    $P1484 = root_new ['parrot';'Hash']
  vivify_625:
    set $P109, $P1484["quote_escape"]
    unless_null $P109, vivify_626
    new $P109, "Undef"
  vivify_626:
    $P110 = $P109."ast"()
    set $P107, $P110
  if_1482_end:
    $P112 = $P106."!make"($P107)
.annotate 'line', 996
    .return ($P112)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<backslash>" :anon :subid("147_1321350743.52383") :outer("119_1321350743.52383")
    .param pmc param_1486
    .param pmc param_1487
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1000
    .lex "self", param_1486
    .lex "$/", param_1487
    find_lex $P106, "$/"
    $P107 = $P106."!make"("\\")
    .return ($P107)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<stopper>" :anon :subid("148_1321350743.52383") :outer("119_1321350743.52383")
    .param pmc param_1489
    .param pmc param_1490
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1001
    .lex "self", param_1489
    .lex "$/", param_1490
    find_lex $P106, "$/"
    find_lex $P1491, "$/"
    unless_null $P1491, vivify_627
    $P1491 = root_new ['parrot';'Hash']
  vivify_627:
    set $P107, $P1491["stopper"]
    unless_null $P107, vivify_628
    new $P107, "Undef"
  vivify_628:
    set $S100, $P107
    $P108 = $P106."!make"($S100)
    .return ($P108)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<bs>" :anon :subid("149_1321350743.52383") :outer("119_1321350743.52383")
    .param pmc param_1493
    .param pmc param_1494
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1003
    .lex "self", param_1493
    .lex "$/", param_1494
    find_lex $P106, "$/"
    $P107 = $P106."!make"("\b")
    .return ($P107)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<nl>" :anon :subid("150_1321350743.52383") :outer("119_1321350743.52383")
    .param pmc param_1496
    .param pmc param_1497
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1004
    .lex "self", param_1496
    .lex "$/", param_1497
    find_lex $P106, "$/"
    $P107 = $P106."!make"("\n")
    .return ($P107)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<cr>" :anon :subid("151_1321350743.52383") :outer("119_1321350743.52383")
    .param pmc param_1499
    .param pmc param_1500
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1005
    .lex "self", param_1499
    .lex "$/", param_1500
    find_lex $P106, "$/"
    $P107 = $P106."!make"("\r")
    .return ($P107)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<tab>" :anon :subid("152_1321350743.52383") :outer("119_1321350743.52383")
    .param pmc param_1502
    .param pmc param_1503
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1006
    .lex "self", param_1502
    .lex "$/", param_1503
    find_lex $P106, "$/"
    $P107 = $P106."!make"("\t")
    .return ($P107)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<ff>" :anon :subid("153_1321350743.52383") :outer("119_1321350743.52383")
    .param pmc param_1505
    .param pmc param_1506
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1007
    .lex "self", param_1505
    .lex "$/", param_1506
    find_lex $P106, "$/"
    $P107 = $P106."!make"("\f")
    .return ($P107)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<esc>" :anon :subid("154_1321350743.52383") :outer("119_1321350743.52383")
    .param pmc param_1508
    .param pmc param_1509
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1008
    .lex "self", param_1508
    .lex "$/", param_1509
    find_lex $P106, "$/"
    $P107 = $P106."!make"("\e")
    .return ($P107)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<hex>" :anon :subid("155_1321350743.52383") :outer("119_1321350743.52383")
    .param pmc param_1511
    .param pmc param_1512
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1010
    .lex "self", param_1511
    .lex "$/", param_1512
.annotate 'line', 1011
    find_lex $P106, "$/"
    find_lex $P107, "self"
    find_lex $P1514, "$/"
    unless_null $P1514, vivify_629
    $P1514 = root_new ['parrot';'Hash']
  vivify_629:
    set $P109, $P1514["hexint"]
    unless_null $P109, vivify_630
    new $P109, "Undef"
  vivify_630:
    if $P109, if_1513
    find_lex $P1516, "$/"
    unless_null $P1516, vivify_631
    $P1516 = root_new ['parrot';'Hash']
  vivify_631:
    set $P1517, $P1516["hexints"]
    unless_null $P1517, vivify_632
    $P1517 = root_new ['parrot';'Hash']
  vivify_632:
    set $P111, $P1517["hexint"]
    unless_null $P111, vivify_633
    new $P111, "Undef"
  vivify_633:
    set $P108, $P111
    goto if_1513_end
  if_1513:
    find_lex $P1515, "$/"
    unless_null $P1515, vivify_634
    $P1515 = root_new ['parrot';'Hash']
  vivify_634:
    set $P110, $P1515["hexint"]
    unless_null $P110, vivify_635
    new $P110, "Undef"
  vivify_635:
    set $P108, $P110
  if_1513_end:
    $P112 = $P107."ints_to_string"($P108)
    $P113 = $P106."!make"($P112)
.annotate 'line', 1010
    .return ($P113)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<oct>" :anon :subid("156_1321350743.52383") :outer("119_1321350743.52383")
    .param pmc param_1519
    .param pmc param_1520
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1014
    .lex "self", param_1519
    .lex "$/", param_1520
.annotate 'line', 1015
    find_lex $P106, "$/"
    find_lex $P107, "self"
    find_lex $P1522, "$/"
    unless_null $P1522, vivify_636
    $P1522 = root_new ['parrot';'Hash']
  vivify_636:
    set $P109, $P1522["octint"]
    unless_null $P109, vivify_637
    new $P109, "Undef"
  vivify_637:
    if $P109, if_1521
    find_lex $P1524, "$/"
    unless_null $P1524, vivify_638
    $P1524 = root_new ['parrot';'Hash']
  vivify_638:
    set $P1525, $P1524["octints"]
    unless_null $P1525, vivify_639
    $P1525 = root_new ['parrot';'Hash']
  vivify_639:
    set $P111, $P1525["octint"]
    unless_null $P111, vivify_640
    new $P111, "Undef"
  vivify_640:
    set $P108, $P111
    goto if_1521_end
  if_1521:
    find_lex $P1523, "$/"
    unless_null $P1523, vivify_641
    $P1523 = root_new ['parrot';'Hash']
  vivify_641:
    set $P110, $P1523["octint"]
    unless_null $P110, vivify_642
    new $P110, "Undef"
  vivify_642:
    set $P108, $P110
  if_1521_end:
    $P112 = $P107."ints_to_string"($P108)
    $P113 = $P106."!make"($P112)
.annotate 'line', 1014
    .return ($P113)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<chr>" :anon :subid("157_1321350743.52383") :outer("119_1321350743.52383")
    .param pmc param_1527
    .param pmc param_1528
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1018
    .lex "self", param_1527
    .lex "$/", param_1528
.annotate 'line', 1019
    find_lex $P106, "$/"
    find_lex $P1529, "$/"
    unless_null $P1529, vivify_643
    $P1529 = root_new ['parrot';'Hash']
  vivify_643:
    set $P107, $P1529["charspec"]
    unless_null $P107, vivify_644
    new $P107, "Undef"
  vivify_644:
    $P108 = $P107."ast"()
    $P109 = $P106."!make"($P108)
.annotate 'line', 1018
    .return ($P109)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<0>" :anon :subid("158_1321350743.52383") :outer("119_1321350743.52383")
    .param pmc param_1531
    .param pmc param_1532
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1022
    .lex "self", param_1531
    .lex "$/", param_1532
.annotate 'line', 1023
    find_lex $P106, "$/"
    $P107 = $P106."!make"(unicode:"\x{0}")
.annotate 'line', 1022
    .return ($P107)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<misc>" :anon :subid("159_1321350743.52383") :outer("119_1321350743.52383")
    .param pmc param_1534
    .param pmc param_1535
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1026
    .lex "self", param_1534
    .lex "$/", param_1535
.annotate 'line', 1027
    find_lex $P106, "$/"
    find_lex $P1537, "$/"
    unless_null $P1537, vivify_645
    $P1537 = root_new ['parrot';'Hash']
  vivify_645:
    set $P108, $P1537["textq"]
    unless_null $P108, vivify_646
    new $P108, "Undef"
  vivify_646:
    if $P108, if_1536
    find_lex $P1539, "$/"
    unless_null $P1539, vivify_647
    $P1539 = root_new ['parrot';'Hash']
  vivify_647:
    set $P112, $P1539["textqq"]
    unless_null $P112, vivify_648
    new $P112, "Undef"
  vivify_648:
    $P113 = $P112."Str"()
    set $P107, $P113
    goto if_1536_end
  if_1536:
    new $P109, "String"
    assign $P109, "\\"
    find_lex $P1538, "$/"
    unless_null $P1538, vivify_649
    $P1538 = root_new ['parrot';'Hash']
  vivify_649:
    set $P110, $P1538["textq"]
    unless_null $P110, vivify_650
    new $P110, "Undef"
  vivify_650:
    $S100 = $P110."Str"()
    concat $P111, $P109, $S100
    set $P107, $P111
  if_1536_end:
    $P114 = $P106."!make"($P107)
.annotate 'line', 1026
    .return ($P114)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "charname" :anon :subid("160_1321350743.52383") :outer("119_1321350743.52383")
    .param pmc param_1541
    .param pmc param_1542
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1030
    .lex "self", param_1541
    .lex "$/", param_1542
.annotate 'line', 1031
    new $P106, "Undef"
    set $P1543, $P106
    .lex "$codepoint", $P1543
.annotate 'line', 1032
    find_lex $P1545, "$/"
    unless_null $P1545, vivify_651
    $P1545 = root_new ['parrot';'Hash']
  vivify_651:
    set $P108, $P1545["integer"]
    unless_null $P108, vivify_652
    new $P108, "Undef"
  vivify_652:
    if $P108, if_1544
.annotate 'line', 1033
    find_lex $P111, "$/"
    unless_null $P111, vivify_653
    new $P111, "Undef"
  vivify_653:
    set $S100, $P111
    find_codepoint $I100, $S100
    new $P107, 'Integer'
    set $P107, $I100
.annotate 'line', 1032
    goto if_1544_end
  if_1544:
    find_lex $P1546, "$/"
    unless_null $P1546, vivify_654
    $P1546 = root_new ['parrot';'Hash']
  vivify_654:
    set $P109, $P1546["integer"]
    unless_null $P109, vivify_655
    new $P109, "Undef"
  vivify_655:
    $P110 = $P109."ast"()
    set $P107, $P110
  if_1544_end:
    store_lex "$codepoint", $P107
.annotate 'line', 1034
    find_lex $P107, "$codepoint"
    unless_null $P107, vivify_656
    new $P107, "Undef"
  vivify_656:
    set $N100, $P107
    set $N101, 0
    islt $I100, $N100, $N101
    unless $I100, if_1547_end
    find_lex $P108, "$/"
    unless_null $P108, vivify_657
    new $P108, "Undef"
  vivify_657:
    $P109 = $P108."CURSOR"()
    new $P110, 'String'
    set $P110, "Unrecognized character name "
    find_lex $P111, "$/"
    unless_null $P111, vivify_658
    new $P111, "Undef"
  vivify_658:
    concat $P112, $P110, $P111
    $P109."panic"($P112)
  if_1547_end:
.annotate 'line', 1035
    find_lex $P107, "$/"
    find_lex $P108, "$codepoint"
    unless_null $P108, vivify_659
    new $P108, "Undef"
  vivify_659:
    set $I100, $P108
    chr $S100, $I100
    $P109 = $P107."!make"($S100)
.annotate 'line', 1030
    .return ($P109)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "charnames" :anon :subid("161_1321350743.52383") :outer("119_1321350743.52383")
    .param pmc param_1549
    .param pmc param_1550
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1038
    .const 'Sub' $P1554 = "162_1321350743.52383" 
    capture_lex $P1554
    .lex "self", param_1549
    .lex "$/", param_1550
.annotate 'line', 1039
    new $P106, "Undef"
    set $P1551, $P106
    .lex "$str", $P1551
    new $P107, "String"
    assign $P107, ""
    store_lex "$str", $P107
.annotate 'line', 1040
    find_lex $P1552, "$/"
    unless_null $P1552, vivify_660
    $P1552 = root_new ['parrot';'Hash']
  vivify_660:
    set $P108, $P1552["charname"]
    unless_null $P108, vivify_661
    new $P108, "Undef"
  vivify_661:
    defined $I100, $P108
    unless $I100, for_undef_662
    iter $P107, $P108
    new $P110, 'ExceptionHandler'
    set_label $P110, loop1556_handler
    $P110."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P110
  loop1556_test:
    unless $P107, loop1556_done
    shift $P109, $P107
  loop1556_redo:
    .const 'Sub' $P1554 = "162_1321350743.52383" 
    capture_lex $P1554
    $P1554($P109)
  loop1556_next:
    goto loop1556_test
  loop1556_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P111, exception, 'type'
    eq $P111, .CONTROL_LOOP_NEXT, loop1556_next
    eq $P111, .CONTROL_LOOP_REDO, loop1556_redo
  loop1556_done:
    pop_eh 
  for_undef_662:
.annotate 'line', 1041
    find_lex $P107, "$/"
    find_lex $P108, "$str"
    unless_null $P108, vivify_665
    new $P108, "Undef"
  vivify_665:
    $P109 = $P107."!make"($P108)
.annotate 'line', 1038
    .return ($P109)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1553"  :anon :subid("162_1321350743.52383") :outer("161_1321350743.52383")
    .param pmc param_1555
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1040
    .lex "$_", param_1555
    find_lex $P110, "$str"
    unless_null $P110, vivify_663
    new $P110, "Undef"
  vivify_663:
    find_lex $P111, "$_"
    unless_null $P111, vivify_664
    new $P111, "Undef"
  vivify_664:
    $S100 = $P111."ast"()
    concat $P112, $P110, $S100
    store_lex "$str", $P112
    .return ($P112)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "charspec" :anon :subid("163_1321350743.52383") :outer("119_1321350743.52383")
    .param pmc param_1558
    .param pmc param_1559
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1044
    .lex "self", param_1558
    .lex "$/", param_1559
.annotate 'line', 1045
    find_lex $P106, "$/"
    find_lex $P1561, "$/"
    unless_null $P1561, vivify_666
    $P1561 = root_new ['parrot';'Hash']
  vivify_666:
    set $P108, $P1561["charnames"]
    unless_null $P108, vivify_667
    new $P108, "Undef"
  vivify_667:
    if $P108, if_1560
    find_lex $P111, "$/"
    unless_null $P111, vivify_668
    new $P111, "Undef"
  vivify_668:
    $I100 = "string_to_int"($P111, 10)
    chr $S100, $I100
    new $P107, 'String'
    set $P107, $S100
    goto if_1560_end
  if_1560:
    find_lex $P1562, "$/"
    unless_null $P1562, vivify_669
    $P1562 = root_new ['parrot';'Hash']
  vivify_669:
    set $P109, $P1562["charnames"]
    unless_null $P109, vivify_670
    new $P109, "Undef"
  vivify_670:
    $P110 = $P109."ast"()
    set $P107, $P110
  if_1560_end:
    $P112 = $P106."!make"($P107)
.annotate 'line', 1044
    .return ($P112)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1564"  :subid("164_1321350743.52383") :outer("10_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1058
    .const 'Sub' $P2212 = "244_1321350743.52383" 
    capture_lex $P2212
    .const 'Sub' $P2188 = "242_1321350743.52383" 
    capture_lex $P2188
    .const 'Sub' $P2154 = "239_1321350743.52383" 
    capture_lex $P2154
    .const 'Sub' $P2141 = "237_1321350743.52383" 
    capture_lex $P2141
    .const 'Sub' $P2123 = "234_1321350743.52383" 
    capture_lex $P2123
    .const 'Sub' $P2111 = "231_1321350743.52383" 
    capture_lex $P2111
    .const 'Sub' $P2100 = "230_1321350743.52383" 
    capture_lex $P2100
    .const 'Sub' $P2096 = "229_1321350743.52383" 
    capture_lex $P2096
    .const 'Sub' $P2084 = "227_1321350743.52383" 
    capture_lex $P2084
    .const 'Sub' $P2079 = "226_1321350743.52383" 
    capture_lex $P2079
    .const 'Sub' $P2074 = "225_1321350743.52383" 
    capture_lex $P2074
    .const 'Sub' $P2072 = "224_1321350743.52383" 
    capture_lex $P2072
    .const 'Sub' $P2067 = "223_1321350743.52383" 
    capture_lex $P2067
    .const 'Sub' $P2061 = "222_1321350743.52383" 
    capture_lex $P2061
    .const 'Sub' $P2032 = "219_1321350743.52383" 
    capture_lex $P2032
    .const 'Sub' $P2006 = "216_1321350743.52383" 
    capture_lex $P2006
    .const 'Sub' $P1953 = "212_1321350743.52383" 
    capture_lex $P1953
    .const 'Sub' $P1927 = "209_1321350743.52383" 
    capture_lex $P1927
    .const 'Sub' $P1841 = "203_1321350743.52383" 
    capture_lex $P1841
    .const 'Sub' $P1821 = "202_1321350743.52383" 
    capture_lex $P1821
    .const 'Sub' $P1813 = "201_1321350743.52383" 
    capture_lex $P1813
    .const 'Sub' $P1809 = "200_1321350743.52383" 
    capture_lex $P1809
    .const 'Sub' $P1807 = "199_1321350743.52383" 
    capture_lex $P1807
    .const 'Sub' $P1805 = "198_1321350743.52383" 
    capture_lex $P1805
    .const 'Sub' $P1799 = "197_1321350743.52383" 
    capture_lex $P1799
    .const 'Sub' $P1793 = "196_1321350743.52383" 
    capture_lex $P1793
    .const 'Sub' $P1785 = "195_1321350743.52383" 
    capture_lex $P1785
    .const 'Sub' $P1781 = "194_1321350743.52383" 
    capture_lex $P1781
    .const 'Sub' $P1778 = "193_1321350743.52383" 
    capture_lex $P1778
    .const 'Sub' $P1760 = "191_1321350743.52383" 
    capture_lex $P1760
    .const 'Sub' $P1692 = "184_1321350743.52383" 
    capture_lex $P1692
    .const 'Sub' $P1688 = "183_1321350743.52383" 
    capture_lex $P1688
    .const 'Sub' $P1658 = "178_1321350743.52383" 
    capture_lex $P1658
    .const 'Sub' $P1644 = "176_1321350743.52383" 
    capture_lex $P1644
    .const 'Sub' $P1641 = "175_1321350743.52383" 
    capture_lex $P1641
    .const 'Sub' $P1638 = "174_1321350743.52383" 
    capture_lex $P1638
    .const 'Sub' $P1634 = "173_1321350743.52383" 
    capture_lex $P1634
    .const 'Sub' $P1627 = "172_1321350743.52383" 
    capture_lex $P1627
    .const 'Sub' $P1585 = "169_1321350743.52383" 
    capture_lex $P1585
    .const 'Sub' $P1578 = "167_1321350743.52383" 
    capture_lex $P1578
    .const 'Sub' $P1575 = "166_1321350743.52383" 
    capture_lex $P1575
    .const 'Sub' $P1567 = "165_1321350743.52383" 
    capture_lex $P1567
.annotate 'line', 1091
    .const 'Sub' $P1567 = "165_1321350743.52383" 
    newclosure $P1571, $P1567
    set $P1566, $P1571
    .lex "value_type", $P1566
.annotate 'line', 1058
    .lex "$?PACKAGE", $P1572
    .lex "$?CLASS", $P1573
    find_lex $P102, "$?PACKAGE"
    get_who $P103, $P102
    set $P1574, $P103["%parrot_config"]
    unless_null $P1574, vivify_673
    $P1574 = root_new ['parrot';'Hash']
  vivify_673:
    find_lex $P102, "value_type"
.annotate 'line', 1647
    .const 'Sub' $P2212 = "244_1321350743.52383" 
    newclosure $P2217, $P2212
.annotate 'line', 1058
    .return ($P2217)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "value_type"  :subid("165_1321350743.52383") :outer("164_1321350743.52383")
    .param pmc param_1568
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1091
    .lex "$value", param_1568
.annotate 'line', 1092
    find_lex $P102, "$value"
    unless_null $P102, vivify_671
    new $P102, "Undef"
  vivify_671:
    isa $I100, $P102, "NameSpace"
    if $I100, if_1569
.annotate 'line', 1094
    find_lex $P105, "$value"
    unless_null $P105, vivify_672
    new $P105, "Undef"
  vivify_672:
    isa $I101, $P105, "Sub"
    if $I101, if_1570
    new $P107, "String"
    assign $P107, "var"
    set $P104, $P107
    goto if_1570_end
  if_1570:
    new $P106, "String"
    assign $P106, "sub"
    set $P104, $P106
  if_1570_end:
    set $P101, $P104
.annotate 'line', 1092
    goto if_1569_end
  if_1569:
    new $P103, "String"
    assign $P103, "namespace"
    set $P101, $P103
  if_1569_end:
.annotate 'line', 1091
    .return ($P101)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "new" :anon :subid("166_1321350743.52383") :outer("164_1321350743.52383")
    .param pmc param_1576
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1071
    .lex "self", param_1576
.annotate 'line', 1072
    new $P102, "Undef"
    set $P1577, $P102
    .lex "$obj", $P1577
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
.sub "BUILD" :anon :subid("167_1321350743.52383") :outer("164_1321350743.52383")
    .param pmc param_1579
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1077
    .const 'Sub' $P1582 = "168_1321350743.52383" 
    capture_lex $P1582
    .lex "self", param_1579
.annotate 'line', 1079
    split $P102, " ", "parse past post pir evalpmc"
    find_lex $P103, "self"
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    repr_bind_attr_obj $P104, $P105, "@!stages", 0, $P102
.annotate 'line', 1082
    split $P102, " ", "e=s help|h target=s dumper=s trace|t=s encoding=s output|o=s combine version|v show-config stagestats ll-exception nqpevent=s rxtrace"
    find_lex $P103, "self"
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    repr_bind_attr_obj $P104, $P105, "@!cmdoptions", 3, $P102
.annotate 'line', 1083
    new $P102, "String"
    assign $P102, "This compiler is based on HLL::Compiler.\n\nOptions:\n"
    find_lex $P103, "self"
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    repr_bind_attr_obj $P104, $P105, "$!usage", 4, $P102
.annotate 'line', 1084
    find_lex $P103, "self"
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    repr_get_attr_obj $P1580, $P104, $P105, "@!cmdoptions", 3
    unless_null $P1580, vivify_676
    $P1580 = root_new ['parrot';'ResizablePMCArray']
  vivify_676:
    defined $I100, $P1580
    unless $I100, for_undef_677
    iter $P102, $P1580
    new $P107, 'ExceptionHandler'
    set_label $P107, loop1584_handler
    $P107."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P107
  loop1584_test:
    unless $P102, loop1584_done
    shift $P106, $P102
  loop1584_redo:
    .const 'Sub' $P1582 = "168_1321350743.52383" 
    capture_lex $P1582
    $P1582($P106)
  loop1584_next:
    goto loop1584_test
  loop1584_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P108, exception, 'type'
    eq $P108, .CONTROL_LOOP_NEXT, loop1584_next
    eq $P108, .CONTROL_LOOP_REDO, loop1584_redo
  loop1584_done:
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
    repr_bind_attr_obj $P104, $P105, "%!config", 7, $P102
.annotate 'line', 1077
    .return ($P102)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1581"  :anon :subid("168_1321350743.52383") :outer("167_1321350743.52383")
    .param pmc param_1583
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1084
    .lex "$_", param_1583
.annotate 'line', 1085
    find_lex $P107, "self"
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    repr_get_attr_obj $P110, $P108, $P109, "$!usage", 4
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
    repr_bind_attr_obj $P117, $P118, "$!usage", 4, $P115
.annotate 'line', 1084
    .return ($P115)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "get_exports" :anon :subid("169_1321350743.52383") :outer("164_1321350743.52383")
    .param pmc param_1586
    .param pmc param_1587
    .param pmc param_1589 :slurpy
    .param pmc param_1588 :optional :named("tagset")
    .param int has_param_1588 :opt_flag
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1097
    .const 'Sub' $P1620 = "171_1321350743.52383" 
    capture_lex $P1620
    .const 'Sub' $P1611 = "170_1321350743.52383" 
    capture_lex $P1611
    .lex "self", param_1586
    .lex "$module", param_1587
    if has_param_1588, optparam_681
    new $P102, "Undef"
    set param_1588, $P102
  optparam_681:
    .lex "$tagset", param_1588
    .lex "@symbols", param_1589
.annotate 'line', 1104
    $P1591 = root_new ['parrot';'Hash']
    set $P1590, $P1591
    .lex "%exports", $P1590
.annotate 'line', 1105
    $P1593 = root_new ['parrot';'Hash']
    set $P1592, $P1593
    .lex "%source", $P1592
.annotate 'line', 1099
    find_lex $P103, "$module"
    unless_null $P103, vivify_682
    new $P103, "Undef"
  vivify_682:
    does $I100, $P103, "hash"
    new $P104, 'Integer'
    set $P104, $I100
    isfalse $I101, $P104
    unless $I101, if_1594_end
.annotate 'line', 1100
    find_lex $P105, "self"
    find_lex $P106, "$module"
    unless_null $P106, vivify_683
    new $P106, "Undef"
  vivify_683:
    $P107 = $P105."get_module"($P106)
    store_lex "$module", $P107
  if_1594_end:
.annotate 'line', 1103
    find_lex $P103, "$tagset"
    unless_null $P103, vivify_684
    new $P103, "Undef"
  vivify_684:
    set $P1595, $P103
    defined $I1597, $P1595
    if $I1597, default_1596
    find_lex $P1599, "@symbols"
    unless_null $P1599, vivify_685
    $P1599 = root_new ['parrot';'ResizablePMCArray']
  vivify_685:
    if $P1599, if_1598
    new $P106, "String"
    assign $P106, "DEFAULT"
    set $P104, $P106
    goto if_1598_end
  if_1598:
    new $P105, "String"
    assign $P105, "ALL"
    set $P104, $P105
  if_1598_end:
    set $P1595, $P104
  default_1596:
    store_lex "$tagset", $P1595
.annotate 'line', 1097
    find_lex $P1600, "%exports"
    unless_null $P1600, vivify_686
    $P1600 = root_new ['parrot';'Hash']
  vivify_686:
.annotate 'line', 1105
    find_lex $P103, "$tagset"
    unless_null $P103, vivify_687
    new $P103, "Undef"
  vivify_687:
    set $S100, $P103
    find_lex $P1601, "$module"
    unless_null $P1601, vivify_688
    $P1601 = root_new ['parrot';'Hash']
  vivify_688:
    set $P1602, $P1601["EXPORT"]
    unless_null $P1602, vivify_689
    $P1602 = root_new ['parrot';'Hash']
  vivify_689:
    set $P104, $P1602[$S100]
    unless_null $P104, vivify_690
    new $P104, "Undef"
  vivify_690:
    store_lex "%source", $P104
.annotate 'line', 1106
    find_lex $P1604, "%source"
    unless_null $P1604, vivify_691
    $P1604 = root_new ['parrot';'Hash']
  vivify_691:
    defined $I100, $P1604
    new $P103, 'Integer'
    set $P103, $I100
    isfalse $I101, $P103
    unless $I101, if_1603_end
.annotate 'line', 1107
    find_lex $P105, "$tagset"
    unless_null $P105, vivify_692
    new $P105, "Undef"
  vivify_692:
    set $S100, $P105
    iseq $I102, $S100, "ALL"
    if $I102, if_1605
    $P1606 = root_new ['parrot';'Hash']
    set $P104, $P1606
    goto if_1605_end
  if_1605:
    find_lex $P106, "$module"
    unless_null $P106, vivify_693
    new $P106, "Undef"
  vivify_693:
    set $P104, $P106
  if_1605_end:
    store_lex "%source", $P104
  if_1603_end:
.annotate 'line', 1109
    find_lex $P1608, "@symbols"
    unless_null $P1608, vivify_694
    $P1608 = root_new ['parrot';'ResizablePMCArray']
  vivify_694:
    if $P1608, if_1607
.annotate 'line', 1116
    find_lex $P1618, "%source"
    unless_null $P1618, vivify_695
    $P1618 = root_new ['parrot';'Hash']
  vivify_695:
    defined $I100, $P1618
    unless $I100, for_undef_696
    iter $P103, $P1618
    new $P107, 'ExceptionHandler'
    set_label $P107, loop1625_handler
    $P107."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P107
  loop1625_test:
    unless $P103, loop1625_done
    shift $P104, $P103
  loop1625_redo:
    .const 'Sub' $P1620 = "171_1321350743.52383" 
    capture_lex $P1620
    $P1620($P104)
  loop1625_next:
    goto loop1625_test
  loop1625_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P108, exception, 'type'
    eq $P108, .CONTROL_LOOP_NEXT, loop1625_next
    eq $P108, .CONTROL_LOOP_REDO, loop1625_redo
  loop1625_done:
    pop_eh 
  for_undef_696:
.annotate 'line', 1115
    goto if_1607_end
  if_1607:
.annotate 'line', 1110
    find_lex $P1609, "@symbols"
    unless_null $P1609, vivify_703
    $P1609 = root_new ['parrot';'ResizablePMCArray']
  vivify_703:
    defined $I100, $P1609
    unless $I100, for_undef_704
    iter $P103, $P1609
    new $P107, 'ExceptionHandler'
    set_label $P107, loop1617_handler
    $P107."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P107
  loop1617_test:
    unless $P103, loop1617_done
    shift $P104, $P103
  loop1617_redo:
    .const 'Sub' $P1611 = "170_1321350743.52383" 
    capture_lex $P1611
    $P1611($P104)
  loop1617_next:
    goto loop1617_test
  loop1617_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P108, exception, 'type'
    eq $P108, .CONTROL_LOOP_NEXT, loop1617_next
    eq $P108, .CONTROL_LOOP_REDO, loop1617_redo
  loop1617_done:
    pop_eh 
  for_undef_704:
  if_1607_end:
.annotate 'line', 1097
    find_lex $P1626, "%exports"
    unless_null $P1626, vivify_713
    $P1626 = root_new ['parrot';'Hash']
  vivify_713:
    .return ($P1626)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1619"  :anon :subid("171_1321350743.52383") :outer("169_1321350743.52383")
    .param pmc param_1622
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1117
    new $P105, "Undef"
    set $P1621, $P105
    .lex "$value", $P1621
    .lex "$_", param_1622
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
    find_lex $P1623, "%exports"
    unless_null $P1623, vivify_701
    $P1623 = root_new ['parrot';'Hash']
    store_lex "%exports", $P1623
  vivify_701:
    set $P1624, $P1623[$P110]
    unless_null $P1624, vivify_702
    $P1624 = root_new ['parrot';'Hash']
    set $P1623[$P110], $P1624
  vivify_702:
    set $P1624[$P108], $P106
.annotate 'line', 1116
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1610"  :anon :subid("170_1321350743.52383") :outer("169_1321350743.52383")
    .param pmc param_1613
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1111
    new $P105, "Undef"
    set $P1612, $P105
    .lex "$value", $P1612
    .lex "$_", param_1613
    find_lex $P106, "$_"
    unless_null $P106, vivify_705
    new $P106, "Undef"
  vivify_705:
    set $S100, $P106
    find_lex $P1614, "%source"
    unless_null $P1614, vivify_706
    $P1614 = root_new ['parrot';'Hash']
  vivify_706:
    set $P107, $P1614[$S100]
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
    find_lex $P1615, "%exports"
    unless_null $P1615, vivify_711
    $P1615 = root_new ['parrot';'Hash']
    store_lex "%exports", $P1615
  vivify_711:
    set $P1616, $P1615[$P109]
    unless_null $P1616, vivify_712
    $P1616 = root_new ['parrot';'Hash']
    set $P1615[$P109], $P1616
  vivify_712:
    set $P1616[$P107], $P106
.annotate 'line', 1110
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "get_module" :anon :subid("172_1321350743.52383") :outer("164_1321350743.52383")
    .param pmc param_1628
    .param pmc param_1629
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1124
    .lex "self", param_1628
    .lex "$name", param_1629
.annotate 'line', 1125
    $P1631 = root_new ['parrot';'ResizablePMCArray']
    set $P1630, $P1631
    .lex "@name", $P1630
    find_lex $P102, "self"
    find_lex $P103, "$name"
    unless_null $P103, vivify_714
    new $P103, "Undef"
  vivify_714:
    $P104 = $P102."parse_name"($P103)
    store_lex "@name", $P104
.annotate 'line', 1126
    find_lex $P1632, "@name"
    unless_null $P1632, vivify_715
    $P1632 = root_new ['parrot';'ResizablePMCArray']
  vivify_715:
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_get_attr_obj $P105, $P103, $P104, "$!language", 6
    unless_null $P105, vivify_716
    new $P105, "Undef"
  vivify_716:
    set $S100, $P105
    downcase $S101, $S100
    $P1632."unshift"($S101)
.annotate 'line', 1127
    find_lex $P1633, "@name"
    unless_null $P1633, vivify_717
    $P1633 = root_new ['parrot';'ResizablePMCArray']
  vivify_717:
    get_root_namespace $P102, $P1633
.annotate 'line', 1124
    .return ($P102)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "language" :anon :subid("173_1321350743.52383") :outer("164_1321350743.52383")
    .param pmc param_1635
    .param pmc param_1636 :optional
    .param int has_param_1636 :opt_flag
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1130
    .lex "self", param_1635
    if has_param_1636, optparam_718
    new $P102, "Undef"
    set param_1636, $P102
  optparam_718:
    .lex "$name", param_1636
.annotate 'line', 1131
    find_lex $P103, "$name"
    unless_null $P103, vivify_719
    new $P103, "Undef"
  vivify_719:
    unless $P103, if_1637_end
.annotate 'line', 1132
    find_lex $P104, "$name"
    unless_null $P104, vivify_720
    new $P104, "Undef"
  vivify_720:
    find_lex $P105, "self"
    nqp_decontainerize $P106, $P105
    find_lex $P107, "$?CLASS"
    repr_bind_attr_obj $P106, $P107, "$!language", 6, $P104
.annotate 'line', 1133
    find_lex $P104, "$name"
    unless_null $P104, vivify_721
    new $P104, "Undef"
  vivify_721:
    set $S100, $P104
    find_lex $P105, "self"
    compreg $S100, $P105
  if_1637_end:
.annotate 'line', 1130
    find_lex $P103, "self"
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    repr_get_attr_obj $P106, $P104, $P105, "$!language", 6
    unless_null $P106, vivify_722
    new $P106, "Undef"
  vivify_722:
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "compiler" :anon :subid("174_1321350743.52383") :outer("164_1321350743.52383")
    .param pmc param_1639
    .param pmc param_1640
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1138
    .lex "self", param_1639
    .lex "$name", param_1640
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
.sub "config" :anon :subid("175_1321350743.52383") :outer("164_1321350743.52383")
    .param pmc param_1642
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1142
    .lex "self", param_1642
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_get_attr_obj $P1643, $P103, $P104, "%!config", 7
    unless_null $P1643, vivify_724
    $P1643 = root_new ['parrot';'Hash']
  vivify_724:
    .return ($P1643)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "load_module" :anon :subid("176_1321350743.52383") :outer("164_1321350743.52383")
    .param pmc param_1645
    .param pmc param_1646
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1144
    .const 'Sub' $P1650 = "177_1321350743.52383" 
    capture_lex $P1650
    .lex "self", param_1645
    .lex "$name", param_1646
.annotate 'line', 1145
    new $P102, "Undef"
    set $P1647, $P102
    .lex "$base", $P1647
.annotate 'line', 1146
    new $P103, "Undef"
    set $P1648, $P103
    .lex "$loaded", $P1648
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
    .const 'Sub' $P1650 = "177_1321350743.52383" 
    capture_lex $P1650
    $P1650()
.annotate 'line', 1148
    find_lex $P104, "$loaded"
    unless_null $P104, vivify_727
    new $P104, "Undef"
  vivify_727:
    if $P104, unless_1657_end
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
  unless_1657_end:
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
.sub "_block1649"  :anon :subid("177_1321350743.52383") :outer("176_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1147
    new $P1653, 'ExceptionHandler'
    set_label $P1653, control_1652
    $P1653."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P1653
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
    goto skip_handler_1651
  control_1652:
    .local pmc exception 
    .get_results (exception) 
    new $P1655, 'Integer'
    set $P1655, 1
    set exception["handled"], $P1655
    set $I1656, exception["handled"]
    eq $I1656, 1, handled_1654
    rethrow exception
  handled_1654:
    .return (exception)
  skip_handler_1651:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "import" :anon :subid("178_1321350743.52383") :outer("164_1321350743.52383")
    .param pmc param_1659
    .param pmc param_1660
    .param pmc param_1661
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1152
    .const 'Sub' $P1664 = "179_1321350743.52383" 
    capture_lex $P1664
    .lex "self", param_1659
    .lex "$target", param_1660
    .lex "%exports", param_1661
.annotate 'line', 1153
    find_lex $P1662, "%exports"
    unless_null $P1662, vivify_730
    $P1662 = root_new ['parrot';'Hash']
  vivify_730:
    defined $I100, $P1662
    unless $I100, for_undef_731
    iter $P102, $P1662
    new $P106, 'ExceptionHandler'
    set_label $P106, loop1687_handler
    $P106."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P106
  loop1687_test:
    unless $P102, loop1687_done
    shift $P103, $P102
  loop1687_redo:
    .const 'Sub' $P1664 = "179_1321350743.52383" 
    capture_lex $P1664
    $P1664($P103)
  loop1687_next:
    goto loop1687_test
  loop1687_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P107, exception, 'type'
    eq $P107, .CONTROL_LOOP_NEXT, loop1687_next
    eq $P107, .CONTROL_LOOP_REDO, loop1687_redo
  loop1687_done:
    pop_eh 
  for_undef_731:
.annotate 'line', 1152
    .return ($P102)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1663"  :anon :subid("179_1321350743.52383") :outer("178_1321350743.52383")
    .param pmc param_1668
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1153
    .const 'Sub' $P1683 = "182_1321350743.52383" 
    capture_lex $P1683
    .const 'Sub' $P1678 = "181_1321350743.52383" 
    capture_lex $P1678
    .const 'Sub' $P1672 = "180_1321350743.52383" 
    capture_lex $P1672
.annotate 'line', 1154
    new $P104, "Undef"
    set $P1665, $P104
    .lex "$type", $P1665
.annotate 'line', 1155
    $P1667 = root_new ['parrot';'Hash']
    set $P1666, $P1667
    .lex "%items", $P1666
    .lex "$_", param_1668
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
    if $I101, if_1669
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
    if $I102, if_1675
.annotate 'line', 1163
    find_lex $P1681, "%items"
    unless_null $P1681, vivify_737
    $P1681 = root_new ['parrot';'Hash']
  vivify_737:
    defined $I103, $P1681
    unless $I103, for_undef_738
    iter $P117, $P1681
    new $P119, 'ExceptionHandler'
    set_label $P119, loop1686_handler
    $P119."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P119
  loop1686_test:
    unless $P117, loop1686_done
    shift $P118, $P117
  loop1686_redo:
    .const 'Sub' $P1683 = "182_1321350743.52383" 
    capture_lex $P1683
    $P1683($P118)
  loop1686_next:
    goto loop1686_test
  loop1686_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P121, exception, 'type'
    eq $P121, .CONTROL_LOOP_NEXT, loop1686_next
    eq $P121, .CONTROL_LOOP_REDO, loop1686_redo
  loop1686_done:
    pop_eh 
  for_undef_738:
.annotate 'line', 1162
    set $P111, $P117
.annotate 'line', 1159
    goto if_1675_end
  if_1675:
.annotate 'line', 1160
    find_lex $P1676, "%items"
    unless_null $P1676, vivify_742
    $P1676 = root_new ['parrot';'Hash']
  vivify_742:
    defined $I103, $P1676
    unless $I103, for_undef_743
    iter $P116, $P1676
    new $P118, 'ExceptionHandler'
    set_label $P118, loop1680_handler
    $P118."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P118
  loop1680_test:
    unless $P116, loop1680_done
    shift $P117, $P116
  loop1680_redo:
    .const 'Sub' $P1678 = "181_1321350743.52383" 
    capture_lex $P1678
    $P1678($P117)
  loop1680_next:
    goto loop1680_test
  loop1680_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P119, exception, 'type'
    eq $P119, .CONTROL_LOOP_NEXT, loop1680_next
    eq $P119, .CONTROL_LOOP_REDO, loop1680_redo
  loop1680_done:
    pop_eh 
  for_undef_743:
.annotate 'line', 1159
    set $P111, $P116
  if_1675_end:
    set $P105, $P111
.annotate 'line', 1156
    goto if_1669_end
  if_1669:
.annotate 'line', 1157
    find_lex $P1670, "%items"
    unless_null $P1670, vivify_748
    $P1670 = root_new ['parrot';'Hash']
  vivify_748:
    defined $I102, $P1670
    unless $I102, for_undef_749
    iter $P110, $P1670
    new $P112, 'ExceptionHandler'
    set_label $P112, loop1674_handler
    $P112."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P112
  loop1674_test:
    unless $P110, loop1674_done
    shift $P111, $P110
  loop1674_redo:
    .const 'Sub' $P1672 = "180_1321350743.52383" 
    capture_lex $P1672
    $P1672($P111)
  loop1674_next:
    goto loop1674_test
  loop1674_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P113, exception, 'type'
    eq $P113, .CONTROL_LOOP_NEXT, loop1674_next
    eq $P113, .CONTROL_LOOP_REDO, loop1674_redo
  loop1674_done:
    pop_eh 
  for_undef_749:
.annotate 'line', 1156
    set $P105, $P110
  if_1669_end:
.annotate 'line', 1153
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1682"  :anon :subid("182_1321350743.52383") :outer("179_1321350743.52383")
    .param pmc param_1684
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1163
    .lex "$_", param_1684
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
    find_lex $P1685, "$target"
    unless_null $P1685, vivify_741
    $P1685 = root_new ['parrot';'Hash']
    store_lex "$target", $P1685
  vivify_741:
    set $P1685[$S102], $P120
    .return ($P120)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1677"  :anon :subid("181_1321350743.52383") :outer("179_1321350743.52383")
    .param pmc param_1679
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1160
    .lex "$_", param_1679
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
.sub "_block1671"  :anon :subid("180_1321350743.52383") :outer("179_1321350743.52383")
    .param pmc param_1673
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1157
    .lex "$_", param_1673
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
.sub "autoprint" :anon :subid("183_1321350743.52383") :outer("164_1321350743.52383")
    .param pmc param_1689
    .param pmc param_1690
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1168
    .lex "self", param_1689
    .lex "$value", param_1690
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
    unless $I100, unless_1691
    new $P102, 'Integer'
    set $P102, $I100
    goto unless_1691_end
  unless_1691:
.annotate 'line', 1169
    find_lex $P108, "$value"
    unless_null $P108, vivify_756
    new $P108, "Undef"
  vivify_756:
    set $S100, $P108
    say $S100
  unless_1691_end:
.annotate 'line', 1168
    .return ($P102)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "interactive" :anon :subid("184_1321350743.52383") :outer("164_1321350743.52383")
    .param pmc param_1693
    .param pmc param_1694 :slurpy :named
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1173
    .const 'Sub' $P1714 = "186_1321350743.52383" 
    capture_lex $P1714
    .const 'Sub' $P1696 = "185_1321350743.52383" 
    capture_lex $P1696
    .lex "self", param_1693
    .lex "%adverbs", param_1694
.annotate 'line', 1179
    .const 'Sub' $P1696 = "185_1321350743.52383" 
    newclosure $P1701, $P1696
    set $P1695, $P1701
    .lex "blank_context", $P1695
.annotate 'line', 1188
    new $P102, "Undef"
    set $P1702, $P102
    .lex "$interactive_ctx", $P1702
.annotate 'line', 1189
    $P1704 = root_new ['parrot';'Hash']
    set $P1703, $P1704
    .lex "%interactive_pad", $P1703
.annotate 'line', 1192
    new $P104, "Undef"
    set $P1705, $P104
    .lex "$target", $P1705
.annotate 'line', 1196
    new $P105, "Undef"
    set $P1706, $P105
    .lex "$stdin", $P1706
.annotate 'line', 1197
    new $P106, "Undef"
    set $P1707, $P106
    .lex "$encoding", $P1707
.annotate 'line', 1202
    new $P107, "Undef"
    set $P1708, $P107
    .lex "$save_ctx", $P1708
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
    find_lex $P1709, "%adverbs"
    unless_null $P1709, vivify_762
    $P1709 = root_new ['parrot';'Hash']
  vivify_762:
    set $P108, $P1709["target"]
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
    find_lex $P1710, "%adverbs"
    unless_null $P1710, vivify_764
    $P1710 = root_new ['parrot';'Hash']
  vivify_764:
    set $P108, $P1710["encoding"]
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
    if $P109, if_1712
    set $P108, $P109
    goto if_1712_end
  if_1712:
    find_lex $P110, "$encoding"
    unless_null $P110, vivify_767
    new $P110, "Undef"
  vivify_767:
    set $S100, $P110
    isne $I100, $S100, "fixed_8"
    new $P108, 'Integer'
    set $P108, $I100
  if_1712_end:
    unless $P108, if_1711_end
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
  if_1711_end:
.annotate 'line', 1173
    find_lex $P108, "$save_ctx"
    unless_null $P108, vivify_770
    new $P108, "Undef"
  vivify_770:
.annotate 'line', 1203
    new $P115, 'ExceptionHandler'
    set_label $P115, loop1759_handler
    $P115."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P115
  loop1759_test:
    new $P108, "Float"
    assign $P108, 1
    unless $P108, loop1759_done
  loop1759_redo:
    .const 'Sub' $P1714 = "186_1321350743.52383" 
    capture_lex $P1714
    $P1714()
  loop1759_next:
    goto loop1759_test
  loop1759_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P116, exception, 'type'
    eq $P116, .CONTROL_LOOP_NEXT, loop1759_next
    eq $P116, .CONTROL_LOOP_REDO, loop1759_redo
  loop1759_done:
    pop_eh 
.annotate 'line', 1173
    .return ($P108)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "blank_context"  :subid("185_1321350743.52383") :outer("184_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1181
    $P1698 = root_new ['parrot';'Hash']
    set $P1697, $P1698
    .lex "%blank_pad", $P1697
.annotate 'line', 1179
    find_lex $P1699, "%blank_pad"
    unless_null $P1699, vivify_757
    $P1699 = root_new ['parrot';'Hash']
  vivify_757:
.annotate 'line', 1183
    getinterp $P102
    set $P103, $P102["context"]
    unless_null $P103, vivify_758
    new $P103, "Undef"
  vivify_758:
    getattribute $P104, $P103, "lex_pad"
    find_lex $P1700, "%blank_pad"
    unless_null $P1700, vivify_759
    $P1700 = root_new ['parrot';'Hash']
  vivify_759:
    copy $P104, $P1700
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
.sub "_block1713"  :anon :subid("186_1321350743.52383") :outer("184_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1203
    .const 'Sub' $P1728 = "187_1321350743.52383" 
    capture_lex $P1728
.annotate 'line', 1206
    new $P109, "Undef"
    set $P1715, $P109
    .lex "$prompt", $P1715
.annotate 'line', 1207
    new $P110, "Undef"
    set $P1716, $P110
    .lex "$code", $P1716
.annotate 'line', 1216
    new $P111, "Undef"
    set $P1717, $P111
    .lex "$*AUTOPRINTPOS", $P1717
.annotate 'line', 1217
    new $P112, "Undef"
    set $P1718, $P112
    .lex "$*CTXSAVE", $P1718
.annotate 'line', 1218
    new $P113, "Undef"
    set $P1719, $P113
    .lex "$*MAIN_CTX", $P1719
.annotate 'line', 1204
    find_lex $P114, "$stdin"
    unless_null $P114, vivify_771
    new $P114, "Undef"
  vivify_771:
    if $P114, unless_1720_end
    die 0, .CONTROL_LOOP_LAST
  unless_1720_end:
.annotate 'line', 1206
    find_lex $P114, "self"
    $P115 = $P114."interactive_prompt"()
    set $P1721, $P115
    defined $I1723, $P1721
    if $I1723, default_1722
    new $P116, "String"
    assign $P116, "> "
    set $P1721, $P116
  default_1722:
    store_lex "$prompt", $P1721
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
    unless $I100, if_1724_end
    die 0, .CONTROL_LOOP_LAST
  if_1724_end:
.annotate 'line', 1210
    find_lex $P114, "$code"
    unless_null $P114, vivify_775
    new $P114, "Undef"
  vivify_775:
    defined $I100, $P114
    if $I100, unless_1725_end
.annotate 'line', 1211
    print "\n"
.annotate 'line', 1212
    die 0, .CONTROL_LOOP_LAST
  unless_1725_end:
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
    if $P115, if_1726
    set $P114, $P115
    goto if_1726_end
  if_1726:
    .const 'Sub' $P1728 = "187_1321350743.52383" 
    capture_lex $P1728
    $P118 = $P1728()
    set $P114, $P118
  if_1726_end:
.annotate 'line', 1203
    .return ($P114)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1727"  :anon :subid("187_1321350743.52383") :outer("186_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1220
    .const 'Sub' $P1751 = "190_1321350743.52383" 
    capture_lex $P1751
    .const 'Sub' $P1731 = "188_1321350743.52383" 
    capture_lex $P1731
.annotate 'line', 1222
    new $P116, "Undef"
    set $P1729, $P116
    .lex "$output", $P1729
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
    .const 'Sub' $P1731 = "188_1321350743.52383" 
    capture_lex $P1731
    $P1731()
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
    unless $I100, if_1749_end
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
    set_label $P126, loop1754_handler
    $P126."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P126
  loop1754_test:
    unless $P120, loop1754_done
    shift $P125, $P120
  loop1754_redo:
    .const 'Sub' $P1751 = "190_1321350743.52383" 
    capture_lex $P1751
    $P1751($P125)
  loop1754_next:
    goto loop1754_test
  loop1754_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P128, exception, 'type'
    eq $P128, .CONTROL_LOOP_NEXT, loop1754_next
    eq $P128, .CONTROL_LOOP_REDO, loop1754_redo
  loop1754_done:
    pop_eh 
  for_undef_789:
.annotate 'line', 1234
    find_lex $P120, "$interactive_ctx"
    unless_null $P120, vivify_793
    new $P120, "Undef"
  vivify_793:
    store_lex "$save_ctx", $P120
  if_1749_end:
.annotate 'line', 1236
    find_lex $P117, "$output"
    unless_null $P117, vivify_794
    new $P117, "Undef"
  vivify_794:
    isnull $I100, $P117
    unless $I100, if_1755_end
    die 0, .CONTROL_LOOP_NEXT
  if_1755_end:
.annotate 'line', 1238
    find_lex $P118, "$target"
    unless_null $P118, vivify_795
    new $P118, "Undef"
  vivify_795:
    isfalse $I100, $P118
    if $I100, if_1756
.annotate 'line', 1240
    find_lex $P120, "$target"
    unless_null $P120, vivify_796
    new $P120, "Undef"
  vivify_796:
    set $S100, $P120
    iseq $I101, $S100, "pir"
    if $I101, if_1757
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
    find_lex $P1758, "%adverbs"
    unless_null $P1758, vivify_799
    $P1758 = root_new ['parrot';'Hash']
  vivify_799:
    $P125 = $P122."dumper"($P123, $P124, $P1758 :flat)
.annotate 'line', 1242
    set $P119, $P125
.annotate 'line', 1240
    goto if_1757_end
  if_1757:
.annotate 'line', 1241
    find_lex $P122, "$output"
    unless_null $P122, vivify_800
    new $P122, "Undef"
  vivify_800:
    say $P122
  if_1757_end:
.annotate 'line', 1240
    set $P117, $P119
.annotate 'line', 1238
    goto if_1756_end
  if_1756:
.annotate 'line', 1239
    find_lex $P119, "self"
    find_lex $P120, "$output"
    unless_null $P120, vivify_801
    new $P120, "Undef"
  vivify_801:
    $P121 = $P119."autoprint"($P120)
.annotate 'line', 1238
    set $P117, $P121
  if_1756_end:
.annotate 'line', 1220
    .return ($P117)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1730"  :anon :subid("188_1321350743.52383") :outer("187_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1223
    .const 'Sub' $P1738 = "189_1321350743.52383" 
    capture_lex $P1738
    new $P1735, 'ExceptionHandler'
    set_label $P1735, control_1734
    $P1735."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P1735
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
    find_lex $P1732, "%adverbs"
    unless_null $P1732, vivify_783
    $P1732 = root_new ['parrot';'Hash']
  vivify_783:
    $P120 = $P117."eval"($P118, $P1732 :flat, $P119 :named("outer_ctx"))
    store_lex "$output", $P120
.annotate 'line', 1223
    pop_eh 
    goto skip_handler_1733
  control_1734:
.annotate 'line', 1225
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P1738 = "189_1321350743.52383" 
    newclosure $P1746, $P1738
    $P1746(exception)
    new $P1747, 'Integer'
    set $P1747, 1
    set exception["handled"], $P1747
    set $I1748, exception["handled"]
    eq $I1748, 1, handled_1736
    rethrow exception
  handled_1736:
    .return (exception)
  skip_handler_1733:
.annotate 'line', 1223
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1737"  :anon :subid("189_1321350743.52383") :outer("188_1321350743.52383")
    .param pmc param_1739
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1225
    .lex "$_", param_1739
    find_lex $P1740, "$_"
    set $P1741, $P1740
    .lex "$!", $P1741
.annotate 'line', 1226
    find_lex $P1742, "$!"
    unless_null $P1742, vivify_784
    new $P1742, "Undef"
  vivify_784:
    set $S1743, $P1742
    new $P1744, 'String'
    set $P1744, $S1743
    concat $P1745, $P1744, "\n"
    print $P1745
.annotate 'line', 1227
    die 0, .CONTROL_LOOP_NEXT
.annotate 'line', 1225
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1750"  :anon :subid("190_1321350743.52383") :outer("187_1321350743.52383")
    .param pmc param_1752
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1231
    .lex "$_", param_1752
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
    find_lex $P1753, "%interactive_pad"
    unless_null $P1753, vivify_792
    $P1753 = root_new ['parrot';'Hash']
    store_lex "%interactive_pad", $P1753
  vivify_792:
    set $P1753[$P129], $P127
.annotate 'line', 1231
    .return ($P127)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "eval" :anon :subid("191_1321350743.52383") :outer("164_1321350743.52383")
    .param pmc param_1761
    .param pmc param_1762
    .param pmc param_1763 :slurpy
    .param pmc param_1764 :slurpy :named
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1249
    .const 'Sub' $P1771 = "192_1321350743.52383" 
    capture_lex $P1771
    .lex "self", param_1761
    .lex "$code", param_1762
    .lex "@args", param_1763
    .lex "%adverbs", param_1764
.annotate 'line', 1250
    new $P102, "Undef"
    set $P1765, $P102
    .lex "$output", $P1765
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
    find_lex $P1766, "%adverbs"
    unless_null $P1766, vivify_804
    $P1766 = root_new ['parrot';'Hash']
  vivify_804:
    $P105 = $P103."compile"($P104, $P1766 :flat)
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
    if $I101, if_1768
    new $P103, 'Integer'
    set $P103, $I101
    goto if_1768_end
  if_1768:
.annotate 'line', 1254
    find_lex $P1769, "%adverbs"
    unless_null $P1769, vivify_806
    $P1769 = root_new ['parrot';'Hash']
  vivify_806:
    set $P106, $P1769["target"]
    unless_null $P106, vivify_807
    new $P106, "Undef"
  vivify_807:
    set $S100, $P106
    iseq $I102, $S100, ""
    new $P103, 'Integer'
    set $P103, $I102
  if_1768_end:
    unless $P103, if_1767_end
    .const 'Sub' $P1771 = "192_1321350743.52383" 
    capture_lex $P1771
    $P1771()
  if_1767_end:
.annotate 'line', 1249
    find_lex $P103, "$output"
    unless_null $P103, vivify_818
    new $P103, "Undef"
  vivify_818:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1770"  :anon :subid("192_1321350743.52383") :outer("191_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1255
    new $P107, "Undef"
    set $P1772, $P107
    .lex "$outer_ctx", $P1772
    find_lex $P1773, "%adverbs"
    unless_null $P1773, vivify_808
    $P1773 = root_new ['parrot';'Hash']
  vivify_808:
    set $P108, $P1773["outer_ctx"]
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
    unless $I103, if_1774_end
.annotate 'line', 1257
    new $P109, "Float"
    assign $P109, 0
    set $I104, $P109
    find_lex $P1775, "$output"
    unless_null $P1775, vivify_811
    $P1775 = root_new ['parrot';'ResizablePMCArray']
  vivify_811:
    set $P110, $P1775[$I104]
    unless_null $P110, vivify_812
    new $P110, "Undef"
  vivify_812:
    find_lex $P111, "$outer_ctx"
    unless_null $P111, vivify_813
    new $P111, "Undef"
  vivify_813:
    $P110."set_outer_ctx"($P111)
  if_1774_end:
.annotate 'line', 1260
    find_lex $P1776, "%adverbs"
    unless_null $P1776, vivify_814
    $P1776 = root_new ['parrot';'Hash']
  vivify_814:
    set $P108, $P1776["trace"]
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
    find_lex $P1777, "@args"
    unless_null $P1777, vivify_817
    $P1777 = root_new ['parrot';'ResizablePMCArray']
  vivify_817:
    $P109 = $P108($P1777 :flat)
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
.sub "ctxsave" :anon :subid("193_1321350743.52383") :outer("164_1321350743.52383")
    .param pmc param_1779
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1268
    .lex "self", param_1779
.annotate 'line', 1270

                $P0 = getinterp
                $P1780 = $P0['context';1]
            
    store_dynamic_lex "$*MAIN_CTX", $P1780
.annotate 'line', 1274
    new $P102, "Float"
    assign $P102, 0
    store_dynamic_lex "$*CTXSAVE", $P102
.annotate 'line', 1268
    .return ($P102)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "panic" :anon :subid("194_1321350743.52383") :outer("164_1321350743.52383")
    .param pmc param_1782
    .param pmc param_1783 :slurpy
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1277
    .lex "self", param_1782
    .lex "@args", param_1783
.annotate 'line', 1278
    find_lex $P1784, "@args"
    unless_null $P1784, vivify_819
    $P1784 = root_new ['parrot';'ResizablePMCArray']
  vivify_819:
    join $S100, "", $P1784
    die $S100
.annotate 'line', 1277
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "stages" :anon :subid("195_1321350743.52383") :outer("164_1321350743.52383")
    .param pmc param_1786
    .param pmc param_1787 :optional
    .param int has_param_1787 :opt_flag
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1281
    .lex "self", param_1786
    if has_param_1787, optparam_820
    $P1788 = root_new ['parrot';'ResizablePMCArray']
    set param_1787, $P1788
  optparam_820:
    .lex "@value", param_1787
.annotate 'line', 1282
    find_lex $P1790, "@value"
    unless_null $P1790, vivify_821
    $P1790 = root_new ['parrot';'ResizablePMCArray']
  vivify_821:
    set $N100, $P1790
    unless $N100, if_1789_end
.annotate 'line', 1283
    find_lex $P1791, "@value"
    unless_null $P1791, vivify_822
    $P1791 = root_new ['parrot';'ResizablePMCArray']
  vivify_822:
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_bind_attr_obj $P103, $P104, "@!stages", 0, $P1791
  if_1789_end:
.annotate 'line', 1281
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_get_attr_obj $P1792, $P103, $P104, "@!stages", 0
    unless_null $P1792, vivify_823
    $P1792 = root_new ['parrot';'ResizablePMCArray']
  vivify_823:
    .return ($P1792)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "parsegrammar" :anon :subid("196_1321350743.52383") :outer("164_1321350743.52383")
    .param pmc param_1794
    .param pmc param_1795 :slurpy
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1288
    .lex "self", param_1794
    .lex "@value", param_1795
.annotate 'line', 1289
    find_lex $P1797, "@value"
    unless_null $P1797, vivify_824
    $P1797 = root_new ['parrot';'ResizablePMCArray']
  vivify_824:
    set $N100, $P1797
    unless $N100, if_1796_end
.annotate 'line', 1290
    new $P102, "Float"
    assign $P102, 0
    set $I100, $P102
    find_lex $P1798, "@value"
    unless_null $P1798, vivify_825
    $P1798 = root_new ['parrot';'ResizablePMCArray']
  vivify_825:
    set $P103, $P1798[$I100]
    unless_null $P103, vivify_826
    new $P103, "Undef"
  vivify_826:
    find_lex $P104, "self"
    nqp_decontainerize $P105, $P104
    find_lex $P106, "$?CLASS"
    repr_bind_attr_obj $P105, $P106, "$!parsegrammar", 1, $P103
  if_1796_end:
.annotate 'line', 1288
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_get_attr_obj $P105, $P103, $P104, "$!parsegrammar", 1
    unless_null $P105, vivify_827
    new $P105, "Undef"
  vivify_827:
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "parseactions" :anon :subid("197_1321350743.52383") :outer("164_1321350743.52383")
    .param pmc param_1800
    .param pmc param_1801 :slurpy
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1295
    .lex "self", param_1800
    .lex "@value", param_1801
.annotate 'line', 1296
    find_lex $P1803, "@value"
    unless_null $P1803, vivify_828
    $P1803 = root_new ['parrot';'ResizablePMCArray']
  vivify_828:
    set $N100, $P1803
    unless $N100, if_1802_end
.annotate 'line', 1297
    new $P102, "Float"
    assign $P102, 0
    set $I100, $P102
    find_lex $P1804, "@value"
    unless_null $P1804, vivify_829
    $P1804 = root_new ['parrot';'ResizablePMCArray']
  vivify_829:
    set $P103, $P1804[$I100]
    unless_null $P103, vivify_830
    new $P103, "Undef"
  vivify_830:
    find_lex $P104, "self"
    nqp_decontainerize $P105, $P104
    find_lex $P106, "$?CLASS"
    repr_bind_attr_obj $P105, $P106, "$!parseactions", 2, $P103
  if_1802_end:
.annotate 'line', 1295
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_get_attr_obj $P105, $P103, $P104, "$!parseactions", 2
    unless_null $P105, vivify_831
    new $P105, "Undef"
  vivify_831:
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "interactive_banner" :anon :subid("198_1321350743.52383") :outer("164_1321350743.52383")
    .param pmc param_1806
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1302
    .lex "self", param_1806
    .return ("")
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "interactive_prompt" :anon :subid("199_1321350743.52383") :outer("164_1321350743.52383")
    .param pmc param_1808
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1304
    .lex "self", param_1808
    .return ("> ")
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "compiler_progname" :anon :subid("200_1321350743.52383") :outer("164_1321350743.52383")
    .param pmc param_1810
    .param pmc param_1811 :optional
    .param int has_param_1811 :opt_flag
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1306
    .lex "self", param_1810
    if has_param_1811, optparam_832
    new $P102, "Undef"
    set param_1811, $P102
  optparam_832:
    .lex "$value", param_1811
.annotate 'line', 1307
    find_lex $P103, "$value"
    unless_null $P103, vivify_833
    new $P103, "Undef"
  vivify_833:
    defined $I100, $P103
    unless $I100, if_1812_end
.annotate 'line', 1308
    find_lex $P104, "$value"
    unless_null $P104, vivify_834
    new $P104, "Undef"
  vivify_834:
    find_lex $P105, "self"
    nqp_decontainerize $P106, $P105
    find_lex $P107, "$?CLASS"
    repr_bind_attr_obj $P106, $P107, "$!compiler_progname", 5, $P104
  if_1812_end:
.annotate 'line', 1306
    find_lex $P103, "self"
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    repr_get_attr_obj $P106, $P104, $P105, "$!compiler_progname", 5
    unless_null $P106, vivify_835
    new $P106, "Undef"
  vivify_835:
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "commandline_options" :anon :subid("201_1321350743.52383") :outer("164_1321350743.52383")
    .param pmc param_1814
    .param pmc param_1815 :optional
    .param int has_param_1815 :opt_flag
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1313
    .lex "self", param_1814
    if has_param_1815, optparam_836
    $P1816 = root_new ['parrot';'ResizablePMCArray']
    set param_1815, $P1816
  optparam_836:
    .lex "@value", param_1815
.annotate 'line', 1314
    find_lex $P1818, "@value"
    unless_null $P1818, vivify_837
    $P1818 = root_new ['parrot';'ResizablePMCArray']
  vivify_837:
    set $N100, $P1818
    unless $N100, if_1817_end
.annotate 'line', 1315
    find_lex $P1819, "@value"
    unless_null $P1819, vivify_838
    $P1819 = root_new ['parrot';'ResizablePMCArray']
  vivify_838:
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_bind_attr_obj $P103, $P104, "@!cmdoptions", 3, $P1819
  if_1817_end:
.annotate 'line', 1313
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_get_attr_obj $P1820, $P103, $P104, "@!cmdoptions", 3
    unless_null $P1820, vivify_839
    $P1820 = root_new ['parrot';'ResizablePMCArray']
  vivify_839:
    .return ($P1820)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "command_line" :anon :subid("202_1321350743.52383") :outer("164_1321350743.52383")
    .param pmc param_1822
    .param pmc param_1823
    .param pmc param_1824 :slurpy :named
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1320
    .lex "self", param_1822
    .lex "@args", param_1823
    .lex "%adverbs", param_1824
.annotate 'line', 1333
    new $P102, "Undef"
    set $P1825, $P102
    .lex "$program-name", $P1825
.annotate 'line', 1334
    new $P103, "Undef"
    set $P1826, $P103
    .lex "$res", $P1826
.annotate 'line', 1335
    $P1828 = root_new ['parrot';'Hash']
    set $P1827, $P1828
    .lex "%opts", $P1827
.annotate 'line', 1336
    $P1830 = root_new ['parrot';'ResizablePMCArray']
    set $P1829, $P1830
    .lex "@a", $P1829
.annotate 'line', 1329
    new $P104, "Float"
    assign $P104, 2
    set $I100, $P104
    find_lex $P1832, "@args"
    unless_null $P1832, vivify_840
    $P1832 = root_new ['parrot';'ResizablePMCArray']
  vivify_840:
    set $P105, $P1832[$I100]
    unless_null $P105, vivify_841
    new $P105, "Undef"
  vivify_841:
    set $S100, $P105
    index $I101, $S100, "@INC"
    set $N100, $I101
    set $N101, 0
    isge $I102, $N100, $N101
    unless $I102, if_1831_end
.annotate 'line', 1330
    new $P106, "Float"
    assign $P106, 0
    set $I103, $P106
    exit $I103
  if_1831_end:
.annotate 'line', 1333
    new $P104, "Float"
    assign $P104, 0
    set $I100, $P104
    find_lex $P1833, "@args"
    unless_null $P1833, vivify_842
    $P1833 = root_new ['parrot';'ResizablePMCArray']
  vivify_842:
    set $P105, $P1833[$I100]
    unless_null $P105, vivify_843
    new $P105, "Undef"
  vivify_843:
    store_lex "$program-name", $P105
.annotate 'line', 1334
    find_lex $P104, "self"
    find_lex $P1834, "@args"
    unless_null $P1834, vivify_844
    $P1834 = root_new ['parrot';'ResizablePMCArray']
  vivify_844:
    $P105 = $P104."process_args"($P1834)
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
    find_lex $P1835, "%adverbs"
    unless_null $P1835, vivify_847
    $P1835 = root_new ['parrot';'Hash']
  vivify_847:
    find_lex $P1836, "%opts"
    unless_null $P1836, vivify_848
    $P1836 = root_new ['parrot';'Hash']
  vivify_848:
    $P1835."update"($P1836)
.annotate 'line', 1339
    find_lex $P1838, "%adverbs"
    unless_null $P1838, vivify_849
    $P1838 = root_new ['parrot';'Hash']
  vivify_849:
    set $P104, $P1838["help"]
    unless_null $P104, vivify_850
    new $P104, "Undef"
  vivify_850:
    unless $P104, if_1837_end
    find_lex $P105, "self"
    find_lex $P106, "$program-name"
    unless_null $P106, vivify_851
    new $P106, "Undef"
  vivify_851:
    $P105."usage"($P106)
  if_1837_end:
.annotate 'line', 1341
    load_bytecode "dumper.pbc"
.annotate 'line', 1342
    load_bytecode "PGE/Dumper.pbc"
.annotate 'line', 1344
    find_lex $P104, "self"
    find_lex $P1839, "@a"
    unless_null $P1839, vivify_852
    $P1839 = root_new ['parrot';'ResizablePMCArray']
  vivify_852:
    find_lex $P1840, "%adverbs"
    unless_null $P1840, vivify_853
    $P1840 = root_new ['parrot';'Hash']
  vivify_853:
    $P105 = $P104."command_eval"($P1839 :flat, $P1840 :flat)
.annotate 'line', 1320
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "command_eval" :anon :subid("203_1321350743.52383") :outer("164_1321350743.52383")
    .param pmc param_1842
    .param pmc param_1843 :slurpy
    .param pmc param_1844 :slurpy :named
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1348
    .const 'Sub' $P1925 = "208_1321350743.52383" 
    capture_lex $P1925
    .const 'Sub' $P1858 = "204_1321350743.52383" 
    capture_lex $P1858
    .lex "self", param_1842
    .lex "@a", param_1843
    .lex "%adverbs", param_1844
.annotate 'line', 1353
    new $P102, "Undef"
    set $P1845, $P102
    .lex "$result", $P1845
.annotate 'line', 1354
    new $P103, "Undef"
    set $P1846, $P103
    .lex "$error", $P1846
.annotate 'line', 1355
    new $P104, "Undef"
    set $P1847, $P104
    .lex "$has_error", $P1847
.annotate 'line', 1356
    new $P105, "Undef"
    set $P1848, $P105
    .lex "$target", $P1848
.annotate 'line', 1349
    find_lex $P1850, "%adverbs"
    unless_null $P1850, vivify_854
    $P1850 = root_new ['parrot';'Hash']
  vivify_854:
    set $P106, $P1850["version"]
    unless_null $P106, vivify_855
    new $P106, "Undef"
  vivify_855:
    unless $P106, if_1849_end
    find_lex $P107, "self"
    $P107."version"()
  if_1849_end:
.annotate 'line', 1350
    find_lex $P1852, "%adverbs"
    unless_null $P1852, vivify_856
    $P1852 = root_new ['parrot';'Hash']
  vivify_856:
    set $P106, $P1852["show-config"]
    unless_null $P106, vivify_857
    new $P106, "Undef"
  vivify_857:
    unless $P106, if_1851_end
    find_lex $P107, "self"
    $P107."show-config"()
  if_1851_end:
.annotate 'line', 1351
    find_lex $P1854, "%adverbs"
    unless_null $P1854, vivify_858
    $P1854 = root_new ['parrot';'Hash']
  vivify_858:
    set $P106, $P1854["nqpevent"]
    unless_null $P106, vivify_859
    new $P106, "Undef"
  vivify_859:
    unless $P106, if_1853_end
    find_lex $P107, "self"
    find_lex $P1855, "%adverbs"
    unless_null $P1855, vivify_860
    $P1855 = root_new ['parrot';'Hash']
  vivify_860:
    set $P108, $P1855["nqpevent"]
    unless_null $P108, vivify_861
    new $P108, "Undef"
  vivify_861:
    $P107."nqpevent"($P108)
  if_1853_end:
.annotate 'line', 1348
    find_lex $P106, "$result"
    unless_null $P106, vivify_862
    new $P106, "Undef"
  vivify_862:
    find_lex $P106, "$error"
    unless_null $P106, vivify_863
    new $P106, "Undef"
  vivify_863:
.annotate 'line', 1355
    new $P106, "Float"
    assign $P106, 0
    store_lex "$has_error", $P106
.annotate 'line', 1356
    find_lex $P1856, "%adverbs"
    unless_null $P1856, vivify_864
    $P1856 = root_new ['parrot';'Hash']
  vivify_864:
    set $P106, $P1856["target"]
    unless_null $P106, vivify_865
    new $P106, "Undef"
  vivify_865:
    store_lex "$target", $P106
.annotate 'line', 1357
    .const 'Sub' $P1858 = "204_1321350743.52383" 
    capture_lex $P1858
    $P1858()
.annotate 'line', 1391
    find_lex $P106, "$has_error"
    unless_null $P106, vivify_903
    new $P106, "Undef"
  vivify_903:
    unless $P106, if_1920_end
.annotate 'line', 1392
    find_lex $P1923, "%adverbs"
    unless_null $P1923, vivify_904
    $P1923 = root_new ['parrot';'Hash']
  vivify_904:
    set $P108, $P1923["ll-exception"]
    unless_null $P108, vivify_905
    new $P108, "Undef"
  vivify_905:
    unless $P108, unless_1922
    set $P107, $P108
    goto unless_1922_end
  unless_1922:
    find_lex $P109, "self"
    can $I100, $P109, "handle-exception"
    new $P110, 'Integer'
    set $P110, $I100
    isfalse $I101, $P110
    new $P107, 'Integer'
    set $P107, $I101
  unless_1922_end:
    if $P107, if_1921
.annotate 'line', 1399
    find_lex $P112, "self"
    find_lex $P113, "$error"
    unless_null $P113, vivify_906
    new $P113, "Undef"
  vivify_906:
    $P112."handle-exception"($P113)
.annotate 'line', 1398
    goto if_1921_end
  if_1921:
.annotate 'line', 1392
    .const 'Sub' $P1925 = "208_1321350743.52383" 
    capture_lex $P1925
    $P1925()
  if_1921_end:
  if_1920_end:
.annotate 'line', 1348
    find_lex $P106, "$result"
    unless_null $P106, vivify_912
    new $P106, "Undef"
  vivify_912:
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1857"  :anon :subid("204_1321350743.52383") :outer("203_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1357
    .const 'Sub' $P1911 = "207_1321350743.52383" 
    capture_lex $P1911
    .const 'Sub' $P1892 = "206_1321350743.52383" 
    capture_lex $P1892
    .const 'Sub' $P1880 = "205_1321350743.52383" 
    capture_lex $P1880
    new $P1889, 'ExceptionHandler'
    set_label $P1889, control_1888
    $P1889."handle_types"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P1889
    new $P1908, 'ExceptionHandler'
    set_label $P1908, control_1907
    $P1908."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P1908
.annotate 'line', 1358
    find_lex $P1860, "%adverbs"
    unless_null $P1860, vivify_866
    $P1860 = root_new ['parrot';'Hash']
  vivify_866:
    set $P106, $P1860["e"]
    unless_null $P106, vivify_867
    new $P106, "Undef"
  vivify_867:
    defined $I100, $P106
    if $I100, if_1859
.annotate 'line', 1364
    find_lex $P1868, "@a"
    unless_null $P1868, vivify_868
    $P1868 = root_new ['parrot';'ResizablePMCArray']
  vivify_868:
    isfalse $I101, $P1868
    if $I101, if_1867
.annotate 'line', 1365
    find_lex $P1871, "%adverbs"
    unless_null $P1871, vivify_869
    $P1871 = root_new ['parrot';'Hash']
  vivify_869:
    set $P107, $P1871["combine"]
    unless_null $P107, vivify_870
    new $P107, "Undef"
  vivify_870:
    if $P107, if_1870
.annotate 'line', 1366
    find_lex $P108, "self"
    new $P109, "Float"
    assign $P109, 0
    set $I102, $P109
    find_lex $P1874, "@a"
    unless_null $P1874, vivify_871
    $P1874 = root_new ['parrot';'ResizablePMCArray']
  vivify_871:
    set $P110, $P1874[$I102]
    unless_null $P110, vivify_872
    new $P110, "Undef"
  vivify_872:
    find_lex $P1875, "@a"
    unless_null $P1875, vivify_873
    $P1875 = root_new ['parrot';'ResizablePMCArray']
  vivify_873:
    find_lex $P1876, "%adverbs"
    unless_null $P1876, vivify_874
    $P1876 = root_new ['parrot';'Hash']
  vivify_874:
    $P111 = $P108."evalfiles"($P110, $P1875 :flat, $P1876 :flat)
    store_lex "$result", $P111
    goto if_1870_end
  if_1870:
.annotate 'line', 1365
    find_lex $P108, "self"
    find_lex $P1872, "@a"
    unless_null $P1872, vivify_875
    $P1872 = root_new ['parrot';'ResizablePMCArray']
  vivify_875:
    find_lex $P1873, "%adverbs"
    unless_null $P1873, vivify_876
    $P1873 = root_new ['parrot';'Hash']
  vivify_876:
    $P109 = $P108."evalfiles"($P1872, $P1873 :flat)
    store_lex "$result", $P109
  if_1870_end:
    goto if_1867_end
  if_1867:
.annotate 'line', 1364
    find_lex $P107, "self"
    find_lex $P1869, "%adverbs"
    unless_null $P1869, vivify_877
    $P1869 = root_new ['parrot';'Hash']
  vivify_877:
    $P108 = $P107."interactive"($P1869 :flat)
    store_lex "$result", $P108
  if_1867_end:
    goto if_1859_end
  if_1859:
.annotate 'line', 1359
    find_lex $P107, "self"
    find_lex $P1861, "%adverbs"
    unless_null $P1861, vivify_878
    $P1861 = root_new ['parrot';'Hash']
  vivify_878:
    set $P108, $P1861["e"]
    unless_null $P108, vivify_879
    new $P108, "Undef"
  vivify_879:
    find_lex $P1862, "@a"
    unless_null $P1862, vivify_880
    $P1862 = root_new ['parrot';'ResizablePMCArray']
  vivify_880:
    find_lex $P1863, "%adverbs"
    unless_null $P1863, vivify_881
    $P1863 = root_new ['parrot';'Hash']
  vivify_881:
    $P109 = $P107."eval"($P108, "-e", $P1862 :flat, $P1863 :flat)
    store_lex "$result", $P109
.annotate 'line', 1360
    find_lex $P108, "$target"
    unless_null $P108, vivify_882
    new $P108, "Undef"
  vivify_882:
    set $S100, $P108
    iseq $I101, $S100, ""
    unless $I101, unless_1865
    new $P107, 'Integer'
    set $P107, $I101
    goto unless_1865_end
  unless_1865:
    find_lex $P109, "$target"
    unless_null $P109, vivify_883
    new $P109, "Undef"
  vivify_883:
    set $S101, $P109
    iseq $I102, $S101, "pir"
    new $P107, 'Integer'
    set $P107, $I102
  unless_1865_end:
    if $P107, unless_1864_end
.annotate 'line', 1361
    find_lex $P110, "self"
    find_lex $P111, "$result"
    unless_null $P111, vivify_884
    new $P111, "Undef"
  vivify_884:
    find_lex $P112, "$target"
    unless_null $P112, vivify_885
    new $P112, "Undef"
  vivify_885:
    find_lex $P1866, "%adverbs"
    unless_null $P1866, vivify_886
    $P1866 = root_new ['parrot';'Hash']
  vivify_886:
    $P110."dumper"($P111, $P112, $P1866 :flat)
  unless_1864_end:
  if_1859_end:
.annotate 'line', 1368
    find_lex $P107, "$result"
    unless_null $P107, vivify_887
    new $P107, "Undef"
  vivify_887:
    isnull $I100, $P107
    new $P108, 'Integer'
    set $P108, $I100
    isfalse $I101, $P108
    if $I101, if_1878
    new $P106, 'Integer'
    set $P106, $I101
    goto if_1878_end
  if_1878:
    find_lex $P109, "$target"
    unless_null $P109, vivify_888
    new $P109, "Undef"
  vivify_888:
    set $S100, $P109
    iseq $I102, $S100, "pir"
    new $P106, 'Integer'
    set $P106, $I102
  if_1878_end:
    unless $P106, if_1877_end
    .const 'Sub' $P1880 = "205_1321350743.52383" 
    capture_lex $P1880
    $P1880()
  if_1877_end:
.annotate 'line', 1357
    pop_eh 
    pop_eh 
    goto skip_handler_1887
  control_1888:
.annotate 'line', 1381
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P1892 = "206_1321350743.52383" 
    newclosure $P1904, $P1892
    $P1904(exception)
    new $P1905, 'Integer'
    set $P1905, 1
    set exception["handled"], $P1905
    set $I1906, exception["handled"]
    eq $I1906, 1, handled_1890
    rethrow exception
  handled_1890:
    .return (exception)
  control_1907:
.annotate 'line', 1377
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P1911 = "207_1321350743.52383" 
    newclosure $P1917, $P1911
    $P1917(exception)
    new $P1918, 'Integer'
    set $P1918, 1
    set exception["handled"], $P1918
    set $I1919, exception["handled"]
    eq $I1919, 1, handled_1909
    rethrow exception
  handled_1909:
    .return (exception)
  skip_handler_1887:
.annotate 'line', 1357
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1879"  :anon :subid("205_1321350743.52383") :outer("204_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1369
    new $P110, "Undef"
    set $P1881, $P110
    .lex "$output", $P1881
.annotate 'line', 1370
    new $P111, "Undef"
    set $P1882, $P111
    .lex "$fh", $P1882
.annotate 'line', 1369
    find_lex $P1883, "%adverbs"
    unless_null $P1883, vivify_889
    $P1883 = root_new ['parrot';'Hash']
  vivify_889:
    set $P112, $P1883["output"]
    unless_null $P112, vivify_890
    new $P112, "Undef"
  vivify_890:
    store_lex "$output", $P112
.annotate 'line', 1370
    find_lex $P114, "$output"
    unless_null $P114, vivify_891
    new $P114, "Undef"
  vivify_891:
    set $S101, $P114
    iseq $I103, $S101, ""
    unless $I103, unless_1885
    new $P113, 'Integer'
    set $P113, $I103
    goto unless_1885_end
  unless_1885:
    find_lex $P115, "$output"
    unless_null $P115, vivify_892
    new $P115, "Undef"
  vivify_892:
    set $S102, $P115
    iseq $I104, $S102, "-"
    new $P113, 'Integer'
    set $P113, $I104
  unless_1885_end:
    if $P113, if_1884
.annotate 'line', 1372
    new $P118, "FileHandle"
    find_lex $P119, "$output"
    unless_null $P119, vivify_893
    new $P119, "Undef"
  vivify_893:
    $P120 = $P118."open"($P119, "w")
    set $P112, $P120
.annotate 'line', 1370
    goto if_1884_end
  if_1884:
.annotate 'line', 1371
    getinterp $P116
    $P117 = $P116."stdout_handle"()
    set $P112, $P117
  if_1884_end:
    store_lex "$fh", $P112
.annotate 'line', 1373
    find_lex $P112, "$fh"
    unless_null $P112, vivify_894
    new $P112, "Undef"
  vivify_894:
    if $P112, unless_1886_end
    find_lex $P113, "self"
    new $P114, 'String'
    set $P114, "Cannot write to "
    find_lex $P115, "$output"
    unless_null $P115, vivify_895
    new $P115, "Undef"
  vivify_895:
    concat $P116, $P114, $P115
    $P113."panic"($P116)
  unless_1886_end:
.annotate 'line', 1374
    find_lex $P112, "$fh"
    unless_null $P112, vivify_896
    new $P112, "Undef"
  vivify_896:
    find_lex $P113, "$result"
    unless_null $P113, vivify_897
    new $P113, "Undef"
  vivify_897:
    print $P112, $P113
.annotate 'line', 1375
    find_lex $P112, "$fh"
    unless_null $P112, vivify_898
    new $P112, "Undef"
  vivify_898:
    $P113 = $P112."close"()
.annotate 'line', 1368
    .return ($P113)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1891"  :anon :subid("206_1321350743.52383") :outer("204_1321350743.52383")
    .param pmc param_1893
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1381
    .lex "$_", param_1893
    find_lex $P1894, "$_"
    set $P1895, $P1894
    .lex "$!", $P1895
.annotate 'line', 1382
    find_lex $P1897, "self"
    can $I1898, $P1897, "handle-control"
    if $I1898, if_1896
.annotate 'line', 1385
    find_lex $P1901, "$_"
    unless_null $P1901, vivify_899
    new $P1901, "Undef"
  vivify_899:
    rethrow $P1901
.annotate 'line', 1384
    goto if_1896_end
  if_1896:
.annotate 'line', 1383
    find_lex $P1899, "self"
    find_lex $P1900, "$_"
    unless_null $P1900, vivify_900
    new $P1900, "Undef"
  vivify_900:
    $P1899."handle-control"($P1900)
  if_1896_end:
.annotate 'line', 1387
    new $P1902, "Float"
    assign $P1902, 1
    store_lex "$has_error", $P1902
.annotate 'line', 1388
    find_lex $P1903, "$_"
    unless_null $P1903, vivify_901
    new $P1903, "Undef"
  vivify_901:
    store_lex "$error", $P1903
.annotate 'line', 1381
    .return ($P1903)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1910"  :anon :subid("207_1321350743.52383") :outer("204_1321350743.52383")
    .param pmc param_1912
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1377
    .lex "$_", param_1912
    find_lex $P1913, "$_"
    set $P1914, $P1913
    .lex "$!", $P1914
.annotate 'line', 1378
    new $P1915, "Float"
    assign $P1915, 1
    store_lex "$has_error", $P1915
.annotate 'line', 1379
    find_lex $P1916, "$_"
    unless_null $P1916, vivify_902
    new $P1916, "Undef"
  vivify_902:
    store_lex "$error", $P1916
.annotate 'line', 1377
    .return ($P1916)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1924"  :anon :subid("208_1321350743.52383") :outer("203_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1393
    new $P111, "Undef"
    set $P1926, $P111
    .lex "$err", $P1926
    getstderr $P112
    store_lex "$err", $P112
.annotate 'line', 1394
    find_lex $P112, "$err"
    unless_null $P112, vivify_907
    new $P112, "Undef"
  vivify_907:
    find_lex $P113, "$error"
    unless_null $P113, vivify_908
    new $P113, "Undef"
  vivify_908:
    $P112."print"($P113)
.annotate 'line', 1395
    find_lex $P112, "$err"
    unless_null $P112, vivify_909
    new $P112, "Undef"
  vivify_909:
    $P112."print"("\n")
.annotate 'line', 1396
    find_lex $P112, "$err"
    unless_null $P112, vivify_910
    new $P112, "Undef"
  vivify_910:
    find_lex $P113, "$error"
    unless_null $P113, vivify_911
    new $P113, "Undef"
  vivify_911:
    $P114 = $P113."backtrace_strings"()
    join $S100, "\n", $P114
    $P112."print"($S100)
.annotate 'line', 1397
    new $P112, "Float"
    assign $P112, 1
    set $I102, $P112
    exit $I102
.annotate 'line', 1392
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "process_args" :anon :subid("209_1321350743.52383") :outer("164_1321350743.52383")
    .param pmc param_1928
    .param pmc param_1929
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1405
    .const 'Sub' $P1935 = "210_1321350743.52383" 
    capture_lex $P1935
    .lex "self", param_1928
    .lex "@args", param_1929
.annotate 'line', 1409
    new $P102, "Undef"
    set $P1930, $P102
    .lex "$p", $P1930
.annotate 'line', 1412
    new $P103, "Undef"
    set $P1931, $P103
    .lex "$res", $P1931
.annotate 'line', 1407
    find_lex $P104, "self"
    find_lex $P1932, "@args"
    unless_null $P1932, vivify_913
    $P1932 = root_new ['parrot';'ResizablePMCArray']
  vivify_913:
    $P105 = $P1932."shift"()
    $P104."compiler_progname"($P105)
.annotate 'line', 1409
    get_hll_global $P104, "GLOBAL"
    nqp_get_package_through_who $P105, $P104, "HLL"
    nqp_get_package_through_who $P106, $P105, "CommandLine"
    get_who $P107, $P106
    set $P108, $P107["Parser"]
    find_lex $P109, "self"
    nqp_decontainerize $P110, $P109
    find_lex $P111, "$?CLASS"
    repr_get_attr_obj $P1933, $P110, $P111, "@!cmdoptions", 3
    unless_null $P1933, vivify_914
    $P1933 = root_new ['parrot';'ResizablePMCArray']
  vivify_914:
    $P112 = $P108."new"($P1933)
    store_lex "$p", $P112
.annotate 'line', 1410
    find_lex $P104, "$p"
    unless_null $P104, vivify_915
    new $P104, "Undef"
  vivify_915:
    $P104."add-stopper"("-e")
.annotate 'line', 1411
    find_lex $P104, "$p"
    unless_null $P104, vivify_916
    new $P104, "Undef"
  vivify_916:
    $P104."stop-after-first-arg"()
.annotate 'line', 1405
    find_lex $P104, "$res"
    unless_null $P104, vivify_917
    new $P104, "Undef"
  vivify_917:
.annotate 'line', 1413
    .const 'Sub' $P1935 = "210_1321350743.52383" 
    capture_lex $P1935
    $P1935()
.annotate 'line', 1405
    find_lex $P104, "$res"
    unless_null $P104, vivify_921
    new $P104, "Undef"
  vivify_921:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1934"  :anon :subid("210_1321350743.52383") :outer("209_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1413
    .const 'Sub' $P1942 = "211_1321350743.52383" 
    capture_lex $P1942
    new $P1939, 'ExceptionHandler'
    set_label $P1939, control_1938
    $P1939."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P1939
.annotate 'line', 1414
    find_lex $P104, "$p"
    unless_null $P104, vivify_918
    new $P104, "Undef"
  vivify_918:
    find_lex $P1936, "@args"
    unless_null $P1936, vivify_919
    $P1936 = root_new ['parrot';'ResizablePMCArray']
  vivify_919:
    $P105 = $P104."parse"($P1936)
    store_lex "$res", $P105
.annotate 'line', 1413
    pop_eh 
    goto skip_handler_1937
  control_1938:
.annotate 'line', 1415
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P1942 = "211_1321350743.52383" 
    newclosure $P1950, $P1942
    $P1950(exception)
    new $P1951, 'Integer'
    set $P1951, 1
    set exception["handled"], $P1951
    set $I1952, exception["handled"]
    eq $I1952, 1, handled_1940
    rethrow exception
  handled_1940:
    .return (exception)
  skip_handler_1937:
.annotate 'line', 1413
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1941"  :anon :subid("211_1321350743.52383") :outer("210_1321350743.52383")
    .param pmc param_1943
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1415
    .lex "$_", param_1943
    find_lex $P1944, "$_"
    set $P1945, $P1944
    .lex "$!", $P1945
.annotate 'line', 1416
    find_lex $P1946, "$_"
    unless_null $P1946, vivify_920
    new $P1946, "Undef"
  vivify_920:
    say $P1946
.annotate 'line', 1417
    find_lex $P1947, "self"
    $P1947."usage"()
.annotate 'line', 1418
    new $P1948, "Float"
    assign $P1948, 1
    set $I1949, $P1948
    exit $I1949
.annotate 'line', 1415
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "evalfiles" :anon :subid("212_1321350743.52383") :outer("164_1321350743.52383")
    .param pmc param_1956
    .param pmc param_1957
    .param pmc param_1958 :slurpy
    .param pmc param_1959 :slurpy :named
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1424
    .const 'Sub' $P1975 = "213_1321350743.52383" 
    capture_lex $P1975
    new $P1955, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1955, control_1954
    push_eh $P1955
    .lex "self", param_1956
    .lex "$files", param_1957
    .lex "@args", param_1958
    .lex "%adverbs", param_1959
.annotate 'line', 1425
    new $P102, "Undef"
    set $P1960, $P102
    .lex "$target", $P1960
.annotate 'line', 1426
    new $P103, "Undef"
    set $P1961, $P103
    .lex "$encoding", $P1961
.annotate 'line', 1427
    $P1963 = root_new ['parrot';'ResizablePMCArray']
    set $P1962, $P1963
    .lex "@files", $P1962
.annotate 'line', 1428
    $P1965 = root_new ['parrot';'ResizablePMCArray']
    set $P1964, $P1965
    .lex "@codes", $P1964
.annotate 'line', 1445
    new $P104, "Undef"
    set $P1966, $P104
    .lex "$code", $P1966
.annotate 'line', 1446
    new $P105, "Undef"
    set $P1967, $P105
    .lex "$?FILES", $P1967
.annotate 'line', 1447
    new $P106, "Undef"
    set $P1968, $P106
    .lex "$r", $P1968
.annotate 'line', 1425
    find_lex $P1969, "%adverbs"
    unless_null $P1969, vivify_922
    $P1969 = root_new ['parrot';'Hash']
  vivify_922:
    set $P107, $P1969["target"]
    unless_null $P107, vivify_923
    new $P107, "Undef"
  vivify_923:
    set $S100, $P107
    downcase $S101, $S100
    new $P108, 'String'
    set $P108, $S101
    store_lex "$target", $P108
.annotate 'line', 1426
    find_lex $P1970, "%adverbs"
    unless_null $P1970, vivify_924
    $P1970 = root_new ['parrot';'Hash']
  vivify_924:
    set $P107, $P1970["encoding"]
    unless_null $P107, vivify_925
    new $P107, "Undef"
  vivify_925:
    store_lex "$encoding", $P107
.annotate 'line', 1427
    find_lex $P108, "$files"
    unless_null $P108, vivify_926
    new $P108, "Undef"
  vivify_926:
    does $I100, $P108, "array"
    if $I100, if_1971
    find_lex $P110, "$files"
    unless_null $P110, vivify_927
    new $P110, "Undef"
  vivify_927:
    new $P111, "ResizablePMCArray"
    push $P111, $P110
    set $P107, $P111
    goto if_1971_end
  if_1971:
    find_lex $P109, "$files"
    unless_null $P109, vivify_928
    new $P109, "Undef"
  vivify_928:
    set $P107, $P109
  if_1971_end:
    store_lex "@files", $P107
.annotate 'line', 1424
    find_lex $P1972, "@codes"
    unless_null $P1972, vivify_929
    $P1972 = root_new ['parrot';'ResizablePMCArray']
  vivify_929:
.annotate 'line', 1429
    find_lex $P1973, "@files"
    unless_null $P1973, vivify_930
    $P1973 = root_new ['parrot';'ResizablePMCArray']
  vivify_930:
    defined $I100, $P1973
    unless $I100, for_undef_931
    iter $P107, $P1973
    new $P112, 'ExceptionHandler'
    set_label $P112, loop1998_handler
    $P112."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P112
  loop1998_test:
    unless $P107, loop1998_done
    shift $P108, $P107
  loop1998_redo:
    .const 'Sub' $P1975 = "213_1321350743.52383" 
    capture_lex $P1975
    $P1975($P108)
  loop1998_next:
    goto loop1998_test
  loop1998_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P113, exception, 'type'
    eq $P113, .CONTROL_LOOP_NEXT, loop1998_next
    eq $P113, .CONTROL_LOOP_REDO, loop1998_redo
  loop1998_done:
    pop_eh 
  for_undef_931:
.annotate 'line', 1445
    find_lex $P1999, "@codes"
    unless_null $P1999, vivify_941
    $P1999 = root_new ['parrot';'ResizablePMCArray']
  vivify_941:
    join $S100, "", $P1999
    new $P107, 'String'
    set $P107, $S100
    store_lex "$code", $P107
.annotate 'line', 1446
    find_lex $P2000, "@files"
    unless_null $P2000, vivify_942
    $P2000 = root_new ['parrot';'ResizablePMCArray']
  vivify_942:
    join $S100, " ", $P2000
    new $P107, 'String'
    set $P107, $S100
    store_lex "$?FILES", $P107
.annotate 'line', 1447
    find_lex $P107, "self"
    find_lex $P108, "$code"
    unless_null $P108, vivify_943
    new $P108, "Undef"
  vivify_943:
    find_lex $P2001, "@args"
    unless_null $P2001, vivify_944
    $P2001 = root_new ['parrot';'ResizablePMCArray']
  vivify_944:
    find_lex $P2002, "%adverbs"
    unless_null $P2002, vivify_945
    $P2002 = root_new ['parrot';'Hash']
  vivify_945:
    $P109 = $P107."eval"($P108, $P2001 :flat, $P2002 :flat)
    store_lex "$r", $P109
.annotate 'line', 1448
    find_lex $P109, "$target"
    unless_null $P109, vivify_946
    new $P109, "Undef"
  vivify_946:
    set $S100, $P109
    iseq $I100, $S100, ""
    unless $I100, unless_2004
    new $P108, 'Integer'
    set $P108, $I100
    goto unless_2004_end
  unless_2004:
    find_lex $P110, "$target"
    unless_null $P110, vivify_947
    new $P110, "Undef"
  vivify_947:
    set $S101, $P110
    iseq $I101, $S101, "pir"
    new $P108, 'Integer'
    set $P108, $I101
  unless_2004_end:
    if $P108, if_2003
.annotate 'line', 1451
    new $P111, "Exception"
    set $P111['type'], .CONTROL_RETURN
    find_lex $P112, "self"
    find_lex $P113, "$r"
    unless_null $P113, vivify_948
    new $P113, "Undef"
  vivify_948:
    find_lex $P114, "$target"
    unless_null $P114, vivify_949
    new $P114, "Undef"
  vivify_949:
    find_lex $P2005, "%adverbs"
    unless_null $P2005, vivify_950
    $P2005 = root_new ['parrot';'Hash']
  vivify_950:
    $P115 = $P112."dumper"($P113, $P114, $P2005 :flat)
    setattribute $P111, 'payload', $P115
    throw $P111
.annotate 'line', 1450
    goto if_2003_end
  if_2003:
.annotate 'line', 1449
    new $P111, "Exception"
    set $P111['type'], .CONTROL_RETURN
    find_lex $P112, "$r"
    unless_null $P112, vivify_951
    new $P112, "Undef"
  vivify_951:
    setattribute $P111, 'payload', $P112
    throw $P111
  if_2003_end:
.annotate 'line', 1424
    .return ($P107)
  control_1954:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P108, exception, "payload"
    .return ($P108)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1974"  :anon :subid("213_1321350743.52383") :outer("212_1321350743.52383")
    .param pmc param_1978
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1429
    .const 'Sub' $P1980 = "214_1321350743.52383" 
    capture_lex $P1980
.annotate 'line', 1430
    new $P109, "Undef"
    set $P1976, $P109
    .lex "$in-handle", $P1976
.annotate 'line', 1431
    new $P110, "Undef"
    set $P1977, $P110
    .lex "$err", $P1977
    .lex "$_", param_1978
.annotate 'line', 1430
    new $P111, "FileHandle"
    store_lex "$in-handle", $P111
.annotate 'line', 1431
    new $P111, "Float"
    assign $P111, 0
    store_lex "$err", $P111
.annotate 'line', 1432
    .const 'Sub' $P1980 = "214_1321350743.52383" 
    capture_lex $P1980
    $P1980()
.annotate 'line', 1443
    find_lex $P112, "$err"
    unless_null $P112, vivify_939
    new $P112, "Undef"
  vivify_939:
    if $P112, if_1997
    set $P111, $P112
    goto if_1997_end
  if_1997:
    find_lex $P113, "$err"
    unless_null $P113, vivify_940
    new $P113, "Undef"
  vivify_940:
    die $P113
  if_1997_end:
.annotate 'line', 1429
    .return ($P111)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1979"  :anon :subid("214_1321350743.52383") :outer("213_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1432
    .const 'Sub' $P1987 = "215_1321350743.52383" 
    capture_lex $P1987
    new $P1984, 'ExceptionHandler'
    set_label $P1984, control_1983
    $P1984."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P1984
.annotate 'line', 1436
    find_lex $P111, "$in-handle"
    unless_null $P111, vivify_932
    new $P111, "Undef"
  vivify_932:
    find_lex $P112, "$encoding"
    unless_null $P112, vivify_933
    new $P112, "Undef"
  vivify_933:
    $P111."encoding"($P112)
.annotate 'line', 1437
    find_lex $P1981, "@codes"
    unless_null $P1981, vivify_934
    $P1981 = root_new ['parrot';'ResizablePMCArray']
  vivify_934:
    find_lex $P111, "$in-handle"
    unless_null $P111, vivify_935
    new $P111, "Undef"
  vivify_935:
    find_lex $P112, "$_"
    unless_null $P112, vivify_936
    new $P112, "Undef"
  vivify_936:
    $P113 = $P111."readall"($P112)
    push $P1981, $P113
.annotate 'line', 1438
    find_lex $P111, "$in-handle"
    unless_null $P111, vivify_937
    new $P111, "Undef"
  vivify_937:
    $P111."close"()
.annotate 'line', 1432
    pop_eh 
    goto skip_handler_1982
  control_1983:
.annotate 'line', 1439
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P1987 = "215_1321350743.52383" 
    newclosure $P1994, $P1987
    $P1994(exception)
    new $P1995, 'Integer'
    set $P1995, 1
    set exception["handled"], $P1995
    set $I1996, exception["handled"]
    eq $I1996, 1, handled_1985
    rethrow exception
  handled_1985:
    .return (exception)
  skip_handler_1982:
.annotate 'line', 1432
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1986"  :anon :subid("215_1321350743.52383") :outer("214_1321350743.52383")
    .param pmc param_1988
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1439
    .lex "$_", param_1988
    find_lex $P1989, "$_"
    set $P1990, $P1989
    .lex "$!", $P1990
.annotate 'line', 1440
    new $P1991, 'String'
    set $P1991, "Error while reading from file: "
    find_lex $P1992, "$_"
    unless_null $P1992, vivify_938
    new $P1992, "Undef"
  vivify_938:
    concat $P1993, $P1991, $P1992
    store_lex "$err", $P1993
.annotate 'line', 1439
    .return ($P1993)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "compile" :anon :subid("216_1321350743.52383") :outer("164_1321350743.52383")
    .param pmc param_2009
    .param pmc param_2010
    .param pmc param_2011 :slurpy :named
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1455
    .const 'Sub' $P2020 = "217_1321350743.52383" 
    capture_lex $P2020
    new $P2008, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2008, control_2007
    push_eh $P2008
    .lex "self", param_2009
    .lex "$source", param_2010
    .lex "%adverbs", param_2011
.annotate 'line', 1456
    $P2013 = root_new ['parrot';'Hash']
    set $P2012, $P2013
    .lex "%*COMPILING", $P2012
.annotate 'line', 1458
    new $P102, "Undef"
    set $P2014, $P102
    .lex "$target", $P2014
.annotate 'line', 1459
    new $P103, "Undef"
    set $P2015, $P103
    .lex "$result", $P2015
.annotate 'line', 1460
    new $P104, "Undef"
    set $P2016, $P104
    .lex "$stderr", $P2016
.annotate 'line', 1456
    find_lex $P2017, "%adverbs"
    unless_null $P2017, vivify_952
    $P2017 = root_new ['parrot';'Hash']
  vivify_952:
    find_lex $P107, "%*COMPILING"
    unless_null $P107, vivify_953
    get_hll_global $P105, "GLOBAL"
    get_who $P106, $P105
    set $P107, $P106["%COMPILING"]
    unless_null $P107, vivify_954
    die "Contextual %*COMPILING not found"
  vivify_954:
    store_lex "%*COMPILING", $P107
  vivify_953:
    set $P107["%?OPTIONS"], $P2017
.annotate 'line', 1458
    find_lex $P2018, "%adverbs"
    unless_null $P2018, vivify_955
    $P2018 = root_new ['parrot';'Hash']
  vivify_955:
    set $P105, $P2018["target"]
    unless_null $P105, vivify_956
    new $P105, "Undef"
  vivify_956:
    set $S100, $P105
    downcase $S101, $S100
    new $P106, 'String'
    set $P106, $S101
    store_lex "$target", $P106
.annotate 'line', 1459
    find_lex $P105, "$source"
    unless_null $P105, vivify_957
    new $P105, "Undef"
  vivify_957:
    store_lex "$result", $P105
.annotate 'line', 1460
    getinterp $P105
    $P106 = $P105."stderr_handle"()
    store_lex "$stderr", $P106
.annotate 'line', 1461
    find_lex $P106, "self"
    $P107 = $P106."stages"()
    defined $I100, $P107
    unless $I100, for_undef_958
    iter $P105, $P107
    new $P112, 'ExceptionHandler'
    set_label $P112, loop2031_handler
    $P112."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P112
  loop2031_test:
    unless $P105, loop2031_done
    shift $P108, $P105
  loop2031_redo:
    .const 'Sub' $P2020 = "217_1321350743.52383" 
    capture_lex $P2020
    $P2020($P108)
  loop2031_next:
    goto loop2031_test
  loop2031_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P113, exception, 'type'
    eq $P113, .CONTROL_LOOP_NEXT, loop2031_next
    eq $P113, .CONTROL_LOOP_REDO, loop2031_redo
  loop2031_done:
    pop_eh 
  for_undef_958:
.annotate 'line', 1471
    new $P105, "Exception"
    set $P105['type'], .CONTROL_RETURN
    find_lex $P106, "$result"
    unless_null $P106, vivify_971
    new $P106, "Undef"
  vivify_971:
    setattribute $P105, 'payload', $P106
    throw $P105
.annotate 'line', 1455
    .return ()
  control_2007:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P105, exception, "payload"
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2019"  :anon :subid("217_1321350743.52383") :outer("216_1321350743.52383")
    .param pmc param_2023
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1461
    .const 'Sub' $P2028 = "218_1321350743.52383" 
    capture_lex $P2028
.annotate 'line', 1462
    new $P109, "Undef"
    set $P2021, $P109
    .lex "$timestamp", $P2021
.annotate 'line', 1464
    new $P110, "Undef"
    set $P2022, $P110
    .lex "$diff", $P2022
    .lex "$_", param_2023
.annotate 'line', 1462
    time $N100
    new $P111, 'Float'
    set $P111, $N100
    store_lex "$timestamp", $P111
.annotate 'line', 1463
    find_lex $P111, "self"
    find_lex $P112, "$result"
    unless_null $P112, vivify_959
    new $P112, "Undef"
  vivify_959:
    find_lex $P2024, "%adverbs"
    unless_null $P2024, vivify_960
    $P2024 = root_new ['parrot';'Hash']
  vivify_960:
    find_lex $P113, "$_"
    unless_null $P113, vivify_961
    new $P113, "Undef"
  vivify_961:
    set $S100, $P113
    $P114 = $P111.$S100($P112, $P2024 :flat)
    store_lex "$result", $P114
.annotate 'line', 1464
    time $N100
    new $P111, 'Float'
    set $P111, $N100
    find_lex $P112, "$timestamp"
    unless_null $P112, vivify_962
    new $P112, "Undef"
  vivify_962:
    sub $P113, $P111, $P112
    store_lex "$diff", $P113
.annotate 'line', 1465
    find_lex $P2026, "%adverbs"
    unless_null $P2026, vivify_963
    $P2026 = root_new ['parrot';'Hash']
  vivify_963:
    set $P111, $P2026["stagestats"]
    unless_null $P111, vivify_964
    new $P111, "Undef"
  vivify_964:
    unless $P111, if_2025_end
    .const 'Sub' $P2028 = "218_1321350743.52383" 
    capture_lex $P2028
    $P2028()
  if_2025_end:
.annotate 'line', 1469
    find_lex $P112, "$_"
    unless_null $P112, vivify_969
    new $P112, "Undef"
  vivify_969:
    set $S100, $P112
    find_lex $P113, "$target"
    unless_null $P113, vivify_970
    new $P113, "Undef"
  vivify_970:
    set $S101, $P113
    iseq $I101, $S100, $S101
    if $I101, if_2030
    new $P111, 'Integer'
    set $P111, $I101
    goto if_2030_end
  if_2030:
    die 0, .CONTROL_LOOP_LAST
  if_2030_end:
.annotate 'line', 1461
    .return ($P111)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2027"  :anon :subid("218_1321350743.52383") :outer("217_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1466
    new $P112, "Undef"
    set $P2029, $P112
    .lex "$difffmt", $P2029
    find_lex $P113, "$diff"
    unless_null $P113, vivify_965
    new $P113, "Undef"
  vivify_965:
    new $P114, "ResizablePMCArray"
    push $P114, $P113
    sprintf $S100, "%.3f", $P114
    new $P115, 'String'
    set $P115, $S100
    store_lex "$difffmt", $P115
.annotate 'line', 1467
    find_lex $P113, "$stderr"
    unless_null $P113, vivify_966
    new $P113, "Undef"
  vivify_966:
    new $P114, 'String'
    set $P114, "Stage "
    find_lex $P115, "$_"
    unless_null $P115, vivify_967
    new $P115, "Undef"
  vivify_967:
    concat $P116, $P114, $P115
    concat $P117, $P116, ": "
    find_lex $P118, "$difffmt"
    unless_null $P118, vivify_968
    new $P118, "Undef"
  vivify_968:
    concat $P119, $P117, $P118
    concat $P120, $P119, "\n"
    $P121 = $P113."print"($P120)
.annotate 'line', 1465
    .return ($P121)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "parse" :anon :subid("219_1321350743.52383") :outer("164_1321350743.52383")
    .param pmc param_2035
    .param pmc param_2036
    .param pmc param_2037 :slurpy :named
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1474
    .const 'Sub' $P2046 = "220_1321350743.52383" 
    capture_lex $P2046
    new $P2034, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2034, control_2033
    push_eh $P2034
    .lex "self", param_2035
    .lex "$source", param_2036
    .lex "%adverbs", param_2037
.annotate 'line', 1475
    new $P102, "Undef"
    set $P2038, $P102
    .lex "$s", $P2038
.annotate 'line', 1484
    new $P103, "Undef"
    set $P2039, $P103
    .lex "$grammar", $P2039
.annotate 'line', 1485
    new $P104, "Undef"
    set $P2040, $P104
    .lex "$actions", $P2040
.annotate 'line', 1487
    new $P105, "Undef"
    set $P2041, $P105
    .lex "$match", $P2041
.annotate 'line', 1475
    find_lex $P106, "$source"
    unless_null $P106, vivify_972
    new $P106, "Undef"
  vivify_972:
    store_lex "$s", $P106
.annotate 'line', 1476
    find_lex $P2043, "%adverbs"
    unless_null $P2043, vivify_973
    $P2043 = root_new ['parrot';'Hash']
  vivify_973:
    set $P106, $P2043["transcode"]
    unless_null $P106, vivify_974
    new $P106, "Undef"
  vivify_974:
    unless $P106, if_2042_end
.annotate 'line', 1477
    find_lex $P2044, "%adverbs"
    unless_null $P2044, vivify_975
    $P2044 = root_new ['parrot';'Hash']
  vivify_975:
    set $P108, $P2044["transcode"]
    unless_null $P108, vivify_976
    new $P108, "Undef"
  vivify_976:
    set $S100, $P108
    split $P109, " ", $S100
    defined $I100, $P109
    unless $I100, for_undef_977
    iter $P107, $P109
    new $P112, 'ExceptionHandler'
    set_label $P112, loop2056_handler
    $P112."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P112
  loop2056_test:
    unless $P107, loop2056_done
    shift $P110, $P107
  loop2056_redo:
    .const 'Sub' $P2046 = "220_1321350743.52383" 
    capture_lex $P2046
    $P2046($P110)
  loop2056_next:
    goto loop2056_test
  loop2056_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P113, exception, 'type'
    eq $P113, .CONTROL_LOOP_NEXT, loop2056_next
    eq $P113, .CONTROL_LOOP_REDO, loop2056_redo
  loop2056_done:
    pop_eh 
  for_undef_977:
  if_2042_end:
.annotate 'line', 1484
    find_lex $P106, "self"
    $P107 = $P106."parsegrammar"()
    store_lex "$grammar", $P107
.annotate 'line', 1474
    find_lex $P106, "$actions"
    unless_null $P106, vivify_980
    new $P106, "Undef"
  vivify_980:
.annotate 'line', 1486
    find_lex $P2058, "%adverbs"
    unless_null $P2058, vivify_981
    $P2058 = root_new ['parrot';'Hash']
  vivify_981:
    set $P106, $P2058["target"]
    unless_null $P106, vivify_982
    new $P106, "Undef"
  vivify_982:
    set $S100, $P106
    iseq $I100, $S100, "parse"
    if $I100, unless_2057_end
    find_lex $P107, "self"
    $P108 = $P107."parseactions"()
    store_lex "$actions", $P108
  unless_2057_end:
.annotate 'line', 1487
    find_lex $P106, "$grammar"
    unless_null $P106, vivify_983
    new $P106, "Undef"
  vivify_983:
    find_lex $P107, "$s"
    unless_null $P107, vivify_984
    new $P107, "Undef"
  vivify_984:
    find_lex $P108, "$actions"
    unless_null $P108, vivify_985
    new $P108, "Undef"
  vivify_985:
    find_lex $P2059, "%adverbs"
    unless_null $P2059, vivify_986
    $P2059 = root_new ['parrot';'Hash']
  vivify_986:
    set $P109, $P2059["rxtrace"]
    unless_null $P109, vivify_987
    new $P109, "Undef"
  vivify_987:
    $P110 = $P106."parse"($P107, 0 :named("p"), $P108 :named("actions"), $P109 :named("rxtrace"))
    store_lex "$match", $P110
.annotate 'line', 1488
    find_lex $P106, "$match"
    unless_null $P106, vivify_988
    new $P106, "Undef"
  vivify_988:
    if $P106, unless_2060_end
    find_lex $P107, "self"
    $P107."panic"("Unable to parse source")
  unless_2060_end:
.annotate 'line', 1489
    new $P106, "Exception"
    set $P106['type'], .CONTROL_RETURN
    find_lex $P107, "$match"
    unless_null $P107, vivify_989
    new $P107, "Undef"
  vivify_989:
    setattribute $P106, 'payload', $P107
    throw $P106
.annotate 'line', 1474
    .return ()
  control_2033:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P106, exception, "payload"
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2045"  :anon :subid("220_1321350743.52383") :outer("219_1321350743.52383")
    .param pmc param_2047
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1477
    .const 'Sub' $P2049 = "221_1321350743.52383" 
    capture_lex $P2049
    .lex "$_", param_2047
.annotate 'line', 1478
    .const 'Sub' $P2049 = "221_1321350743.52383" 
    capture_lex $P2049
    $P111 = $P2049()
.annotate 'line', 1477
    .return ($P111)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2048"  :anon :subid("221_1321350743.52383") :outer("220_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1478
    new $P2052, 'ExceptionHandler'
    set_label $P2052, control_2051
    $P2052."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P2052
.annotate 'line', 1479
    find_lex $P111, "$s"
    unless_null $P111, vivify_978
    new $P111, "Undef"
  vivify_978:
    set $S101, $P111
.annotate 'line', 1480
    find_lex $P112, "$_"
    unless_null $P112, vivify_979
    new $P112, "Undef"
  vivify_979:
    set $S102, $P112
    find_encoding $I101, $S102
    trans_encoding $S103, $S101, $I101
.annotate 'line', 1479
    new $P113, 'String'
    set $P113, $S103
    store_lex "$s", $P113
.annotate 'line', 1478
    pop_eh 
    goto skip_handler_2050
  control_2051:
    .local pmc exception 
    .get_results (exception) 
    new $P2054, 'Integer'
    set $P2054, 1
    set exception["handled"], $P2054
    set $I2055, exception["handled"]
    eq $I2055, 1, handled_2053
    rethrow exception
  handled_2053:
    .return (exception)
  skip_handler_2050:
    .return ($P113)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "past" :anon :subid("222_1321350743.52383") :outer("164_1321350743.52383")
    .param pmc param_2062
    .param pmc param_2063
    .param pmc param_2064 :slurpy :named
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1492
    .lex "self", param_2062
    .lex "$source", param_2063
    .lex "%adverbs", param_2064
.annotate 'line', 1493
    new $P102, "Undef"
    set $P2065, $P102
    .lex "$ast", $P2065
    find_lex $P103, "$source"
    unless_null $P103, vivify_990
    new $P103, "Undef"
  vivify_990:
    $P104 = $P103."ast"()
    store_lex "$ast", $P104
.annotate 'line', 1495
    get_hll_global $P103, "GLOBAL"
    nqp_get_package_through_who $P104, $P103, "PAST"
    get_who $P105, $P104
    set $P106, $P105["Node"]
    find_lex $P107, "$ast"
    unless_null $P107, vivify_991
    new $P107, "Undef"
  vivify_991:
    $P108 = $P106."ACCEPTS"($P107)
    if $P108, unless_2066_end
.annotate 'line', 1494
    find_lex $P109, "self"
    new $P110, "String"
    assign $P110, "Unable to obtain ast from "
    find_lex $P111, "$source"
    unless_null $P111, vivify_992
    new $P111, "Undef"
  vivify_992:
    typeof $S100, $P111
    concat $P112, $P110, $S100
    $P109."panic"($P112)
  unless_2066_end:
.annotate 'line', 1492
    find_lex $P103, "$ast"
    unless_null $P103, vivify_993
    new $P103, "Undef"
  vivify_993:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "post" :anon :subid("223_1321350743.52383") :outer("164_1321350743.52383")
    .param pmc param_2068
    .param pmc param_2069
    .param pmc param_2070 :slurpy :named
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1499
    .lex "self", param_2068
    .lex "$source", param_2069
    .lex "%adverbs", param_2070
.annotate 'line', 1500
    compreg $P102, "PAST"
    find_lex $P103, "$source"
    unless_null $P103, vivify_994
    new $P103, "Undef"
  vivify_994:
    find_lex $P2071, "%adverbs"
    unless_null $P2071, vivify_995
    $P2071 = root_new ['parrot';'Hash']
  vivify_995:
    $P104 = $P102."to_post"($P103, $P2071 :flat)
.annotate 'line', 1499
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "pirbegin" :anon :subid("224_1321350743.52383") :outer("164_1321350743.52383")
    .param pmc param_2073
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1503
    .lex "self", param_2073
.annotate 'line', 1505
    new $P102, "String"
    assign $P102, ".include 'cclass.pasm'\n"
    concat $P103, $P102, ".include 'except_severity.pasm'\n"
    concat $P104, $P103, ".include 'except_types.pasm'\n"
.annotate 'line', 1506
    concat $P105, $P104, ".include 'iglobals.pasm'\n"
.annotate 'line', 1507
    concat $P106, $P105, ".include 'interpinfo.pasm'\n"
.annotate 'line', 1508
    concat $P107, $P106, ".include 'iterator.pasm'\n"
.annotate 'line', 1509
    concat $P108, $P107, ".include 'sysinfo.pasm'\n"
.annotate 'line', 1510
    concat $P109, $P108, ".include 'stat.pasm'\n"
.annotate 'line', 1511
    concat $P110, $P109, ".include 'datatypes.pasm'\n"
.annotate 'line', 1503
    .return ($P110)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "pir" :anon :subid("225_1321350743.52383") :outer("164_1321350743.52383")
    .param pmc param_2075
    .param pmc param_2076
    .param pmc param_2077 :slurpy :named
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1515
    .lex "self", param_2075
    .lex "$source", param_2076
    .lex "%adverbs", param_2077
.annotate 'line', 1516
    find_lex $P102, "self"
    $P103 = $P102."pirbegin"()
    compreg $P104, "POST"
    find_lex $P105, "$source"
    unless_null $P105, vivify_996
    new $P105, "Undef"
  vivify_996:
    find_lex $P2078, "%adverbs"
    unless_null $P2078, vivify_997
    $P2078 = root_new ['parrot';'Hash']
  vivify_997:
    $S100 = $P104."to_pir"($P105, $P2078 :flat)
    concat $P106, $P103, $S100
.annotate 'line', 1515
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "evalpmc" :anon :subid("226_1321350743.52383") :outer("164_1321350743.52383")
    .param pmc param_2080
    .param pmc param_2081
    .param pmc param_2082 :slurpy :named
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1519
    .lex "self", param_2080
    .lex "$source", param_2081
    .lex "%adverbs", param_2082
.annotate 'line', 1520
    new $P102, "Undef"
    set $P2083, $P102
    .lex "$compiler", $P2083
    compreg $P103, "PIR"
    store_lex "$compiler", $P103
.annotate 'line', 1521
    find_lex $P103, "$compiler"
    unless_null $P103, vivify_998
    new $P103, "Undef"
  vivify_998:
    find_lex $P104, "$source"
    unless_null $P104, vivify_999
    new $P104, "Undef"
  vivify_999:
    $P105 = $P103($P104)
.annotate 'line', 1519
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "dumper" :anon :subid("227_1321350743.52383") :outer("164_1321350743.52383")
    .param pmc param_2085
    .param pmc param_2086
    .param pmc param_2087
    .param pmc param_2088 :slurpy :named
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1524
    .const 'Sub' $P2092 = "228_1321350743.52383" 
    capture_lex $P2092
    .lex "self", param_2085
    .lex "$obj", param_2086
    .lex "$name", param_2087
    .lex "%options", param_2088
.annotate 'line', 1525
    find_lex $P2090, "%options"
    unless_null $P2090, vivify_1000
    $P2090 = root_new ['parrot';'Hash']
  vivify_1000:
    set $P103, $P2090["dumper"]
    unless_null $P103, vivify_1001
    new $P103, "Undef"
  vivify_1001:
    if $P103, if_2089
.annotate 'line', 1531
    find_lex $P106, "$obj"
    unless_null $P106, vivify_1002
    new $P106, "Undef"
  vivify_1002:
    find_lex $P107, "$name"
    unless_null $P107, vivify_1003
    new $P107, "Undef"
  vivify_1003:
    $P109 = "_dumper"($P106, $P107)
.annotate 'line', 1530
    set $P102, $P109
.annotate 'line', 1525
    goto if_2089_end
  if_2089:
    .const 'Sub' $P2092 = "228_1321350743.52383" 
    capture_lex $P2092
    $P105 = $P2092()
    set $P102, $P105
  if_2089_end:
.annotate 'line', 1524
    .return ($P102)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2091"  :anon :subid("228_1321350743.52383") :outer("227_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1527
    new $P104, "Undef"
    set $P2093, $P104
    .lex "$dumper", $P2093
.annotate 'line', 1526
    load_bytecode "PCT/Dumper.pbc"
.annotate 'line', 1527
    find_lex $P2094, "%options"
    unless_null $P2094, vivify_1004
    $P2094 = root_new ['parrot';'Hash']
  vivify_1004:
    set $P105, $P2094["dumper"]
    unless_null $P105, vivify_1005
    new $P105, "Undef"
  vivify_1005:
    set $S100, $P105
    downcase $S101, $S100
    get_hll_global $P106, "GLOBAL"
    nqp_get_package_through_who $P107, $P106, "PCT"
    get_who $P108, $P107
    set $P2095, $P108["Dumper"]
    unless_null $P2095, vivify_1006
    $P2095 = root_new ['parrot';'Hash']
  vivify_1006:
    set $P109, $P2095[$S101]
    unless_null $P109, vivify_1007
    new $P109, "Undef"
  vivify_1007:
    store_lex "$dumper", $P109
.annotate 'line', 1528
    find_lex $P105, "$dumper"
    unless_null $P105, vivify_1008
    new $P105, "Undef"
  vivify_1008:
    find_lex $P106, "$obj"
    unless_null $P106, vivify_1009
    new $P106, "Undef"
  vivify_1009:
    find_lex $P107, "$name"
    unless_null $P107, vivify_1010
    new $P107, "Undef"
  vivify_1010:
    $P108 = $P105($P106, $P107)
.annotate 'line', 1525
    .return ($P108)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "usage" :anon :subid("229_1321350743.52383") :outer("164_1321350743.52383")
    .param pmc param_2097
    .param pmc param_2098 :optional
    .param int has_param_2098 :opt_flag
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1535
    .lex "self", param_2097
    if has_param_2098, optparam_1011
    new $P102, "Undef"
    set param_2098, $P102
  optparam_1011:
    .lex "$name", param_2098
.annotate 'line', 1536
    find_lex $P103, "$name"
    unless_null $P103, vivify_1012
    new $P103, "Undef"
  vivify_1012:
    unless $P103, if_2099_end
.annotate 'line', 1537
    find_lex $P104, "$name"
    unless_null $P104, vivify_1013
    new $P104, "Undef"
  vivify_1013:
    "say"($P104)
  if_2099_end:
.annotate 'line', 1539
    find_lex $P103, "self"
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    repr_get_attr_obj $P106, $P104, $P105, "$!usage", 4
    unless_null $P106, vivify_1014
    new $P106, "Undef"
  vivify_1014:
    say $P106
.annotate 'line', 1540
    new $P103, "Float"
    assign $P103, 0
    set $I100, $P103
    exit $I100
.annotate 'line', 1535
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "version" :anon :subid("230_1321350743.52383") :outer("164_1321350743.52383")
    .param pmc param_2101
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1543
    .lex "self", param_2101
.annotate 'line', 1544
    new $P102, "Undef"
    set $P2102, $P102
    .lex "$version", $P2102
.annotate 'line', 1545
    new $P103, "Undef"
    set $P2103, $P103
    .lex "$parver", $P2103
.annotate 'line', 1546
    new $P104, "Undef"
    set $P2104, $P104
    .lex "$parrev", $P2104
.annotate 'line', 1544
    find_lex $P105, "self"
    nqp_decontainerize $P106, $P105
    find_lex $P107, "$?CLASS"
    repr_get_attr_obj $P2105, $P106, $P107, "%!config", 7
    unless_null $P2105, vivify_1015
    $P2105 = root_new ['parrot';'Hash']
  vivify_1015:
    set $P108, $P2105["version"]
    unless_null $P108, vivify_1016
    new $P108, "Undef"
  vivify_1016:
    store_lex "$version", $P108
.annotate 'line', 1545
    find_lex $P105, "$?PACKAGE"
    get_who $P106, $P105
    set $P2106, $P106["%parrot_config"]
    unless_null $P2106, vivify_1017
    $P2106 = root_new ['parrot';'Hash']
  vivify_1017:
    set $P107, $P2106["VERSION"]
    unless_null $P107, vivify_1018
    new $P107, "Undef"
  vivify_1018:
    store_lex "$parver", $P107
.annotate 'line', 1546
    find_lex $P105, "$?PACKAGE"
    get_who $P106, $P105
    set $P2108, $P106["%parrot_config"]
    unless_null $P2108, vivify_1019
    $P2108 = root_new ['parrot';'Hash']
  vivify_1019:
    set $P107, $P2108["git_describe"]
    unless_null $P107, vivify_1020
    new $P107, "Undef"
  vivify_1020:
    set $P2107, $P107
    defined $I2110, $P2107
    if $I2110, default_2109
    new $P108, "String"
    assign $P108, "(unknown)"
    set $P2107, $P108
  default_2109:
    store_lex "$parrev", $P2107
.annotate 'line', 1547
    new $P105, 'String'
    set $P105, "This is "
    find_lex $P106, "self"
    nqp_decontainerize $P107, $P106
    find_lex $P108, "$?CLASS"
    repr_get_attr_obj $P109, $P107, $P108, "$!language", 6
    unless_null $P109, vivify_1021
    new $P109, "Undef"
  vivify_1021:
    concat $P110, $P105, $P109
    concat $P111, $P110, " version "
    find_lex $P112, "$version"
    unless_null $P112, vivify_1022
    new $P112, "Undef"
  vivify_1022:
    concat $P113, $P111, $P112
    concat $P114, $P113, " built on parrot "
    find_lex $P115, "$parver"
    unless_null $P115, vivify_1023
    new $P115, "Undef"
  vivify_1023:
    concat $P116, $P114, $P115
    concat $P117, $P116, " revision "
    find_lex $P118, "$parrev"
    unless_null $P118, vivify_1024
    new $P118, "Undef"
  vivify_1024:
    concat $P119, $P117, $P118
    say $P119
.annotate 'line', 1548
    new $P105, "Float"
    assign $P105, 0
    set $I100, $P105
    exit $I100
.annotate 'line', 1543
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "show-config" :anon :subid("231_1321350743.52383") :outer("164_1321350743.52383")
    .param pmc param_2112
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1551
    .const 'Sub' $P2120 = "233_1321350743.52383" 
    capture_lex $P2120
    .const 'Sub' $P2115 = "232_1321350743.52383" 
    capture_lex $P2115
    .lex "self", param_2112
.annotate 'line', 1552
    find_lex $P103, "$?PACKAGE"
    get_who $P104, $P103
    set $P2113, $P104["%parrot_config"]
    unless_null $P2113, vivify_1025
    $P2113 = root_new ['parrot';'Hash']
  vivify_1025:
    defined $I100, $P2113
    unless $I100, for_undef_1026
    iter $P102, $P2113
    new $P106, 'ExceptionHandler'
    set_label $P106, loop2117_handler
    $P106."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P106
  loop2117_test:
    unless $P102, loop2117_done
    shift $P105, $P102
  loop2117_redo:
    .const 'Sub' $P2115 = "232_1321350743.52383" 
    capture_lex $P2115
    $P2115($P105)
  loop2117_next:
    goto loop2117_test
  loop2117_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P107, exception, 'type'
    eq $P107, .CONTROL_LOOP_NEXT, loop2117_next
    eq $P107, .CONTROL_LOOP_REDO, loop2117_redo
  loop2117_done:
    pop_eh 
  for_undef_1026:
.annotate 'line', 1555
    find_lex $P103, "self"
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    repr_get_attr_obj $P2118, $P104, $P105, "%!config", 7
    unless_null $P2118, vivify_1029
    $P2118 = root_new ['parrot';'Hash']
  vivify_1029:
    defined $I100, $P2118
    unless $I100, for_undef_1030
    iter $P102, $P2118
    new $P107, 'ExceptionHandler'
    set_label $P107, loop2122_handler
    $P107."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P107
  loop2122_test:
    unless $P102, loop2122_done
    shift $P106, $P102
  loop2122_redo:
    .const 'Sub' $P2120 = "233_1321350743.52383" 
    capture_lex $P2120
    $P2120($P106)
  loop2122_next:
    goto loop2122_test
  loop2122_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P108, exception, 'type'
    eq $P108, .CONTROL_LOOP_NEXT, loop2122_next
    eq $P108, .CONTROL_LOOP_REDO, loop2122_redo
  loop2122_done:
    pop_eh 
  for_undef_1030:
.annotate 'line', 1558
    new $P102, "Float"
    assign $P102, 0
    set $I100, $P102
    exit $I100
.annotate 'line', 1551
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2114"  :anon :subid("232_1321350743.52383") :outer("231_1321350743.52383")
    .param pmc param_2116
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1552
    .lex "$_", param_2116
.annotate 'line', 1553
    new $P106, "String"
    assign $P106, "parrot::"
    find_lex $P107, "$_"
    unless_null $P107, vivify_1027
    new $P107, "Undef"
  vivify_1027:
    $S100 = $P107."key"()
    concat $P108, $P106, $S100
    concat $P109, $P108, "="
    find_lex $P110, "$_"
    unless_null $P110, vivify_1028
    new $P110, "Undef"
  vivify_1028:
    $S101 = $P110."value"()
    concat $P111, $P109, $S101
    say $P111
.annotate 'line', 1552
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2119"  :anon :subid("233_1321350743.52383") :outer("231_1321350743.52383")
    .param pmc param_2121
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1555
    .lex "$_", param_2121
.annotate 'line', 1556
    find_lex $P107, "self"
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    repr_get_attr_obj $P110, $P108, $P109, "$!language", 6
    unless_null $P110, vivify_1031
    new $P110, "Undef"
  vivify_1031:
    concat $P111, $P110, "::"
    find_lex $P112, "$_"
    unless_null $P112, vivify_1032
    new $P112, "Undef"
  vivify_1032:
    $S100 = $P112."key"()
    concat $P113, $P111, $S100
    concat $P114, $P113, "="
    find_lex $P115, "$_"
    unless_null $P115, vivify_1033
    new $P115, "Undef"
  vivify_1033:
    $S101 = $P115."value"()
    concat $P116, $P114, $S101
    say $P116
.annotate 'line', 1555
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "nqpevent" :anon :subid("234_1321350743.52383") :outer("164_1321350743.52383")
    .param pmc param_2124
    .param pmc param_2125 :optional
    .param int has_param_2125 :opt_flag
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1561
    .const 'Sub' $P2130 = "235_1321350743.52383" 
    capture_lex $P2130
    .lex "self", param_2124
    if has_param_2125, optparam_1034
    new $P102, "Undef"
    set param_2125, $P102
  optparam_1034:
    .lex "$spec", param_2125
.annotate 'line', 1564
    new $P103, "Undef"
    set $P2126, $P103
    .lex "$fh", $P2126
.annotate 'line', 1563
    nqpevent "nqpevent: log finished"
.annotate 'line', 1564
    null $P104
    nqpevent_fh $P105, $P104
    store_lex "$fh", $P105
.annotate 'line', 1565
    find_lex $P104, "$fh"
    unless_null $P104, vivify_1035
    new $P104, "Undef"
  vivify_1035:
    unless $P104, if_2127_end
    find_lex $P105, "$fh"
    unless_null $P105, vivify_1036
    new $P105, "Undef"
  vivify_1036:
    $P105."flush"()
  if_2127_end:
.annotate 'line', 1568
    find_lex $P105, "$spec"
    unless_null $P105, vivify_1037
    new $P105, "Undef"
  vivify_1037:
    if $P105, if_2128
    set $P104, $P105
    goto if_2128_end
  if_2128:
    .const 'Sub' $P2130 = "235_1321350743.52383" 
    capture_lex $P2130
    $P108 = $P2130()
    set $P104, $P108
  if_2128_end:
.annotate 'line', 1561
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2129"  :anon :subid("235_1321350743.52383") :outer("234_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1568
    .const 'Sub' $P2137 = "236_1321350743.52383" 
    capture_lex $P2137
.annotate 'line', 1570
    new $P106, "Undef"
    set $P2131, $P106
    .lex "$file", $P2131
.annotate 'line', 1571
    new $P107, "Undef"
    set $P2132, $P107
    .lex "$flags", $P2132
.annotate 'line', 1569
    find_lex $P108, "$spec"
    unless_null $P108, vivify_1038
    new $P108, "Undef"
  vivify_1038:
    set $S100, $P108
    split $P109, ";", $S100
    store_lex "$spec", $P109
.annotate 'line', 1570
    new $P108, "Float"
    assign $P108, 0
    set $I100, $P108
    find_lex $P2133, "$spec"
    unless_null $P2133, vivify_1039
    $P2133 = root_new ['parrot';'ResizablePMCArray']
  vivify_1039:
    set $P109, $P2133[$I100]
    unless_null $P109, vivify_1040
    new $P109, "Undef"
  vivify_1040:
    store_lex "$file", $P109
.annotate 'line', 1571
    new $P108, "Float"
    assign $P108, 1
    set $I100, $P108
    find_lex $P2134, "$spec"
    unless_null $P2134, vivify_1041
    $P2134 = root_new ['parrot';'ResizablePMCArray']
  vivify_1041:
    set $P109, $P2134[$I100]
    unless_null $P109, vivify_1042
    new $P109, "Undef"
  vivify_1042:
    store_lex "$flags", $P109
.annotate 'line', 1572
    find_lex $P108, "$file"
    unless_null $P108, vivify_1043
    new $P108, "Undef"
  vivify_1043:
    set $S100, $P108
    isgt $I100, $S100, ""
    if $I100, if_2135
.annotate 'line', 1578
    getinterp $P110
    $P112 = $P110."stderr_handle"()
    nqpevent_fh $P113, $P112
.annotate 'line', 1577
    goto if_2135_end
  if_2135:
.annotate 'line', 1572
    .const 'Sub' $P2137 = "236_1321350743.52383" 
    capture_lex $P2137
    $P2137()
  if_2135_end:
.annotate 'line', 1580
    find_lex $P108, "$flags"
    unless_null $P108, vivify_1048
    new $P108, "Undef"
  vivify_1048:
    set $S100, $P108
    iseq $I101, $S100, ""
    if $I101, if_2140
    find_lex $P110, "$flags"
    unless_null $P110, vivify_1049
    new $P110, "Undef"
  vivify_1049:
    set $I100, $P110
    goto if_2140_end
  if_2140:
    new $P109, "Float"
    assign $P109, 31
    set $I100, $P109
  if_2140_end:
    nqpdebflags $I102, $I100
.annotate 'line', 1581
    nqpevent "nqpevent: log started"
.annotate 'line', 1568
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2136"  :anon :subid("236_1321350743.52383") :outer("235_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1573
    new $P109, "Undef"
    set $P2138, $P109
    .lex "$fh", $P2138
    new $P110, "FileHandle"
    store_lex "$fh", $P110
.annotate 'line', 1574
    find_lex $P110, "$fh"
    unless_null $P110, vivify_1044
    new $P110, "Undef"
  vivify_1044:
    find_lex $P111, "$file"
    unless_null $P111, vivify_1045
    new $P111, "Undef"
  vivify_1045:
    $P112 = $P110."open"($P111, "w")
    if $P112, unless_2139_end
    find_lex $P113, "self"
    new $P114, 'String'
    set $P114, "Cannot write to "
    find_lex $P115, "$file"
    unless_null $P115, vivify_1046
    new $P115, "Undef"
  vivify_1046:
    concat $P116, $P114, $P115
    $P113."panic"($P116)
  unless_2139_end:
.annotate 'line', 1575
    find_lex $P110, "$fh"
    unless_null $P110, vivify_1047
    new $P110, "Undef"
  vivify_1047:
    nqpevent_fh $P111, $P110
.annotate 'line', 1572
    .return ($P111)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "removestage" :anon :subid("237_1321350743.52383") :outer("164_1321350743.52383")
    .param pmc param_2142
    .param pmc param_2143
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1585
    .const 'Sub' $P2148 = "238_1321350743.52383" 
    capture_lex $P2148
    .lex "self", param_2142
    .lex "$stagename", param_2143
.annotate 'line', 1586
    $P2145 = root_new ['parrot';'ResizablePMCArray']
    set $P2144, $P2145
    .lex "@new_stages", $P2144
    new $P102, "ResizableStringArray"
    store_lex "@new_stages", $P102
.annotate 'line', 1587
    find_lex $P103, "self"
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    repr_get_attr_obj $P2146, $P104, $P105, "@!stages", 0
    unless_null $P2146, vivify_1050
    $P2146 = root_new ['parrot';'ResizablePMCArray']
  vivify_1050:
    defined $I100, $P2146
    unless $I100, for_undef_1051
    iter $P102, $P2146
    new $P108, 'ExceptionHandler'
    set_label $P108, loop2152_handler
    $P108."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P108
  loop2152_test:
    unless $P102, loop2152_done
    shift $P106, $P102
  loop2152_redo:
    .const 'Sub' $P2148 = "238_1321350743.52383" 
    capture_lex $P2148
    $P2148($P106)
  loop2152_next:
    goto loop2152_test
  loop2152_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P109, exception, 'type'
    eq $P109, .CONTROL_LOOP_NEXT, loop2152_next
    eq $P109, .CONTROL_LOOP_REDO, loop2152_redo
  loop2152_done:
    pop_eh 
  for_undef_1051:
.annotate 'line', 1592
    find_lex $P2153, "@new_stages"
    unless_null $P2153, vivify_1056
    $P2153 = root_new ['parrot';'ResizablePMCArray']
  vivify_1056:
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_bind_attr_obj $P103, $P104, "@!stages", 0, $P2153
.annotate 'line', 1585
    .return ($P2153)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2147"  :anon :subid("238_1321350743.52383") :outer("237_1321350743.52383")
    .param pmc param_2149
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1587
    .lex "$_", param_2149
.annotate 'line', 1588
    find_lex $P108, "$_"
    unless_null $P108, vivify_1052
    new $P108, "Undef"
  vivify_1052:
    set $S100, $P108
    find_lex $P109, "$stagename"
    unless_null $P109, vivify_1053
    new $P109, "Undef"
  vivify_1053:
    set $S101, $P109
    isne $I101, $S100, $S101
    if $I101, if_2150
    new $P107, 'Integer'
    set $P107, $I101
    goto if_2150_end
  if_2150:
.annotate 'line', 1589
    find_lex $P2151, "@new_stages"
    unless_null $P2151, vivify_1054
    $P2151 = root_new ['parrot';'ResizablePMCArray']
  vivify_1054:
    find_lex $P110, "$_"
    unless_null $P110, vivify_1055
    new $P110, "Undef"
  vivify_1055:
    $P111 = $P2151."push"($P110)
.annotate 'line', 1588
    set $P107, $P111
  if_2150_end:
.annotate 'line', 1587
    .return ($P107)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "addstage" :anon :subid("239_1321350743.52383") :outer("164_1321350743.52383")
    .param pmc param_2157
    .param pmc param_2158
    .param pmc param_2159 :slurpy :named
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1595
    .const 'Sub' $P2177 = "241_1321350743.52383" 
    capture_lex $P2177
    .const 'Sub' $P2171 = "240_1321350743.52383" 
    capture_lex $P2171
    new $P2156, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2156, control_2155
    push_eh $P2156
    .lex "self", param_2157
    .lex "$stagename", param_2158
    .lex "%adverbs", param_2159
.annotate 'line', 1596
    new $P102, "Undef"
    set $P2160, $P102
    .lex "$position", $P2160
.annotate 'line', 1597
    new $P103, "Undef"
    set $P2161, $P103
    .lex "$where", $P2161
.annotate 'line', 1610
    $P2163 = root_new ['parrot';'ResizablePMCArray']
    set $P2162, $P2163
    .lex "@new-stages", $P2162
.annotate 'line', 1595
    find_lex $P104, "$position"
    unless_null $P104, vivify_1057
    new $P104, "Undef"
  vivify_1057:
    find_lex $P104, "$where"
    unless_null $P104, vivify_1058
    new $P104, "Undef"
  vivify_1058:
.annotate 'line', 1598
    find_lex $P2165, "%adverbs"
    unless_null $P2165, vivify_1059
    $P2165 = root_new ['parrot';'Hash']
  vivify_1059:
    set $P104, $P2165["before"]
    unless_null $P104, vivify_1060
    new $P104, "Undef"
  vivify_1060:
    if $P104, if_2164
.annotate 'line', 1601
    find_lex $P2168, "%adverbs"
    unless_null $P2168, vivify_1061
    $P2168 = root_new ['parrot';'Hash']
  vivify_1061:
    set $P105, $P2168["after"]
    unless_null $P105, vivify_1062
    new $P105, "Undef"
  vivify_1062:
    if $P105, if_2167
.annotate 'line', 1604
    .const 'Sub' $P2171 = "240_1321350743.52383" 
    capture_lex $P2171
    $P2171()
    goto if_2167_end
  if_2167:
.annotate 'line', 1602
    find_lex $P2169, "%adverbs"
    unless_null $P2169, vivify_1066
    $P2169 = root_new ['parrot';'Hash']
  vivify_1066:
    set $P106, $P2169["after"]
    unless_null $P106, vivify_1067
    new $P106, "Undef"
  vivify_1067:
    store_lex "$where", $P106
.annotate 'line', 1603
    new $P106, "String"
    assign $P106, "after"
    store_lex "$position", $P106
  if_2167_end:
.annotate 'line', 1601
    goto if_2164_end
  if_2164:
.annotate 'line', 1599
    find_lex $P2166, "%adverbs"
    unless_null $P2166, vivify_1068
    $P2166 = root_new ['parrot';'Hash']
  vivify_1068:
    set $P105, $P2166["before"]
    unless_null $P105, vivify_1069
    new $P105, "Undef"
  vivify_1069:
    store_lex "$where", $P105
.annotate 'line', 1600
    new $P105, "String"
    assign $P105, "before"
    store_lex "$position", $P105
  if_2164_end:
.annotate 'line', 1610
    new $P104, "ResizableStringArray"
    store_lex "@new-stages", $P104
.annotate 'line', 1611
    find_lex $P105, "self"
    $P106 = $P105."stages"()
    defined $I100, $P106
    unless $I100, for_undef_1070
    iter $P104, $P106
    new $P109, 'ExceptionHandler'
    set_label $P109, loop2186_handler
    $P109."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P109
  loop2186_test:
    unless $P104, loop2186_done
    shift $P107, $P104
  loop2186_redo:
    .const 'Sub' $P2177 = "241_1321350743.52383" 
    capture_lex $P2177
    $P2177($P107)
  loop2186_next:
    goto loop2186_test
  loop2186_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P110, exception, 'type'
    eq $P110, .CONTROL_LOOP_NEXT, loop2186_next
    eq $P110, .CONTROL_LOOP_REDO, loop2186_redo
  loop2186_done:
    pop_eh 
  for_undef_1070:
.annotate 'line', 1624
    find_lex $P104, "self"
    find_lex $P2187, "@new-stages"
    unless_null $P2187, vivify_1084
    $P2187 = root_new ['parrot';'ResizablePMCArray']
  vivify_1084:
    $P105 = $P104."stages"($P2187)
.annotate 'line', 1595
    .return ($P105)
  control_2155:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P104, exception, "payload"
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2170"  :anon :subid("240_1321350743.52383") :outer("239_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1605
    $P2173 = root_new ['parrot';'ResizablePMCArray']
    set $P2172, $P2173
    .lex "@new-stages", $P2172
    find_lex $P106, "self"
    $P107 = $P106."stages"()
    clone $P108, $P107
    store_lex "@new-stages", $P108
.annotate 'line', 1606
    find_lex $P2174, "@new-stages"
    unless_null $P2174, vivify_1063
    $P2174 = root_new ['parrot';'ResizablePMCArray']
  vivify_1063:
    find_lex $P106, "$stagename"
    unless_null $P106, vivify_1064
    new $P106, "Undef"
  vivify_1064:
    push $P2174, $P106
.annotate 'line', 1607
    find_lex $P106, "self"
    find_lex $P2175, "@new-stages"
    unless_null $P2175, vivify_1065
    $P2175 = root_new ['parrot';'ResizablePMCArray']
  vivify_1065:
    $P106."stages"($P2175)
.annotate 'line', 1608
    new $P106, "Exception"
    set $P106['type'], .CONTROL_RETURN
    new $P107, "Float"
    assign $P107, 1
    setattribute $P106, 'payload', $P107
    throw $P106
.annotate 'line', 1604
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2176"  :anon :subid("241_1321350743.52383") :outer("239_1321350743.52383")
    .param pmc param_2178
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1611
    .lex "$_", param_2178
.annotate 'line', 1612
    find_lex $P109, "$_"
    unless_null $P109, vivify_1071
    new $P109, "Undef"
  vivify_1071:
    set $S100, $P109
    find_lex $P110, "$where"
    unless_null $P110, vivify_1072
    new $P110, "Undef"
  vivify_1072:
    set $S101, $P110
    iseq $I101, $S100, $S101
    if $I101, if_2179
.annotate 'line', 1621
    find_lex $P2185, "@new-stages"
    unless_null $P2185, vivify_1073
    $P2185 = root_new ['parrot';'ResizablePMCArray']
  vivify_1073:
    find_lex $P112, "$_"
    unless_null $P112, vivify_1074
    new $P112, "Undef"
  vivify_1074:
    push $P2185, $P112
.annotate 'line', 1620
    set $P108, $P2185
.annotate 'line', 1612
    goto if_2179_end
  if_2179:
.annotate 'line', 1613
    find_lex $P112, "$position"
    unless_null $P112, vivify_1075
    new $P112, "Undef"
  vivify_1075:
    set $S102, $P112
    iseq $I102, $S102, "before"
    if $I102, if_2180
.annotate 'line', 1617
    find_lex $P2183, "@new-stages"
    unless_null $P2183, vivify_1076
    $P2183 = root_new ['parrot';'ResizablePMCArray']
  vivify_1076:
    find_lex $P113, "$_"
    unless_null $P113, vivify_1077
    new $P113, "Undef"
  vivify_1077:
    push $P2183, $P113
.annotate 'line', 1618
    find_lex $P2184, "@new-stages"
    unless_null $P2184, vivify_1078
    $P2184 = root_new ['parrot';'ResizablePMCArray']
  vivify_1078:
    find_lex $P113, "$stagename"
    unless_null $P113, vivify_1079
    new $P113, "Undef"
  vivify_1079:
    push $P2184, $P113
.annotate 'line', 1616
    set $P111, $P2184
.annotate 'line', 1613
    goto if_2180_end
  if_2180:
.annotate 'line', 1614
    find_lex $P2181, "@new-stages"
    unless_null $P2181, vivify_1080
    $P2181 = root_new ['parrot';'ResizablePMCArray']
  vivify_1080:
    find_lex $P113, "$stagename"
    unless_null $P113, vivify_1081
    new $P113, "Undef"
  vivify_1081:
    push $P2181, $P113
.annotate 'line', 1615
    find_lex $P2182, "@new-stages"
    unless_null $P2182, vivify_1082
    $P2182 = root_new ['parrot';'ResizablePMCArray']
  vivify_1082:
    find_lex $P113, "$_"
    unless_null $P113, vivify_1083
    new $P113, "Undef"
  vivify_1083:
    push $P2182, $P113
.annotate 'line', 1613
    set $P111, $P2182
  if_2180_end:
.annotate 'line', 1612
    set $P108, $P111
  if_2179_end:
.annotate 'line', 1611
    .return ($P108)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "parse_name" :anon :subid("242_1321350743.52383") :outer("164_1321350743.52383")
    .param pmc param_2189
    .param pmc param_2190
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1627
    .const 'Sub' $P2206 = "243_1321350743.52383" 
    capture_lex $P2206
    .lex "self", param_2189
    .lex "$name", param_2190
.annotate 'line', 1628
    $P2192 = root_new ['parrot';'ResizablePMCArray']
    set $P2191, $P2192
    .lex "@ns", $P2191
.annotate 'line', 1629
    new $P102, "Undef"
    set $P2193, $P102
    .lex "$sigil", $P2193
.annotate 'line', 1632
    new $P103, "Undef"
    set $P2194, $P103
    .lex "$idx", $P2194
.annotate 'line', 1640
    $P2196 = root_new ['parrot';'ResizablePMCArray']
    set $P2195, $P2196
    .lex "@actual_ns", $P2195
.annotate 'line', 1628
    find_lex $P104, "$name"
    unless_null $P104, vivify_1085
    new $P104, "Undef"
  vivify_1085:
    set $S100, $P104
    split $P105, "::", $S100
    store_lex "@ns", $P105
.annotate 'line', 1629
    new $P104, "Float"
    assign $P104, 0
    set $I100, $P104
    find_lex $P2197, "@ns"
    unless_null $P2197, vivify_1086
    $P2197 = root_new ['parrot';'ResizablePMCArray']
  vivify_1086:
    set $P105, $P2197[$I100]
    unless_null $P105, vivify_1087
    new $P105, "Undef"
  vivify_1087:
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
.annotate 'line', 1632
    find_lex $P104, "$sigil"
    unless_null $P104, vivify_1088
    new $P104, "Undef"
  vivify_1088:
    set $S100, $P104
    index $I100, "$@%&", $S100
    new $P105, 'Integer'
    set $P105, $I100
    store_lex "$idx", $P105
.annotate 'line', 1633
    find_lex $P104, "$idx"
    unless_null $P104, vivify_1089
    new $P104, "Undef"
  vivify_1089:
    set $N100, $P104
    set $N101, 0
    isge $I100, $N100, $N101
    unless $I100, if_2198_end
.annotate 'line', 1634
    new $P105, "Float"
    assign $P105, 0
    set $I101, $P105
    find_lex $P2199, "@ns"
    unless_null $P2199, vivify_1090
    $P2199 = root_new ['parrot';'ResizablePMCArray']
  vivify_1090:
    set $P106, $P2199[$I101]
    unless_null $P106, vivify_1091
    new $P106, "Undef"
  vivify_1091:
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
    find_lex $P2200, "@ns"
    unless_null $P2200, vivify_1092
    $P2200 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@ns", $P2200
  vivify_1092:
    set $P2200[$I103], $P108
.annotate 'line', 1635
    find_lex $P105, "$sigil"
    unless_null $P105, vivify_1093
    new $P105, "Undef"
  vivify_1093:
    new $P106, "Float"
    assign $P106, -1
    set $I101, $P106
    find_lex $P2201, "@ns"
    unless_null $P2201, vivify_1094
    $P2201 = root_new ['parrot';'ResizablePMCArray']
  vivify_1094:
    set $P107, $P2201[$I101]
    unless_null $P107, vivify_1095
    new $P107, "Undef"
  vivify_1095:
    concat $P108, $P105, $P107
    new $P109, "Float"
    assign $P109, -1
    set $I102, $P109
    find_lex $P2202, "@ns"
    unless_null $P2202, vivify_1096
    $P2202 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@ns", $P2202
  vivify_1096:
    set $P2202[$I102], $P108
  if_2198_end:
.annotate 'line', 1627
    find_lex $P2203, "@actual_ns"
    unless_null $P2203, vivify_1097
    $P2203 = root_new ['parrot';'ResizablePMCArray']
  vivify_1097:
.annotate 'line', 1641
    find_lex $P2204, "@ns"
    unless_null $P2204, vivify_1098
    $P2204 = root_new ['parrot';'ResizablePMCArray']
  vivify_1098:
    defined $I100, $P2204
    unless $I100, for_undef_1099
    iter $P104, $P2204
    new $P107, 'ExceptionHandler'
    set_label $P107, loop2210_handler
    $P107."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P107
  loop2210_test:
    unless $P104, loop2210_done
    shift $P105, $P104
  loop2210_redo:
    .const 'Sub' $P2206 = "243_1321350743.52383" 
    capture_lex $P2206
    $P2206($P105)
  loop2210_next:
    goto loop2210_test
  loop2210_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P108, exception, 'type'
    eq $P108, .CONTROL_LOOP_NEXT, loop2210_next
    eq $P108, .CONTROL_LOOP_REDO, loop2210_redo
  loop2210_done:
    pop_eh 
  for_undef_1099:
.annotate 'line', 1627
    find_lex $P2211, "@actual_ns"
    unless_null $P2211, vivify_1103
    $P2211 = root_new ['parrot';'ResizablePMCArray']
  vivify_1103:
    .return ($P2211)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2205"  :anon :subid("243_1321350743.52383") :outer("242_1321350743.52383")
    .param pmc param_2207
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1641
    .lex "$_", param_2207
.annotate 'line', 1642
    find_lex $P107, "$_"
    unless_null $P107, vivify_1100
    new $P107, "Undef"
  vivify_1100:
    set $S100, $P107
    iseq $I101, $S100, ""
    unless $I101, unless_2208
    new $P106, 'Integer'
    set $P106, $I101
    goto unless_2208_end
  unless_2208:
    find_lex $P2209, "@actual_ns"
    unless_null $P2209, vivify_1101
    $P2209 = root_new ['parrot';'ResizablePMCArray']
  vivify_1101:
    find_lex $P108, "$_"
    unless_null $P108, vivify_1102
    new $P108, "Undef"
  vivify_1102:
    push $P2209, $P108
    set $P106, $P2209
  unless_2208_end:
.annotate 'line', 1641
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "lineof" :anon :subid("244_1321350743.52383") :outer("164_1321350743.52383")
    .param pmc param_2213
    .param pmc param_2214
    .param pmc param_2215
    .param pmc param_2216 :optional :named("cache")
    .param int has_param_2216 :opt_flag
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1647
    .lex "self", param_2213
    .lex "$target", param_2214
    .lex "$pos", param_2215
    if has_param_2216, optparam_1104
    new $P102, "Undef"
    set param_2216, $P102
  optparam_1104:
    .lex "$cache", param_2216
.annotate 'line', 1648

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
        
.annotate 'line', 1647
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "_block2218"  :subid("245_1321350743.52383") :outer("10_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1803
    .const 'Sub' $P2234 = "250_1321350743.52383" 
    capture_lex $P2234
    .const 'Sub' $P2230 = "249_1321350743.52383" 
    capture_lex $P2230
    .const 'Sub' $P2227 = "248_1321350743.52383" 
    capture_lex $P2227
    .const 'Sub' $P2224 = "247_1321350743.52383" 
    capture_lex $P2224
    .const 'Sub' $P2222 = "246_1321350743.52383" 
    capture_lex $P2222
    .lex "$?PACKAGE", $P2220
    .lex "$?CLASS", $P2221
.annotate 'line', 1819
    .const 'Sub' $P2234 = "250_1321350743.52383" 
    newclosure $P2249, $P2234
.annotate 'line', 1803
    .return ($P2249)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "init" :anon :subid("246_1321350743.52383") :outer("245_1321350743.52383")
    .param pmc param_2223
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1807
    .lex "self", param_2223
.annotate 'line', 1808
    new $P101, "ResizablePMCArray"
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_bind_attr_obj $P103, $P104, "@!arguments", 0, $P101
.annotate 'line', 1809
    new $P101, "Hash"
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_bind_attr_obj $P103, $P104, "%!options", 1, $P101
.annotate 'line', 1807
    .return ($P101)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "arguments" :anon :subid("247_1321350743.52383") :outer("245_1321350743.52383")
    .param pmc param_2225
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1812
    .lex "self", param_2225
    find_lex $P101, "self"
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    repr_get_attr_obj $P2226, $P102, $P103, "@!arguments", 0
    unless_null $P2226, vivify_1106
    $P2226 = root_new ['parrot';'ResizablePMCArray']
  vivify_1106:
    .return ($P2226)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "options" :anon :subid("248_1321350743.52383") :outer("245_1321350743.52383")
    .param pmc param_2228
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1813
    .lex "self", param_2228
    find_lex $P101, "self"
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    repr_get_attr_obj $P2229, $P102, $P103, "%!options", 1
    unless_null $P2229, vivify_1107
    $P2229 = root_new ['parrot';'Hash']
  vivify_1107:
    .return ($P2229)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "add-argument" :anon :subid("249_1321350743.52383") :outer("245_1321350743.52383")
    .param pmc param_2231
    .param pmc param_2232
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1815
    .lex "self", param_2231
    .lex "$x", param_2232
.annotate 'line', 1816
    find_lex $P101, "self"
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    repr_get_attr_obj $P2233, $P102, $P103, "@!arguments", 0
    unless_null $P2233, vivify_1108
    $P2233 = root_new ['parrot';'ResizablePMCArray']
  vivify_1108:
    find_lex $P104, "$x"
    unless_null $P104, vivify_1109
    new $P104, "Undef"
  vivify_1109:
    push $P2233, $P104
.annotate 'line', 1815
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "add-option" :anon :subid("250_1321350743.52383") :outer("245_1321350743.52383")
    .param pmc param_2235
    .param pmc param_2236
    .param pmc param_2237
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1819
    .const 'Sub' $P2241 = "251_1321350743.52383" 
    capture_lex $P2241
    .lex "self", param_2235
    .lex "$name", param_2236
    .lex "$value", param_2237
.annotate 'line', 1822
    find_lex $P105, "$name"
    unless_null $P105, vivify_1110
    new $P105, "Undef"
  vivify_1110:
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_get_attr_obj $P2239, $P103, $P104, "%!options", 1
    unless_null $P2239, vivify_1111
    $P2239 = root_new ['parrot';'Hash']
  vivify_1111:
    exists $I100, $P2239[$P105]
    if $I100, if_2238
.annotate 'line', 1831
    find_lex $P109, "$value"
    unless_null $P109, vivify_1112
    new $P109, "Undef"
  vivify_1112:
    find_lex $P110, "$name"
    unless_null $P110, vivify_1113
    new $P110, "Undef"
  vivify_1113:
    find_lex $P111, "self"
    nqp_decontainerize $P112, $P111
    find_lex $P113, "$?CLASS"
    repr_get_attr_obj $P2248, $P112, $P113, "%!options", 1
    unless_null $P2248, vivify_1114
    $P2248 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P112, $P113, "%!options", 1, $P2248
  vivify_1114:
    set $P2248[$P110], $P109
.annotate 'line', 1830
    set $P101, $P109
.annotate 'line', 1822
    goto if_2238_end
  if_2238:
    .const 'Sub' $P2241 = "251_1321350743.52383" 
    capture_lex $P2241
    $P108 = $P2241()
    set $P101, $P108
  if_2238_end:
.annotate 'line', 1819
    .return ($P101)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "_block2240"  :anon :subid("251_1321350743.52383") :outer("250_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1823
    new $P106, "Undef"
    set $P2242, $P106
    .lex "$t", $P2242
    find_lex $P107, "self"
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    repr_get_attr_obj $P2243, $P108, $P109, "%!options", 1
    unless_null $P2243, vivify_1115
    $P2243 = root_new ['parrot';'Hash']
  vivify_1115:
    typeof $S100, $P2243
    new $P110, 'String'
    set $P110, $S100
    store_lex "$t", $P110
.annotate 'line', 1824
    find_lex $P107, "$t"
    unless_null $P107, vivify_1116
    new $P107, "Undef"
  vivify_1116:
    "say"($P107)
.annotate 'line', 1825
    find_lex $P108, "$t"
    unless_null $P108, vivify_1117
    new $P108, "Undef"
  vivify_1117:
    set $S100, $P108
    iseq $I101, $S100, "ResizablePMCArray"
    if $I101, if_2244
.annotate 'line', 1828
    find_lex $P109, "$name"
    unless_null $P109, vivify_1118
    new $P109, "Undef"
  vivify_1118:
    find_lex $P110, "self"
    nqp_decontainerize $P111, $P110
    find_lex $P112, "$?CLASS"
    repr_get_attr_obj $P2246, $P111, $P112, "%!options", 1
    unless_null $P2246, vivify_1119
    $P2246 = root_new ['parrot';'Hash']
  vivify_1119:
    set $P114, $P2246[$P109]
    unless_null $P114, vivify_1120
    new $P114, "Undef"
  vivify_1120:
    find_lex $P115, "$name"
    unless_null $P115, vivify_1121
    new $P115, "Undef"
  vivify_1121:
    new $P116, "ResizablePMCArray"
    push $P116, $P114
    push $P116, $P115
    find_lex $P117, "$name"
    unless_null $P117, vivify_1122
    new $P117, "Undef"
  vivify_1122:
    find_lex $P118, "self"
    nqp_decontainerize $P119, $P118
    find_lex $P120, "$?CLASS"
    repr_get_attr_obj $P2247, $P119, $P120, "%!options", 1
    unless_null $P2247, vivify_1123
    $P2247 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P119, $P120, "%!options", 1, $P2247
  vivify_1123:
    set $P2247[$P117], $P116
.annotate 'line', 1827
    set $P107, $P116
.annotate 'line', 1825
    goto if_2244_end
  if_2244:
.annotate 'line', 1826
    find_lex $P109, "$name"
    unless_null $P109, vivify_1124
    new $P109, "Undef"
  vivify_1124:
    find_lex $P110, "self"
    nqp_decontainerize $P111, $P110
    find_lex $P112, "$?CLASS"
    repr_get_attr_obj $P2245, $P111, $P112, "%!options", 1
    unless_null $P2245, vivify_1125
    $P2245 = root_new ['parrot';'Hash']
  vivify_1125:
    set $P113, $P2245[$P109]
    unless_null $P113, vivify_1126
    new $P113, "Undef"
  vivify_1126:
    find_lex $P114, "$value"
    unless_null $P114, vivify_1127
    new $P114, "Undef"
  vivify_1127:
    push $P113, $P114
.annotate 'line', 1825
    set $P107, $P113
  if_2244_end:
.annotate 'line', 1822
    .return ($P107)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2250"  :subid("252_1321350743.52383") :outer("10_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1836
    .const 'Sub' $P2311 = "264_1321350743.52383" 
    capture_lex $P2311
    .const 'Sub' $P2306 = "263_1321350743.52383" 
    capture_lex $P2306
    .const 'Sub' $P2301 = "262_1321350743.52383" 
    capture_lex $P2301
    .const 'Sub' $P2293 = "261_1321350743.52383" 
    capture_lex $P2293
    .const 'Sub' $P2278 = "259_1321350743.52383" 
    capture_lex $P2278
    .const 'Sub' $P2275 = "258_1321350743.52383" 
    capture_lex $P2275
    .const 'Sub' $P2271 = "257_1321350743.52383" 
    capture_lex $P2271
    .const 'Sub' $P2261 = "255_1321350743.52383" 
    capture_lex $P2261
    .const 'Sub' $P2259 = "254_1321350743.52383" 
    capture_lex $P2259
    .const 'Sub' $P2254 = "253_1321350743.52383" 
    capture_lex $P2254
    .lex "$?PACKAGE", $P2252
    .lex "$?CLASS", $P2253
.annotate 'line', 1901
    .const 'Sub' $P2311 = "264_1321350743.52383" 
    newclosure $P2384, $P2311
.annotate 'line', 1836
    .return ($P2384)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "new" :anon :subid("253_1321350743.52383") :outer("252_1321350743.52383")
    .param pmc param_2255
    .param pmc param_2256
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1842
    .lex "self", param_2255
    .lex "@specs", param_2256
.annotate 'line', 1843
    new $P101, "Undef"
    set $P2257, $P101
    .lex "$obj", $P2257
    find_lex $P102, "self"
    $P103 = $P102."CREATE"()
    store_lex "$obj", $P103
.annotate 'line', 1844
    find_lex $P102, "$obj"
    unless_null $P102, vivify_1128
    new $P102, "Undef"
  vivify_1128:
    find_lex $P2258, "@specs"
    unless_null $P2258, vivify_1129
    $P2258 = root_new ['parrot';'ResizablePMCArray']
  vivify_1129:
    $P102."BUILD"($P2258 :named("specs"))
.annotate 'line', 1842
    find_lex $P102, "$obj"
    unless_null $P102, vivify_1130
    new $P102, "Undef"
  vivify_1130:
    .return ($P102)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "stop-after-first-arg" :anon :subid("254_1321350743.52383") :outer("252_1321350743.52383")
    .param pmc param_2260
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1848
    .lex "self", param_2260
.annotate 'line', 1849
    new $P101, "Float"
    assign $P101, 1
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_bind_attr_obj $P103, $P104, "$!stop-after-first-arg", 3, $P101
.annotate 'line', 1848
    .return ($P101)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "BUILD" :anon :subid("255_1321350743.52383") :outer("252_1321350743.52383")
    .param pmc param_2262
    .param pmc param_2263 :optional :named("specs")
    .param int has_param_2263 :opt_flag
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1852
    .const 'Sub' $P2268 = "256_1321350743.52383" 
    capture_lex $P2268
    .lex "self", param_2262
    if has_param_2263, optparam_1131
    $P2264 = root_new ['parrot';'ResizablePMCArray']
    set param_2263, $P2264
  optparam_1131:
    .lex "@specs", param_2263
.annotate 'line', 1853
    new $P101, "Float"
    assign $P101, 1
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_get_attr_obj $P2265, $P103, $P104, "%!stopper", 2
    unless_null $P2265, vivify_1132
    $P2265 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P103, $P104, "%!stopper", 2, $P2265
  vivify_1132:
    set $P2265["--"], $P101
.annotate 'line', 1854
    new $P101, "Float"
    assign $P101, 0
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_bind_attr_obj $P103, $P104, "$!stop-after-first-arg", 3, $P101
.annotate 'line', 1855
    find_lex $P2266, "@specs"
    unless_null $P2266, vivify_1133
    $P2266 = root_new ['parrot';'ResizablePMCArray']
  vivify_1133:
    defined $I100, $P2266
    unless $I100, for_undef_1134
    iter $P101, $P2266
    new $P103, 'ExceptionHandler'
    set_label $P103, loop2270_handler
    $P103."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P103
  loop2270_test:
    unless $P101, loop2270_done
    shift $P102, $P101
  loop2270_redo:
    .const 'Sub' $P2268 = "256_1321350743.52383" 
    capture_lex $P2268
    $P2268($P102)
  loop2270_next:
    goto loop2270_test
  loop2270_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P104, exception, 'type'
    eq $P104, .CONTROL_LOOP_NEXT, loop2270_next
    eq $P104, .CONTROL_LOOP_REDO, loop2270_redo
  loop2270_done:
    pop_eh 
  for_undef_1134:
.annotate 'line', 1852
    .return ($P101)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2267"  :anon :subid("256_1321350743.52383") :outer("255_1321350743.52383")
    .param pmc param_2269
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1855
    .lex "$_", param_2269
.annotate 'line', 1856
    find_lex $P103, "self"
    find_lex $P104, "$_"
    unless_null $P104, vivify_1135
    new $P104, "Undef"
  vivify_1135:
    $P105 = $P103."add-spec"($P104)
.annotate 'line', 1855
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "add-stopper" :anon :subid("257_1321350743.52383") :outer("252_1321350743.52383")
    .param pmc param_2272
    .param pmc param_2273
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1859
    .lex "self", param_2272
    .lex "$x", param_2273
.annotate 'line', 1860
    new $P101, "Float"
    assign $P101, 1
    find_lex $P102, "$x"
    unless_null $P102, vivify_1136
    new $P102, "Undef"
  vivify_1136:
    find_lex $P103, "self"
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    repr_get_attr_obj $P2274, $P104, $P105, "%!stopper", 2
    unless_null $P2274, vivify_1137
    $P2274 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P104, $P105, "%!stopper", 2, $P2274
  vivify_1137:
    set $P2274[$P102], $P101
.annotate 'line', 1859
    .return ($P101)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "split-option-aliases" :anon :subid("258_1321350743.52383") :outer("252_1321350743.52383")
    .param pmc param_2276
    .param pmc param_2277
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1863
    .lex "self", param_2276
    .lex "$s", param_2277
.annotate 'line', 1864
    find_lex $P101, "$s"
    unless_null $P101, vivify_1138
    new $P101, "Undef"
  vivify_1138:
    set $S100, $P101
    split $P102, "|", $S100
.annotate 'line', 1863
    .return ($P102)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "add-spec" :anon :subid("259_1321350743.52383") :outer("252_1321350743.52383")
    .param pmc param_2279
    .param pmc param_2280
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1868
    .const 'Sub' $P2289 = "260_1321350743.52383" 
    capture_lex $P2289
    .lex "self", param_2279
    .lex "$s", param_2280
.annotate 'line', 1869
    new $P101, "Undef"
    set $P2281, $P101
    .lex "$i", $P2281
.annotate 'line', 1870
    new $P102, "Undef"
    set $P2282, $P102
    .lex "$type", $P2282
.annotate 'line', 1871
    $P2284 = root_new ['parrot';'ResizablePMCArray']
    set $P2283, $P2284
    .lex "@options", $P2283
.annotate 'line', 1869
    find_lex $P103, "$s"
    unless_null $P103, vivify_1139
    new $P103, "Undef"
  vivify_1139:
    set $S100, $P103
    index $I100, $S100, "="
    new $P104, 'Integer'
    set $P104, $I100
    store_lex "$i", $P104
.annotate 'line', 1868
    find_lex $P103, "$type"
    unless_null $P103, vivify_1140
    new $P103, "Undef"
  vivify_1140:
    find_lex $P2285, "@options"
    unless_null $P2285, vivify_1141
    $P2285 = root_new ['parrot';'ResizablePMCArray']
  vivify_1141:
.annotate 'line', 1872
    find_lex $P103, "$i"
    unless_null $P103, vivify_1142
    new $P103, "Undef"
  vivify_1142:
    set $N100, $P103
    set $N101, 0
    islt $I100, $N100, $N101
    if $I100, if_2286
.annotate 'line', 1876
    find_lex $P104, "$s"
    unless_null $P104, vivify_1143
    new $P104, "Undef"
  vivify_1143:
    set $S100, $P104
    find_lex $P105, "$i"
    unless_null $P105, vivify_1144
    new $P105, "Undef"
  vivify_1144:
    add $P106, $P105, 1
    set $I101, $P106
    substr $S101, $S100, $I101
    new $P107, 'String'
    set $P107, $S101
    store_lex "$type", $P107
.annotate 'line', 1877
    find_lex $P104, "self"
    find_lex $P105, "$s"
    unless_null $P105, vivify_1145
    new $P105, "Undef"
  vivify_1145:
    set $S100, $P105
    new $P106, "Float"
    assign $P106, 0
    set $I101, $P106
    find_lex $P107, "$i"
    unless_null $P107, vivify_1146
    new $P107, "Undef"
  vivify_1146:
    set $I102, $P107
    substr $S101, $S100, $I101, $I102
    $P108 = $P104."split-option-aliases"($S101)
    store_lex "@options", $P108
.annotate 'line', 1875
    goto if_2286_end
  if_2286:
.annotate 'line', 1873
    new $P104, "String"
    assign $P104, "b"
    store_lex "$type", $P104
.annotate 'line', 1874
    find_lex $P104, "self"
    find_lex $P105, "$s"
    unless_null $P105, vivify_1147
    new $P105, "Undef"
  vivify_1147:
    $P106 = $P104."split-option-aliases"($P105)
    store_lex "@options", $P106
  if_2286_end:
.annotate 'line', 1879
    find_lex $P2287, "@options"
    unless_null $P2287, vivify_1148
    $P2287 = root_new ['parrot';'ResizablePMCArray']
  vivify_1148:
    defined $I100, $P2287
    unless $I100, for_undef_1149
    iter $P103, $P2287
    new $P106, 'ExceptionHandler'
    set_label $P106, loop2292_handler
    $P106."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P106
  loop2292_test:
    unless $P103, loop2292_done
    shift $P104, $P103
  loop2292_redo:
    .const 'Sub' $P2289 = "260_1321350743.52383" 
    capture_lex $P2289
    $P2289($P104)
  loop2292_next:
    goto loop2292_test
  loop2292_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P107, exception, 'type'
    eq $P107, .CONTROL_LOOP_NEXT, loop2292_next
    eq $P107, .CONTROL_LOOP_REDO, loop2292_redo
  loop2292_done:
    pop_eh 
  for_undef_1149:
.annotate 'line', 1868
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2288"  :anon :subid("260_1321350743.52383") :outer("259_1321350743.52383")
    .param pmc param_2290
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1879
    .lex "$_", param_2290
.annotate 'line', 1880
    find_lex $P105, "$type"
    unless_null $P105, vivify_1150
    new $P105, "Undef"
  vivify_1150:
    find_lex $P106, "$_"
    unless_null $P106, vivify_1151
    new $P106, "Undef"
  vivify_1151:
    find_lex $P107, "self"
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    repr_get_attr_obj $P2291, $P108, $P109, "%!options", 1
    unless_null $P2291, vivify_1152
    $P2291 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P108, $P109, "%!options", 1, $P2291
  vivify_1152:
    set $P2291[$P106], $P105
.annotate 'line', 1879
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "is-option" :anon :subid("261_1321350743.52383") :outer("252_1321350743.52383")
    .param pmc param_2296
    .param pmc param_2297
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1885
    new $P2295, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2295, control_2294
    push_eh $P2295
    .lex "self", param_2296
    .lex "$x", param_2297
.annotate 'line', 1886
    find_lex $P102, "$x"
    unless_null $P102, vivify_1153
    new $P102, "Undef"
  vivify_1153:
    set $S100, $P102
    iseq $I100, $S100, "-"
    unless $I100, unless_2299
    new $P101, 'Integer'
    set $P101, $I100
    goto unless_2299_end
  unless_2299:
    find_lex $P103, "$x"
    unless_null $P103, vivify_1154
    new $P103, "Undef"
  vivify_1154:
    set $S101, $P103
    iseq $I101, $S101, "--"
    new $P101, 'Integer'
    set $P101, $I101
  unless_2299_end:
    unless $P101, if_2298_end
    new $P104, "Exception"
    set $P104['type'], .CONTROL_RETURN
    new $P105, "Float"
    assign $P105, 0
    setattribute $P104, 'payload', $P105
    throw $P104
  if_2298_end:
.annotate 'line', 1887
    find_lex $P101, "$x"
    unless_null $P101, vivify_1155
    new $P101, "Undef"
  vivify_1155:
    set $S100, $P101
    new $P102, "Float"
    assign $P102, 0
    set $I100, $P102
    new $P103, "Float"
    assign $P103, 1
    set $I101, $P103
    substr $S101, $S100, $I100, $I101
    iseq $I102, $S101, "-"
    unless $I102, if_2300_end
    new $P104, "Exception"
    set $P104['type'], .CONTROL_RETURN
    new $P105, "Float"
    assign $P105, 1
    setattribute $P104, 'payload', $P105
    throw $P104
  if_2300_end:
.annotate 'line', 1885
    .return (0)
  control_2294:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P101, exception, "payload"
    .return ($P101)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "wants-value" :anon :subid("262_1321350743.52383") :outer("252_1321350743.52383")
    .param pmc param_2302
    .param pmc param_2303
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1891
    .lex "self", param_2302
    .lex "$x", param_2303
.annotate 'line', 1892
    new $P101, "Undef"
    set $P2304, $P101
    .lex "$spec", $P2304
    find_lex $P102, "$x"
    unless_null $P102, vivify_1156
    new $P102, "Undef"
  vivify_1156:
    find_lex $P103, "self"
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    repr_get_attr_obj $P2305, $P104, $P105, "%!options", 1
    unless_null $P2305, vivify_1157
    $P2305 = root_new ['parrot';'Hash']
  vivify_1157:
    set $P106, $P2305[$P102]
    unless_null $P106, vivify_1158
    new $P106, "Undef"
  vivify_1158:
    store_lex "$spec", $P106
.annotate 'line', 1893
    find_lex $P102, "$spec"
    unless_null $P102, vivify_1159
    new $P102, "Undef"
  vivify_1159:
    set $S100, $P102
    new $P103, "Float"
    assign $P103, 0
    set $I100, $P103
    new $P104, "Float"
    assign $P104, 1
    set $I101, $P104
    substr $S101, $S100, $I100, $I101
    iseq $I102, $S101, "s"
.annotate 'line', 1891
    .return ($I102)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "optional-value" :anon :subid("263_1321350743.52383") :outer("252_1321350743.52383")
    .param pmc param_2307
    .param pmc param_2308
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1896
    .lex "self", param_2307
    .lex "$x", param_2308
.annotate 'line', 1897
    new $P101, "Undef"
    set $P2309, $P101
    .lex "$spec", $P2309
    find_lex $P102, "$x"
    unless_null $P102, vivify_1160
    new $P102, "Undef"
  vivify_1160:
    find_lex $P103, "self"
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    repr_get_attr_obj $P2310, $P104, $P105, "%!options", 1
    unless_null $P2310, vivify_1161
    $P2310 = root_new ['parrot';'Hash']
  vivify_1161:
    set $P106, $P2310[$P102]
    unless_null $P106, vivify_1162
    new $P106, "Undef"
  vivify_1162:
    store_lex "$spec", $P106
.annotate 'line', 1898
    find_lex $P102, "$spec"
    unless_null $P102, vivify_1163
    new $P102, "Undef"
  vivify_1163:
    set $S100, $P102
    iseq $I100, $S100, "s?"
.annotate 'line', 1896
    .return ($I100)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "parse" :anon :subid("264_1321350743.52383") :outer("252_1321350743.52383")
    .param pmc param_2314
    .param pmc param_2315
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1901
    .const 'Sub' $P2340 = "267_1321350743.52383" 
    capture_lex $P2340
    .const 'Sub' $P2332 = "266_1321350743.52383" 
    capture_lex $P2332
    .const 'Sub' $P2320 = "265_1321350743.52383" 
    capture_lex $P2320
    new $P2313, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2313, control_2312
    push_eh $P2313
    .lex "self", param_2314
    .lex "@args", param_2315
.annotate 'line', 1902
    new $P101, "Undef"
    set $P2316, $P101
    .lex "$i", $P2316
.annotate 'line', 1903
    new $P102, "Undef"
    set $P2317, $P102
    .lex "$arg-count", $P2317
.annotate 'line', 1905
    new $P103, "Undef"
    set $P2318, $P103
    .lex "$result", $P2318
.annotate 'line', 1909
    .const 'Sub' $P2320 = "265_1321350743.52383" 
    newclosure $P2330, $P2320
    set $P2319, $P2330
    .lex "get-value", $P2319
.annotate 'line', 1924
    .const 'Sub' $P2332 = "266_1321350743.52383" 
    newclosure $P2337, $P2332
    set $P2331, $P2337
    .lex "slurp-rest", $P2331
.annotate 'line', 1902
    new $P105, "Float"
    assign $P105, 0
    store_lex "$i", $P105
.annotate 'line', 1903
    find_lex $P2338, "@args"
    unless_null $P2338, vivify_1189
    $P2338 = root_new ['parrot';'ResizablePMCArray']
  vivify_1189:
    set $N100, $P2338
    new $P105, 'Float'
    set $P105, $N100
    store_lex "$arg-count", $P105
.annotate 'line', 1905
    get_hll_global $P105, "GLOBAL"
    nqp_get_package_through_who $P106, $P105, "HLL"
    nqp_get_package_through_who $P107, $P106, "CommandLine"
    get_who $P108, $P107
    set $P109, $P108["Result"]
    $P110 = $P109."new"()
    store_lex "$result", $P110
.annotate 'line', 1906
    find_lex $P105, "$result"
    unless_null $P105, vivify_1190
    new $P105, "Undef"
  vivify_1190:
    $P105."init"()
.annotate 'line', 1901
    find_lex $P105, "get-value"
    find_lex $P105, "slurp-rest"
.annotate 'line', 1932
    new $P108, 'ExceptionHandler'
    set_label $P108, loop2383_handler
    $P108."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P108
  loop2383_test:
    find_lex $P105, "$i"
    unless_null $P105, vivify_1191
    new $P105, "Undef"
  vivify_1191:
    set $N100, $P105
    find_lex $P106, "$arg-count"
    unless_null $P106, vivify_1192
    new $P106, "Undef"
  vivify_1192:
    set $N101, $P106
    islt $I101, $N100, $N101
    unless $I101, loop2383_done
  loop2383_redo:
    .const 'Sub' $P2340 = "267_1321350743.52383" 
    capture_lex $P2340
    $P2340()
  loop2383_next:
    goto loop2383_test
  loop2383_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P109, exception, 'type'
    eq $P109, .CONTROL_LOOP_NEXT, loop2383_next
    eq $P109, .CONTROL_LOOP_REDO, loop2383_redo
  loop2383_done:
    pop_eh 
.annotate 'line', 1987
    new $P105, "Exception"
    set $P105['type'], .CONTROL_RETURN
    find_lex $P106, "$result"
    unless_null $P106, vivify_1252
    new $P106, "Undef"
  vivify_1252:
    setattribute $P105, 'payload', $P106
    throw $P105
.annotate 'line', 1901
    .return ()
  control_2312:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P105, exception, "payload"
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "get-value"  :subid("265_1321350743.52383") :outer("264_1321350743.52383")
    .param pmc param_2321
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1909
    .lex "$opt", param_2321
.annotate 'line', 1910
    find_lex $P105, "$i"
    unless_null $P105, vivify_1164
    new $P105, "Undef"
  vivify_1164:
    set $N100, $P105
    find_lex $P106, "$arg-count"
    unless_null $P106, vivify_1165
    new $P106, "Undef"
  vivify_1165:
    sub $P107, $P106, 1
    set $N101, $P107
    iseq $I100, $N100, $N101
    if $I100, if_2322
.annotate 'line', 1912
    find_lex $P109, "self"
    find_lex $P110, "$i"
    unless_null $P110, vivify_1166
    new $P110, "Undef"
  vivify_1166:
    add $P111, $P110, 1
    set $I101, $P111
    find_lex $P2324, "@args"
    unless_null $P2324, vivify_1167
    $P2324 = root_new ['parrot';'ResizablePMCArray']
  vivify_1167:
    set $P112, $P2324[$I101]
    unless_null $P112, vivify_1168
    new $P112, "Undef"
  vivify_1168:
    $P113 = $P109."is-option"($P112)
    if $P113, if_2323
.annotate 'line', 1914
    find_lex $P115, "$i"
    unless_null $P115, vivify_1169
    new $P115, "Undef"
  vivify_1169:
    add $P116, $P115, 1
    set $I102, $P116
    find_lex $P2326, "@args"
    unless_null $P2326, vivify_1170
    $P2326 = root_new ['parrot';'ResizablePMCArray']
  vivify_1170:
    set $P117, $P2326[$I102]
    unless_null $P117, vivify_1171
    new $P117, "Undef"
  vivify_1171:
    find_lex $P118, "self"
    nqp_decontainerize $P119, $P118
    find_lex $P120, "$?CLASS"
    repr_get_attr_obj $P2327, $P119, $P120, "%!stopper", 2
    unless_null $P2327, vivify_1172
    $P2327 = root_new ['parrot';'Hash']
  vivify_1172:
    set $P121, $P2327[$P117]
    unless_null $P121, vivify_1173
    new $P121, "Undef"
  vivify_1173:
    if $P121, if_2325
.annotate 'line', 1916
    find_lex $P122, "$i"
    unless_null $P122, vivify_1174
    new $P122, "Undef"
  vivify_1174:
    clone $P2328, $P122
    inc $P122
    find_lex $P122, "$i"
    unless_null $P122, vivify_1175
    new $P122, "Undef"
  vivify_1175:
    set $I103, $P122
    find_lex $P2329, "@args"
    unless_null $P2329, vivify_1176
    $P2329 = root_new ['parrot';'ResizablePMCArray']
  vivify_1176:
    set $P123, $P2329[$I103]
    unless_null $P123, vivify_1177
    new $P123, "Undef"
  vivify_1177:
    set $P114, $P123
.annotate 'line', 1914
    goto if_2325_end
  if_2325:
.annotate 'line', 1915
    new $P122, 'String'
    set $P122, "Option "
    find_lex $P123, "$opt"
    unless_null $P123, vivify_1178
    new $P123, "Undef"
  vivify_1178:
    concat $P124, $P122, $P123
    concat $P125, $P124, " needs a value, but is followed by a stopper"
    die $P125
  if_2325_end:
.annotate 'line', 1914
    set $P108, $P114
.annotate 'line', 1912
    goto if_2323_end
  if_2323:
.annotate 'line', 1913
    new $P114, 'String'
    set $P114, "Option "
    find_lex $P115, "$opt"
    unless_null $P115, vivify_1179
    new $P115, "Undef"
  vivify_1179:
    concat $P116, $P114, $P115
    concat $P117, $P116, " needs a value, but is followed by an option"
    die $P117
  if_2323_end:
.annotate 'line', 1912
    set $P104, $P108
.annotate 'line', 1910
    goto if_2322_end
  if_2322:
.annotate 'line', 1911
    new $P108, 'String'
    set $P108, "Option "
    find_lex $P109, "$opt"
    unless_null $P109, vivify_1180
    new $P109, "Undef"
  vivify_1180:
    concat $P110, $P108, $P109
    concat $P111, $P110, " needs a value"
    die $P111
  if_2322_end:
.annotate 'line', 1909
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "slurp-rest"  :subid("266_1321350743.52383") :outer("264_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1924
    find_lex $P105, "$i"
    unless_null $P105, vivify_1181
    new $P105, "Undef"
  vivify_1181:
    clone $P2333, $P105
    inc $P105
.annotate 'line', 1926
    new $P107, 'ExceptionHandler'
    set_label $P107, loop2336_handler
    $P107."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P107
  loop2336_test:
    find_lex $P105, "$i"
    unless_null $P105, vivify_1182
    new $P105, "Undef"
  vivify_1182:
    set $N100, $P105
    find_lex $P106, "$arg-count"
    unless_null $P106, vivify_1183
    new $P106, "Undef"
  vivify_1183:
    set $N101, $P106
    islt $I100, $N100, $N101
    unless $I100, loop2336_done
  loop2336_redo:
.annotate 'line', 1927
    find_lex $P107, "$result"
    unless_null $P107, vivify_1184
    new $P107, "Undef"
  vivify_1184:
    find_lex $P108, "$i"
    unless_null $P108, vivify_1185
    new $P108, "Undef"
  vivify_1185:
    set $I101, $P108
    find_lex $P2334, "@args"
    unless_null $P2334, vivify_1186
    $P2334 = root_new ['parrot';'ResizablePMCArray']
  vivify_1186:
    set $P109, $P2334[$I101]
    unless_null $P109, vivify_1187
    new $P109, "Undef"
  vivify_1187:
    $P107."add-argument"($P109)
.annotate 'line', 1926
    find_lex $P107, "$i"
    unless_null $P107, vivify_1188
    new $P107, "Undef"
  vivify_1188:
    clone $P2335, $P107
    inc $P107
  loop2336_next:
    goto loop2336_test
  loop2336_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P108, exception, 'type'
    eq $P108, .CONTROL_LOOP_NEXT, loop2336_next
    eq $P108, .CONTROL_LOOP_REDO, loop2336_redo
  loop2336_done:
    pop_eh 
.annotate 'line', 1924
    .return ($I100)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2339"  :anon :subid("267_1321350743.52383") :outer("264_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1932
    .const 'Sub' $P2363 = "269_1321350743.52383" 
    capture_lex $P2363
    .const 'Sub' $P2346 = "268_1321350743.52383" 
    capture_lex $P2346
.annotate 'line', 1933
    new $P107, "Undef"
    set $P2341, $P107
    .lex "$cur", $P2341
    find_lex $P108, "$i"
    unless_null $P108, vivify_1193
    new $P108, "Undef"
  vivify_1193:
    set $I102, $P108
    find_lex $P2342, "@args"
    unless_null $P2342, vivify_1194
    $P2342 = root_new ['parrot';'ResizablePMCArray']
  vivify_1194:
    set $P109, $P2342[$I102]
    unless_null $P109, vivify_1195
    new $P109, "Undef"
  vivify_1195:
    store_lex "$cur", $P109
.annotate 'line', 1934
    find_lex $P108, "self"
    find_lex $P109, "$cur"
    unless_null $P109, vivify_1196
    new $P109, "Undef"
  vivify_1196:
    $P110 = $P108."is-option"($P109)
    if $P110, if_2343
.annotate 'line', 1979
    find_lex $P111, "$cur"
    unless_null $P111, vivify_1197
    new $P111, "Undef"
  vivify_1197:
    find_lex $P112, "self"
    nqp_decontainerize $P113, $P112
    find_lex $P114, "$?CLASS"
    repr_get_attr_obj $P2380, $P113, $P114, "%!stopper", 2
    unless_null $P2380, vivify_1198
    $P2380 = root_new ['parrot';'Hash']
  vivify_1198:
    set $P115, $P2380[$P111]
    unless_null $P115, vivify_1199
    new $P115, "Undef"
  vivify_1199:
    if $P115, if_2379
.annotate 'line', 1982
    find_lex $P116, "$result"
    unless_null $P116, vivify_1200
    new $P116, "Undef"
  vivify_1200:
    find_lex $P117, "$cur"
    unless_null $P117, vivify_1201
    new $P117, "Undef"
  vivify_1201:
    $P116."add-argument"($P117)
.annotate 'line', 1983
    find_lex $P116, "self"
    nqp_decontainerize $P117, $P116
    find_lex $P118, "$?CLASS"
    repr_get_attr_obj $P119, $P117, $P118, "$!stop-after-first-arg", 3
    unless_null $P119, vivify_1202
    new $P119, "Undef"
  vivify_1202:
    unless $P119, if_2381_end
    "slurp-rest"()
  if_2381_end:
.annotate 'line', 1981
    goto if_2379_end
  if_2379:
.annotate 'line', 1980
    "slurp-rest"()
  if_2379_end:
.annotate 'line', 1979
    goto if_2343_end
  if_2343:
.annotate 'line', 1935
    find_lex $P111, "$cur"
    unless_null $P111, vivify_1203
    new $P111, "Undef"
  vivify_1203:
    set $S100, $P111
    new $P112, "Float"
    assign $P112, 0
    set $I102, $P112
    new $P113, "Float"
    assign $P113, 2
    set $I103, $P113
    substr $S101, $S100, $I102, $I103
    iseq $I104, $S101, "--"
    if $I104, if_2344
.annotate 'line', 1957
    .const 'Sub' $P2363 = "269_1321350743.52383" 
    capture_lex $P2363
    $P2363()
    goto if_2344_end
  if_2344:
.annotate 'line', 1935
    .const 'Sub' $P2346 = "268_1321350743.52383" 
    capture_lex $P2346
    $P2346()
  if_2344_end:
  if_2343_end:
.annotate 'line', 1932
    find_lex $P108, "$i"
    unless_null $P108, vivify_1251
    new $P108, "Undef"
  vivify_1251:
    clone $P2382, $P108
    inc $P108
    .return ($P2382)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2362"  :anon :subid("269_1321350743.52383") :outer("267_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1957
    .const 'Sub' $P2372 = "270_1321350743.52383" 
    capture_lex $P2372
.annotate 'line', 1958
    new $P119, "Undef"
    set $P2364, $P119
    .lex "$opt", $P2364
    find_lex $P120, "$cur"
    unless_null $P120, vivify_1204
    new $P120, "Undef"
  vivify_1204:
    set $S102, $P120
    new $P121, "Float"
    assign $P121, 1
    set $I105, $P121
    substr $S103, $S102, $I105
    new $P122, 'String'
    set $P122, $S103
    store_lex "$opt", $P122
.annotate 'line', 1959
    find_lex $P121, "$opt"
    unless_null $P121, vivify_1205
    new $P121, "Undef"
  vivify_1205:
    set $S102, $P121
    length $I105, $S102
    set $N102, $I105
    set $N103, 1
    iseq $I106, $N102, $N103
    if $I106, if_2365
.annotate 'line', 1969
    .const 'Sub' $P2372 = "270_1321350743.52383" 
    capture_lex $P2372
    $P125 = $P2372()
    set $P120, $P125
.annotate 'line', 1959
    goto if_2365_end
  if_2365:
.annotate 'line', 1961
    find_lex $P122, "$opt"
    unless_null $P122, vivify_1213
    new $P122, "Undef"
  vivify_1213:
    find_lex $P123, "self"
    nqp_decontainerize $P124, $P123
    find_lex $P125, "$?CLASS"
    repr_get_attr_obj $P2367, $P124, $P125, "%!options", 1
    unless_null $P2367, vivify_1214
    $P2367 = root_new ['parrot';'Hash']
  vivify_1214:
    set $P126, $P2367[$P122]
    unless_null $P126, vivify_1215
    new $P126, "Undef"
  vivify_1215:
    if $P126, unless_2366_end
    new $P127, 'String'
    set $P127, "No such option -"
    find_lex $P128, "$opt"
    unless_null $P128, vivify_1216
    new $P128, "Undef"
  vivify_1216:
    concat $P129, $P127, $P128
    die $P129
  unless_2366_end:
.annotate 'line', 1962
    find_lex $P122, "self"
    find_lex $P123, "$opt"
    unless_null $P123, vivify_1217
    new $P123, "Undef"
  vivify_1217:
    $P124 = $P122."wants-value"($P123)
    if $P124, if_2368
.annotate 'line', 1966
    find_lex $P125, "$result"
    unless_null $P125, vivify_1218
    new $P125, "Undef"
  vivify_1218:
    find_lex $P126, "$opt"
    unless_null $P126, vivify_1219
    new $P126, "Undef"
  vivify_1219:
    $P125."add-option"($P126, 1)
.annotate 'line', 1965
    goto if_2368_end
  if_2368:
.annotate 'line', 1963
    find_lex $P125, "$result"
    unless_null $P125, vivify_1220
    new $P125, "Undef"
  vivify_1220:
    find_lex $P126, "$opt"
    unless_null $P126, vivify_1221
    new $P126, "Undef"
  vivify_1221:
.annotate 'line', 1964
    new $P127, 'String'
    set $P127, "-"
    find_lex $P128, "$opt"
    unless_null $P128, vivify_1222
    new $P128, "Undef"
  vivify_1222:
    concat $P129, $P127, $P128
    $P130 = "get-value"($P129)
    $P125."add-option"($P126, $P130)
  if_2368_end:
.annotate 'line', 1968
    new $P123, 'String'
    set $P123, "-"
    find_lex $P124, "$opt"
    unless_null $P124, vivify_1223
    new $P124, "Undef"
  vivify_1223:
    concat $P125, $P123, $P124
    find_lex $P126, "self"
    nqp_decontainerize $P127, $P126
    find_lex $P128, "$?CLASS"
    repr_get_attr_obj $P2370, $P127, $P128, "%!stopper", 2
    unless_null $P2370, vivify_1224
    $P2370 = root_new ['parrot';'Hash']
  vivify_1224:
    set $P129, $P2370[$P125]
    unless_null $P129, vivify_1225
    new $P129, "Undef"
  vivify_1225:
    if $P129, if_2369
    set $P122, $P129
    goto if_2369_end
  if_2369:
    $P130 = "slurp-rest"()
    set $P122, $P130
  if_2369_end:
.annotate 'line', 1959
    set $P120, $P122
  if_2365_end:
.annotate 'line', 1957
    .return ($P120)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "_block2371"  :anon :subid("270_1321350743.52383") :outer("269_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1969
    .const 'Sub' $P2375 = "271_1321350743.52383" 
    capture_lex $P2375
.annotate 'line', 1971
    new $P123, "Undef"
    set $P2373, $P123
    .lex "$iter", $P2373
    find_lex $P124, "$opt"
    unless_null $P124, vivify_1206
    new $P124, "Undef"
  vivify_1206:
    iter $P125, $P124
    store_lex "$iter", $P125
.annotate 'line', 1972
    new $P126, 'ExceptionHandler'
    set_label $P126, loop2378_handler
    $P126."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P126
  loop2378_test:
    find_lex $P124, "$iter"
    unless_null $P124, vivify_1207
    new $P124, "Undef"
  vivify_1207:
    unless $P124, loop2378_done
  loop2378_redo:
    .const 'Sub' $P2375 = "271_1321350743.52383" 
    capture_lex $P2375
    $P2375()
  loop2378_next:
    goto loop2378_test
  loop2378_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P127, exception, 'type'
    eq $P127, .CONTROL_LOOP_NEXT, loop2378_next
    eq $P127, .CONTROL_LOOP_REDO, loop2378_redo
  loop2378_done:
    pop_eh 
.annotate 'line', 1969
    .return ($P124)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2374"  :anon :subid("271_1321350743.52383") :outer("270_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1973
    new $P125, "Undef"
    set $P2376, $P125
    .lex "$o", $P2376
    find_lex $P126, "$iter"
    unless_null $P126, vivify_1208
    new $P126, "Undef"
  vivify_1208:
    shift $P127, $P126
    store_lex "$o", $P127
.annotate 'line', 1974
    find_lex $P126, "self"
    find_lex $P127, "$o"
    unless_null $P127, vivify_1209
    new $P127, "Undef"
  vivify_1209:
    $P128 = $P126."wants-value"($P127)
    unless $P128, if_2377_end
    new $P129, 'String'
    set $P129, "Option -"
    find_lex $P130, "$o"
    unless_null $P130, vivify_1210
    new $P130, "Undef"
  vivify_1210:
    concat $P131, $P129, $P130
    concat $P132, $P131, " requires a value and cannot be grouped"
    die $P132
  if_2377_end:
.annotate 'line', 1975
    find_lex $P126, "$result"
    unless_null $P126, vivify_1211
    new $P126, "Undef"
  vivify_1211:
    find_lex $P127, "$o"
    unless_null $P127, vivify_1212
    new $P127, "Undef"
  vivify_1212:
    $P128 = $P126."add-option"($P127, 1)
.annotate 'line', 1972
    .return ($P128)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2345"  :anon :subid("268_1321350743.52383") :outer("267_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1937
    new $P114, "Undef"
    set $P2347, $P114
    .lex "$opt", $P2347
.annotate 'line', 1938
    new $P115, "Undef"
    set $P2348, $P115
    .lex "$idx", $P2348
.annotate 'line', 1939
    new $P116, "Undef"
    set $P2349, $P116
    .lex "$value", $P2349
.annotate 'line', 1940
    new $P117, "Undef"
    set $P2350, $P117
    .lex "$has-value", $P2350
.annotate 'line', 1937
    find_lex $P118, "$i"
    unless_null $P118, vivify_1226
    new $P118, "Undef"
  vivify_1226:
    set $I105, $P118
    find_lex $P2351, "@args"
    unless_null $P2351, vivify_1227
    $P2351 = root_new ['parrot';'ResizablePMCArray']
  vivify_1227:
    set $P119, $P2351[$I105]
    unless_null $P119, vivify_1228
    new $P119, "Undef"
  vivify_1228:
    set $S102, $P119
    new $P120, "Float"
    assign $P120, 2
    set $I106, $P120
    substr $S103, $S102, $I106
    new $P121, 'String'
    set $P121, $S103
    store_lex "$opt", $P121
.annotate 'line', 1938
    find_lex $P118, "$opt"
    unless_null $P118, vivify_1229
    new $P118, "Undef"
  vivify_1229:
    set $S102, $P118
    index $I105, $S102, "="
    new $P119, 'Integer'
    set $P119, $I105
    store_lex "$idx", $P119
.annotate 'line', 1939
    new $P118, "Float"
    assign $P118, 1
    store_lex "$value", $P118
.annotate 'line', 1940
    new $P118, "Float"
    assign $P118, 0
    store_lex "$has-value", $P118
.annotate 'line', 1942
    find_lex $P118, "$idx"
    unless_null $P118, vivify_1230
    new $P118, "Undef"
  vivify_1230:
    set $N102, $P118
    set $N103, 0
    isge $I105, $N102, $N103
    if $I105, if_2352
.annotate 'line', 1946
    find_lex $P119, "self"
    find_lex $P120, "$opt"
    unless_null $P120, vivify_1231
    new $P120, "Undef"
  vivify_1231:
    $P121 = $P119."optional-value"($P120)
    unless $P121, if_2353_end
.annotate 'line', 1947
    new $P122, "String"
    assign $P122, ""
    store_lex "$value", $P122
.annotate 'line', 1948
    new $P122, "Float"
    assign $P122, 1
    store_lex "$has-value", $P122
  if_2353_end:
.annotate 'line', 1946
    goto if_2352_end
  if_2352:
.annotate 'line', 1943
    find_lex $P119, "$opt"
    unless_null $P119, vivify_1232
    new $P119, "Undef"
  vivify_1232:
    set $S102, $P119
    find_lex $P120, "$idx"
    unless_null $P120, vivify_1233
    new $P120, "Undef"
  vivify_1233:
    add $P121, $P120, 1
    set $I106, $P121
    substr $S103, $S102, $I106
    new $P122, 'String'
    set $P122, $S103
    store_lex "$value", $P122
.annotate 'line', 1944
    find_lex $P119, "$opt"
    unless_null $P119, vivify_1234
    new $P119, "Undef"
  vivify_1234:
    set $S102, $P119
    new $P120, "Float"
    assign $P120, 0
    set $I106, $P120
    find_lex $P121, "$idx"
    unless_null $P121, vivify_1235
    new $P121, "Undef"
  vivify_1235:
    set $I107, $P121
    substr $S103, $S102, $I106, $I107
    new $P122, 'String'
    set $P122, $S103
    store_lex "$opt", $P122
.annotate 'line', 1945
    new $P119, "Float"
    assign $P119, 1
    store_lex "$has-value", $P119
  if_2352_end:
.annotate 'line', 1950
    find_lex $P121, "$opt"
    unless_null $P121, vivify_1236
    new $P121, "Undef"
  vivify_1236:
    find_lex $P118, "self"
    nqp_decontainerize $P119, $P118
    find_lex $P120, "$?CLASS"
    repr_get_attr_obj $P2355, $P119, $P120, "%!options", 1
    unless_null $P2355, vivify_1237
    $P2355 = root_new ['parrot';'Hash']
  vivify_1237:
    exists $I105, $P2355[$P121]
    if $I105, unless_2354_end
    new $P122, 'String'
    set $P122, "Illegal option --"
    find_lex $P123, "$opt"
    unless_null $P123, vivify_1238
    new $P123, "Undef"
  vivify_1238:
    concat $P124, $P122, $P123
    die $P124
  unless_2354_end:
.annotate 'line', 1951
    find_lex $P119, "self"
    find_lex $P120, "$opt"
    unless_null $P120, vivify_1239
    new $P120, "Undef"
  vivify_1239:
    $P121 = $P119."wants-value"($P120)
    isfalse $I105, $P121
    if $I105, if_2357
    new $P118, 'Integer'
    set $P118, $I105
    goto if_2357_end
  if_2357:
    find_lex $P122, "$has-value"
    unless_null $P122, vivify_1240
    new $P122, "Undef"
  vivify_1240:
    set $P118, $P122
  if_2357_end:
    unless $P118, if_2356_end
    new $P123, 'String'
    set $P123, "Option --"
    find_lex $P124, "$opt"
    unless_null $P124, vivify_1241
    new $P124, "Undef"
  vivify_1241:
    concat $P125, $P123, $P124
    concat $P126, $P125, " does not allow a value"
    die $P126
  if_2356_end:
.annotate 'line', 1952
    find_lex $P119, "$has-value"
    unless_null $P119, vivify_1242
    new $P119, "Undef"
  vivify_1242:
    isfalse $I105, $P119
    if $I105, if_2359
    new $P118, 'Integer'
    set $P118, $I105
    goto if_2359_end
  if_2359:
    find_lex $P120, "self"
    find_lex $P121, "$opt"
    unless_null $P121, vivify_1243
    new $P121, "Undef"
  vivify_1243:
    $P122 = $P120."wants-value"($P121)
    set $P118, $P122
  if_2359_end:
    unless $P118, if_2358_end
.annotate 'line', 1953
    new $P123, 'String'
    set $P123, "--"
    find_lex $P124, "$opt"
    unless_null $P124, vivify_1244
    new $P124, "Undef"
  vivify_1244:
    concat $P125, $P123, $P124
    $P126 = "get-value"($P125)
    store_lex "$value", $P126
  if_2358_end:
.annotate 'line', 1955
    find_lex $P118, "$result"
    unless_null $P118, vivify_1245
    new $P118, "Undef"
  vivify_1245:
    find_lex $P119, "$opt"
    unless_null $P119, vivify_1246
    new $P119, "Undef"
  vivify_1246:
    find_lex $P120, "$value"
    unless_null $P120, vivify_1247
    new $P120, "Undef"
  vivify_1247:
    $P118."add-option"($P119, $P120)
.annotate 'line', 1956
    new $P119, 'String'
    set $P119, "--"
    find_lex $P120, "$opt"
    unless_null $P120, vivify_1248
    new $P120, "Undef"
  vivify_1248:
    concat $P121, $P119, $P120
    find_lex $P122, "self"
    nqp_decontainerize $P123, $P122
    find_lex $P124, "$?CLASS"
    repr_get_attr_obj $P2361, $P123, $P124, "%!stopper", 2
    unless_null $P2361, vivify_1249
    $P2361 = root_new ['parrot';'Hash']
  vivify_1249:
    set $P125, $P2361[$P121]
    unless_null $P125, vivify_1250
    new $P125, "Undef"
  vivify_1250:
    if $P125, if_2360
    set $P118, $P125
    goto if_2360_end
  if_2360:
    find_lex $P126, "slurp-rest"
    set $P118, $P126
  if_2360_end:
.annotate 'line', 1935
    .return ($P118)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block2385"  :subid("272_1321350743.52383") :outer("10_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 2022
    .const 'Sub' $P2481 = "292_1321350743.52383" 
    capture_lex $P2481
    .const 'Sub' $P2479 = "291_1321350743.52383" 
    capture_lex $P2479
    .const 'Sub' $P2477 = "290_1321350743.52383" 
    capture_lex $P2477
    .const 'Sub' $P2461 = "288_1321350743.52383" 
    capture_lex $P2461
    .const 'Sub' $P2454 = "287_1321350743.52383" 
    capture_lex $P2454
    .const 'Sub' $P2452 = "286_1321350743.52383" 
    capture_lex $P2452
    .const 'Sub' $P2446 = "285_1321350743.52383" 
    capture_lex $P2446
    .const 'Sub' $P2440 = "284_1321350743.52383" 
    capture_lex $P2440
    .const 'Sub' $P2436 = "283_1321350743.52383" 
    capture_lex $P2436
    .const 'Sub' $P2433 = "282_1321350743.52383" 
    capture_lex $P2433
    .const 'Sub' $P2427 = "281_1321350743.52383" 
    capture_lex $P2427
    .const 'Sub' $P2420 = "280_1321350743.52383" 
    capture_lex $P2420
    .const 'Sub' $P2414 = "279_1321350743.52383" 
    capture_lex $P2414
    .const 'Sub' $P2409 = "278_1321350743.52383" 
    capture_lex $P2409
    .const 'Sub' $P2404 = "277_1321350743.52383" 
    capture_lex $P2404
    .const 'Sub' $P2391 = "273_1321350743.52383" 
    capture_lex $P2391
    .lex "Event", $P2387
    .lex "$?PACKAGE", $P2388
    .lex "$?CLASS", $P2389
.annotate 'line', 2024
    .const 'Sub' $P2391 = "273_1321350743.52383" 
    capture_lex $P2391
    $P2391()
.annotate 'line', 2209
    .const 'Sub' $P2481 = "292_1321350743.52383" 
    newclosure $P2484, $P2481
.annotate 'line', 2022
    .return ($P2484)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block2390"  :anon :subid("273_1321350743.52383") :outer("272_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 2024
    .const 'Sub' $P2398 = "276_1321350743.52383" 
    capture_lex $P2398
    .const 'Sub' $P2396 = "275_1321350743.52383" 
    capture_lex $P2396
    .const 'Sub' $P2394 = "274_1321350743.52383" 
    capture_lex $P2394
    .lex "$?PACKAGE", $P2392
    .lex "$?CLASS", $P2393
.annotate 'line', 2033
    .const 'Sub' $P2398 = "276_1321350743.52383" 
    newclosure $P2403, $P2398
.annotate 'line', 2024
    .return ($P2403)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "deserialize_past" :anon :subid("274_1321350743.52383") :outer("273_1321350743.52383")
    .param pmc param_2395
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 2027
    .lex "self", param_2395
    find_lex $P101, "self"
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    repr_get_attr_obj $P104, $P102, $P103, "$!deserialize_past", 0
    unless_null $P104, vivify_1253
    new $P104, "Undef"
  vivify_1253:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "fixup_past" :anon :subid("275_1321350743.52383") :outer("273_1321350743.52383")
    .param pmc param_2397
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 2031
    .lex "self", param_2397
    find_lex $P101, "self"
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    repr_get_attr_obj $P104, $P102, $P103, "$!fixup_past", 1
    unless_null $P104, vivify_1254
    new $P104, "Undef"
  vivify_1254:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "new" :anon :subid("276_1321350743.52383") :outer("273_1321350743.52383")
    .param pmc param_2399
    .param pmc param_2400 :optional :named("deserialize_past")
    .param int has_param_2400 :opt_flag
    .param pmc param_2401 :optional :named("fixup_past")
    .param int has_param_2401 :opt_flag
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 2033
    .lex "self", param_2399
    if has_param_2400, optparam_1255
    new $P101, "Undef"
    set param_2400, $P101
  optparam_1255:
    .lex "$deserialize_past", param_2400
    if has_param_2401, optparam_1256
    new $P102, "Undef"
    set param_2401, $P102
  optparam_1256:
    .lex "$fixup_past", param_2401
.annotate 'line', 2034
    new $P103, "Undef"
    set $P2402, $P103
    .lex "$node", $P2402
    find_lex $P104, "self"
    repr_instance_of $P105, $P104
    store_lex "$node", $P105
.annotate 'line', 2035
    find_lex $P104, "$node"
    unless_null $P104, vivify_1257
    new $P104, "Undef"
  vivify_1257:
    find_lex $P105, "Event"
    find_lex $P106, "$deserialize_past"
    unless_null $P106, vivify_1258
    new $P106, "Undef"
  vivify_1258:
    setattribute $P104, $P105, "$!deserialize_past", $P106
.annotate 'line', 2036
    find_lex $P104, "$node"
    unless_null $P104, vivify_1259
    new $P104, "Undef"
  vivify_1259:
    find_lex $P105, "Event"
    find_lex $P106, "$fixup_past"
    unless_null $P106, vivify_1260
    new $P106, "Undef"
  vivify_1260:
    setattribute $P104, $P105, "$!fixup_past", $P106
.annotate 'line', 2033
    find_lex $P104, "$node"
    unless_null $P104, vivify_1261
    new $P104, "Undef"
  vivify_1261:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "new" :anon :subid("277_1321350743.52383") :outer("272_1321350743.52383")
    .param pmc param_2405
    .param pmc param_2406 :named("handle")
    .param pmc param_2407 :optional :named("description")
    .param int has_param_2407 :opt_flag
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 2060
    .lex "self", param_2405
    .lex "$handle", param_2406
    if has_param_2407, optparam_1262
    new $P101, "String"
    assign $P101, "<unknown>"
    set param_2407, $P101
  optparam_1262:
    .lex "$description", param_2407
.annotate 'line', 2061
    new $P102, "Undef"
    set $P2408, $P102
    .lex "$obj", $P2408
    find_lex $P103, "self"
    $P104 = $P103."CREATE"()
    store_lex "$obj", $P104
.annotate 'line', 2062
    find_lex $P103, "$obj"
    unless_null $P103, vivify_1263
    new $P103, "Undef"
  vivify_1263:
    find_lex $P104, "$handle"
    unless_null $P104, vivify_1264
    new $P104, "Undef"
  vivify_1264:
    find_lex $P105, "$description"
    unless_null $P105, vivify_1265
    new $P105, "Undef"
  vivify_1265:
    $P103."BUILD"($P104 :named("handle"), $P105 :named("description"))
.annotate 'line', 2060
    find_lex $P103, "$obj"
    unless_null $P103, vivify_1266
    new $P103, "Undef"
  vivify_1266:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "BUILD" :anon :subid("278_1321350743.52383") :outer("272_1321350743.52383")
    .param pmc param_2410
    .param pmc param_2411 :named("handle")
    .param pmc param_2412 :named("description")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 2066
    .lex "self", param_2410
    .lex "$handle", param_2411
    .lex "$description", param_2412
.annotate 'line', 2067
    find_lex $P101, "$handle"
    unless_null $P101, vivify_1267
    new $P101, "Undef"
  vivify_1267:
    set $S100, $P101
    nqp_create_sc $P102, $S100
    find_lex $P103, "self"
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    repr_bind_attr_obj $P104, $P105, "$!sc", 0, $P102
.annotate 'line', 2068
    find_lex $P101, "$handle"
    unless_null $P101, vivify_1268
    new $P101, "Undef"
  vivify_1268:
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_bind_attr_obj $P103, $P104, "$!handle", 1, $P101
.annotate 'line', 2069
    new $P101, "Hash"
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_bind_attr_obj $P103, $P104, "%!addr_to_slot", 2, $P101
.annotate 'line', 2070
    new $P101, "ResizablePMCArray"
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_bind_attr_obj $P103, $P104, "@!event_stream", 3, $P101
.annotate 'line', 2071
    find_lex $P101, "self"
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    repr_get_attr_obj $P104, $P102, $P103, "$!sc", 0
    unless_null $P104, vivify_1269
    new $P104, "Undef"
  vivify_1269:
    find_lex $P105, "$description"
    unless_null $P105, vivify_1270
    new $P105, "Undef"
  vivify_1270:
    $P104."set_description"($P105)
.annotate 'line', 2072
    find_dynamic_lex $P103, "%*COMPILING"
    unless_null $P103, vivify_1271
    get_hll_global $P101, "GLOBAL"
    get_who $P102, $P101
    set $P103, $P102["%COMPILING"]
    unless_null $P103, vivify_1272
    die "Contextual %*COMPILING not found"
  vivify_1272:
  vivify_1271:
    set $P2413, $P103["%?OPTIONS"]
    unless_null $P2413, vivify_1273
    $P2413 = root_new ['parrot';'Hash']
  vivify_1273:
    set $P104, $P2413["target"]
    unless_null $P104, vivify_1274
    new $P104, "Undef"
  vivify_1274:
    set $S100, $P104
    iseq $I100, $S100, "pir"
    new $P105, 'Integer'
    set $P105, $I100
    find_lex $P106, "self"
    nqp_decontainerize $P107, $P106
    find_lex $P108, "$?CLASS"
    repr_bind_attr_obj $P107, $P108, "$!precomp_mode", 5, $P105
.annotate 'line', 2066
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "slot_for_object" :anon :subid("279_1321350743.52383") :outer("272_1321350743.52383")
    .param pmc param_2415
    .param pmc param_2416
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 2076
    .lex "self", param_2415
    .lex "$obj", param_2416
.annotate 'line', 2077
    new $P101, "Undef"
    set $P2417, $P101
    .lex "$slot", $P2417
    find_lex $P102, "$obj"
    unless_null $P102, vivify_1275
    new $P102, "Undef"
  vivify_1275:
    get_id $I100, $P102
    find_lex $P103, "self"
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    repr_get_attr_obj $P2418, $P104, $P105, "%!addr_to_slot", 2
    unless_null $P2418, vivify_1276
    $P2418 = root_new ['parrot';'Hash']
  vivify_1276:
    set $P106, $P2418[$I100]
    unless_null $P106, vivify_1277
    new $P106, "Undef"
  vivify_1277:
    store_lex "$slot", $P106
.annotate 'line', 2078
    find_lex $P102, "$slot"
    unless_null $P102, vivify_1278
    new $P102, "Undef"
  vivify_1278:
    defined $I100, $P102
    if $I100, unless_2419_end
.annotate 'line', 2079
    die "slot_for_object called on object not in context"
  unless_2419_end:
.annotate 'line', 2076
    find_lex $P102, "$slot"
    unless_null $P102, vivify_1279
    new $P102, "Undef"
  vivify_1279:
    .return ($P102)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "get_slot_past_for_object" :anon :subid("280_1321350743.52383") :outer("272_1321350743.52383")
    .param pmc param_2421
    .param pmc param_2422
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 2088
    .lex "self", param_2421
    .lex "$obj", param_2422
.annotate 'line', 2089
    new $P101, "Undef"
    set $P2423, $P101
    .lex "$slot", $P2423
.annotate 'line', 2090
    new $P102, "Undef"
    set $P2424, $P102
    .lex "$past", $P2424
.annotate 'line', 2089
    find_lex $P103, "self"
    find_lex $P104, "$obj"
    unless_null $P104, vivify_1280
    new $P104, "Undef"
  vivify_1280:
    $P105 = $P103."slot_for_object"($P104)
    store_lex "$slot", $P105
.annotate 'line', 2090
    get_hll_global $P103, "GLOBAL"
    nqp_get_package_through_who $P104, $P103, "PAST"
    get_who $P105, $P104
    set $P106, $P105["Op"]
    find_lex $P107, "self"
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    repr_get_attr_obj $P110, $P108, $P109, "$!handle", 1
    unless_null $P110, vivify_1281
    new $P110, "Undef"
  vivify_1281:
    find_lex $P111, "$slot"
    unless_null $P111, vivify_1282
    new $P111, "Undef"
  vivify_1282:
    $P112 = $P106."new"($P110, $P111, "nqp_get_sc_object Psi" :named("pirop"))
    store_lex "$past", $P112
.annotate 'line', 2091
    new $P103, "Float"
    assign $P103, 1
    find_lex $P2425, "$past"
    unless_null $P2425, vivify_1283
    $P2425 = root_new ['parrot';'Hash']
    store_lex "$past", $P2425
  vivify_1283:
    set $P2425["has_compile_time_value"], $P103
.annotate 'line', 2092
    find_lex $P103, "$obj"
    unless_null $P103, vivify_1284
    new $P103, "Undef"
  vivify_1284:
    find_lex $P2426, "$past"
    unless_null $P2426, vivify_1285
    $P2426 = root_new ['parrot';'Hash']
    store_lex "$past", $P2426
  vivify_1285:
    set $P2426["compile_time_value"], $P103
.annotate 'line', 2088
    find_lex $P103, "$past"
    unless_null $P103, vivify_1286
    new $P103, "Undef"
  vivify_1286:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "set_slot_past" :anon :subid("281_1321350743.52383") :outer("272_1321350743.52383")
    .param pmc param_2430
    .param pmc param_2431
    .param pmc param_2432
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 2097
    new $P2429, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2429, control_2428
    push_eh $P2429
    .lex "self", param_2430
    .lex "$slot", param_2431
    .lex "$past_to_set", param_2432
.annotate 'line', 2098
    new $P101, "Exception"
    set $P101['type'], .CONTROL_RETURN
    get_hll_global $P102, "GLOBAL"
    nqp_get_package_through_who $P103, $P102, "PAST"
    get_who $P104, $P103
    set $P105, $P104["Op"]
    find_lex $P106, "self"
    nqp_decontainerize $P107, $P106
    find_lex $P108, "$?CLASS"
    repr_get_attr_obj $P109, $P107, $P108, "$!handle", 1
    unless_null $P109, vivify_1287
    new $P109, "Undef"
  vivify_1287:
    find_lex $P110, "$slot"
    unless_null $P110, vivify_1288
    new $P110, "Undef"
  vivify_1288:
    find_lex $P111, "$past_to_set"
    unless_null $P111, vivify_1289
    new $P111, "Undef"
  vivify_1289:
    $P112 = $P105."new"($P109, $P110, $P111, "nqp_set_sc_object vsiP" :named("pirop"))
    setattribute $P101, 'payload', $P112
    throw $P101
.annotate 'line', 2097
    .return ()
  control_2428:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P101, exception, "payload"
    .return ($P101)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "set_cur_sc" :anon :subid("282_1321350743.52383") :outer("272_1321350743.52383")
    .param pmc param_2434
    .param pmc param_2435
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 2104
    .lex "self", param_2434
    .lex "$to_wrap", param_2435
.annotate 'line', 2105
    get_hll_global $P101, "GLOBAL"
    nqp_get_package_through_who $P102, $P101, "PAST"
    get_who $P103, $P102
    set $P104, $P103["Op"]
    find_lex $P105, "$to_wrap"
    unless_null $P105, vivify_1290
    new $P105, "Undef"
  vivify_1290:
.annotate 'line', 2108
    get_hll_global $P106, "GLOBAL"
    nqp_get_package_through_who $P107, $P106, "PAST"
    get_who $P108, $P107
    set $P109, $P108["Var"]
    $P110 = $P109."new"("cur_sc" :named("name"), "register" :named("scope"))
    $P111 = $P104."new"($P105, $P110, "nqp_set_sc_for_object__0PP" :named("pirop"))
.annotate 'line', 2104
    .return ($P111)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "add_object_to_cur_sc_past" :anon :subid("283_1321350743.52383") :outer("272_1321350743.52383")
    .param pmc param_2437
    .param pmc param_2438
    .param pmc param_2439
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 2112
    .lex "self", param_2437
    .lex "$slot", param_2438
    .lex "$to_wrap", param_2439
.annotate 'line', 2113
    get_hll_global $P101, "GLOBAL"
    nqp_get_package_through_who $P102, $P101, "PAST"
    get_who $P103, $P102
    set $P104, $P103["Op"]
.annotate 'line', 2115
    get_hll_global $P105, "GLOBAL"
    nqp_get_package_through_who $P106, $P105, "PAST"
    get_who $P107, $P106
    set $P108, $P107["Var"]
    $P109 = $P108."new"("cur_sc" :named("name"), "register" :named("scope"))
    find_lex $P110, "$slot"
    unless_null $P110, vivify_1291
    new $P110, "Undef"
  vivify_1291:
    find_lex $P111, "$to_wrap"
    unless_null $P111, vivify_1292
    new $P111, "Undef"
  vivify_1292:
    $P112 = $P104."new"($P109, $P110, $P111, "nqp_add_object_to_sc 2PiP" :named("pirop"))
.annotate 'line', 2112
    .return ($P112)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "add_object" :anon :subid("284_1321350743.52383") :outer("272_1321350743.52383")
    .param pmc param_2441
    .param pmc param_2442
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 2122
    .lex "self", param_2441
    .lex "$obj", param_2442
.annotate 'line', 2124
    new $P101, "Undef"
    set $P2443, $P101
    .lex "$idx", $P2443
.annotate 'line', 2123
    find_lex $P102, "$obj"
    unless_null $P102, vivify_1293
    new $P102, "Undef"
  vivify_1293:
    find_lex $P103, "self"
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    repr_get_attr_obj $P106, $P104, $P105, "$!sc", 0
    unless_null $P106, vivify_1294
    new $P106, "Undef"
  vivify_1294:
    nqp_set_sc_for_object $P102, $P106
.annotate 'line', 2124
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_get_attr_obj $P105, $P103, $P104, "$!sc", 0
    unless_null $P105, vivify_1295
    new $P105, "Undef"
  vivify_1295:
    $P106 = $P105."elems"()
    store_lex "$idx", $P106
.annotate 'line', 2125
    find_lex $P102, "$obj"
    unless_null $P102, vivify_1296
    new $P102, "Undef"
  vivify_1296:
    find_lex $P103, "$idx"
    unless_null $P103, vivify_1297
    new $P103, "Undef"
  vivify_1297:
    set $I100, $P103
    find_lex $P104, "self"
    nqp_decontainerize $P105, $P104
    find_lex $P106, "$?CLASS"
    repr_get_attr_obj $P2444, $P105, $P106, "$!sc", 0
    unless_null $P2444, vivify_1298
    $P2444 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P105, $P106, "$!sc", 0, $P2444
  vivify_1298:
    set $P2444[$I100], $P102
.annotate 'line', 2126
    find_lex $P102, "$idx"
    unless_null $P102, vivify_1299
    new $P102, "Undef"
  vivify_1299:
    find_lex $P103, "$obj"
    unless_null $P103, vivify_1300
    new $P103, "Undef"
  vivify_1300:
    get_id $I100, $P103
    find_lex $P104, "self"
    nqp_decontainerize $P105, $P104
    find_lex $P106, "$?CLASS"
    repr_get_attr_obj $P2445, $P105, $P106, "%!addr_to_slot", 2
    unless_null $P2445, vivify_1301
    $P2445 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P105, $P106, "%!addr_to_slot", 2, $P2445
  vivify_1301:
    set $P2445[$I100], $P102
.annotate 'line', 2122
    find_lex $P102, "$idx"
    unless_null $P102, vivify_1302
    new $P102, "Undef"
  vivify_1302:
    .return ($P102)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "add_code" :anon :subid("285_1321350743.52383") :outer("272_1321350743.52383")
    .param pmc param_2447
    .param pmc param_2448
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 2131
    .lex "self", param_2447
    .lex "$obj", param_2448
.annotate 'line', 2132
    new $P101, "Undef"
    set $P2449, $P101
    .lex "$idx", $P2449
    find_lex $P102, "self"
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_get_attr_obj $P105, $P103, $P104, "$!sc", 0
    unless_null $P105, vivify_1303
    new $P105, "Undef"
  vivify_1303:
    $P106 = $P105."elems"()
    store_lex "$idx", $P106
.annotate 'line', 2133
    find_lex $P102, "$obj"
    unless_null $P102, vivify_1304
    new $P102, "Undef"
  vivify_1304:
    find_lex $P103, "$idx"
    unless_null $P103, vivify_1305
    new $P103, "Undef"
  vivify_1305:
    set $I100, $P103
    find_lex $P104, "self"
    nqp_decontainerize $P105, $P104
    find_lex $P106, "$?CLASS"
    repr_get_attr_obj $P2450, $P105, $P106, "$!sc", 0
    unless_null $P2450, vivify_1306
    $P2450 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P105, $P106, "$!sc", 0, $P2450
  vivify_1306:
    set $P2450[$I100], $P102
.annotate 'line', 2134
    find_lex $P102, "$idx"
    unless_null $P102, vivify_1307
    new $P102, "Undef"
  vivify_1307:
    find_lex $P103, "$obj"
    unless_null $P103, vivify_1308
    new $P103, "Undef"
  vivify_1308:
    get_id $I100, $P103
    find_lex $P104, "self"
    nqp_decontainerize $P105, $P104
    find_lex $P106, "$?CLASS"
    repr_get_attr_obj $P2451, $P105, $P106, "%!addr_to_slot", 2
    unless_null $P2451, vivify_1309
    $P2451 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P105, $P106, "%!addr_to_slot", 2, $P2451
  vivify_1309:
    set $P2451[$I100], $P102
.annotate 'line', 2131
    find_lex $P102, "$idx"
    unless_null $P102, vivify_1310
    new $P102, "Undef"
  vivify_1310:
    .return ($P102)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "is_precompilation_mode" :anon :subid("286_1321350743.52383") :outer("272_1321350743.52383")
    .param pmc param_2453
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 2139
    .lex "self", param_2453
    find_lex $P101, "self"
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    repr_get_attr_obj $P104, $P102, $P103, "$!precomp_mode", 5
    unless_null $P104, vivify_1311
    new $P104, "Undef"
  vivify_1311:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "add_event" :anon :subid("287_1321350743.52383") :outer("272_1321350743.52383")
    .param pmc param_2455
    .param pmc param_2456 :optional :named("deserialize_past")
    .param int has_param_2456 :opt_flag
    .param pmc param_2457 :optional :named("fixup_past")
    .param int has_param_2457 :opt_flag
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 2146
    .lex "self", param_2455
    if has_param_2456, optparam_1312
    new $P101, "Undef"
    set param_2456, $P101
  optparam_1312:
    .lex "$deserialize_past", param_2456
    if has_param_2457, optparam_1313
    new $P102, "Undef"
    set param_2457, $P102
  optparam_1313:
    .lex "$fixup_past", param_2457
.annotate 'line', 2147
    find_lex $P104, "self"
    nqp_decontainerize $P105, $P104
    find_lex $P106, "$?CLASS"
    repr_get_attr_obj $P107, $P105, $P106, "$!precomp_mode", 5
    unless_null $P107, vivify_1314
    new $P107, "Undef"
  vivify_1314:
    if $P107, if_2458
.annotate 'line', 2153
    find_lex $P108, "self"
    nqp_decontainerize $P109, $P108
    find_lex $P110, "$?CLASS"
    repr_get_attr_obj $P2460, $P109, $P110, "@!event_stream", 3
    unless_null $P2460, vivify_1315
    $P2460 = root_new ['parrot';'ResizablePMCArray']
  vivify_1315:
    find_lex $P111, "Event"
    find_lex $P112, "$fixup_past"
    unless_null $P112, vivify_1316
    new $P112, "Undef"
  vivify_1316:
    $P113 = $P111."new"($P112 :named("fixup_past"))
    $P115 = $P2460."push"($P113)
.annotate 'line', 2151
    set $P103, $P115
.annotate 'line', 2147
    goto if_2458_end
  if_2458:
.annotate 'line', 2149
    find_lex $P108, "self"
    nqp_decontainerize $P109, $P108
    find_lex $P110, "$?CLASS"
    repr_get_attr_obj $P2459, $P109, $P110, "@!event_stream", 3
    unless_null $P2459, vivify_1317
    $P2459 = root_new ['parrot';'ResizablePMCArray']
  vivify_1317:
    find_lex $P111, "Event"
    find_lex $P112, "$deserialize_past"
    unless_null $P112, vivify_1318
    new $P112, "Undef"
  vivify_1318:
    $P113 = $P111."new"($P112 :named("deserialize_past"))
    $P114 = $P2459."push"($P113)
.annotate 'line', 2147
    set $P103, $P114
  if_2458_end:
.annotate 'line', 2146
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "get_object_sc_ref_past" :anon :subid("288_1321350743.52383") :outer("272_1321350743.52383")
    .param pmc param_2462
    .param pmc param_2463
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 2159
    .const 'Sub' $P2468 = "289_1321350743.52383" 
    capture_lex $P2468
    .lex "self", param_2462
    .lex "$obj", param_2463
.annotate 'line', 2162
    new $P101, "Undef"
    set $P2464, $P101
    .lex "$sc", $P2464
    find_lex $P102, "$obj"
    unless_null $P102, vivify_1319
    new $P102, "Undef"
  vivify_1319:
    nqp_get_sc_for_object $P103, $P102
    store_lex "$sc", $P103
.annotate 'line', 2163
    find_lex $P102, "$sc"
    unless_null $P102, vivify_1320
    new $P102, "Undef"
  vivify_1320:
    defined $I100, $P102
    if $I100, unless_2465_end
.annotate 'line', 2164
    new $P103, "String"
    assign $P103, "Object of type '"
    find_lex $P104, "$obj"
    unless_null $P104, vivify_1321
    new $P104, "Undef"
  vivify_1321:
    get_how $P105, $P104
    find_lex $P106, "$obj"
    unless_null $P106, vivify_1322
    new $P106, "Undef"
  vivify_1322:
    $S100 = $P105."name"($P106)
    concat $P107, $P103, $S100
    concat $P108, $P107, "' cannot be referenced without having been "
    concat $P109, $P108, "assigned a serialization context"
.annotate 'line', 2165
    die $P109
  unless_2465_end:
.annotate 'line', 2172
    find_lex $P103, "$sc"
    unless_null $P103, vivify_1323
    new $P103, "Undef"
  vivify_1323:
    find_lex $P104, "self"
    nqp_decontainerize $P105, $P104
    find_lex $P106, "$?CLASS"
    repr_get_attr_obj $P107, $P105, $P106, "$!sc", 0
    unless_null $P107, vivify_1324
    new $P107, "Undef"
  vivify_1324:
    issame $I100, $P103, $P107
    if $I100, if_2466
.annotate 'line', 2175
    .const 'Sub' $P2468 = "289_1321350743.52383" 
    capture_lex $P2468
    $P112 = $P2468()
    set $P102, $P112
.annotate 'line', 2172
    goto if_2466_end
  if_2466:
.annotate 'line', 2173
    find_lex $P108, "self"
    find_lex $P109, "$obj"
    unless_null $P109, vivify_1340
    new $P109, "Undef"
  vivify_1340:
    $P110 = $P108."get_slot_past_for_object"($P109)
.annotate 'line', 2172
    set $P102, $P110
  if_2466_end:
.annotate 'line', 2159
    .return ($P102)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block2467"  :anon :subid("289_1321350743.52383") :outer("288_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 2176
    new $P108, "Undef"
    set $P2469, $P108
    .lex "$handle", $P2469
.annotate 'line', 2190
    new $P109, "Undef"
    set $P2470, $P109
    .lex "$past", $P2470
.annotate 'line', 2176
    find_lex $P111, "$sc"
    unless_null $P111, vivify_1325
    new $P111, "Undef"
  vivify_1325:
    $P112 = $P111."handle"()
    store_lex "$handle", $P112
.annotate 'line', 2177
    find_lex $P114, "$handle"
    unless_null $P114, vivify_1326
    new $P114, "Undef"
  vivify_1326:
    find_lex $P111, "self"
    nqp_decontainerize $P112, $P111
    find_lex $P113, "$?CLASS"
    repr_get_attr_obj $P2472, $P112, $P113, "%!dependencies", 4
    unless_null $P2472, vivify_1327
    $P2472 = root_new ['parrot';'Hash']
  vivify_1327:
    exists $I101, $P2472[$P114]
    if $I101, unless_2471_end
.annotate 'line', 2178
    find_lex $P115, "$sc"
    unless_null $P115, vivify_1328
    new $P115, "Undef"
  vivify_1328:
    find_lex $P116, "$handle"
    unless_null $P116, vivify_1329
    new $P116, "Undef"
  vivify_1329:
    find_lex $P117, "self"
    nqp_decontainerize $P118, $P117
    find_lex $P119, "$?CLASS"
    repr_get_attr_obj $P2473, $P118, $P119, "%!dependencies", 4
    unless_null $P2473, vivify_1330
    $P2473 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P118, $P119, "%!dependencies", 4, $P2473
  vivify_1330:
    set $P2473[$P116], $P115
.annotate 'line', 2179
    find_lex $P115, "self"
    get_hll_global $P116, "GLOBAL"
    nqp_get_package_through_who $P117, $P116, "PAST"
    get_who $P118, $P117
    set $P119, $P118["Op"]
.annotate 'line', 2181
    get_hll_global $P120, "GLOBAL"
    nqp_get_package_through_who $P121, $P120, "PAST"
    get_who $P122, $P121
    set $P123, $P122["Op"]
.annotate 'line', 2183
    get_hll_global $P124, "GLOBAL"
    nqp_get_package_through_who $P125, $P124, "PAST"
    get_who $P126, $P125
    set $P127, $P126["Op"]
    find_lex $P128, "$handle"
    unless_null $P128, vivify_1331
    new $P128, "Undef"
  vivify_1331:
    $P129 = $P127."new"($P128, "nqp_get_sc Ps" :named("pirop"))
    $P130 = $P123."new"($P129, "isnull IP" :named("pirop"))
.annotate 'line', 2185
    get_hll_global $P131, "GLOBAL"
    nqp_get_package_through_who $P132, $P131, "PAST"
    get_who $P133, $P132
    set $P134, $P133["Op"]
.annotate 'line', 2187
    new $P135, "String"
    assign $P135, "Incorrect pre-compiled version of "
    find_lex $P136, "$sc"
    unless_null $P136, vivify_1332
    new $P136, "Undef"
  vivify_1332:
    $P137 = $P136."description"()
    unless $P137, unless_2474
    set $S100, $P137
    goto unless_2474_end
  unless_2474:
    set $S100, "<unknown>"
  unless_2474_end:
    concat $P138, $P135, $S100
    concat $P139, $P138, " loaded"
    $P140 = $P134."new"($P139, "die vS" :named("pirop"))
.annotate 'line', 2185
    $P141 = $P119."new"($P130, $P140, "if" :named("pasttype"))
.annotate 'line', 2179
    $P115."add_event"($P141 :named("deserialize_past"))
  unless_2471_end:
.annotate 'line', 2190
    get_hll_global $P111, "GLOBAL"
    nqp_get_package_through_who $P112, $P111, "PAST"
    get_who $P113, $P112
    set $P114, $P113["Op"]
    find_lex $P115, "$handle"
    unless_null $P115, vivify_1333
    new $P115, "Undef"
  vivify_1333:
.annotate 'line', 2191
    find_lex $P116, "$sc"
    unless_null $P116, vivify_1334
    new $P116, "Undef"
  vivify_1334:
    find_lex $P117, "$obj"
    unless_null $P117, vivify_1335
    new $P117, "Undef"
  vivify_1335:
    $P118 = $P116."slot_index_for"($P117)
    $P119 = $P114."new"($P115, $P118, "nqp_get_sc_object Psi" :named("pirop"))
.annotate 'line', 2190
    store_lex "$past", $P119
.annotate 'line', 2192
    new $P111, "Float"
    assign $P111, 1
    find_lex $P2475, "$past"
    unless_null $P2475, vivify_1336
    $P2475 = root_new ['parrot';'Hash']
    store_lex "$past", $P2475
  vivify_1336:
    set $P2475["has_compile_time_value"], $P111
.annotate 'line', 2193
    find_lex $P111, "$obj"
    unless_null $P111, vivify_1337
    new $P111, "Undef"
  vivify_1337:
    find_lex $P2476, "$past"
    unless_null $P2476, vivify_1338
    $P2476 = root_new ['parrot';'Hash']
    store_lex "$past", $P2476
  vivify_1338:
    set $P2476["compile_time_value"], $P111
.annotate 'line', 2175
    find_lex $P111, "$past"
    unless_null $P111, vivify_1339
    new $P111, "Undef"
  vivify_1339:
    .return ($P111)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "sc" :anon :subid("290_1321350743.52383") :outer("272_1321350743.52383")
    .param pmc param_2478
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 2199
    .lex "self", param_2478
    find_lex $P101, "self"
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    repr_get_attr_obj $P104, $P102, $P103, "$!sc", 0
    unless_null $P104, vivify_1341
    new $P104, "Undef"
  vivify_1341:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "handle" :anon :subid("291_1321350743.52383") :outer("272_1321350743.52383")
    .param pmc param_2480
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 2204
    .lex "self", param_2480
    find_lex $P101, "self"
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    repr_get_attr_obj $P104, $P102, $P103, "$!handle", 1
    unless_null $P104, vivify_1342
    new $P104, "Undef"
  vivify_1342:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "event_stream" :anon :subid("292_1321350743.52383") :outer("272_1321350743.52383")
    .param pmc param_2482
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 2209
    .lex "self", param_2482
    find_lex $P101, "self"
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    repr_get_attr_obj $P2483, $P102, $P103, "@!event_stream", 3
    unless_null $P2483, vivify_1343
    $P2483 = root_new ['parrot';'ResizablePMCArray']
  vivify_1343:
    .return ($P2483)
.end


.HLL "nqp"

.namespace []
.sub "_block2486" :load :anon :subid("293_1321350743.52383")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1050
    .const 'Sub' $P2488 = "10_1321350743.52383" 
    $P107 = $P2488()
    .return ($P107)
.end

