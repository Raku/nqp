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
.sub "" :subid("cuid_1_1347719896.12") :anon :lex
.annotate 'file', "src\\ModuleLoader.pm"
    .param pmc _lex_param_0 :slurpy 
    .const 'Sub' $P5015 = 'cuid_7_1347719896.12' 
    capture_lex $P5015 
    .lex "GLOBALish", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "ModuleLoader", $P103 
    .lex "@ARGS", _lex_param_0 
    .local pmc ctxsave 
    find_dynamic_lex $P5001, "$*CTXSAVE"
    set ctxsave, $P5001
    isnull $I5001, ctxsave
    box $P5006, $I5001
    set $P5005, $P5006
    if $I5001 goto unless10_end11 
    can $I5002, ctxsave, "ctxsave"
    box $P5004, $I5002
    set $P5003, $P5004
    unless $I5002 goto if11_end13 
    $P5002 = ctxsave."ctxsave"()
    set $P5003, $P5002
  if11_end13:
    set $P5005, $P5003
  unless10_end11:
.annotate 'line', 1
    .const 'Sub' $P5007 = 'cuid_7_1347719896.12' 
    capture_lex $P5007
    $P5008 = $P5007()
    nqp_get_sc_object $P5009, "6EBC33AD36BF21AA57CAA4B020565B7228223D55-1347719896.133", 1
    set_hll_global "ModuleLoader", $P5009
    set $P5014, _lex_param_0
    unless _lex_param_0 goto if42_end114 
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P5010, "ModuleLoader"
    getinterp $P5012
    set $P5011, $P5012["context"]
    $P5013 = $P5010."set_mainline_module"($P5011)
    set $P5014, $P5013
  if42_end114:
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_7_1347719896.12") :anon :lex :outer("cuid_1_1347719896.12")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 1
    .const 'Sub' $P5011 = 'cuid_9_1347719896.12' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_2_1347719896.12' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_3_1347719896.12' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_4_1347719896.12' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_5_1347719896.12' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_6_1347719896.12' 
    capture_lex $P5011 
    .lex "%modules_loaded", $P101 
    .lex "%settings_loaded", $P102 
    .lex "$stub_how", $P103 
    .lex "&merge_globals", $P104 
    .lex "$?PACKAGE", $P105 
    .lex "$?CLASS", $P106 
    new $P5001, 'Hash'
    set $P101, $P5001
    new $P5002, 'Hash'
    set $P102, $P5002
    null $P5003
    set $P103, $P5003
    .const 'Sub' $P5004 = 'cuid_9_1347719896.12' 
    capture_lex $P5004
    set $P104, $P5004
    .const 'Sub' $P5005 = 'cuid_2_1347719896.12' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_3_1347719896.12' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_4_1347719896.12' 
    capture_lex $P5007
    box $P5008, "KnowHOW"
    set $P103, $P5008
    .const 'Sub' $P5009 = 'cuid_5_1347719896.12' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_6_1347719896.12' 
    capture_lex $P5010
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "merge_globals" :subid("cuid_9_1347719896.12") :anon :lex :outer("cuid_7_1347719896.12")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 88
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5014 = 'cuid_8_1347719896.12' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_14_1347719896.12' 
    capture_lex $P5014 
    .lex "%known_symbols", $P101 
    .lex "$target", _lex_param_0 
    .lex "$source", _lex_param_1 
    new $P5001, 'Hash'
    set $P101, $P5001
    get_who $P5005, _lex_param_0
    set $P5002, $P5005
    iter $P5004, $P5005
  for_next14:
    unless $P5004, for_done16
    shift $P5007, $P5004
  for_redo15:
    .const 'Sub' $P5006 = 'cuid_8_1347719896.12' 
    capture_lex $P5006
    $P5002 = $P5006($P5007)
    goto for_next14
  for_done16:
    get_who $P5011, _lex_param_1
    set $P5008, $P5011
    iter $P5010, $P5011
  for_next39:
    unless $P5010, for_done41
    shift $P5013, $P5010
  for_redo40:
    .const 'Sub' $P5012 = 'cuid_14_1347719896.12' 
    capture_lex $P5012
    $P5008 = $P5012($P5013)
    goto for_next39
  for_done41:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_8_1347719896.12") :anon :lex :outer("cuid_9_1347719896.12")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 93
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "%known_symbols"
.annotate 'line', 94
    $P5002 = _lex_param_0."key"()
    set $S5001, $P5002
    box $P5003, 1
    set $P5001[$S5001], $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_14_1347719896.12") :anon :lex :outer("cuid_9_1347719896.12")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 96
    .param pmc _lex_param_0 
    .const 'Sub' $P5017 = 'cuid_11_1347719896.12' 
    capture_lex $P5017 
    .const 'Sub' $P5017 = 'cuid_15_1347719896.12' 
    capture_lex $P5017 
    .lex "$sym", $P101 
    .lex "$_", _lex_param_0 
    null $P5001
    set $P101, $P5001
.annotate 'line', 97
    $P5002 = _lex_param_0."key"()
    set $P101, $P5002
    find_lex $P5003, "%known_symbols"
    set $S5001, $P101
    exists $I5002, $P5003[$S5001]
    box $P5004, $I5002
    isfalse $I5001, $P5004
    unless $I5001 goto if12_else17 
    .const 'Sub' $P5005 = 'cuid_11_1347719896.12' 
    capture_lex $P5005
    $P5006 = $P5005()
    set $P5016, $P5006
    goto if12_end18
  if12_else17:
    find_lex $P5009, "$target"
    get_who $P5008, $P5009
    set $S5002, $P101
    set $P5007, $P5008[$S5002]
    unless_null $P5007, fallback32
    null $P5010
    set $P5007, $P5010
  fallback32:
    get_id $I5004, $P5007
.annotate 'line', 120
    $P5011 = _lex_param_0."value"()
    get_id $I5005, $P5011
    iseq $I5003, $I5004, $I5005
    unless $I5003 goto if18_else30 
    null $P5012
    set $P5015, $P5012
    goto if18_end31
  if18_else30:
    .const 'Sub' $P5013 = 'cuid_15_1347719896.12' 
    capture_lex $P5013
    $P5014 = $P5013()
    set $P5015, $P5014
  if18_end31:
    set $P5016, $P5015
  if12_end18:
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_11_1347719896.12") :anon :lex :outer("cuid_14_1347719896.12")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 98
    .const 'Sub' $P5015 = 'cuid_10_1347719896.12' 
    capture_lex $P5015 
    .const 'Sub' $P5015 = 'cuid_13_1347719896.12' 
    capture_lex $P5015 
    .lex "$source_is_stub", $P101 
    null $P5001
    set $P101, $P5001
    box $P5002, 0
    set $P101, $P5002
    new $P5005, 'ExceptionHandler'
    set_label $P5005, catch_handler_1624
    $P5005.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5005
    .const 'Sub' $P5003 = 'cuid_10_1347719896.12' 
    capture_lex $P5003
    $P5004 = $P5003()
    set $P5006, $P5004
    pop_eh 
    goto skip_handler_1523
  catch_handler_1624:
    .get_results ($P5005) 
    set $I10001, 1
    set $P5005["handled"], $I10001
    null $P10001
    finalize $P5005
    pop_upto_eh $P5005
    pop_eh 
    set $P5006, $P10001
    goto skip_handler_1523
  skip_handler_1523:
    unless $P101 goto if17_else25 
    .const 'Sub' $P5007 = 'cuid_13_1347719896.12' 
    capture_lex $P5007
    $P5008 = $P5007()
    set $P5014, $P5008
    goto if17_end26
  if17_else25:
.annotate 'line', 116
    find_lex $P5010, "$target"
    get_who $P5009, $P5010
    find_lex $P5011, "$sym"
    set $S5001, $P5011
.annotate 'line', 117
    find_lex $P5012, "$_"
    $P5013 = $P5012."value"()
    set $P5009[$S5001], $P5013
    set $P5014, $P5013
  if17_end26:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_10_1347719896.12") :anon :lex :outer("cuid_11_1347719896.12")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 100
    .lex "$source_mo", $P101 
    null $P5001
    set $P101, $P5001
.annotate 'line', 101
    find_lex $P5003, "$_"
    $P5004 = $P5003."value"()
    get_how $P5002, $P5004
    set $P101, $P5002
.annotate 'line', 102
    get_what $P5006, $P101
    get_how $P5005, $P5006
    $P5007 = $P5005."name"($P101)
    set $S5001, $P5007
    find_lex $P5008, "$stub_how"
    set $S5002, $P5008
    iseq $I5001, $S5001, $S5002
    set $I5004, $I5001
    unless $I5001 goto if14_end22 
.annotate 'line', 103
    find_lex $P5010, "$_"
    $P5011 = $P5010."value"()
    get_who $P5009, $P5011
    isnull $I5003, $P5009
    box $P5012, $I5003
    isfalse $I5002, $P5012
    set $I5004, $I5002
  if14_end22:
    box $P5017, $I5004
    set $P5016, $P5017
    unless $I5004 goto if13_end20 
    find_lex $P5014, "$_"
    $P5015 = $P5014."value"()
    get_who $P5013, $P5015
    set $P5016, $P5013
  if13_end20:
    store_lex "$source_is_stub", $P5016
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_13_1347719896.12") :anon :lex :outer("cuid_11_1347719896.12")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 105
    .const 'Sub' $P5021 = 'cuid_12_1347719896.12' 
    capture_lex $P5021 
    .lex "$source", $P101 
    .lex "$source_clone", $P102 
    .lex "%WHO_clone", $P103 
    null $P5001
    set $P101, $P5001
    null $P5002
    set $P102, $P5002
    new $P5003, 'Hash'
    set $P103, $P5003
.annotate 'line', 106
    find_lex $P5004, "$_"
    $P5005 = $P5004."value"()
    set $P101, $P5005
.annotate 'line', 107
    get_how $P5006, $P101
    get_how $P5007, $P101
    $P5008 = $P5007."name"($P101)
    $P5009 = $P5006."new_type"($P5008 :named("name"))
    set $P102, $P5009
.annotate 'line', 108
    get_how $P5010, $P102
    $P5011 = $P5010."compose"($P102)
    get_who $P5015, $P101
    set $P5012, $P5015
    iter $P5014, $P5015
  for_next27:
    unless $P5014, for_done29
    shift $P5017, $P5014
  for_redo28:
    .const 'Sub' $P5016 = 'cuid_12_1347719896.12' 
    capture_lex $P5016
    $P5012 = $P5016($P5017)
    goto for_next27
  for_done29:
    set_who $P102, $P103
    find_lex $P5019, "$target"
    get_who $P5018, $P5019
    find_lex $P5020, "$sym"
    set $S5001, $P5020
    set $P5018[$S5001], $P102
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_12_1347719896.12") :anon :lex :outer("cuid_13_1347719896.12")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 110
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "%WHO_clone"
.annotate 'line', 111
    $P5002 = _lex_param_0."key"()
    set $S5001, $P5002
    $P5003 = _lex_param_0."value"()
    set $P5001[$S5001], $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_15_1347719896.12") :anon :lex :outer("cuid_14_1347719896.12")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 123
    .lex "$source_mo", $P101 
    .lex "$source_is_stub", $P102 
    .lex "$target_mo", $P103 
    .lex "$target_is_stub", $P104 
    null $P5001
    set $P101, $P5001
    null $P5002
    set $P102, $P5002
    null $P5003
    set $P103, $P5003
    null $P5004
    set $P104, $P5004
.annotate 'line', 124
    find_lex $P5006, "$_"
    $P5007 = $P5006."value"()
    get_how $P5005, $P5007
    set $P101, $P5005
.annotate 'line', 125
    get_what $P5009, $P101
    get_how $P5008, $P5009
    $P5010 = $P5008."name"($P101)
    set $S5001, $P5010
    find_lex $P5011, "$stub_how"
    set $S5002, $P5011
    iseq $I5001, $S5001, $S5002
    box $P5012, $I5001
    set $P102, $P5012
    find_lex $P5016, "$target"
    get_who $P5015, $P5016
    find_lex $P5017, "$sym"
    set $S5003, $P5017
    set $P5014, $P5015[$S5003]
    unless_null $P5014, fallback33
    null $P5018
    set $P5014, $P5018
  fallback33:
    get_how $P5013, $P5014
    set $P103, $P5013
.annotate 'line', 127
    get_what $P5020, $P103
    get_how $P5019, $P5020
    $P5021 = $P5019."name"($P103)
    set $S5004, $P5021
    find_lex $P5022, "$stub_how"
    set $S5005, $P5022
    iseq $I5002, $S5004, $S5005
    box $P5023, $I5002
    set $P104, $P5023
    set $P5024, $P102
    unless $P102 goto if20_end37 
    set $P5024, $P104
  if20_end37:
    unless $P5024 goto if19_else34 
.annotate 'line', 128
.annotate 'line', 130
    find_lex $P5027, "$target"
    get_who $P5026, $P5027
    find_lex $P5028, "$sym"
    set $S5006, $P5028
    set $P5025, $P5026[$S5006]
    unless_null $P5025, fallback38
    null $P5029
    set $P5025, $P5029
  fallback38:
    find_lex $P5030, "$_"
    $P5031 = $P5030."value"()
    $P5032 = "&merge_globals"($P5025, $P5031)
    set $P5035, $P5032
    goto if19_end35
  if19_else34:
.annotate 'line', 132
    find_lex $P5033, "$sym"
    set $S5008, $P5033
    concat $S5007, "Merging GLOBAL symbols failed: duplicate definition of symbol ", $S5008
    box $P5034, $S5007
    die $P5034
    set $P5035, $P5034
  if19_end35:
    .return ($P5035) 
.end
.HLL "nqp"
.namespace []
.sub "search_path" :subid("cuid_2_1347719896.12") :anon :lex :outer("cuid_7_1347719896.12")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 5
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5035 = 'cuid_16_1347719896.12' 
    capture_lex $P5035 
    .lex "@search_paths", $P101 
    .lex "$explicit", $P102 
    .lex "%conf", $P103 
    .lex "self", _lex_param_0 
    .lex "$explicit_path", _lex_param_1 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    null $P5002
    set $P102, $P5002
    new $P5003, 'Hash'
    set $P103, $P5003
    new $P5016, 'ExceptionHandler'
    set_label $P5016, catch_handler_2348
    $P5016.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5016
.annotate 'line', 11
    find_dynamic_lex $P5006, "%*COMPILING"
    unless_null $P5006, fallback42
    get_hll_global $P5009, "GLOBAL"
    get_who $P5008, $P5009
    set $P5007, $P5008["%COMPILING"]
    unless_null $P5007, fallback43
    get_hll_global $P5011, "GLOBAL"
    get_who $P5010, $P5011
    new $P5012, 'Hash'
    set $P5010["%COMPILING"], $P5012
    set $P5007, $P5012
  fallback43:
    unless_null $P5007, vivi_2144
    die "Contextual %*COMPILING not found"
    box $P5013, "Contextual %*COMPILING not found"
    set $P5007, $P5013
  vivi_2144:
    set $P5006, $P5007
  fallback42:
    set $P5005, $P5006["%?OPTIONS"]
    unless_null $P5005, fallback45
    null $P5014
    set $P5005, $P5014
  fallback45:
    set $S5001, _lex_param_1
    set $P5004, $P5005[$S5001]
    unless_null $P5004, fallback46
    null $P5015
    set $P5004, $P5015
  fallback46:
    set $P102, $P5004
    set $P5017, $P102
    pop_eh 
    goto skip_handler_2247
  catch_handler_2348:
    .get_results ($P5016) 
    set $I10001, 1
    set $P5016["handled"], $I10001
    null $P10001
    finalize $P5016
    pop_upto_eh $P5016
    pop_eh 
    set $P5017, $P10001
    goto skip_handler_2247
  skip_handler_2247:
    isnull $I5002, $P102
    box $P5018, $I5002
    isfalse $I5001, $P5018
    box $P5020, $I5001
    set $P5019, $P5020
    unless $I5001 goto if25_end52 
    set $P5019, $P102
  if25_end52:
    unless $P5019 goto if24_else49 
.annotate 'line', 12
.annotate 'line', 13
    $P5021 = $P101."push"($P102)
    set $P5024, $P5021
    goto if24_end50
  if24_else49:
    .const 'Sub' $P5022 = 'cuid_16_1347719896.12' 
    capture_lex $P5022
    $P5023 = $P5022()
    set $P5024, $P5023
  if24_end50:
.annotate 'line', 23
    $P5025 = $P101."push"(".")
.annotate 'line', 24
    $P5026 = $P101."push"("blib")
    getinterp $P5028
    set $P5027, $P5028[.IGLOBALS_CONFIG_HASH]
    unless_null $P5027, fallback58
    null $P5029
    set $P5027, $P5029
  fallback58:
    set $P103, $P5027
.annotate 'line', 28
    set $P5030, $P103["libdir"]
    unless_null $P5030, fallback59
    null $P5031
    set $P5030, $P5031
  fallback59:
    set $S5004, $P5030
    set $P5032, $P103["versiondir"]
    unless_null $P5032, fallback60
    null $P5033
    set $P5032, $P5033
  fallback60:
    set $S5005, $P5032
    concat $S5003, $S5004, $S5005
    concat $S5002, $S5003, "/languages/nqp/lib"
    $P5034 = $P101."push"($S5002)
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_16_1347719896.12") :anon :lex :outer("cuid_2_1347719896.12")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 15
    .lex "@lib_paths", $P101 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    getinterp $P5004
    set $P5003, $P5004[.IGLOBALS_LIB_PATHS]
    unless_null $P5003, fallback53
    null $P5005
    set $P5003, $P5005
  fallback53:
    set $P5002, $P5003[1]
    unless_null $P5002, fallback54
    null $P5006
    set $P5002, $P5006
  fallback54:
    set $P101, $P5002
    set $N5001, $P101
    set $N5002, 3
    isgt $I5001, $N5001, $N5002
    box $P5012, $I5001
    set $P5011, $P5012
    unless $I5001 goto if26_end56 
.annotate 'line', 17
.annotate 'line', 18
    find_lex $P5007, "@search_paths"
    set $P5008, $P101[0]
    unless_null $P5008, fallback57
    null $P5009
    set $P5008, $P5009
  fallback57:
    $P5010 = $P5007."push"($P5008)
    set $P5011, $P5010
  if26_end56:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "ctxsave" :subid("cuid_3_1347719896.12") :anon :lex :outer("cuid_7_1347719896.12")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 34
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 

                $P0 = getinterp
                $P5001 = $P0['context';1]
            
    store_dynamic_lex "$*MAIN_CTX", $P5001
    box $P5002, 0
    store_dynamic_lex "$*CTXSAVE", $P5002
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "load_module" :subid("cuid_4_1347719896.12") :anon :lex :outer("cuid_7_1347719896.12")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 43
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy 
    .const 'Sub' $P5027 = 'cuid_17_1347719896.12' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_18_1347719896.12' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_19_1347719896.12' 
    capture_lex $P5027 
    .lex "$module_ctx", $P101 
    .lex "$path", $P102 
    .lex "@prefixes", $P103 
    .lex "self", _lex_param_0 
    .lex "$module_name", _lex_param_1 
    .lex "@global_merge_target", _lex_param_2 
    null $P5001
    set $P101, $P5001
    null $P5002
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P103, $P5003
    root_new $P104, ['parrot';'Continuation']
    set_label $P104, lexotic_61
    .lex "RETURN", $P104
    set $S5003, _lex_param_1
    split $P5004, "::", $S5003
    join $S5002, "/", $P5004
    concat $S5001, $S5002, ".pbc"
    box $P5005, $S5001
    set $P102, $P5005
.annotate 'line', 49
    nqp_decontainerize $P5006, _lex_param_0
    $P5007 = $P5006."search_path"("module-path")
    set $P103, $P5007
    set $P5008, $P103
    iter $P5010, $P103
    new $P5012, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5012, for_handlers65
    push_eh $P5012
  for_next66:
    unless $P5010, for_done68
    shift $P5013, $P5010
  for_redo67:
    .const 'Sub' $P5011 = 'cuid_17_1347719896.12' 
    capture_lex $P5011
    $P5008 = $P5011($P5013)
    goto for_next66
  for_handlers65:
    .get_results ($P5012)
    pop_upto_eh $P5012
    getattribute $P5012, $P5012, 'type'
    eq $P5012, .CONTROL_LOOP_NEXT, for_next66
    eq $P5012, .CONTROL_LOOP_REDO, for_redo67
  for_done68:
    pop_eh 
    find_lex $P5014, "%modules_loaded"
    set $S5004, $P102
    exists $I5001, $P5014[$S5004]
    unless $I5001 goto if28_else69 
.annotate 'line', 56
    find_lex $P5016, "%modules_loaded"
    set $S5005, $P102
    set $P5015, $P5016[$S5005]
    unless_null $P5015, fallback71
    null $P5017
    set $P5015, $P5017
  fallback71:
    set $P101, $P5015
    set $P5020, $P101
    goto if28_end70
  if28_else69:
    .const 'Sub' $P5018 = 'cuid_18_1347719896.12' 
    capture_lex $P5018
    $P5019 = $P5018()
    set $P5020, $P5019
  if28_end70:
    defined $I5002, $P101
    box $P5024, $I5002
    set $P5023, $P5024
    unless $I5002 goto if30_end76 
    .const 'Sub' $P5021 = 'cuid_19_1347719896.12' 
    capture_lex $P5021
    $P5022 = $P5021()
    set $P5023, $P5022
  if30_end76:
    find_lex $P5025, "RETURN"
    $P5026 = $P5025($P101)
    goto lexotic_62
  lexotic_61:
    .get_results ($P5026)
  lexotic_62:
    .return ($P5026) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_17_1347719896.12") :anon :lex :outer("cuid_4_1347719896.12")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 50
    .param pmc _lex_param_0 
    .lex "$prefix", _lex_param_0 
    set $S5003, _lex_param_0
    concat $S5002, $S5003, "/"
    find_lex $P5001, "$path"
    set $S5004, $P5001
    concat $S5001, $S5002, $S5004
    stat $I5001, $S5001, 0
    set $I5002, $I5001
    unless $I5001 goto if27_end64 
.annotate 'line', 51
    set $S5007, _lex_param_0
    concat $S5006, $S5007, "/"
    find_lex $P5002, "$path"
    set $S5008, $P5002
    concat $S5005, $S5006, $S5008
    box $P5003, $S5005
    store_lex "$path", $P5003
    die 0, .CONTROL_LOOP_LAST
    set $I5002, 0
  if27_end64:
    .return ($I5002) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_18_1347719896.12") :anon :lex :outer("cuid_4_1347719896.12")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 59
    .lex "$*CTXSAVE", $P101 
    .lex "$*MAIN_CTX", $P102 
    .lex "$preserve_global", $P103 
    null $P5001
    set $P101, $P5001
    null $P5002
    set $P102, $P5002
    null $P5003
    set $P103, $P5003
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    set $P101, $P5004
    nqp_get_sc_object $P5006, "6EBC33AD36BF21AA57CAA4B020565B7228223D55-1347719896.133", 1
    set $P102, $P5006
    get_hll_global $P5007, "GLOBAL"
    set $P103, $P5007
    find_lex $P5008, "$path"
    set $S5001, $P5008
    load_bytecode $S5001
    set_hll_global "GLOBAL", $P103
    find_lex $P5009, "%modules_loaded"
    find_lex $P5010, "$path"
    set $S5002, $P5010
    unless_null $P102, fallback72
    get_hll_global $P5013, "GLOBAL"
    get_who $P5012, $P5013
    set $P5011, $P5012["$MAIN_CTX"]
    unless_null $P5011, fallback73
    null $P5014
    set $P5011, $P5014
  fallback73:
    unless_null $P5011, vivi_2974
    die "Contextual $*MAIN_CTX not found"
    box $P5015, "Contextual $*MAIN_CTX not found"
    set $P5011, $P5015
  vivi_2974:
    set $P102, $P5011
  fallback72:
    store_lex "$module_ctx", $P102
    set $P5009[$S5002], $P102
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_19_1347719896.12") :anon :lex :outer("cuid_4_1347719896.12")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 69
    .lex "$UNIT", $P101 
    null $P5001
    set $P101, $P5001
    find_lex $P5003, "$module_ctx"
    getattribute $P5002, $P5003, "lex_pad"
    set $P101, $P5002
    set $P5004, $P101["GLOBALish"]
    unless_null $P5004, fallback79
    null $P5005
    set $P5004, $P5005
  fallback79:
    isnull $I5001, $P5004
    box $P5016, $I5001
    set $P5015, $P5016
    if $I5001 goto unless31_end78 
.annotate 'line', 72
    find_lex $P5006, "@global_merge_target"
    set $N5001, $P5006
    box $P5014, $N5001
    set $P5013, $P5014
    unless $N5001 goto if32_end81 
.annotate 'line', 73
.annotate 'line', 74
    find_lex $P5008, "@global_merge_target"
    set $P5007, $P5008[0]
    unless_null $P5007, fallback82
    null $P5009
    set $P5007, $P5009
  fallback82:
    set $P5010, $P101["GLOBALish"]
    unless_null $P5010, fallback83
    null $P5011
    set $P5010, $P5011
  fallback83:
    $P5012 = "&merge_globals"($P5007, $P5010)
    set $P5013, $P5012
  if32_end81:
    set $P5015, $P5013
  unless31_end78:
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "load_setting" :subid("cuid_5_1347719896.12") :anon :lex :outer("cuid_7_1347719896.12")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 139
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5008 = 'cuid_21_1347719896.12' 
    capture_lex $P5008 
    .lex "$setting", $P101 
    .lex "self", _lex_param_0 
    .lex "$setting_name", _lex_param_1 
    null $P5001
    set $P101, $P5001
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_84
    .lex "RETURN", $P102
    set $S5001, _lex_param_1
    isne $I5001, $S5001, "NULL"
    box $P5005, $I5001
    set $P5004, $P5005
    unless $I5001 goto if33_end87 
    .const 'Sub' $P5002 = 'cuid_21_1347719896.12' 
    capture_lex $P5002
    $P5003 = $P5002()
    set $P5004, $P5003
  if33_end87:
    find_lex $P5006, "RETURN"
    $P5007 = $P5006($P101)
    goto lexotic_85
  lexotic_84:
    .get_results ($P5007)
  lexotic_85:
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_21_1347719896.12") :anon :lex :outer("cuid_5_1347719896.12")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 142
    .const 'Sub' $P5022 = 'cuid_20_1347719896.12' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_22_1347719896.12' 
    capture_lex $P5022 
    .lex "$path", $P101 
    .lex "@prefixes", $P102 
    null $P5001
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
    find_lex $P5003, "$setting_name"
    set $S5002, $P5003
    concat $S5001, $S5002, ".setting.pbc"
    box $P5004, $S5001
    set $P101, $P5004
.annotate 'line', 145
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    $P5007 = $P5005."search_path"("setting-path")
    set $P102, $P5007
    set $P5008, $P102
    iter $P5010, $P102
    new $P5012, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5012, for_handlers90
    push_eh $P5012
  for_next91:
    unless $P5010, for_done93
    shift $P5013, $P5010
  for_redo92:
    .const 'Sub' $P5011 = 'cuid_20_1347719896.12' 
    capture_lex $P5011
    $P5008 = $P5011($P5013)
    goto for_next91
  for_handlers90:
    .get_results ($P5012)
    pop_upto_eh $P5012
    getattribute $P5012, $P5012, 'type'
    eq $P5012, .CONTROL_LOOP_NEXT, for_next91
    eq $P5012, .CONTROL_LOOP_REDO, for_redo92
  for_done93:
    pop_eh 
    find_lex $P5014, "%settings_loaded"
    set $S5003, $P101
    exists $I5001, $P5014[$S5003]
    box $P5018, $I5001
    set $P5017, $P5018
    if $I5001 goto unless35_end95 
    .const 'Sub' $P5015 = 'cuid_22_1347719896.12' 
    capture_lex $P5015
    $P5016 = $P5015()
    set $P5017, $P5016
  unless35_end95:
    find_lex $P5020, "%settings_loaded"
    set $S5004, $P101
    set $P5019, $P5020[$S5004]
    unless_null $P5019, fallback104
    null $P5021
    set $P5019, $P5021
  fallback104:
    store_lex "$setting", $P5019
    .return ($P5019) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_20_1347719896.12") :anon :lex :outer("cuid_21_1347719896.12")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 146
    .param pmc _lex_param_0 
    .lex "$prefix", _lex_param_0 
    set $S5003, _lex_param_0
    concat $S5002, $S5003, "/"
    find_lex $P5001, "$path"
    set $S5004, $P5001
    concat $S5001, $S5002, $S5004
    stat $I5001, $S5001, 0
    set $I5002, $I5001
    unless $I5001 goto if34_end89 
.annotate 'line', 147
    set $S5007, _lex_param_0
    concat $S5006, $S5007, "/"
    find_lex $P5002, "$path"
    set $S5008, $P5002
    concat $S5005, $S5006, $S5008
    box $P5003, $S5005
    store_lex "$path", $P5003
    die 0, .CONTROL_LOOP_LAST
    set $I5002, 0
  if34_end89:
    .return ($I5002) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_22_1347719896.12") :anon :lex :outer("cuid_21_1347719896.12")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 154
    .lex "$*CTXSAVE", $P101 
    .lex "$*MAIN_CTX", $P102 
    .lex "$preserve_global", $P103 
    null $P5001
    set $P101, $P5001
    null $P5002
    set $P102, $P5002
    null $P5003
    set $P103, $P5003
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    set $P101, $P5004
    nqp_get_sc_object $P5006, "6EBC33AD36BF21AA57CAA4B020565B7228223D55-1347719896.133", 1
    set $P102, $P5006
    get_hll_global $P5007, "GLOBAL"
    set $P103, $P5007
    find_lex $P5008, "$path"
    set $S5001, $P5008
    load_bytecode $S5001
    set_hll_global "GLOBAL", $P103
    unless_null $P102, fallback98
    get_hll_global $P5011, "GLOBAL"
    get_who $P5010, $P5011
    set $P5009, $P5010["$MAIN_CTX"]
    unless_null $P5009, fallback99
    null $P5012
    set $P5009, $P5012
  fallback99:
    unless_null $P5009, vivi_37100
    die "Contextual $*MAIN_CTX not found"
    box $P5013, "Contextual $*MAIN_CTX not found"
    set $P5009, $P5013
  vivi_37100:
    set $P102, $P5009
  fallback98:
    defined $I5001, $P102
    box $P5017, $I5001
    set $P5016, $P5017
    if $I5001 goto unless36_end97 
.annotate 'line', 160
    find_lex $P5014, "$setting_name"
    set $S5004, $P5014
    concat $S5003, "Unable to load setting ", $S5004
    concat $S5002, $S5003, "; maybe it is missing a YOU_ARE_HERE?"
    box $P5015, $S5002
    die $P5015
    set $P5016, $P5015
  unless36_end97:
    find_lex $P5018, "%settings_loaded"
    find_lex $P5019, "$path"
    set $S5005, $P5019
    unless_null $P102, fallback101
    get_hll_global $P5022, "GLOBAL"
    get_who $P5021, $P5022
    set $P5020, $P5021["$MAIN_CTX"]
    unless_null $P5020, fallback102
    null $P5023
    set $P5020, $P5023
  fallback102:
    unless_null $P5020, vivi_38103
    die "Contextual $*MAIN_CTX not found"
    box $P5024, "Contextual $*MAIN_CTX not found"
    set $P5020, $P5024
  vivi_38103:
    set $P102, $P5020
  fallback101:
    set $P5018[$S5005], $P102
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "set_mainline_module" :subid("cuid_6_1347719896.12") :anon :lex :outer("cuid_7_1347719896.12")
.annotate 'file', "src\\ModuleLoader.pm"
.annotate 'line', 174
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$module_name", $P101 
    .lex "self", _lex_param_0 
    .lex "$mainline_ctx", _lex_param_1 
    null $P5001
    set $P101, $P5001
    getinterp $P5004
    set $P5003, $P5004[2]
    unless_null $P5003, fallback105
    null $P5005
    set $P5003, $P5005
  fallback105:
    set $P5002, $P5003[0]
    unless_null $P5002, fallback106
    null $P5006
    set $P5002, $P5006
  fallback106:
    set $P101, $P5002
    set $S5002, $P101
    substr $S5001, $S5002, 0, 2
    iseq $I5001, $S5001, "./"
    box $P5009, $I5001
    set $P5008, $P5009
    unless $I5001 goto if39_end108 
.annotate 'line', 178
    set $S5004, $P101
    set $S5005, $P101
    length $I5002, $S5005
    set $N5002, $I5002
    set $N5003, 2
    sub $N5001, $N5002, $N5003
    set $I5003, $N5001
    substr $S5003, $S5004, 2, $I5003
    box $P5007, $S5003
    set $P101, $P5007
    set $P5008, $P101
  if39_end108:
    set $S5007, $P101
    set $S5008, $P101
    length $I5005, $S5008
    set $N5005, $I5005
    set $N5006, 4
    sub $N5004, $N5005, $N5006
    set $I5006, $N5004
    substr $S5006, $S5007, $I5006, 4
    iseq $I5004, $S5006, ".pbc"
    unless $I5004 goto if40_else109 
.annotate 'line', 181
    null $P5010
    set $P5014, $P5010
    goto if40_end110
  if40_else109:
    set $S5010, $P101
    set $S5011, $P101
    length $I5008, $S5011
    set $N5008, $I5008
    set $N5009, 4
    sub $N5007, $N5008, $N5009
    set $I5009, $N5007
    substr $S5009, $S5010, $I5009, 4
    iseq $I5007, $S5009, ".exe"
    unless $I5007 goto if41_else111 
.annotate 'line', 184
    set $S5014, $P101
    set $S5015, $P101
    length $I5010, $S5015
    set $N5011, $I5010
    set $N5012, 3
    sub $N5010, $N5011, $N5012
    set $I5011, $N5010
    substr $S5013, $S5014, 0, $I5011
    concat $S5012, $S5013, "pbc"
    box $P5011, $S5012
    set $P101, $P5011
    set $P5013, $P101
    goto if41_end112
  if41_else111:
.annotate 'line', 188
    set $S5017, $P101
    concat $S5016, $S5017, ".pbc"
    box $P5012, $S5016
    set $P101, $P5012
    set $P5013, $P101
  if41_end112:
    set $P5014, $P5013
  if40_end110:
    find_lex $P5015, "%modules_loaded"
    set $S5018, $P101
    set $P5015[$S5018], _lex_param_1
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_24_1347719896.12") :load :init
.annotate 'file', "src\\ModuleLoader.pm"
    .const 'Sub' $P5001 = 'cuid_23_1347719896.12' 
    capture_lex $P5001 
    .local pmc cur_sc 
    nqp_dynop_setup 
    nqp_bigint_setup 
    getinterp $P5001
    get_class $P5002, "LexPad"
    get_class $P5003, "NQPLexPad"
    $P5004 = $P5001."hll_map"($P5002, $P5003)
    nqp_create_sc $P5001, "6EBC33AD36BF21AA57CAA4B020565B7228223D55-1347719896.133"
    set cur_sc, $P5001
    $P5002 = cur_sc."set_description"("src\\ModuleLoader.pm")
    new $P5003, 'ResizableStringArray'
    null $S5001
    push $P5003, $S5001
    push $P5003, "P6opaque"
    push $P5003, "ModuleLoader"
    push $P5003, "search_path"
    push $P5003, "ctxsave"
    push $P5003, "load_module"
    push $P5003, "load_setting"
    push $P5003, "set_mainline_module"
    push $P5003, "__6MODEL_CORE__"
    push $P5003, "GLOBALish"
    .const 'Sub' $P5004 = 'cuid_23_1347719896.12' 
    capture_lex $P5004
    $P5005 = $P5004()
    nqp_deserialize_sc "AQAAAEAAAAABAAAASAAAAAIAAABYAAAA4AEAAAQAAAAgAgAAhgIAAAAAAACGAgAAAAAAAIYCAACGAgAAAAAAAAgAAAAAAAAAAQAAAAAAAAABAAAAqAAAAAAAAAACAAAAAAAAAAAAAAAKAAEAAAACAAAAAgAAAAAAAQAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAAAAAADAAAAAAADAAAAAAAAAAEAAAAKAAAAAAAKAAUAAAADAAAACwAAAAAAAAAAAAQAAAALAAAAAAABAAAABQAAAAsAAAAAAAIAAAAGAAAACwAAAAAAAwAAAAcAAAALAAAAAAAEAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAEAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAQAAAAMAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAABAAAAAAAAAAAAAAABAAAAAQAAAAAAAAAQAAAAAQAAAAkAAAAHAAAAAAAKAAAAAAACAAAABwAAAAAACgAFAAAAAwAAAAsAAAAAAAAAAAAEAAAACwAAAAAAAQAAAAUAAAALAAAAAAACAAAABgAAAAsAAAAAAAMAAAAHAAAACwAAAAAABAAAAA==", cur_sc, $P5003, $P5005
    .const "LexInfo" $P5001 = "cuid_1_1347719896.12"
    nqp_get_sc_object $P5002, "6EBC33AD36BF21AA57CAA4B020565B7228223D55-1347719896.133", 0
    $P5003 = $P5001."set_static_lexpad_value"("GLOBALish", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1347719896.12"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1347719896.12"
    nqp_get_sc_object $P5002, "6EBC33AD36BF21AA57CAA4B020565B7228223D55-1347719896.133", 0
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1347719896.12"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1347719896.12"
    nqp_get_sc_object $P5002, "6EBC33AD36BF21AA57CAA4B020565B7228223D55-1347719896.133", 1
    $P5003 = $P5001."set_static_lexpad_value"("ModuleLoader", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1347719896.12"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_7_1347719896.12"
    nqp_get_sc_object $P5002, "6EBC33AD36BF21AA57CAA4B020565B7228223D55-1347719896.133", 1
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_7_1347719896.12"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_7_1347719896.12"
    nqp_get_sc_object $P5002, "6EBC33AD36BF21AA57CAA4B020565B7228223D55-1347719896.133", 1
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_7_1347719896.12"
    $P5005 = $P5004."finish_static_lexpad"()
    nqp_get_sc_object $P5001, "6EBC33AD36BF21AA57CAA4B020565B7228223D55-1347719896.133", 0
    set_hll_global "GLOBAL", $P5001
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_23_1347719896.12") :anon :lex :outer("cuid_24_1347719896.12")
.annotate 'file', "src\\ModuleLoader.pm"
    new $P5001, 'ResizablePMCArray'
    .const 'Sub' $P5002 = "cuid_2_1347719896.12" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_3_1347719896.12" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_4_1347719896.12" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_5_1347719896.12" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_6_1347719896.12" 
    push $P5001, $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_25_1347719896.12") :load
.annotate 'file', "src\\ModuleLoader.pm"
    .const 'Sub' $P5001 = "cuid_1_1347719896.12" 
    $P5002 = $P5001()
    .return ($P5002) 
.end