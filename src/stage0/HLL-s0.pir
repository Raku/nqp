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
.sub "_block1000"  :anon :subid("10_1323686357.86238")
    .param pmc param_1002 :slurpy
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 0
    .const 'Sub' $P2401 = "272_1323686357.86238" 
    capture_lex $P2401
    .const 'Sub' $P2266 = "252_1323686357.86238" 
    capture_lex $P2266
    .const 'Sub' $P2234 = "245_1323686357.86238" 
    capture_lex $P2234
    .const 'Sub' $P1565 = "164_1323686357.86238" 
    capture_lex $P1565
    .const 'Sub' $P1318 = "119_1323686357.86238" 
    capture_lex $P1318
    .const 'Sub' $P1007 = "11_1323686357.86238" 
    capture_lex $P1007
.annotate 'line', 1
    .lex "@ARGS", param_1002
    .lex "GLOBALish", $P1003
    .lex "$?PACKAGE", $P1004
.annotate 'line', 1719
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
    .const 'Sub' $P1007 = "11_1323686357.86238" 
    capture_lex $P1007
    $P1007()
.annotate 'line', 865
    .const 'Sub' $P1318 = "119_1323686357.86238" 
    capture_lex $P1318
    $P1318()
.annotate 'line', 1058
    .const 'Sub' $P1565 = "164_1323686357.86238" 
    capture_lex $P1565
    $P1565()
.annotate 'line', 1719
    get_hll_global $P101, "GLOBAL"
    nqp_get_package_through_who $P102, $P101, "HLL"
    get_who $P103, $P102
    set $P104, $P103["Compiler"]
    $P105 = $P104."new"()
    set $P1005, $P105
.annotate 'line', 1720
    set $P101, $P1005
    unless_null $P101, vivify_1110
    new $P101, "Undef"
  vivify_1110:
    $P101."language"("parrot")
.annotate 'line', 1814
    .const 'Sub' $P2234 = "245_1323686357.86238" 
    capture_lex $P2234
    $P2234()
.annotate 'line', 1847
    .const 'Sub' $P2266 = "252_1323686357.86238" 
    capture_lex $P2266
    $P2266()
.annotate 'line', 2033
    .const 'Sub' $P2401 = "272_1323686357.86238" 
    capture_lex $P2401
    $P2401()
.annotate 'line', 1
    set $P102, param_1002
    if $P102, if_2500
    set $P101, $P102
    goto if_2500_end
  if_2500:
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P103, "ModuleLoader"
    getinterp $P104
    set $P105, $P104["context"]
    $P106 = $P103."set_mainline_module"($P105)
    set $P101, $P106
  if_2500_end:
    .return ($P101)
.annotate 'line', 1050
    .const 'Sub' $P2502 = "293_1323686357.86238" 
.annotate 'line', 1
    .return ($P2502)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post294") :outer("10_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 0
    .const 'Sub' $P1001 = "10_1323686357.86238" 
    .local pmc block
    set block, $P1001
    nqp_get_sc $P108, "1323686351.93435"
    isnull $I100, $P108
    if $I100, if_2504
    goto if_2504_end
  if_2504:
    nqp_dynop_setup 
    nqp_bigint_setup 
    getinterp $P109
    get_class $P110, "LexPad"
    get_class $P111, "NQPLexPad"
    $P109."hll_map"($P110, $P111)
    nqp_create_sc $P112, "1323686351.93435"
    .local pmc cur_sc
    set cur_sc, $P112
    cur_sc."set_description"("src/stage2/gen/NQPHLL.pm")
    nqp_get_sc $P113, "__6MODEL_CORE__"
    isnull $I101, $P113
    unless $I101, if_2505_end
    set $S100, "Incorrect pre-compiled version of <unknown> loaded"
    die $S100
  if_2505_end:
    nqp_get_sc_object $P113, "__6MODEL_CORE__", 0
    $P114 = $P113."new_type"("GLOBALish" :named("name"))
    nqp_add_object_to_sc cur_sc, 0, $P114
    .const 'LexInfo' $P2506 = "10_1323686357.86238" 
    nqp_get_sc_object $P113, "1323686351.93435", 0
    $P2506."set_static_lexpad_value"("GLOBALish", $P113)
    .const 'LexInfo' $P2507 = "10_1323686357.86238" 
    $P2507."finish_static_lexpad"()
    .const 'LexInfo' $P2508 = "10_1323686357.86238" 
    nqp_get_sc_object $P113, "1323686351.93435", 0
    $P2508."set_static_lexpad_value"("$?PACKAGE", $P113)
    .const 'LexInfo' $P2509 = "10_1323686357.86238" 
    $P2509."finish_static_lexpad"()
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P113, "ModuleLoader"
    $P114 = $P113."load_setting"("NQPCORE")
    block."set_outer_ctx"($P114)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P113, "ModuleLoader"
    nqp_get_sc_object $P114, "1323686351.93435", 0
    $P113."load_module"("NQPRegex", $P114)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P113, "ModuleLoader"
    nqp_get_sc_object $P114, "1323686351.93435", 0
    $P113."load_module"("NQPRegex", $P114)
    nqp_get_sc $P113, "1323686346.03416"
    isnull $I101, $P113
    unless $I101, if_2510_end
    set $S100, "Incorrect pre-compiled version of src/stage2/gen/nqp-mo.pm loaded"
    die $S100
  if_2510_end:
    nqp_get_sc_object $P113, "1323686346.03416", 55
    $P114 = $P113."new_type"("HLL::Grammar" :named("name"))
    nqp_add_object_to_sc cur_sc, 1, $P114
    nqp_get_sc_object $P113, "1323686351.93435", 1
    nqp_get_sc_object $P114, "1323686351.93435", 0
    nqp_get_package_through_who $P115, $P114, "HLL"
    get_who $P116, $P115
    set $P116["Grammar"], $P113
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2511 = "12_1323686357.86238" 
    $P114."add_method"($P115, "ws", $P2511)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2512 = "13_1323686357.86238" 
    $P114."add_method"($P115, "!PREFIX__ws", $P2512)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2513 = "14_1323686357.86238" 
    $P114."add_method"($P115, "termish", $P2513)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2514 = "15_1323686357.86238" 
    $P114."add_method"($P115, "!PREFIX__termish", $P2514)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2515 = "16_1323686357.86238" 
    $P114."add_method"($P115, "term", $P2515)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2516 = "17_1323686357.86238" 
    $P114."add_method"($P115, "!PREFIX__term", $P2516)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2517 = "18_1323686357.86238" 
    $P114."add_method"($P115, "infix", $P2517)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2518 = "19_1323686357.86238" 
    $P114."add_method"($P115, "!PREFIX__infix", $P2518)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2519 = "20_1323686357.86238" 
    $P114."add_method"($P115, "prefix", $P2519)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2520 = "21_1323686357.86238" 
    $P114."add_method"($P115, "!PREFIX__prefix", $P2520)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2521 = "22_1323686357.86238" 
    $P114."add_method"($P115, "postfix", $P2521)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2522 = "23_1323686357.86238" 
    $P114."add_method"($P115, "!PREFIX__postfix", $P2522)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2523 = "24_1323686357.86238" 
    $P114."add_method"($P115, "circumfix", $P2523)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2524 = "25_1323686357.86238" 
    $P114."add_method"($P115, "!PREFIX__circumfix", $P2524)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2525 = "26_1323686357.86238" 
    $P114."add_method"($P115, "postcircumfix", $P2525)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2526 = "27_1323686357.86238" 
    $P114."add_method"($P115, "!PREFIX__postcircumfix", $P2526)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2527 = "28_1323686357.86238" 
    $P114."add_method"($P115, "term:sym<circumfix>", $P2527)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2528 = "29_1323686357.86238" 
    $P114."add_method"($P115, "!PREFIX__term:sym<circumfix>", $P2528)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2529 = "30_1323686357.86238" 
    $P114."add_method"($P115, "infixish", $P2529)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2530 = "31_1323686357.86238" 
    $P114."add_method"($P115, "!PREFIX__infixish", $P2530)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2531 = "32_1323686357.86238" 
    $P114."add_method"($P115, "prefixish", $P2531)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2532 = "33_1323686357.86238" 
    $P114."add_method"($P115, "!PREFIX__prefixish", $P2532)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2533 = "34_1323686357.86238" 
    $P114."add_method"($P115, "postfixish", $P2533)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2534 = "35_1323686357.86238" 
    $P114."add_method"($P115, "!PREFIX__postfixish", $P2534)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2535 = "36_1323686357.86238" 
    $P114."add_method"($P115, "nullterm", $P2535)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2536 = "37_1323686357.86238" 
    $P114."add_method"($P115, "!PREFIX__nullterm", $P2536)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2537 = "38_1323686357.86238" 
    $P114."add_method"($P115, "nullterm_alt", $P2537)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2538 = "39_1323686357.86238" 
    $P114."add_method"($P115, "!PREFIX__nullterm_alt", $P2538)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2539 = "40_1323686357.86238" 
    $P114."add_method"($P115, "nulltermish", $P2539)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2540 = "41_1323686357.86238" 
    $P114."add_method"($P115, "quote_delimited", $P2540)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2541 = "42_1323686357.86238" 
    $P114."add_method"($P115, "!PREFIX__quote_delimited", $P2541)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2542 = "43_1323686357.86238" 
    $P114."add_method"($P115, "quote_atom", $P2542)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2543 = "44_1323686357.86238" 
    $P114."add_method"($P115, "!PREFIX__quote_atom", $P2543)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2544 = "45_1323686357.86238" 
    $P114."add_method"($P115, "decint", $P2544)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2545 = "46_1323686357.86238" 
    $P114."add_method"($P115, "!PREFIX__decint", $P2545)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2546 = "47_1323686357.86238" 
    $P114."add_method"($P115, "decints", $P2546)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2547 = "48_1323686357.86238" 
    $P114."add_method"($P115, "!PREFIX__decints", $P2547)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2548 = "49_1323686357.86238" 
    $P114."add_method"($P115, "hexint", $P2548)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2549 = "50_1323686357.86238" 
    $P114."add_method"($P115, "!PREFIX__hexint", $P2549)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2550 = "51_1323686357.86238" 
    $P114."add_method"($P115, "hexints", $P2550)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2551 = "52_1323686357.86238" 
    $P114."add_method"($P115, "!PREFIX__hexints", $P2551)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2552 = "53_1323686357.86238" 
    $P114."add_method"($P115, "octint", $P2552)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2553 = "54_1323686357.86238" 
    $P114."add_method"($P115, "!PREFIX__octint", $P2553)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2554 = "55_1323686357.86238" 
    $P114."add_method"($P115, "octints", $P2554)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2555 = "56_1323686357.86238" 
    $P114."add_method"($P115, "!PREFIX__octints", $P2555)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2556 = "57_1323686357.86238" 
    $P114."add_method"($P115, "binint", $P2556)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2557 = "58_1323686357.86238" 
    $P114."add_method"($P115, "!PREFIX__binint", $P2557)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2558 = "59_1323686357.86238" 
    $P114."add_method"($P115, "binints", $P2558)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2559 = "60_1323686357.86238" 
    $P114."add_method"($P115, "!PREFIX__binints", $P2559)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2560 = "61_1323686357.86238" 
    $P114."add_method"($P115, "integer", $P2560)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2561 = "62_1323686357.86238" 
    $P114."add_method"($P115, "!PREFIX__integer", $P2561)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2562 = "63_1323686357.86238" 
    $P114."add_method"($P115, "dec_number", $P2562)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2563 = "64_1323686357.86238" 
    $P114."add_method"($P115, "!PREFIX__dec_number", $P2563)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2564 = "65_1323686357.86238" 
    $P114."add_method"($P115, "escale", $P2564)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2565 = "66_1323686357.86238" 
    $P114."add_method"($P115, "!PREFIX__escale", $P2565)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2566 = "67_1323686357.86238" 
    $P114."add_method"($P115, "quote_escape", $P2566)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2567 = "68_1323686357.86238" 
    $P114."add_method"($P115, "!PREFIX__quote_escape", $P2567)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2568 = "69_1323686357.86238" 
    $P114."add_method"($P115, "quote_escape:sym<backslash>", $P2568)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2569 = "70_1323686357.86238" 
    $P114."add_method"($P115, "!PREFIX__quote_escape:sym<backslash>", $P2569)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2570 = "71_1323686357.86238" 
    $P114."add_method"($P115, "quote_escape:sym<stopper>", $P2570)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2571 = "72_1323686357.86238" 
    $P114."add_method"($P115, "!PREFIX__quote_escape:sym<stopper>", $P2571)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2572 = "73_1323686357.86238" 
    $P114."add_method"($P115, "quote_escape:sym<bs>", $P2572)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2573 = "74_1323686357.86238" 
    $P114."add_method"($P115, "!PREFIX__quote_escape:sym<bs>", $P2573)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2574 = "75_1323686357.86238" 
    $P114."add_method"($P115, "quote_escape:sym<nl>", $P2574)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2575 = "76_1323686357.86238" 
    $P114."add_method"($P115, "!PREFIX__quote_escape:sym<nl>", $P2575)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2576 = "77_1323686357.86238" 
    $P114."add_method"($P115, "quote_escape:sym<cr>", $P2576)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2577 = "78_1323686357.86238" 
    $P114."add_method"($P115, "!PREFIX__quote_escape:sym<cr>", $P2577)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2578 = "79_1323686357.86238" 
    $P114."add_method"($P115, "quote_escape:sym<tab>", $P2578)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2579 = "80_1323686357.86238" 
    $P114."add_method"($P115, "!PREFIX__quote_escape:sym<tab>", $P2579)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2580 = "81_1323686357.86238" 
    $P114."add_method"($P115, "quote_escape:sym<ff>", $P2580)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2581 = "82_1323686357.86238" 
    $P114."add_method"($P115, "!PREFIX__quote_escape:sym<ff>", $P2581)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2582 = "83_1323686357.86238" 
    $P114."add_method"($P115, "quote_escape:sym<esc>", $P2582)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2583 = "84_1323686357.86238" 
    $P114."add_method"($P115, "!PREFIX__quote_escape:sym<esc>", $P2583)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2584 = "85_1323686357.86238" 
    $P114."add_method"($P115, "quote_escape:sym<hex>", $P2584)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2585 = "86_1323686357.86238" 
    $P114."add_method"($P115, "!PREFIX__quote_escape:sym<hex>", $P2585)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2586 = "87_1323686357.86238" 
    $P114."add_method"($P115, "quote_escape:sym<oct>", $P2586)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2587 = "88_1323686357.86238" 
    $P114."add_method"($P115, "!PREFIX__quote_escape:sym<oct>", $P2587)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2588 = "89_1323686357.86238" 
    $P114."add_method"($P115, "quote_escape:sym<chr>", $P2588)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2589 = "90_1323686357.86238" 
    $P114."add_method"($P115, "!PREFIX__quote_escape:sym<chr>", $P2589)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2590 = "91_1323686357.86238" 
    $P114."add_method"($P115, "quote_escape:sym<0>", $P2590)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2591 = "92_1323686357.86238" 
    $P114."add_method"($P115, "!PREFIX__quote_escape:sym<0>", $P2591)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2592 = "93_1323686357.86238" 
    $P114."add_method"($P115, "quote_escape:sym<misc>", $P2592)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2593 = "97_1323686357.86238" 
    $P114."add_method"($P115, "!PREFIX__quote_escape:sym<misc>", $P2593)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2594 = "98_1323686357.86238" 
    $P114."add_method"($P115, "charname", $P2594)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2595 = "100_1323686357.86238" 
    $P114."add_method"($P115, "!PREFIX__charname", $P2595)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2596 = "101_1323686357.86238" 
    $P114."add_method"($P115, "charnames", $P2596)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2597 = "102_1323686357.86238" 
    $P114."add_method"($P115, "!PREFIX__charnames", $P2597)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2598 = "103_1323686357.86238" 
    $P114."add_method"($P115, "charspec", $P2598)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2599 = "104_1323686357.86238" 
    $P114."add_method"($P115, "!PREFIX__charspec", $P2599)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2600 = "105_1323686357.86238" 
    $P114."add_method"($P115, "O", $P2600)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2601 = "106_1323686357.86238" 
    $P114."add_method"($P115, "panic", $P2601)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2602 = "107_1323686357.86238" 
    $P114."add_method"($P115, "peek_delimiters", $P2602)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2603 = "108_1323686357.86238" 
    $P114."add_method"($P115, "quote_EXPR", $P2603)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2604 = "109_1323686357.86238" 
    $P114."add_method"($P115, "quotemod_check", $P2604)
    .const '' $P2605 = "109_1323686357.86238" 
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_who $P114, $P113
    set $P114["quotemod_check"], $P2605
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2606 = "110_1323686357.86238" 
    $P114."add_method"($P115, "starter", $P2606)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2607 = "111_1323686357.86238" 
    $P114."add_method"($P115, "stopper", $P2607)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2608 = "112_1323686357.86238" 
    $P114."add_method"($P115, "split_words", $P2608)
    .const '' $P2609 = "112_1323686357.86238" 
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_who $P114, $P113
    set $P114["split_words"], $P2609
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2610 = "113_1323686357.86238" 
    $P114."add_method"($P115, "EXPR", $P2610)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2611 = "114_1323686357.86238" 
    $P114."add_method"($P115, "EXPR_reduce", $P2611)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2612 = "115_1323686357.86238" 
    $P114."add_method"($P115, "ternary", $P2612)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2613 = "116_1323686357.86238" 
    $P114."add_method"($P115, "MARKER", $P2613)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2614 = "117_1323686357.86238" 
    $P114."add_method"($P115, "MARKED", $P2614)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    .const '' $P2615 = "118_1323686357.86238" 
    $P114."add_method"($P115, "LANG", $P2615)
    .const 'LexInfo' $P2616 = "11_1323686357.86238" 
    nqp_get_sc_object $P113, "1323686351.93435", 1
    $P2616."set_static_lexpad_value"("$?PACKAGE", $P113)
    .const 'LexInfo' $P2617 = "11_1323686357.86238" 
    $P2617."finish_static_lexpad"()
    .const 'LexInfo' $P2618 = "11_1323686357.86238" 
    nqp_get_sc_object $P113, "1323686351.93435", 1
    $P2618."set_static_lexpad_value"("$?CLASS", $P113)
    .const 'LexInfo' $P2619 = "11_1323686357.86238" 
    $P2619."finish_static_lexpad"()
    nqp_get_sc $P113, "__REGEX_CORE_SC__"
    isnull $I101, $P113
    unless $I101, if_2620_end
    set $S100, "Incorrect pre-compiled version of <unknown> loaded"
    die $S100
  if_2620_end:
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    nqp_get_sc_object $P116, "__REGEX_CORE_SC__", 0
    $P114."set_default_parent"($P115, $P116)
    nqp_get_sc_object $P113, "1323686351.93435", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 1
    $P114."compose"($P115)
    nqp_get_sc_object $P113, "1323686346.03416", 55
    $P114 = $P113."new_type"("HLL::Actions" :named("name"))
    nqp_add_object_to_sc cur_sc, 105, $P114
    nqp_get_sc_object $P113, "1323686351.93435", 105
    nqp_get_sc_object $P114, "1323686351.93435", 0
    nqp_get_package_through_who $P115, $P114, "HLL"
    get_who $P116, $P115
    set $P116["Actions"], $P113
    .const '' $P2621 = "120_1323686357.86238" 
    nqp_get_sc_object $P113, "1323686351.93435", 105
    get_who $P114, $P113
    set $P114["string_to_int"], $P2621
    nqp_get_sc_object $P113, "1323686351.93435", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 105
    .const '' $P2622 = "121_1323686357.86238" 
    $P114."add_method"($P115, "ints_to_string", $P2622)
    nqp_get_sc_object $P113, "1323686351.93435", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 105
    .const '' $P2623 = "124_1323686357.86238" 
    $P114."add_method"($P115, "CTXSAVE", $P2623)
    nqp_get_sc_object $P113, "1323686351.93435", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 105
    .const '' $P2624 = "125_1323686357.86238" 
    $P114."add_method"($P115, "SET_BLOCK_OUTER_CTX", $P2624)
    nqp_get_sc_object $P113, "1323686351.93435", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 105
    .const '' $P2625 = "128_1323686357.86238" 
    $P114."add_method"($P115, "EXPR", $P2625)
    nqp_get_sc_object $P113, "1323686351.93435", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 105
    .const '' $P2626 = "131_1323686357.86238" 
    $P114."add_method"($P115, "term:sym<circumfix>", $P2626)
    nqp_get_sc_object $P113, "1323686351.93435", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 105
    .const '' $P2627 = "132_1323686357.86238" 
    $P114."add_method"($P115, "termish", $P2627)
    nqp_get_sc_object $P113, "1323686351.93435", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 105
    .const '' $P2628 = "133_1323686357.86238" 
    $P114."add_method"($P115, "nullterm", $P2628)
    nqp_get_sc_object $P113, "1323686351.93435", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 105
    .const '' $P2629 = "134_1323686357.86238" 
    $P114."add_method"($P115, "nullterm_alt", $P2629)
    nqp_get_sc_object $P113, "1323686351.93435", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 105
    .const '' $P2630 = "135_1323686357.86238" 
    $P114."add_method"($P115, "integer", $P2630)
    nqp_get_sc_object $P113, "1323686351.93435", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 105
    .const '' $P2631 = "136_1323686357.86238" 
    $P114."add_method"($P115, "dec_number", $P2631)
    nqp_get_sc_object $P113, "1323686351.93435", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 105
    .const '' $P2632 = "137_1323686357.86238" 
    $P114."add_method"($P115, "decint", $P2632)
    nqp_get_sc_object $P113, "1323686351.93435", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 105
    .const '' $P2633 = "138_1323686357.86238" 
    $P114."add_method"($P115, "hexint", $P2633)
    nqp_get_sc_object $P113, "1323686351.93435", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 105
    .const '' $P2634 = "139_1323686357.86238" 
    $P114."add_method"($P115, "octint", $P2634)
    nqp_get_sc_object $P113, "1323686351.93435", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 105
    .const '' $P2635 = "140_1323686357.86238" 
    $P114."add_method"($P115, "binint", $P2635)
    nqp_get_sc_object $P113, "1323686351.93435", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 105
    .const '' $P2636 = "141_1323686357.86238" 
    $P114."add_method"($P115, "quote_EXPR", $P2636)
    nqp_get_sc_object $P113, "1323686351.93435", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 105
    .const '' $P2637 = "144_1323686357.86238" 
    $P114."add_method"($P115, "quote_delimited", $P2637)
    nqp_get_sc_object $P113, "1323686351.93435", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 105
    .const '' $P2638 = "146_1323686357.86238" 
    $P114."add_method"($P115, "quote_atom", $P2638)
    nqp_get_sc_object $P113, "1323686351.93435", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 105
    .const '' $P2639 = "147_1323686357.86238" 
    $P114."add_method"($P115, "quote_escape:sym<backslash>", $P2639)
    nqp_get_sc_object $P113, "1323686351.93435", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 105
    .const '' $P2640 = "148_1323686357.86238" 
    $P114."add_method"($P115, "quote_escape:sym<stopper>", $P2640)
    nqp_get_sc_object $P113, "1323686351.93435", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 105
    .const '' $P2641 = "149_1323686357.86238" 
    $P114."add_method"($P115, "quote_escape:sym<bs>", $P2641)
    nqp_get_sc_object $P113, "1323686351.93435", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 105
    .const '' $P2642 = "150_1323686357.86238" 
    $P114."add_method"($P115, "quote_escape:sym<nl>", $P2642)
    nqp_get_sc_object $P113, "1323686351.93435", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 105
    .const '' $P2643 = "151_1323686357.86238" 
    $P114."add_method"($P115, "quote_escape:sym<cr>", $P2643)
    nqp_get_sc_object $P113, "1323686351.93435", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 105
    .const '' $P2644 = "152_1323686357.86238" 
    $P114."add_method"($P115, "quote_escape:sym<tab>", $P2644)
    nqp_get_sc_object $P113, "1323686351.93435", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 105
    .const '' $P2645 = "153_1323686357.86238" 
    $P114."add_method"($P115, "quote_escape:sym<ff>", $P2645)
    nqp_get_sc_object $P113, "1323686351.93435", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 105
    .const '' $P2646 = "154_1323686357.86238" 
    $P114."add_method"($P115, "quote_escape:sym<esc>", $P2646)
    nqp_get_sc_object $P113, "1323686351.93435", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 105
    .const '' $P2647 = "155_1323686357.86238" 
    $P114."add_method"($P115, "quote_escape:sym<hex>", $P2647)
    nqp_get_sc_object $P113, "1323686351.93435", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 105
    .const '' $P2648 = "156_1323686357.86238" 
    $P114."add_method"($P115, "quote_escape:sym<oct>", $P2648)
    nqp_get_sc_object $P113, "1323686351.93435", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 105
    .const '' $P2649 = "157_1323686357.86238" 
    $P114."add_method"($P115, "quote_escape:sym<chr>", $P2649)
    nqp_get_sc_object $P113, "1323686351.93435", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 105
    .const '' $P2650 = "158_1323686357.86238" 
    $P114."add_method"($P115, "quote_escape:sym<0>", $P2650)
    nqp_get_sc_object $P113, "1323686351.93435", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 105
    .const '' $P2651 = "159_1323686357.86238" 
    $P114."add_method"($P115, "quote_escape:sym<misc>", $P2651)
    nqp_get_sc_object $P113, "1323686351.93435", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 105
    .const '' $P2652 = "160_1323686357.86238" 
    $P114."add_method"($P115, "charname", $P2652)
    nqp_get_sc_object $P113, "1323686351.93435", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 105
    .const '' $P2653 = "161_1323686357.86238" 
    $P114."add_method"($P115, "charnames", $P2653)
    nqp_get_sc_object $P113, "1323686351.93435", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 105
    .const '' $P2654 = "163_1323686357.86238" 
    $P114."add_method"($P115, "charspec", $P2654)
    .const 'LexInfo' $P2655 = "119_1323686357.86238" 
    nqp_get_sc_object $P113, "1323686351.93435", 105
    $P2655."set_static_lexpad_value"("$?PACKAGE", $P113)
    .const 'LexInfo' $P2656 = "119_1323686357.86238" 
    $P2656."finish_static_lexpad"()
    .const 'LexInfo' $P2657 = "119_1323686357.86238" 
    nqp_get_sc_object $P113, "1323686351.93435", 105
    $P2657."set_static_lexpad_value"("$?CLASS", $P113)
    .const 'LexInfo' $P2658 = "119_1323686357.86238" 
    $P2658."finish_static_lexpad"()
    nqp_get_sc $P113, "1323686350.56956"
    isnull $I101, $P113
    unless $I101, if_2659_end
    set $S100, "Incorrect pre-compiled version of src/stage2/NQPCORE.setting loaded"
    die $S100
  if_2659_end:
    nqp_get_sc_object $P113, "1323686351.93435", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 105
    nqp_get_sc_object $P116, "1323686350.56956", 5
    $P114."set_default_parent"($P115, $P116)
    nqp_get_sc_object $P113, "1323686351.93435", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 105
    $P114."compose"($P115)
    nqp_get_sc_object $P113, "1323686346.03416", 55
    $P114 = $P113."new_type"("HLL::Compiler" :named("name"))
    nqp_add_object_to_sc cur_sc, 139, $P114
    nqp_get_sc_object $P113, "1323686351.93435", 139
    nqp_get_sc_object $P114, "1323686351.93435", 0
    nqp_get_package_through_who $P115, $P114, "HLL"
    get_who $P116, $P115
    set $P116["Compiler"], $P113
    nqp_get_sc_object $P113, "1323686351.93435", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 139
    nqp_get_sc_object $P116, "1323686346.03416", 99
    $P117 = $P116."new"("@!stages" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1323686351.93435", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 139
    nqp_get_sc_object $P116, "1323686346.03416", 99
    $P117 = $P116."new"("$!parsegrammar" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1323686351.93435", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 139
    nqp_get_sc_object $P116, "1323686346.03416", 99
    $P117 = $P116."new"("$!parseactions" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1323686351.93435", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 139
    nqp_get_sc_object $P116, "1323686346.03416", 99
    $P117 = $P116."new"("@!cmdoptions" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1323686351.93435", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 139
    nqp_get_sc_object $P116, "1323686346.03416", 99
    $P117 = $P116."new"("$!usage" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1323686351.93435", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 139
    nqp_get_sc_object $P116, "1323686346.03416", 99
    $P117 = $P116."new"("$!compiler_progname" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1323686351.93435", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 139
    nqp_get_sc_object $P116, "1323686346.03416", 99
    $P117 = $P116."new"("$!language" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1323686351.93435", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 139
    nqp_get_sc_object $P116, "1323686346.03416", 99
    $P117 = $P116."new"("%!config" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1323686351.93435", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 139
    .const '' $P2660 = "166_1323686357.86238" 
    $P114."add_method"($P115, "new", $P2660)
    nqp_get_sc_object $P113, "1323686351.93435", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 139
    .const '' $P2661 = "167_1323686357.86238" 
    $P114."add_method"($P115, "BUILD", $P2661)
    nqp_get_sc_object $P113, "1323686351.93435", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 139
    .const '' $P2662 = "169_1323686357.86238" 
    $P114."add_method"($P115, "get_exports", $P2662)
    nqp_get_sc_object $P113, "1323686351.93435", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 139
    .const '' $P2663 = "172_1323686357.86238" 
    $P114."add_method"($P115, "get_module", $P2663)
    nqp_get_sc_object $P113, "1323686351.93435", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 139
    .const '' $P2664 = "173_1323686357.86238" 
    $P114."add_method"($P115, "language", $P2664)
    nqp_get_sc_object $P113, "1323686351.93435", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 139
    .const '' $P2665 = "174_1323686357.86238" 
    $P114."add_method"($P115, "compiler", $P2665)
    nqp_get_sc_object $P113, "1323686351.93435", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 139
    .const '' $P2666 = "175_1323686357.86238" 
    $P114."add_method"($P115, "config", $P2666)
    nqp_get_sc_object $P113, "1323686351.93435", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 139
    .const '' $P2667 = "176_1323686357.86238" 
    $P114."add_method"($P115, "load_module", $P2667)
    nqp_get_sc_object $P113, "1323686351.93435", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 139
    .const '' $P2668 = "178_1323686357.86238" 
    $P114."add_method"($P115, "import", $P2668)
    nqp_get_sc_object $P113, "1323686351.93435", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 139
    .const '' $P2669 = "183_1323686357.86238" 
    $P114."add_method"($P115, "autoprint", $P2669)
    nqp_get_sc_object $P113, "1323686351.93435", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 139
    .const '' $P2670 = "184_1323686357.86238" 
    $P114."add_method"($P115, "interactive", $P2670)
    nqp_get_sc_object $P113, "1323686351.93435", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 139
    .const '' $P2671 = "191_1323686357.86238" 
    $P114."add_method"($P115, "eval", $P2671)
    nqp_get_sc_object $P113, "1323686351.93435", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 139
    .const '' $P2672 = "193_1323686357.86238" 
    $P114."add_method"($P115, "ctxsave", $P2672)
    nqp_get_sc_object $P113, "1323686351.93435", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 139
    .const '' $P2673 = "194_1323686357.86238" 
    $P114."add_method"($P115, "panic", $P2673)
    nqp_get_sc_object $P113, "1323686351.93435", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 139
    .const '' $P2674 = "195_1323686357.86238" 
    $P114."add_method"($P115, "stages", $P2674)
    nqp_get_sc_object $P113, "1323686351.93435", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 139
    .const '' $P2675 = "196_1323686357.86238" 
    $P114."add_method"($P115, "parsegrammar", $P2675)
    nqp_get_sc_object $P113, "1323686351.93435", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 139
    .const '' $P2676 = "197_1323686357.86238" 
    $P114."add_method"($P115, "parseactions", $P2676)
    nqp_get_sc_object $P113, "1323686351.93435", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 139
    .const '' $P2677 = "198_1323686357.86238" 
    $P114."add_method"($P115, "interactive_banner", $P2677)
    nqp_get_sc_object $P113, "1323686351.93435", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 139
    .const '' $P2678 = "199_1323686357.86238" 
    $P114."add_method"($P115, "interactive_prompt", $P2678)
    nqp_get_sc_object $P113, "1323686351.93435", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 139
    .const '' $P2679 = "200_1323686357.86238" 
    $P114."add_method"($P115, "compiler_progname", $P2679)
    nqp_get_sc_object $P113, "1323686351.93435", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 139
    .const '' $P2680 = "201_1323686357.86238" 
    $P114."add_method"($P115, "commandline_options", $P2680)
    nqp_get_sc_object $P113, "1323686351.93435", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 139
    .const '' $P2681 = "202_1323686357.86238" 
    $P114."add_method"($P115, "command_line", $P2681)
    nqp_get_sc_object $P113, "1323686351.93435", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 139
    .const '' $P2682 = "203_1323686357.86238" 
    $P114."add_method"($P115, "command_eval", $P2682)
    nqp_get_sc_object $P113, "1323686351.93435", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 139
    .const '' $P2683 = "209_1323686357.86238" 
    $P114."add_method"($P115, "process_args", $P2683)
    nqp_get_sc_object $P113, "1323686351.93435", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 139
    .const '' $P2684 = "212_1323686357.86238" 
    $P114."add_method"($P115, "evalfiles", $P2684)
    nqp_get_sc_object $P113, "1323686351.93435", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 139
    .const '' $P2685 = "216_1323686357.86238" 
    $P114."add_method"($P115, "compile", $P2685)
    nqp_get_sc_object $P113, "1323686351.93435", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 139
    .const '' $P2686 = "219_1323686357.86238" 
    $P114."add_method"($P115, "parse", $P2686)
    nqp_get_sc_object $P113, "1323686351.93435", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 139
    .const '' $P2687 = "222_1323686357.86238" 
    $P114."add_method"($P115, "past", $P2687)
    nqp_get_sc_object $P113, "1323686351.93435", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 139
    .const '' $P2688 = "223_1323686357.86238" 
    $P114."add_method"($P115, "post", $P2688)
    nqp_get_sc_object $P113, "1323686351.93435", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 139
    .const '' $P2689 = "224_1323686357.86238" 
    $P114."add_method"($P115, "pirbegin", $P2689)
    nqp_get_sc_object $P113, "1323686351.93435", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 139
    .const '' $P2690 = "225_1323686357.86238" 
    $P114."add_method"($P115, "pir", $P2690)
    nqp_get_sc_object $P113, "1323686351.93435", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 139
    .const '' $P2691 = "226_1323686357.86238" 
    $P114."add_method"($P115, "evalpmc", $P2691)
    nqp_get_sc_object $P113, "1323686351.93435", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 139
    .const '' $P2692 = "227_1323686357.86238" 
    $P114."add_method"($P115, "dumper", $P2692)
    nqp_get_sc_object $P113, "1323686351.93435", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 139
    .const '' $P2693 = "229_1323686357.86238" 
    $P114."add_method"($P115, "usage", $P2693)
    nqp_get_sc_object $P113, "1323686351.93435", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 139
    .const '' $P2694 = "230_1323686357.86238" 
    $P114."add_method"($P115, "version", $P2694)
    nqp_get_sc_object $P113, "1323686351.93435", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 139
    .const '' $P2695 = "231_1323686357.86238" 
    $P114."add_method"($P115, "show-config", $P2695)
    nqp_get_sc_object $P113, "1323686351.93435", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 139
    .const '' $P2696 = "234_1323686357.86238" 
    $P114."add_method"($P115, "nqpevent", $P2696)
    nqp_get_sc_object $P113, "1323686351.93435", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 139
    .const '' $P2697 = "237_1323686357.86238" 
    $P114."add_method"($P115, "removestage", $P2697)
    nqp_get_sc_object $P113, "1323686351.93435", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 139
    .const '' $P2698 = "239_1323686357.86238" 
    $P114."add_method"($P115, "addstage", $P2698)
    nqp_get_sc_object $P113, "1323686351.93435", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 139
    .const '' $P2699 = "242_1323686357.86238" 
    $P114."add_method"($P115, "parse_name", $P2699)
    nqp_get_sc_object $P113, "1323686351.93435", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 139
    .const '' $P2700 = "244_1323686357.86238" 
    $P114."add_method"($P115, "lineof", $P2700)
    .const 'LexInfo' $P2701 = "164_1323686357.86238" 
    nqp_get_sc_object $P113, "1323686351.93435", 139
    $P2701."set_static_lexpad_value"("$?PACKAGE", $P113)
    .const 'LexInfo' $P2702 = "164_1323686357.86238" 
    $P2702."finish_static_lexpad"()
    .const 'LexInfo' $P2703 = "164_1323686357.86238" 
    nqp_get_sc_object $P113, "1323686351.93435", 139
    $P2703."set_static_lexpad_value"("$?CLASS", $P113)
    .const 'LexInfo' $P2704 = "164_1323686357.86238" 
    $P2704."finish_static_lexpad"()
    nqp_get_sc_object $P113, "1323686351.93435", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 139
    nqp_get_sc_object $P116, "1323686350.56956", 5
    $P114."set_default_parent"($P115, $P116)
    nqp_get_sc_object $P113, "1323686351.93435", 139
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 139
    $P114."compose"($P115)
    nqp_get_sc_object $P113, "1323686346.03416", 55
    $P114 = $P113."new_type"("HLL::CommandLine::Result" :named("name"))
    nqp_add_object_to_sc cur_sc, 181, $P114
    nqp_get_sc_object $P113, "1323686351.93435", 181
    nqp_get_sc_object $P114, "1323686351.93435", 0
    nqp_get_package_through_who $P115, $P114, "HLL"
    nqp_get_package_through_who $P116, $P115, "CommandLine"
    get_who $P117, $P116
    set $P117["Result"], $P113
    nqp_get_sc_object $P113, "1323686351.93435", 181
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 181
    nqp_get_sc_object $P116, "1323686346.03416", 99
    $P117 = $P116."new"("@!arguments" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1323686351.93435", 181
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 181
    nqp_get_sc_object $P116, "1323686346.03416", 99
    $P117 = $P116."new"("%!options" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1323686351.93435", 181
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 181
    .const '' $P2705 = "246_1323686357.86238" 
    $P114."add_method"($P115, "init", $P2705)
    nqp_get_sc_object $P113, "1323686351.93435", 181
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 181
    .const '' $P2706 = "247_1323686357.86238" 
    $P114."add_method"($P115, "arguments", $P2706)
    nqp_get_sc_object $P113, "1323686351.93435", 181
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 181
    .const '' $P2707 = "248_1323686357.86238" 
    $P114."add_method"($P115, "options", $P2707)
    nqp_get_sc_object $P113, "1323686351.93435", 181
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 181
    .const '' $P2708 = "249_1323686357.86238" 
    $P114."add_method"($P115, "add-argument", $P2708)
    nqp_get_sc_object $P113, "1323686351.93435", 181
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 181
    .const '' $P2709 = "250_1323686357.86238" 
    $P114."add_method"($P115, "add-option", $P2709)
    .const 'LexInfo' $P2710 = "245_1323686357.86238" 
    nqp_get_sc_object $P113, "1323686351.93435", 181
    $P2710."set_static_lexpad_value"("$?PACKAGE", $P113)
    .const 'LexInfo' $P2711 = "245_1323686357.86238" 
    $P2711."finish_static_lexpad"()
    .const 'LexInfo' $P2712 = "245_1323686357.86238" 
    nqp_get_sc_object $P113, "1323686351.93435", 181
    $P2712."set_static_lexpad_value"("$?CLASS", $P113)
    .const 'LexInfo' $P2713 = "245_1323686357.86238" 
    $P2713."finish_static_lexpad"()
    nqp_get_sc_object $P113, "1323686351.93435", 181
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 181
    nqp_get_sc_object $P116, "1323686350.56956", 5
    $P114."set_default_parent"($P115, $P116)
    nqp_get_sc_object $P113, "1323686351.93435", 181
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 181
    $P114."compose"($P115)
    nqp_get_sc_object $P113, "1323686346.03416", 55
    $P114 = $P113."new_type"("HLL::CommandLine::Parser" :named("name"))
    nqp_add_object_to_sc cur_sc, 187, $P114
    nqp_get_sc_object $P113, "1323686351.93435", 187
    nqp_get_sc_object $P114, "1323686351.93435", 0
    nqp_get_package_through_who $P115, $P114, "HLL"
    nqp_get_package_through_who $P116, $P115, "CommandLine"
    get_who $P117, $P116
    set $P117["Parser"], $P113
    nqp_get_sc_object $P113, "1323686351.93435", 187
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 187
    nqp_get_sc_object $P116, "1323686346.03416", 99
    $P117 = $P116."new"("@!specs" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1323686351.93435", 187
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 187
    nqp_get_sc_object $P116, "1323686346.03416", 99
    $P117 = $P116."new"("%!options" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1323686351.93435", 187
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 187
    nqp_get_sc_object $P116, "1323686346.03416", 99
    $P117 = $P116."new"("%!stopper" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1323686351.93435", 187
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 187
    nqp_get_sc_object $P116, "1323686346.03416", 99
    $P117 = $P116."new"("$!stop-after-first-arg" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1323686351.93435", 187
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 187
    .const '' $P2714 = "253_1323686357.86238" 
    $P114."add_method"($P115, "new", $P2714)
    nqp_get_sc_object $P113, "1323686351.93435", 187
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 187
    .const '' $P2715 = "254_1323686357.86238" 
    $P114."add_method"($P115, "stop-after-first-arg", $P2715)
    nqp_get_sc_object $P113, "1323686351.93435", 187
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 187
    .const '' $P2716 = "255_1323686357.86238" 
    $P114."add_method"($P115, "BUILD", $P2716)
    nqp_get_sc_object $P113, "1323686351.93435", 187
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 187
    .const '' $P2717 = "257_1323686357.86238" 
    $P114."add_method"($P115, "add-stopper", $P2717)
    nqp_get_sc_object $P113, "1323686351.93435", 187
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 187
    .const '' $P2718 = "258_1323686357.86238" 
    $P114."add_method"($P115, "split-option-aliases", $P2718)
    nqp_get_sc_object $P113, "1323686351.93435", 187
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 187
    .const '' $P2719 = "259_1323686357.86238" 
    $P114."add_method"($P115, "add-spec", $P2719)
    nqp_get_sc_object $P113, "1323686351.93435", 187
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 187
    .const '' $P2720 = "261_1323686357.86238" 
    $P114."add_method"($P115, "is-option", $P2720)
    nqp_get_sc_object $P113, "1323686351.93435", 187
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 187
    .const '' $P2721 = "262_1323686357.86238" 
    $P114."add_method"($P115, "wants-value", $P2721)
    nqp_get_sc_object $P113, "1323686351.93435", 187
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 187
    .const '' $P2722 = "263_1323686357.86238" 
    $P114."add_method"($P115, "optional-value", $P2722)
    nqp_get_sc_object $P113, "1323686351.93435", 187
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 187
    .const '' $P2723 = "264_1323686357.86238" 
    $P114."add_method"($P115, "parse", $P2723)
    .const 'LexInfo' $P2724 = "252_1323686357.86238" 
    nqp_get_sc_object $P113, "1323686351.93435", 187
    $P2724."set_static_lexpad_value"("$?PACKAGE", $P113)
    .const 'LexInfo' $P2725 = "252_1323686357.86238" 
    $P2725."finish_static_lexpad"()
    .const 'LexInfo' $P2726 = "252_1323686357.86238" 
    nqp_get_sc_object $P113, "1323686351.93435", 187
    $P2726."set_static_lexpad_value"("$?CLASS", $P113)
    .const 'LexInfo' $P2727 = "252_1323686357.86238" 
    $P2727."finish_static_lexpad"()
    nqp_get_sc_object $P113, "1323686351.93435", 187
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 187
    nqp_get_sc_object $P116, "1323686350.56956", 5
    $P114."set_default_parent"($P115, $P116)
    nqp_get_sc_object $P113, "1323686351.93435", 187
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 187
    $P114."compose"($P115)
    nqp_get_sc_object $P113, "1323686346.03416", 55
    $P114 = $P113."new_type"("HLL::Compiler::SerializationContextBuilder" :named("name"))
    nqp_add_object_to_sc cur_sc, 198, $P114
    nqp_get_sc_object $P113, "1323686351.93435", 198
    nqp_get_sc_object $P114, "1323686351.93435", 0
    nqp_get_package_through_who $P115, $P114, "HLL"
    nqp_get_package_through_who $P116, $P115, "Compiler"
    get_who $P117, $P116
    set $P117["SerializationContextBuilder"], $P113
    nqp_get_sc_object $P113, "1323686346.03416", 55
    $P114 = $P113."new_type"("Event" :named("name"))
    nqp_add_object_to_sc cur_sc, 199, $P114
    .const 'LexInfo' $P2728 = "272_1323686357.86238" 
    nqp_get_sc_object $P113, "1323686351.93435", 199
    $P2728."set_static_lexpad_value"("Event", $P113)
    .const 'LexInfo' $P2729 = "272_1323686357.86238" 
    $P2729."finish_static_lexpad"()
    nqp_get_sc_object $P113, "1323686351.93435", 199
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 199
    nqp_get_sc_object $P116, "1323686346.03416", 99
    $P117 = $P116."new"("$!deserialize_past" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1323686351.93435", 199
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 199
    .const '' $P2730 = "274_1323686357.86238" 
    $P114."add_method"($P115, "deserialize_past", $P2730)
    nqp_get_sc_object $P113, "1323686351.93435", 199
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 199
    nqp_get_sc_object $P116, "1323686346.03416", 99
    $P117 = $P116."new"("$!fixup_past" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1323686351.93435", 199
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 199
    .const '' $P2731 = "275_1323686357.86238" 
    $P114."add_method"($P115, "fixup_past", $P2731)
    nqp_get_sc_object $P113, "1323686351.93435", 199
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 199
    .const '' $P2732 = "276_1323686357.86238" 
    $P114."add_method"($P115, "new", $P2732)
    .const 'LexInfo' $P2733 = "273_1323686357.86238" 
    nqp_get_sc_object $P113, "1323686351.93435", 199
    $P2733."set_static_lexpad_value"("$?PACKAGE", $P113)
    .const 'LexInfo' $P2734 = "273_1323686357.86238" 
    $P2734."finish_static_lexpad"()
    .const 'LexInfo' $P2735 = "273_1323686357.86238" 
    nqp_get_sc_object $P113, "1323686351.93435", 199
    $P2735."set_static_lexpad_value"("$?CLASS", $P113)
    .const 'LexInfo' $P2736 = "273_1323686357.86238" 
    $P2736."finish_static_lexpad"()
    nqp_get_sc_object $P113, "1323686351.93435", 199
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 199
    nqp_get_sc_object $P116, "1323686350.56956", 5
    $P114."set_default_parent"($P115, $P116)
    nqp_get_sc_object $P113, "1323686351.93435", 199
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 199
    $P114."compose"($P115)
    nqp_get_sc_object $P113, "1323686351.93435", 198
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 198
    nqp_get_sc_object $P116, "1323686346.03416", 99
    $P117 = $P116."new"("$!sc" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1323686351.93435", 198
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 198
    nqp_get_sc_object $P116, "1323686346.03416", 99
    $P117 = $P116."new"("$!handle" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1323686351.93435", 198
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 198
    nqp_get_sc_object $P116, "1323686346.03416", 99
    $P117 = $P116."new"("%!addr_to_slot" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1323686351.93435", 198
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 198
    nqp_get_sc_object $P116, "1323686346.03416", 99
    $P117 = $P116."new"("@!event_stream" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1323686351.93435", 198
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 198
    nqp_get_sc_object $P116, "1323686346.03416", 99
    $P117 = $P116."new"("%!dependencies" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1323686351.93435", 198
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 198
    nqp_get_sc_object $P116, "1323686346.03416", 99
    $P117 = $P116."new"("$!precomp_mode" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1323686351.93435", 198
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 198
    .const '' $P2737 = "277_1323686357.86238" 
    $P114."add_method"($P115, "new", $P2737)
    nqp_get_sc_object $P113, "1323686351.93435", 198
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 198
    .const '' $P2738 = "278_1323686357.86238" 
    $P114."add_method"($P115, "BUILD", $P2738)
    nqp_get_sc_object $P113, "1323686351.93435", 198
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 198
    .const '' $P2739 = "279_1323686357.86238" 
    $P114."add_method"($P115, "slot_for_object", $P2739)
    nqp_get_sc_object $P113, "1323686351.93435", 198
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 198
    .const '' $P2740 = "280_1323686357.86238" 
    $P114."add_method"($P115, "get_slot_past_for_object", $P2740)
    nqp_get_sc_object $P113, "1323686351.93435", 198
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 198
    .const '' $P2741 = "281_1323686357.86238" 
    $P114."add_method"($P115, "set_slot_past", $P2741)
    nqp_get_sc_object $P113, "1323686351.93435", 198
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 198
    .const '' $P2742 = "282_1323686357.86238" 
    $P114."add_method"($P115, "set_cur_sc", $P2742)
    nqp_get_sc_object $P113, "1323686351.93435", 198
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 198
    .const '' $P2743 = "283_1323686357.86238" 
    $P114."add_method"($P115, "add_object_to_cur_sc_past", $P2743)
    nqp_get_sc_object $P113, "1323686351.93435", 198
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 198
    .const '' $P2744 = "284_1323686357.86238" 
    $P114."add_method"($P115, "add_object", $P2744)
    nqp_get_sc_object $P113, "1323686351.93435", 198
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 198
    .const '' $P2745 = "285_1323686357.86238" 
    $P114."add_method"($P115, "add_code", $P2745)
    nqp_get_sc_object $P113, "1323686351.93435", 198
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 198
    .const '' $P2746 = "286_1323686357.86238" 
    $P114."add_method"($P115, "is_precompilation_mode", $P2746)
    nqp_get_sc_object $P113, "1323686351.93435", 198
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 198
    .const '' $P2747 = "287_1323686357.86238" 
    $P114."add_method"($P115, "add_event", $P2747)
    nqp_get_sc_object $P113, "1323686351.93435", 198
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 198
    .const '' $P2748 = "288_1323686357.86238" 
    $P114."add_method"($P115, "get_object_sc_ref_past", $P2748)
    nqp_get_sc_object $P113, "1323686351.93435", 198
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 198
    .const '' $P2749 = "290_1323686357.86238" 
    $P114."add_method"($P115, "sc", $P2749)
    nqp_get_sc_object $P113, "1323686351.93435", 198
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 198
    .const '' $P2750 = "291_1323686357.86238" 
    $P114."add_method"($P115, "handle", $P2750)
    nqp_get_sc_object $P113, "1323686351.93435", 198
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 198
    .const '' $P2751 = "292_1323686357.86238" 
    $P114."add_method"($P115, "event_stream", $P2751)
    .const 'LexInfo' $P2752 = "272_1323686357.86238" 
    nqp_get_sc_object $P113, "1323686351.93435", 198
    $P2752."set_static_lexpad_value"("$?PACKAGE", $P113)
    .const 'LexInfo' $P2753 = "272_1323686357.86238" 
    $P2753."finish_static_lexpad"()
    .const 'LexInfo' $P2754 = "272_1323686357.86238" 
    nqp_get_sc_object $P113, "1323686351.93435", 198
    $P2754."set_static_lexpad_value"("$?CLASS", $P113)
    .const 'LexInfo' $P2755 = "272_1323686357.86238" 
    $P2755."finish_static_lexpad"()
    nqp_get_sc_object $P113, "1323686351.93435", 198
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 198
    nqp_get_sc_object $P116, "1323686350.56956", 5
    $P114."set_default_parent"($P115, $P116)
    nqp_get_sc_object $P113, "1323686351.93435", 198
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1323686351.93435", 198
    $P114."compose"($P115)
  if_2504_end:
    nqp_get_sc_object $P113, "1323686351.93435", 0
    set_hll_global "GLOBAL", $P113
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block1006"  :subid("11_1323686357.86238") :outer("10_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    .const 'Sub' $P1308 = "118_1323686357.86238" 
    capture_lex $P1308
    .const 'Sub' $P1305 = "117_1323686357.86238" 
    capture_lex $P1305
    .const 'Sub' $P1297 = "116_1323686357.86238" 
    capture_lex $P1297
    .const 'Sub' $P1289 = "115_1323686357.86238" 
    capture_lex $P1289
    .const 'Sub' $P1285 = "114_1323686357.86238" 
    capture_lex $P1285
    .const 'Sub' $P1282 = "113_1323686357.86238" 
    capture_lex $P1282
    .const 'Sub' $P1279 = "112_1323686357.86238" 
    capture_lex $P1279
    .const 'Sub' $P1277 = "111_1323686357.86238" 
    capture_lex $P1277
    .const 'Sub' $P1275 = "110_1323686357.86238" 
    capture_lex $P1275
    .const 'Sub' $P1272 = "109_1323686357.86238" 
    capture_lex $P1272
    .const 'Sub' $P1269 = "108_1323686357.86238" 
    capture_lex $P1269
    .const 'Sub' $P1265 = "107_1323686357.86238" 
    capture_lex $P1265
    .const 'Sub' $P1254 = "106_1323686357.86238" 
    capture_lex $P1254
    .const 'Sub' $P1250 = "105_1323686357.86238" 
    capture_lex $P1250
    .const 'Sub' $P1249 = "104_1323686357.86238" 
    capture_lex $P1249
    .const 'Sub' $P1244 = "103_1323686357.86238" 
    capture_lex $P1244
    .const 'Sub' $P1243 = "102_1323686357.86238" 
    capture_lex $P1243
    .const 'Sub' $P1239 = "101_1323686357.86238" 
    capture_lex $P1239
    .const 'Sub' $P1238 = "100_1323686357.86238" 
    capture_lex $P1238
    .const 'Sub' $P1228 = "98_1323686357.86238" 
    capture_lex $P1228
    .const 'Sub' $P1227 = "97_1323686357.86238" 
    capture_lex $P1227
    .const 'Sub' $P1211 = "93_1323686357.86238" 
    capture_lex $P1211
    .const 'Sub' $P1210 = "92_1323686357.86238" 
    capture_lex $P1210
    .const 'Sub' $P1206 = "91_1323686357.86238" 
    capture_lex $P1206
    .const 'Sub' $P1205 = "90_1323686357.86238" 
    capture_lex $P1205
    .const 'Sub' $P1202 = "89_1323686357.86238" 
    capture_lex $P1202
    .const 'Sub' $P1201 = "88_1323686357.86238" 
    capture_lex $P1201
    .const 'Sub' $P1197 = "87_1323686357.86238" 
    capture_lex $P1197
    .const 'Sub' $P1196 = "86_1323686357.86238" 
    capture_lex $P1196
    .const 'Sub' $P1192 = "85_1323686357.86238" 
    capture_lex $P1192
    .const 'Sub' $P1191 = "84_1323686357.86238" 
    capture_lex $P1191
    .const 'Sub' $P1188 = "83_1323686357.86238" 
    capture_lex $P1188
    .const 'Sub' $P1187 = "82_1323686357.86238" 
    capture_lex $P1187
    .const 'Sub' $P1184 = "81_1323686357.86238" 
    capture_lex $P1184
    .const 'Sub' $P1183 = "80_1323686357.86238" 
    capture_lex $P1183
    .const 'Sub' $P1180 = "79_1323686357.86238" 
    capture_lex $P1180
    .const 'Sub' $P1179 = "78_1323686357.86238" 
    capture_lex $P1179
    .const 'Sub' $P1176 = "77_1323686357.86238" 
    capture_lex $P1176
    .const 'Sub' $P1175 = "76_1323686357.86238" 
    capture_lex $P1175
    .const 'Sub' $P1172 = "75_1323686357.86238" 
    capture_lex $P1172
    .const 'Sub' $P1171 = "74_1323686357.86238" 
    capture_lex $P1171
    .const 'Sub' $P1168 = "73_1323686357.86238" 
    capture_lex $P1168
    .const 'Sub' $P1167 = "72_1323686357.86238" 
    capture_lex $P1167
    .const 'Sub' $P1164 = "71_1323686357.86238" 
    capture_lex $P1164
    .const 'Sub' $P1163 = "70_1323686357.86238" 
    capture_lex $P1163
    .const 'Sub' $P1160 = "69_1323686357.86238" 
    capture_lex $P1160
    .const 'Sub' $P1155 = "66_1323686357.86238" 
    capture_lex $P1155
    .const 'Sub' $P1151 = "65_1323686357.86238" 
    capture_lex $P1151
    .const 'Sub' $P1150 = "64_1323686357.86238" 
    capture_lex $P1150
    .const 'Sub' $P1139 = "63_1323686357.86238" 
    capture_lex $P1139
    .const 'Sub' $P1138 = "62_1323686357.86238" 
    capture_lex $P1138
    .const 'Sub' $P1133 = "61_1323686357.86238" 
    capture_lex $P1133
    .const 'Sub' $P1132 = "60_1323686357.86238" 
    capture_lex $P1132
    .const 'Sub' $P1128 = "59_1323686357.86238" 
    capture_lex $P1128
    .const 'Sub' $P1127 = "58_1323686357.86238" 
    capture_lex $P1127
    .const 'Sub' $P1122 = "57_1323686357.86238" 
    capture_lex $P1122
    .const 'Sub' $P1121 = "56_1323686357.86238" 
    capture_lex $P1121
    .const 'Sub' $P1117 = "55_1323686357.86238" 
    capture_lex $P1117
    .const 'Sub' $P1116 = "54_1323686357.86238" 
    capture_lex $P1116
    .const 'Sub' $P1111 = "53_1323686357.86238" 
    capture_lex $P1111
    .const 'Sub' $P1110 = "52_1323686357.86238" 
    capture_lex $P1110
    .const 'Sub' $P1106 = "51_1323686357.86238" 
    capture_lex $P1106
    .const 'Sub' $P1105 = "50_1323686357.86238" 
    capture_lex $P1105
    .const 'Sub' $P1100 = "49_1323686357.86238" 
    capture_lex $P1100
    .const 'Sub' $P1099 = "48_1323686357.86238" 
    capture_lex $P1099
    .const 'Sub' $P1095 = "47_1323686357.86238" 
    capture_lex $P1095
    .const 'Sub' $P1094 = "46_1323686357.86238" 
    capture_lex $P1094
    .const 'Sub' $P1090 = "45_1323686357.86238" 
    capture_lex $P1090
    .const 'Sub' $P1089 = "44_1323686357.86238" 
    capture_lex $P1089
    .const 'Sub' $P1084 = "43_1323686357.86238" 
    capture_lex $P1084
    .const 'Sub' $P1083 = "42_1323686357.86238" 
    capture_lex $P1083
    .const 'Sub' $P1078 = "41_1323686357.86238" 
    capture_lex $P1078
    .const 'Sub' $P1075 = "40_1323686357.86238" 
    capture_lex $P1075
    .const 'Sub' $P1074 = "39_1323686357.86238" 
    capture_lex $P1074
    .const 'Sub' $P1071 = "38_1323686357.86238" 
    capture_lex $P1071
    .const 'Sub' $P1070 = "37_1323686357.86238" 
    capture_lex $P1070
    .const 'Sub' $P1067 = "36_1323686357.86238" 
    capture_lex $P1067
    .const 'Sub' $P1066 = "35_1323686357.86238" 
    capture_lex $P1066
    .const 'Sub' $P1062 = "34_1323686357.86238" 
    capture_lex $P1062
    .const 'Sub' $P1061 = "33_1323686357.86238" 
    capture_lex $P1061
    .const 'Sub' $P1058 = "32_1323686357.86238" 
    capture_lex $P1058
    .const 'Sub' $P1057 = "31_1323686357.86238" 
    capture_lex $P1057
    .const 'Sub' $P1054 = "30_1323686357.86238" 
    capture_lex $P1054
    .const 'Sub' $P1053 = "29_1323686357.86238" 
    capture_lex $P1053
    .const 'Sub' $P1050 = "28_1323686357.86238" 
    capture_lex $P1050
    .const 'Sub' $P1025 = "15_1323686357.86238" 
    capture_lex $P1025
    .const 'Sub' $P1018 = "14_1323686357.86238" 
    capture_lex $P1018
    .const 'Sub' $P1017 = "13_1323686357.86238" 
    capture_lex $P1017
    .const 'Sub' $P1012 = "12_1323686357.86238" 
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
    set $P1008, $P103
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
    set $P1009, $P107
.annotate 'line', 849
    .const 'Sub' $P1308 = "118_1323686357.86238" 
    newclosure $P1316, $P1308
.annotate 'line', 7
    .return ($P1316)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "ws"  :subid("12_1323686357.86238") :method :outer("11_1323686357.86238")
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
.sub "!PREFIX__ws"  :subid("13_1323686357.86238") :method :outer("11_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, ""
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "termish"  :subid("14_1323686357.86238") :method :outer("11_1323686357.86238")
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
.sub "!PREFIX__termish"  :subid("15_1323686357.86238") :method :outer("11_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, ""
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "term"  :subid("16_1323686357.86238")
    .param pmc param_1027
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 20
    .lex "self", param_1027
    $P103 = param_1027."!protoregex"("term")
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__term"  :subid("17_1323686357.86238")
    .param pmc param_1029
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 20
    .lex "self", param_1029
    $P104 = param_1029."!PREFIX__!protoregex"("term")
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "infix"  :subid("18_1323686357.86238")
    .param pmc param_1031
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 21
    .lex "self", param_1031
    $P103 = param_1031."!protoregex"("infix")
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__infix"  :subid("19_1323686357.86238")
    .param pmc param_1033
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 21
    .lex "self", param_1033
    $P104 = param_1033."!PREFIX__!protoregex"("infix")
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "prefix"  :subid("20_1323686357.86238")
    .param pmc param_1035
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 22
    .lex "self", param_1035
    $P103 = param_1035."!protoregex"("prefix")
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__prefix"  :subid("21_1323686357.86238")
    .param pmc param_1037
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 22
    .lex "self", param_1037
    $P104 = param_1037."!PREFIX__!protoregex"("prefix")
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postfix"  :subid("22_1323686357.86238")
    .param pmc param_1039
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 23
    .lex "self", param_1039
    $P103 = param_1039."!protoregex"("postfix")
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postfix"  :subid("23_1323686357.86238")
    .param pmc param_1041
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 23
    .lex "self", param_1041
    $P104 = param_1041."!PREFIX__!protoregex"("postfix")
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "circumfix"  :subid("24_1323686357.86238")
    .param pmc param_1043
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 24
    .lex "self", param_1043
    $P103 = param_1043."!protoregex"("circumfix")
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__circumfix"  :subid("25_1323686357.86238")
    .param pmc param_1045
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 24
    .lex "self", param_1045
    $P104 = param_1045."!PREFIX__!protoregex"("circumfix")
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postcircumfix"  :subid("26_1323686357.86238")
    .param pmc param_1047
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 25
    .lex "self", param_1047
    $P103 = param_1047."!protoregex"("postcircumfix")
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postcircumfix"  :subid("27_1323686357.86238")
    .param pmc param_1049
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 25
    .lex "self", param_1049
    $P104 = param_1049."!PREFIX__!protoregex"("postcircumfix")
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "term:sym<circumfix>"  :subid("28_1323686357.86238") :method :outer("11_1323686357.86238")
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
.sub "!PREFIX__term:sym<circumfix>"  :subid("29_1323686357.86238") :method :outer("11_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    $P103 = self."!PREFIX__!subrule"("circumfix", "")
    new $P104, "ResizablePMCArray"
    push $P104, $P103
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "infixish"  :subid("30_1323686357.86238") :method :outer("11_1323686357.86238")
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
.sub "!PREFIX__infixish"  :subid("31_1323686357.86238") :method :outer("11_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    $P103 = self."!PREFIX__!subrule"("infix", "")
    new $P104, "ResizablePMCArray"
    push $P104, $P103
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "prefixish"  :subid("32_1323686357.86238") :method :outer("11_1323686357.86238")
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
.sub "!PREFIX__prefixish"  :subid("33_1323686357.86238") :method :outer("11_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    $P103 = self."!PREFIX__!subrule"("prefix", "")
    new $P104, "ResizablePMCArray"
    push $P104, $P103
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postfixish"  :subid("34_1323686357.86238") :method :outer("11_1323686357.86238")
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
.sub "!PREFIX__postfixish"  :subid("35_1323686357.86238") :method :outer("11_1323686357.86238")
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
.sub "nullterm"  :subid("36_1323686357.86238") :method :outer("11_1323686357.86238")
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
.sub "!PREFIX__nullterm"  :subid("37_1323686357.86238") :method :outer("11_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, ""
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "nullterm_alt"  :subid("38_1323686357.86238") :method :outer("11_1323686357.86238")
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
.sub "!PREFIX__nullterm_alt"  :subid("39_1323686357.86238") :method :outer("11_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    $P103 = self."!PREFIX__!subrule"("nullterm", "")
    new $P104, "ResizablePMCArray"
    push $P104, $P103
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "nulltermish" :anon :subid("40_1323686357.86238") :outer("11_1323686357.86238")
    .param pmc param_1076
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 40
    .lex "self", param_1076
    set $P104, param_1076
    nqp_decontainerize $P105, $P104
    $P106 = $P105."termish"()
    unless $P106, unless_1077
    set $P103, $P106
    goto unless_1077_end
  unless_1077:
    set $P107, param_1076
    nqp_decontainerize $P108, $P107
    $P109 = $P108."nullterm_alt"()
    set $P103, $P109
  unless_1077_end:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_delimited"  :subid("41_1323686357.86238") :method :outer("11_1323686357.86238")
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
.sub "!PREFIX__quote_delimited"  :subid("42_1323686357.86238") :method :outer("11_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    $P103 = self."!PREFIX__!subrule"("starter", "")
    new $P104, "ResizablePMCArray"
    push $P104, $P103
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_atom"  :subid("43_1323686357.86238") :method :outer("11_1323686357.86238")
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
.sub "!PREFIX__quote_atom"  :subid("44_1323686357.86238") :method :outer("11_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    new $P105, "ResizablePMCArray"
    push $P105, ""
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "decint"  :subid("45_1323686357.86238") :method :outer("11_1323686357.86238")
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
.sub "!PREFIX__decint"  :subid("46_1323686357.86238") :method :outer("11_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, ""
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "decints"  :subid("47_1323686357.86238") :method :outer("11_1323686357.86238")
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
.sub "!PREFIX__decints"  :subid("48_1323686357.86238") :method :outer("11_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, ""
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "hexint"  :subid("49_1323686357.86238") :method :outer("11_1323686357.86238")
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
.sub "!PREFIX__hexint"  :subid("50_1323686357.86238") :method :outer("11_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, ""
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "hexints"  :subid("51_1323686357.86238") :method :outer("11_1323686357.86238")
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
.sub "!PREFIX__hexints"  :subid("52_1323686357.86238") :method :outer("11_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, ""
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "octint"  :subid("53_1323686357.86238") :method :outer("11_1323686357.86238")
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
.sub "!PREFIX__octint"  :subid("54_1323686357.86238") :method :outer("11_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, ""
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "octints"  :subid("55_1323686357.86238") :method :outer("11_1323686357.86238")
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
.sub "!PREFIX__octints"  :subid("56_1323686357.86238") :method :outer("11_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, ""
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "binint"  :subid("57_1323686357.86238") :method :outer("11_1323686357.86238")
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
.sub "!PREFIX__binint"  :subid("58_1323686357.86238") :method :outer("11_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, ""
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "binints"  :subid("59_1323686357.86238") :method :outer("11_1323686357.86238")
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
.sub "!PREFIX__binints"  :subid("60_1323686357.86238") :method :outer("11_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, ""
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "integer"  :subid("61_1323686357.86238") :method :outer("11_1323686357.86238")
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
.sub "!PREFIX__integer"  :subid("62_1323686357.86238") :method :outer("11_1323686357.86238")
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
.sub "dec_number"  :subid("63_1323686357.86238") :method :outer("11_1323686357.86238")
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
.sub "!PREFIX__dec_number"  :subid("64_1323686357.86238") :method :outer("11_1323686357.86238")
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
.sub "escale"  :subid("65_1323686357.86238") :method :outer("11_1323686357.86238")
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
.sub "!PREFIX__escale"  :subid("66_1323686357.86238") :method :outer("11_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, "e"
    push $P103, "E"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape"  :subid("67_1323686357.86238")
    .param pmc param_1157
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 86
    .lex "self", param_1157
    $P103 = param_1157."!protoregex"("quote_escape")
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape"  :subid("68_1323686357.86238")
    .param pmc param_1159
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 86
    .lex "self", param_1159
    $P104 = param_1159."!PREFIX__!protoregex"("quote_escape")
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<backslash>"  :subid("69_1323686357.86238") :method :outer("11_1323686357.86238")
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
.sub "!PREFIX__quote_escape:sym<backslash>"  :subid("70_1323686357.86238") :method :outer("11_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, "\\\\"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<stopper>"  :subid("71_1323686357.86238") :method :outer("11_1323686357.86238")
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
.sub "!PREFIX__quote_escape:sym<stopper>"  :subid("72_1323686357.86238") :method :outer("11_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, "\\"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<bs>"  :subid("73_1323686357.86238") :method :outer("11_1323686357.86238")
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
.sub "!PREFIX__quote_escape:sym<bs>"  :subid("74_1323686357.86238") :method :outer("11_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, "\\b"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<nl>"  :subid("75_1323686357.86238") :method :outer("11_1323686357.86238")
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
.sub "!PREFIX__quote_escape:sym<nl>"  :subid("76_1323686357.86238") :method :outer("11_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, "\\n"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<cr>"  :subid("77_1323686357.86238") :method :outer("11_1323686357.86238")
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
.sub "!PREFIX__quote_escape:sym<cr>"  :subid("78_1323686357.86238") :method :outer("11_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, "\\r"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<tab>"  :subid("79_1323686357.86238") :method :outer("11_1323686357.86238")
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
.sub "!PREFIX__quote_escape:sym<tab>"  :subid("80_1323686357.86238") :method :outer("11_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, "\\t"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<ff>"  :subid("81_1323686357.86238") :method :outer("11_1323686357.86238")
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
.sub "!PREFIX__quote_escape:sym<ff>"  :subid("82_1323686357.86238") :method :outer("11_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, "\\f"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<esc>"  :subid("83_1323686357.86238") :method :outer("11_1323686357.86238")
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
.sub "!PREFIX__quote_escape:sym<esc>"  :subid("84_1323686357.86238") :method :outer("11_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, "\\e"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<hex>"  :subid("85_1323686357.86238") :method :outer("11_1323686357.86238")
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
.sub "!PREFIX__quote_escape:sym<hex>"  :subid("86_1323686357.86238") :method :outer("11_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, unicode:"\\x"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<oct>"  :subid("87_1323686357.86238") :method :outer("11_1323686357.86238")
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
.sub "!PREFIX__quote_escape:sym<oct>"  :subid("88_1323686357.86238") :method :outer("11_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, "\\o"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<chr>"  :subid("89_1323686357.86238") :method :outer("11_1323686357.86238")
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
.sub "!PREFIX__quote_escape:sym<chr>"  :subid("90_1323686357.86238") :method :outer("11_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, "\\c"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<0>"  :subid("91_1323686357.86238") :method :outer("11_1323686357.86238")
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
.sub "!PREFIX__quote_escape:sym<0>"  :subid("92_1323686357.86238") :method :outer("11_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, "\\0"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<misc>"  :subid("93_1323686357.86238") :method :outer("11_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    .const 'Sub' $P1224 = "96_1323686357.86238" 
    capture_lex $P1224
    .const 'Sub' $P1219 = "95_1323686357.86238" 
    capture_lex $P1219
    .const 'Sub' $P1215 = "94_1323686357.86238" 
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
    .const 'Sub' $P1215 = "94_1323686357.86238" 
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
    .const 'Sub' $P1219 = "95_1323686357.86238" 
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
    .const 'Sub' $P1224 = "96_1323686357.86238" 
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
.sub "_block1214"  :anon :subid("94_1323686357.86238") :outer("93_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 107
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block1218"  :anon :subid("95_1323686357.86238") :method :outer("93_1323686357.86238")
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
.sub "_block1223"  :anon :subid("96_1323686357.86238") :outer("93_1323686357.86238")
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
.sub "!PREFIX__quote_escape:sym<misc>"  :subid("97_1323686357.86238") :method :outer("11_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    new $P109, "ResizablePMCArray"
    push $P109, ""
    .return ($P109)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "charname"  :subid("98_1323686357.86238") :method :outer("11_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    .const 'Sub' $P1235 = "99_1323686357.86238" 
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
    .const 'Sub' $P1235 = "99_1323686357.86238" 
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
.sub "_block1234"  :anon :subid("99_1323686357.86238") :method :outer("98_1323686357.86238")
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
.sub "!PREFIX__charname"  :subid("100_1323686357.86238") :method :outer("11_1323686357.86238")
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
.sub "charnames"  :subid("101_1323686357.86238") :method :outer("11_1323686357.86238")
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
.sub "!PREFIX__charnames"  :subid("102_1323686357.86238") :method :outer("11_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, ""
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "charspec"  :subid("103_1323686357.86238") :method :outer("11_1323686357.86238")
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
.sub "!PREFIX__charspec"  :subid("104_1323686357.86238") :method :outer("11_1323686357.86238")
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
.sub "O" :anon :subid("105_1323686357.86238") :outer("11_1323686357.86238")
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
.sub "panic" :anon :subid("106_1323686357.86238") :outer("11_1323686357.86238")
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
    set $P105, param_1255
    nqp_decontainerize $P106, $P105
    $P107 = $P106."pos"()
    set $P1257, $P107
.annotate 'line', 323
    set $P105, param_1255
    nqp_decontainerize $P106, $P105
    get_hll_global $P107, "GLOBAL"
    nqp_get_package_through_who $P108, $P107, "Regex"
    get_who $P109, $P108
    set $P110, $P109["Cursor"]
    getattribute $P111, $P106, $P110, "$!target"
    set $P1258, $P111
.annotate 'line', 324
    set $P1259, param_1256
    unless_null $P1259, vivify_457
    $P1259 = root_new ['parrot';'ResizablePMCArray']
  vivify_457:
    $P1259."push"(" at line ")
.annotate 'line', 325
    set $P1260, param_1256
    unless_null $P1260, vivify_458
    $P1260 = root_new ['parrot';'ResizablePMCArray']
  vivify_458:
    get_hll_global $P105, "GLOBAL"
    nqp_get_package_through_who $P106, $P105, "HLL"
    get_who $P107, $P106
    set $P108, $P107["Compiler"]
    set $P109, $P1258
    unless_null $P109, vivify_459
    new $P109, "Undef"
  vivify_459:
    set $P110, $P1257
    unless_null $P110, vivify_460
    new $P110, "Undef"
  vivify_460:
    $P111 = $P108."lineof"($P109, $P110)
    $P1260."push"($P111)
.annotate 'line', 326
    set $P1261, param_1256
    unless_null $P1261, vivify_461
    $P1261 = root_new ['parrot';'ResizablePMCArray']
  vivify_461:
    $P1261."push"(", near \"")
.annotate 'line', 327
    set $P1262, param_1256
    unless_null $P1262, vivify_462
    $P1262 = root_new ['parrot';'ResizablePMCArray']
  vivify_462:
    set $P105, $P1258
    unless_null $P105, vivify_463
    new $P105, "Undef"
  vivify_463:
    set $S100, $P105
    set $P106, $P1257
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
    set $P1263, param_1256
    unless_null $P1263, vivify_465
    $P1263 = root_new ['parrot';'ResizablePMCArray']
  vivify_465:
    $P1263."push"("\"")
.annotate 'line', 329
    set $P1264, param_1256
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
.sub "peek_delimiters" :anon :subid("107_1323686357.86238") :outer("11_1323686357.86238")
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
.sub "quote_EXPR" :anon :subid("108_1323686357.86238") :outer("11_1323686357.86238")
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
.sub "quotemod_check"  :subid("109_1323686357.86238") :outer("11_1323686357.86238")
    .param pmc param_1273
    .param pmc param_1274
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 475
    .lex "self", param_1273
    .lex "$mod", param_1274
    set $P103, param_1274
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
.sub "starter" :anon :subid("110_1323686357.86238") :outer("11_1323686357.86238")
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
.sub "stopper" :anon :subid("111_1323686357.86238") :outer("11_1323686357.86238")
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
.sub "split_words"  :subid("112_1323686357.86238") :outer("11_1323686357.86238")
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
.sub "EXPR" :anon :subid("113_1323686357.86238") :outer("11_1323686357.86238")
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
.sub "EXPR_reduce" :anon :subid("114_1323686357.86238") :outer("11_1323686357.86238")
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
.sub "ternary" :anon :subid("115_1323686357.86238") :outer("11_1323686357.86238")
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
    set $P1292, param_1291
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
    set $P1293, param_1291
    unless_null $P1293, vivify_474
    $P1293 = root_new ['parrot';'ResizablePMCArray']
    set param_1291, $P1293
  vivify_474:
    set $P1293[$I101], $P104
.annotate 'line', 811
    set $P1294, param_1291
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
    set $P1296, param_1291
    unless_null $P1296, vivify_478
    $P1296 = root_new ['parrot';'ResizablePMCArray']
    set param_1291, $P1296
  vivify_478:
    set $P1296[$I100], $P103
.annotate 'line', 809
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "MARKER" :anon :subid("116_1323686357.86238") :outer("11_1323686357.86238")
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
    set $P104, param_1298
    nqp_decontainerize $P105, $P104
    $P106 = $P105."pos"()
    set $P1300, $P106
.annotate 'line', 816
    set $P104, param_1298
    nqp_decontainerize $P105, $P104
    set $P106, param_1299
    unless_null $P106, vivify_479
    new $P106, "Undef"
  vivify_479:
    set $P107, $P1300
    unless_null $P107, vivify_480
    new $P107, "Undef"
  vivify_480:
    $P105."!cursor_debug"("START", "MARKER name=", $P106, ", pos=", $P107)
.annotate 'line', 817

            $P1303 = get_global '%!MARKHASH'
            unless null $P1303 goto have_markhash
            $P1303 = new ['Hash']
            set_global '%!MARKHASH', $P1303
          have_markhash:
        
    set $P1301, $P1303
.annotate 'line', 824
    set $P104, $P1300
    unless_null $P104, vivify_481
    new $P104, "Undef"
  vivify_481:
    set $P105, param_1299
    unless_null $P105, vivify_482
    new $P105, "Undef"
  vivify_482:
    set $P1304, $P1301
    unless_null $P1304, vivify_483
    $P1304 = root_new ['parrot';'Hash']
    set $P1301, $P1304
  vivify_483:
    set $P1304[$P105], $P104
.annotate 'line', 825
    set $P104, param_1298
    nqp_decontainerize $P105, $P104
    $P105."!cursor_debug"("PASS", "MARKER")
.annotate 'line', 814
    .return (1)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "MARKED" :anon :subid("117_1323686357.86238") :outer("11_1323686357.86238")
    .param pmc param_1306
    .param pmc param_1307
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 829
    .lex "self", param_1306
    .lex "$markname", param_1307
.annotate 'line', 830
    set $P103, param_1306
    nqp_decontainerize $P104, $P103
    set $P105, param_1307
    unless_null $P105, vivify_484
    new $P105, "Undef"
  vivify_484:
    $P104."!cursor_debug"("START", "MARKED name=", $P105)
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
.sub "LANG" :anon :subid("118_1323686357.86238") :outer("11_1323686357.86238")
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
    set $P106, param_1310
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
    set $P1312, $P110
.annotate 'line', 851
    set $P106, param_1310
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
    set $P1313, $P111
.annotate 'line', 852

            .local pmc self
            .local int pos
            self = find_lex 'self'
            $P0 = find_lex '$lang_cursor'
            ($P1315, pos) = self.'!cursor_start'($P0)
            $P1315.'!cursor_pos'(pos)
        
    set $P1314, $P1315
.annotate 'line', 860
    set $P106, $P1314
    unless_null $P106, vivify_493
    new $P106, "Undef"
  vivify_493:
    set $P107, param_1311
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
.sub "_block1317"  :subid("119_1323686357.86238") :outer("10_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 865
    .const 'Sub' $P1557 = "163_1323686357.86238" 
    capture_lex $P1557
    .const 'Sub' $P1548 = "161_1323686357.86238" 
    capture_lex $P1548
    .const 'Sub' $P1540 = "160_1323686357.86238" 
    capture_lex $P1540
    .const 'Sub' $P1533 = "159_1323686357.86238" 
    capture_lex $P1533
    .const 'Sub' $P1530 = "158_1323686357.86238" 
    capture_lex $P1530
    .const 'Sub' $P1526 = "157_1323686357.86238" 
    capture_lex $P1526
    .const 'Sub' $P1518 = "156_1323686357.86238" 
    capture_lex $P1518
    .const 'Sub' $P1510 = "155_1323686357.86238" 
    capture_lex $P1510
    .const 'Sub' $P1507 = "154_1323686357.86238" 
    capture_lex $P1507
    .const 'Sub' $P1504 = "153_1323686357.86238" 
    capture_lex $P1504
    .const 'Sub' $P1501 = "152_1323686357.86238" 
    capture_lex $P1501
    .const 'Sub' $P1498 = "151_1323686357.86238" 
    capture_lex $P1498
    .const 'Sub' $P1495 = "150_1323686357.86238" 
    capture_lex $P1495
    .const 'Sub' $P1492 = "149_1323686357.86238" 
    capture_lex $P1492
    .const 'Sub' $P1488 = "148_1323686357.86238" 
    capture_lex $P1488
    .const 'Sub' $P1485 = "147_1323686357.86238" 
    capture_lex $P1485
    .const 'Sub' $P1479 = "146_1323686357.86238" 
    capture_lex $P1479
    .const 'Sub' $P1452 = "144_1323686357.86238" 
    capture_lex $P1452
    .const 'Sub' $P1432 = "141_1323686357.86238" 
    capture_lex $P1432
    .const 'Sub' $P1429 = "140_1323686357.86238" 
    capture_lex $P1429
    .const 'Sub' $P1426 = "139_1323686357.86238" 
    capture_lex $P1426
    .const 'Sub' $P1423 = "138_1323686357.86238" 
    capture_lex $P1423
    .const 'Sub' $P1420 = "137_1323686357.86238" 
    capture_lex $P1420
    .const 'Sub' $P1417 = "136_1323686357.86238" 
    capture_lex $P1417
    .const 'Sub' $P1413 = "135_1323686357.86238" 
    capture_lex $P1413
    .const 'Sub' $P1409 = "134_1323686357.86238" 
    capture_lex $P1409
    .const 'Sub' $P1406 = "133_1323686357.86238" 
    capture_lex $P1406
    .const 'Sub' $P1402 = "132_1323686357.86238" 
    capture_lex $P1402
    .const 'Sub' $P1398 = "131_1323686357.86238" 
    capture_lex $P1398
    .const 'Sub' $P1357 = "128_1323686357.86238" 
    capture_lex $P1357
    .const 'Sub' $P1341 = "125_1323686357.86238" 
    capture_lex $P1341
    .const 'Sub' $P1339 = "124_1323686357.86238" 
    capture_lex $P1339
    .const 'Sub' $P1328 = "121_1323686357.86238" 
    capture_lex $P1328
    .const 'Sub' $P1320 = "120_1323686357.86238" 
    capture_lex $P1320
.annotate 'line', 866
    .const 'Sub' $P1320 = "120_1323686357.86238" 
    newclosure $P1325, $P1320
    set $P1319, $P1325
    .lex "string_to_int", $P1319
.annotate 'line', 865
    set $P102, $P1319
    find_lex $P103, "$?PACKAGE"
    get_who $P105, $P103
    set $P105["string_to_int"], $P102
    .lex "$?PACKAGE", $P1326
    .lex "$?CLASS", $P1327
    set $P106, $P1319
.annotate 'line', 1044
    .const 'Sub' $P1557 = "163_1323686357.86238" 
    newclosure $P1563, $P1557
.annotate 'line', 865
    .return ($P1563)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "string_to_int"  :subid("120_1323686357.86238") :outer("119_1323686357.86238")
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
    set $P102, param_1322
    unless_null $P102, vivify_495
    new $P102, "Undef"
  vivify_495:
    set $I100, $P102
    set $P103, param_1321
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
    set $P1323, $P106
.annotate 'line', 869
    new $P103, "Float"
    assign $P103, 2
    set $S100, $P103
    set $P102, $P1323
    unless_null $P102, vivify_497
    new $P102, "Undef"
  vivify_497:
    set $P104, $P102[$S100]
    set $N100, $P104
    set $P105, param_1321
    unless_null $P105, vivify_498
    new $P105, "Undef"
  vivify_498:
    set $S101, $P105
    length $I100, $S101
    set $N101, $I100
    iseq $I101, $N100, $N101
    if $I101, unless_1324_end
.annotate 'line', 868
    set $P106, param_1321
    unless_null $P106, vivify_499
    new $P106, "Undef"
  vivify_499:
    $P107 = $P106."CURSOR"()
    new $P108, 'String'
    set $P108, "'"
    set $P109, param_1321
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
    set $P102, $P1323
    unless_null $P102, vivify_501
    new $P102, "Undef"
  vivify_501:
    set $P104, $P102[$S100]
.annotate 'line', 866
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "ints_to_string" :anon :subid("121_1323686357.86238") :outer("119_1323686357.86238")
    .param pmc param_1329
    .param pmc param_1330
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 873
    .const 'Sub' $P1333 = "122_1323686357.86238" 
    capture_lex $P1333
    .lex "self", param_1329
    .lex "$ints", param_1330
.annotate 'line', 874
    set $P107, param_1330
    unless_null $P107, vivify_502
    new $P107, "Undef"
  vivify_502:
    does $I100, $P107, "array"
    if $I100, if_1331
.annotate 'line', 881
    set $P111, param_1330
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
    .const 'Sub' $P1333 = "122_1323686357.86238" 
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
.sub "_block1332"  :anon :subid("122_1323686357.86238") :outer("121_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 874
    .const 'Sub' $P1336 = "123_1323686357.86238" 
    capture_lex $P1336
.annotate 'line', 875
    new $P108, "Undef"
    set $P1334, $P108
    .lex "$result", $P1334
    new $P109, "String"
    assign $P109, ""
    set $P1334, $P109
.annotate 'line', 876
    find_lex $P110, "$ints"
    unless_null $P110, vivify_504
    new $P110, "Undef"
  vivify_504:
    defined $I101, $P110
    unless $I101, for_undef_505
    iter $P109, $P110
    new $P112, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P112, loop1338_handler
    push_eh $P112
  loop1338_test:
    unless $P109, loop1338_done
    shift $P111, $P109
  loop1338_redo:
    .const 'Sub' $P1336 = "123_1323686357.86238" 
    capture_lex $P1336
    $P1336($P111)
  loop1338_next:
    goto loop1338_test
  loop1338_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P113, exception, 'type'
    eq $P113, .CONTROL_LOOP_NEXT, loop1338_next
    eq $P113, .CONTROL_LOOP_REDO, loop1338_redo
  loop1338_done:
    pop_eh 
  for_undef_505:
.annotate 'line', 874
    set $P109, $P1334
    unless_null $P109, vivify_508
    new $P109, "Undef"
  vivify_508:
    .return ($P109)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1335"  :anon :subid("123_1323686357.86238") :outer("122_1323686357.86238")
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
.sub "CTXSAVE" :anon :subid("124_1323686357.86238") :outer("119_1323686357.86238")
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
.sub "SET_BLOCK_OUTER_CTX" :anon :subid("125_1323686357.86238") :outer("119_1323686357.86238")
    .param pmc param_1342
    .param pmc param_1343
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 900
    .const 'Sub' $P1348 = "126_1323686357.86238" 
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
    set $P1344, $P110
.annotate 'line', 902
    set $P108, $P1344
    unless_null $P108, vivify_513
    new $P108, "Undef"
  vivify_513:
    defined $I100, $P108
    if $I100, if_1346
    new $P107, 'Integer'
    set $P107, $I100
    goto if_1346_end
  if_1346:
    .const 'Sub' $P1348 = "126_1323686357.86238" 
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
.sub "_block1347"  :anon :subid("126_1323686357.86238") :outer("125_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 902
    .const 'Sub' $P1354 = "127_1323686357.86238" 
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
    set $P1349, $P111
.annotate 'line', 904
    set $P1351, $P1349
    unless_null $P1351, vivify_515
    $P1351 = root_new ['parrot';'ResizablePMCArray']
  vivify_515:
    $P1351."shift"()
.annotate 'line', 905
    find_lex $P109, "$block"
    unless_null $P109, vivify_516
    new $P109, "Undef"
  vivify_516:
    set $P1352, $P1349
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
    new $P113, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P113, loop1356_handler
    push_eh $P113
  loop1356_test:
    unless $P109, loop1356_done
    shift $P112, $P109
  loop1356_redo:
    .const 'Sub' $P1354 = "127_1323686357.86238" 
    capture_lex $P1354
    $P1354($P112)
  loop1356_next:
    goto loop1356_test
  loop1356_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
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
.sub "_block1353"  :anon :subid("127_1323686357.86238") :outer("126_1323686357.86238")
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
.sub "EXPR" :anon :subid("128_1323686357.86238") :outer("119_1323686357.86238")
    .param pmc param_1360
    .param pmc param_1361
    .param pmc param_1362 :optional
    .param int has_param_1362 :opt_flag
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 913
    .const 'Sub' $P1394 = "130_1323686357.86238" 
    capture_lex $P1394
    .const 'Sub' $P1386 = "129_1323686357.86238" 
    capture_lex $P1386
    new $P1359, 'ExceptionHandler', [.CONTROL_RETURN]
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
    set $P108, param_1362
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
    set $P108, param_1361
    unless_null $P108, vivify_525
    new $P108, "Undef"
  vivify_525:
    $P109 = $P108."ast"()
    set $P1365, $P109
    defined $I1367, $P1365
    if $I1367, default_1366
    set $P1368, param_1361
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
    set $P1363, $P1365
.annotate 'line', 916
    set $P108, $P1363
    unless_null $P108, vivify_528
    new $P108, "Undef"
  vivify_528:
    if $P108, unless_1369_end
.annotate 'line', 917
    get_hll_global $P109, "GLOBAL"
    nqp_get_package_through_who $P110, $P109, "PAST"
    get_who $P111, $P110
    set $P112, $P111["Op"]
    set $P113, param_1361
    unless_null $P113, vivify_529
    new $P113, "Undef"
  vivify_529:
    $P114 = $P112."new"($P113 :named("node"))
    set $P1363, $P114
.annotate 'line', 918
    set $P1371, param_1361
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
    set $P1378, param_1361
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
    set $P111, $P1363
    unless_null $P111, vivify_538
    new $P111, "Undef"
  vivify_538:
    set $P1381, param_1361
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
    set $P110, $P1363
    unless_null $P110, vivify_543
    new $P110, "Undef"
  vivify_543:
    set $P1374, param_1361
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
    set $P109, $P1363
    unless_null $P109, vivify_548
    new $P109, "Undef"
  vivify_548:
    $P110 = $P109."name"()
    if $P110, unless_1384_end
    .const 'Sub' $P1386 = "129_1323686357.86238" 
    capture_lex $P1386
    $P1386()
  unless_1384_end:
  unless_1369_end:
.annotate 'line', 926
    set $P108, param_1362
    unless_null $P108, vivify_556
    new $P108, "Undef"
  vivify_556:
    set $S100, $P108
    iseq $I100, $S100, "POSTFIX"
    if $I100, if_1391
.annotate 'line', 928
    set $P110, param_1361
    unless_null $P110, vivify_557
    new $P110, "Undef"
  vivify_557:
    $P111 = $P110."list"()
    defined $I101, $P111
    unless $I101, for_undef_558
    iter $P109, $P111
    new $P114, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P114, loop1397_handler
    push_eh $P114
  loop1397_test:
    unless $P109, loop1397_done
    shift $P112, $P109
  loop1397_redo:
    .const 'Sub' $P1394 = "130_1323686357.86238" 
    capture_lex $P1394
    $P1394($P112)
  loop1397_next:
    goto loop1397_test
  loop1397_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
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
    set $P109, $P1363
    unless_null $P109, vivify_562
    new $P109, "Undef"
  vivify_562:
    new $P110, "Float"
    assign $P110, 0
    set $I101, $P110
    set $P1392, param_1361
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
    set $P108, param_1361
    set $P109, $P1363
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
.sub "_block1385"  :anon :subid("129_1323686357.86238") :outer("128_1323686357.86238")
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
    set $P1387, $P117
.annotate 'line', 923
    find_lex $P112, "$past"
    unless_null $P112, vivify_554
    new $P112, "Undef"
  vivify_554:
    new $P113, "String"
    assign $P113, "&"
    set $P114, $P1387
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
.sub "_block1393"  :anon :subid("130_1323686357.86238") :outer("128_1323686357.86238")
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
.sub "term:sym<circumfix>" :anon :subid("131_1323686357.86238") :outer("119_1323686357.86238")
    .param pmc param_1399
    .param pmc param_1400
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 933
    .lex "self", param_1399
    .lex "$/", param_1400
    set $P106, param_1400
    set $P1401, param_1400
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
.sub "termish" :anon :subid("132_1323686357.86238") :outer("119_1323686357.86238")
    .param pmc param_1403
    .param pmc param_1404
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 935
    .lex "self", param_1403
    .lex "$/", param_1404
    set $P106, param_1404
    set $P1405, param_1404
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
.sub "nullterm" :anon :subid("133_1323686357.86238") :outer("119_1323686357.86238")
    .param pmc param_1407
    .param pmc param_1408
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 936
    .lex "self", param_1407
    .lex "$/", param_1408
    set $P106, param_1408
    new $P107, "Undef"
    $P108 = $P106."!make"($P107)
    .return ($P108)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "nullterm_alt" :anon :subid("134_1323686357.86238") :outer("119_1323686357.86238")
    .param pmc param_1410
    .param pmc param_1411
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 937
    .lex "self", param_1410
    .lex "$/", param_1411
    set $P106, param_1411
    set $P1412, param_1411
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
.sub "integer" :anon :subid("135_1323686357.86238") :outer("119_1323686357.86238")
    .param pmc param_1414
    .param pmc param_1415
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 939
    .lex "self", param_1414
    .lex "$/", param_1415
    set $P106, param_1415
    set $P1416, param_1415
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
.sub "dec_number" :anon :subid("136_1323686357.86238") :outer("119_1323686357.86238")
    .param pmc param_1418
    .param pmc param_1419
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 941
    .lex "self", param_1418
    .lex "$/", param_1419
    set $P106, param_1419
    set $P107, param_1419
    unless_null $P107, vivify_574
    new $P107, "Undef"
  vivify_574:
    set $N100, $P107
    $P108 = $P106."!make"($N100)
    .return ($P108)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "decint" :anon :subid("137_1323686357.86238") :outer("119_1323686357.86238")
    .param pmc param_1421
    .param pmc param_1422
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 943
    .lex "self", param_1421
    .lex "$/", param_1422
    set $P106, param_1422
    set $P107, param_1422
    unless_null $P107, vivify_575
    new $P107, "Undef"
  vivify_575:
    $P108 = "string_to_int"($P107, 10)
    $P109 = $P106."!make"($P108)
    .return ($P109)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "hexint" :anon :subid("138_1323686357.86238") :outer("119_1323686357.86238")
    .param pmc param_1424
    .param pmc param_1425
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 944
    .lex "self", param_1424
    .lex "$/", param_1425
    set $P106, param_1425
    set $P107, param_1425
    unless_null $P107, vivify_576
    new $P107, "Undef"
  vivify_576:
    $P108 = "string_to_int"($P107, 16)
    $P109 = $P106."!make"($P108)
    .return ($P109)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "octint" :anon :subid("139_1323686357.86238") :outer("119_1323686357.86238")
    .param pmc param_1427
    .param pmc param_1428
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 945
    .lex "self", param_1427
    .lex "$/", param_1428
    set $P106, param_1428
    set $P107, param_1428
    unless_null $P107, vivify_577
    new $P107, "Undef"
  vivify_577:
    $P108 = "string_to_int"($P107, 8)
    $P109 = $P106."!make"($P108)
    .return ($P109)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "binint" :anon :subid("140_1323686357.86238") :outer("119_1323686357.86238")
    .param pmc param_1430
    .param pmc param_1431
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 946
    .lex "self", param_1430
    .lex "$/", param_1431
    set $P106, param_1431
    set $P107, param_1431
    unless_null $P107, vivify_578
    new $P107, "Undef"
  vivify_578:
    $P108 = "string_to_int"($P107, 2)
    $P109 = $P106."!make"($P108)
    .return ($P109)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_EXPR" :anon :subid("141_1323686357.86238") :outer("119_1323686357.86238")
    .param pmc param_1433
    .param pmc param_1434
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 948
    .const 'Sub' $P1440 = "142_1323686357.86238" 
    capture_lex $P1440
    .lex "self", param_1433
    .lex "$/", param_1434
.annotate 'line', 949
    new $P106, "Undef"
    set $P1435, $P106
    .lex "$past", $P1435
    set $P1436, param_1434
    unless_null $P1436, vivify_579
    $P1436 = root_new ['parrot';'Hash']
  vivify_579:
    set $P107, $P1436["quote_delimited"]
    unless_null $P107, vivify_580
    new $P107, "Undef"
  vivify_580:
    $P108 = $P107."ast"()
    set $P1435, $P108
.annotate 'line', 950
    set $P107, param_1434
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
    set $P114, $P1435
    unless_null $P114, vivify_582
    new $P114, "Undef"
  vivify_582:
    $P115 = $P113."ACCEPTS"($P114)
    if $P115, if_1438
.annotate 'line', 954
    .const 'Sub' $P1440 = "142_1323686357.86238" 
    capture_lex $P1440
    $P1440()
    goto if_1438_end
  if_1438:
.annotate 'line', 952
    set $P116, param_1434
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
    set $P111, $P1435
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
    set $P117, $P1435
    unless_null $P117, vivify_595
    new $P117, "Undef"
  vivify_595:
    set $S100, $P117
    $P118 = $P116."new"($S100 :named("value"))
    set $P1435, $P118
  if_1451_end:
.annotate 'line', 968
    set $P107, param_1434
    set $P108, $P1435
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
.sub "_block1439"  :anon :subid("142_1323686357.86238") :outer("141_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 954
    .const 'Sub' $P1447 = "143_1323686357.86238" 
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
    set $P1441, $P123
.annotate 'line', 956
    set $P1444, $P1441
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
    set $P1450, $P1441
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
    set $P1445, $P1441
    unless_null $P1445, vivify_589
    $P1445 = root_new ['parrot';'ResizablePMCArray']
  vivify_589:
    defined $I101, $P1445
    unless $I101, for_undef_590
    iter $P117, $P1445
    new $P119, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P119, loop1449_handler
    push_eh $P119
  loop1449_test:
    unless $P117, loop1449_done
    shift $P118, $P117
  loop1449_redo:
    .const 'Sub' $P1447 = "143_1323686357.86238" 
    capture_lex $P1447
    $P1447($P118)
  loop1449_next:
    goto loop1449_test
  loop1449_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
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
.sub "_block1446"  :anon :subid("143_1323686357.86238") :outer("142_1323686357.86238")
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
.sub "quote_delimited" :anon :subid("144_1323686357.86238") :outer("119_1323686357.86238")
    .param pmc param_1453
    .param pmc param_1454
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 971
    .const 'Sub' $P1462 = "145_1323686357.86238" 
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
    set $P1459, $P1455
    unless_null $P1459, vivify_597
    $P1459 = root_new ['parrot';'ResizablePMCArray']
  vivify_597:
.annotate 'line', 973
    new $P108, "String"
    assign $P108, ""
    set $P1457, $P108
.annotate 'line', 974
    set $P1460, param_1454
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
    new $P113, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P113, loop1470_handler
    push_eh $P113
  loop1470_test:
    unless $P108, loop1470_done
    shift $P110, $P108
  loop1470_redo:
    .const 'Sub' $P1462 = "145_1323686357.86238" 
    capture_lex $P1462
    $P1462($P110)
  loop1470_next:
    goto loop1470_test
  loop1470_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P114, exception, 'type'
    eq $P114, .CONTROL_LOOP_NEXT, loop1470_next
    eq $P114, .CONTROL_LOOP_REDO, loop1470_redo
  loop1470_done:
    pop_eh 
  for_undef_600:
.annotate 'line', 988
    set $P108, $P1457
    unless_null $P108, vivify_613
    new $P108, "Undef"
  vivify_613:
    set $S100, $P108
    isgt $I100, $S100, ""
    unless $I100, if_1471_end
    set $P1472, $P1455
    unless_null $P1472, vivify_614
    $P1472 = root_new ['parrot';'ResizablePMCArray']
  vivify_614:
    set $P109, $P1457
    unless_null $P109, vivify_615
    new $P109, "Undef"
  vivify_615:
    $P1472."push"($P109)
  if_1471_end:
.annotate 'line', 989
    set $P1474, $P1455
    unless_null $P1474, vivify_616
    $P1474 = root_new ['parrot';'ResizablePMCArray']
  vivify_616:
    if $P1474, if_1473
    new $P110, "String"
    assign $P110, ""
    set $P108, $P110
    goto if_1473_end
  if_1473:
    set $P1475, $P1455
    unless_null $P1475, vivify_617
    $P1475 = root_new ['parrot';'ResizablePMCArray']
  vivify_617:
    $P109 = $P1475."shift"()
    set $P108, $P109
  if_1473_end:
    set $P1458, $P108
.annotate 'line', 990
    new $P108, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P108, loop1478_handler
    push_eh $P108
  loop1478_test:
    set $P1476, $P1455
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
    set $P112, $P1458
    unless_null $P112, vivify_619
    new $P112, "Undef"
  vivify_619:
    set $P1477, $P1455
    unless_null $P1477, vivify_620
    $P1477 = root_new ['parrot';'ResizablePMCArray']
  vivify_620:
    $P113 = $P1477."shift"()
    $P114 = $P111."new"($P112, $P113, "concat" :named("pirop"))
    set $P1458, $P114
  loop1478_next:
.annotate 'line', 990
    goto loop1478_test
  loop1478_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P109, exception, 'type'
    eq $P109, .CONTROL_LOOP_NEXT, loop1478_next
    eq $P109, .CONTROL_LOOP_REDO, loop1478_redo
  loop1478_done:
    pop_eh 
.annotate 'line', 993
    set $P108, param_1454
    set $P109, $P1458
    unless_null $P109, vivify_621
    new $P109, "Undef"
  vivify_621:
    $P110 = $P108."!make"($P109)
.annotate 'line', 971
    .return ($P110)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1461"  :anon :subid("145_1323686357.86238") :outer("144_1323686357.86238")
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
    set $P1463, $P113
.annotate 'line', 976
    get_hll_global $P113, "GLOBAL"
    nqp_get_package_through_who $P114, $P113, "PAST"
    get_who $P115, $P114
    set $P116, $P115["Node"]
    set $P117, $P1463
    unless_null $P117, vivify_602
    new $P117, "Undef"
  vivify_602:
    $P118 = $P116."ACCEPTS"($P117)
    isfalse $I101, $P118
    if $I101, if_1465
.annotate 'line', 979
    set $P120, $P1463
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
    set $P127, $P1463
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
    set $P128, $P1463
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
    set $P120, $P1463
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
.sub "quote_atom" :anon :subid("146_1323686357.86238") :outer("119_1323686357.86238")
    .param pmc param_1480
    .param pmc param_1481
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 996
    .lex "self", param_1480
    .lex "$/", param_1481
.annotate 'line', 997
    set $P106, param_1481
    set $P1483, param_1481
    unless_null $P1483, vivify_622
    $P1483 = root_new ['parrot';'Hash']
  vivify_622:
    set $P108, $P1483["quote_escape"]
    unless_null $P108, vivify_623
    new $P108, "Undef"
  vivify_623:
    if $P108, if_1482
    set $P111, param_1481
    unless_null $P111, vivify_624
    new $P111, "Undef"
  vivify_624:
    set $S100, $P111
    new $P107, 'String'
    set $P107, $S100
    goto if_1482_end
  if_1482:
    set $P1484, param_1481
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
.sub "quote_escape:sym<backslash>" :anon :subid("147_1323686357.86238") :outer("119_1323686357.86238")
    .param pmc param_1486
    .param pmc param_1487
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1000
    .lex "self", param_1486
    .lex "$/", param_1487
    set $P106, param_1487
    $P107 = $P106."!make"("\\")
    .return ($P107)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<stopper>" :anon :subid("148_1323686357.86238") :outer("119_1323686357.86238")
    .param pmc param_1489
    .param pmc param_1490
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1001
    .lex "self", param_1489
    .lex "$/", param_1490
    set $P106, param_1490
    set $P1491, param_1490
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
.sub "quote_escape:sym<bs>" :anon :subid("149_1323686357.86238") :outer("119_1323686357.86238")
    .param pmc param_1493
    .param pmc param_1494
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1003
    .lex "self", param_1493
    .lex "$/", param_1494
    set $P106, param_1494
    $P107 = $P106."!make"("\b")
    .return ($P107)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<nl>" :anon :subid("150_1323686357.86238") :outer("119_1323686357.86238")
    .param pmc param_1496
    .param pmc param_1497
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1004
    .lex "self", param_1496
    .lex "$/", param_1497
    set $P106, param_1497
    $P107 = $P106."!make"("\n")
    .return ($P107)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<cr>" :anon :subid("151_1323686357.86238") :outer("119_1323686357.86238")
    .param pmc param_1499
    .param pmc param_1500
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1005
    .lex "self", param_1499
    .lex "$/", param_1500
    set $P106, param_1500
    $P107 = $P106."!make"("\r")
    .return ($P107)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<tab>" :anon :subid("152_1323686357.86238") :outer("119_1323686357.86238")
    .param pmc param_1502
    .param pmc param_1503
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1006
    .lex "self", param_1502
    .lex "$/", param_1503
    set $P106, param_1503
    $P107 = $P106."!make"("\t")
    .return ($P107)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<ff>" :anon :subid("153_1323686357.86238") :outer("119_1323686357.86238")
    .param pmc param_1505
    .param pmc param_1506
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1007
    .lex "self", param_1505
    .lex "$/", param_1506
    set $P106, param_1506
    $P107 = $P106."!make"("\f")
    .return ($P107)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<esc>" :anon :subid("154_1323686357.86238") :outer("119_1323686357.86238")
    .param pmc param_1508
    .param pmc param_1509
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1008
    .lex "self", param_1508
    .lex "$/", param_1509
    set $P106, param_1509
    $P107 = $P106."!make"("\e")
    .return ($P107)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<hex>" :anon :subid("155_1323686357.86238") :outer("119_1323686357.86238")
    .param pmc param_1511
    .param pmc param_1512
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1010
    .lex "self", param_1511
    .lex "$/", param_1512
.annotate 'line', 1011
    set $P106, param_1512
    set $P107, param_1511
    nqp_decontainerize $P108, $P107
    set $P1514, param_1512
    unless_null $P1514, vivify_629
    $P1514 = root_new ['parrot';'Hash']
  vivify_629:
    set $P110, $P1514["hexint"]
    unless_null $P110, vivify_630
    new $P110, "Undef"
  vivify_630:
    if $P110, if_1513
    set $P1516, param_1512
    unless_null $P1516, vivify_631
    $P1516 = root_new ['parrot';'Hash']
  vivify_631:
    set $P1517, $P1516["hexints"]
    unless_null $P1517, vivify_632
    $P1517 = root_new ['parrot';'Hash']
  vivify_632:
    set $P112, $P1517["hexint"]
    unless_null $P112, vivify_633
    new $P112, "Undef"
  vivify_633:
    set $P109, $P112
    goto if_1513_end
  if_1513:
    set $P1515, param_1512
    unless_null $P1515, vivify_634
    $P1515 = root_new ['parrot';'Hash']
  vivify_634:
    set $P111, $P1515["hexint"]
    unless_null $P111, vivify_635
    new $P111, "Undef"
  vivify_635:
    set $P109, $P111
  if_1513_end:
    $P113 = $P108."ints_to_string"($P109)
    $P114 = $P106."!make"($P113)
.annotate 'line', 1010
    .return ($P114)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<oct>" :anon :subid("156_1323686357.86238") :outer("119_1323686357.86238")
    .param pmc param_1519
    .param pmc param_1520
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1014
    .lex "self", param_1519
    .lex "$/", param_1520
.annotate 'line', 1015
    set $P106, param_1520
    set $P107, param_1519
    nqp_decontainerize $P108, $P107
    set $P1522, param_1520
    unless_null $P1522, vivify_636
    $P1522 = root_new ['parrot';'Hash']
  vivify_636:
    set $P110, $P1522["octint"]
    unless_null $P110, vivify_637
    new $P110, "Undef"
  vivify_637:
    if $P110, if_1521
    set $P1524, param_1520
    unless_null $P1524, vivify_638
    $P1524 = root_new ['parrot';'Hash']
  vivify_638:
    set $P1525, $P1524["octints"]
    unless_null $P1525, vivify_639
    $P1525 = root_new ['parrot';'Hash']
  vivify_639:
    set $P112, $P1525["octint"]
    unless_null $P112, vivify_640
    new $P112, "Undef"
  vivify_640:
    set $P109, $P112
    goto if_1521_end
  if_1521:
    set $P1523, param_1520
    unless_null $P1523, vivify_641
    $P1523 = root_new ['parrot';'Hash']
  vivify_641:
    set $P111, $P1523["octint"]
    unless_null $P111, vivify_642
    new $P111, "Undef"
  vivify_642:
    set $P109, $P111
  if_1521_end:
    $P113 = $P108."ints_to_string"($P109)
    $P114 = $P106."!make"($P113)
.annotate 'line', 1014
    .return ($P114)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<chr>" :anon :subid("157_1323686357.86238") :outer("119_1323686357.86238")
    .param pmc param_1527
    .param pmc param_1528
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1018
    .lex "self", param_1527
    .lex "$/", param_1528
.annotate 'line', 1019
    set $P106, param_1528
    set $P1529, param_1528
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
.sub "quote_escape:sym<0>" :anon :subid("158_1323686357.86238") :outer("119_1323686357.86238")
    .param pmc param_1531
    .param pmc param_1532
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1022
    .lex "self", param_1531
    .lex "$/", param_1532
.annotate 'line', 1023
    set $P106, param_1532
    $P107 = $P106."!make"(unicode:"\x{0}")
.annotate 'line', 1022
    .return ($P107)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<misc>" :anon :subid("159_1323686357.86238") :outer("119_1323686357.86238")
    .param pmc param_1534
    .param pmc param_1535
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1026
    .lex "self", param_1534
    .lex "$/", param_1535
.annotate 'line', 1027
    set $P106, param_1535
    set $P1537, param_1535
    unless_null $P1537, vivify_645
    $P1537 = root_new ['parrot';'Hash']
  vivify_645:
    set $P108, $P1537["textq"]
    unless_null $P108, vivify_646
    new $P108, "Undef"
  vivify_646:
    if $P108, if_1536
    set $P1539, param_1535
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
    set $P1538, param_1535
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
.sub "charname" :anon :subid("160_1323686357.86238") :outer("119_1323686357.86238")
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
    set $P1545, param_1542
    unless_null $P1545, vivify_651
    $P1545 = root_new ['parrot';'Hash']
  vivify_651:
    set $P108, $P1545["integer"]
    unless_null $P108, vivify_652
    new $P108, "Undef"
  vivify_652:
    if $P108, if_1544
.annotate 'line', 1033
    set $P111, param_1542
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
    set $P1546, param_1542
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
    set $P1543, $P107
.annotate 'line', 1034
    set $P107, $P1543
    unless_null $P107, vivify_656
    new $P107, "Undef"
  vivify_656:
    set $N100, $P107
    set $N101, 0
    islt $I100, $N100, $N101
    unless $I100, if_1547_end
    set $P108, param_1542
    unless_null $P108, vivify_657
    new $P108, "Undef"
  vivify_657:
    $P109 = $P108."CURSOR"()
    new $P110, 'String'
    set $P110, "Unrecognized character name "
    set $P111, param_1542
    unless_null $P111, vivify_658
    new $P111, "Undef"
  vivify_658:
    concat $P112, $P110, $P111
    $P109."panic"($P112)
  if_1547_end:
.annotate 'line', 1035
    set $P107, param_1542
    set $P108, $P1543
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
.sub "charnames" :anon :subid("161_1323686357.86238") :outer("119_1323686357.86238")
    .param pmc param_1549
    .param pmc param_1550
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1038
    .const 'Sub' $P1554 = "162_1323686357.86238" 
    capture_lex $P1554
    .lex "self", param_1549
    .lex "$/", param_1550
.annotate 'line', 1039
    new $P106, "Undef"
    set $P1551, $P106
    .lex "$str", $P1551
    new $P107, "String"
    assign $P107, ""
    set $P1551, $P107
.annotate 'line', 1040
    set $P1552, param_1550
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
    new $P110, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P110, loop1556_handler
    push_eh $P110
  loop1556_test:
    unless $P107, loop1556_done
    shift $P109, $P107
  loop1556_redo:
    .const 'Sub' $P1554 = "162_1323686357.86238" 
    capture_lex $P1554
    $P1554($P109)
  loop1556_next:
    goto loop1556_test
  loop1556_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P111, exception, 'type'
    eq $P111, .CONTROL_LOOP_NEXT, loop1556_next
    eq $P111, .CONTROL_LOOP_REDO, loop1556_redo
  loop1556_done:
    pop_eh 
  for_undef_662:
.annotate 'line', 1041
    set $P107, param_1550
    set $P108, $P1551
    unless_null $P108, vivify_665
    new $P108, "Undef"
  vivify_665:
    $P109 = $P107."!make"($P108)
.annotate 'line', 1038
    .return ($P109)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1553"  :anon :subid("162_1323686357.86238") :outer("161_1323686357.86238")
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
.sub "charspec" :anon :subid("163_1323686357.86238") :outer("119_1323686357.86238")
    .param pmc param_1558
    .param pmc param_1559
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1044
    .lex "self", param_1558
    .lex "$/", param_1559
.annotate 'line', 1045
    set $P106, param_1559
    set $P1561, param_1559
    unless_null $P1561, vivify_666
    $P1561 = root_new ['parrot';'Hash']
  vivify_666:
    set $P108, $P1561["charnames"]
    unless_null $P108, vivify_667
    new $P108, "Undef"
  vivify_667:
    if $P108, if_1560
    set $P111, param_1559
    unless_null $P111, vivify_668
    new $P111, "Undef"
  vivify_668:
    $I100 = "string_to_int"($P111, 10)
    chr $S100, $I100
    new $P107, 'String'
    set $P107, $S100
    goto if_1560_end
  if_1560:
    set $P1562, param_1559
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
.sub "_block1564"  :subid("164_1323686357.86238") :outer("10_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1058
    .const 'Sub' $P2227 = "244_1323686357.86238" 
    capture_lex $P2227
    .const 'Sub' $P2203 = "242_1323686357.86238" 
    capture_lex $P2203
    .const 'Sub' $P2169 = "239_1323686357.86238" 
    capture_lex $P2169
    .const 'Sub' $P2156 = "237_1323686357.86238" 
    capture_lex $P2156
    .const 'Sub' $P2138 = "234_1323686357.86238" 
    capture_lex $P2138
    .const 'Sub' $P2126 = "231_1323686357.86238" 
    capture_lex $P2126
    .const 'Sub' $P2115 = "230_1323686357.86238" 
    capture_lex $P2115
    .const 'Sub' $P2111 = "229_1323686357.86238" 
    capture_lex $P2111
    .const 'Sub' $P2099 = "227_1323686357.86238" 
    capture_lex $P2099
    .const 'Sub' $P2094 = "226_1323686357.86238" 
    capture_lex $P2094
    .const 'Sub' $P2089 = "225_1323686357.86238" 
    capture_lex $P2089
    .const 'Sub' $P2087 = "224_1323686357.86238" 
    capture_lex $P2087
    .const 'Sub' $P2082 = "223_1323686357.86238" 
    capture_lex $P2082
    .const 'Sub' $P2076 = "222_1323686357.86238" 
    capture_lex $P2076
    .const 'Sub' $P2046 = "219_1323686357.86238" 
    capture_lex $P2046
    .const 'Sub' $P2020 = "216_1323686357.86238" 
    capture_lex $P2020
    .const 'Sub' $P1966 = "212_1323686357.86238" 
    capture_lex $P1966
    .const 'Sub' $P1938 = "209_1323686357.86238" 
    capture_lex $P1938
    .const 'Sub' $P1848 = "203_1323686357.86238" 
    capture_lex $P1848
    .const 'Sub' $P1828 = "202_1323686357.86238" 
    capture_lex $P1828
    .const 'Sub' $P1820 = "201_1323686357.86238" 
    capture_lex $P1820
    .const 'Sub' $P1816 = "200_1323686357.86238" 
    capture_lex $P1816
    .const 'Sub' $P1814 = "199_1323686357.86238" 
    capture_lex $P1814
    .const 'Sub' $P1812 = "198_1323686357.86238" 
    capture_lex $P1812
    .const 'Sub' $P1806 = "197_1323686357.86238" 
    capture_lex $P1806
    .const 'Sub' $P1800 = "196_1323686357.86238" 
    capture_lex $P1800
    .const 'Sub' $P1792 = "195_1323686357.86238" 
    capture_lex $P1792
    .const 'Sub' $P1788 = "194_1323686357.86238" 
    capture_lex $P1788
    .const 'Sub' $P1785 = "193_1323686357.86238" 
    capture_lex $P1785
    .const 'Sub' $P1762 = "191_1323686357.86238" 
    capture_lex $P1762
    .const 'Sub' $P1693 = "184_1323686357.86238" 
    capture_lex $P1693
    .const 'Sub' $P1689 = "183_1323686357.86238" 
    capture_lex $P1689
    .const 'Sub' $P1659 = "178_1323686357.86238" 
    capture_lex $P1659
    .const 'Sub' $P1644 = "176_1323686357.86238" 
    capture_lex $P1644
    .const 'Sub' $P1641 = "175_1323686357.86238" 
    capture_lex $P1641
    .const 'Sub' $P1638 = "174_1323686357.86238" 
    capture_lex $P1638
    .const 'Sub' $P1634 = "173_1323686357.86238" 
    capture_lex $P1634
    .const 'Sub' $P1627 = "172_1323686357.86238" 
    capture_lex $P1627
    .const 'Sub' $P1585 = "169_1323686357.86238" 
    capture_lex $P1585
    .const 'Sub' $P1578 = "167_1323686357.86238" 
    capture_lex $P1578
    .const 'Sub' $P1575 = "166_1323686357.86238" 
    capture_lex $P1575
    .const 'Sub' $P1567 = "165_1323686357.86238" 
    capture_lex $P1567
.annotate 'line', 1091
    .const 'Sub' $P1567 = "165_1323686357.86238" 
    newclosure $P1571, $P1567
    set $P1566, $P1571
    .lex "value_type", $P1566
.annotate 'line', 1058
    .lex "$?PACKAGE", $P1572
    .lex "$?CLASS", $P1573
    set $P102, $P1572
    get_who $P103, $P102
    set $P1574, $P103["%parrot_config"]
    unless_null $P1574, vivify_673
    $P1574 = root_new ['parrot';'Hash']
  vivify_673:
    set $P102, $P1566
.annotate 'line', 1656
    .const 'Sub' $P2227 = "244_1323686357.86238" 
    newclosure $P2232, $P2227
.annotate 'line', 1058
    .return ($P2232)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "value_type"  :subid("165_1323686357.86238") :outer("164_1323686357.86238")
    .param pmc param_1568
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1091
    .lex "$value", param_1568
.annotate 'line', 1092
    set $P102, param_1568
    unless_null $P102, vivify_671
    new $P102, "Undef"
  vivify_671:
    isa $I100, $P102, "NameSpace"
    if $I100, if_1569
.annotate 'line', 1094
    set $P105, param_1568
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
.sub "new" :anon :subid("166_1323686357.86238") :outer("164_1323686357.86238")
    .param pmc param_1576
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1071
    .lex "self", param_1576
.annotate 'line', 1072
    new $P102, "Undef"
    set $P1577, $P102
    .lex "$obj", $P1577
    set $P103, param_1576
    nqp_decontainerize $P104, $P103
    repr_instance_of $P105, $P104
    set $P1577, $P105
.annotate 'line', 1073
    set $P103, $P1577
    unless_null $P103, vivify_674
    new $P103, "Undef"
  vivify_674:
    $P103."BUILD"()
.annotate 'line', 1071
    set $P103, $P1577
    unless_null $P103, vivify_675
    new $P103, "Undef"
  vivify_675:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "BUILD" :anon :subid("167_1323686357.86238") :outer("164_1323686357.86238")
    .param pmc param_1579
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1077
    .const 'Sub' $P1582 = "168_1323686357.86238" 
    capture_lex $P1582
    .lex "self", param_1579
.annotate 'line', 1079
    split $P102, " ", "parse past post pir evalpmc"
    set $P103, param_1579
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    repr_bind_attr_obj $P104, $P105, "@!stages", 0, $P102
.annotate 'line', 1082
    split $P102, " ", "e=s help|h target=s dumper=s trace|t=s encoding=s output|o=s combine version|v show-config stagestats ll-exception nqpevent=s rxtrace profile profile-compile"
    set $P103, param_1579
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    repr_bind_attr_obj $P104, $P105, "@!cmdoptions", 3, $P102
.annotate 'line', 1083
    new $P102, "String"
    assign $P102, "This compiler is based on HLL::Compiler.\n\nOptions:\n"
    set $P103, param_1579
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    repr_bind_attr_obj $P104, $P105, "$!usage", 4, $P102
.annotate 'line', 1084
    set $P103, param_1579
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    repr_get_attr_obj $P1580, $P104, $P105, "@!cmdoptions", 3
    unless_null $P1580, vivify_676
    $P1580 = root_new ['parrot';'ResizablePMCArray']
  vivify_676:
    defined $I100, $P1580
    unless $I100, for_undef_677
    iter $P102, $P1580
    new $P107, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P107, loop1584_handler
    push_eh $P107
  loop1584_test:
    unless $P102, loop1584_done
    shift $P106, $P102
  loop1584_redo:
    .const 'Sub' $P1582 = "168_1323686357.86238" 
    capture_lex $P1582
    $P1582($P106)
  loop1584_next:
    goto loop1584_test
  loop1584_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
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
    set $P103, param_1579
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    repr_bind_attr_obj $P104, $P105, "%!config", 7, $P102
.annotate 'line', 1077
    .return ($P102)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1581"  :anon :subid("168_1323686357.86238") :outer("167_1323686357.86238")
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
.sub "get_exports" :anon :subid("169_1323686357.86238") :outer("164_1323686357.86238")
    .param pmc param_1586
    .param pmc param_1587
    .param pmc param_1589 :slurpy
    .param pmc param_1588 :optional :named("tagset")
    .param int has_param_1588 :opt_flag
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1097
    .const 'Sub' $P1620 = "171_1323686357.86238" 
    capture_lex $P1620
    .const 'Sub' $P1611 = "170_1323686357.86238" 
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
    set $P103, param_1587
    unless_null $P103, vivify_682
    new $P103, "Undef"
  vivify_682:
    does $I100, $P103, "hash"
    new $P104, 'Integer'
    set $P104, $I100
    isfalse $I101, $P104
    unless $I101, if_1594_end
.annotate 'line', 1100
    set $P105, param_1586
    nqp_decontainerize $P106, $P105
    set $P107, param_1587
    unless_null $P107, vivify_683
    new $P107, "Undef"
  vivify_683:
    $P108 = $P106."get_module"($P107)
    set param_1587, $P108
  if_1594_end:
.annotate 'line', 1103
    set $P103, param_1588
    unless_null $P103, vivify_684
    new $P103, "Undef"
  vivify_684:
    set $P1595, $P103
    defined $I1597, $P1595
    if $I1597, default_1596
    set $P1599, param_1589
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
    set param_1588, $P1595
.annotate 'line', 1097
    set $P1600, $P1590
    unless_null $P1600, vivify_686
    $P1600 = root_new ['parrot';'Hash']
  vivify_686:
.annotate 'line', 1105
    set $P103, param_1588
    unless_null $P103, vivify_687
    new $P103, "Undef"
  vivify_687:
    set $S100, $P103
    set $P1601, param_1587
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
    set $P1592, $P104
.annotate 'line', 1106
    set $P1604, $P1592
    unless_null $P1604, vivify_691
    $P1604 = root_new ['parrot';'Hash']
  vivify_691:
    defined $I100, $P1604
    new $P103, 'Integer'
    set $P103, $I100
    isfalse $I101, $P103
    unless $I101, if_1603_end
.annotate 'line', 1107
    set $P105, param_1588
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
    set $P106, param_1587
    unless_null $P106, vivify_693
    new $P106, "Undef"
  vivify_693:
    set $P104, $P106
  if_1605_end:
    set $P1592, $P104
  if_1603_end:
.annotate 'line', 1109
    set $P1608, param_1589
    unless_null $P1608, vivify_694
    $P1608 = root_new ['parrot';'ResizablePMCArray']
  vivify_694:
    if $P1608, if_1607
.annotate 'line', 1116
    set $P1618, $P1592
    unless_null $P1618, vivify_695
    $P1618 = root_new ['parrot';'Hash']
  vivify_695:
    defined $I100, $P1618
    unless $I100, for_undef_696
    iter $P103, $P1618
    new $P107, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P107, loop1625_handler
    push_eh $P107
  loop1625_test:
    unless $P103, loop1625_done
    shift $P104, $P103
  loop1625_redo:
    .const 'Sub' $P1620 = "171_1323686357.86238" 
    capture_lex $P1620
    $P1620($P104)
  loop1625_next:
    goto loop1625_test
  loop1625_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
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
    set $P1609, param_1589
    unless_null $P1609, vivify_703
    $P1609 = root_new ['parrot';'ResizablePMCArray']
  vivify_703:
    defined $I100, $P1609
    unless $I100, for_undef_704
    iter $P103, $P1609
    new $P107, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P107, loop1617_handler
    push_eh $P107
  loop1617_test:
    unless $P103, loop1617_done
    shift $P104, $P103
  loop1617_redo:
    .const 'Sub' $P1611 = "170_1323686357.86238" 
    capture_lex $P1611
    $P1611($P104)
  loop1617_next:
    goto loop1617_test
  loop1617_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P108, exception, 'type'
    eq $P108, .CONTROL_LOOP_NEXT, loop1617_next
    eq $P108, .CONTROL_LOOP_REDO, loop1617_redo
  loop1617_done:
    pop_eh 
  for_undef_704:
  if_1607_end:
.annotate 'line', 1097
    set $P1626, $P1590
    unless_null $P1626, vivify_713
    $P1626 = root_new ['parrot';'Hash']
  vivify_713:
    .return ($P1626)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1619"  :anon :subid("171_1323686357.86238") :outer("169_1323686357.86238")
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
    set $P1621, $P107
.annotate 'line', 1118
    set $P106, $P1621
    unless_null $P106, vivify_698
    new $P106, "Undef"
  vivify_698:
    find_lex $P107, "$_"
    unless_null $P107, vivify_699
    new $P107, "Undef"
  vivify_699:
    $P108 = $P107."key"()
    set $P109, $P1621
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
.sub "_block1610"  :anon :subid("170_1323686357.86238") :outer("169_1323686357.86238")
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
    set $P1612, $P107
.annotate 'line', 1112
    set $P106, $P1612
    unless_null $P106, vivify_708
    new $P106, "Undef"
  vivify_708:
    find_lex $P107, "$_"
    unless_null $P107, vivify_709
    new $P107, "Undef"
  vivify_709:
    set $P108, $P1612
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
.sub "get_module" :anon :subid("172_1323686357.86238") :outer("164_1323686357.86238")
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
    set $P102, param_1628
    nqp_decontainerize $P103, $P102
    set $P104, param_1629
    unless_null $P104, vivify_714
    new $P104, "Undef"
  vivify_714:
    $P105 = $P103."parse_name"($P104)
    set $P1630, $P105
.annotate 'line', 1126
    set $P1632, $P1630
    unless_null $P1632, vivify_715
    $P1632 = root_new ['parrot';'ResizablePMCArray']
  vivify_715:
    set $P102, param_1628
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
    set $P1633, $P1630
    unless_null $P1633, vivify_717
    $P1633 = root_new ['parrot';'ResizablePMCArray']
  vivify_717:
    get_root_namespace $P102, $P1633
.annotate 'line', 1124
    .return ($P102)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "language" :anon :subid("173_1323686357.86238") :outer("164_1323686357.86238")
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
    set $P103, param_1636
    unless_null $P103, vivify_719
    new $P103, "Undef"
  vivify_719:
    unless $P103, if_1637_end
.annotate 'line', 1132
    set $P104, param_1636
    unless_null $P104, vivify_720
    new $P104, "Undef"
  vivify_720:
    set $P105, param_1635
    nqp_decontainerize $P106, $P105
    find_lex $P107, "$?CLASS"
    repr_bind_attr_obj $P106, $P107, "$!language", 6, $P104
.annotate 'line', 1133
    set $P104, param_1636
    unless_null $P104, vivify_721
    new $P104, "Undef"
  vivify_721:
    set $S100, $P104
    set $P105, param_1635
    nqp_decontainerize $P106, $P105
    compreg $S100, $P106
  if_1637_end:
.annotate 'line', 1130
    set $P103, param_1635
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
.sub "compiler" :anon :subid("174_1323686357.86238") :outer("164_1323686357.86238")
    .param pmc param_1639
    .param pmc param_1640
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1138
    .lex "self", param_1639
    .lex "$name", param_1640
.annotate 'line', 1139
    set $P102, param_1640
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
.sub "config" :anon :subid("175_1323686357.86238") :outer("164_1323686357.86238")
    .param pmc param_1642
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1142
    .lex "self", param_1642
    set $P102, param_1642
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
.sub "load_module" :anon :subid("176_1323686357.86238") :outer("164_1323686357.86238")
    .param pmc param_1645
    .param pmc param_1646
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1144
    .const 'Sub' $P1650 = "177_1323686357.86238" 
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
    set $P104, param_1645
    nqp_decontainerize $P105, $P104
    set $P106, param_1646
    unless_null $P106, vivify_725
    new $P106, "Undef"
  vivify_725:
    $P107 = $P105."parse_name"($P106)
    join $S100, "/", $P107
    new $P108, 'String'
    set $P108, $S100
    set $P1647, $P108
.annotate 'line', 1146
    new $P104, "Float"
    assign $P104, 0
    set $P1648, $P104
.annotate 'line', 1147
    .const 'Sub' $P1650 = "177_1323686357.86238" 
    capture_lex $P1650
    $P1650()
.annotate 'line', 1148
    set $P104, $P1648
    unless_null $P104, vivify_727
    new $P104, "Undef"
  vivify_727:
    if $P104, unless_1658_end
    set $P105, $P1647
    unless_null $P105, vivify_728
    new $P105, "Undef"
  vivify_728:
    concat $P106, $P105, ".pir"
    set $S100, $P106
    load_bytecode $S100
    new $P105, "Float"
    assign $P105, 1
    set $P1648, $P105
  unless_1658_end:
.annotate 'line', 1149
    set $P104, param_1645
    nqp_decontainerize $P105, $P104
    set $P106, param_1646
    unless_null $P106, vivify_729
    new $P106, "Undef"
  vivify_729:
    $P107 = $P105."get_module"($P106)
.annotate 'line', 1144
    .return ($P107)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1649"  :anon :subid("177_1323686357.86238") :outer("176_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1147
    new $P1653, 'ExceptionHandler'
    set_label $P1653, control_1652
    $P1653."handle_types_except"(.CONTROL_ALL)
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
    peek_exception $P1654
    .local pmc exception 
    .get_results (exception) 
    new $P1656, 'Integer'
    set $P1656, 1
    set exception["handled"], $P1656
    set $I1657, exception["handled"]
    eq $I1657, 1, handled_1655
    rethrow exception
  handled_1655:
    finalize $P1654
    .return (exception)
  skip_handler_1651:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "import" :anon :subid("178_1323686357.86238") :outer("164_1323686357.86238")
    .param pmc param_1660
    .param pmc param_1661
    .param pmc param_1662
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1152
    .const 'Sub' $P1665 = "179_1323686357.86238" 
    capture_lex $P1665
    .lex "self", param_1660
    .lex "$target", param_1661
    .lex "%exports", param_1662
.annotate 'line', 1153
    set $P1663, param_1662
    unless_null $P1663, vivify_730
    $P1663 = root_new ['parrot';'Hash']
  vivify_730:
    defined $I100, $P1663
    unless $I100, for_undef_731
    iter $P102, $P1663
    new $P106, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P106, loop1688_handler
    push_eh $P106
  loop1688_test:
    unless $P102, loop1688_done
    shift $P103, $P102
  loop1688_redo:
    .const 'Sub' $P1665 = "179_1323686357.86238" 
    capture_lex $P1665
    $P1665($P103)
  loop1688_next:
    goto loop1688_test
  loop1688_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P107, exception, 'type'
    eq $P107, .CONTROL_LOOP_NEXT, loop1688_next
    eq $P107, .CONTROL_LOOP_REDO, loop1688_redo
  loop1688_done:
    pop_eh 
  for_undef_731:
.annotate 'line', 1152
    .return ($P102)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1664"  :anon :subid("179_1323686357.86238") :outer("178_1323686357.86238")
    .param pmc param_1669
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1153
    .const 'Sub' $P1684 = "182_1323686357.86238" 
    capture_lex $P1684
    .const 'Sub' $P1679 = "181_1323686357.86238" 
    capture_lex $P1679
    .const 'Sub' $P1673 = "180_1323686357.86238" 
    capture_lex $P1673
.annotate 'line', 1154
    new $P104, "Undef"
    set $P1666, $P104
    .lex "$type", $P1666
.annotate 'line', 1155
    $P1668 = root_new ['parrot';'Hash']
    set $P1667, $P1668
    .lex "%items", $P1667
    .lex "$_", param_1669
.annotate 'line', 1154
    find_lex $P105, "$_"
    unless_null $P105, vivify_732
    new $P105, "Undef"
  vivify_732:
    $P106 = $P105."key"()
    set $P1666, $P106
.annotate 'line', 1155
    find_lex $P105, "$_"
    unless_null $P105, vivify_733
    new $P105, "Undef"
  vivify_733:
    $P106 = $P105."value"()
    set $P1667, $P106
.annotate 'line', 1156
    find_lex $P106, "self"
    nqp_decontainerize $P107, $P106
    new $P108, 'String'
    set $P108, "import_"
    set $P109, $P1666
    unless_null $P109, vivify_734
    new $P109, "Undef"
  vivify_734:
    concat $P110, $P108, $P109
    set $S100, $P110
    can $I101, $P107, $S100
    if $I101, if_1670
.annotate 'line', 1159
    find_lex $P113, "$target"
    unless_null $P113, vivify_735
    new $P113, "Undef"
  vivify_735:
    new $P114, 'String'
    set $P114, "add_"
    set $P115, $P1666
    unless_null $P115, vivify_736
    new $P115, "Undef"
  vivify_736:
    concat $P116, $P114, $P115
    set $S101, $P116
    can $I102, $P113, $S101
    if $I102, if_1676
.annotate 'line', 1163
    set $P1682, $P1667
    unless_null $P1682, vivify_737
    $P1682 = root_new ['parrot';'Hash']
  vivify_737:
    defined $I103, $P1682
    unless $I103, for_undef_738
    iter $P118, $P1682
    new $P120, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P120, loop1687_handler
    push_eh $P120
  loop1687_test:
    unless $P118, loop1687_done
    shift $P119, $P118
  loop1687_redo:
    .const 'Sub' $P1684 = "182_1323686357.86238" 
    capture_lex $P1684
    $P1684($P119)
  loop1687_next:
    goto loop1687_test
  loop1687_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P122, exception, 'type'
    eq $P122, .CONTROL_LOOP_NEXT, loop1687_next
    eq $P122, .CONTROL_LOOP_REDO, loop1687_redo
  loop1687_done:
    pop_eh 
  for_undef_738:
.annotate 'line', 1162
    set $P112, $P118
.annotate 'line', 1159
    goto if_1676_end
  if_1676:
.annotate 'line', 1160
    set $P1677, $P1667
    unless_null $P1677, vivify_742
    $P1677 = root_new ['parrot';'Hash']
  vivify_742:
    defined $I103, $P1677
    unless $I103, for_undef_743
    iter $P117, $P1677
    new $P119, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P119, loop1681_handler
    push_eh $P119
  loop1681_test:
    unless $P117, loop1681_done
    shift $P118, $P117
  loop1681_redo:
    .const 'Sub' $P1679 = "181_1323686357.86238" 
    capture_lex $P1679
    $P1679($P118)
  loop1681_next:
    goto loop1681_test
  loop1681_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P120, exception, 'type'
    eq $P120, .CONTROL_LOOP_NEXT, loop1681_next
    eq $P120, .CONTROL_LOOP_REDO, loop1681_redo
  loop1681_done:
    pop_eh 
  for_undef_743:
.annotate 'line', 1159
    set $P112, $P117
  if_1676_end:
    set $P105, $P112
.annotate 'line', 1156
    goto if_1670_end
  if_1670:
.annotate 'line', 1157
    set $P1671, $P1667
    unless_null $P1671, vivify_748
    $P1671 = root_new ['parrot';'Hash']
  vivify_748:
    defined $I102, $P1671
    unless $I102, for_undef_749
    iter $P111, $P1671
    new $P113, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P113, loop1675_handler
    push_eh $P113
  loop1675_test:
    unless $P111, loop1675_done
    shift $P112, $P111
  loop1675_redo:
    .const 'Sub' $P1673 = "180_1323686357.86238" 
    capture_lex $P1673
    $P1673($P112)
  loop1675_next:
    goto loop1675_test
  loop1675_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P114, exception, 'type'
    eq $P114, .CONTROL_LOOP_NEXT, loop1675_next
    eq $P114, .CONTROL_LOOP_REDO, loop1675_redo
  loop1675_done:
    pop_eh 
  for_undef_749:
.annotate 'line', 1156
    set $P105, $P111
  if_1670_end:
.annotate 'line', 1153
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1683"  :anon :subid("182_1323686357.86238") :outer("179_1323686357.86238")
    .param pmc param_1685
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1163
    .lex "$_", param_1685
    find_lex $P120, "$_"
    unless_null $P120, vivify_739
    new $P120, "Undef"
  vivify_739:
    $P121 = $P120."value"()
    find_lex $P122, "$_"
    unless_null $P122, vivify_740
    new $P122, "Undef"
  vivify_740:
    $P123 = $P122."key"()
    set $S102, $P123
    find_lex $P1686, "$target"
    unless_null $P1686, vivify_741
    $P1686 = root_new ['parrot';'Hash']
    store_lex "$target", $P1686
  vivify_741:
    set $P1686[$S102], $P121
    .return ($P121)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1678"  :anon :subid("181_1323686357.86238") :outer("179_1323686357.86238")
    .param pmc param_1680
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1160
    .lex "$_", param_1680
    find_lex $P119, "$target"
    unless_null $P119, vivify_744
    new $P119, "Undef"
  vivify_744:
    find_lex $P120, "$_"
    unless_null $P120, vivify_745
    new $P120, "Undef"
  vivify_745:
    $P121 = $P120."key"()
    find_lex $P122, "$_"
    unless_null $P122, vivify_746
    new $P122, "Undef"
  vivify_746:
    $P123 = $P122."value"()
    new $P124, 'String'
    set $P124, "add_"
    find_lex $P125, "$type"
    unless_null $P125, vivify_747
    new $P125, "Undef"
  vivify_747:
    concat $P126, $P124, $P125
    set $S102, $P126
    $P127 = $P119.$S102($P121, $P123)
    .return ($P127)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1672"  :anon :subid("180_1323686357.86238") :outer("179_1323686357.86238")
    .param pmc param_1674
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1157
    .lex "$_", param_1674
    find_lex $P113, "self"
    nqp_decontainerize $P114, $P113
    find_lex $P115, "$target"
    unless_null $P115, vivify_750
    new $P115, "Undef"
  vivify_750:
    find_lex $P116, "$_"
    unless_null $P116, vivify_751
    new $P116, "Undef"
  vivify_751:
    $P117 = $P116."key"()
    find_lex $P118, "$_"
    unless_null $P118, vivify_752
    new $P118, "Undef"
  vivify_752:
    $P119 = $P118."value"()
    new $P120, 'String'
    set $P120, "import_"
    find_lex $P121, "$type"
    unless_null $P121, vivify_753
    new $P121, "Undef"
  vivify_753:
    concat $P122, $P120, $P121
    set $S101, $P122
    $P123 = $P114.$S101($P115, $P117, $P119)
    .return ($P123)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "autoprint" :anon :subid("183_1323686357.86238") :outer("164_1323686357.86238")
    .param pmc param_1690
    .param pmc param_1691
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1168
    .lex "self", param_1690
    .lex "$value", param_1691
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
    unless $I100, unless_1692
    new $P102, 'Integer'
    set $P102, $I100
    goto unless_1692_end
  unless_1692:
.annotate 'line', 1169
    set $P108, param_1691
    unless_null $P108, vivify_756
    new $P108, "Undef"
  vivify_756:
    set $S100, $P108
    say $S100
  unless_1692_end:
.annotate 'line', 1168
    .return ($P102)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "interactive" :anon :subid("184_1323686357.86238") :outer("164_1323686357.86238")
    .param pmc param_1694
    .param pmc param_1695 :slurpy :named
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1173
    .const 'Sub' $P1715 = "186_1323686357.86238" 
    capture_lex $P1715
    .const 'Sub' $P1697 = "185_1323686357.86238" 
    capture_lex $P1697
    .lex "self", param_1694
    .lex "%adverbs", param_1695
.annotate 'line', 1179
    .const 'Sub' $P1697 = "185_1323686357.86238" 
    newclosure $P1702, $P1697
    set $P1696, $P1702
    .lex "blank_context", $P1696
.annotate 'line', 1188
    new $P102, "Undef"
    set $P1703, $P102
    .lex "$interactive_ctx", $P1703
.annotate 'line', 1189
    $P1705 = root_new ['parrot';'Hash']
    set $P1704, $P1705
    .lex "%interactive_pad", $P1704
.annotate 'line', 1192
    new $P104, "Undef"
    set $P1706, $P104
    .lex "$target", $P1706
.annotate 'line', 1196
    new $P105, "Undef"
    set $P1707, $P105
    .lex "$stdin", $P1707
.annotate 'line', 1197
    new $P106, "Undef"
    set $P1708, $P106
    .lex "$encoding", $P1708
.annotate 'line', 1202
    new $P107, "Undef"
    set $P1709, $P107
    .lex "$save_ctx", $P1709
.annotate 'line', 1173
    set $P108, $P1696
.annotate 'line', 1187
    set $P108, $P1696
    null $P109
    $P108."set_outer"($P109)
.annotate 'line', 1188
    $P108 = "blank_context"()
    set $P1703, $P108
.annotate 'line', 1190
    set $P108, $P1703
    unless_null $P108, vivify_761
    new $P108, "Undef"
  vivify_761:
    getattribute $P109, $P108, "lex_pad"
    set $P1704, $P109
.annotate 'line', 1192
    set $P1710, param_1695
    unless_null $P1710, vivify_762
    $P1710 = root_new ['parrot';'Hash']
  vivify_762:
    set $P108, $P1710["target"]
    unless_null $P108, vivify_763
    new $P108, "Undef"
  vivify_763:
    set $S100, $P108
    downcase $S101, $S100
    new $P109, 'String'
    set $P109, $S101
    set $P1706, $P109
.annotate 'line', 1194
    getinterp $P108
    $P109 = $P108."stderr_handle"()
    set $P110, param_1694
    nqp_decontainerize $P111, $P110
    $P112 = $P111."interactive_banner"()
    print $P109, $P112
.annotate 'line', 1196
    getinterp $P108
    $P109 = $P108."stdin_handle"()
    set $P1707, $P109
.annotate 'line', 1197
    set $P1711, param_1695
    unless_null $P1711, vivify_764
    $P1711 = root_new ['parrot';'Hash']
  vivify_764:
    set $P108, $P1711["encoding"]
    unless_null $P108, vivify_765
    new $P108, "Undef"
  vivify_765:
    set $S100, $P108
    new $P109, 'String'
    set $P109, $S100
    set $P1708, $P109
.annotate 'line', 1198
    set $P109, $P1708
    unless_null $P109, vivify_766
    new $P109, "Undef"
  vivify_766:
    if $P109, if_1713
    set $P108, $P109
    goto if_1713_end
  if_1713:
    set $P110, $P1708
    unless_null $P110, vivify_767
    new $P110, "Undef"
  vivify_767:
    set $S100, $P110
    isne $I100, $S100, "fixed_8"
    new $P108, 'Integer'
    set $P108, $I100
  if_1713_end:
    unless $P108, if_1712_end
.annotate 'line', 1199
    set $P111, $P1707
    unless_null $P111, vivify_768
    new $P111, "Undef"
  vivify_768:
    set $P112, $P1708
    unless_null $P112, vivify_769
    new $P112, "Undef"
  vivify_769:
    $P111."encoding"($P112)
  if_1712_end:
.annotate 'line', 1173
    set $P108, $P1709
    unless_null $P108, vivify_770
    new $P108, "Undef"
  vivify_770:
.annotate 'line', 1203
    new $P115, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P115, loop1761_handler
    push_eh $P115
  loop1761_test:
    new $P108, "Float"
    assign $P108, 1
    unless $P108, loop1761_done
  loop1761_redo:
    .const 'Sub' $P1715 = "186_1323686357.86238" 
    capture_lex $P1715
    $P1715()
  loop1761_next:
    goto loop1761_test
  loop1761_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P116, exception, 'type'
    eq $P116, .CONTROL_LOOP_NEXT, loop1761_next
    eq $P116, .CONTROL_LOOP_REDO, loop1761_redo
  loop1761_done:
    pop_eh 
.annotate 'line', 1173
    .return ($P108)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "blank_context"  :subid("185_1323686357.86238") :outer("184_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1181
    $P1699 = root_new ['parrot';'Hash']
    set $P1698, $P1699
    .lex "%blank_pad", $P1698
.annotate 'line', 1179
    set $P1700, $P1698
    unless_null $P1700, vivify_757
    $P1700 = root_new ['parrot';'Hash']
  vivify_757:
.annotate 'line', 1183
    getinterp $P102
    set $P103, $P102["context"]
    unless_null $P103, vivify_758
    new $P103, "Undef"
  vivify_758:
    getattribute $P104, $P103, "lex_pad"
    set $P1701, $P1698
    unless_null $P1701, vivify_759
    $P1701 = root_new ['parrot';'Hash']
  vivify_759:
    copy $P104, $P1701
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
.sub "_block1714"  :anon :subid("186_1323686357.86238") :outer("184_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1203
    .const 'Sub' $P1729 = "187_1323686357.86238" 
    capture_lex $P1729
.annotate 'line', 1206
    new $P109, "Undef"
    set $P1716, $P109
    .lex "$prompt", $P1716
.annotate 'line', 1207
    new $P110, "Undef"
    set $P1717, $P110
    .lex "$code", $P1717
.annotate 'line', 1216
    new $P111, "Undef"
    set $P1718, $P111
    .lex "$*AUTOPRINTPOS", $P1718
.annotate 'line', 1217
    new $P112, "Undef"
    set $P1719, $P112
    .lex "$*CTXSAVE", $P1719
.annotate 'line', 1218
    new $P113, "Undef"
    set $P1720, $P113
    .lex "$*MAIN_CTX", $P1720
.annotate 'line', 1204
    find_lex $P114, "$stdin"
    unless_null $P114, vivify_771
    new $P114, "Undef"
  vivify_771:
    if $P114, unless_1721_end
    die 0, .CONTROL_LOOP_LAST
  unless_1721_end:
.annotate 'line', 1206
    find_lex $P114, "self"
    nqp_decontainerize $P115, $P114
    $P116 = $P115."interactive_prompt"()
    set $P1722, $P116
    defined $I1724, $P1722
    if $I1724, default_1723
    new $P117, "String"
    assign $P117, "> "
    set $P1722, $P117
  default_1723:
    set $P1716, $P1722
.annotate 'line', 1207
    find_lex $P114, "$stdin"
    unless_null $P114, vivify_772
    new $P114, "Undef"
  vivify_772:
    set $P115, $P1716
    unless_null $P115, vivify_773
    new $P115, "Undef"
  vivify_773:
    set $S100, $P115
    $P116 = $P114."readline_interactive"($S100)
    set $P1717, $P116
.annotate 'line', 1209
    set $P114, $P1717
    unless_null $P114, vivify_774
    new $P114, "Undef"
  vivify_774:
    isnull $I100, $P114
    unless $I100, if_1725_end
    die 0, .CONTROL_LOOP_LAST
  if_1725_end:
.annotate 'line', 1210
    set $P114, $P1717
    unless_null $P114, vivify_775
    new $P114, "Undef"
  vivify_775:
    defined $I100, $P114
    if $I100, unless_1726_end
.annotate 'line', 1211
    print "\n"
.annotate 'line', 1212
    die 0, .CONTROL_LOOP_LAST
  unless_1726_end:
.annotate 'line', 1216
    getinterp $P114
    $P115 = $P114."stdout_handle"()
    $P116 = $P115."tell"()
    set $P1718, $P116
.annotate 'line', 1217
    find_lex $P114, "self"
    nqp_decontainerize $P115, $P114
    set $P1719, $P115
.annotate 'line', 1203
    set $P116, $P1720
    unless_null $P116, vivify_776
    get_hll_global $P114, "GLOBAL"
    get_who $P115, $P114
    set $P116, $P115["$MAIN_CTX"]
    unless_null $P116, vivify_777
    die "Contextual $*MAIN_CTX not found"
  vivify_777:
  vivify_776:
.annotate 'line', 1220
    set $P115, $P1717
    unless_null $P115, vivify_778
    new $P115, "Undef"
  vivify_778:
    if $P115, if_1727
    set $P114, $P115
    goto if_1727_end
  if_1727:
    .const 'Sub' $P1729 = "187_1323686357.86238" 
    capture_lex $P1729
    $P118 = $P1729()
    set $P114, $P118
  if_1727_end:
.annotate 'line', 1203
    .return ($P114)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1728"  :anon :subid("187_1323686357.86238") :outer("186_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1220
    .const 'Sub' $P1753 = "190_1323686357.86238" 
    capture_lex $P1753
    .const 'Sub' $P1732 = "188_1323686357.86238" 
    capture_lex $P1732
.annotate 'line', 1222
    new $P116, "Undef"
    set $P1730, $P116
    .lex "$output", $P1730
.annotate 'line', 1221
    find_lex $P117, "$code"
    unless_null $P117, vivify_779
    new $P117, "Undef"
  vivify_779:
    concat $P118, $P117, "\n"
    store_lex "$code", $P118
.annotate 'line', 1220
    set $P117, $P1730
    unless_null $P117, vivify_780
    new $P117, "Undef"
  vivify_780:
.annotate 'line', 1223
    .const 'Sub' $P1732 = "188_1323686357.86238" 
    capture_lex $P1732
    $P1732()
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
    unless $I100, if_1751_end
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
    new $P126, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P126, loop1756_handler
    push_eh $P126
  loop1756_test:
    unless $P120, loop1756_done
    shift $P125, $P120
  loop1756_redo:
    .const 'Sub' $P1753 = "190_1323686357.86238" 
    capture_lex $P1753
    $P1753($P125)
  loop1756_next:
    goto loop1756_test
  loop1756_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P128, exception, 'type'
    eq $P128, .CONTROL_LOOP_NEXT, loop1756_next
    eq $P128, .CONTROL_LOOP_REDO, loop1756_redo
  loop1756_done:
    pop_eh 
  for_undef_789:
.annotate 'line', 1234
    find_lex $P120, "$interactive_ctx"
    unless_null $P120, vivify_793
    new $P120, "Undef"
  vivify_793:
    store_lex "$save_ctx", $P120
  if_1751_end:
.annotate 'line', 1236
    set $P117, $P1730
    unless_null $P117, vivify_794
    new $P117, "Undef"
  vivify_794:
    isnull $I100, $P117
    unless $I100, if_1757_end
    die 0, .CONTROL_LOOP_NEXT
  if_1757_end:
.annotate 'line', 1238
    find_lex $P118, "$target"
    unless_null $P118, vivify_795
    new $P118, "Undef"
  vivify_795:
    isfalse $I100, $P118
    if $I100, if_1758
.annotate 'line', 1240
    find_lex $P120, "$target"
    unless_null $P120, vivify_796
    new $P120, "Undef"
  vivify_796:
    set $S100, $P120
    iseq $I101, $S100, "pir"
    if $I101, if_1759
.annotate 'line', 1243
    find_lex $P121, "self"
    nqp_decontainerize $P123, $P121
    set $P124, $P1730
    unless_null $P124, vivify_797
    new $P124, "Undef"
  vivify_797:
    find_lex $P125, "$target"
    unless_null $P125, vivify_798
    new $P125, "Undef"
  vivify_798:
    find_lex $P1760, "%adverbs"
    unless_null $P1760, vivify_799
    $P1760 = root_new ['parrot';'Hash']
  vivify_799:
    $P126 = $P123."dumper"($P124, $P125, $P1760 :flat)
.annotate 'line', 1242
    set $P119, $P126
.annotate 'line', 1240
    goto if_1759_end
  if_1759:
.annotate 'line', 1241
    set $P121, $P1730
    unless_null $P121, vivify_800
    new $P121, "Undef"
  vivify_800:
    say $P121
  if_1759_end:
.annotate 'line', 1240
    set $P117, $P119
.annotate 'line', 1238
    goto if_1758_end
  if_1758:
.annotate 'line', 1239
    find_lex $P119, "self"
    nqp_decontainerize $P120, $P119
    set $P121, $P1730
    unless_null $P121, vivify_801
    new $P121, "Undef"
  vivify_801:
    $P122 = $P120."autoprint"($P121)
.annotate 'line', 1238
    set $P117, $P122
  if_1758_end:
.annotate 'line', 1220
    .return ($P117)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1731"  :anon :subid("188_1323686357.86238") :outer("187_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1223
    .const 'Sub' $P1740 = "189_1323686357.86238" 
    capture_lex $P1740
    new $P1736, 'ExceptionHandler'
    set_label $P1736, control_1735
    $P1736."handle_types_except"(.CONTROL_ALL)
    push_eh $P1736
.annotate 'line', 1224
    find_lex $P117, "self"
    nqp_decontainerize $P118, $P117
    find_lex $P119, "$code"
    unless_null $P119, vivify_781
    new $P119, "Undef"
  vivify_781:
    find_lex $P120, "$save_ctx"
    unless_null $P120, vivify_782
    new $P120, "Undef"
  vivify_782:
    find_lex $P1733, "%adverbs"
    unless_null $P1733, vivify_783
    $P1733 = root_new ['parrot';'Hash']
  vivify_783:
    $P121 = $P118."eval"($P119, $P1733 :flat, $P120 :named("outer_ctx"))
    store_lex "$output", $P121
.annotate 'line', 1223
    pop_eh 
    goto skip_handler_1734
  control_1735:
    peek_exception $P1737
.annotate 'line', 1225
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P1740 = "189_1323686357.86238" 
    newclosure $P1748, $P1740
    $P1748(exception)
    new $P1749, 'Integer'
    set $P1749, 1
    set exception["handled"], $P1749
    set $I1750, exception["handled"]
    eq $I1750, 1, handled_1738
    rethrow exception
  handled_1738:
    finalize $P1737
    .return (exception)
  skip_handler_1734:
.annotate 'line', 1223
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1739"  :anon :subid("189_1323686357.86238") :outer("188_1323686357.86238")
    .param pmc param_1741
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1225
    .lex "$_", param_1741
    find_lex $P1742, "$_"
    set $P1743, $P1742
    .lex "$!", $P1743
.annotate 'line', 1226
    find_lex $P1744, "$!"
    unless_null $P1744, vivify_784
    new $P1744, "Undef"
  vivify_784:
    set $S1745, $P1744
    new $P1746, 'String'
    set $P1746, $S1745
    concat $P1747, $P1746, "\n"
    print $P1747
.annotate 'line', 1227
    die 0, .CONTROL_LOOP_NEXT
.annotate 'line', 1225
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1752"  :anon :subid("190_1323686357.86238") :outer("187_1323686357.86238")
    .param pmc param_1754
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1231
    .lex "$_", param_1754
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
    find_lex $P1755, "%interactive_pad"
    unless_null $P1755, vivify_792
    $P1755 = root_new ['parrot';'Hash']
    store_lex "%interactive_pad", $P1755
  vivify_792:
    set $P1755[$P129], $P127
.annotate 'line', 1231
    .return ($P127)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "eval" :anon :subid("191_1323686357.86238") :outer("164_1323686357.86238")
    .param pmc param_1763
    .param pmc param_1764
    .param pmc param_1765 :slurpy
    .param pmc param_1766 :slurpy :named
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1249
    .const 'Sub' $P1776 = "192_1323686357.86238" 
    capture_lex $P1776
    .lex "self", param_1763
    .lex "$code", param_1764
    .lex "@args", param_1765
    .lex "%adverbs", param_1766
.annotate 'line', 1250
    new $P102, "Undef"
    set $P1767, $P102
    .lex "$output", $P1767
.annotate 'line', 1252
    new $P103, "Undef"
    set $P1768, $P103
    .lex "$old_runcore", $P1768
.annotate 'line', 1249
    set $P104, $P1767
    unless_null $P104, vivify_802
    new $P104, "Undef"
  vivify_802:
.annotate 'line', 1252
    interpinfo $S100, .INTERPINFO_CURRENT_RUNCORE
    new $P104, 'String'
    set $P104, $S100
    set $P1768, $P104
.annotate 'line', 1253
    set $P1770, param_1766
    unless_null $P1770, vivify_803
    $P1770 = root_new ['parrot';'Hash']
  vivify_803:
    set $P104, $P1770["profile-compile"]
    unless_null $P104, vivify_804
    new $P104, "Undef"
  vivify_804:
    unless $P104, if_1769_end
.annotate 'line', 1254
    set_runcore "subprof_hll"
  if_1769_end:
.annotate 'line', 1256
    set $P104, param_1763
    nqp_decontainerize $P105, $P104
    set $P106, param_1764
    unless_null $P106, vivify_805
    new $P106, "Undef"
  vivify_805:
    set $P1771, param_1766
    unless_null $P1771, vivify_806
    $P1771 = root_new ['parrot';'Hash']
  vivify_806:
    $P107 = $P105."compile"($P106, $P1771 :flat)
    set $P1767, $P107
.annotate 'line', 1258
    set $P105, $P1767
    unless_null $P105, vivify_807
    new $P105, "Undef"
  vivify_807:
    isa $I100, $P105, "String"
    new $P106, 'Integer'
    set $P106, $I100
    isfalse $I101, $P106
    if $I101, if_1773
    new $P104, 'Integer'
    set $P104, $I101
    goto if_1773_end
  if_1773:
.annotate 'line', 1259
    set $P1774, param_1766
    unless_null $P1774, vivify_808
    $P1774 = root_new ['parrot';'Hash']
  vivify_808:
    set $P107, $P1774["target"]
    unless_null $P107, vivify_809
    new $P107, "Undef"
  vivify_809:
    set $S100, $P107
    iseq $I102, $S100, ""
    new $P104, 'Integer'
    set $P104, $I102
  if_1773_end:
    unless $P104, if_1772_end
    .const 'Sub' $P1776 = "192_1323686357.86238" 
    capture_lex $P1776
    $P1776()
  if_1772_end:
.annotate 'line', 1272
    set $P104, $P1768
    unless_null $P104, vivify_822
    new $P104, "Undef"
  vivify_822:
    set $S100, $P104
    set_runcore $S100
.annotate 'line', 1249
    set $P104, $P1767
    unless_null $P104, vivify_823
    new $P104, "Undef"
  vivify_823:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1775"  :anon :subid("192_1323686357.86238") :outer("191_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1260
    new $P108, "Undef"
    set $P1777, $P108
    .lex "$outer_ctx", $P1777
    find_lex $P1778, "%adverbs"
    unless_null $P1778, vivify_810
    $P1778 = root_new ['parrot';'Hash']
  vivify_810:
    set $P109, $P1778["outer_ctx"]
    unless_null $P109, vivify_811
    new $P109, "Undef"
  vivify_811:
    set $P1777, $P109
.annotate 'line', 1261
    set $P109, $P1777
    unless_null $P109, vivify_812
    new $P109, "Undef"
  vivify_812:
    defined $I103, $P109
    unless $I103, if_1779_end
.annotate 'line', 1262
    new $P110, "Float"
    assign $P110, 0
    set $I104, $P110
    find_lex $P1780, "$output"
    unless_null $P1780, vivify_813
    $P1780 = root_new ['parrot';'ResizablePMCArray']
  vivify_813:
    set $P111, $P1780[$I104]
    unless_null $P111, vivify_814
    new $P111, "Undef"
  vivify_814:
    set $P112, $P1777
    unless_null $P112, vivify_815
    new $P112, "Undef"
  vivify_815:
    $P111."set_outer_ctx"($P112)
  if_1779_end:
.annotate 'line', 1265
    find_lex $P1782, "%adverbs"
    unless_null $P1782, vivify_816
    $P1782 = root_new ['parrot';'Hash']
  vivify_816:
    set $P109, $P1782["profile"]
    unless_null $P109, vivify_817
    new $P109, "Undef"
  vivify_817:
    unless $P109, if_1781_end
.annotate 'line', 1266
    set_runcore "subprof_hll"
  if_1781_end:
.annotate 'line', 1268
    find_lex $P1783, "%adverbs"
    unless_null $P1783, vivify_818
    $P1783 = root_new ['parrot';'Hash']
  vivify_818:
    set $P109, $P1783["trace"]
    unless_null $P109, vivify_819
    new $P109, "Undef"
  vivify_819:
    set $I103, $P109
    trace $I103
.annotate 'line', 1269
    find_lex $P109, "$output"
    unless_null $P109, vivify_820
    new $P109, "Undef"
  vivify_820:
    find_lex $P1784, "@args"
    unless_null $P1784, vivify_821
    $P1784 = root_new ['parrot';'ResizablePMCArray']
  vivify_821:
    $P110 = $P109($P1784 :flat)
    store_lex "$output", $P110
.annotate 'line', 1270
    new $P109, "Float"
    assign $P109, 0
    set $I103, $P109
    trace $I103
.annotate 'line', 1259
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "ctxsave" :anon :subid("193_1323686357.86238") :outer("164_1323686357.86238")
    .param pmc param_1786
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1277
    .lex "self", param_1786
.annotate 'line', 1279

                $P0 = getinterp
                $P1787 = $P0['context';1]
            
    store_dynamic_lex "$*MAIN_CTX", $P1787
.annotate 'line', 1283
    new $P102, "Float"
    assign $P102, 0
    store_dynamic_lex "$*CTXSAVE", $P102
.annotate 'line', 1277
    .return ($P102)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "panic" :anon :subid("194_1323686357.86238") :outer("164_1323686357.86238")
    .param pmc param_1789
    .param pmc param_1790 :slurpy
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1286
    .lex "self", param_1789
    .lex "@args", param_1790
.annotate 'line', 1287
    set $P1791, param_1790
    unless_null $P1791, vivify_824
    $P1791 = root_new ['parrot';'ResizablePMCArray']
  vivify_824:
    join $S100, "", $P1791
    die $S100
.annotate 'line', 1286
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "stages" :anon :subid("195_1323686357.86238") :outer("164_1323686357.86238")
    .param pmc param_1793
    .param pmc param_1794 :optional
    .param int has_param_1794 :opt_flag
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1290
    .lex "self", param_1793
    if has_param_1794, optparam_825
    $P1795 = root_new ['parrot';'ResizablePMCArray']
    set param_1794, $P1795
  optparam_825:
    .lex "@value", param_1794
.annotate 'line', 1291
    set $P1797, param_1794
    unless_null $P1797, vivify_826
    $P1797 = root_new ['parrot';'ResizablePMCArray']
  vivify_826:
    set $N100, $P1797
    unless $N100, if_1796_end
.annotate 'line', 1292
    set $P1798, param_1794
    unless_null $P1798, vivify_827
    $P1798 = root_new ['parrot';'ResizablePMCArray']
  vivify_827:
    set $P102, param_1793
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_bind_attr_obj $P103, $P104, "@!stages", 0, $P1798
  if_1796_end:
.annotate 'line', 1290
    set $P102, param_1793
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_get_attr_obj $P1799, $P103, $P104, "@!stages", 0
    unless_null $P1799, vivify_828
    $P1799 = root_new ['parrot';'ResizablePMCArray']
  vivify_828:
    .return ($P1799)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "parsegrammar" :anon :subid("196_1323686357.86238") :outer("164_1323686357.86238")
    .param pmc param_1801
    .param pmc param_1802 :slurpy
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1297
    .lex "self", param_1801
    .lex "@value", param_1802
.annotate 'line', 1298
    set $P1804, param_1802
    unless_null $P1804, vivify_829
    $P1804 = root_new ['parrot';'ResizablePMCArray']
  vivify_829:
    set $N100, $P1804
    unless $N100, if_1803_end
.annotate 'line', 1299
    new $P102, "Float"
    assign $P102, 0
    set $I100, $P102
    set $P1805, param_1802
    unless_null $P1805, vivify_830
    $P1805 = root_new ['parrot';'ResizablePMCArray']
  vivify_830:
    set $P103, $P1805[$I100]
    unless_null $P103, vivify_831
    new $P103, "Undef"
  vivify_831:
    set $P104, param_1801
    nqp_decontainerize $P105, $P104
    find_lex $P106, "$?CLASS"
    repr_bind_attr_obj $P105, $P106, "$!parsegrammar", 1, $P103
  if_1803_end:
.annotate 'line', 1297
    set $P102, param_1801
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_get_attr_obj $P105, $P103, $P104, "$!parsegrammar", 1
    unless_null $P105, vivify_832
    new $P105, "Undef"
  vivify_832:
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "parseactions" :anon :subid("197_1323686357.86238") :outer("164_1323686357.86238")
    .param pmc param_1807
    .param pmc param_1808 :slurpy
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1304
    .lex "self", param_1807
    .lex "@value", param_1808
.annotate 'line', 1305
    set $P1810, param_1808
    unless_null $P1810, vivify_833
    $P1810 = root_new ['parrot';'ResizablePMCArray']
  vivify_833:
    set $N100, $P1810
    unless $N100, if_1809_end
.annotate 'line', 1306
    new $P102, "Float"
    assign $P102, 0
    set $I100, $P102
    set $P1811, param_1808
    unless_null $P1811, vivify_834
    $P1811 = root_new ['parrot';'ResizablePMCArray']
  vivify_834:
    set $P103, $P1811[$I100]
    unless_null $P103, vivify_835
    new $P103, "Undef"
  vivify_835:
    set $P104, param_1807
    nqp_decontainerize $P105, $P104
    find_lex $P106, "$?CLASS"
    repr_bind_attr_obj $P105, $P106, "$!parseactions", 2, $P103
  if_1809_end:
.annotate 'line', 1304
    set $P102, param_1807
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_get_attr_obj $P105, $P103, $P104, "$!parseactions", 2
    unless_null $P105, vivify_836
    new $P105, "Undef"
  vivify_836:
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "interactive_banner" :anon :subid("198_1323686357.86238") :outer("164_1323686357.86238")
    .param pmc param_1813
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1311
    .lex "self", param_1813
    .return ("")
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "interactive_prompt" :anon :subid("199_1323686357.86238") :outer("164_1323686357.86238")
    .param pmc param_1815
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1313
    .lex "self", param_1815
    .return ("> ")
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "compiler_progname" :anon :subid("200_1323686357.86238") :outer("164_1323686357.86238")
    .param pmc param_1817
    .param pmc param_1818 :optional
    .param int has_param_1818 :opt_flag
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1315
    .lex "self", param_1817
    if has_param_1818, optparam_837
    new $P102, "Undef"
    set param_1818, $P102
  optparam_837:
    .lex "$value", param_1818
.annotate 'line', 1316
    set $P103, param_1818
    unless_null $P103, vivify_838
    new $P103, "Undef"
  vivify_838:
    defined $I100, $P103
    unless $I100, if_1819_end
.annotate 'line', 1317
    set $P104, param_1818
    unless_null $P104, vivify_839
    new $P104, "Undef"
  vivify_839:
    set $P105, param_1817
    nqp_decontainerize $P106, $P105
    find_lex $P107, "$?CLASS"
    repr_bind_attr_obj $P106, $P107, "$!compiler_progname", 5, $P104
  if_1819_end:
.annotate 'line', 1315
    set $P103, param_1817
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    repr_get_attr_obj $P106, $P104, $P105, "$!compiler_progname", 5
    unless_null $P106, vivify_840
    new $P106, "Undef"
  vivify_840:
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "commandline_options" :anon :subid("201_1323686357.86238") :outer("164_1323686357.86238")
    .param pmc param_1821
    .param pmc param_1822 :optional
    .param int has_param_1822 :opt_flag
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1322
    .lex "self", param_1821
    if has_param_1822, optparam_841
    $P1823 = root_new ['parrot';'ResizablePMCArray']
    set param_1822, $P1823
  optparam_841:
    .lex "@value", param_1822
.annotate 'line', 1323
    set $P1825, param_1822
    unless_null $P1825, vivify_842
    $P1825 = root_new ['parrot';'ResizablePMCArray']
  vivify_842:
    set $N100, $P1825
    unless $N100, if_1824_end
.annotate 'line', 1324
    set $P1826, param_1822
    unless_null $P1826, vivify_843
    $P1826 = root_new ['parrot';'ResizablePMCArray']
  vivify_843:
    set $P102, param_1821
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_bind_attr_obj $P103, $P104, "@!cmdoptions", 3, $P1826
  if_1824_end:
.annotate 'line', 1322
    set $P102, param_1821
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_get_attr_obj $P1827, $P103, $P104, "@!cmdoptions", 3
    unless_null $P1827, vivify_844
    $P1827 = root_new ['parrot';'ResizablePMCArray']
  vivify_844:
    .return ($P1827)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "command_line" :anon :subid("202_1323686357.86238") :outer("164_1323686357.86238")
    .param pmc param_1829
    .param pmc param_1830
    .param pmc param_1831 :slurpy :named
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1329
    .lex "self", param_1829
    .lex "@args", param_1830
    .lex "%adverbs", param_1831
.annotate 'line', 1342
    new $P102, "Undef"
    set $P1832, $P102
    .lex "$program-name", $P1832
.annotate 'line', 1343
    new $P103, "Undef"
    set $P1833, $P103
    .lex "$res", $P1833
.annotate 'line', 1344
    $P1835 = root_new ['parrot';'Hash']
    set $P1834, $P1835
    .lex "%opts", $P1834
.annotate 'line', 1345
    $P1837 = root_new ['parrot';'ResizablePMCArray']
    set $P1836, $P1837
    .lex "@a", $P1836
.annotate 'line', 1338
    new $P104, "Float"
    assign $P104, 2
    set $I100, $P104
    set $P1839, param_1830
    unless_null $P1839, vivify_845
    $P1839 = root_new ['parrot';'ResizablePMCArray']
  vivify_845:
    set $P105, $P1839[$I100]
    unless_null $P105, vivify_846
    new $P105, "Undef"
  vivify_846:
    set $S100, $P105
    index $I101, $S100, "@INC"
    set $N100, $I101
    set $N101, 0
    isge $I102, $N100, $N101
    unless $I102, if_1838_end
.annotate 'line', 1339
    new $P106, "Float"
    assign $P106, 0
    set $I103, $P106
    exit $I103
  if_1838_end:
.annotate 'line', 1342
    new $P104, "Float"
    assign $P104, 0
    set $I100, $P104
    set $P1840, param_1830
    unless_null $P1840, vivify_847
    $P1840 = root_new ['parrot';'ResizablePMCArray']
  vivify_847:
    set $P105, $P1840[$I100]
    unless_null $P105, vivify_848
    new $P105, "Undef"
  vivify_848:
    set $P1832, $P105
.annotate 'line', 1343
    set $P104, param_1829
    nqp_decontainerize $P105, $P104
    set $P1841, param_1830
    unless_null $P1841, vivify_849
    $P1841 = root_new ['parrot';'ResizablePMCArray']
  vivify_849:
    $P106 = $P105."process_args"($P1841)
    set $P1833, $P106
.annotate 'line', 1344
    set $P104, $P1833
    unless_null $P104, vivify_850
    new $P104, "Undef"
  vivify_850:
    $P105 = $P104."options"()
    set $P1834, $P105
.annotate 'line', 1345
    set $P104, $P1833
    unless_null $P104, vivify_851
    new $P104, "Undef"
  vivify_851:
    $P105 = $P104."arguments"()
    set $P1836, $P105
.annotate 'line', 1347
    set $P1842, param_1831
    unless_null $P1842, vivify_852
    $P1842 = root_new ['parrot';'Hash']
  vivify_852:
    set $P1843, $P1834
    unless_null $P1843, vivify_853
    $P1843 = root_new ['parrot';'Hash']
  vivify_853:
    $P1842."update"($P1843)
.annotate 'line', 1348
    set $P1845, param_1831
    unless_null $P1845, vivify_854
    $P1845 = root_new ['parrot';'Hash']
  vivify_854:
    set $P104, $P1845["help"]
    unless_null $P104, vivify_855
    new $P104, "Undef"
  vivify_855:
    unless $P104, if_1844_end
    set $P105, param_1829
    nqp_decontainerize $P106, $P105
    set $P107, $P1832
    unless_null $P107, vivify_856
    new $P107, "Undef"
  vivify_856:
    $P106."usage"($P107)
  if_1844_end:
.annotate 'line', 1350
    load_bytecode "dumper.pbc"
.annotate 'line', 1351
    load_bytecode "PGE/Dumper.pbc"
.annotate 'line', 1353
    set $P104, param_1829
    nqp_decontainerize $P105, $P104
    set $P1846, $P1836
    unless_null $P1846, vivify_857
    $P1846 = root_new ['parrot';'ResizablePMCArray']
  vivify_857:
    set $P1847, param_1831
    unless_null $P1847, vivify_858
    $P1847 = root_new ['parrot';'Hash']
  vivify_858:
    $P106 = $P105."command_eval"($P1846 :flat, $P1847 :flat)
.annotate 'line', 1329
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "command_eval" :anon :subid("203_1323686357.86238") :outer("164_1323686357.86238")
    .param pmc param_1849
    .param pmc param_1850 :slurpy
    .param pmc param_1851 :slurpy :named
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1357
    .const 'Sub' $P1936 = "208_1323686357.86238" 
    capture_lex $P1936
    .const 'Sub' $P1865 = "204_1323686357.86238" 
    capture_lex $P1865
    .lex "self", param_1849
    .lex "@a", param_1850
    .lex "%adverbs", param_1851
.annotate 'line', 1362
    new $P102, "Undef"
    set $P1852, $P102
    .lex "$result", $P1852
.annotate 'line', 1363
    new $P103, "Undef"
    set $P1853, $P103
    .lex "$error", $P1853
.annotate 'line', 1364
    new $P104, "Undef"
    set $P1854, $P104
    .lex "$has_error", $P1854
.annotate 'line', 1365
    new $P105, "Undef"
    set $P1855, $P105
    .lex "$target", $P1855
.annotate 'line', 1358
    set $P1857, param_1851
    unless_null $P1857, vivify_859
    $P1857 = root_new ['parrot';'Hash']
  vivify_859:
    set $P106, $P1857["version"]
    unless_null $P106, vivify_860
    new $P106, "Undef"
  vivify_860:
    unless $P106, if_1856_end
    set $P107, param_1849
    nqp_decontainerize $P108, $P107
    $P108."version"()
  if_1856_end:
.annotate 'line', 1359
    set $P1859, param_1851
    unless_null $P1859, vivify_861
    $P1859 = root_new ['parrot';'Hash']
  vivify_861:
    set $P106, $P1859["show-config"]
    unless_null $P106, vivify_862
    new $P106, "Undef"
  vivify_862:
    unless $P106, if_1858_end
    set $P107, param_1849
    nqp_decontainerize $P108, $P107
    $P108."show-config"()
  if_1858_end:
.annotate 'line', 1360
    set $P1861, param_1851
    unless_null $P1861, vivify_863
    $P1861 = root_new ['parrot';'Hash']
  vivify_863:
    set $P106, $P1861["nqpevent"]
    unless_null $P106, vivify_864
    new $P106, "Undef"
  vivify_864:
    unless $P106, if_1860_end
    set $P107, param_1849
    nqp_decontainerize $P108, $P107
    set $P1862, param_1851
    unless_null $P1862, vivify_865
    $P1862 = root_new ['parrot';'Hash']
  vivify_865:
    set $P109, $P1862["nqpevent"]
    unless_null $P109, vivify_866
    new $P109, "Undef"
  vivify_866:
    $P108."nqpevent"($P109)
  if_1860_end:
.annotate 'line', 1357
    set $P106, $P1852
    unless_null $P106, vivify_867
    new $P106, "Undef"
  vivify_867:
    set $P106, $P1853
    unless_null $P106, vivify_868
    new $P106, "Undef"
  vivify_868:
.annotate 'line', 1364
    new $P106, "Float"
    assign $P106, 0
    set $P1854, $P106
.annotate 'line', 1365
    set $P1863, param_1851
    unless_null $P1863, vivify_869
    $P1863 = root_new ['parrot';'Hash']
  vivify_869:
    set $P106, $P1863["target"]
    unless_null $P106, vivify_870
    new $P106, "Undef"
  vivify_870:
    set $P1855, $P106
.annotate 'line', 1366
    .const 'Sub' $P1865 = "204_1323686357.86238" 
    capture_lex $P1865
    $P1865()
.annotate 'line', 1400
    set $P106, $P1854
    unless_null $P106, vivify_908
    new $P106, "Undef"
  vivify_908:
    unless $P106, if_1931_end
.annotate 'line', 1401
    set $P1934, param_1851
    unless_null $P1934, vivify_909
    $P1934 = root_new ['parrot';'Hash']
  vivify_909:
    set $P108, $P1934["ll-exception"]
    unless_null $P108, vivify_910
    new $P108, "Undef"
  vivify_910:
    unless $P108, unless_1933
    set $P107, $P108
    goto unless_1933_end
  unless_1933:
    set $P109, param_1849
    nqp_decontainerize $P110, $P109
    can $I100, $P110, "handle-exception"
    new $P111, 'Integer'
    set $P111, $I100
    isfalse $I101, $P111
    new $P107, 'Integer'
    set $P107, $I101
  unless_1933_end:
    if $P107, if_1932
.annotate 'line', 1408
    set $P113, param_1849
    nqp_decontainerize $P114, $P113
    set $P115, $P1853
    unless_null $P115, vivify_911
    new $P115, "Undef"
  vivify_911:
    $P114."handle-exception"($P115)
.annotate 'line', 1407
    goto if_1932_end
  if_1932:
.annotate 'line', 1401
    .const 'Sub' $P1936 = "208_1323686357.86238" 
    capture_lex $P1936
    $P1936()
  if_1932_end:
  if_1931_end:
.annotate 'line', 1357
    set $P106, $P1852
    unless_null $P106, vivify_917
    new $P106, "Undef"
  vivify_917:
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1864"  :anon :subid("204_1323686357.86238") :outer("203_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1366
    .const 'Sub' $P1922 = "207_1323686357.86238" 
    capture_lex $P1922
    .const 'Sub' $P1900 = "206_1323686357.86238" 
    capture_lex $P1900
    .const 'Sub' $P1887 = "205_1323686357.86238" 
    capture_lex $P1887
    new $P1896, 'ExceptionHandler', [.CONTROL_ALL]
    set_label $P1896, control_1895
    push_eh $P1896
    new $P1918, 'ExceptionHandler'
    set_label $P1918, control_1917
    $P1918."handle_types_except"(.CONTROL_ALL)
    push_eh $P1918
.annotate 'line', 1367
    find_lex $P1867, "%adverbs"
    unless_null $P1867, vivify_871
    $P1867 = root_new ['parrot';'Hash']
  vivify_871:
    set $P106, $P1867["e"]
    unless_null $P106, vivify_872
    new $P106, "Undef"
  vivify_872:
    defined $I100, $P106
    if $I100, if_1866
.annotate 'line', 1373
    find_lex $P1875, "@a"
    unless_null $P1875, vivify_873
    $P1875 = root_new ['parrot';'ResizablePMCArray']
  vivify_873:
    isfalse $I101, $P1875
    if $I101, if_1874
.annotate 'line', 1374
    find_lex $P1878, "%adverbs"
    unless_null $P1878, vivify_874
    $P1878 = root_new ['parrot';'Hash']
  vivify_874:
    set $P107, $P1878["combine"]
    unless_null $P107, vivify_875
    new $P107, "Undef"
  vivify_875:
    if $P107, if_1877
.annotate 'line', 1375
    find_lex $P108, "self"
    nqp_decontainerize $P109, $P108
    new $P110, "Float"
    assign $P110, 0
    set $I102, $P110
    find_lex $P1881, "@a"
    unless_null $P1881, vivify_876
    $P1881 = root_new ['parrot';'ResizablePMCArray']
  vivify_876:
    set $P111, $P1881[$I102]
    unless_null $P111, vivify_877
    new $P111, "Undef"
  vivify_877:
    find_lex $P1882, "@a"
    unless_null $P1882, vivify_878
    $P1882 = root_new ['parrot';'ResizablePMCArray']
  vivify_878:
    find_lex $P1883, "%adverbs"
    unless_null $P1883, vivify_879
    $P1883 = root_new ['parrot';'Hash']
  vivify_879:
    $P112 = $P109."evalfiles"($P111, $P1882 :flat, $P1883 :flat)
    store_lex "$result", $P112
    goto if_1877_end
  if_1877:
.annotate 'line', 1374
    find_lex $P108, "self"
    nqp_decontainerize $P109, $P108
    find_lex $P1879, "@a"
    unless_null $P1879, vivify_880
    $P1879 = root_new ['parrot';'ResizablePMCArray']
  vivify_880:
    find_lex $P1880, "%adverbs"
    unless_null $P1880, vivify_881
    $P1880 = root_new ['parrot';'Hash']
  vivify_881:
    $P110 = $P109."evalfiles"($P1879, $P1880 :flat)
    store_lex "$result", $P110
  if_1877_end:
    goto if_1874_end
  if_1874:
.annotate 'line', 1373
    find_lex $P107, "self"
    nqp_decontainerize $P108, $P107
    find_lex $P1876, "%adverbs"
    unless_null $P1876, vivify_882
    $P1876 = root_new ['parrot';'Hash']
  vivify_882:
    $P109 = $P108."interactive"($P1876 :flat)
    store_lex "$result", $P109
  if_1874_end:
    goto if_1866_end
  if_1866:
.annotate 'line', 1368
    find_lex $P107, "self"
    nqp_decontainerize $P108, $P107
    find_lex $P1868, "%adverbs"
    unless_null $P1868, vivify_883
    $P1868 = root_new ['parrot';'Hash']
  vivify_883:
    set $P109, $P1868["e"]
    unless_null $P109, vivify_884
    new $P109, "Undef"
  vivify_884:
    find_lex $P1869, "@a"
    unless_null $P1869, vivify_885
    $P1869 = root_new ['parrot';'ResizablePMCArray']
  vivify_885:
    find_lex $P1870, "%adverbs"
    unless_null $P1870, vivify_886
    $P1870 = root_new ['parrot';'Hash']
  vivify_886:
    $P110 = $P108."eval"($P109, "-e", $P1869 :flat, $P1870 :flat)
    store_lex "$result", $P110
.annotate 'line', 1369
    find_lex $P108, "$target"
    unless_null $P108, vivify_887
    new $P108, "Undef"
  vivify_887:
    set $S100, $P108
    iseq $I101, $S100, ""
    unless $I101, unless_1872
    new $P107, 'Integer'
    set $P107, $I101
    goto unless_1872_end
  unless_1872:
    find_lex $P109, "$target"
    unless_null $P109, vivify_888
    new $P109, "Undef"
  vivify_888:
    set $S101, $P109
    iseq $I102, $S101, "pir"
    new $P107, 'Integer'
    set $P107, $I102
  unless_1872_end:
    if $P107, unless_1871_end
.annotate 'line', 1370
    find_lex $P110, "self"
    nqp_decontainerize $P111, $P110
    find_lex $P112, "$result"
    unless_null $P112, vivify_889
    new $P112, "Undef"
  vivify_889:
    find_lex $P113, "$target"
    unless_null $P113, vivify_890
    new $P113, "Undef"
  vivify_890:
    find_lex $P1873, "%adverbs"
    unless_null $P1873, vivify_891
    $P1873 = root_new ['parrot';'Hash']
  vivify_891:
    $P111."dumper"($P112, $P113, $P1873 :flat)
  unless_1871_end:
  if_1866_end:
.annotate 'line', 1377
    find_lex $P107, "$result"
    unless_null $P107, vivify_892
    new $P107, "Undef"
  vivify_892:
    isnull $I100, $P107
    new $P108, 'Integer'
    set $P108, $I100
    isfalse $I101, $P108
    if $I101, if_1885
    new $P106, 'Integer'
    set $P106, $I101
    goto if_1885_end
  if_1885:
    find_lex $P109, "$target"
    unless_null $P109, vivify_893
    new $P109, "Undef"
  vivify_893:
    set $S100, $P109
    iseq $I102, $S100, "pir"
    new $P106, 'Integer'
    set $P106, $I102
  if_1885_end:
    unless $P106, if_1884_end
    .const 'Sub' $P1887 = "205_1323686357.86238" 
    capture_lex $P1887
    $P1887()
  if_1884_end:
.annotate 'line', 1366
    pop_eh 
    pop_eh 
    goto skip_handler_1894
  control_1895:
    peek_exception $P1897
.annotate 'line', 1390
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P1900 = "206_1323686357.86238" 
    newclosure $P1914, $P1900
    $P1914(exception)
    new $P1915, 'Integer'
    set $P1915, 1
    set exception["handled"], $P1915
    set $I1916, exception["handled"]
    eq $I1916, 1, handled_1898
    rethrow exception
  handled_1898:
    finalize $P1897
    .return (exception)
  control_1917:
    peek_exception $P1919
.annotate 'line', 1386
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P1922 = "207_1323686357.86238" 
    newclosure $P1928, $P1922
    $P1928(exception)
    new $P1929, 'Integer'
    set $P1929, 1
    set exception["handled"], $P1929
    set $I1930, exception["handled"]
    eq $I1930, 1, handled_1920
    rethrow exception
  handled_1920:
    finalize $P1919
    .return (exception)
  skip_handler_1894:
.annotate 'line', 1366
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1886"  :anon :subid("205_1323686357.86238") :outer("204_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1378
    new $P110, "Undef"
    set $P1888, $P110
    .lex "$output", $P1888
.annotate 'line', 1379
    new $P111, "Undef"
    set $P1889, $P111
    .lex "$fh", $P1889
.annotate 'line', 1378
    find_lex $P1890, "%adverbs"
    unless_null $P1890, vivify_894
    $P1890 = root_new ['parrot';'Hash']
  vivify_894:
    set $P112, $P1890["output"]
    unless_null $P112, vivify_895
    new $P112, "Undef"
  vivify_895:
    set $P1888, $P112
.annotate 'line', 1379
    set $P114, $P1888
    unless_null $P114, vivify_896
    new $P114, "Undef"
  vivify_896:
    set $S101, $P114
    iseq $I103, $S101, ""
    unless $I103, unless_1892
    new $P113, 'Integer'
    set $P113, $I103
    goto unless_1892_end
  unless_1892:
    set $P115, $P1888
    unless_null $P115, vivify_897
    new $P115, "Undef"
  vivify_897:
    set $S102, $P115
    iseq $I104, $S102, "-"
    new $P113, 'Integer'
    set $P113, $I104
  unless_1892_end:
    if $P113, if_1891
.annotate 'line', 1381
    new $P118, "FileHandle"
    set $P119, $P1888
    unless_null $P119, vivify_898
    new $P119, "Undef"
  vivify_898:
    $P120 = $P118."open"($P119, "w")
    set $P112, $P120
.annotate 'line', 1379
    goto if_1891_end
  if_1891:
.annotate 'line', 1380
    getinterp $P116
    $P117 = $P116."stdout_handle"()
    set $P112, $P117
  if_1891_end:
    set $P1889, $P112
.annotate 'line', 1382
    set $P112, $P1889
    unless_null $P112, vivify_899
    new $P112, "Undef"
  vivify_899:
    if $P112, unless_1893_end
    find_lex $P113, "self"
    nqp_decontainerize $P114, $P113
    new $P115, 'String'
    set $P115, "Cannot write to "
    set $P116, $P1888
    unless_null $P116, vivify_900
    new $P116, "Undef"
  vivify_900:
    concat $P117, $P115, $P116
    $P114."panic"($P117)
  unless_1893_end:
.annotate 'line', 1383
    set $P112, $P1889
    unless_null $P112, vivify_901
    new $P112, "Undef"
  vivify_901:
    find_lex $P113, "$result"
    unless_null $P113, vivify_902
    new $P113, "Undef"
  vivify_902:
    print $P112, $P113
.annotate 'line', 1384
    set $P112, $P1889
    unless_null $P112, vivify_903
    new $P112, "Undef"
  vivify_903:
    $P113 = $P112."close"()
.annotate 'line', 1377
    .return ($P113)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1899"  :anon :subid("206_1323686357.86238") :outer("204_1323686357.86238")
    .param pmc param_1901
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1390
    .lex "$_", param_1901
    find_lex $P1902, "$_"
    set $P1903, $P1902
    .lex "$!", $P1903
.annotate 'line', 1391
    find_lex $P1905, "self"
    nqp_decontainerize $P1906, $P1905
    can $I1907, $P1906, "handle-control"
    if $I1907, if_1904
.annotate 'line', 1394
    find_lex $P1911, "$_"
    unless_null $P1911, vivify_904
    new $P1911, "Undef"
  vivify_904:
    rethrow $P1911
.annotate 'line', 1393
    goto if_1904_end
  if_1904:
.annotate 'line', 1392
    find_lex $P1908, "self"
    nqp_decontainerize $P1909, $P1908
    find_lex $P1910, "$_"
    unless_null $P1910, vivify_905
    new $P1910, "Undef"
  vivify_905:
    $P1909."handle-control"($P1910)
  if_1904_end:
.annotate 'line', 1396
    new $P1912, "Float"
    assign $P1912, 1
    store_lex "$has_error", $P1912
.annotate 'line', 1397
    find_lex $P1913, "$_"
    unless_null $P1913, vivify_906
    new $P1913, "Undef"
  vivify_906:
    store_lex "$error", $P1913
.annotate 'line', 1390
    .return ($P1913)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1921"  :anon :subid("207_1323686357.86238") :outer("204_1323686357.86238")
    .param pmc param_1923
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1386
    .lex "$_", param_1923
    find_lex $P1924, "$_"
    set $P1925, $P1924
    .lex "$!", $P1925
.annotate 'line', 1387
    new $P1926, "Float"
    assign $P1926, 1
    store_lex "$has_error", $P1926
.annotate 'line', 1388
    find_lex $P1927, "$_"
    unless_null $P1927, vivify_907
    new $P1927, "Undef"
  vivify_907:
    store_lex "$error", $P1927
.annotate 'line', 1386
    .return ($P1927)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1935"  :anon :subid("208_1323686357.86238") :outer("203_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1402
    new $P112, "Undef"
    set $P1937, $P112
    .lex "$err", $P1937
    getstderr $P113
    set $P1937, $P113
.annotate 'line', 1403
    set $P113, $P1937
    unless_null $P113, vivify_912
    new $P113, "Undef"
  vivify_912:
    find_lex $P114, "$error"
    unless_null $P114, vivify_913
    new $P114, "Undef"
  vivify_913:
    $P113."print"($P114)
.annotate 'line', 1404
    set $P113, $P1937
    unless_null $P113, vivify_914
    new $P113, "Undef"
  vivify_914:
    $P113."print"("\n")
.annotate 'line', 1405
    set $P113, $P1937
    unless_null $P113, vivify_915
    new $P113, "Undef"
  vivify_915:
    find_lex $P114, "$error"
    unless_null $P114, vivify_916
    new $P114, "Undef"
  vivify_916:
    $P115 = $P114."backtrace_strings"()
    join $S100, "\n", $P115
    $P113."print"($S100)
.annotate 'line', 1406
    new $P113, "Float"
    assign $P113, 1
    set $I102, $P113
    exit $I102
.annotate 'line', 1401
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "process_args" :anon :subid("209_1323686357.86238") :outer("164_1323686357.86238")
    .param pmc param_1939
    .param pmc param_1940
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1414
    .const 'Sub' $P1946 = "210_1323686357.86238" 
    capture_lex $P1946
    .lex "self", param_1939
    .lex "@args", param_1940
.annotate 'line', 1418
    new $P102, "Undef"
    set $P1941, $P102
    .lex "$p", $P1941
.annotate 'line', 1421
    new $P103, "Undef"
    set $P1942, $P103
    .lex "$res", $P1942
.annotate 'line', 1416
    set $P104, param_1939
    nqp_decontainerize $P105, $P104
    set $P1943, param_1940
    unless_null $P1943, vivify_918
    $P1943 = root_new ['parrot';'ResizablePMCArray']
  vivify_918:
    $P106 = $P1943."shift"()
    $P105."compiler_progname"($P106)
.annotate 'line', 1418
    get_hll_global $P104, "GLOBAL"
    nqp_get_package_through_who $P105, $P104, "HLL"
    nqp_get_package_through_who $P106, $P105, "CommandLine"
    get_who $P107, $P106
    set $P108, $P107["Parser"]
    set $P109, param_1939
    nqp_decontainerize $P110, $P109
    find_lex $P111, "$?CLASS"
    repr_get_attr_obj $P1944, $P110, $P111, "@!cmdoptions", 3
    unless_null $P1944, vivify_919
    $P1944 = root_new ['parrot';'ResizablePMCArray']
  vivify_919:
    $P112 = $P108."new"($P1944)
    set $P1941, $P112
.annotate 'line', 1419
    set $P104, $P1941
    unless_null $P104, vivify_920
    new $P104, "Undef"
  vivify_920:
    $P104."add-stopper"("-e")
.annotate 'line', 1420
    set $P104, $P1941
    unless_null $P104, vivify_921
    new $P104, "Undef"
  vivify_921:
    $P104."stop-after-first-arg"()
.annotate 'line', 1414
    set $P104, $P1942
    unless_null $P104, vivify_922
    new $P104, "Undef"
  vivify_922:
.annotate 'line', 1422
    .const 'Sub' $P1946 = "210_1323686357.86238" 
    capture_lex $P1946
    $P1946()
.annotate 'line', 1414
    set $P104, $P1942
    unless_null $P104, vivify_926
    new $P104, "Undef"
  vivify_926:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1945"  :anon :subid("210_1323686357.86238") :outer("209_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1422
    .const 'Sub' $P1954 = "211_1323686357.86238" 
    capture_lex $P1954
    new $P1950, 'ExceptionHandler'
    set_label $P1950, control_1949
    $P1950."handle_types_except"(.CONTROL_ALL)
    push_eh $P1950
.annotate 'line', 1423
    find_lex $P104, "$p"
    unless_null $P104, vivify_923
    new $P104, "Undef"
  vivify_923:
    find_lex $P1947, "@args"
    unless_null $P1947, vivify_924
    $P1947 = root_new ['parrot';'ResizablePMCArray']
  vivify_924:
    $P105 = $P104."parse"($P1947)
    store_lex "$res", $P105
.annotate 'line', 1422
    pop_eh 
    goto skip_handler_1948
  control_1949:
    peek_exception $P1951
.annotate 'line', 1424
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P1954 = "211_1323686357.86238" 
    newclosure $P1963, $P1954
    $P1963(exception)
    new $P1964, 'Integer'
    set $P1964, 1
    set exception["handled"], $P1964
    set $I1965, exception["handled"]
    eq $I1965, 1, handled_1952
    rethrow exception
  handled_1952:
    finalize $P1951
    .return (exception)
  skip_handler_1948:
.annotate 'line', 1422
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1953"  :anon :subid("211_1323686357.86238") :outer("210_1323686357.86238")
    .param pmc param_1955
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1424
    .lex "$_", param_1955
    find_lex $P1956, "$_"
    set $P1957, $P1956
    .lex "$!", $P1957
.annotate 'line', 1425
    find_lex $P1958, "$_"
    unless_null $P1958, vivify_925
    new $P1958, "Undef"
  vivify_925:
    say $P1958
.annotate 'line', 1426
    find_lex $P1959, "self"
    nqp_decontainerize $P1960, $P1959
    $P1960."usage"()
.annotate 'line', 1427
    new $P1961, "Float"
    assign $P1961, 1
    set $I1962, $P1961
    exit $I1962
.annotate 'line', 1424
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "evalfiles" :anon :subid("212_1323686357.86238") :outer("164_1323686357.86238")
    .param pmc param_1969
    .param pmc param_1970
    .param pmc param_1971 :slurpy
    .param pmc param_1972 :slurpy :named
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1433
    .const 'Sub' $P1988 = "213_1323686357.86238" 
    capture_lex $P1988
    new $P1968, 'ExceptionHandler', [.CONTROL_RETURN]
    set_label $P1968, control_1967
    push_eh $P1968
    .lex "self", param_1969
    .lex "$files", param_1970
    .lex "@args", param_1971
    .lex "%adverbs", param_1972
.annotate 'line', 1434
    new $P102, "Undef"
    set $P1973, $P102
    .lex "$target", $P1973
.annotate 'line', 1435
    new $P103, "Undef"
    set $P1974, $P103
    .lex "$encoding", $P1974
.annotate 'line', 1436
    $P1976 = root_new ['parrot';'ResizablePMCArray']
    set $P1975, $P1976
    .lex "@files", $P1975
.annotate 'line', 1437
    $P1978 = root_new ['parrot';'ResizablePMCArray']
    set $P1977, $P1978
    .lex "@codes", $P1977
.annotate 'line', 1454
    new $P104, "Undef"
    set $P1979, $P104
    .lex "$code", $P1979
.annotate 'line', 1455
    new $P105, "Undef"
    set $P1980, $P105
    .lex "$?FILES", $P1980
.annotate 'line', 1456
    new $P106, "Undef"
    set $P1981, $P106
    .lex "$r", $P1981
.annotate 'line', 1434
    set $P1982, param_1972
    unless_null $P1982, vivify_927
    $P1982 = root_new ['parrot';'Hash']
  vivify_927:
    set $P107, $P1982["target"]
    unless_null $P107, vivify_928
    new $P107, "Undef"
  vivify_928:
    set $S100, $P107
    downcase $S101, $S100
    new $P108, 'String'
    set $P108, $S101
    set $P1973, $P108
.annotate 'line', 1435
    set $P1983, param_1972
    unless_null $P1983, vivify_929
    $P1983 = root_new ['parrot';'Hash']
  vivify_929:
    set $P107, $P1983["encoding"]
    unless_null $P107, vivify_930
    new $P107, "Undef"
  vivify_930:
    set $P1974, $P107
.annotate 'line', 1436
    set $P108, param_1970
    unless_null $P108, vivify_931
    new $P108, "Undef"
  vivify_931:
    does $I100, $P108, "array"
    if $I100, if_1984
    set $P110, param_1970
    unless_null $P110, vivify_932
    new $P110, "Undef"
  vivify_932:
    new $P111, "ResizablePMCArray"
    push $P111, $P110
    set $P107, $P111
    goto if_1984_end
  if_1984:
    set $P109, param_1970
    unless_null $P109, vivify_933
    new $P109, "Undef"
  vivify_933:
    set $P107, $P109
  if_1984_end:
    set $P1975, $P107
.annotate 'line', 1433
    set $P1985, $P1977
    unless_null $P1985, vivify_934
    $P1985 = root_new ['parrot';'ResizablePMCArray']
  vivify_934:
.annotate 'line', 1438
    set $P1986, $P1975
    unless_null $P1986, vivify_935
    $P1986 = root_new ['parrot';'ResizablePMCArray']
  vivify_935:
    defined $I100, $P1986
    unless $I100, for_undef_936
    iter $P107, $P1986
    new $P112, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P112, loop2012_handler
    push_eh $P112
  loop2012_test:
    unless $P107, loop2012_done
    shift $P108, $P107
  loop2012_redo:
    .const 'Sub' $P1988 = "213_1323686357.86238" 
    capture_lex $P1988
    $P1988($P108)
  loop2012_next:
    goto loop2012_test
  loop2012_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P113, exception, 'type'
    eq $P113, .CONTROL_LOOP_NEXT, loop2012_next
    eq $P113, .CONTROL_LOOP_REDO, loop2012_redo
  loop2012_done:
    pop_eh 
  for_undef_936:
.annotate 'line', 1454
    set $P2013, $P1977
    unless_null $P2013, vivify_946
    $P2013 = root_new ['parrot';'ResizablePMCArray']
  vivify_946:
    join $S100, "", $P2013
    new $P107, 'String'
    set $P107, $S100
    set $P1979, $P107
.annotate 'line', 1455
    set $P2014, $P1975
    unless_null $P2014, vivify_947
    $P2014 = root_new ['parrot';'ResizablePMCArray']
  vivify_947:
    join $S100, " ", $P2014
    new $P107, 'String'
    set $P107, $S100
    set $P1980, $P107
.annotate 'line', 1456
    set $P107, param_1969
    nqp_decontainerize $P108, $P107
    set $P109, $P1979
    unless_null $P109, vivify_948
    new $P109, "Undef"
  vivify_948:
    set $P2015, param_1971
    unless_null $P2015, vivify_949
    $P2015 = root_new ['parrot';'ResizablePMCArray']
  vivify_949:
    set $P2016, param_1972
    unless_null $P2016, vivify_950
    $P2016 = root_new ['parrot';'Hash']
  vivify_950:
    $P110 = $P108."eval"($P109, $P2015 :flat, $P2016 :flat)
    set $P1981, $P110
.annotate 'line', 1457
    set $P109, $P1973
    unless_null $P109, vivify_951
    new $P109, "Undef"
  vivify_951:
    set $S100, $P109
    iseq $I100, $S100, ""
    unless $I100, unless_2018
    new $P108, 'Integer'
    set $P108, $I100
    goto unless_2018_end
  unless_2018:
    set $P110, $P1973
    unless_null $P110, vivify_952
    new $P110, "Undef"
  vivify_952:
    set $S101, $P110
    iseq $I101, $S101, "pir"
    new $P108, 'Integer'
    set $P108, $I101
  unless_2018_end:
    if $P108, if_2017
.annotate 'line', 1460
    new $P111, "Exception"
    set $P111['type'], .CONTROL_RETURN
    set $P112, param_1969
    nqp_decontainerize $P113, $P112
    set $P114, $P1981
    unless_null $P114, vivify_953
    new $P114, "Undef"
  vivify_953:
    set $P115, $P1973
    unless_null $P115, vivify_954
    new $P115, "Undef"
  vivify_954:
    set $P2019, param_1972
    unless_null $P2019, vivify_955
    $P2019 = root_new ['parrot';'Hash']
  vivify_955:
    $P116 = $P113."dumper"($P114, $P115, $P2019 :flat)
    setattribute $P111, 'payload', $P116
    throw $P111
.annotate 'line', 1459
    goto if_2017_end
  if_2017:
.annotate 'line', 1458
    new $P111, "Exception"
    set $P111['type'], .CONTROL_RETURN
    set $P112, $P1981
    unless_null $P112, vivify_956
    new $P112, "Undef"
  vivify_956:
    setattribute $P111, 'payload', $P112
    throw $P111
  if_2017_end:
.annotate 'line', 1433
    .return ($P107)
  control_1967:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P108, exception, "payload"
    .return ($P108)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1987"  :anon :subid("213_1323686357.86238") :outer("212_1323686357.86238")
    .param pmc param_1991
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1438
    .const 'Sub' $P1993 = "214_1323686357.86238" 
    capture_lex $P1993
.annotate 'line', 1439
    new $P109, "Undef"
    set $P1989, $P109
    .lex "$in-handle", $P1989
.annotate 'line', 1440
    new $P110, "Undef"
    set $P1990, $P110
    .lex "$err", $P1990
    .lex "$_", param_1991
.annotate 'line', 1439
    new $P111, "FileHandle"
    set $P1989, $P111
.annotate 'line', 1440
    new $P111, "Float"
    assign $P111, 0
    set $P1990, $P111
.annotate 'line', 1441
    .const 'Sub' $P1993 = "214_1323686357.86238" 
    capture_lex $P1993
    $P1993()
.annotate 'line', 1452
    set $P112, $P1990
    unless_null $P112, vivify_944
    new $P112, "Undef"
  vivify_944:
    if $P112, if_2011
    set $P111, $P112
    goto if_2011_end
  if_2011:
    set $P113, $P1990
    unless_null $P113, vivify_945
    new $P113, "Undef"
  vivify_945:
    die $P113
  if_2011_end:
.annotate 'line', 1438
    .return ($P111)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1992"  :anon :subid("214_1323686357.86238") :outer("213_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1441
    .const 'Sub' $P2001 = "215_1323686357.86238" 
    capture_lex $P2001
    new $P1997, 'ExceptionHandler'
    set_label $P1997, control_1996
    $P1997."handle_types_except"(.CONTROL_ALL)
    push_eh $P1997
.annotate 'line', 1445
    find_lex $P111, "$in-handle"
    unless_null $P111, vivify_937
    new $P111, "Undef"
  vivify_937:
    find_lex $P112, "$encoding"
    unless_null $P112, vivify_938
    new $P112, "Undef"
  vivify_938:
    $P111."encoding"($P112)
.annotate 'line', 1446
    find_lex $P1994, "@codes"
    unless_null $P1994, vivify_939
    $P1994 = root_new ['parrot';'ResizablePMCArray']
  vivify_939:
    find_lex $P111, "$in-handle"
    unless_null $P111, vivify_940
    new $P111, "Undef"
  vivify_940:
    find_lex $P112, "$_"
    unless_null $P112, vivify_941
    new $P112, "Undef"
  vivify_941:
    $P113 = $P111."readall"($P112)
    push $P1994, $P113
.annotate 'line', 1447
    find_lex $P111, "$in-handle"
    unless_null $P111, vivify_942
    new $P111, "Undef"
  vivify_942:
    $P111."close"()
.annotate 'line', 1441
    pop_eh 
    goto skip_handler_1995
  control_1996:
    peek_exception $P1998
.annotate 'line', 1448
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P2001 = "215_1323686357.86238" 
    newclosure $P2008, $P2001
    $P2008(exception)
    new $P2009, 'Integer'
    set $P2009, 1
    set exception["handled"], $P2009
    set $I2010, exception["handled"]
    eq $I2010, 1, handled_1999
    rethrow exception
  handled_1999:
    finalize $P1998
    .return (exception)
  skip_handler_1995:
.annotate 'line', 1441
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2000"  :anon :subid("215_1323686357.86238") :outer("214_1323686357.86238")
    .param pmc param_2002
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1448
    .lex "$_", param_2002
    find_lex $P2003, "$_"
    set $P2004, $P2003
    .lex "$!", $P2004
.annotate 'line', 1449
    new $P2005, 'String'
    set $P2005, "Error while reading from file: "
    find_lex $P2006, "$_"
    unless_null $P2006, vivify_943
    new $P2006, "Undef"
  vivify_943:
    concat $P2007, $P2005, $P2006
    store_lex "$err", $P2007
.annotate 'line', 1448
    .return ($P2007)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "compile" :anon :subid("216_1323686357.86238") :outer("164_1323686357.86238")
    .param pmc param_2023
    .param pmc param_2024
    .param pmc param_2025 :slurpy :named
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1464
    .const 'Sub' $P2034 = "217_1323686357.86238" 
    capture_lex $P2034
    new $P2022, 'ExceptionHandler', [.CONTROL_RETURN]
    set_label $P2022, control_2021
    push_eh $P2022
    .lex "self", param_2023
    .lex "$source", param_2024
    .lex "%adverbs", param_2025
.annotate 'line', 1465
    $P2027 = root_new ['parrot';'Hash']
    set $P2026, $P2027
    .lex "%*COMPILING", $P2026
.annotate 'line', 1467
    new $P102, "Undef"
    set $P2028, $P102
    .lex "$target", $P2028
.annotate 'line', 1468
    new $P103, "Undef"
    set $P2029, $P103
    .lex "$result", $P2029
.annotate 'line', 1469
    new $P104, "Undef"
    set $P2030, $P104
    .lex "$stderr", $P2030
.annotate 'line', 1465
    set $P2031, param_2025
    unless_null $P2031, vivify_957
    $P2031 = root_new ['parrot';'Hash']
  vivify_957:
    set $P107, $P2026
    unless_null $P107, vivify_958
    get_hll_global $P105, "GLOBAL"
    get_who $P106, $P105
    set $P107, $P106["%COMPILING"]
    unless_null $P107, vivify_959
    die "Contextual %*COMPILING not found"
  vivify_959:
    set $P2026, $P107
  vivify_958:
    set $P107["%?OPTIONS"], $P2031
.annotate 'line', 1467
    set $P2032, param_2025
    unless_null $P2032, vivify_960
    $P2032 = root_new ['parrot';'Hash']
  vivify_960:
    set $P105, $P2032["target"]
    unless_null $P105, vivify_961
    new $P105, "Undef"
  vivify_961:
    set $S100, $P105
    downcase $S101, $S100
    new $P106, 'String'
    set $P106, $S101
    set $P2028, $P106
.annotate 'line', 1468
    set $P105, param_2024
    unless_null $P105, vivify_962
    new $P105, "Undef"
  vivify_962:
    set $P2029, $P105
.annotate 'line', 1469
    getinterp $P105
    $P106 = $P105."stderr_handle"()
    set $P2030, $P106
.annotate 'line', 1470
    set $P106, param_2023
    nqp_decontainerize $P107, $P106
    $P108 = $P107."stages"()
    defined $I100, $P108
    unless $I100, for_undef_963
    iter $P105, $P108
    new $P113, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P113, loop2045_handler
    push_eh $P113
  loop2045_test:
    unless $P105, loop2045_done
    shift $P109, $P105
  loop2045_redo:
    .const 'Sub' $P2034 = "217_1323686357.86238" 
    capture_lex $P2034
    $P2034($P109)
  loop2045_next:
    goto loop2045_test
  loop2045_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P114, exception, 'type'
    eq $P114, .CONTROL_LOOP_NEXT, loop2045_next
    eq $P114, .CONTROL_LOOP_REDO, loop2045_redo
  loop2045_done:
    pop_eh 
  for_undef_963:
.annotate 'line', 1480
    new $P105, "Exception"
    set $P105['type'], .CONTROL_RETURN
    set $P106, $P2029
    unless_null $P106, vivify_976
    new $P106, "Undef"
  vivify_976:
    setattribute $P105, 'payload', $P106
    throw $P105
.annotate 'line', 1464
    .return ()
  control_2021:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P105, exception, "payload"
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2033"  :anon :subid("217_1323686357.86238") :outer("216_1323686357.86238")
    .param pmc param_2037
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1470
    .const 'Sub' $P2042 = "218_1323686357.86238" 
    capture_lex $P2042
.annotate 'line', 1471
    new $P110, "Undef"
    set $P2035, $P110
    .lex "$timestamp", $P2035
.annotate 'line', 1473
    new $P111, "Undef"
    set $P2036, $P111
    .lex "$diff", $P2036
    .lex "$_", param_2037
.annotate 'line', 1471
    time $N100
    new $P112, 'Float'
    set $P112, $N100
    set $P2035, $P112
.annotate 'line', 1472
    find_lex $P112, "self"
    nqp_decontainerize $P113, $P112
    find_lex $P114, "$result"
    unless_null $P114, vivify_964
    new $P114, "Undef"
  vivify_964:
    find_lex $P2038, "%adverbs"
    unless_null $P2038, vivify_965
    $P2038 = root_new ['parrot';'Hash']
  vivify_965:
    find_lex $P115, "$_"
    unless_null $P115, vivify_966
    new $P115, "Undef"
  vivify_966:
    set $S100, $P115
    $P116 = $P113.$S100($P114, $P2038 :flat)
    store_lex "$result", $P116
.annotate 'line', 1473
    time $N100
    new $P112, 'Float'
    set $P112, $N100
    set $P113, $P2035
    unless_null $P113, vivify_967
    new $P113, "Undef"
  vivify_967:
    sub $P114, $P112, $P113
    set $P2036, $P114
.annotate 'line', 1474
    find_lex $P2040, "%adverbs"
    unless_null $P2040, vivify_968
    $P2040 = root_new ['parrot';'Hash']
  vivify_968:
    set $P112, $P2040["stagestats"]
    unless_null $P112, vivify_969
    new $P112, "Undef"
  vivify_969:
    unless $P112, if_2039_end
    .const 'Sub' $P2042 = "218_1323686357.86238" 
    capture_lex $P2042
    $P2042()
  if_2039_end:
.annotate 'line', 1478
    find_lex $P113, "$_"
    unless_null $P113, vivify_974
    new $P113, "Undef"
  vivify_974:
    set $S100, $P113
    find_lex $P114, "$target"
    unless_null $P114, vivify_975
    new $P114, "Undef"
  vivify_975:
    set $S101, $P114
    iseq $I101, $S100, $S101
    if $I101, if_2044
    new $P112, 'Integer'
    set $P112, $I101
    goto if_2044_end
  if_2044:
    die 0, .CONTROL_LOOP_LAST
  if_2044_end:
.annotate 'line', 1470
    .return ($P112)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2041"  :anon :subid("218_1323686357.86238") :outer("217_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1475
    new $P113, "Undef"
    set $P2043, $P113
    .lex "$difffmt", $P2043
    find_lex $P114, "$diff"
    unless_null $P114, vivify_970
    new $P114, "Undef"
  vivify_970:
    new $P115, "ResizablePMCArray"
    push $P115, $P114
    sprintf $S100, "%.3f", $P115
    new $P116, 'String'
    set $P116, $S100
    set $P2043, $P116
.annotate 'line', 1476
    find_lex $P114, "$stderr"
    unless_null $P114, vivify_971
    new $P114, "Undef"
  vivify_971:
    new $P115, 'String'
    set $P115, "Stage "
    find_lex $P116, "$_"
    unless_null $P116, vivify_972
    new $P116, "Undef"
  vivify_972:
    concat $P117, $P115, $P116
    concat $P118, $P117, ": "
    set $P119, $P2043
    unless_null $P119, vivify_973
    new $P119, "Undef"
  vivify_973:
    concat $P120, $P118, $P119
    concat $P121, $P120, "\n"
    $P122 = $P114."print"($P121)
.annotate 'line', 1474
    .return ($P122)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "parse" :anon :subid("219_1323686357.86238") :outer("164_1323686357.86238")
    .param pmc param_2049
    .param pmc param_2050
    .param pmc param_2051 :slurpy :named
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1483
    .const 'Sub' $P2060 = "220_1323686357.86238" 
    capture_lex $P2060
    new $P2048, 'ExceptionHandler', [.CONTROL_RETURN]
    set_label $P2048, control_2047
    push_eh $P2048
    .lex "self", param_2049
    .lex "$source", param_2050
    .lex "%adverbs", param_2051
.annotate 'line', 1484
    new $P102, "Undef"
    set $P2052, $P102
    .lex "$s", $P2052
.annotate 'line', 1493
    new $P103, "Undef"
    set $P2053, $P103
    .lex "$grammar", $P2053
.annotate 'line', 1494
    new $P104, "Undef"
    set $P2054, $P104
    .lex "$actions", $P2054
.annotate 'line', 1496
    new $P105, "Undef"
    set $P2055, $P105
    .lex "$match", $P2055
.annotate 'line', 1484
    set $P106, param_2050
    unless_null $P106, vivify_977
    new $P106, "Undef"
  vivify_977:
    set $P2052, $P106
.annotate 'line', 1485
    set $P2057, param_2051
    unless_null $P2057, vivify_978
    $P2057 = root_new ['parrot';'Hash']
  vivify_978:
    set $P106, $P2057["transcode"]
    unless_null $P106, vivify_979
    new $P106, "Undef"
  vivify_979:
    unless $P106, if_2056_end
.annotate 'line', 1486
    set $P2058, param_2051
    unless_null $P2058, vivify_980
    $P2058 = root_new ['parrot';'Hash']
  vivify_980:
    set $P108, $P2058["transcode"]
    unless_null $P108, vivify_981
    new $P108, "Undef"
  vivify_981:
    set $S100, $P108
    split $P109, " ", $S100
    defined $I100, $P109
    unless $I100, for_undef_982
    iter $P107, $P109
    new $P112, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P112, loop2071_handler
    push_eh $P112
  loop2071_test:
    unless $P107, loop2071_done
    shift $P110, $P107
  loop2071_redo:
    .const 'Sub' $P2060 = "220_1323686357.86238" 
    capture_lex $P2060
    $P2060($P110)
  loop2071_next:
    goto loop2071_test
  loop2071_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P113, exception, 'type'
    eq $P113, .CONTROL_LOOP_NEXT, loop2071_next
    eq $P113, .CONTROL_LOOP_REDO, loop2071_redo
  loop2071_done:
    pop_eh 
  for_undef_982:
  if_2056_end:
.annotate 'line', 1493
    set $P106, param_2049
    nqp_decontainerize $P107, $P106
    $P108 = $P107."parsegrammar"()
    set $P2053, $P108
.annotate 'line', 1483
    set $P106, $P2054
    unless_null $P106, vivify_985
    new $P106, "Undef"
  vivify_985:
.annotate 'line', 1495
    set $P2073, param_2051
    unless_null $P2073, vivify_986
    $P2073 = root_new ['parrot';'Hash']
  vivify_986:
    set $P106, $P2073["target"]
    unless_null $P106, vivify_987
    new $P106, "Undef"
  vivify_987:
    set $S100, $P106
    iseq $I100, $S100, "parse"
    if $I100, unless_2072_end
    set $P107, param_2049
    nqp_decontainerize $P108, $P107
    $P109 = $P108."parseactions"()
    set $P2054, $P109
  unless_2072_end:
.annotate 'line', 1496
    set $P106, $P2053
    unless_null $P106, vivify_988
    new $P106, "Undef"
  vivify_988:
    set $P107, $P2052
    unless_null $P107, vivify_989
    new $P107, "Undef"
  vivify_989:
    set $P108, $P2054
    unless_null $P108, vivify_990
    new $P108, "Undef"
  vivify_990:
    set $P2074, param_2051
    unless_null $P2074, vivify_991
    $P2074 = root_new ['parrot';'Hash']
  vivify_991:
    set $P109, $P2074["rxtrace"]
    unless_null $P109, vivify_992
    new $P109, "Undef"
  vivify_992:
    $P110 = $P106."parse"($P107, 0 :named("p"), $P108 :named("actions"), $P109 :named("rxtrace"))
    set $P2055, $P110
.annotate 'line', 1497
    set $P106, $P2055
    unless_null $P106, vivify_993
    new $P106, "Undef"
  vivify_993:
    if $P106, unless_2075_end
    set $P107, param_2049
    nqp_decontainerize $P108, $P107
    $P108."panic"("Unable to parse source")
  unless_2075_end:
.annotate 'line', 1498
    new $P106, "Exception"
    set $P106['type'], .CONTROL_RETURN
    set $P107, $P2055
    unless_null $P107, vivify_994
    new $P107, "Undef"
  vivify_994:
    setattribute $P106, 'payload', $P107
    throw $P106
.annotate 'line', 1483
    .return ()
  control_2047:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P106, exception, "payload"
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2059"  :anon :subid("220_1323686357.86238") :outer("219_1323686357.86238")
    .param pmc param_2061
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1486
    .const 'Sub' $P2063 = "221_1323686357.86238" 
    capture_lex $P2063
    .lex "$_", param_2061
.annotate 'line', 1487
    .const 'Sub' $P2063 = "221_1323686357.86238" 
    capture_lex $P2063
    $P111 = $P2063()
.annotate 'line', 1486
    .return ($P111)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2062"  :anon :subid("221_1323686357.86238") :outer("220_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1487
    new $P2066, 'ExceptionHandler'
    set_label $P2066, control_2065
    $P2066."handle_types_except"(.CONTROL_ALL)
    push_eh $P2066
.annotate 'line', 1488
    find_lex $P111, "$s"
    unless_null $P111, vivify_983
    new $P111, "Undef"
  vivify_983:
    set $S101, $P111
.annotate 'line', 1489
    find_lex $P112, "$_"
    unless_null $P112, vivify_984
    new $P112, "Undef"
  vivify_984:
    set $S102, $P112
    find_encoding $I101, $S102
    trans_encoding $S103, $S101, $I101
.annotate 'line', 1488
    new $P113, 'String'
    set $P113, $S103
    store_lex "$s", $P113
.annotate 'line', 1487
    pop_eh 
    goto skip_handler_2064
  control_2065:
    peek_exception $P2067
    .local pmc exception 
    .get_results (exception) 
    new $P2069, 'Integer'
    set $P2069, 1
    set exception["handled"], $P2069
    set $I2070, exception["handled"]
    eq $I2070, 1, handled_2068
    rethrow exception
  handled_2068:
    finalize $P2067
    .return (exception)
  skip_handler_2064:
    .return ($P113)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "past" :anon :subid("222_1323686357.86238") :outer("164_1323686357.86238")
    .param pmc param_2077
    .param pmc param_2078
    .param pmc param_2079 :slurpy :named
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1501
    .lex "self", param_2077
    .lex "$source", param_2078
    .lex "%adverbs", param_2079
.annotate 'line', 1502
    new $P102, "Undef"
    set $P2080, $P102
    .lex "$ast", $P2080
    set $P103, param_2078
    unless_null $P103, vivify_995
    new $P103, "Undef"
  vivify_995:
    $P104 = $P103."ast"()
    set $P2080, $P104
.annotate 'line', 1504
    get_hll_global $P103, "GLOBAL"
    nqp_get_package_through_who $P104, $P103, "PAST"
    get_who $P105, $P104
    set $P106, $P105["Node"]
    set $P107, $P2080
    unless_null $P107, vivify_996
    new $P107, "Undef"
  vivify_996:
    $P108 = $P106."ACCEPTS"($P107)
    if $P108, unless_2081_end
.annotate 'line', 1503
    set $P109, param_2077
    nqp_decontainerize $P110, $P109
    new $P111, "String"
    assign $P111, "Unable to obtain ast from "
    set $P112, param_2078
    unless_null $P112, vivify_997
    new $P112, "Undef"
  vivify_997:
    typeof $S100, $P112
    concat $P113, $P111, $S100
    $P110."panic"($P113)
  unless_2081_end:
.annotate 'line', 1501
    set $P103, $P2080
    unless_null $P103, vivify_998
    new $P103, "Undef"
  vivify_998:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "post" :anon :subid("223_1323686357.86238") :outer("164_1323686357.86238")
    .param pmc param_2083
    .param pmc param_2084
    .param pmc param_2085 :slurpy :named
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1508
    .lex "self", param_2083
    .lex "$source", param_2084
    .lex "%adverbs", param_2085
.annotate 'line', 1509
    compreg $P102, "PAST"
    set $P103, param_2084
    unless_null $P103, vivify_999
    new $P103, "Undef"
  vivify_999:
    set $P2086, param_2085
    unless_null $P2086, vivify_1000
    $P2086 = root_new ['parrot';'Hash']
  vivify_1000:
    $P104 = $P102."to_post"($P103, $P2086 :flat)
.annotate 'line', 1508
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "pirbegin" :anon :subid("224_1323686357.86238") :outer("164_1323686357.86238")
    .param pmc param_2088
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1512
    .lex "self", param_2088
.annotate 'line', 1514
    new $P102, "String"
    assign $P102, ".include 'cclass.pasm'\n"
    concat $P103, $P102, ".include 'except_severity.pasm'\n"
    concat $P104, $P103, ".include 'except_types.pasm'\n"
.annotate 'line', 1515
    concat $P105, $P104, ".include 'iglobals.pasm'\n"
.annotate 'line', 1516
    concat $P106, $P105, ".include 'interpinfo.pasm'\n"
.annotate 'line', 1517
    concat $P107, $P106, ".include 'iterator.pasm'\n"
.annotate 'line', 1518
    concat $P108, $P107, ".include 'sysinfo.pasm'\n"
.annotate 'line', 1519
    concat $P109, $P108, ".include 'stat.pasm'\n"
.annotate 'line', 1520
    concat $P110, $P109, ".include 'datatypes.pasm'\n"
.annotate 'line', 1512
    .return ($P110)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "pir" :anon :subid("225_1323686357.86238") :outer("164_1323686357.86238")
    .param pmc param_2090
    .param pmc param_2091
    .param pmc param_2092 :slurpy :named
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1524
    .lex "self", param_2090
    .lex "$source", param_2091
    .lex "%adverbs", param_2092
.annotate 'line', 1525
    set $P102, param_2090
    nqp_decontainerize $P103, $P102
    $P104 = $P103."pirbegin"()
    compreg $P105, "POST"
    set $P106, param_2091
    unless_null $P106, vivify_1001
    new $P106, "Undef"
  vivify_1001:
    set $P2093, param_2092
    unless_null $P2093, vivify_1002
    $P2093 = root_new ['parrot';'Hash']
  vivify_1002:
    $S100 = $P105."to_pir"($P106, $P2093 :flat)
    concat $P107, $P104, $S100
.annotate 'line', 1524
    .return ($P107)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "evalpmc" :anon :subid("226_1323686357.86238") :outer("164_1323686357.86238")
    .param pmc param_2095
    .param pmc param_2096
    .param pmc param_2097 :slurpy :named
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1528
    .lex "self", param_2095
    .lex "$source", param_2096
    .lex "%adverbs", param_2097
.annotate 'line', 1529
    new $P102, "Undef"
    set $P2098, $P102
    .lex "$compiler", $P2098
    compreg $P103, "PIR"
    set $P2098, $P103
.annotate 'line', 1530
    set $P103, $P2098
    unless_null $P103, vivify_1003
    new $P103, "Undef"
  vivify_1003:
    set $P104, param_2096
    unless_null $P104, vivify_1004
    new $P104, "Undef"
  vivify_1004:
    $P105 = $P103($P104)
.annotate 'line', 1528
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "dumper" :anon :subid("227_1323686357.86238") :outer("164_1323686357.86238")
    .param pmc param_2100
    .param pmc param_2101
    .param pmc param_2102
    .param pmc param_2103 :slurpy :named
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1533
    .const 'Sub' $P2107 = "228_1323686357.86238" 
    capture_lex $P2107
    .lex "self", param_2100
    .lex "$obj", param_2101
    .lex "$name", param_2102
    .lex "%options", param_2103
.annotate 'line', 1534
    set $P2105, param_2103
    unless_null $P2105, vivify_1005
    $P2105 = root_new ['parrot';'Hash']
  vivify_1005:
    set $P103, $P2105["dumper"]
    unless_null $P103, vivify_1006
    new $P103, "Undef"
  vivify_1006:
    if $P103, if_2104
.annotate 'line', 1540
    set $P106, param_2101
    unless_null $P106, vivify_1007
    new $P106, "Undef"
  vivify_1007:
    set $P107, param_2102
    unless_null $P107, vivify_1008
    new $P107, "Undef"
  vivify_1008:
    $P109 = "_dumper"($P106, $P107)
.annotate 'line', 1539
    set $P102, $P109
.annotate 'line', 1534
    goto if_2104_end
  if_2104:
    .const 'Sub' $P2107 = "228_1323686357.86238" 
    capture_lex $P2107
    $P105 = $P2107()
    set $P102, $P105
  if_2104_end:
.annotate 'line', 1533
    .return ($P102)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2106"  :anon :subid("228_1323686357.86238") :outer("227_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1536
    new $P104, "Undef"
    set $P2108, $P104
    .lex "$dumper", $P2108
.annotate 'line', 1535
    load_bytecode "PCT/Dumper.pbc"
.annotate 'line', 1536
    find_lex $P2109, "%options"
    unless_null $P2109, vivify_1009
    $P2109 = root_new ['parrot';'Hash']
  vivify_1009:
    set $P105, $P2109["dumper"]
    unless_null $P105, vivify_1010
    new $P105, "Undef"
  vivify_1010:
    set $S100, $P105
    downcase $S101, $S100
    get_hll_global $P106, "GLOBAL"
    nqp_get_package_through_who $P107, $P106, "PCT"
    get_who $P108, $P107
    set $P2110, $P108["Dumper"]
    unless_null $P2110, vivify_1011
    $P2110 = root_new ['parrot';'Hash']
  vivify_1011:
    set $P109, $P2110[$S101]
    unless_null $P109, vivify_1012
    new $P109, "Undef"
  vivify_1012:
    set $P2108, $P109
.annotate 'line', 1537
    set $P105, $P2108
    unless_null $P105, vivify_1013
    new $P105, "Undef"
  vivify_1013:
    find_lex $P106, "$obj"
    unless_null $P106, vivify_1014
    new $P106, "Undef"
  vivify_1014:
    find_lex $P107, "$name"
    unless_null $P107, vivify_1015
    new $P107, "Undef"
  vivify_1015:
    $P108 = $P105($P106, $P107)
.annotate 'line', 1534
    .return ($P108)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "usage" :anon :subid("229_1323686357.86238") :outer("164_1323686357.86238")
    .param pmc param_2112
    .param pmc param_2113 :optional
    .param int has_param_2113 :opt_flag
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1544
    .lex "self", param_2112
    if has_param_2113, optparam_1016
    new $P102, "Undef"
    set param_2113, $P102
  optparam_1016:
    .lex "$name", param_2113
.annotate 'line', 1545
    set $P103, param_2113
    unless_null $P103, vivify_1017
    new $P103, "Undef"
  vivify_1017:
    unless $P103, if_2114_end
.annotate 'line', 1546
    set $P104, param_2113
    unless_null $P104, vivify_1018
    new $P104, "Undef"
  vivify_1018:
    "say"($P104)
  if_2114_end:
.annotate 'line', 1548
    set $P103, param_2112
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    repr_get_attr_obj $P106, $P104, $P105, "$!usage", 4
    unless_null $P106, vivify_1019
    new $P106, "Undef"
  vivify_1019:
    say $P106
.annotate 'line', 1549
    new $P103, "Float"
    assign $P103, 0
    set $I100, $P103
    exit $I100
.annotate 'line', 1544
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "version" :anon :subid("230_1323686357.86238") :outer("164_1323686357.86238")
    .param pmc param_2116
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1552
    .lex "self", param_2116
.annotate 'line', 1553
    new $P102, "Undef"
    set $P2117, $P102
    .lex "$version", $P2117
.annotate 'line', 1554
    new $P103, "Undef"
    set $P2118, $P103
    .lex "$parver", $P2118
.annotate 'line', 1555
    new $P104, "Undef"
    set $P2119, $P104
    .lex "$parrev", $P2119
.annotate 'line', 1553
    set $P105, param_2116
    nqp_decontainerize $P106, $P105
    find_lex $P107, "$?CLASS"
    repr_get_attr_obj $P2120, $P106, $P107, "%!config", 7
    unless_null $P2120, vivify_1020
    $P2120 = root_new ['parrot';'Hash']
  vivify_1020:
    set $P108, $P2120["version"]
    unless_null $P108, vivify_1021
    new $P108, "Undef"
  vivify_1021:
    set $P2117, $P108
.annotate 'line', 1554
    find_lex $P105, "$?PACKAGE"
    get_who $P106, $P105
    set $P2121, $P106["%parrot_config"]
    unless_null $P2121, vivify_1022
    $P2121 = root_new ['parrot';'Hash']
  vivify_1022:
    set $P107, $P2121["VERSION"]
    unless_null $P107, vivify_1023
    new $P107, "Undef"
  vivify_1023:
    set $P2118, $P107
.annotate 'line', 1555
    find_lex $P105, "$?PACKAGE"
    get_who $P106, $P105
    set $P2123, $P106["%parrot_config"]
    unless_null $P2123, vivify_1024
    $P2123 = root_new ['parrot';'Hash']
  vivify_1024:
    set $P107, $P2123["git_describe"]
    unless_null $P107, vivify_1025
    new $P107, "Undef"
  vivify_1025:
    set $P2122, $P107
    defined $I2125, $P2122
    if $I2125, default_2124
    new $P108, "String"
    assign $P108, "(unknown)"
    set $P2122, $P108
  default_2124:
    set $P2119, $P2122
.annotate 'line', 1556
    new $P105, 'String'
    set $P105, "This is "
    set $P106, param_2116
    nqp_decontainerize $P107, $P106
    find_lex $P108, "$?CLASS"
    repr_get_attr_obj $P109, $P107, $P108, "$!language", 6
    unless_null $P109, vivify_1026
    new $P109, "Undef"
  vivify_1026:
    concat $P110, $P105, $P109
    concat $P111, $P110, " version "
    set $P112, $P2117
    unless_null $P112, vivify_1027
    new $P112, "Undef"
  vivify_1027:
    concat $P113, $P111, $P112
    concat $P114, $P113, " built on parrot "
    set $P115, $P2118
    unless_null $P115, vivify_1028
    new $P115, "Undef"
  vivify_1028:
    concat $P116, $P114, $P115
    concat $P117, $P116, " revision "
    set $P118, $P2119
    unless_null $P118, vivify_1029
    new $P118, "Undef"
  vivify_1029:
    concat $P119, $P117, $P118
    say $P119
.annotate 'line', 1557
    new $P105, "Float"
    assign $P105, 0
    set $I100, $P105
    exit $I100
.annotate 'line', 1552
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "show-config" :anon :subid("231_1323686357.86238") :outer("164_1323686357.86238")
    .param pmc param_2127
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1560
    .const 'Sub' $P2135 = "233_1323686357.86238" 
    capture_lex $P2135
    .const 'Sub' $P2130 = "232_1323686357.86238" 
    capture_lex $P2130
    .lex "self", param_2127
.annotate 'line', 1561
    find_lex $P103, "$?PACKAGE"
    get_who $P104, $P103
    set $P2128, $P104["%parrot_config"]
    unless_null $P2128, vivify_1030
    $P2128 = root_new ['parrot';'Hash']
  vivify_1030:
    defined $I100, $P2128
    unless $I100, for_undef_1031
    iter $P102, $P2128
    new $P106, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P106, loop2132_handler
    push_eh $P106
  loop2132_test:
    unless $P102, loop2132_done
    shift $P105, $P102
  loop2132_redo:
    .const 'Sub' $P2130 = "232_1323686357.86238" 
    capture_lex $P2130
    $P2130($P105)
  loop2132_next:
    goto loop2132_test
  loop2132_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P107, exception, 'type'
    eq $P107, .CONTROL_LOOP_NEXT, loop2132_next
    eq $P107, .CONTROL_LOOP_REDO, loop2132_redo
  loop2132_done:
    pop_eh 
  for_undef_1031:
.annotate 'line', 1564
    set $P103, param_2127
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    repr_get_attr_obj $P2133, $P104, $P105, "%!config", 7
    unless_null $P2133, vivify_1034
    $P2133 = root_new ['parrot';'Hash']
  vivify_1034:
    defined $I100, $P2133
    unless $I100, for_undef_1035
    iter $P102, $P2133
    new $P107, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P107, loop2137_handler
    push_eh $P107
  loop2137_test:
    unless $P102, loop2137_done
    shift $P106, $P102
  loop2137_redo:
    .const 'Sub' $P2135 = "233_1323686357.86238" 
    capture_lex $P2135
    $P2135($P106)
  loop2137_next:
    goto loop2137_test
  loop2137_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P108, exception, 'type'
    eq $P108, .CONTROL_LOOP_NEXT, loop2137_next
    eq $P108, .CONTROL_LOOP_REDO, loop2137_redo
  loop2137_done:
    pop_eh 
  for_undef_1035:
.annotate 'line', 1567
    new $P102, "Float"
    assign $P102, 0
    set $I100, $P102
    exit $I100
.annotate 'line', 1560
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2129"  :anon :subid("232_1323686357.86238") :outer("231_1323686357.86238")
    .param pmc param_2131
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1561
    .lex "$_", param_2131
.annotate 'line', 1562
    new $P106, "String"
    assign $P106, "parrot::"
    find_lex $P107, "$_"
    unless_null $P107, vivify_1032
    new $P107, "Undef"
  vivify_1032:
    $S100 = $P107."key"()
    concat $P108, $P106, $S100
    concat $P109, $P108, "="
    find_lex $P110, "$_"
    unless_null $P110, vivify_1033
    new $P110, "Undef"
  vivify_1033:
    $S101 = $P110."value"()
    concat $P111, $P109, $S101
    say $P111
.annotate 'line', 1561
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2134"  :anon :subid("233_1323686357.86238") :outer("231_1323686357.86238")
    .param pmc param_2136
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1564
    .lex "$_", param_2136
.annotate 'line', 1565
    find_lex $P107, "self"
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    repr_get_attr_obj $P110, $P108, $P109, "$!language", 6
    unless_null $P110, vivify_1036
    new $P110, "Undef"
  vivify_1036:
    concat $P111, $P110, "::"
    find_lex $P112, "$_"
    unless_null $P112, vivify_1037
    new $P112, "Undef"
  vivify_1037:
    $S100 = $P112."key"()
    concat $P113, $P111, $S100
    concat $P114, $P113, "="
    find_lex $P115, "$_"
    unless_null $P115, vivify_1038
    new $P115, "Undef"
  vivify_1038:
    $S101 = $P115."value"()
    concat $P116, $P114, $S101
    say $P116
.annotate 'line', 1564
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "nqpevent" :anon :subid("234_1323686357.86238") :outer("164_1323686357.86238")
    .param pmc param_2139
    .param pmc param_2140 :optional
    .param int has_param_2140 :opt_flag
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1570
    .const 'Sub' $P2145 = "235_1323686357.86238" 
    capture_lex $P2145
    .lex "self", param_2139
    if has_param_2140, optparam_1039
    new $P102, "Undef"
    set param_2140, $P102
  optparam_1039:
    .lex "$spec", param_2140
.annotate 'line', 1573
    new $P103, "Undef"
    set $P2141, $P103
    .lex "$fh", $P2141
.annotate 'line', 1572
    nqpevent "nqpevent: log finished"
.annotate 'line', 1573
    null $P104
    nqpevent_fh $P105, $P104
    set $P2141, $P105
.annotate 'line', 1574
    set $P104, $P2141
    unless_null $P104, vivify_1040
    new $P104, "Undef"
  vivify_1040:
    unless $P104, if_2142_end
    set $P105, $P2141
    unless_null $P105, vivify_1041
    new $P105, "Undef"
  vivify_1041:
    $P105."flush"()
  if_2142_end:
.annotate 'line', 1577
    set $P105, param_2140
    unless_null $P105, vivify_1042
    new $P105, "Undef"
  vivify_1042:
    if $P105, if_2143
    set $P104, $P105
    goto if_2143_end
  if_2143:
    .const 'Sub' $P2145 = "235_1323686357.86238" 
    capture_lex $P2145
    $P108 = $P2145()
    set $P104, $P108
  if_2143_end:
.annotate 'line', 1570
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2144"  :anon :subid("235_1323686357.86238") :outer("234_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1577
    .const 'Sub' $P2152 = "236_1323686357.86238" 
    capture_lex $P2152
.annotate 'line', 1579
    new $P106, "Undef"
    set $P2146, $P106
    .lex "$file", $P2146
.annotate 'line', 1580
    new $P107, "Undef"
    set $P2147, $P107
    .lex "$flags", $P2147
.annotate 'line', 1578
    find_lex $P108, "$spec"
    unless_null $P108, vivify_1043
    new $P108, "Undef"
  vivify_1043:
    set $S100, $P108
    split $P109, ";", $S100
    store_lex "$spec", $P109
.annotate 'line', 1579
    new $P108, "Float"
    assign $P108, 0
    set $I100, $P108
    find_lex $P2148, "$spec"
    unless_null $P2148, vivify_1044
    $P2148 = root_new ['parrot';'ResizablePMCArray']
  vivify_1044:
    set $P109, $P2148[$I100]
    unless_null $P109, vivify_1045
    new $P109, "Undef"
  vivify_1045:
    set $P2146, $P109
.annotate 'line', 1580
    new $P108, "Float"
    assign $P108, 1
    set $I100, $P108
    find_lex $P2149, "$spec"
    unless_null $P2149, vivify_1046
    $P2149 = root_new ['parrot';'ResizablePMCArray']
  vivify_1046:
    set $P109, $P2149[$I100]
    unless_null $P109, vivify_1047
    new $P109, "Undef"
  vivify_1047:
    set $P2147, $P109
.annotate 'line', 1581
    set $P108, $P2146
    unless_null $P108, vivify_1048
    new $P108, "Undef"
  vivify_1048:
    set $S100, $P108
    isgt $I100, $S100, ""
    if $I100, if_2150
.annotate 'line', 1587
    getinterp $P110
    $P112 = $P110."stderr_handle"()
    nqpevent_fh $P113, $P112
.annotate 'line', 1586
    goto if_2150_end
  if_2150:
.annotate 'line', 1581
    .const 'Sub' $P2152 = "236_1323686357.86238" 
    capture_lex $P2152
    $P2152()
  if_2150_end:
.annotate 'line', 1589
    set $P108, $P2147
    unless_null $P108, vivify_1053
    new $P108, "Undef"
  vivify_1053:
    set $S100, $P108
    iseq $I101, $S100, ""
    if $I101, if_2155
    set $P110, $P2147
    unless_null $P110, vivify_1054
    new $P110, "Undef"
  vivify_1054:
    set $I100, $P110
    goto if_2155_end
  if_2155:
    new $P109, "Float"
    assign $P109, 31
    set $I100, $P109
  if_2155_end:
    nqpdebflags $I102, $I100
.annotate 'line', 1590
    nqpevent "nqpevent: log started"
.annotate 'line', 1577
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2151"  :anon :subid("236_1323686357.86238") :outer("235_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1582
    new $P109, "Undef"
    set $P2153, $P109
    .lex "$fh", $P2153
    new $P110, "FileHandle"
    set $P2153, $P110
.annotate 'line', 1583
    set $P110, $P2153
    unless_null $P110, vivify_1049
    new $P110, "Undef"
  vivify_1049:
    find_lex $P111, "$file"
    unless_null $P111, vivify_1050
    new $P111, "Undef"
  vivify_1050:
    $P112 = $P110."open"($P111, "w")
    if $P112, unless_2154_end
    find_lex $P113, "self"
    nqp_decontainerize $P114, $P113
    new $P115, 'String'
    set $P115, "Cannot write to "
    find_lex $P116, "$file"
    unless_null $P116, vivify_1051
    new $P116, "Undef"
  vivify_1051:
    concat $P117, $P115, $P116
    $P114."panic"($P117)
  unless_2154_end:
.annotate 'line', 1584
    set $P110, $P2153
    unless_null $P110, vivify_1052
    new $P110, "Undef"
  vivify_1052:
    nqpevent_fh $P111, $P110
.annotate 'line', 1581
    .return ($P111)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "removestage" :anon :subid("237_1323686357.86238") :outer("164_1323686357.86238")
    .param pmc param_2157
    .param pmc param_2158
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1594
    .const 'Sub' $P2163 = "238_1323686357.86238" 
    capture_lex $P2163
    .lex "self", param_2157
    .lex "$stagename", param_2158
.annotate 'line', 1595
    $P2160 = root_new ['parrot';'ResizablePMCArray']
    set $P2159, $P2160
    .lex "@new_stages", $P2159
    new $P102, "ResizableStringArray"
    set $P2159, $P102
.annotate 'line', 1596
    set $P103, param_2157
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    repr_get_attr_obj $P2161, $P104, $P105, "@!stages", 0
    unless_null $P2161, vivify_1055
    $P2161 = root_new ['parrot';'ResizablePMCArray']
  vivify_1055:
    defined $I100, $P2161
    unless $I100, for_undef_1056
    iter $P102, $P2161
    new $P108, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P108, loop2167_handler
    push_eh $P108
  loop2167_test:
    unless $P102, loop2167_done
    shift $P106, $P102
  loop2167_redo:
    .const 'Sub' $P2163 = "238_1323686357.86238" 
    capture_lex $P2163
    $P2163($P106)
  loop2167_next:
    goto loop2167_test
  loop2167_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P109, exception, 'type'
    eq $P109, .CONTROL_LOOP_NEXT, loop2167_next
    eq $P109, .CONTROL_LOOP_REDO, loop2167_redo
  loop2167_done:
    pop_eh 
  for_undef_1056:
.annotate 'line', 1601
    set $P2168, $P2159
    unless_null $P2168, vivify_1061
    $P2168 = root_new ['parrot';'ResizablePMCArray']
  vivify_1061:
    set $P102, param_2157
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_bind_attr_obj $P103, $P104, "@!stages", 0, $P2168
.annotate 'line', 1594
    .return ($P2168)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2162"  :anon :subid("238_1323686357.86238") :outer("237_1323686357.86238")
    .param pmc param_2164
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1596
    .lex "$_", param_2164
.annotate 'line', 1597
    find_lex $P108, "$_"
    unless_null $P108, vivify_1057
    new $P108, "Undef"
  vivify_1057:
    set $S100, $P108
    find_lex $P109, "$stagename"
    unless_null $P109, vivify_1058
    new $P109, "Undef"
  vivify_1058:
    set $S101, $P109
    isne $I101, $S100, $S101
    if $I101, if_2165
    new $P107, 'Integer'
    set $P107, $I101
    goto if_2165_end
  if_2165:
.annotate 'line', 1598
    find_lex $P2166, "@new_stages"
    unless_null $P2166, vivify_1059
    $P2166 = root_new ['parrot';'ResizablePMCArray']
  vivify_1059:
    find_lex $P110, "$_"
    unless_null $P110, vivify_1060
    new $P110, "Undef"
  vivify_1060:
    $P111 = $P2166."push"($P110)
.annotate 'line', 1597
    set $P107, $P111
  if_2165_end:
.annotate 'line', 1596
    .return ($P107)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "addstage" :anon :subid("239_1323686357.86238") :outer("164_1323686357.86238")
    .param pmc param_2172
    .param pmc param_2173
    .param pmc param_2174 :slurpy :named
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1604
    .const 'Sub' $P2192 = "241_1323686357.86238" 
    capture_lex $P2192
    .const 'Sub' $P2186 = "240_1323686357.86238" 
    capture_lex $P2186
    new $P2171, 'ExceptionHandler', [.CONTROL_RETURN]
    set_label $P2171, control_2170
    push_eh $P2171
    .lex "self", param_2172
    .lex "$stagename", param_2173
    .lex "%adverbs", param_2174
.annotate 'line', 1605
    new $P102, "Undef"
    set $P2175, $P102
    .lex "$position", $P2175
.annotate 'line', 1606
    new $P103, "Undef"
    set $P2176, $P103
    .lex "$where", $P2176
.annotate 'line', 1619
    $P2178 = root_new ['parrot';'ResizablePMCArray']
    set $P2177, $P2178
    .lex "@new-stages", $P2177
.annotate 'line', 1604
    set $P104, $P2175
    unless_null $P104, vivify_1062
    new $P104, "Undef"
  vivify_1062:
    set $P104, $P2176
    unless_null $P104, vivify_1063
    new $P104, "Undef"
  vivify_1063:
.annotate 'line', 1607
    set $P2180, param_2174
    unless_null $P2180, vivify_1064
    $P2180 = root_new ['parrot';'Hash']
  vivify_1064:
    set $P104, $P2180["before"]
    unless_null $P104, vivify_1065
    new $P104, "Undef"
  vivify_1065:
    if $P104, if_2179
.annotate 'line', 1610
    set $P2183, param_2174
    unless_null $P2183, vivify_1066
    $P2183 = root_new ['parrot';'Hash']
  vivify_1066:
    set $P105, $P2183["after"]
    unless_null $P105, vivify_1067
    new $P105, "Undef"
  vivify_1067:
    if $P105, if_2182
.annotate 'line', 1613
    .const 'Sub' $P2186 = "240_1323686357.86238" 
    capture_lex $P2186
    $P2186()
    goto if_2182_end
  if_2182:
.annotate 'line', 1611
    set $P2184, param_2174
    unless_null $P2184, vivify_1071
    $P2184 = root_new ['parrot';'Hash']
  vivify_1071:
    set $P106, $P2184["after"]
    unless_null $P106, vivify_1072
    new $P106, "Undef"
  vivify_1072:
    set $P2176, $P106
.annotate 'line', 1612
    new $P106, "String"
    assign $P106, "after"
    set $P2175, $P106
  if_2182_end:
.annotate 'line', 1610
    goto if_2179_end
  if_2179:
.annotate 'line', 1608
    set $P2181, param_2174
    unless_null $P2181, vivify_1073
    $P2181 = root_new ['parrot';'Hash']
  vivify_1073:
    set $P105, $P2181["before"]
    unless_null $P105, vivify_1074
    new $P105, "Undef"
  vivify_1074:
    set $P2176, $P105
.annotate 'line', 1609
    new $P105, "String"
    assign $P105, "before"
    set $P2175, $P105
  if_2179_end:
.annotate 'line', 1619
    new $P104, "ResizableStringArray"
    set $P2177, $P104
.annotate 'line', 1620
    set $P105, param_2172
    nqp_decontainerize $P106, $P105
    $P107 = $P106."stages"()
    defined $I100, $P107
    unless $I100, for_undef_1075
    iter $P104, $P107
    new $P110, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P110, loop2201_handler
    push_eh $P110
  loop2201_test:
    unless $P104, loop2201_done
    shift $P108, $P104
  loop2201_redo:
    .const 'Sub' $P2192 = "241_1323686357.86238" 
    capture_lex $P2192
    $P2192($P108)
  loop2201_next:
    goto loop2201_test
  loop2201_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P111, exception, 'type'
    eq $P111, .CONTROL_LOOP_NEXT, loop2201_next
    eq $P111, .CONTROL_LOOP_REDO, loop2201_redo
  loop2201_done:
    pop_eh 
  for_undef_1075:
.annotate 'line', 1633
    set $P104, param_2172
    nqp_decontainerize $P105, $P104
    set $P2202, $P2177
    unless_null $P2202, vivify_1089
    $P2202 = root_new ['parrot';'ResizablePMCArray']
  vivify_1089:
    $P106 = $P105."stages"($P2202)
.annotate 'line', 1604
    .return ($P106)
  control_2170:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P104, exception, "payload"
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2185"  :anon :subid("240_1323686357.86238") :outer("239_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1614
    $P2188 = root_new ['parrot';'ResizablePMCArray']
    set $P2187, $P2188
    .lex "@new-stages", $P2187
    find_lex $P106, "self"
    nqp_decontainerize $P107, $P106
    $P108 = $P107."stages"()
    clone $P109, $P108
    set $P2187, $P109
.annotate 'line', 1615
    set $P2189, $P2187
    unless_null $P2189, vivify_1068
    $P2189 = root_new ['parrot';'ResizablePMCArray']
  vivify_1068:
    find_lex $P106, "$stagename"
    unless_null $P106, vivify_1069
    new $P106, "Undef"
  vivify_1069:
    push $P2189, $P106
.annotate 'line', 1616
    find_lex $P106, "self"
    nqp_decontainerize $P107, $P106
    set $P2190, $P2187
    unless_null $P2190, vivify_1070
    $P2190 = root_new ['parrot';'ResizablePMCArray']
  vivify_1070:
    $P107."stages"($P2190)
.annotate 'line', 1617
    new $P106, "Exception"
    set $P106['type'], .CONTROL_RETURN
    new $P107, "Float"
    assign $P107, 1
    setattribute $P106, 'payload', $P107
    throw $P106
.annotate 'line', 1613
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2191"  :anon :subid("241_1323686357.86238") :outer("239_1323686357.86238")
    .param pmc param_2193
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1620
    .lex "$_", param_2193
.annotate 'line', 1621
    find_lex $P110, "$_"
    unless_null $P110, vivify_1076
    new $P110, "Undef"
  vivify_1076:
    set $S100, $P110
    find_lex $P111, "$where"
    unless_null $P111, vivify_1077
    new $P111, "Undef"
  vivify_1077:
    set $S101, $P111
    iseq $I101, $S100, $S101
    if $I101, if_2194
.annotate 'line', 1630
    find_lex $P2200, "@new-stages"
    unless_null $P2200, vivify_1078
    $P2200 = root_new ['parrot';'ResizablePMCArray']
  vivify_1078:
    find_lex $P113, "$_"
    unless_null $P113, vivify_1079
    new $P113, "Undef"
  vivify_1079:
    push $P2200, $P113
.annotate 'line', 1629
    set $P109, $P2200
.annotate 'line', 1621
    goto if_2194_end
  if_2194:
.annotate 'line', 1622
    find_lex $P113, "$position"
    unless_null $P113, vivify_1080
    new $P113, "Undef"
  vivify_1080:
    set $S102, $P113
    iseq $I102, $S102, "before"
    if $I102, if_2195
.annotate 'line', 1626
    find_lex $P2198, "@new-stages"
    unless_null $P2198, vivify_1081
    $P2198 = root_new ['parrot';'ResizablePMCArray']
  vivify_1081:
    find_lex $P114, "$_"
    unless_null $P114, vivify_1082
    new $P114, "Undef"
  vivify_1082:
    push $P2198, $P114
.annotate 'line', 1627
    find_lex $P2199, "@new-stages"
    unless_null $P2199, vivify_1083
    $P2199 = root_new ['parrot';'ResizablePMCArray']
  vivify_1083:
    find_lex $P114, "$stagename"
    unless_null $P114, vivify_1084
    new $P114, "Undef"
  vivify_1084:
    push $P2199, $P114
.annotate 'line', 1625
    set $P112, $P2199
.annotate 'line', 1622
    goto if_2195_end
  if_2195:
.annotate 'line', 1623
    find_lex $P2196, "@new-stages"
    unless_null $P2196, vivify_1085
    $P2196 = root_new ['parrot';'ResizablePMCArray']
  vivify_1085:
    find_lex $P114, "$stagename"
    unless_null $P114, vivify_1086
    new $P114, "Undef"
  vivify_1086:
    push $P2196, $P114
.annotate 'line', 1624
    find_lex $P2197, "@new-stages"
    unless_null $P2197, vivify_1087
    $P2197 = root_new ['parrot';'ResizablePMCArray']
  vivify_1087:
    find_lex $P114, "$_"
    unless_null $P114, vivify_1088
    new $P114, "Undef"
  vivify_1088:
    push $P2197, $P114
.annotate 'line', 1622
    set $P112, $P2197
  if_2195_end:
.annotate 'line', 1621
    set $P109, $P112
  if_2194_end:
.annotate 'line', 1620
    .return ($P109)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "parse_name" :anon :subid("242_1323686357.86238") :outer("164_1323686357.86238")
    .param pmc param_2204
    .param pmc param_2205
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1636
    .const 'Sub' $P2221 = "243_1323686357.86238" 
    capture_lex $P2221
    .lex "self", param_2204
    .lex "$name", param_2205
.annotate 'line', 1637
    $P2207 = root_new ['parrot';'ResizablePMCArray']
    set $P2206, $P2207
    .lex "@ns", $P2206
.annotate 'line', 1638
    new $P102, "Undef"
    set $P2208, $P102
    .lex "$sigil", $P2208
.annotate 'line', 1641
    new $P103, "Undef"
    set $P2209, $P103
    .lex "$idx", $P2209
.annotate 'line', 1649
    $P2211 = root_new ['parrot';'ResizablePMCArray']
    set $P2210, $P2211
    .lex "@actual_ns", $P2210
.annotate 'line', 1637
    set $P104, param_2205
    unless_null $P104, vivify_1090
    new $P104, "Undef"
  vivify_1090:
    set $S100, $P104
    split $P105, "::", $S100
    set $P2206, $P105
.annotate 'line', 1638
    new $P104, "Float"
    assign $P104, 0
    set $I100, $P104
    set $P2212, $P2206
    unless_null $P2212, vivify_1091
    $P2212 = root_new ['parrot';'ResizablePMCArray']
  vivify_1091:
    set $P105, $P2212[$I100]
    unless_null $P105, vivify_1092
    new $P105, "Undef"
  vivify_1092:
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
    set $P2208, $P108
.annotate 'line', 1641
    set $P104, $P2208
    unless_null $P104, vivify_1093
    new $P104, "Undef"
  vivify_1093:
    set $S100, $P104
    index $I100, "$@%&", $S100
    new $P105, 'Integer'
    set $P105, $I100
    set $P2209, $P105
.annotate 'line', 1642
    set $P104, $P2209
    unless_null $P104, vivify_1094
    new $P104, "Undef"
  vivify_1094:
    set $N100, $P104
    set $N101, 0
    isge $I100, $N100, $N101
    unless $I100, if_2213_end
.annotate 'line', 1643
    new $P105, "Float"
    assign $P105, 0
    set $I101, $P105
    set $P2214, $P2206
    unless_null $P2214, vivify_1095
    $P2214 = root_new ['parrot';'ResizablePMCArray']
  vivify_1095:
    set $P106, $P2214[$I101]
    unless_null $P106, vivify_1096
    new $P106, "Undef"
  vivify_1096:
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
    set $P2215, $P2206
    unless_null $P2215, vivify_1097
    $P2215 = root_new ['parrot';'ResizablePMCArray']
    set $P2206, $P2215
  vivify_1097:
    set $P2215[$I103], $P108
.annotate 'line', 1644
    set $P105, $P2208
    unless_null $P105, vivify_1098
    new $P105, "Undef"
  vivify_1098:
    new $P106, "Float"
    assign $P106, -1
    set $I101, $P106
    set $P2216, $P2206
    unless_null $P2216, vivify_1099
    $P2216 = root_new ['parrot';'ResizablePMCArray']
  vivify_1099:
    set $P107, $P2216[$I101]
    unless_null $P107, vivify_1100
    new $P107, "Undef"
  vivify_1100:
    concat $P108, $P105, $P107
    new $P109, "Float"
    assign $P109, -1
    set $I102, $P109
    set $P2217, $P2206
    unless_null $P2217, vivify_1101
    $P2217 = root_new ['parrot';'ResizablePMCArray']
    set $P2206, $P2217
  vivify_1101:
    set $P2217[$I102], $P108
  if_2213_end:
.annotate 'line', 1636
    set $P2218, $P2210
    unless_null $P2218, vivify_1102
    $P2218 = root_new ['parrot';'ResizablePMCArray']
  vivify_1102:
.annotate 'line', 1650
    set $P2219, $P2206
    unless_null $P2219, vivify_1103
    $P2219 = root_new ['parrot';'ResizablePMCArray']
  vivify_1103:
    defined $I100, $P2219
    unless $I100, for_undef_1104
    iter $P104, $P2219
    new $P107, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P107, loop2225_handler
    push_eh $P107
  loop2225_test:
    unless $P104, loop2225_done
    shift $P105, $P104
  loop2225_redo:
    .const 'Sub' $P2221 = "243_1323686357.86238" 
    capture_lex $P2221
    $P2221($P105)
  loop2225_next:
    goto loop2225_test
  loop2225_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P108, exception, 'type'
    eq $P108, .CONTROL_LOOP_NEXT, loop2225_next
    eq $P108, .CONTROL_LOOP_REDO, loop2225_redo
  loop2225_done:
    pop_eh 
  for_undef_1104:
.annotate 'line', 1636
    set $P2226, $P2210
    unless_null $P2226, vivify_1108
    $P2226 = root_new ['parrot';'ResizablePMCArray']
  vivify_1108:
    .return ($P2226)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2220"  :anon :subid("243_1323686357.86238") :outer("242_1323686357.86238")
    .param pmc param_2222
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1650
    .lex "$_", param_2222
.annotate 'line', 1651
    find_lex $P107, "$_"
    unless_null $P107, vivify_1105
    new $P107, "Undef"
  vivify_1105:
    set $S100, $P107
    iseq $I101, $S100, ""
    unless $I101, unless_2223
    new $P106, 'Integer'
    set $P106, $I101
    goto unless_2223_end
  unless_2223:
    find_lex $P2224, "@actual_ns"
    unless_null $P2224, vivify_1106
    $P2224 = root_new ['parrot';'ResizablePMCArray']
  vivify_1106:
    find_lex $P108, "$_"
    unless_null $P108, vivify_1107
    new $P108, "Undef"
  vivify_1107:
    push $P2224, $P108
    set $P106, $P2224
  unless_2223_end:
.annotate 'line', 1650
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "lineof" :anon :subid("244_1323686357.86238") :outer("164_1323686357.86238")
    .param pmc param_2228
    .param pmc param_2229
    .param pmc param_2230
    .param pmc param_2231 :optional :named("cache")
    .param int has_param_2231 :opt_flag
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1656
    .lex "self", param_2228
    .lex "$target", param_2229
    .lex "$pos", param_2230
    if has_param_2231, optparam_1109
    new $P102, "Undef"
    set param_2231, $P102
  optparam_1109:
    .lex "$cache", param_2231
.annotate 'line', 1657

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
            # line numbers are generall 1-based
            inc line
            .return (line)
        
.annotate 'line', 1656
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "_block2233"  :subid("245_1323686357.86238") :outer("10_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1814
    .const 'Sub' $P2249 = "250_1323686357.86238" 
    capture_lex $P2249
    .const 'Sub' $P2245 = "249_1323686357.86238" 
    capture_lex $P2245
    .const 'Sub' $P2242 = "248_1323686357.86238" 
    capture_lex $P2242
    .const 'Sub' $P2239 = "247_1323686357.86238" 
    capture_lex $P2239
    .const 'Sub' $P2237 = "246_1323686357.86238" 
    capture_lex $P2237
    .lex "$?PACKAGE", $P2235
    .lex "$?CLASS", $P2236
.annotate 'line', 1830
    .const 'Sub' $P2249 = "250_1323686357.86238" 
    newclosure $P2264, $P2249
.annotate 'line', 1814
    .return ($P2264)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "init" :anon :subid("246_1323686357.86238") :outer("245_1323686357.86238")
    .param pmc param_2238
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1818
    .lex "self", param_2238
.annotate 'line', 1819
    new $P101, "ResizablePMCArray"
    set $P102, param_2238
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_bind_attr_obj $P103, $P104, "@!arguments", 0, $P101
.annotate 'line', 1820
    new $P101, "Hash"
    set $P102, param_2238
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_bind_attr_obj $P103, $P104, "%!options", 1, $P101
.annotate 'line', 1818
    .return ($P101)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "arguments" :anon :subid("247_1323686357.86238") :outer("245_1323686357.86238")
    .param pmc param_2240
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1823
    .lex "self", param_2240
    set $P101, param_2240
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    repr_get_attr_obj $P2241, $P102, $P103, "@!arguments", 0
    unless_null $P2241, vivify_1111
    $P2241 = root_new ['parrot';'ResizablePMCArray']
  vivify_1111:
    .return ($P2241)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "options" :anon :subid("248_1323686357.86238") :outer("245_1323686357.86238")
    .param pmc param_2243
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1824
    .lex "self", param_2243
    set $P101, param_2243
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    repr_get_attr_obj $P2244, $P102, $P103, "%!options", 1
    unless_null $P2244, vivify_1112
    $P2244 = root_new ['parrot';'Hash']
  vivify_1112:
    .return ($P2244)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "add-argument" :anon :subid("249_1323686357.86238") :outer("245_1323686357.86238")
    .param pmc param_2246
    .param pmc param_2247
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1826
    .lex "self", param_2246
    .lex "$x", param_2247
.annotate 'line', 1827
    set $P101, param_2246
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    repr_get_attr_obj $P2248, $P102, $P103, "@!arguments", 0
    unless_null $P2248, vivify_1113
    $P2248 = root_new ['parrot';'ResizablePMCArray']
  vivify_1113:
    set $P104, param_2247
    unless_null $P104, vivify_1114
    new $P104, "Undef"
  vivify_1114:
    push $P2248, $P104
.annotate 'line', 1826
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "add-option" :anon :subid("250_1323686357.86238") :outer("245_1323686357.86238")
    .param pmc param_2250
    .param pmc param_2251
    .param pmc param_2252
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1830
    .const 'Sub' $P2256 = "251_1323686357.86238" 
    capture_lex $P2256
    .lex "self", param_2250
    .lex "$name", param_2251
    .lex "$value", param_2252
.annotate 'line', 1833
    set $P105, param_2251
    unless_null $P105, vivify_1115
    new $P105, "Undef"
  vivify_1115:
    set $P102, param_2250
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_get_attr_obj $P2254, $P103, $P104, "%!options", 1
    unless_null $P2254, vivify_1116
    $P2254 = root_new ['parrot';'Hash']
  vivify_1116:
    exists $I100, $P2254[$P105]
    if $I100, if_2253
.annotate 'line', 1842
    set $P109, param_2252
    unless_null $P109, vivify_1117
    new $P109, "Undef"
  vivify_1117:
    set $P110, param_2251
    unless_null $P110, vivify_1118
    new $P110, "Undef"
  vivify_1118:
    set $P111, param_2250
    nqp_decontainerize $P112, $P111
    find_lex $P113, "$?CLASS"
    repr_get_attr_obj $P2263, $P112, $P113, "%!options", 1
    unless_null $P2263, vivify_1119
    $P2263 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P112, $P113, "%!options", 1, $P2263
  vivify_1119:
    set $P2263[$P110], $P109
.annotate 'line', 1841
    set $P101, $P109
.annotate 'line', 1833
    goto if_2253_end
  if_2253:
    .const 'Sub' $P2256 = "251_1323686357.86238" 
    capture_lex $P2256
    $P108 = $P2256()
    set $P101, $P108
  if_2253_end:
.annotate 'line', 1830
    .return ($P101)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "_block2255"  :anon :subid("251_1323686357.86238") :outer("250_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1834
    new $P106, "Undef"
    set $P2257, $P106
    .lex "$t", $P2257
    find_lex $P107, "self"
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    repr_get_attr_obj $P2258, $P108, $P109, "%!options", 1
    unless_null $P2258, vivify_1120
    $P2258 = root_new ['parrot';'Hash']
  vivify_1120:
    typeof $S100, $P2258
    new $P110, 'String'
    set $P110, $S100
    set $P2257, $P110
.annotate 'line', 1835
    set $P107, $P2257
    unless_null $P107, vivify_1121
    new $P107, "Undef"
  vivify_1121:
    "say"($P107)
.annotate 'line', 1836
    set $P108, $P2257
    unless_null $P108, vivify_1122
    new $P108, "Undef"
  vivify_1122:
    set $S100, $P108
    iseq $I101, $S100, "ResizablePMCArray"
    if $I101, if_2259
.annotate 'line', 1839
    find_lex $P109, "$name"
    unless_null $P109, vivify_1123
    new $P109, "Undef"
  vivify_1123:
    find_lex $P110, "self"
    nqp_decontainerize $P111, $P110
    find_lex $P112, "$?CLASS"
    repr_get_attr_obj $P2261, $P111, $P112, "%!options", 1
    unless_null $P2261, vivify_1124
    $P2261 = root_new ['parrot';'Hash']
  vivify_1124:
    set $P114, $P2261[$P109]
    unless_null $P114, vivify_1125
    new $P114, "Undef"
  vivify_1125:
    find_lex $P115, "$name"
    unless_null $P115, vivify_1126
    new $P115, "Undef"
  vivify_1126:
    new $P116, "ResizablePMCArray"
    push $P116, $P114
    push $P116, $P115
    find_lex $P117, "$name"
    unless_null $P117, vivify_1127
    new $P117, "Undef"
  vivify_1127:
    find_lex $P118, "self"
    nqp_decontainerize $P119, $P118
    find_lex $P120, "$?CLASS"
    repr_get_attr_obj $P2262, $P119, $P120, "%!options", 1
    unless_null $P2262, vivify_1128
    $P2262 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P119, $P120, "%!options", 1, $P2262
  vivify_1128:
    set $P2262[$P117], $P116
.annotate 'line', 1838
    set $P107, $P116
.annotate 'line', 1836
    goto if_2259_end
  if_2259:
.annotate 'line', 1837
    find_lex $P109, "$name"
    unless_null $P109, vivify_1129
    new $P109, "Undef"
  vivify_1129:
    find_lex $P110, "self"
    nqp_decontainerize $P111, $P110
    find_lex $P112, "$?CLASS"
    repr_get_attr_obj $P2260, $P111, $P112, "%!options", 1
    unless_null $P2260, vivify_1130
    $P2260 = root_new ['parrot';'Hash']
  vivify_1130:
    set $P113, $P2260[$P109]
    unless_null $P113, vivify_1131
    new $P113, "Undef"
  vivify_1131:
    find_lex $P114, "$value"
    unless_null $P114, vivify_1132
    new $P114, "Undef"
  vivify_1132:
    push $P113, $P114
.annotate 'line', 1836
    set $P107, $P113
  if_2259_end:
.annotate 'line', 1833
    .return ($P107)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2265"  :subid("252_1323686357.86238") :outer("10_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1847
    .const 'Sub' $P2326 = "264_1323686357.86238" 
    capture_lex $P2326
    .const 'Sub' $P2321 = "263_1323686357.86238" 
    capture_lex $P2321
    .const 'Sub' $P2316 = "262_1323686357.86238" 
    capture_lex $P2316
    .const 'Sub' $P2308 = "261_1323686357.86238" 
    capture_lex $P2308
    .const 'Sub' $P2293 = "259_1323686357.86238" 
    capture_lex $P2293
    .const 'Sub' $P2290 = "258_1323686357.86238" 
    capture_lex $P2290
    .const 'Sub' $P2286 = "257_1323686357.86238" 
    capture_lex $P2286
    .const 'Sub' $P2276 = "255_1323686357.86238" 
    capture_lex $P2276
    .const 'Sub' $P2274 = "254_1323686357.86238" 
    capture_lex $P2274
    .const 'Sub' $P2269 = "253_1323686357.86238" 
    capture_lex $P2269
    .lex "$?PACKAGE", $P2267
    .lex "$?CLASS", $P2268
.annotate 'line', 1912
    .const 'Sub' $P2326 = "264_1323686357.86238" 
    newclosure $P2399, $P2326
.annotate 'line', 1847
    .return ($P2399)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "new" :anon :subid("253_1323686357.86238") :outer("252_1323686357.86238")
    .param pmc param_2270
    .param pmc param_2271
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1853
    .lex "self", param_2270
    .lex "@specs", param_2271
.annotate 'line', 1854
    new $P101, "Undef"
    set $P2272, $P101
    .lex "$obj", $P2272
    set $P102, param_2270
    nqp_decontainerize $P103, $P102
    $P104 = $P103."CREATE"()
    set $P2272, $P104
.annotate 'line', 1855
    set $P102, $P2272
    unless_null $P102, vivify_1133
    new $P102, "Undef"
  vivify_1133:
    set $P2273, param_2271
    unless_null $P2273, vivify_1134
    $P2273 = root_new ['parrot';'ResizablePMCArray']
  vivify_1134:
    $P102."BUILD"($P2273 :named("specs"))
.annotate 'line', 1853
    set $P102, $P2272
    unless_null $P102, vivify_1135
    new $P102, "Undef"
  vivify_1135:
    .return ($P102)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "stop-after-first-arg" :anon :subid("254_1323686357.86238") :outer("252_1323686357.86238")
    .param pmc param_2275
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1859
    .lex "self", param_2275
.annotate 'line', 1860
    new $P101, "Float"
    assign $P101, 1
    set $P102, param_2275
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_bind_attr_obj $P103, $P104, "$!stop-after-first-arg", 3, $P101
.annotate 'line', 1859
    .return ($P101)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "BUILD" :anon :subid("255_1323686357.86238") :outer("252_1323686357.86238")
    .param pmc param_2277
    .param pmc param_2278 :optional :named("specs")
    .param int has_param_2278 :opt_flag
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1863
    .const 'Sub' $P2283 = "256_1323686357.86238" 
    capture_lex $P2283
    .lex "self", param_2277
    if has_param_2278, optparam_1136
    $P2279 = root_new ['parrot';'ResizablePMCArray']
    set param_2278, $P2279
  optparam_1136:
    .lex "@specs", param_2278
.annotate 'line', 1864
    new $P101, "Float"
    assign $P101, 1
    set $P102, param_2277
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_get_attr_obj $P2280, $P103, $P104, "%!stopper", 2
    unless_null $P2280, vivify_1137
    $P2280 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P103, $P104, "%!stopper", 2, $P2280
  vivify_1137:
    set $P2280["--"], $P101
.annotate 'line', 1865
    new $P101, "Float"
    assign $P101, 0
    set $P102, param_2277
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_bind_attr_obj $P103, $P104, "$!stop-after-first-arg", 3, $P101
.annotate 'line', 1866
    set $P2281, param_2278
    unless_null $P2281, vivify_1138
    $P2281 = root_new ['parrot';'ResizablePMCArray']
  vivify_1138:
    defined $I100, $P2281
    unless $I100, for_undef_1139
    iter $P101, $P2281
    new $P103, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P103, loop2285_handler
    push_eh $P103
  loop2285_test:
    unless $P101, loop2285_done
    shift $P102, $P101
  loop2285_redo:
    .const 'Sub' $P2283 = "256_1323686357.86238" 
    capture_lex $P2283
    $P2283($P102)
  loop2285_next:
    goto loop2285_test
  loop2285_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P104, exception, 'type'
    eq $P104, .CONTROL_LOOP_NEXT, loop2285_next
    eq $P104, .CONTROL_LOOP_REDO, loop2285_redo
  loop2285_done:
    pop_eh 
  for_undef_1139:
.annotate 'line', 1863
    .return ($P101)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2282"  :anon :subid("256_1323686357.86238") :outer("255_1323686357.86238")
    .param pmc param_2284
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1866
    .lex "$_", param_2284
.annotate 'line', 1867
    find_lex $P103, "self"
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$_"
    unless_null $P105, vivify_1140
    new $P105, "Undef"
  vivify_1140:
    $P106 = $P104."add-spec"($P105)
.annotate 'line', 1866
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "add-stopper" :anon :subid("257_1323686357.86238") :outer("252_1323686357.86238")
    .param pmc param_2287
    .param pmc param_2288
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1870
    .lex "self", param_2287
    .lex "$x", param_2288
.annotate 'line', 1871
    new $P101, "Float"
    assign $P101, 1
    set $P102, param_2288
    unless_null $P102, vivify_1141
    new $P102, "Undef"
  vivify_1141:
    set $P103, param_2287
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    repr_get_attr_obj $P2289, $P104, $P105, "%!stopper", 2
    unless_null $P2289, vivify_1142
    $P2289 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P104, $P105, "%!stopper", 2, $P2289
  vivify_1142:
    set $P2289[$P102], $P101
.annotate 'line', 1870
    .return ($P101)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "split-option-aliases" :anon :subid("258_1323686357.86238") :outer("252_1323686357.86238")
    .param pmc param_2291
    .param pmc param_2292
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1874
    .lex "self", param_2291
    .lex "$s", param_2292
.annotate 'line', 1875
    set $P101, param_2292
    unless_null $P101, vivify_1143
    new $P101, "Undef"
  vivify_1143:
    set $S100, $P101
    split $P102, "|", $S100
.annotate 'line', 1874
    .return ($P102)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "add-spec" :anon :subid("259_1323686357.86238") :outer("252_1323686357.86238")
    .param pmc param_2294
    .param pmc param_2295
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1879
    .const 'Sub' $P2304 = "260_1323686357.86238" 
    capture_lex $P2304
    .lex "self", param_2294
    .lex "$s", param_2295
.annotate 'line', 1880
    new $P101, "Undef"
    set $P2296, $P101
    .lex "$i", $P2296
.annotate 'line', 1881
    new $P102, "Undef"
    set $P2297, $P102
    .lex "$type", $P2297
.annotate 'line', 1882
    $P2299 = root_new ['parrot';'ResizablePMCArray']
    set $P2298, $P2299
    .lex "@options", $P2298
.annotate 'line', 1880
    set $P103, param_2295
    unless_null $P103, vivify_1144
    new $P103, "Undef"
  vivify_1144:
    set $S100, $P103
    index $I100, $S100, "="
    new $P104, 'Integer'
    set $P104, $I100
    set $P2296, $P104
.annotate 'line', 1879
    set $P103, $P2297
    unless_null $P103, vivify_1145
    new $P103, "Undef"
  vivify_1145:
    set $P2300, $P2298
    unless_null $P2300, vivify_1146
    $P2300 = root_new ['parrot';'ResizablePMCArray']
  vivify_1146:
.annotate 'line', 1883
    set $P103, $P2296
    unless_null $P103, vivify_1147
    new $P103, "Undef"
  vivify_1147:
    set $N100, $P103
    set $N101, 0
    islt $I100, $N100, $N101
    if $I100, if_2301
.annotate 'line', 1887
    set $P104, param_2295
    unless_null $P104, vivify_1148
    new $P104, "Undef"
  vivify_1148:
    set $S100, $P104
    set $P105, $P2296
    unless_null $P105, vivify_1149
    new $P105, "Undef"
  vivify_1149:
    add $P106, $P105, 1
    set $I101, $P106
    substr $S101, $S100, $I101
    new $P107, 'String'
    set $P107, $S101
    set $P2297, $P107
.annotate 'line', 1888
    set $P104, param_2294
    nqp_decontainerize $P105, $P104
    set $P106, param_2295
    unless_null $P106, vivify_1150
    new $P106, "Undef"
  vivify_1150:
    set $S100, $P106
    new $P107, "Float"
    assign $P107, 0
    set $I101, $P107
    set $P108, $P2296
    unless_null $P108, vivify_1151
    new $P108, "Undef"
  vivify_1151:
    set $I102, $P108
    substr $S101, $S100, $I101, $I102
    $P109 = $P105."split-option-aliases"($S101)
    set $P2298, $P109
.annotate 'line', 1886
    goto if_2301_end
  if_2301:
.annotate 'line', 1884
    new $P104, "String"
    assign $P104, "b"
    set $P2297, $P104
.annotate 'line', 1885
    set $P104, param_2294
    nqp_decontainerize $P105, $P104
    set $P106, param_2295
    unless_null $P106, vivify_1152
    new $P106, "Undef"
  vivify_1152:
    $P107 = $P105."split-option-aliases"($P106)
    set $P2298, $P107
  if_2301_end:
.annotate 'line', 1890
    set $P2302, $P2298
    unless_null $P2302, vivify_1153
    $P2302 = root_new ['parrot';'ResizablePMCArray']
  vivify_1153:
    defined $I100, $P2302
    unless $I100, for_undef_1154
    iter $P103, $P2302
    new $P106, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P106, loop2307_handler
    push_eh $P106
  loop2307_test:
    unless $P103, loop2307_done
    shift $P104, $P103
  loop2307_redo:
    .const 'Sub' $P2304 = "260_1323686357.86238" 
    capture_lex $P2304
    $P2304($P104)
  loop2307_next:
    goto loop2307_test
  loop2307_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P107, exception, 'type'
    eq $P107, .CONTROL_LOOP_NEXT, loop2307_next
    eq $P107, .CONTROL_LOOP_REDO, loop2307_redo
  loop2307_done:
    pop_eh 
  for_undef_1154:
.annotate 'line', 1879
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2303"  :anon :subid("260_1323686357.86238") :outer("259_1323686357.86238")
    .param pmc param_2305
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1890
    .lex "$_", param_2305
.annotate 'line', 1891
    find_lex $P105, "$type"
    unless_null $P105, vivify_1155
    new $P105, "Undef"
  vivify_1155:
    find_lex $P106, "$_"
    unless_null $P106, vivify_1156
    new $P106, "Undef"
  vivify_1156:
    find_lex $P107, "self"
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    repr_get_attr_obj $P2306, $P108, $P109, "%!options", 1
    unless_null $P2306, vivify_1157
    $P2306 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P108, $P109, "%!options", 1, $P2306
  vivify_1157:
    set $P2306[$P106], $P105
.annotate 'line', 1890
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "is-option" :anon :subid("261_1323686357.86238") :outer("252_1323686357.86238")
    .param pmc param_2311
    .param pmc param_2312
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1896
    new $P2310, 'ExceptionHandler', [.CONTROL_RETURN]
    set_label $P2310, control_2309
    push_eh $P2310
    .lex "self", param_2311
    .lex "$x", param_2312
.annotate 'line', 1897
    set $P102, param_2312
    unless_null $P102, vivify_1158
    new $P102, "Undef"
  vivify_1158:
    set $S100, $P102
    iseq $I100, $S100, "-"
    unless $I100, unless_2314
    new $P101, 'Integer'
    set $P101, $I100
    goto unless_2314_end
  unless_2314:
    set $P103, param_2312
    unless_null $P103, vivify_1159
    new $P103, "Undef"
  vivify_1159:
    set $S101, $P103
    iseq $I101, $S101, "--"
    new $P101, 'Integer'
    set $P101, $I101
  unless_2314_end:
    unless $P101, if_2313_end
    new $P104, "Exception"
    set $P104['type'], .CONTROL_RETURN
    new $P105, "Float"
    assign $P105, 0
    setattribute $P104, 'payload', $P105
    throw $P104
  if_2313_end:
.annotate 'line', 1898
    set $P101, param_2312
    unless_null $P101, vivify_1160
    new $P101, "Undef"
  vivify_1160:
    set $S100, $P101
    new $P102, "Float"
    assign $P102, 0
    set $I100, $P102
    new $P103, "Float"
    assign $P103, 1
    set $I101, $P103
    substr $S101, $S100, $I100, $I101
    iseq $I102, $S101, "-"
    unless $I102, if_2315_end
    new $P104, "Exception"
    set $P104['type'], .CONTROL_RETURN
    new $P105, "Float"
    assign $P105, 1
    setattribute $P104, 'payload', $P105
    throw $P104
  if_2315_end:
.annotate 'line', 1896
    .return (0)
  control_2309:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P101, exception, "payload"
    .return ($P101)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "wants-value" :anon :subid("262_1323686357.86238") :outer("252_1323686357.86238")
    .param pmc param_2317
    .param pmc param_2318
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1902
    .lex "self", param_2317
    .lex "$x", param_2318
.annotate 'line', 1903
    new $P101, "Undef"
    set $P2319, $P101
    .lex "$spec", $P2319
    set $P102, param_2318
    unless_null $P102, vivify_1161
    new $P102, "Undef"
  vivify_1161:
    set $P103, param_2317
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    repr_get_attr_obj $P2320, $P104, $P105, "%!options", 1
    unless_null $P2320, vivify_1162
    $P2320 = root_new ['parrot';'Hash']
  vivify_1162:
    set $P106, $P2320[$P102]
    unless_null $P106, vivify_1163
    new $P106, "Undef"
  vivify_1163:
    set $P2319, $P106
.annotate 'line', 1904
    set $P102, $P2319
    unless_null $P102, vivify_1164
    new $P102, "Undef"
  vivify_1164:
    set $S100, $P102
    new $P103, "Float"
    assign $P103, 0
    set $I100, $P103
    new $P104, "Float"
    assign $P104, 1
    set $I101, $P104
    substr $S101, $S100, $I100, $I101
    iseq $I102, $S101, "s"
.annotate 'line', 1902
    .return ($I102)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "optional-value" :anon :subid("263_1323686357.86238") :outer("252_1323686357.86238")
    .param pmc param_2322
    .param pmc param_2323
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1907
    .lex "self", param_2322
    .lex "$x", param_2323
.annotate 'line', 1908
    new $P101, "Undef"
    set $P2324, $P101
    .lex "$spec", $P2324
    set $P102, param_2323
    unless_null $P102, vivify_1165
    new $P102, "Undef"
  vivify_1165:
    set $P103, param_2322
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    repr_get_attr_obj $P2325, $P104, $P105, "%!options", 1
    unless_null $P2325, vivify_1166
    $P2325 = root_new ['parrot';'Hash']
  vivify_1166:
    set $P106, $P2325[$P102]
    unless_null $P106, vivify_1167
    new $P106, "Undef"
  vivify_1167:
    set $P2324, $P106
.annotate 'line', 1909
    set $P102, $P2324
    unless_null $P102, vivify_1168
    new $P102, "Undef"
  vivify_1168:
    set $S100, $P102
    iseq $I100, $S100, "s?"
.annotate 'line', 1907
    .return ($I100)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "parse" :anon :subid("264_1323686357.86238") :outer("252_1323686357.86238")
    .param pmc param_2329
    .param pmc param_2330
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1912
    .const 'Sub' $P2355 = "267_1323686357.86238" 
    capture_lex $P2355
    .const 'Sub' $P2347 = "266_1323686357.86238" 
    capture_lex $P2347
    .const 'Sub' $P2335 = "265_1323686357.86238" 
    capture_lex $P2335
    new $P2328, 'ExceptionHandler', [.CONTROL_RETURN]
    set_label $P2328, control_2327
    push_eh $P2328
    .lex "self", param_2329
    .lex "@args", param_2330
.annotate 'line', 1913
    new $P101, "Undef"
    set $P2331, $P101
    .lex "$i", $P2331
.annotate 'line', 1914
    new $P102, "Undef"
    set $P2332, $P102
    .lex "$arg-count", $P2332
.annotate 'line', 1916
    new $P103, "Undef"
    set $P2333, $P103
    .lex "$result", $P2333
.annotate 'line', 1920
    .const 'Sub' $P2335 = "265_1323686357.86238" 
    newclosure $P2345, $P2335
    set $P2334, $P2345
    .lex "get-value", $P2334
.annotate 'line', 1935
    .const 'Sub' $P2347 = "266_1323686357.86238" 
    newclosure $P2352, $P2347
    set $P2346, $P2352
    .lex "slurp-rest", $P2346
.annotate 'line', 1913
    new $P105, "Float"
    assign $P105, 0
    set $P2331, $P105
.annotate 'line', 1914
    set $P2353, param_2330
    unless_null $P2353, vivify_1194
    $P2353 = root_new ['parrot';'ResizablePMCArray']
  vivify_1194:
    set $N100, $P2353
    new $P105, 'Float'
    set $P105, $N100
    set $P2332, $P105
.annotate 'line', 1916
    get_hll_global $P105, "GLOBAL"
    nqp_get_package_through_who $P106, $P105, "HLL"
    nqp_get_package_through_who $P107, $P106, "CommandLine"
    get_who $P108, $P107
    set $P109, $P108["Result"]
    $P110 = $P109."new"()
    set $P2333, $P110
.annotate 'line', 1917
    set $P105, $P2333
    unless_null $P105, vivify_1195
    new $P105, "Undef"
  vivify_1195:
    $P105."init"()
.annotate 'line', 1912
    set $P105, $P2334
    set $P105, $P2346
.annotate 'line', 1943
    new $P108, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P108, loop2398_handler
    push_eh $P108
  loop2398_test:
    set $P105, $P2331
    unless_null $P105, vivify_1196
    new $P105, "Undef"
  vivify_1196:
    set $N100, $P105
    set $P106, $P2332
    unless_null $P106, vivify_1197
    new $P106, "Undef"
  vivify_1197:
    set $N101, $P106
    islt $I101, $N100, $N101
    unless $I101, loop2398_done
  loop2398_redo:
    .const 'Sub' $P2355 = "267_1323686357.86238" 
    capture_lex $P2355
    $P2355()
  loop2398_next:
    goto loop2398_test
  loop2398_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P109, exception, 'type'
    eq $P109, .CONTROL_LOOP_NEXT, loop2398_next
    eq $P109, .CONTROL_LOOP_REDO, loop2398_redo
  loop2398_done:
    pop_eh 
.annotate 'line', 1998
    new $P105, "Exception"
    set $P105['type'], .CONTROL_RETURN
    set $P106, $P2333
    unless_null $P106, vivify_1257
    new $P106, "Undef"
  vivify_1257:
    setattribute $P105, 'payload', $P106
    throw $P105
.annotate 'line', 1912
    .return ()
  control_2327:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P105, exception, "payload"
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "get-value"  :subid("265_1323686357.86238") :outer("264_1323686357.86238")
    .param pmc param_2336
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1920
    .lex "$opt", param_2336
.annotate 'line', 1921
    find_lex $P105, "$i"
    unless_null $P105, vivify_1169
    new $P105, "Undef"
  vivify_1169:
    set $N100, $P105
    find_lex $P106, "$arg-count"
    unless_null $P106, vivify_1170
    new $P106, "Undef"
  vivify_1170:
    sub $P107, $P106, 1
    set $N101, $P107
    iseq $I100, $N100, $N101
    if $I100, if_2337
.annotate 'line', 1923
    find_lex $P109, "self"
    nqp_decontainerize $P110, $P109
    find_lex $P111, "$i"
    unless_null $P111, vivify_1171
    new $P111, "Undef"
  vivify_1171:
    add $P112, $P111, 1
    set $I101, $P112
    find_lex $P2339, "@args"
    unless_null $P2339, vivify_1172
    $P2339 = root_new ['parrot';'ResizablePMCArray']
  vivify_1172:
    set $P113, $P2339[$I101]
    unless_null $P113, vivify_1173
    new $P113, "Undef"
  vivify_1173:
    $P114 = $P110."is-option"($P113)
    if $P114, if_2338
.annotate 'line', 1925
    find_lex $P116, "$i"
    unless_null $P116, vivify_1174
    new $P116, "Undef"
  vivify_1174:
    add $P117, $P116, 1
    set $I102, $P117
    find_lex $P2341, "@args"
    unless_null $P2341, vivify_1175
    $P2341 = root_new ['parrot';'ResizablePMCArray']
  vivify_1175:
    set $P118, $P2341[$I102]
    unless_null $P118, vivify_1176
    new $P118, "Undef"
  vivify_1176:
    find_lex $P119, "self"
    nqp_decontainerize $P120, $P119
    find_lex $P121, "$?CLASS"
    repr_get_attr_obj $P2342, $P120, $P121, "%!stopper", 2
    unless_null $P2342, vivify_1177
    $P2342 = root_new ['parrot';'Hash']
  vivify_1177:
    set $P122, $P2342[$P118]
    unless_null $P122, vivify_1178
    new $P122, "Undef"
  vivify_1178:
    if $P122, if_2340
.annotate 'line', 1927
    find_lex $P123, "$i"
    unless_null $P123, vivify_1179
    new $P123, "Undef"
  vivify_1179:
    clone $P2343, $P123
    inc $P123
    find_lex $P123, "$i"
    unless_null $P123, vivify_1180
    new $P123, "Undef"
  vivify_1180:
    set $I103, $P123
    find_lex $P2344, "@args"
    unless_null $P2344, vivify_1181
    $P2344 = root_new ['parrot';'ResizablePMCArray']
  vivify_1181:
    set $P124, $P2344[$I103]
    unless_null $P124, vivify_1182
    new $P124, "Undef"
  vivify_1182:
    set $P115, $P124
.annotate 'line', 1925
    goto if_2340_end
  if_2340:
.annotate 'line', 1926
    new $P123, 'String'
    set $P123, "Option "
    set $P124, param_2336
    unless_null $P124, vivify_1183
    new $P124, "Undef"
  vivify_1183:
    concat $P125, $P123, $P124
    concat $P126, $P125, " needs a value, but is followed by a stopper"
    die $P126
  if_2340_end:
.annotate 'line', 1925
    set $P108, $P115
.annotate 'line', 1923
    goto if_2338_end
  if_2338:
.annotate 'line', 1924
    new $P115, 'String'
    set $P115, "Option "
    set $P116, param_2336
    unless_null $P116, vivify_1184
    new $P116, "Undef"
  vivify_1184:
    concat $P117, $P115, $P116
    concat $P118, $P117, " needs a value, but is followed by an option"
    die $P118
  if_2338_end:
.annotate 'line', 1923
    set $P104, $P108
.annotate 'line', 1921
    goto if_2337_end
  if_2337:
.annotate 'line', 1922
    new $P108, 'String'
    set $P108, "Option "
    set $P109, param_2336
    unless_null $P109, vivify_1185
    new $P109, "Undef"
  vivify_1185:
    concat $P110, $P108, $P109
    concat $P111, $P110, " needs a value"
    die $P111
  if_2337_end:
.annotate 'line', 1920
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "slurp-rest"  :subid("266_1323686357.86238") :outer("264_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1935
    find_lex $P105, "$i"
    unless_null $P105, vivify_1186
    new $P105, "Undef"
  vivify_1186:
    clone $P2348, $P105
    inc $P105
.annotate 'line', 1937
    new $P107, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P107, loop2351_handler
    push_eh $P107
  loop2351_test:
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
    islt $I100, $N100, $N101
    unless $I100, loop2351_done
  loop2351_redo:
.annotate 'line', 1938
    find_lex $P107, "$result"
    unless_null $P107, vivify_1189
    new $P107, "Undef"
  vivify_1189:
    find_lex $P108, "$i"
    unless_null $P108, vivify_1190
    new $P108, "Undef"
  vivify_1190:
    set $I101, $P108
    find_lex $P2349, "@args"
    unless_null $P2349, vivify_1191
    $P2349 = root_new ['parrot';'ResizablePMCArray']
  vivify_1191:
    set $P109, $P2349[$I101]
    unless_null $P109, vivify_1192
    new $P109, "Undef"
  vivify_1192:
    $P107."add-argument"($P109)
.annotate 'line', 1937
    find_lex $P107, "$i"
    unless_null $P107, vivify_1193
    new $P107, "Undef"
  vivify_1193:
    clone $P2350, $P107
    inc $P107
  loop2351_next:
    goto loop2351_test
  loop2351_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P108, exception, 'type'
    eq $P108, .CONTROL_LOOP_NEXT, loop2351_next
    eq $P108, .CONTROL_LOOP_REDO, loop2351_redo
  loop2351_done:
    pop_eh 
.annotate 'line', 1935
    .return ($I100)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2354"  :anon :subid("267_1323686357.86238") :outer("264_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1943
    .const 'Sub' $P2378 = "269_1323686357.86238" 
    capture_lex $P2378
    .const 'Sub' $P2361 = "268_1323686357.86238" 
    capture_lex $P2361
.annotate 'line', 1944
    new $P107, "Undef"
    set $P2356, $P107
    .lex "$cur", $P2356
    find_lex $P108, "$i"
    unless_null $P108, vivify_1198
    new $P108, "Undef"
  vivify_1198:
    set $I102, $P108
    find_lex $P2357, "@args"
    unless_null $P2357, vivify_1199
    $P2357 = root_new ['parrot';'ResizablePMCArray']
  vivify_1199:
    set $P109, $P2357[$I102]
    unless_null $P109, vivify_1200
    new $P109, "Undef"
  vivify_1200:
    set $P2356, $P109
.annotate 'line', 1945
    find_lex $P108, "self"
    nqp_decontainerize $P109, $P108
    set $P110, $P2356
    unless_null $P110, vivify_1201
    new $P110, "Undef"
  vivify_1201:
    $P111 = $P109."is-option"($P110)
    if $P111, if_2358
.annotate 'line', 1990
    set $P112, $P2356
    unless_null $P112, vivify_1202
    new $P112, "Undef"
  vivify_1202:
    find_lex $P113, "self"
    nqp_decontainerize $P114, $P113
    find_lex $P115, "$?CLASS"
    repr_get_attr_obj $P2395, $P114, $P115, "%!stopper", 2
    unless_null $P2395, vivify_1203
    $P2395 = root_new ['parrot';'Hash']
  vivify_1203:
    set $P116, $P2395[$P112]
    unless_null $P116, vivify_1204
    new $P116, "Undef"
  vivify_1204:
    if $P116, if_2394
.annotate 'line', 1993
    find_lex $P117, "$result"
    unless_null $P117, vivify_1205
    new $P117, "Undef"
  vivify_1205:
    set $P118, $P2356
    unless_null $P118, vivify_1206
    new $P118, "Undef"
  vivify_1206:
    $P117."add-argument"($P118)
.annotate 'line', 1994
    find_lex $P117, "self"
    nqp_decontainerize $P118, $P117
    find_lex $P119, "$?CLASS"
    repr_get_attr_obj $P120, $P118, $P119, "$!stop-after-first-arg", 3
    unless_null $P120, vivify_1207
    new $P120, "Undef"
  vivify_1207:
    unless $P120, if_2396_end
    "slurp-rest"()
  if_2396_end:
.annotate 'line', 1992
    goto if_2394_end
  if_2394:
.annotate 'line', 1991
    "slurp-rest"()
  if_2394_end:
.annotate 'line', 1990
    goto if_2358_end
  if_2358:
.annotate 'line', 1946
    set $P112, $P2356
    unless_null $P112, vivify_1208
    new $P112, "Undef"
  vivify_1208:
    set $S100, $P112
    new $P113, "Float"
    assign $P113, 0
    set $I102, $P113
    new $P114, "Float"
    assign $P114, 2
    set $I103, $P114
    substr $S101, $S100, $I102, $I103
    iseq $I104, $S101, "--"
    if $I104, if_2359
.annotate 'line', 1968
    .const 'Sub' $P2378 = "269_1323686357.86238" 
    capture_lex $P2378
    $P2378()
    goto if_2359_end
  if_2359:
.annotate 'line', 1946
    .const 'Sub' $P2361 = "268_1323686357.86238" 
    capture_lex $P2361
    $P2361()
  if_2359_end:
  if_2358_end:
.annotate 'line', 1943
    find_lex $P108, "$i"
    unless_null $P108, vivify_1256
    new $P108, "Undef"
  vivify_1256:
    clone $P2397, $P108
    inc $P108
    .return ($P2397)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2377"  :anon :subid("269_1323686357.86238") :outer("267_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1968
    .const 'Sub' $P2387 = "270_1323686357.86238" 
    capture_lex $P2387
.annotate 'line', 1969
    new $P120, "Undef"
    set $P2379, $P120
    .lex "$opt", $P2379
    find_lex $P121, "$cur"
    unless_null $P121, vivify_1209
    new $P121, "Undef"
  vivify_1209:
    set $S102, $P121
    new $P122, "Float"
    assign $P122, 1
    set $I105, $P122
    substr $S103, $S102, $I105
    new $P123, 'String'
    set $P123, $S103
    set $P2379, $P123
.annotate 'line', 1970
    set $P122, $P2379
    unless_null $P122, vivify_1210
    new $P122, "Undef"
  vivify_1210:
    set $S102, $P122
    length $I105, $S102
    set $N102, $I105
    set $N103, 1
    iseq $I106, $N102, $N103
    if $I106, if_2380
.annotate 'line', 1980
    .const 'Sub' $P2387 = "270_1323686357.86238" 
    capture_lex $P2387
    $P126 = $P2387()
    set $P121, $P126
.annotate 'line', 1970
    goto if_2380_end
  if_2380:
.annotate 'line', 1972
    set $P123, $P2379
    unless_null $P123, vivify_1218
    new $P123, "Undef"
  vivify_1218:
    find_lex $P124, "self"
    nqp_decontainerize $P125, $P124
    find_lex $P126, "$?CLASS"
    repr_get_attr_obj $P2382, $P125, $P126, "%!options", 1
    unless_null $P2382, vivify_1219
    $P2382 = root_new ['parrot';'Hash']
  vivify_1219:
    set $P127, $P2382[$P123]
    unless_null $P127, vivify_1220
    new $P127, "Undef"
  vivify_1220:
    if $P127, unless_2381_end
    new $P128, 'String'
    set $P128, "No such option -"
    set $P129, $P2379
    unless_null $P129, vivify_1221
    new $P129, "Undef"
  vivify_1221:
    concat $P130, $P128, $P129
    die $P130
  unless_2381_end:
.annotate 'line', 1973
    find_lex $P123, "self"
    nqp_decontainerize $P124, $P123
    set $P125, $P2379
    unless_null $P125, vivify_1222
    new $P125, "Undef"
  vivify_1222:
    $P126 = $P124."wants-value"($P125)
    if $P126, if_2383
.annotate 'line', 1977
    find_lex $P127, "$result"
    unless_null $P127, vivify_1223
    new $P127, "Undef"
  vivify_1223:
    set $P128, $P2379
    unless_null $P128, vivify_1224
    new $P128, "Undef"
  vivify_1224:
    $P127."add-option"($P128, 1)
.annotate 'line', 1976
    goto if_2383_end
  if_2383:
.annotate 'line', 1974
    find_lex $P127, "$result"
    unless_null $P127, vivify_1225
    new $P127, "Undef"
  vivify_1225:
    set $P128, $P2379
    unless_null $P128, vivify_1226
    new $P128, "Undef"
  vivify_1226:
.annotate 'line', 1975
    new $P129, 'String'
    set $P129, "-"
    set $P130, $P2379
    unless_null $P130, vivify_1227
    new $P130, "Undef"
  vivify_1227:
    concat $P131, $P129, $P130
    $P132 = "get-value"($P131)
    $P127."add-option"($P128, $P132)
  if_2383_end:
.annotate 'line', 1979
    new $P124, 'String'
    set $P124, "-"
    set $P125, $P2379
    unless_null $P125, vivify_1228
    new $P125, "Undef"
  vivify_1228:
    concat $P126, $P124, $P125
    find_lex $P127, "self"
    nqp_decontainerize $P128, $P127
    find_lex $P129, "$?CLASS"
    repr_get_attr_obj $P2385, $P128, $P129, "%!stopper", 2
    unless_null $P2385, vivify_1229
    $P2385 = root_new ['parrot';'Hash']
  vivify_1229:
    set $P130, $P2385[$P126]
    unless_null $P130, vivify_1230
    new $P130, "Undef"
  vivify_1230:
    if $P130, if_2384
    set $P123, $P130
    goto if_2384_end
  if_2384:
    $P131 = "slurp-rest"()
    set $P123, $P131
  if_2384_end:
.annotate 'line', 1970
    set $P121, $P123
  if_2380_end:
.annotate 'line', 1968
    .return ($P121)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "_block2386"  :anon :subid("270_1323686357.86238") :outer("269_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1980
    .const 'Sub' $P2390 = "271_1323686357.86238" 
    capture_lex $P2390
.annotate 'line', 1982
    new $P124, "Undef"
    set $P2388, $P124
    .lex "$iter", $P2388
    find_lex $P125, "$opt"
    unless_null $P125, vivify_1211
    new $P125, "Undef"
  vivify_1211:
    iter $P126, $P125
    set $P2388, $P126
.annotate 'line', 1983
    new $P127, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P127, loop2393_handler
    push_eh $P127
  loop2393_test:
    set $P125, $P2388
    unless_null $P125, vivify_1212
    new $P125, "Undef"
  vivify_1212:
    unless $P125, loop2393_done
  loop2393_redo:
    .const 'Sub' $P2390 = "271_1323686357.86238" 
    capture_lex $P2390
    $P2390()
  loop2393_next:
    goto loop2393_test
  loop2393_handler:
    .local pmc exception 
    .get_results (exception) 
    pop_upto_eh exception
    getattribute $P128, exception, 'type'
    eq $P128, .CONTROL_LOOP_NEXT, loop2393_next
    eq $P128, .CONTROL_LOOP_REDO, loop2393_redo
  loop2393_done:
    pop_eh 
.annotate 'line', 1980
    .return ($P125)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2389"  :anon :subid("271_1323686357.86238") :outer("270_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1984
    new $P126, "Undef"
    set $P2391, $P126
    .lex "$o", $P2391
    find_lex $P127, "$iter"
    unless_null $P127, vivify_1213
    new $P127, "Undef"
  vivify_1213:
    shift $P128, $P127
    set $P2391, $P128
.annotate 'line', 1985
    find_lex $P127, "self"
    nqp_decontainerize $P128, $P127
    set $P129, $P2391
    unless_null $P129, vivify_1214
    new $P129, "Undef"
  vivify_1214:
    $P130 = $P128."wants-value"($P129)
    unless $P130, if_2392_end
    new $P131, 'String'
    set $P131, "Option -"
    set $P132, $P2391
    unless_null $P132, vivify_1215
    new $P132, "Undef"
  vivify_1215:
    concat $P133, $P131, $P132
    concat $P134, $P133, " requires a value and cannot be grouped"
    die $P134
  if_2392_end:
.annotate 'line', 1986
    find_lex $P127, "$result"
    unless_null $P127, vivify_1216
    new $P127, "Undef"
  vivify_1216:
    set $P128, $P2391
    unless_null $P128, vivify_1217
    new $P128, "Undef"
  vivify_1217:
    $P129 = $P127."add-option"($P128, 1)
.annotate 'line', 1983
    .return ($P129)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2360"  :anon :subid("268_1323686357.86238") :outer("267_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1948
    new $P115, "Undef"
    set $P2362, $P115
    .lex "$opt", $P2362
.annotate 'line', 1949
    new $P116, "Undef"
    set $P2363, $P116
    .lex "$idx", $P2363
.annotate 'line', 1950
    new $P117, "Undef"
    set $P2364, $P117
    .lex "$value", $P2364
.annotate 'line', 1951
    new $P118, "Undef"
    set $P2365, $P118
    .lex "$has-value", $P2365
.annotate 'line', 1948
    find_lex $P119, "$i"
    unless_null $P119, vivify_1231
    new $P119, "Undef"
  vivify_1231:
    set $I105, $P119
    find_lex $P2366, "@args"
    unless_null $P2366, vivify_1232
    $P2366 = root_new ['parrot';'ResizablePMCArray']
  vivify_1232:
    set $P120, $P2366[$I105]
    unless_null $P120, vivify_1233
    new $P120, "Undef"
  vivify_1233:
    set $S102, $P120
    new $P121, "Float"
    assign $P121, 2
    set $I106, $P121
    substr $S103, $S102, $I106
    new $P122, 'String'
    set $P122, $S103
    set $P2362, $P122
.annotate 'line', 1949
    set $P119, $P2362
    unless_null $P119, vivify_1234
    new $P119, "Undef"
  vivify_1234:
    set $S102, $P119
    index $I105, $S102, "="
    new $P120, 'Integer'
    set $P120, $I105
    set $P2363, $P120
.annotate 'line', 1950
    new $P119, "Float"
    assign $P119, 1
    set $P2364, $P119
.annotate 'line', 1951
    new $P119, "Float"
    assign $P119, 0
    set $P2365, $P119
.annotate 'line', 1953
    set $P119, $P2363
    unless_null $P119, vivify_1235
    new $P119, "Undef"
  vivify_1235:
    set $N102, $P119
    set $N103, 0
    isge $I105, $N102, $N103
    if $I105, if_2367
.annotate 'line', 1957
    find_lex $P120, "self"
    nqp_decontainerize $P121, $P120
    set $P122, $P2362
    unless_null $P122, vivify_1236
    new $P122, "Undef"
  vivify_1236:
    $P123 = $P121."optional-value"($P122)
    unless $P123, if_2368_end
.annotate 'line', 1958
    new $P124, "String"
    assign $P124, ""
    set $P2364, $P124
.annotate 'line', 1959
    new $P124, "Float"
    assign $P124, 1
    set $P2365, $P124
  if_2368_end:
.annotate 'line', 1957
    goto if_2367_end
  if_2367:
.annotate 'line', 1954
    set $P120, $P2362
    unless_null $P120, vivify_1237
    new $P120, "Undef"
  vivify_1237:
    set $S102, $P120
    set $P121, $P2363
    unless_null $P121, vivify_1238
    new $P121, "Undef"
  vivify_1238:
    add $P122, $P121, 1
    set $I106, $P122
    substr $S103, $S102, $I106
    new $P123, 'String'
    set $P123, $S103
    set $P2364, $P123
.annotate 'line', 1955
    set $P120, $P2362
    unless_null $P120, vivify_1239
    new $P120, "Undef"
  vivify_1239:
    set $S102, $P120
    new $P121, "Float"
    assign $P121, 0
    set $I106, $P121
    set $P122, $P2363
    unless_null $P122, vivify_1240
    new $P122, "Undef"
  vivify_1240:
    set $I107, $P122
    substr $S103, $S102, $I106, $I107
    new $P123, 'String'
    set $P123, $S103
    set $P2362, $P123
.annotate 'line', 1956
    new $P120, "Float"
    assign $P120, 1
    set $P2365, $P120
  if_2367_end:
.annotate 'line', 1961
    set $P122, $P2362
    unless_null $P122, vivify_1241
    new $P122, "Undef"
  vivify_1241:
    find_lex $P119, "self"
    nqp_decontainerize $P120, $P119
    find_lex $P121, "$?CLASS"
    repr_get_attr_obj $P2370, $P120, $P121, "%!options", 1
    unless_null $P2370, vivify_1242
    $P2370 = root_new ['parrot';'Hash']
  vivify_1242:
    exists $I105, $P2370[$P122]
    if $I105, unless_2369_end
    new $P123, 'String'
    set $P123, "Illegal option --"
    set $P124, $P2362
    unless_null $P124, vivify_1243
    new $P124, "Undef"
  vivify_1243:
    concat $P125, $P123, $P124
    die $P125
  unless_2369_end:
.annotate 'line', 1962
    find_lex $P120, "self"
    nqp_decontainerize $P121, $P120
    set $P122, $P2362
    unless_null $P122, vivify_1244
    new $P122, "Undef"
  vivify_1244:
    $P123 = $P121."wants-value"($P122)
    isfalse $I105, $P123
    if $I105, if_2372
    new $P119, 'Integer'
    set $P119, $I105
    goto if_2372_end
  if_2372:
    set $P124, $P2365
    unless_null $P124, vivify_1245
    new $P124, "Undef"
  vivify_1245:
    set $P119, $P124
  if_2372_end:
    unless $P119, if_2371_end
    new $P125, 'String'
    set $P125, "Option --"
    set $P126, $P2362
    unless_null $P126, vivify_1246
    new $P126, "Undef"
  vivify_1246:
    concat $P127, $P125, $P126
    concat $P128, $P127, " does not allow a value"
    die $P128
  if_2371_end:
.annotate 'line', 1963
    set $P120, $P2365
    unless_null $P120, vivify_1247
    new $P120, "Undef"
  vivify_1247:
    isfalse $I105, $P120
    if $I105, if_2374
    new $P119, 'Integer'
    set $P119, $I105
    goto if_2374_end
  if_2374:
    find_lex $P121, "self"
    nqp_decontainerize $P122, $P121
    set $P123, $P2362
    unless_null $P123, vivify_1248
    new $P123, "Undef"
  vivify_1248:
    $P124 = $P122."wants-value"($P123)
    set $P119, $P124
  if_2374_end:
    unless $P119, if_2373_end
.annotate 'line', 1964
    new $P125, 'String'
    set $P125, "--"
    set $P126, $P2362
    unless_null $P126, vivify_1249
    new $P126, "Undef"
  vivify_1249:
    concat $P127, $P125, $P126
    $P128 = "get-value"($P127)
    set $P2364, $P128
  if_2373_end:
.annotate 'line', 1966
    find_lex $P119, "$result"
    unless_null $P119, vivify_1250
    new $P119, "Undef"
  vivify_1250:
    set $P120, $P2362
    unless_null $P120, vivify_1251
    new $P120, "Undef"
  vivify_1251:
    set $P121, $P2364
    unless_null $P121, vivify_1252
    new $P121, "Undef"
  vivify_1252:
    $P119."add-option"($P120, $P121)
.annotate 'line', 1967
    new $P120, 'String'
    set $P120, "--"
    set $P121, $P2362
    unless_null $P121, vivify_1253
    new $P121, "Undef"
  vivify_1253:
    concat $P122, $P120, $P121
    find_lex $P123, "self"
    nqp_decontainerize $P124, $P123
    find_lex $P125, "$?CLASS"
    repr_get_attr_obj $P2376, $P124, $P125, "%!stopper", 2
    unless_null $P2376, vivify_1254
    $P2376 = root_new ['parrot';'Hash']
  vivify_1254:
    set $P126, $P2376[$P122]
    unless_null $P126, vivify_1255
    new $P126, "Undef"
  vivify_1255:
    if $P126, if_2375
    set $P119, $P126
    goto if_2375_end
  if_2375:
    find_lex $P127, "slurp-rest"
    set $P119, $P127
  if_2375_end:
.annotate 'line', 1946
    .return ($P119)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block2400"  :subid("272_1323686357.86238") :outer("10_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 2033
    .const 'Sub' $P2496 = "292_1323686357.86238" 
    capture_lex $P2496
    .const 'Sub' $P2494 = "291_1323686357.86238" 
    capture_lex $P2494
    .const 'Sub' $P2492 = "290_1323686357.86238" 
    capture_lex $P2492
    .const 'Sub' $P2476 = "288_1323686357.86238" 
    capture_lex $P2476
    .const 'Sub' $P2469 = "287_1323686357.86238" 
    capture_lex $P2469
    .const 'Sub' $P2467 = "286_1323686357.86238" 
    capture_lex $P2467
    .const 'Sub' $P2461 = "285_1323686357.86238" 
    capture_lex $P2461
    .const 'Sub' $P2455 = "284_1323686357.86238" 
    capture_lex $P2455
    .const 'Sub' $P2451 = "283_1323686357.86238" 
    capture_lex $P2451
    .const 'Sub' $P2448 = "282_1323686357.86238" 
    capture_lex $P2448
    .const 'Sub' $P2442 = "281_1323686357.86238" 
    capture_lex $P2442
    .const 'Sub' $P2435 = "280_1323686357.86238" 
    capture_lex $P2435
    .const 'Sub' $P2429 = "279_1323686357.86238" 
    capture_lex $P2429
    .const 'Sub' $P2424 = "278_1323686357.86238" 
    capture_lex $P2424
    .const 'Sub' $P2419 = "277_1323686357.86238" 
    capture_lex $P2419
    .const 'Sub' $P2406 = "273_1323686357.86238" 
    capture_lex $P2406
    .lex "Event", $P2402
    .lex "$?PACKAGE", $P2403
    .lex "$?CLASS", $P2404
.annotate 'line', 2035
    .const 'Sub' $P2406 = "273_1323686357.86238" 
    capture_lex $P2406
    $P2406()
.annotate 'line', 2220
    .const 'Sub' $P2496 = "292_1323686357.86238" 
    newclosure $P2499, $P2496
.annotate 'line', 2033
    .return ($P2499)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block2405"  :anon :subid("273_1323686357.86238") :outer("272_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 2035
    .const 'Sub' $P2413 = "276_1323686357.86238" 
    capture_lex $P2413
    .const 'Sub' $P2411 = "275_1323686357.86238" 
    capture_lex $P2411
    .const 'Sub' $P2409 = "274_1323686357.86238" 
    capture_lex $P2409
    .lex "$?PACKAGE", $P2407
    .lex "$?CLASS", $P2408
.annotate 'line', 2044
    .const 'Sub' $P2413 = "276_1323686357.86238" 
    newclosure $P2418, $P2413
.annotate 'line', 2035
    .return ($P2418)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "deserialize_past" :anon :subid("274_1323686357.86238") :outer("273_1323686357.86238")
    .param pmc param_2410
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 2038
    .lex "self", param_2410
    set $P101, param_2410
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    repr_get_attr_obj $P104, $P102, $P103, "$!deserialize_past", 0
    unless_null $P104, vivify_1258
    new $P104, "Undef"
  vivify_1258:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "fixup_past" :anon :subid("275_1323686357.86238") :outer("273_1323686357.86238")
    .param pmc param_2412
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 2042
    .lex "self", param_2412
    set $P101, param_2412
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    repr_get_attr_obj $P104, $P102, $P103, "$!fixup_past", 1
    unless_null $P104, vivify_1259
    new $P104, "Undef"
  vivify_1259:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "new" :anon :subid("276_1323686357.86238") :outer("273_1323686357.86238")
    .param pmc param_2414
    .param pmc param_2415 :optional :named("deserialize_past")
    .param int has_param_2415 :opt_flag
    .param pmc param_2416 :optional :named("fixup_past")
    .param int has_param_2416 :opt_flag
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 2044
    .lex "self", param_2414
    if has_param_2415, optparam_1260
    new $P101, "Undef"
    set param_2415, $P101
  optparam_1260:
    .lex "$deserialize_past", param_2415
    if has_param_2416, optparam_1261
    new $P102, "Undef"
    set param_2416, $P102
  optparam_1261:
    .lex "$fixup_past", param_2416
.annotate 'line', 2045
    new $P103, "Undef"
    set $P2417, $P103
    .lex "$node", $P2417
    set $P104, param_2414
    nqp_decontainerize $P105, $P104
    repr_instance_of $P106, $P105
    set $P2417, $P106
.annotate 'line', 2046
    set $P104, $P2417
    unless_null $P104, vivify_1262
    new $P104, "Undef"
  vivify_1262:
    find_lex $P105, "Event"
    set $P106, param_2415
    unless_null $P106, vivify_1263
    new $P106, "Undef"
  vivify_1263:
    setattribute $P104, $P105, "$!deserialize_past", $P106
.annotate 'line', 2047
    set $P104, $P2417
    unless_null $P104, vivify_1264
    new $P104, "Undef"
  vivify_1264:
    find_lex $P105, "Event"
    set $P106, param_2416
    unless_null $P106, vivify_1265
    new $P106, "Undef"
  vivify_1265:
    setattribute $P104, $P105, "$!fixup_past", $P106
.annotate 'line', 2044
    set $P104, $P2417
    unless_null $P104, vivify_1266
    new $P104, "Undef"
  vivify_1266:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "new" :anon :subid("277_1323686357.86238") :outer("272_1323686357.86238")
    .param pmc param_2420
    .param pmc param_2421 :named("handle")
    .param pmc param_2422 :optional :named("description")
    .param int has_param_2422 :opt_flag
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 2071
    .lex "self", param_2420
    .lex "$handle", param_2421
    if has_param_2422, optparam_1267
    new $P101, "String"
    assign $P101, "<unknown>"
    set param_2422, $P101
  optparam_1267:
    .lex "$description", param_2422
.annotate 'line', 2072
    new $P102, "Undef"
    set $P2423, $P102
    .lex "$obj", $P2423
    set $P103, param_2420
    nqp_decontainerize $P104, $P103
    $P105 = $P104."CREATE"()
    set $P2423, $P105
.annotate 'line', 2073
    set $P103, $P2423
    unless_null $P103, vivify_1268
    new $P103, "Undef"
  vivify_1268:
    set $P104, param_2421
    unless_null $P104, vivify_1269
    new $P104, "Undef"
  vivify_1269:
    set $P105, param_2422
    unless_null $P105, vivify_1270
    new $P105, "Undef"
  vivify_1270:
    $P103."BUILD"($P104 :named("handle"), $P105 :named("description"))
.annotate 'line', 2071
    set $P103, $P2423
    unless_null $P103, vivify_1271
    new $P103, "Undef"
  vivify_1271:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "BUILD" :anon :subid("278_1323686357.86238") :outer("272_1323686357.86238")
    .param pmc param_2425
    .param pmc param_2426 :named("handle")
    .param pmc param_2427 :named("description")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 2077
    .lex "self", param_2425
    .lex "$handle", param_2426
    .lex "$description", param_2427
.annotate 'line', 2078
    set $P101, param_2426
    unless_null $P101, vivify_1272
    new $P101, "Undef"
  vivify_1272:
    set $S100, $P101
    nqp_create_sc $P102, $S100
    set $P103, param_2425
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    repr_bind_attr_obj $P104, $P105, "$!sc", 0, $P102
.annotate 'line', 2079
    set $P101, param_2426
    unless_null $P101, vivify_1273
    new $P101, "Undef"
  vivify_1273:
    set $P102, param_2425
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_bind_attr_obj $P103, $P104, "$!handle", 1, $P101
.annotate 'line', 2080
    new $P101, "Hash"
    set $P102, param_2425
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_bind_attr_obj $P103, $P104, "%!addr_to_slot", 2, $P101
.annotate 'line', 2081
    new $P101, "ResizablePMCArray"
    set $P102, param_2425
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_bind_attr_obj $P103, $P104, "@!event_stream", 3, $P101
.annotate 'line', 2082
    set $P101, param_2425
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    repr_get_attr_obj $P104, $P102, $P103, "$!sc", 0
    unless_null $P104, vivify_1274
    new $P104, "Undef"
  vivify_1274:
    set $P105, param_2427
    unless_null $P105, vivify_1275
    new $P105, "Undef"
  vivify_1275:
    $P104."set_description"($P105)
.annotate 'line', 2083
    find_dynamic_lex $P103, "%*COMPILING"
    unless_null $P103, vivify_1276
    get_hll_global $P101, "GLOBAL"
    get_who $P102, $P101
    set $P103, $P102["%COMPILING"]
    unless_null $P103, vivify_1277
    die "Contextual %*COMPILING not found"
  vivify_1277:
  vivify_1276:
    set $P2428, $P103["%?OPTIONS"]
    unless_null $P2428, vivify_1278
    $P2428 = root_new ['parrot';'Hash']
  vivify_1278:
    set $P104, $P2428["target"]
    unless_null $P104, vivify_1279
    new $P104, "Undef"
  vivify_1279:
    set $S100, $P104
    iseq $I100, $S100, "pir"
    new $P105, 'Integer'
    set $P105, $I100
    set $P106, param_2425
    nqp_decontainerize $P107, $P106
    find_lex $P108, "$?CLASS"
    repr_bind_attr_obj $P107, $P108, "$!precomp_mode", 5, $P105
.annotate 'line', 2077
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "slot_for_object" :anon :subid("279_1323686357.86238") :outer("272_1323686357.86238")
    .param pmc param_2430
    .param pmc param_2431
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 2087
    .lex "self", param_2430
    .lex "$obj", param_2431
.annotate 'line', 2088
    new $P101, "Undef"
    set $P2432, $P101
    .lex "$slot", $P2432
    set $P102, param_2431
    unless_null $P102, vivify_1280
    new $P102, "Undef"
  vivify_1280:
    get_id $I100, $P102
    set $P103, param_2430
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    repr_get_attr_obj $P2433, $P104, $P105, "%!addr_to_slot", 2
    unless_null $P2433, vivify_1281
    $P2433 = root_new ['parrot';'Hash']
  vivify_1281:
    set $P106, $P2433[$I100]
    unless_null $P106, vivify_1282
    new $P106, "Undef"
  vivify_1282:
    set $P2432, $P106
.annotate 'line', 2089
    set $P102, $P2432
    unless_null $P102, vivify_1283
    new $P102, "Undef"
  vivify_1283:
    defined $I100, $P102
    if $I100, unless_2434_end
.annotate 'line', 2090
    die "slot_for_object called on object not in context"
  unless_2434_end:
.annotate 'line', 2087
    set $P102, $P2432
    unless_null $P102, vivify_1284
    new $P102, "Undef"
  vivify_1284:
    .return ($P102)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "get_slot_past_for_object" :anon :subid("280_1323686357.86238") :outer("272_1323686357.86238")
    .param pmc param_2436
    .param pmc param_2437
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 2099
    .lex "self", param_2436
    .lex "$obj", param_2437
.annotate 'line', 2100
    new $P101, "Undef"
    set $P2438, $P101
    .lex "$slot", $P2438
.annotate 'line', 2101
    new $P102, "Undef"
    set $P2439, $P102
    .lex "$past", $P2439
.annotate 'line', 2100
    set $P103, param_2436
    nqp_decontainerize $P104, $P103
    set $P105, param_2437
    unless_null $P105, vivify_1285
    new $P105, "Undef"
  vivify_1285:
    $P106 = $P104."slot_for_object"($P105)
    set $P2438, $P106
.annotate 'line', 2101
    get_hll_global $P103, "GLOBAL"
    nqp_get_package_through_who $P104, $P103, "PAST"
    get_who $P105, $P104
    set $P106, $P105["Op"]
    set $P107, param_2436
    nqp_decontainerize $P108, $P107
    find_lex $P109, "$?CLASS"
    repr_get_attr_obj $P110, $P108, $P109, "$!handle", 1
    unless_null $P110, vivify_1286
    new $P110, "Undef"
  vivify_1286:
    set $P111, $P2438
    unless_null $P111, vivify_1287
    new $P111, "Undef"
  vivify_1287:
    $P112 = $P106."new"($P110, $P111, "nqp_get_sc_object Psi" :named("pirop"))
    set $P2439, $P112
.annotate 'line', 2102
    new $P103, "Float"
    assign $P103, 1
    set $P2440, $P2439
    unless_null $P2440, vivify_1288
    $P2440 = root_new ['parrot';'Hash']
    set $P2439, $P2440
  vivify_1288:
    set $P2440["has_compile_time_value"], $P103
.annotate 'line', 2103
    set $P103, param_2437
    unless_null $P103, vivify_1289
    new $P103, "Undef"
  vivify_1289:
    set $P2441, $P2439
    unless_null $P2441, vivify_1290
    $P2441 = root_new ['parrot';'Hash']
    set $P2439, $P2441
  vivify_1290:
    set $P2441["compile_time_value"], $P103
.annotate 'line', 2099
    set $P103, $P2439
    unless_null $P103, vivify_1291
    new $P103, "Undef"
  vivify_1291:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "set_slot_past" :anon :subid("281_1323686357.86238") :outer("272_1323686357.86238")
    .param pmc param_2445
    .param pmc param_2446
    .param pmc param_2447
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 2108
    new $P2444, 'ExceptionHandler', [.CONTROL_RETURN]
    set_label $P2444, control_2443
    push_eh $P2444
    .lex "self", param_2445
    .lex "$slot", param_2446
    .lex "$past_to_set", param_2447
.annotate 'line', 2109
    new $P101, "Exception"
    set $P101['type'], .CONTROL_RETURN
    get_hll_global $P102, "GLOBAL"
    nqp_get_package_through_who $P103, $P102, "PAST"
    get_who $P104, $P103
    set $P105, $P104["Op"]
    set $P106, param_2445
    nqp_decontainerize $P107, $P106
    find_lex $P108, "$?CLASS"
    repr_get_attr_obj $P109, $P107, $P108, "$!handle", 1
    unless_null $P109, vivify_1292
    new $P109, "Undef"
  vivify_1292:
    set $P110, param_2446
    unless_null $P110, vivify_1293
    new $P110, "Undef"
  vivify_1293:
    set $P111, param_2447
    unless_null $P111, vivify_1294
    new $P111, "Undef"
  vivify_1294:
    $P112 = $P105."new"($P109, $P110, $P111, "nqp_set_sc_object vsiP" :named("pirop"))
    setattribute $P101, 'payload', $P112
    throw $P101
.annotate 'line', 2108
    .return ()
  control_2443:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P101, exception, "payload"
    .return ($P101)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "set_cur_sc" :anon :subid("282_1323686357.86238") :outer("272_1323686357.86238")
    .param pmc param_2449
    .param pmc param_2450
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 2115
    .lex "self", param_2449
    .lex "$to_wrap", param_2450
.annotate 'line', 2116
    get_hll_global $P101, "GLOBAL"
    nqp_get_package_through_who $P102, $P101, "PAST"
    get_who $P103, $P102
    set $P104, $P103["Op"]
    set $P105, param_2450
    unless_null $P105, vivify_1295
    new $P105, "Undef"
  vivify_1295:
.annotate 'line', 2119
    get_hll_global $P106, "GLOBAL"
    nqp_get_package_through_who $P107, $P106, "PAST"
    get_who $P108, $P107
    set $P109, $P108["Var"]
    $P110 = $P109."new"("cur_sc" :named("name"), "register" :named("scope"))
    $P111 = $P104."new"($P105, $P110, "nqp_set_sc_for_object__0PP" :named("pirop"))
.annotate 'line', 2115
    .return ($P111)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "add_object_to_cur_sc_past" :anon :subid("283_1323686357.86238") :outer("272_1323686357.86238")
    .param pmc param_2452
    .param pmc param_2453
    .param pmc param_2454
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 2123
    .lex "self", param_2452
    .lex "$slot", param_2453
    .lex "$to_wrap", param_2454
.annotate 'line', 2124
    get_hll_global $P101, "GLOBAL"
    nqp_get_package_through_who $P102, $P101, "PAST"
    get_who $P103, $P102
    set $P104, $P103["Op"]
.annotate 'line', 2126
    get_hll_global $P105, "GLOBAL"
    nqp_get_package_through_who $P106, $P105, "PAST"
    get_who $P107, $P106
    set $P108, $P107["Var"]
    $P109 = $P108."new"("cur_sc" :named("name"), "register" :named("scope"))
    set $P110, param_2453
    unless_null $P110, vivify_1296
    new $P110, "Undef"
  vivify_1296:
    set $P111, param_2454
    unless_null $P111, vivify_1297
    new $P111, "Undef"
  vivify_1297:
    $P112 = $P104."new"($P109, $P110, $P111, "nqp_add_object_to_sc 2PiP" :named("pirop"))
.annotate 'line', 2123
    .return ($P112)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "add_object" :anon :subid("284_1323686357.86238") :outer("272_1323686357.86238")
    .param pmc param_2456
    .param pmc param_2457
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 2133
    .lex "self", param_2456
    .lex "$obj", param_2457
.annotate 'line', 2135
    new $P101, "Undef"
    set $P2458, $P101
    .lex "$idx", $P2458
.annotate 'line', 2134
    set $P102, param_2457
    unless_null $P102, vivify_1298
    new $P102, "Undef"
  vivify_1298:
    set $P103, param_2456
    nqp_decontainerize $P104, $P103
    find_lex $P105, "$?CLASS"
    repr_get_attr_obj $P106, $P104, $P105, "$!sc", 0
    unless_null $P106, vivify_1299
    new $P106, "Undef"
  vivify_1299:
    nqp_set_sc_for_object $P102, $P106
.annotate 'line', 2135
    set $P102, param_2456
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_get_attr_obj $P105, $P103, $P104, "$!sc", 0
    unless_null $P105, vivify_1300
    new $P105, "Undef"
  vivify_1300:
    $P106 = $P105."elems"()
    set $P2458, $P106
.annotate 'line', 2136
    set $P102, param_2457
    unless_null $P102, vivify_1301
    new $P102, "Undef"
  vivify_1301:
    set $P103, $P2458
    unless_null $P103, vivify_1302
    new $P103, "Undef"
  vivify_1302:
    set $I100, $P103
    set $P104, param_2456
    nqp_decontainerize $P105, $P104
    find_lex $P106, "$?CLASS"
    repr_get_attr_obj $P2459, $P105, $P106, "$!sc", 0
    unless_null $P2459, vivify_1303
    $P2459 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P105, $P106, "$!sc", 0, $P2459
  vivify_1303:
    set $P2459[$I100], $P102
.annotate 'line', 2137
    set $P102, $P2458
    unless_null $P102, vivify_1304
    new $P102, "Undef"
  vivify_1304:
    set $P103, param_2457
    unless_null $P103, vivify_1305
    new $P103, "Undef"
  vivify_1305:
    get_id $I100, $P103
    set $P104, param_2456
    nqp_decontainerize $P105, $P104
    find_lex $P106, "$?CLASS"
    repr_get_attr_obj $P2460, $P105, $P106, "%!addr_to_slot", 2
    unless_null $P2460, vivify_1306
    $P2460 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P105, $P106, "%!addr_to_slot", 2, $P2460
  vivify_1306:
    set $P2460[$I100], $P102
.annotate 'line', 2133
    set $P102, $P2458
    unless_null $P102, vivify_1307
    new $P102, "Undef"
  vivify_1307:
    .return ($P102)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "add_code" :anon :subid("285_1323686357.86238") :outer("272_1323686357.86238")
    .param pmc param_2462
    .param pmc param_2463
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 2142
    .lex "self", param_2462
    .lex "$obj", param_2463
.annotate 'line', 2143
    new $P101, "Undef"
    set $P2464, $P101
    .lex "$idx", $P2464
    set $P102, param_2462
    nqp_decontainerize $P103, $P102
    find_lex $P104, "$?CLASS"
    repr_get_attr_obj $P105, $P103, $P104, "$!sc", 0
    unless_null $P105, vivify_1308
    new $P105, "Undef"
  vivify_1308:
    $P106 = $P105."elems"()
    set $P2464, $P106
.annotate 'line', 2144
    set $P102, param_2463
    unless_null $P102, vivify_1309
    new $P102, "Undef"
  vivify_1309:
    set $P103, $P2464
    unless_null $P103, vivify_1310
    new $P103, "Undef"
  vivify_1310:
    set $I100, $P103
    set $P104, param_2462
    nqp_decontainerize $P105, $P104
    find_lex $P106, "$?CLASS"
    repr_get_attr_obj $P2465, $P105, $P106, "$!sc", 0
    unless_null $P2465, vivify_1311
    $P2465 = root_new ['parrot';'ResizablePMCArray']
    repr_bind_attr_obj $P105, $P106, "$!sc", 0, $P2465
  vivify_1311:
    set $P2465[$I100], $P102
.annotate 'line', 2145
    set $P102, $P2464
    unless_null $P102, vivify_1312
    new $P102, "Undef"
  vivify_1312:
    set $P103, param_2463
    unless_null $P103, vivify_1313
    new $P103, "Undef"
  vivify_1313:
    get_id $I100, $P103
    set $P104, param_2462
    nqp_decontainerize $P105, $P104
    find_lex $P106, "$?CLASS"
    repr_get_attr_obj $P2466, $P105, $P106, "%!addr_to_slot", 2
    unless_null $P2466, vivify_1314
    $P2466 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P105, $P106, "%!addr_to_slot", 2, $P2466
  vivify_1314:
    set $P2466[$I100], $P102
.annotate 'line', 2142
    set $P102, $P2464
    unless_null $P102, vivify_1315
    new $P102, "Undef"
  vivify_1315:
    .return ($P102)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "is_precompilation_mode" :anon :subid("286_1323686357.86238") :outer("272_1323686357.86238")
    .param pmc param_2468
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 2150
    .lex "self", param_2468
    set $P101, param_2468
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    repr_get_attr_obj $P104, $P102, $P103, "$!precomp_mode", 5
    unless_null $P104, vivify_1316
    new $P104, "Undef"
  vivify_1316:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "add_event" :anon :subid("287_1323686357.86238") :outer("272_1323686357.86238")
    .param pmc param_2470
    .param pmc param_2471 :optional :named("deserialize_past")
    .param int has_param_2471 :opt_flag
    .param pmc param_2472 :optional :named("fixup_past")
    .param int has_param_2472 :opt_flag
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 2157
    .lex "self", param_2470
    if has_param_2471, optparam_1317
    new $P101, "Undef"
    set param_2471, $P101
  optparam_1317:
    .lex "$deserialize_past", param_2471
    if has_param_2472, optparam_1318
    new $P102, "Undef"
    set param_2472, $P102
  optparam_1318:
    .lex "$fixup_past", param_2472
.annotate 'line', 2158
    set $P104, param_2470
    nqp_decontainerize $P105, $P104
    find_lex $P106, "$?CLASS"
    repr_get_attr_obj $P107, $P105, $P106, "$!precomp_mode", 5
    unless_null $P107, vivify_1319
    new $P107, "Undef"
  vivify_1319:
    if $P107, if_2473
.annotate 'line', 2164
    set $P108, param_2470
    nqp_decontainerize $P109, $P108
    find_lex $P110, "$?CLASS"
    repr_get_attr_obj $P2475, $P109, $P110, "@!event_stream", 3
    unless_null $P2475, vivify_1320
    $P2475 = root_new ['parrot';'ResizablePMCArray']
  vivify_1320:
    find_lex $P111, "Event"
    set $P112, param_2472
    unless_null $P112, vivify_1321
    new $P112, "Undef"
  vivify_1321:
    $P113 = $P111."new"($P112 :named("fixup_past"))
    $P115 = $P2475."push"($P113)
.annotate 'line', 2162
    set $P103, $P115
.annotate 'line', 2158
    goto if_2473_end
  if_2473:
.annotate 'line', 2160
    set $P108, param_2470
    nqp_decontainerize $P109, $P108
    find_lex $P110, "$?CLASS"
    repr_get_attr_obj $P2474, $P109, $P110, "@!event_stream", 3
    unless_null $P2474, vivify_1322
    $P2474 = root_new ['parrot';'ResizablePMCArray']
  vivify_1322:
    find_lex $P111, "Event"
    set $P112, param_2471
    unless_null $P112, vivify_1323
    new $P112, "Undef"
  vivify_1323:
    $P113 = $P111."new"($P112 :named("deserialize_past"))
    $P114 = $P2474."push"($P113)
.annotate 'line', 2158
    set $P103, $P114
  if_2473_end:
.annotate 'line', 2157
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "get_object_sc_ref_past" :anon :subid("288_1323686357.86238") :outer("272_1323686357.86238")
    .param pmc param_2477
    .param pmc param_2478
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 2170
    .const 'Sub' $P2483 = "289_1323686357.86238" 
    capture_lex $P2483
    .lex "self", param_2477
    .lex "$obj", param_2478
.annotate 'line', 2173
    new $P101, "Undef"
    set $P2479, $P101
    .lex "$sc", $P2479
    set $P102, param_2478
    unless_null $P102, vivify_1324
    new $P102, "Undef"
  vivify_1324:
    nqp_get_sc_for_object $P103, $P102
    set $P2479, $P103
.annotate 'line', 2174
    set $P102, $P2479
    unless_null $P102, vivify_1325
    new $P102, "Undef"
  vivify_1325:
    defined $I100, $P102
    if $I100, unless_2480_end
.annotate 'line', 2175
    new $P103, "String"
    assign $P103, "Object of type '"
    set $P104, param_2478
    unless_null $P104, vivify_1326
    new $P104, "Undef"
  vivify_1326:
    get_how $P105, $P104
    set $P106, param_2478
    unless_null $P106, vivify_1327
    new $P106, "Undef"
  vivify_1327:
    $S100 = $P105."name"($P106)
    concat $P107, $P103, $S100
    concat $P108, $P107, "' cannot be referenced without having been "
    concat $P109, $P108, "assigned a serialization context"
.annotate 'line', 2176
    die $P109
  unless_2480_end:
.annotate 'line', 2183
    set $P103, $P2479
    unless_null $P103, vivify_1328
    new $P103, "Undef"
  vivify_1328:
    set $P104, param_2477
    nqp_decontainerize $P105, $P104
    find_lex $P106, "$?CLASS"
    repr_get_attr_obj $P107, $P105, $P106, "$!sc", 0
    unless_null $P107, vivify_1329
    new $P107, "Undef"
  vivify_1329:
    issame $I100, $P103, $P107
    if $I100, if_2481
.annotate 'line', 2186
    .const 'Sub' $P2483 = "289_1323686357.86238" 
    capture_lex $P2483
    $P112 = $P2483()
    set $P102, $P112
.annotate 'line', 2183
    goto if_2481_end
  if_2481:
.annotate 'line', 2184
    set $P108, param_2477
    nqp_decontainerize $P109, $P108
    set $P110, param_2478
    unless_null $P110, vivify_1345
    new $P110, "Undef"
  vivify_1345:
    $P111 = $P109."get_slot_past_for_object"($P110)
.annotate 'line', 2183
    set $P102, $P111
  if_2481_end:
.annotate 'line', 2170
    .return ($P102)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block2482"  :anon :subid("289_1323686357.86238") :outer("288_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 2187
    new $P108, "Undef"
    set $P2484, $P108
    .lex "$handle", $P2484
.annotate 'line', 2201
    new $P109, "Undef"
    set $P2485, $P109
    .lex "$past", $P2485
.annotate 'line', 2187
    find_lex $P110, "$sc"
    unless_null $P110, vivify_1330
    new $P110, "Undef"
  vivify_1330:
    $P112 = $P110."handle"()
    set $P2484, $P112
.annotate 'line', 2188
    set $P114, $P2484
    unless_null $P114, vivify_1331
    new $P114, "Undef"
  vivify_1331:
    find_lex $P110, "self"
    nqp_decontainerize $P112, $P110
    find_lex $P113, "$?CLASS"
    repr_get_attr_obj $P2487, $P112, $P113, "%!dependencies", 4
    unless_null $P2487, vivify_1332
    $P2487 = root_new ['parrot';'Hash']
  vivify_1332:
    exists $I101, $P2487[$P114]
    if $I101, unless_2486_end
.annotate 'line', 2189
    find_lex $P115, "$sc"
    unless_null $P115, vivify_1333
    new $P115, "Undef"
  vivify_1333:
    set $P116, $P2484
    unless_null $P116, vivify_1334
    new $P116, "Undef"
  vivify_1334:
    find_lex $P117, "self"
    nqp_decontainerize $P118, $P117
    find_lex $P119, "$?CLASS"
    repr_get_attr_obj $P2488, $P118, $P119, "%!dependencies", 4
    unless_null $P2488, vivify_1335
    $P2488 = root_new ['parrot';'Hash']
    repr_bind_attr_obj $P118, $P119, "%!dependencies", 4, $P2488
  vivify_1335:
    set $P2488[$P116], $P115
.annotate 'line', 2190
    find_lex $P115, "self"
    nqp_decontainerize $P116, $P115
    get_hll_global $P117, "GLOBAL"
    nqp_get_package_through_who $P118, $P117, "PAST"
    get_who $P119, $P118
    set $P120, $P119["Op"]
.annotate 'line', 2192
    get_hll_global $P121, "GLOBAL"
    nqp_get_package_through_who $P122, $P121, "PAST"
    get_who $P123, $P122
    set $P124, $P123["Op"]
.annotate 'line', 2194
    get_hll_global $P125, "GLOBAL"
    nqp_get_package_through_who $P126, $P125, "PAST"
    get_who $P127, $P126
    set $P128, $P127["Op"]
    set $P129, $P2484
    unless_null $P129, vivify_1336
    new $P129, "Undef"
  vivify_1336:
    $P130 = $P128."new"($P129, "nqp_get_sc Ps" :named("pirop"))
    $P131 = $P124."new"($P130, "isnull IP" :named("pirop"))
.annotate 'line', 2196
    get_hll_global $P132, "GLOBAL"
    nqp_get_package_through_who $P133, $P132, "PAST"
    get_who $P134, $P133
    set $P135, $P134["Op"]
.annotate 'line', 2198
    new $P136, "String"
    assign $P136, "Incorrect pre-compiled version of "
    find_lex $P137, "$sc"
    unless_null $P137, vivify_1337
    new $P137, "Undef"
  vivify_1337:
    $P138 = $P137."description"()
    unless $P138, unless_2489
    set $S100, $P138
    goto unless_2489_end
  unless_2489:
    set $S100, "<unknown>"
  unless_2489_end:
    concat $P139, $P136, $S100
    concat $P140, $P139, " loaded"
    $P141 = $P135."new"($P140, "die vS" :named("pirop"))
.annotate 'line', 2196
    $P142 = $P120."new"($P131, $P141, "if" :named("pasttype"))
.annotate 'line', 2190
    $P116."add_event"($P142 :named("deserialize_past"))
  unless_2486_end:
.annotate 'line', 2201
    get_hll_global $P110, "GLOBAL"
    nqp_get_package_through_who $P112, $P110, "PAST"
    get_who $P113, $P112
    set $P114, $P113["Op"]
    set $P115, $P2484
    unless_null $P115, vivify_1338
    new $P115, "Undef"
  vivify_1338:
.annotate 'line', 2202
    find_lex $P116, "$sc"
    unless_null $P116, vivify_1339
    new $P116, "Undef"
  vivify_1339:
    find_lex $P117, "$obj"
    unless_null $P117, vivify_1340
    new $P117, "Undef"
  vivify_1340:
    $P118 = $P116."slot_index_for"($P117)
    $P119 = $P114."new"($P115, $P118, "nqp_get_sc_object Psi" :named("pirop"))
.annotate 'line', 2201
    set $P2485, $P119
.annotate 'line', 2203
    new $P110, "Float"
    assign $P110, 1
    set $P2490, $P2485
    unless_null $P2490, vivify_1341
    $P2490 = root_new ['parrot';'Hash']
    set $P2485, $P2490
  vivify_1341:
    set $P2490["has_compile_time_value"], $P110
.annotate 'line', 2204
    find_lex $P110, "$obj"
    unless_null $P110, vivify_1342
    new $P110, "Undef"
  vivify_1342:
    set $P2491, $P2485
    unless_null $P2491, vivify_1343
    $P2491 = root_new ['parrot';'Hash']
    set $P2485, $P2491
  vivify_1343:
    set $P2491["compile_time_value"], $P110
.annotate 'line', 2186
    set $P110, $P2485
    unless_null $P110, vivify_1344
    new $P110, "Undef"
  vivify_1344:
    .return ($P110)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "sc" :anon :subid("290_1323686357.86238") :outer("272_1323686357.86238")
    .param pmc param_2493
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 2210
    .lex "self", param_2493
    set $P101, param_2493
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    repr_get_attr_obj $P104, $P102, $P103, "$!sc", 0
    unless_null $P104, vivify_1346
    new $P104, "Undef"
  vivify_1346:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "handle" :anon :subid("291_1323686357.86238") :outer("272_1323686357.86238")
    .param pmc param_2495
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 2215
    .lex "self", param_2495
    set $P101, param_2495
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    repr_get_attr_obj $P104, $P102, $P103, "$!handle", 1
    unless_null $P104, vivify_1347
    new $P104, "Undef"
  vivify_1347:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "event_stream" :anon :subid("292_1323686357.86238") :outer("272_1323686357.86238")
    .param pmc param_2497
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 2220
    .lex "self", param_2497
    set $P101, param_2497
    nqp_decontainerize $P102, $P101
    find_lex $P103, "$?CLASS"
    repr_get_attr_obj $P2498, $P102, $P103, "@!event_stream", 3
    unless_null $P2498, vivify_1348
    $P2498 = root_new ['parrot';'ResizablePMCArray']
  vivify_1348:
    .return ($P2498)
.end


.HLL "nqp"

.namespace []
.sub "_block2501" :load :anon :subid("293_1323686357.86238")
.annotate 'file', "src/stage2/gen/NQPHLL.pm"
.annotate 'line', 1050
    .const '' $P2503 = "10_1323686357.86238" 
    $P107 = $P2503()
    .return ($P107)
.end

