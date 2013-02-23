.include 'cclass.pasm'
.include 'except_severity.pasm'
.include 'except_types.pasm'
.include 'iglobals.pasm'
.include 'interpinfo.pasm'
.include 'iterator.pasm'
.include 'sysinfo.pasm'
.include 'stat.pasm'
.include 'datatypes.pasm'
.include 'libpaths.pasm'
.loadlib "nqp_group"
.loadlib "nqp_ops"
.loadlib "nqp_bigint_ops"
.loadlib "trans_ops"
.loadlib "io_ops"
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_21_1361537906.89623") :anon :lex
.annotate 'file', "src/ModuleLoader.pm"
    .param pmc _lex_param_0 :slurpy 
    .const 'Sub' $P5008 = 'cuid_13_1361537906.89623' 
    capture_lex $P5008 
    .lex "GLOBALish", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "ModuleLoader", $P103 
    .lex "@ARGS", _lex_param_0 
    .local pmc ctxsave 
    find_dynamic_lex $P5001, "$*CTXSAVE"
    set ctxsave, $P5001
    isnull $I5001, ctxsave
    if $I5001 goto unless10_end11 
    can $I5002, ctxsave, "ctxsave"
    box $P5004, $I5002
    set $P5003, $P5004
    unless $I5002 goto if11_end13 
    $P5002 = ctxsave."ctxsave"()
    set $P5003, $P5002
  if11_end13:
  unless10_end11:
.annotate 'line', 1
    .const 'Sub' $P5005 = 'cuid_13_1361537906.89623' 
    capture_lex $P5005
    $P5006 = $P5005()
    nqp_get_sc_object $P5007, "B5F94BC230819560AA2452CB19382361E86A7D69-1361537906.92743", 1
    set_hll_global "ModuleLoader", $P5007
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_13_1361537906.89623") :anon :lex :outer("cuid_21_1361537906.89623")
.annotate 'file', "src/ModuleLoader.pm"
.annotate 'line', 1
    .const 'Sub' $P5010 = 'cuid_6_1361537906.89623' 
    capture_lex $P5010 
    .const 'Sub' $P5010 = 'cuid_1_1361537906.89623' 
    capture_lex $P5010 
    .const 'Sub' $P5010 = 'cuid_2_1361537906.89623' 
    capture_lex $P5010 
    .const 'Sub' $P5010 = 'cuid_3_1361537906.89623' 
    capture_lex $P5010 
    .const 'Sub' $P5010 = 'cuid_4_1361537906.89623' 
    capture_lex $P5010 
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
    .const 'Sub' $P5004 = 'cuid_6_1361537906.89623' 
    capture_lex $P5004
    set $P104, $P5004
    .const 'Sub' $P5005 = 'cuid_1_1361537906.89623' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_2_1361537906.89623' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_3_1361537906.89623' 
    capture_lex $P5007
    box $P5008, "KnowHOW"
    set $P103, $P5008
    .const 'Sub' $P5009 = 'cuid_4_1361537906.89623' 
    capture_lex $P5009
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "merge_globals" :subid("cuid_6_1361537906.89623") :anon :lex :outer("cuid_13_1361537906.89623")
.annotate 'file', "src/ModuleLoader.pm"
.annotate 'line', 84
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5014 = 'cuid_5_1361537906.89623' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_11_1361537906.89623' 
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
    .const 'Sub' $P5006 = 'cuid_5_1361537906.89623' 
    capture_lex $P5006
    $P5002 = $P5006($P5007)
    goto for_next14
  for_done16:
    get_who $P5011, _lex_param_1
    set $P5008, $P5011
    iter $P5010, $P5011
  for_next45:
    unless $P5010, for_done47
    shift $P5013, $P5010
  for_redo46:
    .const 'Sub' $P5012 = 'cuid_11_1361537906.89623' 
    capture_lex $P5012
    $P5008 = $P5012($P5013)
    goto for_next45
  for_done47:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_5_1361537906.89623") :anon :lex :outer("cuid_6_1361537906.89623")
.annotate 'file', "src/ModuleLoader.pm"
.annotate 'line', 89
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "%known_symbols"
    $P5002 = _lex_param_0."key"()
    set $S5001, $P5002
    box $P5003, 1
    set $P5001[$S5001], $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_11_1361537906.89623") :anon :lex :outer("cuid_6_1361537906.89623")
.annotate 'file', "src/ModuleLoader.pm"
.annotate 'line', 92
    .param pmc _lex_param_0 
    .const 'Sub' $P5019 = 'cuid_8_1361537906.89623' 
    capture_lex $P5019 
    .const 'Sub' $P5019 = 'cuid_12_1361537906.89623' 
    capture_lex $P5019 
    .lex "$sym", $P101 
    .lex "$val", $P102 
    .lex "$_", _lex_param_0 
    .local pmc fb_tmp_1 
    null $P5001
    set $P101, $P5001
    null $P5002
    set $P102, $P5002
    $P5003 = _lex_param_0."key"()
    set $P101, $P5003
    $P5004 = _lex_param_0."value"()
    set $P102, $P5004
    find_lex $P5005, "%known_symbols"
    set $S5001, $P101
    exists $I5002, $P5005[$S5001]
    not $I5001, $I5002
    unless $I5001 goto if12_else17 
    .const 'Sub' $P5006 = 'cuid_8_1361537906.89623' 
    capture_lex $P5006
    $P5007 = $P5006()
    set $P5018, $P5007
    goto if12_end18
  if12_else17:
    find_lex $P5009, "$target"
    get_who $P5008, $P5009
    set fb_tmp_1, $P5008
    repr_defined $I5005, fb_tmp_1
    unless $I5005 goto if19_else32 
    set $S5002, $P101
    set $P5010, fb_tmp_1[$S5002]
    set $P5012, $P5010
    goto if19_end33
  if19_else32:
    null $P5011
    set $P5012, $P5011
  if19_end33:
    unless_null $P5012, vivi_2034
    null $P5013
    set $P5012, $P5013
  vivi_2034:
    get_id $I5004, $P5012
    get_id $I5006, $P102
    iseq $I5003, $I5004, $I5006
    unless $I5003 goto if18_else30 
.annotate 'line', 117
    null $P5014
    set $P5017, $P5014
    goto if18_end31
  if18_else30:
    .const 'Sub' $P5015 = 'cuid_12_1361537906.89623' 
    capture_lex $P5015
    $P5016 = $P5015()
    set $P5017, $P5016
  if18_end31:
    set $P5018, $P5017
  if12_end18:
    .return ($P5018) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_8_1361537906.89623") :anon :lex :outer("cuid_11_1361537906.89623")
.annotate 'file', "src/ModuleLoader.pm"
.annotate 'line', 95
    .const 'Sub' $P5014 = 'cuid_7_1361537906.89623' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_10_1361537906.89623' 
    capture_lex $P5014 
    .lex "$source_is_stub", $P101 
    null $P5001
    set $P101, $P5001
    box $P5002, 0
    set $P101, $P5002
    new $P5005, 'ExceptionHandler'
    set_label $P5005, catch_handler_1624
    $P5005.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5005
    .const 'Sub' $P5003 = 'cuid_7_1361537906.89623' 
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
    .const 'Sub' $P5007 = 'cuid_10_1361537906.89623' 
    capture_lex $P5007
    $P5008 = $P5007()
    set $P5013, $P5008
    goto if17_end26
  if17_else25:
.annotate 'line', 113
    find_lex $P5010, "$target"
    get_who $P5009, $P5010
    find_lex $P5011, "$sym"
    set $S5001, $P5011
    find_lex $P5012, "$val"
    set $P5009[$S5001], $P5012
    set $P5013, $P5012
  if17_end26:
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_7_1361537906.89623") :anon :lex :outer("cuid_8_1361537906.89623")
.annotate 'file', "src/ModuleLoader.pm"
.annotate 'line', 97
    .lex "$source_mo", $P101 
    null $P5001
    set $P101, $P5001
    find_lex $P5003, "$val"
    get_how $P5002, $P5003
    set $P101, $P5002
.annotate 'line', 99
    get_what $P5005, $P101
    get_how $P5004, $P5005
    $P5006 = $P5004."name"($P101)
    set $S5001, $P5006
    find_lex $P5007, "$stub_how"
    set $S5002, $P5007
    iseq $I5001, $S5001, $S5002
    set $I5004, $I5001
    unless $I5001 goto if14_end22 
    find_lex $P5009, "$val"
    get_who $P5008, $P5009
    isnull $I5003, $P5008
    not $I5002, $I5003
    set $I5004, $I5002
  if14_end22:
    box $P5013, $I5004
    set $P5012, $P5013
    unless $I5004 goto if13_end20 
    find_lex $P5011, "$val"
    get_who $P5010, $P5011
    set $P5012, $P5010
  if13_end20:
    store_lex "$source_is_stub", $P5012
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_10_1361537906.89623") :anon :lex :outer("cuid_8_1361537906.89623")
.annotate 'file', "src/ModuleLoader.pm"
.annotate 'line', 102
    .const 'Sub' $P5019 = 'cuid_9_1361537906.89623' 
    capture_lex $P5019 
    .lex "$source", $P101 
    .lex "$source_clone", $P102 
    .lex "%WHO_clone", $P103 
    null $P5001
    set $P101, $P5001
    null $P5002
    set $P102, $P5002
    new $P5003, 'Hash'
    set $P103, $P5003
    find_lex $P5004, "$val"
    set $P101, $P5004
.annotate 'line', 104
    get_how $P5005, $P101
    get_how $P5006, $P101
    $P5007 = $P5006."name"($P101)
    $P5008 = $P5005."new_type"($P5007 :named("name"))
    set $P102, $P5008
.annotate 'line', 105
    get_how $P5009, $P102
    $P5009."compose"($P102)
    get_who $P5013, $P101
    set $P5010, $P5013
    iter $P5012, $P5013
  for_next27:
    unless $P5012, for_done29
    shift $P5015, $P5012
  for_redo28:
    .const 'Sub' $P5014 = 'cuid_9_1361537906.89623' 
    capture_lex $P5014
    $P5010 = $P5014($P5015)
    goto for_next27
  for_done29:
    set_who $P102, $P103
    find_lex $P5017, "$target"
    get_who $P5016, $P5017
    find_lex $P5018, "$sym"
    set $S5001, $P5018
    set $P5016[$S5001], $P102
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_9_1361537906.89623") :anon :lex :outer("cuid_10_1361537906.89623")
.annotate 'file', "src/ModuleLoader.pm"
.annotate 'line', 107
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "%WHO_clone"
    $P5002 = _lex_param_0."key"()
    set $S5001, $P5002
    $P5003 = _lex_param_0."value"()
    set $P5001[$S5001], $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_12_1361537906.89623") :anon :lex :outer("cuid_11_1361537906.89623")
.annotate 'file', "src/ModuleLoader.pm"
.annotate 'line', 120
    .lex "$source_mo", $P101 
    .lex "$source_is_stub", $P102 
    .lex "$target_mo", $P103 
    .lex "$target_is_stub", $P104 
    .local pmc fb_tmp_2 
    .local pmc fb_tmp_3 
    null $P5001
    set $P101, $P5001
    null $P5002
    set $P102, $P5002
    null $P5003
    set $P103, $P5003
    null $P5004
    set $P104, $P5004
    find_lex $P5006, "$val"
    get_how $P5005, $P5006
    set $P101, $P5005
.annotate 'line', 122
    get_what $P5008, $P101
    get_how $P5007, $P5008
    $P5009 = $P5007."name"($P101)
    set $S5001, $P5009
    find_lex $P5010, "$stub_how"
    set $S5002, $P5010
    iseq $I5001, $S5001, $S5002
    box $P5011, $I5001
    set $P102, $P5011
    find_lex $P5014, "$target"
    get_who $P5013, $P5014
    set fb_tmp_2, $P5013
    repr_defined $I5002, fb_tmp_2
    unless $I5002 goto if21_else35 
    find_lex $P5016, "$sym"
    set $S5003, $P5016
    set $P5015, fb_tmp_2[$S5003]
    set $P5018, $P5015
    goto if21_end36
  if21_else35:
    null $P5017
    set $P5018, $P5017
  if21_end36:
    unless_null $P5018, vivi_2237
    null $P5019
    set $P5018, $P5019
  vivi_2237:
    get_how $P5012, $P5018
    set $P103, $P5012
.annotate 'line', 124
    get_what $P5021, $P103
    get_how $P5020, $P5021
    $P5022 = $P5020."name"($P103)
    set $S5004, $P5022
    find_lex $P5023, "$stub_how"
    set $S5005, $P5023
    iseq $I5003, $S5004, $S5005
    box $P5024, $I5003
    set $P104, $P5024
    set $P5025, $P102
    unless $P102 goto if24_end41 
    set $P5025, $P104
  if24_end41:
    unless $P5025 goto if23_else38 
.annotate 'line', 125
.annotate 'line', 127
    find_lex $P5027, "$target"
    get_who $P5026, $P5027
    set fb_tmp_3, $P5026
    repr_defined $I5004, fb_tmp_3
    unless $I5004 goto if25_else42 
    find_lex $P5029, "$sym"
    set $S5006, $P5029
    set $P5028, fb_tmp_3[$S5006]
    set $P5031, $P5028
    goto if25_end43
  if25_else42:
    null $P5030
    set $P5031, $P5030
  if25_end43:
    unless_null $P5031, vivi_2644
    null $P5032
    set $P5031, $P5032
  vivi_2644:
    find_lex $P5033, "$val"
    $P5034 = "&merge_globals"($P5031, $P5033)
    set $P5037, $P5034
    goto if23_end39
  if23_else38:
.annotate 'line', 129
    find_lex $P5035, "$sym"
    set $S5008, $P5035
    concat $S5007, "Merging GLOBAL symbols failed: duplicate definition of symbol ", $S5008
    box $P5036, $S5007
    die $P5036
    set $P5037, $P5036
  if23_end39:
    .return ($P5037) 
.end
.HLL "nqp"
.namespace []
.sub "search_path" :subid("cuid_1_1361537906.89623") :anon :lex :outer("cuid_13_1361537906.89623")
.annotate 'file', "src/ModuleLoader.pm"
.annotate 'line', 5
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5042 = 'cuid_14_1361537906.89623' 
    capture_lex $P5042 
    .lex "@search_paths", $P101 
    .lex "$explicit", $P102 
    .lex "%conf", $P103 
    .lex "self", _lex_param_0 
    .lex "$explicit_path", _lex_param_1 
    .local pmc fb_tmp_4 
    .local pmc fb_tmp_5 
    .local pmc fb_tmp_6 
    .local pmc pkg_viv_tmp_1 
    .local pmc fb_tmp_10 
    .local pmc fb_tmp_11 
    .local pmc fb_tmp_12 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    null $P5002
    set $P102, $P5002
    new $P5003, 'Hash'
    set $P103, $P5003
    new $P5020, 'ExceptionHandler'
    set_label $P5020, catch_handler_3560
    $P5020.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5020
.annotate 'line', 11
    find_dynamic_lex $P5004, "%*COMPILING"
    unless_null $P5004, fallback52
    nqp_get_sc_object $P5006, "B5F94BC230819560AA2452CB19382361E86A7D69-1361537906.92743", 0
    get_who $P5005, $P5006
    set pkg_viv_tmp_1, $P5005
    set fb_tmp_6, pkg_viv_tmp_1
    repr_defined $I5003, fb_tmp_6
    unless $I5003 goto if29_else53 
    set $P5007, fb_tmp_6["%COMPILING"]
    set $P5009, $P5007
    goto if29_end54
  if29_else53:
    null $P5008
    set $P5009, $P5008
  if29_end54:
    unless_null $P5009, vivi_3055
    new $P5010, 'Hash'
    set pkg_viv_tmp_1["%COMPILING"], $P5010
    set $P5009, $P5010
  vivi_3055:
    unless_null $P5009, vivi_3156
    die "Contextual %*COMPILING not found"
    box $P5011, "Contextual %*COMPILING not found"
    set $P5009, $P5011
  vivi_3156:
    set $P5004, $P5009
  fallback52:
    set fb_tmp_5, $P5004
    repr_defined $I5002, fb_tmp_5
    unless $I5002 goto if28_else50 
    set $P5012, fb_tmp_5["%?OPTIONS"]
    set $P5014, $P5012
    goto if28_end51
  if28_else50:
    null $P5013
    set $P5014, $P5013
  if28_end51:
    unless_null $P5014, vivi_3257
    null $P5015
    set $P5014, $P5015
  vivi_3257:
    set fb_tmp_4, $P5014
    repr_defined $I5001, fb_tmp_4
    unless $I5001 goto if27_else48 
    set $S5001, _lex_param_1
    set $P5016, fb_tmp_4[$S5001]
    set $P5018, $P5016
    goto if27_end49
  if27_else48:
    null $P5017
    set $P5018, $P5017
  if27_end49:
    unless_null $P5018, vivi_3358
    null $P5019
    set $P5018, $P5019
  vivi_3358:
    set $P102, $P5018
    set $P5021, $P102
    pop_eh 
    goto skip_handler_3459
  catch_handler_3560:
    .get_results ($P5020) 
    set $I10001, 1
    set $P5020["handled"], $I10001
    null $P10001
    finalize $P5020
    pop_upto_eh $P5020
    pop_eh 
    set $P5021, $P10001
    goto skip_handler_3459
  skip_handler_3459:
    isnull $I5005, $P102
    not $I5004, $I5005
    box $P5023, $I5004
    set $P5022, $P5023
    unless $I5004 goto if37_end64 
    set $P5022, $P102
  if37_end64:
    unless $P5022 goto if36_else61 
.annotate 'line', 12
    push $P101, $P102
    goto if36_end62
  if36_else61:
    .const 'Sub' $P5024 = 'cuid_14_1361537906.89623' 
    capture_lex $P5024
    $P5025 = $P5024()
  if36_end62:
    box $P5026, "."
    push $P101, $P5026
    box $P5027, "blib"
    push $P101, $P5027
    getinterp $P5028
    set fb_tmp_10, $P5028
    repr_defined $I5006, fb_tmp_10
    unless $I5006 goto if45_else76 
    set $P5029, fb_tmp_10[.IGLOBALS_CONFIG_HASH]
    set $P5031, $P5029
    goto if45_end77
  if45_else76:
    null $P5030
    set $P5031, $P5030
  if45_end77:
    unless_null $P5031, vivi_4678
    null $P5032
    set $P5031, $P5032
  vivi_4678:
    set $P103, $P5031
    set fb_tmp_11, $P103
    repr_defined $I5007, fb_tmp_11
    unless $I5007 goto if47_else79 
    set $P5033, fb_tmp_11["libdir"]
    set $P5035, $P5033
    goto if47_end80
  if47_else79:
    null $P5034
    set $P5035, $P5034
  if47_end80:
    unless_null $P5035, vivi_4881
    null $P5036
    set $P5035, $P5036
  vivi_4881:
    set $S5004, $P5035
    set fb_tmp_12, $P103
    repr_defined $I5008, fb_tmp_12
    unless $I5008 goto if49_else82 
    set $P5037, fb_tmp_12["versiondir"]
    set $P5039, $P5037
    goto if49_end83
  if49_else82:
    null $P5038
    set $P5039, $P5038
  if49_end83:
    unless_null $P5039, vivi_5084
    null $P5040
    set $P5039, $P5040
  vivi_5084:
    set $S5005, $P5039
    concat $S5003, $S5004, $S5005
    concat $S5002, $S5003, "/languages/nqp/lib"
    box $P5041, $S5002
    push $P101, $P5041
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_14_1361537906.89623") :anon :lex :outer("cuid_1_1361537906.89623")
.annotate 'file', "src/ModuleLoader.pm"
.annotate 'line', 15
    .lex "@lib_paths", $P101 
    .local pmc fb_tmp_7 
    .local pmc fb_tmp_8 
    .local pmc fb_tmp_9 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    getinterp $P5002
    set fb_tmp_8, $P5002
    repr_defined $I5002, fb_tmp_8
    unless $I5002 goto if39_else67 
    set $P5003, fb_tmp_8[.IGLOBALS_LIB_PATHS]
    set $P5005, $P5003
    goto if39_end68
  if39_else67:
    null $P5004
    set $P5005, $P5004
  if39_end68:
    unless_null $P5005, vivi_4069
    null $P5006
    set $P5005, $P5006
  vivi_4069:
    set fb_tmp_7, $P5005
    repr_defined $I5001, fb_tmp_7
    unless $I5001 goto if38_else65 
    set $P5007, fb_tmp_7[1]
    set $P5009, $P5007
    goto if38_end66
  if38_else65:
    null $P5008
    set $P5009, $P5008
  if38_end66:
    unless_null $P5009, vivi_4170
    null $P5010
    set $P5009, $P5010
  vivi_4170:
    set $P101, $P5009
    elements $I5004, $P101
    set $N5001, $I5004
    set $N5002, 3
    isgt $I5003, $N5001, $N5002
    box $P5017, $I5003
    set $P5016, $P5017
    unless $I5003 goto if42_end72 
.annotate 'line', 17
    find_lex $P5011, "@search_paths"
    set fb_tmp_9, $P101
    repr_defined $I5005, fb_tmp_9
    unless $I5005 goto if43_else73 
    set $P5012, fb_tmp_9[0]
    set $P5014, $P5012
    goto if43_end74
  if43_else73:
    null $P5013
    set $P5014, $P5013
  if43_end74:
    unless_null $P5014, vivi_4475
    null $P5015
    set $P5014, $P5015
  vivi_4475:
    push $P5011, $P5014
    set $P5016, $P5011
  if42_end72:
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "ctxsave" :subid("cuid_2_1361537906.89623") :anon :lex :outer("cuid_13_1361537906.89623")
.annotate 'file', "src/ModuleLoader.pm"
.annotate 'line', 34
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    getinterp $P5002
    set $P5002, $P5002['context']
    getattribute $P5001, $P5002, 'caller_ctx'
    store_dynamic_lex "$*MAIN_CTX", $P5001
    box $P5003, 0
    store_dynamic_lex "$*CTXSAVE", $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "load_module" :subid("cuid_3_1361537906.89623") :anon :lex :outer("cuid_13_1361537906.89623")
.annotate 'file', "src/ModuleLoader.pm"
.annotate 'line', 39
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy 
    .const 'Sub' $P5026 = 'cuid_15_1361537906.89623' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_16_1361537906.89623' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_17_1361537906.89623' 
    capture_lex $P5026 
    .lex "$module_ctx", $P101 
    .lex "$path", $P102 
    .lex "@prefixes", $P103 
    .lex "self", _lex_param_0 
    .lex "$module_name", _lex_param_1 
    .lex "@global_merge_target", _lex_param_2 
    .local pmc fb_tmp_13 
    null $P5001
    set $P101, $P5001
    null $P5002
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P103, $P5003
    root_new $P104, ['parrot';'Continuation']
    set_label $P104, lexotic_85
    .lex "RETURN", $P104
    set $S5003, _lex_param_1
    split $P5004, "::", $S5003
    join $S5002, "/", $P5004
    concat $S5001, $S5002, ".pbc"
    box $P5005, $S5001
    set $P102, $P5005
.annotate 'line', 45
    nqp_decontainerize $P5006, _lex_param_0
    $P5007 = $P5006."search_path"("module-path")
    set $P103, $P5007
    set $P5008, $P103
    iter $P5010, $P103
    new $P5012, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5012, for_handlers89
    push_eh $P5012
  for_next90:
    unless $P5010, for_done92
    shift $P5013, $P5010
  for_redo91:
    .const 'Sub' $P5011 = 'cuid_15_1361537906.89623' 
    capture_lex $P5011
    $P5008 = $P5011($P5013)
    goto for_next90
  for_handlers89:
    .get_results ($P5012)
    pop_upto_eh $P5012
    getattribute $P5012, $P5012, 'type'
    eq $P5012, .CONTROL_LOOP_NEXT, for_next90
    eq $P5012, .CONTROL_LOOP_REDO, for_redo91
  for_done92:
    pop_eh 
    find_lex $P5014, "%modules_loaded"
    set $S5004, $P102
    exists $I5001, $P5014[$S5004]
    unless $I5001 goto if52_else93 
.annotate 'line', 52
    find_lex $P5015, "%modules_loaded"
    set fb_tmp_13, $P5015
    repr_defined $I5002, fb_tmp_13
    unless $I5002 goto if53_else95 
    set $S5005, $P102
    set $P5016, fb_tmp_13[$S5005]
    set $P5018, $P5016
    goto if53_end96
  if53_else95:
    null $P5017
    set $P5018, $P5017
  if53_end96:
    unless_null $P5018, vivi_5497
    null $P5019
    set $P5018, $P5019
  vivi_5497:
    set $P101, $P5018
    goto if52_end94
  if52_else93:
    .const 'Sub' $P5020 = 'cuid_16_1361537906.89623' 
    capture_lex $P5020
    $P5021 = $P5020()
  if52_end94:
    defined $I5003, $P101
    unless $I5003 goto if58_end104 
    .const 'Sub' $P5022 = 'cuid_17_1361537906.89623' 
    capture_lex $P5022
    $P5023 = $P5022()
  if58_end104:
    find_lex $P5024, "RETURN"
    $P5025 = $P5024($P101)
    goto lexotic_86
  lexotic_85:
    .get_results ($P5025)
  lexotic_86:
    .return ($P5025) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_15_1361537906.89623") :anon :lex :outer("cuid_3_1361537906.89623")
.annotate 'file', "src/ModuleLoader.pm"
.annotate 'line', 46
    .param pmc _lex_param_0 
    .lex "$prefix", _lex_param_0 
    set $S5003, _lex_param_0
    concat $S5002, $S5003, "/"
    find_lex $P5001, "$path"
    set $S5004, $P5001
    concat $S5001, $S5002, $S5004
    stat $I5001, $S5001, 0
    set $I5002, $I5001
    unless $I5001 goto if51_end88 
.annotate 'line', 47
    set $S5007, _lex_param_0
    concat $S5006, $S5007, "/"
    find_lex $P5002, "$path"
    set $S5008, $P5002
    concat $S5005, $S5006, $S5008
    box $P5003, $S5005
    store_lex "$path", $P5003
    die 0, .CONTROL_LOOP_LAST
    set $I5002, 0
  if51_end88:
    .return ($I5002) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_16_1361537906.89623") :anon :lex :outer("cuid_3_1361537906.89623")
.annotate 'file', "src/ModuleLoader.pm"
.annotate 'line', 55
    .lex "$*CTXSAVE", $P101 
    .lex "$*MAIN_CTX", $P102 
    .lex "$preserve_global", $P103 
    .local pmc fb_tmp_14 
    null $P5001
    set $P101, $P5001
    null $P5002
    set $P102, $P5002
    null $P5003
    set $P103, $P5003
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    set $P101, $P5004
    nqp_get_sc_object $P5006, "B5F94BC230819560AA2452CB19382361E86A7D69-1361537906.92743", 1
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
    unless_null $P102, fallback98
    nqp_get_sc_object $P5012, "B5F94BC230819560AA2452CB19382361E86A7D69-1361537906.92743", 0
    get_who $P5011, $P5012
    set fb_tmp_14, $P5011
    repr_defined $I5001, fb_tmp_14
    unless $I5001 goto if55_else99 
    set $P5013, fb_tmp_14["$MAIN_CTX"]
    set $P5015, $P5013
    goto if55_end100
  if55_else99:
    null $P5014
    set $P5015, $P5014
  if55_end100:
    unless_null $P5015, vivi_56101
    null $P5016
    set $P5015, $P5016
  vivi_56101:
    unless_null $P5015, vivi_57102
    die "Contextual $*MAIN_CTX not found"
    box $P5017, "Contextual $*MAIN_CTX not found"
    set $P5015, $P5017
  vivi_57102:
    set $P102, $P5015
  fallback98:
    store_lex "$module_ctx", $P102
    set $P5009[$S5002], $P102
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_17_1361537906.89623") :anon :lex :outer("cuid_3_1361537906.89623")
.annotate 'file', "src/ModuleLoader.pm"
.annotate 'line', 65
    .lex "$UNIT", $P101 
    .local pmc fb_tmp_15 
    .local pmc fb_tmp_16 
    .local pmc fb_tmp_17 
    null $P5001
    set $P101, $P5001
    find_lex $P5003, "$module_ctx"
    getattribute $P5002, $P5003, 'lex_pad'
    set $P101, $P5002
    set fb_tmp_15, $P101
    repr_defined $I5002, fb_tmp_15
    unless $I5002 goto if60_else107 
    set $P5004, fb_tmp_15["GLOBALish"]
    set $P5006, $P5004
    goto if60_end108
  if60_else107:
    null $P5005
    set $P5006, $P5005
  if60_end108:
    unless_null $P5006, vivi_61109
    null $P5007
    set $P5006, $P5007
  vivi_61109:
    isnull $I5001, $P5006
    box $P5022, $I5001
    set $P5021, $P5022
    if $I5001 goto unless59_end106 
.annotate 'line', 68
    find_lex $P5008, "@global_merge_target"
    set $N5001, $P5008
    box $P5020, $N5001
    set $P5019, $P5020
    unless $N5001 goto if62_end111 
.annotate 'line', 69
.annotate 'line', 70
    find_lex $P5009, "@global_merge_target"
    set fb_tmp_16, $P5009
    repr_defined $I5003, fb_tmp_16
    unless $I5003 goto if63_else112 
    set $P5010, fb_tmp_16[0]
    set $P5012, $P5010
    goto if63_end113
  if63_else112:
    null $P5011
    set $P5012, $P5011
  if63_end113:
    unless_null $P5012, vivi_64114
    null $P5013
    set $P5012, $P5013
  vivi_64114:
    set fb_tmp_17, $P101
    repr_defined $I5004, fb_tmp_17
    unless $I5004 goto if65_else115 
    set $P5014, fb_tmp_17["GLOBALish"]
    set $P5016, $P5014
    goto if65_end116
  if65_else115:
    null $P5015
    set $P5016, $P5015
  if65_end116:
    unless_null $P5016, vivi_66117
    null $P5017
    set $P5016, $P5017
  vivi_66117:
    $P5018 = "&merge_globals"($P5012, $P5016)
    set $P5019, $P5018
  if62_end111:
    set $P5021, $P5019
  unless59_end106:
    .return ($P5021) 
.end
.HLL "nqp"
.namespace []
.sub "load_setting" :subid("cuid_4_1361537906.89623") :anon :lex :outer("cuid_13_1361537906.89623")
.annotate 'file', "src/ModuleLoader.pm"
.annotate 'line', 136
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5006 = 'cuid_19_1361537906.89623' 
    capture_lex $P5006 
    .lex "$setting", $P101 
    .lex "self", _lex_param_0 
    .lex "$setting_name", _lex_param_1 
    null $P5001
    set $P101, $P5001
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_118
    .lex "RETURN", $P102
    set $S5001, _lex_param_1
    isne $I5001, $S5001, "NULL"
    unless $I5001 goto if67_end121 
    .const 'Sub' $P5002 = 'cuid_19_1361537906.89623' 
    capture_lex $P5002
    $P5003 = $P5002()
  if67_end121:
    find_lex $P5004, "RETURN"
    $P5005 = $P5004($P101)
    goto lexotic_119
  lexotic_118:
    .get_results ($P5005)
  lexotic_119:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_19_1361537906.89623") :anon :lex :outer("cuid_4_1361537906.89623")
.annotate 'file', "src/ModuleLoader.pm"
.annotate 'line', 139
    .const 'Sub' $P5022 = 'cuid_18_1361537906.89623' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_20_1361537906.89623' 
    capture_lex $P5022 
    .lex "$path", $P101 
    .lex "@prefixes", $P102 
    .local pmc fb_tmp_20 
    null $P5001
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
    find_lex $P5003, "$setting_name"
    set $S5002, $P5003
    concat $S5001, $S5002, ".setting.pbc"
    box $P5004, $S5001
    set $P101, $P5004
.annotate 'line', 142
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    $P5007 = $P5005."search_path"("setting-path")
    set $P102, $P5007
    set $P5008, $P102
    iter $P5010, $P102
    new $P5012, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5012, for_handlers124
    push_eh $P5012
  for_next125:
    unless $P5010, for_done127
    shift $P5013, $P5010
  for_redo126:
    .const 'Sub' $P5011 = 'cuid_18_1361537906.89623' 
    capture_lex $P5011
    $P5008 = $P5011($P5013)
    goto for_next125
  for_handlers124:
    .get_results ($P5012)
    pop_upto_eh $P5012
    getattribute $P5012, $P5012, 'type'
    eq $P5012, .CONTROL_LOOP_NEXT, for_next125
    eq $P5012, .CONTROL_LOOP_REDO, for_redo126
  for_done127:
    pop_eh 
    find_lex $P5014, "%settings_loaded"
    set $S5003, $P101
    exists $I5001, $P5014[$S5003]
    if $I5001 goto unless69_end129 
    .const 'Sub' $P5015 = 'cuid_20_1361537906.89623' 
    capture_lex $P5015
    $P5016 = $P5015()
  unless69_end129:
    find_lex $P5017, "%settings_loaded"
    set fb_tmp_20, $P5017
    repr_defined $I5002, fb_tmp_20
    unless $I5002 goto if77_else142 
    set $S5004, $P101
    set $P5018, fb_tmp_20[$S5004]
    set $P5020, $P5018
    goto if77_end143
  if77_else142:
    null $P5019
    set $P5020, $P5019
  if77_end143:
    unless_null $P5020, vivi_78144
    null $P5021
    set $P5020, $P5021
  vivi_78144:
    store_lex "$setting", $P5020
    .return ($P5020) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_18_1361537906.89623") :anon :lex :outer("cuid_19_1361537906.89623")
.annotate 'file', "src/ModuleLoader.pm"
.annotate 'line', 143
    .param pmc _lex_param_0 
    .lex "$prefix", _lex_param_0 
    set $S5003, _lex_param_0
    concat $S5002, $S5003, "/"
    find_lex $P5001, "$path"
    set $S5004, $P5001
    concat $S5001, $S5002, $S5004
    stat $I5001, $S5001, 0
    set $I5002, $I5001
    unless $I5001 goto if68_end123 
.annotate 'line', 144
    set $S5007, _lex_param_0
    concat $S5006, $S5007, "/"
    find_lex $P5002, "$path"
    set $S5008, $P5002
    concat $S5005, $S5006, $S5008
    box $P5003, $S5005
    store_lex "$path", $P5003
    die 0, .CONTROL_LOOP_LAST
    set $I5002, 0
  if68_end123:
    .return ($I5002) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_20_1361537906.89623") :anon :lex :outer("cuid_19_1361537906.89623")
.annotate 'file', "src/ModuleLoader.pm"
.annotate 'line', 151
    .lex "$*CTXSAVE", $P101 
    .lex "$*MAIN_CTX", $P102 
    .lex "$preserve_global", $P103 
    .local pmc fb_tmp_18 
    .local pmc fb_tmp_19 
    null $P5001
    set $P101, $P5001
    null $P5002
    set $P102, $P5002
    null $P5003
    set $P103, $P5003
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    set $P101, $P5004
    nqp_get_sc_object $P5006, "B5F94BC230819560AA2452CB19382361E86A7D69-1361537906.92743", 1
    set $P102, $P5006
    get_hll_global $P5007, "GLOBAL"
    set $P103, $P5007
    find_lex $P5008, "$path"
    set $S5001, $P5008
    load_bytecode $S5001
    set_hll_global "GLOBAL", $P103
    unless_null $P102, fallback132
    nqp_get_sc_object $P5010, "B5F94BC230819560AA2452CB19382361E86A7D69-1361537906.92743", 0
    get_who $P5009, $P5010
    set fb_tmp_18, $P5009
    repr_defined $I5002, fb_tmp_18
    unless $I5002 goto if71_else133 
    set $P5011, fb_tmp_18["$MAIN_CTX"]
    set $P5013, $P5011
    goto if71_end134
  if71_else133:
    null $P5012
    set $P5013, $P5012
  if71_end134:
    unless_null $P5013, vivi_72135
    null $P5014
    set $P5013, $P5014
  vivi_72135:
    unless_null $P5013, vivi_73136
    die "Contextual $*MAIN_CTX not found"
    box $P5015, "Contextual $*MAIN_CTX not found"
    set $P5013, $P5015
  vivi_73136:
    set $P102, $P5013
  fallback132:
    defined $I5001, $P102
    if $I5001 goto unless70_end131 
.annotate 'line', 157
    find_lex $P5016, "$setting_name"
    set $S5004, $P5016
    concat $S5003, "Unable to load setting ", $S5004
    concat $S5002, $S5003, "; maybe it is missing a YOU_ARE_HERE?"
    box $P5017, $S5002
    die $P5017
  unless70_end131:
    find_lex $P5018, "%settings_loaded"
    find_lex $P5019, "$path"
    set $S5005, $P5019
    unless_null $P102, fallback137
    nqp_get_sc_object $P5021, "B5F94BC230819560AA2452CB19382361E86A7D69-1361537906.92743", 0
    get_who $P5020, $P5021
    set fb_tmp_19, $P5020
    repr_defined $I5003, fb_tmp_19
    unless $I5003 goto if74_else138 
    set $P5022, fb_tmp_19["$MAIN_CTX"]
    set $P5024, $P5022
    goto if74_end139
  if74_else138:
    null $P5023
    set $P5024, $P5023
  if74_end139:
    unless_null $P5024, vivi_75140
    null $P5025
    set $P5024, $P5025
  vivi_75140:
    unless_null $P5024, vivi_76141
    die "Contextual $*MAIN_CTX not found"
    box $P5026, "Contextual $*MAIN_CTX not found"
    set $P5024, $P5026
  vivi_76141:
    set $P102, $P5024
  fallback137:
    set $P5018[$S5005], $P102
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_23_1361537906.89623") :load :init
.annotate 'file', "src/ModuleLoader.pm"
    .const 'Sub' $P5001 = 'cuid_22_1361537906.89623' 
    capture_lex $P5001 
    .local pmc cur_sc 
    .local pmc conflicts 
    nqp_dynop_setup 
    nqp_bigint_setup 
    getinterp $P5001
    get_class $P5002, "LexPad"
    get_class $P5003, "NQPLexPad"
    $P5004 = $P5001."hll_map"($P5002, $P5003)
    nqp_create_sc $P5001, "B5F94BC230819560AA2452CB19382361E86A7D69-1361537906.92743"
    set cur_sc, $P5001
    $P5002 = cur_sc."set_description"("src/ModuleLoader.pm")
    new $P5003, 'ResizablePMCArray'
    set conflicts, $P5003
    new $P5004, 'ResizableStringArray'
    null $S5001
    push $P5004, $S5001
    push $P5004, "P6opaque"
    push $P5004, "ModuleLoader"
    push $P5004, "search_path"
    push $P5004, "ctxsave"
    push $P5004, "load_module"
    push $P5004, "load_setting"
    push $P5004, "__6MODEL_CORE__"
    push $P5004, "GLOBALish"
    .const 'Sub' $P5005 = 'cuid_22_1361537906.89623' 
    capture_lex $P5005
    $P5006 = $P5005()
    nqp_deserialize_sc "AwAAAEAAAAABAAAASAAAAAIAAABYAAAA8gEAAAQAAAAyAgAAigIAAAAAAACKAgAAAAAAAIoCAACKAgAAAAAAAAcAAAAAAAAAAQAAAAAAAAABAAAAuAAAAAAAAAACAAAAAAAAAAAAAAAKAAEAAAACAAAAAgAAAAAAAQAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAAAAAADAP////////////////////8AAAAAAwAAAAAAAAABAAAACgAAAAAACgAEAAAAAwAAAAsAAAAAAAAAAAAEAAAACwAAAAAAAQAAAAUAAAALAAAAAAACAAAABgAAAAsAAAAAAAMAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAAAQAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAABAAAAAwD/////////////////////AAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAABAAAAAAAAAAAAAAABAAAAAQAAAAAAAAAQAAAAAQAAAAgAAAAHAAAAAAAKAAAAAAACAAAABwAAAAAACgAEAAAAAwAAAAsAAAAAAAAAAAAEAAAACwAAAAAAAQAAAAUAAAALAAAAAAACAAAABgAAAAsAAAAAAAMAAAA=", cur_sc, $P5004, $P5006, conflicts
    unless conflicts goto if79_end146 
    die "Repossession conflicts occurred during deserialization"
  if79_end146:
    .const "LexInfo" $P5001 = "cuid_21_1361537906.89623"
    nqp_get_sc_object $P5002, "B5F94BC230819560AA2452CB19382361E86A7D69-1361537906.92743", 0
    $P5001."set_static_lexpad_value"("GLOBALish", $P5002)
    .const "LexInfo" $P5003 = "cuid_21_1361537906.89623"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_21_1361537906.89623"
    nqp_get_sc_object $P5002, "B5F94BC230819560AA2452CB19382361E86A7D69-1361537906.92743", 0
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_21_1361537906.89623"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_21_1361537906.89623"
    nqp_get_sc_object $P5002, "B5F94BC230819560AA2452CB19382361E86A7D69-1361537906.92743", 1
    $P5001."set_static_lexpad_value"("ModuleLoader", $P5002)
    .const "LexInfo" $P5003 = "cuid_21_1361537906.89623"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_13_1361537906.89623"
    nqp_get_sc_object $P5002, "B5F94BC230819560AA2452CB19382361E86A7D69-1361537906.92743", 1
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_13_1361537906.89623"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_13_1361537906.89623"
    nqp_get_sc_object $P5002, "B5F94BC230819560AA2452CB19382361E86A7D69-1361537906.92743", 1
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_13_1361537906.89623"
    $P5004 = $P5003."finish_static_lexpad"()
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_22_1361537906.89623") :anon :lex :outer("cuid_23_1361537906.89623")
.annotate 'file', "src/ModuleLoader.pm"
    new $P5001, 'ResizablePMCArray'
    .const 'Sub' $P5002 = "cuid_1_1361537906.89623" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_2_1361537906.89623" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_3_1361537906.89623" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_4_1361537906.89623" 
    push $P5001, $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_24_1361537906.89623") :load
.annotate 'file', "src/ModuleLoader.pm"
    .const 'Sub' $P5001 = "cuid_21_1361537906.89623" 
    $P5002 = $P5001()
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_25_1361537906.89623") :main
.annotate 'file', "src/ModuleLoader.pm"
    .param pmc ARGS :slurpy 
    .const 'Sub' $P5001 = "cuid_21_1361537906.89623" 
    $P5002 = $P5001(ARGS :flat)
    .return ($P5002) 
.end