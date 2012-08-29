.include 'cclass.pasm'
.include 'except_severity.pasm'
.include 'except_types.pasm'
.include 'iglobals.pasm'
.include 'interpinfo.pasm'
.include 'iterator.pasm'
.include 'sysinfo.pasm'
.include 'stat.pasm'
.include 'datatypes.pasm'
.loadlib "nqp_group"
.loadlib "nqp_ops"
.loadlib "nqp_bigint_ops"
.loadlib "trans_ops"
.loadlib "io_ops"
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_1_1346233424.597") :anon :lex
.annotate 'file', "src\\ModuleLoader.pm"
    .param pmc _lex_param_0 :slurpy 
    .const 'Sub' $P514 = 'cuid_7_1346233424.597' 
    capture_lex $P514 
    .lex "GLOBALish", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "ModuleLoader", $P103 
    .lex "@ARGS", _lex_param_0 
    .local pmc ctxsave 
    find_dynamic_lex $P501, "$*CTXSAVE"
    set ctxsave, $P501
    isnull $I501, ctxsave
    box $P506, $I501
    set $P505, $P506
    if $I501 goto unless10_end11 
    can $I502, ctxsave, "ctxsave"
    box $P504, $I502
    set $P503, $P504
    unless $I502 goto if11_end13 
    $P502 = ctxsave."ctxsave"()
    set $P503, $P502
  if11_end13:
    set $P505, $P503
  unless10_end11:
.annotate 'line', 1
    .const 'Sub' $P507 = 'cuid_7_1346233424.597' 
    capture_lex $P507
    $P508 = $P507()
    set_hll_global "ModuleLoader", $P103
    set $P513, _lex_param_0
    unless _lex_param_0 goto if43_end119 
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P509, "ModuleLoader"
    getinterp $P511
    set $P510, $P511["context"]
    $P512 = $P509."set_mainline_module"($P510)
    set $P513, $P512
  if43_end119:
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_7_1346233424.597") :anon :lex :outer("cuid_1_1346233424.597")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 1
    .const 'Sub' $P511 = 'cuid_9_1346233424.597' 
    capture_lex $P511 
    .const 'Sub' $P511 = 'cuid_2_1346233424.597' 
    capture_lex $P511 
    .const 'Sub' $P511 = 'cuid_3_1346233424.597' 
    capture_lex $P511 
    .const 'Sub' $P511 = 'cuid_4_1346233424.597' 
    capture_lex $P511 
    .const 'Sub' $P511 = 'cuid_5_1346233424.597' 
    capture_lex $P511 
    .const 'Sub' $P511 = 'cuid_6_1346233424.597' 
    capture_lex $P511 
    .lex "%modules_loaded", $P101 
    .lex "%settings_loaded", $P102 
    .lex "$stub_how", $P103 
    .lex "&merge_globals", $P104 
    .lex "$?PACKAGE", $P105 
    .lex "$?CLASS", $P106 
    new $P501, 'Hash'
    set $P101, $P501
    new $P502, 'Hash'
    set $P102, $P502
    null $P503
    set $P103, $P503
    .const 'Sub' $P504 = 'cuid_9_1346233424.597' 
    capture_lex $P504
    set $P104, $P504
    .const 'Sub' $P505 = 'cuid_2_1346233424.597' 
    capture_lex $P505
    .const 'Sub' $P506 = 'cuid_3_1346233424.597' 
    capture_lex $P506
    .const 'Sub' $P507 = 'cuid_4_1346233424.597' 
    capture_lex $P507
    box $P508, "KnowHOW"
    set $P103, $P508
    .const 'Sub' $P509 = 'cuid_5_1346233424.597' 
    capture_lex $P509
    .const 'Sub' $P510 = 'cuid_6_1346233424.597' 
    capture_lex $P510
    .return ($P510) 
.end
.HLL "nqp"
.namespace []
.sub "merge_globals" :subid("cuid_9_1346233424.597") :anon :lex :outer("cuid_7_1346233424.597")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 88
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P516 = 'cuid_8_1346233424.597' 
    capture_lex $P516 
    .const 'Sub' $P516 = 'cuid_14_1346233424.597' 
    capture_lex $P516 
    .lex "%known_symbols", $P101 
    .lex "$target", _lex_param_0 
    .lex "$source", _lex_param_1 
    new $P501, 'Hash'
    set $P101, $P501
    get_who $P505, _lex_param_0
    set $P502, $P505
    iter $P504, $P505
    new $P507, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P507, for_handlers14
    push_eh $P507
  for_next15:
    unless $P504, for_done17
    shift $P508, $P504
  for_redo16:
    .const 'Sub' $P506 = 'cuid_8_1346233424.597' 
    capture_lex $P506
    $P502 = $P506($P508)
    goto for_next15
  for_handlers14:
    .get_results ($P507)
    pop_upto_eh $P507
    getattribute $P507, $P507, 'type'
    eq $P507, .CONTROL_LOOP_NEXT, for_next15
    eq $P507, .CONTROL_LOOP_REDO, for_redo16
  for_done17:
    pop_eh 
    get_who $P512, _lex_param_1
    set $P509, $P512
    iter $P511, $P512
    new $P514, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P514, for_handlers43
    push_eh $P514
  for_next44:
    unless $P511, for_done46
    shift $P515, $P511
  for_redo45:
    .const 'Sub' $P513 = 'cuid_14_1346233424.597' 
    capture_lex $P513
    $P509 = $P513($P515)
    goto for_next44
  for_handlers43:
    .get_results ($P514)
    pop_upto_eh $P514
    getattribute $P514, $P514, 'type'
    eq $P514, .CONTROL_LOOP_NEXT, for_next44
    eq $P514, .CONTROL_LOOP_REDO, for_redo45
  for_done46:
    pop_eh 
    .return ($P509) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_8_1346233424.597") :anon :lex :outer("cuid_9_1346233424.597")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 93
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P501, "%known_symbols"
.annotate 'line', 94
    $P502 = _lex_param_0."key"()
    set $S501, $P502
    box $P503, 1
    set $P501[$S501], $P503
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_14_1346233424.597") :anon :lex :outer("cuid_9_1346233424.597")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 96
    .param pmc _lex_param_0 
    .const 'Sub' $P517 = 'cuid_11_1346233424.597' 
    capture_lex $P517 
    .const 'Sub' $P517 = 'cuid_15_1346233424.597' 
    capture_lex $P517 
    .lex "$sym", $P101 
    .lex "$_", _lex_param_0 
    null $P501
    set $P101, $P501
.annotate 'line', 97
    $P502 = _lex_param_0."key"()
    set $P101, $P502
    find_lex $P503, "%known_symbols"
    set $S501, $P101
    exists $I502, $P503[$S501]
    box $P504, $I502
    isfalse $I501, $P504
    unless $I501 goto if12_else18 
    .const 'Sub' $P505 = 'cuid_11_1346233424.597' 
    capture_lex $P505
    $P506 = $P505()
    set $P516, $P506
    goto if12_end19
  if12_else18:
    find_lex $P509, "$target"
    get_who $P508, $P509
    set $S502, $P101
    set $P507, $P508[$S502]
    unless_null $P507, fallback36
    null $P510
    set $P507, $P510
  fallback36:
    get_id $I504, $P507
.annotate 'line', 121
    $P511 = _lex_param_0."value"()
    get_id $I505, $P511
    iseq $I503, $I504, $I505
    unless $I503 goto if19_else34 
    null $P512
    set $P515, $P512
    goto if19_end35
  if19_else34:
    .const 'Sub' $P513 = 'cuid_15_1346233424.597' 
    capture_lex $P513
    $P514 = $P513()
    set $P515, $P514
  if19_end35:
    set $P516, $P515
  if12_end19:
    .return ($P516) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_11_1346233424.597") :anon :lex :outer("cuid_14_1346233424.597")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 98
    .const 'Sub' $P515 = 'cuid_10_1346233424.597' 
    capture_lex $P515 
    .const 'Sub' $P515 = 'cuid_13_1346233424.597' 
    capture_lex $P515 
    .lex "$source_is_stub", $P101 
    null $P501
    set $P101, $P501
    box $P502, 0
    set $P101, $P502
    new $P505, 'ExceptionHandler'
    set_label $P505, catch_handler_1727
    $P505.'handle_types_except'(.CONTROL_ALL)
    push_eh $P505
    .const 'Sub' $P503 = 'cuid_10_1346233424.597' 
    capture_lex $P503
    $P504 = $P503()
    set $P506, $P504
    pop_eh 
    goto skip_handler_1626
  catch_handler_1727:
    .get_results ($P505) 
    set $I10001, 1
    set $P505["handled"], $I10001
    null $P10001
    finalize $P505
    pop_upto_eh $P505
    pop_eh 
    set $P506, $P10001
    goto skip_handler_1626
  skip_handler_1626:
    unless $P101 goto if18_else28 
    .const 'Sub' $P507 = 'cuid_13_1346233424.597' 
    capture_lex $P507
    $P508 = $P507()
    set $P514, $P508
    goto if18_end29
  if18_else28:
.annotate 'line', 117
    find_lex $P510, "$target"
    get_who $P509, $P510
    find_lex $P511, "$sym"
    set $S501, $P511
.annotate 'line', 118
    find_lex $P512, "$_"
    $P513 = $P512."value"()
    set $P509[$S501], $P513
    set $P514, $P513
  if18_end29:
    .return ($P514) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_10_1346233424.597") :anon :lex :outer("cuid_11_1346233424.597")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 100
    .lex "$source_mo", $P101 
    null $P501
    set $P101, $P501
.annotate 'line', 101
    find_lex $P503, "$_"
    $P504 = $P503."value"()
    get_how $P502, $P504
    set $P101, $P502
.annotate 'line', 102
    get_what $P506, $P101
    get_how $P505, $P506
    $P507 = $P505."name"($P101)
    set $S501, $P507
    find_lex $P508, "$stub_how"
    set $S502, $P508
    iseq $I501, $S501, $S502
    set $I504, $I501
    unless $I501 goto if15_end25 
.annotate 'line', 103
    find_lex $P510, "$_"
    $P511 = $P510."value"()
    get_who $P509, $P511
    isnull $I503, $P509
    box $P512, $I503
    isfalse $I502, $P512
    set $I504, $I502
  if15_end25:
    box $P517, $I504
    set $P516, $P517
    unless $I504 goto if14_end23 
    find_lex $P514, "$_"
    $P515 = $P514."value"()
    get_who $P513, $P515
    set $P516, $P513
  if14_end23:
    set $P524, $P516
    unless $P516 goto if13_end21 
.annotate 'line', 104
    find_lex $P519, "$_"
    $P520 = $P519."value"()
    get_how $P518, $P520
    find_lex $P521, "$_"
    $P522 = $P521."value"()
    $P523 = $P518."name"($P522)
    set $S503, $P523
    isne $I505, $S503, "PAST"
    box $P525, $I505
    set $P524, $P525
  if13_end21:
    store_lex "$source_is_stub", $P524
    .return ($P524) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_13_1346233424.597") :anon :lex :outer("cuid_11_1346233424.597")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 106
    .const 'Sub' $P522 = 'cuid_12_1346233424.597' 
    capture_lex $P522 
    .lex "$source", $P101 
    .lex "$source_clone", $P102 
    .lex "%WHO_clone", $P103 
    null $P501
    set $P101, $P501
    null $P502
    set $P102, $P502
    new $P503, 'Hash'
    set $P103, $P503
.annotate 'line', 107
    find_lex $P504, "$_"
    $P505 = $P504."value"()
    set $P101, $P505
.annotate 'line', 108
    get_how $P506, $P101
    get_how $P507, $P101
    $P508 = $P507."name"($P101)
    $P509 = $P506."new_type"($P508 :named("name"))
    set $P102, $P509
.annotate 'line', 109
    get_how $P510, $P102
    $P511 = $P510."compose"($P102)
    get_who $P515, $P101
    set $P512, $P515
    iter $P514, $P515
    new $P517, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P517, for_handlers30
    push_eh $P517
  for_next31:
    unless $P514, for_done33
    shift $P518, $P514
  for_redo32:
    .const 'Sub' $P516 = 'cuid_12_1346233424.597' 
    capture_lex $P516
    $P512 = $P516($P518)
    goto for_next31
  for_handlers30:
    .get_results ($P517)
    pop_upto_eh $P517
    getattribute $P517, $P517, 'type'
    eq $P517, .CONTROL_LOOP_NEXT, for_next31
    eq $P517, .CONTROL_LOOP_REDO, for_redo32
  for_done33:
    pop_eh 
    set_who $P102, $P103
    find_lex $P520, "$target"
    get_who $P519, $P520
    find_lex $P521, "$sym"
    set $S501, $P521
    set $P519[$S501], $P102
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_12_1346233424.597") :anon :lex :outer("cuid_13_1346233424.597")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 111
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P501, "%WHO_clone"
.annotate 'line', 112
    $P502 = _lex_param_0."key"()
    set $S501, $P502
    $P503 = _lex_param_0."value"()
    set $P501[$S501], $P503
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_15_1346233424.597") :anon :lex :outer("cuid_14_1346233424.597")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 124
    .lex "$source_mo", $P101 
    .lex "$source_is_stub", $P102 
    .lex "$target_mo", $P103 
    .lex "$target_is_stub", $P104 
    null $P501
    set $P101, $P501
    null $P502
    set $P102, $P502
    null $P503
    set $P103, $P503
    null $P504
    set $P104, $P504
.annotate 'line', 125
    find_lex $P506, "$_"
    $P507 = $P506."value"()
    get_how $P505, $P507
    set $P101, $P505
.annotate 'line', 126
    get_what $P509, $P101
    get_how $P508, $P509
    $P510 = $P508."name"($P101)
    set $S501, $P510
    find_lex $P511, "$stub_how"
    set $S502, $P511
    iseq $I501, $S501, $S502
    box $P512, $I501
    set $P102, $P512
    find_lex $P516, "$target"
    get_who $P515, $P516
    find_lex $P517, "$sym"
    set $S503, $P517
    set $P514, $P515[$S503]
    unless_null $P514, fallback37
    null $P518
    set $P514, $P518
  fallback37:
    get_how $P513, $P514
    set $P103, $P513
.annotate 'line', 128
    get_what $P520, $P103
    get_how $P519, $P520
    $P521 = $P519."name"($P103)
    set $S504, $P521
    find_lex $P522, "$stub_how"
    set $S505, $P522
    iseq $I502, $S504, $S505
    box $P523, $I502
    set $P104, $P523
    set $P524, $P102
    unless $P102 goto if21_end41 
    set $P524, $P104
  if21_end41:
    unless $P524 goto if20_else38 
.annotate 'line', 129
.annotate 'line', 131
    find_lex $P527, "$target"
    get_who $P526, $P527
    find_lex $P528, "$sym"
    set $S506, $P528
    set $P525, $P526[$S506]
    unless_null $P525, fallback42
    null $P529
    set $P525, $P529
  fallback42:
    find_lex $P530, "$_"
    $P531 = $P530."value"()
    $P532 = "&merge_globals"($P525, $P531)
    set $P535, $P532
    goto if20_end39
  if20_else38:
.annotate 'line', 133
    find_lex $P533, "$sym"
    set $S508, $P533
    concat $S507, "Merging GLOBAL symbols failed: duplicate definition of symbol ", $S508
    box $P534, $S507
    die $P534
    set $P535, $P534
  if20_end39:
    .return ($P535) 
.end
.HLL "nqp"
.namespace []
.sub "search_path" :subid("cuid_2_1346233424.597") :anon :lex :outer("cuid_7_1346233424.597")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 5
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P535 = 'cuid_16_1346233424.597' 
    capture_lex $P535 
    .lex "@search_paths", $P101 
    .lex "$explicit", $P102 
    .lex "%conf", $P103 
    .lex "self", _lex_param_0 
    .lex "$explicit_path", _lex_param_1 
    new $P501, 'ResizablePMCArray'
    set $P101, $P501
    null $P502
    set $P102, $P502
    new $P503, 'Hash'
    set $P103, $P503
    new $P516, 'ExceptionHandler'
    set_label $P516, catch_handler_2453
    $P516.'handle_types_except'(.CONTROL_ALL)
    push_eh $P516
.annotate 'line', 11
    find_dynamic_lex $P506, "%*COMPILING"
    unless_null $P506, fallback47
    get_hll_global $P509, "GLOBAL"
    get_who $P508, $P509
    set $P507, $P508["%COMPILING"]
    unless_null $P507, fallback48
    get_hll_global $P511, "GLOBAL"
    get_who $P510, $P511
    new $P512, 'Hash'
    set $P510["%COMPILING"], $P512
    set $P507, $P512
  fallback48:
    unless_null $P507, vivi_2249
    die "Contextual %*COMPILING not found"
    box $P513, "Contextual %*COMPILING not found"
    set $P507, $P513
  vivi_2249:
    set $P506, $P507
  fallback47:
    set $P505, $P506["%?OPTIONS"]
    unless_null $P505, fallback50
    null $P514
    set $P505, $P514
  fallback50:
    set $S501, _lex_param_1
    set $P504, $P505[$S501]
    unless_null $P504, fallback51
    null $P515
    set $P504, $P515
  fallback51:
    set $P102, $P504
    set $P517, $P102
    pop_eh 
    goto skip_handler_2352
  catch_handler_2453:
    .get_results ($P516) 
    set $I10001, 1
    set $P516["handled"], $I10001
    null $P10001
    finalize $P516
    pop_upto_eh $P516
    pop_eh 
    set $P517, $P10001
    goto skip_handler_2352
  skip_handler_2352:
    isnull $I502, $P102
    box $P518, $I502
    isfalse $I501, $P518
    box $P520, $I501
    set $P519, $P520
    unless $I501 goto if26_end57 
    set $P519, $P102
  if26_end57:
    unless $P519 goto if25_else54 
.annotate 'line', 12
.annotate 'line', 13
    $P521 = $P101."push"($P102)
    set $P524, $P521
    goto if25_end55
  if25_else54:
    .const 'Sub' $P522 = 'cuid_16_1346233424.597' 
    capture_lex $P522
    $P523 = $P522()
    set $P524, $P523
  if25_end55:
.annotate 'line', 23
    $P525 = $P101."push"(".")
.annotate 'line', 24
    $P526 = $P101."push"("blib")
    getinterp $P528
    set $P527, $P528[.IGLOBALS_CONFIG_HASH]
    unless_null $P527, fallback63
    null $P529
    set $P527, $P529
  fallback63:
    set $P103, $P527
.annotate 'line', 28
    set $P530, $P103["libdir"]
    unless_null $P530, fallback64
    null $P531
    set $P530, $P531
  fallback64:
    set $S504, $P530
    set $P532, $P103["versiondir"]
    unless_null $P532, fallback65
    null $P533
    set $P532, $P533
  fallback65:
    set $S505, $P532
    concat $S503, $S504, $S505
    concat $S502, $S503, "/languages/nqp/lib"
    $P534 = $P101."push"($S502)
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_16_1346233424.597") :anon :lex :outer("cuid_2_1346233424.597")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 15
    .lex "@lib_paths", $P101 
    new $P501, 'ResizablePMCArray'
    set $P101, $P501
    getinterp $P504
    set $P503, $P504[.IGLOBALS_LIB_PATHS]
    unless_null $P503, fallback58
    null $P505
    set $P503, $P505
  fallback58:
    set $P502, $P503[1]
    unless_null $P502, fallback59
    null $P506
    set $P502, $P506
  fallback59:
    set $P101, $P502
    set $N501, $P101
    set $N502, 3
    isgt $I501, $N501, $N502
    box $P512, $I501
    set $P511, $P512
    unless $I501 goto if27_end61 
.annotate 'line', 17
.annotate 'line', 18
    find_lex $P507, "@search_paths"
    set $P508, $P101[0]
    unless_null $P508, fallback62
    null $P509
    set $P508, $P509
  fallback62:
    $P510 = $P507."push"($P508)
    set $P511, $P510
  if27_end61:
    .return ($P511) 
.end
.HLL "nqp"
.namespace []
.sub "ctxsave" :subid("cuid_3_1346233424.597") :anon :lex :outer("cuid_7_1346233424.597")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 34
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 

                $P0 = getinterp
                $P501 = $P0['context';1]
            
    store_dynamic_lex "$*MAIN_CTX", $P501
    box $P502, 0
    store_dynamic_lex "$*CTXSAVE", $P502
    .return ($P502) 
.end
.HLL "nqp"
.namespace []
.sub "load_module" :subid("cuid_4_1346233424.597") :anon :lex :outer("cuid_7_1346233424.597")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 43
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy 
    .const 'Sub' $P527 = 'cuid_17_1346233424.597' 
    capture_lex $P527 
    .const 'Sub' $P527 = 'cuid_18_1346233424.597' 
    capture_lex $P527 
    .const 'Sub' $P527 = 'cuid_19_1346233424.597' 
    capture_lex $P527 
    .lex "$module_ctx", $P101 
    .lex "$path", $P102 
    .lex "@prefixes", $P103 
    .lex "self", _lex_param_0 
    .lex "$module_name", _lex_param_1 
    .lex "@global_merge_target", _lex_param_2 
    null $P501
    set $P101, $P501
    null $P502
    set $P102, $P502
    new $P503, 'ResizablePMCArray'
    set $P103, $P503
    root_new $P104, ['parrot';'Continuation']
    set_label $P104, lexotic_66
    .lex "RETURN", $P104
    set $S503, _lex_param_1
    split $P504, "::", $S503
    join $S502, "/", $P504
    concat $S501, $S502, ".pbc"
    box $P505, $S501
    set $P102, $P505
.annotate 'line', 49
    nqp_decontainerize $P506, _lex_param_0
    $P507 = $P506."search_path"("module-path")
    set $P103, $P507
    set $P508, $P103
    iter $P510, $P103
    new $P512, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P512, for_handlers70
    push_eh $P512
  for_next71:
    unless $P510, for_done73
    shift $P513, $P510
  for_redo72:
    .const 'Sub' $P511 = 'cuid_17_1346233424.597' 
    capture_lex $P511
    $P508 = $P511($P513)
    goto for_next71
  for_handlers70:
    .get_results ($P512)
    pop_upto_eh $P512
    getattribute $P512, $P512, 'type'
    eq $P512, .CONTROL_LOOP_NEXT, for_next71
    eq $P512, .CONTROL_LOOP_REDO, for_redo72
  for_done73:
    pop_eh 
    find_lex $P514, "%modules_loaded"
    set $S504, $P102
    exists $I501, $P514[$S504]
    unless $I501 goto if29_else74 
.annotate 'line', 56
    find_lex $P516, "%modules_loaded"
    set $S505, $P102
    set $P515, $P516[$S505]
    unless_null $P515, fallback76
    null $P517
    set $P515, $P517
  fallback76:
    set $P101, $P515
    set $P520, $P101
    goto if29_end75
  if29_else74:
    .const 'Sub' $P518 = 'cuid_18_1346233424.597' 
    capture_lex $P518
    $P519 = $P518()
    set $P520, $P519
  if29_end75:
    defined $I502, $P101
    box $P524, $I502
    set $P523, $P524
    unless $I502 goto if31_end81 
    .const 'Sub' $P521 = 'cuid_19_1346233424.597' 
    capture_lex $P521
    $P522 = $P521()
    set $P523, $P522
  if31_end81:
    find_lex $P525, "RETURN"
    $P526 = $P525($P101)
    goto lexotic_67
  lexotic_66:
    .get_results ($P526)
  lexotic_67:
    .return ($P526) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_17_1346233424.597") :anon :lex :outer("cuid_4_1346233424.597")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 50
    .param pmc _lex_param_0 
    .lex "$prefix", _lex_param_0 
    set $S503, _lex_param_0
    concat $S502, $S503, "/"
    find_lex $P501, "$path"
    set $S504, $P501
    concat $S501, $S502, $S504
    stat $I501, $S501, 0
    set $I502, $I501
    unless $I501 goto if28_end69 
.annotate 'line', 51
    set $S507, _lex_param_0
    concat $S506, $S507, "/"
    find_lex $P502, "$path"
    set $S508, $P502
    concat $S505, $S506, $S508
    box $P503, $S505
    store_lex "$path", $P503
    die 0, .CONTROL_LOOP_LAST
    set $I502, 0
  if28_end69:
    .return ($I502) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_18_1346233424.597") :anon :lex :outer("cuid_4_1346233424.597")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 59
    .lex "$*CTXSAVE", $P101 
    .lex "$*MAIN_CTX", $P102 
    .lex "$preserve_global", $P103 
    null $P501
    set $P101, $P501
    null $P502
    set $P102, $P502
    null $P503
    set $P103, $P503
    find_lex $P505, "self"
    nqp_decontainerize $P504, $P505
    set $P101, $P504
    find_lex $P506, "ModuleLoader"
    set $P102, $P506
    get_hll_global $P507, "GLOBAL"
    set $P103, $P507
    find_lex $P508, "$path"
    set $S501, $P508
    load_bytecode $S501
    set_hll_global "GLOBAL", $P103
    find_lex $P509, "%modules_loaded"
    find_lex $P510, "$path"
    set $S502, $P510
    unless_null $P102, fallback77
    get_hll_global $P513, "GLOBAL"
    get_who $P512, $P513
    set $P511, $P512["$MAIN_CTX"]
    unless_null $P511, fallback78
    null $P514
    set $P511, $P514
  fallback78:
    unless_null $P511, vivi_3079
    die "Contextual $*MAIN_CTX not found"
    box $P515, "Contextual $*MAIN_CTX not found"
    set $P511, $P515
  vivi_3079:
    set $P102, $P511
  fallback77:
    store_lex "$module_ctx", $P102
    set $P509[$S502], $P102
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_19_1346233424.597") :anon :lex :outer("cuid_4_1346233424.597")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 69
    .lex "$UNIT", $P101 
    null $P501
    set $P101, $P501
    find_lex $P503, "$module_ctx"
    getattribute $P502, $P503, "lex_pad"
    set $P101, $P502
    set $P504, $P101["GLOBALish"]
    unless_null $P504, fallback84
    null $P505
    set $P504, $P505
  fallback84:
    isnull $I501, $P504
    box $P516, $I501
    set $P515, $P516
    if $I501 goto unless32_end83 
.annotate 'line', 72
    find_lex $P506, "@global_merge_target"
    set $N501, $P506
    box $P514, $N501
    set $P513, $P514
    unless $N501 goto if33_end86 
.annotate 'line', 73
.annotate 'line', 74
    find_lex $P508, "@global_merge_target"
    set $P507, $P508[0]
    unless_null $P507, fallback87
    null $P509
    set $P507, $P509
  fallback87:
    set $P510, $P101["GLOBALish"]
    unless_null $P510, fallback88
    null $P511
    set $P510, $P511
  fallback88:
    $P512 = "&merge_globals"($P507, $P510)
    set $P513, $P512
  if33_end86:
    set $P515, $P513
  unless32_end83:
    .return ($P515) 
.end
.HLL "nqp"
.namespace []
.sub "load_setting" :subid("cuid_5_1346233424.597") :anon :lex :outer("cuid_7_1346233424.597")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 140
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P508 = 'cuid_21_1346233424.597' 
    capture_lex $P508 
    .lex "$setting", $P101 
    .lex "self", _lex_param_0 
    .lex "$setting_name", _lex_param_1 
    null $P501
    set $P101, $P501
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_89
    .lex "RETURN", $P102
    set $S501, _lex_param_1
    isne $I501, $S501, "NULL"
    box $P505, $I501
    set $P504, $P505
    unless $I501 goto if34_end92 
    .const 'Sub' $P502 = 'cuid_21_1346233424.597' 
    capture_lex $P502
    $P503 = $P502()
    set $P504, $P503
  if34_end92:
    find_lex $P506, "RETURN"
    $P507 = $P506($P101)
    goto lexotic_90
  lexotic_89:
    .get_results ($P507)
  lexotic_90:
    .return ($P507) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_21_1346233424.597") :anon :lex :outer("cuid_5_1346233424.597")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 143
    .const 'Sub' $P522 = 'cuid_20_1346233424.597' 
    capture_lex $P522 
    .const 'Sub' $P522 = 'cuid_22_1346233424.597' 
    capture_lex $P522 
    .lex "$path", $P101 
    .lex "@prefixes", $P102 
    null $P501
    set $P101, $P501
    new $P502, 'ResizablePMCArray'
    set $P102, $P502
    find_lex $P503, "$setting_name"
    set $S502, $P503
    concat $S501, $S502, ".setting.pbc"
    box $P504, $S501
    set $P101, $P504
.annotate 'line', 146
    find_lex $P506, "self"
    nqp_decontainerize $P505, $P506
    $P507 = $P505."search_path"("setting-path")
    set $P102, $P507
    set $P508, $P102
    iter $P510, $P102
    new $P512, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P512, for_handlers95
    push_eh $P512
  for_next96:
    unless $P510, for_done98
    shift $P513, $P510
  for_redo97:
    .const 'Sub' $P511 = 'cuid_20_1346233424.597' 
    capture_lex $P511
    $P508 = $P511($P513)
    goto for_next96
  for_handlers95:
    .get_results ($P512)
    pop_upto_eh $P512
    getattribute $P512, $P512, 'type'
    eq $P512, .CONTROL_LOOP_NEXT, for_next96
    eq $P512, .CONTROL_LOOP_REDO, for_redo97
  for_done98:
    pop_eh 
    find_lex $P514, "%settings_loaded"
    set $S503, $P101
    exists $I501, $P514[$S503]
    box $P518, $I501
    set $P517, $P518
    if $I501 goto unless36_end100 
    .const 'Sub' $P515 = 'cuid_22_1346233424.597' 
    capture_lex $P515
    $P516 = $P515()
    set $P517, $P516
  unless36_end100:
    find_lex $P520, "%settings_loaded"
    set $S504, $P101
    set $P519, $P520[$S504]
    unless_null $P519, fallback109
    null $P521
    set $P519, $P521
  fallback109:
    store_lex "$setting", $P519
    .return ($P519) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_20_1346233424.597") :anon :lex :outer("cuid_21_1346233424.597")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 147
    .param pmc _lex_param_0 
    .lex "$prefix", _lex_param_0 
    set $S503, _lex_param_0
    concat $S502, $S503, "/"
    find_lex $P501, "$path"
    set $S504, $P501
    concat $S501, $S502, $S504
    stat $I501, $S501, 0
    set $I502, $I501
    unless $I501 goto if35_end94 
.annotate 'line', 148
    set $S507, _lex_param_0
    concat $S506, $S507, "/"
    find_lex $P502, "$path"
    set $S508, $P502
    concat $S505, $S506, $S508
    box $P503, $S505
    store_lex "$path", $P503
    die 0, .CONTROL_LOOP_LAST
    set $I502, 0
  if35_end94:
    .return ($I502) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_22_1346233424.597") :anon :lex :outer("cuid_21_1346233424.597")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 155
    .lex "$*CTXSAVE", $P101 
    .lex "$*MAIN_CTX", $P102 
    .lex "$preserve_global", $P103 
    null $P501
    set $P101, $P501
    null $P502
    set $P102, $P502
    null $P503
    set $P103, $P503
    find_lex $P505, "self"
    nqp_decontainerize $P504, $P505
    set $P101, $P504
    find_lex $P506, "ModuleLoader"
    set $P102, $P506
    get_hll_global $P507, "GLOBAL"
    set $P103, $P507
    find_lex $P508, "$path"
    set $S501, $P508
    load_bytecode $S501
    set_hll_global "GLOBAL", $P103
    unless_null $P102, fallback103
    get_hll_global $P511, "GLOBAL"
    get_who $P510, $P511
    set $P509, $P510["$MAIN_CTX"]
    unless_null $P509, fallback104
    null $P512
    set $P509, $P512
  fallback104:
    unless_null $P509, vivi_38105
    die "Contextual $*MAIN_CTX not found"
    box $P513, "Contextual $*MAIN_CTX not found"
    set $P509, $P513
  vivi_38105:
    set $P102, $P509
  fallback103:
    defined $I501, $P102
    box $P517, $I501
    set $P516, $P517
    if $I501 goto unless37_end102 
.annotate 'line', 161
    find_lex $P514, "$setting_name"
    set $S504, $P514
    concat $S503, "Unable to load setting ", $S504
    concat $S502, $S503, "; maybe it is missing a YOU_ARE_HERE?"
    box $P515, $S502
    die $P515
    set $P516, $P515
  unless37_end102:
    find_lex $P518, "%settings_loaded"
    find_lex $P519, "$path"
    set $S505, $P519
    unless_null $P102, fallback106
    get_hll_global $P522, "GLOBAL"
    get_who $P521, $P522
    set $P520, $P521["$MAIN_CTX"]
    unless_null $P520, fallback107
    null $P523
    set $P520, $P523
  fallback107:
    unless_null $P520, vivi_39108
    die "Contextual $*MAIN_CTX not found"
    box $P524, "Contextual $*MAIN_CTX not found"
    set $P520, $P524
  vivi_39108:
    set $P102, $P520
  fallback106:
    set $P518[$S505], $P102
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "set_mainline_module" :subid("cuid_6_1346233424.597") :anon :lex :outer("cuid_7_1346233424.597")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 175
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$module_name", $P101 
    .lex "self", _lex_param_0 
    .lex "$mainline_ctx", _lex_param_1 
    null $P501
    set $P101, $P501
    getinterp $P504
    set $P503, $P504[2]
    unless_null $P503, fallback110
    null $P505
    set $P503, $P505
  fallback110:
    set $P502, $P503[0]
    unless_null $P502, fallback111
    null $P506
    set $P502, $P506
  fallback111:
    set $P101, $P502
    set $S502, $P101
    substr $S501, $S502, 0, 2
    iseq $I501, $S501, "./"
    box $P509, $I501
    set $P508, $P509
    unless $I501 goto if40_end113 
.annotate 'line', 179
    set $S504, $P101
    set $S505, $P101
    length $I502, $S505
    set $N502, $I502
    set $N503, 2
    sub $N501, $N502, $N503
    set $I503, $N501
    substr $S503, $S504, 2, $I503
    box $P507, $S503
    set $P101, $P507
    set $P508, $P101
  if40_end113:
    set $S507, $P101
    set $S508, $P101
    length $I505, $S508
    set $N505, $I505
    set $N506, 4
    sub $N504, $N505, $N506
    set $I506, $N504
    substr $S506, $S507, $I506, 4
    iseq $I504, $S506, ".pbc"
    unless $I504 goto if41_else114 
.annotate 'line', 182
    null $P510
    set $P514, $P510
    goto if41_end115
  if41_else114:
    set $S510, $P101
    set $S511, $P101
    length $I508, $S511
    set $N508, $I508
    set $N509, 4
    sub $N507, $N508, $N509
    set $I509, $N507
    substr $S509, $S510, $I509, 4
    iseq $I507, $S509, ".exe"
    unless $I507 goto if42_else116 
.annotate 'line', 185
    set $S514, $P101
    set $S515, $P101
    length $I510, $S515
    set $N511, $I510
    set $N512, 3
    sub $N510, $N511, $N512
    set $I511, $N510
    substr $S513, $S514, 0, $I511
    concat $S512, $S513, "pbc"
    box $P511, $S512
    set $P101, $P511
    set $P513, $P101
    goto if42_end117
  if42_else116:
.annotate 'line', 189
    set $S517, $P101
    concat $S516, $S517, ".pbc"
    box $P512, $S516
    set $P101, $P512
    set $P513, $P101
  if42_end117:
    set $P514, $P513
  if41_end115:
    find_lex $P515, "%modules_loaded"
    set $S518, $P101
    set $P515[$S518], _lex_param_1
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_24_1346233424.597") :load :init
.annotate 'file', "src\\ModuleLoader.pm"
    .const 'Sub' $P501 = 'cuid_23_1346233424.597' 
    capture_lex $P501 
    .local pmc cur_sc 
    nqp_dynop_setup 
    nqp_bigint_setup 
    getinterp $P501
    get_class $P502, "LexPad"
    get_class $P503, "NQPLexPad"
    $P504 = $P501."hll_map"($P502, $P503)
    nqp_create_sc $P501, "70F745C278CC9EC1577A2642B86717A27DED9824-1346233424.632"
    set cur_sc, $P501
    $P502 = cur_sc."set_description"("src\\ModuleLoader.pm")
    new $P503, 'ResizableStringArray'
    null $S501
    push $P503, $S501
    push $P503, "P6opaque"
    push $P503, "ModuleLoader"
    push $P503, "search_path"
    push $P503, "ctxsave"
    push $P503, "load_module"
    push $P503, "load_setting"
    push $P503, "set_mainline_module"
    push $P503, "__6MODEL_CORE__"
    push $P503, "GLOBALish"
    .const 'Sub' $P504 = 'cuid_23_1346233424.597' 
    capture_lex $P504
    $P505 = $P504()
    nqp_deserialize_sc "AQAAAEAAAAABAAAASAAAAAIAAABYAAAA4AEAAAQAAAAgAgAAhgIAAAAAAACGAgAAAAAAAIYCAACGAgAAAAAAAAgAAAAAAAAAAQAAAAAAAAABAAAAqAAAAAAAAAACAAAAAAAAAAAAAAAKAAEAAAACAAAAAgAAAAAAAQAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAAAAAADAAAAAAADAAAAAAAAAAEAAAAKAAAAAAAKAAUAAAADAAAACwAAAAAAAAAAAAQAAAALAAAAAAABAAAABQAAAAsAAAAAAAIAAAAGAAAACwAAAAAAAwAAAAcAAAALAAAAAAAEAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAEAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAQAAAAMAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAABAAAAAAAAAAAAAAABAAAAAQAAAAAAAAAQAAAAAQAAAAkAAAAHAAAAAAAKAAAAAAACAAAABwAAAAAACgAFAAAAAwAAAAsAAAAAAAAAAAAEAAAACwAAAAAAAQAAAAUAAAALAAAAAAACAAAABgAAAAsAAAAAAAMAAAAHAAAACwAAAAAABAAAAA==", cur_sc, $P503, $P505
    .const "LexInfo" $P501 = "cuid_1_1346233424.597"
    nqp_get_sc_object $P502, "70F745C278CC9EC1577A2642B86717A27DED9824-1346233424.632", 0
    $P503 = $P501."set_static_lexpad_value"("GLOBALish", $P502)
    .const "LexInfo" $P504 = "cuid_1_1346233424.597"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_1_1346233424.597"
    nqp_get_sc_object $P502, "70F745C278CC9EC1577A2642B86717A27DED9824-1346233424.632", 0
    $P503 = $P501."set_static_lexpad_value"("$?PACKAGE", $P502)
    .const "LexInfo" $P504 = "cuid_1_1346233424.597"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_1_1346233424.597"
    nqp_get_sc_object $P502, "70F745C278CC9EC1577A2642B86717A27DED9824-1346233424.632", 1
    $P503 = $P501."set_static_lexpad_value"("ModuleLoader", $P502)
    .const "LexInfo" $P504 = "cuid_1_1346233424.597"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_7_1346233424.597"
    nqp_get_sc_object $P502, "70F745C278CC9EC1577A2642B86717A27DED9824-1346233424.632", 1
    $P503 = $P501."set_static_lexpad_value"("$?PACKAGE", $P502)
    .const "LexInfo" $P504 = "cuid_7_1346233424.597"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_7_1346233424.597"
    nqp_get_sc_object $P502, "70F745C278CC9EC1577A2642B86717A27DED9824-1346233424.632", 1
    $P503 = $P501."set_static_lexpad_value"("$?CLASS", $P502)
    .const "LexInfo" $P504 = "cuid_7_1346233424.597"
    $P505 = $P504."finish_static_lexpad"()
    nqp_get_sc_object $P501, "70F745C278CC9EC1577A2642B86717A27DED9824-1346233424.632", 0
    set_hll_global "GLOBAL", $P501
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_23_1346233424.597") :anon :lex :outer("cuid_24_1346233424.597")
.annotate 'file', "src\\ModuleLoader.pm"
    new $P501, 'ResizablePMCArray'
    .const 'Sub' $P502 = "cuid_2_1346233424.597" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_3_1346233424.597" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_4_1346233424.597" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_5_1346233424.597" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_6_1346233424.597" 
    push $P501, $P502
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_25_1346233424.597") :load
.annotate 'file', "src\\ModuleLoader.pm"
    .const 'Sub' $P501 = "cuid_1_1346233424.597" 
    $P502 = $P501()
    .return ($P502) 
.end