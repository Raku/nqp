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
.sub "_block1000"  :anon :subid("10_1308672490.86084")
    .param pmc param_1002 :slurpy
.annotate 'line', 0
    .const 'Sub' $P2300 = "265_1308672490.86084" 
    capture_lex $P2300
    .const 'Sub' $P2170 = "246_1308672490.86084" 
    capture_lex $P2170
    .const 'Sub' $P2138 = "239_1308672490.86084" 
    capture_lex $P2138
    .const 'Sub' $P1575 = "165_1308672490.86084" 
    capture_lex $P1575
    .const 'Sub' $P1318 = "119_1308672490.86084" 
    capture_lex $P1318
    .const 'Sub' $P1007 = "11_1308672490.86084" 
    capture_lex $P1007
.annotate 'line', 1
    .lex "@ARGS", param_1002
    .lex "GLOBALish", $P1003
    .lex "$?PACKAGE", $P1004
.annotate 'line', 1781
    new $P100, "Undef"
    set $P1005, $P100
    .lex "$compiler", $P1005
.annotate 'line', 1060
    load_bytecode "Parrot/Exception.pbc"
.annotate 'line', 1059
    $P0 = find_dynamic_lex "$*CTXSAVE"
    if null $P0 goto ctxsave_done
    $I0 = can $P0, "ctxsave"
    unless $I0 goto ctxsave_done
    $P0."ctxsave"()
  ctxsave_done:
.annotate 'line', 7
    .const 'Sub' $P1007 = "11_1308672490.86084" 
    capture_lex $P1007
    $P1007()
.annotate 'line', 859
    .const 'Sub' $P1318 = "119_1308672490.86084" 
    capture_lex $P1318
    $P1318()
.annotate 'line', 1067
    .const 'Sub' $P1575 = "165_1308672490.86084" 
    capture_lex $P1575
    $P1575()
.annotate 'line', 1781
    get_hll_global $P101, "GLOBAL"
    nqp_get_package_through_who $P102, $P101, "HLL"
    get_who $P103, $P102
    set $P104, $P103["Compiler"]
    $P105 = $P104."new"()
    store_lex "$compiler", $P105
.annotate 'line', 1782
    find_lex $P101, "$compiler"
    unless_null $P101, vivify_1048
    new $P101, "Undef"
  vivify_1048:
    $P101."language"("parrot")
.annotate 'line', 1875
    .const 'Sub' $P2138 = "239_1308672490.86084" 
    capture_lex $P2138
    $P2138()
.annotate 'line', 1908
    .const 'Sub' $P2170 = "246_1308672490.86084" 
    capture_lex $P2170
    $P2170()
.annotate 'line', 2086
    .const 'Sub' $P2300 = "265_1308672490.86084" 
    capture_lex $P2300
    $P2300()
.annotate 'line', 1
    find_lex $P102, "@ARGS"
    if $P102, if_2379
    set $P101, $P102
    goto if_2379_end
  if_2379:
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P103, "ModuleLoader"
    getinterp $P104
    set $P105, $P104["context"]
    $P106 = $P103."set_mainline_module"($P105)
    set $P101, $P106
  if_2379_end:
    .return ($P101)
.annotate 'line', 1059
    .const 'Sub' $P2381 = "283_1308672490.86084" 
.annotate 'line', 1
    .return ($P2381)
.end


.HLL "nqp"

.namespace []
.sub "" :load :init :subid("post284") :outer("10_1308672490.86084")
.annotate 'line', 0
    .const 'Sub' $P1001 = "10_1308672490.86084" 
    .local pmc block
    set block, $P1001
    nqp_get_sc $P108, "1308672484.87927"
    isnull $I100, $P108
    if $I100, if_2383
    goto if_2383_end
  if_2383:
    nqp_dynop_setup 
    getinterp $P109
    get_class $P110, "LexPad"
    get_class $P111, "NQPLexPad"
    $P109."hll_map"($P110, $P111)
    nqp_create_sc $P112, "1308672484.87927"
    .local pmc cur_sc
    set cur_sc, $P112
    nqp_get_sc_object $P113, "__6MODEL_CORE__", 0
    $P114 = $P113."new_type"("GLOBALish" :named("name"))
    nqp_set_sc_for_object $P114, cur_sc
    nqp_set_sc_object "1308672484.87927", 0, $P114
    .const 'Sub' $P2384 = "10_1308672490.86084" 
    $P113 = $P2384."get_lexinfo"()
    nqp_get_sc_object $P114, "1308672484.87927", 0
    $P113."set_static_lexpad_value"("GLOBALish", $P114)
    .const 'Sub' $P2385 = "10_1308672490.86084" 
    $P115 = $P2385."get_lexinfo"()
    $P115."finish_static_lexpad"()
    .const 'Sub' $P2386 = "10_1308672490.86084" 
    $P113 = $P2386."get_lexinfo"()
    nqp_get_sc_object $P114, "1308672484.87927", 0
    $P113."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'Sub' $P2387 = "10_1308672490.86084" 
    $P115 = $P2387."get_lexinfo"()
    $P115."finish_static_lexpad"()
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P113, "ModuleLoader"
    $P114 = $P113."load_setting"("NQPCORE")
    block."set_outer_ctx"($P114)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P113, "ModuleLoader"
    nqp_get_sc_object $P114, "1308672484.87927", 0
    $P113."load_module"("NQPRegex", $P114)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P113, "ModuleLoader"
    nqp_get_sc_object $P114, "1308672484.87927", 0
    $P113."load_module"("NQPRegex", $P114)
    nqp_get_sc_object $P113, "1308672478.93415", 41
    $P114 = $P113."new_type"("HLL::Grammar" :named("name"))
    nqp_set_sc_for_object $P114, cur_sc
    nqp_set_sc_object "1308672484.87927", 1, $P114
    nqp_get_sc_object $P113, "1308672484.87927", 1
    nqp_get_sc_object $P114, "1308672484.87927", 0
    nqp_get_package_through_who $P115, $P114, "HLL"
    get_who $P116, $P115
    set $P116["Grammar"], $P113
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2388 = "12_1308672490.86084" 
    $P114."add_method"($P115, "ws", $P2388)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2389 = "13_1308672490.86084" 
    $P114."add_method"($P115, "!PREFIX__ws", $P2389)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2390 = "14_1308672490.86084" 
    $P114."add_method"($P115, "termish", $P2390)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2391 = "15_1308672490.86084" 
    $P114."add_method"($P115, "!PREFIX__termish", $P2391)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2392 = "16_1308672490.86084" 
    $P114."add_method"($P115, "term", $P2392)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2393 = "17_1308672490.86084" 
    $P114."add_method"($P115, "!PREFIX__term", $P2393)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2394 = "18_1308672490.86084" 
    $P114."add_method"($P115, "infix", $P2394)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2395 = "19_1308672490.86084" 
    $P114."add_method"($P115, "!PREFIX__infix", $P2395)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2396 = "20_1308672490.86084" 
    $P114."add_method"($P115, "prefix", $P2396)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2397 = "21_1308672490.86084" 
    $P114."add_method"($P115, "!PREFIX__prefix", $P2397)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2398 = "22_1308672490.86084" 
    $P114."add_method"($P115, "postfix", $P2398)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2399 = "23_1308672490.86084" 
    $P114."add_method"($P115, "!PREFIX__postfix", $P2399)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2400 = "24_1308672490.86084" 
    $P114."add_method"($P115, "circumfix", $P2400)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2401 = "25_1308672490.86084" 
    $P114."add_method"($P115, "!PREFIX__circumfix", $P2401)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2402 = "26_1308672490.86084" 
    $P114."add_method"($P115, "postcircumfix", $P2402)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2403 = "27_1308672490.86084" 
    $P114."add_method"($P115, "!PREFIX__postcircumfix", $P2403)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2404 = "28_1308672490.86084" 
    $P114."add_method"($P115, "term:sym<circumfix>", $P2404)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2405 = "29_1308672490.86084" 
    $P114."add_method"($P115, "!PREFIX__term:sym<circumfix>", $P2405)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2406 = "30_1308672490.86084" 
    $P114."add_method"($P115, "infixish", $P2406)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2407 = "31_1308672490.86084" 
    $P114."add_method"($P115, "!PREFIX__infixish", $P2407)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2408 = "32_1308672490.86084" 
    $P114."add_method"($P115, "prefixish", $P2408)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2409 = "33_1308672490.86084" 
    $P114."add_method"($P115, "!PREFIX__prefixish", $P2409)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2410 = "34_1308672490.86084" 
    $P114."add_method"($P115, "postfixish", $P2410)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2411 = "35_1308672490.86084" 
    $P114."add_method"($P115, "!PREFIX__postfixish", $P2411)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2412 = "36_1308672490.86084" 
    $P114."add_method"($P115, "nullterm", $P2412)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2413 = "37_1308672490.86084" 
    $P114."add_method"($P115, "!PREFIX__nullterm", $P2413)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2414 = "38_1308672490.86084" 
    $P114."add_method"($P115, "nullterm_alt", $P2414)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2415 = "39_1308672490.86084" 
    $P114."add_method"($P115, "!PREFIX__nullterm_alt", $P2415)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2416 = "40_1308672490.86084" 
    $P114."add_method"($P115, "nulltermish", $P2416)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2417 = "41_1308672490.86084" 
    $P114."add_method"($P115, "quote_delimited", $P2417)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2418 = "42_1308672490.86084" 
    $P114."add_method"($P115, "!PREFIX__quote_delimited", $P2418)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2419 = "43_1308672490.86084" 
    $P114."add_method"($P115, "quote_atom", $P2419)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2420 = "44_1308672490.86084" 
    $P114."add_method"($P115, "!PREFIX__quote_atom", $P2420)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2421 = "45_1308672490.86084" 
    $P114."add_method"($P115, "decint", $P2421)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2422 = "46_1308672490.86084" 
    $P114."add_method"($P115, "!PREFIX__decint", $P2422)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2423 = "47_1308672490.86084" 
    $P114."add_method"($P115, "decints", $P2423)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2424 = "48_1308672490.86084" 
    $P114."add_method"($P115, "!PREFIX__decints", $P2424)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2425 = "49_1308672490.86084" 
    $P114."add_method"($P115, "hexint", $P2425)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2426 = "50_1308672490.86084" 
    $P114."add_method"($P115, "!PREFIX__hexint", $P2426)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2427 = "51_1308672490.86084" 
    $P114."add_method"($P115, "hexints", $P2427)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2428 = "52_1308672490.86084" 
    $P114."add_method"($P115, "!PREFIX__hexints", $P2428)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2429 = "53_1308672490.86084" 
    $P114."add_method"($P115, "octint", $P2429)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2430 = "54_1308672490.86084" 
    $P114."add_method"($P115, "!PREFIX__octint", $P2430)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2431 = "55_1308672490.86084" 
    $P114."add_method"($P115, "octints", $P2431)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2432 = "56_1308672490.86084" 
    $P114."add_method"($P115, "!PREFIX__octints", $P2432)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2433 = "57_1308672490.86084" 
    $P114."add_method"($P115, "binint", $P2433)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2434 = "58_1308672490.86084" 
    $P114."add_method"($P115, "!PREFIX__binint", $P2434)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2435 = "59_1308672490.86084" 
    $P114."add_method"($P115, "binints", $P2435)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2436 = "60_1308672490.86084" 
    $P114."add_method"($P115, "!PREFIX__binints", $P2436)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2437 = "61_1308672490.86084" 
    $P114."add_method"($P115, "integer", $P2437)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2438 = "62_1308672490.86084" 
    $P114."add_method"($P115, "!PREFIX__integer", $P2438)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2439 = "63_1308672490.86084" 
    $P114."add_method"($P115, "dec_number", $P2439)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2440 = "64_1308672490.86084" 
    $P114."add_method"($P115, "!PREFIX__dec_number", $P2440)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2441 = "65_1308672490.86084" 
    $P114."add_method"($P115, "escale", $P2441)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2442 = "66_1308672490.86084" 
    $P114."add_method"($P115, "!PREFIX__escale", $P2442)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2443 = "67_1308672490.86084" 
    $P114."add_method"($P115, "quote_escape", $P2443)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2444 = "68_1308672490.86084" 
    $P114."add_method"($P115, "!PREFIX__quote_escape", $P2444)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2445 = "69_1308672490.86084" 
    $P114."add_method"($P115, "quote_escape:sym<backslash>", $P2445)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2446 = "70_1308672490.86084" 
    $P114."add_method"($P115, "!PREFIX__quote_escape:sym<backslash>", $P2446)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2447 = "71_1308672490.86084" 
    $P114."add_method"($P115, "quote_escape:sym<stopper>", $P2447)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2448 = "72_1308672490.86084" 
    $P114."add_method"($P115, "!PREFIX__quote_escape:sym<stopper>", $P2448)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2449 = "73_1308672490.86084" 
    $P114."add_method"($P115, "quote_escape:sym<bs>", $P2449)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2450 = "74_1308672490.86084" 
    $P114."add_method"($P115, "!PREFIX__quote_escape:sym<bs>", $P2450)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2451 = "75_1308672490.86084" 
    $P114."add_method"($P115, "quote_escape:sym<nl>", $P2451)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2452 = "76_1308672490.86084" 
    $P114."add_method"($P115, "!PREFIX__quote_escape:sym<nl>", $P2452)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2453 = "77_1308672490.86084" 
    $P114."add_method"($P115, "quote_escape:sym<cr>", $P2453)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2454 = "78_1308672490.86084" 
    $P114."add_method"($P115, "!PREFIX__quote_escape:sym<cr>", $P2454)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2455 = "79_1308672490.86084" 
    $P114."add_method"($P115, "quote_escape:sym<tab>", $P2455)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2456 = "80_1308672490.86084" 
    $P114."add_method"($P115, "!PREFIX__quote_escape:sym<tab>", $P2456)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2457 = "81_1308672490.86084" 
    $P114."add_method"($P115, "quote_escape:sym<ff>", $P2457)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2458 = "82_1308672490.86084" 
    $P114."add_method"($P115, "!PREFIX__quote_escape:sym<ff>", $P2458)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2459 = "83_1308672490.86084" 
    $P114."add_method"($P115, "quote_escape:sym<esc>", $P2459)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2460 = "84_1308672490.86084" 
    $P114."add_method"($P115, "!PREFIX__quote_escape:sym<esc>", $P2460)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2461 = "85_1308672490.86084" 
    $P114."add_method"($P115, "quote_escape:sym<hex>", $P2461)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2462 = "86_1308672490.86084" 
    $P114."add_method"($P115, "!PREFIX__quote_escape:sym<hex>", $P2462)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2463 = "87_1308672490.86084" 
    $P114."add_method"($P115, "quote_escape:sym<oct>", $P2463)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2464 = "88_1308672490.86084" 
    $P114."add_method"($P115, "!PREFIX__quote_escape:sym<oct>", $P2464)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2465 = "89_1308672490.86084" 
    $P114."add_method"($P115, "quote_escape:sym<chr>", $P2465)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2466 = "90_1308672490.86084" 
    $P114."add_method"($P115, "!PREFIX__quote_escape:sym<chr>", $P2466)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2467 = "91_1308672490.86084" 
    $P114."add_method"($P115, "quote_escape:sym<0>", $P2467)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2468 = "92_1308672490.86084" 
    $P114."add_method"($P115, "!PREFIX__quote_escape:sym<0>", $P2468)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2469 = "93_1308672490.86084" 
    $P114."add_method"($P115, "quote_escape:sym<misc>", $P2469)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2470 = "97_1308672490.86084" 
    $P114."add_method"($P115, "!PREFIX__quote_escape:sym<misc>", $P2470)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2471 = "98_1308672490.86084" 
    $P114."add_method"($P115, "charname", $P2471)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2472 = "100_1308672490.86084" 
    $P114."add_method"($P115, "!PREFIX__charname", $P2472)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2473 = "101_1308672490.86084" 
    $P114."add_method"($P115, "charnames", $P2473)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2474 = "102_1308672490.86084" 
    $P114."add_method"($P115, "!PREFIX__charnames", $P2474)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2475 = "103_1308672490.86084" 
    $P114."add_method"($P115, "charspec", $P2475)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2476 = "104_1308672490.86084" 
    $P114."add_method"($P115, "!PREFIX__charspec", $P2476)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2477 = "105_1308672490.86084" 
    $P114."add_method"($P115, "O", $P2477)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2478 = "106_1308672490.86084" 
    $P114."add_method"($P115, "panic", $P2478)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2479 = "107_1308672490.86084" 
    $P114."add_method"($P115, "peek_delimiters", $P2479)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2480 = "108_1308672490.86084" 
    $P114."add_method"($P115, "quote_EXPR", $P2480)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2481 = "109_1308672490.86084" 
    $P114."add_method"($P115, "quotemod_check", $P2481)
    .const 'Sub' $P2482 = "109_1308672490.86084" 
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_who $P114, $P113
    set $P114["quotemod_check"], $P2482
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2483 = "110_1308672490.86084" 
    $P114."add_method"($P115, "starter", $P2483)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2484 = "111_1308672490.86084" 
    $P114."add_method"($P115, "stopper", $P2484)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2485 = "112_1308672490.86084" 
    $P114."add_method"($P115, "split_words", $P2485)
    .const 'Sub' $P2486 = "112_1308672490.86084" 
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_who $P114, $P113
    set $P114["split_words"], $P2486
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2487 = "113_1308672490.86084" 
    $P114."add_method"($P115, "EXPR", $P2487)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2488 = "114_1308672490.86084" 
    $P114."add_method"($P115, "EXPR_reduce", $P2488)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2489 = "115_1308672490.86084" 
    $P114."add_method"($P115, "ternary", $P2489)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2490 = "116_1308672490.86084" 
    $P114."add_method"($P115, "MARKER", $P2490)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2491 = "117_1308672490.86084" 
    $P114."add_method"($P115, "MARKED", $P2491)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    .const 'Sub' $P2492 = "118_1308672490.86084" 
    $P114."add_method"($P115, "LANG", $P2492)
    .const 'Sub' $P2493 = "11_1308672490.86084" 
    $P113 = $P2493."get_lexinfo"()
    nqp_get_sc_object $P114, "1308672484.87927", 1
    $P113."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'Sub' $P2494 = "11_1308672490.86084" 
    $P115 = $P2494."get_lexinfo"()
    $P115."finish_static_lexpad"()
    .const 'Sub' $P2495 = "11_1308672490.86084" 
    $P113 = $P2495."get_lexinfo"()
    nqp_get_sc_object $P114, "1308672484.87927", 1
    $P113."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'Sub' $P2496 = "11_1308672490.86084" 
    $P115 = $P2496."get_lexinfo"()
    $P115."finish_static_lexpad"()
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    nqp_get_sc_object $P116, "__REGEX_CORE_SC__", 0
    $P114."set_default_parent"($P115, $P116)
    nqp_get_sc_object $P113, "1308672484.87927", 1
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 1
    $P114."compose"($P115)
    nqp_get_sc_object $P113, "1308672478.93415", 41
    $P114 = $P113."new_type"("HLL::Actions" :named("name"))
    nqp_set_sc_for_object $P114, cur_sc
    nqp_set_sc_object "1308672484.87927", 105, $P114
    nqp_get_sc_object $P113, "1308672484.87927", 105
    nqp_get_sc_object $P114, "1308672484.87927", 0
    nqp_get_package_through_who $P115, $P114, "HLL"
    get_who $P116, $P115
    set $P116["Actions"], $P113
    .const 'Sub' $P2497 = "120_1308672490.86084" 
    nqp_get_sc_object $P113, "1308672484.87927", 105
    get_who $P114, $P113
    set $P114["string_to_int"], $P2497
    .const 'Sub' $P2498 = "122_1308672490.86084" 
    nqp_get_sc_object $P113, "1308672484.87927", 105
    get_who $P114, $P113
    set $P114["ints_to_string"], $P2498
    nqp_get_sc_object $P113, "1308672484.87927", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 105
    .const 'Sub' $P2499 = "125_1308672490.86084" 
    $P114."add_method"($P115, "CTXSAVE", $P2499)
    nqp_get_sc_object $P113, "1308672484.87927", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 105
    .const 'Sub' $P2500 = "126_1308672490.86084" 
    $P114."add_method"($P115, "SET_BLOCK_OUTER_CTX", $P2500)
    nqp_get_sc_object $P113, "1308672484.87927", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 105
    .const 'Sub' $P2501 = "129_1308672490.86084" 
    $P114."add_method"($P115, "EXPR", $P2501)
    nqp_get_sc_object $P113, "1308672484.87927", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 105
    .const 'Sub' $P2502 = "132_1308672490.86084" 
    $P114."add_method"($P115, "term:sym<circumfix>", $P2502)
    nqp_get_sc_object $P113, "1308672484.87927", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 105
    .const 'Sub' $P2503 = "133_1308672490.86084" 
    $P114."add_method"($P115, "termish", $P2503)
    nqp_get_sc_object $P113, "1308672484.87927", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 105
    .const 'Sub' $P2504 = "134_1308672490.86084" 
    $P114."add_method"($P115, "nullterm", $P2504)
    nqp_get_sc_object $P113, "1308672484.87927", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 105
    .const 'Sub' $P2505 = "135_1308672490.86084" 
    $P114."add_method"($P115, "nullterm_alt", $P2505)
    nqp_get_sc_object $P113, "1308672484.87927", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 105
    .const 'Sub' $P2506 = "136_1308672490.86084" 
    $P114."add_method"($P115, "integer", $P2506)
    nqp_get_sc_object $P113, "1308672484.87927", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 105
    .const 'Sub' $P2507 = "137_1308672490.86084" 
    $P114."add_method"($P115, "dec_number", $P2507)
    nqp_get_sc_object $P113, "1308672484.87927", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 105
    .const 'Sub' $P2508 = "138_1308672490.86084" 
    $P114."add_method"($P115, "decint", $P2508)
    nqp_get_sc_object $P113, "1308672484.87927", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 105
    .const 'Sub' $P2509 = "139_1308672490.86084" 
    $P114."add_method"($P115, "hexint", $P2509)
    nqp_get_sc_object $P113, "1308672484.87927", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 105
    .const 'Sub' $P2510 = "140_1308672490.86084" 
    $P114."add_method"($P115, "octint", $P2510)
    nqp_get_sc_object $P113, "1308672484.87927", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 105
    .const 'Sub' $P2511 = "141_1308672490.86084" 
    $P114."add_method"($P115, "binint", $P2511)
    nqp_get_sc_object $P113, "1308672484.87927", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 105
    .const 'Sub' $P2512 = "142_1308672490.86084" 
    $P114."add_method"($P115, "quote_EXPR", $P2512)
    nqp_get_sc_object $P113, "1308672484.87927", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 105
    .const 'Sub' $P2513 = "145_1308672490.86084" 
    $P114."add_method"($P115, "quote_delimited", $P2513)
    nqp_get_sc_object $P113, "1308672484.87927", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 105
    .const 'Sub' $P2514 = "147_1308672490.86084" 
    $P114."add_method"($P115, "quote_atom", $P2514)
    nqp_get_sc_object $P113, "1308672484.87927", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 105
    .const 'Sub' $P2515 = "148_1308672490.86084" 
    $P114."add_method"($P115, "quote_escape:sym<backslash>", $P2515)
    nqp_get_sc_object $P113, "1308672484.87927", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 105
    .const 'Sub' $P2516 = "149_1308672490.86084" 
    $P114."add_method"($P115, "quote_escape:sym<stopper>", $P2516)
    nqp_get_sc_object $P113, "1308672484.87927", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 105
    .const 'Sub' $P2517 = "150_1308672490.86084" 
    $P114."add_method"($P115, "quote_escape:sym<bs>", $P2517)
    nqp_get_sc_object $P113, "1308672484.87927", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 105
    .const 'Sub' $P2518 = "151_1308672490.86084" 
    $P114."add_method"($P115, "quote_escape:sym<nl>", $P2518)
    nqp_get_sc_object $P113, "1308672484.87927", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 105
    .const 'Sub' $P2519 = "152_1308672490.86084" 
    $P114."add_method"($P115, "quote_escape:sym<cr>", $P2519)
    nqp_get_sc_object $P113, "1308672484.87927", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 105
    .const 'Sub' $P2520 = "153_1308672490.86084" 
    $P114."add_method"($P115, "quote_escape:sym<tab>", $P2520)
    nqp_get_sc_object $P113, "1308672484.87927", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 105
    .const 'Sub' $P2521 = "154_1308672490.86084" 
    $P114."add_method"($P115, "quote_escape:sym<ff>", $P2521)
    nqp_get_sc_object $P113, "1308672484.87927", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 105
    .const 'Sub' $P2522 = "155_1308672490.86084" 
    $P114."add_method"($P115, "quote_escape:sym<esc>", $P2522)
    nqp_get_sc_object $P113, "1308672484.87927", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 105
    .const 'Sub' $P2523 = "156_1308672490.86084" 
    $P114."add_method"($P115, "quote_escape:sym<hex>", $P2523)
    nqp_get_sc_object $P113, "1308672484.87927", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 105
    .const 'Sub' $P2524 = "157_1308672490.86084" 
    $P114."add_method"($P115, "quote_escape:sym<oct>", $P2524)
    nqp_get_sc_object $P113, "1308672484.87927", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 105
    .const 'Sub' $P2525 = "158_1308672490.86084" 
    $P114."add_method"($P115, "quote_escape:sym<chr>", $P2525)
    nqp_get_sc_object $P113, "1308672484.87927", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 105
    .const 'Sub' $P2526 = "159_1308672490.86084" 
    $P114."add_method"($P115, "quote_escape:sym<0>", $P2526)
    nqp_get_sc_object $P113, "1308672484.87927", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 105
    .const 'Sub' $P2527 = "160_1308672490.86084" 
    $P114."add_method"($P115, "quote_escape:sym<misc>", $P2527)
    nqp_get_sc_object $P113, "1308672484.87927", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 105
    .const 'Sub' $P2528 = "161_1308672490.86084" 
    $P114."add_method"($P115, "charname", $P2528)
    nqp_get_sc_object $P113, "1308672484.87927", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 105
    .const 'Sub' $P2529 = "162_1308672490.86084" 
    $P114."add_method"($P115, "charnames", $P2529)
    nqp_get_sc_object $P113, "1308672484.87927", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 105
    .const 'Sub' $P2530 = "164_1308672490.86084" 
    $P114."add_method"($P115, "charspec", $P2530)
    .const 'Sub' $P2531 = "119_1308672490.86084" 
    $P113 = $P2531."get_lexinfo"()
    nqp_get_sc_object $P114, "1308672484.87927", 105
    $P113."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'Sub' $P2532 = "119_1308672490.86084" 
    $P115 = $P2532."get_lexinfo"()
    $P115."finish_static_lexpad"()
    .const 'Sub' $P2533 = "119_1308672490.86084" 
    $P113 = $P2533."get_lexinfo"()
    nqp_get_sc_object $P114, "1308672484.87927", 105
    $P113."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'Sub' $P2534 = "119_1308672490.86084" 
    $P115 = $P2534."get_lexinfo"()
    $P115."finish_static_lexpad"()
    nqp_get_sc_object $P113, "1308672484.87927", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 105
    nqp_get_sc_object $P116, "1308672483.72185", 5
    $P114."set_default_parent"($P115, $P116)
    nqp_get_sc_object $P113, "1308672484.87927", 105
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 105
    $P114."compose"($P115)
    nqp_get_sc_object $P113, "1308672478.93415", 41
    $P114 = $P113."new_type"("HLL::Compiler" :named("name"))
    nqp_set_sc_for_object $P114, cur_sc
    nqp_set_sc_object "1308672484.87927", 138, $P114
    nqp_get_sc_object $P113, "1308672484.87927", 138
    nqp_get_sc_object $P114, "1308672484.87927", 0
    nqp_get_package_through_who $P115, $P114, "HLL"
    get_who $P116, $P115
    set $P116["Compiler"], $P113
    nqp_get_sc_object $P113, "1308672484.87927", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 138
    nqp_get_sc_object $P116, "1308672478.93415", 80
    $P117 = $P116."new"("@!stages" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1308672484.87927", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 138
    nqp_get_sc_object $P116, "1308672478.93415", 80
    $P117 = $P116."new"("$!parsegrammar" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1308672484.87927", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 138
    nqp_get_sc_object $P116, "1308672478.93415", 80
    $P117 = $P116."new"("$!parseactions" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1308672484.87927", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 138
    nqp_get_sc_object $P116, "1308672478.93415", 80
    $P117 = $P116."new"("$!astgrammar" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1308672484.87927", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 138
    nqp_get_sc_object $P116, "1308672478.93415", 80
    $P117 = $P116."new"("$!commandline_banner" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1308672484.87927", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 138
    nqp_get_sc_object $P116, "1308672478.93415", 80
    $P117 = $P116."new"("$!commandline_prompt" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1308672484.87927", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 138
    nqp_get_sc_object $P116, "1308672478.93415", 80
    $P117 = $P116."new"("@!cmdoptions" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1308672484.87927", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 138
    nqp_get_sc_object $P116, "1308672478.93415", 80
    $P117 = $P116."new"("$!usage" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1308672484.87927", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 138
    nqp_get_sc_object $P116, "1308672478.93415", 80
    $P117 = $P116."new"("$!compiler_progname" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1308672484.87927", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 138
    nqp_get_sc_object $P116, "1308672478.93415", 80
    $P117 = $P116."new"("$!language" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1308672484.87927", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 138
    nqp_get_sc_object $P116, "1308672478.93415", 80
    $P117 = $P116."new"("%!config" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1308672484.87927", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 138
    .const 'Sub' $P2535 = "168_1308672490.86084" 
    $P114."add_method"($P115, "new", $P2535)
    nqp_get_sc_object $P113, "1308672484.87927", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 138
    .const 'Sub' $P2536 = "169_1308672490.86084" 
    $P114."add_method"($P115, "BUILD", $P2536)
    nqp_get_sc_object $P113, "1308672484.87927", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 138
    .const 'Sub' $P2537 = "171_1308672490.86084" 
    $P114."add_method"($P115, "get_exports", $P2537)
    nqp_get_sc_object $P113, "1308672484.87927", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 138
    .const 'Sub' $P2538 = "174_1308672490.86084" 
    $P114."add_method"($P115, "get_module", $P2538)
    nqp_get_sc_object $P113, "1308672484.87927", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 138
    .const 'Sub' $P2539 = "175_1308672490.86084" 
    $P114."add_method"($P115, "language", $P2539)
    nqp_get_sc_object $P113, "1308672484.87927", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 138
    .const 'Sub' $P2540 = "176_1308672490.86084" 
    $P114."add_method"($P115, "compiler", $P2540)
    nqp_get_sc_object $P113, "1308672484.87927", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 138
    .const 'Sub' $P2541 = "177_1308672490.86084" 
    $P114."add_method"($P115, "config", $P2541)
    nqp_get_sc_object $P113, "1308672484.87927", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 138
    .const 'Sub' $P2542 = "178_1308672490.86084" 
    $P114."add_method"($P115, "load_module", $P2542)
    nqp_get_sc_object $P113, "1308672484.87927", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 138
    .const 'Sub' $P2543 = "180_1308672490.86084" 
    $P114."add_method"($P115, "import", $P2543)
    nqp_get_sc_object $P113, "1308672484.87927", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 138
    .const 'Sub' $P2544 = "185_1308672490.86084" 
    $P114."add_method"($P115, "autoprint", $P2544)
    nqp_get_sc_object $P113, "1308672484.87927", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 138
    .const 'Sub' $P2545 = "186_1308672490.86084" 
    $P114."add_method"($P115, "interactive", $P2545)
    nqp_get_sc_object $P113, "1308672484.87927", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 138
    .const 'Sub' $P2546 = "193_1308672490.86084" 
    $P114."add_method"($P115, "eval", $P2546)
    nqp_get_sc_object $P113, "1308672484.87927", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 138
    .const 'Sub' $P2547 = "195_1308672490.86084" 
    $P114."add_method"($P115, "ctxsave", $P2547)
    nqp_get_sc_object $P113, "1308672484.87927", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 138
    .const 'Sub' $P2548 = "196_1308672490.86084" 
    $P114."add_method"($P115, "panic", $P2548)
    nqp_get_sc_object $P113, "1308672484.87927", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 138
    .const 'Sub' $P2549 = "197_1308672490.86084" 
    $P114."add_method"($P115, "stages", $P2549)
    nqp_get_sc_object $P113, "1308672484.87927", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 138
    .const 'Sub' $P2550 = "198_1308672490.86084" 
    $P114."add_method"($P115, "parsegrammar", $P2550)
    nqp_get_sc_object $P113, "1308672484.87927", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 138
    .const 'Sub' $P2551 = "199_1308672490.86084" 
    $P114."add_method"($P115, "parseactions", $P2551)
    nqp_get_sc_object $P113, "1308672484.87927", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 138
    .const 'Sub' $P2552 = "200_1308672490.86084" 
    $P114."add_method"($P115, "astgrammar", $P2552)
    nqp_get_sc_object $P113, "1308672484.87927", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 138
    .const 'Sub' $P2553 = "201_1308672490.86084" 
    $P114."add_method"($P115, "commandline_banner", $P2553)
    nqp_get_sc_object $P113, "1308672484.87927", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 138
    .const 'Sub' $P2554 = "202_1308672490.86084" 
    $P114."add_method"($P115, "commandline_prompt", $P2554)
    nqp_get_sc_object $P113, "1308672484.87927", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 138
    .const 'Sub' $P2555 = "203_1308672490.86084" 
    $P114."add_method"($P115, "compiler_progname", $P2555)
    nqp_get_sc_object $P113, "1308672484.87927", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 138
    .const 'Sub' $P2556 = "204_1308672490.86084" 
    $P114."add_method"($P115, "commandline_options", $P2556)
    nqp_get_sc_object $P113, "1308672484.87927", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 138
    .const 'Sub' $P2557 = "205_1308672490.86084" 
    $P114."add_method"($P115, "command_line", $P2557)
    nqp_get_sc_object $P113, "1308672484.87927", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 138
    .const 'Sub' $P2558 = "207_1308672490.86084" 
    $P114."add_method"($P115, "process_args", $P2558)
    nqp_get_sc_object $P113, "1308672484.87927", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 138
    .const 'Sub' $P2559 = "210_1308672490.86084" 
    $P114."add_method"($P115, "evalfiles", $P2559)
    nqp_get_sc_object $P113, "1308672484.87927", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 138
    .const 'Sub' $P2560 = "214_1308672490.86084" 
    $P114."add_method"($P115, "compile", $P2560)
    nqp_get_sc_object $P113, "1308672484.87927", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 138
    .const 'Sub' $P2561 = "216_1308672490.86084" 
    $P114."add_method"($P115, "parse", $P2561)
    nqp_get_sc_object $P113, "1308672484.87927", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 138
    .const 'Sub' $P2562 = "219_1308672490.86084" 
    $P114."add_method"($P115, "past", $P2562)
    nqp_get_sc_object $P113, "1308672484.87927", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 138
    .const 'Sub' $P2563 = "220_1308672490.86084" 
    $P114."add_method"($P115, "post", $P2563)
    nqp_get_sc_object $P113, "1308672484.87927", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 138
    .const 'Sub' $P2564 = "221_1308672490.86084" 
    $P114."add_method"($P115, "pirbegin", $P2564)
    nqp_get_sc_object $P113, "1308672484.87927", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 138
    .const 'Sub' $P2565 = "222_1308672490.86084" 
    $P114."add_method"($P115, "pir", $P2565)
    nqp_get_sc_object $P113, "1308672484.87927", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 138
    .const 'Sub' $P2566 = "223_1308672490.86084" 
    $P114."add_method"($P115, "evalpmc", $P2566)
    nqp_get_sc_object $P113, "1308672484.87927", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 138
    .const 'Sub' $P2567 = "224_1308672490.86084" 
    $P114."add_method"($P115, "dumper", $P2567)
    nqp_get_sc_object $P113, "1308672484.87927", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 138
    .const 'Sub' $P2568 = "226_1308672490.86084" 
    $P114."add_method"($P115, "usage", $P2568)
    nqp_get_sc_object $P113, "1308672484.87927", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 138
    .const 'Sub' $P2569 = "227_1308672490.86084" 
    $P114."add_method"($P115, "version", $P2569)
    nqp_get_sc_object $P113, "1308672484.87927", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 138
    .const 'Sub' $P2570 = "228_1308672490.86084" 
    $P114."add_method"($P115, "show-config", $P2570)
    nqp_get_sc_object $P113, "1308672484.87927", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 138
    .const 'Sub' $P2571 = "231_1308672490.86084" 
    $P114."add_method"($P115, "removestage", $P2571)
    nqp_get_sc_object $P113, "1308672484.87927", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 138
    .const 'Sub' $P2572 = "233_1308672490.86084" 
    $P114."add_method"($P115, "addstage", $P2572)
    nqp_get_sc_object $P113, "1308672484.87927", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 138
    .const 'Sub' $P2573 = "236_1308672490.86084" 
    $P114."add_method"($P115, "parse_name", $P2573)
    nqp_get_sc_object $P113, "1308672484.87927", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 138
    .const 'Sub' $P2574 = "238_1308672490.86084" 
    $P114."add_method"($P115, "lineof", $P2574)
    .const 'Sub' $P2575 = "165_1308672490.86084" 
    $P113 = $P2575."get_lexinfo"()
    nqp_get_sc_object $P114, "1308672484.87927", 138
    $P113."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'Sub' $P2576 = "165_1308672490.86084" 
    $P115 = $P2576."get_lexinfo"()
    $P115."finish_static_lexpad"()
    .const 'Sub' $P2577 = "165_1308672490.86084" 
    $P113 = $P2577."get_lexinfo"()
    nqp_get_sc_object $P114, "1308672484.87927", 138
    $P113."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'Sub' $P2578 = "165_1308672490.86084" 
    $P115 = $P2578."get_lexinfo"()
    $P115."finish_static_lexpad"()
    nqp_get_sc_object $P113, "1308672484.87927", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 138
    nqp_get_sc_object $P116, "1308672483.72185", 5
    $P114."set_default_parent"($P115, $P116)
    nqp_get_sc_object $P113, "1308672484.87927", 138
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 138
    $P114."compose"($P115)
    nqp_get_sc_object $P113, "1308672478.93415", 41
    $P114 = $P113."new_type"("HLL::CommandLine::Result" :named("name"))
    nqp_set_sc_for_object $P114, cur_sc
    nqp_set_sc_object "1308672484.87927", 179, $P114
    nqp_get_sc_object $P113, "1308672484.87927", 179
    nqp_get_sc_object $P114, "1308672484.87927", 0
    nqp_get_package_through_who $P115, $P114, "HLL"
    nqp_get_package_through_who $P116, $P115, "CommandLine"
    get_who $P117, $P116
    set $P117["Result"], $P113
    nqp_get_sc_object $P113, "1308672484.87927", 179
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 179
    nqp_get_sc_object $P116, "1308672478.93415", 80
    $P117 = $P116."new"("@!arguments" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1308672484.87927", 179
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 179
    nqp_get_sc_object $P116, "1308672478.93415", 80
    $P117 = $P116."new"("%!options" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1308672484.87927", 179
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 179
    .const 'Sub' $P2579 = "240_1308672490.86084" 
    $P114."add_method"($P115, "init", $P2579)
    nqp_get_sc_object $P113, "1308672484.87927", 179
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 179
    .const 'Sub' $P2580 = "241_1308672490.86084" 
    $P114."add_method"($P115, "arguments", $P2580)
    nqp_get_sc_object $P113, "1308672484.87927", 179
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 179
    .const 'Sub' $P2581 = "242_1308672490.86084" 
    $P114."add_method"($P115, "options", $P2581)
    nqp_get_sc_object $P113, "1308672484.87927", 179
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 179
    .const 'Sub' $P2582 = "243_1308672490.86084" 
    $P114."add_method"($P115, "add-argument", $P2582)
    nqp_get_sc_object $P113, "1308672484.87927", 179
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 179
    .const 'Sub' $P2583 = "244_1308672490.86084" 
    $P114."add_method"($P115, "add-option", $P2583)
    .const 'Sub' $P2584 = "239_1308672490.86084" 
    $P113 = $P2584."get_lexinfo"()
    nqp_get_sc_object $P114, "1308672484.87927", 179
    $P113."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'Sub' $P2585 = "239_1308672490.86084" 
    $P115 = $P2585."get_lexinfo"()
    $P115."finish_static_lexpad"()
    .const 'Sub' $P2586 = "239_1308672490.86084" 
    $P113 = $P2586."get_lexinfo"()
    nqp_get_sc_object $P114, "1308672484.87927", 179
    $P113."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'Sub' $P2587 = "239_1308672490.86084" 
    $P115 = $P2587."get_lexinfo"()
    $P115."finish_static_lexpad"()
    nqp_get_sc_object $P113, "1308672484.87927", 179
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 179
    nqp_get_sc_object $P116, "1308672483.72185", 5
    $P114."set_default_parent"($P115, $P116)
    nqp_get_sc_object $P113, "1308672484.87927", 179
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 179
    $P114."compose"($P115)
    nqp_get_sc_object $P113, "1308672478.93415", 41
    $P114 = $P113."new_type"("HLL::CommandLine::Parser" :named("name"))
    nqp_set_sc_for_object $P114, cur_sc
    nqp_set_sc_object "1308672484.87927", 185, $P114
    nqp_get_sc_object $P113, "1308672484.87927", 185
    nqp_get_sc_object $P114, "1308672484.87927", 0
    nqp_get_package_through_who $P115, $P114, "HLL"
    nqp_get_package_through_who $P116, $P115, "CommandLine"
    get_who $P117, $P116
    set $P117["Parser"], $P113
    nqp_get_sc_object $P113, "1308672484.87927", 185
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 185
    nqp_get_sc_object $P116, "1308672478.93415", 80
    $P117 = $P116."new"("@!specs" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1308672484.87927", 185
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 185
    nqp_get_sc_object $P116, "1308672478.93415", 80
    $P117 = $P116."new"("%!options" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1308672484.87927", 185
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 185
    nqp_get_sc_object $P116, "1308672478.93415", 80
    $P117 = $P116."new"("%!stopper" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1308672484.87927", 185
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 185
    nqp_get_sc_object $P116, "1308672478.93415", 80
    $P117 = $P116."new"("$!stop-after-first-arg" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1308672484.87927", 185
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 185
    .const 'Sub' $P2588 = "247_1308672490.86084" 
    $P114."add_method"($P115, "new", $P2588)
    nqp_get_sc_object $P113, "1308672484.87927", 185
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 185
    .const 'Sub' $P2589 = "248_1308672490.86084" 
    $P114."add_method"($P115, "stop-after-first-arg", $P2589)
    nqp_get_sc_object $P113, "1308672484.87927", 185
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 185
    .const 'Sub' $P2590 = "249_1308672490.86084" 
    $P114."add_method"($P115, "BUILD", $P2590)
    nqp_get_sc_object $P113, "1308672484.87927", 185
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 185
    .const 'Sub' $P2591 = "251_1308672490.86084" 
    $P114."add_method"($P115, "add-stopper", $P2591)
    nqp_get_sc_object $P113, "1308672484.87927", 185
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 185
    .const 'Sub' $P2592 = "252_1308672490.86084" 
    $P114."add_method"($P115, "split-option-aliases", $P2592)
    nqp_get_sc_object $P113, "1308672484.87927", 185
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 185
    .const 'Sub' $P2593 = "253_1308672490.86084" 
    $P114."add_method"($P115, "add-spec", $P2593)
    nqp_get_sc_object $P113, "1308672484.87927", 185
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 185
    .const 'Sub' $P2594 = "255_1308672490.86084" 
    $P114."add_method"($P115, "is-option", $P2594)
    nqp_get_sc_object $P113, "1308672484.87927", 185
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 185
    .const 'Sub' $P2595 = "256_1308672490.86084" 
    $P114."add_method"($P115, "wants-value", $P2595)
    nqp_get_sc_object $P113, "1308672484.87927", 185
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 185
    .const 'Sub' $P2596 = "257_1308672490.86084" 
    $P114."add_method"($P115, "parse", $P2596)
    .const 'Sub' $P2597 = "246_1308672490.86084" 
    $P113 = $P2597."get_lexinfo"()
    nqp_get_sc_object $P114, "1308672484.87927", 185
    $P113."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'Sub' $P2598 = "246_1308672490.86084" 
    $P115 = $P2598."get_lexinfo"()
    $P115."finish_static_lexpad"()
    .const 'Sub' $P2599 = "246_1308672490.86084" 
    $P113 = $P2599."get_lexinfo"()
    nqp_get_sc_object $P114, "1308672484.87927", 185
    $P113."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'Sub' $P2600 = "246_1308672490.86084" 
    $P115 = $P2600."get_lexinfo"()
    $P115."finish_static_lexpad"()
    nqp_get_sc_object $P113, "1308672484.87927", 185
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 185
    nqp_get_sc_object $P116, "1308672483.72185", 5
    $P114."set_default_parent"($P115, $P116)
    nqp_get_sc_object $P113, "1308672484.87927", 185
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 185
    $P114."compose"($P115)
    nqp_get_sc_object $P113, "1308672478.93415", 41
    $P114 = $P113."new_type"("HLL::Compiler::SerializationContextBuilder" :named("name"))
    nqp_set_sc_for_object $P114, cur_sc
    nqp_set_sc_object "1308672484.87927", 195, $P114
    nqp_get_sc_object $P113, "1308672484.87927", 195
    nqp_get_sc_object $P114, "1308672484.87927", 0
    nqp_get_package_through_who $P115, $P114, "HLL"
    nqp_get_package_through_who $P116, $P115, "Compiler"
    get_who $P117, $P116
    set $P117["SerializationContextBuilder"], $P113
    nqp_get_sc_object $P113, "1308672478.93415", 41
    $P114 = $P113."new_type"("Event" :named("name"))
    nqp_set_sc_for_object $P114, cur_sc
    nqp_set_sc_object "1308672484.87927", 196, $P114
    .const 'Sub' $P2601 = "265_1308672490.86084" 
    $P113 = $P2601."get_lexinfo"()
    nqp_get_sc_object $P114, "1308672484.87927", 196
    $P113."set_static_lexpad_value"("Event", $P114)
    .const 'Sub' $P2602 = "265_1308672490.86084" 
    $P115 = $P2602."get_lexinfo"()
    $P115."finish_static_lexpad"()
    nqp_get_sc_object $P113, "1308672484.87927", 196
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 196
    nqp_get_sc_object $P116, "1308672478.93415", 80
    $P117 = $P116."new"("$!deserialize_past" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1308672484.87927", 196
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 196
    .const 'Sub' $P2603 = "268_1308672490.86084" 
    $P114."add_method"($P115, "deserialize_past", $P2603)
    nqp_get_sc_object $P113, "1308672484.87927", 196
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 196
    nqp_get_sc_object $P116, "1308672478.93415", 80
    $P117 = $P116."new"("$!fixup_past" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1308672484.87927", 196
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 196
    .const 'Sub' $P2604 = "269_1308672490.86084" 
    $P114."add_method"($P115, "fixup_past", $P2604)
    .const 'Sub' $P2605 = "267_1308672490.86084" 
    $P113 = $P2605."get_lexinfo"()
    nqp_get_sc_object $P114, "1308672484.87927", 196
    $P113."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'Sub' $P2606 = "267_1308672490.86084" 
    $P115 = $P2606."get_lexinfo"()
    $P115."finish_static_lexpad"()
    .const 'Sub' $P2607 = "267_1308672490.86084" 
    $P113 = $P2607."get_lexinfo"()
    nqp_get_sc_object $P114, "1308672484.87927", 196
    $P113."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'Sub' $P2608 = "267_1308672490.86084" 
    $P115 = $P2608."get_lexinfo"()
    $P115."finish_static_lexpad"()
    nqp_get_sc_object $P113, "1308672484.87927", 196
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 196
    nqp_get_sc_object $P116, "1308672483.72185", 5
    $P114."set_default_parent"($P115, $P116)
    nqp_get_sc_object $P113, "1308672484.87927", 196
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 196
    $P114."compose"($P115)
    nqp_get_sc_object $P113, "1308672484.87927", 195
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 195
    nqp_get_sc_object $P116, "1308672478.93415", 80
    $P117 = $P116."new"("$!sc" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1308672484.87927", 195
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 195
    nqp_get_sc_object $P116, "1308672478.93415", 80
    $P117 = $P116."new"("$!handle" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1308672484.87927", 195
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 195
    nqp_get_sc_object $P116, "1308672478.93415", 80
    $P117 = $P116."new"("%!addr_to_slot" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1308672484.87927", 195
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 195
    nqp_get_sc_object $P116, "1308672478.93415", 80
    $P117 = $P116."new"("@!event_stream" :named("name"))
    $P114."add_attribute"($P115, $P117)
    nqp_get_sc_object $P113, "1308672484.87927", 195
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 195
    .const 'Sub' $P2609 = "270_1308672490.86084" 
    $P114."add_method"($P115, "new", $P2609)
    nqp_get_sc_object $P113, "1308672484.87927", 195
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 195
    .const 'Sub' $P2610 = "271_1308672490.86084" 
    $P114."add_method"($P115, "BUILD", $P2610)
    nqp_get_sc_object $P113, "1308672484.87927", 195
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 195
    .const 'Sub' $P2611 = "272_1308672490.86084" 
    $P114."add_method"($P115, "slot_for_object", $P2611)
    nqp_get_sc_object $P113, "1308672484.87927", 195
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 195
    .const 'Sub' $P2612 = "273_1308672490.86084" 
    $P114."add_method"($P115, "get_slot_past_for_object", $P2612)
    nqp_get_sc_object $P113, "1308672484.87927", 195
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 195
    .const 'Sub' $P2613 = "274_1308672490.86084" 
    $P114."add_method"($P115, "set_slot_past", $P2613)
    nqp_get_sc_object $P113, "1308672484.87927", 195
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 195
    .const 'Sub' $P2614 = "275_1308672490.86084" 
    $P114."add_method"($P115, "set_cur_sc", $P2614)
    nqp_get_sc_object $P113, "1308672484.87927", 195
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 195
    .const 'Sub' $P2615 = "276_1308672490.86084" 
    $P114."add_method"($P115, "add_object", $P2615)
    nqp_get_sc_object $P113, "1308672484.87927", 195
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 195
    .const 'Sub' $P2616 = "277_1308672490.86084" 
    $P114."add_method"($P115, "add_code", $P2616)
    nqp_get_sc_object $P113, "1308672484.87927", 195
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 195
    .const 'Sub' $P2617 = "278_1308672490.86084" 
    $P114."add_method"($P115, "add_event", $P2617)
    nqp_get_sc_object $P113, "1308672484.87927", 195
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 195
    .const 'Sub' $P2618 = "279_1308672490.86084" 
    $P114."add_method"($P115, "get_object_sc_ref_past", $P2618)
    nqp_get_sc_object $P113, "1308672484.87927", 195
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 195
    .const 'Sub' $P2619 = "280_1308672490.86084" 
    $P114."add_method"($P115, "sc", $P2619)
    nqp_get_sc_object $P113, "1308672484.87927", 195
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 195
    .const 'Sub' $P2620 = "281_1308672490.86084" 
    $P114."add_method"($P115, "handle", $P2620)
    nqp_get_sc_object $P113, "1308672484.87927", 195
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 195
    .const 'Sub' $P2621 = "282_1308672490.86084" 
    $P114."add_method"($P115, "event_stream", $P2621)
    .const 'Sub' $P2622 = "265_1308672490.86084" 
    $P113 = $P2622."get_lexinfo"()
    nqp_get_sc_object $P114, "1308672484.87927", 195
    $P113."set_static_lexpad_value"("$?PACKAGE", $P114)
    .const 'Sub' $P2623 = "265_1308672490.86084" 
    $P115 = $P2623."get_lexinfo"()
    $P115."finish_static_lexpad"()
    .const 'Sub' $P2624 = "265_1308672490.86084" 
    $P113 = $P2624."get_lexinfo"()
    nqp_get_sc_object $P114, "1308672484.87927", 195
    $P113."set_static_lexpad_value"("$?CLASS", $P114)
    .const 'Sub' $P2625 = "265_1308672490.86084" 
    $P115 = $P2625."get_lexinfo"()
    $P115."finish_static_lexpad"()
    nqp_get_sc_object $P113, "1308672484.87927", 195
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 195
    nqp_get_sc_object $P116, "1308672483.72185", 5
    $P114."set_default_parent"($P115, $P116)
    nqp_get_sc_object $P113, "1308672484.87927", 195
    get_how $P114, $P113
    nqp_get_sc_object $P115, "1308672484.87927", 195
    $P114."compose"($P115)
  if_2383_end:
    nqp_get_sc_object $P113, "1308672484.87927", 0
    set_hll_global "GLOBAL", $P113
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block1006"  :subid("11_1308672490.86084") :outer("10_1308672490.86084")
.annotate 'line', 7
    .const 'Sub' $P1308 = "118_1308672490.86084" 
    capture_lex $P1308
    .const 'Sub' $P1305 = "117_1308672490.86084" 
    capture_lex $P1305
    .const 'Sub' $P1297 = "116_1308672490.86084" 
    capture_lex $P1297
    .const 'Sub' $P1289 = "115_1308672490.86084" 
    capture_lex $P1289
    .const 'Sub' $P1285 = "114_1308672490.86084" 
    capture_lex $P1285
    .const 'Sub' $P1282 = "113_1308672490.86084" 
    capture_lex $P1282
    .const 'Sub' $P1279 = "112_1308672490.86084" 
    capture_lex $P1279
    .const 'Sub' $P1277 = "111_1308672490.86084" 
    capture_lex $P1277
    .const 'Sub' $P1275 = "110_1308672490.86084" 
    capture_lex $P1275
    .const 'Sub' $P1272 = "109_1308672490.86084" 
    capture_lex $P1272
    .const 'Sub' $P1269 = "108_1308672490.86084" 
    capture_lex $P1269
    .const 'Sub' $P1265 = "107_1308672490.86084" 
    capture_lex $P1265
    .const 'Sub' $P1254 = "106_1308672490.86084" 
    capture_lex $P1254
    .const 'Sub' $P1250 = "105_1308672490.86084" 
    capture_lex $P1250
    .const 'Sub' $P1249 = "104_1308672490.86084" 
    capture_lex $P1249
    .const 'Sub' $P1244 = "103_1308672490.86084" 
    capture_lex $P1244
    .const 'Sub' $P1243 = "102_1308672490.86084" 
    capture_lex $P1243
    .const 'Sub' $P1239 = "101_1308672490.86084" 
    capture_lex $P1239
    .const 'Sub' $P1238 = "100_1308672490.86084" 
    capture_lex $P1238
    .const 'Sub' $P1228 = "98_1308672490.86084" 
    capture_lex $P1228
    .const 'Sub' $P1227 = "97_1308672490.86084" 
    capture_lex $P1227
    .const 'Sub' $P1211 = "93_1308672490.86084" 
    capture_lex $P1211
    .const 'Sub' $P1210 = "92_1308672490.86084" 
    capture_lex $P1210
    .const 'Sub' $P1206 = "91_1308672490.86084" 
    capture_lex $P1206
    .const 'Sub' $P1205 = "90_1308672490.86084" 
    capture_lex $P1205
    .const 'Sub' $P1202 = "89_1308672490.86084" 
    capture_lex $P1202
    .const 'Sub' $P1201 = "88_1308672490.86084" 
    capture_lex $P1201
    .const 'Sub' $P1197 = "87_1308672490.86084" 
    capture_lex $P1197
    .const 'Sub' $P1196 = "86_1308672490.86084" 
    capture_lex $P1196
    .const 'Sub' $P1192 = "85_1308672490.86084" 
    capture_lex $P1192
    .const 'Sub' $P1191 = "84_1308672490.86084" 
    capture_lex $P1191
    .const 'Sub' $P1188 = "83_1308672490.86084" 
    capture_lex $P1188
    .const 'Sub' $P1187 = "82_1308672490.86084" 
    capture_lex $P1187
    .const 'Sub' $P1184 = "81_1308672490.86084" 
    capture_lex $P1184
    .const 'Sub' $P1183 = "80_1308672490.86084" 
    capture_lex $P1183
    .const 'Sub' $P1180 = "79_1308672490.86084" 
    capture_lex $P1180
    .const 'Sub' $P1179 = "78_1308672490.86084" 
    capture_lex $P1179
    .const 'Sub' $P1176 = "77_1308672490.86084" 
    capture_lex $P1176
    .const 'Sub' $P1175 = "76_1308672490.86084" 
    capture_lex $P1175
    .const 'Sub' $P1172 = "75_1308672490.86084" 
    capture_lex $P1172
    .const 'Sub' $P1171 = "74_1308672490.86084" 
    capture_lex $P1171
    .const 'Sub' $P1168 = "73_1308672490.86084" 
    capture_lex $P1168
    .const 'Sub' $P1167 = "72_1308672490.86084" 
    capture_lex $P1167
    .const 'Sub' $P1164 = "71_1308672490.86084" 
    capture_lex $P1164
    .const 'Sub' $P1163 = "70_1308672490.86084" 
    capture_lex $P1163
    .const 'Sub' $P1160 = "69_1308672490.86084" 
    capture_lex $P1160
    .const 'Sub' $P1155 = "66_1308672490.86084" 
    capture_lex $P1155
    .const 'Sub' $P1151 = "65_1308672490.86084" 
    capture_lex $P1151
    .const 'Sub' $P1150 = "64_1308672490.86084" 
    capture_lex $P1150
    .const 'Sub' $P1139 = "63_1308672490.86084" 
    capture_lex $P1139
    .const 'Sub' $P1138 = "62_1308672490.86084" 
    capture_lex $P1138
    .const 'Sub' $P1133 = "61_1308672490.86084" 
    capture_lex $P1133
    .const 'Sub' $P1132 = "60_1308672490.86084" 
    capture_lex $P1132
    .const 'Sub' $P1128 = "59_1308672490.86084" 
    capture_lex $P1128
    .const 'Sub' $P1127 = "58_1308672490.86084" 
    capture_lex $P1127
    .const 'Sub' $P1122 = "57_1308672490.86084" 
    capture_lex $P1122
    .const 'Sub' $P1121 = "56_1308672490.86084" 
    capture_lex $P1121
    .const 'Sub' $P1117 = "55_1308672490.86084" 
    capture_lex $P1117
    .const 'Sub' $P1116 = "54_1308672490.86084" 
    capture_lex $P1116
    .const 'Sub' $P1111 = "53_1308672490.86084" 
    capture_lex $P1111
    .const 'Sub' $P1110 = "52_1308672490.86084" 
    capture_lex $P1110
    .const 'Sub' $P1106 = "51_1308672490.86084" 
    capture_lex $P1106
    .const 'Sub' $P1105 = "50_1308672490.86084" 
    capture_lex $P1105
    .const 'Sub' $P1100 = "49_1308672490.86084" 
    capture_lex $P1100
    .const 'Sub' $P1099 = "48_1308672490.86084" 
    capture_lex $P1099
    .const 'Sub' $P1095 = "47_1308672490.86084" 
    capture_lex $P1095
    .const 'Sub' $P1094 = "46_1308672490.86084" 
    capture_lex $P1094
    .const 'Sub' $P1090 = "45_1308672490.86084" 
    capture_lex $P1090
    .const 'Sub' $P1089 = "44_1308672490.86084" 
    capture_lex $P1089
    .const 'Sub' $P1084 = "43_1308672490.86084" 
    capture_lex $P1084
    .const 'Sub' $P1083 = "42_1308672490.86084" 
    capture_lex $P1083
    .const 'Sub' $P1078 = "41_1308672490.86084" 
    capture_lex $P1078
    .const 'Sub' $P1075 = "40_1308672490.86084" 
    capture_lex $P1075
    .const 'Sub' $P1074 = "39_1308672490.86084" 
    capture_lex $P1074
    .const 'Sub' $P1071 = "38_1308672490.86084" 
    capture_lex $P1071
    .const 'Sub' $P1070 = "37_1308672490.86084" 
    capture_lex $P1070
    .const 'Sub' $P1067 = "36_1308672490.86084" 
    capture_lex $P1067
    .const 'Sub' $P1066 = "35_1308672490.86084" 
    capture_lex $P1066
    .const 'Sub' $P1062 = "34_1308672490.86084" 
    capture_lex $P1062
    .const 'Sub' $P1061 = "33_1308672490.86084" 
    capture_lex $P1061
    .const 'Sub' $P1058 = "32_1308672490.86084" 
    capture_lex $P1058
    .const 'Sub' $P1057 = "31_1308672490.86084" 
    capture_lex $P1057
    .const 'Sub' $P1054 = "30_1308672490.86084" 
    capture_lex $P1054
    .const 'Sub' $P1053 = "29_1308672490.86084" 
    capture_lex $P1053
    .const 'Sub' $P1050 = "28_1308672490.86084" 
    capture_lex $P1050
    .const 'Sub' $P1025 = "15_1308672490.86084" 
    capture_lex $P1025
    .const 'Sub' $P1018 = "14_1308672490.86084" 
    capture_lex $P1018
    .const 'Sub' $P1017 = "13_1308672490.86084" 
    capture_lex $P1017
    .const 'Sub' $P1012 = "12_1308672490.86084" 
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
    unless_null $P105, vivify_285
    new $P105, "Undef"
  vivify_285:
    get_who $P106, $P105
    set $P107, $P106["Cursor"]
    unless_null $P107, vivify_286
    new $P107, "Undef"
  vivify_286:
    store_lex "$cursor_class", $P107
.annotate 'line', 843
    .const 'Sub' $P1308 = "118_1308672490.86084" 
    newclosure $P1316, $P1308
.annotate 'line', 7
    .return ($P1316)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "ws"  :subid("12_1308672490.86084") :method :outer("11_1308672490.86084")
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
    if_null rx1013_debug, debug_287
    rx1013_cur."!cursor_debug"("START", "ws")
  debug_287:
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
    if_null rx1013_debug, debug_288
    rx1013_cur."!cursor_debug"("PASS", "ws", " at pos=", rx1013_pos)
  debug_288:
    .return (rx1013_cur)
  rx1013_restart:
.annotate 'line', 7
    if_null rx1013_debug, debug_289
    rx1013_cur."!cursor_debug"("NEXT", "ws")
  debug_289:
  rx1013_fail:
    (rx1013_rep, rx1013_pos, $I10, $P10) = rx1013_cur."!mark_fail"(0)
    lt rx1013_pos, -1, rx1013_done
    eq rx1013_pos, -1, rx1013_fail
    jump $I10
  rx1013_done:
    rx1013_cur."!cursor_fail"()
    if_null rx1013_debug, debug_290
    rx1013_cur."!cursor_debug"("FAIL", "ws")
  debug_290:
    .return (rx1013_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__ws"  :subid("13_1308672490.86084") :method :outer("11_1308672490.86084")
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, ""
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "termish"  :subid("14_1308672490.86084") :method :outer("11_1308672490.86084")
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
    if_null rx1019_debug, debug_291
    rx1019_cur."!cursor_debug"("START", "termish")
  debug_291:
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
    if_null rx1019_debug, debug_292
    rx1019_cur."!cursor_debug"("PASS", "termish", " at pos=", rx1019_pos)
  debug_292:
    .return (rx1019_cur)
  rx1019_restart:
.annotate 'line', 7
    if_null rx1019_debug, debug_293
    rx1019_cur."!cursor_debug"("NEXT", "termish")
  debug_293:
  rx1019_fail:
    (rx1019_rep, rx1019_pos, $I10, $P10) = rx1019_cur."!mark_fail"(0)
    lt rx1019_pos, -1, rx1019_done
    eq rx1019_pos, -1, rx1019_fail
    jump $I10
  rx1019_done:
    rx1019_cur."!cursor_fail"()
    if_null rx1019_debug, debug_294
    rx1019_cur."!cursor_debug"("FAIL", "termish")
  debug_294:
    .return (rx1019_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__termish"  :subid("15_1308672490.86084") :method :outer("11_1308672490.86084")
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, ""
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "term"  :subid("16_1308672490.86084")
    .param pmc param_1027
.annotate 'line', 20
    .lex "self", param_1027
    $P103 = param_1027."!protoregex"("term")
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__term"  :subid("17_1308672490.86084")
    .param pmc param_1029
.annotate 'line', 20
    .lex "self", param_1029
    $P104 = param_1029."!PREFIX__!protoregex"("term")
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "infix"  :subid("18_1308672490.86084")
    .param pmc param_1031
.annotate 'line', 21
    .lex "self", param_1031
    $P103 = param_1031."!protoregex"("infix")
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__infix"  :subid("19_1308672490.86084")
    .param pmc param_1033
.annotate 'line', 21
    .lex "self", param_1033
    $P104 = param_1033."!PREFIX__!protoregex"("infix")
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "prefix"  :subid("20_1308672490.86084")
    .param pmc param_1035
.annotate 'line', 22
    .lex "self", param_1035
    $P103 = param_1035."!protoregex"("prefix")
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__prefix"  :subid("21_1308672490.86084")
    .param pmc param_1037
.annotate 'line', 22
    .lex "self", param_1037
    $P104 = param_1037."!PREFIX__!protoregex"("prefix")
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postfix"  :subid("22_1308672490.86084")
    .param pmc param_1039
.annotate 'line', 23
    .lex "self", param_1039
    $P103 = param_1039."!protoregex"("postfix")
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postfix"  :subid("23_1308672490.86084")
    .param pmc param_1041
.annotate 'line', 23
    .lex "self", param_1041
    $P104 = param_1041."!PREFIX__!protoregex"("postfix")
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "circumfix"  :subid("24_1308672490.86084")
    .param pmc param_1043
.annotate 'line', 24
    .lex "self", param_1043
    $P103 = param_1043."!protoregex"("circumfix")
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__circumfix"  :subid("25_1308672490.86084")
    .param pmc param_1045
.annotate 'line', 24
    .lex "self", param_1045
    $P104 = param_1045."!PREFIX__!protoregex"("circumfix")
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postcircumfix"  :subid("26_1308672490.86084")
    .param pmc param_1047
.annotate 'line', 25
    .lex "self", param_1047
    $P103 = param_1047."!protoregex"("postcircumfix")
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postcircumfix"  :subid("27_1308672490.86084")
    .param pmc param_1049
.annotate 'line', 25
    .lex "self", param_1049
    $P104 = param_1049."!PREFIX__!protoregex"("postcircumfix")
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "term:sym<circumfix>"  :subid("28_1308672490.86084") :method :outer("11_1308672490.86084")
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
    if_null rx1051_debug, debug_295
    rx1051_cur."!cursor_debug"("START", "term:sym<circumfix>")
  debug_295:
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
    if_null rx1051_debug, debug_296
    rx1051_cur."!cursor_debug"("PASS", "term:sym<circumfix>", " at pos=", rx1051_pos)
  debug_296:
    .return (rx1051_cur)
  rx1051_restart:
.annotate 'line', 7
    if_null rx1051_debug, debug_297
    rx1051_cur."!cursor_debug"("NEXT", "term:sym<circumfix>")
  debug_297:
  rx1051_fail:
    (rx1051_rep, rx1051_pos, $I10, $P10) = rx1051_cur."!mark_fail"(0)
    lt rx1051_pos, -1, rx1051_done
    eq rx1051_pos, -1, rx1051_fail
    jump $I10
  rx1051_done:
    rx1051_cur."!cursor_fail"()
    if_null rx1051_debug, debug_298
    rx1051_cur."!cursor_debug"("FAIL", "term:sym<circumfix>")
  debug_298:
    .return (rx1051_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__term:sym<circumfix>"  :subid("29_1308672490.86084") :method :outer("11_1308672490.86084")
.annotate 'line', 7
    $P103 = self."!PREFIX__!subrule"("circumfix", "")
    new $P104, "ResizablePMCArray"
    push $P104, $P103
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "infixish"  :subid("30_1308672490.86084") :method :outer("11_1308672490.86084")
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
    if_null rx1055_debug, debug_299
    rx1055_cur."!cursor_debug"("START", "infixish")
  debug_299:
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
    if_null rx1055_debug, debug_300
    rx1055_cur."!cursor_debug"("PASS", "infixish", " at pos=", rx1055_pos)
  debug_300:
    .return (rx1055_cur)
  rx1055_restart:
.annotate 'line', 7
    if_null rx1055_debug, debug_301
    rx1055_cur."!cursor_debug"("NEXT", "infixish")
  debug_301:
  rx1055_fail:
    (rx1055_rep, rx1055_pos, $I10, $P10) = rx1055_cur."!mark_fail"(0)
    lt rx1055_pos, -1, rx1055_done
    eq rx1055_pos, -1, rx1055_fail
    jump $I10
  rx1055_done:
    rx1055_cur."!cursor_fail"()
    if_null rx1055_debug, debug_302
    rx1055_cur."!cursor_debug"("FAIL", "infixish")
  debug_302:
    .return (rx1055_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__infixish"  :subid("31_1308672490.86084") :method :outer("11_1308672490.86084")
.annotate 'line', 7
    $P103 = self."!PREFIX__!subrule"("infix", "")
    new $P104, "ResizablePMCArray"
    push $P104, $P103
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "prefixish"  :subid("32_1308672490.86084") :method :outer("11_1308672490.86084")
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
    if_null rx1059_debug, debug_303
    rx1059_cur."!cursor_debug"("START", "prefixish")
  debug_303:
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
    if_null rx1059_debug, debug_304
    rx1059_cur."!cursor_debug"("PASS", "prefixish", " at pos=", rx1059_pos)
  debug_304:
    .return (rx1059_cur)
  rx1059_restart:
.annotate 'line', 7
    if_null rx1059_debug, debug_305
    rx1059_cur."!cursor_debug"("NEXT", "prefixish")
  debug_305:
  rx1059_fail:
    (rx1059_rep, rx1059_pos, $I10, $P10) = rx1059_cur."!mark_fail"(0)
    lt rx1059_pos, -1, rx1059_done
    eq rx1059_pos, -1, rx1059_fail
    jump $I10
  rx1059_done:
    rx1059_cur."!cursor_fail"()
    if_null rx1059_debug, debug_306
    rx1059_cur."!cursor_debug"("FAIL", "prefixish")
  debug_306:
    .return (rx1059_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__prefixish"  :subid("33_1308672490.86084") :method :outer("11_1308672490.86084")
.annotate 'line', 7
    $P103 = self."!PREFIX__!subrule"("prefix", "")
    new $P104, "ResizablePMCArray"
    push $P104, $P103
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "postfixish"  :subid("34_1308672490.86084") :method :outer("11_1308672490.86084")
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
    if_null rx1063_debug, debug_307
    rx1063_cur."!cursor_debug"("START", "postfixish")
  debug_307:
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
    if_null rx1063_debug, debug_308
    rx1063_cur."!cursor_debug"("PASS", "postfixish", " at pos=", rx1063_pos)
  debug_308:
    .return (rx1063_cur)
  rx1063_restart:
.annotate 'line', 7
    if_null rx1063_debug, debug_309
    rx1063_cur."!cursor_debug"("NEXT", "postfixish")
  debug_309:
  rx1063_fail:
    (rx1063_rep, rx1063_pos, $I10, $P10) = rx1063_cur."!mark_fail"(0)
    lt rx1063_pos, -1, rx1063_done
    eq rx1063_pos, -1, rx1063_fail
    jump $I10
  rx1063_done:
    rx1063_cur."!cursor_fail"()
    if_null rx1063_debug, debug_310
    rx1063_cur."!cursor_debug"("FAIL", "postfixish")
  debug_310:
    .return (rx1063_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__postfixish"  :subid("35_1308672490.86084") :method :outer("11_1308672490.86084")
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
.sub "nullterm"  :subid("36_1308672490.86084") :method :outer("11_1308672490.86084")
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
    if_null rx1068_debug, debug_311
    rx1068_cur."!cursor_debug"("START", "nullterm")
  debug_311:
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
    if_null rx1068_debug, debug_312
    rx1068_cur."!cursor_debug"("PASS", "nullterm", " at pos=", rx1068_pos)
  debug_312:
    .return (rx1068_cur)
  rx1068_restart:
.annotate 'line', 7
    if_null rx1068_debug, debug_313
    rx1068_cur."!cursor_debug"("NEXT", "nullterm")
  debug_313:
  rx1068_fail:
    (rx1068_rep, rx1068_pos, $I10, $P10) = rx1068_cur."!mark_fail"(0)
    lt rx1068_pos, -1, rx1068_done
    eq rx1068_pos, -1, rx1068_fail
    jump $I10
  rx1068_done:
    rx1068_cur."!cursor_fail"()
    if_null rx1068_debug, debug_314
    rx1068_cur."!cursor_debug"("FAIL", "nullterm")
  debug_314:
    .return (rx1068_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__nullterm"  :subid("37_1308672490.86084") :method :outer("11_1308672490.86084")
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, ""
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "nullterm_alt"  :subid("38_1308672490.86084") :method :outer("11_1308672490.86084")
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
    if_null rx1072_debug, debug_315
    rx1072_cur."!cursor_debug"("START", "nullterm_alt")
  debug_315:
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
    if_null rx1072_debug, debug_316
    rx1072_cur."!cursor_debug"("PASS", "nullterm_alt", " at pos=", rx1072_pos)
  debug_316:
    .return (rx1072_cur)
  rx1072_restart:
.annotate 'line', 7
    if_null rx1072_debug, debug_317
    rx1072_cur."!cursor_debug"("NEXT", "nullterm_alt")
  debug_317:
  rx1072_fail:
    (rx1072_rep, rx1072_pos, $I10, $P10) = rx1072_cur."!mark_fail"(0)
    lt rx1072_pos, -1, rx1072_done
    eq rx1072_pos, -1, rx1072_fail
    jump $I10
  rx1072_done:
    rx1072_cur."!cursor_fail"()
    if_null rx1072_debug, debug_318
    rx1072_cur."!cursor_debug"("FAIL", "nullterm_alt")
  debug_318:
    .return (rx1072_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__nullterm_alt"  :subid("39_1308672490.86084") :method :outer("11_1308672490.86084")
.annotate 'line', 7
    $P103 = self."!PREFIX__!subrule"("nullterm", "")
    new $P104, "ResizablePMCArray"
    push $P104, $P103
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "nulltermish" :anon :subid("40_1308672490.86084") :outer("11_1308672490.86084")
    .param pmc param_1076
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
.sub "quote_delimited"  :subid("41_1308672490.86084") :method :outer("11_1308672490.86084")
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
    if_null rx1079_debug, debug_319
    rx1079_cur."!cursor_debug"("START", "quote_delimited")
  debug_319:
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
    if_null rx1079_debug, debug_320
    rx1079_cur."!cursor_debug"("PASS", "quote_delimited", " at pos=", rx1079_pos)
  debug_320:
    .return (rx1079_cur)
  rx1079_restart:
.annotate 'line', 7
    if_null rx1079_debug, debug_321
    rx1079_cur."!cursor_debug"("NEXT", "quote_delimited")
  debug_321:
  rx1079_fail:
    (rx1079_rep, rx1079_pos, $I10, $P10) = rx1079_cur."!mark_fail"(0)
    lt rx1079_pos, -1, rx1079_done
    eq rx1079_pos, -1, rx1079_fail
    jump $I10
  rx1079_done:
    rx1079_cur."!cursor_fail"()
    if_null rx1079_debug, debug_322
    rx1079_cur."!cursor_debug"("FAIL", "quote_delimited")
  debug_322:
    .return (rx1079_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_delimited"  :subid("42_1308672490.86084") :method :outer("11_1308672490.86084")
.annotate 'line', 7
    $P103 = self."!PREFIX__!subrule"("starter", "")
    new $P104, "ResizablePMCArray"
    push $P104, $P103
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_atom"  :subid("43_1308672490.86084") :method :outer("11_1308672490.86084")
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
    if_null rx1085_debug, debug_323
    rx1085_cur."!cursor_debug"("START", "quote_atom")
  debug_323:
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
    if_null rx1085_debug, debug_324
    rx1085_cur."!cursor_debug"("PASS", "quote_atom", " at pos=", rx1085_pos)
  debug_324:
    .return (rx1085_cur)
  rx1085_restart:
.annotate 'line', 7
    if_null rx1085_debug, debug_325
    rx1085_cur."!cursor_debug"("NEXT", "quote_atom")
  debug_325:
  rx1085_fail:
    (rx1085_rep, rx1085_pos, $I10, $P10) = rx1085_cur."!mark_fail"(0)
    lt rx1085_pos, -1, rx1085_done
    eq rx1085_pos, -1, rx1085_fail
    jump $I10
  rx1085_done:
    rx1085_cur."!cursor_fail"()
    if_null rx1085_debug, debug_326
    rx1085_cur."!cursor_debug"("FAIL", "quote_atom")
  debug_326:
    .return (rx1085_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_atom"  :subid("44_1308672490.86084") :method :outer("11_1308672490.86084")
.annotate 'line', 7
    new $P105, "ResizablePMCArray"
    push $P105, ""
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "decint"  :subid("45_1308672490.86084") :method :outer("11_1308672490.86084")
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
    if_null rx1091_debug, debug_327
    rx1091_cur."!cursor_debug"("START", "decint")
  debug_327:
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
    if_null rx1091_debug, debug_328
    rx1091_cur."!cursor_debug"("PASS", "decint", " at pos=", rx1091_pos)
  debug_328:
    .return (rx1091_cur)
  rx1091_restart:
.annotate 'line', 7
    if_null rx1091_debug, debug_329
    rx1091_cur."!cursor_debug"("NEXT", "decint")
  debug_329:
  rx1091_fail:
    (rx1091_rep, rx1091_pos, $I10, $P10) = rx1091_cur."!mark_fail"(0)
    lt rx1091_pos, -1, rx1091_done
    eq rx1091_pos, -1, rx1091_fail
    jump $I10
  rx1091_done:
    rx1091_cur."!cursor_fail"()
    if_null rx1091_debug, debug_330
    rx1091_cur."!cursor_debug"("FAIL", "decint")
  debug_330:
    .return (rx1091_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__decint"  :subid("46_1308672490.86084") :method :outer("11_1308672490.86084")
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, ""
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "decints"  :subid("47_1308672490.86084") :method :outer("11_1308672490.86084")
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
    if_null rx1096_debug, debug_331
    rx1096_cur."!cursor_debug"("START", "decints")
  debug_331:
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
    if_null rx1096_debug, debug_332
    rx1096_cur."!cursor_debug"("PASS", "decints", " at pos=", rx1096_pos)
  debug_332:
    .return (rx1096_cur)
  rx1096_restart:
.annotate 'line', 7
    if_null rx1096_debug, debug_333
    rx1096_cur."!cursor_debug"("NEXT", "decints")
  debug_333:
  rx1096_fail:
    (rx1096_rep, rx1096_pos, $I10, $P10) = rx1096_cur."!mark_fail"(0)
    lt rx1096_pos, -1, rx1096_done
    eq rx1096_pos, -1, rx1096_fail
    jump $I10
  rx1096_done:
    rx1096_cur."!cursor_fail"()
    if_null rx1096_debug, debug_334
    rx1096_cur."!cursor_debug"("FAIL", "decints")
  debug_334:
    .return (rx1096_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__decints"  :subid("48_1308672490.86084") :method :outer("11_1308672490.86084")
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, ""
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "hexint"  :subid("49_1308672490.86084") :method :outer("11_1308672490.86084")
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
    if_null rx1101_debug, debug_335
    rx1101_cur."!cursor_debug"("START", "hexint")
  debug_335:
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
    if_null rx1101_debug, debug_336
    rx1101_cur."!cursor_debug"("PASS", "hexint", " at pos=", rx1101_pos)
  debug_336:
    .return (rx1101_cur)
  rx1101_restart:
.annotate 'line', 7
    if_null rx1101_debug, debug_337
    rx1101_cur."!cursor_debug"("NEXT", "hexint")
  debug_337:
  rx1101_fail:
    (rx1101_rep, rx1101_pos, $I10, $P10) = rx1101_cur."!mark_fail"(0)
    lt rx1101_pos, -1, rx1101_done
    eq rx1101_pos, -1, rx1101_fail
    jump $I10
  rx1101_done:
    rx1101_cur."!cursor_fail"()
    if_null rx1101_debug, debug_338
    rx1101_cur."!cursor_debug"("FAIL", "hexint")
  debug_338:
    .return (rx1101_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__hexint"  :subid("50_1308672490.86084") :method :outer("11_1308672490.86084")
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, ""
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "hexints"  :subid("51_1308672490.86084") :method :outer("11_1308672490.86084")
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
    if_null rx1107_debug, debug_339
    rx1107_cur."!cursor_debug"("START", "hexints")
  debug_339:
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
    if_null rx1107_debug, debug_340
    rx1107_cur."!cursor_debug"("PASS", "hexints", " at pos=", rx1107_pos)
  debug_340:
    .return (rx1107_cur)
  rx1107_restart:
.annotate 'line', 7
    if_null rx1107_debug, debug_341
    rx1107_cur."!cursor_debug"("NEXT", "hexints")
  debug_341:
  rx1107_fail:
    (rx1107_rep, rx1107_pos, $I10, $P10) = rx1107_cur."!mark_fail"(0)
    lt rx1107_pos, -1, rx1107_done
    eq rx1107_pos, -1, rx1107_fail
    jump $I10
  rx1107_done:
    rx1107_cur."!cursor_fail"()
    if_null rx1107_debug, debug_342
    rx1107_cur."!cursor_debug"("FAIL", "hexints")
  debug_342:
    .return (rx1107_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__hexints"  :subid("52_1308672490.86084") :method :outer("11_1308672490.86084")
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, ""
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "octint"  :subid("53_1308672490.86084") :method :outer("11_1308672490.86084")
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
    if_null rx1112_debug, debug_343
    rx1112_cur."!cursor_debug"("START", "octint")
  debug_343:
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
    if_null rx1112_debug, debug_344
    rx1112_cur."!cursor_debug"("PASS", "octint", " at pos=", rx1112_pos)
  debug_344:
    .return (rx1112_cur)
  rx1112_restart:
.annotate 'line', 7
    if_null rx1112_debug, debug_345
    rx1112_cur."!cursor_debug"("NEXT", "octint")
  debug_345:
  rx1112_fail:
    (rx1112_rep, rx1112_pos, $I10, $P10) = rx1112_cur."!mark_fail"(0)
    lt rx1112_pos, -1, rx1112_done
    eq rx1112_pos, -1, rx1112_fail
    jump $I10
  rx1112_done:
    rx1112_cur."!cursor_fail"()
    if_null rx1112_debug, debug_346
    rx1112_cur."!cursor_debug"("FAIL", "octint")
  debug_346:
    .return (rx1112_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__octint"  :subid("54_1308672490.86084") :method :outer("11_1308672490.86084")
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, ""
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "octints"  :subid("55_1308672490.86084") :method :outer("11_1308672490.86084")
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
    if_null rx1118_debug, debug_347
    rx1118_cur."!cursor_debug"("START", "octints")
  debug_347:
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
    if_null rx1118_debug, debug_348
    rx1118_cur."!cursor_debug"("PASS", "octints", " at pos=", rx1118_pos)
  debug_348:
    .return (rx1118_cur)
  rx1118_restart:
.annotate 'line', 7
    if_null rx1118_debug, debug_349
    rx1118_cur."!cursor_debug"("NEXT", "octints")
  debug_349:
  rx1118_fail:
    (rx1118_rep, rx1118_pos, $I10, $P10) = rx1118_cur."!mark_fail"(0)
    lt rx1118_pos, -1, rx1118_done
    eq rx1118_pos, -1, rx1118_fail
    jump $I10
  rx1118_done:
    rx1118_cur."!cursor_fail"()
    if_null rx1118_debug, debug_350
    rx1118_cur."!cursor_debug"("FAIL", "octints")
  debug_350:
    .return (rx1118_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__octints"  :subid("56_1308672490.86084") :method :outer("11_1308672490.86084")
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, ""
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "binint"  :subid("57_1308672490.86084") :method :outer("11_1308672490.86084")
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
    if_null rx1123_debug, debug_351
    rx1123_cur."!cursor_debug"("START", "binint")
  debug_351:
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
    if_null rx1123_debug, debug_352
    rx1123_cur."!cursor_debug"("PASS", "binint", " at pos=", rx1123_pos)
  debug_352:
    .return (rx1123_cur)
  rx1123_restart:
.annotate 'line', 7
    if_null rx1123_debug, debug_353
    rx1123_cur."!cursor_debug"("NEXT", "binint")
  debug_353:
  rx1123_fail:
    (rx1123_rep, rx1123_pos, $I10, $P10) = rx1123_cur."!mark_fail"(0)
    lt rx1123_pos, -1, rx1123_done
    eq rx1123_pos, -1, rx1123_fail
    jump $I10
  rx1123_done:
    rx1123_cur."!cursor_fail"()
    if_null rx1123_debug, debug_354
    rx1123_cur."!cursor_debug"("FAIL", "binint")
  debug_354:
    .return (rx1123_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__binint"  :subid("58_1308672490.86084") :method :outer("11_1308672490.86084")
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, ""
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "binints"  :subid("59_1308672490.86084") :method :outer("11_1308672490.86084")
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
    if_null rx1129_debug, debug_355
    rx1129_cur."!cursor_debug"("START", "binints")
  debug_355:
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
    if_null rx1129_debug, debug_356
    rx1129_cur."!cursor_debug"("PASS", "binints", " at pos=", rx1129_pos)
  debug_356:
    .return (rx1129_cur)
  rx1129_restart:
.annotate 'line', 7
    if_null rx1129_debug, debug_357
    rx1129_cur."!cursor_debug"("NEXT", "binints")
  debug_357:
  rx1129_fail:
    (rx1129_rep, rx1129_pos, $I10, $P10) = rx1129_cur."!mark_fail"(0)
    lt rx1129_pos, -1, rx1129_done
    eq rx1129_pos, -1, rx1129_fail
    jump $I10
  rx1129_done:
    rx1129_cur."!cursor_fail"()
    if_null rx1129_debug, debug_358
    rx1129_cur."!cursor_debug"("FAIL", "binints")
  debug_358:
    .return (rx1129_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__binints"  :subid("60_1308672490.86084") :method :outer("11_1308672490.86084")
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, ""
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "integer"  :subid("61_1308672490.86084") :method :outer("11_1308672490.86084")
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
    if_null rx1134_debug, debug_359
    rx1134_cur."!cursor_debug"("START", "integer")
  debug_359:
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
    if_null rx1134_debug, debug_360
    rx1134_cur."!cursor_debug"("PASS", "integer", " at pos=", rx1134_pos)
  debug_360:
    .return (rx1134_cur)
  rx1134_restart:
.annotate 'line', 7
    if_null rx1134_debug, debug_361
    rx1134_cur."!cursor_debug"("NEXT", "integer")
  debug_361:
  rx1134_fail:
    (rx1134_rep, rx1134_pos, $I10, $P10) = rx1134_cur."!mark_fail"(0)
    lt rx1134_pos, -1, rx1134_done
    eq rx1134_pos, -1, rx1134_fail
    jump $I10
  rx1134_done:
    rx1134_cur."!cursor_fail"()
    if_null rx1134_debug, debug_362
    rx1134_cur."!cursor_debug"("FAIL", "integer")
  debug_362:
    .return (rx1134_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__integer"  :subid("62_1308672490.86084") :method :outer("11_1308672490.86084")
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
.sub "dec_number"  :subid("63_1308672490.86084") :method :outer("11_1308672490.86084")
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
    if_null rx1140_debug, debug_363
    rx1140_cur."!cursor_debug"("START", "dec_number")
  debug_363:
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
    if_null rx1140_debug, debug_364
    rx1140_cur."!cursor_debug"("PASS", "dec_number", " at pos=", rx1140_pos)
  debug_364:
    .return (rx1140_cur)
  rx1140_restart:
.annotate 'line', 7
    if_null rx1140_debug, debug_365
    rx1140_cur."!cursor_debug"("NEXT", "dec_number")
  debug_365:
  rx1140_fail:
    (rx1140_rep, rx1140_pos, $I10, $P10) = rx1140_cur."!mark_fail"(0)
    lt rx1140_pos, -1, rx1140_done
    eq rx1140_pos, -1, rx1140_fail
    jump $I10
  rx1140_done:
    rx1140_cur."!cursor_fail"()
    if_null rx1140_debug, debug_366
    rx1140_cur."!cursor_debug"("FAIL", "dec_number")
  debug_366:
    .return (rx1140_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__dec_number"  :subid("64_1308672490.86084") :method :outer("11_1308672490.86084")
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, ""
    push $P103, ""
    push $P103, "."
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "escale"  :subid("65_1308672490.86084") :method :outer("11_1308672490.86084")
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
    if_null rx1152_debug, debug_367
    rx1152_cur."!cursor_debug"("START", "escale")
  debug_367:
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
    if_null rx1152_debug, debug_368
    rx1152_cur."!cursor_debug"("PASS", "escale", " at pos=", rx1152_pos)
  debug_368:
    .return (rx1152_cur)
  rx1152_restart:
.annotate 'line', 7
    if_null rx1152_debug, debug_369
    rx1152_cur."!cursor_debug"("NEXT", "escale")
  debug_369:
  rx1152_fail:
    (rx1152_rep, rx1152_pos, $I10, $P10) = rx1152_cur."!mark_fail"(0)
    lt rx1152_pos, -1, rx1152_done
    eq rx1152_pos, -1, rx1152_fail
    jump $I10
  rx1152_done:
    rx1152_cur."!cursor_fail"()
    if_null rx1152_debug, debug_370
    rx1152_cur."!cursor_debug"("FAIL", "escale")
  debug_370:
    .return (rx1152_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__escale"  :subid("66_1308672490.86084") :method :outer("11_1308672490.86084")
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, "e"
    push $P103, "E"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape"  :subid("67_1308672490.86084")
    .param pmc param_1157
.annotate 'line', 86
    .lex "self", param_1157
    $P103 = param_1157."!protoregex"("quote_escape")
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape"  :subid("68_1308672490.86084")
    .param pmc param_1159
.annotate 'line', 86
    .lex "self", param_1159
    $P104 = param_1159."!PREFIX__!protoregex"("quote_escape")
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<backslash>"  :subid("69_1308672490.86084") :method :outer("11_1308672490.86084")
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
    if_null rx1161_debug, debug_371
    rx1161_cur."!cursor_debug"("START", "quote_escape:sym<backslash>")
  debug_371:
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
    if_null rx1161_debug, debug_372
    rx1161_cur."!cursor_debug"("PASS", "quote_escape:sym<backslash>", " at pos=", rx1161_pos)
  debug_372:
    .return (rx1161_cur)
  rx1161_restart:
.annotate 'line', 7
    if_null rx1161_debug, debug_373
    rx1161_cur."!cursor_debug"("NEXT", "quote_escape:sym<backslash>")
  debug_373:
  rx1161_fail:
    (rx1161_rep, rx1161_pos, $I10, $P10) = rx1161_cur."!mark_fail"(0)
    lt rx1161_pos, -1, rx1161_done
    eq rx1161_pos, -1, rx1161_fail
    jump $I10
  rx1161_done:
    rx1161_cur."!cursor_fail"()
    if_null rx1161_debug, debug_374
    rx1161_cur."!cursor_debug"("FAIL", "quote_escape:sym<backslash>")
  debug_374:
    .return (rx1161_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<backslash>"  :subid("70_1308672490.86084") :method :outer("11_1308672490.86084")
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, "\\\\"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<stopper>"  :subid("71_1308672490.86084") :method :outer("11_1308672490.86084")
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
    if_null rx1165_debug, debug_375
    rx1165_cur."!cursor_debug"("START", "quote_escape:sym<stopper>")
  debug_375:
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
    if_null rx1165_debug, debug_376
    rx1165_cur."!cursor_debug"("PASS", "quote_escape:sym<stopper>", " at pos=", rx1165_pos)
  debug_376:
    .return (rx1165_cur)
  rx1165_restart:
.annotate 'line', 7
    if_null rx1165_debug, debug_377
    rx1165_cur."!cursor_debug"("NEXT", "quote_escape:sym<stopper>")
  debug_377:
  rx1165_fail:
    (rx1165_rep, rx1165_pos, $I10, $P10) = rx1165_cur."!mark_fail"(0)
    lt rx1165_pos, -1, rx1165_done
    eq rx1165_pos, -1, rx1165_fail
    jump $I10
  rx1165_done:
    rx1165_cur."!cursor_fail"()
    if_null rx1165_debug, debug_378
    rx1165_cur."!cursor_debug"("FAIL", "quote_escape:sym<stopper>")
  debug_378:
    .return (rx1165_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<stopper>"  :subid("72_1308672490.86084") :method :outer("11_1308672490.86084")
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, "\\"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<bs>"  :subid("73_1308672490.86084") :method :outer("11_1308672490.86084")
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
    if_null rx1169_debug, debug_379
    rx1169_cur."!cursor_debug"("START", "quote_escape:sym<bs>")
  debug_379:
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
    if_null rx1169_debug, debug_380
    rx1169_cur."!cursor_debug"("PASS", "quote_escape:sym<bs>", " at pos=", rx1169_pos)
  debug_380:
    .return (rx1169_cur)
  rx1169_restart:
.annotate 'line', 7
    if_null rx1169_debug, debug_381
    rx1169_cur."!cursor_debug"("NEXT", "quote_escape:sym<bs>")
  debug_381:
  rx1169_fail:
    (rx1169_rep, rx1169_pos, $I10, $P10) = rx1169_cur."!mark_fail"(0)
    lt rx1169_pos, -1, rx1169_done
    eq rx1169_pos, -1, rx1169_fail
    jump $I10
  rx1169_done:
    rx1169_cur."!cursor_fail"()
    if_null rx1169_debug, debug_382
    rx1169_cur."!cursor_debug"("FAIL", "quote_escape:sym<bs>")
  debug_382:
    .return (rx1169_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<bs>"  :subid("74_1308672490.86084") :method :outer("11_1308672490.86084")
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, "\\b"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<nl>"  :subid("75_1308672490.86084") :method :outer("11_1308672490.86084")
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
    if_null rx1173_debug, debug_383
    rx1173_cur."!cursor_debug"("START", "quote_escape:sym<nl>")
  debug_383:
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
    if_null rx1173_debug, debug_384
    rx1173_cur."!cursor_debug"("PASS", "quote_escape:sym<nl>", " at pos=", rx1173_pos)
  debug_384:
    .return (rx1173_cur)
  rx1173_restart:
.annotate 'line', 7
    if_null rx1173_debug, debug_385
    rx1173_cur."!cursor_debug"("NEXT", "quote_escape:sym<nl>")
  debug_385:
  rx1173_fail:
    (rx1173_rep, rx1173_pos, $I10, $P10) = rx1173_cur."!mark_fail"(0)
    lt rx1173_pos, -1, rx1173_done
    eq rx1173_pos, -1, rx1173_fail
    jump $I10
  rx1173_done:
    rx1173_cur."!cursor_fail"()
    if_null rx1173_debug, debug_386
    rx1173_cur."!cursor_debug"("FAIL", "quote_escape:sym<nl>")
  debug_386:
    .return (rx1173_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<nl>"  :subid("76_1308672490.86084") :method :outer("11_1308672490.86084")
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, "\\n"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<cr>"  :subid("77_1308672490.86084") :method :outer("11_1308672490.86084")
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
    if_null rx1177_debug, debug_387
    rx1177_cur."!cursor_debug"("START", "quote_escape:sym<cr>")
  debug_387:
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
    if_null rx1177_debug, debug_388
    rx1177_cur."!cursor_debug"("PASS", "quote_escape:sym<cr>", " at pos=", rx1177_pos)
  debug_388:
    .return (rx1177_cur)
  rx1177_restart:
.annotate 'line', 7
    if_null rx1177_debug, debug_389
    rx1177_cur."!cursor_debug"("NEXT", "quote_escape:sym<cr>")
  debug_389:
  rx1177_fail:
    (rx1177_rep, rx1177_pos, $I10, $P10) = rx1177_cur."!mark_fail"(0)
    lt rx1177_pos, -1, rx1177_done
    eq rx1177_pos, -1, rx1177_fail
    jump $I10
  rx1177_done:
    rx1177_cur."!cursor_fail"()
    if_null rx1177_debug, debug_390
    rx1177_cur."!cursor_debug"("FAIL", "quote_escape:sym<cr>")
  debug_390:
    .return (rx1177_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<cr>"  :subid("78_1308672490.86084") :method :outer("11_1308672490.86084")
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, "\\r"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<tab>"  :subid("79_1308672490.86084") :method :outer("11_1308672490.86084")
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
    if_null rx1181_debug, debug_391
    rx1181_cur."!cursor_debug"("START", "quote_escape:sym<tab>")
  debug_391:
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
    if_null rx1181_debug, debug_392
    rx1181_cur."!cursor_debug"("PASS", "quote_escape:sym<tab>", " at pos=", rx1181_pos)
  debug_392:
    .return (rx1181_cur)
  rx1181_restart:
.annotate 'line', 7
    if_null rx1181_debug, debug_393
    rx1181_cur."!cursor_debug"("NEXT", "quote_escape:sym<tab>")
  debug_393:
  rx1181_fail:
    (rx1181_rep, rx1181_pos, $I10, $P10) = rx1181_cur."!mark_fail"(0)
    lt rx1181_pos, -1, rx1181_done
    eq rx1181_pos, -1, rx1181_fail
    jump $I10
  rx1181_done:
    rx1181_cur."!cursor_fail"()
    if_null rx1181_debug, debug_394
    rx1181_cur."!cursor_debug"("FAIL", "quote_escape:sym<tab>")
  debug_394:
    .return (rx1181_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<tab>"  :subid("80_1308672490.86084") :method :outer("11_1308672490.86084")
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, "\\t"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<ff>"  :subid("81_1308672490.86084") :method :outer("11_1308672490.86084")
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
    if_null rx1185_debug, debug_395
    rx1185_cur."!cursor_debug"("START", "quote_escape:sym<ff>")
  debug_395:
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
    if_null rx1185_debug, debug_396
    rx1185_cur."!cursor_debug"("PASS", "quote_escape:sym<ff>", " at pos=", rx1185_pos)
  debug_396:
    .return (rx1185_cur)
  rx1185_restart:
.annotate 'line', 7
    if_null rx1185_debug, debug_397
    rx1185_cur."!cursor_debug"("NEXT", "quote_escape:sym<ff>")
  debug_397:
  rx1185_fail:
    (rx1185_rep, rx1185_pos, $I10, $P10) = rx1185_cur."!mark_fail"(0)
    lt rx1185_pos, -1, rx1185_done
    eq rx1185_pos, -1, rx1185_fail
    jump $I10
  rx1185_done:
    rx1185_cur."!cursor_fail"()
    if_null rx1185_debug, debug_398
    rx1185_cur."!cursor_debug"("FAIL", "quote_escape:sym<ff>")
  debug_398:
    .return (rx1185_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<ff>"  :subid("82_1308672490.86084") :method :outer("11_1308672490.86084")
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, "\\f"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<esc>"  :subid("83_1308672490.86084") :method :outer("11_1308672490.86084")
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
    if_null rx1189_debug, debug_399
    rx1189_cur."!cursor_debug"("START", "quote_escape:sym<esc>")
  debug_399:
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
    if_null rx1189_debug, debug_400
    rx1189_cur."!cursor_debug"("PASS", "quote_escape:sym<esc>", " at pos=", rx1189_pos)
  debug_400:
    .return (rx1189_cur)
  rx1189_restart:
.annotate 'line', 7
    if_null rx1189_debug, debug_401
    rx1189_cur."!cursor_debug"("NEXT", "quote_escape:sym<esc>")
  debug_401:
  rx1189_fail:
    (rx1189_rep, rx1189_pos, $I10, $P10) = rx1189_cur."!mark_fail"(0)
    lt rx1189_pos, -1, rx1189_done
    eq rx1189_pos, -1, rx1189_fail
    jump $I10
  rx1189_done:
    rx1189_cur."!cursor_fail"()
    if_null rx1189_debug, debug_402
    rx1189_cur."!cursor_debug"("FAIL", "quote_escape:sym<esc>")
  debug_402:
    .return (rx1189_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<esc>"  :subid("84_1308672490.86084") :method :outer("11_1308672490.86084")
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, "\\e"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<hex>"  :subid("85_1308672490.86084") :method :outer("11_1308672490.86084")
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
    if_null rx1193_debug, debug_403
    rx1193_cur."!cursor_debug"("START", "quote_escape:sym<hex>")
  debug_403:
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
    if_null rx1193_debug, debug_404
    rx1193_cur."!cursor_debug"("PASS", "quote_escape:sym<hex>", " at pos=", rx1193_pos)
  debug_404:
    .return (rx1193_cur)
  rx1193_restart:
.annotate 'line', 7
    if_null rx1193_debug, debug_405
    rx1193_cur."!cursor_debug"("NEXT", "quote_escape:sym<hex>")
  debug_405:
  rx1193_fail:
    (rx1193_rep, rx1193_pos, $I10, $P10) = rx1193_cur."!mark_fail"(0)
    lt rx1193_pos, -1, rx1193_done
    eq rx1193_pos, -1, rx1193_fail
    jump $I10
  rx1193_done:
    rx1193_cur."!cursor_fail"()
    if_null rx1193_debug, debug_406
    rx1193_cur."!cursor_debug"("FAIL", "quote_escape:sym<hex>")
  debug_406:
    .return (rx1193_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<hex>"  :subid("86_1308672490.86084") :method :outer("11_1308672490.86084")
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, unicode:"\\x"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<oct>"  :subid("87_1308672490.86084") :method :outer("11_1308672490.86084")
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
    if_null rx1198_debug, debug_407
    rx1198_cur."!cursor_debug"("START", "quote_escape:sym<oct>")
  debug_407:
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
    if_null rx1198_debug, debug_408
    rx1198_cur."!cursor_debug"("PASS", "quote_escape:sym<oct>", " at pos=", rx1198_pos)
  debug_408:
    .return (rx1198_cur)
  rx1198_restart:
.annotate 'line', 7
    if_null rx1198_debug, debug_409
    rx1198_cur."!cursor_debug"("NEXT", "quote_escape:sym<oct>")
  debug_409:
  rx1198_fail:
    (rx1198_rep, rx1198_pos, $I10, $P10) = rx1198_cur."!mark_fail"(0)
    lt rx1198_pos, -1, rx1198_done
    eq rx1198_pos, -1, rx1198_fail
    jump $I10
  rx1198_done:
    rx1198_cur."!cursor_fail"()
    if_null rx1198_debug, debug_410
    rx1198_cur."!cursor_debug"("FAIL", "quote_escape:sym<oct>")
  debug_410:
    .return (rx1198_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<oct>"  :subid("88_1308672490.86084") :method :outer("11_1308672490.86084")
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, "\\o"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<chr>"  :subid("89_1308672490.86084") :method :outer("11_1308672490.86084")
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
    if_null rx1203_debug, debug_411
    rx1203_cur."!cursor_debug"("START", "quote_escape:sym<chr>")
  debug_411:
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
    if_null rx1203_debug, debug_412
    rx1203_cur."!cursor_debug"("PASS", "quote_escape:sym<chr>", " at pos=", rx1203_pos)
  debug_412:
    .return (rx1203_cur)
  rx1203_restart:
.annotate 'line', 7
    if_null rx1203_debug, debug_413
    rx1203_cur."!cursor_debug"("NEXT", "quote_escape:sym<chr>")
  debug_413:
  rx1203_fail:
    (rx1203_rep, rx1203_pos, $I10, $P10) = rx1203_cur."!mark_fail"(0)
    lt rx1203_pos, -1, rx1203_done
    eq rx1203_pos, -1, rx1203_fail
    jump $I10
  rx1203_done:
    rx1203_cur."!cursor_fail"()
    if_null rx1203_debug, debug_414
    rx1203_cur."!cursor_debug"("FAIL", "quote_escape:sym<chr>")
  debug_414:
    .return (rx1203_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<chr>"  :subid("90_1308672490.86084") :method :outer("11_1308672490.86084")
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, "\\c"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<0>"  :subid("91_1308672490.86084") :method :outer("11_1308672490.86084")
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
    if_null rx1207_debug, debug_415
    rx1207_cur."!cursor_debug"("START", "quote_escape:sym<0>")
  debug_415:
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
    if_null rx1207_debug, debug_416
    rx1207_cur."!cursor_debug"("PASS", "quote_escape:sym<0>", " at pos=", rx1207_pos)
  debug_416:
    .return (rx1207_cur)
  rx1207_restart:
.annotate 'line', 7
    if_null rx1207_debug, debug_417
    rx1207_cur."!cursor_debug"("NEXT", "quote_escape:sym<0>")
  debug_417:
  rx1207_fail:
    (rx1207_rep, rx1207_pos, $I10, $P10) = rx1207_cur."!mark_fail"(0)
    lt rx1207_pos, -1, rx1207_done
    eq rx1207_pos, -1, rx1207_fail
    jump $I10
  rx1207_done:
    rx1207_cur."!cursor_fail"()
    if_null rx1207_debug, debug_418
    rx1207_cur."!cursor_debug"("FAIL", "quote_escape:sym<0>")
  debug_418:
    .return (rx1207_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<0>"  :subid("92_1308672490.86084") :method :outer("11_1308672490.86084")
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, "\\0"
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "quote_escape:sym<misc>"  :subid("93_1308672490.86084") :method :outer("11_1308672490.86084")
.annotate 'line', 7
    .const 'Sub' $P1224 = "96_1308672490.86084" 
    capture_lex $P1224
    .const 'Sub' $P1219 = "95_1308672490.86084" 
    capture_lex $P1219
    .const 'Sub' $P1215 = "94_1308672490.86084" 
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
    if_null rx1212_debug, debug_419
    rx1212_cur."!cursor_debug"("START", "quote_escape:sym<misc>")
  debug_419:
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
    .const 'Sub' $P1215 = "94_1308672490.86084" 
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
    .const 'Sub' $P1219 = "95_1308672490.86084" 
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
    .const 'Sub' $P1224 = "96_1308672490.86084" 
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
    if_null rx1212_debug, debug_427
    rx1212_cur."!cursor_debug"("PASS", "quote_escape:sym<misc>", " at pos=", rx1212_pos)
  debug_427:
    .return (rx1212_cur)
  rx1212_restart:
.annotate 'line', 7
    if_null rx1212_debug, debug_428
    rx1212_cur."!cursor_debug"("NEXT", "quote_escape:sym<misc>")
  debug_428:
  rx1212_fail:
    (rx1212_rep, rx1212_pos, $I10, $P10) = rx1212_cur."!mark_fail"(0)
    lt rx1212_pos, -1, rx1212_done
    eq rx1212_pos, -1, rx1212_fail
    jump $I10
  rx1212_done:
    rx1212_cur."!cursor_fail"()
    if_null rx1212_debug, debug_429
    rx1212_cur."!cursor_debug"("FAIL", "quote_escape:sym<misc>")
  debug_429:
    .return (rx1212_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block1214"  :anon :subid("94_1308672490.86084") :outer("93_1308672490.86084")
.annotate 'line', 107
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block1218"  :anon :subid("95_1308672490.86084") :method :outer("93_1308672490.86084")
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
    if_null rx1220_debug, debug_420
    rx1220_cur."!cursor_debug"("START", "")
  debug_420:
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
    if_null rx1220_debug, debug_421
    rx1220_cur."!cursor_debug"("PASS", "", " at pos=", rx1220_pos)
  debug_421:
    .return (rx1220_cur)
  rx1220_restart:
    if_null rx1220_debug, debug_422
    rx1220_cur."!cursor_debug"("NEXT", "")
  debug_422:
  rx1220_fail:
    (rx1220_rep, rx1220_pos, $I10, $P10) = rx1220_cur."!mark_fail"(0)
    lt rx1220_pos, -1, rx1220_done
    eq rx1220_pos, -1, rx1220_fail
    jump $I10
  rx1220_done:
    rx1220_cur."!cursor_fail"()
    if_null rx1220_debug, debug_423
    rx1220_cur."!cursor_debug"("FAIL", "")
  debug_423:
    .return (rx1220_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block1223"  :anon :subid("96_1308672490.86084") :outer("93_1308672490.86084")
.annotate 'line', 112
    find_lex $P108, "$/"
    unless_null $P108, vivify_424
    new $P108, "Undef"
  vivify_424:
    $P109 = $P108."CURSOR"()
    new $P110, "String"
    assign $P110, "Unrecognized backslash sequence: '\\"
    find_lex $P1225, "$/"
    unless_null $P1225, vivify_425
    $P1225 = root_new ['parrot';'Hash']
  vivify_425:
    set $P111, $P1225["x"]
    unless_null $P111, vivify_426
    new $P111, "Undef"
  vivify_426:
    $S100 = $P111."Str"()
    concat $P112, $P110, $S100
    concat $P113, $P112, "'"
    $P114 = $P109."panic"($P113)
    .return ($P114)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__quote_escape:sym<misc>"  :subid("97_1308672490.86084") :method :outer("11_1308672490.86084")
.annotate 'line', 7
    new $P109, "ResizablePMCArray"
    push $P109, ""
    .return ($P109)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "charname"  :subid("98_1308672490.86084") :method :outer("11_1308672490.86084")
.annotate 'line', 7
    .const 'Sub' $P1235 = "99_1308672490.86084" 
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
    if_null rx1229_debug, debug_430
    rx1229_cur."!cursor_debug"("START", "charname")
  debug_430:
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
    .const 'Sub' $P1235 = "99_1308672490.86084" 
    capture_lex $P1235
    $P10 = rx1229_cur."before"($P1235)
    unless $P10, rx1229_fail
  alt1231_end:
.annotate 'line', 118
  # rx pass
    rx1229_cur."!cursor_pass"(rx1229_pos, "charname")
    if_null rx1229_debug, debug_435
    rx1229_cur."!cursor_debug"("PASS", "charname", " at pos=", rx1229_pos)
  debug_435:
    .return (rx1229_cur)
  rx1229_restart:
.annotate 'line', 7
    if_null rx1229_debug, debug_436
    rx1229_cur."!cursor_debug"("NEXT", "charname")
  debug_436:
  rx1229_fail:
    (rx1229_rep, rx1229_pos, $I10, $P10) = rx1229_cur."!mark_fail"(0)
    lt rx1229_pos, -1, rx1229_done
    eq rx1229_pos, -1, rx1229_fail
    jump $I10
  rx1229_done:
    rx1229_cur."!cursor_fail"()
    if_null rx1229_debug, debug_437
    rx1229_cur."!cursor_debug"("FAIL", "charname")
  debug_437:
    .return (rx1229_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "_block1234"  :anon :subid("99_1308672490.86084") :method :outer("98_1308672490.86084")
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
    if_null rx1236_debug, debug_431
    rx1236_cur."!cursor_debug"("START", "")
  debug_431:
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
    if_null rx1236_debug, debug_432
    rx1236_cur."!cursor_debug"("PASS", "", " at pos=", rx1236_pos)
  debug_432:
    .return (rx1236_cur)
  rx1236_restart:
    if_null rx1236_debug, debug_433
    rx1236_cur."!cursor_debug"("NEXT", "")
  debug_433:
  rx1236_fail:
    (rx1236_rep, rx1236_pos, $I10, $P10) = rx1236_cur."!mark_fail"(0)
    lt rx1236_pos, -1, rx1236_done
    eq rx1236_pos, -1, rx1236_fail
    jump $I10
  rx1236_done:
    rx1236_cur."!cursor_fail"()
    if_null rx1236_debug, debug_434
    rx1236_cur."!cursor_debug"("FAIL", "")
  debug_434:
    .return (rx1236_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charname"  :subid("100_1308672490.86084") :method :outer("11_1308672490.86084")
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
.sub "charnames"  :subid("101_1308672490.86084") :method :outer("11_1308672490.86084")
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
    if_null rx1240_debug, debug_438
    rx1240_cur."!cursor_debug"("START", "charnames")
  debug_438:
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
    if_null rx1240_debug, debug_439
    rx1240_cur."!cursor_debug"("PASS", "charnames", " at pos=", rx1240_pos)
  debug_439:
    .return (rx1240_cur)
  rx1240_restart:
.annotate 'line', 7
    if_null rx1240_debug, debug_440
    rx1240_cur."!cursor_debug"("NEXT", "charnames")
  debug_440:
  rx1240_fail:
    (rx1240_rep, rx1240_pos, $I10, $P10) = rx1240_cur."!mark_fail"(0)
    lt rx1240_pos, -1, rx1240_done
    eq rx1240_pos, -1, rx1240_fail
    jump $I10
  rx1240_done:
    rx1240_cur."!cursor_fail"()
    if_null rx1240_debug, debug_441
    rx1240_cur."!cursor_debug"("FAIL", "charnames")
  debug_441:
    .return (rx1240_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charnames"  :subid("102_1308672490.86084") :method :outer("11_1308672490.86084")
.annotate 'line', 7
    new $P103, "ResizablePMCArray"
    push $P103, ""
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "charspec"  :subid("103_1308672490.86084") :method :outer("11_1308672490.86084")
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
    if_null rx1245_debug, debug_442
    rx1245_cur."!cursor_debug"("START", "charspec")
  debug_442:
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
    if_null rx1245_debug, debug_443
    rx1245_cur."!cursor_debug"("PASS", "charspec", " at pos=", rx1245_pos)
  debug_443:
    .return (rx1245_cur)
  rx1245_restart:
.annotate 'line', 7
    if_null rx1245_debug, debug_444
    rx1245_cur."!cursor_debug"("NEXT", "charspec")
  debug_444:
  rx1245_fail:
    (rx1245_rep, rx1245_pos, $I10, $P10) = rx1245_cur."!mark_fail"(0)
    lt rx1245_pos, -1, rx1245_done
    eq rx1245_pos, -1, rx1245_fail
    jump $I10
  rx1245_done:
    rx1245_cur."!cursor_fail"()
    if_null rx1245_debug, debug_445
    rx1245_cur."!cursor_debug"("FAIL", "charspec")
  debug_445:
    .return (rx1245_cur)
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "!PREFIX__charspec"  :subid("104_1308672490.86084") :method :outer("11_1308672490.86084")
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
.sub "O" :anon :subid("105_1308672490.86084") :outer("11_1308672490.86084")
    .param pmc param_1251
    .param pmc param_1252
    .param pmc param_1253 :optional
    .param int has_param_1253 :opt_flag
.annotate 'line', 175
    .lex "self", param_1251
    .lex "$spec", param_1252
    if has_param_1253, optparam_446
    new $P103, "Undef"
    set param_1253, $P103
  optparam_446:
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
.sub "panic" :anon :subid("106_1308672490.86084") :outer("11_1308672490.86084")
    .param pmc param_1255
    .param pmc param_1256 :slurpy
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
    unless_null $P1259, vivify_447
    $P1259 = root_new ['parrot';'ResizablePMCArray']
  vivify_447:
    $P1259."push"(" at line ")
.annotate 'line', 325
    find_lex $P1260, "@args"
    unless_null $P1260, vivify_448
    $P1260 = root_new ['parrot';'ResizablePMCArray']
  vivify_448:
    get_hll_global $P105, "GLOBAL"
    nqp_get_package_through_who $P106, $P105, "HLL"
    get_who $P107, $P106
    set $P108, $P107["Compiler"]
    find_lex $P109, "$target"
    unless_null $P109, vivify_449
    new $P109, "Undef"
  vivify_449:
    find_lex $P110, "$pos"
    unless_null $P110, vivify_450
    new $P110, "Undef"
  vivify_450:
    $P111 = $P108."lineof"($P109, $P110)
    add $P112, $P111, 1
    $P1260."push"($P112)
.annotate 'line', 326
    find_lex $P1261, "@args"
    unless_null $P1261, vivify_451
    $P1261 = root_new ['parrot';'ResizablePMCArray']
  vivify_451:
    $P1261."push"(", near \"")
.annotate 'line', 327
    find_lex $P1262, "@args"
    unless_null $P1262, vivify_452
    $P1262 = root_new ['parrot';'ResizablePMCArray']
  vivify_452:
    find_lex $P105, "$target"
    unless_null $P105, vivify_453
    new $P105, "Undef"
  vivify_453:
    set $S100, $P105
    find_lex $P106, "$pos"
    unless_null $P106, vivify_454
    new $P106, "Undef"
  vivify_454:
    set $I100, $P106
    substr $S101, $S100, $I100, 10
    escape $S102, $S101
    $P1262."push"($S102)
.annotate 'line', 328
    find_lex $P1263, "@args"
    unless_null $P1263, vivify_455
    $P1263 = root_new ['parrot';'ResizablePMCArray']
  vivify_455:
    $P1263."push"("\"")
.annotate 'line', 329
    find_lex $P1264, "@args"
    unless_null $P1264, vivify_456
    $P1264 = root_new ['parrot';'ResizablePMCArray']
  vivify_456:
    join $S100, "", $P1264
    die $S100
.annotate 'line', 321
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "peek_delimiters" :anon :subid("107_1308672490.86084") :outer("11_1308672490.86084")
    .param pmc param_1266
    .param pmc param_1267
    .param pmc param_1268
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
.sub "quote_EXPR" :anon :subid("108_1308672490.86084") :outer("11_1308672490.86084")
    .param pmc param_1270
    .param pmc param_1271 :slurpy
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
.sub "quotemod_check"  :subid("109_1308672490.86084") :outer("11_1308672490.86084")
    .param pmc param_1273
    .param pmc param_1274
.annotate 'line', 475
    .lex "self", param_1273
    .lex "$mod", param_1274
    find_lex $P103, "$mod"
    unless_null $P103, vivify_457
    new $P103, "Undef"
  vivify_457:
    find_dynamic_lex $P106, "%*QUOTEMOD"
    unless_null $P106, vivify_458
    get_hll_global $P104, "GLOBAL"
    get_who $P105, $P104
    set $P106, $P105["%QUOTEMOD"]
    unless_null $P106, vivify_459
    die "Contextual %*QUOTEMOD not found"
  vivify_459:
  vivify_458:
    set $P107, $P106[$P103]
    unless_null $P107, vivify_460
    new $P107, "Undef"
  vivify_460:
    .return ($P107)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "starter" :anon :subid("110_1308672490.86084") :outer("11_1308672490.86084")
    .param pmc param_1276
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
.sub "stopper" :anon :subid("111_1308672490.86084") :outer("11_1308672490.86084")
    .param pmc param_1278
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
.sub "split_words"  :subid("112_1308672490.86084") :outer("11_1308672490.86084")
    .param pmc param_1280
    .param pmc param_1281
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
.sub "EXPR" :anon :subid("113_1308672490.86084") :outer("11_1308672490.86084")
    .param pmc param_1283
    .param pmc param_1284 :optional
    .param int has_param_1284 :opt_flag
.annotate 'line', 557
    .lex "self", param_1283
    if has_param_1284, optparam_461
    new $P103, "String"
    assign $P103, ""
    set param_1284, $P103
  optparam_461:
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
.sub "EXPR_reduce" :anon :subid("114_1308672490.86084") :outer("11_1308672490.86084")
    .param pmc param_1286
    .param pmc param_1287
    .param pmc param_1288
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
            $P0 = opOPER['sym']
            sym = $P0
            arg = pop termstack
            unshift op, arg
          op_sym_loop:
            unless opstack goto op_sym_done
            $P0 = opstack[-1]
            $P0 = $P0['OPER']
            $P0 = $P0['sym']
            $S0 = $P0
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
.sub "ternary" :anon :subid("115_1308672490.86084") :outer("11_1308672490.86084")
    .param pmc param_1290
    .param pmc param_1291
.annotate 'line', 803
    .lex "self", param_1290
    .lex "$match", param_1291
.annotate 'line', 804
    find_lex $P1292, "$match"
    unless_null $P1292, vivify_462
    $P1292 = root_new ['parrot';'ResizablePMCArray']
  vivify_462:
    set $P103, $P1292[1]
    unless_null $P103, vivify_463
    new $P103, "Undef"
  vivify_463:
    find_lex $P1293, "$match"
    unless_null $P1293, vivify_464
    $P1293 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$match", $P1293
  vivify_464:
    set $P1293[2], $P103
.annotate 'line', 805
    find_lex $P1294, "$match"
    unless_null $P1294, vivify_465
    $P1294 = root_new ['parrot';'Hash']
  vivify_465:
    set $P1295, $P1294["infix"]
    unless_null $P1295, vivify_466
    $P1295 = root_new ['parrot';'Hash']
  vivify_466:
    set $P103, $P1295["EXPR"]
    unless_null $P103, vivify_467
    new $P103, "Undef"
  vivify_467:
    find_lex $P1296, "$match"
    unless_null $P1296, vivify_468
    $P1296 = root_new ['parrot';'ResizablePMCArray']
    store_lex "$match", $P1296
  vivify_468:
    set $P1296[1], $P103
.annotate 'line', 803
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "MARKER" :anon :subid("116_1308672490.86084") :outer("11_1308672490.86084")
    .param pmc param_1298
    .param pmc param_1299
.annotate 'line', 808
    .lex "self", param_1298
    .lex "$markname", param_1299
.annotate 'line', 809
    new $P103, "Undef"
    set $P1300, $P103
    .lex "$pos", $P1300
.annotate 'line', 811
    $P1302 = root_new ['parrot';'Hash']
    set $P1301, $P1302
    .lex "%markhash", $P1301
.annotate 'line', 809
    find_lex $P104, "self"
    $P105 = $P104."pos"()
    store_lex "$pos", $P105
.annotate 'line', 810
    find_lex $P104, "self"
    find_lex $P105, "$markname"
    unless_null $P105, vivify_469
    new $P105, "Undef"
  vivify_469:
    find_lex $P106, "$pos"
    unless_null $P106, vivify_470
    new $P106, "Undef"
  vivify_470:
    $P104."!cursor_debug"("START", "MARKER name=", $P105, ", pos=", $P106)
.annotate 'line', 811

            $P1303 = get_global '%!MARKHASH'
            unless null $P1303 goto have_markhash
            $P1303 = new ['Hash']
            set_global '%!MARKHASH', $P1303
          have_markhash:
        
    store_lex "%markhash", $P1303
.annotate 'line', 818
    find_lex $P104, "$pos"
    unless_null $P104, vivify_471
    new $P104, "Undef"
  vivify_471:
    find_lex $P105, "$markname"
    unless_null $P105, vivify_472
    new $P105, "Undef"
  vivify_472:
    find_lex $P1304, "%markhash"
    unless_null $P1304, vivify_473
    $P1304 = root_new ['parrot';'Hash']
    store_lex "%markhash", $P1304
  vivify_473:
    set $P1304[$P105], $P104
.annotate 'line', 819
    find_lex $P104, "self"
    $P104."!cursor_debug"("PASS", "MARKER")
.annotate 'line', 808
    .return (1)
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "MARKED" :anon :subid("117_1308672490.86084") :outer("11_1308672490.86084")
    .param pmc param_1306
    .param pmc param_1307
.annotate 'line', 823
    .lex "self", param_1306
    .lex "$markname", param_1307
.annotate 'line', 824
    find_lex $P103, "self"
    find_lex $P104, "$markname"
    unless_null $P104, vivify_474
    new $P104, "Undef"
  vivify_474:
    $P103."!cursor_debug"("START", "MARKED name=", $P104)
.annotate 'line', 825

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
        
.annotate 'line', 823
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Grammar"]
.sub "LANG" :anon :subid("118_1308672490.86084") :outer("11_1308672490.86084")
    .param pmc param_1309
    .param pmc param_1310
    .param pmc param_1311
.annotate 'line', 843
    .lex "self", param_1309
    .lex "$lang", param_1310
    .lex "$regex", param_1311
.annotate 'line', 844
    new $P103, "Undef"
    set $P1312, $P103
    .lex "$lang_cursor", $P1312
.annotate 'line', 845
    new $P104, "Undef"
    set $P1313, $P104
    .lex "$*ACTIONS", $P1313
.annotate 'line', 846
    new $P105, "Undef"
    set $P1314, $P105
    .lex "$cur", $P1314
.annotate 'line', 844
    find_lex $P106, "$lang"
    unless_null $P106, vivify_475
    new $P106, "Undef"
  vivify_475:
    find_dynamic_lex $P109, "%*LANG"
    unless_null $P109, vivify_476
    get_hll_global $P107, "GLOBAL"
    get_who $P108, $P107
    set $P109, $P108["%LANG"]
    unless_null $P109, vivify_477
    die "Contextual %*LANG not found"
  vivify_477:
  vivify_476:
    set $P110, $P109[$P106]
    unless_null $P110, vivify_478
    new $P110, "Undef"
  vivify_478:
    store_lex "$lang_cursor", $P110
.annotate 'line', 845
    find_lex $P106, "$lang"
    unless_null $P106, vivify_479
    new $P106, "Undef"
  vivify_479:
    concat $P107, $P106, "-actions"
    find_dynamic_lex $P110, "%*LANG"
    unless_null $P110, vivify_480
    get_hll_global $P108, "GLOBAL"
    get_who $P109, $P108
    set $P110, $P109["%LANG"]
    unless_null $P110, vivify_481
    die "Contextual %*LANG not found"
  vivify_481:
  vivify_480:
    set $P111, $P110[$P107]
    unless_null $P111, vivify_482
    new $P111, "Undef"
  vivify_482:
    store_lex "$*ACTIONS", $P111
.annotate 'line', 846

            .local pmc self
            .local int pos
            self = find_lex 'self'
            $P0 = find_lex '$lang_cursor'
            ($P1315, pos) = self.'!cursor_start'($P0)
            $P1315.'!cursor_pos'(pos)
        
    store_lex "$cur", $P1315
.annotate 'line', 854
    find_lex $P106, "$cur"
    unless_null $P106, vivify_483
    new $P106, "Undef"
  vivify_483:
    find_lex $P107, "$regex"
    unless_null $P107, vivify_484
    new $P107, "Undef"
  vivify_484:
    set $S100, $P107
    $P108 = $P106.$S100()
.annotate 'line', 843
    .return ($P108)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1317"  :subid("119_1308672490.86084") :outer("10_1308672490.86084")
.annotate 'line', 859
    .const 'Sub' $P1567 = "164_1308672490.86084" 
    capture_lex $P1567
    .const 'Sub' $P1558 = "162_1308672490.86084" 
    capture_lex $P1558
    .const 'Sub' $P1550 = "161_1308672490.86084" 
    capture_lex $P1550
    .const 'Sub' $P1543 = "160_1308672490.86084" 
    capture_lex $P1543
    .const 'Sub' $P1540 = "159_1308672490.86084" 
    capture_lex $P1540
    .const 'Sub' $P1536 = "158_1308672490.86084" 
    capture_lex $P1536
    .const 'Sub' $P1528 = "157_1308672490.86084" 
    capture_lex $P1528
    .const 'Sub' $P1520 = "156_1308672490.86084" 
    capture_lex $P1520
    .const 'Sub' $P1517 = "155_1308672490.86084" 
    capture_lex $P1517
    .const 'Sub' $P1514 = "154_1308672490.86084" 
    capture_lex $P1514
    .const 'Sub' $P1511 = "153_1308672490.86084" 
    capture_lex $P1511
    .const 'Sub' $P1508 = "152_1308672490.86084" 
    capture_lex $P1508
    .const 'Sub' $P1505 = "151_1308672490.86084" 
    capture_lex $P1505
    .const 'Sub' $P1502 = "150_1308672490.86084" 
    capture_lex $P1502
    .const 'Sub' $P1498 = "149_1308672490.86084" 
    capture_lex $P1498
    .const 'Sub' $P1495 = "148_1308672490.86084" 
    capture_lex $P1495
    .const 'Sub' $P1489 = "147_1308672490.86084" 
    capture_lex $P1489
    .const 'Sub' $P1462 = "145_1308672490.86084" 
    capture_lex $P1462
    .const 'Sub' $P1442 = "142_1308672490.86084" 
    capture_lex $P1442
    .const 'Sub' $P1439 = "141_1308672490.86084" 
    capture_lex $P1439
    .const 'Sub' $P1436 = "140_1308672490.86084" 
    capture_lex $P1436
    .const 'Sub' $P1433 = "139_1308672490.86084" 
    capture_lex $P1433
    .const 'Sub' $P1430 = "138_1308672490.86084" 
    capture_lex $P1430
    .const 'Sub' $P1427 = "137_1308672490.86084" 
    capture_lex $P1427
    .const 'Sub' $P1423 = "136_1308672490.86084" 
    capture_lex $P1423
    .const 'Sub' $P1419 = "135_1308672490.86084" 
    capture_lex $P1419
    .const 'Sub' $P1416 = "134_1308672490.86084" 
    capture_lex $P1416
    .const 'Sub' $P1412 = "133_1308672490.86084" 
    capture_lex $P1412
    .const 'Sub' $P1408 = "132_1308672490.86084" 
    capture_lex $P1408
    .const 'Sub' $P1367 = "129_1308672490.86084" 
    capture_lex $P1367
    .const 'Sub' $P1351 = "126_1308672490.86084" 
    capture_lex $P1351
    .const 'Sub' $P1349 = "125_1308672490.86084" 
    capture_lex $P1349
    .const 'Sub' $P1336 = "122_1308672490.86084" 
    capture_lex $P1336
    .const 'Sub' $P1320 = "120_1308672490.86084" 
    capture_lex $P1320
.annotate 'line', 860
    .const 'Sub' $P1320 = "120_1308672490.86084" 
    newclosure $P1334, $P1320
    set $P1319, $P1334
    .lex "string_to_int", $P1319
.annotate 'line', 859
    find_lex $P105, "string_to_int"
    find_lex $P106, "$?PACKAGE"
    get_who $P107, $P106
    set $P107["string_to_int"], $P105
.annotate 'line', 882
    .const 'Sub' $P1336 = "122_1308672490.86084" 
    newclosure $P1346, $P1336
    set $P1335, $P1346
    .lex "ints_to_string", $P1335
.annotate 'line', 859
    find_lex $P109, "ints_to_string"
    find_lex $P110, "$?PACKAGE"
    get_who $P111, $P110
    set $P111["ints_to_string"], $P109
    .lex "$?PACKAGE", $P1347
    .lex "$?CLASS", $P1348
    find_lex $P112, "string_to_int"
    find_lex $P112, "ints_to_string"
.annotate 'line', 1053
    .const 'Sub' $P1567 = "164_1308672490.86084" 
    newclosure $P1573, $P1567
.annotate 'line', 859
    .return ($P1573)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "string_to_int"  :subid("120_1308672490.86084") :outer("119_1308672490.86084")
    .param pmc param_1321
    .param pmc param_1322
.annotate 'line', 860
    .const 'Sub' $P1327 = "121_1308672490.86084" 
    capture_lex $P1327
    .lex "$src", param_1321
    .lex "$base", param_1322
.annotate 'line', 861
    new $P101, "Undef"
    set $P1323, $P101
    .lex "$len", $P1323
.annotate 'line', 862
    new $P102, "Undef"
    set $P1324, $P102
    .lex "$i", $P1324
.annotate 'line', 863
    new $P103, "Undef"
    set $P1325, $P103
    .lex "$result", $P1325
.annotate 'line', 861
    find_lex $P104, "$src"
    unless_null $P104, vivify_485
    new $P104, "Undef"
  vivify_485:
    set $S100, $P104
    length $I100, $S100
    new $P105, 'Integer'
    set $P105, $I100
    store_lex "$len", $P105
.annotate 'line', 862
    new $P104, "Integer"
    assign $P104, 0
    store_lex "$i", $P104
.annotate 'line', 863
    new $P104, "Integer"
    assign $P104, 0
    store_lex "$result", $P104
.annotate 'line', 865
    new $P108, 'ExceptionHandler'
    set_label $P108, loop1333_handler
    $P108."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P108
  loop1333_test:
    find_lex $P104, "$i"
    unless_null $P104, vivify_486
    new $P104, "Undef"
  vivify_486:
    set $N100, $P104
    find_lex $P105, "$len"
    unless_null $P105, vivify_487
    new $P105, "Undef"
  vivify_487:
    set $N101, $P105
    islt $I100, $N100, $N101
    unless $I100, loop1333_done
  loop1333_redo:
    .const 'Sub' $P1327 = "121_1308672490.86084" 
    capture_lex $P1327
    $P1327()
  loop1333_next:
    goto loop1333_test
  loop1333_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P109, exception, 'type'
    eq $P109, .CONTROL_LOOP_NEXT, loop1333_next
    eq $P109, .CONTROL_LOOP_REDO, loop1333_redo
  loop1333_done:
    pop_eh 
.annotate 'line', 860
    find_lex $P104, "$result"
    unless_null $P104, vivify_503
    new $P104, "Undef"
  vivify_503:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1326"  :anon :subid("121_1308672490.86084") :outer("120_1308672490.86084")
.annotate 'line', 866
    new $P106, "Undef"
    set $P1328, $P106
    .lex "$char", $P1328
.annotate 'line', 871
    new $P107, "Undef"
    set $P1329, $P107
    .lex "$digitval", $P1329
.annotate 'line', 866
    find_lex $P108, "$src"
    unless_null $P108, vivify_488
    new $P108, "Undef"
  vivify_488:
    set $S100, $P108
    find_lex $P109, "$i"
    unless_null $P109, vivify_489
    new $P109, "Undef"
  vivify_489:
    set $I101, $P109
    substr $S101, $S100, $I101, 1
    new $P110, 'String'
    set $P110, $S101
    store_lex "$char", $P110
.annotate 'line', 867
    find_lex $P108, "$char"
    unless_null $P108, vivify_490
    new $P108, "Undef"
  vivify_490:
    set $S100, $P108
    iseq $I101, $S100, "_"
    unless $I101, if_1330_end
.annotate 'line', 868
    find_lex $P109, "$i"
    unless_null $P109, vivify_491
    new $P109, "Undef"
  vivify_491:
    add $P110, $P109, 1
    store_lex "$i", $P110
.annotate 'line', 869
    die 0, .CONTROL_LOOP_NEXT
  if_1330_end:
.annotate 'line', 871
    find_lex $P108, "$char"
    unless_null $P108, vivify_492
    new $P108, "Undef"
  vivify_492:
    set $S100, $P108
    index $I101, "00112233445566778899AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz", $S100
    new $P109, 'Integer'
    set $P109, $I101
    store_lex "$digitval", $P109
.annotate 'line', 872
    find_lex $P108, "$digitval"
    unless_null $P108, vivify_493
    new $P108, "Undef"
  vivify_493:
    div $P109, $P108, 2
    set $I101, $P109
    new $P110, 'Integer'
    set $P110, $I101
    store_lex "$digitval", $P110
.annotate 'line', 873
    find_lex $P109, "$digitval"
    unless_null $P109, vivify_494
    new $P109, "Undef"
  vivify_494:
    set $N102, $P109
    islt $I101, $N102, 0.0
    unless $I101, unless_1332
    new $P108, 'Integer'
    set $P108, $I101
    goto unless_1332_end
  unless_1332:
    find_lex $P110, "$digitval"
    unless_null $P110, vivify_495
    new $P110, "Undef"
  vivify_495:
    set $N103, $P110
    find_lex $P111, "$base"
    unless_null $P111, vivify_496
    new $P111, "Undef"
  vivify_496:
    set $N104, $P111
    isge $I102, $N103, $N104
    new $P108, 'Integer'
    set $P108, $I102
  unless_1332_end:
    unless $P108, if_1331_end
.annotate 'line', 874
    find_lex $P112, "$src"
    unless_null $P112, vivify_497
    new $P112, "Undef"
  vivify_497:
    $P113 = $P112."CURSOR"()
    new $P114, 'String'
    set $P114, "Invalid radix conversion of character '"
    find_lex $P115, "$char"
    unless_null $P115, vivify_498
    new $P115, "Undef"
  vivify_498:
    concat $P116, $P114, $P115
    concat $P117, $P116, "'"
    $P113."panic"($P117)
  if_1331_end:
.annotate 'line', 876
    find_lex $P108, "$base"
    unless_null $P108, vivify_499
    new $P108, "Undef"
  vivify_499:
    find_lex $P109, "$result"
    unless_null $P109, vivify_500
    new $P109, "Undef"
  vivify_500:
    mul $P110, $P108, $P109
    find_lex $P111, "$digitval"
    unless_null $P111, vivify_501
    new $P111, "Undef"
  vivify_501:
    add $P112, $P110, $P111
    store_lex "$result", $P112
.annotate 'line', 877
    find_lex $P113, "$i"
    unless_null $P113, vivify_502
    new $P113, "Undef"
  vivify_502:
    add $P114, $P113, 1
    store_lex "$i", $P114
    new $P115, "ResizablePMCArray"
    push $P115, $P112
    push $P115, $P114
.annotate 'line', 865
    .return ($P115)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "ints_to_string"  :subid("122_1308672490.86084") :outer("119_1308672490.86084")
    .param pmc param_1337
.annotate 'line', 882
    .const 'Sub' $P1340 = "123_1308672490.86084" 
    capture_lex $P1340
    .lex "$ints", param_1337
.annotate 'line', 883
    find_lex $P109, "$ints"
    unless_null $P109, vivify_504
    new $P109, "Undef"
  vivify_504:
    does $I100, $P109, "array"
    if $I100, if_1338
.annotate 'line', 890
    find_lex $P113, "$ints"
    unless_null $P113, vivify_505
    new $P113, "Undef"
  vivify_505:
    $I101 = $P113."ast"()
    chr $S100, $I101
    new $P114, 'String'
    set $P114, $S100
.annotate 'line', 889
    set $P108, $P114
.annotate 'line', 883
    goto if_1338_end
  if_1338:
    .const 'Sub' $P1340 = "123_1308672490.86084" 
    capture_lex $P1340
    $P112 = $P1340()
    set $P108, $P112
  if_1338_end:
.annotate 'line', 882
    .return ($P108)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block1339"  :anon :subid("123_1308672490.86084") :outer("122_1308672490.86084")
.annotate 'line', 883
    .const 'Sub' $P1343 = "124_1308672490.86084" 
    capture_lex $P1343
.annotate 'line', 884
    new $P110, "Undef"
    set $P1341, $P110
    .lex "$result", $P1341
    new $P111, "String"
    assign $P111, ""
    store_lex "$result", $P111
.annotate 'line', 885
    find_lex $P112, "$ints"
    unless_null $P112, vivify_506
    new $P112, "Undef"
  vivify_506:
    defined $I101, $P112
    unless $I101, for_undef_507
    iter $P111, $P112
    new $P114, 'ExceptionHandler'
    set_label $P114, loop1345_handler
    $P114."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P114
  loop1345_test:
    unless $P111, loop1345_done
    shift $P113, $P111
  loop1345_redo:
    .const 'Sub' $P1343 = "124_1308672490.86084" 
    capture_lex $P1343
    $P1343($P113)
  loop1345_next:
    goto loop1345_test
  loop1345_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P115, exception, 'type'
    eq $P115, .CONTROL_LOOP_NEXT, loop1345_next
    eq $P115, .CONTROL_LOOP_REDO, loop1345_redo
  loop1345_done:
    pop_eh 
  for_undef_507:
.annotate 'line', 883
    find_lex $P111, "$result"
    unless_null $P111, vivify_510
    new $P111, "Undef"
  vivify_510:
    .return ($P111)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1342"  :anon :subid("124_1308672490.86084") :outer("123_1308672490.86084")
    .param pmc param_1344
.annotate 'line', 885
    .lex "$_", param_1344
.annotate 'line', 886
    find_lex $P114, "$result"
    unless_null $P114, vivify_508
    new $P114, "Undef"
  vivify_508:
    find_lex $P115, "$_"
    unless_null $P115, vivify_509
    new $P115, "Undef"
  vivify_509:
    $I102 = $P115."ast"()
    chr $S100, $I102
    concat $P116, $P114, $S100
    store_lex "$result", $P116
.annotate 'line', 885
    .return ($P116)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "CTXSAVE" :anon :subid("125_1308672490.86084") :outer("119_1308672490.86084")
    .param pmc param_1350
.annotate 'line', 895
    .lex "self", param_1350
.annotate 'line', 896
    get_hll_global $P112, "GLOBAL"
    nqp_get_package_through_who $P113, $P112, "PAST"
    get_who $P114, $P113
    set $P115, $P114["Op"]
.annotate 'line', 902
    new $P116, "ResizablePMCArray"
    push $P116, "    $P0 = find_dynamic_lex \"$*CTXSAVE\""
    push $P116, "    if null $P0 goto ctxsave_done"
    push $P116, "    $I0 = can $P0, \"ctxsave\""
    push $P116, "    unless $I0 goto ctxsave_done"
    push $P116, "    $P0.\"ctxsave\"()"
    push $P116, "  ctxsave_done:"
.annotate 'line', 896
    $P117 = $P115."new"($P116 :named("inline"))
.annotate 'line', 895
    .return ($P117)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "SET_BLOCK_OUTER_CTX" :anon :subid("126_1308672490.86084") :outer("119_1308672490.86084")
    .param pmc param_1352
    .param pmc param_1353
.annotate 'line', 909
    .const 'Sub' $P1358 = "127_1308672490.86084" 
    capture_lex $P1358
    .lex "self", param_1352
    .lex "$block", param_1353
.annotate 'line', 910
    new $P112, "Undef"
    set $P1354, $P112
    .lex "$outer_ctx", $P1354
    find_dynamic_lex $P115, "%*COMPILING"
    unless_null $P115, vivify_511
    get_hll_global $P113, "GLOBAL"
    get_who $P114, $P113
    set $P115, $P114["%COMPILING"]
    unless_null $P115, vivify_512
    die "Contextual %*COMPILING not found"
  vivify_512:
  vivify_511:
    set $P1355, $P115["%?OPTIONS"]
    unless_null $P1355, vivify_513
    $P1355 = root_new ['parrot';'Hash']
  vivify_513:
    set $P116, $P1355["outer_ctx"]
    unless_null $P116, vivify_514
    new $P116, "Undef"
  vivify_514:
    store_lex "$outer_ctx", $P116
.annotate 'line', 911
    find_lex $P114, "$outer_ctx"
    unless_null $P114, vivify_515
    new $P114, "Undef"
  vivify_515:
    defined $I100, $P114
    if $I100, if_1356
    new $P113, 'Integer'
    set $P113, $I100
    goto if_1356_end
  if_1356:
    .const 'Sub' $P1358 = "127_1308672490.86084" 
    capture_lex $P1358
    $P116 = $P1358()
    set $P113, $P116
  if_1356_end:
.annotate 'line', 909
    .return ($P113)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block1357"  :anon :subid("127_1308672490.86084") :outer("126_1308672490.86084")
.annotate 'line', 911
    .const 'Sub' $P1364 = "128_1308672490.86084" 
    capture_lex $P1364
.annotate 'line', 912
    $P1360 = root_new ['parrot';'ResizablePMCArray']
    set $P1359, $P1360
    .lex "@ns", $P1359
    find_lex $P115, "$outer_ctx"
    unless_null $P115, vivify_516
    new $P115, "Undef"
  vivify_516:
    getattribute $P116, $P115, "current_namespace"
    $P117 = $P116."get_name"()
    store_lex "@ns", $P117
.annotate 'line', 913
    find_lex $P1361, "@ns"
    unless_null $P1361, vivify_517
    $P1361 = root_new ['parrot';'ResizablePMCArray']
  vivify_517:
    $P1361."shift"()
.annotate 'line', 914
    find_lex $P115, "$block"
    unless_null $P115, vivify_518
    new $P115, "Undef"
  vivify_518:
    find_lex $P1362, "@ns"
    unless_null $P1362, vivify_519
    $P1362 = root_new ['parrot';'ResizablePMCArray']
  vivify_519:
    $P115."namespace"($P1362)
.annotate 'line', 915
    find_lex $P116, "$outer_ctx"
    unless_null $P116, vivify_520
    new $P116, "Undef"
  vivify_520:
    $P117 = $P116."lexpad_full"()
    defined $I101, $P117
    unless $I101, for_undef_521
    iter $P115, $P117
    new $P119, 'ExceptionHandler'
    set_label $P119, loop1366_handler
    $P119."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P119
  loop1366_test:
    unless $P115, loop1366_done
    shift $P118, $P115
  loop1366_redo:
    .const 'Sub' $P1364 = "128_1308672490.86084" 
    capture_lex $P1364
    $P1364($P118)
  loop1366_next:
    goto loop1366_test
  loop1366_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P120, exception, 'type'
    eq $P120, .CONTROL_LOOP_NEXT, loop1366_next
    eq $P120, .CONTROL_LOOP_REDO, loop1366_redo
  loop1366_done:
    pop_eh 
  for_undef_521:
.annotate 'line', 911
    .return ($P115)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1363"  :anon :subid("128_1308672490.86084") :outer("127_1308672490.86084")
    .param pmc param_1365
.annotate 'line', 915
    .lex "$_", param_1365
.annotate 'line', 916
    find_lex $P119, "$block"
    unless_null $P119, vivify_522
    new $P119, "Undef"
  vivify_522:
    find_lex $P120, "$_"
    unless_null $P120, vivify_523
    new $P120, "Undef"
  vivify_523:
    $P121 = $P120."key"()
    find_lex $P122, "$_"
    unless_null $P122, vivify_524
    new $P122, "Undef"
  vivify_524:
    $P123 = $P122."value"()
    $P124 = $P119."symbol"($P121, "lexical" :named("scope"), $P123 :named("value"))
.annotate 'line', 915
    .return ($P124)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "EXPR" :anon :subid("129_1308672490.86084") :outer("119_1308672490.86084")
    .param pmc param_1370
    .param pmc param_1371
    .param pmc param_1372 :optional
    .param int has_param_1372 :opt_flag
.annotate 'line', 922
    .const 'Sub' $P1404 = "131_1308672490.86084" 
    capture_lex $P1404
    .const 'Sub' $P1396 = "130_1308672490.86084" 
    capture_lex $P1396
    new $P1369, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1369, control_1368
    push_eh $P1369
    .lex "self", param_1370
    .lex "$/", param_1371
    if has_param_1372, optparam_525
    new $P112, "Undef"
    set param_1372, $P112
  optparam_525:
    .lex "$key", param_1372
.annotate 'line', 924
    new $P113, "Undef"
    set $P1373, $P113
    .lex "$past", $P1373
.annotate 'line', 923
    find_lex $P114, "$key"
    unless_null $P114, vivify_526
    new $P114, "Undef"
  vivify_526:
    if $P114, unless_1374_end
    new $P115, "Exception"
    set $P115['type'], .CONTROL_RETURN
    new $P116, "Integer"
    assign $P116, 0
    setattribute $P115, 'payload', $P116
    throw $P115
  unless_1374_end:
.annotate 'line', 924
    find_lex $P114, "$/"
    unless_null $P114, vivify_527
    new $P114, "Undef"
  vivify_527:
    $P115 = $P114."ast"()
    set $P1375, $P115
    defined $I1377, $P1375
    if $I1377, default_1376
    find_lex $P1378, "$/"
    unless_null $P1378, vivify_528
    $P1378 = root_new ['parrot';'Hash']
  vivify_528:
    set $P116, $P1378["OPER"]
    unless_null $P116, vivify_529
    new $P116, "Undef"
  vivify_529:
    $P117 = $P116."ast"()
    set $P1375, $P117
  default_1376:
    store_lex "$past", $P1375
.annotate 'line', 925
    find_lex $P114, "$past"
    unless_null $P114, vivify_530
    new $P114, "Undef"
  vivify_530:
    if $P114, unless_1379_end
.annotate 'line', 926
    get_hll_global $P115, "GLOBAL"
    nqp_get_package_through_who $P116, $P115, "PAST"
    get_who $P117, $P116
    set $P118, $P117["Op"]
    find_lex $P119, "$/"
    unless_null $P119, vivify_531
    new $P119, "Undef"
  vivify_531:
    $P120 = $P118."new"($P119 :named("node"))
    store_lex "$past", $P120
.annotate 'line', 927
    find_lex $P1381, "$/"
    unless_null $P1381, vivify_532
    $P1381 = root_new ['parrot';'Hash']
  vivify_532:
    set $P1382, $P1381["OPER"]
    unless_null $P1382, vivify_533
    $P1382 = root_new ['parrot';'Hash']
  vivify_533:
    set $P1383, $P1382["O"]
    unless_null $P1383, vivify_534
    $P1383 = root_new ['parrot';'Hash']
  vivify_534:
    set $P115, $P1383["pasttype"]
    unless_null $P115, vivify_535
    new $P115, "Undef"
  vivify_535:
    if $P115, if_1380
.annotate 'line', 928
    find_lex $P1388, "$/"
    unless_null $P1388, vivify_536
    $P1388 = root_new ['parrot';'Hash']
  vivify_536:
    set $P1389, $P1388["OPER"]
    unless_null $P1389, vivify_537
    $P1389 = root_new ['parrot';'Hash']
  vivify_537:
    set $P1390, $P1389["O"]
    unless_null $P1390, vivify_538
    $P1390 = root_new ['parrot';'Hash']
  vivify_538:
    set $P116, $P1390["pirop"]
    unless_null $P116, vivify_539
    new $P116, "Undef"
  vivify_539:
    unless $P116, if_1387_end
    find_lex $P117, "$past"
    unless_null $P117, vivify_540
    new $P117, "Undef"
  vivify_540:
    find_lex $P1391, "$/"
    unless_null $P1391, vivify_541
    $P1391 = root_new ['parrot';'Hash']
  vivify_541:
    set $P1392, $P1391["OPER"]
    unless_null $P1392, vivify_542
    $P1392 = root_new ['parrot';'Hash']
  vivify_542:
    set $P1393, $P1392["O"]
    unless_null $P1393, vivify_543
    $P1393 = root_new ['parrot';'Hash']
  vivify_543:
    set $P118, $P1393["pirop"]
    unless_null $P118, vivify_544
    new $P118, "Undef"
  vivify_544:
    set $S100, $P118
    $P117."pirop"($S100)
  if_1387_end:
    goto if_1380_end
  if_1380:
.annotate 'line', 927
    find_lex $P116, "$past"
    unless_null $P116, vivify_545
    new $P116, "Undef"
  vivify_545:
    find_lex $P1384, "$/"
    unless_null $P1384, vivify_546
    $P1384 = root_new ['parrot';'Hash']
  vivify_546:
    set $P1385, $P1384["OPER"]
    unless_null $P1385, vivify_547
    $P1385 = root_new ['parrot';'Hash']
  vivify_547:
    set $P1386, $P1385["O"]
    unless_null $P1386, vivify_548
    $P1386 = root_new ['parrot';'Hash']
  vivify_548:
    set $P117, $P1386["pasttype"]
    unless_null $P117, vivify_549
    new $P117, "Undef"
  vivify_549:
    set $S100, $P117
    $P116."pasttype"($S100)
  if_1380_end:
.annotate 'line', 929
    find_lex $P115, "$past"
    unless_null $P115, vivify_550
    new $P115, "Undef"
  vivify_550:
    $P116 = $P115."name"()
    if $P116, unless_1394_end
    .const 'Sub' $P1396 = "130_1308672490.86084" 
    capture_lex $P1396
    $P1396()
  unless_1394_end:
  unless_1379_end:
.annotate 'line', 935
    find_lex $P114, "$key"
    unless_null $P114, vivify_558
    new $P114, "Undef"
  vivify_558:
    set $S100, $P114
    iseq $I100, $S100, "POSTFIX"
    if $I100, if_1401
.annotate 'line', 937
    find_lex $P116, "$/"
    unless_null $P116, vivify_559
    new $P116, "Undef"
  vivify_559:
    $P117 = $P116."list"()
    defined $I101, $P117
    unless $I101, for_undef_560
    iter $P115, $P117
    new $P120, 'ExceptionHandler'
    set_label $P120, loop1407_handler
    $P120."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P120
  loop1407_test:
    unless $P115, loop1407_done
    shift $P118, $P115
  loop1407_redo:
    .const 'Sub' $P1404 = "131_1308672490.86084" 
    capture_lex $P1404
    $P1404($P118)
  loop1407_next:
    goto loop1407_test
  loop1407_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P121, exception, 'type'
    eq $P121, .CONTROL_LOOP_NEXT, loop1407_next
    eq $P121, .CONTROL_LOOP_REDO, loop1407_redo
  loop1407_done:
    pop_eh 
  for_undef_560:
.annotate 'line', 936
    goto if_1401_end
  if_1401:
.annotate 'line', 935
    find_lex $P115, "$past"
    unless_null $P115, vivify_564
    new $P115, "Undef"
  vivify_564:
    find_lex $P1402, "$/"
    unless_null $P1402, vivify_565
    $P1402 = root_new ['parrot';'ResizablePMCArray']
  vivify_565:
    set $P116, $P1402[0]
    unless_null $P116, vivify_566
    new $P116, "Undef"
  vivify_566:
    $P117 = $P116."ast"()
    $P115."unshift"($P117)
  if_1401_end:
.annotate 'line', 939
    find_lex $P114, "$/"
    find_lex $P115, "$past"
    unless_null $P115, vivify_567
    new $P115, "Undef"
  vivify_567:
    $P116 = $P114."!make"($P115)
.annotate 'line', 922
    .return ($P116)
  control_1368:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P114, exception, "payload"
    .return ($P114)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1395"  :anon :subid("130_1308672490.86084") :outer("129_1308672490.86084")
.annotate 'line', 931
    new $P117, "Undef"
    set $P1397, $P117
    .lex "$name", $P1397
.annotate 'line', 930
    find_lex $P118, "$key"
    unless_null $P118, vivify_551
    new $P118, "Undef"
  vivify_551:
    set $S100, $P118
    iseq $I100, $S100, "LIST"
    unless $I100, if_1398_end
    new $P119, "String"
    assign $P119, "infix"
    store_lex "$key", $P119
  if_1398_end:
.annotate 'line', 931
    find_lex $P118, "$key"
    unless_null $P118, vivify_552
    new $P118, "Undef"
  vivify_552:
    set $S100, $P118
    downcase $S101, $S100
    new $P119, 'String'
    set $P119, $S101
    concat $P120, $P119, ":<"
    find_lex $P1399, "$/"
    unless_null $P1399, vivify_553
    $P1399 = root_new ['parrot';'Hash']
  vivify_553:
    set $P1400, $P1399["OPER"]
    unless_null $P1400, vivify_554
    $P1400 = root_new ['parrot';'Hash']
  vivify_554:
    set $P121, $P1400["sym"]
    unless_null $P121, vivify_555
    new $P121, "Undef"
  vivify_555:
    concat $P122, $P120, $P121
    concat $P123, $P122, ">"
    store_lex "$name", $P123
.annotate 'line', 932
    find_lex $P118, "$past"
    unless_null $P118, vivify_556
    new $P118, "Undef"
  vivify_556:
    new $P119, "String"
    assign $P119, "&"
    find_lex $P120, "$name"
    unless_null $P120, vivify_557
    new $P120, "Undef"
  vivify_557:
    concat $P121, $P119, $P120
    $P122 = $P118."name"($P121)
.annotate 'line', 929
    .return ($P122)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1403"  :anon :subid("131_1308672490.86084") :outer("129_1308672490.86084")
    .param pmc param_1405
.annotate 'line', 937
    .lex "$_", param_1405
    find_lex $P120, "$_"
    unless_null $P120, vivify_561
    new $P120, "Undef"
  vivify_561:
    $P121 = $P120."ast"()
    defined $I102, $P121
    if $I102, if_1406
    new $P119, 'Integer'
    set $P119, $I102
    goto if_1406_end
  if_1406:
    find_lex $P122, "$past"
    unless_null $P122, vivify_562
    new $P122, "Undef"
  vivify_562:
    find_lex $P123, "$_"
    unless_null $P123, vivify_563
    new $P123, "Undef"
  vivify_563:
    $P124 = $P123."ast"()
    $P125 = $P122."push"($P124)
    set $P119, $P125
  if_1406_end:
    .return ($P119)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "term:sym<circumfix>" :anon :subid("132_1308672490.86084") :outer("119_1308672490.86084")
    .param pmc param_1409
    .param pmc param_1410
.annotate 'line', 942
    .lex "self", param_1409
    .lex "$/", param_1410
    find_lex $P112, "$/"
    find_lex $P1411, "$/"
    unless_null $P1411, vivify_568
    $P1411 = root_new ['parrot';'Hash']
  vivify_568:
    set $P113, $P1411["circumfix"]
    unless_null $P113, vivify_569
    new $P113, "Undef"
  vivify_569:
    $P114 = $P113."ast"()
    $P115 = $P112."!make"($P114)
    .return ($P115)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "termish" :anon :subid("133_1308672490.86084") :outer("119_1308672490.86084")
    .param pmc param_1413
    .param pmc param_1414
.annotate 'line', 944
    .lex "self", param_1413
    .lex "$/", param_1414
    find_lex $P112, "$/"
    find_lex $P1415, "$/"
    unless_null $P1415, vivify_570
    $P1415 = root_new ['parrot';'Hash']
  vivify_570:
    set $P113, $P1415["term"]
    unless_null $P113, vivify_571
    new $P113, "Undef"
  vivify_571:
    $P114 = $P113."ast"()
    $P115 = $P112."!make"($P114)
    .return ($P115)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "nullterm" :anon :subid("134_1308672490.86084") :outer("119_1308672490.86084")
    .param pmc param_1417
    .param pmc param_1418
.annotate 'line', 945
    .lex "self", param_1417
    .lex "$/", param_1418
    find_lex $P112, "$/"
    new $P113, "Undef"
    $P114 = $P112."!make"($P113)
    .return ($P114)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "nullterm_alt" :anon :subid("135_1308672490.86084") :outer("119_1308672490.86084")
    .param pmc param_1420
    .param pmc param_1421
.annotate 'line', 946
    .lex "self", param_1420
    .lex "$/", param_1421
    find_lex $P112, "$/"
    find_lex $P1422, "$/"
    unless_null $P1422, vivify_572
    $P1422 = root_new ['parrot';'Hash']
  vivify_572:
    set $P113, $P1422["term"]
    unless_null $P113, vivify_573
    new $P113, "Undef"
  vivify_573:
    $P114 = $P113."ast"()
    $P115 = $P112."!make"($P114)
    .return ($P115)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "integer" :anon :subid("136_1308672490.86084") :outer("119_1308672490.86084")
    .param pmc param_1424
    .param pmc param_1425
.annotate 'line', 948
    .lex "self", param_1424
    .lex "$/", param_1425
    find_lex $P112, "$/"
    find_lex $P1426, "$/"
    unless_null $P1426, vivify_574
    $P1426 = root_new ['parrot';'Hash']
  vivify_574:
    set $P113, $P1426["VALUE"]
    unless_null $P113, vivify_575
    new $P113, "Undef"
  vivify_575:
    $P114 = $P113."ast"()
    $P115 = $P112."!make"($P114)
    .return ($P115)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "dec_number" :anon :subid("137_1308672490.86084") :outer("119_1308672490.86084")
    .param pmc param_1428
    .param pmc param_1429
.annotate 'line', 950
    .lex "self", param_1428
    .lex "$/", param_1429
    find_lex $P112, "$/"
    find_lex $P113, "$/"
    unless_null $P113, vivify_576
    new $P113, "Undef"
  vivify_576:
    set $N100, $P113
    $P114 = $P112."!make"($N100)
    .return ($P114)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "decint" :anon :subid("138_1308672490.86084") :outer("119_1308672490.86084")
    .param pmc param_1431
    .param pmc param_1432
.annotate 'line', 952
    .lex "self", param_1431
    .lex "$/", param_1432
    find_lex $P112, "$/"
    find_lex $P113, "$/"
    unless_null $P113, vivify_577
    new $P113, "Undef"
  vivify_577:
    $P114 = "string_to_int"($P113, 10)
    $P115 = $P112."!make"($P114)
    .return ($P115)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "hexint" :anon :subid("139_1308672490.86084") :outer("119_1308672490.86084")
    .param pmc param_1434
    .param pmc param_1435
.annotate 'line', 953
    .lex "self", param_1434
    .lex "$/", param_1435
    find_lex $P112, "$/"
    find_lex $P113, "$/"
    unless_null $P113, vivify_578
    new $P113, "Undef"
  vivify_578:
    $P114 = "string_to_int"($P113, 16)
    $P115 = $P112."!make"($P114)
    .return ($P115)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "octint" :anon :subid("140_1308672490.86084") :outer("119_1308672490.86084")
    .param pmc param_1437
    .param pmc param_1438
.annotate 'line', 954
    .lex "self", param_1437
    .lex "$/", param_1438
    find_lex $P112, "$/"
    find_lex $P113, "$/"
    unless_null $P113, vivify_579
    new $P113, "Undef"
  vivify_579:
    $P114 = "string_to_int"($P113, 8)
    $P115 = $P112."!make"($P114)
    .return ($P115)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "binint" :anon :subid("141_1308672490.86084") :outer("119_1308672490.86084")
    .param pmc param_1440
    .param pmc param_1441
.annotate 'line', 955
    .lex "self", param_1440
    .lex "$/", param_1441
    find_lex $P112, "$/"
    find_lex $P113, "$/"
    unless_null $P113, vivify_580
    new $P113, "Undef"
  vivify_580:
    $P114 = "string_to_int"($P113, 2)
    $P115 = $P112."!make"($P114)
    .return ($P115)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_EXPR" :anon :subid("142_1308672490.86084") :outer("119_1308672490.86084")
    .param pmc param_1443
    .param pmc param_1444
.annotate 'line', 957
    .const 'Sub' $P1450 = "143_1308672490.86084" 
    capture_lex $P1450
    .lex "self", param_1443
    .lex "$/", param_1444
.annotate 'line', 958
    new $P112, "Undef"
    set $P1445, $P112
    .lex "$past", $P1445
    find_lex $P1446, "$/"
    unless_null $P1446, vivify_581
    $P1446 = root_new ['parrot';'Hash']
  vivify_581:
    set $P113, $P1446["quote_delimited"]
    unless_null $P113, vivify_582
    new $P113, "Undef"
  vivify_582:
    $P114 = $P113."ast"()
    store_lex "$past", $P114
.annotate 'line', 959
    find_lex $P113, "$/"
    unless_null $P113, vivify_583
    new $P113, "Undef"
  vivify_583:
    $P114 = $P113."CURSOR"()
    $P115 = $P114."quotemod_check"("w")
    unless $P115, if_1447_end
.annotate 'line', 960
    get_hll_global $P116, "GLOBAL"
    nqp_get_package_through_who $P117, $P116, "PAST"
    get_who $P118, $P117
    set $P119, $P118["Node"]
    find_lex $P120, "$past"
    unless_null $P120, vivify_584
    new $P120, "Undef"
  vivify_584:
    $P121 = $P119."ACCEPTS"($P120)
    if $P121, if_1448
.annotate 'line', 963
    .const 'Sub' $P1450 = "143_1308672490.86084" 
    capture_lex $P1450
    $P1450()
    goto if_1448_end
  if_1448:
.annotate 'line', 961
    find_lex $P122, "$/"
    unless_null $P122, vivify_595
    new $P122, "Undef"
  vivify_595:
    $P123 = $P122."CURSOR"()
    $P123."panic"("Can't form :w list from non-constant strings (yet)")
  if_1448_end:
  if_1447_end:
.annotate 'line', 974
    get_hll_global $P113, "GLOBAL"
    nqp_get_package_through_who $P114, $P113, "PAST"
    get_who $P115, $P114
    set $P116, $P115["Node"]
    find_lex $P117, "$past"
    unless_null $P117, vivify_596
    new $P117, "Undef"
  vivify_596:
    $P118 = $P116."ACCEPTS"($P117)
    isfalse $I100, $P118
    unless $I100, if_1461_end
.annotate 'line', 975
    get_hll_global $P119, "GLOBAL"
    nqp_get_package_through_who $P120, $P119, "PAST"
    get_who $P121, $P120
    set $P122, $P121["Val"]
    find_lex $P123, "$past"
    unless_null $P123, vivify_597
    new $P123, "Undef"
  vivify_597:
    set $S100, $P123
    $P124 = $P122."new"($S100 :named("value"))
    store_lex "$past", $P124
  if_1461_end:
.annotate 'line', 977
    find_lex $P113, "$/"
    find_lex $P114, "$past"
    unless_null $P114, vivify_598
    new $P114, "Undef"
  vivify_598:
    $P115 = $P113."!make"($P114)
.annotate 'line', 957
    .return ($P115)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "_block1449"  :anon :subid("143_1308672490.86084") :outer("142_1308672490.86084")
.annotate 'line', 963
    .const 'Sub' $P1457 = "144_1308672490.86084" 
    capture_lex $P1457
.annotate 'line', 964
    $P1452 = root_new ['parrot';'ResizablePMCArray']
    set $P1451, $P1452
    .lex "@words", $P1451
    get_hll_global $P122, "GLOBAL"
    nqp_get_package_through_who $P123, $P122, "HLL"
    nqp_get_package_through_who $P124, $P123, "Grammar"
    get_who $P125, $P124
    set $P126, $P125["split_words"]
    find_lex $P127, "$/"
    unless_null $P127, vivify_585
    new $P127, "Undef"
  vivify_585:
    find_lex $P128, "$past"
    unless_null $P128, vivify_586
    new $P128, "Undef"
  vivify_586:
    $P129 = $P126($P127, $P128)
    store_lex "@words", $P129
.annotate 'line', 965
    find_lex $P1454, "@words"
    unless_null $P1454, vivify_587
    $P1454 = root_new ['parrot';'ResizablePMCArray']
  vivify_587:
    set $N100, $P1454
    isne $I100, $N100, 1.0
    if $I100, if_1453
.annotate 'line', 970
    find_lex $P1460, "@words"
    unless_null $P1460, vivify_588
    $P1460 = root_new ['parrot';'ResizablePMCArray']
  vivify_588:
    set $P124, $P1460[0]
    unless_null $P124, vivify_589
    new $P124, "Undef"
  vivify_589:
    set $S100, $P124
    new $P125, 'String'
    set $P125, $S100
    store_lex "$past", $P125
.annotate 'line', 969
    set $P122, $P125
.annotate 'line', 965
    goto if_1453_end
  if_1453:
.annotate 'line', 966
    get_hll_global $P123, "GLOBAL"
    nqp_get_package_through_who $P124, $P123, "PAST"
    get_who $P125, $P124
    set $P126, $P125["Op"]
    find_lex $P127, "$/"
    unless_null $P127, vivify_590
    new $P127, "Undef"
  vivify_590:
    $P128 = $P126."new"("list" :named("pasttype"), $P127 :named("node"))
    store_lex "$past", $P128
.annotate 'line', 967
    find_lex $P1455, "@words"
    unless_null $P1455, vivify_591
    $P1455 = root_new ['parrot';'ResizablePMCArray']
  vivify_591:
    defined $I101, $P1455
    unless $I101, for_undef_592
    iter $P123, $P1455
    new $P125, 'ExceptionHandler'
    set_label $P125, loop1459_handler
    $P125."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P125
  loop1459_test:
    unless $P123, loop1459_done
    shift $P124, $P123
  loop1459_redo:
    .const 'Sub' $P1457 = "144_1308672490.86084" 
    capture_lex $P1457
    $P1457($P124)
  loop1459_next:
    goto loop1459_test
  loop1459_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P126, exception, 'type'
    eq $P126, .CONTROL_LOOP_NEXT, loop1459_next
    eq $P126, .CONTROL_LOOP_REDO, loop1459_redo
  loop1459_done:
    pop_eh 
  for_undef_592:
.annotate 'line', 965
    set $P122, $P123
  if_1453_end:
.annotate 'line', 963
    .return ($P122)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1456"  :anon :subid("144_1308672490.86084") :outer("143_1308672490.86084")
    .param pmc param_1458
.annotate 'line', 967
    .lex "$_", param_1458
    find_lex $P125, "$past"
    unless_null $P125, vivify_593
    new $P125, "Undef"
  vivify_593:
    find_lex $P126, "$_"
    unless_null $P126, vivify_594
    new $P126, "Undef"
  vivify_594:
    $P127 = $P125."push"($P126)
    .return ($P127)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "quote_delimited" :anon :subid("145_1308672490.86084") :outer("119_1308672490.86084")
    .param pmc param_1463
    .param pmc param_1464
.annotate 'line', 980
    .const 'Sub' $P1472 = "146_1308672490.86084" 
    capture_lex $P1472
    .lex "self", param_1463
    .lex "$/", param_1464
.annotate 'line', 981
    $P1466 = root_new ['parrot';'ResizablePMCArray']
    set $P1465, $P1466
    .lex "@parts", $P1465
.annotate 'line', 982
    new $P112, "Undef"
    set $P1467, $P112
    .lex "$lastlit", $P1467
.annotate 'line', 998
    new $P113, "Undef"
    set $P1468, $P113
    .lex "$past", $P1468
.annotate 'line', 980
    find_lex $P1469, "@parts"
    unless_null $P1469, vivify_599
    $P1469 = root_new ['parrot';'ResizablePMCArray']
  vivify_599:
.annotate 'line', 982
    new $P114, "String"
    assign $P114, ""
    store_lex "$lastlit", $P114
.annotate 'line', 983
    find_lex $P1470, "$/"
    unless_null $P1470, vivify_600
    $P1470 = root_new ['parrot';'Hash']
  vivify_600:
    set $P115, $P1470["quote_atom"]
    unless_null $P115, vivify_601
    new $P115, "Undef"
  vivify_601:
    defined $I100, $P115
    unless $I100, for_undef_602
    iter $P114, $P115
    new $P119, 'ExceptionHandler'
    set_label $P119, loop1480_handler
    $P119."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P119
  loop1480_test:
    unless $P114, loop1480_done
    shift $P116, $P114
  loop1480_redo:
    .const 'Sub' $P1472 = "146_1308672490.86084" 
    capture_lex $P1472
    $P1472($P116)
  loop1480_next:
    goto loop1480_test
  loop1480_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P120, exception, 'type'
    eq $P120, .CONTROL_LOOP_NEXT, loop1480_next
    eq $P120, .CONTROL_LOOP_REDO, loop1480_redo
  loop1480_done:
    pop_eh 
  for_undef_602:
.annotate 'line', 997
    find_lex $P114, "$lastlit"
    unless_null $P114, vivify_615
    new $P114, "Undef"
  vivify_615:
    set $S100, $P114
    isgt $I100, $S100, ""
    unless $I100, if_1481_end
    find_lex $P1482, "@parts"
    unless_null $P1482, vivify_616
    $P1482 = root_new ['parrot';'ResizablePMCArray']
  vivify_616:
    find_lex $P115, "$lastlit"
    unless_null $P115, vivify_617
    new $P115, "Undef"
  vivify_617:
    $P1482."push"($P115)
  if_1481_end:
.annotate 'line', 998
    find_lex $P1484, "@parts"
    unless_null $P1484, vivify_618
    $P1484 = root_new ['parrot';'ResizablePMCArray']
  vivify_618:
    if $P1484, if_1483
    new $P116, "String"
    assign $P116, ""
    set $P114, $P116
    goto if_1483_end
  if_1483:
    find_lex $P1485, "@parts"
    unless_null $P1485, vivify_619
    $P1485 = root_new ['parrot';'ResizablePMCArray']
  vivify_619:
    $P115 = $P1485."shift"()
    set $P114, $P115
  if_1483_end:
    store_lex "$past", $P114
.annotate 'line', 999
    new $P114, 'ExceptionHandler'
    set_label $P114, loop1488_handler
    $P114."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P114
  loop1488_test:
    find_lex $P1486, "@parts"
    unless_null $P1486, vivify_620
    $P1486 = root_new ['parrot';'ResizablePMCArray']
  vivify_620:
    unless $P1486, loop1488_done
  loop1488_redo:
.annotate 'line', 1000
    get_hll_global $P114, "GLOBAL"
    nqp_get_package_through_who $P115, $P114, "PAST"
    get_who $P116, $P115
    set $P117, $P116["Op"]
    find_lex $P118, "$past"
    unless_null $P118, vivify_621
    new $P118, "Undef"
  vivify_621:
    find_lex $P1487, "@parts"
    unless_null $P1487, vivify_622
    $P1487 = root_new ['parrot';'ResizablePMCArray']
  vivify_622:
    $P119 = $P1487."shift"()
    $P120 = $P117."new"($P118, $P119, "concat" :named("pirop"))
    store_lex "$past", $P120
  loop1488_next:
.annotate 'line', 999
    goto loop1488_test
  loop1488_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P115, exception, 'type'
    eq $P115, .CONTROL_LOOP_NEXT, loop1488_next
    eq $P115, .CONTROL_LOOP_REDO, loop1488_redo
  loop1488_done:
    pop_eh 
.annotate 'line', 1002
    find_lex $P114, "$/"
    find_lex $P115, "$past"
    unless_null $P115, vivify_623
    new $P115, "Undef"
  vivify_623:
    $P116 = $P114."!make"($P115)
.annotate 'line', 980
    .return ($P116)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1471"  :anon :subid("146_1308672490.86084") :outer("145_1308672490.86084")
    .param pmc param_1474
.annotate 'line', 984
    new $P117, "Undef"
    set $P1473, $P117
    .lex "$ast", $P1473
    .lex "$_", param_1474
    find_lex $P118, "$_"
    unless_null $P118, vivify_603
    new $P118, "Undef"
  vivify_603:
    $P119 = $P118."ast"()
    store_lex "$ast", $P119
.annotate 'line', 985
    get_hll_global $P119, "GLOBAL"
    nqp_get_package_through_who $P120, $P119, "PAST"
    get_who $P121, $P120
    set $P122, $P121["Node"]
    find_lex $P123, "$ast"
    unless_null $P123, vivify_604
    new $P123, "Undef"
  vivify_604:
    $P124 = $P122."ACCEPTS"($P123)
    isfalse $I101, $P124
    if $I101, if_1475
.annotate 'line', 988
    find_lex $P126, "$ast"
    unless_null $P126, vivify_605
    new $P126, "Undef"
  vivify_605:
    get_hll_global $P128, "GLOBAL"
    nqp_get_package_through_who $P129, $P128, "PAST"
    get_who $P130, $P129
    set $P131, $P130["Val"]
    $P132 = $P126."isa"($P131)
    if $P132, if_1476
.annotate 'line', 992
    find_lex $P133, "$lastlit"
    unless_null $P133, vivify_606
    new $P133, "Undef"
  vivify_606:
    set $S100, $P133
    isgt $I102, $S100, ""
    unless $I102, if_1477_end
    find_lex $P1478, "@parts"
    unless_null $P1478, vivify_607
    $P1478 = root_new ['parrot';'ResizablePMCArray']
  vivify_607:
    find_lex $P134, "$lastlit"
    unless_null $P134, vivify_608
    new $P134, "Undef"
  vivify_608:
    $P1478."push"($P134)
  if_1477_end:
.annotate 'line', 993
    find_lex $P1479, "@parts"
    unless_null $P1479, vivify_609
    $P1479 = root_new ['parrot';'ResizablePMCArray']
  vivify_609:
    find_lex $P133, "$ast"
    unless_null $P133, vivify_610
    new $P133, "Undef"
  vivify_610:
    $P1479."push"($P133)
.annotate 'line', 994
    new $P133, "String"
    assign $P133, ""
    store_lex "$lastlit", $P133
.annotate 'line', 991
    set $P125, $P133
.annotate 'line', 988
    goto if_1476_end
  if_1476:
.annotate 'line', 989
    find_lex $P133, "$lastlit"
    unless_null $P133, vivify_611
    new $P133, "Undef"
  vivify_611:
    find_lex $P134, "$ast"
    unless_null $P134, vivify_612
    new $P134, "Undef"
  vivify_612:
    $S100 = $P134."value"()
    concat $P135, $P133, $S100
    store_lex "$lastlit", $P135
.annotate 'line', 988
    set $P125, $P135
  if_1476_end:
    set $P118, $P125
.annotate 'line', 985
    goto if_1475_end
  if_1475:
.annotate 'line', 986
    find_lex $P125, "$lastlit"
    unless_null $P125, vivify_613
    new $P125, "Undef"
  vivify_613:
    find_lex $P126, "$ast"
    unless_null $P126, vivify_614
    new $P126, "Undef"
  vivify_614:
    concat $P127, $P125, $P126
    store_lex "$lastlit", $P127
.annotate 'line', 985
    set $P118, $P127
  if_1475_end:
.annotate 'line', 983
    .return ($P118)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_atom" :anon :subid("147_1308672490.86084") :outer("119_1308672490.86084")
    .param pmc param_1490
    .param pmc param_1491
.annotate 'line', 1005
    .lex "self", param_1490
    .lex "$/", param_1491
.annotate 'line', 1006
    find_lex $P112, "$/"
    find_lex $P1493, "$/"
    unless_null $P1493, vivify_624
    $P1493 = root_new ['parrot';'Hash']
  vivify_624:
    set $P114, $P1493["quote_escape"]
    unless_null $P114, vivify_625
    new $P114, "Undef"
  vivify_625:
    if $P114, if_1492
    find_lex $P117, "$/"
    unless_null $P117, vivify_626
    new $P117, "Undef"
  vivify_626:
    set $S100, $P117
    new $P113, 'String'
    set $P113, $S100
    goto if_1492_end
  if_1492:
    find_lex $P1494, "$/"
    unless_null $P1494, vivify_627
    $P1494 = root_new ['parrot';'Hash']
  vivify_627:
    set $P115, $P1494["quote_escape"]
    unless_null $P115, vivify_628
    new $P115, "Undef"
  vivify_628:
    $P116 = $P115."ast"()
    set $P113, $P116
  if_1492_end:
    $P118 = $P112."!make"($P113)
.annotate 'line', 1005
    .return ($P118)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<backslash>" :anon :subid("148_1308672490.86084") :outer("119_1308672490.86084")
    .param pmc param_1496
    .param pmc param_1497
.annotate 'line', 1009
    .lex "self", param_1496
    .lex "$/", param_1497
    find_lex $P112, "$/"
    $P113 = $P112."!make"("\\")
    .return ($P113)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<stopper>" :anon :subid("149_1308672490.86084") :outer("119_1308672490.86084")
    .param pmc param_1499
    .param pmc param_1500
.annotate 'line', 1010
    .lex "self", param_1499
    .lex "$/", param_1500
    find_lex $P112, "$/"
    find_lex $P1501, "$/"
    unless_null $P1501, vivify_629
    $P1501 = root_new ['parrot';'Hash']
  vivify_629:
    set $P113, $P1501["stopper"]
    unless_null $P113, vivify_630
    new $P113, "Undef"
  vivify_630:
    set $S100, $P113
    $P114 = $P112."!make"($S100)
    .return ($P114)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<bs>" :anon :subid("150_1308672490.86084") :outer("119_1308672490.86084")
    .param pmc param_1503
    .param pmc param_1504
.annotate 'line', 1012
    .lex "self", param_1503
    .lex "$/", param_1504
    find_lex $P112, "$/"
    $P113 = $P112."!make"("\b")
    .return ($P113)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<nl>" :anon :subid("151_1308672490.86084") :outer("119_1308672490.86084")
    .param pmc param_1506
    .param pmc param_1507
.annotate 'line', 1013
    .lex "self", param_1506
    .lex "$/", param_1507
    find_lex $P112, "$/"
    $P113 = $P112."!make"("\n")
    .return ($P113)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<cr>" :anon :subid("152_1308672490.86084") :outer("119_1308672490.86084")
    .param pmc param_1509
    .param pmc param_1510
.annotate 'line', 1014
    .lex "self", param_1509
    .lex "$/", param_1510
    find_lex $P112, "$/"
    $P113 = $P112."!make"("\r")
    .return ($P113)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<tab>" :anon :subid("153_1308672490.86084") :outer("119_1308672490.86084")
    .param pmc param_1512
    .param pmc param_1513
.annotate 'line', 1015
    .lex "self", param_1512
    .lex "$/", param_1513
    find_lex $P112, "$/"
    $P113 = $P112."!make"("\t")
    .return ($P113)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<ff>" :anon :subid("154_1308672490.86084") :outer("119_1308672490.86084")
    .param pmc param_1515
    .param pmc param_1516
.annotate 'line', 1016
    .lex "self", param_1515
    .lex "$/", param_1516
    find_lex $P112, "$/"
    $P113 = $P112."!make"("\f")
    .return ($P113)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<esc>" :anon :subid("155_1308672490.86084") :outer("119_1308672490.86084")
    .param pmc param_1518
    .param pmc param_1519
.annotate 'line', 1017
    .lex "self", param_1518
    .lex "$/", param_1519
    find_lex $P112, "$/"
    $P113 = $P112."!make"("\e")
    .return ($P113)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<hex>" :anon :subid("156_1308672490.86084") :outer("119_1308672490.86084")
    .param pmc param_1521
    .param pmc param_1522
.annotate 'line', 1019
    .lex "self", param_1521
    .lex "$/", param_1522
.annotate 'line', 1020
    find_lex $P112, "$/"
    find_lex $P1524, "$/"
    unless_null $P1524, vivify_631
    $P1524 = root_new ['parrot';'Hash']
  vivify_631:
    set $P114, $P1524["hexint"]
    unless_null $P114, vivify_632
    new $P114, "Undef"
  vivify_632:
    if $P114, if_1523
    find_lex $P1526, "$/"
    unless_null $P1526, vivify_633
    $P1526 = root_new ['parrot';'Hash']
  vivify_633:
    set $P1527, $P1526["hexints"]
    unless_null $P1527, vivify_634
    $P1527 = root_new ['parrot';'Hash']
  vivify_634:
    set $P116, $P1527["hexint"]
    unless_null $P116, vivify_635
    new $P116, "Undef"
  vivify_635:
    set $P113, $P116
    goto if_1523_end
  if_1523:
    find_lex $P1525, "$/"
    unless_null $P1525, vivify_636
    $P1525 = root_new ['parrot';'Hash']
  vivify_636:
    set $P115, $P1525["hexint"]
    unless_null $P115, vivify_637
    new $P115, "Undef"
  vivify_637:
    set $P113, $P115
  if_1523_end:
    $P117 = "ints_to_string"($P113)
    $P118 = $P112."!make"($P117)
.annotate 'line', 1019
    .return ($P118)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<oct>" :anon :subid("157_1308672490.86084") :outer("119_1308672490.86084")
    .param pmc param_1529
    .param pmc param_1530
.annotate 'line', 1023
    .lex "self", param_1529
    .lex "$/", param_1530
.annotate 'line', 1024
    find_lex $P112, "$/"
    find_lex $P1532, "$/"
    unless_null $P1532, vivify_638
    $P1532 = root_new ['parrot';'Hash']
  vivify_638:
    set $P114, $P1532["octint"]
    unless_null $P114, vivify_639
    new $P114, "Undef"
  vivify_639:
    if $P114, if_1531
    find_lex $P1534, "$/"
    unless_null $P1534, vivify_640
    $P1534 = root_new ['parrot';'Hash']
  vivify_640:
    set $P1535, $P1534["octints"]
    unless_null $P1535, vivify_641
    $P1535 = root_new ['parrot';'Hash']
  vivify_641:
    set $P116, $P1535["octint"]
    unless_null $P116, vivify_642
    new $P116, "Undef"
  vivify_642:
    set $P113, $P116
    goto if_1531_end
  if_1531:
    find_lex $P1533, "$/"
    unless_null $P1533, vivify_643
    $P1533 = root_new ['parrot';'Hash']
  vivify_643:
    set $P115, $P1533["octint"]
    unless_null $P115, vivify_644
    new $P115, "Undef"
  vivify_644:
    set $P113, $P115
  if_1531_end:
    $P117 = "ints_to_string"($P113)
    $P118 = $P112."!make"($P117)
.annotate 'line', 1023
    .return ($P118)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<chr>" :anon :subid("158_1308672490.86084") :outer("119_1308672490.86084")
    .param pmc param_1537
    .param pmc param_1538
.annotate 'line', 1027
    .lex "self", param_1537
    .lex "$/", param_1538
.annotate 'line', 1028
    find_lex $P112, "$/"
    find_lex $P1539, "$/"
    unless_null $P1539, vivify_645
    $P1539 = root_new ['parrot';'Hash']
  vivify_645:
    set $P113, $P1539["charspec"]
    unless_null $P113, vivify_646
    new $P113, "Undef"
  vivify_646:
    $P114 = $P113."ast"()
    $P115 = $P112."!make"($P114)
.annotate 'line', 1027
    .return ($P115)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<0>" :anon :subid("159_1308672490.86084") :outer("119_1308672490.86084")
    .param pmc param_1541
    .param pmc param_1542
.annotate 'line', 1031
    .lex "self", param_1541
    .lex "$/", param_1542
.annotate 'line', 1032
    find_lex $P112, "$/"
    $P113 = $P112."!make"(unicode:"\x{0}")
.annotate 'line', 1031
    .return ($P113)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "quote_escape:sym<misc>" :anon :subid("160_1308672490.86084") :outer("119_1308672490.86084")
    .param pmc param_1544
    .param pmc param_1545
.annotate 'line', 1035
    .lex "self", param_1544
    .lex "$/", param_1545
.annotate 'line', 1036
    find_lex $P112, "$/"
    find_lex $P1547, "$/"
    unless_null $P1547, vivify_647
    $P1547 = root_new ['parrot';'Hash']
  vivify_647:
    set $P114, $P1547["textq"]
    unless_null $P114, vivify_648
    new $P114, "Undef"
  vivify_648:
    if $P114, if_1546
    find_lex $P1549, "$/"
    unless_null $P1549, vivify_649
    $P1549 = root_new ['parrot';'Hash']
  vivify_649:
    set $P118, $P1549["textqq"]
    unless_null $P118, vivify_650
    new $P118, "Undef"
  vivify_650:
    $P119 = $P118."Str"()
    set $P113, $P119
    goto if_1546_end
  if_1546:
    new $P115, "String"
    assign $P115, "\\"
    find_lex $P1548, "$/"
    unless_null $P1548, vivify_651
    $P1548 = root_new ['parrot';'Hash']
  vivify_651:
    set $P116, $P1548["textq"]
    unless_null $P116, vivify_652
    new $P116, "Undef"
  vivify_652:
    $S100 = $P116."Str"()
    concat $P117, $P115, $S100
    set $P113, $P117
  if_1546_end:
    $P120 = $P112."!make"($P113)
.annotate 'line', 1035
    .return ($P120)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "charname" :anon :subid("161_1308672490.86084") :outer("119_1308672490.86084")
    .param pmc param_1551
    .param pmc param_1552
.annotate 'line', 1039
    .lex "self", param_1551
    .lex "$/", param_1552
.annotate 'line', 1040
    new $P112, "Undef"
    set $P1553, $P112
    .lex "$codepoint", $P1553
.annotate 'line', 1041
    find_lex $P1555, "$/"
    unless_null $P1555, vivify_653
    $P1555 = root_new ['parrot';'Hash']
  vivify_653:
    set $P114, $P1555["integer"]
    unless_null $P114, vivify_654
    new $P114, "Undef"
  vivify_654:
    if $P114, if_1554
.annotate 'line', 1042
    find_lex $P117, "$/"
    unless_null $P117, vivify_655
    new $P117, "Undef"
  vivify_655:
    set $S100, $P117
    find_codepoint $I100, $S100
    new $P113, 'Integer'
    set $P113, $I100
.annotate 'line', 1041
    goto if_1554_end
  if_1554:
    find_lex $P1556, "$/"
    unless_null $P1556, vivify_656
    $P1556 = root_new ['parrot';'Hash']
  vivify_656:
    set $P115, $P1556["integer"]
    unless_null $P115, vivify_657
    new $P115, "Undef"
  vivify_657:
    $P116 = $P115."ast"()
    set $P113, $P116
  if_1554_end:
    store_lex "$codepoint", $P113
.annotate 'line', 1043
    find_lex $P113, "$codepoint"
    unless_null $P113, vivify_658
    new $P113, "Undef"
  vivify_658:
    set $N100, $P113
    islt $I100, $N100, 0.0
    unless $I100, if_1557_end
    find_lex $P114, "$/"
    unless_null $P114, vivify_659
    new $P114, "Undef"
  vivify_659:
    $P115 = $P114."CURSOR"()
    new $P116, 'String'
    set $P116, "Unrecognized character name "
    find_lex $P117, "$/"
    unless_null $P117, vivify_660
    new $P117, "Undef"
  vivify_660:
    concat $P118, $P116, $P117
    $P115."panic"($P118)
  if_1557_end:
.annotate 'line', 1044
    find_lex $P113, "$/"
    find_lex $P114, "$codepoint"
    unless_null $P114, vivify_661
    new $P114, "Undef"
  vivify_661:
    set $I100, $P114
    chr $S100, $I100
    $P115 = $P113."!make"($S100)
.annotate 'line', 1039
    .return ($P115)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.include "except_types.pasm"
.sub "charnames" :anon :subid("162_1308672490.86084") :outer("119_1308672490.86084")
    .param pmc param_1559
    .param pmc param_1560
.annotate 'line', 1047
    .const 'Sub' $P1564 = "163_1308672490.86084" 
    capture_lex $P1564
    .lex "self", param_1559
    .lex "$/", param_1560
.annotate 'line', 1048
    new $P112, "Undef"
    set $P1561, $P112
    .lex "$str", $P1561
    new $P113, "String"
    assign $P113, ""
    store_lex "$str", $P113
.annotate 'line', 1049
    find_lex $P1562, "$/"
    unless_null $P1562, vivify_662
    $P1562 = root_new ['parrot';'Hash']
  vivify_662:
    set $P114, $P1562["charname"]
    unless_null $P114, vivify_663
    new $P114, "Undef"
  vivify_663:
    defined $I100, $P114
    unless $I100, for_undef_664
    iter $P113, $P114
    new $P116, 'ExceptionHandler'
    set_label $P116, loop1566_handler
    $P116."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P116
  loop1566_test:
    unless $P113, loop1566_done
    shift $P115, $P113
  loop1566_redo:
    .const 'Sub' $P1564 = "163_1308672490.86084" 
    capture_lex $P1564
    $P1564($P115)
  loop1566_next:
    goto loop1566_test
  loop1566_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P117, exception, 'type'
    eq $P117, .CONTROL_LOOP_NEXT, loop1566_next
    eq $P117, .CONTROL_LOOP_REDO, loop1566_redo
  loop1566_done:
    pop_eh 
  for_undef_664:
.annotate 'line', 1050
    find_lex $P113, "$/"
    find_lex $P114, "$str"
    unless_null $P114, vivify_667
    new $P114, "Undef"
  vivify_667:
    $P115 = $P113."!make"($P114)
.annotate 'line', 1047
    .return ($P115)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "_block1563"  :anon :subid("163_1308672490.86084") :outer("162_1308672490.86084")
    .param pmc param_1565
.annotate 'line', 1049
    .lex "$_", param_1565
    find_lex $P116, "$str"
    unless_null $P116, vivify_665
    new $P116, "Undef"
  vivify_665:
    find_lex $P117, "$_"
    unless_null $P117, vivify_666
    new $P117, "Undef"
  vivify_666:
    $S100 = $P117."ast"()
    concat $P118, $P116, $S100
    store_lex "$str", $P118
    .return ($P118)
.end


.HLL "nqp"

.namespace ["HLL";"Actions"]
.sub "charspec" :anon :subid("164_1308672490.86084") :outer("119_1308672490.86084")
    .param pmc param_1568
    .param pmc param_1569
.annotate 'line', 1053
    .lex "self", param_1568
    .lex "$/", param_1569
.annotate 'line', 1054
    find_lex $P112, "$/"
    find_lex $P1571, "$/"
    unless_null $P1571, vivify_668
    $P1571 = root_new ['parrot';'Hash']
  vivify_668:
    set $P114, $P1571["charnames"]
    unless_null $P114, vivify_669
    new $P114, "Undef"
  vivify_669:
    if $P114, if_1570
    find_lex $P117, "$/"
    unless_null $P117, vivify_670
    new $P117, "Undef"
  vivify_670:
    $I100 = "string_to_int"($P117, 10)
    chr $S100, $I100
    new $P113, 'String'
    set $P113, $S100
    goto if_1570_end
  if_1570:
    find_lex $P1572, "$/"
    unless_null $P1572, vivify_671
    $P1572 = root_new ['parrot';'Hash']
  vivify_671:
    set $P115, $P1572["charnames"]
    unless_null $P115, vivify_672
    new $P115, "Undef"
  vivify_672:
    $P116 = $P115."ast"()
    set $P113, $P116
  if_1570_end:
    $P118 = $P112."!make"($P113)
.annotate 'line', 1053
    .return ($P118)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1574"  :subid("165_1308672490.86084") :outer("10_1308672490.86084")
.annotate 'line', 1067
    .const 'Sub' $P2131 = "238_1308672490.86084" 
    capture_lex $P2131
    .const 'Sub' $P2107 = "236_1308672490.86084" 
    capture_lex $P2107
    .const 'Sub' $P2073 = "233_1308672490.86084" 
    capture_lex $P2073
    .const 'Sub' $P2060 = "231_1308672490.86084" 
    capture_lex $P2060
    .const 'Sub' $P2048 = "228_1308672490.86084" 
    capture_lex $P2048
    .const 'Sub' $P2037 = "227_1308672490.86084" 
    capture_lex $P2037
    .const 'Sub' $P2033 = "226_1308672490.86084" 
    capture_lex $P2033
    .const 'Sub' $P2021 = "224_1308672490.86084" 
    capture_lex $P2021
    .const 'Sub' $P2016 = "223_1308672490.86084" 
    capture_lex $P2016
    .const 'Sub' $P2011 = "222_1308672490.86084" 
    capture_lex $P2011
    .const 'Sub' $P2009 = "221_1308672490.86084" 
    capture_lex $P2009
    .const 'Sub' $P2004 = "220_1308672490.86084" 
    capture_lex $P2004
    .const 'Sub' $P2000 = "219_1308672490.86084" 
    capture_lex $P2000
    .const 'Sub' $P1970 = "216_1308672490.86084" 
    capture_lex $P1970
    .const 'Sub' $P1947 = "214_1308672490.86084" 
    capture_lex $P1947
    .const 'Sub' $P1895 = "210_1308672490.86084" 
    capture_lex $P1895
    .const 'Sub' $P1870 = "207_1308672490.86084" 
    capture_lex $P1870
    .const 'Sub' $P1843 = "205_1308672490.86084" 
    capture_lex $P1843
    .const 'Sub' $P1835 = "204_1308672490.86084" 
    capture_lex $P1835
    .const 'Sub' $P1831 = "203_1308672490.86084" 
    capture_lex $P1831
    .const 'Sub' $P1827 = "202_1308672490.86084" 
    capture_lex $P1827
    .const 'Sub' $P1823 = "201_1308672490.86084" 
    capture_lex $P1823
    .const 'Sub' $P1817 = "200_1308672490.86084" 
    capture_lex $P1817
    .const 'Sub' $P1811 = "199_1308672490.86084" 
    capture_lex $P1811
    .const 'Sub' $P1805 = "198_1308672490.86084" 
    capture_lex $P1805
    .const 'Sub' $P1797 = "197_1308672490.86084" 
    capture_lex $P1797
    .const 'Sub' $P1793 = "196_1308672490.86084" 
    capture_lex $P1793
    .const 'Sub' $P1790 = "195_1308672490.86084" 
    capture_lex $P1790
    .const 'Sub' $P1772 = "193_1308672490.86084" 
    capture_lex $P1772
    .const 'Sub' $P1710 = "186_1308672490.86084" 
    capture_lex $P1710
    .const 'Sub' $P1706 = "185_1308672490.86084" 
    capture_lex $P1706
    .const 'Sub' $P1676 = "180_1308672490.86084" 
    capture_lex $P1676
    .const 'Sub' $P1661 = "178_1308672490.86084" 
    capture_lex $P1661
    .const 'Sub' $P1658 = "177_1308672490.86084" 
    capture_lex $P1658
    .const 'Sub' $P1655 = "176_1308672490.86084" 
    capture_lex $P1655
    .const 'Sub' $P1651 = "175_1308672490.86084" 
    capture_lex $P1651
    .const 'Sub' $P1644 = "174_1308672490.86084" 
    capture_lex $P1644
    .const 'Sub' $P1602 = "171_1308672490.86084" 
    capture_lex $P1602
    .const 'Sub' $P1595 = "169_1308672490.86084" 
    capture_lex $P1595
    .const 'Sub' $P1592 = "168_1308672490.86084" 
    capture_lex $P1592
    .const 'Sub' $P1585 = "167_1308672490.86084" 
    capture_lex $P1585
    .const 'Sub' $P1577 = "166_1308672490.86084" 
    capture_lex $P1577
.annotate 'line', 1122
    .const 'Sub' $P1577 = "166_1308672490.86084" 
    newclosure $P1581, $P1577
    set $P1576, $P1581
    .lex "value_type", $P1576
.annotate 'line', 1067
    .lex "$?PACKAGE", $P1582
    .lex "$?CLASS", $P1583
.annotate 'line', 1090
    .const 'Sub' $P1585 = "167_1308672490.86084" 
    capture_lex $P1585
    $P1585()
.annotate 'line', 1067
    find_lex $P102, "$?PACKAGE"
    get_who $P103, $P102
    set $P104, $P103["$interactive_ctx"]
    unless_null $P104, vivify_679
    new $P104, "Undef"
  vivify_679:
    find_lex $P102, "$?PACKAGE"
    get_who $P103, $P102
    set $P1590, $P103["%interactive_pad"]
    unless_null $P1590, vivify_680
    $P1590 = root_new ['parrot';'Hash']
  vivify_680:
    find_lex $P102, "$?PACKAGE"
    get_who $P103, $P102
    set $P1591, $P103["%parrot_config"]
    unless_null $P1591, vivify_681
    $P1591 = root_new ['parrot';'Hash']
  vivify_681:
    find_lex $P102, "value_type"
.annotate 'line', 1720
    .const 'Sub' $P2131 = "238_1308672490.86084" 
    newclosure $P2136, $P2131
.annotate 'line', 1067
    .return ($P2136)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "value_type"  :subid("166_1308672490.86084") :outer("165_1308672490.86084")
    .param pmc param_1578
.annotate 'line', 1122
    .lex "$value", param_1578
.annotate 'line', 1123
    find_lex $P102, "$value"
    unless_null $P102, vivify_673
    new $P102, "Undef"
  vivify_673:
    isa $I100, $P102, "NameSpace"
    if $I100, if_1579
.annotate 'line', 1125
    find_lex $P105, "$value"
    unless_null $P105, vivify_674
    new $P105, "Undef"
  vivify_674:
    isa $I101, $P105, "Sub"
    if $I101, if_1580
    new $P107, "String"
    assign $P107, "var"
    set $P104, $P107
    goto if_1580_end
  if_1580:
    new $P106, "String"
    assign $P106, "sub"
    set $P104, $P106
  if_1580_end:
    set $P101, $P104
.annotate 'line', 1123
    goto if_1579_end
  if_1579:
    new $P103, "String"
    assign $P103, "namespace"
    set $P101, $P103
  if_1579_end:
.annotate 'line', 1122
    .return ($P101)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1584"  :anon :subid("167_1308672490.86084") :outer("165_1308672490.86084")
.annotate 'line', 1095
    $P1587 = root_new ['parrot';'Hash']
    set $P1586, $P1587
    .lex "%pad_contents", $P1586
.annotate 'line', 1092
    getinterp $P102
    set $P103, $P102["context"]
    unless_null $P103, vivify_675
    new $P103, "Undef"
  vivify_675:
    find_lex $P104, "$?PACKAGE"
    get_who $P105, $P104
    set $P105["$interactive_ctx"], $P103
.annotate 'line', 1090
    find_lex $P1588, "%pad_contents"
    unless_null $P1588, vivify_676
    $P1588 = root_new ['parrot';'Hash']
  vivify_676:
.annotate 'line', 1097
    find_lex $P102, "$?PACKAGE"
    get_who $P103, $P102
    set $P104, $P103["$interactive_ctx"]
    unless_null $P104, vivify_677
    new $P104, "Undef"
  vivify_677:
    getattribute $P105, $P104, "lex_pad"
    find_lex $P1589, "%pad_contents"
    unless_null $P1589, vivify_678
    $P1589 = root_new ['parrot';'Hash']
  vivify_678:
    copy $P105, $P1589
.annotate 'line', 1096
    find_lex $P106, "$?PACKAGE"
    get_who $P107, $P106
    set $P107["%interactive_pad"], $P105
.annotate 'line', 1090
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "new" :anon :subid("168_1308672490.86084") :outer("165_1308672490.86084")
    .param pmc param_1593
.annotate 'line', 1102
    .lex "self", param_1593
.annotate 'line', 1103
    new $P102, "Undef"
    set $P1594, $P102
    .lex "$obj", $P1594
    find_lex $P103, "self"
    repr_instance_of $P104, $P103
    store_lex "$obj", $P104
.annotate 'line', 1104
    find_lex $P103, "$obj"
    unless_null $P103, vivify_682
    new $P103, "Undef"
  vivify_682:
    $P103."BUILD"()
.annotate 'line', 1102
    find_lex $P103, "$obj"
    unless_null $P103, vivify_683
    new $P103, "Undef"
  vivify_683:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "BUILD" :anon :subid("169_1308672490.86084") :outer("165_1308672490.86084")
    .param pmc param_1596
.annotate 'line', 1108
    .const 'Sub' $P1599 = "170_1308672490.86084" 
    capture_lex $P1599
    .lex "self", param_1596
.annotate 'line', 1110
    split $P102, " ", "parse past post pir evalpmc"
    find_lex $P103, "self"
    find_lex $P104, "$?CLASS"
    setattribute $P103, $P104, "@!stages", $P102
.annotate 'line', 1113
    split $P102, " ", "e=s help|h target=s dumper=s trace|t=s encoding=s output|o=s combine version|v show-config stagestats ll-backtrace"
    find_lex $P103, "self"
    find_lex $P104, "$?CLASS"
    setattribute $P103, $P104, "@!cmdoptions", $P102
.annotate 'line', 1114
    new $P102, "String"
    assign $P102, "This compiler is based on HLL::Compler.\n\nOptions:\n"
    find_lex $P103, "self"
    find_lex $P104, "$?CLASS"
    setattribute $P103, $P104, "$!usage", $P102
.annotate 'line', 1115
    find_lex $P103, "self"
    find_lex $P104, "$?CLASS"
    getattribute $P1597, $P103, $P104, "@!cmdoptions"
    unless_null $P1597, vivify_684
    $P1597 = root_new ['parrot';'ResizablePMCArray']
  vivify_684:
    defined $I100, $P1597
    unless $I100, for_undef_685
    iter $P102, $P1597
    new $P107, 'ExceptionHandler'
    set_label $P107, loop1601_handler
    $P107."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P107
  loop1601_test:
    unless $P102, loop1601_done
    shift $P106, $P102
  loop1601_redo:
    .const 'Sub' $P1599 = "170_1308672490.86084" 
    capture_lex $P1599
    $P1599($P106)
  loop1601_next:
    goto loop1601_test
  loop1601_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P108, exception, 'type'
    eq $P108, .CONTROL_LOOP_NEXT, loop1601_next
    eq $P108, .CONTROL_LOOP_REDO, loop1601_redo
  loop1601_done:
    pop_eh 
  for_undef_685:
.annotate 'line', 1118
    getinterp $P102
    set $P103, $P102[.IGLOBALS_CONFIG_HASH]
    unless_null $P103, vivify_688
    new $P103, "Undef"
  vivify_688:
    find_lex $P104, "$?PACKAGE"
    get_who $P106, $P104
    set $P106["%parrot_config"], $P103
.annotate 'line', 1119
    new $P102, "Hash"
    find_lex $P103, "self"
    find_lex $P104, "$?CLASS"
    setattribute $P103, $P104, "%!config", $P102
.annotate 'line', 1108
    .return ($P102)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1598"  :anon :subid("170_1308672490.86084") :outer("169_1308672490.86084")
    .param pmc param_1600
.annotate 'line', 1115
    .lex "$_", param_1600
.annotate 'line', 1116
    find_lex $P107, "self"
    find_lex $P108, "$?CLASS"
    getattribute $P109, $P107, $P108, "$!usage"
    unless_null $P109, vivify_686
    new $P109, "Undef"
  vivify_686:
    new $P110, 'String'
    set $P110, "    "
    find_lex $P111, "$_"
    unless_null $P111, vivify_687
    new $P111, "Undef"
  vivify_687:
    concat $P112, $P110, $P111
    concat $P113, $P112, "\n"
    concat $P114, $P109, $P113
    find_lex $P115, "self"
    find_lex $P116, "$?CLASS"
    setattribute $P115, $P116, "$!usage", $P114
.annotate 'line', 1115
    .return ($P114)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "get_exports" :anon :subid("171_1308672490.86084") :outer("165_1308672490.86084")
    .param pmc param_1603
    .param pmc param_1604
    .param pmc param_1606 :slurpy
    .param pmc param_1605 :optional :named("tagset")
    .param int has_param_1605 :opt_flag
.annotate 'line', 1128
    .const 'Sub' $P1637 = "173_1308672490.86084" 
    capture_lex $P1637
    .const 'Sub' $P1628 = "172_1308672490.86084" 
    capture_lex $P1628
    .lex "self", param_1603
    .lex "$module", param_1604
    if has_param_1605, optparam_689
    new $P102, "Undef"
    set param_1605, $P102
  optparam_689:
    .lex "$tagset", param_1605
    .lex "@symbols", param_1606
.annotate 'line', 1135
    $P1608 = root_new ['parrot';'Hash']
    set $P1607, $P1608
    .lex "%exports", $P1607
.annotate 'line', 1136
    $P1610 = root_new ['parrot';'Hash']
    set $P1609, $P1610
    .lex "%source", $P1609
.annotate 'line', 1130
    find_lex $P103, "$module"
    unless_null $P103, vivify_690
    new $P103, "Undef"
  vivify_690:
    does $I100, $P103, "hash"
    new $P104, 'Integer'
    set $P104, $I100
    isfalse $I101, $P104
    unless $I101, if_1611_end
.annotate 'line', 1131
    find_lex $P106, "self"
    find_lex $P107, "$module"
    unless_null $P107, vivify_691
    new $P107, "Undef"
  vivify_691:
    $P108 = $P106."get_module"($P107)
    store_lex "$module", $P108
  if_1611_end:
.annotate 'line', 1134
    find_lex $P103, "$tagset"
    unless_null $P103, vivify_692
    new $P103, "Undef"
  vivify_692:
    set $P1612, $P103
    defined $I1614, $P1612
    if $I1614, default_1613
    find_lex $P1616, "@symbols"
    unless_null $P1616, vivify_693
    $P1616 = root_new ['parrot';'ResizablePMCArray']
  vivify_693:
    if $P1616, if_1615
    new $P107, "String"
    assign $P107, "DEFAULT"
    set $P104, $P107
    goto if_1615_end
  if_1615:
    new $P106, "String"
    assign $P106, "ALL"
    set $P104, $P106
  if_1615_end:
    set $P1612, $P104
  default_1613:
    store_lex "$tagset", $P1612
.annotate 'line', 1128
    find_lex $P1617, "%exports"
    unless_null $P1617, vivify_694
    $P1617 = root_new ['parrot';'Hash']
  vivify_694:
.annotate 'line', 1136
    find_lex $P103, "$tagset"
    unless_null $P103, vivify_695
    new $P103, "Undef"
  vivify_695:
    set $S100, $P103
    find_lex $P1618, "$module"
    unless_null $P1618, vivify_696
    $P1618 = root_new ['parrot';'Hash']
  vivify_696:
    set $P1619, $P1618["EXPORT"]
    unless_null $P1619, vivify_697
    $P1619 = root_new ['parrot';'Hash']
  vivify_697:
    set $P104, $P1619[$S100]
    unless_null $P104, vivify_698
    new $P104, "Undef"
  vivify_698:
    store_lex "%source", $P104
.annotate 'line', 1137
    find_lex $P1621, "%source"
    unless_null $P1621, vivify_699
    $P1621 = root_new ['parrot';'Hash']
  vivify_699:
    defined $I100, $P1621
    new $P103, 'Integer'
    set $P103, $I100
    isfalse $I101, $P103
    unless $I101, if_1620_end
.annotate 'line', 1138
    find_lex $P106, "$tagset"
    unless_null $P106, vivify_700
    new $P106, "Undef"
  vivify_700:
    set $S100, $P106
    iseq $I102, $S100, "ALL"
    if $I102, if_1622
    $P1623 = root_new ['parrot';'Hash']
    set $P104, $P1623
    goto if_1622_end
  if_1622:
    find_lex $P107, "$module"
    unless_null $P107, vivify_701
    new $P107, "Undef"
  vivify_701:
    set $P104, $P107
  if_1622_end:
    store_lex "%source", $P104
  if_1620_end:
.annotate 'line', 1140
    find_lex $P1625, "@symbols"
    unless_null $P1625, vivify_702
    $P1625 = root_new ['parrot';'ResizablePMCArray']
  vivify_702:
    if $P1625, if_1624
.annotate 'line', 1147
    find_lex $P1635, "%source"
    unless_null $P1635, vivify_703
    $P1635 = root_new ['parrot';'Hash']
  vivify_703:
    defined $I100, $P1635
    unless $I100, for_undef_704
    iter $P103, $P1635
    new $P108, 'ExceptionHandler'
    set_label $P108, loop1642_handler
    $P108."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P108
  loop1642_test:
    unless $P103, loop1642_done
    shift $P104, $P103
  loop1642_redo:
    .const 'Sub' $P1637 = "173_1308672490.86084" 
    capture_lex $P1637
    $P1637($P104)
  loop1642_next:
    goto loop1642_test
  loop1642_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P109, exception, 'type'
    eq $P109, .CONTROL_LOOP_NEXT, loop1642_next
    eq $P109, .CONTROL_LOOP_REDO, loop1642_redo
  loop1642_done:
    pop_eh 
  for_undef_704:
.annotate 'line', 1146
    goto if_1624_end
  if_1624:
.annotate 'line', 1141
    find_lex $P1626, "@symbols"
    unless_null $P1626, vivify_711
    $P1626 = root_new ['parrot';'ResizablePMCArray']
  vivify_711:
    defined $I100, $P1626
    unless $I100, for_undef_712
    iter $P103, $P1626
    new $P108, 'ExceptionHandler'
    set_label $P108, loop1634_handler
    $P108."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P108
  loop1634_test:
    unless $P103, loop1634_done
    shift $P104, $P103
  loop1634_redo:
    .const 'Sub' $P1628 = "172_1308672490.86084" 
    capture_lex $P1628
    $P1628($P104)
  loop1634_next:
    goto loop1634_test
  loop1634_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P109, exception, 'type'
    eq $P109, .CONTROL_LOOP_NEXT, loop1634_next
    eq $P109, .CONTROL_LOOP_REDO, loop1634_redo
  loop1634_done:
    pop_eh 
  for_undef_712:
  if_1624_end:
.annotate 'line', 1128
    find_lex $P1643, "%exports"
    unless_null $P1643, vivify_721
    $P1643 = root_new ['parrot';'Hash']
  vivify_721:
    .return ($P1643)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1636"  :anon :subid("173_1308672490.86084") :outer("171_1308672490.86084")
    .param pmc param_1639
.annotate 'line', 1148
    new $P106, "Undef"
    set $P1638, $P106
    .lex "$value", $P1638
    .lex "$_", param_1639
    find_lex $P107, "$_"
    unless_null $P107, vivify_705
    new $P107, "Undef"
  vivify_705:
    $P108 = $P107."value"()
    store_lex "$value", $P108
.annotate 'line', 1149
    find_lex $P107, "$value"
    unless_null $P107, vivify_706
    new $P107, "Undef"
  vivify_706:
    find_lex $P108, "$_"
    unless_null $P108, vivify_707
    new $P108, "Undef"
  vivify_707:
    $P109 = $P108."key"()
    find_lex $P110, "$value"
    unless_null $P110, vivify_708
    new $P110, "Undef"
  vivify_708:
    $P111 = "value_type"($P110)
    find_lex $P1640, "%exports"
    unless_null $P1640, vivify_709
    $P1640 = root_new ['parrot';'Hash']
    store_lex "%exports", $P1640
  vivify_709:
    set $P1641, $P1640[$P111]
    unless_null $P1641, vivify_710
    $P1641 = root_new ['parrot';'Hash']
    set $P1640[$P111], $P1641
  vivify_710:
    set $P1641[$P109], $P107
.annotate 'line', 1147
    .return ($P107)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1627"  :anon :subid("172_1308672490.86084") :outer("171_1308672490.86084")
    .param pmc param_1630
.annotate 'line', 1142
    new $P106, "Undef"
    set $P1629, $P106
    .lex "$value", $P1629
    .lex "$_", param_1630
    find_lex $P107, "$_"
    unless_null $P107, vivify_713
    new $P107, "Undef"
  vivify_713:
    set $S100, $P107
    find_lex $P1631, "%source"
    unless_null $P1631, vivify_714
    $P1631 = root_new ['parrot';'Hash']
  vivify_714:
    set $P108, $P1631[$S100]
    unless_null $P108, vivify_715
    new $P108, "Undef"
  vivify_715:
    store_lex "$value", $P108
.annotate 'line', 1143
    find_lex $P107, "$value"
    unless_null $P107, vivify_716
    new $P107, "Undef"
  vivify_716:
    find_lex $P108, "$_"
    unless_null $P108, vivify_717
    new $P108, "Undef"
  vivify_717:
    find_lex $P109, "$value"
    unless_null $P109, vivify_718
    new $P109, "Undef"
  vivify_718:
    $P110 = "value_type"($P109)
    find_lex $P1632, "%exports"
    unless_null $P1632, vivify_719
    $P1632 = root_new ['parrot';'Hash']
    store_lex "%exports", $P1632
  vivify_719:
    set $P1633, $P1632[$P110]
    unless_null $P1633, vivify_720
    $P1633 = root_new ['parrot';'Hash']
    set $P1632[$P110], $P1633
  vivify_720:
    set $P1633[$P108], $P107
.annotate 'line', 1141
    .return ($P107)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "get_module" :anon :subid("174_1308672490.86084") :outer("165_1308672490.86084")
    .param pmc param_1645
    .param pmc param_1646
.annotate 'line', 1155
    .lex "self", param_1645
    .lex "$name", param_1646
.annotate 'line', 1156
    $P1648 = root_new ['parrot';'ResizablePMCArray']
    set $P1647, $P1648
    .lex "@name", $P1647
    find_lex $P102, "self"
    find_lex $P103, "$name"
    unless_null $P103, vivify_722
    new $P103, "Undef"
  vivify_722:
    $P104 = $P102."parse_name"($P103)
    store_lex "@name", $P104
.annotate 'line', 1157
    find_lex $P1649, "@name"
    unless_null $P1649, vivify_723
    $P1649 = root_new ['parrot';'ResizablePMCArray']
  vivify_723:
    find_lex $P102, "self"
    find_lex $P103, "$?CLASS"
    getattribute $P104, $P102, $P103, "$!language"
    unless_null $P104, vivify_724
    new $P104, "Undef"
  vivify_724:
    set $S100, $P104
    downcase $S101, $S100
    $P1649."unshift"($S101)
.annotate 'line', 1158
    find_lex $P1650, "@name"
    unless_null $P1650, vivify_725
    $P1650 = root_new ['parrot';'ResizablePMCArray']
  vivify_725:
    get_root_namespace $P102, $P1650
.annotate 'line', 1155
    .return ($P102)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "language" :anon :subid("175_1308672490.86084") :outer("165_1308672490.86084")
    .param pmc param_1652
    .param pmc param_1653 :optional
    .param int has_param_1653 :opt_flag
.annotate 'line', 1161
    .lex "self", param_1652
    if has_param_1653, optparam_726
    new $P102, "Undef"
    set param_1653, $P102
  optparam_726:
    .lex "$name", param_1653
.annotate 'line', 1162
    find_lex $P103, "$name"
    unless_null $P103, vivify_727
    new $P103, "Undef"
  vivify_727:
    unless $P103, if_1654_end
.annotate 'line', 1163
    find_lex $P104, "$name"
    unless_null $P104, vivify_728
    new $P104, "Undef"
  vivify_728:
    find_lex $P106, "self"
    find_lex $P107, "$?CLASS"
    setattribute $P106, $P107, "$!language", $P104
.annotate 'line', 1164
    find_lex $P104, "$name"
    unless_null $P104, vivify_729
    new $P104, "Undef"
  vivify_729:
    set $S100, $P104
    find_lex $P106, "self"
    compreg $S100, $P106
  if_1654_end:
.annotate 'line', 1161
    find_lex $P103, "self"
    find_lex $P104, "$?CLASS"
    getattribute $P106, $P103, $P104, "$!language"
    unless_null $P106, vivify_730
    new $P106, "Undef"
  vivify_730:
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "compiler" :anon :subid("176_1308672490.86084") :outer("165_1308672490.86084")
    .param pmc param_1656
    .param pmc param_1657
.annotate 'line', 1169
    .lex "self", param_1656
    .lex "$name", param_1657
.annotate 'line', 1170
    find_lex $P102, "$name"
    unless_null $P102, vivify_731
    new $P102, "Undef"
  vivify_731:
    set $S100, $P102
    compreg $P103, $S100
.annotate 'line', 1169
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "config" :anon :subid("177_1308672490.86084") :outer("165_1308672490.86084")
    .param pmc param_1659
.annotate 'line', 1173
    .lex "self", param_1659
    find_lex $P102, "self"
    find_lex $P103, "$?CLASS"
    getattribute $P1660, $P102, $P103, "%!config"
    unless_null $P1660, vivify_732
    $P1660 = root_new ['parrot';'Hash']
  vivify_732:
    .return ($P1660)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "load_module" :anon :subid("178_1308672490.86084") :outer("165_1308672490.86084")
    .param pmc param_1662
    .param pmc param_1663
.annotate 'line', 1175
    .const 'Sub' $P1667 = "179_1308672490.86084" 
    capture_lex $P1667
    .lex "self", param_1662
    .lex "$name", param_1663
.annotate 'line', 1176
    new $P102, "Undef"
    set $P1664, $P102
    .lex "$base", $P1664
.annotate 'line', 1177
    new $P103, "Undef"
    set $P1665, $P103
    .lex "$loaded", $P1665
.annotate 'line', 1176
    find_lex $P104, "self"
    find_lex $P106, "$name"
    unless_null $P106, vivify_733
    new $P106, "Undef"
  vivify_733:
    $P107 = $P104."parse_name"($P106)
    join $S100, "/", $P107
    new $P108, 'String'
    set $P108, $S100
    store_lex "$base", $P108
.annotate 'line', 1177
    new $P104, "Integer"
    assign $P104, 0
    store_lex "$loaded", $P104
.annotate 'line', 1178
    .const 'Sub' $P1667 = "179_1308672490.86084" 
    capture_lex $P1667
    $P1667()
.annotate 'line', 1179
    find_lex $P104, "$loaded"
    unless_null $P104, vivify_735
    new $P104, "Undef"
  vivify_735:
    if $P104, unless_1675_end
    find_lex $P106, "$base"
    unless_null $P106, vivify_736
    new $P106, "Undef"
  vivify_736:
    concat $P107, $P106, ".pir"
    set $S100, $P107
    load_bytecode $S100
    new $P106, "Integer"
    assign $P106, 1
    store_lex "$loaded", $P106
  unless_1675_end:
.annotate 'line', 1180
    find_lex $P104, "self"
    find_lex $P106, "$name"
    unless_null $P106, vivify_737
    new $P106, "Undef"
  vivify_737:
    $P107 = $P104."get_module"($P106)
.annotate 'line', 1175
    .return ($P107)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1666"  :anon :subid("179_1308672490.86084") :outer("178_1308672490.86084")
.annotate 'line', 1178
    new $P1670, 'ExceptionHandler'
    set_label $P1670, control_1669
    $P1670."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P1670
    find_lex $P104, "$base"
    unless_null $P104, vivify_734
    new $P104, "Undef"
  vivify_734:
    concat $P106, $P104, ".pbc"
    set $S100, $P106
    load_bytecode $S100
    new $P104, "Integer"
    assign $P104, 1
    store_lex "$loaded", $P104
    pop_eh 
    goto skip_handler_1668
  control_1669:
    .local pmc exception 
    .get_results (exception) 
    new $P1673, 'Integer'
    set $P1673, 1
    set exception["handled"], $P1673
    set $I1674, exception["handled"]
    ne $I1674, 1, nothandled_1672
  handled_1671:
    .return (exception)
  nothandled_1672:
    rethrow exception
  skip_handler_1668:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "import" :anon :subid("180_1308672490.86084") :outer("165_1308672490.86084")
    .param pmc param_1677
    .param pmc param_1678
    .param pmc param_1679
.annotate 'line', 1183
    .const 'Sub' $P1682 = "181_1308672490.86084" 
    capture_lex $P1682
    .lex "self", param_1677
    .lex "$target", param_1678
    .lex "%exports", param_1679
.annotate 'line', 1184
    find_lex $P1680, "%exports"
    unless_null $P1680, vivify_738
    $P1680 = root_new ['parrot';'Hash']
  vivify_738:
    defined $I100, $P1680
    unless $I100, for_undef_739
    iter $P102, $P1680
    new $P107, 'ExceptionHandler'
    set_label $P107, loop1705_handler
    $P107."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P107
  loop1705_test:
    unless $P102, loop1705_done
    shift $P103, $P102
  loop1705_redo:
    .const 'Sub' $P1682 = "181_1308672490.86084" 
    capture_lex $P1682
    $P1682($P103)
  loop1705_next:
    goto loop1705_test
  loop1705_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P108, exception, 'type'
    eq $P108, .CONTROL_LOOP_NEXT, loop1705_next
    eq $P108, .CONTROL_LOOP_REDO, loop1705_redo
  loop1705_done:
    pop_eh 
  for_undef_739:
.annotate 'line', 1183
    .return ($P102)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1681"  :anon :subid("181_1308672490.86084") :outer("180_1308672490.86084")
    .param pmc param_1686
.annotate 'line', 1184
    .const 'Sub' $P1701 = "184_1308672490.86084" 
    capture_lex $P1701
    .const 'Sub' $P1696 = "183_1308672490.86084" 
    capture_lex $P1696
    .const 'Sub' $P1690 = "182_1308672490.86084" 
    capture_lex $P1690
.annotate 'line', 1185
    new $P104, "Undef"
    set $P1683, $P104
    .lex "$type", $P1683
.annotate 'line', 1186
    $P1685 = root_new ['parrot';'Hash']
    set $P1684, $P1685
    .lex "%items", $P1684
    .lex "$_", param_1686
.annotate 'line', 1185
    find_lex $P106, "$_"
    unless_null $P106, vivify_740
    new $P106, "Undef"
  vivify_740:
    $P107 = $P106."key"()
    store_lex "$type", $P107
.annotate 'line', 1186
    find_lex $P106, "$_"
    unless_null $P106, vivify_741
    new $P106, "Undef"
  vivify_741:
    $P107 = $P106."value"()
    store_lex "%items", $P107
.annotate 'line', 1187
    find_lex $P107, "self"
    new $P108, 'String'
    set $P108, "import_"
    find_lex $P109, "$type"
    unless_null $P109, vivify_742
    new $P109, "Undef"
  vivify_742:
    concat $P110, $P108, $P109
    set $S100, $P110
    can $I101, $P107, $S100
    if $I101, if_1687
.annotate 'line', 1190
    find_lex $P113, "$target"
    unless_null $P113, vivify_743
    new $P113, "Undef"
  vivify_743:
    new $P114, 'String'
    set $P114, "add_"
    find_lex $P115, "$type"
    unless_null $P115, vivify_744
    new $P115, "Undef"
  vivify_744:
    concat $P116, $P114, $P115
    set $S101, $P116
    can $I102, $P113, $S101
    if $I102, if_1693
.annotate 'line', 1194
    find_lex $P1699, "%items"
    unless_null $P1699, vivify_745
    $P1699 = root_new ['parrot';'Hash']
  vivify_745:
    defined $I103, $P1699
    unless $I103, for_undef_746
    iter $P118, $P1699
    new $P120, 'ExceptionHandler'
    set_label $P120, loop1704_handler
    $P120."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P120
  loop1704_test:
    unless $P118, loop1704_done
    shift $P119, $P118
  loop1704_redo:
    .const 'Sub' $P1701 = "184_1308672490.86084" 
    capture_lex $P1701
    $P1701($P119)
  loop1704_next:
    goto loop1704_test
  loop1704_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P122, exception, 'type'
    eq $P122, .CONTROL_LOOP_NEXT, loop1704_next
    eq $P122, .CONTROL_LOOP_REDO, loop1704_redo
  loop1704_done:
    pop_eh 
  for_undef_746:
.annotate 'line', 1193
    set $P112, $P118
.annotate 'line', 1190
    goto if_1693_end
  if_1693:
.annotate 'line', 1191
    find_lex $P1694, "%items"
    unless_null $P1694, vivify_750
    $P1694 = root_new ['parrot';'Hash']
  vivify_750:
    defined $I103, $P1694
    unless $I103, for_undef_751
    iter $P117, $P1694
    new $P119, 'ExceptionHandler'
    set_label $P119, loop1698_handler
    $P119."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P119
  loop1698_test:
    unless $P117, loop1698_done
    shift $P118, $P117
  loop1698_redo:
    .const 'Sub' $P1696 = "183_1308672490.86084" 
    capture_lex $P1696
    $P1696($P118)
  loop1698_next:
    goto loop1698_test
  loop1698_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P120, exception, 'type'
    eq $P120, .CONTROL_LOOP_NEXT, loop1698_next
    eq $P120, .CONTROL_LOOP_REDO, loop1698_redo
  loop1698_done:
    pop_eh 
  for_undef_751:
.annotate 'line', 1190
    set $P112, $P117
  if_1693_end:
    set $P106, $P112
.annotate 'line', 1187
    goto if_1687_end
  if_1687:
.annotate 'line', 1188
    find_lex $P1688, "%items"
    unless_null $P1688, vivify_756
    $P1688 = root_new ['parrot';'Hash']
  vivify_756:
    defined $I102, $P1688
    unless $I102, for_undef_757
    iter $P111, $P1688
    new $P113, 'ExceptionHandler'
    set_label $P113, loop1692_handler
    $P113."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P113
  loop1692_test:
    unless $P111, loop1692_done
    shift $P112, $P111
  loop1692_redo:
    .const 'Sub' $P1690 = "182_1308672490.86084" 
    capture_lex $P1690
    $P1690($P112)
  loop1692_next:
    goto loop1692_test
  loop1692_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P114, exception, 'type'
    eq $P114, .CONTROL_LOOP_NEXT, loop1692_next
    eq $P114, .CONTROL_LOOP_REDO, loop1692_redo
  loop1692_done:
    pop_eh 
  for_undef_757:
.annotate 'line', 1187
    set $P106, $P111
  if_1687_end:
.annotate 'line', 1184
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1700"  :anon :subid("184_1308672490.86084") :outer("181_1308672490.86084")
    .param pmc param_1702
.annotate 'line', 1194
    .lex "$_", param_1702
    find_lex $P120, "$_"
    unless_null $P120, vivify_747
    new $P120, "Undef"
  vivify_747:
    $P121 = $P120."value"()
    find_lex $P122, "$_"
    unless_null $P122, vivify_748
    new $P122, "Undef"
  vivify_748:
    $P123 = $P122."key"()
    set $S102, $P123
    find_lex $P1703, "$target"
    unless_null $P1703, vivify_749
    $P1703 = root_new ['parrot';'Hash']
    store_lex "$target", $P1703
  vivify_749:
    set $P1703[$S102], $P121
    .return ($P121)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1695"  :anon :subid("183_1308672490.86084") :outer("181_1308672490.86084")
    .param pmc param_1697
.annotate 'line', 1191
    .lex "$_", param_1697
    find_lex $P119, "$target"
    unless_null $P119, vivify_752
    new $P119, "Undef"
  vivify_752:
    find_lex $P120, "$_"
    unless_null $P120, vivify_753
    new $P120, "Undef"
  vivify_753:
    $P121 = $P120."key"()
    find_lex $P122, "$_"
    unless_null $P122, vivify_754
    new $P122, "Undef"
  vivify_754:
    $P123 = $P122."value"()
    new $P124, 'String'
    set $P124, "add_"
    find_lex $P125, "$type"
    unless_null $P125, vivify_755
    new $P125, "Undef"
  vivify_755:
    concat $P126, $P124, $P125
    set $S102, $P126
    $P127 = $P119.$S102($P121, $P123)
    .return ($P127)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1689"  :anon :subid("182_1308672490.86084") :outer("181_1308672490.86084")
    .param pmc param_1691
.annotate 'line', 1188
    .lex "$_", param_1691
    find_lex $P113, "self"
    find_lex $P114, "$target"
    unless_null $P114, vivify_758
    new $P114, "Undef"
  vivify_758:
    find_lex $P115, "$_"
    unless_null $P115, vivify_759
    new $P115, "Undef"
  vivify_759:
    $P116 = $P115."key"()
    find_lex $P117, "$_"
    unless_null $P117, vivify_760
    new $P117, "Undef"
  vivify_760:
    $P118 = $P117."value"()
    new $P119, 'String'
    set $P119, "import_"
    find_lex $P120, "$type"
    unless_null $P120, vivify_761
    new $P120, "Undef"
  vivify_761:
    concat $P121, $P119, $P120
    set $S101, $P121
    $P122 = $P113.$S101($P114, $P116, $P118)
    .return ($P122)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "autoprint" :anon :subid("185_1308672490.86084") :outer("165_1308672490.86084")
    .param pmc param_1707
    .param pmc param_1708
.annotate 'line', 1199
    .lex "self", param_1707
    .lex "$value", param_1708
.annotate 'line', 1201
    getinterp $P103
    $P104 = $P103."stdout_handle"()
    $N100 = $P104."tell"()
    find_dynamic_lex $P108, "$*AUTOPRINTPOS"
    unless_null $P108, vivify_762
    get_hll_global $P106, "GLOBAL"
    get_who $P107, $P106
    set $P108, $P107["$AUTOPRINTPOS"]
    unless_null $P108, vivify_763
    die "Contextual $*AUTOPRINTPOS not found"
  vivify_763:
  vivify_762:
    set $N101, $P108
    isgt $I100, $N100, $N101
    unless $I100, unless_1709
    new $P102, 'Integer'
    set $P102, $I100
    goto unless_1709_end
  unless_1709:
.annotate 'line', 1200
    find_lex $P109, "$value"
    unless_null $P109, vivify_764
    new $P109, "Undef"
  vivify_764:
    set $S100, $P109
    say $S100
  unless_1709_end:
.annotate 'line', 1199
    .return ($P102)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "interactive" :anon :subid("186_1308672490.86084") :outer("165_1308672490.86084")
    .param pmc param_1711
    .param pmc param_1712 :slurpy :named
.annotate 'line', 1204
    .const 'Sub' $P1722 = "187_1308672490.86084" 
    capture_lex $P1722
    .lex "self", param_1711
    .lex "%adverbs", param_1712
.annotate 'line', 1205
    new $P102, "Undef"
    set $P1713, $P102
    .lex "$target", $P1713
.annotate 'line', 1209
    new $P103, "Undef"
    set $P1714, $P103
    .lex "$stdin", $P1714
.annotate 'line', 1210
    new $P104, "Undef"
    set $P1715, $P104
    .lex "$encoding", $P1715
.annotate 'line', 1215
    new $P106, "Undef"
    set $P1716, $P106
    .lex "$save_ctx", $P1716
.annotate 'line', 1205
    find_lex $P1717, "%adverbs"
    unless_null $P1717, vivify_765
    $P1717 = root_new ['parrot';'Hash']
  vivify_765:
    set $P107, $P1717["target"]
    unless_null $P107, vivify_766
    new $P107, "Undef"
  vivify_766:
    set $S100, $P107
    downcase $S101, $S100
    new $P108, 'String'
    set $P108, $S101
    store_lex "$target", $P108
.annotate 'line', 1207
    getinterp $P107
    $P108 = $P107."stderr_handle"()
    find_lex $P109, "self"
    $S100 = $P109."commandline_banner"()
    print $P108, $S100
.annotate 'line', 1209
    getinterp $P107
    $P108 = $P107."stdin_handle"()
    store_lex "$stdin", $P108
.annotate 'line', 1210
    find_lex $P1718, "%adverbs"
    unless_null $P1718, vivify_767
    $P1718 = root_new ['parrot';'Hash']
  vivify_767:
    set $P107, $P1718["encoding"]
    unless_null $P107, vivify_768
    new $P107, "Undef"
  vivify_768:
    set $S100, $P107
    new $P108, 'String'
    set $P108, $S100
    store_lex "$encoding", $P108
.annotate 'line', 1211
    find_lex $P108, "$encoding"
    unless_null $P108, vivify_769
    new $P108, "Undef"
  vivify_769:
    if $P108, if_1720
    set $P107, $P108
    goto if_1720_end
  if_1720:
    find_lex $P109, "$encoding"
    unless_null $P109, vivify_770
    new $P109, "Undef"
  vivify_770:
    set $S100, $P109
    isne $I100, $S100, "fixed_8"
    new $P107, 'Integer'
    set $P107, $I100
  if_1720_end:
    unless $P107, if_1719_end
.annotate 'line', 1212
    find_lex $P110, "$stdin"
    unless_null $P110, vivify_771
    new $P110, "Undef"
  vivify_771:
    find_lex $P111, "$encoding"
    unless_null $P111, vivify_772
    new $P111, "Undef"
  vivify_772:
    $P110."encoding"($P111)
  if_1719_end:
.annotate 'line', 1204
    find_lex $P107, "$save_ctx"
    unless_null $P107, vivify_773
    new $P107, "Undef"
  vivify_773:
.annotate 'line', 1216
    new $P114, 'ExceptionHandler'
    set_label $P114, loop1771_handler
    $P114."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P114
  loop1771_test:
    new $P107, "Integer"
    assign $P107, 1
    unless $P107, loop1771_done
  loop1771_redo:
    .const 'Sub' $P1722 = "187_1308672490.86084" 
    capture_lex $P1722
    $P1722()
  loop1771_next:
    goto loop1771_test
  loop1771_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P115, exception, 'type'
    eq $P115, .CONTROL_LOOP_NEXT, loop1771_next
    eq $P115, .CONTROL_LOOP_REDO, loop1771_redo
  loop1771_done:
    pop_eh 
.annotate 'line', 1204
    .return ($P107)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1721"  :anon :subid("187_1308672490.86084") :outer("186_1308672490.86084")
.annotate 'line', 1216
    .const 'Sub' $P1736 = "188_1308672490.86084" 
    capture_lex $P1736
.annotate 'line', 1219
    new $P108, "Undef"
    set $P1723, $P108
    .lex "$prompt", $P1723
.annotate 'line', 1220
    new $P109, "Undef"
    set $P1724, $P109
    .lex "$code", $P1724
.annotate 'line', 1229
    new $P110, "Undef"
    set $P1725, $P110
    .lex "$*AUTOPRINTPOS", $P1725
.annotate 'line', 1230
    new $P111, "Undef"
    set $P1726, $P111
    .lex "$*CTXSAVE", $P1726
.annotate 'line', 1231
    new $P112, "Undef"
    set $P1727, $P112
    .lex "$*MAIN_CTX", $P1727
.annotate 'line', 1217
    find_lex $P113, "$stdin"
    unless_null $P113, vivify_774
    new $P113, "Undef"
  vivify_774:
    if $P113, unless_1728_end
    die 0, .CONTROL_LOOP_LAST
  unless_1728_end:
.annotate 'line', 1219
    find_lex $P113, "self"
    $P114 = $P113."commandline_prompt"()
    set $P1729, $P114
    defined $I1731, $P1729
    if $I1731, default_1730
    new $P115, "String"
    assign $P115, "> "
    set $P1729, $P115
  default_1730:
    store_lex "$prompt", $P1729
.annotate 'line', 1220
    find_lex $P113, "$stdin"
    unless_null $P113, vivify_775
    new $P113, "Undef"
  vivify_775:
    find_lex $P114, "$prompt"
    unless_null $P114, vivify_776
    new $P114, "Undef"
  vivify_776:
    set $S100, $P114
    $P115 = $P113."readline_interactive"($S100)
    store_lex "$code", $P115
.annotate 'line', 1222
    find_lex $P113, "$code"
    unless_null $P113, vivify_777
    new $P113, "Undef"
  vivify_777:
    isnull $I100, $P113
    unless $I100, if_1732_end
    die 0, .CONTROL_LOOP_LAST
  if_1732_end:
.annotate 'line', 1223
    find_lex $P113, "$code"
    unless_null $P113, vivify_778
    new $P113, "Undef"
  vivify_778:
    defined $I100, $P113
    if $I100, unless_1733_end
.annotate 'line', 1224
    print "\n"
.annotate 'line', 1225
    die 0, .CONTROL_LOOP_LAST
  unless_1733_end:
.annotate 'line', 1229
    getinterp $P113
    $P114 = $P113."stdout_handle"()
    $P115 = $P114."tell"()
    store_lex "$*AUTOPRINTPOS", $P115
.annotate 'line', 1230
    find_lex $P113, "self"
    store_lex "$*CTXSAVE", $P113
.annotate 'line', 1216
    find_lex $P115, "$*MAIN_CTX"
    unless_null $P115, vivify_779
    get_hll_global $P113, "GLOBAL"
    get_who $P114, $P113
    set $P115, $P114["$MAIN_CTX"]
    unless_null $P115, vivify_780
    die "Contextual $*MAIN_CTX not found"
  vivify_780:
  vivify_779:
.annotate 'line', 1233
    find_lex $P114, "$code"
    unless_null $P114, vivify_781
    new $P114, "Undef"
  vivify_781:
    if $P114, if_1734
    set $P113, $P114
    goto if_1734_end
  if_1734:
    .const 'Sub' $P1736 = "188_1308672490.86084" 
    capture_lex $P1736
    $P117 = $P1736()
    set $P113, $P117
  if_1734_end:
.annotate 'line', 1216
    .return ($P113)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1735"  :anon :subid("188_1308672490.86084") :outer("187_1308672490.86084")
.annotate 'line', 1233
    .const 'Sub' $P1760 = "191_1308672490.86084" 
    capture_lex $P1760
    .const 'Sub' $P1739 = "189_1308672490.86084" 
    capture_lex $P1739
.annotate 'line', 1235
    new $P115, "Undef"
    set $P1737, $P115
    .lex "$output", $P1737
.annotate 'line', 1234
    find_lex $P116, "$code"
    unless_null $P116, vivify_782
    new $P116, "Undef"
  vivify_782:
    concat $P117, $P116, "\n"
    store_lex "$code", $P117
.annotate 'line', 1233
    find_lex $P116, "$output"
    unless_null $P116, vivify_783
    new $P116, "Undef"
  vivify_783:
.annotate 'line', 1236
    .const 'Sub' $P1739 = "189_1308672490.86084" 
    capture_lex $P1739
    $P1739()
.annotate 'line', 1243
    find_dynamic_lex $P118, "$*MAIN_CTX"
    unless_null $P118, vivify_788
    get_hll_global $P116, "GLOBAL"
    get_who $P117, $P116
    set $P118, $P117["$MAIN_CTX"]
    unless_null $P118, vivify_789
    die "Contextual $*MAIN_CTX not found"
  vivify_789:
  vivify_788:
    defined $I100, $P118
    unless $I100, if_1758_end
    .const 'Sub' $P1760 = "191_1308672490.86084" 
    capture_lex $P1760
    $P1760()
  if_1758_end:
.annotate 'line', 1251
    find_lex $P116, "$output"
    unless_null $P116, vivify_799
    new $P116, "Undef"
  vivify_799:
    isnull $I100, $P116
    unless $I100, if_1767_end
    die 0, .CONTROL_LOOP_NEXT
  if_1767_end:
.annotate 'line', 1253
    find_lex $P117, "$target"
    unless_null $P117, vivify_800
    new $P117, "Undef"
  vivify_800:
    isfalse $I100, $P117
    if $I100, if_1768
.annotate 'line', 1255
    find_lex $P119, "$target"
    unless_null $P119, vivify_801
    new $P119, "Undef"
  vivify_801:
    set $S100, $P119
    iseq $I101, $S100, "pir"
    if $I101, if_1769
.annotate 'line', 1258
    find_lex $P121, "self"
    find_lex $P122, "$output"
    unless_null $P122, vivify_802
    new $P122, "Undef"
  vivify_802:
    find_lex $P123, "$target"
    unless_null $P123, vivify_803
    new $P123, "Undef"
  vivify_803:
    find_lex $P1770, "%adverbs"
    unless_null $P1770, vivify_804
    $P1770 = root_new ['parrot';'Hash']
  vivify_804:
    $P124 = $P121."dumper"($P122, $P123, $P1770 :flat)
.annotate 'line', 1257
    set $P118, $P124
.annotate 'line', 1255
    goto if_1769_end
  if_1769:
.annotate 'line', 1256
    find_lex $P121, "$output"
    unless_null $P121, vivify_805
    new $P121, "Undef"
  vivify_805:
    say $P121
  if_1769_end:
.annotate 'line', 1255
    set $P116, $P118
.annotate 'line', 1253
    goto if_1768_end
  if_1768:
.annotate 'line', 1254
    find_lex $P118, "self"
    find_lex $P119, "$output"
    unless_null $P119, vivify_806
    new $P119, "Undef"
  vivify_806:
    $P120 = $P118."autoprint"($P119)
.annotate 'line', 1253
    set $P116, $P120
  if_1768_end:
.annotate 'line', 1233
    .return ($P116)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1738"  :anon :subid("189_1308672490.86084") :outer("188_1308672490.86084")
.annotate 'line', 1236
    .const 'Sub' $P1747 = "190_1308672490.86084" 
    capture_lex $P1747
    new $P1743, 'ExceptionHandler'
    set_label $P1743, control_1742
    $P1743."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P1743
.annotate 'line', 1237
    find_lex $P116, "self"
    find_lex $P117, "$code"
    unless_null $P117, vivify_784
    new $P117, "Undef"
  vivify_784:
    find_lex $P118, "$save_ctx"
    unless_null $P118, vivify_785
    new $P118, "Undef"
  vivify_785:
    find_lex $P1740, "%adverbs"
    unless_null $P1740, vivify_786
    $P1740 = root_new ['parrot';'Hash']
  vivify_786:
    $P119 = $P116."eval"($P117, $P1740 :flat, $P118 :named("outer_ctx"))
    store_lex "$output", $P119
.annotate 'line', 1236
    pop_eh 
    goto skip_handler_1741
  control_1742:
.annotate 'line', 1238
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P1747 = "190_1308672490.86084" 
    newclosure $P1755, $P1747
    $P1755(exception)
    new $P1756, 'Integer'
    set $P1756, 1
    set exception["handled"], $P1756
    set $I1757, exception["handled"]
    ne $I1757, 1, nothandled_1745
  handled_1744:
    .return (exception)
  nothandled_1745:
    rethrow exception
  skip_handler_1741:
.annotate 'line', 1236
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1746"  :anon :subid("190_1308672490.86084") :outer("189_1308672490.86084")
    .param pmc param_1748
.annotate 'line', 1238
    .lex "$_", param_1748
    find_lex $P1749, "$_"
    set $P1750, $P1749
    .lex "$!", $P1750
.annotate 'line', 1239
    find_lex $P1751, "$!"
    unless_null $P1751, vivify_787
    new $P1751, "Undef"
  vivify_787:
    set $S1752, $P1751
    new $P1753, 'String'
    set $P1753, $S1752
    concat $P1754, $P1753, "\n"
    print $P1754
.annotate 'line', 1240
    die 0, .CONTROL_LOOP_NEXT
.annotate 'line', 1238
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1759"  :anon :subid("191_1308672490.86084") :outer("188_1308672490.86084")
.annotate 'line', 1243
    .const 'Sub' $P1763 = "192_1308672490.86084" 
    capture_lex $P1763
    find_lex $P119, "$?PACKAGE"
    get_who $P120, $P119
    set $P121, $P120["$interactive_ctx"]
    unless_null $P121, vivify_790
    new $P121, "Undef"
  vivify_790:
    find_lex $P119, "$?PACKAGE"
    get_who $P120, $P119
    set $P1761, $P120["%interactive_pad"]
    unless_null $P1761, vivify_791
    $P1761 = root_new ['parrot';'Hash']
  vivify_791:
.annotate 'line', 1246
    find_dynamic_lex $P122, "$*MAIN_CTX"
    unless_null $P122, vivify_792
    get_hll_global $P120, "GLOBAL"
    get_who $P121, $P120
    set $P122, $P121["$MAIN_CTX"]
    unless_null $P122, vivify_793
    die "Contextual $*MAIN_CTX not found"
  vivify_793:
  vivify_792:
    $P123 = $P122."lexpad_full"()
    defined $I101, $P123
    unless $I101, for_undef_794
    iter $P119, $P123
    new $P125, 'ExceptionHandler'
    set_label $P125, loop1766_handler
    $P125."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P125
  loop1766_test:
    unless $P119, loop1766_done
    shift $P124, $P119
  loop1766_redo:
    .const 'Sub' $P1763 = "192_1308672490.86084" 
    capture_lex $P1763
    $P1763($P124)
  loop1766_next:
    goto loop1766_test
  loop1766_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P127, exception, 'type'
    eq $P127, .CONTROL_LOOP_NEXT, loop1766_next
    eq $P127, .CONTROL_LOOP_REDO, loop1766_redo
  loop1766_done:
    pop_eh 
  for_undef_794:
.annotate 'line', 1249
    find_lex $P119, "$?PACKAGE"
    get_who $P120, $P119
    set $P121, $P120["$interactive_ctx"]
    unless_null $P121, vivify_798
    new $P121, "Undef"
  vivify_798:
    store_lex "$save_ctx", $P121
.annotate 'line', 1243
    .return ($P121)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1762"  :anon :subid("192_1308672490.86084") :outer("191_1308672490.86084")
    .param pmc param_1764
.annotate 'line', 1246
    .lex "$_", param_1764
.annotate 'line', 1247
    find_lex $P125, "$_"
    unless_null $P125, vivify_795
    new $P125, "Undef"
  vivify_795:
    $P126 = $P125."value"()
    find_lex $P127, "$_"
    unless_null $P127, vivify_796
    new $P127, "Undef"
  vivify_796:
    $P128 = $P127."key"()
    find_lex $P129, "$?PACKAGE"
    get_who $P130, $P129
    set $P1765, $P130["%interactive_pad"]
    unless_null $P1765, vivify_797
    $P1765 = root_new ['parrot';'Hash']
    set $P130["%interactive_pad"], $P1765
  vivify_797:
    set $P1765[$P128], $P126
.annotate 'line', 1246
    .return ($P126)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "eval" :anon :subid("193_1308672490.86084") :outer("165_1308672490.86084")
    .param pmc param_1773
    .param pmc param_1774
    .param pmc param_1775 :slurpy
    .param pmc param_1776 :slurpy :named
.annotate 'line', 1264
    .const 'Sub' $P1783 = "194_1308672490.86084" 
    capture_lex $P1783
    .lex "self", param_1773
    .lex "$code", param_1774
    .lex "@args", param_1775
    .lex "%adverbs", param_1776
.annotate 'line', 1265
    new $P102, "Undef"
    set $P1777, $P102
    .lex "$output", $P1777
.annotate 'line', 1264
    find_lex $P103, "$output"
    unless_null $P103, vivify_807
    new $P103, "Undef"
  vivify_807:
.annotate 'line', 1266
    find_lex $P103, "self"
    find_lex $P104, "$code"
    unless_null $P104, vivify_808
    new $P104, "Undef"
  vivify_808:
    find_lex $P1778, "%adverbs"
    unless_null $P1778, vivify_809
    $P1778 = root_new ['parrot';'Hash']
  vivify_809:
    $P106 = $P103."compile"($P104, $P1778 :flat)
    store_lex "$output", $P106
.annotate 'line', 1268
    find_lex $P104, "$output"
    unless_null $P104, vivify_810
    new $P104, "Undef"
  vivify_810:
    isa $I100, $P104, "String"
    new $P106, 'Integer'
    set $P106, $I100
    isfalse $I101, $P106
    if $I101, if_1780
    new $P103, 'Integer'
    set $P103, $I101
    goto if_1780_end
  if_1780:
.annotate 'line', 1269
    find_lex $P1781, "%adverbs"
    unless_null $P1781, vivify_811
    $P1781 = root_new ['parrot';'Hash']
  vivify_811:
    set $P107, $P1781["target"]
    unless_null $P107, vivify_812
    new $P107, "Undef"
  vivify_812:
    set $S100, $P107
    iseq $I102, $S100, ""
    new $P103, 'Integer'
    set $P103, $I102
  if_1780_end:
    unless $P103, if_1779_end
    .const 'Sub' $P1783 = "194_1308672490.86084" 
    capture_lex $P1783
    $P1783()
  if_1779_end:
.annotate 'line', 1264
    find_lex $P103, "$output"
    unless_null $P103, vivify_823
    new $P103, "Undef"
  vivify_823:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1782"  :anon :subid("194_1308672490.86084") :outer("193_1308672490.86084")
.annotate 'line', 1270
    new $P108, "Undef"
    set $P1784, $P108
    .lex "$outer_ctx", $P1784
    find_lex $P1785, "%adverbs"
    unless_null $P1785, vivify_813
    $P1785 = root_new ['parrot';'Hash']
  vivify_813:
    set $P109, $P1785["outer_ctx"]
    unless_null $P109, vivify_814
    new $P109, "Undef"
  vivify_814:
    store_lex "$outer_ctx", $P109
.annotate 'line', 1271
    find_lex $P109, "$outer_ctx"
    unless_null $P109, vivify_815
    new $P109, "Undef"
  vivify_815:
    defined $I103, $P109
    unless $I103, if_1786_end
.annotate 'line', 1272
    find_lex $P1787, "$output"
    unless_null $P1787, vivify_816
    $P1787 = root_new ['parrot';'ResizablePMCArray']
  vivify_816:
    set $P110, $P1787[0]
    unless_null $P110, vivify_817
    new $P110, "Undef"
  vivify_817:
    find_lex $P111, "$outer_ctx"
    unless_null $P111, vivify_818
    new $P111, "Undef"
  vivify_818:
    $P110."set_outer_ctx"($P111)
  if_1786_end:
.annotate 'line', 1275
    find_lex $P1788, "%adverbs"
    unless_null $P1788, vivify_819
    $P1788 = root_new ['parrot';'Hash']
  vivify_819:
    set $P109, $P1788["trace"]
    unless_null $P109, vivify_820
    new $P109, "Undef"
  vivify_820:
    set $I103, $P109
    trace $I103
.annotate 'line', 1276
    find_lex $P109, "$output"
    unless_null $P109, vivify_821
    new $P109, "Undef"
  vivify_821:
    find_lex $P1789, "@args"
    unless_null $P1789, vivify_822
    $P1789 = root_new ['parrot';'ResizablePMCArray']
  vivify_822:
    $P110 = $P109($P1789 :flat)
    store_lex "$output", $P110
.annotate 'line', 1277
    trace 0
.annotate 'line', 1269
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "ctxsave" :anon :subid("195_1308672490.86084") :outer("165_1308672490.86084")
    .param pmc param_1791
.annotate 'line', 1283
    .lex "self", param_1791
.annotate 'line', 1285

                $P0 = getinterp
                $P1792 = $P0['context';1]
            
    store_dynamic_lex "$*MAIN_CTX", $P1792
.annotate 'line', 1289
    new $P102, "Integer"
    assign $P102, 0
    store_dynamic_lex "$*CTXSAVE", $P102
.annotate 'line', 1283
    .return ($P102)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "panic" :anon :subid("196_1308672490.86084") :outer("165_1308672490.86084")
    .param pmc param_1794
    .param pmc param_1795 :slurpy
.annotate 'line', 1292
    .lex "self", param_1794
    .lex "@args", param_1795
.annotate 'line', 1293
    find_lex $P1796, "@args"
    unless_null $P1796, vivify_824
    $P1796 = root_new ['parrot';'ResizablePMCArray']
  vivify_824:
    join $S100, "", $P1796
    die $S100
.annotate 'line', 1292
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "stages" :anon :subid("197_1308672490.86084") :outer("165_1308672490.86084")
    .param pmc param_1798
    .param pmc param_1799 :optional
    .param int has_param_1799 :opt_flag
.annotate 'line', 1296
    .lex "self", param_1798
    if has_param_1799, optparam_825
    $P1800 = root_new ['parrot';'ResizablePMCArray']
    set param_1799, $P1800
  optparam_825:
    .lex "@value", param_1799
.annotate 'line', 1297
    find_lex $P1802, "@value"
    unless_null $P1802, vivify_826
    $P1802 = root_new ['parrot';'ResizablePMCArray']
  vivify_826:
    set $N100, $P1802
    unless $N100, if_1801_end
.annotate 'line', 1298
    find_lex $P1803, "@value"
    unless_null $P1803, vivify_827
    $P1803 = root_new ['parrot';'ResizablePMCArray']
  vivify_827:
    find_lex $P102, "self"
    find_lex $P103, "$?CLASS"
    setattribute $P102, $P103, "@!stages", $P1803
  if_1801_end:
.annotate 'line', 1296
    find_lex $P102, "self"
    find_lex $P103, "$?CLASS"
    getattribute $P1804, $P102, $P103, "@!stages"
    unless_null $P1804, vivify_828
    $P1804 = root_new ['parrot';'ResizablePMCArray']
  vivify_828:
    .return ($P1804)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "parsegrammar" :anon :subid("198_1308672490.86084") :outer("165_1308672490.86084")
    .param pmc param_1806
    .param pmc param_1807 :slurpy
.annotate 'line', 1303
    .lex "self", param_1806
    .lex "@value", param_1807
.annotate 'line', 1304
    find_lex $P1809, "@value"
    unless_null $P1809, vivify_829
    $P1809 = root_new ['parrot';'ResizablePMCArray']
  vivify_829:
    set $N100, $P1809
    unless $N100, if_1808_end
.annotate 'line', 1305
    find_lex $P1810, "@value"
    unless_null $P1810, vivify_830
    $P1810 = root_new ['parrot';'ResizablePMCArray']
  vivify_830:
    set $P102, $P1810[0]
    unless_null $P102, vivify_831
    new $P102, "Undef"
  vivify_831:
    find_lex $P103, "self"
    find_lex $P104, "$?CLASS"
    setattribute $P103, $P104, "$!parsegrammar", $P102
  if_1808_end:
.annotate 'line', 1303
    find_lex $P102, "self"
    find_lex $P103, "$?CLASS"
    getattribute $P104, $P102, $P103, "$!parsegrammar"
    unless_null $P104, vivify_832
    new $P104, "Undef"
  vivify_832:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "parseactions" :anon :subid("199_1308672490.86084") :outer("165_1308672490.86084")
    .param pmc param_1812
    .param pmc param_1813 :slurpy
.annotate 'line', 1310
    .lex "self", param_1812
    .lex "@value", param_1813
.annotate 'line', 1311
    find_lex $P1815, "@value"
    unless_null $P1815, vivify_833
    $P1815 = root_new ['parrot';'ResizablePMCArray']
  vivify_833:
    set $N100, $P1815
    unless $N100, if_1814_end
.annotate 'line', 1312
    find_lex $P1816, "@value"
    unless_null $P1816, vivify_834
    $P1816 = root_new ['parrot';'ResizablePMCArray']
  vivify_834:
    set $P102, $P1816[0]
    unless_null $P102, vivify_835
    new $P102, "Undef"
  vivify_835:
    find_lex $P103, "self"
    find_lex $P104, "$?CLASS"
    setattribute $P103, $P104, "$!parseactions", $P102
  if_1814_end:
.annotate 'line', 1310
    find_lex $P102, "self"
    find_lex $P103, "$?CLASS"
    getattribute $P104, $P102, $P103, "$!parseactions"
    unless_null $P104, vivify_836
    new $P104, "Undef"
  vivify_836:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "astgrammar" :anon :subid("200_1308672490.86084") :outer("165_1308672490.86084")
    .param pmc param_1818
    .param pmc param_1819 :slurpy
.annotate 'line', 1317
    .lex "self", param_1818
    .lex "@value", param_1819
.annotate 'line', 1318
    find_lex $P1821, "@value"
    unless_null $P1821, vivify_837
    $P1821 = root_new ['parrot';'ResizablePMCArray']
  vivify_837:
    set $N100, $P1821
    unless $N100, if_1820_end
.annotate 'line', 1319
    find_lex $P1822, "@value"
    unless_null $P1822, vivify_838
    $P1822 = root_new ['parrot';'ResizablePMCArray']
  vivify_838:
    set $P102, $P1822[0]
    unless_null $P102, vivify_839
    new $P102, "Undef"
  vivify_839:
    find_lex $P103, "self"
    find_lex $P104, "$?CLASS"
    setattribute $P103, $P104, "$!astgrammar", $P102
  if_1820_end:
.annotate 'line', 1317
    find_lex $P102, "self"
    find_lex $P103, "$?CLASS"
    getattribute $P104, $P102, $P103, "$!astgrammar"
    unless_null $P104, vivify_840
    new $P104, "Undef"
  vivify_840:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "commandline_banner" :anon :subid("201_1308672490.86084") :outer("165_1308672490.86084")
    .param pmc param_1824
    .param pmc param_1825 :optional
    .param int has_param_1825 :opt_flag
.annotate 'line', 1324
    .lex "self", param_1824
    if has_param_1825, optparam_841
    new $P102, "Undef"
    set param_1825, $P102
  optparam_841:
    .lex "$value", param_1825
.annotate 'line', 1325
    find_lex $P103, "$value"
    unless_null $P103, vivify_842
    new $P103, "Undef"
  vivify_842:
    defined $I100, $P103
    unless $I100, if_1826_end
.annotate 'line', 1326
    find_lex $P104, "$value"
    unless_null $P104, vivify_843
    new $P104, "Undef"
  vivify_843:
    find_lex $P106, "self"
    find_lex $P107, "$?CLASS"
    setattribute $P106, $P107, "$!commandline_banner", $P104
  if_1826_end:
.annotate 'line', 1324
    find_lex $P103, "self"
    find_lex $P104, "$?CLASS"
    getattribute $P106, $P103, $P104, "$!commandline_banner"
    unless_null $P106, vivify_844
    new $P106, "Undef"
  vivify_844:
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "commandline_prompt" :anon :subid("202_1308672490.86084") :outer("165_1308672490.86084")
    .param pmc param_1828
    .param pmc param_1829 :optional
    .param int has_param_1829 :opt_flag
.annotate 'line', 1331
    .lex "self", param_1828
    if has_param_1829, optparam_845
    new $P102, "Undef"
    set param_1829, $P102
  optparam_845:
    .lex "$value", param_1829
.annotate 'line', 1332
    find_lex $P103, "$value"
    unless_null $P103, vivify_846
    new $P103, "Undef"
  vivify_846:
    defined $I100, $P103
    unless $I100, if_1830_end
.annotate 'line', 1333
    find_lex $P104, "$value"
    unless_null $P104, vivify_847
    new $P104, "Undef"
  vivify_847:
    find_lex $P106, "self"
    find_lex $P107, "$?CLASS"
    setattribute $P106, $P107, "$!commandline_prompt", $P104
  if_1830_end:
.annotate 'line', 1331
    find_lex $P103, "self"
    find_lex $P104, "$?CLASS"
    getattribute $P106, $P103, $P104, "$!commandline_prompt"
    unless_null $P106, vivify_848
    new $P106, "Undef"
  vivify_848:
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "compiler_progname" :anon :subid("203_1308672490.86084") :outer("165_1308672490.86084")
    .param pmc param_1832
    .param pmc param_1833 :optional
    .param int has_param_1833 :opt_flag
.annotate 'line', 1338
    .lex "self", param_1832
    if has_param_1833, optparam_849
    new $P102, "Undef"
    set param_1833, $P102
  optparam_849:
    .lex "$value", param_1833
.annotate 'line', 1339
    find_lex $P103, "$value"
    unless_null $P103, vivify_850
    new $P103, "Undef"
  vivify_850:
    defined $I100, $P103
    unless $I100, if_1834_end
.annotate 'line', 1340
    find_lex $P104, "$value"
    unless_null $P104, vivify_851
    new $P104, "Undef"
  vivify_851:
    find_lex $P106, "self"
    find_lex $P107, "$?CLASS"
    setattribute $P106, $P107, "$!compiler_progname", $P104
  if_1834_end:
.annotate 'line', 1338
    find_lex $P103, "self"
    find_lex $P104, "$?CLASS"
    getattribute $P106, $P103, $P104, "$!compiler_progname"
    unless_null $P106, vivify_852
    new $P106, "Undef"
  vivify_852:
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "commandline_options" :anon :subid("204_1308672490.86084") :outer("165_1308672490.86084")
    .param pmc param_1836
    .param pmc param_1837 :optional
    .param int has_param_1837 :opt_flag
.annotate 'line', 1345
    .lex "self", param_1836
    if has_param_1837, optparam_853
    $P1838 = root_new ['parrot';'ResizablePMCArray']
    set param_1837, $P1838
  optparam_853:
    .lex "@value", param_1837
.annotate 'line', 1346
    find_lex $P1840, "@value"
    unless_null $P1840, vivify_854
    $P1840 = root_new ['parrot';'ResizablePMCArray']
  vivify_854:
    set $N100, $P1840
    unless $N100, if_1839_end
.annotate 'line', 1347
    find_lex $P1841, "@value"
    unless_null $P1841, vivify_855
    $P1841 = root_new ['parrot';'ResizablePMCArray']
  vivify_855:
    find_lex $P102, "self"
    find_lex $P103, "$?CLASS"
    setattribute $P102, $P103, "@!cmdoptions", $P1841
  if_1839_end:
.annotate 'line', 1345
    find_lex $P102, "self"
    find_lex $P103, "$?CLASS"
    getattribute $P1842, $P102, $P103, "@!cmdoptions"
    unless_null $P1842, vivify_856
    $P1842 = root_new ['parrot';'ResizablePMCArray']
  vivify_856:
    .return ($P1842)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "command_line" :anon :subid("205_1308672490.86084") :outer("165_1308672490.86084")
    .param pmc param_1844
    .param pmc param_1845
    .param pmc param_1846 :slurpy :named
.annotate 'line', 1352
    .const 'Sub' $P1859 = "206_1308672490.86084" 
    capture_lex $P1859
    .lex "self", param_1844
    .lex "@args", param_1845
    .lex "%adverbs", param_1846
.annotate 'line', 1365
    new $P102, "Undef"
    set $P1847, $P102
    .lex "$program-name", $P1847
.annotate 'line', 1366
    new $P103, "Undef"
    set $P1848, $P103
    .lex "$res", $P1848
.annotate 'line', 1367
    $P1850 = root_new ['parrot';'Hash']
    set $P1849, $P1850
    .lex "%opts", $P1849
.annotate 'line', 1368
    $P1852 = root_new ['parrot';'ResizablePMCArray']
    set $P1851, $P1852
    .lex "@a", $P1851
.annotate 'line', 1361
    find_lex $P1854, "@args"
    unless_null $P1854, vivify_857
    $P1854 = root_new ['parrot';'ResizablePMCArray']
  vivify_857:
    set $P104, $P1854[2]
    unless_null $P104, vivify_858
    new $P104, "Undef"
  vivify_858:
    set $S100, $P104
    index $I100, $S100, "@INC"
    set $N100, $I100
    isge $I101, $N100, 0.0
    unless $I101, if_1853_end
.annotate 'line', 1362
    exit 0
  if_1853_end:
.annotate 'line', 1365
    find_lex $P1855, "@args"
    unless_null $P1855, vivify_859
    $P1855 = root_new ['parrot';'ResizablePMCArray']
  vivify_859:
    set $P104, $P1855[0]
    unless_null $P104, vivify_860
    new $P104, "Undef"
  vivify_860:
    store_lex "$program-name", $P104
.annotate 'line', 1366
    find_lex $P104, "self"
    find_lex $P1856, "@args"
    unless_null $P1856, vivify_861
    $P1856 = root_new ['parrot';'ResizablePMCArray']
  vivify_861:
    $P106 = $P104."process_args"($P1856)
    store_lex "$res", $P106
.annotate 'line', 1367
    find_lex $P104, "$res"
    unless_null $P104, vivify_862
    new $P104, "Undef"
  vivify_862:
    $P106 = $P104."options"()
    store_lex "%opts", $P106
.annotate 'line', 1368
    find_lex $P104, "$res"
    unless_null $P104, vivify_863
    new $P104, "Undef"
  vivify_863:
    $P106 = $P104."arguments"()
    store_lex "@a", $P106
.annotate 'line', 1370
    find_lex $P1857, "%opts"
    unless_null $P1857, vivify_864
    $P1857 = root_new ['parrot';'Hash']
  vivify_864:
    defined $I100, $P1857
    unless $I100, for_undef_865
    iter $P104, $P1857
    new $P107, 'ExceptionHandler'
    set_label $P107, loop1863_handler
    $P107."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P107
  loop1863_test:
    unless $P104, loop1863_done
    shift $P106, $P104
  loop1863_redo:
    .const 'Sub' $P1859 = "206_1308672490.86084" 
    capture_lex $P1859
    $P1859($P106)
  loop1863_next:
    goto loop1863_test
  loop1863_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P109, exception, 'type'
    eq $P109, .CONTROL_LOOP_NEXT, loop1863_next
    eq $P109, .CONTROL_LOOP_REDO, loop1863_redo
  loop1863_done:
    pop_eh 
  for_undef_865:
.annotate 'line', 1373
    find_lex $P1865, "%adverbs"
    unless_null $P1865, vivify_871
    $P1865 = root_new ['parrot';'Hash']
  vivify_871:
    set $P104, $P1865["help"]
    unless_null $P104, vivify_872
    new $P104, "Undef"
  vivify_872:
    unless $P104, if_1864_end
    find_lex $P106, "self"
    find_lex $P107, "$program-name"
    unless_null $P107, vivify_873
    new $P107, "Undef"
  vivify_873:
    $P106."usage"($P107)
  if_1864_end:
.annotate 'line', 1374
    find_lex $P1867, "%adverbs"
    unless_null $P1867, vivify_874
    $P1867 = root_new ['parrot';'Hash']
  vivify_874:
    set $P104, $P1867["version"]
    unless_null $P104, vivify_875
    new $P104, "Undef"
  vivify_875:
    unless $P104, if_1866_end
    find_lex $P106, "self"
    $P106."version"()
  if_1866_end:
.annotate 'line', 1375
    find_lex $P1869, "%adverbs"
    unless_null $P1869, vivify_876
    $P1869 = root_new ['parrot';'Hash']
  vivify_876:
    set $P104, $P1869["show-config"]
    unless_null $P104, vivify_877
    new $P104, "Undef"
  vivify_877:
    unless $P104, if_1868_end
    find_lex $P106, "self"
    $P106."show-config"()
  if_1868_end:
.annotate 'line', 1377

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
        
.annotate 'line', 1352
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1858"  :anon :subid("206_1308672490.86084") :outer("205_1308672490.86084")
    .param pmc param_1860
.annotate 'line', 1370
    .lex "$k", param_1860
.annotate 'line', 1371
    find_lex $P107, "$k"
    unless_null $P107, vivify_866
    new $P107, "Undef"
  vivify_866:
    find_lex $P1861, "%opts"
    unless_null $P1861, vivify_867
    $P1861 = root_new ['parrot';'Hash']
  vivify_867:
    set $P108, $P1861[$P107]
    unless_null $P108, vivify_868
    new $P108, "Undef"
  vivify_868:
    find_lex $P109, "$k"
    unless_null $P109, vivify_869
    new $P109, "Undef"
  vivify_869:
    find_lex $P1862, "%adverbs"
    unless_null $P1862, vivify_870
    $P1862 = root_new ['parrot';'Hash']
    store_lex "%adverbs", $P1862
  vivify_870:
    set $P1862[$P109], $P108
.annotate 'line', 1370
    .return ($P108)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "process_args" :anon :subid("207_1308672490.86084") :outer("165_1308672490.86084")
    .param pmc param_1871
    .param pmc param_1872
.annotate 'line', 1470
    .const 'Sub' $P1878 = "208_1308672490.86084" 
    capture_lex $P1878
    .lex "self", param_1871
    .lex "@args", param_1872
.annotate 'line', 1474
    new $P102, "Undef"
    set $P1873, $P102
    .lex "$p", $P1873
.annotate 'line', 1477
    new $P103, "Undef"
    set $P1874, $P103
    .lex "$res", $P1874
.annotate 'line', 1472
    find_lex $P104, "self"
    find_lex $P1875, "@args"
    unless_null $P1875, vivify_878
    $P1875 = root_new ['parrot';'ResizablePMCArray']
  vivify_878:
    $P106 = $P1875."shift"()
    $P104."compiler_progname"($P106)
.annotate 'line', 1474
    get_hll_global $P104, "GLOBAL"
    nqp_get_package_through_who $P106, $P104, "HLL"
    nqp_get_package_through_who $P107, $P106, "CommandLine"
    get_who $P108, $P107
    set $P109, $P108["Parser"]
    find_lex $P110, "self"
    find_lex $P111, "$?CLASS"
    getattribute $P1876, $P110, $P111, "@!cmdoptions"
    unless_null $P1876, vivify_879
    $P1876 = root_new ['parrot';'ResizablePMCArray']
  vivify_879:
    $P112 = $P109."new"($P1876)
    store_lex "$p", $P112
.annotate 'line', 1475
    find_lex $P104, "$p"
    unless_null $P104, vivify_880
    new $P104, "Undef"
  vivify_880:
    $P104."add-stopper"("-e")
.annotate 'line', 1476
    find_lex $P104, "$p"
    unless_null $P104, vivify_881
    new $P104, "Undef"
  vivify_881:
    $P104."stop-after-first-arg"()
.annotate 'line', 1470
    find_lex $P104, "$res"
    unless_null $P104, vivify_882
    new $P104, "Undef"
  vivify_882:
.annotate 'line', 1478
    .const 'Sub' $P1878 = "208_1308672490.86084" 
    capture_lex $P1878
    $P1878()
.annotate 'line', 1470
    find_lex $P104, "$res"
    unless_null $P104, vivify_886
    new $P104, "Undef"
  vivify_886:
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1877"  :anon :subid("208_1308672490.86084") :outer("207_1308672490.86084")
.annotate 'line', 1478
    .const 'Sub' $P1886 = "209_1308672490.86084" 
    capture_lex $P1886
    new $P1882, 'ExceptionHandler'
    set_label $P1882, control_1881
    $P1882."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P1882
.annotate 'line', 1479
    find_lex $P104, "$p"
    unless_null $P104, vivify_883
    new $P104, "Undef"
  vivify_883:
    find_lex $P1879, "@args"
    unless_null $P1879, vivify_884
    $P1879 = root_new ['parrot';'ResizablePMCArray']
  vivify_884:
    $P106 = $P104."parse"($P1879)
    store_lex "$res", $P106
.annotate 'line', 1478
    pop_eh 
    goto skip_handler_1880
  control_1881:
.annotate 'line', 1480
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P1886 = "209_1308672490.86084" 
    newclosure $P1892, $P1886
    $P1892(exception)
    new $P1893, 'Integer'
    set $P1893, 1
    set exception["handled"], $P1893
    set $I1894, exception["handled"]
    ne $I1894, 1, nothandled_1884
  handled_1883:
    .return (exception)
  nothandled_1884:
    rethrow exception
  skip_handler_1880:
.annotate 'line', 1478
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1885"  :anon :subid("209_1308672490.86084") :outer("208_1308672490.86084")
    .param pmc param_1887
.annotate 'line', 1480
    .lex "$_", param_1887
    find_lex $P1888, "$_"
    set $P1889, $P1888
    .lex "$!", $P1889
.annotate 'line', 1481
    find_lex $P1890, "$_"
    unless_null $P1890, vivify_885
    new $P1890, "Undef"
  vivify_885:
    say $P1890
.annotate 'line', 1482
    find_lex $P1891, "self"
    $P1891."usage"()
.annotate 'line', 1483
    exit 1
.annotate 'line', 1480
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "evalfiles" :anon :subid("210_1308672490.86084") :outer("165_1308672490.86084")
    .param pmc param_1898
    .param pmc param_1899
    .param pmc param_1900 :slurpy
    .param pmc param_1901 :slurpy :named
.annotate 'line', 1489
    .const 'Sub' $P1916 = "211_1308672490.86084" 
    capture_lex $P1916
    new $P1897, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1897, control_1896
    push_eh $P1897
    .lex "self", param_1898
    .lex "$files", param_1899
    .lex "@args", param_1900
    .lex "%adverbs", param_1901
.annotate 'line', 1490
    new $P102, "Undef"
    set $P1902, $P102
    .lex "$target", $P1902
.annotate 'line', 1491
    new $P103, "Undef"
    set $P1903, $P103
    .lex "$encoding", $P1903
.annotate 'line', 1492
    $P1905 = root_new ['parrot';'ResizablePMCArray']
    set $P1904, $P1905
    .lex "@files", $P1904
.annotate 'line', 1493
    $P1907 = root_new ['parrot';'ResizablePMCArray']
    set $P1906, $P1907
    .lex "@codes", $P1906
.annotate 'line', 1510
    new $P104, "Undef"
    set $P1908, $P104
    .lex "$code", $P1908
.annotate 'line', 1512
    new $P106, "Undef"
    set $P1909, $P106
    .lex "$r", $P1909
.annotate 'line', 1490
    find_lex $P1910, "%adverbs"
    unless_null $P1910, vivify_887
    $P1910 = root_new ['parrot';'Hash']
  vivify_887:
    set $P107, $P1910["target"]
    unless_null $P107, vivify_888
    new $P107, "Undef"
  vivify_888:
    set $S100, $P107
    downcase $S101, $S100
    new $P108, 'String'
    set $P108, $S101
    store_lex "$target", $P108
.annotate 'line', 1491
    find_lex $P1911, "%adverbs"
    unless_null $P1911, vivify_889
    $P1911 = root_new ['parrot';'Hash']
  vivify_889:
    set $P107, $P1911["encoding"]
    unless_null $P107, vivify_890
    new $P107, "Undef"
  vivify_890:
    store_lex "$encoding", $P107
.annotate 'line', 1492
    find_lex $P108, "$files"
    unless_null $P108, vivify_891
    new $P108, "Undef"
  vivify_891:
    does $I100, $P108, "array"
    if $I100, if_1912
    find_lex $P110, "$files"
    unless_null $P110, vivify_892
    new $P110, "Undef"
  vivify_892:
    new $P111, "ResizablePMCArray"
    push $P111, $P110
    set $P107, $P111
    goto if_1912_end
  if_1912:
    find_lex $P109, "$files"
    unless_null $P109, vivify_893
    new $P109, "Undef"
  vivify_893:
    set $P107, $P109
  if_1912_end:
    store_lex "@files", $P107
.annotate 'line', 1489
    find_lex $P1913, "@codes"
    unless_null $P1913, vivify_894
    $P1913 = root_new ['parrot';'ResizablePMCArray']
  vivify_894:
.annotate 'line', 1494
    find_lex $P1914, "@files"
    unless_null $P1914, vivify_895
    $P1914 = root_new ['parrot';'ResizablePMCArray']
  vivify_895:
    defined $I100, $P1914
    unless $I100, for_undef_896
    iter $P107, $P1914
    new $P112, 'ExceptionHandler'
    set_label $P112, loop1940_handler
    $P112."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P112
  loop1940_test:
    unless $P107, loop1940_done
    shift $P108, $P107
  loop1940_redo:
    .const 'Sub' $P1916 = "211_1308672490.86084" 
    capture_lex $P1916
    $P1916($P108)
  loop1940_next:
    goto loop1940_test
  loop1940_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P113, exception, 'type'
    eq $P113, .CONTROL_LOOP_NEXT, loop1940_next
    eq $P113, .CONTROL_LOOP_REDO, loop1940_redo
  loop1940_done:
    pop_eh 
  for_undef_896:
.annotate 'line', 1510
    find_lex $P1941, "@codes"
    unless_null $P1941, vivify_906
    $P1941 = root_new ['parrot';'ResizablePMCArray']
  vivify_906:
    join $S100, "", $P1941
    new $P107, 'String'
    set $P107, $S100
    store_lex "$code", $P107
.annotate 'line', 1512
    find_lex $P107, "self"
    find_lex $P108, "$code"
    unless_null $P108, vivify_907
    new $P108, "Undef"
  vivify_907:
    find_lex $P1942, "@args"
    unless_null $P1942, vivify_908
    $P1942 = root_new ['parrot';'ResizablePMCArray']
  vivify_908:
    find_lex $P1943, "%adverbs"
    unless_null $P1943, vivify_909
    $P1943 = root_new ['parrot';'Hash']
  vivify_909:
    $P109 = $P107."eval"($P108, $P1942 :flat, $P1943 :flat)
    store_lex "$r", $P109
.annotate 'line', 1513
    find_lex $P109, "$target"
    unless_null $P109, vivify_910
    new $P109, "Undef"
  vivify_910:
    set $S100, $P109
    iseq $I100, $S100, ""
    unless $I100, unless_1945
    new $P108, 'Integer'
    set $P108, $I100
    goto unless_1945_end
  unless_1945:
    find_lex $P110, "$target"
    unless_null $P110, vivify_911
    new $P110, "Undef"
  vivify_911:
    set $S101, $P110
    iseq $I101, $S101, "pir"
    new $P108, 'Integer'
    set $P108, $I101
  unless_1945_end:
    if $P108, if_1944
.annotate 'line', 1516
    new $P111, "Exception"
    set $P111['type'], .CONTROL_RETURN
    find_lex $P112, "self"
    find_lex $P113, "$r"
    unless_null $P113, vivify_912
    new $P113, "Undef"
  vivify_912:
    find_lex $P114, "$target"
    unless_null $P114, vivify_913
    new $P114, "Undef"
  vivify_913:
    find_lex $P1946, "%adverbs"
    unless_null $P1946, vivify_914
    $P1946 = root_new ['parrot';'Hash']
  vivify_914:
    $P115 = $P112."dumper"($P113, $P114, $P1946 :flat)
    setattribute $P111, 'payload', $P115
    throw $P111
.annotate 'line', 1515
    goto if_1944_end
  if_1944:
.annotate 'line', 1514
    new $P111, "Exception"
    set $P111['type'], .CONTROL_RETURN
    find_lex $P112, "$r"
    unless_null $P112, vivify_915
    new $P112, "Undef"
  vivify_915:
    setattribute $P111, 'payload', $P112
    throw $P111
  if_1944_end:
.annotate 'line', 1489
    .return ($P107)
  control_1896:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P108, exception, "payload"
    .return ($P108)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1915"  :anon :subid("211_1308672490.86084") :outer("210_1308672490.86084")
    .param pmc param_1919
.annotate 'line', 1494
    .const 'Sub' $P1921 = "212_1308672490.86084" 
    capture_lex $P1921
.annotate 'line', 1495
    new $P109, "Undef"
    set $P1917, $P109
    .lex "$in-handle", $P1917
.annotate 'line', 1496
    new $P110, "Undef"
    set $P1918, $P110
    .lex "$err", $P1918
    .lex "$_", param_1919
.annotate 'line', 1495
    new $P111, "FileHandle"
    store_lex "$in-handle", $P111
.annotate 'line', 1496
    new $P111, "Integer"
    assign $P111, 0
    store_lex "$err", $P111
.annotate 'line', 1497
    .const 'Sub' $P1921 = "212_1308672490.86084" 
    capture_lex $P1921
    $P1921()
.annotate 'line', 1508
    find_lex $P112, "$err"
    unless_null $P112, vivify_904
    new $P112, "Undef"
  vivify_904:
    if $P112, if_1939
    set $P111, $P112
    goto if_1939_end
  if_1939:
    find_lex $P113, "$err"
    unless_null $P113, vivify_905
    new $P113, "Undef"
  vivify_905:
    die $P113
  if_1939_end:
.annotate 'line', 1494
    .return ($P111)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1920"  :anon :subid("212_1308672490.86084") :outer("211_1308672490.86084")
.annotate 'line', 1497
    .const 'Sub' $P1929 = "213_1308672490.86084" 
    capture_lex $P1929
    new $P1925, 'ExceptionHandler'
    set_label $P1925, control_1924
    $P1925."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P1925
.annotate 'line', 1501
    find_lex $P111, "$in-handle"
    unless_null $P111, vivify_897
    new $P111, "Undef"
  vivify_897:
    find_lex $P112, "$encoding"
    unless_null $P112, vivify_898
    new $P112, "Undef"
  vivify_898:
    $P111."encoding"($P112)
.annotate 'line', 1502
    find_lex $P1922, "@codes"
    unless_null $P1922, vivify_899
    $P1922 = root_new ['parrot';'ResizablePMCArray']
  vivify_899:
    find_lex $P111, "$in-handle"
    unless_null $P111, vivify_900
    new $P111, "Undef"
  vivify_900:
    find_lex $P112, "$_"
    unless_null $P112, vivify_901
    new $P112, "Undef"
  vivify_901:
    $P113 = $P111."readall"($P112)
    push $P1922, $P113
.annotate 'line', 1503
    find_lex $P111, "$in-handle"
    unless_null $P111, vivify_902
    new $P111, "Undef"
  vivify_902:
    $P111."close"()
.annotate 'line', 1497
    pop_eh 
    goto skip_handler_1923
  control_1924:
.annotate 'line', 1504
    .local pmc exception 
    .get_results (exception) 
    .const 'Sub' $P1929 = "213_1308672490.86084" 
    newclosure $P1936, $P1929
    $P1936(exception)
    new $P1937, 'Integer'
    set $P1937, 1
    set exception["handled"], $P1937
    set $I1938, exception["handled"]
    ne $I1938, 1, nothandled_1927
  handled_1926:
    .return (exception)
  nothandled_1927:
    rethrow exception
  skip_handler_1923:
.annotate 'line', 1497
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1928"  :anon :subid("213_1308672490.86084") :outer("212_1308672490.86084")
    .param pmc param_1930
.annotate 'line', 1504
    .lex "$_", param_1930
    find_lex $P1931, "$_"
    set $P1932, $P1931
    .lex "$!", $P1932
.annotate 'line', 1505
    new $P1933, 'String'
    set $P1933, "Error while reading from file: "
    find_lex $P1934, "$_"
    unless_null $P1934, vivify_903
    new $P1934, "Undef"
  vivify_903:
    concat $P1935, $P1933, $P1934
    store_lex "$err", $P1935
.annotate 'line', 1504
    .return ($P1935)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "compile" :anon :subid("214_1308672490.86084") :outer("165_1308672490.86084")
    .param pmc param_1950
    .param pmc param_1951
    .param pmc param_1952 :slurpy :named
.annotate 'line', 1520
    .const 'Sub' $P1961 = "215_1308672490.86084" 
    capture_lex $P1961
    new $P1949, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1949, control_1948
    push_eh $P1949
    .lex "self", param_1950
    .lex "$source", param_1951
    .lex "%adverbs", param_1952
.annotate 'line', 1521
    $P1954 = root_new ['parrot';'Hash']
    set $P1953, $P1954
    .lex "%*COMPILING", $P1953
.annotate 'line', 1523
    new $P102, "Undef"
    set $P1955, $P102
    .lex "$target", $P1955
.annotate 'line', 1524
    new $P103, "Undef"
    set $P1956, $P103
    .lex "$result", $P1956
.annotate 'line', 1525
    new $P104, "Undef"
    set $P1957, $P104
    .lex "$stderr", $P1957
.annotate 'line', 1521
    find_lex $P1958, "%adverbs"
    unless_null $P1958, vivify_916
    $P1958 = root_new ['parrot';'Hash']
  vivify_916:
    find_lex $P108, "%*COMPILING"
    unless_null $P108, vivify_917
    get_hll_global $P106, "GLOBAL"
    get_who $P107, $P106
    set $P108, $P107["%COMPILING"]
    unless_null $P108, vivify_918
    die "Contextual %*COMPILING not found"
  vivify_918:
    store_lex "%*COMPILING", $P108
  vivify_917:
    set $P108["%?OPTIONS"], $P1958
.annotate 'line', 1523
    find_lex $P1959, "%adverbs"
    unless_null $P1959, vivify_919
    $P1959 = root_new ['parrot';'Hash']
  vivify_919:
    set $P106, $P1959["target"]
    unless_null $P106, vivify_920
    new $P106, "Undef"
  vivify_920:
    set $S100, $P106
    downcase $S101, $S100
    new $P107, 'String'
    set $P107, $S101
    store_lex "$target", $P107
.annotate 'line', 1524
    find_lex $P106, "$source"
    unless_null $P106, vivify_921
    new $P106, "Undef"
  vivify_921:
    store_lex "$result", $P106
.annotate 'line', 1525
    getinterp $P106
    $P107 = $P106."stderr_handle"()
    store_lex "$stderr", $P107
.annotate 'line', 1526
    find_lex $P107, "self"
    $P108 = $P107."stages"()
    defined $I100, $P108
    unless $I100, for_undef_922
    iter $P106, $P108
    new $P113, 'ExceptionHandler'
    set_label $P113, loop1969_handler
    $P113."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P113
  loop1969_test:
    unless $P106, loop1969_done
    shift $P109, $P106
  loop1969_redo:
    .const 'Sub' $P1961 = "215_1308672490.86084" 
    capture_lex $P1961
    $P1961($P109)
  loop1969_next:
    goto loop1969_test
  loop1969_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P114, exception, 'type'
    eq $P114, .CONTROL_LOOP_NEXT, loop1969_next
    eq $P114, .CONTROL_LOOP_REDO, loop1969_redo
  loop1969_done:
    pop_eh 
  for_undef_922:
.annotate 'line', 1536
    new $P106, "Exception"
    set $P106['type'], .CONTROL_RETURN
    find_lex $P107, "$result"
    unless_null $P107, vivify_934
    new $P107, "Undef"
  vivify_934:
    setattribute $P106, 'payload', $P107
    throw $P106
.annotate 'line', 1520
    .return ()
  control_1948:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P106, exception, "payload"
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1960"  :anon :subid("215_1308672490.86084") :outer("214_1308672490.86084")
    .param pmc param_1964
.annotate 'line', 1527
    new $P110, "Undef"
    set $P1962, $P110
    .lex "$timestamp", $P1962
.annotate 'line', 1529
    new $P111, "Undef"
    set $P1963, $P111
    .lex "$diff", $P1963
    .lex "$_", param_1964
.annotate 'line', 1527
    time $N100
    new $P112, 'Float'
    set $P112, $N100
    store_lex "$timestamp", $P112
.annotate 'line', 1528
    find_lex $P112, "self"
    find_lex $P113, "$result"
    unless_null $P113, vivify_923
    new $P113, "Undef"
  vivify_923:
    find_lex $P1965, "%adverbs"
    unless_null $P1965, vivify_924
    $P1965 = root_new ['parrot';'Hash']
  vivify_924:
    find_lex $P114, "$_"
    unless_null $P114, vivify_925
    new $P114, "Undef"
  vivify_925:
    set $S100, $P114
    $P115 = $P112.$S100($P113, $P1965 :flat)
    store_lex "$result", $P115
.annotate 'line', 1529
    time $N100
    new $P112, 'Float'
    set $P112, $N100
    find_lex $P113, "$timestamp"
    unless_null $P113, vivify_926
    new $P113, "Undef"
  vivify_926:
    sub $P114, $P112, $P113
    store_lex "$diff", $P114
.annotate 'line', 1530
    find_lex $P1967, "%adverbs"
    unless_null $P1967, vivify_927
    $P1967 = root_new ['parrot';'Hash']
  vivify_927:
    set $P112, $P1967["stagestats"]
    unless_null $P112, vivify_928
    new $P112, "Undef"
  vivify_928:
    unless $P112, if_1966_end
.annotate 'line', 1532
    find_lex $P113, "$stderr"
    unless_null $P113, vivify_929
    new $P113, "Undef"
  vivify_929:
    new $P114, 'String'
    set $P114, "Stage "
    find_lex $P115, "$_"
    unless_null $P115, vivify_930
    new $P115, "Undef"
  vivify_930:
    concat $P116, $P114, $P115
    concat $P117, $P116, ": "
    find_lex $P118, "$diff"
    unless_null $P118, vivify_931
    new $P118, "Undef"
  vivify_931:
    concat $P119, $P117, $P118
    concat $P120, $P119, "\n"
    $P113."print__N"($P120)
  if_1966_end:
.annotate 'line', 1534
    find_lex $P113, "$_"
    unless_null $P113, vivify_932
    new $P113, "Undef"
  vivify_932:
    set $S100, $P113
    find_lex $P114, "$target"
    unless_null $P114, vivify_933
    new $P114, "Undef"
  vivify_933:
    set $S101, $P114
    iseq $I101, $S100, $S101
    if $I101, if_1968
    new $P112, 'Integer'
    set $P112, $I101
    goto if_1968_end
  if_1968:
    die 0, .CONTROL_LOOP_LAST
  if_1968_end:
.annotate 'line', 1526
    .return ($P112)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "parse" :anon :subid("216_1308672490.86084") :outer("165_1308672490.86084")
    .param pmc param_1973
    .param pmc param_1974
    .param pmc param_1975 :slurpy :named
.annotate 'line', 1539
    .const 'Sub' $P1984 = "217_1308672490.86084" 
    capture_lex $P1984
    new $P1972, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P1972, control_1971
    push_eh $P1972
    .lex "self", param_1973
    .lex "$source", param_1974
    .lex "%adverbs", param_1975
.annotate 'line', 1540
    new $P102, "Undef"
    set $P1976, $P102
    .lex "$s", $P1976
.annotate 'line', 1549
    new $P103, "Undef"
    set $P1977, $P103
    .lex "$grammar", $P1977
.annotate 'line', 1550
    new $P104, "Undef"
    set $P1978, $P104
    .lex "$actions", $P1978
.annotate 'line', 1552
    new $P106, "Undef"
    set $P1979, $P106
    .lex "$match", $P1979
.annotate 'line', 1540
    find_lex $P107, "$source"
    unless_null $P107, vivify_935
    new $P107, "Undef"
  vivify_935:
    store_lex "$s", $P107
.annotate 'line', 1541
    find_lex $P1981, "%adverbs"
    unless_null $P1981, vivify_936
    $P1981 = root_new ['parrot';'Hash']
  vivify_936:
    set $P107, $P1981["transcode"]
    unless_null $P107, vivify_937
    new $P107, "Undef"
  vivify_937:
    unless $P107, if_1980_end
.annotate 'line', 1542
    find_lex $P1982, "%adverbs"
    unless_null $P1982, vivify_938
    $P1982 = root_new ['parrot';'Hash']
  vivify_938:
    set $P109, $P1982["transcode"]
    unless_null $P109, vivify_939
    new $P109, "Undef"
  vivify_939:
    set $S100, $P109
    split $P110, " ", $S100
    defined $I100, $P110
    unless $I100, for_undef_940
    iter $P108, $P110
    new $P113, 'ExceptionHandler'
    set_label $P113, loop1995_handler
    $P113."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P113
  loop1995_test:
    unless $P108, loop1995_done
    shift $P111, $P108
  loop1995_redo:
    .const 'Sub' $P1984 = "217_1308672490.86084" 
    capture_lex $P1984
    $P1984($P111)
  loop1995_next:
    goto loop1995_test
  loop1995_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P114, exception, 'type'
    eq $P114, .CONTROL_LOOP_NEXT, loop1995_next
    eq $P114, .CONTROL_LOOP_REDO, loop1995_redo
  loop1995_done:
    pop_eh 
  for_undef_940:
  if_1980_end:
.annotate 'line', 1549
    find_lex $P107, "self"
    $P108 = $P107."parsegrammar"()
    store_lex "$grammar", $P108
.annotate 'line', 1539
    find_lex $P107, "$actions"
    unless_null $P107, vivify_943
    new $P107, "Undef"
  vivify_943:
.annotate 'line', 1551
    find_lex $P1997, "%adverbs"
    unless_null $P1997, vivify_944
    $P1997 = root_new ['parrot';'Hash']
  vivify_944:
    set $P107, $P1997["target"]
    unless_null $P107, vivify_945
    new $P107, "Undef"
  vivify_945:
    set $S100, $P107
    iseq $I100, $S100, "parse"
    if $I100, unless_1996_end
    find_lex $P108, "self"
    $P109 = $P108."parseactions"()
    store_lex "$actions", $P109
  unless_1996_end:
.annotate 'line', 1552
    find_lex $P107, "$grammar"
    unless_null $P107, vivify_946
    new $P107, "Undef"
  vivify_946:
    find_lex $P108, "$s"
    unless_null $P108, vivify_947
    new $P108, "Undef"
  vivify_947:
    find_lex $P109, "$actions"
    unless_null $P109, vivify_948
    new $P109, "Undef"
  vivify_948:
    find_lex $P1998, "%adverbs"
    unless_null $P1998, vivify_949
    $P1998 = root_new ['parrot';'Hash']
  vivify_949:
    set $P110, $P1998["rxtrace"]
    unless_null $P110, vivify_950
    new $P110, "Undef"
  vivify_950:
    $P111 = $P107."parse"($P108, 0 :named("p"), $P109 :named("actions"), $P110 :named("rxtrace"))
    store_lex "$match", $P111
.annotate 'line', 1553
    find_lex $P107, "$match"
    unless_null $P107, vivify_951
    new $P107, "Undef"
  vivify_951:
    if $P107, unless_1999_end
    find_lex $P108, "self"
    $P108."panic"("Unable to parse source")
  unless_1999_end:
.annotate 'line', 1554
    new $P107, "Exception"
    set $P107['type'], .CONTROL_RETURN
    find_lex $P108, "$match"
    unless_null $P108, vivify_952
    new $P108, "Undef"
  vivify_952:
    setattribute $P107, 'payload', $P108
    throw $P107
.annotate 'line', 1539
    .return ()
  control_1971:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P107, exception, "payload"
    .return ($P107)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block1983"  :anon :subid("217_1308672490.86084") :outer("216_1308672490.86084")
    .param pmc param_1985
.annotate 'line', 1542
    .const 'Sub' $P1987 = "218_1308672490.86084" 
    capture_lex $P1987
    .lex "$_", param_1985
.annotate 'line', 1543
    .const 'Sub' $P1987 = "218_1308672490.86084" 
    capture_lex $P1987
    $P112 = $P1987()
.annotate 'line', 1542
    .return ($P112)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block1986"  :anon :subid("218_1308672490.86084") :outer("217_1308672490.86084")
.annotate 'line', 1543
    new $P1990, 'ExceptionHandler'
    set_label $P1990, control_1989
    $P1990."handle_types_except"(.CONTROL_RETURN,  .CONTROL_OK,  .CONTROL_BREAK,  .CONTROL_CONTINUE,  .CONTROL_TAKE,  .CONTROL_LEAVE,  .CONTROL_EXIT,  .CONTROL_LOOP_NEXT,  .CONTROL_LOOP_LAST,  .CONTROL_LOOP_REDO)
    push_eh $P1990
.annotate 'line', 1544
    find_lex $P112, "$s"
    unless_null $P112, vivify_941
    new $P112, "Undef"
  vivify_941:
    set $S101, $P112
.annotate 'line', 1545
    find_lex $P113, "$_"
    unless_null $P113, vivify_942
    new $P113, "Undef"
  vivify_942:
    set $S102, $P113
    find_encoding $I101, $S102
    trans_encoding $S103, $S101, $I101
.annotate 'line', 1544
    new $P114, 'String'
    set $P114, $S103
    store_lex "$s", $P114
.annotate 'line', 1543
    pop_eh 
    goto skip_handler_1988
  control_1989:
    .local pmc exception 
    .get_results (exception) 
    new $P1993, 'Integer'
    set $P1993, 1
    set exception["handled"], $P1993
    set $I1994, exception["handled"]
    ne $I1994, 1, nothandled_1992
  handled_1991:
    .return (exception)
  nothandled_1992:
    rethrow exception
  skip_handler_1988:
    .return ($P114)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "past" :anon :subid("219_1308672490.86084") :outer("165_1308672490.86084")
    .param pmc param_2001
    .param pmc param_2002
    .param pmc param_2003 :slurpy :named
.annotate 'line', 1557
    .lex "self", param_2001
    .lex "$source", param_2002
    .lex "%adverbs", param_2003
.annotate 'line', 1558

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
        
.annotate 'line', 1557
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "post" :anon :subid("220_1308672490.86084") :outer("165_1308672490.86084")
    .param pmc param_2005
    .param pmc param_2006
    .param pmc param_2007 :slurpy :named
.annotate 'line', 1597
    .lex "self", param_2005
    .lex "$source", param_2006
    .lex "%adverbs", param_2007
.annotate 'line', 1598
    compreg $P102, "PAST"
    find_lex $P103, "$source"
    unless_null $P103, vivify_953
    new $P103, "Undef"
  vivify_953:
    find_lex $P2008, "%adverbs"
    unless_null $P2008, vivify_954
    $P2008 = root_new ['parrot';'Hash']
  vivify_954:
    $P104 = $P102."to_post"($P103, $P2008 :flat)
.annotate 'line', 1597
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "pirbegin" :anon :subid("221_1308672490.86084") :outer("165_1308672490.86084")
    .param pmc param_2010
.annotate 'line', 1601
    .lex "self", param_2010
.annotate 'line', 1603
    new $P102, "String"
    assign $P102, ".include 'cclass.pasm'\n"
    concat $P103, $P102, ".include 'except_severity.pasm'\n"
    concat $P104, $P103, ".include 'except_types.pasm'\n"
.annotate 'line', 1604
    concat $P106, $P104, ".include 'iglobals.pasm'\n"
.annotate 'line', 1605
    concat $P107, $P106, ".include 'interpinfo.pasm'\n"
.annotate 'line', 1606
    concat $P108, $P107, ".include 'iterator.pasm'\n"
.annotate 'line', 1607
    concat $P109, $P108, ".include 'sysinfo.pasm'\n"
.annotate 'line', 1608
    concat $P110, $P109, ".include 'datatypes.pasm'\n"
.annotate 'line', 1601
    .return ($P110)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "pir" :anon :subid("222_1308672490.86084") :outer("165_1308672490.86084")
    .param pmc param_2012
    .param pmc param_2013
    .param pmc param_2014 :slurpy :named
.annotate 'line', 1612
    .lex "self", param_2012
    .lex "$source", param_2013
    .lex "%adverbs", param_2014
.annotate 'line', 1613
    find_lex $P102, "self"
    $P103 = $P102."pirbegin"()
    compreg $P104, "POST"
    find_lex $P106, "$source"
    unless_null $P106, vivify_955
    new $P106, "Undef"
  vivify_955:
    find_lex $P2015, "%adverbs"
    unless_null $P2015, vivify_956
    $P2015 = root_new ['parrot';'Hash']
  vivify_956:
    $S100 = $P104."to_pir"($P106, $P2015 :flat)
    concat $P107, $P103, $S100
.annotate 'line', 1612
    .return ($P107)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "evalpmc" :anon :subid("223_1308672490.86084") :outer("165_1308672490.86084")
    .param pmc param_2017
    .param pmc param_2018
    .param pmc param_2019 :slurpy :named
.annotate 'line', 1616
    .lex "self", param_2017
    .lex "$source", param_2018
    .lex "%adverbs", param_2019
.annotate 'line', 1617
    new $P102, "Undef"
    set $P2020, $P102
    .lex "$compiler", $P2020
    compreg $P103, "PIR"
    store_lex "$compiler", $P103
.annotate 'line', 1618
    find_lex $P103, "$compiler"
    unless_null $P103, vivify_957
    new $P103, "Undef"
  vivify_957:
    find_lex $P104, "$source"
    unless_null $P104, vivify_958
    new $P104, "Undef"
  vivify_958:
    $P106 = $P103($P104)
.annotate 'line', 1616
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "dumper" :anon :subid("224_1308672490.86084") :outer("165_1308672490.86084")
    .param pmc param_2022
    .param pmc param_2023
    .param pmc param_2024
    .param pmc param_2025 :slurpy :named
.annotate 'line', 1621
    .const 'Sub' $P2029 = "225_1308672490.86084" 
    capture_lex $P2029
    .lex "self", param_2022
    .lex "$obj", param_2023
    .lex "$name", param_2024
    .lex "%options", param_2025
.annotate 'line', 1622
    find_lex $P2027, "%options"
    unless_null $P2027, vivify_959
    $P2027 = root_new ['parrot';'Hash']
  vivify_959:
    set $P103, $P2027["dumper"]
    unless_null $P103, vivify_960
    new $P103, "Undef"
  vivify_960:
    if $P103, if_2026
.annotate 'line', 1628
    find_lex $P107, "$obj"
    unless_null $P107, vivify_961
    new $P107, "Undef"
  vivify_961:
    find_lex $P108, "$name"
    unless_null $P108, vivify_962
    new $P108, "Undef"
  vivify_962:
    $P110 = "_dumper"($P107, $P108)
.annotate 'line', 1627
    set $P102, $P110
.annotate 'line', 1622
    goto if_2026_end
  if_2026:
    .const 'Sub' $P2029 = "225_1308672490.86084" 
    capture_lex $P2029
    $P106 = $P2029()
    set $P102, $P106
  if_2026_end:
.annotate 'line', 1621
    .return ($P102)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2028"  :anon :subid("225_1308672490.86084") :outer("224_1308672490.86084")
.annotate 'line', 1624
    new $P104, "Undef"
    set $P2030, $P104
    .lex "$dumper", $P2030
.annotate 'line', 1623
    load_bytecode "PCT/Dumper.pbc"
.annotate 'line', 1624
    find_lex $P2031, "%options"
    unless_null $P2031, vivify_963
    $P2031 = root_new ['parrot';'Hash']
  vivify_963:
    set $P106, $P2031["dumper"]
    unless_null $P106, vivify_964
    new $P106, "Undef"
  vivify_964:
    set $S100, $P106
    downcase $S101, $S100
    get_hll_global $P107, "GLOBAL"
    nqp_get_package_through_who $P108, $P107, "PCT"
    get_who $P109, $P108
    set $P2032, $P109["Dumper"]
    unless_null $P2032, vivify_965
    $P2032 = root_new ['parrot';'Hash']
  vivify_965:
    set $P110, $P2032[$S101]
    unless_null $P110, vivify_966
    new $P110, "Undef"
  vivify_966:
    store_lex "$dumper", $P110
.annotate 'line', 1625
    find_lex $P106, "$dumper"
    unless_null $P106, vivify_967
    new $P106, "Undef"
  vivify_967:
    find_lex $P107, "$obj"
    unless_null $P107, vivify_968
    new $P107, "Undef"
  vivify_968:
    find_lex $P108, "$name"
    unless_null $P108, vivify_969
    new $P108, "Undef"
  vivify_969:
    $P109 = $P106($P107, $P108)
.annotate 'line', 1622
    .return ($P109)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "usage" :anon :subid("226_1308672490.86084") :outer("165_1308672490.86084")
    .param pmc param_2034
    .param pmc param_2035 :optional
    .param int has_param_2035 :opt_flag
.annotate 'line', 1632
    .lex "self", param_2034
    if has_param_2035, optparam_970
    new $P102, "Undef"
    set param_2035, $P102
  optparam_970:
    .lex "$name", param_2035
.annotate 'line', 1633
    find_lex $P103, "$name"
    unless_null $P103, vivify_971
    new $P103, "Undef"
  vivify_971:
    unless $P103, if_2036_end
.annotate 'line', 1634
    find_lex $P104, "$name"
    unless_null $P104, vivify_972
    new $P104, "Undef"
  vivify_972:
    "say"($P104)
  if_2036_end:
.annotate 'line', 1636
    find_lex $P103, "self"
    find_lex $P104, "$?CLASS"
    getattribute $P106, $P103, $P104, "$!usage"
    unless_null $P106, vivify_973
    new $P106, "Undef"
  vivify_973:
    say $P106
.annotate 'line', 1637
    exit 0
.annotate 'line', 1632
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "version" :anon :subid("227_1308672490.86084") :outer("165_1308672490.86084")
    .param pmc param_2038
.annotate 'line', 1640
    .lex "self", param_2038
.annotate 'line', 1641
    new $P102, "Undef"
    set $P2039, $P102
    .lex "$version", $P2039
.annotate 'line', 1642
    new $P103, "Undef"
    set $P2040, $P103
    .lex "$parver", $P2040
.annotate 'line', 1643
    new $P104, "Undef"
    set $P2041, $P104
    .lex "$parrev", $P2041
.annotate 'line', 1641
    find_lex $P106, "self"
    find_lex $P107, "$?CLASS"
    getattribute $P2042, $P106, $P107, "%!config"
    unless_null $P2042, vivify_974
    $P2042 = root_new ['parrot';'Hash']
  vivify_974:
    set $P108, $P2042["version"]
    unless_null $P108, vivify_975
    new $P108, "Undef"
  vivify_975:
    store_lex "$version", $P108
.annotate 'line', 1642
    find_lex $P106, "$?PACKAGE"
    get_who $P107, $P106
    set $P2043, $P107["%parrot_config"]
    unless_null $P2043, vivify_976
    $P2043 = root_new ['parrot';'Hash']
  vivify_976:
    set $P108, $P2043["VERSION"]
    unless_null $P108, vivify_977
    new $P108, "Undef"
  vivify_977:
    store_lex "$parver", $P108
.annotate 'line', 1643
    find_lex $P106, "$?PACKAGE"
    get_who $P107, $P106
    set $P2045, $P107["%parrot_config"]
    unless_null $P2045, vivify_978
    $P2045 = root_new ['parrot';'Hash']
  vivify_978:
    set $P108, $P2045["git_describe"]
    unless_null $P108, vivify_979
    new $P108, "Undef"
  vivify_979:
    set $P2044, $P108
    defined $I2047, $P2044
    if $I2047, default_2046
    new $P109, "String"
    assign $P109, "(unknown)"
    set $P2044, $P109
  default_2046:
    store_lex "$parrev", $P2044
.annotate 'line', 1644
    new $P106, 'String'
    set $P106, "This is "
    find_lex $P107, "self"
    find_lex $P108, "$?CLASS"
    getattribute $P109, $P107, $P108, "$!language"
    unless_null $P109, vivify_980
    new $P109, "Undef"
  vivify_980:
    concat $P110, $P106, $P109
    concat $P111, $P110, " version "
    find_lex $P112, "$version"
    unless_null $P112, vivify_981
    new $P112, "Undef"
  vivify_981:
    concat $P113, $P111, $P112
    concat $P114, $P113, " built on parrot "
    find_lex $P115, "$parver"
    unless_null $P115, vivify_982
    new $P115, "Undef"
  vivify_982:
    concat $P116, $P114, $P115
    concat $P117, $P116, " revision "
    find_lex $P118, "$parrev"
    unless_null $P118, vivify_983
    new $P118, "Undef"
  vivify_983:
    concat $P119, $P117, $P118
    say $P119
.annotate 'line', 1645
    exit 0
.annotate 'line', 1640
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "show-config" :anon :subid("228_1308672490.86084") :outer("165_1308672490.86084")
    .param pmc param_2049
.annotate 'line', 1648
    .const 'Sub' $P2057 = "230_1308672490.86084" 
    capture_lex $P2057
    .const 'Sub' $P2052 = "229_1308672490.86084" 
    capture_lex $P2052
    .lex "self", param_2049
.annotate 'line', 1649
    find_lex $P103, "$?PACKAGE"
    get_who $P104, $P103
    set $P2050, $P104["%parrot_config"]
    unless_null $P2050, vivify_984
    $P2050 = root_new ['parrot';'Hash']
  vivify_984:
    defined $I100, $P2050
    unless $I100, for_undef_985
    iter $P102, $P2050
    new $P107, 'ExceptionHandler'
    set_label $P107, loop2054_handler
    $P107."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P107
  loop2054_test:
    unless $P102, loop2054_done
    shift $P106, $P102
  loop2054_redo:
    .const 'Sub' $P2052 = "229_1308672490.86084" 
    capture_lex $P2052
    $P2052($P106)
  loop2054_next:
    goto loop2054_test
  loop2054_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P108, exception, 'type'
    eq $P108, .CONTROL_LOOP_NEXT, loop2054_next
    eq $P108, .CONTROL_LOOP_REDO, loop2054_redo
  loop2054_done:
    pop_eh 
  for_undef_985:
.annotate 'line', 1652
    find_lex $P103, "self"
    find_lex $P104, "$?CLASS"
    getattribute $P2055, $P103, $P104, "%!config"
    unless_null $P2055, vivify_988
    $P2055 = root_new ['parrot';'Hash']
  vivify_988:
    defined $I100, $P2055
    unless $I100, for_undef_989
    iter $P102, $P2055
    new $P107, 'ExceptionHandler'
    set_label $P107, loop2059_handler
    $P107."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P107
  loop2059_test:
    unless $P102, loop2059_done
    shift $P106, $P102
  loop2059_redo:
    .const 'Sub' $P2057 = "230_1308672490.86084" 
    capture_lex $P2057
    $P2057($P106)
  loop2059_next:
    goto loop2059_test
  loop2059_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P108, exception, 'type'
    eq $P108, .CONTROL_LOOP_NEXT, loop2059_next
    eq $P108, .CONTROL_LOOP_REDO, loop2059_redo
  loop2059_done:
    pop_eh 
  for_undef_989:
.annotate 'line', 1655
    exit 0
.annotate 'line', 1648
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2051"  :anon :subid("229_1308672490.86084") :outer("228_1308672490.86084")
    .param pmc param_2053
.annotate 'line', 1649
    .lex "$_", param_2053
.annotate 'line', 1650
    new $P107, "String"
    assign $P107, "parrot::"
    find_lex $P108, "$_"
    unless_null $P108, vivify_986
    new $P108, "Undef"
  vivify_986:
    $S100 = $P108."key"()
    concat $P109, $P107, $S100
    concat $P110, $P109, "="
    find_lex $P111, "$_"
    unless_null $P111, vivify_987
    new $P111, "Undef"
  vivify_987:
    $S101 = $P111."value"()
    concat $P112, $P110, $S101
    say $P112
.annotate 'line', 1649
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2056"  :anon :subid("230_1308672490.86084") :outer("228_1308672490.86084")
    .param pmc param_2058
.annotate 'line', 1652
    .lex "$_", param_2058
.annotate 'line', 1653
    find_lex $P107, "self"
    find_lex $P108, "$?CLASS"
    getattribute $P109, $P107, $P108, "$!language"
    unless_null $P109, vivify_990
    new $P109, "Undef"
  vivify_990:
    concat $P110, $P109, "::"
    find_lex $P111, "$_"
    unless_null $P111, vivify_991
    new $P111, "Undef"
  vivify_991:
    $S100 = $P111."key"()
    concat $P112, $P110, $S100
    concat $P113, $P112, "="
    find_lex $P114, "$_"
    unless_null $P114, vivify_992
    new $P114, "Undef"
  vivify_992:
    $S101 = $P114."value"()
    concat $P115, $P113, $S101
    say $P115
.annotate 'line', 1652
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "removestage" :anon :subid("231_1308672490.86084") :outer("165_1308672490.86084")
    .param pmc param_2061
    .param pmc param_2062
.annotate 'line', 1658
    .const 'Sub' $P2067 = "232_1308672490.86084" 
    capture_lex $P2067
    .lex "self", param_2061
    .lex "$stagename", param_2062
.annotate 'line', 1659
    $P2064 = root_new ['parrot';'ResizablePMCArray']
    set $P2063, $P2064
    .lex "@new_stages", $P2063
    new $P102, "ResizableStringArray"
    store_lex "@new_stages", $P102
.annotate 'line', 1660
    find_lex $P103, "self"
    find_lex $P104, "$?CLASS"
    getattribute $P2065, $P103, $P104, "@!stages"
    unless_null $P2065, vivify_993
    $P2065 = root_new ['parrot';'ResizablePMCArray']
  vivify_993:
    defined $I100, $P2065
    unless $I100, for_undef_994
    iter $P102, $P2065
    new $P108, 'ExceptionHandler'
    set_label $P108, loop2071_handler
    $P108."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P108
  loop2071_test:
    unless $P102, loop2071_done
    shift $P106, $P102
  loop2071_redo:
    .const 'Sub' $P2067 = "232_1308672490.86084" 
    capture_lex $P2067
    $P2067($P106)
  loop2071_next:
    goto loop2071_test
  loop2071_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P109, exception, 'type'
    eq $P109, .CONTROL_LOOP_NEXT, loop2071_next
    eq $P109, .CONTROL_LOOP_REDO, loop2071_redo
  loop2071_done:
    pop_eh 
  for_undef_994:
.annotate 'line', 1665
    find_lex $P2072, "@new_stages"
    unless_null $P2072, vivify_999
    $P2072 = root_new ['parrot';'ResizablePMCArray']
  vivify_999:
    find_lex $P102, "self"
    find_lex $P103, "$?CLASS"
    setattribute $P102, $P103, "@!stages", $P2072
.annotate 'line', 1658
    .return ($P2072)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2066"  :anon :subid("232_1308672490.86084") :outer("231_1308672490.86084")
    .param pmc param_2068
.annotate 'line', 1660
    .lex "$_", param_2068
.annotate 'line', 1661
    find_lex $P108, "$_"
    unless_null $P108, vivify_995
    new $P108, "Undef"
  vivify_995:
    set $S100, $P108
    find_lex $P109, "$stagename"
    unless_null $P109, vivify_996
    new $P109, "Undef"
  vivify_996:
    set $S101, $P109
    isne $I101, $S100, $S101
    if $I101, if_2069
    new $P107, 'Integer'
    set $P107, $I101
    goto if_2069_end
  if_2069:
.annotate 'line', 1662
    find_lex $P2070, "@new_stages"
    unless_null $P2070, vivify_997
    $P2070 = root_new ['parrot';'ResizablePMCArray']
  vivify_997:
    find_lex $P110, "$_"
    unless_null $P110, vivify_998
    new $P110, "Undef"
  vivify_998:
    $P111 = $P2070."push"($P110)
.annotate 'line', 1661
    set $P107, $P111
  if_2069_end:
.annotate 'line', 1660
    .return ($P107)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "addstage" :anon :subid("233_1308672490.86084") :outer("165_1308672490.86084")
    .param pmc param_2076
    .param pmc param_2077
    .param pmc param_2078 :slurpy :named
.annotate 'line', 1668
    .const 'Sub' $P2096 = "235_1308672490.86084" 
    capture_lex $P2096
    .const 'Sub' $P2090 = "234_1308672490.86084" 
    capture_lex $P2090
    new $P2075, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2075, control_2074
    push_eh $P2075
    .lex "self", param_2076
    .lex "$stagename", param_2077
    .lex "%adverbs", param_2078
.annotate 'line', 1669
    new $P102, "Undef"
    set $P2079, $P102
    .lex "$position", $P2079
.annotate 'line', 1670
    new $P103, "Undef"
    set $P2080, $P103
    .lex "$where", $P2080
.annotate 'line', 1683
    $P2082 = root_new ['parrot';'ResizablePMCArray']
    set $P2081, $P2082
    .lex "@new-stages", $P2081
.annotate 'line', 1668
    find_lex $P104, "$position"
    unless_null $P104, vivify_1000
    new $P104, "Undef"
  vivify_1000:
    find_lex $P104, "$where"
    unless_null $P104, vivify_1001
    new $P104, "Undef"
  vivify_1001:
.annotate 'line', 1671
    find_lex $P2084, "%adverbs"
    unless_null $P2084, vivify_1002
    $P2084 = root_new ['parrot';'Hash']
  vivify_1002:
    set $P104, $P2084["before"]
    unless_null $P104, vivify_1003
    new $P104, "Undef"
  vivify_1003:
    if $P104, if_2083
.annotate 'line', 1674
    find_lex $P2087, "%adverbs"
    unless_null $P2087, vivify_1004
    $P2087 = root_new ['parrot';'Hash']
  vivify_1004:
    set $P106, $P2087["after"]
    unless_null $P106, vivify_1005
    new $P106, "Undef"
  vivify_1005:
    if $P106, if_2086
.annotate 'line', 1677
    .const 'Sub' $P2090 = "234_1308672490.86084" 
    capture_lex $P2090
    $P2090()
    goto if_2086_end
  if_2086:
.annotate 'line', 1675
    find_lex $P2088, "%adverbs"
    unless_null $P2088, vivify_1009
    $P2088 = root_new ['parrot';'Hash']
  vivify_1009:
    set $P107, $P2088["after"]
    unless_null $P107, vivify_1010
    new $P107, "Undef"
  vivify_1010:
    store_lex "$where", $P107
.annotate 'line', 1676
    new $P107, "String"
    assign $P107, "after"
    store_lex "$position", $P107
  if_2086_end:
.annotate 'line', 1674
    goto if_2083_end
  if_2083:
.annotate 'line', 1672
    find_lex $P2085, "%adverbs"
    unless_null $P2085, vivify_1011
    $P2085 = root_new ['parrot';'Hash']
  vivify_1011:
    set $P106, $P2085["before"]
    unless_null $P106, vivify_1012
    new $P106, "Undef"
  vivify_1012:
    store_lex "$where", $P106
.annotate 'line', 1673
    new $P106, "String"
    assign $P106, "before"
    store_lex "$position", $P106
  if_2083_end:
.annotate 'line', 1683
    new $P104, "ResizableStringArray"
    store_lex "@new-stages", $P104
.annotate 'line', 1684
    find_lex $P106, "self"
    $P107 = $P106."stages"()
    defined $I100, $P107
    unless $I100, for_undef_1013
    iter $P104, $P107
    new $P110, 'ExceptionHandler'
    set_label $P110, loop2105_handler
    $P110."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P110
  loop2105_test:
    unless $P104, loop2105_done
    shift $P108, $P104
  loop2105_redo:
    .const 'Sub' $P2096 = "235_1308672490.86084" 
    capture_lex $P2096
    $P2096($P108)
  loop2105_next:
    goto loop2105_test
  loop2105_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P111, exception, 'type'
    eq $P111, .CONTROL_LOOP_NEXT, loop2105_next
    eq $P111, .CONTROL_LOOP_REDO, loop2105_redo
  loop2105_done:
    pop_eh 
  for_undef_1013:
.annotate 'line', 1697
    find_lex $P104, "self"
    find_lex $P2106, "@new-stages"
    unless_null $P2106, vivify_1027
    $P2106 = root_new ['parrot';'ResizablePMCArray']
  vivify_1027:
    $P106 = $P104."stages"($P2106)
.annotate 'line', 1668
    .return ($P106)
  control_2074:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P104, exception, "payload"
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "_block2089"  :anon :subid("234_1308672490.86084") :outer("233_1308672490.86084")
.annotate 'line', 1678
    $P2092 = root_new ['parrot';'ResizablePMCArray']
    set $P2091, $P2092
    .lex "@new-stages", $P2091
    find_lex $P107, "self"
    $P108 = $P107."stages"()
    clone $P109, $P108
    store_lex "@new-stages", $P109
.annotate 'line', 1679
    find_lex $P2093, "@new-stages"
    unless_null $P2093, vivify_1006
    $P2093 = root_new ['parrot';'ResizablePMCArray']
  vivify_1006:
    find_lex $P107, "$stagename"
    unless_null $P107, vivify_1007
    new $P107, "Undef"
  vivify_1007:
    push $P2093, $P107
.annotate 'line', 1680
    find_lex $P107, "self"
    find_lex $P2094, "@new-stages"
    unless_null $P2094, vivify_1008
    $P2094 = root_new ['parrot';'ResizablePMCArray']
  vivify_1008:
    $P107."stages"($P2094)
.annotate 'line', 1681
    new $P107, "Exception"
    set $P107['type'], .CONTROL_RETURN
    new $P108, "Integer"
    assign $P108, 1
    setattribute $P107, 'payload', $P108
    throw $P107
.annotate 'line', 1677
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2095"  :anon :subid("235_1308672490.86084") :outer("233_1308672490.86084")
    .param pmc param_2097
.annotate 'line', 1684
    .lex "$_", param_2097
.annotate 'line', 1685
    find_lex $P110, "$_"
    unless_null $P110, vivify_1014
    new $P110, "Undef"
  vivify_1014:
    set $S100, $P110
    find_lex $P111, "$where"
    unless_null $P111, vivify_1015
    new $P111, "Undef"
  vivify_1015:
    set $S101, $P111
    iseq $I101, $S100, $S101
    if $I101, if_2098
.annotate 'line', 1694
    find_lex $P2104, "@new-stages"
    unless_null $P2104, vivify_1016
    $P2104 = root_new ['parrot';'ResizablePMCArray']
  vivify_1016:
    find_lex $P113, "$_"
    unless_null $P113, vivify_1017
    new $P113, "Undef"
  vivify_1017:
    push $P2104, $P113
.annotate 'line', 1693
    set $P109, $P2104
.annotate 'line', 1685
    goto if_2098_end
  if_2098:
.annotate 'line', 1686
    find_lex $P113, "$position"
    unless_null $P113, vivify_1018
    new $P113, "Undef"
  vivify_1018:
    set $S102, $P113
    iseq $I102, $S102, "before"
    if $I102, if_2099
.annotate 'line', 1690
    find_lex $P2102, "@new-stages"
    unless_null $P2102, vivify_1019
    $P2102 = root_new ['parrot';'ResizablePMCArray']
  vivify_1019:
    find_lex $P114, "$_"
    unless_null $P114, vivify_1020
    new $P114, "Undef"
  vivify_1020:
    push $P2102, $P114
.annotate 'line', 1691
    find_lex $P2103, "@new-stages"
    unless_null $P2103, vivify_1021
    $P2103 = root_new ['parrot';'ResizablePMCArray']
  vivify_1021:
    find_lex $P114, "$stagename"
    unless_null $P114, vivify_1022
    new $P114, "Undef"
  vivify_1022:
    push $P2103, $P114
.annotate 'line', 1689
    set $P112, $P2103
.annotate 'line', 1686
    goto if_2099_end
  if_2099:
.annotate 'line', 1687
    find_lex $P2100, "@new-stages"
    unless_null $P2100, vivify_1023
    $P2100 = root_new ['parrot';'ResizablePMCArray']
  vivify_1023:
    find_lex $P114, "$stagename"
    unless_null $P114, vivify_1024
    new $P114, "Undef"
  vivify_1024:
    push $P2100, $P114
.annotate 'line', 1688
    find_lex $P2101, "@new-stages"
    unless_null $P2101, vivify_1025
    $P2101 = root_new ['parrot';'ResizablePMCArray']
  vivify_1025:
    find_lex $P114, "$_"
    unless_null $P114, vivify_1026
    new $P114, "Undef"
  vivify_1026:
    push $P2101, $P114
.annotate 'line', 1686
    set $P112, $P2101
  if_2099_end:
.annotate 'line', 1685
    set $P109, $P112
  if_2098_end:
.annotate 'line', 1684
    .return ($P109)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.include "except_types.pasm"
.sub "parse_name" :anon :subid("236_1308672490.86084") :outer("165_1308672490.86084")
    .param pmc param_2108
    .param pmc param_2109
.annotate 'line', 1700
    .const 'Sub' $P2125 = "237_1308672490.86084" 
    capture_lex $P2125
    .lex "self", param_2108
    .lex "$name", param_2109
.annotate 'line', 1701
    $P2111 = root_new ['parrot';'ResizablePMCArray']
    set $P2110, $P2111
    .lex "@ns", $P2110
.annotate 'line', 1702
    new $P102, "Undef"
    set $P2112, $P102
    .lex "$sigil", $P2112
.annotate 'line', 1705
    new $P103, "Undef"
    set $P2113, $P103
    .lex "$idx", $P2113
.annotate 'line', 1713
    $P2115 = root_new ['parrot';'ResizablePMCArray']
    set $P2114, $P2115
    .lex "@actual_ns", $P2114
.annotate 'line', 1701
    find_lex $P104, "$name"
    unless_null $P104, vivify_1028
    new $P104, "Undef"
  vivify_1028:
    set $S100, $P104
    split $P106, "::", $S100
    store_lex "@ns", $P106
.annotate 'line', 1702
    find_lex $P2116, "@ns"
    unless_null $P2116, vivify_1029
    $P2116 = root_new ['parrot';'ResizablePMCArray']
  vivify_1029:
    set $P104, $P2116[0]
    unless_null $P104, vivify_1030
    new $P104, "Undef"
  vivify_1030:
    set $S100, $P104
    substr $S101, $S100, 0, 1
    new $P106, 'String'
    set $P106, $S101
    store_lex "$sigil", $P106
.annotate 'line', 1705
    find_lex $P104, "$sigil"
    unless_null $P104, vivify_1031
    new $P104, "Undef"
  vivify_1031:
    set $S100, $P104
    index $I100, "$@%&", $S100
    new $P106, 'Integer'
    set $P106, $I100
    store_lex "$idx", $P106
.annotate 'line', 1706
    find_lex $P104, "$idx"
    unless_null $P104, vivify_1032
    new $P104, "Undef"
  vivify_1032:
    set $N100, $P104
    isge $I100, $N100, 0.0
    unless $I100, if_2117_end
.annotate 'line', 1707
    find_lex $P2118, "@ns"
    unless_null $P2118, vivify_1033
    $P2118 = root_new ['parrot';'ResizablePMCArray']
  vivify_1033:
    set $P106, $P2118[0]
    unless_null $P106, vivify_1034
    new $P106, "Undef"
  vivify_1034:
    set $S100, $P106
    substr $S101, $S100, 1
    new $P107, 'String'
    set $P107, $S101
    find_lex $P2119, "@ns"
    unless_null $P2119, vivify_1035
    $P2119 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@ns", $P2119
  vivify_1035:
    set $P2119[0], $P107
.annotate 'line', 1708
    find_lex $P106, "$sigil"
    unless_null $P106, vivify_1036
    new $P106, "Undef"
  vivify_1036:
    find_lex $P2120, "@ns"
    unless_null $P2120, vivify_1037
    $P2120 = root_new ['parrot';'ResizablePMCArray']
  vivify_1037:
    set $P107, $P2120[-1]
    unless_null $P107, vivify_1038
    new $P107, "Undef"
  vivify_1038:
    concat $P108, $P106, $P107
    find_lex $P2121, "@ns"
    unless_null $P2121, vivify_1039
    $P2121 = root_new ['parrot';'ResizablePMCArray']
    store_lex "@ns", $P2121
  vivify_1039:
    set $P2121[-1], $P108
  if_2117_end:
.annotate 'line', 1700
    find_lex $P2122, "@actual_ns"
    unless_null $P2122, vivify_1040
    $P2122 = root_new ['parrot';'ResizablePMCArray']
  vivify_1040:
.annotate 'line', 1714
    find_lex $P2123, "@ns"
    unless_null $P2123, vivify_1041
    $P2123 = root_new ['parrot';'ResizablePMCArray']
  vivify_1041:
    defined $I100, $P2123
    unless $I100, for_undef_1042
    iter $P104, $P2123
    new $P108, 'ExceptionHandler'
    set_label $P108, loop2129_handler
    $P108."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P108
  loop2129_test:
    unless $P104, loop2129_done
    shift $P106, $P104
  loop2129_redo:
    .const 'Sub' $P2125 = "237_1308672490.86084" 
    capture_lex $P2125
    $P2125($P106)
  loop2129_next:
    goto loop2129_test
  loop2129_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P109, exception, 'type'
    eq $P109, .CONTROL_LOOP_NEXT, loop2129_next
    eq $P109, .CONTROL_LOOP_REDO, loop2129_redo
  loop2129_done:
    pop_eh 
  for_undef_1042:
.annotate 'line', 1700
    find_lex $P2130, "@actual_ns"
    unless_null $P2130, vivify_1046
    $P2130 = root_new ['parrot';'ResizablePMCArray']
  vivify_1046:
    .return ($P2130)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "_block2124"  :anon :subid("237_1308672490.86084") :outer("236_1308672490.86084")
    .param pmc param_2126
.annotate 'line', 1714
    .lex "$_", param_2126
.annotate 'line', 1715
    find_lex $P108, "$_"
    unless_null $P108, vivify_1043
    new $P108, "Undef"
  vivify_1043:
    set $S100, $P108
    iseq $I101, $S100, ""
    unless $I101, unless_2127
    new $P107, 'Integer'
    set $P107, $I101
    goto unless_2127_end
  unless_2127:
    find_lex $P2128, "@actual_ns"
    unless_null $P2128, vivify_1044
    $P2128 = root_new ['parrot';'ResizablePMCArray']
  vivify_1044:
    find_lex $P109, "$_"
    unless_null $P109, vivify_1045
    new $P109, "Undef"
  vivify_1045:
    push $P2128, $P109
    set $P107, $P2128
  unless_2127_end:
.annotate 'line', 1714
    .return ($P107)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler"]
.sub "lineof" :anon :subid("238_1308672490.86084") :outer("165_1308672490.86084")
    .param pmc param_2132
    .param pmc param_2133
    .param pmc param_2134
    .param pmc param_2135 :optional :named("cache")
    .param int has_param_2135 :opt_flag
.annotate 'line', 1720
    .lex "self", param_2132
    .lex "$target", param_2133
    .lex "$pos", param_2134
    if has_param_2135, optparam_1047
    new $P102, "Undef"
    set param_2135, $P102
  optparam_1047:
    .lex "$cache", param_2135
.annotate 'line', 1721

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
        
.annotate 'line', 1720
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "_block2137"  :subid("239_1308672490.86084") :outer("10_1308672490.86084")
.annotate 'line', 1875
    .const 'Sub' $P2153 = "244_1308672490.86084" 
    capture_lex $P2153
    .const 'Sub' $P2149 = "243_1308672490.86084" 
    capture_lex $P2149
    .const 'Sub' $P2146 = "242_1308672490.86084" 
    capture_lex $P2146
    .const 'Sub' $P2143 = "241_1308672490.86084" 
    capture_lex $P2143
    .const 'Sub' $P2141 = "240_1308672490.86084" 
    capture_lex $P2141
    .lex "$?PACKAGE", $P2139
    .lex "$?CLASS", $P2140
.annotate 'line', 1891
    .const 'Sub' $P2153 = "244_1308672490.86084" 
    newclosure $P2168, $P2153
.annotate 'line', 1875
    .return ($P2168)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "init" :anon :subid("240_1308672490.86084") :outer("239_1308672490.86084")
    .param pmc param_2142
.annotate 'line', 1879
    .lex "self", param_2142
.annotate 'line', 1880
    new $P101, "ResizablePMCArray"
    find_lex $P102, "self"
    find_lex $P103, "$?CLASS"
    setattribute $P102, $P103, "@!arguments", $P101
.annotate 'line', 1881
    new $P101, "Hash"
    find_lex $P102, "self"
    find_lex $P103, "$?CLASS"
    setattribute $P102, $P103, "%!options", $P101
.annotate 'line', 1879
    .return ($P101)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "arguments" :anon :subid("241_1308672490.86084") :outer("239_1308672490.86084")
    .param pmc param_2144
.annotate 'line', 1884
    .lex "self", param_2144
    find_lex $P101, "self"
    find_lex $P102, "$?CLASS"
    getattribute $P2145, $P101, $P102, "@!arguments"
    unless_null $P2145, vivify_1049
    $P2145 = root_new ['parrot';'ResizablePMCArray']
  vivify_1049:
    .return ($P2145)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "options" :anon :subid("242_1308672490.86084") :outer("239_1308672490.86084")
    .param pmc param_2147
.annotate 'line', 1885
    .lex "self", param_2147
    find_lex $P101, "self"
    find_lex $P102, "$?CLASS"
    getattribute $P2148, $P101, $P102, "%!options"
    unless_null $P2148, vivify_1050
    $P2148 = root_new ['parrot';'Hash']
  vivify_1050:
    .return ($P2148)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "add-argument" :anon :subid("243_1308672490.86084") :outer("239_1308672490.86084")
    .param pmc param_2150
    .param pmc param_2151
.annotate 'line', 1887
    .lex "self", param_2150
    .lex "$x", param_2151
.annotate 'line', 1888
    find_lex $P101, "self"
    find_lex $P102, "$?CLASS"
    getattribute $P2152, $P101, $P102, "@!arguments"
    unless_null $P2152, vivify_1051
    $P2152 = root_new ['parrot';'ResizablePMCArray']
  vivify_1051:
    find_lex $P103, "$x"
    unless_null $P103, vivify_1052
    new $P103, "Undef"
  vivify_1052:
    push $P2152, $P103
.annotate 'line', 1887
    .return ()
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "add-option" :anon :subid("244_1308672490.86084") :outer("239_1308672490.86084")
    .param pmc param_2154
    .param pmc param_2155
    .param pmc param_2156
.annotate 'line', 1891
    .const 'Sub' $P2160 = "245_1308672490.86084" 
    capture_lex $P2160
    .lex "self", param_2154
    .lex "$name", param_2155
    .lex "$value", param_2156
.annotate 'line', 1894
    find_lex $P104, "$name"
    unless_null $P104, vivify_1053
    new $P104, "Undef"
  vivify_1053:
    find_lex $P102, "self"
    find_lex $P103, "$?CLASS"
    getattribute $P2158, $P102, $P103, "%!options"
    unless_null $P2158, vivify_1054
    $P2158 = root_new ['parrot';'Hash']
  vivify_1054:
    exists $I100, $P2158[$P104]
    if $I100, if_2157
.annotate 'line', 1903
    find_lex $P108, "$value"
    unless_null $P108, vivify_1055
    new $P108, "Undef"
  vivify_1055:
    find_lex $P109, "$name"
    unless_null $P109, vivify_1056
    new $P109, "Undef"
  vivify_1056:
    find_lex $P110, "self"
    find_lex $P111, "$?CLASS"
    getattribute $P2167, $P110, $P111, "%!options"
    unless_null $P2167, vivify_1057
    $P2167 = root_new ['parrot';'Hash']
    setattribute $P110, $P111, "%!options", $P2167
  vivify_1057:
    set $P2167[$P109], $P108
.annotate 'line', 1902
    set $P101, $P108
.annotate 'line', 1894
    goto if_2157_end
  if_2157:
    .const 'Sub' $P2160 = "245_1308672490.86084" 
    capture_lex $P2160
    $P107 = $P2160()
    set $P101, $P107
  if_2157_end:
.annotate 'line', 1891
    .return ($P101)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Result"]
.sub "_block2159"  :anon :subid("245_1308672490.86084") :outer("244_1308672490.86084")
.annotate 'line', 1895
    new $P105, "Undef"
    set $P2161, $P105
    .lex "$t", $P2161
    find_lex $P106, "self"
    find_lex $P107, "$?CLASS"
    getattribute $P2162, $P106, $P107, "%!options"
    unless_null $P2162, vivify_1058
    $P2162 = root_new ['parrot';'Hash']
  vivify_1058:
    typeof $S100, $P2162
    new $P108, 'String'
    set $P108, $S100
    store_lex "$t", $P108
.annotate 'line', 1896
    find_lex $P106, "$t"
    unless_null $P106, vivify_1059
    new $P106, "Undef"
  vivify_1059:
    "say"($P106)
.annotate 'line', 1897
    find_lex $P107, "$t"
    unless_null $P107, vivify_1060
    new $P107, "Undef"
  vivify_1060:
    set $S100, $P107
    iseq $I101, $S100, "ResizablePMCArray"
    if $I101, if_2163
.annotate 'line', 1900
    find_lex $P108, "$name"
    unless_null $P108, vivify_1061
    new $P108, "Undef"
  vivify_1061:
    find_lex $P109, "self"
    find_lex $P110, "$?CLASS"
    getattribute $P2165, $P109, $P110, "%!options"
    unless_null $P2165, vivify_1062
    $P2165 = root_new ['parrot';'Hash']
  vivify_1062:
    set $P112, $P2165[$P108]
    unless_null $P112, vivify_1063
    new $P112, "Undef"
  vivify_1063:
    find_lex $P113, "$name"
    unless_null $P113, vivify_1064
    new $P113, "Undef"
  vivify_1064:
    new $P114, "ResizablePMCArray"
    push $P114, $P112
    push $P114, $P113
    find_lex $P115, "$name"
    unless_null $P115, vivify_1065
    new $P115, "Undef"
  vivify_1065:
    find_lex $P116, "self"
    find_lex $P117, "$?CLASS"
    getattribute $P2166, $P116, $P117, "%!options"
    unless_null $P2166, vivify_1066
    $P2166 = root_new ['parrot';'Hash']
    setattribute $P116, $P117, "%!options", $P2166
  vivify_1066:
    set $P2166[$P115], $P114
.annotate 'line', 1899
    set $P106, $P114
.annotate 'line', 1897
    goto if_2163_end
  if_2163:
.annotate 'line', 1898
    find_lex $P108, "$name"
    unless_null $P108, vivify_1067
    new $P108, "Undef"
  vivify_1067:
    find_lex $P109, "self"
    find_lex $P110, "$?CLASS"
    getattribute $P2164, $P109, $P110, "%!options"
    unless_null $P2164, vivify_1068
    $P2164 = root_new ['parrot';'Hash']
  vivify_1068:
    set $P111, $P2164[$P108]
    unless_null $P111, vivify_1069
    new $P111, "Undef"
  vivify_1069:
    find_lex $P112, "$value"
    unless_null $P112, vivify_1070
    new $P112, "Undef"
  vivify_1070:
    push $P111, $P112
.annotate 'line', 1897
    set $P106, $P111
  if_2163_end:
.annotate 'line', 1894
    .return ($P106)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2169"  :subid("246_1308672490.86084") :outer("10_1308672490.86084")
.annotate 'line', 1908
    .const 'Sub' $P2225 = "257_1308672490.86084" 
    capture_lex $P2225
    .const 'Sub' $P2220 = "256_1308672490.86084" 
    capture_lex $P2220
    .const 'Sub' $P2212 = "255_1308672490.86084" 
    capture_lex $P2212
    .const 'Sub' $P2197 = "253_1308672490.86084" 
    capture_lex $P2197
    .const 'Sub' $P2194 = "252_1308672490.86084" 
    capture_lex $P2194
    .const 'Sub' $P2190 = "251_1308672490.86084" 
    capture_lex $P2190
    .const 'Sub' $P2180 = "249_1308672490.86084" 
    capture_lex $P2180
    .const 'Sub' $P2178 = "248_1308672490.86084" 
    capture_lex $P2178
    .const 'Sub' $P2173 = "247_1308672490.86084" 
    capture_lex $P2173
    .lex "$?PACKAGE", $P2171
    .lex "$?CLASS", $P2172
.annotate 'line', 1968
    .const 'Sub' $P2225 = "257_1308672490.86084" 
    newclosure $P2298, $P2225
.annotate 'line', 1908
    .return ($P2298)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "new" :anon :subid("247_1308672490.86084") :outer("246_1308672490.86084")
    .param pmc param_2174
    .param pmc param_2175
.annotate 'line', 1914
    .lex "self", param_2174
    .lex "@specs", param_2175
.annotate 'line', 1915
    new $P101, "Undef"
    set $P2176, $P101
    .lex "$obj", $P2176
    find_lex $P102, "self"
    $P103 = $P102."CREATE"()
    store_lex "$obj", $P103
.annotate 'line', 1916
    find_lex $P102, "$obj"
    unless_null $P102, vivify_1071
    new $P102, "Undef"
  vivify_1071:
    find_lex $P2177, "@specs"
    unless_null $P2177, vivify_1072
    $P2177 = root_new ['parrot';'ResizablePMCArray']
  vivify_1072:
    $P102."BUILD"($P2177 :named("specs"))
.annotate 'line', 1914
    find_lex $P102, "$obj"
    unless_null $P102, vivify_1073
    new $P102, "Undef"
  vivify_1073:
    .return ($P102)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "stop-after-first-arg" :anon :subid("248_1308672490.86084") :outer("246_1308672490.86084")
    .param pmc param_2179
.annotate 'line', 1920
    .lex "self", param_2179
.annotate 'line', 1921
    new $P101, "Integer"
    assign $P101, 1
    find_lex $P102, "self"
    find_lex $P103, "$?CLASS"
    setattribute $P102, $P103, "$!stop-after-first-arg", $P101
.annotate 'line', 1920
    .return ($P101)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "BUILD" :anon :subid("249_1308672490.86084") :outer("246_1308672490.86084")
    .param pmc param_2181
    .param pmc param_2182 :optional :named("specs")
    .param int has_param_2182 :opt_flag
.annotate 'line', 1924
    .const 'Sub' $P2187 = "250_1308672490.86084" 
    capture_lex $P2187
    .lex "self", param_2181
    if has_param_2182, optparam_1074
    $P2183 = root_new ['parrot';'ResizablePMCArray']
    set param_2182, $P2183
  optparam_1074:
    .lex "@specs", param_2182
.annotate 'line', 1925
    new $P101, "Integer"
    assign $P101, 1
    find_lex $P102, "self"
    find_lex $P103, "$?CLASS"
    getattribute $P2184, $P102, $P103, "%!stopper"
    unless_null $P2184, vivify_1075
    $P2184 = root_new ['parrot';'Hash']
    setattribute $P102, $P103, "%!stopper", $P2184
  vivify_1075:
    set $P2184["--"], $P101
.annotate 'line', 1926
    new $P101, "Integer"
    assign $P101, 0
    find_lex $P102, "self"
    find_lex $P103, "$?CLASS"
    setattribute $P102, $P103, "$!stop-after-first-arg", $P101
.annotate 'line', 1927
    find_lex $P2185, "@specs"
    unless_null $P2185, vivify_1076
    $P2185 = root_new ['parrot';'ResizablePMCArray']
  vivify_1076:
    defined $I100, $P2185
    unless $I100, for_undef_1077
    iter $P101, $P2185
    new $P103, 'ExceptionHandler'
    set_label $P103, loop2189_handler
    $P103."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P103
  loop2189_test:
    unless $P101, loop2189_done
    shift $P102, $P101
  loop2189_redo:
    .const 'Sub' $P2187 = "250_1308672490.86084" 
    capture_lex $P2187
    $P2187($P102)
  loop2189_next:
    goto loop2189_test
  loop2189_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P104, exception, 'type'
    eq $P104, .CONTROL_LOOP_NEXT, loop2189_next
    eq $P104, .CONTROL_LOOP_REDO, loop2189_redo
  loop2189_done:
    pop_eh 
  for_undef_1077:
.annotate 'line', 1924
    .return ($P101)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2186"  :anon :subid("250_1308672490.86084") :outer("249_1308672490.86084")
    .param pmc param_2188
.annotate 'line', 1927
    .lex "$_", param_2188
.annotate 'line', 1928
    find_lex $P103, "self"
    find_lex $P104, "$_"
    unless_null $P104, vivify_1078
    new $P104, "Undef"
  vivify_1078:
    $P105 = $P103."add-spec"($P104)
.annotate 'line', 1927
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "add-stopper" :anon :subid("251_1308672490.86084") :outer("246_1308672490.86084")
    .param pmc param_2191
    .param pmc param_2192
.annotate 'line', 1931
    .lex "self", param_2191
    .lex "$x", param_2192
.annotate 'line', 1932
    new $P101, "Integer"
    assign $P101, 1
    find_lex $P102, "$x"
    unless_null $P102, vivify_1079
    new $P102, "Undef"
  vivify_1079:
    find_lex $P103, "self"
    find_lex $P104, "$?CLASS"
    getattribute $P2193, $P103, $P104, "%!stopper"
    unless_null $P2193, vivify_1080
    $P2193 = root_new ['parrot';'Hash']
    setattribute $P103, $P104, "%!stopper", $P2193
  vivify_1080:
    set $P2193[$P102], $P101
.annotate 'line', 1931
    .return ($P101)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "split-option-aliases" :anon :subid("252_1308672490.86084") :outer("246_1308672490.86084")
    .param pmc param_2195
    .param pmc param_2196
.annotate 'line', 1935
    .lex "self", param_2195
    .lex "$s", param_2196
.annotate 'line', 1936
    find_lex $P101, "$s"
    unless_null $P101, vivify_1081
    new $P101, "Undef"
  vivify_1081:
    set $S100, $P101
    split $P102, "|", $S100
.annotate 'line', 1935
    .return ($P102)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "add-spec" :anon :subid("253_1308672490.86084") :outer("246_1308672490.86084")
    .param pmc param_2198
    .param pmc param_2199
.annotate 'line', 1940
    .const 'Sub' $P2208 = "254_1308672490.86084" 
    capture_lex $P2208
    .lex "self", param_2198
    .lex "$s", param_2199
.annotate 'line', 1941
    new $P101, "Undef"
    set $P2200, $P101
    .lex "$i", $P2200
.annotate 'line', 1942
    new $P102, "Undef"
    set $P2201, $P102
    .lex "$type", $P2201
.annotate 'line', 1943
    $P2203 = root_new ['parrot';'ResizablePMCArray']
    set $P2202, $P2203
    .lex "@options", $P2202
.annotate 'line', 1941
    find_lex $P103, "$s"
    unless_null $P103, vivify_1082
    new $P103, "Undef"
  vivify_1082:
    set $S100, $P103
    index $I100, $S100, "="
    new $P104, 'Integer'
    set $P104, $I100
    store_lex "$i", $P104
.annotate 'line', 1940
    find_lex $P103, "$type"
    unless_null $P103, vivify_1083
    new $P103, "Undef"
  vivify_1083:
    find_lex $P2204, "@options"
    unless_null $P2204, vivify_1084
    $P2204 = root_new ['parrot';'ResizablePMCArray']
  vivify_1084:
.annotate 'line', 1944
    find_lex $P103, "$i"
    unless_null $P103, vivify_1085
    new $P103, "Undef"
  vivify_1085:
    set $N100, $P103
    islt $I100, $N100, 0.0
    if $I100, if_2205
.annotate 'line', 1948
    find_lex $P104, "$s"
    unless_null $P104, vivify_1086
    new $P104, "Undef"
  vivify_1086:
    set $S100, $P104
    find_lex $P105, "$i"
    unless_null $P105, vivify_1087
    new $P105, "Undef"
  vivify_1087:
    add $P106, $P105, 1
    set $I101, $P106
    substr $S101, $S100, $I101
    new $P107, 'String'
    set $P107, $S101
    store_lex "$type", $P107
.annotate 'line', 1949
    find_lex $P104, "self"
    find_lex $P105, "$s"
    unless_null $P105, vivify_1088
    new $P105, "Undef"
  vivify_1088:
    set $S100, $P105
    find_lex $P106, "$i"
    unless_null $P106, vivify_1089
    new $P106, "Undef"
  vivify_1089:
    set $I101, $P106
    substr $S101, $S100, 0, $I101
    $P107 = $P104."split-option-aliases"($S101)
    store_lex "@options", $P107
.annotate 'line', 1947
    goto if_2205_end
  if_2205:
.annotate 'line', 1945
    new $P104, "String"
    assign $P104, "b"
    store_lex "$type", $P104
.annotate 'line', 1946
    find_lex $P104, "self"
    find_lex $P105, "$s"
    unless_null $P105, vivify_1090
    new $P105, "Undef"
  vivify_1090:
    $P106 = $P104."split-option-aliases"($P105)
    store_lex "@options", $P106
  if_2205_end:
.annotate 'line', 1951
    find_lex $P2206, "@options"
    unless_null $P2206, vivify_1091
    $P2206 = root_new ['parrot';'ResizablePMCArray']
  vivify_1091:
    defined $I100, $P2206
    unless $I100, for_undef_1092
    iter $P103, $P2206
    new $P106, 'ExceptionHandler'
    set_label $P106, loop2211_handler
    $P106."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P106
  loop2211_test:
    unless $P103, loop2211_done
    shift $P104, $P103
  loop2211_redo:
    .const 'Sub' $P2208 = "254_1308672490.86084" 
    capture_lex $P2208
    $P2208($P104)
  loop2211_next:
    goto loop2211_test
  loop2211_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P107, exception, 'type'
    eq $P107, .CONTROL_LOOP_NEXT, loop2211_next
    eq $P107, .CONTROL_LOOP_REDO, loop2211_redo
  loop2211_done:
    pop_eh 
  for_undef_1092:
.annotate 'line', 1940
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2207"  :anon :subid("254_1308672490.86084") :outer("253_1308672490.86084")
    .param pmc param_2209
.annotate 'line', 1951
    .lex "$_", param_2209
.annotate 'line', 1952
    find_lex $P105, "$type"
    unless_null $P105, vivify_1093
    new $P105, "Undef"
  vivify_1093:
    find_lex $P106, "$_"
    unless_null $P106, vivify_1094
    new $P106, "Undef"
  vivify_1094:
    find_lex $P107, "self"
    find_lex $P108, "$?CLASS"
    getattribute $P2210, $P107, $P108, "%!options"
    unless_null $P2210, vivify_1095
    $P2210 = root_new ['parrot';'Hash']
    setattribute $P107, $P108, "%!options", $P2210
  vivify_1095:
    set $P2210[$P106], $P105
.annotate 'line', 1951
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "is-option" :anon :subid("255_1308672490.86084") :outer("246_1308672490.86084")
    .param pmc param_2215
    .param pmc param_2216
.annotate 'line', 1957
    new $P2214, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2214, control_2213
    push_eh $P2214
    .lex "self", param_2215
    .lex "$x", param_2216
.annotate 'line', 1958
    find_lex $P102, "$x"
    unless_null $P102, vivify_1096
    new $P102, "Undef"
  vivify_1096:
    set $S100, $P102
    iseq $I100, $S100, "-"
    unless $I100, unless_2218
    new $P101, 'Integer'
    set $P101, $I100
    goto unless_2218_end
  unless_2218:
    find_lex $P103, "$x"
    unless_null $P103, vivify_1097
    new $P103, "Undef"
  vivify_1097:
    set $S101, $P103
    iseq $I101, $S101, "--"
    new $P101, 'Integer'
    set $P101, $I101
  unless_2218_end:
    unless $P101, if_2217_end
    new $P104, "Exception"
    set $P104['type'], .CONTROL_RETURN
    new $P105, "Integer"
    assign $P105, 0
    setattribute $P104, 'payload', $P105
    throw $P104
  if_2217_end:
.annotate 'line', 1959
    find_lex $P101, "$x"
    unless_null $P101, vivify_1098
    new $P101, "Undef"
  vivify_1098:
    set $S100, $P101
    substr $S101, $S100, 0, 1
    iseq $I100, $S101, "-"
    unless $I100, if_2219_end
    new $P102, "Exception"
    set $P102['type'], .CONTROL_RETURN
    new $P103, "Integer"
    assign $P103, 1
    setattribute $P102, 'payload', $P103
    throw $P102
  if_2219_end:
.annotate 'line', 1957
    .return (0)
  control_2213:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P101, exception, "payload"
    .return ($P101)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "wants-value" :anon :subid("256_1308672490.86084") :outer("246_1308672490.86084")
    .param pmc param_2221
    .param pmc param_2222
.annotate 'line', 1963
    .lex "self", param_2221
    .lex "$x", param_2222
.annotate 'line', 1964
    new $P101, "Undef"
    set $P2223, $P101
    .lex "$spec", $P2223
    find_lex $P102, "$x"
    unless_null $P102, vivify_1099
    new $P102, "Undef"
  vivify_1099:
    find_lex $P103, "self"
    find_lex $P104, "$?CLASS"
    getattribute $P2224, $P103, $P104, "%!options"
    unless_null $P2224, vivify_1100
    $P2224 = root_new ['parrot';'Hash']
  vivify_1100:
    set $P105, $P2224[$P102]
    unless_null $P105, vivify_1101
    new $P105, "Undef"
  vivify_1101:
    store_lex "$spec", $P105
.annotate 'line', 1965
    find_lex $P102, "$spec"
    unless_null $P102, vivify_1102
    new $P102, "Undef"
  vivify_1102:
    set $S100, $P102
    iseq $I100, $S100, "s"
.annotate 'line', 1963
    .return ($I100)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "parse" :anon :subid("257_1308672490.86084") :outer("246_1308672490.86084")
    .param pmc param_2228
    .param pmc param_2229
.annotate 'line', 1968
    .const 'Sub' $P2254 = "260_1308672490.86084" 
    capture_lex $P2254
    .const 'Sub' $P2246 = "259_1308672490.86084" 
    capture_lex $P2246
    .const 'Sub' $P2234 = "258_1308672490.86084" 
    capture_lex $P2234
    new $P2227, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2227, control_2226
    push_eh $P2227
    .lex "self", param_2228
    .lex "@args", param_2229
.annotate 'line', 1969
    new $P101, "Undef"
    set $P2230, $P101
    .lex "$i", $P2230
.annotate 'line', 1970
    new $P102, "Undef"
    set $P2231, $P102
    .lex "$arg-count", $P2231
.annotate 'line', 1972
    new $P103, "Undef"
    set $P2232, $P103
    .lex "$result", $P2232
.annotate 'line', 1976
    .const 'Sub' $P2234 = "258_1308672490.86084" 
    newclosure $P2244, $P2234
    set $P2233, $P2244
    .lex "get-value", $P2233
.annotate 'line', 1991
    .const 'Sub' $P2246 = "259_1308672490.86084" 
    newclosure $P2251, $P2246
    set $P2245, $P2251
    .lex "slurp-rest", $P2245
.annotate 'line', 1969
    new $P105, "Integer"
    assign $P105, 0
    store_lex "$i", $P105
.annotate 'line', 1970
    find_lex $P2252, "@args"
    unless_null $P2252, vivify_1128
    $P2252 = root_new ['parrot';'ResizablePMCArray']
  vivify_1128:
    set $N100, $P2252
    new $P105, 'Float'
    set $P105, $N100
    store_lex "$arg-count", $P105
.annotate 'line', 1972
    get_hll_global $P105, "GLOBAL"
    nqp_get_package_through_who $P106, $P105, "HLL"
    nqp_get_package_through_who $P107, $P106, "CommandLine"
    get_who $P108, $P107
    set $P109, $P108["Result"]
    $P110 = $P109."new"()
    store_lex "$result", $P110
.annotate 'line', 1973
    find_lex $P105, "$result"
    unless_null $P105, vivify_1129
    new $P105, "Undef"
  vivify_1129:
    $P105."init"()
.annotate 'line', 1968
    find_lex $P105, "get-value"
    find_lex $P105, "slurp-rest"
.annotate 'line', 1999
    new $P108, 'ExceptionHandler'
    set_label $P108, loop2297_handler
    $P108."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P108
  loop2297_test:
    find_lex $P105, "$i"
    unless_null $P105, vivify_1130
    new $P105, "Undef"
  vivify_1130:
    set $N100, $P105
    find_lex $P106, "$arg-count"
    unless_null $P106, vivify_1131
    new $P106, "Undef"
  vivify_1131:
    set $N101, $P106
    islt $I101, $N100, $N101
    unless $I101, loop2297_done
  loop2297_redo:
    .const 'Sub' $P2254 = "260_1308672490.86084" 
    capture_lex $P2254
    $P2254()
  loop2297_next:
    goto loop2297_test
  loop2297_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P109, exception, 'type'
    eq $P109, .CONTROL_LOOP_NEXT, loop2297_next
    eq $P109, .CONTROL_LOOP_REDO, loop2297_redo
  loop2297_done:
    pop_eh 
.annotate 'line', 2051
    new $P105, "Exception"
    set $P105['type'], .CONTROL_RETURN
    find_lex $P106, "$result"
    unless_null $P106, vivify_1192
    new $P106, "Undef"
  vivify_1192:
    setattribute $P105, 'payload', $P106
    throw $P105
.annotate 'line', 1968
    .return ()
  control_2226:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P105, exception, "payload"
    .return ($P105)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "get-value"  :subid("258_1308672490.86084") :outer("257_1308672490.86084")
    .param pmc param_2235
.annotate 'line', 1976
    .lex "$opt", param_2235
.annotate 'line', 1977
    find_lex $P105, "$i"
    unless_null $P105, vivify_1103
    new $P105, "Undef"
  vivify_1103:
    set $N100, $P105
    find_lex $P106, "$arg-count"
    unless_null $P106, vivify_1104
    new $P106, "Undef"
  vivify_1104:
    sub $P107, $P106, 1
    set $N101, $P107
    iseq $I100, $N100, $N101
    if $I100, if_2236
.annotate 'line', 1979
    find_lex $P109, "self"
    find_lex $P110, "$i"
    unless_null $P110, vivify_1105
    new $P110, "Undef"
  vivify_1105:
    add $P111, $P110, 1
    set $I101, $P111
    find_lex $P2238, "@args"
    unless_null $P2238, vivify_1106
    $P2238 = root_new ['parrot';'ResizablePMCArray']
  vivify_1106:
    set $P112, $P2238[$I101]
    unless_null $P112, vivify_1107
    new $P112, "Undef"
  vivify_1107:
    $P113 = $P109."is-option"($P112)
    if $P113, if_2237
.annotate 'line', 1981
    find_lex $P115, "$i"
    unless_null $P115, vivify_1108
    new $P115, "Undef"
  vivify_1108:
    add $P116, $P115, 1
    set $I102, $P116
    find_lex $P2240, "@args"
    unless_null $P2240, vivify_1109
    $P2240 = root_new ['parrot';'ResizablePMCArray']
  vivify_1109:
    set $P117, $P2240[$I102]
    unless_null $P117, vivify_1110
    new $P117, "Undef"
  vivify_1110:
    find_lex $P118, "self"
    find_lex $P119, "$?CLASS"
    getattribute $P2241, $P118, $P119, "%!stopper"
    unless_null $P2241, vivify_1111
    $P2241 = root_new ['parrot';'Hash']
  vivify_1111:
    set $P120, $P2241[$P117]
    unless_null $P120, vivify_1112
    new $P120, "Undef"
  vivify_1112:
    if $P120, if_2239
.annotate 'line', 1983
    find_lex $P121, "$i"
    unless_null $P121, vivify_1113
    new $P121, "Undef"
  vivify_1113:
    clone $P2242, $P121
    inc $P121
    find_lex $P121, "$i"
    unless_null $P121, vivify_1114
    new $P121, "Undef"
  vivify_1114:
    set $I103, $P121
    find_lex $P2243, "@args"
    unless_null $P2243, vivify_1115
    $P2243 = root_new ['parrot';'ResizablePMCArray']
  vivify_1115:
    set $P122, $P2243[$I103]
    unless_null $P122, vivify_1116
    new $P122, "Undef"
  vivify_1116:
    set $P114, $P122
.annotate 'line', 1981
    goto if_2239_end
  if_2239:
.annotate 'line', 1982
    new $P121, 'String'
    set $P121, "Option "
    find_lex $P122, "$opt"
    unless_null $P122, vivify_1117
    new $P122, "Undef"
  vivify_1117:
    concat $P123, $P121, $P122
    concat $P124, $P123, " needs a value, but is followed by a stopper"
    die $P124
  if_2239_end:
.annotate 'line', 1981
    set $P108, $P114
.annotate 'line', 1979
    goto if_2237_end
  if_2237:
.annotate 'line', 1980
    new $P114, 'String'
    set $P114, "Option "
    find_lex $P115, "$opt"
    unless_null $P115, vivify_1118
    new $P115, "Undef"
  vivify_1118:
    concat $P116, $P114, $P115
    concat $P117, $P116, " needs a value, but is followed by an option"
    die $P117
  if_2237_end:
.annotate 'line', 1979
    set $P104, $P108
.annotate 'line', 1977
    goto if_2236_end
  if_2236:
.annotate 'line', 1978
    new $P108, 'String'
    set $P108, "Option "
    find_lex $P109, "$opt"
    unless_null $P109, vivify_1119
    new $P109, "Undef"
  vivify_1119:
    concat $P110, $P108, $P109
    concat $P111, $P110, " needs a value"
    die $P111
  if_2236_end:
.annotate 'line', 1976
    .return ($P104)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "slurp-rest"  :subid("259_1308672490.86084") :outer("257_1308672490.86084")
.annotate 'line', 1991
    find_lex $P105, "$i"
    unless_null $P105, vivify_1120
    new $P105, "Undef"
  vivify_1120:
    clone $P2247, $P105
    inc $P105
.annotate 'line', 1993
    new $P107, 'ExceptionHandler'
    set_label $P107, loop2250_handler
    $P107."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P107
  loop2250_test:
    find_lex $P105, "$i"
    unless_null $P105, vivify_1121
    new $P105, "Undef"
  vivify_1121:
    set $N100, $P105
    find_lex $P106, "$arg-count"
    unless_null $P106, vivify_1122
    new $P106, "Undef"
  vivify_1122:
    set $N101, $P106
    islt $I100, $N100, $N101
    unless $I100, loop2250_done
  loop2250_redo:
.annotate 'line', 1994
    find_lex $P107, "$result"
    unless_null $P107, vivify_1123
    new $P107, "Undef"
  vivify_1123:
    find_lex $P108, "$i"
    unless_null $P108, vivify_1124
    new $P108, "Undef"
  vivify_1124:
    set $I101, $P108
    find_lex $P2248, "@args"
    unless_null $P2248, vivify_1125
    $P2248 = root_new ['parrot';'ResizablePMCArray']
  vivify_1125:
    set $P109, $P2248[$I101]
    unless_null $P109, vivify_1126
    new $P109, "Undef"
  vivify_1126:
    $P107."add-argument"($P109)
.annotate 'line', 1993
    find_lex $P107, "$i"
    unless_null $P107, vivify_1127
    new $P107, "Undef"
  vivify_1127:
    clone $P2249, $P107
    inc $P107
  loop2250_next:
    goto loop2250_test
  loop2250_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P108, exception, 'type'
    eq $P108, .CONTROL_LOOP_NEXT, loop2250_next
    eq $P108, .CONTROL_LOOP_REDO, loop2250_redo
  loop2250_done:
    pop_eh 
.annotate 'line', 1991
    .return ($I100)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2253"  :anon :subid("260_1308672490.86084") :outer("257_1308672490.86084")
.annotate 'line', 1999
    .const 'Sub' $P2277 = "262_1308672490.86084" 
    capture_lex $P2277
    .const 'Sub' $P2260 = "261_1308672490.86084" 
    capture_lex $P2260
.annotate 'line', 2000
    new $P107, "Undef"
    set $P2255, $P107
    .lex "$cur", $P2255
    find_lex $P108, "$i"
    unless_null $P108, vivify_1132
    new $P108, "Undef"
  vivify_1132:
    set $I102, $P108
    find_lex $P2256, "@args"
    unless_null $P2256, vivify_1133
    $P2256 = root_new ['parrot';'ResizablePMCArray']
  vivify_1133:
    set $P109, $P2256[$I102]
    unless_null $P109, vivify_1134
    new $P109, "Undef"
  vivify_1134:
    store_lex "$cur", $P109
.annotate 'line', 2001
    find_lex $P108, "self"
    find_lex $P109, "$cur"
    unless_null $P109, vivify_1135
    new $P109, "Undef"
  vivify_1135:
    $P110 = $P108."is-option"($P109)
    if $P110, if_2257
.annotate 'line', 2043
    find_lex $P111, "$cur"
    unless_null $P111, vivify_1136
    new $P111, "Undef"
  vivify_1136:
    find_lex $P112, "self"
    find_lex $P113, "$?CLASS"
    getattribute $P2294, $P112, $P113, "%!stopper"
    unless_null $P2294, vivify_1137
    $P2294 = root_new ['parrot';'Hash']
  vivify_1137:
    set $P114, $P2294[$P111]
    unless_null $P114, vivify_1138
    new $P114, "Undef"
  vivify_1138:
    if $P114, if_2293
.annotate 'line', 2046
    find_lex $P115, "$result"
    unless_null $P115, vivify_1139
    new $P115, "Undef"
  vivify_1139:
    find_lex $P116, "$cur"
    unless_null $P116, vivify_1140
    new $P116, "Undef"
  vivify_1140:
    $P115."add-argument"($P116)
.annotate 'line', 2047
    find_lex $P115, "self"
    find_lex $P116, "$?CLASS"
    getattribute $P117, $P115, $P116, "$!stop-after-first-arg"
    unless_null $P117, vivify_1141
    new $P117, "Undef"
  vivify_1141:
    unless $P117, if_2295_end
    "slurp-rest"()
  if_2295_end:
.annotate 'line', 2045
    goto if_2293_end
  if_2293:
.annotate 'line', 2044
    "slurp-rest"()
  if_2293_end:
.annotate 'line', 2043
    goto if_2257_end
  if_2257:
.annotate 'line', 2002
    find_lex $P111, "$cur"
    unless_null $P111, vivify_1142
    new $P111, "Undef"
  vivify_1142:
    set $S100, $P111
    substr $S101, $S100, 0, 2
    iseq $I102, $S101, "--"
    if $I102, if_2258
.annotate 'line', 2021
    .const 'Sub' $P2277 = "262_1308672490.86084" 
    capture_lex $P2277
    $P2277()
    goto if_2258_end
  if_2258:
.annotate 'line', 2002
    .const 'Sub' $P2260 = "261_1308672490.86084" 
    capture_lex $P2260
    $P2260()
  if_2258_end:
  if_2257_end:
.annotate 'line', 1999
    find_lex $P108, "$i"
    unless_null $P108, vivify_1191
    new $P108, "Undef"
  vivify_1191:
    clone $P2296, $P108
    inc $P108
    .return ($P2296)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2276"  :anon :subid("262_1308672490.86084") :outer("260_1308672490.86084")
.annotate 'line', 2021
    .const 'Sub' $P2286 = "263_1308672490.86084" 
    capture_lex $P2286
.annotate 'line', 2022
    new $P117, "Undef"
    set $P2278, $P117
    .lex "$opt", $P2278
    find_lex $P118, "$cur"
    unless_null $P118, vivify_1143
    new $P118, "Undef"
  vivify_1143:
    set $S102, $P118
    substr $S103, $S102, 1
    new $P119, 'String'
    set $P119, $S103
    store_lex "$opt", $P119
.annotate 'line', 2023
    find_lex $P119, "$opt"
    unless_null $P119, vivify_1144
    new $P119, "Undef"
  vivify_1144:
    set $S102, $P119
    length $I103, $S102
    set $N102, $I103
    iseq $I104, $N102, 1.0
    if $I104, if_2279
.annotate 'line', 2033
    .const 'Sub' $P2286 = "263_1308672490.86084" 
    capture_lex $P2286
    $P123 = $P2286()
    set $P118, $P123
.annotate 'line', 2023
    goto if_2279_end
  if_2279:
.annotate 'line', 2025
    find_lex $P120, "$opt"
    unless_null $P120, vivify_1152
    new $P120, "Undef"
  vivify_1152:
    find_lex $P121, "self"
    find_lex $P122, "$?CLASS"
    getattribute $P2281, $P121, $P122, "%!options"
    unless_null $P2281, vivify_1153
    $P2281 = root_new ['parrot';'Hash']
  vivify_1153:
    set $P123, $P2281[$P120]
    unless_null $P123, vivify_1154
    new $P123, "Undef"
  vivify_1154:
    if $P123, unless_2280_end
    new $P124, 'String'
    set $P124, "No such option -"
    find_lex $P125, "$opt"
    unless_null $P125, vivify_1155
    new $P125, "Undef"
  vivify_1155:
    concat $P126, $P124, $P125
    die $P126
  unless_2280_end:
.annotate 'line', 2026
    find_lex $P120, "self"
    find_lex $P121, "$opt"
    unless_null $P121, vivify_1156
    new $P121, "Undef"
  vivify_1156:
    $P122 = $P120."wants-value"($P121)
    if $P122, if_2282
.annotate 'line', 2030
    find_lex $P123, "$result"
    unless_null $P123, vivify_1157
    new $P123, "Undef"
  vivify_1157:
    find_lex $P124, "$opt"
    unless_null $P124, vivify_1158
    new $P124, "Undef"
  vivify_1158:
    $P123."add-option"($P124, 1)
.annotate 'line', 2029
    goto if_2282_end
  if_2282:
.annotate 'line', 2027
    find_lex $P123, "$result"
    unless_null $P123, vivify_1159
    new $P123, "Undef"
  vivify_1159:
    find_lex $P124, "$opt"
    unless_null $P124, vivify_1160
    new $P124, "Undef"
  vivify_1160:
.annotate 'line', 2028
    new $P125, 'String'
    set $P125, "-"
    find_lex $P126, "$opt"
    unless_null $P126, vivify_1161
    new $P126, "Undef"
  vivify_1161:
    concat $P127, $P125, $P126
    $P128 = "get-value"($P127)
    $P123."add-option"($P124, $P128)
  if_2282_end:
.annotate 'line', 2032
    new $P121, 'String'
    set $P121, "-"
    find_lex $P122, "$opt"
    unless_null $P122, vivify_1162
    new $P122, "Undef"
  vivify_1162:
    concat $P123, $P121, $P122
    find_lex $P124, "self"
    find_lex $P125, "$?CLASS"
    getattribute $P2284, $P124, $P125, "%!stopper"
    unless_null $P2284, vivify_1163
    $P2284 = root_new ['parrot';'Hash']
  vivify_1163:
    set $P126, $P2284[$P123]
    unless_null $P126, vivify_1164
    new $P126, "Undef"
  vivify_1164:
    if $P126, if_2283
    set $P120, $P126
    goto if_2283_end
  if_2283:
    $P127 = "slurp-rest"()
    set $P120, $P127
  if_2283_end:
.annotate 'line', 2023
    set $P118, $P120
  if_2279_end:
.annotate 'line', 2021
    .return ($P118)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.include "except_types.pasm"
.sub "_block2285"  :anon :subid("263_1308672490.86084") :outer("262_1308672490.86084")
.annotate 'line', 2033
    .const 'Sub' $P2289 = "264_1308672490.86084" 
    capture_lex $P2289
.annotate 'line', 2035
    new $P121, "Undef"
    set $P2287, $P121
    .lex "$iter", $P2287
    find_lex $P122, "$opt"
    unless_null $P122, vivify_1145
    new $P122, "Undef"
  vivify_1145:
    iter $P123, $P122
    store_lex "$iter", $P123
.annotate 'line', 2036
    new $P124, 'ExceptionHandler'
    set_label $P124, loop2292_handler
    $P124."handle_types"(.CONTROL_LOOP_NEXT, .CONTROL_LOOP_REDO, .CONTROL_LOOP_LAST)
    push_eh $P124
  loop2292_test:
    find_lex $P122, "$iter"
    unless_null $P122, vivify_1146
    new $P122, "Undef"
  vivify_1146:
    unless $P122, loop2292_done
  loop2292_redo:
    .const 'Sub' $P2289 = "264_1308672490.86084" 
    capture_lex $P2289
    $P2289()
  loop2292_next:
    goto loop2292_test
  loop2292_handler:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P125, exception, 'type'
    eq $P125, .CONTROL_LOOP_NEXT, loop2292_next
    eq $P125, .CONTROL_LOOP_REDO, loop2292_redo
  loop2292_done:
    pop_eh 
.annotate 'line', 2033
    .return ($P122)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2288"  :anon :subid("264_1308672490.86084") :outer("263_1308672490.86084")
.annotate 'line', 2037
    new $P123, "Undef"
    set $P2290, $P123
    .lex "$o", $P2290
    find_lex $P124, "$iter"
    unless_null $P124, vivify_1147
    new $P124, "Undef"
  vivify_1147:
    shift $P125, $P124
    store_lex "$o", $P125
.annotate 'line', 2038
    find_lex $P124, "self"
    find_lex $P125, "$o"
    unless_null $P125, vivify_1148
    new $P125, "Undef"
  vivify_1148:
    $P126 = $P124."wants-value"($P125)
    unless $P126, if_2291_end
    new $P127, 'String'
    set $P127, "Option -"
    find_lex $P128, "$o"
    unless_null $P128, vivify_1149
    new $P128, "Undef"
  vivify_1149:
    concat $P129, $P127, $P128
    concat $P130, $P129, " requires a value and cannot be grouped"
    die $P130
  if_2291_end:
.annotate 'line', 2039
    find_lex $P124, "$result"
    unless_null $P124, vivify_1150
    new $P124, "Undef"
  vivify_1150:
    find_lex $P125, "$o"
    unless_null $P125, vivify_1151
    new $P125, "Undef"
  vivify_1151:
    $P126 = $P124."add-option"($P125, 1)
.annotate 'line', 2036
    .return ($P126)
.end


.HLL "nqp"

.namespace ["HLL";"CommandLine";"Parser"]
.sub "_block2259"  :anon :subid("261_1308672490.86084") :outer("260_1308672490.86084")
.annotate 'line', 2004
    new $P112, "Undef"
    set $P2261, $P112
    .lex "$opt", $P2261
.annotate 'line', 2005
    new $P113, "Undef"
    set $P2262, $P113
    .lex "$idx", $P2262
.annotate 'line', 2006
    new $P114, "Undef"
    set $P2263, $P114
    .lex "$value", $P2263
.annotate 'line', 2007
    new $P115, "Undef"
    set $P2264, $P115
    .lex "$has-value", $P2264
.annotate 'line', 2004
    find_lex $P116, "$i"
    unless_null $P116, vivify_1165
    new $P116, "Undef"
  vivify_1165:
    set $I103, $P116
    find_lex $P2265, "@args"
    unless_null $P2265, vivify_1166
    $P2265 = root_new ['parrot';'ResizablePMCArray']
  vivify_1166:
    set $P117, $P2265[$I103]
    unless_null $P117, vivify_1167
    new $P117, "Undef"
  vivify_1167:
    set $S102, $P117
    substr $S103, $S102, 2
    new $P118, 'String'
    set $P118, $S103
    store_lex "$opt", $P118
.annotate 'line', 2005
    find_lex $P116, "$opt"
    unless_null $P116, vivify_1168
    new $P116, "Undef"
  vivify_1168:
    set $S102, $P116
    index $I103, $S102, "="
    new $P117, 'Integer'
    set $P117, $I103
    store_lex "$idx", $P117
.annotate 'line', 2006
    new $P116, "Integer"
    assign $P116, 1
    store_lex "$value", $P116
.annotate 'line', 2007
    new $P116, "Integer"
    assign $P116, 0
    store_lex "$has-value", $P116
.annotate 'line', 2009
    find_lex $P116, "$idx"
    unless_null $P116, vivify_1169
    new $P116, "Undef"
  vivify_1169:
    set $N102, $P116
    isge $I103, $N102, 0.0
    unless $I103, if_2266_end
.annotate 'line', 2010
    find_lex $P117, "$opt"
    unless_null $P117, vivify_1170
    new $P117, "Undef"
  vivify_1170:
    set $S102, $P117
    find_lex $P118, "$idx"
    unless_null $P118, vivify_1171
    new $P118, "Undef"
  vivify_1171:
    add $P119, $P118, 1
    set $I104, $P119
    substr $S103, $S102, $I104
    new $P120, 'String'
    set $P120, $S103
    store_lex "$value", $P120
.annotate 'line', 2011
    find_lex $P117, "$opt"
    unless_null $P117, vivify_1172
    new $P117, "Undef"
  vivify_1172:
    set $S102, $P117
    find_lex $P118, "$idx"
    unless_null $P118, vivify_1173
    new $P118, "Undef"
  vivify_1173:
    set $I104, $P118
    substr $S103, $S102, 0, $I104
    new $P119, 'String'
    set $P119, $S103
    store_lex "$opt", $P119
.annotate 'line', 2012
    new $P117, "Integer"
    assign $P117, 1
    store_lex "$has-value", $P117
  if_2266_end:
.annotate 'line', 2014
    find_lex $P118, "$opt"
    unless_null $P118, vivify_1174
    new $P118, "Undef"
  vivify_1174:
    find_lex $P116, "self"
    find_lex $P117, "$?CLASS"
    getattribute $P2268, $P116, $P117, "%!options"
    unless_null $P2268, vivify_1175
    $P2268 = root_new ['parrot';'Hash']
  vivify_1175:
    exists $I103, $P2268[$P118]
    if $I103, unless_2267_end
    new $P119, 'String'
    set $P119, "Illegal option --"
    find_lex $P120, "$opt"
    unless_null $P120, vivify_1176
    new $P120, "Undef"
  vivify_1176:
    concat $P121, $P119, $P120
    die $P121
  unless_2267_end:
.annotate 'line', 2015
    find_lex $P117, "$opt"
    unless_null $P117, vivify_1177
    new $P117, "Undef"
  vivify_1177:
    find_lex $P118, "self"
    find_lex $P119, "$?CLASS"
    getattribute $P2271, $P118, $P119, "%!options"
    unless_null $P2271, vivify_1178
    $P2271 = root_new ['parrot';'Hash']
  vivify_1178:
    set $P120, $P2271[$P117]
    unless_null $P120, vivify_1179
    new $P120, "Undef"
  vivify_1179:
    set $S102, $P120
    isne $I103, $S102, "s"
    if $I103, if_2270
    new $P116, 'Integer'
    set $P116, $I103
    goto if_2270_end
  if_2270:
    find_lex $P121, "$has-value"
    unless_null $P121, vivify_1180
    new $P121, "Undef"
  vivify_1180:
    set $P116, $P121
  if_2270_end:
    unless $P116, if_2269_end
    new $P122, 'String'
    set $P122, "Option --"
    find_lex $P123, "$opt"
    unless_null $P123, vivify_1181
    new $P123, "Undef"
  vivify_1181:
    concat $P124, $P122, $P123
    concat $P125, $P124, " does not allow a value"
    die $P125
  if_2269_end:
.annotate 'line', 2016
    find_lex $P117, "$has-value"
    unless_null $P117, vivify_1182
    new $P117, "Undef"
  vivify_1182:
    isfalse $I103, $P117
    if $I103, if_2273
    new $P116, 'Integer'
    set $P116, $I103
    goto if_2273_end
  if_2273:
    find_lex $P118, "self"
    find_lex $P119, "$opt"
    unless_null $P119, vivify_1183
    new $P119, "Undef"
  vivify_1183:
    $P120 = $P118."wants-value"($P119)
    set $P116, $P120
  if_2273_end:
    unless $P116, if_2272_end
.annotate 'line', 2017
    new $P121, 'String'
    set $P121, "--"
    find_lex $P122, "$opt"
    unless_null $P122, vivify_1184
    new $P122, "Undef"
  vivify_1184:
    concat $P123, $P121, $P122
    $P124 = "get-value"($P123)
    store_lex "$value", $P124
  if_2272_end:
.annotate 'line', 2019
    find_lex $P116, "$result"
    unless_null $P116, vivify_1185
    new $P116, "Undef"
  vivify_1185:
    find_lex $P117, "$opt"
    unless_null $P117, vivify_1186
    new $P117, "Undef"
  vivify_1186:
    find_lex $P118, "$value"
    unless_null $P118, vivify_1187
    new $P118, "Undef"
  vivify_1187:
    $P116."add-option"($P117, $P118)
.annotate 'line', 2020
    new $P117, 'String'
    set $P117, "--"
    find_lex $P118, "$opt"
    unless_null $P118, vivify_1188
    new $P118, "Undef"
  vivify_1188:
    concat $P119, $P117, $P118
    find_lex $P120, "self"
    find_lex $P121, "$?CLASS"
    getattribute $P2275, $P120, $P121, "%!stopper"
    unless_null $P2275, vivify_1189
    $P2275 = root_new ['parrot';'Hash']
  vivify_1189:
    set $P122, $P2275[$P119]
    unless_null $P122, vivify_1190
    new $P122, "Undef"
  vivify_1190:
    if $P122, if_2274
    set $P116, $P122
    goto if_2274_end
  if_2274:
    find_lex $P123, "slurp-rest"
    set $P116, $P123
  if_2274_end:
.annotate 'line', 2002
    .return ($P116)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block2299"  :subid("265_1308672490.86084") :outer("10_1308672490.86084")
.annotate 'line', 2086
    .const 'Sub' $P2375 = "282_1308672490.86084" 
    capture_lex $P2375
    .const 'Sub' $P2373 = "281_1308672490.86084" 
    capture_lex $P2373
    .const 'Sub' $P2371 = "280_1308672490.86084" 
    capture_lex $P2371
    .const 'Sub' $P2365 = "279_1308672490.86084" 
    capture_lex $P2365
    .const 'Sub' $P2357 = "278_1308672490.86084" 
    capture_lex $P2357
    .const 'Sub' $P2351 = "277_1308672490.86084" 
    capture_lex $P2351
    .const 'Sub' $P2345 = "276_1308672490.86084" 
    capture_lex $P2345
    .const 'Sub' $P2342 = "275_1308672490.86084" 
    capture_lex $P2342
    .const 'Sub' $P2336 = "274_1308672490.86084" 
    capture_lex $P2336
    .const 'Sub' $P2330 = "273_1308672490.86084" 
    capture_lex $P2330
    .const 'Sub' $P2324 = "272_1308672490.86084" 
    capture_lex $P2324
    .const 'Sub' $P2321 = "271_1308672490.86084" 
    capture_lex $P2321
    .const 'Sub' $P2317 = "270_1308672490.86084" 
    capture_lex $P2317
    .const 'Sub' $P2309 = "267_1308672490.86084" 
    capture_lex $P2309
    .const 'Sub' $P2303 = "266_1308672490.86084" 
    capture_lex $P2303
    .lex "Event", $P2301
.annotate 'line', 2107
    .const 'Sub' $P2303 = "266_1308672490.86084" 
    newclosure $P2305, $P2303
    set $P2302, $P2305
    .lex "addr", $P2302
.annotate 'line', 2086
    .lex "$?PACKAGE", $P2306
    .lex "$?CLASS", $P2307
.annotate 'line', 2088
    .const 'Sub' $P2309 = "267_1308672490.86084" 
    capture_lex $P2309
    $P2309()
.annotate 'line', 2086
    find_lex $P101, "addr"
.annotate 'line', 2228
    .const 'Sub' $P2375 = "282_1308672490.86084" 
    newclosure $P2378, $P2375
.annotate 'line', 2086
    .return ($P2378)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "addr"  :subid("266_1308672490.86084") :outer("265_1308672490.86084")
    .param pmc param_2304
.annotate 'line', 2107
    .lex "$obj", param_2304
.annotate 'line', 2108
    find_lex $P101, "$obj"
    unless_null $P101, vivify_1193
    new $P101, "Undef"
  vivify_1193:
    get_addr $I100, $P101
.annotate 'line', 2107
    .return ($I100)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "_block2308"  :anon :subid("267_1308672490.86084") :outer("265_1308672490.86084")
.annotate 'line', 2088
    .const 'Sub' $P2314 = "269_1308672490.86084" 
    capture_lex $P2314
    .const 'Sub' $P2312 = "268_1308672490.86084" 
    capture_lex $P2312
    .lex "$?PACKAGE", $P2310
    .lex "$?CLASS", $P2311
.annotate 'line', 2095
    .const 'Sub' $P2314 = "269_1308672490.86084" 
    newclosure $P2316, $P2314
.annotate 'line', 2088
    .return ($P2316)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "deserialize_past" :anon :subid("268_1308672490.86084") :outer("267_1308672490.86084")
    .param pmc param_2313
.annotate 'line', 2091
    .lex "self", param_2313
    find_lex $P101, "self"
    find_lex $P102, "$?CLASS"
    getattribute $P103, $P101, $P102, "$!deserialize_past"
    unless_null $P103, vivify_1194
    new $P103, "Undef"
  vivify_1194:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "fixup_past" :anon :subid("269_1308672490.86084") :outer("267_1308672490.86084")
    .param pmc param_2315
.annotate 'line', 2095
    .lex "self", param_2315
    find_lex $P101, "self"
    find_lex $P102, "$?CLASS"
    getattribute $P103, $P101, $P102, "$!fixup_past"
    unless_null $P103, vivify_1195
    new $P103, "Undef"
  vivify_1195:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "new" :anon :subid("270_1308672490.86084") :outer("265_1308672490.86084")
    .param pmc param_2318
    .param pmc param_2319 :named("handle")
.annotate 'line', 2115
    .lex "self", param_2318
    .lex "$handle", param_2319
.annotate 'line', 2116
    new $P101, "Undef"
    set $P2320, $P101
    .lex "$obj", $P2320
    find_lex $P102, "self"
    $P103 = $P102."CREATE"()
    store_lex "$obj", $P103
.annotate 'line', 2117
    find_lex $P102, "$obj"
    unless_null $P102, vivify_1196
    new $P102, "Undef"
  vivify_1196:
    find_lex $P103, "$handle"
    unless_null $P103, vivify_1197
    new $P103, "Undef"
  vivify_1197:
    $P102."BUILD"($P103 :named("handle"))
.annotate 'line', 2115
    find_lex $P102, "$obj"
    unless_null $P102, vivify_1198
    new $P102, "Undef"
  vivify_1198:
    .return ($P102)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "BUILD" :anon :subid("271_1308672490.86084") :outer("265_1308672490.86084")
    .param pmc param_2322
    .param pmc param_2323 :optional :named("handle")
    .param int has_param_2323 :opt_flag
.annotate 'line', 2121
    .lex "self", param_2322
    if has_param_2323, optparam_1199
    new $P101, "Undef"
    set param_2323, $P101
  optparam_1199:
    .lex "$handle", param_2323
.annotate 'line', 2122
    find_lex $P102, "$handle"
    unless_null $P102, vivify_1200
    new $P102, "Undef"
  vivify_1200:
    set $S100, $P102
    nqp_create_sc $P103, $S100
    find_lex $P104, "self"
    find_lex $P105, "$?CLASS"
    setattribute $P104, $P105, "$!sc", $P103
.annotate 'line', 2123
    find_lex $P102, "$handle"
    unless_null $P102, vivify_1201
    new $P102, "Undef"
  vivify_1201:
    find_lex $P103, "self"
    find_lex $P104, "$?CLASS"
    setattribute $P103, $P104, "$!handle", $P102
.annotate 'line', 2124
    new $P102, "Hash"
    find_lex $P103, "self"
    find_lex $P104, "$?CLASS"
    setattribute $P103, $P104, "%!addr_to_slot", $P102
.annotate 'line', 2125
    new $P102, "ResizablePMCArray"
    find_lex $P103, "self"
    find_lex $P104, "$?CLASS"
    setattribute $P103, $P104, "@!event_stream", $P102
.annotate 'line', 2121
    .return ($P102)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "slot_for_object" :anon :subid("272_1308672490.86084") :outer("265_1308672490.86084")
    .param pmc param_2325
    .param pmc param_2326
.annotate 'line', 2129
    .lex "self", param_2325
    .lex "$obj", param_2326
.annotate 'line', 2130
    new $P101, "Undef"
    set $P2327, $P101
    .lex "$slot", $P2327
    find_lex $P102, "$obj"
    unless_null $P102, vivify_1202
    new $P102, "Undef"
  vivify_1202:
    $P103 = "addr"($P102)
    find_lex $P104, "self"
    find_lex $P105, "$?CLASS"
    getattribute $P2328, $P104, $P105, "%!addr_to_slot"
    unless_null $P2328, vivify_1203
    $P2328 = root_new ['parrot';'Hash']
  vivify_1203:
    set $P106, $P2328[$P103]
    unless_null $P106, vivify_1204
    new $P106, "Undef"
  vivify_1204:
    store_lex "$slot", $P106
.annotate 'line', 2131
    find_lex $P102, "$slot"
    unless_null $P102, vivify_1205
    new $P102, "Undef"
  vivify_1205:
    defined $I101, $P102
    if $I101, unless_2329_end
.annotate 'line', 2132
    die "slot_for_object called on object not in context"
  unless_2329_end:
.annotate 'line', 2129
    find_lex $P102, "$slot"
    unless_null $P102, vivify_1206
    new $P102, "Undef"
  vivify_1206:
    .return ($P102)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "get_slot_past_for_object" :anon :subid("273_1308672490.86084") :outer("265_1308672490.86084")
    .param pmc param_2333
    .param pmc param_2334
.annotate 'line', 2141
    new $P2332, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2332, control_2331
    push_eh $P2332
    .lex "self", param_2333
    .lex "$obj", param_2334
.annotate 'line', 2142
    new $P101, "Undef"
    set $P2335, $P101
    .lex "$slot", $P2335
    find_lex $P102, "self"
    find_lex $P103, "$obj"
    unless_null $P103, vivify_1207
    new $P103, "Undef"
  vivify_1207:
    $P104 = $P102."slot_for_object"($P103)
    store_lex "$slot", $P104
.annotate 'line', 2143
    new $P102, "Exception"
    set $P102['type'], .CONTROL_RETURN
    get_hll_global $P103, "GLOBAL"
    nqp_get_package_through_who $P104, $P103, "PAST"
    get_who $P105, $P104
    set $P106, $P105["Op"]
    find_lex $P107, "self"
    find_lex $P108, "$?CLASS"
    getattribute $P109, $P107, $P108, "$!handle"
    unless_null $P109, vivify_1208
    new $P109, "Undef"
  vivify_1208:
    find_lex $P110, "$slot"
    unless_null $P110, vivify_1209
    new $P110, "Undef"
  vivify_1209:
    $P111 = $P106."new"($P109, $P110, "nqp_get_sc_object Psi" :named("pirop"))
    setattribute $P102, 'payload', $P111
    throw $P102
.annotate 'line', 2141
    .return ()
  control_2331:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P102, exception, "payload"
    .return ($P102)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.include "except_types.pasm"
.sub "set_slot_past" :anon :subid("274_1308672490.86084") :outer("265_1308672490.86084")
    .param pmc param_2339
    .param pmc param_2340
    .param pmc param_2341
.annotate 'line', 2147
    new $P2338, ['ExceptionHandler'], .CONTROL_RETURN
    set_label $P2338, control_2337
    push_eh $P2338
    .lex "self", param_2339
    .lex "$slot", param_2340
    .lex "$past_to_set", param_2341
.annotate 'line', 2148
    new $P101, "Exception"
    set $P101['type'], .CONTROL_RETURN
    get_hll_global $P102, "GLOBAL"
    nqp_get_package_through_who $P103, $P102, "PAST"
    get_who $P104, $P103
    set $P105, $P104["Op"]
    find_lex $P106, "self"
    find_lex $P107, "$?CLASS"
    getattribute $P108, $P106, $P107, "$!handle"
    unless_null $P108, vivify_1210
    new $P108, "Undef"
  vivify_1210:
    find_lex $P109, "$slot"
    unless_null $P109, vivify_1211
    new $P109, "Undef"
  vivify_1211:
    find_lex $P110, "$past_to_set"
    unless_null $P110, vivify_1212
    new $P110, "Undef"
  vivify_1212:
    $P111 = $P105."new"($P108, $P109, $P110, "nqp_set_sc_object vsiP" :named("pirop"))
    setattribute $P101, 'payload', $P111
    throw $P101
.annotate 'line', 2147
    .return ()
  control_2337:
    .local pmc exception 
    .get_results (exception) 
    getattribute $P101, exception, "payload"
    .return ($P101)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "set_cur_sc" :anon :subid("275_1308672490.86084") :outer("265_1308672490.86084")
    .param pmc param_2343
    .param pmc param_2344
.annotate 'line', 2154
    .lex "self", param_2343
    .lex "$to_wrap", param_2344
.annotate 'line', 2155
    get_hll_global $P101, "GLOBAL"
    nqp_get_package_through_who $P102, $P101, "PAST"
    get_who $P103, $P102
    set $P104, $P103["Op"]
    find_lex $P105, "$to_wrap"
    unless_null $P105, vivify_1213
    new $P105, "Undef"
  vivify_1213:
.annotate 'line', 2158
    get_hll_global $P106, "GLOBAL"
    nqp_get_package_through_who $P107, $P106, "PAST"
    get_who $P108, $P107
    set $P109, $P108["Var"]
    $P110 = $P109."new"("cur_sc" :named("name"), "register" :named("scope"))
    $P111 = $P104."new"($P105, $P110, "nqp_set_sc_for_object__0PP" :named("pirop"))
.annotate 'line', 2154
    .return ($P111)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "add_object" :anon :subid("276_1308672490.86084") :outer("265_1308672490.86084")
    .param pmc param_2346
    .param pmc param_2347
.annotate 'line', 2163
    .lex "self", param_2346
    .lex "$obj", param_2347
.annotate 'line', 2165
    new $P101, "Undef"
    set $P2348, $P101
    .lex "$idx", $P2348
.annotate 'line', 2164
    find_lex $P102, "$obj"
    unless_null $P102, vivify_1214
    new $P102, "Undef"
  vivify_1214:
    find_lex $P103, "self"
    find_lex $P104, "$?CLASS"
    getattribute $P105, $P103, $P104, "$!sc"
    unless_null $P105, vivify_1215
    new $P105, "Undef"
  vivify_1215:
    nqp_set_sc_for_object $P102, $P105
.annotate 'line', 2165
    find_lex $P102, "self"
    find_lex $P103, "$?CLASS"
    getattribute $P104, $P102, $P103, "$!sc"
    unless_null $P104, vivify_1216
    new $P104, "Undef"
  vivify_1216:
    $P105 = $P104."elems"()
    store_lex "$idx", $P105
.annotate 'line', 2166
    find_lex $P102, "$obj"
    unless_null $P102, vivify_1217
    new $P102, "Undef"
  vivify_1217:
    find_lex $P103, "$idx"
    unless_null $P103, vivify_1218
    new $P103, "Undef"
  vivify_1218:
    set $I101, $P103
    find_lex $P104, "self"
    find_lex $P105, "$?CLASS"
    getattribute $P2349, $P104, $P105, "$!sc"
    unless_null $P2349, vivify_1219
    $P2349 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P104, $P105, "$!sc", $P2349
  vivify_1219:
    set $P2349[$I101], $P102
.annotate 'line', 2167
    find_lex $P102, "$idx"
    unless_null $P102, vivify_1220
    new $P102, "Undef"
  vivify_1220:
    find_lex $P103, "$obj"
    unless_null $P103, vivify_1221
    new $P103, "Undef"
  vivify_1221:
    $P104 = "addr"($P103)
    find_lex $P105, "self"
    find_lex $P106, "$?CLASS"
    getattribute $P2350, $P105, $P106, "%!addr_to_slot"
    unless_null $P2350, vivify_1222
    $P2350 = root_new ['parrot';'Hash']
    setattribute $P105, $P106, "%!addr_to_slot", $P2350
  vivify_1222:
    set $P2350[$P104], $P102
.annotate 'line', 2163
    find_lex $P102, "$idx"
    unless_null $P102, vivify_1223
    new $P102, "Undef"
  vivify_1223:
    .return ($P102)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "add_code" :anon :subid("277_1308672490.86084") :outer("265_1308672490.86084")
    .param pmc param_2352
    .param pmc param_2353
.annotate 'line', 2172
    .lex "self", param_2352
    .lex "$obj", param_2353
.annotate 'line', 2173
    new $P101, "Undef"
    set $P2354, $P101
    .lex "$idx", $P2354
    find_lex $P102, "self"
    find_lex $P103, "$?CLASS"
    getattribute $P104, $P102, $P103, "$!sc"
    unless_null $P104, vivify_1224
    new $P104, "Undef"
  vivify_1224:
    $P105 = $P104."elems"()
    store_lex "$idx", $P105
.annotate 'line', 2174
    find_lex $P102, "$obj"
    unless_null $P102, vivify_1225
    new $P102, "Undef"
  vivify_1225:
    find_lex $P103, "$idx"
    unless_null $P103, vivify_1226
    new $P103, "Undef"
  vivify_1226:
    set $I101, $P103
    find_lex $P104, "self"
    find_lex $P105, "$?CLASS"
    getattribute $P2355, $P104, $P105, "$!sc"
    unless_null $P2355, vivify_1227
    $P2355 = root_new ['parrot';'ResizablePMCArray']
    setattribute $P104, $P105, "$!sc", $P2355
  vivify_1227:
    set $P2355[$I101], $P102
.annotate 'line', 2175
    find_lex $P102, "$idx"
    unless_null $P102, vivify_1228
    new $P102, "Undef"
  vivify_1228:
    find_lex $P103, "$obj"
    unless_null $P103, vivify_1229
    new $P103, "Undef"
  vivify_1229:
    $P104 = "addr"($P103)
    find_lex $P105, "self"
    find_lex $P106, "$?CLASS"
    getattribute $P2356, $P105, $P106, "%!addr_to_slot"
    unless_null $P2356, vivify_1230
    $P2356 = root_new ['parrot';'Hash']
    setattribute $P105, $P106, "%!addr_to_slot", $P2356
  vivify_1230:
    set $P2356[$P104], $P102
.annotate 'line', 2172
    find_lex $P102, "$idx"
    unless_null $P102, vivify_1231
    new $P102, "Undef"
  vivify_1231:
    .return ($P102)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "add_event" :anon :subid("278_1308672490.86084") :outer("265_1308672490.86084")
    .param pmc param_2358
    .param pmc param_2359 :optional :named("deserialize_past")
    .param int has_param_2359 :opt_flag
    .param pmc param_2360 :optional :named("fixup_past")
    .param int has_param_2360 :opt_flag
.annotate 'line', 2182
    .lex "self", param_2358
    if has_param_2359, optparam_1232
    new $P101, "Undef"
    set param_2359, $P101
  optparam_1232:
    .lex "$deserialize_past", param_2359
    if has_param_2360, optparam_1233
    new $P102, "Undef"
    set param_2360, $P102
  optparam_1233:
    .lex "$fixup_past", param_2360
.annotate 'line', 2183
    find_dynamic_lex $P106, "%*COMPILING"
    unless_null $P106, vivify_1234
    get_hll_global $P104, "GLOBAL"
    get_who $P105, $P104
    set $P106, $P105["%COMPILING"]
    unless_null $P106, vivify_1235
    die "Contextual %*COMPILING not found"
  vivify_1235:
  vivify_1234:
    set $P2362, $P106["%?OPTIONS"]
    unless_null $P2362, vivify_1236
    $P2362 = root_new ['parrot';'Hash']
  vivify_1236:
    set $P107, $P2362["target"]
    unless_null $P107, vivify_1237
    new $P107, "Undef"
  vivify_1237:
    set $S100, $P107
    iseq $I101, $S100, "pir"
    if $I101, if_2361
.annotate 'line', 2189
    find_lex $P108, "self"
    find_lex $P109, "$?CLASS"
    getattribute $P2364, $P108, $P109, "@!event_stream"
    unless_null $P2364, vivify_1238
    $P2364 = root_new ['parrot';'ResizablePMCArray']
  vivify_1238:
    find_lex $P110, "Event"
    find_lex $P111, "$fixup_past"
    unless_null $P111, vivify_1239
    new $P111, "Undef"
  vivify_1239:
    $P112 = $P110."new"($P111 :named("fixup_past"))
    $P114 = $P2364."push"($P112)
.annotate 'line', 2187
    set $P103, $P114
.annotate 'line', 2183
    goto if_2361_end
  if_2361:
.annotate 'line', 2185
    find_lex $P108, "self"
    find_lex $P109, "$?CLASS"
    getattribute $P2363, $P108, $P109, "@!event_stream"
    unless_null $P2363, vivify_1240
    $P2363 = root_new ['parrot';'ResizablePMCArray']
  vivify_1240:
    find_lex $P110, "Event"
    find_lex $P111, "$deserialize_past"
    unless_null $P111, vivify_1241
    new $P111, "Undef"
  vivify_1241:
    $P112 = $P110."new"($P111 :named("deserialize_past"))
    $P113 = $P2363."push"($P112)
.annotate 'line', 2183
    set $P103, $P113
  if_2361_end:
.annotate 'line', 2182
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "get_object_sc_ref_past" :anon :subid("279_1308672490.86084") :outer("265_1308672490.86084")
    .param pmc param_2366
    .param pmc param_2367
.annotate 'line', 2195
    .lex "self", param_2366
    .lex "$obj", param_2367
.annotate 'line', 2198
    new $P101, "Undef"
    set $P2368, $P101
    .lex "$sc", $P2368
    find_lex $P102, "$obj"
    unless_null $P102, vivify_1242
    new $P102, "Undef"
  vivify_1242:
    nqp_get_sc_for_object $P103, $P102
    store_lex "$sc", $P103
.annotate 'line', 2199
    find_lex $P102, "$sc"
    unless_null $P102, vivify_1243
    new $P102, "Undef"
  vivify_1243:
    defined $I101, $P102
    if $I101, unless_2369_end
.annotate 'line', 2200
    new $P103, "String"
    assign $P103, "Object of type '"
    find_lex $P104, "$obj"
    unless_null $P104, vivify_1244
    new $P104, "Undef"
  vivify_1244:
    get_how $P105, $P104
    find_lex $P106, "$obj"
    unless_null $P106, vivify_1245
    new $P106, "Undef"
  vivify_1245:
    $S100 = $P105."name"($P106)
    concat $P107, $P103, $S100
    concat $P108, $P107, "' cannot be referenced without having been "
    concat $P109, $P108, "assigned a serialization context"
.annotate 'line', 2201
    die $P109
  unless_2369_end:
.annotate 'line', 2207
    find_lex $P103, "$sc"
    unless_null $P103, vivify_1246
    new $P103, "Undef"
  vivify_1246:
    find_lex $P104, "self"
    find_lex $P105, "$?CLASS"
    getattribute $P106, $P104, $P105, "$!sc"
    unless_null $P106, vivify_1247
    new $P106, "Undef"
  vivify_1247:
    issame $I101, $P103, $P106
    if $I101, if_2370
.annotate 'line', 2211
    get_hll_global $P107, "GLOBAL"
    nqp_get_package_through_who $P108, $P107, "PAST"
    get_who $P110, $P108
    set $P111, $P110["Op"]
.annotate 'line', 2212
    find_lex $P112, "$sc"
    unless_null $P112, vivify_1248
    new $P112, "Undef"
  vivify_1248:
    $P113 = $P112."handle"()
    find_lex $P114, "$sc"
    unless_null $P114, vivify_1249
    new $P114, "Undef"
  vivify_1249:
    find_lex $P115, "$obj"
    unless_null $P115, vivify_1250
    new $P115, "Undef"
  vivify_1250:
    $P116 = $P114."slot_index_for"($P115)
    $P117 = $P111."new"($P113, $P116, "nqp_get_sc_object Psi" :named("pirop"))
.annotate 'line', 2210
    set $P102, $P117
.annotate 'line', 2207
    goto if_2370_end
  if_2370:
.annotate 'line', 2208
    find_lex $P107, "self"
    find_lex $P108, "$obj"
    unless_null $P108, vivify_1251
    new $P108, "Undef"
  vivify_1251:
    $P109 = $P107."get_slot_past_for_object"($P108)
.annotate 'line', 2207
    set $P102, $P109
  if_2370_end:
.annotate 'line', 2195
    .return ($P102)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "sc" :anon :subid("280_1308672490.86084") :outer("265_1308672490.86084")
    .param pmc param_2372
.annotate 'line', 2218
    .lex "self", param_2372
    find_lex $P101, "self"
    find_lex $P102, "$?CLASS"
    getattribute $P103, $P101, $P102, "$!sc"
    unless_null $P103, vivify_1252
    new $P103, "Undef"
  vivify_1252:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "handle" :anon :subid("281_1308672490.86084") :outer("265_1308672490.86084")
    .param pmc param_2374
.annotate 'line', 2223
    .lex "self", param_2374
    find_lex $P101, "self"
    find_lex $P102, "$?CLASS"
    getattribute $P103, $P101, $P102, "$!handle"
    unless_null $P103, vivify_1253
    new $P103, "Undef"
  vivify_1253:
    .return ($P103)
.end


.HLL "nqp"

.namespace ["HLL";"Compiler";"SerializationContextBuilder"]
.sub "event_stream" :anon :subid("282_1308672490.86084") :outer("265_1308672490.86084")
    .param pmc param_2376
.annotate 'line', 2228
    .lex "self", param_2376
    find_lex $P101, "self"
    find_lex $P102, "$?CLASS"
    getattribute $P2377, $P101, $P102, "@!event_stream"
    unless_null $P2377, vivify_1254
    $P2377 = root_new ['parrot';'ResizablePMCArray']
  vivify_1254:
    .return ($P2377)
.end


.HLL "nqp"

.namespace []
.sub "_block2380" :load :anon :subid("283_1308672490.86084")
.annotate 'line', 1059
    .const 'Sub' $P2382 = "10_1308672490.86084" 
    $P107 = $P2382()
    .return ($P107)
.end

