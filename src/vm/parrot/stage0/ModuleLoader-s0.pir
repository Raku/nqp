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
.include 'nqp_const.pir'
.loadlib "nqp_group"
.loadlib "nqp_ops"
.loadlib "nqp_bigint_ops"
.loadlib "trans_ops"
.loadlib "io_ops"
.HLL "nqp"
.namespace []
.sub "<mainline>" :subid("cuid_5_1431289880.47136") :anon :lex
.annotate 'file', "src/vm/parrot/ModuleLoader.nqp"
    .param pmc _lex_param_0 :slurpy 
    .const 'Sub' $P5008 = 'cuid_6_1431289880.47136' 
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
    .const 'Sub' $P5005 = 'cuid_6_1431289880.47136' 
    capture_lex $P5005
    $P5006 = $P5005()
    nqp_get_sc_object $P5007, "09BFDD9FAC4622A40C1486B30F0E290D51B90552-1431289880.50957", 1
    set_hll_global "ModuleLoader", $P5007
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_6_1431289880.47136") :anon :lex :outer("cuid_5_1431289880.47136")
.annotate 'file', "src/vm/parrot/ModuleLoader.nqp"
.annotate 'line', 1
    .const 'Sub' $P5009 = 'cuid_7_1431289880.47136' 
    capture_lex $P5009 
    .const 'Sub' $P5009 = 'cuid_1_1431289880.47136' 
    capture_lex $P5009 
    .const 'Sub' $P5009 = 'cuid_2_1431289880.47136' 
    capture_lex $P5009 
    .const 'Sub' $P5009 = 'cuid_3_1431289880.47136' 
    capture_lex $P5009 
    .const 'Sub' $P5009 = 'cuid_4_1431289880.47136' 
    capture_lex $P5009 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .lex "%modules_loaded", $P103 
    .lex "%settings_loaded", $P104 
    .lex "$stub_how", $P105 
    .lex "&merge_globals", $P106 
    new $P5001, 'Hash'
    set $P103, $P5001
    new $P5002, 'Hash'
    set $P104, $P5002
    .const 'Sub' $P5003 = 'cuid_7_1431289880.47136' 
    capture_lex $P5003
    set $P106, $P5003
    .const 'Sub' $P5004 = 'cuid_1_1431289880.47136' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_2_1431289880.47136' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_3_1431289880.47136' 
    capture_lex $P5006
    box $P5007, "KnowHOW"
    set $P105, $P5007
    .const 'Sub' $P5008 = 'cuid_4_1431289880.47136' 
    capture_lex $P5008
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "merge_globals" :subid("cuid_7_1431289880.47136") :anon :lex :outer("cuid_6_1431289880.47136")
.annotate 'file', "src/vm/parrot/ModuleLoader.nqp"
.annotate 'line', 89
    .param pmc __lowered_lex_15 
    .param pmc __lowered_lex_16 
    .local pmc __lowered_lex_17 
    .local pmc lowered_for_it__1 
    .local pmc __lowered_lex_1 
    .local pmc lowered_for_it__3 
    .local pmc __lowered_lex_14 
    .local pmc __lowered_lex_12 
    .local pmc __lowered_lex_13 
    .local pmc __lowered_lex_7 
    .local pmc __lowered_lex_2 
    .local pmc __lowered_lex_4 
    .local pmc __lowered_lex_5 
    .local pmc __lowered_lex_6 
    .local pmc lowered_for_it__2 
    .local pmc __lowered_lex_3 
    .local pmc fb_tmp_1 
    .local pmc __lowered_lex_8 
    .local pmc __lowered_lex_9 
    .local pmc __lowered_lex_10 
    .local pmc __lowered_lex_11 
    .local pmc fb_tmp_2 
    .local pmc fb_tmp_3 
    new $P5001, 'Hash'
    set __lowered_lex_17, $P5001
    get_who $P5003, __lowered_lex_15
    iter $P5002, $P5003
    set lowered_for_it__1, $P5002
    new $P5008, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5008, while12_handlers17
    push_eh $P5008
  while12_test14:
    set $P5007, lowered_for_it__1
    unless lowered_for_it__1 goto while12_done18 
  while12_redo16:
    shift $P5004, lowered_for_it__1
    set __lowered_lex_1, $P5004
.annotate 'line', 94
    $P5005 = __lowered_lex_1."key"()
    set $S5001, $P5005
    box $P5006, 1
    set __lowered_lex_17[$S5001], $P5006
    set $P5007, $P5006
    goto while12_test14 
  while12_handlers17:
    .get_results ($P5008)
    pop_upto_eh $P5008
    getattribute $P5009, $P5008, 'type'
    eq $P5009, .CONTROL_LOOP_NEXT, while12_test14
    eq $P5009, .CONTROL_LOOP_REDO, while12_redo16
  while12_done18:
    pop_eh 
    get_who $P5011, __lowered_lex_16
    iter $P5010, $P5011
    set lowered_for_it__3, $P5010
    new $P5079, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5079, while13_handlers22
    push_eh $P5079
  while13_test19:
    set $P5078, lowered_for_it__3
    unless lowered_for_it__3 goto while13_done23 
  while13_redo21:
    shift $P5012, lowered_for_it__3
    set __lowered_lex_14, $P5012
.annotate 'line', 97
    $P5013 = __lowered_lex_14."key"()
    set __lowered_lex_12, $P5013
    $P5014 = __lowered_lex_14."value"()
    set __lowered_lex_13, $P5014
    set $S5002, __lowered_lex_12
    exists $I5002, __lowered_lex_17[$S5002]
    not $I5001, $I5002
    unless $I5001 goto if14_else24 
.annotate 'line', 100
    box $P5015, 0
    set __lowered_lex_7, $P5015
    new $P5025, 'ExceptionHandler'
    set_label $P5025, catch_handler_1831
    $P5025.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5025
.annotate 'line', 102
    get_how $P5016, __lowered_lex_13
    set __lowered_lex_2, $P5016
.annotate 'line', 104
    get_what $P5018, __lowered_lex_2
    get_how $P5017, $P5018
    $P5019 = $P5017."name"(__lowered_lex_2)
    set $S5003, $P5019
    find_lex $P5020, "$stub_how"
    set $S5004, $P5020
    iseq $I5003, $S5003, $S5004
    set $I5006, $I5003
    unless $I5003 goto if16_end29 
    get_who $P5021, __lowered_lex_13
    isnull $I5005, $P5021
    not $I5004, $I5005
    set $I5006, $I5004
  if16_end29:
    box $P5024, $I5006
    set $P5023, $P5024
    unless $I5006 goto if15_end27 
    get_who $P5022, __lowered_lex_13
    set $P5023, $P5022
  if15_end27:
    set __lowered_lex_7, $P5023
    set $P5026, __lowered_lex_7
    pop_eh 
    goto skip_handler_1730
  catch_handler_1831:
    .get_results ($P5025) 
    set $I10001, 1
    set $P5025["handled"], $I10001
    null $P10001
    finalize $P5025
    pop_upto_eh $P5025
    pop_eh 
    set $P5026, $P10001
    goto skip_handler_1730
  skip_handler_1730:
    unless __lowered_lex_7 goto if19_else32 
    new $P5027, 'Hash'
    set __lowered_lex_6, $P5027
.annotate 'line', 107
    set __lowered_lex_4, __lowered_lex_13
.annotate 'line', 109
    get_how $P5028, __lowered_lex_4
    get_how $P5029, __lowered_lex_4
    $P5030 = $P5029."name"(__lowered_lex_4)
    $P5031 = $P5028."new_type"($P5030 :named("name"))
    set __lowered_lex_5, $P5031
.annotate 'line', 110
    get_how $P5032, __lowered_lex_5
    $P5032."compose"(__lowered_lex_5)
    get_who $P5034, __lowered_lex_4
    iter $P5033, $P5034
    set lowered_for_it__2, $P5033
    new $P5039, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5039, while20_handlers37
    push_eh $P5039
  while20_test34:
    set $P5038, lowered_for_it__2
    unless lowered_for_it__2 goto while20_done38 
  while20_redo36:
    shift $P5035, lowered_for_it__2
    set __lowered_lex_3, $P5035
.annotate 'line', 112
    $P5036 = __lowered_lex_3."key"()
    set $S5005, $P5036
    $P5037 = __lowered_lex_3."value"()
    set __lowered_lex_6[$S5005], $P5037
    set $P5038, $P5037
    goto while20_test34 
  while20_handlers37:
    .get_results ($P5039)
    pop_upto_eh $P5039
    getattribute $P5040, $P5039, 'type'
    eq $P5040, .CONTROL_LOOP_NEXT, while20_test34
    eq $P5040, .CONTROL_LOOP_REDO, while20_redo36
  while20_done38:
    pop_eh 
    set_who __lowered_lex_5, __lowered_lex_6
    get_who $P5041, __lowered_lex_15
    set $S5006, __lowered_lex_12
    set $P5041[$S5006], __lowered_lex_5
    set $P5043, __lowered_lex_5
    goto if19_end33
  if19_else32:
.annotate 'line', 118
    get_who $P5042, __lowered_lex_15
    set $S5007, __lowered_lex_12
    set $P5042[$S5007], __lowered_lex_13
    set $P5043, __lowered_lex_13
  if19_end33:
    set $P5077, $P5043
    goto if14_end25
  if14_else24:
    get_who $P5044, __lowered_lex_15
    set fb_tmp_1, $P5044
    repr_defined $I5009, fb_tmp_1
    unless $I5009 goto if22_else41 
    set $S5008, __lowered_lex_12
    set $P5045, fb_tmp_1[$S5008]
    set $P5047, $P5045
    goto if22_end42
  if22_else41:
    null $P5046
    set $P5047, $P5046
  if22_end42:
    unless_null $P5047, vivi_2343
    null $P5048
    set $P5047, $P5048
  vivi_2343:
    get_id $I5008, $P5047
    get_id $I5010, __lowered_lex_13
    iseq $I5007, $I5008, $I5010
    unless $I5007 goto if21_else39 
.annotate 'line', 122
    null $P5049
    set $P5076, $P5049
    goto if21_end40
  if21_else39:
.annotate 'line', 125
    get_how $P5050, __lowered_lex_13
    set __lowered_lex_8, $P5050
.annotate 'line', 127
    get_what $P5052, __lowered_lex_8
    get_how $P5051, $P5052
    $P5053 = $P5051."name"(__lowered_lex_8)
    set $S5009, $P5053
    find_lex $P5054, "$stub_how"
    set $S5010, $P5054
    iseq $I5011, $S5009, $S5010
    box $P5055, $I5011
    set __lowered_lex_9, $P5055
    get_who $P5057, __lowered_lex_15
    set fb_tmp_2, $P5057
    repr_defined $I5012, fb_tmp_2
    unless $I5012 goto if24_else44 
    set $S5011, __lowered_lex_12
    set $P5058, fb_tmp_2[$S5011]
    set $P5060, $P5058
    goto if24_end45
  if24_else44:
    null $P5059
    set $P5060, $P5059
  if24_end45:
    unless_null $P5060, vivi_2546
    null $P5061
    set $P5060, $P5061
  vivi_2546:
    get_how $P5056, $P5060
    set __lowered_lex_10, $P5056
.annotate 'line', 129
    get_what $P5063, __lowered_lex_10
    get_how $P5062, $P5063
    $P5064 = $P5062."name"(__lowered_lex_10)
    set $S5012, $P5064
    find_lex $P5065, "$stub_how"
    set $S5013, $P5065
    iseq $I5013, $S5012, $S5013
    box $P5066, $I5013
    set __lowered_lex_11, $P5066
    set $P5067, __lowered_lex_9
    unless __lowered_lex_9 goto if27_end50 
    set $P5067, __lowered_lex_11
  if27_end50:
    unless $P5067 goto if26_else47 
.annotate 'line', 130
.annotate 'line', 132
    get_who $P5068, __lowered_lex_15
    set fb_tmp_3, $P5068
    repr_defined $I5014, fb_tmp_3
    unless $I5014 goto if28_else51 
    set $S5014, __lowered_lex_12
    set $P5069, fb_tmp_3[$S5014]
    set $P5071, $P5069
    goto if28_end52
  if28_else51:
    null $P5070
    set $P5071, $P5070
  if28_end52:
    unless_null $P5071, vivi_2953
    null $P5072
    set $P5071, $P5072
  vivi_2953:
    $P5073 = "&merge_globals"($P5071, __lowered_lex_13)
    set $P5075, $P5073
    goto if26_end48
  if26_else47:
.annotate 'line', 134
    set $S5016, __lowered_lex_12
    concat $S5015, "Merging GLOBAL symbols failed: duplicate definition of symbol ", $S5016
    box $P5074, $S5015
    die $P5074
    set $P5075, $P5074
  if26_end48:
    set $P5076, $P5075
  if21_end40:
    set $P5077, $P5076
  if14_end25:
    set $P5078, $P5077
    goto while13_test19 
  while13_handlers22:
    .get_results ($P5079)
    pop_upto_eh $P5079
    getattribute $P5080, $P5079, 'type'
    eq $P5080, .CONTROL_LOOP_NEXT, while13_test19
    eq $P5080, .CONTROL_LOOP_REDO, while13_redo21
  while13_done23:
    pop_eh 
    .return ($P5078) 
.end
.HLL "nqp"
.namespace []
.sub "search_path" :subid("cuid_1_1431289880.47136") :anon :lex :outer("cuid_6_1431289880.47136")
.annotate 'file', "src/vm/parrot/ModuleLoader.nqp"
.annotate 'line', 5
    .param pmc __lowered_lex_19 
    .param pmc __lowered_lex_20 
    .local pmc __lowered_lex_21 
    .local pmc __lowered_lex_22 
    .local pmc __lowered_lex_23 
    .local pmc fb_tmp_4 
    .local pmc fb_tmp_5 
    .local pmc fb_tmp_6 
    .local pmc pkg_viv_tmp_1 
    .local pmc __lowered_lex_18 
    .local pmc fb_tmp_7 
    .local pmc fb_tmp_8 
    .local pmc fb_tmp_9 
    .local pmc fb_tmp_10 
    .local pmc fb_tmp_11 
    .local pmc fb_tmp_12 
    new $P5001, 'QRPA'
    set __lowered_lex_21, $P5001
    null $P5002
    set __lowered_lex_22, $P5002
    new $P5019, 'ExceptionHandler'
    set_label $P5019, catch_handler_3866
    $P5019.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5019
.annotate 'line', 11
    find_dynamic_lex $P5003, "%*COMPILING"
    unless_null $P5003, fallback58
    nqp_get_sc_object $P5005, "09BFDD9FAC4622A40C1486B30F0E290D51B90552-1431289880.50957", 0
    get_who $P5004, $P5005
    set pkg_viv_tmp_1, $P5004
    set fb_tmp_6, pkg_viv_tmp_1
    repr_defined $I5003, fb_tmp_6
    unless $I5003 goto if32_else59 
    set $P5006, fb_tmp_6["%COMPILING"]
    set $P5008, $P5006
    goto if32_end60
  if32_else59:
    null $P5007
    set $P5008, $P5007
  if32_end60:
    unless_null $P5008, vivi_3361
    new $P5009, 'Hash'
    set pkg_viv_tmp_1["%COMPILING"], $P5009
    set $P5008, $P5009
  vivi_3361:
    unless_null $P5008, vivi_3462
    die "Contextual %*COMPILING not found"
    box $P5010, "Contextual %*COMPILING not found"
    set $P5008, $P5010
  vivi_3462:
    set $P5003, $P5008
  fallback58:
    set fb_tmp_5, $P5003
    repr_defined $I5002, fb_tmp_5
    unless $I5002 goto if31_else56 
    set $P5011, fb_tmp_5["%?OPTIONS"]
    set $P5013, $P5011
    goto if31_end57
  if31_else56:
    null $P5012
    set $P5013, $P5012
  if31_end57:
    unless_null $P5013, vivi_3563
    null $P5014
    set $P5013, $P5014
  vivi_3563:
    set fb_tmp_4, $P5013
    repr_defined $I5001, fb_tmp_4
    unless $I5001 goto if30_else54 
    set $S5001, __lowered_lex_20
    set $P5015, fb_tmp_4[$S5001]
    set $P5017, $P5015
    goto if30_end55
  if30_else54:
    null $P5016
    set $P5017, $P5016
  if30_end55:
    unless_null $P5017, vivi_3664
    null $P5018
    set $P5017, $P5018
  vivi_3664:
    set __lowered_lex_22, $P5017
    set $P5020, __lowered_lex_22
    pop_eh 
    goto skip_handler_3765
  catch_handler_3866:
    .get_results ($P5019) 
    set $I10001, 1
    set $P5019["handled"], $I10001
    null $P10001
    finalize $P5019
    pop_upto_eh $P5019
    pop_eh 
    set $P5020, $P10001
    goto skip_handler_3765
  skip_handler_3765:
    isnull $I5005, __lowered_lex_22
    not $I5004, $I5005
    box $P5022, $I5004
    set $P5021, $P5022
    unless $I5004 goto if40_end70 
    set $P5021, __lowered_lex_22
  if40_end70:
    unless $P5021 goto if39_else67 
.annotate 'line', 12
    push __lowered_lex_21, __lowered_lex_22
    goto if39_end68
  if39_else67:
.annotate 'line', 15
    getinterp $P5023
    set fb_tmp_8, $P5023
    repr_defined $I5007, fb_tmp_8
    unless $I5007 goto if42_else73 
    set $P5024, fb_tmp_8[.IGLOBALS_LIB_PATHS]
    set $P5026, $P5024
    goto if42_end74
  if42_else73:
    null $P5025
    set $P5026, $P5025
  if42_end74:
    unless_null $P5026, vivi_4375
    null $P5027
    set $P5026, $P5027
  vivi_4375:
    set fb_tmp_7, $P5026
    repr_defined $I5006, fb_tmp_7
    unless $I5006 goto if41_else71 
    set $P5028, fb_tmp_7[1]
    set $P5030, $P5028
    goto if41_end72
  if41_else71:
    null $P5029
    set $P5030, $P5029
  if41_end72:
    unless_null $P5030, vivi_4476
    null $P5031
    set $P5030, $P5031
  vivi_4476:
    set __lowered_lex_18, $P5030
    elements $I5009, __lowered_lex_18
    isgt $I5008, $I5009, 3
    box $P5037, $I5008
    set $P5036, $P5037
    unless $I5008 goto if45_end78 
.annotate 'line', 17
    set fb_tmp_9, __lowered_lex_18
    repr_defined $I5010, fb_tmp_9
    unless $I5010 goto if46_else79 
    set $P5032, fb_tmp_9[0]
    set $P5034, $P5032
    goto if46_end80
  if46_else79:
    null $P5033
    set $P5034, $P5033
  if46_end80:
    unless_null $P5034, vivi_4781
    null $P5035
    set $P5034, $P5035
  vivi_4781:
    push __lowered_lex_21, $P5034
    set $P5036, __lowered_lex_21
  if45_end78:
  if39_end68:
    box $P5038, "."
    push __lowered_lex_21, $P5038
    box $P5039, "blib"
    push __lowered_lex_21, $P5039
    getinterp $P5040
    set fb_tmp_10, $P5040
    repr_defined $I5011, fb_tmp_10
    unless $I5011 goto if48_else82 
    set $P5041, fb_tmp_10[.IGLOBALS_CONFIG_HASH]
    set $P5043, $P5041
    goto if48_end83
  if48_else82:
    null $P5042
    set $P5043, $P5042
  if48_end83:
    unless_null $P5043, vivi_4984
    new $P5044, 'QRPA'
    set $P5043, $P5044
  vivi_4984:
    set __lowered_lex_23, $P5043
    set fb_tmp_11, __lowered_lex_23
    repr_defined $I5012, fb_tmp_11
    unless $I5012 goto if50_else85 
    set $P5045, fb_tmp_11["libdir"]
    set $P5047, $P5045
    goto if50_end86
  if50_else85:
    null $P5046
    set $P5047, $P5046
  if50_end86:
    unless_null $P5047, vivi_5187
    null $P5048
    set $P5047, $P5048
  vivi_5187:
    set $S5004, $P5047
    set fb_tmp_12, __lowered_lex_23
    repr_defined $I5013, fb_tmp_12
    unless $I5013 goto if52_else88 
    set $P5049, fb_tmp_12["versiondir"]
    set $P5051, $P5049
    goto if52_end89
  if52_else88:
    null $P5050
    set $P5051, $P5050
  if52_end89:
    unless_null $P5051, vivi_5390
    null $P5052
    set $P5051, $P5052
  vivi_5390:
    set $S5005, $P5051
    concat $S5003, $S5004, $S5005
    concat $S5002, $S5003, "/languages/nqp/lib"
    box $P5053, $S5002
    push __lowered_lex_21, $P5053
    .return (__lowered_lex_21) 
.end
.HLL "nqp"
.namespace []
.sub "ctxsave" :subid("cuid_2_1431289880.47136") :anon :lex :outer("cuid_6_1431289880.47136")
.annotate 'file', "src/vm/parrot/ModuleLoader.nqp"
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
.sub "load_module" :subid("cuid_3_1431289880.47136") :anon :lex :outer("cuid_6_1431289880.47136")
.annotate 'file', "src/vm/parrot/ModuleLoader.nqp"
.annotate 'line', 39
    .param pmc _lex_param_0 
    .param pmc __lowered_lex_28 
    .param pmc __lowered_lex_29 :slurpy 
    .param pmc __lowered_lex_30 :named("line") :optional 
    .param int haz_param_1 :opt_flag 
    .param pmc __lowered_lex_31 :named("file") :optional 
    .param int haz_param_2 :opt_flag 
    .const 'Sub' $P5049 = 'cuid_8_1431289880.47136' 
    capture_lex $P5049 
    .lex "$module_ctx", $P101 
    .lex "$path", $P102 
    .lex "self", _lex_param_0 
    .local pmc __lowered_lex_32 
    .local pmc lowered_for_it__4 
    .local pmc __lowered_lex_24 
    .local pmc fb_tmp_13 
    .local pmc __lowered_lex_27 
    .local pmc fb_tmp_15 
    .local pmc __lowered_lex_26 
    .local pmc fb_tmp_16 
    .local pmc fb_tmp_17 
    .local pmc fb_tmp_18 
    if haz_param_1, default132
    null $P5047
    set __lowered_lex_30, $P5047
  default132:
    if haz_param_2, default133
    null $P5048
    set __lowered_lex_31, $P5048
  default133:
    null $P5001
    set $P101, $P5001
    root_new $P103, ['parrot';'Continuation']
    set_label $P103, lexotic_91
    .lex "RETURN", $P103
    set $S5003, __lowered_lex_28
    split $P5002, "::", $S5003
    join $S5002, "/", $P5002
    concat $S5001, $S5002, ".pbc"
    box $P5003, $S5001
    set $P102, $P5003
.annotate 'line', 45
    nqp_decontainerize $P5004, _lex_param_0
    $P5005 = $P5004."search_path"("module-path")
    set __lowered_lex_32, $P5005
    iter $P5006, __lowered_lex_32
    set lowered_for_it__4, $P5006
    new $P5010, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5010, while54_handlers96
    push_eh $P5010
  while54_test93:
    set $P5009, lowered_for_it__4
    unless lowered_for_it__4 goto while54_done97 
  while54_redo95:
.annotate 'line', 46
    shift $P5007, lowered_for_it__4
    set __lowered_lex_24, $P5007
    set $S5006, __lowered_lex_24
    concat $S5005, $S5006, "/"
    set $S5007, $P102
    concat $S5004, $S5005, $S5007
    stat $I5001, $S5004, 0
    set $I5002, $I5001
    unless $I5001 goto if55_end99 
.annotate 'line', 47
    set $S5010, __lowered_lex_24
    concat $S5009, $S5010, "/"
    set $S5011, $P102
    concat $S5008, $S5009, $S5011
    box $P5008, $S5008
    set $P102, $P5008
    die 0, .CONTROL_LOOP_LAST
    set $I5002, 0
  if55_end99:
    box $P5011, $I5002
    set $P5009, $P5011
    goto while54_test93 
  while54_handlers96:
    .get_results ($P5010)
    pop_upto_eh $P5010
    getattribute $P5012, $P5010, 'type'
    eq $P5012, .CONTROL_LOOP_NEXT, while54_test93
    eq $P5012, .CONTROL_LOOP_REDO, while54_redo95
  while54_done97:
    pop_eh 
    find_lex $P5013, "%modules_loaded"
    set $S5012, $P102
    exists $I5003, $P5013[$S5012]
    unless $I5003 goto if56_else100 
.annotate 'line', 52
    find_lex $P5014, "%modules_loaded"
    set fb_tmp_13, $P5014
    repr_defined $I5004, fb_tmp_13
    unless $I5004 goto if57_else102 
    set $S5013, $P102
    set $P5015, fb_tmp_13[$S5013]
    set $P5017, $P5015
    goto if57_end103
  if57_else102:
    null $P5016
    set $P5017, $P5016
  if57_end103:
    unless_null $P5017, vivi_58104
    null $P5018
    set $P5017, $P5018
  vivi_58104:
    set $P101, $P5017
    goto if56_end101
  if56_else100:
    .const 'Sub' $P5019 = 'cuid_8_1431289880.47136' 
    capture_lex $P5019
    $P5020 = $P5019()
  if56_end101:
    defined $I5005, $P101
    unless $I5005 goto if62_end111 
.annotate 'line', 65
    getattribute $P5021, $P101, 'lex_pad'
    set __lowered_lex_27, $P5021
    set fb_tmp_15, __lowered_lex_27
    repr_defined $I5007, fb_tmp_15
    unless $I5007 goto if64_else114 
    set $P5022, fb_tmp_15["GLOBALish"]
    set $P5024, $P5022
    goto if64_end115
  if64_else114:
    null $P5023
    set $P5024, $P5023
  if64_end115:
    unless_null $P5024, vivi_65116
    null $P5025
    set $P5024, $P5025
  vivi_65116:
    isnull $I5006, $P5024
    box $P5045, $I5006
    set $P5044, $P5045
    if $I5006 goto unless63_end113 
.annotate 'line', 68
    set $N5001, __lowered_lex_29
    box $P5043, $N5001
    set $P5042, $P5043
    unless $N5001 goto if66_end118 
.annotate 'line', 69
    set fb_tmp_16, __lowered_lex_29
    repr_defined $I5009, fb_tmp_16
    unless $I5009 goto if68_else121 
    set $P5026, fb_tmp_16[0]
    set $P5028, $P5026
    goto if68_end122
  if68_else121:
    null $P5027
    set $P5028, $P5027
  if68_end122:
    unless_null $P5028, vivi_69123
    null $P5029
    set $P5028, $P5029
  vivi_69123:
    nqp_ishash $I5008, $P5028
    unless $I5008 goto if67_else119 
    set $I5010, 1
    goto if67_end120
  if67_else119:
    set $I5010, 0
  if67_end120:
    box $P5030, $I5010
    set __lowered_lex_26, $P5030
    set $N5002, __lowered_lex_29
    set $N5003, __lowered_lex_26
    isgt $I5011, $N5002, $N5003
    box $P5041, $I5011
    set $P5040, $P5041
    unless $I5011 goto if70_end125 
.annotate 'line', 73
.annotate 'line', 74
    set fb_tmp_17, __lowered_lex_29
    repr_defined $I5012, fb_tmp_17
    unless $I5012 goto if71_else126 
    set $I5013, __lowered_lex_26
    set $P5031, fb_tmp_17[$I5013]
    set $P5033, $P5031
    goto if71_end127
  if71_else126:
    null $P5032
    set $P5033, $P5032
  if71_end127:
    unless_null $P5033, vivi_72128
    null $P5034
    set $P5033, $P5034
  vivi_72128:
    set fb_tmp_18, __lowered_lex_27
    repr_defined $I5014, fb_tmp_18
    unless $I5014 goto if73_else129 
    set $P5035, fb_tmp_18["GLOBALish"]
    set $P5037, $P5035
    goto if73_end130
  if73_else129:
    null $P5036
    set $P5037, $P5036
  if73_end130:
    unless_null $P5037, vivi_74131
    null $P5038
    set $P5037, $P5038
  vivi_74131:
    $P5039 = "&merge_globals"($P5033, $P5037)
    set $P5040, $P5039
  if70_end125:
    set $P5042, $P5040
  if66_end118:
    set $P5044, $P5042
  unless63_end113:
  if62_end111:
    $P5046 = "RETURN"($P101)
    goto lexotic_92
  lexotic_91:
    .get_results ($P5046)
  lexotic_92:
    .return ($P5046) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_8_1431289880.47136") :anon :lex :outer("cuid_3_1431289880.47136")
.annotate 'file', "src/vm/parrot/ModuleLoader.nqp"
.annotate 'line', 55
    .lex "$*CTXSAVE", $P101 
    .lex "$*MAIN_CTX", $P102 
    .local pmc __lowered_lex_25 
    .local pmc fb_tmp_14 
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    set $P101, $P5001
    nqp_get_sc_object $P5003, "09BFDD9FAC4622A40C1486B30F0E290D51B90552-1431289880.50957", 1
    set $P102, $P5003
    get_hll_global $P5004, "GLOBAL"
    set __lowered_lex_25, $P5004
    find_lex $P5005, "$path"
    set $S5001, $P5005
    load_bytecode $S5001
    set_hll_global "GLOBAL", __lowered_lex_25
    find_lex $P5006, "%modules_loaded"
    find_lex $P5007, "$path"
    set $S5002, $P5007
    unless_null $P102, fallback105
    nqp_get_sc_object $P5009, "09BFDD9FAC4622A40C1486B30F0E290D51B90552-1431289880.50957", 0
    get_who $P5008, $P5009
    set fb_tmp_14, $P5008
    repr_defined $I5001, fb_tmp_14
    unless $I5001 goto if59_else106 
    set $P5010, fb_tmp_14["$MAIN_CTX"]
    set $P5012, $P5010
    goto if59_end107
  if59_else106:
    null $P5011
    set $P5012, $P5011
  if59_end107:
    unless_null $P5012, vivi_60108
    null $P5013
    set $P5012, $P5013
  vivi_60108:
    unless_null $P5012, vivi_61109
    die "Contextual $*MAIN_CTX not found"
    box $P5014, "Contextual $*MAIN_CTX not found"
    set $P5012, $P5014
  vivi_61109:
    set $P102, $P5012
  fallback105:
    store_lex "$module_ctx", $P102
    set $P5006[$S5002], $P102
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "load_setting" :subid("cuid_4_1431289880.47136") :anon :lex :outer("cuid_6_1431289880.47136")
.annotate 'file', "src/vm/parrot/ModuleLoader.nqp"
.annotate 'line', 141
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5005 = 'cuid_10_1431289880.47136' 
    capture_lex $P5005 
    .lex "$setting", $P101 
    .lex "self", _lex_param_0 
    .lex "$setting_name", _lex_param_1 
    null $P5001
    set $P101, $P5001
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_134
    .lex "RETURN", $P102
    set $S5001, _lex_param_1
    isne $I5001, $S5001, "NULL"
    unless $I5001 goto if75_end137 
    .const 'Sub' $P5002 = 'cuid_10_1431289880.47136' 
    capture_lex $P5002
    $P5003 = $P5002()
  if75_end137:
    $P5004 = "RETURN"($P101)
    goto lexotic_135
  lexotic_134:
    .get_results ($P5004)
  lexotic_135:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_10_1431289880.47136") :anon :lex :outer("cuid_4_1431289880.47136")
.annotate 'file', "src/vm/parrot/ModuleLoader.nqp"
.annotate 'line', 144
    .const 'Sub' $P5021 = 'cuid_9_1431289880.47136' 
    capture_lex $P5021 
    .lex "$path", $P101 
    .local pmc __lowered_lex_35 
    .local pmc lowered_for_it__5 
    .local pmc __lowered_lex_33 
    .local pmc fb_tmp_21 
    find_lex $P5001, "$setting_name"
    set $S5002, $P5001
    concat $S5001, $S5002, ".setting.pbc"
    box $P5002, $S5001
    set $P101, $P5002
.annotate 'line', 147
    find_lex $P5004, "self"
    nqp_decontainerize $P5003, $P5004
    $P5005 = $P5003."search_path"("setting-path")
    set __lowered_lex_35, $P5005
    iter $P5006, __lowered_lex_35
    set lowered_for_it__5, $P5006
    new $P5010, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5010, while76_handlers141
    push_eh $P5010
  while76_test138:
    set $P5009, lowered_for_it__5
    unless lowered_for_it__5 goto while76_done142 
  while76_redo140:
.annotate 'line', 148
    shift $P5007, lowered_for_it__5
    set __lowered_lex_33, $P5007
    set $S5005, __lowered_lex_33
    concat $S5004, $S5005, "/"
    set $S5006, $P101
    concat $S5003, $S5004, $S5006
    stat $I5001, $S5003, 0
    set $I5002, $I5001
    unless $I5001 goto if77_end144 
.annotate 'line', 149
    set $S5009, __lowered_lex_33
    concat $S5008, $S5009, "/"
    set $S5010, $P101
    concat $S5007, $S5008, $S5010
    box $P5008, $S5007
    set $P101, $P5008
    die 0, .CONTROL_LOOP_LAST
    set $I5002, 0
  if77_end144:
    box $P5011, $I5002
    set $P5009, $P5011
    goto while76_test138 
  while76_handlers141:
    .get_results ($P5010)
    pop_upto_eh $P5010
    getattribute $P5012, $P5010, 'type'
    eq $P5012, .CONTROL_LOOP_NEXT, while76_test138
    eq $P5012, .CONTROL_LOOP_REDO, while76_redo140
  while76_done142:
    pop_eh 
    find_lex $P5013, "%settings_loaded"
    set $S5011, $P101
    exists $I5003, $P5013[$S5011]
    if $I5003 goto unless78_end146 
    .const 'Sub' $P5014 = 'cuid_9_1431289880.47136' 
    capture_lex $P5014
    $P5015 = $P5014()
  unless78_end146:
    find_lex $P5016, "%settings_loaded"
    set fb_tmp_21, $P5016
    repr_defined $I5004, fb_tmp_21
    unless $I5004 goto if86_else159 
    set $S5012, $P101
    set $P5017, fb_tmp_21[$S5012]
    set $P5019, $P5017
    goto if86_end160
  if86_else159:
    null $P5018
    set $P5019, $P5018
  if86_end160:
    unless_null $P5019, vivi_87161
    null $P5020
    set $P5019, $P5020
  vivi_87161:
    store_lex "$setting", $P5019
    .return ($P5019) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_9_1431289880.47136") :anon :lex :outer("cuid_10_1431289880.47136")
.annotate 'file', "src/vm/parrot/ModuleLoader.nqp"
.annotate 'line', 156
    .lex "$*CTXSAVE", $P101 
    .lex "$*MAIN_CTX", $P102 
    .local pmc __lowered_lex_34 
    .local pmc fb_tmp_19 
    .local pmc fb_tmp_20 
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    set $P101, $P5001
    nqp_get_sc_object $P5003, "09BFDD9FAC4622A40C1486B30F0E290D51B90552-1431289880.50957", 1
    set $P102, $P5003
    get_hll_global $P5004, "GLOBAL"
    set __lowered_lex_34, $P5004
    find_lex $P5005, "$path"
    set $S5001, $P5005
    load_bytecode $S5001
    set_hll_global "GLOBAL", __lowered_lex_34
    unless_null $P102, fallback149
    nqp_get_sc_object $P5007, "09BFDD9FAC4622A40C1486B30F0E290D51B90552-1431289880.50957", 0
    get_who $P5006, $P5007
    set fb_tmp_19, $P5006
    repr_defined $I5002, fb_tmp_19
    unless $I5002 goto if80_else150 
    set $P5008, fb_tmp_19["$MAIN_CTX"]
    set $P5010, $P5008
    goto if80_end151
  if80_else150:
    null $P5009
    set $P5010, $P5009
  if80_end151:
    unless_null $P5010, vivi_81152
    null $P5011
    set $P5010, $P5011
  vivi_81152:
    unless_null $P5010, vivi_82153
    die "Contextual $*MAIN_CTX not found"
    box $P5012, "Contextual $*MAIN_CTX not found"
    set $P5010, $P5012
  vivi_82153:
    set $P102, $P5010
  fallback149:
    defined $I5001, $P102
    if $I5001 goto unless79_end148 
.annotate 'line', 162
    find_lex $P5013, "$setting_name"
    set $S5004, $P5013
    concat $S5003, "Unable to load setting ", $S5004
    concat $S5002, $S5003, "; maybe it is missing a YOU_ARE_HERE?"
    box $P5014, $S5002
    die $P5014
  unless79_end148:
    find_lex $P5015, "%settings_loaded"
    find_lex $P5016, "$path"
    set $S5005, $P5016
    unless_null $P102, fallback154
    nqp_get_sc_object $P5018, "09BFDD9FAC4622A40C1486B30F0E290D51B90552-1431289880.50957", 0
    get_who $P5017, $P5018
    set fb_tmp_20, $P5017
    repr_defined $I5003, fb_tmp_20
    unless $I5003 goto if83_else155 
    set $P5019, fb_tmp_20["$MAIN_CTX"]
    set $P5021, $P5019
    goto if83_end156
  if83_else155:
    null $P5020
    set $P5021, $P5020
  if83_end156:
    unless_null $P5021, vivi_84157
    null $P5022
    set $P5021, $P5022
  vivi_84157:
    unless_null $P5021, vivi_85158
    die "Contextual $*MAIN_CTX not found"
    box $P5023, "Contextual $*MAIN_CTX not found"
    set $P5021, $P5023
  vivi_85158:
    set $P102, $P5021
  fallback154:
    set $P5015[$S5005], $P102
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_12_1431289880.47136") :load :init
.annotate 'file', "src/vm/parrot/ModuleLoader.nqp"
    .const 'Sub' $P5001 = 'cuid_11_1431289880.47136' 
    capture_lex $P5001 
    .local pmc cur_sc 
    .local pmc conflicts 
    nqp_dynop_setup 
    nqp_bigint_setup 
    getinterp $P5001
    get_class $P5002, "LexPad"
    get_class $P5003, "NQPLexPad"
    $P5004 = $P5001."hll_map"($P5002, $P5003)
    nqp_create_sc $P5001, "09BFDD9FAC4622A40C1486B30F0E290D51B90552-1431289880.50957"
    set cur_sc, $P5001
    $P5002 = cur_sc."set_description"("src/vm/parrot/ModuleLoader.nqp")
    new $P5003, 'QRPA'
    set conflicts, $P5003
    new $P5004, 'ResizableStringArray'
    assign $P5004, 9
    assign $P5004, 0
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
    .const 'Sub' $P5005 = 'cuid_11_1431289880.47136' 
    capture_lex $P5005
    $P5006 = $P5005()
    nqp_deserialize_sc "BwAAAEAAAAABAAAASAAAAAIAAABgAAAACgIAAAQAAABKAgAAogIAAAAAAACiAgAAAAAAAKICAACiAgAAAAAAAAcAAAAAAAAAAQAAAAAAAABkAAAAAQAAAMAAAABOAQAAAAAAAAIAAAAAAAAAAAAAAAoAAQAAAAIAAAACAAAAAAABAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAAAAAAAAwD/////////////////////AAAAAAMAAAAAAAAAAQAAAAoAAAAAAAoABAAAAAMAAAALAAAAAAAAAAAABAAAAAsAAAAAAAEAAAAFAAAACwAAAAAAAgAAAAYAAAALAAAAAAADAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAEAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAABAAAAAwD/////////////////////AAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAABAAAAAAAAAAAAAAABAAAAAQAAAAAAAAAQAAAAAQAAAAgAAAAHAAAAAAAKAAAAAAACAAAABwAAAAAACgAEAAAAAwAAAAsAAAAAAAAAAAAEAAAACwAAAAAAAQAAAAUAAAALAAAAAAACAAAABgAAAAsAAAAAAAMAAAA=", cur_sc, $P5004, $P5006, conflicts
    unless conflicts goto if88_end163 
    die "Repossession conflicts occurred during deserialization"
  if88_end163:
    .const "LexInfo" $P5001 = "cuid_5_1431289880.47136"
    new $P5002, 'ResizableStringArray'
    assign $P5002, 3
    assign $P5002, 0
    push $P5002, "GLOBALish"
    push $P5002, "$?PACKAGE"
    push $P5002, "ModuleLoader"
    new $P5003, 'QRPA'
    assign $P5003, 3
    assign $P5003, 0
    nqp_get_sc_object $P5004, "09BFDD9FAC4622A40C1486B30F0E290D51B90552-1431289880.50957", 0
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "09BFDD9FAC4622A40C1486B30F0E290D51B90552-1431289880.50957", 0
    push $P5003, $P5005
    nqp_get_sc_object $P5006, "09BFDD9FAC4622A40C1486B30F0E290D51B90552-1431289880.50957", 1
    push $P5003, $P5006
    new $P5007, 'ResizableIntegerArray'
    assign $P5007, 3
    $P5001."setup_static_lexpad"($P5002, $P5003, $P5007)
    .const "LexInfo" $P5001 = "cuid_6_1431289880.47136"
    new $P5002, 'ResizableStringArray'
    assign $P5002, 2
    assign $P5002, 0
    push $P5002, "$?PACKAGE"
    push $P5002, "$?CLASS"
    new $P5003, 'QRPA'
    assign $P5003, 2
    assign $P5003, 0
    nqp_get_sc_object $P5004, "09BFDD9FAC4622A40C1486B30F0E290D51B90552-1431289880.50957", 1
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "09BFDD9FAC4622A40C1486B30F0E290D51B90552-1431289880.50957", 1
    push $P5003, $P5005
    new $P5006, 'ResizableIntegerArray'
    assign $P5006, 2
    $P5007 = $P5001."setup_static_lexpad"($P5002, $P5003, $P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_11_1431289880.47136") :anon :lex :outer("cuid_12_1431289880.47136")
.annotate 'file', "src/vm/parrot/ModuleLoader.nqp"
    new $P5001, 'ResizablePMCArray'
    assign $P5001, 4
    assign $P5001, 0
    .const 'Sub' $P5002 = "cuid_1_1431289880.47136" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_2_1431289880.47136" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_3_1431289880.47136" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_4_1431289880.47136" 
    push $P5001, $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_13_1431289880.47136") :load
.annotate 'file', "src/vm/parrot/ModuleLoader.nqp"
    .const 'Sub' $P5001 = "cuid_5_1431289880.47136" 
    $P5002 = $P5001()
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_14_1431289880.47136") :main
.annotate 'file', "src/vm/parrot/ModuleLoader.nqp"
    .param pmc ARGS :slurpy 
    .const 'Sub' $P5001 = "cuid_5_1431289880.47136" 
    $P5002 = $P5001(ARGS :flat)
    .return ($P5002) 
.end