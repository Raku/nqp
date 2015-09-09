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
.sub "<mainline>" :subid("cuid_232_1431289891.89934") :anon :lex
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
    .param pmc _lex_param_0 :slurpy 
    .const 'Sub' $P5026 = 'cuid_233_1431289891.89934' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_22_1431289891.89934' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_234_1431289891.89934' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_235_1431289891.89934' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_236_1431289891.89934' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_249_1431289891.89934' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_250_1431289891.89934' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_253_1431289891.89934' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_254_1431289891.89934' 
    capture_lex $P5026 
    .lex "GLOBALish", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "EXPORT", $P103 
    .lex "ParseShared", $P104 
    .lex "NQPCursorRole", $P105 
    .lex "$compiler", $P106 
    .lex "sprintf", $P107 
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
    .const 'Sub' $P5005 = 'cuid_233_1431289891.89934' 
    capture_lex $P5005
    $P5006 = $P5005()
    .const 'Sub' $P5007 = 'cuid_22_1431289891.89934' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_234_1431289891.89934' 
    capture_lex $P5008
    $P5009 = $P5008()
    .const 'Sub' $P5010 = 'cuid_235_1431289891.89934' 
    capture_lex $P5010
    $P5011 = $P5010()
    .const 'Sub' $P5012 = 'cuid_236_1431289891.89934' 
    capture_lex $P5012
    $P5013 = $P5012()
.annotate 'line', 1672
    nqp_get_sc_object $P5014, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 127
    $P5015 = $P5014."new"()
    set $P106, $P5015
.annotate 'line', 1673
    $P5016 = $P106."backend"()
    $P5017 = $P5016."name"()
    $P106."language"($P5017)
    .const 'Sub' $P5018 = 'cuid_249_1431289891.89934' 
    capture_lex $P5018
    $P5019 = $P5018()
    .const 'Sub' $P5020 = 'cuid_250_1431289891.89934' 
    capture_lex $P5020
    $P5021 = $P5020()
    .const 'Sub' $P5022 = 'cuid_253_1431289891.89934' 
    capture_lex $P5022
    $P5023 = $P5022()
    .const 'Sub' $P5024 = 'cuid_254_1431289891.89934' 
    capture_lex $P5024
    $P5025 = $P5024()
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_233_1431289891.89934") :anon :lex :outer("cuid_232_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 6
    .const 'Sub' $P5027 = 'cuid_1_1431289891.89934' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_2_1431289891.89934' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_3_1431289891.89934' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_4_1431289891.89934' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_5_1431289891.89934' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_6_1431289891.89934' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_7_1431289891.89934' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_8_1431289891.89934' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_9_1431289891.89934' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_10_1431289891.89934' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_11_1431289891.89934' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_12_1431289891.89934' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_13_1431289891.89934' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_14_1431289891.89934' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_15_1431289891.89934' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_16_1431289891.89934' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_17_1431289891.89934' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_18_1431289891.89934' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_19_1431289891.89934' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_20_1431289891.89934' 
    capture_lex $P5027 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .local pmc fb_tmp_1 
    get_who $P5001, $P101
    getinterp $P5002
    set fb_tmp_1, $P5002
    repr_defined $I5001, fb_tmp_1
    unless $I5001 goto if12_else14 
    set $P5003, fb_tmp_1[.IGLOBALS_CONFIG_HASH]
    set $P5005, $P5003
    goto if12_end15
  if12_else14:
    null $P5004
    set $P5005, $P5004
  if12_end15:
    unless_null $P5005, vivi_1316
    new $P5006, 'QRPA'
    set $P5005, $P5006
  vivi_1316:
    set $P5001["%parrot_config"], $P5005
    .const 'Sub' $P5007 = 'cuid_1_1431289891.89934' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_2_1431289891.89934' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_3_1431289891.89934' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_4_1431289891.89934' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_5_1431289891.89934' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_6_1431289891.89934' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_7_1431289891.89934' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_8_1431289891.89934' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_9_1431289891.89934' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_10_1431289891.89934' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_11_1431289891.89934' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_12_1431289891.89934' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_13_1431289891.89934' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_14_1431289891.89934' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_15_1431289891.89934' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_16_1431289891.89934' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_17_1431289891.89934' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_18_1431289891.89934' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_19_1431289891.89934' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_20_1431289891.89934' 
    capture_lex $P5026
    .return ($P5026) 
.end
.HLL "nqp"
.namespace []
.sub "apply_transcodings" :subid("cuid_1_1431289891.89934") :anon :lex :outer("cuid_233_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 9
    .param pmc __lowered_lex_3 
    .param pmc __lowered_lex_4 
    .param pmc __lowered_lex_5 
    .local pmc lowered_for_it__1 
    .local pmc __lowered_lex_2 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_17
    .lex "RETURN", $P101
    set $S5001, __lowered_lex_5
    split $P5002, " ", $S5001
    iter $P5001, $P5002
    set lowered_for_it__1, $P5001
    new $P5008, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5008, while14_handlers22
    push_eh $P5008
  while14_test19:
    set $P5007, lowered_for_it__1
    unless lowered_for_it__1 goto while14_done23 
  while14_redo21:
    shift $P5003, lowered_for_it__1
    set __lowered_lex_2, $P5003
.annotate 'line', 10
    new $P5005, 'ExceptionHandler'
    set_label $P5005, catch_handler_1625
    $P5005.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5005
.annotate 'line', 11
    set $S5003, __lowered_lex_4
    set $S5004, __lowered_lex_2
    find_encoding $I5001, $S5004
    trans_encoding $S5002, $S5003, $I5001
    box $P5004, $S5002
    set __lowered_lex_4, $P5004
    set $P5006, __lowered_lex_4
    pop_eh 
    goto skip_handler_1524
  catch_handler_1625:
    .get_results ($P5005) 
    set $I10001, 1
    set $P5005["handled"], $I10001
    nqp_get_sc_object $P10001, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    finalize $P5005
    pop_upto_eh $P5005
    pop_eh 
    set $P5006, $P10001
    goto skip_handler_1524
  skip_handler_1524:
    set $P5007, $P5006
    goto while14_test19 
  while14_handlers22:
    .get_results ($P5008)
    pop_upto_eh $P5008
    getattribute $P5009, $P5008, 'type'
    eq $P5009, .CONTROL_LOOP_NEXT, while14_test19
    eq $P5009, .CONTROL_LOOP_REDO, while14_redo21
  while14_done23:
    pop_eh 
    $P5010 = "RETURN"(__lowered_lex_4)
    goto lexotic_18
  lexotic_17:
    .get_results ($P5010)
  lexotic_18:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "config" :subid("cuid_2_1431289891.89934") :anon :lex :outer("cuid_233_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 19
    .param pmc __lowered_lex_6 
    .local pmc fb_tmp_2 
    find_lex $P5002, "$?PACKAGE"
    get_who $P5001, $P5002
    set fb_tmp_2, $P5001
    repr_defined $I5001, fb_tmp_2
    unless $I5001 goto if17_else26 
    set $P5003, fb_tmp_2["%parrot_config"]
    set $P5005, $P5003
    goto if17_end27
  if17_else26:
    null $P5004
    set $P5005, $P5004
  if17_end27:
    unless_null $P5005, vivi_1828
    new $P5006, 'Hash'
    set $P5005, $P5006
  vivi_1828:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "force_gc" :subid("cuid_3_1431289891.89934") :anon :lex :outer("cuid_233_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 23
    .param pmc __lowered_lex_7 
    sweep 1
    .return (1) 
.end
.HLL "nqp"
.namespace []
.sub "name" :subid("cuid_4_1431289891.89934") :anon :lex :outer("cuid_233_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 27
    .param pmc __lowered_lex_8 
    .return ("parrot") 
.end
.HLL "nqp"
.namespace []
.sub "nqpevent" :subid("cuid_5_1431289891.89934") :anon :lex :outer("cuid_233_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 31
    .param pmc __lowered_lex_12 
    .param pmc __lowered_lex_13 :optional 
    .param int haz_param_1 :opt_flag 
    .local pmc __lowered_lex_14 
    .local pmc __lowered_lex_10 
    .local pmc __lowered_lex_11 
    .local pmc fb_tmp_3 
    .local pmc fb_tmp_4 
    .local pmc __lowered_lex_9 
    if haz_param_1, default47
    nqp_get_sc_object $P5027, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_13, $P5027
  default47:
    nqpevent "nqpevent: log finished"
    null $P5002
    nqpevent_fh $P5001, $P5002
    set __lowered_lex_14, $P5001
    isnull $I5002, __lowered_lex_14
    not $I5001, $I5002
    box $P5004, $I5001
    set $P5003, $P5004
    unless $I5001 goto if20_end32 
    set $P5003, __lowered_lex_14
  if20_end32:
    unless $P5003 goto if19_end30 
.annotate 'line', 35
    $P5005 = __lowered_lex_14."flush"()
  if19_end30:
    set $P5025, __lowered_lex_13
    unless __lowered_lex_13 goto if21_end34 
.annotate 'line', 38
    set $S5001, __lowered_lex_13
    split $P5006, ";", $S5001
    set __lowered_lex_13, $P5006
    set fb_tmp_3, __lowered_lex_13
    repr_defined $I5003, fb_tmp_3
    unless $I5003 goto if22_else35 
    set $P5007, fb_tmp_3[0]
    set $P5009, $P5007
    goto if22_end36
  if22_else35:
    null $P5008
    set $P5009, $P5008
  if22_end36:
    unless_null $P5009, vivi_2337
    nqp_get_sc_object $P5010, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5009, $P5010
  vivi_2337:
    set __lowered_lex_10, $P5009
    set fb_tmp_4, __lowered_lex_13
    repr_defined $I5004, fb_tmp_4
    unless $I5004 goto if24_else38 
    set $P5011, fb_tmp_4[1]
    set $P5013, $P5011
    goto if24_end39
  if24_else38:
    null $P5012
    set $P5013, $P5012
  if24_end39:
    unless_null $P5013, vivi_2540
    nqp_get_sc_object $P5014, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5013, $P5014
  vivi_2540:
    set __lowered_lex_11, $P5013
    set $S5002, __lowered_lex_10
    isgt $I5005, $S5002, ""
    unless $I5005 goto if26_else41 
.annotate 'line', 42
    set $S5003, __lowered_lex_10
    open $P5015, $S5003, "w"
    set $P5018, $P5015
    if $P5015 goto unless27_end44 
.annotate 'line', 43
    nqp_decontainerize $P5016, __lowered_lex_12
    set $S5005, __lowered_lex_10
    concat $S5004, "Cannot write to ", $S5005
    $P5017 = $P5016."panic"($S5004)
    set $P5018, $P5017
  unless27_end44:
    set __lowered_lex_9, $P5018
    nqpevent_fh $P5019, __lowered_lex_9
    goto if26_end42
  if26_else41:
.annotate 'line', 46
    getinterp $P5021
    $P5022 = $P5021."stderr_handle"()
    nqpevent_fh $P5020, $P5022
  if26_end42:
    set $S5006, __lowered_lex_11
    iseq $I5007, $S5006, ""
    unless $I5007 goto if28_else45 
    box $P5024, 31
    set $P5023, $P5024
    goto if28_end46
  if28_else45:
    set $P5023, __lowered_lex_11
  if28_end46:
    set $I5008, $P5023
    nqpdebflags $I5006, $I5008
    nqpevent "nqpevent: log started"
    box $P5026, "nqpevent: log started"
    set $P5025, $P5026
  if21_end34:
    .return ($P5025) 
.end
.HLL "nqp"
.namespace []
.sub "run_profiled" :subid("cuid_6_1431289891.89934") :anon :lex :outer("cuid_233_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 54
    .param pmc __lowered_lex_15 
    .param pmc __lowered_lex_16 
    .param pmc __lowered_lex_17 :optional 
    .param int haz_param_2 :opt_flag 
    .local pmc __lowered_lex_18 
    .local pmc __lowered_lex_19 
    if haz_param_2, default48
    nqp_get_sc_object $P5003, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_17, $P5003
  default48:
    interpinfo $S5001, .INTERPINFO_CURRENT_RUNCORE
    box $P5001, $S5001
    set __lowered_lex_18, $P5001
    set_runcore "subprof_hll"
.annotate 'line', 57
    $P5002 = __lowered_lex_16()
    set __lowered_lex_19, $P5002
    set $S5002, __lowered_lex_18
    set_runcore $S5002
    .return (__lowered_lex_19) 
.end
.HLL "nqp"
.namespace []
.sub "run_traced" :subid("cuid_7_1431289891.89934") :anon :lex :outer("cuid_233_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 62
    .param pmc __lowered_lex_20 
    .param pmc __lowered_lex_21 
    .param pmc __lowered_lex_22 
    .local pmc __lowered_lex_23 
    set $I5001, __lowered_lex_21
    trace $I5001
.annotate 'line', 64
    $P5001 = __lowered_lex_22()
    set __lowered_lex_23, $P5001
    trace 0
    .return (__lowered_lex_23) 
.end
.HLL "nqp"
.namespace []
.sub "version_string" :subid("cuid_8_1431289891.89934") :anon :lex :outer("cuid_233_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 69
    .param pmc __lowered_lex_24 
    .local pmc __lowered_lex_25 
    .local pmc __lowered_lex_26 
    .local pmc fb_tmp_5 
    .local pmc fb_tmp_6 
    .local pmc fb_tmp_7 
    .local pmc fb_tmp_8 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_49
    .lex "RETURN", $P101
    find_lex $P5002, "$?PACKAGE"
    get_who $P5001, $P5002
    set fb_tmp_6, $P5001
    repr_defined $I5002, fb_tmp_6
    unless $I5002 goto if30_else53 
    set $P5003, fb_tmp_6["%parrot_config"]
    set $P5005, $P5003
    goto if30_end54
  if30_else53:
    null $P5004
    set $P5005, $P5004
  if30_end54:
    unless_null $P5005, vivi_3155
    new $P5006, 'Hash'
    set $P5005, $P5006
  vivi_3155:
    set fb_tmp_5, $P5005
    repr_defined $I5001, fb_tmp_5
    unless $I5001 goto if29_else51 
    set $P5007, fb_tmp_5["VERSION"]
    set $P5009, $P5007
    goto if29_end52
  if29_else51:
    null $P5008
    set $P5009, $P5008
  if29_end52:
    unless_null $P5009, vivi_3256
    nqp_get_sc_object $P5010, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5009, $P5010
  vivi_3256:
    set __lowered_lex_25, $P5009
    find_lex $P5013, "$?PACKAGE"
    get_who $P5012, $P5013
    set fb_tmp_8, $P5012
    repr_defined $I5005, fb_tmp_8
    unless $I5005 goto if34_else60 
    set $P5014, fb_tmp_8["%parrot_config"]
    set $P5016, $P5014
    goto if34_end61
  if34_else60:
    null $P5015
    set $P5016, $P5015
  if34_end61:
    unless_null $P5016, vivi_3562
    new $P5017, 'Hash'
    set $P5016, $P5017
  vivi_3562:
    set fb_tmp_7, $P5016
    repr_defined $I5004, fb_tmp_7
    unless $I5004 goto if33_else58 
    set $P5018, fb_tmp_7["git_describe"]
    set $P5020, $P5018
    goto if33_end59
  if33_else58:
    null $P5019
    set $P5020, $P5019
  if33_end59:
    unless_null $P5020, vivi_3663
    nqp_get_sc_object $P5021, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5020, $P5021
  vivi_3663:
    set $P5011, $P5020
    defined $I5003, $P5011
    if $I5003, defor57
    box $P5022, "(unknown)"
    set $P5011, $P5022
  defor57:
    set __lowered_lex_26, $P5011
    set $S5004, __lowered_lex_25
    concat $S5003, "parrot ", $S5004
    concat $S5002, $S5003, " revision "
    set $S5005, __lowered_lex_26
    concat $S5001, $S5002, $S5005
    $P5023 = "RETURN"($S5001)
    goto lexotic_50
  lexotic_49:
    .get_results ($P5023)
  lexotic_50:
    .return ($P5023) 
.end
.HLL "nqp"
.namespace []
.sub "vmstat" :subid("cuid_9_1431289891.89934") :anon :lex :outer("cuid_233_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 75
    .param pmc __lowered_lex_27 
    new $P5003, 'QRPA'
    assign $P5003, 4
    assign $P5003, 0
    interpinfo $I5001, .INTERPINFO_TOTAL_MEM_ALLOC
    box $P5004, $I5001
    push $P5003, $P5004
    interpinfo $I5002, .INTERPINFO_TOTAL_MEM_USED
    box $P5005, $I5002
    push $P5003, $P5005
    interpinfo $I5003, .INTERPINFO_TOTAL_PMCS
    box $P5006, $I5003
    push $P5003, $P5006
    interpinfo $I5004, .INTERPINFO_ACTIVE_PMCS
    box $P5007, $I5004
    push $P5003, $P5007
    new $P5002, 'ResizableStringArray'
    push $P5002, "nqp"
    get_root_global $P5001, $P5002, "sprintf"
    $S5001 = $P5001(" %11d %11d %9d %9d", $P5003)
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "stages" :subid("cuid_10_1431289891.89934") :anon :lex :outer("cuid_233_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 84
    .param pmc __lowered_lex_28 
    .return ("post pir evalpmc") 
.end
.HLL "nqp"
.namespace []
.sub "is_precomp_stage" :subid("cuid_11_1431289891.89934") :anon :lex :outer("cuid_233_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 88
    .param pmc __lowered_lex_29 
    .param pmc __lowered_lex_30 
    set $S5001, __lowered_lex_30
    iseq $I5001, $S5001, "pir"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "is_textual_stage" :subid("cuid_12_1431289891.89934") :anon :lex :outer("cuid_233_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 93
    .param pmc __lowered_lex_31 
    .param pmc __lowered_lex_32 
    set $S5001, __lowered_lex_32
    iseq $I5001, $S5001, "pir"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "post" :subid("cuid_13_1431289891.89934") :anon :lex :outer("cuid_233_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 97
    .param pmc __lowered_lex_33 
    .param pmc __lowered_lex_34 
    .param pmc __lowered_lex_35 :slurpy :named 
.annotate 'line', 98
    compreg $P5001, "QAST"
    $P5002 = $P5001."post"(__lowered_lex_34)
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "pirbegin" :subid("cuid_14_1431289891.89934") :anon :lex :outer("cuid_233_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 101
    .param pmc __lowered_lex_36 
    concat $S5010, ".include 'cclass.pasm'\n", ".include 'except_severity.pasm'\n"
    concat $S5009, $S5010, ".include 'except_types.pasm'\n"
    concat $S5008, $S5009, ".include 'iglobals.pasm'\n"
    concat $S5007, $S5008, ".include 'interpinfo.pasm'\n"
    concat $S5006, $S5007, ".include 'iterator.pasm'\n"
    concat $S5005, $S5006, ".include 'sysinfo.pasm'\n"
    concat $S5004, $S5005, ".include 'stat.pasm'\n"
    concat $S5003, $S5004, ".include 'datatypes.pasm'\n"
    concat $S5002, $S5003, ".include 'libpaths.pasm'\n"
    concat $S5001, $S5002, ".include 'nqp_const.pir'\n"
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "pir" :subid("cuid_15_1431289891.89934") :anon :lex :outer("cuid_233_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 115
    .param pmc __lowered_lex_37 
    .param pmc __lowered_lex_38 
    .param pmc __lowered_lex_39 :slurpy :named 
.annotate 'line', 116
    nqp_decontainerize $P5001, __lowered_lex_37
    $P5002 = $P5001."pirbegin"()
    set $S5002, $P5002
    $P5003 = __lowered_lex_38."pir"()
    set $S5003, $P5003
    concat $S5001, $S5002, $S5003
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "evalpmc" :subid("cuid_16_1431289891.89934") :anon :lex :outer("cuid_233_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 119
    .param pmc __lowered_lex_41 
    .param pmc __lowered_lex_42 
    .param pmc __lowered_lex_43 :slurpy :named 
    .local pmc __lowered_lex_44 
    .local pmc __lowered_lex_45 
    .local pmc lowered_for_it__2 
    .local pmc __lowered_lex_40 
    compreg $P5001, "PIR"
    set __lowered_lex_44, $P5001
.annotate 'line', 121
    $P5002 = __lowered_lex_44(__lowered_lex_42)
    set __lowered_lex_45, $P5002
.annotate 'line', 122
    $P5003 = __lowered_lex_45."is_initialized"("init")
    if $P5003 goto unless37_end65 
.annotate 'line', 123
    $P5005 = __lowered_lex_45."subs_by_tag"("init")
    iter $P5004, $P5005
    set lowered_for_it__2, $P5004
    new $P5009, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5009, while38_handlers69
    push_eh $P5009
  while38_test66:
    set $P5008, lowered_for_it__2
    unless lowered_for_it__2 goto while38_done70 
  while38_redo68:
    shift $P5006, lowered_for_it__2
    set __lowered_lex_40, $P5006
    $P5007 = __lowered_lex_40()
    set $P5008, $P5007
    goto while38_test66 
  while38_handlers69:
    .get_results ($P5009)
    pop_upto_eh $P5009
    getattribute $P5010, $P5009, 'type'
    eq $P5010, .CONTROL_LOOP_NEXT, while38_test66
    eq $P5010, .CONTROL_LOOP_REDO, while38_redo68
  while38_done70:
    pop_eh 
.annotate 'line', 124
    $P5011 = __lowered_lex_45."mark_initialized"("init")
  unless37_end65:
    .return (__lowered_lex_45) 
.end
.HLL "nqp"
.namespace []
.sub "is_compunit" :subid("cuid_17_1431289891.89934") :anon :lex :outer("cuid_233_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 129
    .param pmc __lowered_lex_46 
    .param pmc __lowered_lex_47 
    isa $I5002, __lowered_lex_47, "String"
    not $I5001, $I5002
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "compunit_mainline" :subid("cuid_18_1431289891.89934") :anon :lex :outer("cuid_233_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 133
    .param pmc __lowered_lex_48 
    .param pmc __lowered_lex_49 
    .local pmc fb_tmp_9 
.annotate 'line', 134
    $P5001 = __lowered_lex_49."all_subs"()
    set fb_tmp_9, $P5001
    repr_defined $I5001, fb_tmp_9
    unless $I5001 goto if39_else71 
    set $P5002, fb_tmp_9[0]
    set $P5004, $P5002
    goto if39_end72
  if39_else71:
    null $P5003
    set $P5004, $P5003
  if39_end72:
    unless_null $P5004, vivi_4073
    nqp_get_sc_object $P5005, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5004, $P5005
  vivi_4073:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "compunit_coderefs" :subid("cuid_19_1431289891.89934") :anon :lex :outer("cuid_233_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 137
    .param pmc __lowered_lex_50 
    .param pmc __lowered_lex_51 
.annotate 'line', 138
    $P5001 = __lowered_lex_51."all_subs"()
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "recursion_limit" :subid("cuid_20_1431289891.89934") :anon :lex :outer("cuid_233_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 141
    .param pmc __lowered_lex_52 
    .param pmc __lowered_lex_53 
.annotate 'line', 142
    getinterp $P5001
    $P5002 = $P5001."recursion_limit"(__lowered_lex_53)
    .return ($P5002) 
.end
.loadlib "nqp_group"
.loadlib "nqp_ops"
.loadlib "nqp_bigint_ops"
.loadlib "trans_ops"
.loadlib "io_ops"
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_22_1431289891.89934") :anon :lex :outer("cuid_232_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 147
    .param pmc _lex_param_0 
    .const 'Sub' $P5003 = 'cuid_21_1431289891.89934' 
    capture_lex $P5003 
    .lex "$?PACKAGE", $P101 
    .lex "$?ROLE", $P102 
    .lex "$?CLASS", _lex_param_0 
    .const 'Sub' $P5001 = 'cuid_21_1431289891.89934' 
    capture_lex $P5001
    getinterp $P5002
    set $P5002, $P5002['lexpad']
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "default_backend" :subid("cuid_21_1431289891.89934") :anon :lex :outer("cuid_22_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 148
    .param pmc __lowered_lex_1 
    nqp_get_sc_object $P5001, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 3
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_234_1431289891.89934") :anon :lex :outer("cuid_232_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 154
    .const 'Sub' $P5071 = 'cuid_23_1431289891.89934' 
    capture_lex $P5071 
    .const 'Sub' $P5071 = 'cuid_24_1431289891.89934' 
    capture_lex $P5071 
    .const 'Sub' $P5071 = 'cuid_25_1431289891.89934' 
    capture_lex $P5071 
    .const 'Sub' $P5071 = 'cuid_26_1431289891.89934' 
    capture_lex $P5071 
    .const 'Sub' $P5071 = 'cuid_27_1431289891.89934' 
    capture_lex $P5071 
    .const 'Sub' $P5071 = 'cuid_28_1431289891.89934' 
    capture_lex $P5071 
    .const 'Sub' $P5071 = 'cuid_29_1431289891.89934' 
    capture_lex $P5071 
    .const 'Sub' $P5071 = 'cuid_30_1431289891.89934' 
    capture_lex $P5071 
    .const 'Sub' $P5071 = 'cuid_31_1431289891.89934' 
    capture_lex $P5071 
    .const 'Sub' $P5071 = 'cuid_32_1431289891.89934' 
    capture_lex $P5071 
    .const 'Sub' $P5071 = 'cuid_33_1431289891.89934' 
    capture_lex $P5071 
    .const 'Sub' $P5071 = 'cuid_34_1431289891.89934' 
    capture_lex $P5071 
    .const 'Sub' $P5071 = 'cuid_35_1431289891.89934' 
    capture_lex $P5071 
    .const 'Sub' $P5071 = 'cuid_36_1431289891.89934' 
    capture_lex $P5071 
    .const 'Sub' $P5071 = 'cuid_37_1431289891.89934' 
    capture_lex $P5071 
    .const 'Sub' $P5071 = 'cuid_38_1431289891.89934' 
    capture_lex $P5071 
    .const 'Sub' $P5071 = 'cuid_39_1431289891.89934' 
    capture_lex $P5071 
    .const 'Sub' $P5071 = 'cuid_40_1431289891.89934' 
    capture_lex $P5071 
    .const 'Sub' $P5071 = 'cuid_41_1431289891.89934' 
    capture_lex $P5071 
    .const 'Sub' $P5071 = 'cuid_42_1431289891.89934' 
    capture_lex $P5071 
    .const 'Sub' $P5071 = 'cuid_43_1431289891.89934' 
    capture_lex $P5071 
    .const 'Sub' $P5071 = 'cuid_44_1431289891.89934' 
    capture_lex $P5071 
    .const 'Sub' $P5071 = 'cuid_45_1431289891.89934' 
    capture_lex $P5071 
    .const 'Sub' $P5071 = 'cuid_46_1431289891.89934' 
    capture_lex $P5071 
    .const 'Sub' $P5071 = 'cuid_47_1431289891.89934' 
    capture_lex $P5071 
    .const 'Sub' $P5071 = 'cuid_48_1431289891.89934' 
    capture_lex $P5071 
    .const 'Sub' $P5071 = 'cuid_49_1431289891.89934' 
    capture_lex $P5071 
    .const 'Sub' $P5071 = 'cuid_50_1431289891.89934' 
    capture_lex $P5071 
    .const 'Sub' $P5071 = 'cuid_51_1431289891.89934' 
    capture_lex $P5071 
    .const 'Sub' $P5071 = 'cuid_52_1431289891.89934' 
    capture_lex $P5071 
    .const 'Sub' $P5071 = 'cuid_53_1431289891.89934' 
    capture_lex $P5071 
    .const 'Sub' $P5071 = 'cuid_54_1431289891.89934' 
    capture_lex $P5071 
    .const 'Sub' $P5071 = 'cuid_55_1431289891.89934' 
    capture_lex $P5071 
    .const 'Sub' $P5071 = 'cuid_56_1431289891.89934' 
    capture_lex $P5071 
    .const 'Sub' $P5071 = 'cuid_57_1431289891.89934' 
    capture_lex $P5071 
    .const 'Sub' $P5071 = 'cuid_58_1431289891.89934' 
    capture_lex $P5071 
    .const 'Sub' $P5071 = 'cuid_59_1431289891.89934' 
    capture_lex $P5071 
    .const 'Sub' $P5071 = 'cuid_60_1431289891.89934' 
    capture_lex $P5071 
    .const 'Sub' $P5071 = 'cuid_61_1431289891.89934' 
    capture_lex $P5071 
    .const 'Sub' $P5071 = 'cuid_62_1431289891.89934' 
    capture_lex $P5071 
    .const 'Sub' $P5071 = 'cuid_63_1431289891.89934' 
    capture_lex $P5071 
    .const 'Sub' $P5071 = 'cuid_64_1431289891.89934' 
    capture_lex $P5071 
    .const 'Sub' $P5071 = 'cuid_67_1431289891.89934' 
    capture_lex $P5071 
    .const 'Sub' $P5071 = 'cuid_69_1431289891.89934' 
    capture_lex $P5071 
    .const 'Sub' $P5071 = 'cuid_70_1431289891.89934' 
    capture_lex $P5071 
    .const 'Sub' $P5071 = 'cuid_71_1431289891.89934' 
    capture_lex $P5071 
    .const 'Sub' $P5071 = 'cuid_72_1431289891.89934' 
    capture_lex $P5071 
    .const 'Sub' $P5071 = 'cuid_73_1431289891.89934' 
    capture_lex $P5071 
    .const 'Sub' $P5071 = 'cuid_74_1431289891.89934' 
    capture_lex $P5071 
    .const 'Sub' $P5071 = 'cuid_75_1431289891.89934' 
    capture_lex $P5071 
    .const 'Sub' $P5071 = 'cuid_76_1431289891.89934' 
    capture_lex $P5071 
    .const 'Sub' $P5071 = 'cuid_77_1431289891.89934' 
    capture_lex $P5071 
    .const 'Sub' $P5071 = 'cuid_78_1431289891.89934' 
    capture_lex $P5071 
    .const 'Sub' $P5071 = 'cuid_79_1431289891.89934' 
    capture_lex $P5071 
    .const 'Sub' $P5071 = 'cuid_80_1431289891.89934' 
    capture_lex $P5071 
    .const 'Sub' $P5071 = 'cuid_81_1431289891.89934' 
    capture_lex $P5071 
    .const 'Sub' $P5071 = 'cuid_82_1431289891.89934' 
    capture_lex $P5071 
    .const 'Sub' $P5071 = 'cuid_83_1431289891.89934' 
    capture_lex $P5071 
    .const 'Sub' $P5071 = 'cuid_84_1431289891.89934' 
    capture_lex $P5071 
    .const 'Sub' $P5071 = 'cuid_85_1431289891.89934' 
    capture_lex $P5071 
    .const 'Sub' $P5071 = 'cuid_86_1431289891.89934' 
    capture_lex $P5071 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .lex "$brackets", $P103 
    .lex "$cursor_class", $P104 
    .lex "%ohash", $P105 
    .lex "$TRUE", $P106 
    .lex "%nbsp", $P107 
    new $P5001, 'Hash'
    set $P105, $P5001
    box $P5002, utf8:"<>[](){}()<>[]{}\x{ab}\x{bb}\u0f3a\u0f3b\u0f3c\u0f3d\u169b\u169c\u2018\u2019\u201a\u2019\u201b\u2019\u201c\u201d\u201e\u201d\u201f\u201d\u2039\u203a\u2045\u2046\u207d\u207e\u208d\u208e\u2208\u220b\u2209\u220c\u220a\u220d\u2215\u29f5\u223c\u223d\u2243\u22cd\u2252\u2253\u2254\u2255\u2264\u2265\u2266\u2267\u2268\u2269\u226a\u226b\u226e\u226f\u2270\u2271\u2272\u2273\u2274\u2275\u2276\u2277\u2278\u2279\u227a\u227b\u227c\u227d\u227e\u227f\u2280\u2281\u2282\u2283\u2284\u2285\u2286\u2287\u2288\u2289\u228a\u228b\u228f\u2290\u2291\u2292\u2298\u29b8\u22a2\u22a3\u22a6\u2ade\u22a8\u2ae4\u22a9\u2ae3\u22ab\u2ae5\u22b0\u22b1\u22b2\u22b3\u22b4\u22b5\u22b6\u22b7\u22c9\u22ca\u22cb\u22cc\u22d0\u22d1\u22d6\u22d7\u22d8\u22d9\u22da\u22db\u22dc\u22dd\u22de\u22df\u22e0\u22e1\u22e2\u22e3\u22e4\u22e5\u22e6\u22e7\u22e8\u22e9\u22ea\u22eb\u22ec\u22ed\u22f0\u22f1\u22f2\u22fa\u22f3\u22fb\u22f4\u22fc\u22f6\u22fd\u22f7\u22fe\u2308\u2309\u230a\u230b\u2329\u232a\u23b4\u23b5\u2768\u2769\u276a\u276b\u276c\u276d\u276e\u276f\u2770\u2771\u2772\u2773\u2774\u2775\u27c3\u27c4\u27c5\u27c6\u27d5\u27d6\u27dd\u27de\u27e2\u27e3\u27e4\u27e5\u27e6\u27e7\u27e8\u27e9\u27ea\u27eb\u2983\u2984\u2985\u2986\u2987\u2988\u2989\u298a\u298b\u298c\u298d\u298e\u298f\u2990\u2991\u2992\u2993\u2994\u2995\u2996\u2997\u2998\u29c0\u29c1\u29c4\u29c5\u29cf\u29d0\u29d1\u29d2\u29d4\u29d5\u29d8\u29d9\u29da\u29db\u29f8\u29f9\u29fc\u29fd\u2a2b\u2a2c\u2a2d\u2a2e\u2a34\u2a35\u2a3c\u2a3d\u2a64\u2a65\u2a79\u2a7a\u2a7d\u2a7e\u2a7f\u2a80\u2a81\u2a82\u2a83\u2a84\u2a8b\u2a8c\u2a91\u2a92\u2a93\u2a94\u2a95\u2a96\u2a97\u2a98\u2a99\u2a9a\u2a9b\u2a9c\u2aa1\u2aa2\u2aa6\u2aa7\u2aa8\u2aa9\u2aaa\u2aab\u2aac\u2aad\u2aaf\u2ab0\u2ab3\u2ab4\u2abb\u2abc\u2abd\u2abe\u2abf\u2ac0\u2ac1\u2ac2\u2ac3\u2ac4\u2ac5\u2ac6\u2acd\u2ace\u2acf\u2ad0\u2ad1\u2ad2\u2ad3\u2ad4\u2ad5\u2ad6\u2aec\u2aed\u2af7\u2af8\u2af9\u2afa\u2e02\u2e03\u2e04\u2e05\u2e09\u2e0a\u2e0c\u2e0d\u2e1c\u2e1d\u2e20\u2e21\u3008\u3009\u300a\u300b\u300c\u300d\u300e\u300f\u3010\u3011\u3014\u3015\u3016\u3017\u3018\u3019\u301a\u301b\u301d\u301e\ufd3e\ufd3f\ufe17\ufe18\ufe35\ufe36\ufe37\ufe38\ufe39\ufe3a\ufe3b\ufe3c\ufe3d\ufe3e\ufe3f\ufe40\ufe41\ufe42\ufe43\ufe44\ufe47\ufe48\ufe59\ufe5a\ufe5b\ufe5c\ufe5d\ufe5e\uff08\uff09\uff1c\uff1e\uff3b\uff3d\uff5b\uff5d\uff5f\uff60\uff62\uff63"
    set $P103, $P5002
    nqp_get_sc_object $P5003, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 115
    set $P104, $P5003
    .const 'Sub' $P5004 = 'cuid_23_1431289891.89934' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_24_1431289891.89934' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_25_1431289891.89934' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_26_1431289891.89934' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_27_1431289891.89934' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_28_1431289891.89934' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_29_1431289891.89934' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_30_1431289891.89934' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_31_1431289891.89934' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_32_1431289891.89934' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_33_1431289891.89934' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_34_1431289891.89934' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_35_1431289891.89934' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_36_1431289891.89934' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_37_1431289891.89934' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_38_1431289891.89934' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_39_1431289891.89934' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_40_1431289891.89934' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_41_1431289891.89934' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_42_1431289891.89934' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_43_1431289891.89934' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_44_1431289891.89934' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_45_1431289891.89934' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_46_1431289891.89934' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_47_1431289891.89934' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_48_1431289891.89934' 
    capture_lex $P5029
    .const 'Sub' $P5030 = 'cuid_49_1431289891.89934' 
    capture_lex $P5030
    .const 'Sub' $P5031 = 'cuid_50_1431289891.89934' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_51_1431289891.89934' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_52_1431289891.89934' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_53_1431289891.89934' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_54_1431289891.89934' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_55_1431289891.89934' 
    capture_lex $P5036
    .const 'Sub' $P5037 = 'cuid_56_1431289891.89934' 
    capture_lex $P5037
    .const 'Sub' $P5038 = 'cuid_57_1431289891.89934' 
    capture_lex $P5038
    .const 'Sub' $P5039 = 'cuid_58_1431289891.89934' 
    capture_lex $P5039
    .const 'Sub' $P5040 = 'cuid_59_1431289891.89934' 
    capture_lex $P5040
    .const 'Sub' $P5041 = 'cuid_60_1431289891.89934' 
    capture_lex $P5041
    .const 'Sub' $P5042 = 'cuid_61_1431289891.89934' 
    capture_lex $P5042
    .const 'Sub' $P5043 = 'cuid_62_1431289891.89934' 
    capture_lex $P5043
    .const 'Sub' $P5044 = 'cuid_63_1431289891.89934' 
    capture_lex $P5044
    .const 'Sub' $P5045 = 'cuid_64_1431289891.89934' 
    capture_lex $P5045
    .const 'Sub' $P5046 = 'cuid_67_1431289891.89934' 
    capture_lex $P5046
    .const 'Sub' $P5047 = 'cuid_69_1431289891.89934' 
    capture_lex $P5047
    .const 'Sub' $P5048 = 'cuid_70_1431289891.89934' 
    capture_lex $P5048
    .const 'Sub' $P5049 = 'cuid_71_1431289891.89934' 
    capture_lex $P5049
    .const 'Sub' $P5050 = 'cuid_72_1431289891.89934' 
    capture_lex $P5050
    .const 'Sub' $P5051 = 'cuid_73_1431289891.89934' 
    capture_lex $P5051
    .const 'Sub' $P5052 = 'cuid_74_1431289891.89934' 
    capture_lex $P5052
    box $P5053, 1
    set $P106, $P5053
    .const 'Sub' $P5054 = 'cuid_75_1431289891.89934' 
    capture_lex $P5054
    .const 'Sub' $P5055 = 'cuid_76_1431289891.89934' 
    capture_lex $P5055
    .const 'Sub' $P5056 = 'cuid_77_1431289891.89934' 
    capture_lex $P5056
    .const 'Sub' $P5057 = 'cuid_78_1431289891.89934' 
    capture_lex $P5057
    new $P5058, 'Hash'
    box $P5059, 1
    set $P5058[utf8:"\x{a0}"], $P5059
    box $P5060, 1
    set $P5058[unicode:"\u2007"], $P5060
    box $P5061, 1
    set $P5058[unicode:"\u202f"], $P5061
    box $P5062, 1
    set $P5058[unicode:"\ufeff"], $P5062
    set $P107, $P5058
    .const 'Sub' $P5063 = 'cuid_79_1431289891.89934' 
    capture_lex $P5063
    .const 'Sub' $P5064 = 'cuid_80_1431289891.89934' 
    capture_lex $P5064
    .const 'Sub' $P5065 = 'cuid_81_1431289891.89934' 
    capture_lex $P5065
    .const 'Sub' $P5066 = 'cuid_82_1431289891.89934' 
    capture_lex $P5066
    .const 'Sub' $P5067 = 'cuid_83_1431289891.89934' 
    capture_lex $P5067
    .const 'Sub' $P5068 = 'cuid_84_1431289891.89934' 
    capture_lex $P5068
    .const 'Sub' $P5069 = 'cuid_85_1431289891.89934' 
    capture_lex $P5069
    .const 'Sub' $P5070 = 'cuid_86_1431289891.89934' 
    capture_lex $P5070
    .return ($P5070) 
.end
.HLL "nqp"
.namespace []
.sub "throw_unrecog_backslash_seq" :subid("cuid_23_1431289891.89934") :anon :lex :outer("cuid_234_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 158
    .param pmc __lowered_lex_54 
    .param pmc __lowered_lex_55 
.annotate 'line', 159
    nqp_decontainerize $P5001, __lowered_lex_54
    set $S5003, __lowered_lex_55
    concat $S5002, "Unrecognized backslash sequence: '\\", $S5003
    concat $S5001, $S5002, "'"
    $P5002 = $P5001."panic"($S5001)
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "termish" :subid("cuid_24_1431289891.89934") :anon :lex :outer("cuid_234_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 162
    .param pmc __lowered_lex_56 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc self 
    .local pmc __lowered_lex_57 
    set self, __lowered_lex_56
    .local pmc rx41_start
    .local string rx41_tgt
    .local int rx41_pos
    .local int rx41_off
    .local int rx41_eos
    .local int rx41_rep
    .local pmc rx41_cur
    .local pmc rx41_curclass
    .local pmc rx41_bstack
    .local pmc rx41_cstack
    rx41_start = self."!cursor_start_all"()
    set rx41_cur, rx41_start[0]
    set rx41_tgt, rx41_start[1]
    set rx41_pos, rx41_start[2]
    set rx41_curclass, rx41_start[3]
    set rx41_bstack, rx41_start[4]
    set $I19, rx41_start[5]
    store_lex unicode:"$\x{a2}", rx41_cur
    length rx41_eos, rx41_tgt
    eq $I19, 1, rx41_restart76
    gt rx41_pos, rx41_eos, rx41_fail77
    repr_get_attr_int $I11, self, rx41_curclass, "$!from"
    ne $I11, -1, rxscan42_done83
    goto rxscan42_scan82
  rxscan42_loop81:
    inc rx41_pos
    gt rx41_pos, rx41_eos, rx41_fail77
    repr_bind_attr_int rx41_cur, rx41_curclass, "$!from", rx41_pos
  rxscan42_scan82:
    nqp_rxmark rx41_bstack, rxscan42_loop81, rx41_pos, 0
  rxscan42_done83:
    nqp_rxmark rx41_bstack, rxquantr43_done85, rx41_pos, 0
  rxquantr43_loop84:
    repr_bind_attr_int rx41_cur, rx41_curclass, "$!pos", rx41_pos
    $P11 = rx41_cur."prefixish"()
    repr_get_attr_int $I11, $P11, rx41_curclass, "$!pos"
    lt $I11, 0, rx41_fail77
    goto rxsubrule44_pass86
  rxsubrule44_back87:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx41_curclass, "$!pos"
    lt $I11, 0, rx41_fail77
  rxsubrule44_pass86:
    rx41_cstack = rx41_cur."!cursor_capture"($P11, "prefixish")
    set_addr $I11, rxsubrule44_back87
    push rx41_bstack, $I11
    push rx41_bstack, 0
    push rx41_bstack, rx41_pos
    elements $I11, rx41_cstack
    push rx41_bstack, $I11
    repr_get_attr_int rx41_pos, $P11, rx41_curclass, "$!pos"
    nqp_rxpeek $I19, rx41_bstack, rxquantr43_done85
    inc $I19
    inc $I19
    set rx41_rep, rx41_bstack[$I19]
    nqp_rxcommit rx41_bstack, rxquantr43_done85
    inc rx41_rep
    nqp_rxmark rx41_bstack, rxquantr43_done85, rx41_pos, rx41_rep
    goto rxquantr43_loop84
  rxquantr43_done85:
    repr_bind_attr_int rx41_cur, rx41_curclass, "$!pos", rx41_pos
    $P11 = rx41_cur."term"()
    repr_get_attr_int $I11, $P11, rx41_curclass, "$!pos"
    lt $I11, 0, rx41_fail77
    nqp_rxmark rx41_bstack, rxsubrule45_pass88, -1, 0
  rxsubrule45_pass88:
    rx41_cstack = rx41_cur."!cursor_capture"($P11, "term")
    repr_get_attr_int rx41_pos, $P11, rx41_curclass, "$!pos"
    nqp_rxmark rx41_bstack, rxquantr46_done90, rx41_pos, 0
  rxquantr46_loop89:
    repr_bind_attr_int rx41_cur, rx41_curclass, "$!pos", rx41_pos
    $P11 = rx41_cur."postfixish"()
    repr_get_attr_int $I11, $P11, rx41_curclass, "$!pos"
    lt $I11, 0, rx41_fail77
    goto rxsubrule47_pass91
  rxsubrule47_back92:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx41_curclass, "$!pos"
    lt $I11, 0, rx41_fail77
  rxsubrule47_pass91:
    rx41_cstack = rx41_cur."!cursor_capture"($P11, "postfixish")
    set_addr $I11, rxsubrule47_back92
    push rx41_bstack, $I11
    push rx41_bstack, 0
    push rx41_bstack, rx41_pos
    elements $I11, rx41_cstack
    push rx41_bstack, $I11
    repr_get_attr_int rx41_pos, $P11, rx41_curclass, "$!pos"
    nqp_rxpeek $I19, rx41_bstack, rxquantr46_done90
    inc $I19
    inc $I19
    set rx41_rep, rx41_bstack[$I19]
    nqp_rxcommit rx41_bstack, rxquantr46_done90
    inc rx41_rep
    nqp_rxmark rx41_bstack, rxquantr46_done90, rx41_pos, rx41_rep
    goto rxquantr46_loop89
  rxquantr46_done90:
    rx41_cur."!cursor_pass"(rx41_pos, "termish")
    .return (rx41_cur)
  rx41_restart76:
    repr_get_attr_obj rx41_cstack, rx41_cur, rx41_curclass, "$!cstack"
  rx41_fail77:
    unless rx41_bstack, rx41_done75
    pop $I19, rx41_bstack
    if_null rx41_cstack, rx41_cstack_done80
    unless rx41_cstack, rx41_cstack_done80
    dec $I19
    set $P11, rx41_cstack[$I19]
  rx41_cstack_done80:
    pop rx41_rep, rx41_bstack
    pop rx41_pos, rx41_bstack
    pop $I19, rx41_bstack
    lt rx41_pos, -1, rx41_done75
    lt rx41_pos, 0, rx41_fail77
    eq $I19, 0, rx41_fail77
    nqp_islist $I20, rx41_cstack
    unless $I20, rx41_jump78
    elements $I18, rx41_bstack
    le $I18, 0, rx41_cut79
    dec $I18
    set $I18, rx41_bstack[$I18]
  rx41_cut79:
    assign rx41_cstack, $I18
  rx41_jump78:
    jump $I19
  rx41_done75:
    rx41_cur."!cursor_fail"()
    .return (rx41_cur) 
.end
.HLL "nqp"
.namespace []
.sub "term" :subid("cuid_25_1431289891.89934") :anon :lex :outer("cuid_234_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 168
    .param pmc self 
    $P5001 = self."!protoregex"("term")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "infix" :subid("cuid_26_1431289891.89934") :anon :lex :outer("cuid_234_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 169
    .param pmc self 
    $P5001 = self."!protoregex"("infix")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "prefix" :subid("cuid_27_1431289891.89934") :anon :lex :outer("cuid_234_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 170
    .param pmc self 
    $P5001 = self."!protoregex"("prefix")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "postfix" :subid("cuid_28_1431289891.89934") :anon :lex :outer("cuid_234_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 171
    .param pmc self 
    $P5001 = self."!protoregex"("postfix")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "circumfix" :subid("cuid_29_1431289891.89934") :anon :lex :outer("cuid_234_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 172
    .param pmc self 
    $P5001 = self."!protoregex"("circumfix")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "postcircumfix" :subid("cuid_30_1431289891.89934") :anon :lex :outer("cuid_234_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 173
    .param pmc self 
    $P5001 = self."!protoregex"("postcircumfix")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "term:sym<circumfix>" :subid("cuid_31_1431289891.89934") :anon :lex :outer("cuid_234_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 175
    .param pmc __lowered_lex_58 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc self 
    .local pmc __lowered_lex_59 
    set self, __lowered_lex_58
    .local pmc rx48_start
    .local string rx48_tgt
    .local int rx48_pos
    .local int rx48_off
    .local int rx48_eos
    .local int rx48_rep
    .local pmc rx48_cur
    .local pmc rx48_curclass
    .local pmc rx48_bstack
    .local pmc rx48_cstack
    rx48_start = self."!cursor_start_all"()
    set rx48_cur, rx48_start[0]
    set rx48_tgt, rx48_start[1]
    set rx48_pos, rx48_start[2]
    set rx48_curclass, rx48_start[3]
    set rx48_bstack, rx48_start[4]
    set $I19, rx48_start[5]
    store_lex unicode:"$\x{a2}", rx48_cur
    length rx48_eos, rx48_tgt
    eq $I19, 1, rx48_restart95
    gt rx48_pos, rx48_eos, rx48_fail96
    repr_get_attr_int $I11, self, rx48_curclass, "$!from"
    ne $I11, -1, rxscan49_done102
    goto rxscan49_scan101
  rxscan49_loop100:
    inc rx48_pos
    gt rx48_pos, rx48_eos, rx48_fail96
    repr_bind_attr_int rx48_cur, rx48_curclass, "$!from", rx48_pos
  rxscan49_scan101:
    nqp_rxmark rx48_bstack, rxscan49_loop100, rx48_pos, 0
  rxscan49_done102:
    repr_bind_attr_int rx48_cur, rx48_curclass, "$!pos", rx48_pos
    $P11 = rx48_cur."circumfix"()
    repr_get_attr_int $I11, $P11, rx48_curclass, "$!pos"
    lt $I11, 0, rx48_fail96
    nqp_rxmark rx48_bstack, rxsubrule50_pass103, -1, 0
  rxsubrule50_pass103:
    rx48_cstack = rx48_cur."!cursor_capture"($P11, "circumfix")
    repr_get_attr_int rx48_pos, $P11, rx48_curclass, "$!pos"
    rx48_cur."!cursor_pass"(rx48_pos, "term:sym<circumfix>")
    .return (rx48_cur)
  rx48_restart95:
    repr_get_attr_obj rx48_cstack, rx48_cur, rx48_curclass, "$!cstack"
  rx48_fail96:
    unless rx48_bstack, rx48_done94
    pop $I19, rx48_bstack
    if_null rx48_cstack, rx48_cstack_done99
    unless rx48_cstack, rx48_cstack_done99
    dec $I19
    set $P11, rx48_cstack[$I19]
  rx48_cstack_done99:
    pop rx48_rep, rx48_bstack
    pop rx48_pos, rx48_bstack
    pop $I19, rx48_bstack
    lt rx48_pos, -1, rx48_done94
    lt rx48_pos, 0, rx48_fail96
    eq $I19, 0, rx48_fail96
    nqp_islist $I20, rx48_cstack
    unless $I20, rx48_jump97
    elements $I18, rx48_bstack
    le $I18, 0, rx48_cut98
    dec $I18
    set $I18, rx48_bstack[$I18]
  rx48_cut98:
    assign rx48_cstack, $I18
  rx48_jump97:
    jump $I19
  rx48_done94:
    rx48_cur."!cursor_fail"()
    .return (rx48_cur) 
.end
.HLL "nqp"
.namespace []
.sub "infixish" :subid("cuid_32_1431289891.89934") :anon :lex :outer("cuid_234_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 177
    .param pmc __lowered_lex_60 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc self 
    .local pmc __lowered_lex_61 
    set self, __lowered_lex_60
    .local pmc rx51_start
    .local string rx51_tgt
    .local int rx51_pos
    .local int rx51_off
    .local int rx51_eos
    .local int rx51_rep
    .local pmc rx51_cur
    .local pmc rx51_curclass
    .local pmc rx51_bstack
    .local pmc rx51_cstack
    rx51_start = self."!cursor_start_all"()
    set rx51_cur, rx51_start[0]
    set rx51_tgt, rx51_start[1]
    set rx51_pos, rx51_start[2]
    set rx51_curclass, rx51_start[3]
    set rx51_bstack, rx51_start[4]
    set $I19, rx51_start[5]
    store_lex unicode:"$\x{a2}", rx51_cur
    length rx51_eos, rx51_tgt
    eq $I19, 1, rx51_restart106
    gt rx51_pos, rx51_eos, rx51_fail107
    repr_get_attr_int $I11, self, rx51_curclass, "$!from"
    ne $I11, -1, rxscan52_done113
    goto rxscan52_scan112
  rxscan52_loop111:
    inc rx51_pos
    gt rx51_pos, rx51_eos, rx51_fail107
    repr_bind_attr_int rx51_cur, rx51_curclass, "$!from", rx51_pos
  rxscan52_scan112:
    nqp_rxmark rx51_bstack, rxscan52_loop111, rx51_pos, 0
  rxscan52_done113:
    repr_bind_attr_int rx51_cur, rx51_curclass, "$!pos", rx51_pos
    $P11 = rx51_cur."infix"()
    repr_get_attr_int $I11, $P11, rx51_curclass, "$!pos"
    lt $I11, 0, rx51_fail107
    nqp_rxmark rx51_bstack, rxsubrule53_pass114, -1, 0
  rxsubrule53_pass114:
    rx51_cstack = rx51_cur."!cursor_capture"($P11, "OPER=infix")
    repr_get_attr_int rx51_pos, $P11, rx51_curclass, "$!pos"
    rx51_cur."!cursor_pass"(rx51_pos, "infixish")
    .return (rx51_cur)
  rx51_restart106:
    repr_get_attr_obj rx51_cstack, rx51_cur, rx51_curclass, "$!cstack"
  rx51_fail107:
    unless rx51_bstack, rx51_done105
    pop $I19, rx51_bstack
    if_null rx51_cstack, rx51_cstack_done110
    unless rx51_cstack, rx51_cstack_done110
    dec $I19
    set $P11, rx51_cstack[$I19]
  rx51_cstack_done110:
    pop rx51_rep, rx51_bstack
    pop rx51_pos, rx51_bstack
    pop $I19, rx51_bstack
    lt rx51_pos, -1, rx51_done105
    lt rx51_pos, 0, rx51_fail107
    eq $I19, 0, rx51_fail107
    nqp_islist $I20, rx51_cstack
    unless $I20, rx51_jump108
    elements $I18, rx51_bstack
    le $I18, 0, rx51_cut109
    dec $I18
    set $I18, rx51_bstack[$I18]
  rx51_cut109:
    assign rx51_cstack, $I18
  rx51_jump108:
    jump $I19
  rx51_done105:
    rx51_cur."!cursor_fail"()
    .return (rx51_cur) 
.end
.HLL "nqp"
.namespace []
.sub "prefixish" :subid("cuid_33_1431289891.89934") :anon :lex :outer("cuid_234_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 178
    .param pmc __lowered_lex_62 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc self 
    .local pmc __lowered_lex_63 
    set self, __lowered_lex_62
    .local pmc rx54_start
    .local string rx54_tgt
    .local int rx54_pos
    .local int rx54_off
    .local int rx54_eos
    .local int rx54_rep
    .local pmc rx54_cur
    .local pmc rx54_curclass
    .local pmc rx54_bstack
    .local pmc rx54_cstack
    rx54_start = self."!cursor_start_all"()
    set rx54_cur, rx54_start[0]
    set rx54_tgt, rx54_start[1]
    set rx54_pos, rx54_start[2]
    set rx54_curclass, rx54_start[3]
    set rx54_bstack, rx54_start[4]
    set $I19, rx54_start[5]
    store_lex unicode:"$\x{a2}", rx54_cur
    length rx54_eos, rx54_tgt
    eq $I19, 1, rx54_restart117
    gt rx54_pos, rx54_eos, rx54_fail118
    repr_get_attr_int $I11, self, rx54_curclass, "$!from"
    ne $I11, -1, rxscan55_done124
    goto rxscan55_scan123
  rxscan55_loop122:
    inc rx54_pos
    gt rx54_pos, rx54_eos, rx54_fail118
    repr_bind_attr_int rx54_cur, rx54_curclass, "$!from", rx54_pos
  rxscan55_scan123:
    nqp_rxmark rx54_bstack, rxscan55_loop122, rx54_pos, 0
  rxscan55_done124:
    repr_bind_attr_int rx54_cur, rx54_curclass, "$!pos", rx54_pos
    $P11 = rx54_cur."prefix"()
    repr_get_attr_int $I11, $P11, rx54_curclass, "$!pos"
    lt $I11, 0, rx54_fail118
    nqp_rxmark rx54_bstack, rxsubrule56_pass125, -1, 0
  rxsubrule56_pass125:
    rx54_cstack = rx54_cur."!cursor_capture"($P11, "OPER=prefix")
    repr_get_attr_int rx54_pos, $P11, rx54_curclass, "$!pos"
    repr_bind_attr_int rx54_cur, rx54_curclass, "$!pos", rx54_pos
    $P11 = rx54_cur."ws"()
    repr_get_attr_int $I11, $P11, rx54_curclass, "$!pos"
    lt $I11, 0, rx54_fail118
    repr_get_attr_int rx54_pos, $P11, rx54_curclass, "$!pos"
    rx54_cur."!cursor_pass"(rx54_pos, "prefixish")
    .return (rx54_cur)
  rx54_restart117:
    repr_get_attr_obj rx54_cstack, rx54_cur, rx54_curclass, "$!cstack"
  rx54_fail118:
    unless rx54_bstack, rx54_done116
    pop $I19, rx54_bstack
    if_null rx54_cstack, rx54_cstack_done121
    unless rx54_cstack, rx54_cstack_done121
    dec $I19
    set $P11, rx54_cstack[$I19]
  rx54_cstack_done121:
    pop rx54_rep, rx54_bstack
    pop rx54_pos, rx54_bstack
    pop $I19, rx54_bstack
    lt rx54_pos, -1, rx54_done116
    lt rx54_pos, 0, rx54_fail118
    eq $I19, 0, rx54_fail118
    nqp_islist $I20, rx54_cstack
    unless $I20, rx54_jump119
    elements $I18, rx54_bstack
    le $I18, 0, rx54_cut120
    dec $I18
    set $I18, rx54_bstack[$I18]
  rx54_cut120:
    assign rx54_cstack, $I18
  rx54_jump119:
    jump $I19
  rx54_done116:
    rx54_cur."!cursor_fail"()
    .return (rx54_cur) 
.end
.HLL "nqp"
.namespace []
.sub "postfixish" :subid("cuid_34_1431289891.89934") :anon :lex :outer("cuid_234_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 179
    .param pmc __lowered_lex_64 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc self 
    .local pmc __lowered_lex_65 
    set self, __lowered_lex_64
    .local pmc rx58_start
    .local string rx58_tgt
    .local int rx58_pos
    .local int rx58_off
    .local int rx58_eos
    .local int rx58_rep
    .local pmc rx58_cur
    .local pmc rx58_curclass
    .local pmc rx58_bstack
    .local pmc rx58_cstack
    rx58_start = self."!cursor_start_all"()
    set rx58_cur, rx58_start[0]
    set rx58_tgt, rx58_start[1]
    set rx58_pos, rx58_start[2]
    set rx58_curclass, rx58_start[3]
    set rx58_bstack, rx58_start[4]
    set $I19, rx58_start[5]
    store_lex unicode:"$\x{a2}", rx58_cur
    length rx58_eos, rx58_tgt
    eq $I19, 1, rx58_restart129
    gt rx58_pos, rx58_eos, rx58_fail130
    repr_get_attr_int $I11, self, rx58_curclass, "$!from"
    ne $I11, -1, rxscan59_done136
    goto rxscan59_scan135
  rxscan59_loop134:
    inc rx58_pos
    gt rx58_pos, rx58_eos, rx58_fail130
    repr_bind_attr_int rx58_cur, rx58_curclass, "$!from", rx58_pos
  rxscan59_scan135:
    nqp_rxmark rx58_bstack, rxscan59_loop134, rx58_pos, 0
  rxscan59_done136:
    new $P11, "ResizableIntegerArray"
    assign $P11, 2
    assign $P11, 0
    nqp_push_label $P11, alt60_0138
    nqp_push_label $P11, alt60_1140
    nqp_rxmark rx58_bstack, alt60_end137, -1, 0
    rx58_cur."!alt"(rx58_pos, "alt_nfa__1_1431289892.34223", $P11)
    goto rx58_fail130
  alt60_0138:
    repr_bind_attr_int rx58_cur, rx58_curclass, "$!pos", rx58_pos
    $P11 = rx58_cur."postfix"()
    repr_get_attr_int $I11, $P11, rx58_curclass, "$!pos"
    lt $I11, 0, rx58_fail130
    nqp_rxmark rx58_bstack, rxsubrule61_pass139, -1, 0
  rxsubrule61_pass139:
    rx58_cstack = rx58_cur."!cursor_capture"($P11, "OPER=postfix")
    repr_get_attr_int rx58_pos, $P11, rx58_curclass, "$!pos"
    goto alt60_end137
  alt60_1140:
    repr_bind_attr_int rx58_cur, rx58_curclass, "$!pos", rx58_pos
    $P11 = rx58_cur."postcircumfix"()
    repr_get_attr_int $I11, $P11, rx58_curclass, "$!pos"
    lt $I11, 0, rx58_fail130
    nqp_rxmark rx58_bstack, rxsubrule62_pass141, -1, 0
  rxsubrule62_pass141:
    rx58_cstack = rx58_cur."!cursor_capture"($P11, "OPER=postcircumfix")
    repr_get_attr_int rx58_pos, $P11, rx58_curclass, "$!pos"
    goto alt60_end137
  alt60_end137:
    rx58_cur."!cursor_pass"(rx58_pos, "postfixish")
    .return (rx58_cur)
  rx58_restart129:
    repr_get_attr_obj rx58_cstack, rx58_cur, rx58_curclass, "$!cstack"
  rx58_fail130:
    unless rx58_bstack, rx58_done128
    pop $I19, rx58_bstack
    if_null rx58_cstack, rx58_cstack_done133
    unless rx58_cstack, rx58_cstack_done133
    dec $I19
    set $P11, rx58_cstack[$I19]
  rx58_cstack_done133:
    pop rx58_rep, rx58_bstack
    pop rx58_pos, rx58_bstack
    pop $I19, rx58_bstack
    lt rx58_pos, -1, rx58_done128
    lt rx58_pos, 0, rx58_fail130
    eq $I19, 0, rx58_fail130
    nqp_islist $I20, rx58_cstack
    unless $I20, rx58_jump131
    elements $I18, rx58_bstack
    le $I18, 0, rx58_cut132
    dec $I18
    set $I18, rx58_bstack[$I18]
  rx58_cut132:
    assign rx58_cstack, $I18
  rx58_jump131:
    jump $I19
  rx58_done128:
    rx58_cur."!cursor_fail"()
    .return (rx58_cur) 
.end
.HLL "nqp"
.namespace []
.sub "nullterm" :subid("cuid_35_1431289891.89934") :anon :lex :outer("cuid_234_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 184
    .param pmc __lowered_lex_66 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc self 
    .local pmc __lowered_lex_67 
    set self, __lowered_lex_66
    .local pmc rx63_start
    .local string rx63_tgt
    .local int rx63_pos
    .local int rx63_off
    .local int rx63_eos
    .local int rx63_rep
    .local pmc rx63_cur
    .local pmc rx63_curclass
    .local pmc rx63_bstack
    .local pmc rx63_cstack
    rx63_start = self."!cursor_start_all"()
    set rx63_cur, rx63_start[0]
    set rx63_tgt, rx63_start[1]
    set rx63_pos, rx63_start[2]
    set rx63_curclass, rx63_start[3]
    set rx63_bstack, rx63_start[4]
    set $I19, rx63_start[5]
    store_lex unicode:"$\x{a2}", rx63_cur
    length rx63_eos, rx63_tgt
    eq $I19, 1, rx63_restart144
    gt rx63_pos, rx63_eos, rx63_fail145
    repr_get_attr_int $I11, self, rx63_curclass, "$!from"
    ne $I11, -1, rxscan64_done151
    goto rxscan64_scan150
  rxscan64_loop149:
    inc rx63_pos
    gt rx63_pos, rx63_eos, rx63_fail145
    repr_bind_attr_int rx63_cur, rx63_curclass, "$!from", rx63_pos
  rxscan64_scan150:
    nqp_rxmark rx63_bstack, rxscan64_loop149, rx63_pos, 0
  rxscan64_done151:
    rx63_cur."!cursor_pass"(rx63_pos, "nullterm")
    .return (rx63_cur)
  rx63_restart144:
    repr_get_attr_obj rx63_cstack, rx63_cur, rx63_curclass, "$!cstack"
  rx63_fail145:
    unless rx63_bstack, rx63_done143
    pop $I19, rx63_bstack
    if_null rx63_cstack, rx63_cstack_done148
    unless rx63_cstack, rx63_cstack_done148
    dec $I19
    set $P11, rx63_cstack[$I19]
  rx63_cstack_done148:
    pop rx63_rep, rx63_bstack
    pop rx63_pos, rx63_bstack
    pop $I19, rx63_bstack
    lt rx63_pos, -1, rx63_done143
    lt rx63_pos, 0, rx63_fail145
    eq $I19, 0, rx63_fail145
    nqp_islist $I20, rx63_cstack
    unless $I20, rx63_jump146
    elements $I18, rx63_bstack
    le $I18, 0, rx63_cut147
    dec $I18
    set $I18, rx63_bstack[$I18]
  rx63_cut147:
    assign rx63_cstack, $I18
  rx63_jump146:
    jump $I19
  rx63_done143:
    rx63_cur."!cursor_fail"()
    .return (rx63_cur) 
.end
.HLL "nqp"
.namespace []
.sub "nullterm_alt" :subid("cuid_36_1431289891.89934") :anon :lex :outer("cuid_234_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 185
    .param pmc __lowered_lex_68 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc self 
    .local pmc __lowered_lex_69 
    set self, __lowered_lex_68
    .local pmc rx66_start
    .local string rx66_tgt
    .local int rx66_pos
    .local int rx66_off
    .local int rx66_eos
    .local int rx66_rep
    .local pmc rx66_cur
    .local pmc rx66_curclass
    .local pmc rx66_bstack
    .local pmc rx66_cstack
    rx66_start = self."!cursor_start_all"()
    set rx66_cur, rx66_start[0]
    set rx66_tgt, rx66_start[1]
    set rx66_pos, rx66_start[2]
    set rx66_curclass, rx66_start[3]
    set rx66_bstack, rx66_start[4]
    set $I19, rx66_start[5]
    store_lex unicode:"$\x{a2}", rx66_cur
    length rx66_eos, rx66_tgt
    eq $I19, 1, rx66_restart155
    gt rx66_pos, rx66_eos, rx66_fail156
    repr_get_attr_int $I11, self, rx66_curclass, "$!from"
    ne $I11, -1, rxscan67_done162
    goto rxscan67_scan161
  rxscan67_loop160:
    inc rx66_pos
    gt rx66_pos, rx66_eos, rx66_fail156
    repr_bind_attr_int rx66_cur, rx66_curclass, "$!from", rx66_pos
  rxscan67_scan161:
    nqp_rxmark rx66_bstack, rxscan67_loop160, rx66_pos, 0
  rxscan67_done162:
    repr_bind_attr_int rx66_cur, rx66_curclass, "$!pos", rx66_pos
    $P11 = rx66_cur."nullterm"()
    repr_get_attr_int $I11, $P11, rx66_curclass, "$!pos"
    lt $I11, 0, rx66_fail156
    nqp_rxmark rx66_bstack, rxsubrule68_pass163, -1, 0
  rxsubrule68_pass163:
    rx66_cstack = rx66_cur."!cursor_capture"($P11, "term")
    repr_get_attr_int rx66_pos, $P11, rx66_curclass, "$!pos"
    rx66_cur."!cursor_pass"(rx66_pos, "nullterm_alt")
    .return (rx66_cur)
  rx66_restart155:
    repr_get_attr_obj rx66_cstack, rx66_cur, rx66_curclass, "$!cstack"
  rx66_fail156:
    unless rx66_bstack, rx66_done154
    pop $I19, rx66_bstack
    if_null rx66_cstack, rx66_cstack_done159
    unless rx66_cstack, rx66_cstack_done159
    dec $I19
    set $P11, rx66_cstack[$I19]
  rx66_cstack_done159:
    pop rx66_rep, rx66_bstack
    pop rx66_pos, rx66_bstack
    pop $I19, rx66_bstack
    lt rx66_pos, -1, rx66_done154
    lt rx66_pos, 0, rx66_fail156
    eq $I19, 0, rx66_fail156
    nqp_islist $I20, rx66_cstack
    unless $I20, rx66_jump157
    elements $I18, rx66_bstack
    le $I18, 0, rx66_cut158
    dec $I18
    set $I18, rx66_bstack[$I18]
  rx66_cut158:
    assign rx66_cstack, $I18
  rx66_jump157:
    jump $I19
  rx66_done154:
    rx66_cur."!cursor_fail"()
    .return (rx66_cur) 
.end
.HLL "nqp"
.namespace []
.sub "nulltermish" :subid("cuid_37_1431289891.89934") :anon :lex :outer("cuid_234_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 188
    .param pmc __lowered_lex_70 
    nqp_decontainerize $P5001, __lowered_lex_70
    $P5002 = $P5001."termish"()
    set $P5005, $P5002
    if $P5002 goto unless69_end165 
    nqp_decontainerize $P5003, __lowered_lex_70
    $P5004 = $P5003."nullterm_alt"()
    set $P5005, $P5004
  unless69_end165:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "quote_delimited" :subid("cuid_38_1431289891.89934") :anon :lex :outer("cuid_234_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 190
    .param pmc __lowered_lex_71 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc self 
    .local pmc __lowered_lex_72 
    set self, __lowered_lex_71
    .local pmc rx70_start
    .local string rx70_tgt
    .local int rx70_pos
    .local int rx70_off
    .local int rx70_eos
    .local int rx70_rep
    .local pmc rx70_cur
    .local pmc rx70_curclass
    .local pmc rx70_bstack
    .local pmc rx70_cstack
    rx70_start = self."!cursor_start_all"()
    set rx70_cur, rx70_start[0]
    set rx70_tgt, rx70_start[1]
    set rx70_pos, rx70_start[2]
    set rx70_curclass, rx70_start[3]
    set rx70_bstack, rx70_start[4]
    set $I19, rx70_start[5]
    store_lex unicode:"$\x{a2}", rx70_cur
    length rx70_eos, rx70_tgt
    eq $I19, 1, rx70_restart168
    gt rx70_pos, rx70_eos, rx70_fail169
    repr_get_attr_int $I11, self, rx70_curclass, "$!from"
    ne $I11, -1, rxscan71_done175
    goto rxscan71_scan174
  rxscan71_loop173:
    inc rx70_pos
    gt rx70_pos, rx70_eos, rx70_fail169
    repr_bind_attr_int rx70_cur, rx70_curclass, "$!from", rx70_pos
  rxscan71_scan174:
    nqp_rxmark rx70_bstack, rxscan71_loop173, rx70_pos, 0
  rxscan71_done175:
    repr_bind_attr_int rx70_cur, rx70_curclass, "$!pos", rx70_pos
    $P11 = rx70_cur."starter"()
    repr_get_attr_int $I11, $P11, rx70_curclass, "$!pos"
    lt $I11, 0, rx70_fail169
    nqp_rxmark rx70_bstack, rxsubrule72_pass176, -1, 0
  rxsubrule72_pass176:
    rx70_cstack = rx70_cur."!cursor_capture"($P11, "starter")
    repr_get_attr_int rx70_pos, $P11, rx70_curclass, "$!pos"
    nqp_rxmark rx70_bstack, rxquantr73_done178, rx70_pos, 0
  rxquantr73_loop177:
    repr_bind_attr_int rx70_cur, rx70_curclass, "$!pos", rx70_pos
    $P11 = rx70_cur."quote_atom"()
    repr_get_attr_int $I11, $P11, rx70_curclass, "$!pos"
    lt $I11, 0, rx70_fail169
    goto rxsubrule74_pass179
  rxsubrule74_back180:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx70_curclass, "$!pos"
    lt $I11, 0, rx70_fail169
  rxsubrule74_pass179:
    rx70_cstack = rx70_cur."!cursor_capture"($P11, "quote_atom")
    set_addr $I11, rxsubrule74_back180
    push rx70_bstack, $I11
    push rx70_bstack, 0
    push rx70_bstack, rx70_pos
    elements $I11, rx70_cstack
    push rx70_bstack, $I11
    repr_get_attr_int rx70_pos, $P11, rx70_curclass, "$!pos"
    nqp_rxpeek $I19, rx70_bstack, rxquantr73_done178
    inc $I19
    inc $I19
    set rx70_rep, rx70_bstack[$I19]
    nqp_rxcommit rx70_bstack, rxquantr73_done178
    inc rx70_rep
    nqp_rxmark rx70_bstack, rxquantr73_done178, rx70_pos, rx70_rep
    goto rxquantr73_loop177
  rxquantr73_done178:
    repr_bind_attr_int rx70_cur, rx70_curclass, "$!pos", rx70_pos
    $P11 = rx70_cur."stopper"()
    repr_get_attr_int $I11, $P11, rx70_curclass, "$!pos"
    lt $I11, 0, rx70_fail169
    nqp_rxmark rx70_bstack, rxsubrule75_pass181, -1, 0
  rxsubrule75_pass181:
    rx70_cstack = rx70_cur."!cursor_capture"($P11, "stopper")
    repr_get_attr_int rx70_pos, $P11, rx70_curclass, "$!pos"
    rx70_cur."!cursor_pass"(rx70_pos, "quote_delimited")
    .return (rx70_cur)
  rx70_restart168:
    repr_get_attr_obj rx70_cstack, rx70_cur, rx70_curclass, "$!cstack"
  rx70_fail169:
    unless rx70_bstack, rx70_done167
    pop $I19, rx70_bstack
    if_null rx70_cstack, rx70_cstack_done172
    unless rx70_cstack, rx70_cstack_done172
    dec $I19
    set $P11, rx70_cstack[$I19]
  rx70_cstack_done172:
    pop rx70_rep, rx70_bstack
    pop rx70_pos, rx70_bstack
    pop $I19, rx70_bstack
    lt rx70_pos, -1, rx70_done167
    lt rx70_pos, 0, rx70_fail169
    eq $I19, 0, rx70_fail169
    nqp_islist $I20, rx70_cstack
    unless $I20, rx70_jump170
    elements $I18, rx70_bstack
    le $I18, 0, rx70_cut171
    dec $I18
    set $I18, rx70_bstack[$I18]
  rx70_cut171:
    assign rx70_cstack, $I18
  rx70_jump170:
    jump $I19
  rx70_done167:
    rx70_cur."!cursor_fail"()
    .return (rx70_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_atom" :subid("cuid_39_1431289891.89934") :anon :lex :outer("cuid_234_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 194
    .param pmc __lowered_lex_73 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc self 
    .local pmc __lowered_lex_74 
    set self, __lowered_lex_73
    .local pmc rx76_start
    .local string rx76_tgt
    .local int rx76_pos
    .local int rx76_off
    .local int rx76_eos
    .local int rx76_rep
    .local pmc rx76_cur
    .local pmc rx76_curclass
    .local pmc rx76_bstack
    .local pmc rx76_cstack
    rx76_start = self."!cursor_start_all"()
    set rx76_cur, rx76_start[0]
    set rx76_tgt, rx76_start[1]
    set rx76_pos, rx76_start[2]
    set rx76_curclass, rx76_start[3]
    set rx76_bstack, rx76_start[4]
    set $I19, rx76_start[5]
    store_lex unicode:"$\x{a2}", rx76_cur
    length rx76_eos, rx76_tgt
    eq $I19, 1, rx76_restart184
    gt rx76_pos, rx76_eos, rx76_fail185
    repr_get_attr_int $I11, self, rx76_curclass, "$!from"
    ne $I11, -1, rxscan77_done191
    goto rxscan77_scan190
  rxscan77_loop189:
    inc rx76_pos
    gt rx76_pos, rx76_eos, rx76_fail185
    repr_bind_attr_int rx76_cur, rx76_curclass, "$!from", rx76_pos
  rxscan77_scan190:
    nqp_rxmark rx76_bstack, rxscan77_loop189, rx76_pos, 0
  rxscan77_done191:
    repr_bind_attr_int rx76_cur, rx76_curclass, "$!pos", rx76_pos
    $P11 = rx76_cur."stopper"()
    repr_get_attr_int $I11, $P11, rx76_curclass, "$!pos"
    ge $I11, 0, rx76_fail185
    new $P11, "ResizableIntegerArray"
    assign $P11, 3
    assign $P11, 0
    nqp_push_label $P11, alt78_0193
    nqp_push_label $P11, alt78_1195
    nqp_push_label $P11, alt78_2202
    nqp_rxmark rx76_bstack, alt78_end192, -1, 0
    rx76_cur."!alt"(rx76_pos, "alt_nfa__2_1431289892.36627", $P11)
    goto rx76_fail185
  alt78_0193:
    repr_bind_attr_int rx76_cur, rx76_curclass, "$!pos", rx76_pos
    $P11 = rx76_cur."quote_escape"()
    repr_get_attr_int $I11, $P11, rx76_curclass, "$!pos"
    lt $I11, 0, rx76_fail185
    nqp_rxmark rx76_bstack, rxsubrule79_pass194, -1, 0
  rxsubrule79_pass194:
    rx76_cstack = rx76_cur."!cursor_capture"($P11, "quote_escape")
    repr_get_attr_int rx76_pos, $P11, rx76_curclass, "$!pos"
    goto alt78_end192
  alt78_1195:
    nqp_rxmark rx76_bstack, rxquantr80_done197, -1, 0
  rxquantr80_loop196:
    nqp_rxmark rx76_bstack, rxconj81_fail198, rx76_pos, 0
    goto rxconj81_first199
  rxconj81_fail198:
    goto rx76_fail185
  rxconj81_first199:
    repr_bind_attr_int rx76_cur, rx76_curclass, "$!pos", rx76_pos
    $P11 = rx76_cur."starter"()
    repr_get_attr_int $I11, $P11, rx76_curclass, "$!pos"
    ge $I11, 0, rx76_fail185
    nqp_rxpeek $I19, rx76_bstack, rxconj81_fail198
    inc $I19
    set $I11, rx76_bstack[$I19]
    nqp_rxmark rx76_bstack, rxconj81_fail198, $I11, rx76_pos
    set rx76_pos, $I11
    nqp_rxmark rx76_bstack, rxconj82_fail200, rx76_pos, 0
    goto rxconj82_first201
  rxconj82_fail200:
    goto rx76_fail185
  rxconj82_first201:
    repr_bind_attr_int rx76_cur, rx76_curclass, "$!pos", rx76_pos
    $P11 = rx76_cur."stopper"()
    repr_get_attr_int $I11, $P11, rx76_curclass, "$!pos"
    ge $I11, 0, rx76_fail185
    nqp_rxpeek $I19, rx76_bstack, rxconj82_fail200
    inc $I19
    set $I11, rx76_bstack[$I19]
    nqp_rxmark rx76_bstack, rxconj82_fail200, $I11, rx76_pos
    set rx76_pos, $I11
    repr_bind_attr_int rx76_cur, rx76_curclass, "$!pos", rx76_pos
    $P11 = rx76_cur."quote_escape"()
    repr_get_attr_int $I11, $P11, rx76_curclass, "$!pos"
    ge $I11, 0, rx76_fail185
    ge rx76_pos, rx76_eos, rx76_fail185
    inc rx76_pos
    nqp_rxpeek $I19, rx76_bstack, rxquantr80_done197
    inc $I19
    inc $I19
    set rx76_rep, rx76_bstack[$I19]
    nqp_rxcommit rx76_bstack, rxquantr80_done197
    inc rx76_rep
    nqp_rxmark rx76_bstack, rxquantr80_done197, rx76_pos, rx76_rep
    goto rxquantr80_loop196
  rxquantr80_done197:
    goto alt78_end192
  alt78_2202:
    repr_bind_attr_int rx76_cur, rx76_curclass, "$!pos", rx76_pos
    $P11 = rx76_cur."starter"()
    repr_get_attr_int $I11, $P11, rx76_curclass, "$!pos"
    lt $I11, 0, rx76_fail185
    nqp_rxmark rx76_bstack, rxsubrule83_pass203, -1, 0
  rxsubrule83_pass203:
    rx76_cstack = rx76_cur."!cursor_capture"($P11, "starter")
    repr_get_attr_int rx76_pos, $P11, rx76_curclass, "$!pos"
    nqp_rxmark rx76_bstack, rxquantr84_done205, rx76_pos, 0
  rxquantr84_loop204:
    repr_bind_attr_int rx76_cur, rx76_curclass, "$!pos", rx76_pos
    $P11 = rx76_cur."quote_atom"()
    repr_get_attr_int $I11, $P11, rx76_curclass, "$!pos"
    lt $I11, 0, rx76_fail185
    goto rxsubrule85_pass206
  rxsubrule85_back207:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx76_curclass, "$!pos"
    lt $I11, 0, rx76_fail185
  rxsubrule85_pass206:
    rx76_cstack = rx76_cur."!cursor_capture"($P11, "quote_atom")
    set_addr $I11, rxsubrule85_back207
    push rx76_bstack, $I11
    push rx76_bstack, 0
    push rx76_bstack, rx76_pos
    elements $I11, rx76_cstack
    push rx76_bstack, $I11
    repr_get_attr_int rx76_pos, $P11, rx76_curclass, "$!pos"
    nqp_rxpeek $I19, rx76_bstack, rxquantr84_done205
    inc $I19
    inc $I19
    set rx76_rep, rx76_bstack[$I19]
    nqp_rxcommit rx76_bstack, rxquantr84_done205
    inc rx76_rep
    nqp_rxmark rx76_bstack, rxquantr84_done205, rx76_pos, rx76_rep
    goto rxquantr84_loop204
  rxquantr84_done205:
    repr_bind_attr_int rx76_cur, rx76_curclass, "$!pos", rx76_pos
    $P11 = rx76_cur."stopper"()
    repr_get_attr_int $I11, $P11, rx76_curclass, "$!pos"
    lt $I11, 0, rx76_fail185
    nqp_rxmark rx76_bstack, rxsubrule86_pass208, -1, 0
  rxsubrule86_pass208:
    rx76_cstack = rx76_cur."!cursor_capture"($P11, "stopper")
    repr_get_attr_int rx76_pos, $P11, rx76_curclass, "$!pos"
    goto alt78_end192
  alt78_end192:
    nqp_rxcommit rx76_bstack, alt78_end192
    rx76_cur."!cursor_pass"(rx76_pos, "quote_atom")
    .return (rx76_cur)
  rx76_restart184:
    repr_get_attr_obj rx76_cstack, rx76_cur, rx76_curclass, "$!cstack"
  rx76_fail185:
    unless rx76_bstack, rx76_done183
    pop $I19, rx76_bstack
    if_null rx76_cstack, rx76_cstack_done188
    unless rx76_cstack, rx76_cstack_done188
    dec $I19
    set $P11, rx76_cstack[$I19]
  rx76_cstack_done188:
    pop rx76_rep, rx76_bstack
    pop rx76_pos, rx76_bstack
    pop $I19, rx76_bstack
    lt rx76_pos, -1, rx76_done183
    lt rx76_pos, 0, rx76_fail185
    eq $I19, 0, rx76_fail185
    nqp_islist $I20, rx76_cstack
    unless $I20, rx76_jump186
    elements $I18, rx76_bstack
    le $I18, 0, rx76_cut187
    dec $I18
    set $I18, rx76_bstack[$I18]
  rx76_cut187:
    assign rx76_cstack, $I18
  rx76_jump186:
    jump $I19
  rx76_done183:
    rx76_cur."!cursor_fail"()
    .return (rx76_cur) 
.end
.HLL "nqp"
.namespace []
.sub "decint" :subid("cuid_40_1431289891.89934") :anon :lex :outer("cuid_234_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 203
    .param pmc __lowered_lex_75 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc self 
    .local pmc __lowered_lex_76 
    set self, __lowered_lex_75
    .local pmc rx87_start
    .local string rx87_tgt
    .local int rx87_pos
    .local int rx87_off
    .local int rx87_eos
    .local int rx87_rep
    .local pmc rx87_cur
    .local pmc rx87_curclass
    .local pmc rx87_bstack
    .local pmc rx87_cstack
    rx87_start = self."!cursor_start_all"()
    set rx87_cur, rx87_start[0]
    set rx87_tgt, rx87_start[1]
    set rx87_pos, rx87_start[2]
    set rx87_curclass, rx87_start[3]
    set rx87_bstack, rx87_start[4]
    set $I19, rx87_start[5]
    store_lex unicode:"$\x{a2}", rx87_cur
    length rx87_eos, rx87_tgt
    eq $I19, 1, rx87_restart211
    gt rx87_pos, rx87_eos, rx87_fail212
    repr_get_attr_int $I11, self, rx87_curclass, "$!from"
    ne $I11, -1, rxscan88_done218
    goto rxscan88_scan217
  rxscan88_loop216:
    inc rx87_pos
    gt rx87_pos, rx87_eos, rx87_fail212
    repr_bind_attr_int rx87_cur, rx87_curclass, "$!from", rx87_pos
  rxscan88_scan217:
    nqp_rxmark rx87_bstack, rxscan88_loop216, rx87_pos, 0
  rxscan88_done218:
    nqp_rxmark rx87_bstack, rxquantr89_done220, -1, 0
  rxquantr89_loop219:
    nqp_rxmark rx87_bstack, rxquantr90_done222, -1, 0
  rxquantr90_loop221:
    ge rx87_pos, rx87_eos, rx87_fail212
    is_cclass $I11, .CCLASS_NUMERIC, rx87_tgt, rx87_pos
    unless $I11, rx87_fail212
    inc rx87_pos
    nqp_rxpeek $I19, rx87_bstack, rxquantr90_done222
    inc $I19
    inc $I19
    set rx87_rep, rx87_bstack[$I19]
    nqp_rxcommit rx87_bstack, rxquantr90_done222
    inc rx87_rep
    nqp_rxmark rx87_bstack, rxquantr90_done222, rx87_pos, rx87_rep
    goto rxquantr90_loop221
  rxquantr90_done222:
    nqp_rxpeek $I19, rx87_bstack, rxquantr89_done220
    inc $I19
    inc $I19
    set rx87_rep, rx87_bstack[$I19]
    nqp_rxcommit rx87_bstack, rxquantr89_done220
    inc rx87_rep
    nqp_rxmark rx87_bstack, rxquantr89_done220, rx87_pos, rx87_rep
    add $I11, rx87_pos, 1
    gt $I11, rx87_eos, rx87_fail212
    ord $I11, rx87_tgt, rx87_pos
    ne $I11, 95, rx87_fail212
    add rx87_pos, 1
    goto rxquantr89_loop219
  rxquantr89_done220:
    rx87_cur."!cursor_pass"(rx87_pos, "decint")
    .return (rx87_cur)
  rx87_restart211:
    repr_get_attr_obj rx87_cstack, rx87_cur, rx87_curclass, "$!cstack"
  rx87_fail212:
    unless rx87_bstack, rx87_done210
    pop $I19, rx87_bstack
    if_null rx87_cstack, rx87_cstack_done215
    unless rx87_cstack, rx87_cstack_done215
    dec $I19
    set $P11, rx87_cstack[$I19]
  rx87_cstack_done215:
    pop rx87_rep, rx87_bstack
    pop rx87_pos, rx87_bstack
    pop $I19, rx87_bstack
    lt rx87_pos, -1, rx87_done210
    lt rx87_pos, 0, rx87_fail212
    eq $I19, 0, rx87_fail212
    nqp_islist $I20, rx87_cstack
    unless $I20, rx87_jump213
    elements $I18, rx87_bstack
    le $I18, 0, rx87_cut214
    dec $I18
    set $I18, rx87_bstack[$I18]
  rx87_cut214:
    assign rx87_cstack, $I18
  rx87_jump213:
    jump $I19
  rx87_done210:
    rx87_cur."!cursor_fail"()
    .return (rx87_cur) 
.end
.HLL "nqp"
.namespace []
.sub "decints" :subid("cuid_41_1431289891.89934") :anon :lex :outer("cuid_234_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 204
    .param pmc __lowered_lex_77 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc self 
    .local pmc __lowered_lex_78 
    set self, __lowered_lex_77
    .local pmc rx91_start
    .local string rx91_tgt
    .local int rx91_pos
    .local int rx91_off
    .local int rx91_eos
    .local int rx91_rep
    .local pmc rx91_cur
    .local pmc rx91_curclass
    .local pmc rx91_bstack
    .local pmc rx91_cstack
    rx91_start = self."!cursor_start_all"()
    set rx91_cur, rx91_start[0]
    set rx91_tgt, rx91_start[1]
    set rx91_pos, rx91_start[2]
    set rx91_curclass, rx91_start[3]
    set rx91_bstack, rx91_start[4]
    set $I19, rx91_start[5]
    store_lex unicode:"$\x{a2}", rx91_cur
    length rx91_eos, rx91_tgt
    eq $I19, 1, rx91_restart225
    gt rx91_pos, rx91_eos, rx91_fail226
    repr_get_attr_int $I11, self, rx91_curclass, "$!from"
    ne $I11, -1, rxscan92_done232
    goto rxscan92_scan231
  rxscan92_loop230:
    inc rx91_pos
    gt rx91_pos, rx91_eos, rx91_fail226
    repr_bind_attr_int rx91_cur, rx91_curclass, "$!from", rx91_pos
  rxscan92_scan231:
    nqp_rxmark rx91_bstack, rxscan92_loop230, rx91_pos, 0
  rxscan92_done232:
    nqp_rxmark rx91_bstack, rxquantr93_done234, -1, 0
  rxquantr93_loop233:
    repr_bind_attr_int rx91_cur, rx91_curclass, "$!pos", rx91_pos
    $P11 = rx91_cur."ws"()
    repr_get_attr_int $I11, $P11, rx91_curclass, "$!pos"
    lt $I11, 0, rx91_fail226
    repr_get_attr_int rx91_pos, $P11, rx91_curclass, "$!pos"
    repr_bind_attr_int rx91_cur, rx91_curclass, "$!pos", rx91_pos
    $P11 = rx91_cur."decint"()
    repr_get_attr_int $I11, $P11, rx91_curclass, "$!pos"
    lt $I11, 0, rx91_fail226
    nqp_rxmark rx91_bstack, rxsubrule95_pass236, -1, 0
  rxsubrule95_pass236:
    rx91_cstack = rx91_cur."!cursor_capture"($P11, "decint")
    repr_get_attr_int rx91_pos, $P11, rx91_curclass, "$!pos"
    repr_bind_attr_int rx91_cur, rx91_curclass, "$!pos", rx91_pos
    $P11 = rx91_cur."ws"()
    repr_get_attr_int $I11, $P11, rx91_curclass, "$!pos"
    lt $I11, 0, rx91_fail226
    repr_get_attr_int rx91_pos, $P11, rx91_curclass, "$!pos"
    nqp_rxpeek $I19, rx91_bstack, rxquantr93_done234
    inc $I19
    inc $I19
    set rx91_rep, rx91_bstack[$I19]
    nqp_rxcommit rx91_bstack, rxquantr93_done234
    inc rx91_rep
    nqp_rxmark rx91_bstack, rxquantr93_done234, rx91_pos, rx91_rep
    add $I11, rx91_pos, 1
    gt $I11, rx91_eos, rx91_fail226
    ord $I11, rx91_tgt, rx91_pos
    ne $I11, 44, rx91_fail226
    add rx91_pos, 1
    goto rxquantr93_loop233
  rxquantr93_done234:
    rx91_cur."!cursor_pass"(rx91_pos, "decints")
    .return (rx91_cur)
  rx91_restart225:
    repr_get_attr_obj rx91_cstack, rx91_cur, rx91_curclass, "$!cstack"
  rx91_fail226:
    unless rx91_bstack, rx91_done224
    pop $I19, rx91_bstack
    if_null rx91_cstack, rx91_cstack_done229
    unless rx91_cstack, rx91_cstack_done229
    dec $I19
    set $P11, rx91_cstack[$I19]
  rx91_cstack_done229:
    pop rx91_rep, rx91_bstack
    pop rx91_pos, rx91_bstack
    pop $I19, rx91_bstack
    lt rx91_pos, -1, rx91_done224
    lt rx91_pos, 0, rx91_fail226
    eq $I19, 0, rx91_fail226
    nqp_islist $I20, rx91_cstack
    unless $I20, rx91_jump227
    elements $I18, rx91_bstack
    le $I18, 0, rx91_cut228
    dec $I18
    set $I18, rx91_bstack[$I18]
  rx91_cut228:
    assign rx91_cstack, $I18
  rx91_jump227:
    jump $I19
  rx91_done224:
    rx91_cur."!cursor_fail"()
    .return (rx91_cur) 
.end
.HLL "nqp"
.namespace []
.sub "hexint" :subid("cuid_42_1431289891.89934") :anon :lex :outer("cuid_234_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 206
    .param pmc __lowered_lex_79 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc self 
    .local pmc __lowered_lex_80 
    set self, __lowered_lex_79
    .local pmc rx97_start
    .local string rx97_tgt
    .local int rx97_pos
    .local int rx97_off
    .local int rx97_eos
    .local int rx97_rep
    .local pmc rx97_cur
    .local pmc rx97_curclass
    .local pmc rx97_bstack
    .local pmc rx97_cstack
    rx97_start = self."!cursor_start_all"()
    set rx97_cur, rx97_start[0]
    set rx97_tgt, rx97_start[1]
    set rx97_pos, rx97_start[2]
    set rx97_curclass, rx97_start[3]
    set rx97_bstack, rx97_start[4]
    set $I19, rx97_start[5]
    store_lex unicode:"$\x{a2}", rx97_cur
    length rx97_eos, rx97_tgt
    eq $I19, 1, rx97_restart240
    gt rx97_pos, rx97_eos, rx97_fail241
    repr_get_attr_int $I11, self, rx97_curclass, "$!from"
    ne $I11, -1, rxscan98_done247
    goto rxscan98_scan246
  rxscan98_loop245:
    inc rx97_pos
    gt rx97_pos, rx97_eos, rx97_fail241
    repr_bind_attr_int rx97_cur, rx97_curclass, "$!from", rx97_pos
  rxscan98_scan246:
    nqp_rxmark rx97_bstack, rxscan98_loop245, rx97_pos, 0
  rxscan98_done247:
    nqp_rxmark rx97_bstack, rxquantr99_done249, -1, 0
  rxquantr99_loop248:
    nqp_rxmark rx97_bstack, rxquantr100_done251, -1, 0
  rxquantr100_loop250:
    new $P11, "ResizableIntegerArray"
    assign $P11, 3
    assign $P11, 0
    nqp_push_label $P11, alt101_0253
    nqp_push_label $P11, alt101_1254
    nqp_push_label $P11, alt101_2255
    nqp_rxmark rx97_bstack, alt101_end252, -1, 0
    rx97_cur."!alt"(rx97_pos, "alt_nfa__3_1431289892.38318", $P11)
    goto rx97_fail241
  alt101_0253:
    ge rx97_pos, rx97_eos, rx97_fail241
    ord $I11, rx97_tgt, rx97_pos
    lt $I11, 48, rx97_fail241
    gt $I11, 57, rx97_fail241
    inc rx97_pos
    goto alt101_end252
  alt101_1254:
    ge rx97_pos, rx97_eos, rx97_fail241
    ord $I11, rx97_tgt, rx97_pos
    lt $I11, 97, rx97_fail241
    gt $I11, 102, rx97_fail241
    inc rx97_pos
    goto alt101_end252
  alt101_2255:
    ge rx97_pos, rx97_eos, rx97_fail241
    ord $I11, rx97_tgt, rx97_pos
    lt $I11, 65, rx97_fail241
    gt $I11, 70, rx97_fail241
    inc rx97_pos
    goto alt101_end252
  alt101_end252:
    nqp_rxpeek $I19, rx97_bstack, rxquantr100_done251
    inc $I19
    inc $I19
    set rx97_rep, rx97_bstack[$I19]
    nqp_rxcommit rx97_bstack, rxquantr100_done251
    inc rx97_rep
    nqp_rxmark rx97_bstack, rxquantr100_done251, rx97_pos, rx97_rep
    goto rxquantr100_loop250
  rxquantr100_done251:
    nqp_rxpeek $I19, rx97_bstack, rxquantr99_done249
    inc $I19
    inc $I19
    set rx97_rep, rx97_bstack[$I19]
    nqp_rxcommit rx97_bstack, rxquantr99_done249
    inc rx97_rep
    nqp_rxmark rx97_bstack, rxquantr99_done249, rx97_pos, rx97_rep
    add $I11, rx97_pos, 1
    gt $I11, rx97_eos, rx97_fail241
    ord $I11, rx97_tgt, rx97_pos
    ne $I11, 95, rx97_fail241
    add rx97_pos, 1
    goto rxquantr99_loop248
  rxquantr99_done249:
    rx97_cur."!cursor_pass"(rx97_pos, "hexint")
    .return (rx97_cur)
  rx97_restart240:
    repr_get_attr_obj rx97_cstack, rx97_cur, rx97_curclass, "$!cstack"
  rx97_fail241:
    unless rx97_bstack, rx97_done239
    pop $I19, rx97_bstack
    if_null rx97_cstack, rx97_cstack_done244
    unless rx97_cstack, rx97_cstack_done244
    dec $I19
    set $P11, rx97_cstack[$I19]
  rx97_cstack_done244:
    pop rx97_rep, rx97_bstack
    pop rx97_pos, rx97_bstack
    pop $I19, rx97_bstack
    lt rx97_pos, -1, rx97_done239
    lt rx97_pos, 0, rx97_fail241
    eq $I19, 0, rx97_fail241
    nqp_islist $I20, rx97_cstack
    unless $I20, rx97_jump242
    elements $I18, rx97_bstack
    le $I18, 0, rx97_cut243
    dec $I18
    set $I18, rx97_bstack[$I18]
  rx97_cut243:
    assign rx97_cstack, $I18
  rx97_jump242:
    jump $I19
  rx97_done239:
    rx97_cur."!cursor_fail"()
    .return (rx97_cur) 
.end
.HLL "nqp"
.namespace []
.sub "hexints" :subid("cuid_43_1431289891.89934") :anon :lex :outer("cuid_234_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 207
    .param pmc __lowered_lex_81 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc self 
    .local pmc __lowered_lex_82 
    set self, __lowered_lex_81
    .local pmc rx102_start
    .local string rx102_tgt
    .local int rx102_pos
    .local int rx102_off
    .local int rx102_eos
    .local int rx102_rep
    .local pmc rx102_cur
    .local pmc rx102_curclass
    .local pmc rx102_bstack
    .local pmc rx102_cstack
    rx102_start = self."!cursor_start_all"()
    set rx102_cur, rx102_start[0]
    set rx102_tgt, rx102_start[1]
    set rx102_pos, rx102_start[2]
    set rx102_curclass, rx102_start[3]
    set rx102_bstack, rx102_start[4]
    set $I19, rx102_start[5]
    store_lex unicode:"$\x{a2}", rx102_cur
    length rx102_eos, rx102_tgt
    eq $I19, 1, rx102_restart258
    gt rx102_pos, rx102_eos, rx102_fail259
    repr_get_attr_int $I11, self, rx102_curclass, "$!from"
    ne $I11, -1, rxscan103_done265
    goto rxscan103_scan264
  rxscan103_loop263:
    inc rx102_pos
    gt rx102_pos, rx102_eos, rx102_fail259
    repr_bind_attr_int rx102_cur, rx102_curclass, "$!from", rx102_pos
  rxscan103_scan264:
    nqp_rxmark rx102_bstack, rxscan103_loop263, rx102_pos, 0
  rxscan103_done265:
    nqp_rxmark rx102_bstack, rxquantr104_done267, -1, 0
  rxquantr104_loop266:
    repr_bind_attr_int rx102_cur, rx102_curclass, "$!pos", rx102_pos
    $P11 = rx102_cur."ws"()
    repr_get_attr_int $I11, $P11, rx102_curclass, "$!pos"
    lt $I11, 0, rx102_fail259
    repr_get_attr_int rx102_pos, $P11, rx102_curclass, "$!pos"
    repr_bind_attr_int rx102_cur, rx102_curclass, "$!pos", rx102_pos
    $P11 = rx102_cur."hexint"()
    repr_get_attr_int $I11, $P11, rx102_curclass, "$!pos"
    lt $I11, 0, rx102_fail259
    nqp_rxmark rx102_bstack, rxsubrule106_pass269, -1, 0
  rxsubrule106_pass269:
    rx102_cstack = rx102_cur."!cursor_capture"($P11, "hexint")
    repr_get_attr_int rx102_pos, $P11, rx102_curclass, "$!pos"
    repr_bind_attr_int rx102_cur, rx102_curclass, "$!pos", rx102_pos
    $P11 = rx102_cur."ws"()
    repr_get_attr_int $I11, $P11, rx102_curclass, "$!pos"
    lt $I11, 0, rx102_fail259
    repr_get_attr_int rx102_pos, $P11, rx102_curclass, "$!pos"
    nqp_rxpeek $I19, rx102_bstack, rxquantr104_done267
    inc $I19
    inc $I19
    set rx102_rep, rx102_bstack[$I19]
    nqp_rxcommit rx102_bstack, rxquantr104_done267
    inc rx102_rep
    nqp_rxmark rx102_bstack, rxquantr104_done267, rx102_pos, rx102_rep
    add $I11, rx102_pos, 1
    gt $I11, rx102_eos, rx102_fail259
    ord $I11, rx102_tgt, rx102_pos
    ne $I11, 44, rx102_fail259
    add rx102_pos, 1
    goto rxquantr104_loop266
  rxquantr104_done267:
    rx102_cur."!cursor_pass"(rx102_pos, "hexints")
    .return (rx102_cur)
  rx102_restart258:
    repr_get_attr_obj rx102_cstack, rx102_cur, rx102_curclass, "$!cstack"
  rx102_fail259:
    unless rx102_bstack, rx102_done257
    pop $I19, rx102_bstack
    if_null rx102_cstack, rx102_cstack_done262
    unless rx102_cstack, rx102_cstack_done262
    dec $I19
    set $P11, rx102_cstack[$I19]
  rx102_cstack_done262:
    pop rx102_rep, rx102_bstack
    pop rx102_pos, rx102_bstack
    pop $I19, rx102_bstack
    lt rx102_pos, -1, rx102_done257
    lt rx102_pos, 0, rx102_fail259
    eq $I19, 0, rx102_fail259
    nqp_islist $I20, rx102_cstack
    unless $I20, rx102_jump260
    elements $I18, rx102_bstack
    le $I18, 0, rx102_cut261
    dec $I18
    set $I18, rx102_bstack[$I18]
  rx102_cut261:
    assign rx102_cstack, $I18
  rx102_jump260:
    jump $I19
  rx102_done257:
    rx102_cur."!cursor_fail"()
    .return (rx102_cur) 
.end
.HLL "nqp"
.namespace []
.sub "octint" :subid("cuid_44_1431289891.89934") :anon :lex :outer("cuid_234_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 209
    .param pmc __lowered_lex_83 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc self 
    .local pmc __lowered_lex_84 
    set self, __lowered_lex_83
    .local pmc rx108_start
    .local string rx108_tgt
    .local int rx108_pos
    .local int rx108_off
    .local int rx108_eos
    .local int rx108_rep
    .local pmc rx108_cur
    .local pmc rx108_curclass
    .local pmc rx108_bstack
    .local pmc rx108_cstack
    rx108_start = self."!cursor_start_all"()
    set rx108_cur, rx108_start[0]
    set rx108_tgt, rx108_start[1]
    set rx108_pos, rx108_start[2]
    set rx108_curclass, rx108_start[3]
    set rx108_bstack, rx108_start[4]
    set $I19, rx108_start[5]
    store_lex unicode:"$\x{a2}", rx108_cur
    length rx108_eos, rx108_tgt
    eq $I19, 1, rx108_restart273
    gt rx108_pos, rx108_eos, rx108_fail274
    repr_get_attr_int $I11, self, rx108_curclass, "$!from"
    ne $I11, -1, rxscan109_done280
    goto rxscan109_scan279
  rxscan109_loop278:
    inc rx108_pos
    gt rx108_pos, rx108_eos, rx108_fail274
    repr_bind_attr_int rx108_cur, rx108_curclass, "$!from", rx108_pos
  rxscan109_scan279:
    nqp_rxmark rx108_bstack, rxscan109_loop278, rx108_pos, 0
  rxscan109_done280:
    nqp_rxmark rx108_bstack, rxquantr110_done282, -1, 0
  rxquantr110_loop281:
    nqp_rxmark rx108_bstack, rxquantr111_done284, -1, 0
  rxquantr111_loop283:
    ge rx108_pos, rx108_eos, rx108_fail274
    ord $I11, rx108_tgt, rx108_pos
    lt $I11, 48, rx108_fail274
    gt $I11, 55, rx108_fail274
    inc rx108_pos
    nqp_rxpeek $I19, rx108_bstack, rxquantr111_done284
    inc $I19
    inc $I19
    set rx108_rep, rx108_bstack[$I19]
    nqp_rxcommit rx108_bstack, rxquantr111_done284
    inc rx108_rep
    nqp_rxmark rx108_bstack, rxquantr111_done284, rx108_pos, rx108_rep
    goto rxquantr111_loop283
  rxquantr111_done284:
    nqp_rxpeek $I19, rx108_bstack, rxquantr110_done282
    inc $I19
    inc $I19
    set rx108_rep, rx108_bstack[$I19]
    nqp_rxcommit rx108_bstack, rxquantr110_done282
    inc rx108_rep
    nqp_rxmark rx108_bstack, rxquantr110_done282, rx108_pos, rx108_rep
    add $I11, rx108_pos, 1
    gt $I11, rx108_eos, rx108_fail274
    ord $I11, rx108_tgt, rx108_pos
    ne $I11, 95, rx108_fail274
    add rx108_pos, 1
    goto rxquantr110_loop281
  rxquantr110_done282:
    rx108_cur."!cursor_pass"(rx108_pos, "octint")
    .return (rx108_cur)
  rx108_restart273:
    repr_get_attr_obj rx108_cstack, rx108_cur, rx108_curclass, "$!cstack"
  rx108_fail274:
    unless rx108_bstack, rx108_done272
    pop $I19, rx108_bstack
    if_null rx108_cstack, rx108_cstack_done277
    unless rx108_cstack, rx108_cstack_done277
    dec $I19
    set $P11, rx108_cstack[$I19]
  rx108_cstack_done277:
    pop rx108_rep, rx108_bstack
    pop rx108_pos, rx108_bstack
    pop $I19, rx108_bstack
    lt rx108_pos, -1, rx108_done272
    lt rx108_pos, 0, rx108_fail274
    eq $I19, 0, rx108_fail274
    nqp_islist $I20, rx108_cstack
    unless $I20, rx108_jump275
    elements $I18, rx108_bstack
    le $I18, 0, rx108_cut276
    dec $I18
    set $I18, rx108_bstack[$I18]
  rx108_cut276:
    assign rx108_cstack, $I18
  rx108_jump275:
    jump $I19
  rx108_done272:
    rx108_cur."!cursor_fail"()
    .return (rx108_cur) 
.end
.HLL "nqp"
.namespace []
.sub "octints" :subid("cuid_45_1431289891.89934") :anon :lex :outer("cuid_234_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 210
    .param pmc __lowered_lex_85 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc self 
    .local pmc __lowered_lex_86 
    set self, __lowered_lex_85
    .local pmc rx112_start
    .local string rx112_tgt
    .local int rx112_pos
    .local int rx112_off
    .local int rx112_eos
    .local int rx112_rep
    .local pmc rx112_cur
    .local pmc rx112_curclass
    .local pmc rx112_bstack
    .local pmc rx112_cstack
    rx112_start = self."!cursor_start_all"()
    set rx112_cur, rx112_start[0]
    set rx112_tgt, rx112_start[1]
    set rx112_pos, rx112_start[2]
    set rx112_curclass, rx112_start[3]
    set rx112_bstack, rx112_start[4]
    set $I19, rx112_start[5]
    store_lex unicode:"$\x{a2}", rx112_cur
    length rx112_eos, rx112_tgt
    eq $I19, 1, rx112_restart287
    gt rx112_pos, rx112_eos, rx112_fail288
    repr_get_attr_int $I11, self, rx112_curclass, "$!from"
    ne $I11, -1, rxscan113_done294
    goto rxscan113_scan293
  rxscan113_loop292:
    inc rx112_pos
    gt rx112_pos, rx112_eos, rx112_fail288
    repr_bind_attr_int rx112_cur, rx112_curclass, "$!from", rx112_pos
  rxscan113_scan293:
    nqp_rxmark rx112_bstack, rxscan113_loop292, rx112_pos, 0
  rxscan113_done294:
    nqp_rxmark rx112_bstack, rxquantr114_done296, -1, 0
  rxquantr114_loop295:
    repr_bind_attr_int rx112_cur, rx112_curclass, "$!pos", rx112_pos
    $P11 = rx112_cur."ws"()
    repr_get_attr_int $I11, $P11, rx112_curclass, "$!pos"
    lt $I11, 0, rx112_fail288
    repr_get_attr_int rx112_pos, $P11, rx112_curclass, "$!pos"
    repr_bind_attr_int rx112_cur, rx112_curclass, "$!pos", rx112_pos
    $P11 = rx112_cur."octint"()
    repr_get_attr_int $I11, $P11, rx112_curclass, "$!pos"
    lt $I11, 0, rx112_fail288
    nqp_rxmark rx112_bstack, rxsubrule116_pass298, -1, 0
  rxsubrule116_pass298:
    rx112_cstack = rx112_cur."!cursor_capture"($P11, "octint")
    repr_get_attr_int rx112_pos, $P11, rx112_curclass, "$!pos"
    repr_bind_attr_int rx112_cur, rx112_curclass, "$!pos", rx112_pos
    $P11 = rx112_cur."ws"()
    repr_get_attr_int $I11, $P11, rx112_curclass, "$!pos"
    lt $I11, 0, rx112_fail288
    repr_get_attr_int rx112_pos, $P11, rx112_curclass, "$!pos"
    nqp_rxpeek $I19, rx112_bstack, rxquantr114_done296
    inc $I19
    inc $I19
    set rx112_rep, rx112_bstack[$I19]
    nqp_rxcommit rx112_bstack, rxquantr114_done296
    inc rx112_rep
    nqp_rxmark rx112_bstack, rxquantr114_done296, rx112_pos, rx112_rep
    add $I11, rx112_pos, 1
    gt $I11, rx112_eos, rx112_fail288
    ord $I11, rx112_tgt, rx112_pos
    ne $I11, 44, rx112_fail288
    add rx112_pos, 1
    goto rxquantr114_loop295
  rxquantr114_done296:
    rx112_cur."!cursor_pass"(rx112_pos, "octints")
    .return (rx112_cur)
  rx112_restart287:
    repr_get_attr_obj rx112_cstack, rx112_cur, rx112_curclass, "$!cstack"
  rx112_fail288:
    unless rx112_bstack, rx112_done286
    pop $I19, rx112_bstack
    if_null rx112_cstack, rx112_cstack_done291
    unless rx112_cstack, rx112_cstack_done291
    dec $I19
    set $P11, rx112_cstack[$I19]
  rx112_cstack_done291:
    pop rx112_rep, rx112_bstack
    pop rx112_pos, rx112_bstack
    pop $I19, rx112_bstack
    lt rx112_pos, -1, rx112_done286
    lt rx112_pos, 0, rx112_fail288
    eq $I19, 0, rx112_fail288
    nqp_islist $I20, rx112_cstack
    unless $I20, rx112_jump289
    elements $I18, rx112_bstack
    le $I18, 0, rx112_cut290
    dec $I18
    set $I18, rx112_bstack[$I18]
  rx112_cut290:
    assign rx112_cstack, $I18
  rx112_jump289:
    jump $I19
  rx112_done286:
    rx112_cur."!cursor_fail"()
    .return (rx112_cur) 
.end
.HLL "nqp"
.namespace []
.sub "binint" :subid("cuid_46_1431289891.89934") :anon :lex :outer("cuid_234_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 212
    .param pmc __lowered_lex_87 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc self 
    .local pmc __lowered_lex_88 
    set self, __lowered_lex_87
    .local pmc rx118_start
    .local string rx118_tgt
    .local int rx118_pos
    .local int rx118_off
    .local int rx118_eos
    .local int rx118_rep
    .local pmc rx118_cur
    .local pmc rx118_curclass
    .local pmc rx118_bstack
    .local pmc rx118_cstack
    rx118_start = self."!cursor_start_all"()
    set rx118_cur, rx118_start[0]
    set rx118_tgt, rx118_start[1]
    set rx118_pos, rx118_start[2]
    set rx118_curclass, rx118_start[3]
    set rx118_bstack, rx118_start[4]
    set $I19, rx118_start[5]
    store_lex unicode:"$\x{a2}", rx118_cur
    length rx118_eos, rx118_tgt
    eq $I19, 1, rx118_restart302
    gt rx118_pos, rx118_eos, rx118_fail303
    repr_get_attr_int $I11, self, rx118_curclass, "$!from"
    ne $I11, -1, rxscan119_done309
    goto rxscan119_scan308
  rxscan119_loop307:
    inc rx118_pos
    gt rx118_pos, rx118_eos, rx118_fail303
    repr_bind_attr_int rx118_cur, rx118_curclass, "$!from", rx118_pos
  rxscan119_scan308:
    nqp_rxmark rx118_bstack, rxscan119_loop307, rx118_pos, 0
  rxscan119_done309:
    nqp_rxmark rx118_bstack, rxquantr120_done311, -1, 0
  rxquantr120_loop310:
    nqp_rxmark rx118_bstack, rxquantr121_done313, -1, 0
  rxquantr121_loop312:
    ge rx118_pos, rx118_eos, rx118_fail303
    ord $I11, rx118_tgt, rx118_pos
    lt $I11, 48, rx118_fail303
    gt $I11, 49, rx118_fail303
    inc rx118_pos
    nqp_rxpeek $I19, rx118_bstack, rxquantr121_done313
    inc $I19
    inc $I19
    set rx118_rep, rx118_bstack[$I19]
    nqp_rxcommit rx118_bstack, rxquantr121_done313
    inc rx118_rep
    nqp_rxmark rx118_bstack, rxquantr121_done313, rx118_pos, rx118_rep
    goto rxquantr121_loop312
  rxquantr121_done313:
    nqp_rxpeek $I19, rx118_bstack, rxquantr120_done311
    inc $I19
    inc $I19
    set rx118_rep, rx118_bstack[$I19]
    nqp_rxcommit rx118_bstack, rxquantr120_done311
    inc rx118_rep
    nqp_rxmark rx118_bstack, rxquantr120_done311, rx118_pos, rx118_rep
    add $I11, rx118_pos, 1
    gt $I11, rx118_eos, rx118_fail303
    ord $I11, rx118_tgt, rx118_pos
    ne $I11, 95, rx118_fail303
    add rx118_pos, 1
    goto rxquantr120_loop310
  rxquantr120_done311:
    rx118_cur."!cursor_pass"(rx118_pos, "binint")
    .return (rx118_cur)
  rx118_restart302:
    repr_get_attr_obj rx118_cstack, rx118_cur, rx118_curclass, "$!cstack"
  rx118_fail303:
    unless rx118_bstack, rx118_done301
    pop $I19, rx118_bstack
    if_null rx118_cstack, rx118_cstack_done306
    unless rx118_cstack, rx118_cstack_done306
    dec $I19
    set $P11, rx118_cstack[$I19]
  rx118_cstack_done306:
    pop rx118_rep, rx118_bstack
    pop rx118_pos, rx118_bstack
    pop $I19, rx118_bstack
    lt rx118_pos, -1, rx118_done301
    lt rx118_pos, 0, rx118_fail303
    eq $I19, 0, rx118_fail303
    nqp_islist $I20, rx118_cstack
    unless $I20, rx118_jump304
    elements $I18, rx118_bstack
    le $I18, 0, rx118_cut305
    dec $I18
    set $I18, rx118_bstack[$I18]
  rx118_cut305:
    assign rx118_cstack, $I18
  rx118_jump304:
    jump $I19
  rx118_done301:
    rx118_cur."!cursor_fail"()
    .return (rx118_cur) 
.end
.HLL "nqp"
.namespace []
.sub "binints" :subid("cuid_47_1431289891.89934") :anon :lex :outer("cuid_234_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 213
    .param pmc __lowered_lex_89 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc self 
    .local pmc __lowered_lex_90 
    set self, __lowered_lex_89
    .local pmc rx122_start
    .local string rx122_tgt
    .local int rx122_pos
    .local int rx122_off
    .local int rx122_eos
    .local int rx122_rep
    .local pmc rx122_cur
    .local pmc rx122_curclass
    .local pmc rx122_bstack
    .local pmc rx122_cstack
    rx122_start = self."!cursor_start_all"()
    set rx122_cur, rx122_start[0]
    set rx122_tgt, rx122_start[1]
    set rx122_pos, rx122_start[2]
    set rx122_curclass, rx122_start[3]
    set rx122_bstack, rx122_start[4]
    set $I19, rx122_start[5]
    store_lex unicode:"$\x{a2}", rx122_cur
    length rx122_eos, rx122_tgt
    eq $I19, 1, rx122_restart316
    gt rx122_pos, rx122_eos, rx122_fail317
    repr_get_attr_int $I11, self, rx122_curclass, "$!from"
    ne $I11, -1, rxscan123_done323
    goto rxscan123_scan322
  rxscan123_loop321:
    inc rx122_pos
    gt rx122_pos, rx122_eos, rx122_fail317
    repr_bind_attr_int rx122_cur, rx122_curclass, "$!from", rx122_pos
  rxscan123_scan322:
    nqp_rxmark rx122_bstack, rxscan123_loop321, rx122_pos, 0
  rxscan123_done323:
    nqp_rxmark rx122_bstack, rxquantr124_done325, -1, 0
  rxquantr124_loop324:
    repr_bind_attr_int rx122_cur, rx122_curclass, "$!pos", rx122_pos
    $P11 = rx122_cur."ws"()
    repr_get_attr_int $I11, $P11, rx122_curclass, "$!pos"
    lt $I11, 0, rx122_fail317
    repr_get_attr_int rx122_pos, $P11, rx122_curclass, "$!pos"
    repr_bind_attr_int rx122_cur, rx122_curclass, "$!pos", rx122_pos
    $P11 = rx122_cur."binint"()
    repr_get_attr_int $I11, $P11, rx122_curclass, "$!pos"
    lt $I11, 0, rx122_fail317
    nqp_rxmark rx122_bstack, rxsubrule126_pass327, -1, 0
  rxsubrule126_pass327:
    rx122_cstack = rx122_cur."!cursor_capture"($P11, "binint")
    repr_get_attr_int rx122_pos, $P11, rx122_curclass, "$!pos"
    repr_bind_attr_int rx122_cur, rx122_curclass, "$!pos", rx122_pos
    $P11 = rx122_cur."ws"()
    repr_get_attr_int $I11, $P11, rx122_curclass, "$!pos"
    lt $I11, 0, rx122_fail317
    repr_get_attr_int rx122_pos, $P11, rx122_curclass, "$!pos"
    nqp_rxpeek $I19, rx122_bstack, rxquantr124_done325
    inc $I19
    inc $I19
    set rx122_rep, rx122_bstack[$I19]
    nqp_rxcommit rx122_bstack, rxquantr124_done325
    inc rx122_rep
    nqp_rxmark rx122_bstack, rxquantr124_done325, rx122_pos, rx122_rep
    add $I11, rx122_pos, 1
    gt $I11, rx122_eos, rx122_fail317
    ord $I11, rx122_tgt, rx122_pos
    ne $I11, 44, rx122_fail317
    add rx122_pos, 1
    goto rxquantr124_loop324
  rxquantr124_done325:
    rx122_cur."!cursor_pass"(rx122_pos, "binints")
    .return (rx122_cur)
  rx122_restart316:
    repr_get_attr_obj rx122_cstack, rx122_cur, rx122_curclass, "$!cstack"
  rx122_fail317:
    unless rx122_bstack, rx122_done315
    pop $I19, rx122_bstack
    if_null rx122_cstack, rx122_cstack_done320
    unless rx122_cstack, rx122_cstack_done320
    dec $I19
    set $P11, rx122_cstack[$I19]
  rx122_cstack_done320:
    pop rx122_rep, rx122_bstack
    pop rx122_pos, rx122_bstack
    pop $I19, rx122_bstack
    lt rx122_pos, -1, rx122_done315
    lt rx122_pos, 0, rx122_fail317
    eq $I19, 0, rx122_fail317
    nqp_islist $I20, rx122_cstack
    unless $I20, rx122_jump318
    elements $I18, rx122_bstack
    le $I18, 0, rx122_cut319
    dec $I18
    set $I18, rx122_bstack[$I18]
  rx122_cut319:
    assign rx122_cstack, $I18
  rx122_jump318:
    jump $I19
  rx122_done315:
    rx122_cur."!cursor_fail"()
    .return (rx122_cur) 
.end
.HLL "nqp"
.namespace []
.sub "integer" :subid("cuid_48_1431289891.89934") :anon :lex :outer("cuid_234_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 215
    .param pmc __lowered_lex_91 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc self 
    .local pmc __lowered_lex_92 
    set self, __lowered_lex_91
    .local pmc rx128_start
    .local string rx128_tgt
    .local int rx128_pos
    .local int rx128_off
    .local int rx128_eos
    .local int rx128_rep
    .local pmc rx128_cur
    .local pmc rx128_curclass
    .local pmc rx128_bstack
    .local pmc rx128_cstack
    rx128_start = self."!cursor_start_all"()
    set rx128_cur, rx128_start[0]
    set rx128_tgt, rx128_start[1]
    set rx128_pos, rx128_start[2]
    set rx128_curclass, rx128_start[3]
    set rx128_bstack, rx128_start[4]
    set $I19, rx128_start[5]
    store_lex unicode:"$\x{a2}", rx128_cur
    length rx128_eos, rx128_tgt
    eq $I19, 1, rx128_restart331
    gt rx128_pos, rx128_eos, rx128_fail332
    repr_get_attr_int $I11, self, rx128_curclass, "$!from"
    ne $I11, -1, rxscan129_done338
    goto rxscan129_scan337
  rxscan129_loop336:
    inc rx128_pos
    gt rx128_pos, rx128_eos, rx128_fail332
    repr_bind_attr_int rx128_cur, rx128_curclass, "$!from", rx128_pos
  rxscan129_scan337:
    nqp_rxmark rx128_bstack, rxscan129_loop336, rx128_pos, 0
  rxscan129_done338:
    new $P11, "ResizableIntegerArray"
    assign $P11, 2
    assign $P11, 0
    nqp_push_label $P11, alt130_0340
    nqp_push_label $P11, alt130_1350
    nqp_rxmark rx128_bstack, alt130_end339, -1, 0
    rx128_cur."!alt"(rx128_pos, "alt_nfa__5_1431289892.46879", $P11)
    goto rx128_fail332
  alt130_0340:
    add $I11, rx128_pos, 1
    gt $I11, rx128_eos, rx128_fail332
    ord $I11, rx128_tgt, rx128_pos
    ne $I11, 48, rx128_fail332
    add rx128_pos, 1
    new $P11, "ResizableIntegerArray"
    assign $P11, 4
    assign $P11, 0
    nqp_push_label $P11, alt131_0342
    nqp_push_label $P11, alt131_1344
    nqp_push_label $P11, alt131_2346
    nqp_push_label $P11, alt131_3348
    nqp_rxmark rx128_bstack, alt131_end341, -1, 0
    rx128_cur."!alt"(rx128_pos, "alt_nfa__4_1431289892.46823", $P11)
    goto rx128_fail332
  alt131_0342:
    add $I11, rx128_pos, 1
    gt $I11, rx128_eos, rx128_fail332
    ord $I11, rx128_tgt, rx128_pos
    ne $I11, 98, rx128_fail332
    add rx128_pos, 1
    repr_bind_attr_int rx128_cur, rx128_curclass, "$!pos", rx128_pos
    $P11 = rx128_cur."binint"()
    repr_get_attr_int $I11, $P11, rx128_curclass, "$!pos"
    lt $I11, 0, rx128_fail332
    nqp_rxmark rx128_bstack, rxsubrule132_pass343, -1, 0
  rxsubrule132_pass343:
    rx128_cstack = rx128_cur."!cursor_capture"($P11, "VALUE=binint")
    repr_get_attr_int rx128_pos, $P11, rx128_curclass, "$!pos"
    goto alt131_end341
  alt131_1344:
    add $I11, rx128_pos, 1
    gt $I11, rx128_eos, rx128_fail332
    ord $I11, rx128_tgt, rx128_pos
    ne $I11, 111, rx128_fail332
    add rx128_pos, 1
    repr_bind_attr_int rx128_cur, rx128_curclass, "$!pos", rx128_pos
    $P11 = rx128_cur."octint"()
    repr_get_attr_int $I11, $P11, rx128_curclass, "$!pos"
    lt $I11, 0, rx128_fail332
    nqp_rxmark rx128_bstack, rxsubrule133_pass345, -1, 0
  rxsubrule133_pass345:
    rx128_cstack = rx128_cur."!cursor_capture"($P11, "VALUE=octint")
    repr_get_attr_int rx128_pos, $P11, rx128_curclass, "$!pos"
    goto alt131_end341
  alt131_2346:
    add $I11, rx128_pos, 1
    gt $I11, rx128_eos, rx128_fail332
    ord $I11, rx128_tgt, rx128_pos
    ne $I11, 120, rx128_fail332
    add rx128_pos, 1
    repr_bind_attr_int rx128_cur, rx128_curclass, "$!pos", rx128_pos
    $P11 = rx128_cur."hexint"()
    repr_get_attr_int $I11, $P11, rx128_curclass, "$!pos"
    lt $I11, 0, rx128_fail332
    nqp_rxmark rx128_bstack, rxsubrule134_pass347, -1, 0
  rxsubrule134_pass347:
    rx128_cstack = rx128_cur."!cursor_capture"($P11, "VALUE=hexint")
    repr_get_attr_int rx128_pos, $P11, rx128_curclass, "$!pos"
    goto alt131_end341
  alt131_3348:
    add $I11, rx128_pos, 1
    gt $I11, rx128_eos, rx128_fail332
    ord $I11, rx128_tgt, rx128_pos
    ne $I11, 100, rx128_fail332
    add rx128_pos, 1
    repr_bind_attr_int rx128_cur, rx128_curclass, "$!pos", rx128_pos
    $P11 = rx128_cur."decint"()
    repr_get_attr_int $I11, $P11, rx128_curclass, "$!pos"
    lt $I11, 0, rx128_fail332
    nqp_rxmark rx128_bstack, rxsubrule135_pass349, -1, 0
  rxsubrule135_pass349:
    rx128_cstack = rx128_cur."!cursor_capture"($P11, "VALUE=decint")
    repr_get_attr_int rx128_pos, $P11, rx128_curclass, "$!pos"
    goto alt131_end341
  alt131_end341:
    nqp_rxcommit rx128_bstack, alt131_end341
    goto alt130_end339
  alt130_1350:
    repr_bind_attr_int rx128_cur, rx128_curclass, "$!pos", rx128_pos
    $P11 = rx128_cur."decint"()
    repr_get_attr_int $I11, $P11, rx128_curclass, "$!pos"
    lt $I11, 0, rx128_fail332
    nqp_rxmark rx128_bstack, rxsubrule136_pass351, -1, 0
  rxsubrule136_pass351:
    rx128_cstack = rx128_cur."!cursor_capture"($P11, "VALUE=decint")
    repr_get_attr_int rx128_pos, $P11, rx128_curclass, "$!pos"
    goto alt130_end339
  alt130_end339:
    nqp_rxcommit rx128_bstack, alt130_end339
    rx128_cur."!cursor_pass"(rx128_pos, "integer")
    .return (rx128_cur)
  rx128_restart331:
    repr_get_attr_obj rx128_cstack, rx128_cur, rx128_curclass, "$!cstack"
  rx128_fail332:
    unless rx128_bstack, rx128_done330
    pop $I19, rx128_bstack
    if_null rx128_cstack, rx128_cstack_done335
    unless rx128_cstack, rx128_cstack_done335
    dec $I19
    set $P11, rx128_cstack[$I19]
  rx128_cstack_done335:
    pop rx128_rep, rx128_bstack
    pop rx128_pos, rx128_bstack
    pop $I19, rx128_bstack
    lt rx128_pos, -1, rx128_done330
    lt rx128_pos, 0, rx128_fail332
    eq $I19, 0, rx128_fail332
    nqp_islist $I20, rx128_cstack
    unless $I20, rx128_jump333
    elements $I18, rx128_bstack
    le $I18, 0, rx128_cut334
    dec $I18
    set $I18, rx128_bstack[$I18]
  rx128_cut334:
    assign rx128_cstack, $I18
  rx128_jump333:
    jump $I19
  rx128_done330:
    rx128_cur."!cursor_fail"()
    .return (rx128_cur) 
.end
.HLL "nqp"
.namespace []
.sub "dec_number" :subid("cuid_49_1431289891.89934") :anon :lex :outer("cuid_234_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 226
    .param pmc __lowered_lex_93 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc self 
    .local pmc __lowered_lex_94 
    set self, __lowered_lex_93
    .local pmc rx137_start
    .local string rx137_tgt
    .local int rx137_pos
    .local int rx137_off
    .local int rx137_eos
    .local int rx137_rep
    .local pmc rx137_cur
    .local pmc rx137_curclass
    .local pmc rx137_bstack
    .local pmc rx137_cstack
    rx137_start = self."!cursor_start_all"()
    set rx137_cur, rx137_start[0]
    set rx137_tgt, rx137_start[1]
    set rx137_pos, rx137_start[2]
    set rx137_curclass, rx137_start[3]
    set rx137_bstack, rx137_start[4]
    set $I19, rx137_start[5]
    store_lex unicode:"$\x{a2}", rx137_cur
    length rx137_eos, rx137_tgt
    eq $I19, 1, rx137_restart354
    gt rx137_pos, rx137_eos, rx137_fail355
    repr_get_attr_int $I11, self, rx137_curclass, "$!from"
    ne $I11, -1, rxscan138_done361
    goto rxscan138_scan360
  rxscan138_loop359:
    inc rx137_pos
    gt rx137_pos, rx137_eos, rx137_fail355
    repr_bind_attr_int rx137_cur, rx137_curclass, "$!from", rx137_pos
  rxscan138_scan360:
    nqp_rxmark rx137_bstack, rxscan138_loop359, rx137_pos, 0
  rxscan138_done361:
    new $P11, "ResizableIntegerArray"
    assign $P11, 3
    assign $P11, 0
    nqp_push_label $P11, alt139_0363
    nqp_push_label $P11, alt139_1372
    nqp_push_label $P11, alt139_2383
    nqp_rxmark rx137_bstack, alt139_end362, -1, 0
    rx137_cur."!alt"(rx137_pos, "alt_nfa__6_1431289892.48349", $P11)
    goto rx137_fail355
  alt139_0363:
    nqp_rxmark rx137_bstack, rxcap140_fail365, rx137_pos, 0
    add $I11, rx137_pos, 1
    gt $I11, rx137_eos, rx137_fail355
    ord $I11, rx137_tgt, rx137_pos
    ne $I11, 46, rx137_fail355
    add rx137_pos, 1
    nqp_rxmark rx137_bstack, rxquantr141_done367, -1, 0
  rxquantr141_loop366:
    ge rx137_pos, rx137_eos, rx137_fail355
    is_cclass $I11, .CCLASS_NUMERIC, rx137_tgt, rx137_pos
    unless $I11, rx137_fail355
    inc rx137_pos
    nqp_rxpeek $I19, rx137_bstack, rxquantr141_done367
    inc $I19
    inc $I19
    set rx137_rep, rx137_bstack[$I19]
    nqp_rxcommit rx137_bstack, rxquantr141_done367
    inc rx137_rep
    nqp_rxmark rx137_bstack, rxquantr141_done367, rx137_pos, rx137_rep
    goto rxquantr141_loop366
  rxquantr141_done367:
    nqp_rxpeek $I19, rx137_bstack, rxcap140_fail365
    inc $I19
    set $I11, rx137_bstack[$I19]
    repr_bind_attr_int rx137_cur, rx137_curclass, "$!pos", rx137_pos
    $P11 = rx137_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx137_pos)
    rx137_cstack = rx137_cur."!cursor_capture"($P11, "coeff")
    goto rxcap140_done364
  rxcap140_fail365:
    goto rx137_fail355
  rxcap140_done364:
    nqp_rxmark rx137_bstack, rxquantr142_done369, rx137_pos, 0
  rxquantr142_loop368:
    repr_bind_attr_int rx137_cur, rx137_curclass, "$!pos", rx137_pos
    $P11 = rx137_cur."escale"()
    repr_get_attr_int $I11, $P11, rx137_curclass, "$!pos"
    lt $I11, 0, rx137_fail355
    goto rxsubrule143_pass370
  rxsubrule143_back371:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx137_curclass, "$!pos"
    lt $I11, 0, rx137_fail355
  rxsubrule143_pass370:
    rx137_cstack = rx137_cur."!cursor_capture"($P11, "escale")
    set_addr $I11, rxsubrule143_back371
    push rx137_bstack, $I11
    push rx137_bstack, 0
    push rx137_bstack, rx137_pos
    elements $I11, rx137_cstack
    push rx137_bstack, $I11
    repr_get_attr_int rx137_pos, $P11, rx137_curclass, "$!pos"
    nqp_rxpeek $I19, rx137_bstack, rxquantr142_done369
    inc $I19
    inc $I19
    set rx137_rep, rx137_bstack[$I19]
    nqp_rxcommit rx137_bstack, rxquantr142_done369
    inc rx137_rep
  rxquantr142_done369:
    goto alt139_end362
  alt139_1372:
    nqp_rxmark rx137_bstack, rxcap144_fail374, rx137_pos, 0
    nqp_rxmark rx137_bstack, rxquantr145_done376, -1, 0
  rxquantr145_loop375:
    ge rx137_pos, rx137_eos, rx137_fail355
    is_cclass $I11, .CCLASS_NUMERIC, rx137_tgt, rx137_pos
    unless $I11, rx137_fail355
    inc rx137_pos
    nqp_rxpeek $I19, rx137_bstack, rxquantr145_done376
    inc $I19
    inc $I19
    set rx137_rep, rx137_bstack[$I19]
    nqp_rxcommit rx137_bstack, rxquantr145_done376
    inc rx137_rep
    nqp_rxmark rx137_bstack, rxquantr145_done376, rx137_pos, rx137_rep
    goto rxquantr145_loop375
  rxquantr145_done376:
    add $I11, rx137_pos, 1
    gt $I11, rx137_eos, rx137_fail355
    ord $I11, rx137_tgt, rx137_pos
    ne $I11, 46, rx137_fail355
    add rx137_pos, 1
    nqp_rxmark rx137_bstack, rxquantr146_done378, -1, 0
  rxquantr146_loop377:
    ge rx137_pos, rx137_eos, rx137_fail355
    is_cclass $I11, .CCLASS_NUMERIC, rx137_tgt, rx137_pos
    unless $I11, rx137_fail355
    inc rx137_pos
    nqp_rxpeek $I19, rx137_bstack, rxquantr146_done378
    inc $I19
    inc $I19
    set rx137_rep, rx137_bstack[$I19]
    nqp_rxcommit rx137_bstack, rxquantr146_done378
    inc rx137_rep
    nqp_rxmark rx137_bstack, rxquantr146_done378, rx137_pos, rx137_rep
    goto rxquantr146_loop377
  rxquantr146_done378:
    nqp_rxpeek $I19, rx137_bstack, rxcap144_fail374
    inc $I19
    set $I11, rx137_bstack[$I19]
    repr_bind_attr_int rx137_cur, rx137_curclass, "$!pos", rx137_pos
    $P11 = rx137_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx137_pos)
    rx137_cstack = rx137_cur."!cursor_capture"($P11, "coeff")
    goto rxcap144_done373
  rxcap144_fail374:
    goto rx137_fail355
  rxcap144_done373:
    nqp_rxmark rx137_bstack, rxquantr147_done380, rx137_pos, 0
  rxquantr147_loop379:
    repr_bind_attr_int rx137_cur, rx137_curclass, "$!pos", rx137_pos
    $P11 = rx137_cur."escale"()
    repr_get_attr_int $I11, $P11, rx137_curclass, "$!pos"
    lt $I11, 0, rx137_fail355
    goto rxsubrule148_pass381
  rxsubrule148_back382:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx137_curclass, "$!pos"
    lt $I11, 0, rx137_fail355
  rxsubrule148_pass381:
    rx137_cstack = rx137_cur."!cursor_capture"($P11, "escale")
    set_addr $I11, rxsubrule148_back382
    push rx137_bstack, $I11
    push rx137_bstack, 0
    push rx137_bstack, rx137_pos
    elements $I11, rx137_cstack
    push rx137_bstack, $I11
    repr_get_attr_int rx137_pos, $P11, rx137_curclass, "$!pos"
    nqp_rxpeek $I19, rx137_bstack, rxquantr147_done380
    inc $I19
    inc $I19
    set rx137_rep, rx137_bstack[$I19]
    nqp_rxcommit rx137_bstack, rxquantr147_done380
    inc rx137_rep
  rxquantr147_done380:
    goto alt139_end362
  alt139_2383:
    nqp_rxmark rx137_bstack, rxcap149_fail385, rx137_pos, 0
    nqp_rxmark rx137_bstack, rxquantr150_done387, -1, 0
  rxquantr150_loop386:
    ge rx137_pos, rx137_eos, rx137_fail355
    is_cclass $I11, .CCLASS_NUMERIC, rx137_tgt, rx137_pos
    unless $I11, rx137_fail355
    inc rx137_pos
    nqp_rxpeek $I19, rx137_bstack, rxquantr150_done387
    inc $I19
    inc $I19
    set rx137_rep, rx137_bstack[$I19]
    nqp_rxcommit rx137_bstack, rxquantr150_done387
    inc rx137_rep
    nqp_rxmark rx137_bstack, rxquantr150_done387, rx137_pos, rx137_rep
    goto rxquantr150_loop386
  rxquantr150_done387:
    nqp_rxpeek $I19, rx137_bstack, rxcap149_fail385
    inc $I19
    set $I11, rx137_bstack[$I19]
    repr_bind_attr_int rx137_cur, rx137_curclass, "$!pos", rx137_pos
    $P11 = rx137_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx137_pos)
    rx137_cstack = rx137_cur."!cursor_capture"($P11, "coeff")
    goto rxcap149_done384
  rxcap149_fail385:
    goto rx137_fail355
  rxcap149_done384:
    repr_bind_attr_int rx137_cur, rx137_curclass, "$!pos", rx137_pos
    $P11 = rx137_cur."escale"()
    repr_get_attr_int $I11, $P11, rx137_curclass, "$!pos"
    lt $I11, 0, rx137_fail355
    nqp_rxmark rx137_bstack, rxsubrule151_pass388, -1, 0
  rxsubrule151_pass388:
    rx137_cstack = rx137_cur."!cursor_capture"($P11, "escale")
    repr_get_attr_int rx137_pos, $P11, rx137_curclass, "$!pos"
    goto alt139_end362
  alt139_end362:
    rx137_cur."!cursor_pass"(rx137_pos, "dec_number")
    .return (rx137_cur)
  rx137_restart354:
    repr_get_attr_obj rx137_cstack, rx137_cur, rx137_curclass, "$!cstack"
  rx137_fail355:
    unless rx137_bstack, rx137_done353
    pop $I19, rx137_bstack
    if_null rx137_cstack, rx137_cstack_done358
    unless rx137_cstack, rx137_cstack_done358
    dec $I19
    set $P11, rx137_cstack[$I19]
  rx137_cstack_done358:
    pop rx137_rep, rx137_bstack
    pop rx137_pos, rx137_bstack
    pop $I19, rx137_bstack
    lt rx137_pos, -1, rx137_done353
    lt rx137_pos, 0, rx137_fail355
    eq $I19, 0, rx137_fail355
    nqp_islist $I20, rx137_cstack
    unless $I20, rx137_jump356
    elements $I18, rx137_bstack
    le $I18, 0, rx137_cut357
    dec $I18
    set $I18, rx137_bstack[$I18]
  rx137_cut357:
    assign rx137_cstack, $I18
  rx137_jump356:
    jump $I19
  rx137_done353:
    rx137_cur."!cursor_fail"()
    .return (rx137_cur) 
.end
.HLL "nqp"
.namespace []
.sub "escale" :subid("cuid_50_1431289891.89934") :anon :lex :outer("cuid_234_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 232
    .param pmc __lowered_lex_95 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc self 
    .local pmc __lowered_lex_96 
    set self, __lowered_lex_95
    .local pmc rx152_start
    .local string rx152_tgt
    .local int rx152_pos
    .local int rx152_off
    .local int rx152_eos
    .local int rx152_rep
    .local pmc rx152_cur
    .local pmc rx152_curclass
    .local pmc rx152_bstack
    .local pmc rx152_cstack
    rx152_start = self."!cursor_start_all"()
    set rx152_cur, rx152_start[0]
    set rx152_tgt, rx152_start[1]
    set rx152_pos, rx152_start[2]
    set rx152_curclass, rx152_start[3]
    set rx152_bstack, rx152_start[4]
    set $I19, rx152_start[5]
    store_lex unicode:"$\x{a2}", rx152_cur
    length rx152_eos, rx152_tgt
    eq $I19, 1, rx152_restart391
    gt rx152_pos, rx152_eos, rx152_fail392
    repr_get_attr_int $I11, self, rx152_curclass, "$!from"
    ne $I11, -1, rxscan153_done398
    goto rxscan153_scan397
  rxscan153_loop396:
    inc rx152_pos
    gt rx152_pos, rx152_eos, rx152_fail392
    repr_bind_attr_int rx152_cur, rx152_curclass, "$!from", rx152_pos
  rxscan153_scan397:
    nqp_rxmark rx152_bstack, rxscan153_loop396, rx152_pos, 0
  rxscan153_done398:
    ge rx152_pos, rx152_eos, rx152_fail392
    substr $S11, rx152_tgt, rx152_pos, 1
    index $I11, ucs4:"Ee", $S11
    lt $I11, 0, rx152_fail392
    inc rx152_pos
    nqp_rxmark rx152_bstack, rxquantr154_done400, rx152_pos, 0
  rxquantr154_loop399:
    ge rx152_pos, rx152_eos, rx152_fail392
    substr $S11, rx152_tgt, rx152_pos, 1
    index $I11, ucs4:"+-", $S11
    lt $I11, 0, rx152_fail392
    inc rx152_pos
    nqp_rxpeek $I19, rx152_bstack, rxquantr154_done400
    inc $I19
    inc $I19
    set rx152_rep, rx152_bstack[$I19]
    nqp_rxcommit rx152_bstack, rxquantr154_done400
    inc rx152_rep
  rxquantr154_done400:
    nqp_rxmark rx152_bstack, rxquantr155_done402, -1, 0
  rxquantr155_loop401:
    ge rx152_pos, rx152_eos, rx152_fail392
    is_cclass $I11, .CCLASS_NUMERIC, rx152_tgt, rx152_pos
    unless $I11, rx152_fail392
    inc rx152_pos
    nqp_rxpeek $I19, rx152_bstack, rxquantr155_done402
    inc $I19
    inc $I19
    set rx152_rep, rx152_bstack[$I19]
    nqp_rxcommit rx152_bstack, rxquantr155_done402
    inc rx152_rep
    nqp_rxmark rx152_bstack, rxquantr155_done402, rx152_pos, rx152_rep
    goto rxquantr155_loop401
  rxquantr155_done402:
    rx152_cur."!cursor_pass"(rx152_pos, "escale")
    .return (rx152_cur)
  rx152_restart391:
    repr_get_attr_obj rx152_cstack, rx152_cur, rx152_curclass, "$!cstack"
  rx152_fail392:
    unless rx152_bstack, rx152_done390
    pop $I19, rx152_bstack
    if_null rx152_cstack, rx152_cstack_done395
    unless rx152_cstack, rx152_cstack_done395
    dec $I19
    set $P11, rx152_cstack[$I19]
  rx152_cstack_done395:
    pop rx152_rep, rx152_bstack
    pop rx152_pos, rx152_bstack
    pop $I19, rx152_bstack
    lt rx152_pos, -1, rx152_done390
    lt rx152_pos, 0, rx152_fail392
    eq $I19, 0, rx152_fail392
    nqp_islist $I20, rx152_cstack
    unless $I20, rx152_jump393
    elements $I18, rx152_bstack
    le $I18, 0, rx152_cut394
    dec $I18
    set $I18, rx152_bstack[$I18]
  rx152_cut394:
    assign rx152_cstack, $I18
  rx152_jump393:
    jump $I19
  rx152_done390:
    rx152_cur."!cursor_fail"()
    .return (rx152_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape" :subid("cuid_51_1431289891.89934") :anon :lex :outer("cuid_234_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 234
    .param pmc self 
    $P5001 = self."!protoregex"("quote_escape")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<backslash>" :subid("cuid_52_1431289891.89934") :anon :lex :outer("cuid_234_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 235
    .param pmc __lowered_lex_97 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc self 
    .local pmc __lowered_lex_98 
    set self, __lowered_lex_97
    .local pmc rx156_start
    .local string rx156_tgt
    .local int rx156_pos
    .local int rx156_off
    .local int rx156_eos
    .local int rx156_rep
    .local pmc rx156_cur
    .local pmc rx156_curclass
    .local pmc rx156_bstack
    .local pmc rx156_cstack
    rx156_start = self."!cursor_start_all"()
    set rx156_cur, rx156_start[0]
    set rx156_tgt, rx156_start[1]
    set rx156_pos, rx156_start[2]
    set rx156_curclass, rx156_start[3]
    set rx156_bstack, rx156_start[4]
    set $I19, rx156_start[5]
    store_lex unicode:"$\x{a2}", rx156_cur
    length rx156_eos, rx156_tgt
    eq $I19, 1, rx156_restart405
    gt rx156_pos, rx156_eos, rx156_fail406
    repr_get_attr_int $I11, self, rx156_curclass, "$!from"
    ne $I11, -1, rxscan157_done412
    goto rxscan157_scan411
  rxscan157_loop410:
    inc rx156_pos
    gt rx156_pos, rx156_eos, rx156_fail406
    repr_bind_attr_int rx156_cur, rx156_curclass, "$!from", rx156_pos
  rxscan157_scan411:
    nqp_rxmark rx156_bstack, rxscan157_loop410, rx156_pos, 0
  rxscan157_done412:
    ge rx156_pos, rx156_eos, rx156_fail406
    substr $S11, rx156_tgt, rx156_pos, 1
    index $I11, ucs4:"\\", $S11
    lt $I11, 0, rx156_fail406
    inc rx156_pos
    ge rx156_pos, rx156_eos, rx156_fail406
    substr $S11, rx156_tgt, rx156_pos, 1
    index $I11, ucs4:"\\", $S11
    lt $I11, 0, rx156_fail406
    inc rx156_pos
    repr_bind_attr_int rx156_cur, rx156_curclass, "$!pos", rx156_pos
    $P11 = rx156_cur."quotemod_check"("q")
    repr_get_attr_int $I11, $P11, rx156_curclass, "$!pos"
    lt $I11, 0, rx156_fail406
    rx156_cur."!cursor_pass"(rx156_pos, "quote_escape:sym<backslash>")
    .return (rx156_cur)
  rx156_restart405:
    repr_get_attr_obj rx156_cstack, rx156_cur, rx156_curclass, "$!cstack"
  rx156_fail406:
    unless rx156_bstack, rx156_done404
    pop $I19, rx156_bstack
    if_null rx156_cstack, rx156_cstack_done409
    unless rx156_cstack, rx156_cstack_done409
    dec $I19
    set $P11, rx156_cstack[$I19]
  rx156_cstack_done409:
    pop rx156_rep, rx156_bstack
    pop rx156_pos, rx156_bstack
    pop $I19, rx156_bstack
    lt rx156_pos, -1, rx156_done404
    lt rx156_pos, 0, rx156_fail406
    eq $I19, 0, rx156_fail406
    nqp_islist $I20, rx156_cstack
    unless $I20, rx156_jump407
    elements $I18, rx156_bstack
    le $I18, 0, rx156_cut408
    dec $I18
    set $I18, rx156_bstack[$I18]
  rx156_cut408:
    assign rx156_cstack, $I18
  rx156_jump407:
    jump $I19
  rx156_done404:
    rx156_cur."!cursor_fail"()
    .return (rx156_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<stopper>" :subid("cuid_53_1431289891.89934") :anon :lex :outer("cuid_234_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 236
    .param pmc __lowered_lex_99 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc self 
    .local pmc __lowered_lex_100 
    set self, __lowered_lex_99
    .local pmc rx158_start
    .local string rx158_tgt
    .local int rx158_pos
    .local int rx158_off
    .local int rx158_eos
    .local int rx158_rep
    .local pmc rx158_cur
    .local pmc rx158_curclass
    .local pmc rx158_bstack
    .local pmc rx158_cstack
    rx158_start = self."!cursor_start_all"()
    set rx158_cur, rx158_start[0]
    set rx158_tgt, rx158_start[1]
    set rx158_pos, rx158_start[2]
    set rx158_curclass, rx158_start[3]
    set rx158_bstack, rx158_start[4]
    set $I19, rx158_start[5]
    store_lex unicode:"$\x{a2}", rx158_cur
    length rx158_eos, rx158_tgt
    eq $I19, 1, rx158_restart415
    gt rx158_pos, rx158_eos, rx158_fail416
    repr_get_attr_int $I11, self, rx158_curclass, "$!from"
    ne $I11, -1, rxscan159_done422
    goto rxscan159_scan421
  rxscan159_loop420:
    inc rx158_pos
    gt rx158_pos, rx158_eos, rx158_fail416
    repr_bind_attr_int rx158_cur, rx158_curclass, "$!from", rx158_pos
  rxscan159_scan421:
    nqp_rxmark rx158_bstack, rxscan159_loop420, rx158_pos, 0
  rxscan159_done422:
    ge rx158_pos, rx158_eos, rx158_fail416
    substr $S11, rx158_tgt, rx158_pos, 1
    index $I11, ucs4:"\\", $S11
    lt $I11, 0, rx158_fail416
    inc rx158_pos
    repr_bind_attr_int rx158_cur, rx158_curclass, "$!pos", rx158_pos
    $P11 = rx158_cur."quotemod_check"("q")
    repr_get_attr_int $I11, $P11, rx158_curclass, "$!pos"
    lt $I11, 0, rx158_fail416
    repr_bind_attr_int rx158_cur, rx158_curclass, "$!pos", rx158_pos
    $P11 = rx158_cur."stopper"()
    repr_get_attr_int $I11, $P11, rx158_curclass, "$!pos"
    lt $I11, 0, rx158_fail416
    nqp_rxmark rx158_bstack, rxsubrule160_pass423, -1, 0
  rxsubrule160_pass423:
    rx158_cstack = rx158_cur."!cursor_capture"($P11, "stopper")
    repr_get_attr_int rx158_pos, $P11, rx158_curclass, "$!pos"
    rx158_cur."!cursor_pass"(rx158_pos, "quote_escape:sym<stopper>")
    .return (rx158_cur)
  rx158_restart415:
    repr_get_attr_obj rx158_cstack, rx158_cur, rx158_curclass, "$!cstack"
  rx158_fail416:
    unless rx158_bstack, rx158_done414
    pop $I19, rx158_bstack
    if_null rx158_cstack, rx158_cstack_done419
    unless rx158_cstack, rx158_cstack_done419
    dec $I19
    set $P11, rx158_cstack[$I19]
  rx158_cstack_done419:
    pop rx158_rep, rx158_bstack
    pop rx158_pos, rx158_bstack
    pop $I19, rx158_bstack
    lt rx158_pos, -1, rx158_done414
    lt rx158_pos, 0, rx158_fail416
    eq $I19, 0, rx158_fail416
    nqp_islist $I20, rx158_cstack
    unless $I20, rx158_jump417
    elements $I18, rx158_bstack
    le $I18, 0, rx158_cut418
    dec $I18
    set $I18, rx158_bstack[$I18]
  rx158_cut418:
    assign rx158_cstack, $I18
  rx158_jump417:
    jump $I19
  rx158_done414:
    rx158_cur."!cursor_fail"()
    .return (rx158_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<bs>" :subid("cuid_54_1431289891.89934") :anon :lex :outer("cuid_234_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 238
    .param pmc __lowered_lex_101 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc self 
    .local pmc __lowered_lex_102 
    set self, __lowered_lex_101
    .local pmc rx161_start
    .local string rx161_tgt
    .local int rx161_pos
    .local int rx161_off
    .local int rx161_eos
    .local int rx161_rep
    .local pmc rx161_cur
    .local pmc rx161_curclass
    .local pmc rx161_bstack
    .local pmc rx161_cstack
    rx161_start = self."!cursor_start_all"()
    set rx161_cur, rx161_start[0]
    set rx161_tgt, rx161_start[1]
    set rx161_pos, rx161_start[2]
    set rx161_curclass, rx161_start[3]
    set rx161_bstack, rx161_start[4]
    set $I19, rx161_start[5]
    store_lex unicode:"$\x{a2}", rx161_cur
    length rx161_eos, rx161_tgt
    eq $I19, 1, rx161_restart426
    gt rx161_pos, rx161_eos, rx161_fail427
    repr_get_attr_int $I11, self, rx161_curclass, "$!from"
    ne $I11, -1, rxscan162_done433
    goto rxscan162_scan432
  rxscan162_loop431:
    inc rx161_pos
    gt rx161_pos, rx161_eos, rx161_fail427
    repr_bind_attr_int rx161_cur, rx161_curclass, "$!from", rx161_pos
  rxscan162_scan432:
    nqp_rxmark rx161_bstack, rxscan162_loop431, rx161_pos, 0
  rxscan162_done433:
    ge rx161_pos, rx161_eos, rx161_fail427
    substr $S11, rx161_tgt, rx161_pos, 1
    index $I11, ucs4:"\\", $S11
    lt $I11, 0, rx161_fail427
    inc rx161_pos
    add $I11, rx161_pos, 1
    gt $I11, rx161_eos, rx161_fail427
    ord $I11, rx161_tgt, rx161_pos
    ne $I11, 98, rx161_fail427
    add rx161_pos, 1
    repr_bind_attr_int rx161_cur, rx161_curclass, "$!pos", rx161_pos
    $P11 = rx161_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx161_curclass, "$!pos"
    lt $I11, 0, rx161_fail427
    rx161_cur."!cursor_pass"(rx161_pos, "quote_escape:sym<bs>")
    .return (rx161_cur)
  rx161_restart426:
    repr_get_attr_obj rx161_cstack, rx161_cur, rx161_curclass, "$!cstack"
  rx161_fail427:
    unless rx161_bstack, rx161_done425
    pop $I19, rx161_bstack
    if_null rx161_cstack, rx161_cstack_done430
    unless rx161_cstack, rx161_cstack_done430
    dec $I19
    set $P11, rx161_cstack[$I19]
  rx161_cstack_done430:
    pop rx161_rep, rx161_bstack
    pop rx161_pos, rx161_bstack
    pop $I19, rx161_bstack
    lt rx161_pos, -1, rx161_done425
    lt rx161_pos, 0, rx161_fail427
    eq $I19, 0, rx161_fail427
    nqp_islist $I20, rx161_cstack
    unless $I20, rx161_jump428
    elements $I18, rx161_bstack
    le $I18, 0, rx161_cut429
    dec $I18
    set $I18, rx161_bstack[$I18]
  rx161_cut429:
    assign rx161_cstack, $I18
  rx161_jump428:
    jump $I19
  rx161_done425:
    rx161_cur."!cursor_fail"()
    .return (rx161_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<nl>" :subid("cuid_55_1431289891.89934") :anon :lex :outer("cuid_234_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 239
    .param pmc __lowered_lex_103 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc self 
    .local pmc __lowered_lex_104 
    set self, __lowered_lex_103
    .local pmc rx163_start
    .local string rx163_tgt
    .local int rx163_pos
    .local int rx163_off
    .local int rx163_eos
    .local int rx163_rep
    .local pmc rx163_cur
    .local pmc rx163_curclass
    .local pmc rx163_bstack
    .local pmc rx163_cstack
    rx163_start = self."!cursor_start_all"()
    set rx163_cur, rx163_start[0]
    set rx163_tgt, rx163_start[1]
    set rx163_pos, rx163_start[2]
    set rx163_curclass, rx163_start[3]
    set rx163_bstack, rx163_start[4]
    set $I19, rx163_start[5]
    store_lex unicode:"$\x{a2}", rx163_cur
    length rx163_eos, rx163_tgt
    eq $I19, 1, rx163_restart436
    gt rx163_pos, rx163_eos, rx163_fail437
    repr_get_attr_int $I11, self, rx163_curclass, "$!from"
    ne $I11, -1, rxscan164_done443
    goto rxscan164_scan442
  rxscan164_loop441:
    inc rx163_pos
    gt rx163_pos, rx163_eos, rx163_fail437
    repr_bind_attr_int rx163_cur, rx163_curclass, "$!from", rx163_pos
  rxscan164_scan442:
    nqp_rxmark rx163_bstack, rxscan164_loop441, rx163_pos, 0
  rxscan164_done443:
    ge rx163_pos, rx163_eos, rx163_fail437
    substr $S11, rx163_tgt, rx163_pos, 1
    index $I11, ucs4:"\\", $S11
    lt $I11, 0, rx163_fail437
    inc rx163_pos
    add $I11, rx163_pos, 1
    gt $I11, rx163_eos, rx163_fail437
    ord $I11, rx163_tgt, rx163_pos
    ne $I11, 110, rx163_fail437
    add rx163_pos, 1
    repr_bind_attr_int rx163_cur, rx163_curclass, "$!pos", rx163_pos
    $P11 = rx163_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx163_curclass, "$!pos"
    lt $I11, 0, rx163_fail437
    rx163_cur."!cursor_pass"(rx163_pos, "quote_escape:sym<nl>")
    .return (rx163_cur)
  rx163_restart436:
    repr_get_attr_obj rx163_cstack, rx163_cur, rx163_curclass, "$!cstack"
  rx163_fail437:
    unless rx163_bstack, rx163_done435
    pop $I19, rx163_bstack
    if_null rx163_cstack, rx163_cstack_done440
    unless rx163_cstack, rx163_cstack_done440
    dec $I19
    set $P11, rx163_cstack[$I19]
  rx163_cstack_done440:
    pop rx163_rep, rx163_bstack
    pop rx163_pos, rx163_bstack
    pop $I19, rx163_bstack
    lt rx163_pos, -1, rx163_done435
    lt rx163_pos, 0, rx163_fail437
    eq $I19, 0, rx163_fail437
    nqp_islist $I20, rx163_cstack
    unless $I20, rx163_jump438
    elements $I18, rx163_bstack
    le $I18, 0, rx163_cut439
    dec $I18
    set $I18, rx163_bstack[$I18]
  rx163_cut439:
    assign rx163_cstack, $I18
  rx163_jump438:
    jump $I19
  rx163_done435:
    rx163_cur."!cursor_fail"()
    .return (rx163_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<cr>" :subid("cuid_56_1431289891.89934") :anon :lex :outer("cuid_234_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 240
    .param pmc __lowered_lex_105 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc self 
    .local pmc __lowered_lex_106 
    set self, __lowered_lex_105
    .local pmc rx165_start
    .local string rx165_tgt
    .local int rx165_pos
    .local int rx165_off
    .local int rx165_eos
    .local int rx165_rep
    .local pmc rx165_cur
    .local pmc rx165_curclass
    .local pmc rx165_bstack
    .local pmc rx165_cstack
    rx165_start = self."!cursor_start_all"()
    set rx165_cur, rx165_start[0]
    set rx165_tgt, rx165_start[1]
    set rx165_pos, rx165_start[2]
    set rx165_curclass, rx165_start[3]
    set rx165_bstack, rx165_start[4]
    set $I19, rx165_start[5]
    store_lex unicode:"$\x{a2}", rx165_cur
    length rx165_eos, rx165_tgt
    eq $I19, 1, rx165_restart446
    gt rx165_pos, rx165_eos, rx165_fail447
    repr_get_attr_int $I11, self, rx165_curclass, "$!from"
    ne $I11, -1, rxscan166_done453
    goto rxscan166_scan452
  rxscan166_loop451:
    inc rx165_pos
    gt rx165_pos, rx165_eos, rx165_fail447
    repr_bind_attr_int rx165_cur, rx165_curclass, "$!from", rx165_pos
  rxscan166_scan452:
    nqp_rxmark rx165_bstack, rxscan166_loop451, rx165_pos, 0
  rxscan166_done453:
    ge rx165_pos, rx165_eos, rx165_fail447
    substr $S11, rx165_tgt, rx165_pos, 1
    index $I11, ucs4:"\\", $S11
    lt $I11, 0, rx165_fail447
    inc rx165_pos
    add $I11, rx165_pos, 1
    gt $I11, rx165_eos, rx165_fail447
    ord $I11, rx165_tgt, rx165_pos
    ne $I11, 114, rx165_fail447
    add rx165_pos, 1
    repr_bind_attr_int rx165_cur, rx165_curclass, "$!pos", rx165_pos
    $P11 = rx165_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx165_curclass, "$!pos"
    lt $I11, 0, rx165_fail447
    rx165_cur."!cursor_pass"(rx165_pos, "quote_escape:sym<cr>")
    .return (rx165_cur)
  rx165_restart446:
    repr_get_attr_obj rx165_cstack, rx165_cur, rx165_curclass, "$!cstack"
  rx165_fail447:
    unless rx165_bstack, rx165_done445
    pop $I19, rx165_bstack
    if_null rx165_cstack, rx165_cstack_done450
    unless rx165_cstack, rx165_cstack_done450
    dec $I19
    set $P11, rx165_cstack[$I19]
  rx165_cstack_done450:
    pop rx165_rep, rx165_bstack
    pop rx165_pos, rx165_bstack
    pop $I19, rx165_bstack
    lt rx165_pos, -1, rx165_done445
    lt rx165_pos, 0, rx165_fail447
    eq $I19, 0, rx165_fail447
    nqp_islist $I20, rx165_cstack
    unless $I20, rx165_jump448
    elements $I18, rx165_bstack
    le $I18, 0, rx165_cut449
    dec $I18
    set $I18, rx165_bstack[$I18]
  rx165_cut449:
    assign rx165_cstack, $I18
  rx165_jump448:
    jump $I19
  rx165_done445:
    rx165_cur."!cursor_fail"()
    .return (rx165_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<tab>" :subid("cuid_57_1431289891.89934") :anon :lex :outer("cuid_234_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 241
    .param pmc __lowered_lex_107 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc self 
    .local pmc __lowered_lex_108 
    set self, __lowered_lex_107
    .local pmc rx167_start
    .local string rx167_tgt
    .local int rx167_pos
    .local int rx167_off
    .local int rx167_eos
    .local int rx167_rep
    .local pmc rx167_cur
    .local pmc rx167_curclass
    .local pmc rx167_bstack
    .local pmc rx167_cstack
    rx167_start = self."!cursor_start_all"()
    set rx167_cur, rx167_start[0]
    set rx167_tgt, rx167_start[1]
    set rx167_pos, rx167_start[2]
    set rx167_curclass, rx167_start[3]
    set rx167_bstack, rx167_start[4]
    set $I19, rx167_start[5]
    store_lex unicode:"$\x{a2}", rx167_cur
    length rx167_eos, rx167_tgt
    eq $I19, 1, rx167_restart456
    gt rx167_pos, rx167_eos, rx167_fail457
    repr_get_attr_int $I11, self, rx167_curclass, "$!from"
    ne $I11, -1, rxscan168_done463
    goto rxscan168_scan462
  rxscan168_loop461:
    inc rx167_pos
    gt rx167_pos, rx167_eos, rx167_fail457
    repr_bind_attr_int rx167_cur, rx167_curclass, "$!from", rx167_pos
  rxscan168_scan462:
    nqp_rxmark rx167_bstack, rxscan168_loop461, rx167_pos, 0
  rxscan168_done463:
    ge rx167_pos, rx167_eos, rx167_fail457
    substr $S11, rx167_tgt, rx167_pos, 1
    index $I11, ucs4:"\\", $S11
    lt $I11, 0, rx167_fail457
    inc rx167_pos
    add $I11, rx167_pos, 1
    gt $I11, rx167_eos, rx167_fail457
    ord $I11, rx167_tgt, rx167_pos
    ne $I11, 116, rx167_fail457
    add rx167_pos, 1
    repr_bind_attr_int rx167_cur, rx167_curclass, "$!pos", rx167_pos
    $P11 = rx167_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx167_curclass, "$!pos"
    lt $I11, 0, rx167_fail457
    rx167_cur."!cursor_pass"(rx167_pos, "quote_escape:sym<tab>")
    .return (rx167_cur)
  rx167_restart456:
    repr_get_attr_obj rx167_cstack, rx167_cur, rx167_curclass, "$!cstack"
  rx167_fail457:
    unless rx167_bstack, rx167_done455
    pop $I19, rx167_bstack
    if_null rx167_cstack, rx167_cstack_done460
    unless rx167_cstack, rx167_cstack_done460
    dec $I19
    set $P11, rx167_cstack[$I19]
  rx167_cstack_done460:
    pop rx167_rep, rx167_bstack
    pop rx167_pos, rx167_bstack
    pop $I19, rx167_bstack
    lt rx167_pos, -1, rx167_done455
    lt rx167_pos, 0, rx167_fail457
    eq $I19, 0, rx167_fail457
    nqp_islist $I20, rx167_cstack
    unless $I20, rx167_jump458
    elements $I18, rx167_bstack
    le $I18, 0, rx167_cut459
    dec $I18
    set $I18, rx167_bstack[$I18]
  rx167_cut459:
    assign rx167_cstack, $I18
  rx167_jump458:
    jump $I19
  rx167_done455:
    rx167_cur."!cursor_fail"()
    .return (rx167_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<ff>" :subid("cuid_58_1431289891.89934") :anon :lex :outer("cuid_234_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 242
    .param pmc __lowered_lex_109 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc self 
    .local pmc __lowered_lex_110 
    set self, __lowered_lex_109
    .local pmc rx169_start
    .local string rx169_tgt
    .local int rx169_pos
    .local int rx169_off
    .local int rx169_eos
    .local int rx169_rep
    .local pmc rx169_cur
    .local pmc rx169_curclass
    .local pmc rx169_bstack
    .local pmc rx169_cstack
    rx169_start = self."!cursor_start_all"()
    set rx169_cur, rx169_start[0]
    set rx169_tgt, rx169_start[1]
    set rx169_pos, rx169_start[2]
    set rx169_curclass, rx169_start[3]
    set rx169_bstack, rx169_start[4]
    set $I19, rx169_start[5]
    store_lex unicode:"$\x{a2}", rx169_cur
    length rx169_eos, rx169_tgt
    eq $I19, 1, rx169_restart466
    gt rx169_pos, rx169_eos, rx169_fail467
    repr_get_attr_int $I11, self, rx169_curclass, "$!from"
    ne $I11, -1, rxscan170_done473
    goto rxscan170_scan472
  rxscan170_loop471:
    inc rx169_pos
    gt rx169_pos, rx169_eos, rx169_fail467
    repr_bind_attr_int rx169_cur, rx169_curclass, "$!from", rx169_pos
  rxscan170_scan472:
    nqp_rxmark rx169_bstack, rxscan170_loop471, rx169_pos, 0
  rxscan170_done473:
    ge rx169_pos, rx169_eos, rx169_fail467
    substr $S11, rx169_tgt, rx169_pos, 1
    index $I11, ucs4:"\\", $S11
    lt $I11, 0, rx169_fail467
    inc rx169_pos
    add $I11, rx169_pos, 1
    gt $I11, rx169_eos, rx169_fail467
    ord $I11, rx169_tgt, rx169_pos
    ne $I11, 102, rx169_fail467
    add rx169_pos, 1
    repr_bind_attr_int rx169_cur, rx169_curclass, "$!pos", rx169_pos
    $P11 = rx169_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx169_curclass, "$!pos"
    lt $I11, 0, rx169_fail467
    rx169_cur."!cursor_pass"(rx169_pos, "quote_escape:sym<ff>")
    .return (rx169_cur)
  rx169_restart466:
    repr_get_attr_obj rx169_cstack, rx169_cur, rx169_curclass, "$!cstack"
  rx169_fail467:
    unless rx169_bstack, rx169_done465
    pop $I19, rx169_bstack
    if_null rx169_cstack, rx169_cstack_done470
    unless rx169_cstack, rx169_cstack_done470
    dec $I19
    set $P11, rx169_cstack[$I19]
  rx169_cstack_done470:
    pop rx169_rep, rx169_bstack
    pop rx169_pos, rx169_bstack
    pop $I19, rx169_bstack
    lt rx169_pos, -1, rx169_done465
    lt rx169_pos, 0, rx169_fail467
    eq $I19, 0, rx169_fail467
    nqp_islist $I20, rx169_cstack
    unless $I20, rx169_jump468
    elements $I18, rx169_bstack
    le $I18, 0, rx169_cut469
    dec $I18
    set $I18, rx169_bstack[$I18]
  rx169_cut469:
    assign rx169_cstack, $I18
  rx169_jump468:
    jump $I19
  rx169_done465:
    rx169_cur."!cursor_fail"()
    .return (rx169_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<esc>" :subid("cuid_59_1431289891.89934") :anon :lex :outer("cuid_234_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 243
    .param pmc __lowered_lex_111 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc self 
    .local pmc __lowered_lex_112 
    set self, __lowered_lex_111
    .local pmc rx171_start
    .local string rx171_tgt
    .local int rx171_pos
    .local int rx171_off
    .local int rx171_eos
    .local int rx171_rep
    .local pmc rx171_cur
    .local pmc rx171_curclass
    .local pmc rx171_bstack
    .local pmc rx171_cstack
    rx171_start = self."!cursor_start_all"()
    set rx171_cur, rx171_start[0]
    set rx171_tgt, rx171_start[1]
    set rx171_pos, rx171_start[2]
    set rx171_curclass, rx171_start[3]
    set rx171_bstack, rx171_start[4]
    set $I19, rx171_start[5]
    store_lex unicode:"$\x{a2}", rx171_cur
    length rx171_eos, rx171_tgt
    eq $I19, 1, rx171_restart476
    gt rx171_pos, rx171_eos, rx171_fail477
    repr_get_attr_int $I11, self, rx171_curclass, "$!from"
    ne $I11, -1, rxscan172_done483
    goto rxscan172_scan482
  rxscan172_loop481:
    inc rx171_pos
    gt rx171_pos, rx171_eos, rx171_fail477
    repr_bind_attr_int rx171_cur, rx171_curclass, "$!from", rx171_pos
  rxscan172_scan482:
    nqp_rxmark rx171_bstack, rxscan172_loop481, rx171_pos, 0
  rxscan172_done483:
    ge rx171_pos, rx171_eos, rx171_fail477
    substr $S11, rx171_tgt, rx171_pos, 1
    index $I11, ucs4:"\\", $S11
    lt $I11, 0, rx171_fail477
    inc rx171_pos
    add $I11, rx171_pos, 1
    gt $I11, rx171_eos, rx171_fail477
    ord $I11, rx171_tgt, rx171_pos
    ne $I11, 101, rx171_fail477
    add rx171_pos, 1
    repr_bind_attr_int rx171_cur, rx171_curclass, "$!pos", rx171_pos
    $P11 = rx171_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx171_curclass, "$!pos"
    lt $I11, 0, rx171_fail477
    rx171_cur."!cursor_pass"(rx171_pos, "quote_escape:sym<esc>")
    .return (rx171_cur)
  rx171_restart476:
    repr_get_attr_obj rx171_cstack, rx171_cur, rx171_curclass, "$!cstack"
  rx171_fail477:
    unless rx171_bstack, rx171_done475
    pop $I19, rx171_bstack
    if_null rx171_cstack, rx171_cstack_done480
    unless rx171_cstack, rx171_cstack_done480
    dec $I19
    set $P11, rx171_cstack[$I19]
  rx171_cstack_done480:
    pop rx171_rep, rx171_bstack
    pop rx171_pos, rx171_bstack
    pop $I19, rx171_bstack
    lt rx171_pos, -1, rx171_done475
    lt rx171_pos, 0, rx171_fail477
    eq $I19, 0, rx171_fail477
    nqp_islist $I20, rx171_cstack
    unless $I20, rx171_jump478
    elements $I18, rx171_bstack
    le $I18, 0, rx171_cut479
    dec $I18
    set $I18, rx171_bstack[$I18]
  rx171_cut479:
    assign rx171_cstack, $I18
  rx171_jump478:
    jump $I19
  rx171_done475:
    rx171_cur."!cursor_fail"()
    .return (rx171_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<hex>" :subid("cuid_60_1431289891.89934") :anon :lex :outer("cuid_234_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 244
    .param pmc __lowered_lex_113 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc self 
    .local pmc __lowered_lex_114 
    set self, __lowered_lex_113
    .local pmc rx173_start
    .local string rx173_tgt
    .local int rx173_pos
    .local int rx173_off
    .local int rx173_eos
    .local int rx173_rep
    .local pmc rx173_cur
    .local pmc rx173_curclass
    .local pmc rx173_bstack
    .local pmc rx173_cstack
    rx173_start = self."!cursor_start_all"()
    set rx173_cur, rx173_start[0]
    set rx173_tgt, rx173_start[1]
    set rx173_pos, rx173_start[2]
    set rx173_curclass, rx173_start[3]
    set rx173_bstack, rx173_start[4]
    set $I19, rx173_start[5]
    store_lex unicode:"$\x{a2}", rx173_cur
    length rx173_eos, rx173_tgt
    eq $I19, 1, rx173_restart486
    gt rx173_pos, rx173_eos, rx173_fail487
    repr_get_attr_int $I11, self, rx173_curclass, "$!from"
    ne $I11, -1, rxscan174_done493
    goto rxscan174_scan492
  rxscan174_loop491:
    inc rx173_pos
    gt rx173_pos, rx173_eos, rx173_fail487
    repr_bind_attr_int rx173_cur, rx173_curclass, "$!from", rx173_pos
  rxscan174_scan492:
    nqp_rxmark rx173_bstack, rxscan174_loop491, rx173_pos, 0
  rxscan174_done493:
    ge rx173_pos, rx173_eos, rx173_fail487
    substr $S11, rx173_tgt, rx173_pos, 1
    index $I11, ucs4:"\\", $S11
    lt $I11, 0, rx173_fail487
    inc rx173_pos
    add $I11, rx173_pos, 1
    gt $I11, rx173_eos, rx173_fail487
    ord $I11, rx173_tgt, rx173_pos
    ne $I11, 120, rx173_fail487
    add rx173_pos, 1
    repr_bind_attr_int rx173_cur, rx173_curclass, "$!pos", rx173_pos
    $P11 = rx173_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx173_curclass, "$!pos"
    lt $I11, 0, rx173_fail487
    new $P11, "ResizableIntegerArray"
    assign $P11, 2
    assign $P11, 0
    nqp_push_label $P11, alt175_0495
    nqp_push_label $P11, alt175_1497
    nqp_rxmark rx173_bstack, alt175_end494, -1, 0
    rx173_cur."!alt"(rx173_pos, "alt_nfa__7_1431289892.5408", $P11)
    goto rx173_fail487
  alt175_0495:
    repr_bind_attr_int rx173_cur, rx173_curclass, "$!pos", rx173_pos
    $P11 = rx173_cur."hexint"()
    repr_get_attr_int $I11, $P11, rx173_curclass, "$!pos"
    lt $I11, 0, rx173_fail487
    nqp_rxmark rx173_bstack, rxsubrule176_pass496, -1, 0
  rxsubrule176_pass496:
    rx173_cstack = rx173_cur."!cursor_capture"($P11, "hexint")
    repr_get_attr_int rx173_pos, $P11, rx173_curclass, "$!pos"
    goto alt175_end494
  alt175_1497:
    add $I11, rx173_pos, 1
    gt $I11, rx173_eos, rx173_fail487
    ord $I11, rx173_tgt, rx173_pos
    ne $I11, 91, rx173_fail487
    add rx173_pos, 1
    repr_bind_attr_int rx173_cur, rx173_curclass, "$!pos", rx173_pos
    $P11 = rx173_cur."hexints"()
    repr_get_attr_int $I11, $P11, rx173_curclass, "$!pos"
    lt $I11, 0, rx173_fail487
    nqp_rxmark rx173_bstack, rxsubrule177_pass498, -1, 0
  rxsubrule177_pass498:
    rx173_cstack = rx173_cur."!cursor_capture"($P11, "hexints")
    repr_get_attr_int rx173_pos, $P11, rx173_curclass, "$!pos"
    add $I11, rx173_pos, 1
    gt $I11, rx173_eos, rx173_fail487
    ord $I11, rx173_tgt, rx173_pos
    ne $I11, 93, rx173_fail487
    add rx173_pos, 1
    goto alt175_end494
  alt175_end494:
    nqp_rxcommit rx173_bstack, alt175_end494
    rx173_cur."!cursor_pass"(rx173_pos, "quote_escape:sym<hex>")
    .return (rx173_cur)
  rx173_restart486:
    repr_get_attr_obj rx173_cstack, rx173_cur, rx173_curclass, "$!cstack"
  rx173_fail487:
    unless rx173_bstack, rx173_done485
    pop $I19, rx173_bstack
    if_null rx173_cstack, rx173_cstack_done490
    unless rx173_cstack, rx173_cstack_done490
    dec $I19
    set $P11, rx173_cstack[$I19]
  rx173_cstack_done490:
    pop rx173_rep, rx173_bstack
    pop rx173_pos, rx173_bstack
    pop $I19, rx173_bstack
    lt rx173_pos, -1, rx173_done485
    lt rx173_pos, 0, rx173_fail487
    eq $I19, 0, rx173_fail487
    nqp_islist $I20, rx173_cstack
    unless $I20, rx173_jump488
    elements $I18, rx173_bstack
    le $I18, 0, rx173_cut489
    dec $I18
    set $I18, rx173_bstack[$I18]
  rx173_cut489:
    assign rx173_cstack, $I18
  rx173_jump488:
    jump $I19
  rx173_done485:
    rx173_cur."!cursor_fail"()
    .return (rx173_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<oct>" :subid("cuid_61_1431289891.89934") :anon :lex :outer("cuid_234_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 248
    .param pmc __lowered_lex_115 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc self 
    .local pmc __lowered_lex_116 
    set self, __lowered_lex_115
    .local pmc rx178_start
    .local string rx178_tgt
    .local int rx178_pos
    .local int rx178_off
    .local int rx178_eos
    .local int rx178_rep
    .local pmc rx178_cur
    .local pmc rx178_curclass
    .local pmc rx178_bstack
    .local pmc rx178_cstack
    rx178_start = self."!cursor_start_all"()
    set rx178_cur, rx178_start[0]
    set rx178_tgt, rx178_start[1]
    set rx178_pos, rx178_start[2]
    set rx178_curclass, rx178_start[3]
    set rx178_bstack, rx178_start[4]
    set $I19, rx178_start[5]
    store_lex unicode:"$\x{a2}", rx178_cur
    length rx178_eos, rx178_tgt
    eq $I19, 1, rx178_restart501
    gt rx178_pos, rx178_eos, rx178_fail502
    repr_get_attr_int $I11, self, rx178_curclass, "$!from"
    ne $I11, -1, rxscan179_done508
    goto rxscan179_scan507
  rxscan179_loop506:
    inc rx178_pos
    gt rx178_pos, rx178_eos, rx178_fail502
    repr_bind_attr_int rx178_cur, rx178_curclass, "$!from", rx178_pos
  rxscan179_scan507:
    nqp_rxmark rx178_bstack, rxscan179_loop506, rx178_pos, 0
  rxscan179_done508:
    ge rx178_pos, rx178_eos, rx178_fail502
    substr $S11, rx178_tgt, rx178_pos, 1
    index $I11, ucs4:"\\", $S11
    lt $I11, 0, rx178_fail502
    inc rx178_pos
    add $I11, rx178_pos, 1
    gt $I11, rx178_eos, rx178_fail502
    ord $I11, rx178_tgt, rx178_pos
    ne $I11, 111, rx178_fail502
    add rx178_pos, 1
    repr_bind_attr_int rx178_cur, rx178_curclass, "$!pos", rx178_pos
    $P11 = rx178_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx178_curclass, "$!pos"
    lt $I11, 0, rx178_fail502
    new $P11, "ResizableIntegerArray"
    assign $P11, 2
    assign $P11, 0
    nqp_push_label $P11, alt180_0510
    nqp_push_label $P11, alt180_1512
    nqp_rxmark rx178_bstack, alt180_end509, -1, 0
    rx178_cur."!alt"(rx178_pos, "alt_nfa__8_1431289892.55036", $P11)
    goto rx178_fail502
  alt180_0510:
    repr_bind_attr_int rx178_cur, rx178_curclass, "$!pos", rx178_pos
    $P11 = rx178_cur."octint"()
    repr_get_attr_int $I11, $P11, rx178_curclass, "$!pos"
    lt $I11, 0, rx178_fail502
    nqp_rxmark rx178_bstack, rxsubrule181_pass511, -1, 0
  rxsubrule181_pass511:
    rx178_cstack = rx178_cur."!cursor_capture"($P11, "octint")
    repr_get_attr_int rx178_pos, $P11, rx178_curclass, "$!pos"
    goto alt180_end509
  alt180_1512:
    add $I11, rx178_pos, 1
    gt $I11, rx178_eos, rx178_fail502
    ord $I11, rx178_tgt, rx178_pos
    ne $I11, 91, rx178_fail502
    add rx178_pos, 1
    repr_bind_attr_int rx178_cur, rx178_curclass, "$!pos", rx178_pos
    $P11 = rx178_cur."octints"()
    repr_get_attr_int $I11, $P11, rx178_curclass, "$!pos"
    lt $I11, 0, rx178_fail502
    nqp_rxmark rx178_bstack, rxsubrule182_pass513, -1, 0
  rxsubrule182_pass513:
    rx178_cstack = rx178_cur."!cursor_capture"($P11, "octints")
    repr_get_attr_int rx178_pos, $P11, rx178_curclass, "$!pos"
    add $I11, rx178_pos, 1
    gt $I11, rx178_eos, rx178_fail502
    ord $I11, rx178_tgt, rx178_pos
    ne $I11, 93, rx178_fail502
    add rx178_pos, 1
    goto alt180_end509
  alt180_end509:
    nqp_rxcommit rx178_bstack, alt180_end509
    rx178_cur."!cursor_pass"(rx178_pos, "quote_escape:sym<oct>")
    .return (rx178_cur)
  rx178_restart501:
    repr_get_attr_obj rx178_cstack, rx178_cur, rx178_curclass, "$!cstack"
  rx178_fail502:
    unless rx178_bstack, rx178_done500
    pop $I19, rx178_bstack
    if_null rx178_cstack, rx178_cstack_done505
    unless rx178_cstack, rx178_cstack_done505
    dec $I19
    set $P11, rx178_cstack[$I19]
  rx178_cstack_done505:
    pop rx178_rep, rx178_bstack
    pop rx178_pos, rx178_bstack
    pop $I19, rx178_bstack
    lt rx178_pos, -1, rx178_done500
    lt rx178_pos, 0, rx178_fail502
    eq $I19, 0, rx178_fail502
    nqp_islist $I20, rx178_cstack
    unless $I20, rx178_jump503
    elements $I18, rx178_bstack
    le $I18, 0, rx178_cut504
    dec $I18
    set $I18, rx178_bstack[$I18]
  rx178_cut504:
    assign rx178_cstack, $I18
  rx178_jump503:
    jump $I19
  rx178_done500:
    rx178_cur."!cursor_fail"()
    .return (rx178_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<chr>" :subid("cuid_62_1431289891.89934") :anon :lex :outer("cuid_234_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 252
    .param pmc __lowered_lex_117 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc self 
    .local pmc __lowered_lex_118 
    set self, __lowered_lex_117
    .local pmc rx183_start
    .local string rx183_tgt
    .local int rx183_pos
    .local int rx183_off
    .local int rx183_eos
    .local int rx183_rep
    .local pmc rx183_cur
    .local pmc rx183_curclass
    .local pmc rx183_bstack
    .local pmc rx183_cstack
    rx183_start = self."!cursor_start_all"()
    set rx183_cur, rx183_start[0]
    set rx183_tgt, rx183_start[1]
    set rx183_pos, rx183_start[2]
    set rx183_curclass, rx183_start[3]
    set rx183_bstack, rx183_start[4]
    set $I19, rx183_start[5]
    store_lex unicode:"$\x{a2}", rx183_cur
    length rx183_eos, rx183_tgt
    eq $I19, 1, rx183_restart516
    gt rx183_pos, rx183_eos, rx183_fail517
    repr_get_attr_int $I11, self, rx183_curclass, "$!from"
    ne $I11, -1, rxscan184_done523
    goto rxscan184_scan522
  rxscan184_loop521:
    inc rx183_pos
    gt rx183_pos, rx183_eos, rx183_fail517
    repr_bind_attr_int rx183_cur, rx183_curclass, "$!from", rx183_pos
  rxscan184_scan522:
    nqp_rxmark rx183_bstack, rxscan184_loop521, rx183_pos, 0
  rxscan184_done523:
    ge rx183_pos, rx183_eos, rx183_fail517
    substr $S11, rx183_tgt, rx183_pos, 1
    index $I11, ucs4:"\\", $S11
    lt $I11, 0, rx183_fail517
    inc rx183_pos
    add $I11, rx183_pos, 1
    gt $I11, rx183_eos, rx183_fail517
    ord $I11, rx183_tgt, rx183_pos
    ne $I11, 99, rx183_fail517
    add rx183_pos, 1
    repr_bind_attr_int rx183_cur, rx183_curclass, "$!pos", rx183_pos
    $P11 = rx183_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx183_curclass, "$!pos"
    lt $I11, 0, rx183_fail517
    repr_bind_attr_int rx183_cur, rx183_curclass, "$!pos", rx183_pos
    $P11 = rx183_cur."charspec"()
    repr_get_attr_int $I11, $P11, rx183_curclass, "$!pos"
    lt $I11, 0, rx183_fail517
    nqp_rxmark rx183_bstack, rxsubrule185_pass524, -1, 0
  rxsubrule185_pass524:
    rx183_cstack = rx183_cur."!cursor_capture"($P11, "charspec")
    repr_get_attr_int rx183_pos, $P11, rx183_curclass, "$!pos"
    rx183_cur."!cursor_pass"(rx183_pos, "quote_escape:sym<chr>")
    .return (rx183_cur)
  rx183_restart516:
    repr_get_attr_obj rx183_cstack, rx183_cur, rx183_curclass, "$!cstack"
  rx183_fail517:
    unless rx183_bstack, rx183_done515
    pop $I19, rx183_bstack
    if_null rx183_cstack, rx183_cstack_done520
    unless rx183_cstack, rx183_cstack_done520
    dec $I19
    set $P11, rx183_cstack[$I19]
  rx183_cstack_done520:
    pop rx183_rep, rx183_bstack
    pop rx183_pos, rx183_bstack
    pop $I19, rx183_bstack
    lt rx183_pos, -1, rx183_done515
    lt rx183_pos, 0, rx183_fail517
    eq $I19, 0, rx183_fail517
    nqp_islist $I20, rx183_cstack
    unless $I20, rx183_jump518
    elements $I18, rx183_bstack
    le $I18, 0, rx183_cut519
    dec $I18
    set $I18, rx183_bstack[$I18]
  rx183_cut519:
    assign rx183_cstack, $I18
  rx183_jump518:
    jump $I19
  rx183_done515:
    rx183_cur."!cursor_fail"()
    .return (rx183_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<0>" :subid("cuid_63_1431289891.89934") :anon :lex :outer("cuid_234_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 253
    .param pmc __lowered_lex_119 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc self 
    .local pmc __lowered_lex_120 
    set self, __lowered_lex_119
    .local pmc rx186_start
    .local string rx186_tgt
    .local int rx186_pos
    .local int rx186_off
    .local int rx186_eos
    .local int rx186_rep
    .local pmc rx186_cur
    .local pmc rx186_curclass
    .local pmc rx186_bstack
    .local pmc rx186_cstack
    rx186_start = self."!cursor_start_all"()
    set rx186_cur, rx186_start[0]
    set rx186_tgt, rx186_start[1]
    set rx186_pos, rx186_start[2]
    set rx186_curclass, rx186_start[3]
    set rx186_bstack, rx186_start[4]
    set $I19, rx186_start[5]
    store_lex unicode:"$\x{a2}", rx186_cur
    length rx186_eos, rx186_tgt
    eq $I19, 1, rx186_restart527
    gt rx186_pos, rx186_eos, rx186_fail528
    repr_get_attr_int $I11, self, rx186_curclass, "$!from"
    ne $I11, -1, rxscan187_done534
    goto rxscan187_scan533
  rxscan187_loop532:
    inc rx186_pos
    gt rx186_pos, rx186_eos, rx186_fail528
    repr_bind_attr_int rx186_cur, rx186_curclass, "$!from", rx186_pos
  rxscan187_scan533:
    nqp_rxmark rx186_bstack, rxscan187_loop532, rx186_pos, 0
  rxscan187_done534:
    ge rx186_pos, rx186_eos, rx186_fail528
    substr $S11, rx186_tgt, rx186_pos, 1
    index $I11, ucs4:"\\", $S11
    lt $I11, 0, rx186_fail528
    inc rx186_pos
    nqp_rxmark rx186_bstack, rxcap188_fail536, rx186_pos, 0
    add $I11, rx186_pos, 1
    gt $I11, rx186_eos, rx186_fail528
    ord $I11, rx186_tgt, rx186_pos
    ne $I11, 48, rx186_fail528
    add rx186_pos, 1
    nqp_rxpeek $I19, rx186_bstack, rxcap188_fail536
    inc $I19
    set $I11, rx186_bstack[$I19]
    repr_bind_attr_int rx186_cur, rx186_curclass, "$!pos", rx186_pos
    $P11 = rx186_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx186_pos)
    rx186_cstack = rx186_cur."!cursor_capture"($P11, "sym")
    goto rxcap188_done535
  rxcap188_fail536:
    goto rx186_fail528
  rxcap188_done535:
    repr_bind_attr_int rx186_cur, rx186_curclass, "$!pos", rx186_pos
    $P11 = rx186_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx186_curclass, "$!pos"
    lt $I11, 0, rx186_fail528
    rx186_cur."!cursor_pass"(rx186_pos, "quote_escape:sym<0>")
    .return (rx186_cur)
  rx186_restart527:
    repr_get_attr_obj rx186_cstack, rx186_cur, rx186_curclass, "$!cstack"
  rx186_fail528:
    unless rx186_bstack, rx186_done526
    pop $I19, rx186_bstack
    if_null rx186_cstack, rx186_cstack_done531
    unless rx186_cstack, rx186_cstack_done531
    dec $I19
    set $P11, rx186_cstack[$I19]
  rx186_cstack_done531:
    pop rx186_rep, rx186_bstack
    pop rx186_pos, rx186_bstack
    pop $I19, rx186_bstack
    lt rx186_pos, -1, rx186_done526
    lt rx186_pos, 0, rx186_fail528
    eq $I19, 0, rx186_fail528
    nqp_islist $I20, rx186_cstack
    unless $I20, rx186_jump529
    elements $I18, rx186_bstack
    le $I18, 0, rx186_cut530
    dec $I18
    set $I18, rx186_bstack[$I18]
  rx186_cut530:
    assign rx186_cstack, $I18
  rx186_jump529:
    jump $I19
  rx186_done526:
    rx186_cur."!cursor_fail"()
    .return (rx186_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<misc>" :subid("cuid_64_1431289891.89934") :anon :lex :outer("cuid_234_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 254
    .param pmc __lowered_lex_121 
    .const 'Sub' $P5013 = 'cuid_65_1431289891.89934' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_66_1431289891.89934' 
    capture_lex $P5013 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc self 
    .local pmc __lowered_lex_122 
    .local pmc fb_tmp_10 
    set self, __lowered_lex_121
    .local pmc rx189_start
    .local string rx189_tgt
    .local int rx189_pos
    .local int rx189_off
    .local int rx189_eos
    .local int rx189_rep
    .local pmc rx189_cur
    .local pmc rx189_curclass
    .local pmc rx189_bstack
    .local pmc rx189_cstack
    rx189_start = self."!cursor_start_all"()
    set rx189_cur, rx189_start[0]
    set rx189_tgt, rx189_start[1]
    set rx189_pos, rx189_start[2]
    set rx189_curclass, rx189_start[3]
    set rx189_bstack, rx189_start[4]
    set $I19, rx189_start[5]
    store_lex unicode:"$\x{a2}", rx189_cur
    length rx189_eos, rx189_tgt
    eq $I19, 1, rx189_restart539
    gt rx189_pos, rx189_eos, rx189_fail540
    repr_get_attr_int $I11, self, rx189_curclass, "$!from"
    ne $I11, -1, rxscan190_done546
    goto rxscan190_scan545
  rxscan190_loop544:
    inc rx189_pos
    gt rx189_pos, rx189_eos, rx189_fail540
    repr_bind_attr_int rx189_cur, rx189_curclass, "$!from", rx189_pos
  rxscan190_scan545:
    nqp_rxmark rx189_bstack, rxscan190_loop544, rx189_pos, 0
  rxscan190_done546:
    ge rx189_pos, rx189_eos, rx189_fail540
    substr $S11, rx189_tgt, rx189_pos, 1
    index $I11, ucs4:"\\", $S11
    lt $I11, 0, rx189_fail540
    inc rx189_pos
    repr_bind_attr_int rx189_cur, rx189_curclass, "$!pos", rx189_pos
    store_lex unicode:"$\x{a2}", rx189_cur
    $P5001 = $P101."MATCH"()
    set __lowered_lex_122, $P5001
.annotate 'line', 255
    nqp_get_sc_object $P5002, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
  alt191_0548:
    nqp_rxmark rx189_bstack, alt191_1571, rx189_pos, 0
    repr_bind_attr_int rx189_cur, rx189_curclass, "$!pos", rx189_pos
    $P11 = rx189_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx189_curclass, "$!pos"
    lt $I11, 0, rx189_fail540
    new $P11, "ResizableIntegerArray"
    assign $P11, 2
    assign $P11, 0
    nqp_push_label $P11, alt192_0550
    nqp_push_label $P11, alt192_1559
    nqp_rxmark rx189_bstack, alt192_end549, -1, 0
    rx189_cur."!alt"(rx189_pos, "alt_nfa__9_1431289892.57955", $P11)
    goto rx189_fail540
  alt192_0550:
    .const 'Sub' $P5003 = 'cuid_65_1431289891.89934' 
    capture_lex $P5003
    repr_bind_attr_int rx189_cur, rx189_curclass, "$!pos", rx189_pos
    $P11 = rx189_cur.$P5003()
    repr_get_attr_int $I11, $P11, rx189_curclass, "$!pos"
    lt $I11, 0, rx189_fail540
    nqp_rxmark rx189_bstack, rxsubrule194_pass558, -1, 0
  rxsubrule194_pass558:
    rx189_cstack = rx189_cur."!cursor_capture"($P11, "textqq")
    repr_get_attr_int rx189_pos, $P11, rx189_curclass, "$!pos"
    goto alt192_end549
  alt192_1559:
    .const 'Sub' $P5004 = 'cuid_66_1431289891.89934' 
    capture_lex $P5004
    repr_bind_attr_int rx189_cur, rx189_curclass, "$!pos", rx189_pos
    $P11 = rx189_cur.$P5004()
    repr_get_attr_int $I11, $P11, rx189_curclass, "$!pos"
    lt $I11, 0, rx189_fail540
    nqp_rxmark rx189_bstack, rxsubrule196_pass567, -1, 0
  rxsubrule196_pass567:
    rx189_cstack = rx189_cur."!cursor_capture"($P11, "0")
    repr_get_attr_int rx189_pos, $P11, rx189_curclass, "$!pos"
    repr_bind_attr_int rx189_cur, rx189_curclass, "$!pos", rx189_pos
    store_lex unicode:"$\x{a2}", rx189_cur
    $P5005 = $P101."MATCH"()
    set __lowered_lex_122, $P5005
.annotate 'line', 260
    nqp_decontainerize $P5006, __lowered_lex_121
    set fb_tmp_10, __lowered_lex_122
    repr_defined $I5001, fb_tmp_10
    unless $I5001 goto if197_else568 
    set $P5007, fb_tmp_10[0]
    set $P5009, $P5007
    goto if197_end569
  if197_else568:
    null $P5008
    set $P5009, $P5008
  if197_end569:
    unless_null $P5009, vivi_198570
    nqp_get_sc_object $P5010, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5009, $P5010
  vivi_198570:
    $P5011 = $P5009."Str"()
    $P5012 = $P5006."throw_unrecog_backslash_seq"($P5011)
    goto alt192_end549
  alt192_end549:
    nqp_rxcommit rx189_bstack, alt192_end549
    goto alt191_end547
  alt191_1571:
    nqp_rxmark rx189_bstack, rxcap199_fail573, rx189_pos, 0
    ge rx189_pos, rx189_eos, rx189_fail540
    inc rx189_pos
    nqp_rxpeek $I19, rx189_bstack, rxcap199_fail573
    inc $I19
    set $I11, rx189_bstack[$I19]
    repr_bind_attr_int rx189_cur, rx189_curclass, "$!pos", rx189_pos
    $P11 = rx189_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx189_pos)
    rx189_cstack = rx189_cur."!cursor_capture"($P11, "textq")
    goto rxcap199_done572
  rxcap199_fail573:
    goto rx189_fail540
  rxcap199_done572:
  alt191_end547:
    rx189_cur."!cursor_pass"(rx189_pos, "quote_escape:sym<misc>")
    .return (rx189_cur)
  rx189_restart539:
    repr_get_attr_obj rx189_cstack, rx189_cur, rx189_curclass, "$!cstack"
  rx189_fail540:
    unless rx189_bstack, rx189_done538
    pop $I19, rx189_bstack
    if_null rx189_cstack, rx189_cstack_done543
    unless rx189_cstack, rx189_cstack_done543
    dec $I19
    set $P11, rx189_cstack[$I19]
  rx189_cstack_done543:
    pop rx189_rep, rx189_bstack
    pop rx189_pos, rx189_bstack
    pop $I19, rx189_bstack
    lt rx189_pos, -1, rx189_done538
    lt rx189_pos, 0, rx189_fail540
    eq $I19, 0, rx189_fail540
    nqp_islist $I20, rx189_cstack
    unless $I20, rx189_jump541
    elements $I18, rx189_bstack
    le $I18, 0, rx189_cut542
    dec $I18
    set $I18, rx189_bstack[$I18]
  rx189_cut542:
    assign rx189_cstack, $I18
  rx189_jump541:
    jump $I19
  rx189_done538:
    rx189_cur."!cursor_fail"()
    .return (rx189_cur) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_65_1431289891.89934") :anon :lex :outer("cuid_64_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
    .param pmc self 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc rx193_start
    .local string rx193_tgt
    .local int rx193_pos
    .local int rx193_off
    .local int rx193_eos
    .local int rx193_rep
    .local pmc rx193_cur
    .local pmc rx193_curclass
    .local pmc rx193_bstack
    .local pmc rx193_cstack
    rx193_start = self."!cursor_start_all"()
    set rx193_cur, rx193_start[0]
    set rx193_tgt, rx193_start[1]
    set rx193_pos, rx193_start[2]
    set rx193_curclass, rx193_start[3]
    set rx193_bstack, rx193_start[4]
    set $I19, rx193_start[5]
    store_lex unicode:"$\x{a2}", rx193_cur
    length rx193_eos, rx193_tgt
    eq $I19, 1, rx193_restart553
    gt rx193_pos, rx193_eos, rx193_fail554
    ge rx193_pos, rx193_eos, rx193_fail554
    is_cclass $I11, .CCLASS_WORD, rx193_tgt, rx193_pos
    if $I11, rx193_fail554
    inc rx193_pos
    rx193_cur."!cursor_pass"(rx193_pos)
    .return (rx193_cur)
  rx193_restart553:
    repr_get_attr_obj rx193_cstack, rx193_cur, rx193_curclass, "$!cstack"
  rx193_fail554:
    unless rx193_bstack, rx193_done552
    pop $I19, rx193_bstack
    if_null rx193_cstack, rx193_cstack_done557
    unless rx193_cstack, rx193_cstack_done557
    dec $I19
    set $P11, rx193_cstack[$I19]
  rx193_cstack_done557:
    pop rx193_rep, rx193_bstack
    pop rx193_pos, rx193_bstack
    pop $I19, rx193_bstack
    lt rx193_pos, -1, rx193_done552
    lt rx193_pos, 0, rx193_fail554
    eq $I19, 0, rx193_fail554
    nqp_islist $I20, rx193_cstack
    unless $I20, rx193_jump555
    elements $I18, rx193_bstack
    le $I18, 0, rx193_cut556
    dec $I18
    set $I18, rx193_bstack[$I18]
  rx193_cut556:
    assign rx193_cstack, $I18
  rx193_jump555:
    jump $I19
  rx193_done552:
    rx193_cur."!cursor_fail"()
    .return (rx193_cur) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_66_1431289891.89934") :anon :lex :outer("cuid_64_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
    .param pmc self 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc rx195_start
    .local string rx195_tgt
    .local int rx195_pos
    .local int rx195_off
    .local int rx195_eos
    .local int rx195_rep
    .local pmc rx195_cur
    .local pmc rx195_curclass
    .local pmc rx195_bstack
    .local pmc rx195_cstack
    rx195_start = self."!cursor_start_all"()
    set rx195_cur, rx195_start[0]
    set rx195_tgt, rx195_start[1]
    set rx195_pos, rx195_start[2]
    set rx195_curclass, rx195_start[3]
    set rx195_bstack, rx195_start[4]
    set $I19, rx195_start[5]
    store_lex unicode:"$\x{a2}", rx195_cur
    length rx195_eos, rx195_tgt
    eq $I19, 1, rx195_restart562
    gt rx195_pos, rx195_eos, rx195_fail563
    ge rx195_pos, rx195_eos, rx195_fail563
    is_cclass $I11, .CCLASS_WORD, rx195_tgt, rx195_pos
    unless $I11, rx195_fail563
    inc rx195_pos
    rx195_cur."!cursor_pass"(rx195_pos)
    .return (rx195_cur)
  rx195_restart562:
    repr_get_attr_obj rx195_cstack, rx195_cur, rx195_curclass, "$!cstack"
  rx195_fail563:
    unless rx195_bstack, rx195_done561
    pop $I19, rx195_bstack
    if_null rx195_cstack, rx195_cstack_done566
    unless rx195_cstack, rx195_cstack_done566
    dec $I19
    set $P11, rx195_cstack[$I19]
  rx195_cstack_done566:
    pop rx195_rep, rx195_bstack
    pop rx195_pos, rx195_bstack
    pop $I19, rx195_bstack
    lt rx195_pos, -1, rx195_done561
    lt rx195_pos, 0, rx195_fail563
    eq $I19, 0, rx195_fail563
    nqp_islist $I20, rx195_cstack
    unless $I20, rx195_jump564
    elements $I18, rx195_bstack
    le $I18, 0, rx195_cut565
    dec $I18
    set $I18, rx195_bstack[$I18]
  rx195_cut565:
    assign rx195_cstack, $I18
  rx195_jump564:
    jump $I19
  rx195_done561:
    rx195_cur."!cursor_fail"()
    .return (rx195_cur) 
.end
.HLL "nqp"
.namespace []
.sub "charname" :subid("cuid_67_1431289891.89934") :anon :lex :outer("cuid_234_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 266
    .param pmc __lowered_lex_123 
    .const 'Sub' $P5002 = 'cuid_68_1431289891.89934' 
    capture_lex $P5002 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc self 
    .local pmc __lowered_lex_124 
    set self, __lowered_lex_123
    .local pmc rx200_start
    .local string rx200_tgt
    .local int rx200_pos
    .local int rx200_off
    .local int rx200_eos
    .local int rx200_rep
    .local pmc rx200_cur
    .local pmc rx200_curclass
    .local pmc rx200_bstack
    .local pmc rx200_cstack
    rx200_start = self."!cursor_start_all"()
    set rx200_cur, rx200_start[0]
    set rx200_tgt, rx200_start[1]
    set rx200_pos, rx200_start[2]
    set rx200_curclass, rx200_start[3]
    set rx200_bstack, rx200_start[4]
    set $I19, rx200_start[5]
    store_lex unicode:"$\x{a2}", rx200_cur
    length rx200_eos, rx200_tgt
    eq $I19, 1, rx200_restart576
    gt rx200_pos, rx200_eos, rx200_fail577
    repr_get_attr_int $I11, self, rx200_curclass, "$!from"
    ne $I11, -1, rxscan201_done583
    goto rxscan201_scan582
  rxscan201_loop581:
    inc rx200_pos
    gt rx200_pos, rx200_eos, rx200_fail577
    repr_bind_attr_int rx200_cur, rx200_curclass, "$!from", rx200_pos
  rxscan201_scan582:
    nqp_rxmark rx200_bstack, rxscan201_loop581, rx200_pos, 0
  rxscan201_done583:
  alt202_0585:
    nqp_rxmark rx200_bstack, alt202_1587, rx200_pos, 0
    repr_bind_attr_int rx200_cur, rx200_curclass, "$!pos", rx200_pos
    $P11 = rx200_cur."integer"()
    repr_get_attr_int $I11, $P11, rx200_curclass, "$!pos"
    lt $I11, 0, rx200_fail577
    nqp_rxmark rx200_bstack, rxsubrule203_pass586, -1, 0
  rxsubrule203_pass586:
    rx200_cstack = rx200_cur."!cursor_capture"($P11, "integer")
    repr_get_attr_int rx200_pos, $P11, rx200_curclass, "$!pos"
    goto alt202_end584
  alt202_1587:
    repr_bind_attr_int rx200_cur, rx200_curclass, "$!pos", rx200_pos
    $P11 = rx200_cur."alpha"()
    repr_get_attr_int $I11, $P11, rx200_curclass, "$!pos"
    lt $I11, 0, rx200_fail577
    repr_get_attr_int rx200_pos, $P11, rx200_curclass, "$!pos"
    set rx200_rep, 0
    nqp_rxmark rx200_bstack, rxquantf205_loop589, rx200_pos, rx200_rep
    goto rxquantf205_done590
  rxquantf205_loop589:
    set $I12, rx200_rep
    ge rx200_pos, rx200_eos, rx200_fail577
    inc rx200_pos
    set rx200_rep, $I12
    inc rx200_rep
    nqp_rxmark rx200_bstack, rxquantf205_loop589, rx200_pos, rx200_rep
  rxquantf205_done590:
    .const 'Sub' $P5001 = 'cuid_68_1431289891.89934' 
    capture_lex $P5001
    repr_bind_attr_int rx200_cur, rx200_curclass, "$!pos", rx200_pos
    $P11 = rx200_cur."before"($P5001)
    repr_get_attr_int $I11, $P11, rx200_curclass, "$!pos"
    lt $I11, 0, rx200_fail577
  alt202_end584:
    rx200_cur."!cursor_pass"(rx200_pos, "charname")
    .return (rx200_cur)
  rx200_restart576:
    repr_get_attr_obj rx200_cstack, rx200_cur, rx200_curclass, "$!cstack"
  rx200_fail577:
    unless rx200_bstack, rx200_done575
    pop $I19, rx200_bstack
    if_null rx200_cstack, rx200_cstack_done580
    unless rx200_cstack, rx200_cstack_done580
    dec $I19
    set $P11, rx200_cstack[$I19]
  rx200_cstack_done580:
    pop rx200_rep, rx200_bstack
    pop rx200_pos, rx200_bstack
    pop $I19, rx200_bstack
    lt rx200_pos, -1, rx200_done575
    lt rx200_pos, 0, rx200_fail577
    eq $I19, 0, rx200_fail577
    nqp_islist $I20, rx200_cstack
    unless $I20, rx200_jump578
    elements $I18, rx200_bstack
    le $I18, 0, rx200_cut579
    dec $I18
    set $I18, rx200_bstack[$I18]
  rx200_cut579:
    assign rx200_cstack, $I18
  rx200_jump578:
    jump $I19
  rx200_done575:
    rx200_cur."!cursor_fail"()
    .return (rx200_cur) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_68_1431289891.89934") :anon :lex :outer("cuid_67_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
    .param pmc self 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc rx206_start
    .local string rx206_tgt
    .local int rx206_pos
    .local int rx206_off
    .local int rx206_eos
    .local int rx206_rep
    .local pmc rx206_cur
    .local pmc rx206_curclass
    .local pmc rx206_bstack
    .local pmc rx206_cstack
    rx206_start = self."!cursor_start_all"()
    set rx206_cur, rx206_start[0]
    set rx206_tgt, rx206_start[1]
    set rx206_pos, rx206_start[2]
    set rx206_curclass, rx206_start[3]
    set rx206_bstack, rx206_start[4]
    set $I19, rx206_start[5]
    store_lex unicode:"$\x{a2}", rx206_cur
    length rx206_eos, rx206_tgt
    eq $I19, 1, rx206_restart594
    gt rx206_pos, rx206_eos, rx206_fail595
    nqp_rxmark rx206_bstack, rxquantr207_done600, rx206_pos, 0
  rxquantr207_loop599:
    ge rx206_pos, rx206_eos, rx206_fail595
    is_cclass $I11, .CCLASS_WHITESPACE, rx206_tgt, rx206_pos
    unless $I11, rx206_fail595
    inc rx206_pos
    nqp_rxpeek $I19, rx206_bstack, rxquantr207_done600
    inc $I19
    inc $I19
    set rx206_rep, rx206_bstack[$I19]
    nqp_rxcommit rx206_bstack, rxquantr207_done600
    inc rx206_rep
    nqp_rxmark rx206_bstack, rxquantr207_done600, rx206_pos, rx206_rep
    goto rxquantr207_loop599
  rxquantr207_done600:
    ge rx206_pos, rx206_eos, rx206_fail595
    substr $S11, rx206_tgt, rx206_pos, 1
    index $I11, ucs4:"],#", $S11
    lt $I11, 0, rx206_fail595
    inc rx206_pos
    rx206_cur."!cursor_pass"(rx206_pos)
    .return (rx206_cur)
  rx206_restart594:
    repr_get_attr_obj rx206_cstack, rx206_cur, rx206_curclass, "$!cstack"
  rx206_fail595:
    unless rx206_bstack, rx206_done593
    pop $I19, rx206_bstack
    if_null rx206_cstack, rx206_cstack_done598
    unless rx206_cstack, rx206_cstack_done598
    dec $I19
    set $P11, rx206_cstack[$I19]
  rx206_cstack_done598:
    pop rx206_rep, rx206_bstack
    pop rx206_pos, rx206_bstack
    pop $I19, rx206_bstack
    lt rx206_pos, -1, rx206_done593
    lt rx206_pos, 0, rx206_fail595
    eq $I19, 0, rx206_fail595
    nqp_islist $I20, rx206_cstack
    unless $I20, rx206_jump596
    elements $I18, rx206_bstack
    le $I18, 0, rx206_cut597
    dec $I18
    set $I18, rx206_bstack[$I18]
  rx206_cut597:
    assign rx206_cstack, $I18
  rx206_jump596:
    jump $I19
  rx206_done593:
    rx206_cur."!cursor_fail"()
    .return (rx206_cur) 
.end
.HLL "nqp"
.namespace []
.sub "charnames" :subid("cuid_69_1431289891.89934") :anon :lex :outer("cuid_234_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 270
    .param pmc __lowered_lex_125 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc self 
    .local pmc __lowered_lex_126 
    set self, __lowered_lex_125
    .local pmc rx208_start
    .local string rx208_tgt
    .local int rx208_pos
    .local int rx208_off
    .local int rx208_eos
    .local int rx208_rep
    .local pmc rx208_cur
    .local pmc rx208_curclass
    .local pmc rx208_bstack
    .local pmc rx208_cstack
    rx208_start = self."!cursor_start_all"()
    set rx208_cur, rx208_start[0]
    set rx208_tgt, rx208_start[1]
    set rx208_pos, rx208_start[2]
    set rx208_curclass, rx208_start[3]
    set rx208_bstack, rx208_start[4]
    set $I19, rx208_start[5]
    store_lex unicode:"$\x{a2}", rx208_cur
    length rx208_eos, rx208_tgt
    eq $I19, 1, rx208_restart603
    gt rx208_pos, rx208_eos, rx208_fail604
    repr_get_attr_int $I11, self, rx208_curclass, "$!from"
    ne $I11, -1, rxscan209_done610
    goto rxscan209_scan609
  rxscan209_loop608:
    inc rx208_pos
    gt rx208_pos, rx208_eos, rx208_fail604
    repr_bind_attr_int rx208_cur, rx208_curclass, "$!from", rx208_pos
  rxscan209_scan609:
    nqp_rxmark rx208_bstack, rxscan209_loop608, rx208_pos, 0
  rxscan209_done610:
    nqp_rxmark rx208_bstack, rxquantr210_done612, -1, 0
  rxquantr210_loop611:
    repr_bind_attr_int rx208_cur, rx208_curclass, "$!pos", rx208_pos
    $P11 = rx208_cur."ws"()
    repr_get_attr_int $I11, $P11, rx208_curclass, "$!pos"
    lt $I11, 0, rx208_fail604
    repr_get_attr_int rx208_pos, $P11, rx208_curclass, "$!pos"
    repr_bind_attr_int rx208_cur, rx208_curclass, "$!pos", rx208_pos
    $P11 = rx208_cur."charname"()
    repr_get_attr_int $I11, $P11, rx208_curclass, "$!pos"
    lt $I11, 0, rx208_fail604
    nqp_rxmark rx208_bstack, rxsubrule212_pass614, -1, 0
  rxsubrule212_pass614:
    rx208_cstack = rx208_cur."!cursor_capture"($P11, "charname")
    repr_get_attr_int rx208_pos, $P11, rx208_curclass, "$!pos"
    repr_bind_attr_int rx208_cur, rx208_curclass, "$!pos", rx208_pos
    $P11 = rx208_cur."ws"()
    repr_get_attr_int $I11, $P11, rx208_curclass, "$!pos"
    lt $I11, 0, rx208_fail604
    repr_get_attr_int rx208_pos, $P11, rx208_curclass, "$!pos"
    nqp_rxpeek $I19, rx208_bstack, rxquantr210_done612
    inc $I19
    inc $I19
    set rx208_rep, rx208_bstack[$I19]
    nqp_rxcommit rx208_bstack, rxquantr210_done612
    inc rx208_rep
    nqp_rxmark rx208_bstack, rxquantr210_done612, rx208_pos, rx208_rep
    add $I11, rx208_pos, 1
    gt $I11, rx208_eos, rx208_fail604
    ord $I11, rx208_tgt, rx208_pos
    ne $I11, 44, rx208_fail604
    add rx208_pos, 1
    goto rxquantr210_loop611
  rxquantr210_done612:
    rx208_cur."!cursor_pass"(rx208_pos, "charnames")
    .return (rx208_cur)
  rx208_restart603:
    repr_get_attr_obj rx208_cstack, rx208_cur, rx208_curclass, "$!cstack"
  rx208_fail604:
    unless rx208_bstack, rx208_done602
    pop $I19, rx208_bstack
    if_null rx208_cstack, rx208_cstack_done607
    unless rx208_cstack, rx208_cstack_done607
    dec $I19
    set $P11, rx208_cstack[$I19]
  rx208_cstack_done607:
    pop rx208_rep, rx208_bstack
    pop rx208_pos, rx208_bstack
    pop $I19, rx208_bstack
    lt rx208_pos, -1, rx208_done602
    lt rx208_pos, 0, rx208_fail604
    eq $I19, 0, rx208_fail604
    nqp_islist $I20, rx208_cstack
    unless $I20, rx208_jump605
    elements $I18, rx208_bstack
    le $I18, 0, rx208_cut606
    dec $I18
    set $I18, rx208_bstack[$I18]
  rx208_cut606:
    assign rx208_cstack, $I18
  rx208_jump605:
    jump $I19
  rx208_done602:
    rx208_cur."!cursor_fail"()
    .return (rx208_cur) 
.end
.HLL "nqp"
.namespace []
.sub "charspec" :subid("cuid_70_1431289891.89934") :anon :lex :outer("cuid_234_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 271
    .param pmc __lowered_lex_127 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc self 
    .local pmc __lowered_lex_128 
    set self, __lowered_lex_127
    .local pmc rx214_start
    .local string rx214_tgt
    .local int rx214_pos
    .local int rx214_off
    .local int rx214_eos
    .local int rx214_rep
    .local pmc rx214_cur
    .local pmc rx214_curclass
    .local pmc rx214_bstack
    .local pmc rx214_cstack
    rx214_start = self."!cursor_start_all"()
    set rx214_cur, rx214_start[0]
    set rx214_tgt, rx214_start[1]
    set rx214_pos, rx214_start[2]
    set rx214_curclass, rx214_start[3]
    set rx214_bstack, rx214_start[4]
    set $I19, rx214_start[5]
    store_lex unicode:"$\x{a2}", rx214_cur
    length rx214_eos, rx214_tgt
    eq $I19, 1, rx214_restart618
    gt rx214_pos, rx214_eos, rx214_fail619
    repr_get_attr_int $I11, self, rx214_curclass, "$!from"
    ne $I11, -1, rxscan215_done625
    goto rxscan215_scan624
  rxscan215_loop623:
    inc rx214_pos
    gt rx214_pos, rx214_eos, rx214_fail619
    repr_bind_attr_int rx214_cur, rx214_curclass, "$!from", rx214_pos
  rxscan215_scan624:
    nqp_rxmark rx214_bstack, rxscan215_loop623, rx214_pos, 0
  rxscan215_done625:
    new $P11, "ResizableIntegerArray"
    assign $P11, 4
    assign $P11, 0
    nqp_push_label $P11, alt216_0627
    nqp_push_label $P11, alt216_1629
    nqp_push_label $P11, alt216_2636
    nqp_push_label $P11, alt216_3639
    nqp_rxmark rx214_bstack, alt216_end626, -1, 0
    rx214_cur."!alt"(rx214_pos, "alt_nfa__10_1431289892.62078", $P11)
    goto rx214_fail619
  alt216_0627:
    add $I11, rx214_pos, 1
    gt $I11, rx214_eos, rx214_fail619
    ord $I11, rx214_tgt, rx214_pos
    ne $I11, 91, rx214_fail619
    add rx214_pos, 1
    repr_bind_attr_int rx214_cur, rx214_curclass, "$!pos", rx214_pos
    $P11 = rx214_cur."charnames"()
    repr_get_attr_int $I11, $P11, rx214_curclass, "$!pos"
    lt $I11, 0, rx214_fail619
    nqp_rxmark rx214_bstack, rxsubrule217_pass628, -1, 0
  rxsubrule217_pass628:
    rx214_cstack = rx214_cur."!cursor_capture"($P11, "charnames")
    repr_get_attr_int rx214_pos, $P11, rx214_curclass, "$!pos"
    add $I11, rx214_pos, 1
    gt $I11, rx214_eos, rx214_fail619
    ord $I11, rx214_tgt, rx214_pos
    ne $I11, 93, rx214_fail619
    add rx214_pos, 1
    goto alt216_end626
  alt216_1629:
    nqp_rxmark rx214_bstack, rxquantr218_done631, -1, 0
  rxquantr218_loop630:
    ge rx214_pos, rx214_eos, rx214_fail619
    is_cclass $I11, .CCLASS_NUMERIC, rx214_tgt, rx214_pos
    unless $I11, rx214_fail619
    inc rx214_pos
    nqp_rxpeek $I19, rx214_bstack, rxquantr218_done631
    inc $I19
    inc $I19
    set rx214_rep, rx214_bstack[$I19]
    nqp_rxcommit rx214_bstack, rxquantr218_done631
    inc rx214_rep
    nqp_rxmark rx214_bstack, rxquantr218_done631, rx214_pos, rx214_rep
    goto rxquantr218_loop630
  rxquantr218_done631:
    nqp_rxmark rx214_bstack, rxquantr219_done633, rx214_pos, 0
  rxquantr219_loop632:
    add $I11, rx214_pos, 1
    gt $I11, rx214_eos, rx214_fail619
    ord $I11, rx214_tgt, rx214_pos
    ne $I11, 95, rx214_fail619
    add rx214_pos, 1
    nqp_rxmark rx214_bstack, rxquantr220_done635, -1, 0
  rxquantr220_loop634:
    ge rx214_pos, rx214_eos, rx214_fail619
    is_cclass $I11, .CCLASS_NUMERIC, rx214_tgt, rx214_pos
    unless $I11, rx214_fail619
    inc rx214_pos
    nqp_rxpeek $I19, rx214_bstack, rxquantr220_done635
    inc $I19
    inc $I19
    set rx214_rep, rx214_bstack[$I19]
    nqp_rxcommit rx214_bstack, rxquantr220_done635
    inc rx214_rep
    nqp_rxmark rx214_bstack, rxquantr220_done635, rx214_pos, rx214_rep
    goto rxquantr220_loop634
  rxquantr220_done635:
    nqp_rxpeek $I19, rx214_bstack, rxquantr219_done633
    inc $I19
    inc $I19
    set rx214_rep, rx214_bstack[$I19]
    nqp_rxcommit rx214_bstack, rxquantr219_done633
    inc rx214_rep
    nqp_rxmark rx214_bstack, rxquantr219_done633, rx214_pos, rx214_rep
    goto rxquantr219_loop632
  rxquantr219_done633:
    goto alt216_end626
  alt216_2636:
    nqp_rxmark rx214_bstack, rxcap221_fail638, rx214_pos, 0
    ge rx214_pos, rx214_eos, rx214_fail619
    ord $I11, rx214_tgt, rx214_pos
    lt $I11, 63, rx214_fail619
    gt $I11, 90, rx214_fail619
    inc rx214_pos
    nqp_rxpeek $I19, rx214_bstack, rxcap221_fail638
    inc $I19
    set $I11, rx214_bstack[$I19]
    repr_bind_attr_int rx214_cur, rx214_curclass, "$!pos", rx214_pos
    $P11 = rx214_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx214_pos)
    rx214_cstack = rx214_cur."!cursor_capture"($P11, "control")
    goto rxcap221_done637
  rxcap221_fail638:
    goto rx214_fail619
  rxcap221_done637:
    goto alt216_end626
  alt216_3639:
    repr_bind_attr_int rx214_cur, rx214_curclass, "$!pos", rx214_pos
    $P11 = rx214_cur."panic"("Unrecognized \\c character")
    repr_get_attr_int $I11, $P11, rx214_curclass, "$!pos"
    lt $I11, 0, rx214_fail619
    repr_get_attr_int rx214_pos, $P11, rx214_curclass, "$!pos"
    goto alt216_end626
  alt216_end626:
    nqp_rxcommit rx214_bstack, alt216_end626
    rx214_cur."!cursor_pass"(rx214_pos, "charspec")
    .return (rx214_cur)
  rx214_restart618:
    repr_get_attr_obj rx214_cstack, rx214_cur, rx214_curclass, "$!cstack"
  rx214_fail619:
    unless rx214_bstack, rx214_done617
    pop $I19, rx214_bstack
    if_null rx214_cstack, rx214_cstack_done622
    unless rx214_cstack, rx214_cstack_done622
    dec $I19
    set $P11, rx214_cstack[$I19]
  rx214_cstack_done622:
    pop rx214_rep, rx214_bstack
    pop rx214_pos, rx214_bstack
    pop $I19, rx214_bstack
    lt rx214_pos, -1, rx214_done617
    lt rx214_pos, 0, rx214_fail619
    eq $I19, 0, rx214_fail619
    nqp_islist $I20, rx214_cstack
    unless $I20, rx214_jump620
    elements $I18, rx214_bstack
    le $I18, 0, rx214_cut621
    dec $I18
    set $I18, rx214_bstack[$I18]
  rx214_cut621:
    assign rx214_cstack, $I18
  rx214_jump620:
    jump $I19
  rx214_done617:
    rx214_cur."!cursor_fail"()
    .return (rx214_cur) 
.end
.HLL "nqp"
.namespace []
.sub "O" :subid("cuid_71_1431289891.89934") :anon :lex :outer("cuid_234_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 324
    .param pmc __lowered_lex_140 
    .param string __lowered_lex_141 
    .param pmc __lowered_lex_142 :optional 
    .param int haz_param_3 :opt_flag 
    .local pmc __lowered_lex_143 
    .local pmc fb_tmp_11 
    .local int __lowered_lex_137 
    .local int __lowered_lex_138 
    .local int __lowered_lex_135 
    .local string __lowered_lex_136 
    .local int tmp_1 
    .local pmc __lowered_lex_129 
    .local pmc __lowered_lex_130 
    .local int tmp_2 
    .local int tmp_3 
    .local pmc __lowered_lex_131 
    .local pmc __lowered_lex_132 
    .local pmc __lowered_lex_133 
    .local pmc __lowered_lex_134 
    .local pmc fb_tmp_12 
    .local pmc fb_tmp_13 
    .local pmc __lowered_lex_139 
    if haz_param_3, default678
    nqp_get_sc_object $P5041, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_142, $P5041
  default678:
    find_lex $P5001, "%ohash"
    set fb_tmp_11, $P5001
    repr_defined $I5001, fb_tmp_11
    unless $I5001 goto if223_else641 
    set $P5002, fb_tmp_11[__lowered_lex_141]
    set $P5004, $P5002
    goto if223_end642
  if223_else641:
    null $P5003
    set $P5004, $P5003
  if223_end642:
    unless_null $P5004, vivi_224643
    nqp_get_sc_object $P5005, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5004, $P5005
  vivi_224643:
    set __lowered_lex_143, $P5004
    if __lowered_lex_143 goto unless225_end645 
.annotate 'line', 328
    new $P5006, 'Hash'
    set __lowered_lex_143, $P5006
    length $I5002, __lowered_lex_141
    set __lowered_lex_137, $I5002
    set __lowered_lex_138, 0
  while226_test646:
    find_not_cclass $I5004, 32, __lowered_lex_141, __lowered_lex_138, __lowered_lex_137
    set __lowered_lex_138, $I5004
    set $N5001, __lowered_lex_138
    set $N5002, __lowered_lex_137
    islt $I5003, $N5001, $N5002
    box $P5032, $I5003
    set $P5031, $P5032
    unless $I5003 goto while226_done650 
  while226_redo648:
    set __lowered_lex_135, 0
.annotate 'line', 335
    substr $S5001, __lowered_lex_141, __lowered_lex_138, 1
    set __lowered_lex_136, $S5001
    iseq $I5005, __lowered_lex_136, ","
    unless $I5005 goto if227_else651 
.annotate 'line', 338
    set tmp_1, __lowered_lex_138
    add $I5006, tmp_1, 1
    set __lowered_lex_138, $I5006
    box $P5030, tmp_1
    set $P5029, $P5030
    goto if227_end652
  if227_else651:
    iseq $I5006, __lowered_lex_136, ":"
    unless $I5006 goto if228_else653 
.annotate 'line', 341
    set tmp_2, __lowered_lex_138
    add $I5007, tmp_2, 1
    set __lowered_lex_138, $I5007
    box $P5007, 1
    set __lowered_lex_129, $P5007
    substr $S5002, __lowered_lex_141, __lowered_lex_138, 1
    iseq $I5007, $S5002, "!"
    unless $I5007 goto if229_end656 
.annotate 'line', 347
    set tmp_3, __lowered_lex_138
    add $I5008, tmp_3, 1
    set __lowered_lex_138, $I5008
    box $P5008, 0
    set __lowered_lex_129, $P5008
  if229_end656:
    find_not_cclass $I5008, 8192, __lowered_lex_141, __lowered_lex_138, __lowered_lex_137
    set __lowered_lex_135, $I5008
    sub $I5009, __lowered_lex_135, __lowered_lex_138
    substr $S5003, __lowered_lex_141, __lowered_lex_138, $I5009
    box $P5009, $S5003
    set __lowered_lex_130, $P5009
    set __lowered_lex_138, __lowered_lex_135
    substr $S5004, __lowered_lex_141, __lowered_lex_138, 1
    iseq $I5010, $S5004, "<"
    unless $I5010 goto if230_end658 
.annotate 'line', 359
    add $I5011, __lowered_lex_138, 1
    set __lowered_lex_138, $I5011
    index $I5012, __lowered_lex_141, ">", __lowered_lex_138
    set __lowered_lex_135, $I5012
    sub $I5013, __lowered_lex_135, __lowered_lex_138
    substr $S5005, __lowered_lex_141, __lowered_lex_138, $I5013
    box $P5010, $S5005
    set __lowered_lex_129, $P5010
    add $I5014, __lowered_lex_135, 1
    set __lowered_lex_138, $I5014
  if230_end658:
    set $S5006, __lowered_lex_130
    set __lowered_lex_143[$S5006], __lowered_lex_129
    set $P5027, __lowered_lex_129
    goto if228_end654
  if228_else653:
.annotate 'line', 368
    find_cclass $I5015, 32, __lowered_lex_141, __lowered_lex_138, __lowered_lex_137
    set __lowered_lex_135, $I5015
    index $I5016, __lowered_lex_141, ",", __lowered_lex_138
    box $P5011, $I5016
    set __lowered_lex_131, $P5011
    set $N5003, __lowered_lex_131
    set $N5004, 0
    islt $I5017, $N5003, $N5004
    set $I5019, $I5017
    if $I5017 goto unless232_end662 
    set $N5005, __lowered_lex_131
    set $N5006, __lowered_lex_135
    isge $I5018, $N5005, $N5006
    set $I5019, $I5018
  unless232_end662:
    if $I5019 goto unless231_end660 
    set $I5020, __lowered_lex_131
    set __lowered_lex_135, $I5020
  unless231_end660:
    sub $I5021, __lowered_lex_135, __lowered_lex_138
    substr $S5007, __lowered_lex_141, __lowered_lex_138, $I5021
    box $P5012, $S5007
    set __lowered_lex_132, $P5012
    find_lex $P5013, "%ohash"
    set fb_tmp_12, $P5013
    repr_defined $I5022, fb_tmp_12
    unless $I5022 goto if233_else663 
    set $S5008, __lowered_lex_132
    set $P5014, fb_tmp_12[$S5008]
    set $P5016, $P5014
    goto if233_end664
  if233_else663:
    null $P5015
    set $P5016, $P5015
  if233_end664:
    unless_null $P5016, vivi_234665
    nqp_get_sc_object $P5017, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5016, $P5017
  vivi_234665:
    set __lowered_lex_133, $P5016
    if __lowered_lex_133 goto unless235_end667 
.annotate 'line', 378
    nqp_decontainerize $P5018, __lowered_lex_140
    $P5019 = $P5018."panic"("Unknown operator precedence specification \"", __lowered_lex_132, "\"")
  unless235_end667:
    iter $P5020, __lowered_lex_133
    set __lowered_lex_134, $P5020
  while236_test668:
    set $P5026, __lowered_lex_134
    unless __lowered_lex_134 goto while236_done672 
  while236_redo670:
.annotate 'line', 381
    shift $P5021, __lowered_lex_134
    set $S5009, $P5021
    set __lowered_lex_136, $S5009
    set fb_tmp_13, __lowered_lex_133
    repr_defined $I5023, fb_tmp_13
    unless $I5023 goto if237_else673 
    set $P5022, fb_tmp_13[__lowered_lex_136]
    set $P5024, $P5022
    goto if237_end674
  if237_else673:
    null $P5023
    set $P5024, $P5023
  if237_end674:
    unless_null $P5024, vivi_238675
    nqp_get_sc_object $P5025, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5024, $P5025
  vivi_238675:
    set __lowered_lex_143[__lowered_lex_136], $P5024
    set $P5026, $P5024
    goto while236_test668 
  while236_done672:
    set __lowered_lex_138, __lowered_lex_135
    box $P5028, __lowered_lex_138
    set $P5027, $P5028
  if228_end654:
    set $P5029, $P5027
  if227_end652:
    set $P5031, $P5029
    goto while226_test646 
  while226_done650:
    find_lex $P5033, "%ohash"
    set $P5033[__lowered_lex_141], __lowered_lex_143
  unless225_end645:
    unless __lowered_lex_142 goto if239_else676 
.annotate 'line', 392
    find_lex $P5034, "%ohash"
    set $S5010, __lowered_lex_142
    set $P5034[$S5010], __lowered_lex_143
    nqp_decontainerize $P5035, __lowered_lex_140
    set $P5040, $P5035
    goto if239_end677
  if239_else676:
.annotate 'line', 396
.annotate 'line', 399
    nqp_decontainerize $P5036, __lowered_lex_140
    $P5037 = $P5036."!cursor_start_cur"()
    set __lowered_lex_139, $P5037
.annotate 'line', 400
    find_lex $P5038, "$cursor_class"
    repr_get_attr_int $I5024, __lowered_lex_139, $P5038, "$!from"
    __lowered_lex_139."!cursor_pass"($I5024)
    find_lex $P5039, "$cursor_class"
    setattribute __lowered_lex_139, $P5039, "$!match", __lowered_lex_143
    set $P5040, __lowered_lex_139
  if239_end677:
    .return ($P5040) 
.end
.HLL "nqp"
.namespace []
.sub "panic" :subid("cuid_72_1431289891.89934") :anon :lex :outer("cuid_234_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 417
    .param pmc __lowered_lex_144 
    .param pmc __lowered_lex_145 :slurpy 
    .local pmc __lowered_lex_146 
    .local pmc __lowered_lex_147 
    .local pmc fb_tmp_14 
    .local pmc pkg_lookup_tmp_1 
.annotate 'line', 418
    nqp_decontainerize $P5001, __lowered_lex_144
    $P5002 = $P5001."pos"()
    set __lowered_lex_146, $P5002
.annotate 'line', 419
    nqp_decontainerize $P5003, __lowered_lex_144
    $P5004 = $P5003."target"()
    set __lowered_lex_147, $P5004
.annotate 'line', 420
    __lowered_lex_145."push"(" at line ")
.annotate 'line', 421
    nqp_get_sc_object $P5006, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 0
    set pkg_lookup_tmp_1, $P5006
    get_who $P5007, pkg_lookup_tmp_1
    exists $I5002, $P5007["HLL"]
    unless $I5002 goto if241_else681 
    get_who $P5009, pkg_lookup_tmp_1
    set $P5008, $P5009["HLL"]
    set $P5011, $P5008
    goto if241_end682
  if241_else681:
    nqp_get_sc_object $P5010, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5011, $P5010
  if241_end682:
    get_who $P5005, $P5011
    set fb_tmp_14, $P5005
    repr_defined $I5001, fb_tmp_14
    unless $I5001 goto if240_else679 
    set $P5012, fb_tmp_14["Compiler"]
    set $P5014, $P5012
    goto if240_end680
  if240_else679:
    null $P5013
    set $P5014, $P5013
  if240_end680:
    unless_null $P5014, vivi_242683
    nqp_get_sc_object $P5015, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5014, $P5015
  vivi_242683:
    $P5016 = $P5014."lineof"(__lowered_lex_147, __lowered_lex_146)
    set $N5002, $P5016
    set $N5003, 1
    add $N5001, $N5002, $N5003
    __lowered_lex_145."push"($N5001)
.annotate 'line', 422
    __lowered_lex_145."push"(", near \"")
.annotate 'line', 423
    set $S5003, __lowered_lex_147
    set $I5003, __lowered_lex_146
    substr $S5002, $S5003, $I5003, 10
    escape $S5001, $S5002
    __lowered_lex_145."push"($S5001)
.annotate 'line', 424
    __lowered_lex_145."push"("\"")
.annotate 'line', 425
    $P5017 = "&join"("", __lowered_lex_145)
    die $P5017
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "FAILGOAL" :subid("cuid_73_1431289891.89934") :anon :lex :outer("cuid_234_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 428
    .param pmc __lowered_lex_148 
    .param pmc __lowered_lex_149 
    .param pmc __lowered_lex_150 :optional 
    .param int haz_param_4 :opt_flag 
    if haz_param_4, default686
    nqp_get_sc_object $P5005, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_150, $P5005
  default686:
    if __lowered_lex_150 goto unless243_end685 
.annotate 'line', 429
    getinterp $P5001
    set $P5001, $P5001['sub';1]
    set $S5001, $P5001
    box $P5002, $S5001
    set __lowered_lex_150, $P5002
  unless243_end685:
.annotate 'line', 432
    nqp_decontainerize $P5003, __lowered_lex_148
    set $S5005, __lowered_lex_150
    concat $S5004, "Unable to parse expression in ", $S5005
    concat $S5003, $S5004, "; couldn't find final "
    set $S5006, __lowered_lex_149
    concat $S5002, $S5003, $S5006
    $P5004 = $P5003."panic"($S5002)
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "peek_delimiters" :subid("cuid_74_1431289891.89934") :anon :lex :outer("cuid_234_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 445
    .param pmc __lowered_lex_153 
    .param string __lowered_lex_154 
    .param int __lowered_lex_155 
    .local string __lowered_lex_156 
    .local string __lowered_lex_157 
    .local int __lowered_lex_158 
    .local pmc __lowered_lex_151 
    .local int __lowered_lex_152 
    .local int tmp_4 
    substr $S5001, __lowered_lex_154, __lowered_lex_155, 1
    set __lowered_lex_156, $S5001
    iseq $I5001, __lowered_lex_156, ":"
    unless $I5001 goto if244_end688 
.annotate 'line', 450
.annotate 'line', 451
    nqp_decontainerize $P5001, __lowered_lex_153
    $P5002 = $P5001."panic"("Colons may not be used to delimit quoting constructs")
  if244_end688:
    is_cclass $I5002, 8192, __lowered_lex_156, 0
    unless $I5002 goto if245_end690 
.annotate 'line', 453
.annotate 'line', 454
    nqp_decontainerize $P5003, __lowered_lex_153
    $P5004 = $P5003."panic"("Alphanumeric character is not allowed as a delimiter")
  if245_end690:
    is_cclass $I5003, 32, __lowered_lex_156, 0
    unless $I5003 goto if246_end692 
.annotate 'line', 456
    new $P5007, 'QRPA'
    ord $I5004, __lowered_lex_156
    box $P5008, $I5004
    push $P5007, $P5008
    new $P5006, 'ResizableStringArray'
    push $P5006, "nqp"
    get_root_global $P5005, $P5006, "sprintf"
    $S5002 = $P5005("%X", $P5007)
    box $P5009, $S5002
    set __lowered_lex_151, $P5009
.annotate 'line', 458
    nqp_decontainerize $P5010, __lowered_lex_153
    set $S5005, __lowered_lex_151
    concat $S5004, "Whitespace character (0x", $S5005
    concat $S5003, $S5004, ") is not allowed as a delimiter"
    $P5011 = $P5010."panic"($S5003)
  if246_end692:
    set __lowered_lex_157, __lowered_lex_156
    find_lex $P5012, "$brackets"
    set $S5006, $P5012
    index $I5005, $S5006, __lowered_lex_156, 0
    set __lowered_lex_158, $I5005
    isge $I5006, __lowered_lex_158, 0
    unless $I5006 goto if247_end694 
.annotate 'line', 464
    mod $I5007, __lowered_lex_158, 2
    unless $I5007 goto if248_end696 
.annotate 'line', 466
.annotate 'line', 467
    nqp_decontainerize $P5013, __lowered_lex_153
    $P5014 = $P5013."panic"("Use of a closing delimiter for an opener is reserved")
  if248_end696:
    find_lex $P5015, "$brackets"
    set $S5008, $P5015
    add $I5008, __lowered_lex_158, 1
    substr $S5007, $S5008, $I5008, 1
    set __lowered_lex_157, $S5007
    set __lowered_lex_152, 1
  while249_test697:
    add $I5010, __lowered_lex_155, 1
    set __lowered_lex_155, $I5010
    substr $S5009, __lowered_lex_154, __lowered_lex_155, 1
    iseq $I5009, $S5009, __lowered_lex_156
    box $P5017, $I5009
    set $P5016, $P5017
    unless $I5009 goto while249_done701 
  while249_redo699:
.annotate 'line', 475
    set tmp_4, __lowered_lex_152
    add $I5011, tmp_4, 1
    set __lowered_lex_152, $I5011
    box $P5018, tmp_4
    set $P5016, $P5018
    goto while249_test697 
  while249_done701:
    isgt $I5011, __lowered_lex_152, 1
    box $P5020, $I5011
    set $P5019, $P5020
    unless $I5011 goto if250_end703 
.annotate 'line', 478
    repeat $S5010, __lowered_lex_156, __lowered_lex_152
    set __lowered_lex_156, $S5010
    repeat $S5011, __lowered_lex_157, __lowered_lex_152
    set __lowered_lex_157, $S5011
    box $P5021, __lowered_lex_157
    set $P5019, $P5021
  if250_end703:
  if247_end694:
    new $P5022, 'QRPA'
    assign $P5022, 2
    assign $P5022, 0
    box $P5023, __lowered_lex_156
    push $P5022, $P5023
    box $P5024, __lowered_lex_157
    push $P5022, $P5024
    .return ($P5022) 
.end
.HLL "nqp"
.namespace []
.sub "quote_EXPR" :subid("cuid_75_1431289891.89934") :anon :lex :outer("cuid_234_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 487
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "%*QUOTEMOD", $P101 
    .lex "$*QUOTE_START", $P102 
    .lex "$*QUOTE_STOP", $P103 
    .lex utf8:"$\x{a2}", $P104 
    .lex "$/", $P105 
    .lex "self", _lex_param_0 
    .lex "@args", _lex_param_1 
    .local pmc self 
    .local pmc fb_tmp_15 
    .local pmc pkg_viv_tmp_1 
    .local pmc fb_tmp_16 
    .local pmc fb_tmp_17 
    .local pmc __lowered_lex_160 
    .local pmc lowered_for_it__3 
    .local pmc __lowered_lex_159 
    .local pmc fb_tmp_18 
    .local pmc pkg_viv_tmp_2 
    .local pmc fb_tmp_19 
    .local pmc pkg_viv_tmp_3 
    .local pmc fb_tmp_20 
    .local pmc pkg_viv_tmp_4 
    .local pmc fb_tmp_21 
    .local pmc pkg_viv_tmp_5 
    .local pmc fb_tmp_22 
    .local pmc pkg_viv_tmp_6 
    .local pmc fb_tmp_23 
    .local pmc pkg_viv_tmp_7 
    .local pmc fb_tmp_24 
    .local pmc pkg_viv_tmp_8 
    .local pmc fb_tmp_25 
    .local pmc pkg_viv_tmp_9 
    .local pmc fb_tmp_26 
    .local pmc fb_tmp_27 
    new $P5001, 'Hash'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P102, $P5002
    nqp_get_sc_object $P5003, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P103, $P5003
    set self, _lex_param_0
    .local pmc rx251_start
    .local string rx251_tgt
    .local int rx251_pos
    .local int rx251_off
    .local int rx251_eos
    .local int rx251_rep
    .local pmc rx251_cur
    .local pmc rx251_curclass
    .local pmc rx251_bstack
    .local pmc rx251_cstack
    rx251_start = self."!cursor_start_all"()
    set rx251_cur, rx251_start[0]
    set rx251_tgt, rx251_start[1]
    set rx251_pos, rx251_start[2]
    set rx251_curclass, rx251_start[3]
    set rx251_bstack, rx251_start[4]
    set $I19, rx251_start[5]
    store_lex unicode:"$\x{a2}", rx251_cur
    length rx251_eos, rx251_tgt
    eq $I19, 1, rx251_restart706
    gt rx251_pos, rx251_eos, rx251_fail707
    repr_get_attr_int $I11, self, rx251_curclass, "$!from"
    ne $I11, -1, rxscan252_done713
    goto rxscan252_scan712
  rxscan252_loop711:
    inc rx251_pos
    gt rx251_pos, rx251_eos, rx251_fail707
    repr_bind_attr_int rx251_cur, rx251_curclass, "$!from", rx251_pos
  rxscan252_scan712:
    nqp_rxmark rx251_bstack, rxscan252_loop711, rx251_pos, 0
  rxscan252_done713:
    repr_bind_attr_int rx251_cur, rx251_curclass, "$!pos", rx251_pos
    store_lex unicode:"$\x{a2}", rx251_cur
    unless_null $P101, fallback714
    nqp_get_sc_object $P5005, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 0
    get_who $P5004, $P5005
    set pkg_viv_tmp_1, $P5004
    set fb_tmp_15, pkg_viv_tmp_1
    repr_defined $I5001, fb_tmp_15
    unless $I5001 goto if253_else715 
    set $P5006, fb_tmp_15["%QUOTEMOD"]
    set $P5008, $P5006
    goto if253_end716
  if253_else715:
    null $P5007
    set $P5008, $P5007
  if253_end716:
    unless_null $P5008, vivi_254717
    new $P5009, 'Hash'
    set pkg_viv_tmp_1["%QUOTEMOD"], $P5009
    set $P5008, $P5009
  vivi_254717:
    unless_null $P5008, vivi_255718
    die "Contextual %*QUOTEMOD not found"
    box $P5010, "Contextual %*QUOTEMOD not found"
    set $P5008, $P5010
  vivi_255718:
    set $P101, $P5008
  fallback714:
    repr_bind_attr_int rx251_cur, rx251_curclass, "$!pos", rx251_pos
    store_lex unicode:"$\x{a2}", rx251_cur
    unless_null $P102, fallback719
    nqp_get_sc_object $P5012, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 0
    get_who $P5011, $P5012
    set fb_tmp_16, $P5011
    repr_defined $I5002, fb_tmp_16
    unless $I5002 goto if256_else720 
    set $P5013, fb_tmp_16["$QUOTE_START"]
    set $P5015, $P5013
    goto if256_end721
  if256_else720:
    null $P5014
    set $P5015, $P5014
  if256_end721:
    unless_null $P5015, vivi_257722
    nqp_get_sc_object $P5016, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5015, $P5016
  vivi_257722:
    unless_null $P5015, vivi_258723
    die "Contextual $*QUOTE_START not found"
    box $P5017, "Contextual $*QUOTE_START not found"
    set $P5015, $P5017
  vivi_258723:
    set $P102, $P5015
  fallback719:
    repr_bind_attr_int rx251_cur, rx251_curclass, "$!pos", rx251_pos
    store_lex unicode:"$\x{a2}", rx251_cur
    unless_null $P103, fallback724
    nqp_get_sc_object $P5019, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 0
    get_who $P5018, $P5019
    set fb_tmp_17, $P5018
    repr_defined $I5003, fb_tmp_17
    unless $I5003 goto if259_else725 
    set $P5020, fb_tmp_17["$QUOTE_STOP"]
    set $P5022, $P5020
    goto if259_end726
  if259_else725:
    null $P5021
    set $P5022, $P5021
  if259_end726:
    unless_null $P5022, vivi_260727
    nqp_get_sc_object $P5023, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5022, $P5023
  vivi_260727:
    unless_null $P5022, vivi_261728
    die "Contextual $*QUOTE_STOP not found"
    box $P5024, "Contextual $*QUOTE_STOP not found"
    set $P5022, $P5024
  vivi_261728:
    set $P103, $P5022
  fallback724:
    repr_bind_attr_int rx251_cur, rx251_curclass, "$!pos", rx251_pos
    store_lex unicode:"$\x{a2}", rx251_cur
    $P5025 = $P104."MATCH"()
    set $P105, $P5025
.annotate 'line', 491
    iter $P5026, _lex_param_1
    set lowered_for_it__3, $P5026
    new $P5097, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5097, while262_handlers732
    push_eh $P5097
  while262_test729:
    set $P5096, lowered_for_it__3
    unless lowered_for_it__3 goto while262_done733 
  while262_redo731:
.annotate 'line', 492
    shift $P5027, lowered_for_it__3
    set __lowered_lex_159, $P5027
    set $S5002, __lowered_lex_159
    substr $S5001, $S5002, 1
    box $P5028, $S5001
    set __lowered_lex_159, $P5028
    unless_null $P101, fallback734
    nqp_get_sc_object $P5030, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 0
    get_who $P5029, $P5030
    set pkg_viv_tmp_2, $P5029
    set fb_tmp_18, pkg_viv_tmp_2
    repr_defined $I5004, fb_tmp_18
    unless $I5004 goto if263_else735 
    set $P5031, fb_tmp_18["%QUOTEMOD"]
    set $P5033, $P5031
    goto if263_end736
  if263_else735:
    null $P5032
    set $P5033, $P5032
  if263_end736:
    unless_null $P5033, vivi_264737
    new $P5034, 'Hash'
    set pkg_viv_tmp_2["%QUOTEMOD"], $P5034
    set $P5033, $P5034
  vivi_264737:
    unless_null $P5033, vivi_265738
    die "Contextual %*QUOTEMOD not found"
    box $P5035, "Contextual %*QUOTEMOD not found"
    set $P5033, $P5035
  vivi_265738:
    set $P101, $P5033
  fallback734:
    set $S5003, __lowered_lex_159
    find_lex $P5036, "$TRUE"
    set $P101[$S5003], $P5036
    set $S5004, __lowered_lex_159
    iseq $I5005, $S5004, "qq"
    unless $I5005 goto if266_else739 
.annotate 'line', 495
    unless_null $P101, fallback741
    nqp_get_sc_object $P5038, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 0
    get_who $P5037, $P5038
    set pkg_viv_tmp_3, $P5037
    set fb_tmp_19, pkg_viv_tmp_3
    repr_defined $I5006, fb_tmp_19
    unless $I5006 goto if267_else742 
    set $P5039, fb_tmp_19["%QUOTEMOD"]
    set $P5041, $P5039
    goto if267_end743
  if267_else742:
    null $P5040
    set $P5041, $P5040
  if267_end743:
    unless_null $P5041, vivi_268744
    new $P5042, 'Hash'
    set pkg_viv_tmp_3["%QUOTEMOD"], $P5042
    set $P5041, $P5042
  vivi_268744:
    unless_null $P5041, vivi_269745
    die "Contextual %*QUOTEMOD not found"
    box $P5043, "Contextual %*QUOTEMOD not found"
    set $P5041, $P5043
  vivi_269745:
    set $P101, $P5041
  fallback741:
    find_lex $P5044, "$TRUE"
    set $P101["s"], $P5044
    unless_null $P101, fallback746
    nqp_get_sc_object $P5046, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 0
    get_who $P5045, $P5046
    set pkg_viv_tmp_4, $P5045
    set fb_tmp_20, pkg_viv_tmp_4
    repr_defined $I5007, fb_tmp_20
    unless $I5007 goto if270_else747 
    set $P5047, fb_tmp_20["%QUOTEMOD"]
    set $P5049, $P5047
    goto if270_end748
  if270_else747:
    null $P5048
    set $P5049, $P5048
  if270_end748:
    unless_null $P5049, vivi_271749
    new $P5050, 'Hash'
    set pkg_viv_tmp_4["%QUOTEMOD"], $P5050
    set $P5049, $P5050
  vivi_271749:
    unless_null $P5049, vivi_272750
    die "Contextual %*QUOTEMOD not found"
    box $P5051, "Contextual %*QUOTEMOD not found"
    set $P5049, $P5051
  vivi_272750:
    set $P101, $P5049
  fallback746:
    find_lex $P5052, "$TRUE"
    set $P101["a"], $P5052
    unless_null $P101, fallback751
    nqp_get_sc_object $P5054, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 0
    get_who $P5053, $P5054
    set pkg_viv_tmp_5, $P5053
    set fb_tmp_21, pkg_viv_tmp_5
    repr_defined $I5008, fb_tmp_21
    unless $I5008 goto if273_else752 
    set $P5055, fb_tmp_21["%QUOTEMOD"]
    set $P5057, $P5055
    goto if273_end753
  if273_else752:
    null $P5056
    set $P5057, $P5056
  if273_end753:
    unless_null $P5057, vivi_274754
    new $P5058, 'Hash'
    set pkg_viv_tmp_5["%QUOTEMOD"], $P5058
    set $P5057, $P5058
  vivi_274754:
    unless_null $P5057, vivi_275755
    die "Contextual %*QUOTEMOD not found"
    box $P5059, "Contextual %*QUOTEMOD not found"
    set $P5057, $P5059
  vivi_275755:
    set $P101, $P5057
  fallback751:
    find_lex $P5060, "$TRUE"
    set $P101["h"], $P5060
    unless_null $P101, fallback756
    nqp_get_sc_object $P5062, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 0
    get_who $P5061, $P5062
    set pkg_viv_tmp_6, $P5061
    set fb_tmp_22, pkg_viv_tmp_6
    repr_defined $I5009, fb_tmp_22
    unless $I5009 goto if276_else757 
    set $P5063, fb_tmp_22["%QUOTEMOD"]
    set $P5065, $P5063
    goto if276_end758
  if276_else757:
    null $P5064
    set $P5065, $P5064
  if276_end758:
    unless_null $P5065, vivi_277759
    new $P5066, 'Hash'
    set pkg_viv_tmp_6["%QUOTEMOD"], $P5066
    set $P5065, $P5066
  vivi_277759:
    unless_null $P5065, vivi_278760
    die "Contextual %*QUOTEMOD not found"
    box $P5067, "Contextual %*QUOTEMOD not found"
    set $P5065, $P5067
  vivi_278760:
    set $P101, $P5065
  fallback756:
    find_lex $P5068, "$TRUE"
    set $P101["f"], $P5068
    unless_null $P101, fallback761
    nqp_get_sc_object $P5070, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 0
    get_who $P5069, $P5070
    set pkg_viv_tmp_7, $P5069
    set fb_tmp_23, pkg_viv_tmp_7
    repr_defined $I5010, fb_tmp_23
    unless $I5010 goto if279_else762 
    set $P5071, fb_tmp_23["%QUOTEMOD"]
    set $P5073, $P5071
    goto if279_end763
  if279_else762:
    null $P5072
    set $P5073, $P5072
  if279_end763:
    unless_null $P5073, vivi_280764
    new $P5074, 'Hash'
    set pkg_viv_tmp_7["%QUOTEMOD"], $P5074
    set $P5073, $P5074
  vivi_280764:
    unless_null $P5073, vivi_281765
    die "Contextual %*QUOTEMOD not found"
    box $P5075, "Contextual %*QUOTEMOD not found"
    set $P5073, $P5075
  vivi_281765:
    set $P101, $P5073
  fallback761:
    find_lex $P5076, "$TRUE"
    set $P101["c"], $P5076
    unless_null $P101, fallback766
    nqp_get_sc_object $P5078, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 0
    get_who $P5077, $P5078
    set pkg_viv_tmp_8, $P5077
    set fb_tmp_24, pkg_viv_tmp_8
    repr_defined $I5011, fb_tmp_24
    unless $I5011 goto if282_else767 
    set $P5079, fb_tmp_24["%QUOTEMOD"]
    set $P5081, $P5079
    goto if282_end768
  if282_else767:
    null $P5080
    set $P5081, $P5080
  if282_end768:
    unless_null $P5081, vivi_283769
    new $P5082, 'Hash'
    set pkg_viv_tmp_8["%QUOTEMOD"], $P5082
    set $P5081, $P5082
  vivi_283769:
    unless_null $P5081, vivi_284770
    die "Contextual %*QUOTEMOD not found"
    box $P5083, "Contextual %*QUOTEMOD not found"
    set $P5081, $P5083
  vivi_284770:
    set $P101, $P5081
  fallback766:
    find_lex $P5084, "$TRUE"
    set $P101["b"], $P5084
    set $P5095, $P5084
    goto if266_end740
  if266_else739:
    set $S5005, __lowered_lex_159
    iseq $I5012, $S5005, "b"
    box $P5094, $I5012
    set $P5093, $P5094
    unless $I5012 goto if285_end772 
.annotate 'line', 503
    unless_null $P101, fallback773
    nqp_get_sc_object $P5086, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 0
    get_who $P5085, $P5086
    set pkg_viv_tmp_9, $P5085
    set fb_tmp_25, pkg_viv_tmp_9
    repr_defined $I5013, fb_tmp_25
    unless $I5013 goto if286_else774 
    set $P5087, fb_tmp_25["%QUOTEMOD"]
    set $P5089, $P5087
    goto if286_end775
  if286_else774:
    null $P5088
    set $P5089, $P5088
  if286_end775:
    unless_null $P5089, vivi_287776
    new $P5090, 'Hash'
    set pkg_viv_tmp_9["%QUOTEMOD"], $P5090
    set $P5089, $P5090
  vivi_287776:
    unless_null $P5089, vivi_288777
    die "Contextual %*QUOTEMOD not found"
    box $P5091, "Contextual %*QUOTEMOD not found"
    set $P5089, $P5091
  vivi_288777:
    set $P101, $P5089
  fallback773:
    find_lex $P5092, "$TRUE"
    set $P101["q"], $P5092
    set $P5093, $P5092
  if285_end772:
    set $P5095, $P5093
  if266_end740:
    set $P5096, $P5095
    goto while262_test729 
  while262_handlers732:
    .get_results ($P5097)
    pop_upto_eh $P5097
    getattribute $P5098, $P5097, 'type'
    eq $P5098, .CONTROL_LOOP_NEXT, while262_test729
    eq $P5098, .CONTROL_LOOP_REDO, while262_redo731
  while262_done733:
    pop_eh 
.annotate 'line', 508
    nqp_decontainerize $P5099, _lex_param_0
    nqp_decontainerize $P5100, _lex_param_0
    $P5101 = $P5100."target"()
    nqp_decontainerize $P5102, _lex_param_0
    $P5103 = $P5102."pos"()
    $P5104 = $P5099."peek_delimiters"($P5101, $P5103)
    set __lowered_lex_160, $P5104
    set fb_tmp_26, __lowered_lex_160
    repr_defined $I5014, fb_tmp_26
    unless $I5014 goto if289_else778 
    set $P5105, fb_tmp_26[0]
    set $P5107, $P5105
    goto if289_end779
  if289_else778:
    null $P5106
    set $P5107, $P5106
  if289_end779:
    unless_null $P5107, vivi_290780
    nqp_get_sc_object $P5108, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5107, $P5108
  vivi_290780:
    set $P102, $P5107
    set fb_tmp_27, __lowered_lex_160
    repr_defined $I5015, fb_tmp_27
    unless $I5015 goto if291_else781 
    set $P5109, fb_tmp_27[1]
    set $P5111, $P5109
    goto if291_end782
  if291_else781:
    null $P5110
    set $P5111, $P5110
  if291_end782:
    unless_null $P5111, vivi_292783
    nqp_get_sc_object $P5112, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5111, $P5112
  vivi_292783:
    set $P103, $P5111
    repr_bind_attr_int rx251_cur, rx251_curclass, "$!pos", rx251_pos
    $P11 = rx251_cur."quote_delimited"()
    repr_get_attr_int $I11, $P11, rx251_curclass, "$!pos"
    lt $I11, 0, rx251_fail707
    nqp_rxmark rx251_bstack, rxsubrule293_pass784, -1, 0
  rxsubrule293_pass784:
    rx251_cstack = rx251_cur."!cursor_capture"($P11, "quote_delimited")
    repr_get_attr_int rx251_pos, $P11, rx251_curclass, "$!pos"
    rx251_cur."!cursor_pass"(rx251_pos, "quote_EXPR")
    .return (rx251_cur)
  rx251_restart706:
    repr_get_attr_obj rx251_cstack, rx251_cur, rx251_curclass, "$!cstack"
  rx251_fail707:
    unless rx251_bstack, rx251_done705
    pop $I19, rx251_bstack
    if_null rx251_cstack, rx251_cstack_done710
    unless rx251_cstack, rx251_cstack_done710
    dec $I19
    set $P11, rx251_cstack[$I19]
  rx251_cstack_done710:
    pop rx251_rep, rx251_bstack
    pop rx251_pos, rx251_bstack
    pop $I19, rx251_bstack
    lt rx251_pos, -1, rx251_done705
    lt rx251_pos, 0, rx251_fail707
    eq $I19, 0, rx251_fail707
    nqp_islist $I20, rx251_cstack
    unless $I20, rx251_jump708
    elements $I18, rx251_bstack
    le $I18, 0, rx251_cut709
    dec $I18
    set $I18, rx251_bstack[$I18]
  rx251_cut709:
    assign rx251_cstack, $I18
  rx251_jump708:
    jump $I19
  rx251_done705:
    rx251_cur."!cursor_fail"()
    .return (rx251_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quotemod_check" :subid("cuid_76_1431289891.89934") :anon :lex :outer("cuid_234_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 515
    .param pmc __lowered_lex_161 
    .param string __lowered_lex_162 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc self 
    .local pmc __lowered_lex_163 
    .local pmc fb_tmp_28 
    .local pmc fb_tmp_29 
    .local pmc pkg_viv_tmp_10 
    set self, __lowered_lex_161
    .local pmc rx294_start
    .local string rx294_tgt
    .local int rx294_pos
    .local int rx294_off
    .local int rx294_eos
    .local int rx294_rep
    .local pmc rx294_cur
    .local pmc rx294_curclass
    .local pmc rx294_bstack
    .local pmc rx294_cstack
    rx294_start = self."!cursor_start_all"()
    set rx294_cur, rx294_start[0]
    set rx294_tgt, rx294_start[1]
    set rx294_pos, rx294_start[2]
    set rx294_curclass, rx294_start[3]
    set rx294_bstack, rx294_start[4]
    set $I19, rx294_start[5]
    store_lex unicode:"$\x{a2}", rx294_cur
    length rx294_eos, rx294_tgt
    eq $I19, 1, rx294_restart787
    gt rx294_pos, rx294_eos, rx294_fail788
    repr_get_attr_int $I11, self, rx294_curclass, "$!from"
    ne $I11, -1, rxscan295_done794
    goto rxscan295_scan793
  rxscan295_loop792:
    inc rx294_pos
    gt rx294_pos, rx294_eos, rx294_fail788
    repr_bind_attr_int rx294_cur, rx294_curclass, "$!from", rx294_pos
  rxscan295_scan793:
    nqp_rxmark rx294_bstack, rxscan295_loop792, rx294_pos, 0
  rxscan295_done794:
    repr_bind_attr_int rx294_cur, rx294_curclass, "$!pos", rx294_pos
    store_lex unicode:"$\x{a2}", rx294_cur
    $P5001 = $P101."MATCH"()
    set __lowered_lex_163, $P5001
.annotate 'line', 516
    find_dynamic_lex $P5002, "%*QUOTEMOD"
    unless_null $P5002, fallback797
    nqp_get_sc_object $P5004, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 0
    get_who $P5003, $P5004
    set pkg_viv_tmp_10, $P5003
    set fb_tmp_29, pkg_viv_tmp_10
    repr_defined $I5002, fb_tmp_29
    unless $I5002 goto if297_else798 
    set $P5005, fb_tmp_29["%QUOTEMOD"]
    set $P5007, $P5005
    goto if297_end799
  if297_else798:
    null $P5006
    set $P5007, $P5006
  if297_end799:
    unless_null $P5007, vivi_298800
    new $P5008, 'Hash'
    set pkg_viv_tmp_10["%QUOTEMOD"], $P5008
    set $P5007, $P5008
  vivi_298800:
    unless_null $P5007, vivi_299801
    die "Contextual %*QUOTEMOD not found"
    box $P5009, "Contextual %*QUOTEMOD not found"
    set $P5007, $P5009
  vivi_299801:
    set $P5002, $P5007
  fallback797:
    set fb_tmp_28, $P5002
    repr_defined $I5001, fb_tmp_28
    unless $I5001 goto if296_else795 
    set $P5010, fb_tmp_28[__lowered_lex_162]
    set $P5012, $P5010
    goto if296_end796
  if296_else795:
    null $P5011
    set $P5012, $P5011
  if296_end796:
    unless_null $P5012, vivi_300802
    nqp_get_sc_object $P5013, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5012, $P5013
  vivi_300802:
    unless $P5012, rx294_fail788
    rx294_cur."!cursor_pass"(rx294_pos, "quotemod_check")
    .return (rx294_cur)
  rx294_restart787:
    repr_get_attr_obj rx294_cstack, rx294_cur, rx294_curclass, "$!cstack"
  rx294_fail788:
    unless rx294_bstack, rx294_done786
    pop $I19, rx294_bstack
    if_null rx294_cstack, rx294_cstack_done791
    unless rx294_cstack, rx294_cstack_done791
    dec $I19
    set $P11, rx294_cstack[$I19]
  rx294_cstack_done791:
    pop rx294_rep, rx294_bstack
    pop rx294_pos, rx294_bstack
    pop $I19, rx294_bstack
    lt rx294_pos, -1, rx294_done786
    lt rx294_pos, 0, rx294_fail788
    eq $I19, 0, rx294_fail788
    nqp_islist $I20, rx294_cstack
    unless $I20, rx294_jump789
    elements $I18, rx294_bstack
    le $I18, 0, rx294_cut790
    dec $I18
    set $I18, rx294_bstack[$I18]
  rx294_cut790:
    assign rx294_cstack, $I18
  rx294_jump789:
    jump $I19
  rx294_done786:
    rx294_cur."!cursor_fail"()
    .return (rx294_cur) 
.end
.HLL "nqp"
.namespace []
.sub "starter" :subid("cuid_77_1431289891.89934") :anon :lex :outer("cuid_234_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 519
    .param pmc __lowered_lex_164 
    .local pmc __lowered_lex_165 
    .local pmc fb_tmp_30 
    find_dynamic_lex $P5001, "$*QUOTE_START"
    unless_null $P5001, fallback803
    nqp_get_sc_object $P5003, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 0
    get_who $P5002, $P5003
    set fb_tmp_30, $P5002
    repr_defined $I5001, fb_tmp_30
    unless $I5001 goto if301_else804 
    set $P5004, fb_tmp_30["$QUOTE_START"]
    set $P5006, $P5004
    goto if301_end805
  if301_else804:
    null $P5005
    set $P5006, $P5005
  if301_end805:
    unless_null $P5006, vivi_302806
    nqp_get_sc_object $P5007, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5006, $P5007
  vivi_302806:
    unless_null $P5006, vivi_303807
    die "Contextual $*QUOTE_START not found"
    box $P5008, "Contextual $*QUOTE_START not found"
    set $P5006, $P5008
  vivi_303807:
    set $P5001, $P5006
  fallback803:
    set __lowered_lex_165, $P5001
    repr_defined $I5002, __lowered_lex_165
    unless $I5002 goto if304_else808 
.annotate 'line', 522
    nqp_decontainerize $P5009, __lowered_lex_164
    $P5010 = $P5009."!LITERAL"(__lowered_lex_165)
    set $P5013, $P5010
    goto if304_end809
  if304_else808:
.annotate 'line', 523
    nqp_decontainerize $P5011, __lowered_lex_164
    $P5012 = $P5011."!cursor_start_fail"()
    set $P5013, $P5012
  if304_end809:
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "stopper" :subid("cuid_78_1431289891.89934") :anon :lex :outer("cuid_234_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 526
    .param pmc __lowered_lex_166 
    .local pmc __lowered_lex_167 
    .local pmc fb_tmp_31 
    find_dynamic_lex $P5001, "$*QUOTE_STOP"
    unless_null $P5001, fallback810
    nqp_get_sc_object $P5003, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 0
    get_who $P5002, $P5003
    set fb_tmp_31, $P5002
    repr_defined $I5001, fb_tmp_31
    unless $I5001 goto if305_else811 
    set $P5004, fb_tmp_31["$QUOTE_STOP"]
    set $P5006, $P5004
    goto if305_end812
  if305_else811:
    null $P5005
    set $P5006, $P5005
  if305_end812:
    unless_null $P5006, vivi_306813
    nqp_get_sc_object $P5007, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5006, $P5007
  vivi_306813:
    unless_null $P5006, vivi_307814
    die "Contextual $*QUOTE_STOP not found"
    box $P5008, "Contextual $*QUOTE_STOP not found"
    set $P5006, $P5008
  vivi_307814:
    set $P5001, $P5006
  fallback810:
    set __lowered_lex_167, $P5001
    repr_defined $I5002, __lowered_lex_167
    unless $I5002 goto if308_else815 
.annotate 'line', 529
    nqp_decontainerize $P5009, __lowered_lex_166
    $P5010 = $P5009."!LITERAL"(__lowered_lex_167)
    set $P5013, $P5010
    goto if308_end816
  if308_else815:
.annotate 'line', 530
    nqp_decontainerize $P5011, __lowered_lex_166
    $P5012 = $P5011."!cursor_start_fail"()
    set $P5013, $P5012
  if308_end816:
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "split_words" :subid("cuid_79_1431289891.89934") :anon :lex :outer("cuid_234_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 539
    .param pmc __lowered_lex_168 
    .param string __lowered_lex_169 
    .local pmc __lowered_lex_170 
    .local int __lowered_lex_171 
    .local int __lowered_lex_172 
    .local int __lowered_lex_173 
    .local pmc fb_tmp_32 
    new $P5001, 'QRPA'
    set __lowered_lex_170, $P5001
    set __lowered_lex_173, 0
    set __lowered_lex_171, 0
    length $I5001, __lowered_lex_169
    set __lowered_lex_172, $I5001
  while309_test817:
    find_not_cclass $I5003, 32, __lowered_lex_169, __lowered_lex_171, __lowered_lex_172
    set __lowered_lex_171, $I5003
    set $N5001, __lowered_lex_171
    set $N5002, __lowered_lex_172
    islt $I5002, $N5001, $N5002
    box $P5011, $I5002
    set $P5010, $P5011
    unless $I5002 goto while309_done821 
  while309_redo819:
.annotate 'line', 544
    set __lowered_lex_173, __lowered_lex_171
  while310_test822:
    find_lex $P5002, "%nbsp"
    set fb_tmp_32, $P5002
    repr_defined $I5004, fb_tmp_32
    unless $I5004 goto if311_else827 
    find_cclass $I5005, 32, __lowered_lex_169, __lowered_lex_173, __lowered_lex_172
    set __lowered_lex_173, $I5005
    substr $S5001, __lowered_lex_169, __lowered_lex_173, 1
    set $P5003, fb_tmp_32[$S5001]
    set $P5005, $P5003
    goto if311_end828
  if311_else827:
    null $P5004
    set $P5005, $P5004
  if311_end828:
    unless_null $P5005, vivi_312829
    nqp_get_sc_object $P5006, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5005, $P5006
  vivi_312829:
    set $P5007, $P5005
    unless $P5005 goto while310_done826 
  while310_redo824:
.annotate 'line', 547
    add $I5006, __lowered_lex_173, 1
    set __lowered_lex_173, $I5006
    box $P5008, __lowered_lex_173
    set $P5007, $P5008
    goto while310_test822 
  while310_done826:
    sub $I5007, __lowered_lex_173, __lowered_lex_171
    substr $S5002, __lowered_lex_169, __lowered_lex_171, $I5007
    box $P5009, $S5002
    push __lowered_lex_170, $P5009
    set __lowered_lex_171, __lowered_lex_173
    box $P5012, __lowered_lex_171
    set $P5010, $P5012
    goto while309_test817 
  while309_done821:
    .return (__lowered_lex_170) 
.end
.HLL "nqp"
.namespace []
.sub "EXPR" :subid("cuid_80_1431289891.89934") :anon :lex :outer("cuid_234_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 564
    .param pmc __lowered_lex_180 
    .param string __lowered_lex_181 :optional 
    .param int haz_param_5 :opt_flag 
    .param int __lowered_lex_182 :named("noinfix") :optional 
    .param int haz_param_6 :opt_flag 
    .local pmc __lowered_lex_183 
    .local int __lowered_lex_184 
    .local string __lowered_lex_185 
    .local pmc __lowered_lex_186 
    .local pmc __lowered_lex_187 
    .local pmc __lowered_lex_188 
    .local pmc __lowered_lex_189 
    .local pmc __lowered_lex_190 
    .local pmc __lowered_lex_191 
    .local pmc __lowered_lex_192 
    .local pmc __lowered_lex_193 
    .local pmc __lowered_lex_194 
    .local pmc __lowered_lex_195 
    .local pmc __lowered_lex_196 
    .local string __lowered_lex_197 
    .local string __lowered_lex_198 
    .local string __lowered_lex_199 
    .local int __lowered_lex_200 
    .local int __lowered_lex_201 
    .local pmc __lowered_lex_174 
    .local pmc __lowered_lex_175 
    .local pmc __lowered_lex_176 
    .local pmc __lowered_lex_177 
    .local pmc fb_tmp_33 
    .local pmc fb_tmp_34 
    .local pmc fb_tmp_35 
    .local pmc fb_tmp_36 
    .local pmc fb_tmp_37 
    .local pmc fb_tmp_38 
    .local pmc fb_tmp_39 
    .local pmc fb_tmp_40 
    .local pmc fb_tmp_41 
    .local pmc fb_tmp_42 
    .local pmc fb_tmp_43 
    .local pmc fb_tmp_44 
    .local pmc fb_tmp_45 
    .local pmc fb_tmp_46 
    .local pmc fb_tmp_47 
    .local pmc fb_tmp_48 
    .local pmc __lowered_lex_178 
    .local pmc __lowered_lex_179 
    .local pmc fb_tmp_49 
    .local pmc fb_tmp_50 
    if haz_param_5, default976
    set $S5013, ""
    set __lowered_lex_181, $S5013
  default976:
    if haz_param_6, default977
    set $I5056, 0
    set __lowered_lex_182, $I5056
  default977:
    new $P5001, 'QRPA'
    set __lowered_lex_186, $P5001
    new $P5002, 'QRPA'
    set __lowered_lex_187, $P5002
    nqp_get_sc_object $P5003, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_188, $P5003
    nqp_get_sc_object $P5004, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_189, $P5004
    new $P5005, 'Hash'
    set __lowered_lex_190, $P5005
    new $P5006, 'QRPA'
    set __lowered_lex_191, $P5006
    new $P5007, 'QRPA'
    set __lowered_lex_192, $P5007
    nqp_get_sc_object $P5008, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_193, $P5008
    nqp_get_sc_object $P5009, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_194, $P5009
    nqp_get_sc_object $P5010, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_195, $P5010
    new $P5011, 'Hash'
    set __lowered_lex_196, $P5011
    set __lowered_lex_197, ""
    set __lowered_lex_198, ""
    set __lowered_lex_199, ""
    set __lowered_lex_200, 0
    set __lowered_lex_201, 0
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_830
    .lex "RETURN", $P101
.annotate 'line', 565
    nqp_decontainerize $P5012, __lowered_lex_180
    $P5013 = $P5012."!cursor_start_cur"()
    set __lowered_lex_183, $P5013
    find_lex $P5014, "$cursor_class"
    repr_get_attr_int $I5001, __lowered_lex_183, $P5014, "$!from"
    set __lowered_lex_184, $I5001
    set __lowered_lex_185, "termish"
    new $P5170, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5170, while313_handlers835
    push_eh $P5170
  while313_test832:
    box $P5171, 1
    set $P5169, $P5171
    unless 1 goto while313_done836 
  while313_redo834:
.annotate 'line', 585
    find_lex $P5015, "$cursor_class"
    repr_bind_attr_int __lowered_lex_183, $P5015, "$!pos", __lowered_lex_184
.annotate 'line', 587
    $P5016 = __lowered_lex_183.__lowered_lex_185()
    set __lowered_lex_188, $P5016
    find_lex $P5017, "$cursor_class"
    repr_get_attr_int $I5002, __lowered_lex_188, $P5017, "$!pos"
    set __lowered_lex_184, $I5002
    find_lex $P5018, "$cursor_class"
    repr_bind_attr_int __lowered_lex_183, $P5018, "$!pos", __lowered_lex_184
    islt $I5003, __lowered_lex_184, 0
    unless $I5003 goto if314_end838 
.annotate 'line', 590
    unless __lowered_lex_186 goto if315_end840 
.annotate 'line', 591
    $P5019 = __lowered_lex_183."panic"("Missing required term after infix")
  if315_end840:
    $P5020 = "RETURN"(__lowered_lex_183)
  if314_end838:
.annotate 'line', 595
    $P5021 = __lowered_lex_188."MATCH"()
    set __lowered_lex_189, $P5021
    set __lowered_lex_190, __lowered_lex_189
    new $P5024, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5024, while316_handlers844
    push_eh $P5024
  while316_test841:
    exists $I5004, __lowered_lex_190["OPER"]
    box $P5025, $I5004
    set $P5023, $P5025
    unless $I5004 goto while316_done845 
  while316_redo843:
    set $P5022, __lowered_lex_190["OPER"]
    set __lowered_lex_190, $P5022
    set $P5023, __lowered_lex_190
    goto while316_test841 
  while316_handlers844:
    .get_results ($P5024)
    pop_upto_eh $P5024
    getattribute $P5026, $P5024, 'type'
    eq $P5026, .CONTROL_LOOP_NEXT, while316_test841
    eq $P5026, .CONTROL_LOOP_REDO, while316_redo843
  while316_done845:
    pop_eh 
    set $P5027, __lowered_lex_190["prefixish"]
    set __lowered_lex_191, $P5027
    set $P5028, __lowered_lex_190["postfixish"]
    set __lowered_lex_192, $P5028
    isnull $I5005, __lowered_lex_191
    set $I5007, $I5005
    if $I5005 goto unless318_end849 
    isnull $I5006, __lowered_lex_192
    set $I5007, $I5006
  unless318_end849:
    if $I5007 goto unless317_end847 
.annotate 'line', 604
  while319_test850:
    set $P5029, __lowered_lex_191
    unless __lowered_lex_191 goto if320_end856 
    set $P5029, __lowered_lex_192
  if320_end856:
    set $P5065, $P5029
    unless $P5029 goto while319_done854 
  while319_redo852:
.annotate 'line', 605
    set fb_tmp_35, __lowered_lex_191
    repr_defined $I5010, fb_tmp_35
    unless $I5010 goto if323_else861 
    set $P5030, fb_tmp_35[0]
    set $P5032, $P5030
    goto if323_end862
  if323_else861:
    null $P5031
    set $P5032, $P5031
  if323_end862:
    unless_null $P5032, vivi_324863
    nqp_get_sc_object $P5033, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5032, $P5033
  vivi_324863:
    set fb_tmp_34, $P5032
    repr_defined $I5009, fb_tmp_34
    unless $I5009 goto if322_else859 
    set $P5034, fb_tmp_34["OPER"]
    set $P5036, $P5034
    goto if322_end860
  if322_else859:
    null $P5035
    set $P5036, $P5035
  if322_end860:
    unless_null $P5036, vivi_325864
    nqp_get_sc_object $P5037, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5036, $P5037
  vivi_325864:
    set fb_tmp_33, $P5036
    repr_defined $I5008, fb_tmp_33
    unless $I5008 goto if321_else857 
    set $P5038, fb_tmp_33["O"]
    set $P5040, $P5038
    goto if321_end858
  if321_else857:
    null $P5039
    set $P5040, $P5039
  if321_end858:
    unless_null $P5040, vivi_326865
    nqp_get_sc_object $P5041, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5040, $P5041
  vivi_326865:
    set __lowered_lex_174, $P5040
    set fb_tmp_38, __lowered_lex_192
    repr_defined $I5013, fb_tmp_38
    unless $I5013 goto if329_else870 
    elements $I5015, __lowered_lex_192
    sub $I5014, $I5015, 1
    set $P5042, fb_tmp_38[$I5014]
    set $P5044, $P5042
    goto if329_end871
  if329_else870:
    null $P5043
    set $P5044, $P5043
  if329_end871:
    unless_null $P5044, vivi_330872
    nqp_get_sc_object $P5045, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5044, $P5045
  vivi_330872:
    set fb_tmp_37, $P5044
    repr_defined $I5012, fb_tmp_37
    unless $I5012 goto if328_else868 
    set $P5046, fb_tmp_37["OPER"]
    set $P5048, $P5046
    goto if328_end869
  if328_else868:
    null $P5047
    set $P5048, $P5047
  if328_end869:
    unless_null $P5048, vivi_331873
    nqp_get_sc_object $P5049, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5048, $P5049
  vivi_331873:
    set fb_tmp_36, $P5048
    repr_defined $I5011, fb_tmp_36
    unless $I5011 goto if327_else866 
    set $P5050, fb_tmp_36["O"]
    set $P5052, $P5050
    goto if327_end867
  if327_else866:
    null $P5051
    set $P5052, $P5051
  if327_end867:
    unless_null $P5052, vivi_332874
    nqp_get_sc_object $P5053, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5052, $P5053
  vivi_332874:
    set __lowered_lex_175, $P5052
    set $P5054, __lowered_lex_174["prec"]
    unless_null $P5054, vivi_333875
    box $P5055, ""
    set $P5054, $P5055
  vivi_333875:
    set __lowered_lex_176, $P5054
    set $P5056, __lowered_lex_175["prec"]
    unless_null $P5056, vivi_334876
    box $P5057, ""
    set $P5056, $P5057
  vivi_334876:
    set __lowered_lex_177, $P5056
    set $S5001, __lowered_lex_177
    set $S5002, __lowered_lex_176
    isgt $I5016, $S5001, $S5002
    set $I5021, $I5016
    if $I5016 goto unless336_end880 
    set $S5003, __lowered_lex_177
    set $S5004, __lowered_lex_176
    iseq $I5017, $S5003, $S5004
    set $I5020, $I5017
    unless $I5017 goto if337_end882 
    set fb_tmp_39, __lowered_lex_175
    repr_defined $I5019, fb_tmp_39
    unless $I5019 goto if338_else883 
    set $P5058, fb_tmp_39["uassoc"]
    set $P5060, $P5058
    goto if338_end884
  if338_else883:
    null $P5059
    set $P5060, $P5059
  if338_end884:
    unless_null $P5060, vivi_339885
    nqp_get_sc_object $P5061, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5060, $P5061
  vivi_339885:
    set $S5005, $P5060
    iseq $I5018, $S5005, "right"
    set $I5020, $I5018
  if337_end882:
    set $I5021, $I5020
  unless336_end880:
    unless $I5021 goto if335_else877 
.annotate 'line', 613
    shift $P5062, __lowered_lex_191
    push __lowered_lex_186, $P5062
    set $P5064, __lowered_lex_186
    goto if335_end878
  if335_else877:
.annotate 'line', 616
    pop $P5063, __lowered_lex_192
    push __lowered_lex_186, $P5063
    set $P5064, __lowered_lex_186
  if335_end878:
    set $P5065, $P5064
    goto while319_test850 
  while319_done854:
    new $P5068, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5068, while340_handlers889
    push_eh $P5068
  while340_test886:
    set $P5067, __lowered_lex_191
    unless __lowered_lex_191 goto while340_done890 
  while340_redo888:
    shift $P5066, __lowered_lex_191
    push __lowered_lex_186, $P5066
    set $P5067, __lowered_lex_186
    goto while340_test886 
  while340_handlers889:
    .get_results ($P5068)
    pop_upto_eh $P5068
    getattribute $P5069, $P5068, 'type'
    eq $P5069, .CONTROL_LOOP_NEXT, while340_test886
    eq $P5069, .CONTROL_LOOP_REDO, while340_redo888
  while340_done890:
    pop_eh 
    new $P5072, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5072, while341_handlers894
    push_eh $P5072
  while341_test891:
    set $P5071, __lowered_lex_192
    unless __lowered_lex_192 goto while341_done895 
  while341_redo893:
    pop $P5070, __lowered_lex_192
    push __lowered_lex_186, $P5070
    set $P5071, __lowered_lex_186
    goto while341_test891 
  while341_handlers894:
    .get_results ($P5072)
    pop_upto_eh $P5072
    getattribute $P5073, $P5072, 'type'
    eq $P5073, .CONTROL_LOOP_NEXT, while341_test891
    eq $P5073, .CONTROL_LOOP_REDO, while341_redo893
  while341_done895:
    pop_eh 
  unless317_end847:
    delete __lowered_lex_189["prefixish"]
    delete __lowered_lex_189["postfixish"]
    set $P5074, __lowered_lex_189["term"]
    push __lowered_lex_187, $P5074
    unless __lowered_lex_182 goto if342_end897 
    die 0, .CONTROL_LOOP_LAST
  if342_end897:
    set __lowered_lex_200, 1
    set __lowered_lex_201, 0
    new $P5126, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5126, while343_handlers901
    push_eh $P5126
  while343_test898:
    box $P5127, __lowered_lex_200
    set $P5125, $P5127
    unless __lowered_lex_200 goto while343_done902 
  while343_redo900:
.annotate 'line', 631
    find_lex $P5075, "$cursor_class"
    repr_bind_attr_int __lowered_lex_183, $P5075, "$!pos", __lowered_lex_184
.annotate 'line', 635
    $P5076 = __lowered_lex_183."ws"()
    set __lowered_lex_193, $P5076
    find_lex $P5077, "$cursor_class"
    repr_get_attr_int $I5022, __lowered_lex_193, $P5077, "$!pos"
    set __lowered_lex_184, $I5022
    islt $I5023, __lowered_lex_184, 0
    unless $I5023 goto if344_end904 
.annotate 'line', 637
    set __lowered_lex_201, 1
    die 0, .CONTROL_LOOP_LAST
  if344_end904:
    find_lex $P5078, "$cursor_class"
    repr_bind_attr_int __lowered_lex_183, $P5078, "$!pos", __lowered_lex_184
.annotate 'line', 644
    $P5079 = __lowered_lex_183."infixish"()
    set __lowered_lex_194, $P5079
    find_lex $P5080, "$cursor_class"
    repr_get_attr_int $I5024, __lowered_lex_194, $P5080, "$!pos"
    set __lowered_lex_184, $I5024
    islt $I5025, __lowered_lex_184, 0
    unless $I5025 goto if345_end906 
.annotate 'line', 646
    set __lowered_lex_201, 1
    die 0, .CONTROL_LOOP_LAST
  if345_end906:
.annotate 'line', 650
    $P5081 = __lowered_lex_194."MATCH"()
    set __lowered_lex_195, $P5081
    set fb_tmp_41, __lowered_lex_195
    repr_defined $I5027, fb_tmp_41
    unless $I5027 goto if347_else909 
    set $P5082, fb_tmp_41["OPER"]
    set $P5084, $P5082
    goto if347_end910
  if347_else909:
    null $P5083
    set $P5084, $P5083
  if347_end910:
    unless_null $P5084, vivi_348911
    nqp_get_sc_object $P5085, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5084, $P5085
  vivi_348911:
    set fb_tmp_40, $P5084
    repr_defined $I5026, fb_tmp_40
    unless $I5026 goto if346_else907 
    set $P5086, fb_tmp_40["O"]
    set $P5088, $P5086
    goto if346_end908
  if346_else907:
    null $P5087
    set $P5088, $P5087
  if346_end908:
    unless_null $P5088, vivi_349912
    nqp_get_sc_object $P5089, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5088, $P5089
  vivi_349912:
    set __lowered_lex_196, $P5088
    set $P5090, __lowered_lex_196["nextterm"]
    unless_null $P5090, vivi_350913
    box $P5091, "termish"
    set $P5090, $P5091
  vivi_350913:
    set $S5006, $P5090
    set __lowered_lex_185, $S5006
    set fb_tmp_42, __lowered_lex_196
    repr_defined $I5028, fb_tmp_42
    unless $I5028 goto if351_else914 
    set $P5092, fb_tmp_42["prec"]
    set $P5094, $P5092
    goto if351_end915
  if351_else914:
    null $P5093
    set $P5094, $P5093
  if351_end915:
    unless_null $P5094, vivi_352916
    nqp_get_sc_object $P5095, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5094, $P5095
  vivi_352916:
    set $S5007, $P5094
    set __lowered_lex_197, $S5007
    if __lowered_lex_197 goto unless353_end918 
.annotate 'line', 656
    $P5096 = __lowered_lex_194."panic"("Missing infixish operator precedence")
  unless353_end918:
    islt $I5029, __lowered_lex_197, __lowered_lex_181
    unless $I5029 goto if354_end920 
.annotate 'line', 658
    set __lowered_lex_201, 1
    die 0, .CONTROL_LOOP_LAST
  if354_end920:
    set $P5097, __lowered_lex_196["sub"]
    unless_null $P5097, vivi_355921
    set $P5098, __lowered_lex_196["prec"]
    set $P5097, $P5098
  vivi_355921:
    set __lowered_lex_196["prec"], $P5097
    new $P5118, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5118, while356_handlers925
    push_eh $P5118
  while356_test922:
    set $P5117, __lowered_lex_186
    unless __lowered_lex_186 goto while356_done926 
  while356_redo924:
.annotate 'line', 665
    set fb_tmp_46, __lowered_lex_186
    repr_defined $I5033, fb_tmp_46
    unless $I5033 goto if360_else933 
    set $N5001, __lowered_lex_186
    set $I5035, $N5001
    sub $I5034, $I5035, 1
    set $P5099, fb_tmp_46[$I5034]
    set $P5101, $P5099
    goto if360_end934
  if360_else933:
    null $P5100
    set $P5101, $P5100
  if360_end934:
    unless_null $P5101, vivi_361935
    nqp_get_sc_object $P5102, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5101, $P5102
  vivi_361935:
    set fb_tmp_45, $P5101
    repr_defined $I5032, fb_tmp_45
    unless $I5032 goto if359_else931 
    set $P5103, fb_tmp_45["OPER"]
    set $P5105, $P5103
    goto if359_end932
  if359_else931:
    null $P5104
    set $P5105, $P5104
  if359_end932:
    unless_null $P5105, vivi_362936
    nqp_get_sc_object $P5106, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5105, $P5106
  vivi_362936:
    set fb_tmp_44, $P5105
    repr_defined $I5031, fb_tmp_44
    unless $I5031 goto if358_else929 
    set $P5107, fb_tmp_44["O"]
    set $P5109, $P5107
    goto if358_end930
  if358_else929:
    null $P5108
    set $P5109, $P5108
  if358_end930:
    unless_null $P5109, vivi_363937
    nqp_get_sc_object $P5110, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5109, $P5110
  vivi_363937:
    set fb_tmp_43, $P5109
    repr_defined $I5030, fb_tmp_43
    unless $I5030 goto if357_else927 
    set $P5111, fb_tmp_43["prec"]
    set $P5113, $P5111
    goto if357_end928
  if357_else927:
    null $P5112
    set $P5113, $P5112
  if357_end928:
    unless_null $P5113, vivi_364938
    nqp_get_sc_object $P5114, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5113, $P5114
  vivi_364938:
    set $S5008, $P5113
    set __lowered_lex_198, $S5008
    isgt $I5036, __lowered_lex_198, __lowered_lex_197
    if $I5036 goto unless365_end940 
    die 0, .CONTROL_LOOP_LAST
  unless365_end940:
.annotate 'line', 668
    nqp_decontainerize $P5115, __lowered_lex_180
    $P5116 = $P5115."EXPR_reduce"(__lowered_lex_187, __lowered_lex_186)
    set $P5117, $P5116
    goto while356_test922 
  while356_handlers925:
    .get_results ($P5118)
    pop_upto_eh $P5118
    getattribute $P5119, $P5118, 'type'
    eq $P5119, .CONTROL_LOOP_NEXT, while356_test922
    eq $P5119, .CONTROL_LOOP_REDO, while356_redo924
  while356_done926:
    pop_eh 
    set $P5120, __lowered_lex_196["fake"]
    isnull $I5037, $P5120
    unless $I5037 goto if366_else941 
.annotate 'line', 671
    set __lowered_lex_200, 0
    box $P5124, __lowered_lex_200
    set $P5123, $P5124
    goto if366_end942
  if366_else941:
.annotate 'line', 674
    push __lowered_lex_186, __lowered_lex_195
.annotate 'line', 676
    nqp_decontainerize $P5121, __lowered_lex_180
    $P5122 = $P5121."EXPR_reduce"(__lowered_lex_187, __lowered_lex_186)
    set $P5123, $P5122
  if366_end942:
    set $P5125, $P5123
    goto while343_test898 
  while343_handlers901:
    .get_results ($P5126)
    pop_upto_eh $P5126
    getattribute $P5128, $P5126, 'type'
    eq $P5128, .CONTROL_LOOP_NEXT, while343_test898
    eq $P5128, .CONTROL_LOOP_REDO, while343_redo900
  while343_done902:
    pop_eh 
    unless __lowered_lex_201 goto if367_end944 
    die 0, .CONTROL_LOOP_LAST
  if367_end944:
    iseq $I5038, __lowered_lex_198, __lowered_lex_197
    unless $I5038 goto if368_end946 
.annotate 'line', 682
    set $P5129, __lowered_lex_196["assoc"]
    set $S5009, $P5129
    set __lowered_lex_199, $S5009
    iseq $I5039, __lowered_lex_199, "non"
    unless $I5039 goto if369_else947 
.annotate 'line', 684
.annotate 'line', 685
    nqp_decontainerize $P5130, __lowered_lex_180
.annotate 'line', 686
    set fb_tmp_48, __lowered_lex_186
    repr_defined $I5041, fb_tmp_48
    unless $I5041 goto if371_else951 
    elements $I5043, __lowered_lex_186
    sub $I5042, $I5043, 1
    set $P5131, fb_tmp_48[$I5042]
    set $P5133, $P5131
    goto if371_end952
  if371_else951:
    null $P5132
    set $P5133, $P5132
  if371_end952:
    unless_null $P5133, vivi_372953
    nqp_get_sc_object $P5134, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5133, $P5134
  vivi_372953:
    set fb_tmp_47, $P5133
    repr_defined $I5040, fb_tmp_47
    unless $I5040 goto if370_else949 
    set $P5135, fb_tmp_47["OPER"]
    set $P5137, $P5135
    goto if370_end950
  if370_else949:
    null $P5136
    set $P5137, $P5136
  if370_end950:
    unless_null $P5137, vivi_373954
    nqp_get_sc_object $P5138, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5137, $P5138
  vivi_373954:
    $P5139 = $P5137."Str"()
.annotate 'line', 687
    $P5140 = __lowered_lex_195."Str"()
    $P5141 = $P5130."EXPR_nonassoc"(__lowered_lex_194, $P5139, $P5140)
    set $P5161, $P5141
    goto if369_end948
  if369_else947:
    iseq $I5044, __lowered_lex_199, "left"
    unless $I5044 goto if374_else955 
.annotate 'line', 689
.annotate 'line', 691
    nqp_decontainerize $P5142, __lowered_lex_180
    $P5143 = $P5142."EXPR_reduce"(__lowered_lex_187, __lowered_lex_186)
    set $P5160, $P5143
    goto if374_end956
  if374_else955:
    iseq $I5045, __lowered_lex_199, "list"
    box $P5159, $I5045
    set $P5158, $P5159
    unless $I5045 goto if375_end958 
.annotate 'line', 693
.annotate 'line', 694
    set fb_tmp_50, __lowered_lex_186
    repr_defined $I5047, fb_tmp_50
    unless $I5047 goto if377_else961 
    elements $I5049, __lowered_lex_186
    sub $I5048, $I5049, 1
    set $P5144, fb_tmp_50[$I5048]
    set $P5146, $P5144
    goto if377_end962
  if377_else961:
    null $P5145
    set $P5146, $P5145
  if377_end962:
    unless_null $P5146, vivi_378963
    nqp_get_sc_object $P5147, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5146, $P5147
  vivi_378963:
    set fb_tmp_49, $P5146
    repr_defined $I5046, fb_tmp_49
    unless $I5046 goto if376_else959 
    set $P5148, fb_tmp_49["OPER"]
    set $P5150, $P5148
    goto if376_end960
  if376_else959:
    null $P5149
    set $P5150, $P5149
  if376_end960:
    unless_null $P5150, vivi_379964
    nqp_get_sc_object $P5151, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5150, $P5151
  vivi_379964:
    $P5152 = $P5150."Str"()
    set __lowered_lex_178, $P5152
.annotate 'line', 695
    $P5153 = __lowered_lex_195."Str"()
    set __lowered_lex_179, $P5153
    set $S5010, __lowered_lex_178
    set $S5011, __lowered_lex_179
    isne $I5050, $S5010, $S5011
    set $I5052, $I5050
    unless $I5050 goto if381_end968 
    set $S5012, __lowered_lex_178
    isne $I5051, $S5012, ":"
    set $I5052, $I5051
  if381_end968:
    box $P5157, $I5052
    set $P5156, $P5157
    unless $I5052 goto if380_end966 
.annotate 'line', 696
    nqp_decontainerize $P5154, __lowered_lex_180
    $P5155 = $P5154."EXPR_nonassoc"(__lowered_lex_194, __lowered_lex_178, __lowered_lex_179)
    set $P5156, $P5155
  if380_end966:
    set $P5158, $P5156
  if375_end958:
    set $P5160, $P5158
  if374_end956:
    set $P5161, $P5160
  if369_end948:
  if368_end946:
    push __lowered_lex_186, __lowered_lex_195
    find_lex $P5162, "$cursor_class"
    repr_bind_attr_int __lowered_lex_183, $P5162, "$!pos", __lowered_lex_184
.annotate 'line', 702
    $P5163 = __lowered_lex_183."ws"()
    set __lowered_lex_193, $P5163
    find_lex $P5164, "$cursor_class"
    repr_get_attr_int $I5053, __lowered_lex_193, $P5164, "$!pos"
    set __lowered_lex_184, $I5053
    find_lex $P5165, "$cursor_class"
    repr_bind_attr_int __lowered_lex_183, $P5165, "$!pos", __lowered_lex_184
    islt $I5054, __lowered_lex_184, 0
    box $P5168, $I5054
    set $P5167, $P5168
    unless $I5054 goto if382_end970 
    $P5166 = "RETURN"(__lowered_lex_183)
    set $P5167, $P5166
  if382_end970:
    set $P5169, $P5167
    goto while313_test832 
  while313_handlers835:
    .get_results ($P5170)
    pop_upto_eh $P5170
    getattribute $P5172, $P5170, 'type'
    eq $P5172, .CONTROL_LOOP_NEXT, while313_test832
    eq $P5172, .CONTROL_LOOP_REDO, while313_redo834
  while313_done836:
    pop_eh 
    new $P5176, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5176, while383_handlers974
    push_eh $P5176
  while383_test971:
    set $P5175, __lowered_lex_186
    unless __lowered_lex_186 goto while383_done975 
  while383_redo973:
.annotate 'line', 708
    nqp_decontainerize $P5173, __lowered_lex_180
    $P5174 = $P5173."EXPR_reduce"(__lowered_lex_187, __lowered_lex_186)
    set $P5175, $P5174
    goto while383_test971 
  while383_handlers974:
    .get_results ($P5176)
    pop_upto_eh $P5176
    getattribute $P5177, $P5176, 'type'
    eq $P5177, .CONTROL_LOOP_NEXT, while383_test971
    eq $P5177, .CONTROL_LOOP_REDO, while383_redo973
  while383_done975:
    pop_eh 
    find_lex $P5178, "$cursor_class"
    repr_get_attr_int $I5055, __lowered_lex_183, $P5178, "$!pos"
    set __lowered_lex_184, $I5055
.annotate 'line', 710
    nqp_decontainerize $P5179, __lowered_lex_180
    $P5180 = $P5179."!cursor_start_cur"()
    set __lowered_lex_183, $P5180
.annotate 'line', 711
    __lowered_lex_183."!cursor_pass"(__lowered_lex_184)
    find_lex $P5181, "$cursor_class"
    repr_bind_attr_int __lowered_lex_183, $P5181, "$!pos", __lowered_lex_184
    find_lex $P5182, "$cursor_class"
    pop $P5183, __lowered_lex_187
    setattribute __lowered_lex_183, $P5182, "$!match", $P5183
.annotate 'line', 714
    __lowered_lex_183."!reduce"("EXPR")
    goto lexotic_831
  lexotic_830:
    .get_results (__lowered_lex_183)
  lexotic_831:
    .return (__lowered_lex_183) 
.end
.HLL "nqp"
.namespace []
.sub "EXPR_reduce" :subid("cuid_81_1431289891.89934") :anon :lex :outer("cuid_234_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 718
    .param pmc __lowered_lex_202 
    .param pmc __lowered_lex_203 
    .param pmc __lowered_lex_204 
    .local pmc __lowered_lex_205 
    .local pmc __lowered_lex_206 
    .local pmc __lowered_lex_207 
    .local string __lowered_lex_208 
    .local string __lowered_lex_209 
    .local string __lowered_lex_210 
    .local pmc __lowered_lex_211 
    .local pmc __lowered_lex_212 
    set __lowered_lex_209, ""
    set __lowered_lex_210, ""
    nqp_get_sc_object $P5001, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_211, $P5001
    nqp_get_sc_object $P5002, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_212, $P5002
    pop $P5003, __lowered_lex_204
    set __lowered_lex_205, $P5003
    nqp_get_sc_object $P5004, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 43
    new $P5005, 'QRPA'
    setattribute __lowered_lex_205, $P5004, "@!array", $P5005
    set $P5006, __lowered_lex_205["OPER"]
    set __lowered_lex_206, $P5006
    set $P5007, __lowered_lex_206["O"]
    set __lowered_lex_207, $P5007
    set $P5008, __lowered_lex_207["assoc"]
    set $S5001, $P5008
    set __lowered_lex_208, $S5001
    iseq $I5001, __lowered_lex_208, "unary"
    unless $I5001 goto if384_else978 
.annotate 'line', 732
    pop $P5009, __lowered_lex_203
    set __lowered_lex_212, $P5009
    set __lowered_lex_205[0], __lowered_lex_212
.annotate 'line', 735
    $P5010 = __lowered_lex_212."from"()
    set $N5001, $P5010
    $P5011 = __lowered_lex_205."from"()
    set $N5002, $P5011
    islt $I5002, $N5001, $N5002
    unless $I5002 goto if385_else980 
    set $S5002, "POSTFIX"
    goto if385_end981
  if385_else980:
    set $S5002, "PREFIX"
  if385_end981:
    set __lowered_lex_209, $S5002
    goto if384_end979
  if384_else978:
    iseq $I5003, __lowered_lex_208, "list"
    unless $I5003 goto if386_else982 
.annotate 'line', 737
    set $P5012, __lowered_lex_206["sym"]
    unless_null $P5012, vivi_387984
    box $P5013, ""
    set $P5012, $P5013
  vivi_387984:
    set $S5003, $P5012
    set __lowered_lex_210, $S5003
    pop $P5014, __lowered_lex_203
    unshift __lowered_lex_205, $P5014
    new $P5022, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5022, while388_handlers988
    push_eh $P5022
  while388_test985:
    set $P5021, __lowered_lex_204
    unless __lowered_lex_204 goto while388_done989 
  while388_redo987:
.annotate 'line', 740
    elements $I5006, __lowered_lex_204
    sub $I5005, $I5006, 1
    set $P5017, __lowered_lex_204[$I5005]
    set $P5016, $P5017["OPER"]
    set $P5015, $P5016["sym"]
    unless_null $P5015, vivi_390992
    box $P5018, ""
    set $P5015, $P5018
  vivi_390992:
    set $S5004, $P5015
    isne $I5004, __lowered_lex_210, $S5004
    unless $I5004 goto if389_end991 
    die 0, .CONTROL_LOOP_LAST
  if389_end991:
    pop $P5019, __lowered_lex_203
    unshift __lowered_lex_205, $P5019
    pop $P5020, __lowered_lex_204
    set $P5021, $P5020
    goto while388_test985 
  while388_handlers988:
    .get_results ($P5022)
    pop_upto_eh $P5022
    getattribute $P5023, $P5022, 'type'
    eq $P5023, .CONTROL_LOOP_NEXT, while388_test985
    eq $P5023, .CONTROL_LOOP_REDO, while388_redo987
  while388_done989:
    pop_eh 
    pop $P5024, __lowered_lex_203
    unshift __lowered_lex_205, $P5024
    set __lowered_lex_209, "LIST"
    set $S5006, __lowered_lex_209
    goto if386_end983
  if386_else982:
.annotate 'line', 750
    pop $P5025, __lowered_lex_203
    set __lowered_lex_205[1], $P5025
    pop $P5026, __lowered_lex_203
    set __lowered_lex_205[0], $P5026
    set $P5027, __lowered_lex_207["reducecheck"]
    set __lowered_lex_211, $P5027
    isnull $I5007, __lowered_lex_211
    if $I5007 goto unless391_end994 
.annotate 'line', 754
    nqp_decontainerize $P5028, __lowered_lex_202
    set $S5005, __lowered_lex_211
    $P5029 = $P5028.$S5005(__lowered_lex_205)
  unless391_end994:
    set __lowered_lex_209, "INFIX"
    set $S5006, __lowered_lex_209
  if386_end983:
  if384_end979:
.annotate 'line', 757
    nqp_decontainerize $P5030, __lowered_lex_202
    $P5030."!reduce_with_match"("EXPR", __lowered_lex_209, __lowered_lex_205)
    push __lowered_lex_203, __lowered_lex_205
    .return (__lowered_lex_203) 
.end
.HLL "nqp"
.namespace []
.sub "EXPR_nonassoc" :subid("cuid_82_1431289891.89934") :anon :lex :outer("cuid_234_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 761
    .param pmc __lowered_lex_213 
    .param pmc __lowered_lex_214 
    .param pmc __lowered_lex_215 
    .param pmc __lowered_lex_216 
.annotate 'line', 762
    set $S5005, __lowered_lex_215
    concat $S5004, "\"", $S5005
    concat $S5003, $S5004, "\" and \""
    set $S5006, __lowered_lex_216
    concat $S5002, $S5003, $S5006
    concat $S5001, $S5002, "\" are non-associative and require parens"
    $P5001 = __lowered_lex_214."panic"($S5001)
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "ternary" :subid("cuid_83_1431289891.89934") :anon :lex :outer("cuid_234_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 765
    .param pmc __lowered_lex_217 
    .param pmc __lowered_lex_218 
    .local pmc fb_tmp_51 
    .local pmc fb_tmp_52 
    .local pmc fb_tmp_53 
    set fb_tmp_51, __lowered_lex_218
    repr_defined $I5001, fb_tmp_51
    unless $I5001 goto if392_else995 
    set $P5001, fb_tmp_51[1]
    set $P5003, $P5001
    goto if392_end996
  if392_else995:
    null $P5002
    set $P5003, $P5002
  if392_end996:
    unless_null $P5003, vivi_393997
    nqp_get_sc_object $P5004, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5003, $P5004
  vivi_393997:
    set __lowered_lex_218[2], $P5003
    set fb_tmp_53, __lowered_lex_218
    repr_defined $I5003, fb_tmp_53
    unless $I5003 goto if395_else1000 
    set $P5005, fb_tmp_53["infix"]
    set $P5007, $P5005
    goto if395_end1001
  if395_else1000:
    null $P5006
    set $P5007, $P5006
  if395_end1001:
    unless_null $P5007, vivi_3961002
    nqp_get_sc_object $P5008, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5007, $P5008
  vivi_3961002:
    set fb_tmp_52, $P5007
    repr_defined $I5002, fb_tmp_52
    unless $I5002 goto if394_else998 
    set $P5009, fb_tmp_52["EXPR"]
    set $P5011, $P5009
    goto if394_end999
  if394_else998:
    null $P5010
    set $P5011, $P5010
  if394_end999:
    unless_null $P5011, vivi_3971003
    nqp_get_sc_object $P5012, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5011, $P5012
  vivi_3971003:
    set __lowered_lex_218[1], $P5011
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "MARKER" :subid("cuid_84_1431289891.89934") :anon :lex :outer("cuid_234_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 770
    .param pmc __lowered_lex_219 
    .param string __lowered_lex_220 
    .local pmc __lowered_lex_221 
    .local pmc __lowered_lex_222 
    nqp_decontainerize $P5003, __lowered_lex_219
    find_lex $P5004, "$cursor_class"
    getattribute $P5002, $P5003, $P5004, "$!shared"
    nqp_get_sc_object $P5005, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    getattribute $P5001, $P5002, $P5005, "%!marks"
    set __lowered_lex_221, $P5001
    set $P5006, __lowered_lex_221[__lowered_lex_220]
    set __lowered_lex_222, $P5006
    isnull $I5001, __lowered_lex_222
    unless $I5001 goto if398_else1004 
.annotate 'line', 775
.annotate 'line', 776
    nqp_decontainerize $P5007, __lowered_lex_219
    $P5008 = $P5007."!cursor_start_cur"()
    set __lowered_lex_222, $P5008
.annotate 'line', 777
    nqp_decontainerize $P5009, __lowered_lex_219
    $P5010 = $P5009."pos"()
    __lowered_lex_222."!cursor_pass"($P5010)
    set __lowered_lex_221[__lowered_lex_220], __lowered_lex_222
    set $P5016, __lowered_lex_222
    goto if398_end1005
  if398_else1004:
.annotate 'line', 780
    find_lex $P5011, "$cursor_class"
.annotate 'line', 781
    nqp_decontainerize $P5012, __lowered_lex_219
    $P5013 = $P5012."from"()
    set $I5002, $P5013
    repr_bind_attr_int __lowered_lex_222, $P5011, "$!from", $I5002
.annotate 'line', 782
    nqp_decontainerize $P5014, __lowered_lex_219
    $P5015 = $P5014."pos"()
    __lowered_lex_222."!cursor_pos"($P5015)
    set $P5016, __lowered_lex_222
  if398_end1005:
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "MARKED" :subid("cuid_85_1431289891.89934") :anon :lex :outer("cuid_234_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 787
    .param pmc __lowered_lex_223 
    .param string __lowered_lex_224 
    .local pmc __lowered_lex_225 
    .local pmc __lowered_lex_226 
    nqp_decontainerize $P5003, __lowered_lex_223
    find_lex $P5004, "$cursor_class"
    getattribute $P5002, $P5003, $P5004, "$!shared"
    nqp_get_sc_object $P5005, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    getattribute $P5001, $P5002, $P5005, "%!marks"
    set __lowered_lex_225, $P5001
    set $P5006, __lowered_lex_225[__lowered_lex_224]
    set __lowered_lex_226, $P5006
    nqp_get_sc_object $P5007, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 115
    type_check $I5001, __lowered_lex_226, $P5007
    set $I5003, $I5001
    unless $I5001 goto if400_end1009 
.annotate 'line', 792
    $P5008 = __lowered_lex_226."pos"()
    set $N5001, $P5008
    nqp_decontainerize $P5009, __lowered_lex_223
    $P5010 = $P5009."pos"()
    set $N5002, $P5010
    iseq $I5002, $N5001, $N5002
    set $I5003, $I5002
  if400_end1009:
    if $I5003 goto unless399_end1007 
.annotate 'line', 793
    nqp_decontainerize $P5011, __lowered_lex_223
    $P5012 = $P5011."!cursor_start_fail"()
    set __lowered_lex_226, $P5012
  unless399_end1007:
    .return (__lowered_lex_226) 
.end
.HLL "nqp"
.namespace []
.sub "LANG" :subid("cuid_86_1431289891.89934") :anon :lex :outer("cuid_234_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 798
    .param pmc __lowered_lex_227 
    .param pmc __lowered_lex_228 
    .param pmc __lowered_lex_229 
    .param pmc __lowered_lex_230 :slurpy 
    .lex "$*ACTIONS", $P101 
    .local pmc __lowered_lex_231 
    .local pmc fb_tmp_54 
    .local pmc fb_tmp_55 
    .local pmc pkg_viv_tmp_11 
    .local pmc fb_tmp_56 
    .local pmc fb_tmp_57 
    .local pmc pkg_viv_tmp_12 
.annotate 'line', 799
    find_dynamic_lex $P5001, "%*LANG"
    unless_null $P5001, fallback1012
    nqp_get_sc_object $P5003, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 0
    get_who $P5002, $P5003
    set pkg_viv_tmp_11, $P5002
    set fb_tmp_55, pkg_viv_tmp_11
    repr_defined $I5002, fb_tmp_55
    unless $I5002 goto if402_else1013 
    set $P5004, fb_tmp_55["%LANG"]
    set $P5006, $P5004
    goto if402_end1014
  if402_else1013:
    null $P5005
    set $P5006, $P5005
  if402_end1014:
    unless_null $P5006, vivi_4031015
    new $P5007, 'Hash'
    set pkg_viv_tmp_11["%LANG"], $P5007
    set $P5006, $P5007
  vivi_4031015:
    unless_null $P5006, vivi_4041016
    die "Contextual %*LANG not found"
    box $P5008, "Contextual %*LANG not found"
    set $P5006, $P5008
  vivi_4041016:
    set $P5001, $P5006
  fallback1012:
    set fb_tmp_54, $P5001
    repr_defined $I5001, fb_tmp_54
    unless $I5001 goto if401_else1010 
    set $S5001, __lowered_lex_228
    set $P5009, fb_tmp_54[$S5001]
    set $P5011, $P5009
    goto if401_end1011
  if401_else1010:
    null $P5010
    set $P5011, $P5010
  if401_end1011:
    unless_null $P5011, vivi_4051017
    nqp_get_sc_object $P5012, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5011, $P5012
  vivi_4051017:
    nqp_decontainerize $P5013, __lowered_lex_227
    $P5014 = $P5013."orig"()
    nqp_decontainerize $P5015, __lowered_lex_227
    $P5016 = $P5015."pos"()
    nqp_decontainerize $P5017, __lowered_lex_227
    $P5018 = $P5017."!shared"()
    $P5019 = $P5011."!cursor_init"($P5014, $P5016 :named("p"), $P5018 :named("shared"))
    set __lowered_lex_231, $P5019
.annotate 'line', 800
    nqp_decontainerize $P5021, __lowered_lex_227
    get_how $P5020, $P5021
    nqp_decontainerize $P5022, __lowered_lex_227
    $P5023 = $P5020."traced"($P5022)
    unless $P5023 goto if406_end1019 
.annotate 'line', 801
    get_how $P5024, __lowered_lex_231
    nqp_decontainerize $P5026, __lowered_lex_227
    get_how $P5025, $P5026
    nqp_decontainerize $P5027, __lowered_lex_227
    $P5028 = $P5025."trace_depth"($P5027)
    $P5029 = $P5024."trace-on"(__lowered_lex_231, $P5028)
  if406_end1019:
    find_dynamic_lex $P5030, "%*LANG"
    unless_null $P5030, fallback1022
    nqp_get_sc_object $P5032, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 0
    get_who $P5031, $P5032
    set pkg_viv_tmp_12, $P5031
    set fb_tmp_57, pkg_viv_tmp_12
    repr_defined $I5004, fb_tmp_57
    unless $I5004 goto if408_else1023 
    set $P5033, fb_tmp_57["%LANG"]
    set $P5035, $P5033
    goto if408_end1024
  if408_else1023:
    null $P5034
    set $P5035, $P5034
  if408_end1024:
    unless_null $P5035, vivi_4091025
    new $P5036, 'Hash'
    set pkg_viv_tmp_12["%LANG"], $P5036
    set $P5035, $P5036
  vivi_4091025:
    unless_null $P5035, vivi_4101026
    die "Contextual %*LANG not found"
    box $P5037, "Contextual %*LANG not found"
    set $P5035, $P5037
  vivi_4101026:
    set $P5030, $P5035
  fallback1022:
    set fb_tmp_56, $P5030
    repr_defined $I5003, fb_tmp_56
    unless $I5003 goto if407_else1020 
    set $S5003, __lowered_lex_228
    concat $S5002, $S5003, "-actions"
    set $P5038, fb_tmp_56[$S5002]
    set $P5040, $P5038
    goto if407_end1021
  if407_else1020:
    null $P5039
    set $P5040, $P5039
  if407_end1021:
    unless_null $P5040, vivi_4111027
    nqp_get_sc_object $P5041, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5040, $P5041
  vivi_4111027:
    set $P101, $P5040
.annotate 'line', 804
    set $S5004, __lowered_lex_229
    $P5042 = __lowered_lex_231.$S5004(__lowered_lex_230 :flat)
    .return ($P5042) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_235_1431289891.89934") :anon :lex :outer("cuid_232_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 809
    .const 'Sub' $P5035 = 'cuid_87_1431289891.89934' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_88_1431289891.89934' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_89_1431289891.89934' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_90_1431289891.89934' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_91_1431289891.89934' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_92_1431289891.89934' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_93_1431289891.89934' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_94_1431289891.89934' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_95_1431289891.89934' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_96_1431289891.89934' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_97_1431289891.89934' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_98_1431289891.89934' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_99_1431289891.89934' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_100_1431289891.89934' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_101_1431289891.89934' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_102_1431289891.89934' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_103_1431289891.89934' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_104_1431289891.89934' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_105_1431289891.89934' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_106_1431289891.89934' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_107_1431289891.89934' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_108_1431289891.89934' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_109_1431289891.89934' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_110_1431289891.89934' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_111_1431289891.89934' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_112_1431289891.89934' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_113_1431289891.89934' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_114_1431289891.89934' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_115_1431289891.89934' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_116_1431289891.89934' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_117_1431289891.89934' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_118_1431289891.89934' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_119_1431289891.89934' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_120_1431289891.89934' 
    capture_lex $P5035 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_87_1431289891.89934' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_88_1431289891.89934' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_89_1431289891.89934' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_90_1431289891.89934' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_91_1431289891.89934' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_92_1431289891.89934' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_93_1431289891.89934' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_94_1431289891.89934' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_95_1431289891.89934' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_96_1431289891.89934' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_97_1431289891.89934' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_98_1431289891.89934' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_99_1431289891.89934' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_100_1431289891.89934' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_101_1431289891.89934' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_102_1431289891.89934' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_103_1431289891.89934' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_104_1431289891.89934' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_105_1431289891.89934' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_106_1431289891.89934' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_107_1431289891.89934' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_108_1431289891.89934' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_109_1431289891.89934' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_110_1431289891.89934' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_111_1431289891.89934' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_112_1431289891.89934' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_113_1431289891.89934' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_114_1431289891.89934' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_115_1431289891.89934' 
    capture_lex $P5029
    .const 'Sub' $P5030 = 'cuid_116_1431289891.89934' 
    capture_lex $P5030
    .const 'Sub' $P5031 = 'cuid_117_1431289891.89934' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_118_1431289891.89934' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_119_1431289891.89934' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_120_1431289891.89934' 
    capture_lex $P5034
    .return ($P5034) 
.end
.HLL "nqp"
.namespace []
.sub "string_to_int" :subid("cuid_87_1431289891.89934") :anon :lex :outer("cuid_235_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 810
    .param pmc __lowered_lex_232 
    .param pmc __lowered_lex_233 
    .param pmc __lowered_lex_234 
    .local pmc __lowered_lex_235 
    set $I5001, __lowered_lex_234
    set $S5001, __lowered_lex_233
    nqp_radix $P5001, $I5001, $S5001, 0, 2
    set __lowered_lex_235, $P5001
    set $P5002, __lowered_lex_235[2]
    set $N5001, $P5002
    set $S5002, __lowered_lex_233
    length $I5003, $S5002
    set $N5002, $I5003
    iseq $I5002, $N5001, $N5002
    if $I5002 goto unless412_end1029 
.annotate 'line', 812
    $P5003 = __lowered_lex_233."CURSOR"()
    set $S5005, __lowered_lex_233
    concat $S5004, "'", $S5005
    concat $S5003, $S5004, "' is not a valid number"
    $P5004 = $P5003."panic"($S5003)
  unless412_end1029:
    set $P5005, __lowered_lex_235[0]
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "ints_to_string" :subid("cuid_88_1431289891.89934") :anon :lex :outer("cuid_235_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 817
    .param pmc __lowered_lex_238 
    .param pmc __lowered_lex_239 
    .local pmc __lowered_lex_237 
    .local pmc lowered_for_it__4 
    .local pmc __lowered_lex_236 
    nqp_islist $I5001, __lowered_lex_239
    unless $I5001 goto if413_else1030 
.annotate 'line', 818
    box $P5001, ""
    set __lowered_lex_237, $P5001
    iter $P5002, __lowered_lex_239
    set lowered_for_it__4, $P5002
    new $P5007, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5007, while414_handlers1035
    push_eh $P5007
  while414_test1032:
    set $P5006, lowered_for_it__4
    unless lowered_for_it__4 goto while414_done1036 
  while414_redo1034:
    shift $P5003, lowered_for_it__4
    set __lowered_lex_236, $P5003
.annotate 'line', 820
    set $S5002, __lowered_lex_237
.annotate 'line', 821
    $P5004 = __lowered_lex_236."made"()
    set $I5002, $P5004
    chr $S5003, $I5002
    concat $S5001, $S5002, $S5003
    box $P5005, $S5001
    set __lowered_lex_237, $P5005
    set $P5006, __lowered_lex_237
    goto while414_test1032 
  while414_handlers1035:
    .get_results ($P5007)
    pop_upto_eh $P5007
    getattribute $P5008, $P5007, 'type'
    eq $P5008, .CONTROL_LOOP_NEXT, while414_test1032
    eq $P5008, .CONTROL_LOOP_REDO, while414_redo1034
  while414_done1036:
    pop_eh 
    set $P5010, __lowered_lex_237
    goto if413_end1031
  if413_else1030:
.annotate 'line', 824
.annotate 'line', 825
    $P5009 = __lowered_lex_239."made"()
    set $I5003, $P5009
    chr $S5004, $I5003
    box $P5011, $S5004
    set $P5010, $P5011
  if413_end1031:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "CTXSAVE" :subid("cuid_89_1431289891.89934") :anon :lex :outer("cuid_235_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 829
    .param pmc __lowered_lex_240 
.annotate 'line', 830
    nqp_get_sc_object $P5001, "69262D203AA461F498C95CCF7FF3EA8AC3EE1FD5-1431289882.84207", 134
.annotate 'line', 831
    nqp_get_sc_object $P5002, "69262D203AA461F498C95CCF7FF3EA8AC3EE1FD5-1431289882.84207", 119
.annotate 'line', 833
    nqp_get_sc_object $P5003, "69262D203AA461F498C95CCF7FF3EA8AC3EE1FD5-1431289882.84207", 103
    $P5004 = $P5003."new"("ctxsave" :named("name"), "local" :named("scope"), "var" :named("decl"))
.annotate 'line', 834
    nqp_get_sc_object $P5005, "69262D203AA461F498C95CCF7FF3EA8AC3EE1FD5-1431289882.84207", 103
    $P5006 = $P5005."new"("$*CTXSAVE" :named("name"), "contextual" :named("scope"))
    $P5007 = $P5002."new"($P5004, $P5006, "bind" :named("op"))
.annotate 'line', 836
    nqp_get_sc_object $P5008, "69262D203AA461F498C95CCF7FF3EA8AC3EE1FD5-1431289882.84207", 119
.annotate 'line', 838
    nqp_get_sc_object $P5009, "69262D203AA461F498C95CCF7FF3EA8AC3EE1FD5-1431289882.84207", 119
.annotate 'line', 840
    nqp_get_sc_object $P5010, "69262D203AA461F498C95CCF7FF3EA8AC3EE1FD5-1431289882.84207", 103
    $P5011 = $P5010."new"("ctxsave" :named("name"), "local" :named("scope"))
    $P5012 = $P5009."new"($P5011, "isnull" :named("op"))
.annotate 'line', 842
    nqp_get_sc_object $P5013, "69262D203AA461F498C95CCF7FF3EA8AC3EE1FD5-1431289882.84207", 119
.annotate 'line', 844
    nqp_get_sc_object $P5014, "69262D203AA461F498C95CCF7FF3EA8AC3EE1FD5-1431289882.84207", 119
.annotate 'line', 846
    nqp_get_sc_object $P5015, "69262D203AA461F498C95CCF7FF3EA8AC3EE1FD5-1431289882.84207", 103
    $P5016 = $P5015."new"("ctxsave" :named("name"), "local" :named("scope"))
.annotate 'line', 847
    nqp_get_sc_object $P5017, "69262D203AA461F498C95CCF7FF3EA8AC3EE1FD5-1431289882.84207", 77
    $P5018 = $P5017."new"("ctxsave" :named("value"))
    $P5019 = $P5014."new"($P5016, $P5018, "can" :named("op"))
.annotate 'line', 849
    nqp_get_sc_object $P5020, "69262D203AA461F498C95CCF7FF3EA8AC3EE1FD5-1431289882.84207", 119
.annotate 'line', 851
    nqp_get_sc_object $P5021, "69262D203AA461F498C95CCF7FF3EA8AC3EE1FD5-1431289882.84207", 103
    $P5022 = $P5021."new"("ctxsave" :named("name"), "local" :named("scope"))
    $P5023 = $P5020."new"($P5022, "callmethod" :named("op"), "ctxsave" :named("name"))
    $P5024 = $P5013."new"($P5019, $P5023, "if" :named("op"))
    $P5025 = $P5008."new"($P5012, $P5024, "unless" :named("op"))
    $P5026 = $P5001."new"($P5007, $P5025)
    .return ($P5026) 
.end
.HLL "nqp"
.namespace []
.sub "SET_BLOCK_OUTER_CTX" :subid("cuid_90_1431289891.89934") :anon :lex :outer("cuid_235_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 855
    .param pmc __lowered_lex_245 
    .param pmc __lowered_lex_246 
    .local pmc __lowered_lex_247 
    .local pmc fb_tmp_58 
    .local pmc fb_tmp_59 
    .local pmc fb_tmp_60 
    .local pmc pkg_viv_tmp_13 
    .local pmc __lowered_lex_244 
    .local pmc lowered_for_it__5 
    .local pmc __lowered_lex_243 
    .local string __lowered_lex_242 
    .local pmc __lowered_lex_241 
    find_dynamic_lex $P5001, "%*COMPILING"
    unless_null $P5001, fallback1041
    nqp_get_sc_object $P5003, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 0
    get_who $P5002, $P5003
    set pkg_viv_tmp_13, $P5002
    set fb_tmp_60, pkg_viv_tmp_13
    repr_defined $I5003, fb_tmp_60
    unless $I5003 goto if417_else1042 
    set $P5004, fb_tmp_60["%COMPILING"]
    set $P5006, $P5004
    goto if417_end1043
  if417_else1042:
    null $P5005
    set $P5006, $P5005
  if417_end1043:
    unless_null $P5006, vivi_4181044
    new $P5007, 'Hash'
    set pkg_viv_tmp_13["%COMPILING"], $P5007
    set $P5006, $P5007
  vivi_4181044:
    unless_null $P5006, vivi_4191045
    die "Contextual %*COMPILING not found"
    box $P5008, "Contextual %*COMPILING not found"
    set $P5006, $P5008
  vivi_4191045:
    set $P5001, $P5006
  fallback1041:
    set fb_tmp_59, $P5001
    repr_defined $I5002, fb_tmp_59
    unless $I5002 goto if416_else1039 
    set $P5009, fb_tmp_59["%?OPTIONS"]
    set $P5011, $P5009
    goto if416_end1040
  if416_else1039:
    null $P5010
    set $P5011, $P5010
  if416_end1040:
    unless_null $P5011, vivi_4201046
    nqp_get_sc_object $P5012, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5011, $P5012
  vivi_4201046:
    set fb_tmp_58, $P5011
    repr_defined $I5001, fb_tmp_58
    unless $I5001 goto if415_else1037 
    set $P5013, fb_tmp_58["outer_ctx"]
    set $P5015, $P5013
    goto if415_end1038
  if415_else1037:
    null $P5014
    set $P5015, $P5014
  if415_end1038:
    unless_null $P5015, vivi_4211047
    nqp_get_sc_object $P5016, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5015, $P5016
  vivi_4211047:
    set __lowered_lex_247, $P5015
    defined $I5004, __lowered_lex_247
    box $P5042, $I5004
    set $P5041, $P5042
    unless $I5004 goto if422_end1049 
.annotate 'line', 857
  until423_test1050:
    isnull $I5005, __lowered_lex_247
    box $P5040, $I5005
    set $P5039, $P5040
    if $I5005 goto until423_done1054 
  until423_redo1052:
.annotate 'line', 858
    getattribute $P5017, __lowered_lex_247, 'lex_pad'
    set __lowered_lex_244, $P5017
    isnull $I5006, __lowered_lex_244
    if $I5006 goto unless424_end1056 
.annotate 'line', 860
    iter $P5018, __lowered_lex_244
    set lowered_for_it__5, $P5018
    new $P5036, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5036, while425_handlers1060
    push_eh $P5036
  while425_test1057:
    set $P5035, lowered_for_it__5
    unless lowered_for_it__5 goto while425_done1061 
  while425_redo1059:
    shift $P5019, lowered_for_it__5
    set __lowered_lex_243, $P5019
.annotate 'line', 861
    set $S5001, __lowered_lex_243
    set __lowered_lex_242, $S5001
.annotate 'line', 863
    $P5020 = __lowered_lex_246."symbol"(__lowered_lex_242)
    set $P5034, $P5020
    if $P5020 goto unless426_end1063 
    $I5007 = __lowered_lex_244."get_lex_type"(__lowered_lex_242)
    box $P5021, $I5007
    set __lowered_lex_241, $P5021
    set $N5001, __lowered_lex_241
    set $N5002, 0
    iseq $I5008, $N5001, $N5002
    unless $I5008 goto if427_else1064 
.annotate 'line', 865
.annotate 'line', 866
    $P5022 = __lowered_lex_246."symbol"(__lowered_lex_242, "lexical" :named("scope"), __lowered_lex_244 :named("lazy_value_from"))
    set $P5033, $P5022
    goto if427_end1065
  if427_else1064:
    set $N5003, __lowered_lex_241
    set $N5004, 1
    iseq $I5009, $N5003, $N5004
    unless $I5009 goto if428_else1066 
.annotate 'line', 868
.annotate 'line', 869
    set $I5010, __lowered_lex_244[__lowered_lex_242]
    nqp_get_sc_object $P5023, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 2
    $P5024 = __lowered_lex_246."symbol"(__lowered_lex_242, "lexical" :named("scope"), $I5010 :named("value"), $P5023 :named("type"))
    set $P5032, $P5024
    goto if428_end1067
  if428_else1066:
    set $N5005, __lowered_lex_241
    set $N5006, 2
    iseq $I5011, $N5005, $N5006
    unless $I5011 goto if429_else1068 
.annotate 'line', 871
.annotate 'line', 872
    set $N5007, __lowered_lex_244[__lowered_lex_242]
    nqp_get_sc_object $P5025, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 3
    $P5026 = __lowered_lex_246."symbol"(__lowered_lex_242, "lexical" :named("scope"), $N5007 :named("value"), $P5025 :named("type"))
    set $P5031, $P5026
    goto if429_end1069
  if429_else1068:
    set $N5008, __lowered_lex_241
    set $N5009, 3
    iseq $I5012, $N5008, $N5009
    box $P5030, $I5012
    set $P5029, $P5030
    unless $I5012 goto if430_end1071 
.annotate 'line', 874
.annotate 'line', 875
    set $S5002, __lowered_lex_244[__lowered_lex_242]
    nqp_get_sc_object $P5027, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 4
    $P5028 = __lowered_lex_246."symbol"(__lowered_lex_242, "lexical" :named("scope"), $S5002 :named("value"), $P5027 :named("type"))
    set $P5029, $P5028
  if430_end1071:
    set $P5031, $P5029
  if429_end1069:
    set $P5032, $P5031
  if428_end1067:
    set $P5033, $P5032
  if427_end1065:
    set $P5034, $P5033
  unless426_end1063:
    set $P5035, $P5034
    goto while425_test1057 
  while425_handlers1060:
    .get_results ($P5036)
    pop_upto_eh $P5036
    getattribute $P5037, $P5036, 'type'
    eq $P5037, .CONTROL_LOOP_NEXT, while425_test1057
    eq $P5037, .CONTROL_LOOP_REDO, while425_redo1059
  while425_done1061:
    pop_eh 
  unless424_end1056:
    getattribute $P5038, __lowered_lex_247, 'outer_ctx'
    set __lowered_lex_247, $P5038
    set $P5039, __lowered_lex_247
    goto until423_test1050 
  until423_done1054:
    set $P5041, $P5039
  if422_end1049:
    .return ($P5041) 
.end
.HLL "nqp"
.namespace []
.sub "EXPR" :subid("cuid_91_1431289891.89934") :anon :lex :outer("cuid_235_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 885
    .param pmc __lowered_lex_250 
    .param pmc __lowered_lex_251 
    .param pmc __lowered_lex_252 :optional 
    .param int haz_param_7 :opt_flag 
    .local pmc __lowered_lex_253 
    .local pmc fb_tmp_61 
    .local pmc __lowered_lex_248 
    .local pmc fb_tmp_62 
    .local pmc fb_tmp_63 
    .local pmc fb_tmp_64 
    .local pmc fb_tmp_65 
    .local pmc fb_tmp_66 
    .local pmc fb_tmp_67 
    .local pmc fb_tmp_68 
    .local pmc fb_tmp_69 
    .local pmc fb_tmp_70 
    .local pmc lowered_for_it__6 
    .local pmc __lowered_lex_249 
    if haz_param_7, default1128
    nqp_get_sc_object $P5071, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_252, $P5071
  default1128:
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_1072
    .lex "RETURN", $P101
    if __lowered_lex_252 goto unless431_end1075 
.annotate 'line', 886
    $P5001 = "RETURN"(0)
  unless431_end1075:
.annotate 'line', 887
    $P5003 = __lowered_lex_251."ast"()
    set $P5002, $P5003
    defined $I5001, $P5002
    if $I5001, defor1076
    unless_null __lowered_lex_251, fallback1079
    nqp_get_sc_object $P5004, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_251, $P5004
  fallback1079:
    set fb_tmp_61, __lowered_lex_251
    repr_defined $I5002, fb_tmp_61
    unless $I5002 goto if432_else1077 
    set $P5005, fb_tmp_61["OPER"]
    set $P5007, $P5005
    goto if432_end1078
  if432_else1077:
    null $P5006
    set $P5007, $P5006
  if432_end1078:
    unless_null $P5007, vivi_4331080
    nqp_get_sc_object $P5008, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5007, $P5008
  vivi_4331080:
    $P5009 = $P5007."ast"()
    set $P5002, $P5009
  defor1076:
    set __lowered_lex_253, $P5002
    if __lowered_lex_253 goto unless434_end1082 
.annotate 'line', 888
.annotate 'line', 889
    nqp_get_sc_object $P5010, "69262D203AA461F498C95CCF7FF3EA8AC3EE1FD5-1431289882.84207", 119
    $P5011 = $P5010."new"(__lowered_lex_251 :named("node"))
    set __lowered_lex_253, $P5011
    unless_null __lowered_lex_251, fallback1091
    nqp_get_sc_object $P5012, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_251, $P5012
  fallback1091:
    set fb_tmp_64, __lowered_lex_251
    repr_defined $I5005, fb_tmp_64
    unless $I5005 goto if438_else1089 
    set $P5013, fb_tmp_64["OPER"]
    set $P5015, $P5013
    goto if438_end1090
  if438_else1089:
    null $P5014
    set $P5015, $P5014
  if438_end1090:
    unless_null $P5015, vivi_4391092
    nqp_get_sc_object $P5016, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5015, $P5016
  vivi_4391092:
    set fb_tmp_63, $P5015
    repr_defined $I5004, fb_tmp_63
    unless $I5004 goto if437_else1087 
    set $P5017, fb_tmp_63["O"]
    set $P5019, $P5017
    goto if437_end1088
  if437_else1087:
    null $P5018
    set $P5019, $P5018
  if437_end1088:
    unless_null $P5019, vivi_4401093
    nqp_get_sc_object $P5020, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5019, $P5020
  vivi_4401093:
    set fb_tmp_62, $P5019
    repr_defined $I5003, fb_tmp_62
    unless $I5003 goto if436_else1085 
    set $P5021, fb_tmp_62["op"]
    set $P5023, $P5021
    goto if436_end1086
  if436_else1085:
    null $P5022
    set $P5023, $P5022
  if436_end1086:
    unless_null $P5023, vivi_4411094
    nqp_get_sc_object $P5024, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5023, $P5024
  vivi_4411094:
    unless $P5023 goto if435_end1084 
.annotate 'line', 890
.annotate 'line', 891
    unless_null __lowered_lex_251, fallback1101
    nqp_get_sc_object $P5025, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_251, $P5025
  fallback1101:
    set fb_tmp_67, __lowered_lex_251
    repr_defined $I5008, fb_tmp_67
    unless $I5008 goto if444_else1099 
    set $P5026, fb_tmp_67["OPER"]
    set $P5028, $P5026
    goto if444_end1100
  if444_else1099:
    null $P5027
    set $P5028, $P5027
  if444_end1100:
    unless_null $P5028, vivi_4451102
    nqp_get_sc_object $P5029, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5028, $P5029
  vivi_4451102:
    set fb_tmp_66, $P5028
    repr_defined $I5007, fb_tmp_66
    unless $I5007 goto if443_else1097 
    set $P5030, fb_tmp_66["O"]
    set $P5032, $P5030
    goto if443_end1098
  if443_else1097:
    null $P5031
    set $P5032, $P5031
  if443_end1098:
    unless_null $P5032, vivi_4461103
    nqp_get_sc_object $P5033, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5032, $P5033
  vivi_4461103:
    set fb_tmp_65, $P5032
    repr_defined $I5006, fb_tmp_65
    unless $I5006 goto if442_else1095 
    set $P5034, fb_tmp_65["op"]
    set $P5036, $P5034
    goto if442_end1096
  if442_else1095:
    null $P5035
    set $P5036, $P5035
  if442_end1096:
    unless_null $P5036, vivi_4471104
    nqp_get_sc_object $P5037, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5036, $P5037
  vivi_4471104:
    set $S5001, $P5036
    $P5038 = __lowered_lex_253."op"($S5001)
  if435_end1084:
    set $S5002, __lowered_lex_252
    iseq $I5009, $S5002, "LIST"
    unless $I5009 goto if448_end1106 
.annotate 'line', 893
    box $P5039, "infix"
    set __lowered_lex_252, $P5039
  if448_end1106:
    set $S5007, __lowered_lex_252
    downcase $S5006, $S5007
    concat $S5005, $S5006, ":<"
    unless_null __lowered_lex_251, fallback1111
    nqp_get_sc_object $P5040, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_251, $P5040
  fallback1111:
    set fb_tmp_69, __lowered_lex_251
    repr_defined $I5011, fb_tmp_69
    unless $I5011 goto if450_else1109 
    set $P5041, fb_tmp_69["OPER"]
    set $P5043, $P5041
    goto if450_end1110
  if450_else1109:
    null $P5042
    set $P5043, $P5042
  if450_end1110:
    unless_null $P5043, vivi_4511112
    nqp_get_sc_object $P5044, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5043, $P5044
  vivi_4511112:
    set fb_tmp_68, $P5043
    repr_defined $I5010, fb_tmp_68
    unless $I5010 goto if449_else1107 
    set $P5045, fb_tmp_68["sym"]
    set $P5047, $P5045
    goto if449_end1108
  if449_else1107:
    null $P5046
    set $P5047, $P5046
  if449_end1108:
    unless_null $P5047, vivi_4521113
    nqp_get_sc_object $P5048, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5047, $P5048
  vivi_4521113:
    set $S5008, $P5047
    concat $S5004, $S5005, $S5008
    concat $S5003, $S5004, ">"
    box $P5049, $S5003
    set __lowered_lex_248, $P5049
.annotate 'line', 895
    set $S5010, __lowered_lex_248
    concat $S5009, "&", $S5010
    __lowered_lex_253."name"($S5009)
.annotate 'line', 896
    $P5050 = __lowered_lex_253."op"()
    set $P5052, $P5050
    if $P5050 goto unless453_end1115 
.annotate 'line', 897
    $P5051 = __lowered_lex_253."op"("call")
    set $P5052, $P5051
  unless453_end1115:
  unless434_end1082:
    set $S5011, __lowered_lex_252
    iseq $I5012, $S5011, "POSTFIX"
    unless $I5012 goto if454_else1116 
.annotate 'line', 900
.annotate 'line', 901
    set fb_tmp_70, __lowered_lex_251
    repr_defined $I5013, fb_tmp_70
    unless $I5013 goto if455_else1118 
    set $P5053, fb_tmp_70[0]
    set $P5055, $P5053
    goto if455_end1119
  if455_else1118:
    null $P5054
    set $P5055, $P5054
  if455_end1119:
    unless_null $P5055, vivi_4561120
    nqp_get_sc_object $P5056, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5055, $P5056
  vivi_4561120:
    $P5057 = $P5055."ast"()
    $P5058 = __lowered_lex_253."unshift"($P5057)
    goto if454_end1117
  if454_else1116:
.annotate 'line', 903
.annotate 'line', 904
    $P5060 = __lowered_lex_251."list"()
    iter $P5059, $P5060
    set lowered_for_it__6, $P5059
    new $P5068, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5068, while457_handlers1124
    push_eh $P5068
  while457_test1121:
    set $P5067, lowered_for_it__6
    unless lowered_for_it__6 goto while457_done1125 
  while457_redo1123:
    shift $P5061, lowered_for_it__6
    set __lowered_lex_249, $P5061
    $P5062 = __lowered_lex_249."ast"()
    defined $I5014, $P5062
    box $P5066, $I5014
    set $P5065, $P5066
    unless $I5014 goto if458_end1127 
    $P5063 = __lowered_lex_249."ast"()
    $P5064 = __lowered_lex_253."push"($P5063)
    set $P5065, $P5064
  if458_end1127:
    set $P5067, $P5065
    goto while457_test1121 
  while457_handlers1124:
    .get_results ($P5068)
    pop_upto_eh $P5068
    getattribute $P5069, $P5068, 'type'
    eq $P5069, .CONTROL_LOOP_NEXT, while457_test1121
    eq $P5069, .CONTROL_LOOP_REDO, while457_redo1123
  while457_done1125:
    pop_eh 
  if454_end1117:
.annotate 'line', 906
    $P5070 = __lowered_lex_251."make"(__lowered_lex_253)
    goto lexotic_1073
  lexotic_1072:
    .get_results ($P5070)
  lexotic_1073:
    .return ($P5070) 
.end
.HLL "nqp"
.namespace []
.sub "term:sym<circumfix>" :subid("cuid_92_1431289891.89934") :anon :lex :outer("cuid_235_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 909
    .param pmc __lowered_lex_254 
    .param pmc __lowered_lex_255 
    .local pmc fb_tmp_71 
    unless_null __lowered_lex_255, fallback1131
    nqp_get_sc_object $P5001, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_255, $P5001
  fallback1131:
    set fb_tmp_71, __lowered_lex_255
    repr_defined $I5001, fb_tmp_71
    unless $I5001 goto if459_else1129 
    set $P5002, fb_tmp_71["circumfix"]
    set $P5004, $P5002
    goto if459_end1130
  if459_else1129:
    null $P5003
    set $P5004, $P5003
  if459_end1130:
    unless_null $P5004, vivi_4601132
    nqp_get_sc_object $P5005, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5004, $P5005
  vivi_4601132:
    $P5006 = $P5004."made"()
    $P5007 = __lowered_lex_255."make"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "termish" :subid("cuid_93_1431289891.89934") :anon :lex :outer("cuid_235_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 911
    .param pmc __lowered_lex_256 
    .param pmc __lowered_lex_257 
    .local pmc fb_tmp_72 
    unless_null __lowered_lex_257, fallback1135
    nqp_get_sc_object $P5001, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_257, $P5001
  fallback1135:
    set fb_tmp_72, __lowered_lex_257
    repr_defined $I5001, fb_tmp_72
    unless $I5001 goto if461_else1133 
    set $P5002, fb_tmp_72["term"]
    set $P5004, $P5002
    goto if461_end1134
  if461_else1133:
    null $P5003
    set $P5004, $P5003
  if461_end1134:
    unless_null $P5004, vivi_4621136
    nqp_get_sc_object $P5005, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5004, $P5005
  vivi_4621136:
    $P5006 = $P5004."made"()
    $P5007 = __lowered_lex_257."make"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "nullterm" :subid("cuid_94_1431289891.89934") :anon :lex :outer("cuid_235_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 912
    .param pmc __lowered_lex_258 
    .param pmc __lowered_lex_259 
    nqp_get_sc_object $P5001, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    $P5002 = __lowered_lex_259."make"($P5001)
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "nullterm_alt" :subid("cuid_95_1431289891.89934") :anon :lex :outer("cuid_235_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 913
    .param pmc __lowered_lex_260 
    .param pmc __lowered_lex_261 
    .local pmc fb_tmp_73 
    unless_null __lowered_lex_261, fallback1139
    nqp_get_sc_object $P5001, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_261, $P5001
  fallback1139:
    set fb_tmp_73, __lowered_lex_261
    repr_defined $I5001, fb_tmp_73
    unless $I5001 goto if463_else1137 
    set $P5002, fb_tmp_73["term"]
    set $P5004, $P5002
    goto if463_end1138
  if463_else1137:
    null $P5003
    set $P5004, $P5003
  if463_end1138:
    unless_null $P5004, vivi_4641140
    nqp_get_sc_object $P5005, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5004, $P5005
  vivi_4641140:
    $P5006 = $P5004."made"()
    $P5007 = __lowered_lex_261."make"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "integer" :subid("cuid_96_1431289891.89934") :anon :lex :outer("cuid_235_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 915
    .param pmc __lowered_lex_262 
    .param pmc __lowered_lex_263 
    .local pmc fb_tmp_74 
    unless_null __lowered_lex_263, fallback1143
    nqp_get_sc_object $P5001, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_263, $P5001
  fallback1143:
    set fb_tmp_74, __lowered_lex_263
    repr_defined $I5001, fb_tmp_74
    unless $I5001 goto if465_else1141 
    set $P5002, fb_tmp_74["VALUE"]
    set $P5004, $P5002
    goto if465_end1142
  if465_else1141:
    null $P5003
    set $P5004, $P5003
  if465_end1142:
    unless_null $P5004, vivi_4661144
    nqp_get_sc_object $P5005, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5004, $P5005
  vivi_4661144:
    $P5006 = $P5004."made"()
    $P5007 = __lowered_lex_263."make"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "dec_number" :subid("cuid_97_1431289891.89934") :anon :lex :outer("cuid_235_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 917
    .param pmc __lowered_lex_264 
    .param pmc __lowered_lex_265 
    set $N5001, __lowered_lex_265
    $P5001 = __lowered_lex_265."make"($N5001)
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "decint" :subid("cuid_98_1431289891.89934") :anon :lex :outer("cuid_235_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 919
    .param pmc __lowered_lex_266 
    .param pmc __lowered_lex_267 
    nqp_decontainerize $P5001, __lowered_lex_266
    $P5002 = $P5001."string_to_int"(__lowered_lex_267, 10)
    $P5003 = __lowered_lex_267."make"($P5002)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "hexint" :subid("cuid_99_1431289891.89934") :anon :lex :outer("cuid_235_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 920
    .param pmc __lowered_lex_268 
    .param pmc __lowered_lex_269 
    nqp_decontainerize $P5001, __lowered_lex_268
    $P5002 = $P5001."string_to_int"(__lowered_lex_269, 16)
    $P5003 = __lowered_lex_269."make"($P5002)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "octint" :subid("cuid_100_1431289891.89934") :anon :lex :outer("cuid_235_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 921
    .param pmc __lowered_lex_270 
    .param pmc __lowered_lex_271 
    nqp_decontainerize $P5001, __lowered_lex_270
    $P5002 = $P5001."string_to_int"(__lowered_lex_271, 8)
    $P5003 = __lowered_lex_271."make"($P5002)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "binint" :subid("cuid_101_1431289891.89934") :anon :lex :outer("cuid_235_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 922
    .param pmc __lowered_lex_272 
    .param pmc __lowered_lex_273 
    nqp_decontainerize $P5001, __lowered_lex_272
    $P5002 = $P5001."string_to_int"(__lowered_lex_273, 2)
    $P5003 = __lowered_lex_273."make"($P5002)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "quote_EXPR" :subid("cuid_102_1431289891.89934") :anon :lex :outer("cuid_235_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 924
    .param pmc __lowered_lex_276 
    .param pmc __lowered_lex_277 
    .local pmc __lowered_lex_278 
    .local pmc fb_tmp_75 
    .local pmc fb_tmp_76 
    .local pmc fb_tmp_77 
    .local pmc pkg_viv_tmp_14 
    .local pmc __lowered_lex_275 
    .local pmc fb_tmp_78 
    .local pmc pkg_lookup_tmp_3 
    .local pmc pkg_lookup_tmp_2 
    .local pmc lowered_for_it__7 
    .local pmc __lowered_lex_274 
    .local pmc fb_tmp_79 
.annotate 'line', 925
    unless_null __lowered_lex_277, fallback1147
    nqp_get_sc_object $P5001, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_277, $P5001
  fallback1147:
    set fb_tmp_75, __lowered_lex_277
    repr_defined $I5001, fb_tmp_75
    unless $I5001 goto if467_else1145 
    set $P5002, fb_tmp_75["quote_delimited"]
    set $P5004, $P5002
    goto if467_end1146
  if467_else1145:
    null $P5003
    set $P5004, $P5003
  if467_end1146:
    unless_null $P5004, vivi_4681148
    nqp_get_sc_object $P5005, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5004, $P5005
  vivi_4681148:
    $P5006 = $P5004."ast"()
    set __lowered_lex_278, $P5006
    find_dynamic_lex $P5007, "%*QUOTEMOD"
    unless_null $P5007, fallback1153
    nqp_get_sc_object $P5009, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 0
    get_who $P5008, $P5009
    set pkg_viv_tmp_14, $P5008
    set fb_tmp_77, pkg_viv_tmp_14
    repr_defined $I5003, fb_tmp_77
    unless $I5003 goto if471_else1154 
    set $P5010, fb_tmp_77["%QUOTEMOD"]
    set $P5012, $P5010
    goto if471_end1155
  if471_else1154:
    null $P5011
    set $P5012, $P5011
  if471_end1155:
    unless_null $P5012, vivi_4721156
    new $P5013, 'Hash'
    set pkg_viv_tmp_14["%QUOTEMOD"], $P5013
    set $P5012, $P5013
  vivi_4721156:
    unless_null $P5012, vivi_4731157
    die "Contextual %*QUOTEMOD not found"
    box $P5014, "Contextual %*QUOTEMOD not found"
    set $P5012, $P5014
  vivi_4731157:
    set $P5007, $P5012
  fallback1153:
    set fb_tmp_76, $P5007
    repr_defined $I5002, fb_tmp_76
    unless $I5002 goto if470_else1151 
    set $P5015, fb_tmp_76["w"]
    set $P5017, $P5015
    goto if470_end1152
  if470_else1151:
    null $P5016
    set $P5017, $P5016
  if470_end1152:
    unless_null $P5017, vivi_4741158
    nqp_get_sc_object $P5018, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5017, $P5018
  vivi_4741158:
    unless $P5017 goto if469_end1150 
.annotate 'line', 926
    nqp_get_sc_object $P5019, "69262D203AA461F498C95CCF7FF3EA8AC3EE1FD5-1431289882.84207", 77
    type_check $I5004, __lowered_lex_278, $P5019
    unless $I5004 goto if475_else1159 
.annotate 'line', 927
.annotate 'line', 928
    $P5036 = __lowered_lex_278."value"()
    nqp_get_sc_object $P5021, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 0
    set pkg_lookup_tmp_2, $P5021
    get_who $P5022, pkg_lookup_tmp_2
    exists $I5006, $P5022["HLL"]
    unless $I5006 goto if477_else1163 
    get_who $P5024, pkg_lookup_tmp_2
    set $P5023, $P5024["HLL"]
    set $P5026, $P5023
    goto if477_end1164
  if477_else1163:
    nqp_get_sc_object $P5025, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5026, $P5025
  if477_end1164:
    set pkg_lookup_tmp_3, $P5026
    get_who $P5027, pkg_lookup_tmp_3
    exists $I5007, $P5027["Grammar"]
    unless $I5007 goto if478_else1165 
    get_who $P5029, pkg_lookup_tmp_3
    set $P5028, $P5029["Grammar"]
    set $P5031, $P5028
    goto if478_end1166
  if478_else1165:
    nqp_get_sc_object $P5030, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5031, $P5030
  if478_end1166:
    get_who $P5020, $P5031
    set fb_tmp_78, $P5020
    repr_defined $I5005, fb_tmp_78
    unless $I5005 goto if476_else1161 
    set $P5032, fb_tmp_78["split_words"]
    set $P5034, $P5032
    goto if476_end1162
  if476_else1161:
    null $P5033
    set $P5034, $P5033
  if476_end1162:
    unless_null $P5034, vivi_4791167
    nqp_get_sc_object $P5035, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5034, $P5035
  vivi_4791167:
    $P5037 = $P5034(__lowered_lex_277, $P5036)
    set __lowered_lex_275, $P5037
    set $N5001, __lowered_lex_275
    set $I5009, $N5001
    isne $I5008, $I5009, 1
    unless $I5008 goto if480_else1168 
.annotate 'line', 929
.annotate 'line', 930
    nqp_get_sc_object $P5038, "69262D203AA461F498C95CCF7FF3EA8AC3EE1FD5-1431289882.84207", 119
    $P5039 = $P5038."new"("list" :named("op"), __lowered_lex_277 :named("node"))
    set __lowered_lex_278, $P5039
    iter $P5040, __lowered_lex_275
    set lowered_for_it__7, $P5040
    new $P5046, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5046, while481_handlers1173
    push_eh $P5046
  while481_test1170:
    set $P5045, lowered_for_it__7
    unless lowered_for_it__7 goto while481_done1174 
  while481_redo1172:
    shift $P5041, lowered_for_it__7
    set __lowered_lex_274, $P5041
.annotate 'line', 931
    nqp_get_sc_object $P5042, "69262D203AA461F498C95CCF7FF3EA8AC3EE1FD5-1431289882.84207", 77
    $P5043 = $P5042."new"(__lowered_lex_274 :named("value"))
    $P5044 = __lowered_lex_278."push"($P5043)
    set $P5045, $P5044
    goto while481_test1170 
  while481_handlers1173:
    .get_results ($P5046)
    pop_upto_eh $P5046
    getattribute $P5047, $P5046, 'type'
    eq $P5047, .CONTROL_LOOP_NEXT, while481_test1170
    eq $P5047, .CONTROL_LOOP_REDO, while481_redo1172
  while481_done1174:
    pop_eh 
    set $P5054, $P5045
    goto if480_end1169
  if480_else1168:
.annotate 'line', 933
.annotate 'line', 934
    nqp_get_sc_object $P5048, "69262D203AA461F498C95CCF7FF3EA8AC3EE1FD5-1431289882.84207", 77
    set fb_tmp_79, __lowered_lex_275
    repr_defined $I5010, fb_tmp_79
    unless $I5010 goto if482_else1175 
    set $P5049, fb_tmp_79[0]
    set $P5051, $P5049
    goto if482_end1176
  if482_else1175:
    null $P5050
    set $P5051, $P5050
  if482_end1176:
    unless_null $P5051, vivi_4831177
    nqp_get_sc_object $P5052, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5051, $P5052
  vivi_4831177:
    set $S5001, $P5051
    $P5053 = $P5048."new"($S5001 :named("value"))
    set __lowered_lex_278, $P5053
    set $P5054, __lowered_lex_278
  if480_end1169:
    set $P5057, $P5054
    goto if475_end1160
  if475_else1159:
.annotate 'line', 937
.annotate 'line', 938
    $P5055 = __lowered_lex_277."CURSOR"()
    $P5056 = $P5055."panic"("Can't form :w list from non-constant strings (yet)")
    set $P5057, $P5056
  if475_end1160:
  if469_end1150:
.annotate 'line', 941
    $P5058 = __lowered_lex_277."make"(__lowered_lex_278)
    .return ($P5058) 
.end
.HLL "nqp"
.namespace []
.sub "quote_delimited" :subid("cuid_103_1431289891.89934") :anon :lex :outer("cuid_235_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 944
    .param pmc __lowered_lex_281 
    .param pmc __lowered_lex_282 
    .local pmc __lowered_lex_283 
    .local pmc __lowered_lex_284 
    .local pmc __lowered_lex_285 
    .local pmc lowered_for_it__8 
    .local pmc fb_tmp_80 
    .local pmc __lowered_lex_280 
    .local pmc __lowered_lex_279 
    new $P5001, 'QRPA'
    set __lowered_lex_283, $P5001
    box $P5002, ""
    set __lowered_lex_284, $P5002
    unless_null __lowered_lex_282, fallback1180
    nqp_get_sc_object $P5004, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_282, $P5004
  fallback1180:
    set fb_tmp_80, __lowered_lex_282
    repr_defined $I5001, fb_tmp_80
    unless $I5001 goto if484_else1178 
    set $P5005, fb_tmp_80["quote_atom"]
    set $P5007, $P5005
    goto if484_end1179
  if484_else1178:
    null $P5006
    set $P5007, $P5006
  if484_end1179:
    unless_null $P5007, vivi_4851181
    nqp_get_sc_object $P5008, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5007, $P5008
  vivi_4851181:
    iter $P5003, $P5007
    set lowered_for_it__8, $P5003
    new $P5027, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5027, while486_handlers1185
    push_eh $P5027
  while486_test1182:
    set $P5026, lowered_for_it__8
    unless lowered_for_it__8 goto while486_done1186 
  while486_redo1184:
    shift $P5009, lowered_for_it__8
    set __lowered_lex_280, $P5009
.annotate 'line', 947
.annotate 'line', 948
    $P5010 = __lowered_lex_280."ast"()
    set __lowered_lex_279, $P5010
    nqp_get_sc_object $P5011, "69262D203AA461F498C95CCF7FF3EA8AC3EE1FD5-1431289882.84207", 23
    type_check $I5003, __lowered_lex_279, $P5011
    not $I5002, $I5003
    unless $I5002 goto if487_else1187 
.annotate 'line', 949
    set $S5002, __lowered_lex_284
    set $S5003, __lowered_lex_279
    concat $S5001, $S5002, $S5003
    box $P5012, $S5001
    set __lowered_lex_284, $P5012
    set $P5025, __lowered_lex_284
    goto if487_end1188
  if487_else1187:
    nqp_get_sc_object $P5013, "69262D203AA461F498C95CCF7FF3EA8AC3EE1FD5-1431289882.84207", 77
    type_check $I5004, __lowered_lex_279, $P5013
    unless $I5004 goto if488_else1189 
.annotate 'line', 952
    set $S5005, __lowered_lex_284
.annotate 'line', 953
    $P5014 = __lowered_lex_279."value"()
    set $S5006, $P5014
    concat $S5004, $S5005, $S5006
    box $P5015, $S5004
    set __lowered_lex_284, $P5015
    set $P5024, __lowered_lex_284
    goto if488_end1190
  if488_else1189:
.annotate 'line', 955
    set $S5007, __lowered_lex_284
    isgt $I5005, $S5007, ""
    unless $I5005 goto if489_end1192 
.annotate 'line', 956
.annotate 'line', 957
    nqp_get_sc_object $P5016, "69262D203AA461F498C95CCF7FF3EA8AC3EE1FD5-1431289882.84207", 77
    $P5017 = $P5016."new"(__lowered_lex_284 :named("value"))
    $P5018 = __lowered_lex_283."push"($P5017)
  if489_end1192:
.annotate 'line', 959
    nqp_get_sc_object $P5019, "69262D203AA461F498C95CCF7FF3EA8AC3EE1FD5-1431289882.84207", 23
    type_check $I5006, __lowered_lex_279, $P5019
    unless $I5006 goto if490_else1193 
    set $P5022, __lowered_lex_279
    goto if490_end1194
  if490_else1193:
.annotate 'line', 961
    nqp_get_sc_object $P5020, "69262D203AA461F498C95CCF7FF3EA8AC3EE1FD5-1431289882.84207", 77
    $P5021 = $P5020."new"(__lowered_lex_279 :named("value"))
    set $P5022, $P5021
  if490_end1194:
    __lowered_lex_283."push"($P5022)
    box $P5023, ""
    set __lowered_lex_284, $P5023
    set $P5024, __lowered_lex_284
  if488_end1190:
    set $P5025, $P5024
  if487_end1188:
    set $P5026, $P5025
    goto while486_test1182 
  while486_handlers1185:
    .get_results ($P5027)
    pop_upto_eh $P5027
    getattribute $P5028, $P5027, 'type'
    eq $P5028, .CONTROL_LOOP_NEXT, while486_test1182
    eq $P5028, .CONTROL_LOOP_REDO, while486_redo1184
  while486_done1186:
    pop_eh 
    set $S5008, __lowered_lex_284
    isgt $I5007, $S5008, ""
    unless $I5007 goto if491_end1196 
.annotate 'line', 965
    nqp_get_sc_object $P5029, "69262D203AA461F498C95CCF7FF3EA8AC3EE1FD5-1431289882.84207", 77
    $P5030 = $P5029."new"(__lowered_lex_284 :named("value"))
    $P5031 = __lowered_lex_283."push"($P5030)
  if491_end1196:
    unless __lowered_lex_283 goto if492_else1197 
.annotate 'line', 966
    $P5032 = __lowered_lex_283."shift"()
    set $P5035, $P5032
    goto if492_end1198
  if492_else1197:
    nqp_get_sc_object $P5033, "69262D203AA461F498C95CCF7FF3EA8AC3EE1FD5-1431289882.84207", 77
    $P5034 = $P5033."new"("" :named("value"))
    set $P5035, $P5034
  if492_end1198:
    set __lowered_lex_285, $P5035
  while493_test1199:
    set $P5039, __lowered_lex_283
    unless __lowered_lex_283 goto while493_done1203 
  while493_redo1201:
.annotate 'line', 967
.annotate 'line', 968
    nqp_get_sc_object $P5036, "69262D203AA461F498C95CCF7FF3EA8AC3EE1FD5-1431289882.84207", 119
    $P5037 = __lowered_lex_283."shift"()
    $P5038 = $P5036."new"(__lowered_lex_285, $P5037, "concat" :named("op"))
    set __lowered_lex_285, $P5038
    set $P5039, __lowered_lex_285
    goto while493_test1199 
  while493_done1203:
.annotate 'line', 970
    $P5040 = __lowered_lex_282."make"(__lowered_lex_285)
    .return ($P5040) 
.end
.HLL "nqp"
.namespace []
.sub "quote_atom" :subid("cuid_104_1431289891.89934") :anon :lex :outer("cuid_235_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 973
    .param pmc __lowered_lex_286 
    .param pmc __lowered_lex_287 
    .local pmc fb_tmp_81 
    .local pmc fb_tmp_82 
.annotate 'line', 974
    unless_null __lowered_lex_287, fallback1208
    nqp_get_sc_object $P5001, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_287, $P5001
  fallback1208:
    set fb_tmp_81, __lowered_lex_287
    repr_defined $I5001, fb_tmp_81
    unless $I5001 goto if495_else1206 
    set $P5002, fb_tmp_81["quote_escape"]
    set $P5004, $P5002
    goto if495_end1207
  if495_else1206:
    null $P5003
    set $P5004, $P5003
  if495_end1207:
    unless_null $P5004, vivi_4961209
    nqp_get_sc_object $P5005, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5004, $P5005
  vivi_4961209:
    unless $P5004 goto if494_else1204 
    unless_null __lowered_lex_287, fallback1212
    nqp_get_sc_object $P5006, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_287, $P5006
  fallback1212:
    set fb_tmp_82, __lowered_lex_287
    repr_defined $I5002, fb_tmp_82
    unless $I5002 goto if497_else1210 
    set $P5007, fb_tmp_82["quote_escape"]
    set $P5009, $P5007
    goto if497_end1211
  if497_else1210:
    null $P5008
    set $P5009, $P5008
  if497_end1211:
    unless_null $P5009, vivi_4981213
    nqp_get_sc_object $P5010, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5009, $P5010
  vivi_4981213:
    $P5011 = $P5009."made"()
    set $P5012, $P5011
    goto if494_end1205
  if494_else1204:
    set $S5001, __lowered_lex_287
    box $P5013, $S5001
    set $P5012, $P5013
  if494_end1205:
    $P5014 = __lowered_lex_287."make"($P5012)
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<backslash>" :subid("cuid_105_1431289891.89934") :anon :lex :outer("cuid_235_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 977
    .param pmc __lowered_lex_288 
    .param pmc __lowered_lex_289 
    $P5001 = __lowered_lex_289."make"("\\")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<stopper>" :subid("cuid_106_1431289891.89934") :anon :lex :outer("cuid_235_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 978
    .param pmc __lowered_lex_290 
    .param pmc __lowered_lex_291 
    .local pmc fb_tmp_83 
    unless_null __lowered_lex_291, fallback1216
    nqp_get_sc_object $P5001, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_291, $P5001
  fallback1216:
    set fb_tmp_83, __lowered_lex_291
    repr_defined $I5001, fb_tmp_83
    unless $I5001 goto if499_else1214 
    set $P5002, fb_tmp_83["stopper"]
    set $P5004, $P5002
    goto if499_end1215
  if499_else1214:
    null $P5003
    set $P5004, $P5003
  if499_end1215:
    unless_null $P5004, vivi_5001217
    nqp_get_sc_object $P5005, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5004, $P5005
  vivi_5001217:
    set $S5001, $P5004
    $P5006 = __lowered_lex_291."make"($S5001)
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<bs>" :subid("cuid_107_1431289891.89934") :anon :lex :outer("cuid_235_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 980
    .param pmc __lowered_lex_292 
    .param pmc __lowered_lex_293 
    $P5001 = __lowered_lex_293."make"("\b")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<nl>" :subid("cuid_108_1431289891.89934") :anon :lex :outer("cuid_235_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 981
    .param pmc __lowered_lex_294 
    .param pmc __lowered_lex_295 
    $P5001 = __lowered_lex_295."make"("\n")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<cr>" :subid("cuid_109_1431289891.89934") :anon :lex :outer("cuid_235_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 982
    .param pmc __lowered_lex_296 
    .param pmc __lowered_lex_297 
    $P5001 = __lowered_lex_297."make"("\r")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<tab>" :subid("cuid_110_1431289891.89934") :anon :lex :outer("cuid_235_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 983
    .param pmc __lowered_lex_298 
    .param pmc __lowered_lex_299 
    $P5001 = __lowered_lex_299."make"("\t")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<ff>" :subid("cuid_111_1431289891.89934") :anon :lex :outer("cuid_235_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 984
    .param pmc __lowered_lex_300 
    .param pmc __lowered_lex_301 
    $P5001 = __lowered_lex_301."make"("\f")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<esc>" :subid("cuid_112_1431289891.89934") :anon :lex :outer("cuid_235_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 985
    .param pmc __lowered_lex_302 
    .param pmc __lowered_lex_303 
    $P5001 = __lowered_lex_303."make"("\e")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<hex>" :subid("cuid_113_1431289891.89934") :anon :lex :outer("cuid_235_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 987
    .param pmc __lowered_lex_304 
    .param pmc __lowered_lex_305 
    .local pmc fb_tmp_84 
    .local pmc fb_tmp_85 
    .local pmc fb_tmp_86 
    .local pmc fb_tmp_87 
.annotate 'line', 988
    nqp_decontainerize $P5001, __lowered_lex_304
    unless_null __lowered_lex_305, fallback1222
    nqp_get_sc_object $P5002, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_305, $P5002
  fallback1222:
    set fb_tmp_84, __lowered_lex_305
    repr_defined $I5001, fb_tmp_84
    unless $I5001 goto if502_else1220 
    set $P5003, fb_tmp_84["hexint"]
    set $P5005, $P5003
    goto if502_end1221
  if502_else1220:
    null $P5004
    set $P5005, $P5004
  if502_end1221:
    unless_null $P5005, vivi_5031223
    nqp_get_sc_object $P5006, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5005, $P5006
  vivi_5031223:
    unless $P5005 goto if501_else1218 
    unless_null __lowered_lex_305, fallback1226
    nqp_get_sc_object $P5007, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_305, $P5007
  fallback1226:
    set fb_tmp_85, __lowered_lex_305
    repr_defined $I5002, fb_tmp_85
    unless $I5002 goto if504_else1224 
    set $P5008, fb_tmp_85["hexint"]
    set $P5010, $P5008
    goto if504_end1225
  if504_else1224:
    null $P5009
    set $P5010, $P5009
  if504_end1225:
    unless_null $P5010, vivi_5051227
    nqp_get_sc_object $P5011, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5010, $P5011
  vivi_5051227:
    set $P5021, $P5010
    goto if501_end1219
  if501_else1218:
    unless_null __lowered_lex_305, fallback1232
    nqp_get_sc_object $P5012, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_305, $P5012
  fallback1232:
    set fb_tmp_87, __lowered_lex_305
    repr_defined $I5004, fb_tmp_87
    unless $I5004 goto if507_else1230 
    set $P5013, fb_tmp_87["hexints"]
    set $P5015, $P5013
    goto if507_end1231
  if507_else1230:
    null $P5014
    set $P5015, $P5014
  if507_end1231:
    unless_null $P5015, vivi_5081233
    nqp_get_sc_object $P5016, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5015, $P5016
  vivi_5081233:
    set fb_tmp_86, $P5015
    repr_defined $I5003, fb_tmp_86
    unless $I5003 goto if506_else1228 
    set $P5017, fb_tmp_86["hexint"]
    set $P5019, $P5017
    goto if506_end1229
  if506_else1228:
    null $P5018
    set $P5019, $P5018
  if506_end1229:
    unless_null $P5019, vivi_5091234
    nqp_get_sc_object $P5020, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5019, $P5020
  vivi_5091234:
    set $P5021, $P5019
  if501_end1219:
    $P5022 = $P5001."ints_to_string"($P5021)
    $P5023 = __lowered_lex_305."make"($P5022)
    .return ($P5023) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<oct>" :subid("cuid_114_1431289891.89934") :anon :lex :outer("cuid_235_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 991
    .param pmc __lowered_lex_306 
    .param pmc __lowered_lex_307 
    .local pmc fb_tmp_88 
    .local pmc fb_tmp_89 
    .local pmc fb_tmp_90 
    .local pmc fb_tmp_91 
.annotate 'line', 992
    nqp_decontainerize $P5001, __lowered_lex_306
    unless_null __lowered_lex_307, fallback1239
    nqp_get_sc_object $P5002, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_307, $P5002
  fallback1239:
    set fb_tmp_88, __lowered_lex_307
    repr_defined $I5001, fb_tmp_88
    unless $I5001 goto if511_else1237 
    set $P5003, fb_tmp_88["octint"]
    set $P5005, $P5003
    goto if511_end1238
  if511_else1237:
    null $P5004
    set $P5005, $P5004
  if511_end1238:
    unless_null $P5005, vivi_5121240
    nqp_get_sc_object $P5006, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5005, $P5006
  vivi_5121240:
    unless $P5005 goto if510_else1235 
    unless_null __lowered_lex_307, fallback1243
    nqp_get_sc_object $P5007, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_307, $P5007
  fallback1243:
    set fb_tmp_89, __lowered_lex_307
    repr_defined $I5002, fb_tmp_89
    unless $I5002 goto if513_else1241 
    set $P5008, fb_tmp_89["octint"]
    set $P5010, $P5008
    goto if513_end1242
  if513_else1241:
    null $P5009
    set $P5010, $P5009
  if513_end1242:
    unless_null $P5010, vivi_5141244
    nqp_get_sc_object $P5011, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5010, $P5011
  vivi_5141244:
    set $P5021, $P5010
    goto if510_end1236
  if510_else1235:
    unless_null __lowered_lex_307, fallback1249
    nqp_get_sc_object $P5012, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_307, $P5012
  fallback1249:
    set fb_tmp_91, __lowered_lex_307
    repr_defined $I5004, fb_tmp_91
    unless $I5004 goto if516_else1247 
    set $P5013, fb_tmp_91["octints"]
    set $P5015, $P5013
    goto if516_end1248
  if516_else1247:
    null $P5014
    set $P5015, $P5014
  if516_end1248:
    unless_null $P5015, vivi_5171250
    nqp_get_sc_object $P5016, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5015, $P5016
  vivi_5171250:
    set fb_tmp_90, $P5015
    repr_defined $I5003, fb_tmp_90
    unless $I5003 goto if515_else1245 
    set $P5017, fb_tmp_90["octint"]
    set $P5019, $P5017
    goto if515_end1246
  if515_else1245:
    null $P5018
    set $P5019, $P5018
  if515_end1246:
    unless_null $P5019, vivi_5181251
    nqp_get_sc_object $P5020, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5019, $P5020
  vivi_5181251:
    set $P5021, $P5019
  if510_end1236:
    $P5022 = $P5001."ints_to_string"($P5021)
    $P5023 = __lowered_lex_307."make"($P5022)
    .return ($P5023) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<chr>" :subid("cuid_115_1431289891.89934") :anon :lex :outer("cuid_235_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 995
    .param pmc __lowered_lex_308 
    .param pmc __lowered_lex_309 
    .local pmc fb_tmp_92 
.annotate 'line', 996
    unless_null __lowered_lex_309, fallback1254
    nqp_get_sc_object $P5001, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_309, $P5001
  fallback1254:
    set fb_tmp_92, __lowered_lex_309
    repr_defined $I5001, fb_tmp_92
    unless $I5001 goto if519_else1252 
    set $P5002, fb_tmp_92["charspec"]
    set $P5004, $P5002
    goto if519_end1253
  if519_else1252:
    null $P5003
    set $P5004, $P5003
  if519_end1253:
    unless_null $P5004, vivi_5201255
    nqp_get_sc_object $P5005, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5004, $P5005
  vivi_5201255:
    $P5006 = $P5004."made"()
    $P5007 = __lowered_lex_309."make"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<0>" :subid("cuid_116_1431289891.89934") :anon :lex :outer("cuid_235_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 999
    .param pmc __lowered_lex_310 
    .param pmc __lowered_lex_311 
.annotate 'line', 1000
    $P5001 = __lowered_lex_311."make"(utf8:"\x{0}")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<misc>" :subid("cuid_117_1431289891.89934") :anon :lex :outer("cuid_235_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1003
    .param pmc __lowered_lex_312 
    .param pmc __lowered_lex_313 
    .local pmc fb_tmp_93 
    .local pmc fb_tmp_94 
    .local pmc fb_tmp_95 
.annotate 'line', 1004
    unless_null __lowered_lex_313, fallback1260
    nqp_get_sc_object $P5001, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_313, $P5001
  fallback1260:
    set fb_tmp_93, __lowered_lex_313
    repr_defined $I5001, fb_tmp_93
    unless $I5001 goto if522_else1258 
    set $P5002, fb_tmp_93["textq"]
    set $P5004, $P5002
    goto if522_end1259
  if522_else1258:
    null $P5003
    set $P5004, $P5003
  if522_end1259:
    unless_null $P5004, vivi_5231261
    nqp_get_sc_object $P5005, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5004, $P5005
  vivi_5231261:
    unless $P5004 goto if521_else1256 
    unless_null __lowered_lex_313, fallback1264
    nqp_get_sc_object $P5006, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_313, $P5006
  fallback1264:
    set fb_tmp_94, __lowered_lex_313
    repr_defined $I5002, fb_tmp_94
    unless $I5002 goto if524_else1262 
    set $P5007, fb_tmp_94["textq"]
    set $P5009, $P5007
    goto if524_end1263
  if524_else1262:
    null $P5008
    set $P5009, $P5008
  if524_end1263:
    unless_null $P5009, vivi_5251265
    nqp_get_sc_object $P5010, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5009, $P5010
  vivi_5251265:
    $P5011 = $P5009."Str"()
    set $S5002, $P5011
    concat $S5001, "\\", $S5002
    box $P5019, $S5001
    set $P5018, $P5019
    goto if521_end1257
  if521_else1256:
    unless_null __lowered_lex_313, fallback1268
    nqp_get_sc_object $P5012, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_313, $P5012
  fallback1268:
    set fb_tmp_95, __lowered_lex_313
    repr_defined $I5003, fb_tmp_95
    unless $I5003 goto if526_else1266 
    set $P5013, fb_tmp_95["textqq"]
    set $P5015, $P5013
    goto if526_end1267
  if526_else1266:
    null $P5014
    set $P5015, $P5014
  if526_end1267:
    unless_null $P5015, vivi_5271269
    nqp_get_sc_object $P5016, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5015, $P5016
  vivi_5271269:
    $P5017 = $P5015."Str"()
    set $P5018, $P5017
  if521_end1257:
    $P5020 = __lowered_lex_313."make"($P5018)
    .return ($P5020) 
.end
.HLL "nqp"
.namespace []
.sub "charname" :subid("cuid_118_1431289891.89934") :anon :lex :outer("cuid_235_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1007
    .param pmc __lowered_lex_314 
    .param pmc __lowered_lex_315 
    .local pmc __lowered_lex_316 
    .local pmc fb_tmp_96 
    .local pmc fb_tmp_97 
    unless_null __lowered_lex_315, fallback1274
    nqp_get_sc_object $P5001, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_315, $P5001
  fallback1274:
    set fb_tmp_96, __lowered_lex_315
    repr_defined $I5001, fb_tmp_96
    unless $I5001 goto if529_else1272 
    set $P5002, fb_tmp_96["integer"]
    set $P5004, $P5002
    goto if529_end1273
  if529_else1272:
    null $P5003
    set $P5004, $P5003
  if529_end1273:
    unless_null $P5004, vivi_5301275
    nqp_get_sc_object $P5005, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5004, $P5005
  vivi_5301275:
    unless $P5004 goto if528_else1270 
.annotate 'line', 1009
    unless_null __lowered_lex_315, fallback1278
    nqp_get_sc_object $P5006, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_315, $P5006
  fallback1278:
    set fb_tmp_97, __lowered_lex_315
    repr_defined $I5002, fb_tmp_97
    unless $I5002 goto if531_else1276 
    set $P5007, fb_tmp_97["integer"]
    set $P5009, $P5007
    goto if531_end1277
  if531_else1276:
    null $P5008
    set $P5009, $P5008
  if531_end1277:
    unless_null $P5009, vivi_5321279
    nqp_get_sc_object $P5010, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5009, $P5010
  vivi_5321279:
    $P5011 = $P5009."made"()
    set $P5012, $P5011
    goto if528_end1271
  if528_else1270:
    set $S5002, __lowered_lex_315
    find_encoding $I5003, 'utf8'
    trans_encoding $S5001, $S5002, $I5003
    find_codepoint $I5003, $S5001
    box $P5013, $I5003
    set $P5012, $P5013
  if528_end1271:
    set __lowered_lex_316, $P5012
    set $N5001, __lowered_lex_316
    set $N5002, 0
    islt $I5004, $N5001, $N5002
    unless $I5004 goto if533_end1281 
.annotate 'line', 1011
    $P5014 = __lowered_lex_315."CURSOR"()
    set $S5004, __lowered_lex_315
    concat $S5003, "Unrecognized character name ", $S5004
    $P5015 = $P5014."panic"($S5003)
  if533_end1281:
.annotate 'line', 1012
    set $I5005, __lowered_lex_316
    chr $S5005, $I5005
    $P5016 = __lowered_lex_315."make"($S5005)
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "charnames" :subid("cuid_119_1431289891.89934") :anon :lex :outer("cuid_235_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1015
    .param pmc __lowered_lex_318 
    .param pmc __lowered_lex_319 
    .local pmc __lowered_lex_320 
    .local pmc lowered_for_it__9 
    .local pmc fb_tmp_98 
    .local pmc __lowered_lex_317 
    box $P5001, ""
    set __lowered_lex_320, $P5001
    unless_null __lowered_lex_319, fallback1284
    nqp_get_sc_object $P5003, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_319, $P5003
  fallback1284:
    set fb_tmp_98, __lowered_lex_319
    repr_defined $I5001, fb_tmp_98
    unless $I5001 goto if534_else1282 
    set $P5004, fb_tmp_98["charname"]
    set $P5006, $P5004
    goto if534_end1283
  if534_else1282:
    null $P5005
    set $P5006, $P5005
  if534_end1283:
    unless_null $P5006, vivi_5351285
    nqp_get_sc_object $P5007, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5006, $P5007
  vivi_5351285:
    iter $P5002, $P5006
    set lowered_for_it__9, $P5002
    new $P5012, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5012, while536_handlers1289
    push_eh $P5012
  while536_test1286:
    set $P5011, lowered_for_it__9
    unless lowered_for_it__9 goto while536_done1290 
  while536_redo1288:
    shift $P5008, lowered_for_it__9
    set __lowered_lex_317, $P5008
.annotate 'line', 1017
    set $S5002, __lowered_lex_320
    $P5009 = __lowered_lex_317."made"()
    set $S5003, $P5009
    concat $S5001, $S5002, $S5003
    box $P5010, $S5001
    set __lowered_lex_320, $P5010
    set $P5011, __lowered_lex_320
    goto while536_test1286 
  while536_handlers1289:
    .get_results ($P5012)
    pop_upto_eh $P5012
    getattribute $P5013, $P5012, 'type'
    eq $P5013, .CONTROL_LOOP_NEXT, while536_test1286
    eq $P5013, .CONTROL_LOOP_REDO, while536_redo1288
  while536_done1290:
    pop_eh 
.annotate 'line', 1018
    $P5014 = __lowered_lex_319."make"(__lowered_lex_320)
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "charspec" :subid("cuid_120_1431289891.89934") :anon :lex :outer("cuid_235_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1021
    .param pmc __lowered_lex_321 
    .param pmc __lowered_lex_322 
    .local pmc fb_tmp_99 
    .local pmc fb_tmp_100 
    .local pmc fb_tmp_101 
    .local pmc fb_tmp_102 
.annotate 'line', 1022
    unless_null __lowered_lex_322, fallback1295
    nqp_get_sc_object $P5001, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_322, $P5001
  fallback1295:
    set fb_tmp_99, __lowered_lex_322
    repr_defined $I5001, fb_tmp_99
    unless $I5001 goto if538_else1293 
    set $P5002, fb_tmp_99["charnames"]
    set $P5004, $P5002
    goto if538_end1294
  if538_else1293:
    null $P5003
    set $P5004, $P5003
  if538_end1294:
    unless_null $P5004, vivi_5391296
    nqp_get_sc_object $P5005, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5004, $P5005
  vivi_5391296:
    unless $P5004 goto if537_else1291 
.annotate 'line', 1023
    unless_null __lowered_lex_322, fallback1299
    nqp_get_sc_object $P5006, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_322, $P5006
  fallback1299:
    set fb_tmp_100, __lowered_lex_322
    repr_defined $I5002, fb_tmp_100
    unless $I5002 goto if540_else1297 
    set $P5007, fb_tmp_100["charnames"]
    set $P5009, $P5007
    goto if540_end1298
  if540_else1297:
    null $P5008
    set $P5009, $P5008
  if540_end1298:
    unless_null $P5009, vivi_5411300
    nqp_get_sc_object $P5010, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5009, $P5010
  vivi_5411300:
    $P5011 = $P5009."made"()
    set $P5026, $P5011
    goto if537_end1292
  if537_else1291:
    unless_null __lowered_lex_322, fallback1305
    nqp_get_sc_object $P5012, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_322, $P5012
  fallback1305:
    set fb_tmp_101, __lowered_lex_322
    repr_defined $I5003, fb_tmp_101
    unless $I5003 goto if543_else1303 
    set $P5013, fb_tmp_101["control"]
    set $P5015, $P5013
    goto if543_end1304
  if543_else1303:
    null $P5014
    set $P5015, $P5014
  if543_end1304:
    unless_null $P5015, vivi_5441306
    nqp_get_sc_object $P5016, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5015, $P5016
  vivi_5441306:
    unless $P5015 goto if542_else1301 
    unless_null __lowered_lex_322, fallback1309
    nqp_get_sc_object $P5017, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_322, $P5017
  fallback1309:
    set fb_tmp_102, __lowered_lex_322
    repr_defined $I5006, fb_tmp_102
    unless $I5006 goto if545_else1307 
    set $P5018, fb_tmp_102["control"]
    set $P5020, $P5018
    goto if545_end1308
  if545_else1307:
    null $P5019
    set $P5020, $P5019
  if545_end1308:
    unless_null $P5020, vivi_5461310
    nqp_get_sc_object $P5021, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5020, $P5021
  vivi_5461310:
    set $S5002, $P5020
    ord $I5005, $S5002
    bxor $I5004, $I5005, 64
    box $P5025, $I5004
    set $P5024, $P5025
    goto if542_end1302
  if542_else1301:
.annotate 'line', 1026
    nqp_decontainerize $P5022, __lowered_lex_321
    $P5023 = $P5022."string_to_int"(__lowered_lex_322, 10)
    set $P5024, $P5023
  if542_end1302:
    set $I5007, $P5024
    chr $S5001, $I5007
    box $P5027, $S5001
    set $P5026, $P5027
  if537_end1292:
    $P5028 = __lowered_lex_322."make"($P5026)
    .return ($P5028) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_236_1431289891.89934") :anon :lex :outer("cuid_232_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1033
    .const 'Sub' $P5045 = 'cuid_121_1431289891.89934' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_122_1431289891.89934' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_123_1431289891.89934' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_124_1431289891.89934' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_125_1431289891.89934' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_126_1431289891.89934' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_127_1431289891.89934' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_128_1431289891.89934' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_129_1431289891.89934' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_130_1431289891.89934' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_131_1431289891.89934' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_132_1431289891.89934' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_133_1431289891.89934' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_134_1431289891.89934' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_135_1431289891.89934' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_136_1431289891.89934' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_137_1431289891.89934' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_138_1431289891.89934' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_139_1431289891.89934' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_140_1431289891.89934' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_141_1431289891.89934' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_142_1431289891.89934' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_143_1431289891.89934' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_144_1431289891.89934' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_145_1431289891.89934' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_146_1431289891.89934' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_147_1431289891.89934' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_148_1431289891.89934' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_149_1431289891.89934' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_150_1431289891.89934' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_151_1431289891.89934' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_152_1431289891.89934' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_153_1431289891.89934' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_154_1431289891.89934' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_155_1431289891.89934' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_156_1431289891.89934' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_157_1431289891.89934' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_158_1431289891.89934' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_159_1431289891.89934' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_160_1431289891.89934' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_161_1431289891.89934' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_162_1431289891.89934' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_163_1431289891.89934' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_164_1431289891.89934' 
    capture_lex $P5045 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_121_1431289891.89934' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_122_1431289891.89934' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_123_1431289891.89934' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_124_1431289891.89934' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_125_1431289891.89934' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_126_1431289891.89934' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_127_1431289891.89934' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_128_1431289891.89934' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_129_1431289891.89934' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_130_1431289891.89934' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_131_1431289891.89934' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_132_1431289891.89934' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_133_1431289891.89934' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_134_1431289891.89934' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_135_1431289891.89934' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_136_1431289891.89934' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_137_1431289891.89934' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_138_1431289891.89934' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_139_1431289891.89934' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_140_1431289891.89934' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_141_1431289891.89934' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_142_1431289891.89934' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_143_1431289891.89934' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_144_1431289891.89934' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_145_1431289891.89934' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_146_1431289891.89934' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_147_1431289891.89934' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_148_1431289891.89934' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_149_1431289891.89934' 
    capture_lex $P5029
    .const 'Sub' $P5030 = 'cuid_150_1431289891.89934' 
    capture_lex $P5030
    .const 'Sub' $P5031 = 'cuid_151_1431289891.89934' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_152_1431289891.89934' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_153_1431289891.89934' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_154_1431289891.89934' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_155_1431289891.89934' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_156_1431289891.89934' 
    capture_lex $P5036
    .const 'Sub' $P5037 = 'cuid_157_1431289891.89934' 
    capture_lex $P5037
    .const 'Sub' $P5038 = 'cuid_158_1431289891.89934' 
    capture_lex $P5038
    .const 'Sub' $P5039 = 'cuid_159_1431289891.89934' 
    capture_lex $P5039
    .const 'Sub' $P5040 = 'cuid_160_1431289891.89934' 
    capture_lex $P5040
    .const 'Sub' $P5041 = 'cuid_161_1431289891.89934' 
    capture_lex $P5041
    .const 'Sub' $P5042 = 'cuid_162_1431289891.89934' 
    capture_lex $P5042
    .const 'Sub' $P5043 = 'cuid_163_1431289891.89934' 
    capture_lex $P5043
    .const 'Sub' $P5044 = 'cuid_164_1431289891.89934' 
    capture_lex $P5044
    .return ($P5044) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_121_1431289891.89934") :anon :lex :outer("cuid_236_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1047
    .param pmc __lowered_lex_323 
    nqp_decontainerize $P5001, __lowered_lex_323
    nqp_get_sc_object $P5002, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 127
.annotate 'line', 1049
    nqp_decontainerize $P5003, __lowered_lex_323
    $P5004 = $P5003."default_backend"()
    repr_bind_attr_obj $P5001, $P5002, "$!backend", 10, $P5004
    nqp_decontainerize $P5005, __lowered_lex_323
    nqp_get_sc_object $P5006, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 127
.annotate 'line', 1052
    nqp_decontainerize $P5008, __lowered_lex_323
    nqp_get_sc_object $P5009, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 127
    repr_get_attr_obj $P5010, $P5008, $P5009, "$!backend", 10
    $P5011 = $P5010."stages"()
    set $S5002, $P5011
    concat $S5001, "start parse ast ", $S5002
    split $P5007, " ", $S5001
    repr_bind_attr_obj $P5005, $P5006, "@!stages", 0, $P5007
    nqp_decontainerize $P5012, __lowered_lex_323
    nqp_get_sc_object $P5013, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 127
    split $P5014, " ", "e=s help|h target=s trace|t=s encoding=s output|o=s combine version|v show-config verbose-config|V stagestats=s? ll-exception rxtrace nqpevent=s profile profile-compile profile-filename=s"
    repr_bind_attr_obj $P5012, $P5013, "@!cmdoptions", 3, $P5014
    nqp_decontainerize $P5015, __lowered_lex_323
    nqp_get_sc_object $P5016, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 127
    new $P5017, 'Hash'
    repr_bind_attr_obj $P5015, $P5016, "%!config", 6, $P5017
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "backend" :subid("cuid_122_1431289891.89934") :anon :lex :outer("cuid_236_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1059
    .param pmc __lowered_lex_324 
    .param pmc __lowered_lex_325 :slurpy 
    .local pmc fb_tmp_103 
    unless __lowered_lex_325 goto if547_end1312 
.annotate 'line', 1060
    nqp_decontainerize $P5001, __lowered_lex_324
    nqp_get_sc_object $P5002, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 127
    set fb_tmp_103, __lowered_lex_325
    repr_defined $I5001, fb_tmp_103
    unless $I5001 goto if548_else1313 
    set $P5003, fb_tmp_103[0]
    set $P5005, $P5003
    goto if548_end1314
  if548_else1313:
    null $P5004
    set $P5005, $P5004
  if548_end1314:
    unless_null $P5005, vivi_5491315
    nqp_get_sc_object $P5006, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5005, $P5006
  vivi_5491315:
    repr_bind_attr_obj $P5001, $P5002, "$!backend", 10, $P5005
    nqp_decontainerize $P5007, __lowered_lex_324
    nqp_get_sc_object $P5008, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 127
.annotate 'line', 1062
    nqp_decontainerize $P5010, __lowered_lex_324
    nqp_get_sc_object $P5011, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 127
    repr_get_attr_obj $P5012, $P5010, $P5011, "$!backend", 10
    $P5013 = $P5012."stages"()
    set $S5002, $P5013
    concat $S5001, "start parse ast ", $S5002
    split $P5009, " ", $S5001
    repr_bind_attr_obj $P5007, $P5008, "@!stages", 0, $P5009
  if547_end1312:
    nqp_decontainerize $P5014, __lowered_lex_324
    nqp_get_sc_object $P5015, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 127
    repr_get_attr_obj $P5016, $P5014, $P5015, "$!backend", 10
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "language" :subid("cuid_123_1431289891.89934") :anon :lex :outer("cuid_236_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1067
    .param pmc __lowered_lex_326 
    .param pmc __lowered_lex_327 :optional 
    .param int haz_param_8 :opt_flag 
    if haz_param_8, default1318
    nqp_get_sc_object $P5007, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_327, $P5007
  default1318:
    unless __lowered_lex_327 goto if550_end1317 
.annotate 'line', 1068
    nqp_decontainerize $P5001, __lowered_lex_326
    nqp_get_sc_object $P5002, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 127
    repr_bind_attr_obj $P5001, $P5002, "$!language", 5, __lowered_lex_327
    set $S5001, __lowered_lex_327
    nqp_decontainerize $P5003, __lowered_lex_326
    compreg $S5001, $P5003
  if550_end1317:
    nqp_decontainerize $P5004, __lowered_lex_326
    nqp_get_sc_object $P5005, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 127
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!language", 5
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "compiler" :subid("cuid_124_1431289891.89934") :anon :lex :outer("cuid_236_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1075
    .param pmc __lowered_lex_328 
    .param pmc __lowered_lex_329 
    set $S5001, __lowered_lex_329
    compreg $P5001, $S5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "config" :subid("cuid_125_1431289891.89934") :anon :lex :outer("cuid_236_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1079
    .param pmc __lowered_lex_330 
    nqp_decontainerize $P5001, __lowered_lex_330
    nqp_get_sc_object $P5002, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 127
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!config", 6
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "autoprint" :subid("cuid_126_1431289891.89934") :anon :lex :outer("cuid_236_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1081
    .param pmc __lowered_lex_331 
    .param pmc __lowered_lex_332 
    .local pmc fb_tmp_104 
    getinterp $P5001
    $P5002 = $P5001."stdout_handle"()
    $I5002 = $P5002."tell"()
    set $N5001, $I5002
    find_dynamic_lex $P5003, "$*AUTOPRINTPOS"
    unless_null $P5003, fallback1321
    nqp_get_sc_object $P5005, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 0
    get_who $P5004, $P5005
    set fb_tmp_104, $P5004
    repr_defined $I5003, fb_tmp_104
    unless $I5003 goto if552_else1322 
    set $P5006, fb_tmp_104["$AUTOPRINTPOS"]
    set $P5008, $P5006
    goto if552_end1323
  if552_else1322:
    null $P5007
    set $P5008, $P5007
  if552_end1323:
    unless_null $P5008, vivi_5531324
    nqp_get_sc_object $P5009, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5008, $P5009
  vivi_5531324:
    unless_null $P5008, vivi_5541325
    die "Contextual $*AUTOPRINTPOS not found"
    box $P5010, "Contextual $*AUTOPRINTPOS not found"
    set $P5008, $P5010
  vivi_5541325:
    set $P5003, $P5008
  fallback1321:
    set $N5002, $P5003
    isgt $I5001, $N5001, $N5002
    box $P5014, $I5001
    set $P5013, $P5014
    if $I5001 goto unless551_end1320 
.annotate 'line', 1082
    nqp_decontainerize $P5011, __lowered_lex_331
    $P5012 = $P5011."interactive_result"(__lowered_lex_332)
    set $P5013, $P5012
  unless551_end1320:
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "readline" :subid("cuid_127_1431289891.89934") :anon :lex :outer("cuid_236_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1086
    .param pmc __lowered_lex_333 
    .param pmc __lowered_lex_334 
    .param pmc __lowered_lex_335 
    .param pmc __lowered_lex_336 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_1326
    .lex "RETURN", $P101
    getinterp $P5001
    $P5002 = $P5001."stdout_handle"()
    $P5003 = $P5002."print"(__lowered_lex_336)
    $P5004 = __lowered_lex_334."readline"()
    $P5005 = "RETURN"($P5004)
    goto lexotic_1327
  lexotic_1326:
    .get_results ($P5005)
  lexotic_1327:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "context" :subid("cuid_128_1431289891.89934") :anon :lex :outer("cuid_236_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1091
    .param pmc __lowered_lex_337 
    nqp_decontainerize $P5001, __lowered_lex_337
    nqp_get_sc_object $P5002, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 127
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!save_ctx", 11
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "interactive" :subid("cuid_129_1431289891.89934") :anon :lex :outer("cuid_236_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1095
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy :named 
    .const 'Sub' $P5034 = 'cuid_238_1431289891.89934' 
    capture_lex $P5034 
    .lex "$stdin", $P101 
    .lex "$stdout", $P102 
    .lex "$target", $P103 
    .lex "$prompt", $P104 
    .lex "$code", $P105 
    .lex "self", _lex_param_0 
    .lex "%adverbs", _lex_param_1 
    .local pmc __lowered_lex_341 
    .local pmc fb_tmp_105 
    .local pmc fb_tmp_106 
    nqp_get_sc_object $P5001, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P105, $P5001
    getinterp $P5002
    $P5003 = $P5002."stderr_handle"()
.annotate 'line', 1096
    nqp_decontainerize $P5004, _lex_param_0
    $P5005 = $P5004."interactive_banner"()
    $P5006 = $P5003."print"($P5005)
    getinterp $P5007
    $P5008 = $P5007."stdin_handle"()
    set $P101, $P5008
    getinterp $P5009
    $P5010 = $P5009."stdout_handle"()
    set $P102, $P5010
    set fb_tmp_105, _lex_param_1
    repr_defined $I5001, fb_tmp_105
    unless $I5001 goto if555_else1328 
    set $P5011, fb_tmp_105["encoding"]
    set $P5013, $P5011
    goto if555_end1329
  if555_else1328:
    null $P5012
    set $P5013, $P5012
  if555_end1329:
    unless_null $P5013, vivi_5561330
    nqp_get_sc_object $P5014, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5013, $P5014
  vivi_5561330:
    set $S5001, $P5013
    box $P5015, $S5001
    set __lowered_lex_341, $P5015
    set $P5016, __lowered_lex_341
    unless __lowered_lex_341 goto if558_end1334 
    set $S5002, __lowered_lex_341
    isne $I5002, $S5002, "fixed_8"
    box $P5017, $I5002
    set $P5016, $P5017
  if558_end1334:
    unless $P5016 goto if557_end1332 
.annotate 'line', 1101
    $P5018 = $P101."encoding"(__lowered_lex_341)
  if557_end1332:
    set fb_tmp_106, _lex_param_1
    repr_defined $I5003, fb_tmp_106
    unless $I5003 goto if559_else1335 
    set $P5019, fb_tmp_106["target"]
    set $P5021, $P5019
    goto if559_end1336
  if559_else1335:
    null $P5020
    set $P5021, $P5020
  if559_end1336:
    unless_null $P5021, vivi_5601337
    nqp_get_sc_object $P5022, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5021, $P5022
  vivi_5601337:
    set $S5004, $P5021
    downcase $S5003, $S5004
    box $P5023, $S5003
    set $P103, $P5023
.annotate 'line', 1106
    nqp_decontainerize $P5025, _lex_param_0
    $P5026 = $P5025."interactive_prompt"()
    set $P5024, $P5026
    defined $I5004, $P5024
    if $I5004, defor1338
    box $P5027, "> "
    set $P5024, $P5027
  defor1338:
    set $P104, $P5024
    new $P5031, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5031, while561_handlers1342
    push_eh $P5031
  while561_test1339:
    box $P5032, 1
    set $P5030, $P5032
    unless 1 goto while561_done1343 
  while561_redo1341:
    .const 'Sub' $P5028 = 'cuid_238_1431289891.89934' 
    capture_lex $P5028
    $P5029 = $P5028()
    set $P5030, $P5029
    goto while561_test1339 
  while561_handlers1342:
    .get_results ($P5031)
    pop_upto_eh $P5031
    getattribute $P5033, $P5031, 'type'
    eq $P5033, .CONTROL_LOOP_NEXT, while561_test1339
    eq $P5033, .CONTROL_LOOP_REDO, while561_redo1341
  while561_done1343:
    pop_eh 
    .return ($P5030) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_238_1431289891.89934") :anon :lex :outer("cuid_129_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1108
    .const 'Sub' $P5090 = 'cuid_237_1431289891.89934' 
    capture_lex $P5090 
    .lex "$*AUTOPRINTPOS", $P101 
    .lex "$*CTXSAVE", $P102 
    .lex "$*MAIN_CTX", $P103 
    .local string __lowered_lex_340 
    .local pmc fb_tmp_107 
    .local pmc __lowered_lex_339 
    .local pmc fb_tmp_108 
    .local pmc fb_tmp_109 
    nqp_get_sc_object $P5001, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P103, $P5001
    find_lex $P5002, "$stdin"
    isfalse $I5001, $P5002
    unless $I5001 goto if562_end1345 
    die 0, .CONTROL_LOOP_LAST
  if562_end1345:
.annotate 'line', 1111
    find_lex $P5004, "self"
    nqp_decontainerize $P5003, $P5004
    find_lex $P5005, "$stdin"
    find_lex $P5006, "$stdout"
    find_lex $P5007, "$prompt"
    set $S5001, $P5007
    $P5008 = $P5003."readline"($P5005, $P5006, $S5001)
    set $S5002, $P5008
    set __lowered_lex_340, $S5002
    set $S5003, __lowered_lex_340
    isnull $I5002, $S5003
    set $I5005, $I5002
    if $I5002 goto unless564_end1349 
    box $P5009, __lowered_lex_340
    defined $I5004, $P5009
    not $I5003, $I5004
    set $I5005, $I5003
  unless564_end1349:
    unless $I5005 goto if563_end1347 
.annotate 'line', 1112
    print "\n"
    die 0, .CONTROL_LOOP_LAST
  if563_end1347:
    unless __lowered_lex_340 goto if565_end1351 
.annotate 'line', 1116
    find_lex $P5010, "$code"
    set $S5005, $P5010
    concat $S5004, $S5005, __lowered_lex_340
    box $P5011, $S5004
    store_lex "$code", $P5011
  if565_end1351:
    box $P5013, __lowered_lex_340
    set $P5012, $P5013
    unless __lowered_lex_340 goto if567_end1355 
    length $I5008, __lowered_lex_340
    sub $I5007, $I5008, 1
    substr $S5006, __lowered_lex_340, $I5007
    iseq $I5006, $S5006, "\\"
    box $P5014, $I5006
    set $P5012, $P5014
  if567_end1355:
    unless $P5012 goto if566_end1353 
.annotate 'line', 1120
    find_lex $P5015, "$code"
    set $S5008, $P5015
    find_lex $P5016, "$code"
    set $S5009, $P5016
    length $I5010, $S5009
    sub $I5009, $I5010, 1
    substr $S5007, $S5008, 0, $I5009
    box $P5017, $S5007
    store_lex "$code", $P5017
    find_lex $P5018, "$code"
    unless $P5018 goto if568_end1357 
.annotate 'line', 1123
    box $P5019, "* "
    store_lex "$prompt", $P5019
  if568_end1357:
    die 0, .CONTROL_LOOP_NEXT
  if566_end1353:
    getinterp $P5020
    $P5021 = $P5020."stdout_handle"()
    $I5011 = $P5021."tell"()
    box $P5022, $I5011
    set $P101, $P5022
    find_lex $P5024, "self"
    nqp_decontainerize $P5023, $P5024
    set $P102, $P5023
    find_lex $P5032, "$code"
    set $P5089, $P5032
    unless $P5032 goto if572_end1364 
    nqp_get_sc_object $P5033, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_339, $P5033
.annotate 'line', 1134
    find_lex $P5034, "$code"
    set $S5011, $P5034
    concat $S5010, $S5011, "\n"
    box $P5035, $S5010
    store_lex "$code", $P5035
.annotate 'line', 1137
    new $P5046, 'ExceptionHandler'
    set_label $P5046, catch_handler_5741366
    $P5046.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5046
.annotate 'line', 1138
    find_lex $P5037, "self"
    nqp_decontainerize $P5036, $P5037
    find_lex $P5038, "$code"
    find_lex $P5040, "self"
    nqp_decontainerize $P5039, $P5040
    nqp_get_sc_object $P5041, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 127
    repr_get_attr_obj $P5042, $P5039, $P5041, "$!save_ctx", 11
    find_lex $P5043, "%adverbs"
    $P5044 = $P5036."eval"($P5038, $P5042 :named("outer_ctx"), $P5043 :flat :named)
    set __lowered_lex_339, $P5044
    nqp_get_sc_object $P5045, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5047, $P5045
    pop_eh 
    goto skip_handler_5731365
  catch_handler_5741366:
    .get_results ($P5046) 
    .const 'Sub' $P10001 = 'cuid_237_1431289891.89934' 
    capture_lex $P10001
    $P10001($P5046)
    set $I10001, 1
    set $P5046["handled"], $I10001
    nqp_get_sc_object $P10002, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    finalize $P5046
    pop_upto_eh $P5046
    pop_eh 
    set $P5047, $P10002
    goto skip_handler_5731365
  skip_handler_5731365:
    unless_null $P103, fallback1369
    nqp_get_sc_object $P5049, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 0
    get_who $P5048, $P5049
    set fb_tmp_108, $P5048
    repr_defined $I5014, fb_tmp_108
    unless $I5014 goto if576_else1370 
    set $P5050, fb_tmp_108["$MAIN_CTX"]
    set $P5052, $P5050
    goto if576_end1371
  if576_else1370:
    null $P5051
    set $P5052, $P5051
  if576_end1371:
    unless_null $P5052, vivi_5771372
    nqp_get_sc_object $P5053, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5052, $P5053
  vivi_5771372:
    unless_null $P5052, vivi_5781373
    die "Contextual $*MAIN_CTX not found"
    box $P5054, "Contextual $*MAIN_CTX not found"
    set $P5052, $P5054
  vivi_5781373:
    set $P103, $P5052
  fallback1369:
    defined $I5013, $P103
    unless $I5013 goto if575_end1368 
.annotate 'line', 1143
    find_lex $P5056, "self"
    nqp_decontainerize $P5055, $P5056
    nqp_get_sc_object $P5057, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 127
    unless_null $P103, fallback1374
    nqp_get_sc_object $P5059, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 0
    get_who $P5058, $P5059
    set fb_tmp_109, $P5058
    repr_defined $I5015, fb_tmp_109
    unless $I5015 goto if579_else1375 
    set $P5060, fb_tmp_109["$MAIN_CTX"]
    set $P5062, $P5060
    goto if579_end1376
  if579_else1375:
    null $P5061
    set $P5062, $P5061
  if579_end1376:
    unless_null $P5062, vivi_5801377
    nqp_get_sc_object $P5063, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5062, $P5063
  vivi_5801377:
    unless_null $P5062, vivi_5811378
    die "Contextual $*MAIN_CTX not found"
    box $P5064, "Contextual $*MAIN_CTX not found"
    set $P5062, $P5064
  vivi_5811378:
    set $P103, $P5062
  fallback1374:
    repr_bind_attr_obj $P5055, $P5057, "$!save_ctx", 11, $P103
  if575_end1368:
    box $P5065, ""
    store_lex "$code", $P5065
.annotate 'line', 1148
    find_lex $P5068, "self"
    nqp_decontainerize $P5067, $P5068
    $P5069 = $P5067."interactive_prompt"()
    set $P5066, $P5069
    defined $I5016, $P5066
    if $I5016, defor1379
    box $P5070, "> "
    set $P5066, $P5070
  defor1379:
    store_lex "$prompt", $P5066
    defined $I5017, __lowered_lex_339
    if $I5017 goto unless582_end1381 
    die 0, .CONTROL_LOOP_NEXT
  unless582_end1381:
    isnull $I5018, __lowered_lex_339
    unless $I5018 goto if583_end1383 
    die 0, .CONTROL_LOOP_NEXT
  if583_end1383:
    find_lex $P5071, "$target"
    isfalse $I5019, $P5071
    unless $I5019 goto if584_else1384 
.annotate 'line', 1153
.annotate 'line', 1154
    find_lex $P5073, "self"
    nqp_decontainerize $P5072, $P5073
    $P5074 = $P5072."autoprint"(__lowered_lex_339)
    set $P5088, $P5074
    goto if584_end1385
  if584_else1384:
.annotate 'line', 1155
    find_lex $P5076, "self"
    nqp_decontainerize $P5075, $P5076
    nqp_get_sc_object $P5077, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 127
    repr_get_attr_obj $P5078, $P5075, $P5077, "$!backend", 10
    find_lex $P5079, "$target"
    $P5080 = $P5078."is_textual_stage"($P5079)
    unless $P5080 goto if585_else1386 
    set $S5012, __lowered_lex_339
    say $S5012
    box $P5087, $S5012
    set $P5086, $P5087
    goto if585_end1387
  if585_else1386:
.annotate 'line', 1157
.annotate 'line', 1158
    find_lex $P5082, "self"
    nqp_decontainerize $P5081, $P5082
    find_lex $P5083, "$target"
    find_lex $P5084, "%adverbs"
    $P5085 = $P5081."dumper"(__lowered_lex_339, $P5083, $P5084 :flat :named)
    set $P5086, $P5085
  if585_end1387:
    set $P5088, $P5086
  if584_end1385:
    set $P5089, $P5088
  if572_end1364:
    .return ($P5089) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_237_1431289891.89934") :anon :lex :outer("cuid_238_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1139
    .param pmc __lowered_lex_338 
    .lex "$!", $P101 
    set $P101, __lowered_lex_338
.annotate 'line', 1140
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."interactive_exception"($P101)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "interactive_result" :subid("cuid_130_1431289891.89934") :anon :lex :outer("cuid_236_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1164
    .param pmc __lowered_lex_342 
    .param pmc __lowered_lex_343 
    set $S5001, __lowered_lex_343
    say $S5001
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "interactive_exception" :subid("cuid_131_1431289891.89934") :anon :lex :outer("cuid_236_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1168
    .param pmc __lowered_lex_344 
    .param pmc __lowered_lex_345 
    set $S5002, __lowered_lex_345
    concat $S5001, $S5002, "\n"
    print $S5001
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "eval" :subid("cuid_132_1431289891.89934") :anon :lex :outer("cuid_236_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1172
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy 
    .param pmc _lex_param_3 :slurpy :named 
    .const 'Sub' $P5068 = 'cuid_239_1431289891.89934' 
    capture_lex $P5068 
    .const 'Sub' $P5068 = 'cuid_240_1431289891.89934' 
    capture_lex $P5068 
    .const 'Sub' $P5068 = 'cuid_241_1431289891.89934' 
    capture_lex $P5068 
    .lex "$output", $P101 
    .lex "self", _lex_param_0 
    .lex "$code", _lex_param_1 
    .lex "@args", _lex_param_2 
    .lex "%adverbs", _lex_param_3 
    .local pmc fb_tmp_110 
    .local pmc fb_tmp_111 
    .local pmc fb_tmp_112 
    .local pmc __lowered_lex_346 
    .local pmc fb_tmp_113 
    .local pmc fb_tmp_114 
    .local pmc fb_tmp_115 
    .local pmc fb_tmp_116 
    .local pmc fb_tmp_117 
    nqp_get_sc_object $P5001, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P101, $P5001
    set fb_tmp_110, _lex_param_3
    repr_defined $I5001, fb_tmp_110
    unless $I5001 goto if587_else1390 
    set $P5002, fb_tmp_110["profile-compile"]
    set $P5004, $P5002
    goto if587_end1391
  if587_else1390:
    null $P5003
    set $P5004, $P5003
  if587_end1391:
    unless_null $P5004, vivi_5881392
    nqp_get_sc_object $P5005, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5004, $P5005
  vivi_5881392:
    unless $P5004 goto if586_else1388 
.annotate 'line', 1175
.annotate 'line', 1176
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 127
    repr_get_attr_obj $P5008, $P5006, $P5007, "$!backend", 10
    .const 'Sub' $P5010 = 'cuid_239_1431289891.89934' 
    capture_lex $P5010
    newclosure $P5009, $P5010
    set fb_tmp_111, _lex_param_3
    repr_defined $I5002, fb_tmp_111
    unless $I5002 goto if589_else1393 
    set $P5011, fb_tmp_111["profile-filename"]
    set $P5013, $P5011
    goto if589_end1394
  if589_else1393:
    null $P5012
    set $P5013, $P5012
  if589_end1394:
    unless_null $P5013, vivi_5901395
    nqp_get_sc_object $P5014, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5013, $P5014
  vivi_5901395:
    $P5015 = $P5008."run_profiled"($P5009, $P5013)
    set $P101, $P5015
    goto if586_end1389
  if586_else1388:
.annotate 'line', 1180
.annotate 'line', 1181
    nqp_decontainerize $P5016, _lex_param_0
    $P5017 = $P5016."compile"(_lex_param_1, 1 :named("compunit_ok"), _lex_param_3 :flat :named)
    set $P101, $P5017
  if586_end1389:
.annotate 'line', 1184
    nqp_decontainerize $P5018, _lex_param_0
    nqp_get_sc_object $P5019, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 127
    repr_get_attr_obj $P5020, $P5018, $P5019, "$!backend", 10
    $P5021 = $P5020."is_compunit"($P101)
    set $P5026, $P5021
    unless $P5021 goto if592_end1399 
    set fb_tmp_112, _lex_param_3
    repr_defined $I5004, fb_tmp_112
    unless $I5004 goto if593_else1400 
    set $P5022, fb_tmp_112["target"]
    set $P5024, $P5022
    goto if593_end1401
  if593_else1400:
    null $P5023
    set $P5024, $P5023
  if593_end1401:
    unless_null $P5024, vivi_5941402
    nqp_get_sc_object $P5025, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5024, $P5025
  vivi_5941402:
    set $S5001, $P5024
    iseq $I5003, $S5001, ""
    box $P5027, $I5003
    set $P5026, $P5027
  if592_end1399:
    unless $P5026 goto if591_end1397 
    set fb_tmp_113, _lex_param_3
    repr_defined $I5005, fb_tmp_113
    unless $I5005 goto if595_else1403 
    set $P5028, fb_tmp_113["outer_ctx"]
    set $P5030, $P5028
    goto if595_end1404
  if595_else1403:
    null $P5029
    set $P5030, $P5029
  if595_end1404:
    unless_null $P5030, vivi_5961405
    nqp_get_sc_object $P5031, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5030, $P5031
  vivi_5961405:
    set __lowered_lex_346, $P5030
.annotate 'line', 1186
    nqp_decontainerize $P5032, _lex_param_0
    nqp_get_sc_object $P5033, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 127
    repr_get_attr_obj $P5034, $P5032, $P5033, "$!backend", 10
    $P5035 = $P5034."compunit_mainline"($P101)
    set $P101, $P5035
    defined $I5006, __lowered_lex_346
    unless $I5006 goto if597_end1407 
.annotate 'line', 1187
    $P5036 = $P101."set_outer_ctx"(__lowered_lex_346)
  if597_end1407:
    set fb_tmp_114, _lex_param_3
    repr_defined $I5007, fb_tmp_114
    unless $I5007 goto if599_else1410 
    set $P5037, fb_tmp_114["profile"]
    set $P5039, $P5037
    goto if599_end1411
  if599_else1410:
    null $P5038
    set $P5039, $P5038
  if599_end1411:
    unless_null $P5039, vivi_6001412
    nqp_get_sc_object $P5040, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5039, $P5040
  vivi_6001412:
    unless $P5039 goto if598_else1408 
.annotate 'line', 1191
.annotate 'line', 1192
    nqp_decontainerize $P5041, _lex_param_0
    nqp_get_sc_object $P5042, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 127
    repr_get_attr_obj $P5043, $P5041, $P5042, "$!backend", 10
    .const 'Sub' $P5045 = 'cuid_240_1431289891.89934' 
    capture_lex $P5045
    newclosure $P5044, $P5045
    set fb_tmp_115, _lex_param_3
    repr_defined $I5008, fb_tmp_115
    unless $I5008 goto if601_else1413 
    set $P5046, fb_tmp_115["profile-filename"]
    set $P5048, $P5046
    goto if601_end1414
  if601_else1413:
    null $P5047
    set $P5048, $P5047
  if601_end1414:
    unless_null $P5048, vivi_6021415
    nqp_get_sc_object $P5049, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5048, $P5049
  vivi_6021415:
    $P5050 = $P5043."run_profiled"($P5044, $P5048)
    set $P101, $P5050
    set $P5067, $P101
    goto if598_end1409
  if598_else1408:
    set fb_tmp_116, _lex_param_3
    repr_defined $I5009, fb_tmp_116
    unless $I5009 goto if604_else1418 
    set $P5051, fb_tmp_116["trace"]
    set $P5053, $P5051
    goto if604_end1419
  if604_else1418:
    null $P5052
    set $P5053, $P5052
  if604_end1419:
    unless_null $P5053, vivi_6051420
    nqp_get_sc_object $P5054, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5053, $P5054
  vivi_6051420:
    unless $P5053 goto if603_else1416 
.annotate 'line', 1194
.annotate 'line', 1195
    nqp_decontainerize $P5055, _lex_param_0
    nqp_get_sc_object $P5056, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 127
    repr_get_attr_obj $P5057, $P5055, $P5056, "$!backend", 10
    set fb_tmp_117, _lex_param_3
    repr_defined $I5010, fb_tmp_117
    unless $I5010 goto if606_else1421 
    set $P5058, fb_tmp_117["trace"]
    set $P5060, $P5058
    goto if606_end1422
  if606_else1421:
    null $P5059
    set $P5060, $P5059
  if606_end1422:
    unless_null $P5060, vivi_6071423
    nqp_get_sc_object $P5061, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5060, $P5061
  vivi_6071423:
    .const 'Sub' $P5063 = 'cuid_241_1431289891.89934' 
    capture_lex $P5063
    newclosure $P5062, $P5063
    $P5064 = $P5057."run_traced"($P5060, $P5062)
    set $P101, $P5064
    set $P5066, $P101
    goto if603_end1417
  if603_else1416:
.annotate 'line', 1197
.annotate 'line', 1198
    $P5065 = $P101(_lex_param_2 :flat)
    set $P101, $P5065
    set $P5066, $P101
  if603_end1417:
    set $P5067, $P5066
  if598_end1409:
  if591_end1397:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_239_1431289891.89934") :anon :lex :outer("cuid_132_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1176

.annotate 'line', 1177
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $P5003, "$code"
    find_lex $P5004, "%adverbs"
    $P5005 = $P5001."compile"($P5003, 1 :named("compunit_ok"), $P5004 :flat :named)
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_240_1431289891.89934") :anon :lex :outer("cuid_132_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1192

    find_lex $P5002, "@args"
    find_lex $P5001, "$output"
    $P5003 = $P5001($P5002 :flat)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_241_1431289891.89934") :anon :lex :outer("cuid_132_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1195

    find_lex $P5002, "@args"
    find_lex $P5001, "$output"
    $P5003 = $P5001($P5002 :flat)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "ctxsave" :subid("cuid_133_1431289891.89934") :anon :lex :outer("cuid_236_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1205
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
.sub "panic" :subid("cuid_134_1431289891.89934") :anon :lex :outer("cuid_236_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1210
    .param pmc __lowered_lex_347 
    .param pmc __lowered_lex_348 :slurpy 
.annotate 'line', 1211
    $P5001 = "&join"("", __lowered_lex_348)
    die $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "stages" :subid("cuid_135_1431289891.89934") :anon :lex :outer("cuid_236_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1214
    .param pmc __lowered_lex_349 
    .param pmc __lowered_lex_350 :optional 
    .param int haz_param_9 :opt_flag 
    if haz_param_9, default1426
    new $P5006, 'QRPA'
    set __lowered_lex_350, $P5006
  default1426:
    set $N5001, __lowered_lex_350
    unless $N5001 goto if608_end1425 
.annotate 'line', 1215
    nqp_decontainerize $P5001, __lowered_lex_349
    nqp_get_sc_object $P5002, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 127
    repr_bind_attr_obj $P5001, $P5002, "@!stages", 0, __lowered_lex_350
  if608_end1425:
    nqp_decontainerize $P5003, __lowered_lex_349
    nqp_get_sc_object $P5004, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 127
    repr_get_attr_obj $P5005, $P5003, $P5004, "@!stages", 0
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "parsegrammar" :subid("cuid_136_1431289891.89934") :anon :lex :outer("cuid_236_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1221
    .param pmc __lowered_lex_351 
    .param pmc __lowered_lex_352 :slurpy 
    .local pmc fb_tmp_118 
    set $N5001, __lowered_lex_352
    unless $N5001 goto if609_end1428 
.annotate 'line', 1222
    nqp_decontainerize $P5001, __lowered_lex_351
    nqp_get_sc_object $P5002, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 127
    set fb_tmp_118, __lowered_lex_352
    repr_defined $I5001, fb_tmp_118
    unless $I5001 goto if610_else1429 
    set $P5003, fb_tmp_118[0]
    set $P5005, $P5003
    goto if610_end1430
  if610_else1429:
    null $P5004
    set $P5005, $P5004
  if610_end1430:
    unless_null $P5005, vivi_6111431
    nqp_get_sc_object $P5006, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5005, $P5006
  vivi_6111431:
    repr_bind_attr_obj $P5001, $P5002, "$!parsegrammar", 1, $P5005
  if609_end1428:
    nqp_decontainerize $P5007, __lowered_lex_351
    nqp_get_sc_object $P5008, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 127
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!parsegrammar", 1
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "parseactions" :subid("cuid_137_1431289891.89934") :anon :lex :outer("cuid_236_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1228
    .param pmc __lowered_lex_353 
    .param pmc __lowered_lex_354 :slurpy 
    .local pmc fb_tmp_119 
    set $N5001, __lowered_lex_354
    unless $N5001 goto if612_end1433 
.annotate 'line', 1229
    nqp_decontainerize $P5001, __lowered_lex_353
    nqp_get_sc_object $P5002, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 127
    set fb_tmp_119, __lowered_lex_354
    repr_defined $I5001, fb_tmp_119
    unless $I5001 goto if613_else1434 
    set $P5003, fb_tmp_119[0]
    set $P5005, $P5003
    goto if613_end1435
  if613_else1434:
    null $P5004
    set $P5005, $P5004
  if613_end1435:
    unless_null $P5005, vivi_6141436
    nqp_get_sc_object $P5006, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5005, $P5006
  vivi_6141436:
    repr_bind_attr_obj $P5001, $P5002, "$!parseactions", 2, $P5005
  if612_end1433:
    nqp_decontainerize $P5007, __lowered_lex_353
    nqp_get_sc_object $P5008, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 127
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!parseactions", 2
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "interactive_banner" :subid("cuid_138_1431289891.89934") :anon :lex :outer("cuid_236_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1235
    .param pmc __lowered_lex_355 
    .return ("") 
.end
.HLL "nqp"
.namespace []
.sub "interactive_prompt" :subid("cuid_139_1431289891.89934") :anon :lex :outer("cuid_236_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1237
    .param pmc __lowered_lex_356 
    .return ("> ") 
.end
.HLL "nqp"
.namespace []
.sub "compiler_progname" :subid("cuid_140_1431289891.89934") :anon :lex :outer("cuid_236_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1239
    .param pmc __lowered_lex_357 
    .param pmc __lowered_lex_358 :optional 
    .param int haz_param_10 :opt_flag 
    if haz_param_10, default1439
    nqp_get_sc_object $P5006, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_358, $P5006
  default1439:
    defined $I5001, __lowered_lex_358
    unless $I5001 goto if615_end1438 
.annotate 'line', 1240
    nqp_decontainerize $P5001, __lowered_lex_357
    nqp_get_sc_object $P5002, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 127
    repr_bind_attr_obj $P5001, $P5002, "$!compiler_progname", 4, __lowered_lex_358
  if615_end1438:
    nqp_decontainerize $P5003, __lowered_lex_357
    nqp_get_sc_object $P5004, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 127
    repr_get_attr_obj $P5005, $P5003, $P5004, "$!compiler_progname", 4
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "commandline_options" :subid("cuid_141_1431289891.89934") :anon :lex :outer("cuid_236_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1247
    .param pmc __lowered_lex_359 
    .param pmc __lowered_lex_360 :optional 
    .param int haz_param_11 :opt_flag 
    if haz_param_11, default1442
    new $P5006, 'QRPA'
    set __lowered_lex_360, $P5006
  default1442:
    set $N5001, __lowered_lex_360
    unless $N5001 goto if616_end1441 
.annotate 'line', 1248
    nqp_decontainerize $P5001, __lowered_lex_359
    nqp_get_sc_object $P5002, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 127
    repr_bind_attr_obj $P5001, $P5002, "@!cmdoptions", 3, __lowered_lex_360
  if616_end1441:
    nqp_decontainerize $P5003, __lowered_lex_359
    nqp_get_sc_object $P5004, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 127
    repr_get_attr_obj $P5005, $P5003, $P5004, "@!cmdoptions", 3
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "command_line" :subid("cuid_142_1431289891.89934") :anon :lex :outer("cuid_236_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1254
    .param pmc __lowered_lex_362 
    .param pmc __lowered_lex_363 
    .param pmc __lowered_lex_364 :slurpy :named 
    .local pmc __lowered_lex_365 
    .local pmc __lowered_lex_366 
    .local pmc __lowered_lex_367 
    .local pmc __lowered_lex_368 
    .local pmc fb_tmp_120 
    .local pmc lowered_for_it__10 
    .local pmc __lowered_lex_361 
    .local pmc fb_tmp_121 
    .local pmc fb_tmp_122 
    .local pmc fb_tmp_123 
    set fb_tmp_120, __lowered_lex_363
    repr_defined $I5001, fb_tmp_120
    unless $I5001 goto if617_else1443 
    set $P5001, fb_tmp_120[0]
    set $P5003, $P5001
    goto if617_end1444
  if617_else1443:
    null $P5002
    set $P5003, $P5002
  if617_end1444:
    unless_null $P5003, vivi_6181445
    nqp_get_sc_object $P5004, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5003, $P5004
  vivi_6181445:
    set __lowered_lex_365, $P5003
.annotate 'line', 1256
    nqp_decontainerize $P5005, __lowered_lex_362
    $P5006 = $P5005."process_args"(__lowered_lex_363)
    set __lowered_lex_366, $P5006
.annotate 'line', 1257
    $P5007 = __lowered_lex_366."options"()
    set __lowered_lex_367, $P5007
.annotate 'line', 1258
    $P5008 = __lowered_lex_366."arguments"()
    set __lowered_lex_368, $P5008
    iter $P5009, __lowered_lex_367
    set lowered_for_it__10, $P5009
    new $P5014, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5014, while619_handlers1449
    push_eh $P5014
  while619_test1446:
    set $P5013, lowered_for_it__10
    unless lowered_for_it__10 goto while619_done1450 
  while619_redo1448:
    shift $P5010, lowered_for_it__10
    set __lowered_lex_361, $P5010
.annotate 'line', 1260
.annotate 'line', 1261
    $P5011 = __lowered_lex_361."key"()
    set $S5001, $P5011
    $P5012 = __lowered_lex_361."value"()
    set __lowered_lex_364[$S5001], $P5012
    set $P5013, $P5012
    goto while619_test1446 
  while619_handlers1449:
    .get_results ($P5014)
    pop_upto_eh $P5014
    getattribute $P5015, $P5014, 'type'
    eq $P5015, .CONTROL_LOOP_NEXT, while619_test1446
    eq $P5015, .CONTROL_LOOP_REDO, while619_redo1448
  while619_done1450:
    pop_eh 
    set fb_tmp_121, __lowered_lex_364
    repr_defined $I5002, fb_tmp_121
    unless $I5002 goto if622_else1455 
    set $P5016, fb_tmp_121["help"]
    set $P5018, $P5016
    goto if622_end1456
  if622_else1455:
    null $P5017
    set $P5018, $P5017
  if622_end1456:
    unless_null $P5018, vivi_6231457
    nqp_get_sc_object $P5019, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5018, $P5019
  vivi_6231457:
    set $P5024, $P5018
    if $P5018 goto unless621_end1454 
    set fb_tmp_122, __lowered_lex_364
    repr_defined $I5003, fb_tmp_122
    unless $I5003 goto if624_else1458 
    set $P5020, fb_tmp_122["h"]
    set $P5022, $P5020
    goto if624_end1459
  if624_else1458:
    null $P5021
    set $P5022, $P5021
  if624_end1459:
    unless_null $P5022, vivi_6251460
    nqp_get_sc_object $P5023, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5022, $P5023
  vivi_6251460:
    set $P5024, $P5022
  unless621_end1454:
    unless $P5024 goto if620_end1452 
.annotate 'line', 1263
    nqp_decontainerize $P5025, __lowered_lex_362
    $P5026 = $P5025."usage"(__lowered_lex_365)
  if620_end1452:
.annotate 'line', 1265
    nqp_decontainerize $P5027, __lowered_lex_362
    nqp_get_sc_object $P5028, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 127
    repr_get_attr_obj $P5029, $P5027, $P5028, "$!backend", 10
    set fb_tmp_123, __lowered_lex_364
    repr_defined $I5004, fb_tmp_123
    unless $I5004 goto if627_else1463 
    set $P5030, fb_tmp_123["target"]
    set $P5032, $P5030
    goto if627_end1464
  if627_else1463:
    null $P5031
    set $P5032, $P5031
  if627_end1464:
    unless_null $P5032, vivi_6281465
    nqp_get_sc_object $P5033, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5032, $P5033
  vivi_6281465:
    $P5034 = $P5029."is_precomp_stage"($P5032)
    unless $P5034 goto if626_end1462 
    box $P5035, 1
    set __lowered_lex_364["precomp"], $P5035
  if626_end1462:
.annotate 'line', 1269
    nqp_decontainerize $P5036, __lowered_lex_362
    $P5037 = $P5036."command_eval"(__lowered_lex_368 :flat, __lowered_lex_364 :flat :named)
    .return ($P5037) 
.end
.HLL "nqp"
.namespace []
.sub "command_eval" :subid("cuid_143_1431289891.89934") :anon :lex :outer("cuid_236_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1273
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .param pmc _lex_param_2 :slurpy :named 
    .const 'Sub' $P5119 = 'cuid_242_1431289891.89934' 
    capture_lex $P5119 
    .const 'Sub' $P5119 = 'cuid_243_1431289891.89934' 
    capture_lex $P5119 
    .const 'Sub' $P5119 = 'cuid_244_1431289891.89934' 
    capture_lex $P5119 
    .lex "$result", $P101 
    .lex "$error", $P102 
    .lex "$has_error", $P103 
    .lex "$target", $P104 
    .lex "self", _lex_param_0 
    .lex "@a", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
    .local pmc fb_tmp_124 
    .local pmc fb_tmp_125 
    .local pmc fb_tmp_126 
    .local pmc fb_tmp_127 
    .local pmc fb_tmp_128 
    .local pmc fb_tmp_129 
    .local pmc fb_tmp_130 
    .local pmc fb_tmp_131 
    .local pmc fb_tmp_132 
    .local pmc fb_tmp_135 
    .local pmc fb_tmp_136 
    .local pmc fb_tmp_137 
    .local pmc __lowered_lex_369 
    .local pmc __lowered_lex_370 
    .local pmc fb_tmp_138 
    .local pmc fb_tmp_139 
    .local pmc __lowered_lex_373 
    nqp_get_sc_object $P5001, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P102, $P5002
    set fb_tmp_124, _lex_param_2
    repr_defined $I5001, fb_tmp_124
    unless $I5001 goto if631_else1470 
    set $P5003, fb_tmp_124["version"]
    set $P5005, $P5003
    goto if631_end1471
  if631_else1470:
    null $P5004
    set $P5005, $P5004
  if631_end1471:
    unless_null $P5005, vivi_6321472
    nqp_get_sc_object $P5006, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5005, $P5006
  vivi_6321472:
    set $P5011, $P5005
    if $P5005 goto unless630_end1469 
    set fb_tmp_125, _lex_param_2
    repr_defined $I5002, fb_tmp_125
    unless $I5002 goto if633_else1473 
    set $P5007, fb_tmp_125["v"]
    set $P5009, $P5007
    goto if633_end1474
  if633_else1473:
    null $P5008
    set $P5009, $P5008
  if633_end1474:
    unless_null $P5009, vivi_6341475
    nqp_get_sc_object $P5010, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5009, $P5010
  vivi_6341475:
    set $P5011, $P5009
  unless630_end1469:
    unless $P5011 goto if629_end1467 
.annotate 'line', 1274
    nqp_decontainerize $P5012, _lex_param_0
    $P5013 = $P5012."version"()
  if629_end1467:
    set fb_tmp_126, _lex_param_2
    repr_defined $I5003, fb_tmp_126
    unless $I5003 goto if638_else1482 
    set $P5014, fb_tmp_126["verbose-config"]
    set $P5016, $P5014
    goto if638_end1483
  if638_else1482:
    null $P5015
    set $P5016, $P5015
  if638_end1483:
    unless_null $P5016, vivi_6391484
    nqp_get_sc_object $P5017, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5016, $P5017
  vivi_6391484:
    set $P5022, $P5016
    if $P5016 goto unless637_end1481 
    set fb_tmp_127, _lex_param_2
    repr_defined $I5004, fb_tmp_127
    unless $I5004 goto if640_else1485 
    set $P5018, fb_tmp_127["V"]
    set $P5020, $P5018
    goto if640_end1486
  if640_else1485:
    null $P5019
    set $P5020, $P5019
  if640_end1486:
    unless_null $P5020, vivi_6411487
    nqp_get_sc_object $P5021, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5020, $P5021
  vivi_6411487:
    set $P5022, $P5020
  unless637_end1481:
    set $P5027, $P5022
    if $P5022 goto unless636_end1479 
    set fb_tmp_128, _lex_param_2
    repr_defined $I5005, fb_tmp_128
    unless $I5005 goto if642_else1488 
    set $P5023, fb_tmp_128["show-config"]
    set $P5025, $P5023
    goto if642_end1489
  if642_else1488:
    null $P5024
    set $P5025, $P5024
  if642_end1489:
    unless_null $P5025, vivi_6431490
    nqp_get_sc_object $P5026, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5025, $P5026
  vivi_6431490:
    set $P5027, $P5025
  unless636_end1479:
    unless $P5027 goto if635_end1477 
.annotate 'line', 1275
    nqp_decontainerize $P5028, _lex_param_0
    $P5029 = $P5028."verbose-config"()
  if635_end1477:
    set fb_tmp_129, _lex_param_2
    repr_defined $I5006, fb_tmp_129
    unless $I5006 goto if645_else1493 
    set $P5030, fb_tmp_129["nqpevent"]
    set $P5032, $P5030
    goto if645_end1494
  if645_else1493:
    null $P5031
    set $P5032, $P5031
  if645_end1494:
    unless_null $P5032, vivi_6461495
    nqp_get_sc_object $P5033, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5032, $P5033
  vivi_6461495:
    unless $P5032 goto if644_end1492 
.annotate 'line', 1277
    nqp_decontainerize $P5034, _lex_param_0
    set fb_tmp_130, _lex_param_2
    repr_defined $I5007, fb_tmp_130
    unless $I5007 goto if647_else1496 
    set $P5035, fb_tmp_130["nqpevent"]
    set $P5037, $P5035
    goto if647_end1497
  if647_else1496:
    null $P5036
    set $P5037, $P5036
  if647_end1497:
    unless_null $P5037, vivi_6481498
    nqp_get_sc_object $P5038, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5037, $P5038
  vivi_6481498:
    $P5039 = $P5034."nqpevent"($P5037)
  if644_end1492:
    box $P5040, 0
    set $P103, $P5040
    set fb_tmp_131, _lex_param_2
    repr_defined $I5008, fb_tmp_131
    unless $I5008 goto if649_else1499 
    set $P5041, fb_tmp_131["target"]
    set $P5043, $P5041
    goto if649_end1500
  if649_else1499:
    null $P5042
    set $P5043, $P5042
  if649_end1500:
    unless_null $P5043, vivi_6501501
    nqp_get_sc_object $P5044, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5043, $P5044
  vivi_6501501:
    set $S5002, $P5043
    downcase $S5001, $S5002
    box $P5045, $S5001
    set $P104, $P5045
    new $P5098, 'ExceptionHandler'
    set_label $P5098, catch_handler_6841557
    $P5098.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5098
.annotate 'line', 1283
    new $P5096, 'ExceptionHandler'
    set_label $P5096, catch_handler_6801552
    $P5096.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5096
    new $P5096, 'ExceptionHandler', [.CONTROL_ALL]
    set_label $P5096, catch_handler_6811553
    push_eh $P5096
    set fb_tmp_132, _lex_param_2
    repr_defined $I5010, fb_tmp_132
    unless $I5010 goto if652_else1504 
    set $P5046, fb_tmp_132["e"]
    set $P5048, $P5046
    goto if652_end1505
  if652_else1504:
    null $P5047
    set $P5048, $P5047
  if652_end1505:
    unless_null $P5048, vivi_6531506
    nqp_get_sc_object $P5049, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5048, $P5049
  vivi_6531506:
    defined $I5009, $P5048
    unless $I5009 goto if651_else1502 
    .const 'Sub' $P5050 = 'cuid_242_1431289891.89934' 
    capture_lex $P5050
    $P5051 = $P5050()
    goto if651_end1503
  if651_else1502:
    isfalse $I5011, _lex_param_1
    unless $I5011 goto if661_else1519 
.annotate 'line', 1292
    nqp_decontainerize $P5052, _lex_param_0
    $P5053 = $P5052."interactive"(_lex_param_2 :flat :named)
    set $P101, $P5053
    set $P5067, $P101
    goto if661_end1520
  if661_else1519:
    set fb_tmp_135, _lex_param_2
    repr_defined $I5012, fb_tmp_135
    unless $I5012 goto if663_else1523 
    set $P5054, fb_tmp_135["combine"]
    set $P5056, $P5054
    goto if663_end1524
  if663_else1523:
    null $P5055
    set $P5056, $P5055
  if663_end1524:
    unless_null $P5056, vivi_6641525
    nqp_get_sc_object $P5057, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5056, $P5057
  vivi_6641525:
    unless $P5056 goto if662_else1521 
.annotate 'line', 1293
    nqp_decontainerize $P5058, _lex_param_0
    $P5059 = $P5058."evalfiles"(_lex_param_1, _lex_param_2 :flat :named)
    set $P101, $P5059
    set $P5066, $P101
    goto if662_end1522
  if662_else1521:
.annotate 'line', 1294
    nqp_decontainerize $P5060, _lex_param_0
    set fb_tmp_136, _lex_param_1
    repr_defined $I5013, fb_tmp_136
    unless $I5013 goto if665_else1526 
    set $P5061, fb_tmp_136[0]
    set $P5063, $P5061
    goto if665_end1527
  if665_else1526:
    null $P5062
    set $P5063, $P5062
  if665_end1527:
    unless_null $P5063, vivi_6661528
    nqp_get_sc_object $P5064, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5063, $P5064
  vivi_6661528:
    $P5065 = $P5060."evalfiles"($P5063, _lex_param_1 :flat, _lex_param_2 :flat :named)
    set $P101, $P5065
    set $P5066, $P101
  if662_end1522:
    set $P5067, $P5066
  if661_end1520:
  if651_end1503:
    isnull $I5015, $P101
    not $I5014, $I5015
    box $P5078, $I5014
    set $P5077, $P5078
    unless $I5014 goto if668_end1532 
.annotate 'line', 1296
    nqp_decontainerize $P5068, _lex_param_0
    nqp_get_sc_object $P5069, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 127
    repr_get_attr_obj $P5070, $P5068, $P5069, "$!backend", 10
    $P5071 = $P5070."is_textual_stage"($P104)
    set $P5076, $P5071
    if $P5071 goto unless669_end1534 
    set fb_tmp_137, _lex_param_2
    repr_defined $I5016, fb_tmp_137
    unless $I5016 goto if670_else1535 
    set $P5072, fb_tmp_137["output"]
    set $P5074, $P5072
    goto if670_end1536
  if670_else1535:
    null $P5073
    set $P5074, $P5073
  if670_end1536:
    unless_null $P5074, vivi_6711537
    nqp_get_sc_object $P5075, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5074, $P5075
  vivi_6711537:
    set $P5076, $P5074
  unless669_end1534:
    set $P5077, $P5076
  if668_end1532:
    unless $P5077 goto if667_end1530 
    set fb_tmp_138, _lex_param_2
    repr_defined $I5017, fb_tmp_138
    unless $I5017 goto if672_else1538 
    set $P5079, fb_tmp_138["output"]
    set $P5081, $P5079
    goto if672_end1539
  if672_else1538:
    null $P5080
    set $P5081, $P5080
  if672_end1539:
    unless_null $P5081, vivi_6731540
    nqp_get_sc_object $P5082, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5081, $P5082
  vivi_6731540:
    set __lowered_lex_369, $P5081
    set $S5003, __lowered_lex_369
    iseq $I5018, $S5003, ""
    set $I5020, $I5018
    if $I5018 goto unless675_end1544 
    set $S5004, __lowered_lex_369
    iseq $I5019, $S5004, "-"
    set $I5020, $I5019
  unless675_end1544:
    unless $I5020 goto if674_else1541 
    getinterp $P5083
    $P5084 = $P5083."stdout_handle"()
    set $P5086, $P5084
    goto if674_end1542
  if674_else1541:
    set $S5005, __lowered_lex_369
    open $P5085, $S5005, "w"
    set $P5086, $P5085
  if674_end1542:
    set __lowered_lex_370, $P5086
    if __lowered_lex_370 goto unless676_end1546 
.annotate 'line', 1301
    nqp_decontainerize $P5087, _lex_param_0
    set $S5007, __lowered_lex_369
    concat $S5006, "Cannot write to ", $S5007
    $P5088 = $P5087."panic"($S5006)
  unless676_end1546:
    $P5089 = __lowered_lex_370."print"($P101)
    $P5090 = __lowered_lex_370."flush"()
    set $S5008, __lowered_lex_369
    iseq $I5021, $S5008, ""
    set $I5023, $I5021
    if $I5021 goto unless678_end1550 
    set $S5009, __lowered_lex_369
    iseq $I5022, $S5009, "-"
    set $I5023, $I5022
  unless678_end1550:
    box $P5093, $I5023
    set $P5092, $P5093
    if $I5023 goto unless677_end1548 
    $P5091 = __lowered_lex_370."close"()
    set $P5092, $P5091
  unless677_end1548:
  if667_end1530:
    nqp_get_sc_object $P5094, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    nqp_get_sc_object $P5095, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5097, $P5095
    pop_eh 
    pop_eh 
    goto skip_handler_6791551
  catch_handler_6801552:
    .get_results ($P5096) 
    .const 'Sub' $P10001 = 'cuid_243_1431289891.89934' 
    capture_lex $P10001
    $P10001($P5096)
    set $I10001, 1
    set $P5096["handled"], $I10001
    nqp_get_sc_object $P10002, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    finalize $P5096
    pop_upto_eh $P5096
    pop_eh 
    set $P5097, $P10002
    goto skip_handler_6791551
  catch_handler_6811553:
    .get_results ($P5096) 
    .const 'Sub' $P10003 = 'cuid_244_1431289891.89934' 
    capture_lex $P10003
    $P10003($P5096)
    set $I10002, 1
    set $P5096["handled"], $I10002
    nqp_get_sc_object $P10004, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    finalize $P5096
    pop_upto_eh $P5096
    pop_eh 
    set $P5097, $P10004
    goto skip_handler_6791551
  skip_handler_6791551:
    set $P5099, $P5097
    pop_eh 
    goto skip_handler_6831556
  catch_handler_6841557:
    .get_results ($P5098) 
    set $I10001, 1
    set $P5098["handled"], $I10001
    nqp_get_sc_object $P10001, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    finalize $P5098
    pop_upto_eh $P5098
    pop_eh 
    set $P5099, $P10001
    goto skip_handler_6831556
  skip_handler_6831556:
    unless $P103 goto if685_end1559 
.annotate 'line', 1320
    set fb_tmp_139, _lex_param_2
    repr_defined $I5024, fb_tmp_139
    unless $I5024 goto if688_else1564 
    set $P5100, fb_tmp_139["ll-exception"]
    set $P5102, $P5100
    goto if688_end1565
  if688_else1564:
    null $P5101
    set $P5102, $P5101
  if688_end1565:
    unless_null $P5102, vivi_6891566
    nqp_get_sc_object $P5103, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5102, $P5103
  vivi_6891566:
    set $P5105, $P5102
    if $P5102 goto unless687_end1563 
    nqp_decontainerize $P5104, _lex_param_0
    can $I5026, $P5104, "handle-exception"
    not $I5025, $I5026
    box $P5106, $I5025
    set $P5105, $P5106
  unless687_end1563:
    unless $P5105 goto if686_else1560 
.annotate 'line', 1321
    getinterp $P5107
    $P5108 = $P5107."stderr_handle"()
    set __lowered_lex_373, $P5108
    getattribute $P5109, $P102, "message"
    set $S5010, $P5109
    $P5110 = __lowered_lex_373."print"($S5010)
    $P5111 = __lowered_lex_373."print"("\n")
    $P5112 = $P102."backtrace_strings"()
    join $S5011, "\n", $P5112
    $P5113 = __lowered_lex_373."print"($S5011)
    $P5114 = __lowered_lex_373."print"("\n")
    exit 1
    box $P5118, 1
    set $P5117, $P5118
    goto if686_end1561
  if686_else1560:
.annotate 'line', 1328
.annotate 'line', 1329
    nqp_decontainerize $P5115, _lex_param_0
    $P5116 = $P5115."handle-exception"($P102)
    set $P5117, $P5116
  if686_end1561:
  if685_end1559:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_242_1431289891.89934") :anon :lex :outer("cuid_143_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1284
    .lex "$?FILES", $P101 
    .local pmc fb_tmp_133 
    .local pmc fb_tmp_134 
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    nqp_get_sc_object $P5003, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 127
    box $P5004, "-e"
    repr_bind_attr_obj $P5001, $P5003, "$!user_progname", 7, $P5004
    box $P5005, "-e"
    set $P101, $P5005
.annotate 'line', 1287
    find_lex $P5007, "self"
    nqp_decontainerize $P5006, $P5007
    find_lex $P5008, "%adverbs"
    set fb_tmp_133, $P5008
    repr_defined $I5001, fb_tmp_133
    unless $I5001 goto if654_else1507 
    set $P5009, fb_tmp_133["e"]
    set $P5011, $P5009
    goto if654_end1508
  if654_else1507:
    null $P5010
    set $P5011, $P5010
  if654_end1508:
    unless_null $P5011, vivi_6551509
    nqp_get_sc_object $P5012, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5011, $P5012
  vivi_6551509:
    find_lex $P5013, "@a"
    find_lex $P5014, "%adverbs"
    $P5015 = $P5006."eval"($P5011, "-e", $P5013 :flat, $P5014 :flat :named)
    store_lex "$result", $P5015
    find_lex $P5016, "$target"
    set $S5001, $P5016
    iseq $I5002, $S5001, ""
    box $P5024, $I5002
    set $P5023, $P5024
    if $I5002 goto unless658_end1515 
.annotate 'line', 1288
    find_lex $P5018, "self"
    nqp_decontainerize $P5017, $P5018
    nqp_get_sc_object $P5019, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 127
    repr_get_attr_obj $P5020, $P5017, $P5019, "$!backend", 10
    find_lex $P5021, "$target"
    $P5022 = $P5020."is_textual_stage"($P5021)
    set $P5023, $P5022
  unless658_end1515:
    set $P5030, $P5023
    if $P5023 goto unless657_end1513 
    find_lex $P5025, "%adverbs"
    set fb_tmp_134, $P5025
    repr_defined $I5003, fb_tmp_134
    unless $I5003 goto if659_else1516 
    set $P5026, fb_tmp_134["output"]
    set $P5028, $P5026
    goto if659_end1517
  if659_else1516:
    null $P5027
    set $P5028, $P5027
  if659_end1517:
    unless_null $P5028, vivi_6601518
    nqp_get_sc_object $P5029, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5028, $P5029
  vivi_6601518:
    set $P5030, $P5028
  unless657_end1513:
    set $P5037, $P5030
    if $P5030 goto unless656_end1511 
.annotate 'line', 1289
    find_lex $P5032, "self"
    nqp_decontainerize $P5031, $P5032
    find_lex $P5033, "$result"
    find_lex $P5034, "$target"
    find_lex $P5035, "%adverbs"
    $P5036 = $P5031."dumper"($P5033, $P5034, $P5035 :flat :named)
    set $P5037, $P5036
  unless656_end1511:
    .return ($P5037) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_243_1431289891.89934") :anon :lex :outer("cuid_143_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1306
    .param pmc __lowered_lex_371 
    .lex "$!", $P101 
    set $P101, __lowered_lex_371
    box $P5001, 1
    store_lex "$has_error", $P5001
    store_lex "$error", __lowered_lex_371
    .return (__lowered_lex_371) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_244_1431289891.89934") :anon :lex :outer("cuid_143_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1310
    .param pmc __lowered_lex_372 
    .lex "$!", $P101 
    set $P101, __lowered_lex_372
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    can $I5001, $P5001, "handle-control"
    unless $I5001 goto if682_else1554 
.annotate 'line', 1311
.annotate 'line', 1312
    find_lex $P5004, "self"
    nqp_decontainerize $P5003, $P5004
    $P5005 = $P5003."handle-control"(__lowered_lex_372)
    goto if682_end1555
  if682_else1554:
.annotate 'line', 1313
    rethrow __lowered_lex_372
  if682_end1555:
    box $P5006, 1
    store_lex "$has_error", $P5006
    store_lex "$error", __lowered_lex_372
    .return (__lowered_lex_372) 
.end
.HLL "nqp"
.namespace []
.sub "process_args" :subid("cuid_144_1431289891.89934") :anon :lex :outer("cuid_236_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1335
    .param pmc _lex_param_0 
    .param pmc __lowered_lex_375 
    .const 'Sub' $P5042 = 'cuid_245_1431289891.89934' 
    capture_lex $P5042 
    .lex "self", _lex_param_0 
    .local pmc __lowered_lex_376 
    .local pmc __lowered_lex_377 
    .local pmc fb_tmp_140 
    .local pmc pkg_lookup_tmp_5 
    .local pmc pkg_lookup_tmp_4 
    nqp_get_sc_object $P5001, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_377, $P5001
.annotate 'line', 1337
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = __lowered_lex_375."shift"()
    $P5002."compiler_progname"($P5003)
.annotate 'line', 1339
    nqp_get_sc_object $P5005, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 0
    set pkg_lookup_tmp_4, $P5005
    get_who $P5006, pkg_lookup_tmp_4
    exists $I5002, $P5006["HLL"]
    unless $I5002 goto if691_else1569 
    get_who $P5008, pkg_lookup_tmp_4
    set $P5007, $P5008["HLL"]
    set $P5010, $P5007
    goto if691_end1570
  if691_else1569:
    nqp_get_sc_object $P5009, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5010, $P5009
  if691_end1570:
    set pkg_lookup_tmp_5, $P5010
    get_who $P5011, pkg_lookup_tmp_5
    exists $I5003, $P5011["CommandLine"]
    unless $I5003 goto if692_else1571 
    get_who $P5013, pkg_lookup_tmp_5
    set $P5012, $P5013["CommandLine"]
    set $P5015, $P5012
    goto if692_end1572
  if692_else1571:
    nqp_get_sc_object $P5014, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5015, $P5014
  if692_end1572:
    get_who $P5004, $P5015
    set fb_tmp_140, $P5004
    repr_defined $I5001, fb_tmp_140
    unless $I5001 goto if690_else1567 
    set $P5016, fb_tmp_140["Parser"]
    set $P5018, $P5016
    goto if690_end1568
  if690_else1567:
    null $P5017
    set $P5018, $P5017
  if690_end1568:
    unless_null $P5018, vivi_6931573
    nqp_get_sc_object $P5019, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5018, $P5019
  vivi_6931573:
    nqp_decontainerize $P5020, _lex_param_0
    nqp_get_sc_object $P5021, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 127
    repr_get_attr_obj $P5022, $P5020, $P5021, "@!cmdoptions", 3
    $P5023 = $P5018."new"($P5022)
    set __lowered_lex_376, $P5023
.annotate 'line', 1340
    __lowered_lex_376."add-stopper"("-e")
.annotate 'line', 1341
    __lowered_lex_376."stop-after-first-arg"()
    new $P5028, 'ExceptionHandler'
    set_label $P5028, catch_handler_6971577
    $P5028.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5028
.annotate 'line', 1343
    new $P5026, 'ExceptionHandler'
    set_label $P5026, catch_handler_6951575
    $P5026.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5026
.annotate 'line', 1344
    $P5024 = __lowered_lex_376."parse"(__lowered_lex_375)
    set __lowered_lex_377, $P5024
    nqp_get_sc_object $P5025, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5027, $P5025
    pop_eh 
    goto skip_handler_6941574
  catch_handler_6951575:
    .get_results ($P5026) 
    .const 'Sub' $P10001 = 'cuid_245_1431289891.89934' 
    capture_lex $P10001
    $P10001($P5026)
    set $I10001, 1
    set $P5026["handled"], $I10001
    nqp_get_sc_object $P10002, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    finalize $P5026
    pop_upto_eh $P5026
    pop_eh 
    set $P5027, $P10002
    goto skip_handler_6941574
  skip_handler_6941574:
    set $P5029, $P5027
    pop_eh 
    goto skip_handler_6961576
  catch_handler_6971577:
    .get_results ($P5028) 
    set $I10001, 1
    set $P5028["handled"], $I10001
    nqp_get_sc_object $P10001, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    finalize $P5028
    pop_upto_eh $P5028
    pop_eh 
    set $P5029, $P10001
    goto skip_handler_6961576
  skip_handler_6961576:
    unless __lowered_lex_377 goto if698_else1578 
.annotate 'line', 1351
    nqp_decontainerize $P5030, _lex_param_0
    nqp_get_sc_object $P5031, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 127
.annotate 'line', 1352
    $P5032 = __lowered_lex_377."options"()
    repr_bind_attr_obj $P5030, $P5031, "%!cli-options", 9, $P5032
    nqp_decontainerize $P5033, _lex_param_0
    nqp_get_sc_object $P5034, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 127
.annotate 'line', 1353
    $P5035 = __lowered_lex_377."arguments"()
    repr_bind_attr_obj $P5033, $P5034, "@!cli-arguments", 8, $P5035
    goto if698_end1579
  if698_else1578:
.annotate 'line', 1355
    nqp_decontainerize $P5036, _lex_param_0
    nqp_get_sc_object $P5037, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 127
    new $P5038, 'Hash'
    repr_bind_attr_obj $P5036, $P5037, "%!cli-options", 9, $P5038
    nqp_decontainerize $P5039, _lex_param_0
    nqp_get_sc_object $P5040, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 127
    new $P5041, 'QRPA'
    repr_bind_attr_obj $P5039, $P5040, "@!cli-arguments", 8, $P5041
  if698_end1579:
    .return (__lowered_lex_377) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_245_1431289891.89934") :anon :lex :outer("cuid_144_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1345
    .param pmc __lowered_lex_374 
    .lex "$!", $P101 
    set $P101, __lowered_lex_374
    set $S5001, __lowered_lex_374
    say $S5001
.annotate 'line', 1347
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5001."usage"()
    exit 1
    .return (1) 
.end
.HLL "nqp"
.namespace []
.sub "evalfiles" :subid("cuid_145_1431289891.89934") :anon :lex :outer("cuid_236_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1362
    .param pmc __lowered_lex_381 
    .param pmc __lowered_lex_382 
    .param pmc __lowered_lex_383 :slurpy 
    .param pmc __lowered_lex_384 :slurpy :named 
    .const 'Sub' $P5041 = 'cuid_247_1431289891.89934' 
    capture_lex $P5041 
    .lex "$encoding", $P101 
    .lex "@codes", $P102 
    .lex "$?FILES", $P103 
    .local pmc __lowered_lex_385 
    .local pmc __lowered_lex_386 
    .local pmc __lowered_lex_387 
    .local pmc __lowered_lex_388 
    .local pmc fb_tmp_141 
    .local pmc fb_tmp_142 
    .local pmc fb_tmp_143 
    new $P5001, 'QRPA'
    set $P102, $P5001
    root_new $P104, ['parrot';'Continuation']
    set_label $P104, lexotic_1580
    .lex "RETURN", $P104
    set fb_tmp_141, __lowered_lex_384
    repr_defined $I5001, fb_tmp_141
    unless $I5001 goto if699_else1582 
    set $P5002, fb_tmp_141["target"]
    set $P5004, $P5002
    goto if699_end1583
  if699_else1582:
    null $P5003
    set $P5004, $P5003
  if699_end1583:
    unless_null $P5004, vivi_7001584
    nqp_get_sc_object $P5005, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5004, $P5005
  vivi_7001584:
    set $S5002, $P5004
    downcase $S5001, $S5002
    box $P5006, $S5001
    set __lowered_lex_385, $P5006
    set fb_tmp_142, __lowered_lex_384
    repr_defined $I5002, fb_tmp_142
    unless $I5002 goto if701_else1585 
    set $P5007, fb_tmp_142["encoding"]
    set $P5009, $P5007
    goto if701_end1586
  if701_else1585:
    null $P5008
    set $P5009, $P5008
  if701_end1586:
    unless_null $P5009, vivi_7021587
    nqp_get_sc_object $P5010, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5009, $P5010
  vivi_7021587:
    set $P101, $P5009
    nqp_islist $I5003, __lowered_lex_382
    unless $I5003 goto if703_else1588 
    set $P5012, __lowered_lex_382
    goto if703_end1589
  if703_else1588:
    new $P5011, 'QRPA'
    push $P5011, __lowered_lex_382
    set $P5012, $P5011
  if703_end1589:
    set __lowered_lex_386, $P5012
    nqp_decontainerize $P5013, __lowered_lex_381
    nqp_get_sc_object $P5014, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 127
.annotate 'line', 1366
    $P5015 = "&join"(",", __lowered_lex_386)
    repr_bind_attr_obj $P5013, $P5014, "$!user_progname", 7, $P5015
    set $P5016, __lowered_lex_386
    iter $P5018, __lowered_lex_386
  for_next1604:
    unless $P5018, for_done1606
    shift $P5020, $P5018
  for_redo1605:
    .const 'Sub' $P5019 = 'cuid_247_1431289891.89934' 
    capture_lex $P5019
    $P5016 = $P5019($P5020)
    goto for_next1604
  for_done1606:
.annotate 'line', 1394
    $P5021 = "&join"("", $P102)
    set __lowered_lex_387, $P5021
.annotate 'line', 1395
    $P5022 = "&join"(" ", __lowered_lex_386)
    set $P103, $P5022
.annotate 'line', 1396
    nqp_decontainerize $P5023, __lowered_lex_381
    $P5024 = $P5023."eval"(__lowered_lex_387, __lowered_lex_383 :flat, __lowered_lex_384 :flat :named)
    set __lowered_lex_388, $P5024
    set $S5003, __lowered_lex_385
    iseq $I5004, $S5003, ""
    box $P5030, $I5004
    set $P5029, $P5030
    if $I5004 goto unless717_end1612 
.annotate 'line', 1397
    nqp_decontainerize $P5025, __lowered_lex_381
    nqp_get_sc_object $P5026, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 127
    repr_get_attr_obj $P5027, $P5025, $P5026, "$!backend", 10
    $P5028 = $P5027."is_textual_stage"(__lowered_lex_385)
    set $P5029, $P5028
  unless717_end1612:
    set $P5035, $P5029
    if $P5029 goto unless716_end1610 
    set fb_tmp_143, __lowered_lex_384
    repr_defined $I5005, fb_tmp_143
    unless $I5005 goto if718_else1613 
    set $P5031, fb_tmp_143["output"]
    set $P5033, $P5031
    goto if718_end1614
  if718_else1613:
    null $P5032
    set $P5033, $P5032
  if718_end1614:
    unless_null $P5033, vivi_7191615
    nqp_get_sc_object $P5034, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5033, $P5034
  vivi_7191615:
    set $P5035, $P5033
  unless716_end1610:
    unless $P5035 goto if715_else1607 
    $P5036 = "RETURN"(__lowered_lex_388)
    set $P5040, $P5036
    goto if715_end1608
  if715_else1607:
.annotate 'line', 1399
.annotate 'line', 1400
    nqp_decontainerize $P5037, __lowered_lex_381
    $P5038 = $P5037."dumper"(__lowered_lex_388, __lowered_lex_385, __lowered_lex_384 :flat :named)
    $P5039 = "RETURN"($P5038)
    set $P5040, $P5039
  if715_end1608:
    goto lexotic_1581
  lexotic_1580:
    .get_results ($P5040)
  lexotic_1581:
    .return ($P5040) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_247_1431289891.89934") :anon :lex :outer("cuid_145_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1368
    .param pmc _lex_param_0 
    .const 'Sub' $P5022 = 'cuid_246_1431289891.89934' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_248_1431289891.89934' 
    capture_lex $P5022 
    .lex "$err", $P101 
    .lex "$filename", _lex_param_0 
    .local pmc __lowered_lex_380 
    nqp_get_sc_object $P5001, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_380, $P5001
    box $P5002, 0
    set $P101, $P5002
    new $P5009, 'ExceptionHandler'
    set_label $P5009, catch_handler_7081595
    $P5009.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5009
.annotate 'line', 1371
    new $P5007, 'ExceptionHandler'
    set_label $P5007, catch_handler_7061593
    $P5007.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5007
    set $S5001, _lex_param_0
    iseq $I5001, $S5001, "-"
    unless $I5001 goto if704_else1590 
.annotate 'line', 1372
    getinterp $P5003
    $P5004 = $P5003."stdin_handle"()
    set __lowered_lex_380, $P5004
    goto if704_end1591
  if704_else1590:
.annotate 'line', 1375
    set $S5002, _lex_param_0
    open $P5005, $S5002, "r"
    set __lowered_lex_380, $P5005
  if704_end1591:
    nqp_get_sc_object $P5006, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5008, $P5006
    pop_eh 
    goto skip_handler_7051592
  catch_handler_7061593:
    .get_results ($P5007) 
    .const 'Sub' $P10001 = 'cuid_246_1431289891.89934' 
    capture_lex $P10001
    $P10001($P5007)
    set $I10001, 1
    set $P5007["handled"], $I10001
    nqp_get_sc_object $P10002, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    finalize $P5007
    pop_upto_eh $P5007
    pop_eh 
    set $P5008, $P10002
    goto skip_handler_7051592
  skip_handler_7051592:
    set $P5010, $P5008
    pop_eh 
    goto skip_handler_7071594
  catch_handler_7081595:
    .get_results ($P5009) 
    set $I10001, 1
    set $P5009["handled"], $I10001
    nqp_get_sc_object $P10001, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    finalize $P5009
    pop_upto_eh $P5009
    pop_eh 
    set $P5010, $P10001
    goto skip_handler_7071594
  skip_handler_7071594:
    unless $P101 goto if709_end1597 
    exit 1
  if709_end1597:
    new $P5019, 'ExceptionHandler'
    set_label $P5019, catch_handler_7131601
    $P5019.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5019
.annotate 'line', 1384
    new $P5017, 'ExceptionHandler'
    set_label $P5017, catch_handler_7111599
    $P5017.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5017
    find_lex $P5011, "$encoding"
    $P5012 = __lowered_lex_380."encoding"($P5011)
    find_lex $P5013, "@codes"
    $P5014 = __lowered_lex_380."readall"()
    push $P5013, $P5014
    $P5015 = __lowered_lex_380."close"()
    nqp_get_sc_object $P5016, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5018, $P5016
    pop_eh 
    goto skip_handler_7101598
  catch_handler_7111599:
    .get_results ($P5017) 
    .const 'Sub' $P10001 = 'cuid_248_1431289891.89934' 
    capture_lex $P10001
    $P10001($P5017)
    set $I10001, 1
    set $P5017["handled"], $I10001
    nqp_get_sc_object $P10002, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    finalize $P5017
    pop_upto_eh $P5017
    pop_eh 
    set $P5018, $P10002
    goto skip_handler_7101598
  skip_handler_7101598:
    set $P5020, $P5018
    pop_eh 
    goto skip_handler_7121600
  catch_handler_7131601:
    .get_results ($P5019) 
    set $I10001, 1
    set $P5019["handled"], $I10001
    nqp_get_sc_object $P10001, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    finalize $P5019
    pop_upto_eh $P5019
    pop_eh 
    set $P5020, $P10001
    goto skip_handler_7121600
  skip_handler_7121600:
    set $P5021, $P101
    unless $P101 goto if714_end1603 
    die $P101
    set $P5021, $P101
  if714_end1603:
    .return ($P5021) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_246_1431289891.89934") :anon :lex :outer("cuid_247_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1378
    .param pmc __lowered_lex_378 
    .lex "$!", $P101 
    set $P101, __lowered_lex_378
    find_lex $P5001, "$filename"
    set $S5004, $P5001
    concat $S5003, "Could not open ", $S5004
    concat $S5002, $S5003, ". "
    set $S5005, __lowered_lex_378
    concat $S5001, $S5002, $S5005
    say $S5001
    box $P5002, 1
    store_lex "$err", $P5002
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_248_1431289891.89934") :anon :lex :outer("cuid_247_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1388
    .param pmc __lowered_lex_379 
    .lex "$!", $P101 
    set $P101, __lowered_lex_379
    set $S5002, __lowered_lex_379
    concat $S5001, "Error while reading from file: ", $S5002
    box $P5001, $S5001
    store_lex "$err", $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "exists_stage" :subid("cuid_146_1431289891.89934") :anon :lex :outer("cuid_236_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1404
    .param pmc __lowered_lex_390 
    .param pmc __lowered_lex_391 
    .local pmc __lowered_lex_392 
    .local pmc lowered_for_it__11 
    .local pmc __lowered_lex_389 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_1616
    .lex "RETURN", $P101
    box $P5001, 0
    set __lowered_lex_392, $P5001
.annotate 'line', 1406
    nqp_decontainerize $P5003, __lowered_lex_390
    $P5004 = $P5003."stages"()
    iter $P5002, $P5004
    set lowered_for_it__11, $P5002
    new $P5010, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5010, while720_handlers1621
    push_eh $P5010
  while720_test1618:
    set $P5009, lowered_for_it__11
    unless lowered_for_it__11 goto while720_done1622 
  while720_redo1620:
    shift $P5005, lowered_for_it__11
    set __lowered_lex_389, $P5005
    set $S5001, __lowered_lex_389
    set $S5002, __lowered_lex_391
    iseq $I5001, $S5001, $S5002
    box $P5008, $I5001
    set $P5007, $P5008
    unless $I5001 goto if721_end1624 
.annotate 'line', 1407
    $P5006 = "RETURN"(1)
    set $P5007, $P5006
  if721_end1624:
    set $P5009, $P5007
    goto while720_test1618 
  while720_handlers1621:
    .get_results ($P5010)
    pop_upto_eh $P5010
    getattribute $P5011, $P5010, 'type'
    eq $P5011, .CONTROL_LOOP_NEXT, while720_test1618
    eq $P5011, .CONTROL_LOOP_REDO, while720_redo1620
  while720_done1622:
    pop_eh 
    $P5012 = "RETURN"(0)
    goto lexotic_1617
  lexotic_1616:
    .get_results ($P5012)
  lexotic_1617:
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "compile" :subid("cuid_147_1431289891.89934") :anon :lex :outer("cuid_236_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1414
    .param pmc __lowered_lex_396 
    .param pmc __lowered_lex_397 
    .param pmc __lowered_lex_398 :named("from") :optional 
    .param int haz_param_12 :opt_flag 
    .param pmc __lowered_lex_399 :named("lineposcache") :optional 
    .param int haz_param_13 :opt_flag 
    .param pmc __lowered_lex_400 :slurpy :named 
    .lex "%*COMPILING", $P101 
    .lex "$*LINEPOSCACHE", $P102 
    .local pmc __lowered_lex_401 
    .local pmc __lowered_lex_402 
    .local pmc __lowered_lex_403 
    .local pmc __lowered_lex_404 
    .local pmc __lowered_lex_405 
    .local pmc fb_tmp_144 
    .local pmc pkg_viv_tmp_15 
    .local pmc fb_tmp_145 
    .local pmc fb_tmp_146 
    .local pmc lowered_for_it__12 
    .local pmc __lowered_lex_395 
    .local pmc __lowered_lex_393 
    .local pmc __lowered_lex_394 
    .local pmc fb_tmp_147 
    if haz_param_12, default1676
    nqp_get_sc_object $P5088, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_398, $P5088
  default1676:
    if haz_param_13, default1677
    nqp_get_sc_object $P5089, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_399, $P5089
  default1677:
    new $P5001, 'Hash'
    set $P101, $P5001
    root_new $P103, ['parrot';'Continuation']
    set_label $P103, lexotic_1625
    .lex "RETURN", $P103
    unless_null $P101, fallback1627
    nqp_get_sc_object $P5003, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 0
    get_who $P5002, $P5003
    set pkg_viv_tmp_15, $P5002
    set fb_tmp_144, pkg_viv_tmp_15
    repr_defined $I5001, fb_tmp_144
    unless $I5001 goto if722_else1628 
    set $P5004, fb_tmp_144["%COMPILING"]
    set $P5006, $P5004
    goto if722_end1629
  if722_else1628:
    null $P5005
    set $P5006, $P5005
  if722_end1629:
    unless_null $P5006, vivi_7231630
    new $P5007, 'Hash'
    set pkg_viv_tmp_15["%COMPILING"], $P5007
    set $P5006, $P5007
  vivi_7231630:
    unless_null $P5006, vivi_7241631
    die "Contextual %*COMPILING not found"
    box $P5008, "Contextual %*COMPILING not found"
    set $P5006, $P5008
  vivi_7241631:
    set $P101, $P5006
  fallback1627:
    set $P101["%?OPTIONS"], __lowered_lex_400
    set $P102, __lowered_lex_399
    set fb_tmp_145, __lowered_lex_400
    repr_defined $I5002, fb_tmp_145
    unless $I5002 goto if725_else1632 
    set $P5009, fb_tmp_145["target"]
    set $P5011, $P5009
    goto if725_end1633
  if725_else1632:
    null $P5010
    set $P5011, $P5010
  if725_end1633:
    unless_null $P5011, vivi_7261634
    nqp_get_sc_object $P5012, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5011, $P5012
  vivi_7261634:
    set $S5002, $P5011
    downcase $S5001, $S5002
    box $P5013, $S5001
    set __lowered_lex_401, $P5013
    set __lowered_lex_402, __lowered_lex_397
    getinterp $P5014
    $P5015 = $P5014."stderr_handle"()
    set __lowered_lex_403, $P5015
    getinterp $P5016
    $P5017 = $P5016."stdin_handle"()
    set __lowered_lex_404, $P5017
    set fb_tmp_146, __lowered_lex_400
    repr_defined $I5003, fb_tmp_146
    unless $I5003 goto if727_else1635 
    set $P5018, fb_tmp_146["stagestats"]
    set $P5020, $P5018
    goto if727_end1636
  if727_else1635:
    null $P5019
    set $P5020, $P5019
  if727_end1636:
    unless_null $P5020, vivi_7281637
    nqp_get_sc_object $P5021, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5020, $P5021
  vivi_7281637:
    set __lowered_lex_405, $P5020
    set $S5003, __lowered_lex_398
    iseq $I5004, $S5003, ""
    box $P5025, $I5004
    set $P5024, $P5025
    if $I5004 goto unless730_end1641 
.annotate 'line', 1423
    nqp_decontainerize $P5022, __lowered_lex_396
    $P5023 = $P5022."exists_stage"(__lowered_lex_398)
    set $P5024, $P5023
  unless730_end1641:
    if $P5024 goto unless729_end1639 
    set $S5006, __lowered_lex_398
    concat $S5005, "Unknown compilation input '", $S5006
    concat $S5004, $S5005, "'"
    box $P5026, $S5004
    die $P5026
  unless729_end1639:
    set $S5007, __lowered_lex_401
    iseq $I5005, $S5007, ""
    box $P5030, $I5005
    set $P5029, $P5030
    if $I5005 goto unless732_end1645 
.annotate 'line', 1426
    nqp_decontainerize $P5027, __lowered_lex_396
    $P5028 = $P5027."exists_stage"(__lowered_lex_401)
    set $P5029, $P5028
  unless732_end1645:
    if $P5029 goto unless731_end1643 
    set $S5010, __lowered_lex_401
    concat $S5009, "Unknown compilation target '", $S5010
    concat $S5008, $S5009, "'"
    box $P5031, $S5008
    die $P5031
  unless731_end1643:
.annotate 'line', 1429
    nqp_decontainerize $P5033, __lowered_lex_396
    $P5034 = $P5033."stages"()
    iter $P5032, $P5034
    set lowered_for_it__12, $P5032
    new $P5074, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5074, while733_handlers1649
    push_eh $P5074
  while733_test1646:
    set $P5073, lowered_for_it__12
    unless lowered_for_it__12 goto while733_done1650 
  while733_redo1648:
    shift $P5035, lowered_for_it__12
    set __lowered_lex_395, $P5035
    set $S5011, __lowered_lex_398
    isne $I5006, $S5011, ""
    unless $I5006 goto if734_end1652 
.annotate 'line', 1430
    set $S5012, __lowered_lex_395
    set $S5013, __lowered_lex_398
    iseq $I5007, $S5012, $S5013
    unless $I5007 goto if735_end1654 
.annotate 'line', 1431
    box $P5036, ""
    set __lowered_lex_398, $P5036
  if735_end1654:
    die 0, .CONTROL_LOOP_NEXT
  if734_end1652:
    defined $I5008, __lowered_lex_405
    unless $I5008 goto if736_end1656 
    new $P5039, 'QRPA'
    push $P5039, __lowered_lex_395
    new $P5038, 'ResizableStringArray'
    push $P5038, "nqp"
    get_root_global $P5037, $P5038, "sprintf"
    $S5014 = $P5037("Stage %-11s: ", $P5039)
    $P5040 = __lowered_lex_403."print"($S5014)
  if736_end1656:
    time $N5001
    box $P5041, $N5001
    set __lowered_lex_393, $P5041
    nqp_decontainerize $P5042, __lowered_lex_396
    set $S5015, __lowered_lex_395
    can $I5009, $P5042, $S5015
    unless $I5009 goto if737_else1657 
.annotate 'line', 1438
.annotate 'line', 1439
    nqp_decontainerize $P5043, __lowered_lex_396
    set $S5016, __lowered_lex_395
    $P5044 = $P5043.$S5016(__lowered_lex_402, __lowered_lex_400 :flat :named)
    set __lowered_lex_402, $P5044
    goto if737_end1658
  if737_else1657:
    nqp_decontainerize $P5045, __lowered_lex_396
    nqp_get_sc_object $P5046, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 127
    repr_get_attr_obj $P5047, $P5045, $P5046, "$!backend", 10
    set $S5017, __lowered_lex_395
    can $I5010, $P5047, $S5017
    unless $I5010 goto if738_else1659 
.annotate 'line', 1441
.annotate 'line', 1442
    nqp_decontainerize $P5048, __lowered_lex_396
    nqp_get_sc_object $P5049, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 127
    repr_get_attr_obj $P5050, $P5048, $P5049, "$!backend", 10
    set $S5018, __lowered_lex_395
    $P5051 = $P5050.$S5018(__lowered_lex_402, __lowered_lex_400 :flat :named)
    set __lowered_lex_402, $P5051
    set $P5053, __lowered_lex_402
    goto if738_end1660
  if738_else1659:
.annotate 'line', 1444
    set $S5021, __lowered_lex_395
    concat $S5020, "Unknown compilation stage '", $S5021
    concat $S5019, $S5020, "'"
    box $P5052, $S5019
    die $P5052
    set $P5053, $P5052
  if738_end1660:
  if737_end1658:
    time $N5003
    set $N5004, __lowered_lex_393
    sub $N5002, $N5003, $N5004
    box $P5054, $N5002
    set __lowered_lex_394, $P5054
    defined $I5011, __lowered_lex_405
    unless $I5011 goto if739_end1662 
.annotate 'line', 1448
    new $P5057, 'QRPA'
    push $P5057, __lowered_lex_394
    new $P5056, 'ResizableStringArray'
    push $P5056, "nqp"
    get_root_global $P5055, $P5056, "sprintf"
    $S5022 = $P5055("%7.3f", $P5057)
    $P5058 = __lowered_lex_403."print"($S5022)
    set $I5013, __lowered_lex_405
    band $I5012, $I5013, 4
    unless $I5012 goto if740_end1664 
.annotate 'line', 1450
    nqp_decontainerize $P5059, __lowered_lex_396
    nqp_get_sc_object $P5060, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 127
    repr_get_attr_obj $P5061, $P5059, $P5060, "$!backend", 10
    $P5062 = $P5061."force_gc"()
  if740_end1664:
    set $I5015, __lowered_lex_405
    band $I5014, $I5015, 2
    unless $I5014 goto if741_end1666 
.annotate 'line', 1451
    nqp_decontainerize $P5063, __lowered_lex_396
    nqp_get_sc_object $P5064, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 127
    repr_get_attr_obj $P5065, $P5063, $P5064, "$!backend", 10
    $P5066 = $P5065."vmstat"()
    $P5067 = __lowered_lex_403."print"($P5066)
  if741_end1666:
    $P5068 = __lowered_lex_403."print"("\n")
    set $I5017, __lowered_lex_405
    band $I5016, $I5017, 8
    box $P5072, $I5016
    set $P5071, $P5072
    unless $I5016 goto if742_end1668 
.annotate 'line', 1454
    $P5069 = __lowered_lex_403."print"("continue> ")
    $P5070 = __lowered_lex_404."readline"()
    set $P5071, $P5070
  if742_end1668:
  if739_end1662:
    set $S5023, __lowered_lex_395
    set $S5024, __lowered_lex_401
    iseq $I5018, $S5023, $S5024
    set $I5019, $I5018
    unless $I5018 goto if743_end1670 
    die 0, .CONTROL_LOOP_LAST
    set $I5019, 0
  if743_end1670:
    box $P5075, $I5019
    set $P5073, $P5075
    goto while733_test1646 
  while733_handlers1649:
    .get_results ($P5074)
    pop_upto_eh $P5074
    getattribute $P5076, $P5074, 'type'
    eq $P5076, .CONTROL_LOOP_NEXT, while733_test1646
    eq $P5076, .CONTROL_LOOP_REDO, while733_redo1648
  while733_done1650:
    pop_eh 
    set fb_tmp_147, __lowered_lex_400
    repr_defined $I5020, fb_tmp_147
    unless $I5020 goto if745_else1673 
    set $P5077, fb_tmp_147["compunit_ok"]
    set $P5079, $P5077
    goto if745_end1674
  if745_else1673:
    null $P5078
    set $P5079, $P5078
  if745_end1674:
    unless_null $P5079, vivi_7461675
    nqp_get_sc_object $P5080, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5079, $P5080
  vivi_7461675:
    unless $P5079 goto if744_else1671 
.annotate 'line', 1462
    $P5081 = "RETURN"(__lowered_lex_402)
    set $P5087, $P5081
    goto if744_end1672
  if744_else1671:
.annotate 'line', 1465
.annotate 'line', 1466
    nqp_decontainerize $P5082, __lowered_lex_396
    nqp_get_sc_object $P5083, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 127
    repr_get_attr_obj $P5084, $P5082, $P5083, "$!backend", 10
    $P5085 = $P5084."compunit_mainline"(__lowered_lex_402)
    $P5086 = "RETURN"($P5085)
    set $P5087, $P5086
  if744_end1672:
    goto lexotic_1626
  lexotic_1625:
    .get_results ($P5087)
  lexotic_1626:
    .return ($P5087) 
.end
.HLL "nqp"
.namespace []
.sub "start" :subid("cuid_148_1431289891.89934") :anon :lex :outer("cuid_236_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1470
    .param pmc __lowered_lex_406 
    .param pmc __lowered_lex_407 
    .param pmc __lowered_lex_408 :slurpy :named 
    .return (__lowered_lex_407) 
.end
.HLL "nqp"
.namespace []
.sub "parse" :subid("cuid_149_1431289891.89934") :anon :lex :outer("cuid_236_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1474
    .param pmc __lowered_lex_409 
    .param pmc __lowered_lex_410 
    .param pmc __lowered_lex_411 :slurpy :named 
    .local pmc __lowered_lex_412 
    .local pmc __lowered_lex_413 
    .local pmc __lowered_lex_414 
    .local pmc __lowered_lex_415 
    .local pmc fb_tmp_148 
    .local pmc fb_tmp_149 
    .local pmc fb_tmp_150 
    .local pmc fb_tmp_151 
    nqp_get_sc_object $P5001, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_414, $P5001
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_1678
    .lex "RETURN", $P101
    set __lowered_lex_412, __lowered_lex_410
    set fb_tmp_148, __lowered_lex_411
    repr_defined $I5001, fb_tmp_148
    unless $I5001 goto if748_else1682 
    set $P5002, fb_tmp_148["transcode"]
    set $P5004, $P5002
    goto if748_end1683
  if748_else1682:
    null $P5003
    set $P5004, $P5003
  if748_end1683:
    unless_null $P5004, vivi_7491684
    nqp_get_sc_object $P5005, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5004, $P5005
  vivi_7491684:
    unless $P5004 goto if747_end1681 
.annotate 'line', 1476
.annotate 'line', 1477
    nqp_decontainerize $P5006, __lowered_lex_409
    nqp_get_sc_object $P5007, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 127
    repr_get_attr_obj $P5008, $P5006, $P5007, "$!backend", 10
    set fb_tmp_149, __lowered_lex_411
    repr_defined $I5002, fb_tmp_149
    unless $I5002 goto if750_else1685 
    set $P5009, fb_tmp_149["transcode"]
    set $P5011, $P5009
    goto if750_end1686
  if750_else1685:
    null $P5010
    set $P5011, $P5010
  if750_end1686:
    unless_null $P5011, vivi_7511687
    nqp_get_sc_object $P5012, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5011, $P5012
  vivi_7511687:
    $P5013 = $P5008."apply_transcodings"(__lowered_lex_412, $P5011)
    set __lowered_lex_412, $P5013
  if747_end1681:
.annotate 'line', 1479
    nqp_decontainerize $P5014, __lowered_lex_409
    $P5015 = $P5014."parsegrammar"()
    set __lowered_lex_413, $P5015
.annotate 'line', 1481
    nqp_decontainerize $P5016, __lowered_lex_409
    $P5017 = $P5016."parseactions"()
    set __lowered_lex_414, $P5017
    set fb_tmp_150, __lowered_lex_411
    repr_defined $I5003, fb_tmp_150
    unless $I5003 goto if753_else1690 
    set $P5018, fb_tmp_150["rxtrace"]
    set $P5020, $P5018
    goto if753_end1691
  if753_else1690:
    null $P5019
    set $P5020, $P5019
  if753_end1691:
    unless_null $P5020, vivi_7541692
    nqp_get_sc_object $P5021, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5020, $P5021
  vivi_7541692:
    unless $P5020 goto if752_end1689 
.annotate 'line', 1482
    get_how $P5022, __lowered_lex_413
    $P5023 = $P5022."trace-on"(__lowered_lex_413)
  if752_end1689:
.annotate 'line', 1483
    $P5024 = __lowered_lex_413."parse"(__lowered_lex_412, 0 :named("p"), __lowered_lex_414 :named("actions"))
    set __lowered_lex_415, $P5024
    set fb_tmp_151, __lowered_lex_411
    repr_defined $I5004, fb_tmp_151
    unless $I5004 goto if756_else1695 
    set $P5025, fb_tmp_151["rxtrace"]
    set $P5027, $P5025
    goto if756_end1696
  if756_else1695:
    null $P5026
    set $P5027, $P5026
  if756_end1696:
    unless_null $P5027, vivi_7571697
    nqp_get_sc_object $P5028, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5027, $P5028
  vivi_7571697:
    unless $P5027 goto if755_end1694 
.annotate 'line', 1484
    get_how $P5029, __lowered_lex_413
    $P5030 = $P5029."trace-off"(__lowered_lex_413)
  if755_end1694:
    if __lowered_lex_415 goto unless758_end1699 
.annotate 'line', 1485
    nqp_decontainerize $P5031, __lowered_lex_409
    $P5032 = $P5031."panic"("Unable to parse source")
  unless758_end1699:
    $P5033 = "RETURN"(__lowered_lex_415)
    goto lexotic_1679
  lexotic_1678:
    .get_results ($P5033)
  lexotic_1679:
    .return ($P5033) 
.end
.HLL "nqp"
.namespace []
.sub "ast" :subid("cuid_150_1431289891.89934") :anon :lex :outer("cuid_236_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1489
    .param pmc __lowered_lex_416 
    .param pmc __lowered_lex_417 
    .param pmc __lowered_lex_418 :slurpy :named 
    .local pmc __lowered_lex_419 
.annotate 'line', 1490
    $P5001 = __lowered_lex_417."ast"()
    set __lowered_lex_419, $P5001
.annotate 'line', 1492
    nqp_get_sc_object $P5002, "69262D203AA461F498C95CCF7FF3EA8AC3EE1FD5-1431289882.84207", 23
    $P5003 = $P5002."ACCEPTS"(__lowered_lex_419)
    if $P5003 goto unless759_end1701 
.annotate 'line', 1491
    nqp_decontainerize $P5004, __lowered_lex_416
    get_how $P5005, __lowered_lex_417
    $P5006 = $P5005."name"(__lowered_lex_417)
    set $S5002, $P5006
    concat $S5001, "Unable to obtain AST from ", $S5002
    $P5007 = $P5004."panic"($S5001)
  unless759_end1701:
    .return (__lowered_lex_419) 
.end
.HLL "nqp"
.namespace []
.sub "dumper" :subid("cuid_151_1431289891.89934") :anon :lex :outer("cuid_236_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1496
    .param pmc __lowered_lex_421 
    .param pmc __lowered_lex_422 
    .param pmc __lowered_lex_423 
    .param pmc __lowered_lex_424 :slurpy :named 
    .local pmc __lowered_lex_420 
    can $I5001, __lowered_lex_422, "dump"
    unless $I5001 goto if760_else1702 
.annotate 'line', 1497
    getinterp $P5001
    $P5002 = $P5001."stdout_handle"()
    set __lowered_lex_420, $P5002
.annotate 'line', 1499
    $P5003 = __lowered_lex_422."dump"()
    $P5004 = __lowered_lex_420."print"($P5003)
    $P5005 = __lowered_lex_420."flush"()
    set $P5007, $P5005
    goto if760_end1703
  if760_else1702:
.annotate 'line', 1502
    box $P5006, "Cannot dump this object; no dump method"
    die $P5006
    set $P5007, $P5006
  if760_end1703:
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "usage" :subid("cuid_152_1431289891.89934") :anon :lex :outer("cuid_236_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1507
    .param pmc __lowered_lex_426 
    .param pmc __lowered_lex_427 :optional 
    .param int haz_param_14 :opt_flag 
    .local pmc __lowered_lex_428 
    .local pmc lowered_for_it__13 
    .local pmc __lowered_lex_425 
    if haz_param_14, default1711
    nqp_get_sc_object $P5012, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_427, $P5012
  default1711:
    unless __lowered_lex_427 goto if761_end1705 
.annotate 'line', 1508
.annotate 'line', 1509
    $P5001 = "&say"(__lowered_lex_427)
  if761_end1705:
    box $P5002, "This compiler is based on HLL::Compiler.\n\nOptions:\n"
    set __lowered_lex_428, $P5002
    nqp_decontainerize $P5004, __lowered_lex_426
    nqp_get_sc_object $P5005, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 127
    repr_get_attr_obj $P5006, $P5004, $P5005, "@!cmdoptions", 3
    iter $P5003, $P5006
    set lowered_for_it__13, $P5003
    new $P5010, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5010, while762_handlers1709
    push_eh $P5010
  while762_test1706:
    set $P5009, lowered_for_it__13
    unless lowered_for_it__13 goto while762_done1710 
  while762_redo1708:
    shift $P5007, lowered_for_it__13
    set __lowered_lex_425, $P5007
.annotate 'line', 1512
    set $S5002, __lowered_lex_428
    set $S5005, __lowered_lex_425
    concat $S5004, "    ", $S5005
    concat $S5003, $S5004, "\n"
    concat $S5001, $S5002, $S5003
    box $P5008, $S5001
    set __lowered_lex_428, $P5008
    set $P5009, __lowered_lex_428
    goto while762_test1706 
  while762_handlers1709:
    .get_results ($P5010)
    pop_upto_eh $P5010
    getattribute $P5011, $P5010, 'type'
    eq $P5011, .CONTROL_LOOP_NEXT, while762_test1706
    eq $P5011, .CONTROL_LOOP_REDO, while762_redo1708
  while762_done1710:
    pop_eh 
    set $S5006, __lowered_lex_428
    say $S5006
    exit 0
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "version" :subid("cuid_153_1431289891.89934") :anon :lex :outer("cuid_236_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1519
    .param pmc __lowered_lex_429 
    .local pmc __lowered_lex_430 
    .local pmc __lowered_lex_431 
    .local pmc fb_tmp_152 
    nqp_decontainerize $P5001, __lowered_lex_429
    nqp_get_sc_object $P5002, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 127
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!config", 6
    set fb_tmp_152, $P5003
    repr_defined $I5001, fb_tmp_152
    unless $I5001 goto if763_else1712 
    set $P5004, fb_tmp_152["version"]
    set $P5006, $P5004
    goto if763_end1713
  if763_else1712:
    null $P5005
    set $P5006, $P5005
  if763_end1713:
    unless_null $P5006, vivi_7641714
    nqp_get_sc_object $P5007, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5006, $P5007
  vivi_7641714:
    set __lowered_lex_430, $P5006
.annotate 'line', 1521
    nqp_decontainerize $P5008, __lowered_lex_429
    nqp_get_sc_object $P5009, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 127
    repr_get_attr_obj $P5010, $P5008, $P5009, "$!backend", 10
    $P5011 = $P5010."version_string"()
    set __lowered_lex_431, $P5011
    nqp_decontainerize $P5012, __lowered_lex_429
    nqp_get_sc_object $P5013, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 127
    repr_get_attr_obj $P5014, $P5012, $P5013, "$!language", 5
    set $S5006, $P5014
    concat $S5005, "This is ", $S5006
    concat $S5004, $S5005, " version "
    set $S5007, __lowered_lex_430
    concat $S5003, $S5004, $S5007
    concat $S5002, $S5003, " built on "
    set $S5008, __lowered_lex_431
    concat $S5001, $S5002, $S5008
    say $S5001
    exit 0
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "show-config" :subid("cuid_154_1431289891.89934") :anon :lex :outer("cuid_236_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1526
    .param pmc __lowered_lex_432 
    nqp_decontainerize $P5001, __lowered_lex_432
    $P5002 = $P5001."verbose-config"()
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "verbose-config" :subid("cuid_155_1431289891.89934") :anon :lex :outer("cuid_236_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1528
    .param pmc __lowered_lex_435 
    .local pmc __lowered_lex_436 
    .local pmc lowered_for_it__14 
    .local pmc __lowered_lex_433 
    .local pmc lowered_for_it__15 
    .local pmc __lowered_lex_434 
.annotate 'line', 1529
    nqp_decontainerize $P5001, __lowered_lex_435
    nqp_get_sc_object $P5002, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 127
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!backend", 10
    $P5004 = $P5003."name"()
    set __lowered_lex_436, $P5004
.annotate 'line', 1530
    nqp_decontainerize $P5006, __lowered_lex_435
    nqp_get_sc_object $P5007, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 127
    repr_get_attr_obj $P5008, $P5006, $P5007, "$!backend", 10
    $P5009 = $P5008."config"()
    iter $P5005, $P5009
    set lowered_for_it__14, $P5005
    new $P5014, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5014, while765_handlers1718
    push_eh $P5014
  while765_test1715:
    set $P5013, lowered_for_it__14
    unless lowered_for_it__14 goto while765_done1719 
  while765_redo1717:
    shift $P5010, lowered_for_it__14
    set __lowered_lex_433, $P5010
    set $S5005, __lowered_lex_436
    concat $S5004, $S5005, "::"
.annotate 'line', 1531
    $P5011 = __lowered_lex_433."key"()
    set $S5006, $P5011
    concat $S5003, $S5004, $S5006
    concat $S5002, $S5003, "="
    $P5012 = __lowered_lex_433."value"()
    set $S5007, $P5012
    concat $S5001, $S5002, $S5007
    say $S5001
    box $P5015, $S5001
    set $P5013, $P5015
    goto while765_test1715 
  while765_handlers1718:
    .get_results ($P5014)
    pop_upto_eh $P5014
    getattribute $P5016, $P5014, 'type'
    eq $P5016, .CONTROL_LOOP_NEXT, while765_test1715
    eq $P5016, .CONTROL_LOOP_REDO, while765_redo1717
  while765_done1719:
    pop_eh 
    nqp_decontainerize $P5018, __lowered_lex_435
    nqp_get_sc_object $P5019, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 127
    repr_get_attr_obj $P5020, $P5018, $P5019, "%!config", 6
    iter $P5017, $P5020
    set lowered_for_it__15, $P5017
    new $P5028, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5028, while766_handlers1723
    push_eh $P5028
  while766_test1720:
    set $P5027, lowered_for_it__15
    unless lowered_for_it__15 goto while766_done1724 
  while766_redo1722:
    shift $P5021, lowered_for_it__15
    set __lowered_lex_434, $P5021
.annotate 'line', 1533
    nqp_decontainerize $P5022, __lowered_lex_435
    nqp_get_sc_object $P5023, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 127
    repr_get_attr_obj $P5024, $P5022, $P5023, "$!language", 5
    set $S5012, $P5024
    concat $S5011, $S5012, "::"
.annotate 'line', 1534
    $P5025 = __lowered_lex_434."key"()
    set $S5013, $P5025
    concat $S5010, $S5011, $S5013
    concat $S5009, $S5010, "="
    $P5026 = __lowered_lex_434."value"()
    set $S5014, $P5026
    concat $S5008, $S5009, $S5014
    say $S5008
    box $P5029, $S5008
    set $P5027, $P5029
    goto while766_test1720 
  while766_handlers1723:
    .get_results ($P5028)
    pop_upto_eh $P5028
    getattribute $P5030, $P5028, 'type'
    eq $P5030, .CONTROL_LOOP_NEXT, while766_test1720
    eq $P5030, .CONTROL_LOOP_REDO, while766_redo1722
  while766_done1724:
    pop_eh 
    exit 0
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "nqpevent" :subid("cuid_156_1431289891.89934") :anon :lex :outer("cuid_236_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1539
    .param pmc __lowered_lex_437 
    .param pmc __lowered_lex_438 :slurpy 
.annotate 'line', 1540
    nqp_decontainerize $P5001, __lowered_lex_437
    nqp_get_sc_object $P5002, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 127
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!backend", 10
    $P5004 = $P5003."nqpevent"(__lowered_lex_438 :flat)
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "removestage" :subid("cuid_157_1431289891.89934") :anon :lex :outer("cuid_236_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1543
    .param pmc __lowered_lex_440 
    .param pmc __lowered_lex_441 
    .local pmc __lowered_lex_442 
    .local pmc lowered_for_it__16 
    .local pmc __lowered_lex_439 
    new $P5001, 'QRPA'
    set __lowered_lex_442, $P5001
    nqp_decontainerize $P5003, __lowered_lex_440
    nqp_get_sc_object $P5004, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 127
    repr_get_attr_obj $P5005, $P5003, $P5004, "@!stages", 0
    iter $P5002, $P5005
    set lowered_for_it__16, $P5002
    new $P5010, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5010, while767_handlers1728
    push_eh $P5010
  while767_test1725:
    set $P5009, lowered_for_it__16
    unless lowered_for_it__16 goto while767_done1729 
  while767_redo1727:
    shift $P5006, lowered_for_it__16
    set __lowered_lex_439, $P5006
.annotate 'line', 1545
    set $S5001, __lowered_lex_439
    set $S5002, __lowered_lex_441
    isne $I5001, $S5001, $S5002
    box $P5008, $I5001
    set $P5007, $P5008
    unless $I5001 goto if768_end1731 
.annotate 'line', 1546
    push __lowered_lex_442, __lowered_lex_439
    set $P5007, __lowered_lex_442
  if768_end1731:
    set $P5009, $P5007
    goto while767_test1725 
  while767_handlers1728:
    .get_results ($P5010)
    pop_upto_eh $P5010
    getattribute $P5011, $P5010, 'type'
    eq $P5011, .CONTROL_LOOP_NEXT, while767_test1725
    eq $P5011, .CONTROL_LOOP_REDO, while767_redo1727
  while767_done1729:
    pop_eh 
    nqp_decontainerize $P5012, __lowered_lex_440
    nqp_get_sc_object $P5013, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 127
    repr_bind_attr_obj $P5012, $P5013, "@!stages", 0, __lowered_lex_442
    .return (__lowered_lex_442) 
.end
.HLL "nqp"
.namespace []
.sub "addstage" :subid("cuid_158_1431289891.89934") :anon :lex :outer("cuid_236_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1553
    .param pmc __lowered_lex_445 
    .param pmc __lowered_lex_446 
    .param pmc __lowered_lex_447 :slurpy :named 
    .local pmc __lowered_lex_448 
    .local pmc __lowered_lex_449 
    .local pmc __lowered_lex_450 
    .local pmc fb_tmp_153 
    .local pmc fb_tmp_154 
    .local pmc fb_tmp_155 
    .local pmc fb_tmp_156 
    .local pmc __lowered_lex_443 
    .local pmc lowered_for_it__17 
    .local pmc __lowered_lex_444 
    nqp_get_sc_object $P5001, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_448, $P5001
    nqp_get_sc_object $P5002, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_449, $P5002
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_1732
    .lex "RETURN", $P101
    set fb_tmp_153, __lowered_lex_447
    repr_defined $I5001, fb_tmp_153
    unless $I5001 goto if770_else1736 
    set $P5003, fb_tmp_153["before"]
    set $P5005, $P5003
    goto if770_end1737
  if770_else1736:
    null $P5004
    set $P5005, $P5004
  if770_end1737:
    unless_null $P5005, vivi_7711738
    nqp_get_sc_object $P5006, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5005, $P5006
  vivi_7711738:
    unless $P5005 goto if769_else1734 
.annotate 'line', 1556
    set fb_tmp_154, __lowered_lex_447
    repr_defined $I5002, fb_tmp_154
    unless $I5002 goto if772_else1739 
    set $P5007, fb_tmp_154["before"]
    set $P5009, $P5007
    goto if772_end1740
  if772_else1739:
    null $P5008
    set $P5009, $P5008
  if772_end1740:
    unless_null $P5009, vivi_7731741
    nqp_get_sc_object $P5010, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5009, $P5010
  vivi_7731741:
    set __lowered_lex_449, $P5009
    box $P5011, "before"
    set __lowered_lex_448, $P5011
    goto if769_end1735
  if769_else1734:
    set fb_tmp_155, __lowered_lex_447
    repr_defined $I5003, fb_tmp_155
    unless $I5003 goto if775_else1744 
    set $P5012, fb_tmp_155["after"]
    set $P5014, $P5012
    goto if775_end1745
  if775_else1744:
    null $P5013
    set $P5014, $P5013
  if775_end1745:
    unless_null $P5014, vivi_7761746
    nqp_get_sc_object $P5015, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5014, $P5015
  vivi_7761746:
    unless $P5014 goto if774_else1742 
.annotate 'line', 1559
    set fb_tmp_156, __lowered_lex_447
    repr_defined $I5004, fb_tmp_156
    unless $I5004 goto if777_else1747 
    set $P5016, fb_tmp_156["after"]
    set $P5018, $P5016
    goto if777_end1748
  if777_else1747:
    null $P5017
    set $P5018, $P5017
  if777_end1748:
    unless_null $P5018, vivi_7781749
    nqp_get_sc_object $P5019, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5018, $P5019
  vivi_7781749:
    set __lowered_lex_449, $P5018
    box $P5020, "after"
    set __lowered_lex_448, $P5020
    set $P5026, __lowered_lex_448
    goto if774_end1743
  if774_else1742:
.annotate 'line', 1562
.annotate 'line', 1563
    nqp_decontainerize $P5022, __lowered_lex_445
    $P5023 = $P5022."stages"()
    repr_clone $P5021, $P5023
    set __lowered_lex_443, $P5021
    push __lowered_lex_443, __lowered_lex_446
.annotate 'line', 1565
    nqp_decontainerize $P5024, __lowered_lex_445
    $P5024."stages"(__lowered_lex_443)
    $P5025 = "RETURN"(1)
    set $P5026, $P5025
  if774_end1743:
  if769_end1735:
    new $P5027, 'QRPA'
    set __lowered_lex_450, $P5027
.annotate 'line', 1569
    nqp_decontainerize $P5029, __lowered_lex_445
    $P5030 = $P5029."stages"()
    iter $P5028, $P5030
    set lowered_for_it__17, $P5028
    new $P5035, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5035, while779_handlers1753
    push_eh $P5035
  while779_test1750:
    set $P5034, lowered_for_it__17
    unless lowered_for_it__17 goto while779_done1754 
  while779_redo1752:
    shift $P5031, lowered_for_it__17
    set __lowered_lex_444, $P5031
    set $S5001, __lowered_lex_444
    set $S5002, __lowered_lex_449
    iseq $I5005, $S5001, $S5002
    unless $I5005 goto if780_else1755 
.annotate 'line', 1570
    set $S5003, __lowered_lex_448
    iseq $I5006, $S5003, "before"
    unless $I5006 goto if781_else1757 
.annotate 'line', 1571
    push __lowered_lex_450, __lowered_lex_446
    push __lowered_lex_450, __lowered_lex_444
    set $P5032, __lowered_lex_450
    goto if781_end1758
  if781_else1757:
.annotate 'line', 1574
    push __lowered_lex_450, __lowered_lex_444
    push __lowered_lex_450, __lowered_lex_446
    set $P5032, __lowered_lex_450
  if781_end1758:
    set $P5033, $P5032
    goto if780_end1756
  if780_else1755:
.annotate 'line', 1578
    push __lowered_lex_450, __lowered_lex_444
    set $P5033, __lowered_lex_450
  if780_end1756:
    set $P5034, $P5033
    goto while779_test1750 
  while779_handlers1753:
    .get_results ($P5035)
    pop_upto_eh $P5035
    getattribute $P5036, $P5035, 'type'
    eq $P5036, .CONTROL_LOOP_NEXT, while779_test1750
    eq $P5036, .CONTROL_LOOP_REDO, while779_redo1752
  while779_done1754:
    pop_eh 
.annotate 'line', 1582
    nqp_decontainerize $P5037, __lowered_lex_445
    $P5038 = $P5037."stages"(__lowered_lex_450)
    goto lexotic_1733
  lexotic_1732:
    .get_results ($P5038)
  lexotic_1733:
    .return ($P5038) 
.end
.HLL "nqp"
.namespace []
.sub "parse_name" :subid("cuid_159_1431289891.89934") :anon :lex :outer("cuid_236_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1585
    .param pmc __lowered_lex_452 
    .param pmc __lowered_lex_453 
    .local pmc __lowered_lex_454 
    .local pmc __lowered_lex_455 
    .local pmc __lowered_lex_456 
    .local pmc __lowered_lex_457 
    .local pmc fb_tmp_157 
    .local pmc fb_tmp_158 
    .local pmc fb_tmp_159 
    .local pmc lowered_for_it__18 
    .local pmc __lowered_lex_451 
    new $P5001, 'QRPA'
    set __lowered_lex_457, $P5001
    set $S5001, __lowered_lex_453
    split $P5002, "::", $S5001
    set __lowered_lex_454, $P5002
    set fb_tmp_157, __lowered_lex_454
    repr_defined $I5001, fb_tmp_157
    unless $I5001 goto if782_else1759 
    set $P5003, fb_tmp_157[0]
    set $P5005, $P5003
    goto if782_end1760
  if782_else1759:
    null $P5004
    set $P5005, $P5004
  if782_end1760:
    unless_null $P5005, vivi_7831761
    nqp_get_sc_object $P5006, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5005, $P5006
  vivi_7831761:
    set $S5003, $P5005
    substr $S5002, $S5003, 0, 1
    box $P5007, $S5002
    set __lowered_lex_455, $P5007
    set $S5004, __lowered_lex_455
    index $I5002, "$@%&", $S5004, 0
    box $P5008, $I5002
    set __lowered_lex_456, $P5008
    set $N5001, __lowered_lex_456
    set $N5002, 0
    isge $I5003, $N5001, $N5002
    unless $I5003 goto if784_end1763 
.annotate 'line', 1591
    set fb_tmp_158, __lowered_lex_454
    repr_defined $I5004, fb_tmp_158
    unless $I5004 goto if785_else1764 
    set $P5009, fb_tmp_158[0]
    set $P5011, $P5009
    goto if785_end1765
  if785_else1764:
    null $P5010
    set $P5011, $P5010
  if785_end1765:
    unless_null $P5011, vivi_7861766
    nqp_get_sc_object $P5012, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5011, $P5012
  vivi_7861766:
    set $S5006, $P5011
    substr $S5005, $S5006, 1
    box $P5013, $S5005
    set __lowered_lex_454[0], $P5013
    set $S5008, __lowered_lex_455
    set fb_tmp_159, __lowered_lex_454
    repr_defined $I5005, fb_tmp_159
    unless $I5005 goto if787_else1767 
    set $P5014, fb_tmp_159[-1]
    set $P5016, $P5014
    goto if787_end1768
  if787_else1767:
    null $P5015
    set $P5016, $P5015
  if787_end1768:
    unless_null $P5016, vivi_7881769
    nqp_get_sc_object $P5017, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5016, $P5017
  vivi_7881769:
    set $S5009, $P5016
    concat $S5007, $S5008, $S5009
    box $P5018, $S5007
    set __lowered_lex_454[-1], $P5018
  if784_end1763:
    iter $P5019, __lowered_lex_454
    set lowered_for_it__18, $P5019
    new $P5024, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5024, while789_handlers1773
    push_eh $P5024
  while789_test1770:
    set $P5023, lowered_for_it__18
    unless lowered_for_it__18 goto while789_done1774 
  while789_redo1772:
    shift $P5020, lowered_for_it__18
    set __lowered_lex_451, $P5020
.annotate 'line', 1599
    set $S5010, __lowered_lex_451
    iseq $I5006, $S5010, ""
    box $P5022, $I5006
    set $P5021, $P5022
    if $I5006 goto unless790_end1776 
    push __lowered_lex_457, __lowered_lex_451
    set $P5021, __lowered_lex_457
  unless790_end1776:
    set $P5023, $P5021
    goto while789_test1770 
  while789_handlers1773:
    .get_results ($P5024)
    pop_upto_eh $P5024
    getattribute $P5025, $P5024, 'type'
    eq $P5025, .CONTROL_LOOP_NEXT, while789_test1770
    eq $P5025, .CONTROL_LOOP_REDO, while789_redo1772
  while789_done1774:
    pop_eh 
    .return (__lowered_lex_457) 
.end
.HLL "nqp"
.namespace []
.sub "lineof" :subid("cuid_160_1431289891.89934") :anon :lex :outer("cuid_236_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1605
    .param pmc __lowered_lex_462 
    .param pmc __lowered_lex_463 
    .param int __lowered_lex_464 
    .param int __lowered_lex_465 :named("cache") :optional 
    .param int haz_param_15 :opt_flag 
    .local pmc __lowered_lex_466 
    .local int __lowered_lex_467 
    .local int __lowered_lex_468 
    .local int __lowered_lex_469 
    .local pmc fb_tmp_160 
    .local string __lowered_lex_458 
    .local int __lowered_lex_459 
    .local int __lowered_lex_460 
    .local int __lowered_lex_461 
    if haz_param_15, default1804
    set $I5025, 0
    set __lowered_lex_465, $I5025
  default1804:
    nqp_get_sc_object $P5001, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_466, $P5001
    set __lowered_lex_469, 0
    unless __lowered_lex_465 goto if791_end1778 
.annotate 'line', 1607
    find_dynamic_lex $P5002, "$*LINEPOSCACHE"
    unless_null $P5002, fallback1779
    nqp_get_sc_object $P5004, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 0
    get_who $P5003, $P5004
    set fb_tmp_160, $P5003
    repr_defined $I5001, fb_tmp_160
    unless $I5001 goto if792_else1780 
    set $P5005, fb_tmp_160["$LINEPOSCACHE"]
    set $P5007, $P5005
    goto if792_end1781
  if792_else1780:
    null $P5006
    set $P5007, $P5006
  if792_end1781:
    unless_null $P5007, vivi_7931782
    nqp_get_sc_object $P5008, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5007, $P5008
  vivi_7931782:
    unless_null $P5007, vivi_7941783
    die "Contextual $*LINEPOSCACHE not found"
    box $P5009, "Contextual $*LINEPOSCACHE not found"
    set $P5007, $P5009
  vivi_7941783:
    set $P5002, $P5007
  fallback1779:
    set __lowered_lex_466, $P5002
  if791_end1778:
    defined $I5002, __lowered_lex_466
    if $I5002 goto unless795_end1785 
    set __lowered_lex_461, 0
.annotate 'line', 1611
    new $P5010, 'ResizableIntegerArray'
    set __lowered_lex_466, $P5010
    unless __lowered_lex_465 goto if796_end1787 
.annotate 'line', 1614
    store_dynamic_lex "$*LINEPOSCACHE", __lowered_lex_466
  if796_end1787:
    set $S5001, __lowered_lex_463
    set __lowered_lex_458, $S5001
    length $I5003, __lowered_lex_458
    set __lowered_lex_459, $I5003
    set __lowered_lex_460, 0
  while797_test1788:
    find_cclass $I5005, 4096, __lowered_lex_458, __lowered_lex_460, __lowered_lex_459
    set __lowered_lex_460, $I5005
    islt $I5004, __lowered_lex_460, __lowered_lex_459
    set $I5014, $I5004
    unless $I5004 goto while797_done1792 
  while797_redo1790:
.annotate 'line', 1625
    ord $I5006, __lowered_lex_458, __lowered_lex_460
    set __lowered_lex_461, $I5006
    add $I5007, __lowered_lex_460, 1
    set __lowered_lex_460, $I5007
    push __lowered_lex_466, __lowered_lex_460
    iseq $I5008, __lowered_lex_461, 13
    set $I5011, $I5008
    unless $I5008 goto if799_end1796 
    ord $I5010, __lowered_lex_458, __lowered_lex_460
    iseq $I5009, $I5010, 10
    set $I5011, $I5009
  if799_end1796:
    set $I5013, $I5011
    unless $I5011 goto if798_end1794 
.annotate 'line', 1631
    add $I5012, __lowered_lex_460, 1
    set __lowered_lex_460, $I5012
    set $I5013, __lowered_lex_460
  if798_end1794:
    set $I5014, $I5013
    goto while797_test1788 
  while797_done1792:
  unless795_end1785:
    set __lowered_lex_467, 0
    elements $I5015, __lowered_lex_466
    set __lowered_lex_468, $I5015
  while800_test1797:
    islt $I5016, __lowered_lex_467, __lowered_lex_468
    set $I5023, $I5016
    unless $I5016 goto while800_done1801 
  while800_redo1799:
.annotate 'line', 1642
    add $I5018, __lowered_lex_467, __lowered_lex_468
    floordiv $I5017, $I5018, 2
    set __lowered_lex_469, $I5017
    set $I5020, __lowered_lex_466[__lowered_lex_469]
    isgt $I5019, $I5020, __lowered_lex_464
    unless $I5019 goto if801_else1802 
.annotate 'line', 1644
    set __lowered_lex_468, __lowered_lex_469
    set $I5022, __lowered_lex_468
    goto if801_end1803
  if801_else1802:
.annotate 'line', 1646
    add $I5021, __lowered_lex_469, 1
    set __lowered_lex_467, $I5021
    set $I5022, __lowered_lex_467
  if801_end1803:
    set $I5023, $I5022
    goto while800_test1797 
  while800_done1801:
    add $I5024, __lowered_lex_467, 1
    .return ($I5024) 
.end
.HLL "nqp"
.namespace []
.sub "user-progname" :subid("cuid_161_1431289891.89934") :anon :lex :outer("cuid_236_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1654
    .param pmc __lowered_lex_470 
    nqp_decontainerize $P5002, __lowered_lex_470
    nqp_get_sc_object $P5003, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 127
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!user_progname", 7
    set $P5001, $P5004
    defined $I5001, $P5001
    if $I5001, defor1805
    box $P5005, "interactive"
    set $P5001, $P5005
  defor1805:
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "cli-options" :subid("cuid_162_1431289891.89934") :anon :lex :outer("cuid_236_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1657
    .param pmc __lowered_lex_471 
    nqp_decontainerize $P5001, __lowered_lex_471
    nqp_get_sc_object $P5002, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 127
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!cli-options", 9
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "cli-arguments" :subid("cuid_163_1431289891.89934") :anon :lex :outer("cuid_236_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1658
    .param pmc __lowered_lex_472 
    nqp_decontainerize $P5001, __lowered_lex_472
    nqp_get_sc_object $P5002, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 127
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!cli-arguments", 8
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "recursion_limit" :subid("cuid_164_1431289891.89934") :anon :lex :outer("cuid_236_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1661
    .param pmc __lowered_lex_473 
    .param pmc __lowered_lex_474 
    nqp_decontainerize $P5001, __lowered_lex_473
    nqp_get_sc_object $P5002, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 127
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!backend", 10
    can $I5001, $P5003, "recursion_limit"
    unless $I5001 goto if802_else1806 
.annotate 'line', 1662
.annotate 'line', 1663
    nqp_decontainerize $P5004, __lowered_lex_473
    nqp_get_sc_object $P5005, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 127
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!backend", 10
    $P5006."recursion_limit"(__lowered_lex_474)
    set $I5002, 1
    goto if802_end1807
  if802_else1806:
.annotate 'line', 1666

    set $I5002, 0
  if802_end1807:
    .return ($I5002) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_249_1431289891.89934") :anon :lex :outer("cuid_232_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1764
    .const 'Sub' $P5006 = 'cuid_166_1431289891.89934' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_167_1431289891.89934' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_168_1431289891.89934' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_169_1431289891.89934' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_170_1431289891.89934' 
    capture_lex $P5006 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_166_1431289891.89934' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_167_1431289891.89934' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_168_1431289891.89934' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_169_1431289891.89934' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_170_1431289891.89934' 
    capture_lex $P5005
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "init" :subid("cuid_166_1431289891.89934") :anon :lex :outer("cuid_249_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1768
    .param pmc __lowered_lex_475 
    nqp_decontainerize $P5001, __lowered_lex_475
    nqp_get_sc_object $P5002, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 172
    new $P5003, 'QRPA'
    repr_bind_attr_obj $P5001, $P5002, "@!arguments", 0, $P5003
    nqp_decontainerize $P5004, __lowered_lex_475
    nqp_get_sc_object $P5005, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 172
    new $P5006, 'Hash'
    repr_bind_attr_obj $P5004, $P5005, "%!options", 1, $P5006
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "arguments" :subid("cuid_167_1431289891.89934") :anon :lex :outer("cuid_249_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1773
    .param pmc __lowered_lex_476 
    nqp_decontainerize $P5001, __lowered_lex_476
    nqp_get_sc_object $P5002, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 172
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!arguments", 0
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "options" :subid("cuid_168_1431289891.89934") :anon :lex :outer("cuid_249_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1774
    .param pmc __lowered_lex_477 
    nqp_decontainerize $P5001, __lowered_lex_477
    nqp_get_sc_object $P5002, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 172
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!options", 1
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "add-argument" :subid("cuid_169_1431289891.89934") :anon :lex :outer("cuid_249_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1776
    .param pmc __lowered_lex_478 
    .param pmc __lowered_lex_479 
    nqp_decontainerize $P5001, __lowered_lex_478
    nqp_get_sc_object $P5002, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 172
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!arguments", 0
    push $P5003, __lowered_lex_479
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "add-option" :subid("cuid_170_1431289891.89934") :anon :lex :outer("cuid_249_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1780
    .param pmc __lowered_lex_480 
    .param pmc __lowered_lex_481 
    .param pmc __lowered_lex_482 
    .local pmc fb_tmp_161 
    .local pmc fb_tmp_162 
    .local pmc fb_tmp_163 
    nqp_decontainerize $P5001, __lowered_lex_480
    nqp_get_sc_object $P5002, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 172
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!options", 1
    set $S5001, __lowered_lex_481
    exists $I5001, $P5003[$S5001]
    unless $I5001 goto if803_else1808 
.annotate 'line', 1783
    nqp_decontainerize $P5004, __lowered_lex_480
    nqp_get_sc_object $P5005, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 172
    repr_get_attr_obj $P5006, $P5004, $P5005, "%!options", 1
    set fb_tmp_161, $P5006
    repr_defined $I5003, fb_tmp_161
    unless $I5003 goto if805_else1812 
    set $S5002, __lowered_lex_481
    set $P5007, fb_tmp_161[$S5002]
    set $P5009, $P5007
    goto if805_end1813
  if805_else1812:
    null $P5008
    set $P5009, $P5008
  if805_end1813:
    unless_null $P5009, vivi_8061814
    nqp_get_sc_object $P5010, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5009, $P5010
  vivi_8061814:
    nqp_islist $I5002, $P5009
    unless $I5002 goto if804_else1810 
.annotate 'line', 1784
    nqp_decontainerize $P5011, __lowered_lex_480
    nqp_get_sc_object $P5012, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 172
    repr_get_attr_obj $P5013, $P5011, $P5012, "%!options", 1
    set fb_tmp_162, $P5013
    repr_defined $I5004, fb_tmp_162
    unless $I5004 goto if807_else1815 
    set $S5003, __lowered_lex_481
    set $P5014, fb_tmp_162[$S5003]
    set $P5016, $P5014
    goto if807_end1816
  if807_else1815:
    null $P5015
    set $P5016, $P5015
  if807_end1816:
    unless_null $P5016, vivi_8081817
    nqp_get_sc_object $P5017, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5016, $P5017
  vivi_8081817:
    push $P5016, __lowered_lex_482
    set $P5029, $P5016
    goto if804_end1811
  if804_else1810:
.annotate 'line', 1786
    nqp_decontainerize $P5018, __lowered_lex_480
    nqp_get_sc_object $P5019, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 172
    repr_get_attr_obj $P5020, $P5018, $P5019, "%!options", 1
    set $S5004, __lowered_lex_481
    new $P5021, 'QRPA'
    assign $P5021, 2
    assign $P5021, 0
    nqp_decontainerize $P5022, __lowered_lex_480
    nqp_get_sc_object $P5023, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 172
    repr_get_attr_obj $P5024, $P5022, $P5023, "%!options", 1
    set fb_tmp_163, $P5024
    repr_defined $I5005, fb_tmp_163
    unless $I5005 goto if809_else1818 
    set $S5005, __lowered_lex_481
    set $P5025, fb_tmp_163[$S5005]
    set $P5027, $P5025
    goto if809_end1819
  if809_else1818:
    null $P5026
    set $P5027, $P5026
  if809_end1819:
    unless_null $P5027, vivi_8101820
    nqp_get_sc_object $P5028, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5027, $P5028
  vivi_8101820:
    push $P5021, $P5027
    push $P5021, __lowered_lex_482
    set $P5020[$S5004], $P5021
    set $P5029, $P5021
  if804_end1811:
    set $P5033, $P5029
    goto if803_end1809
  if803_else1808:
.annotate 'line', 1789
    nqp_decontainerize $P5030, __lowered_lex_480
    nqp_get_sc_object $P5031, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 172
    repr_get_attr_obj $P5032, $P5030, $P5031, "%!options", 1
    set $S5006, __lowered_lex_481
    set $P5032[$S5006], __lowered_lex_482
    set $P5033, __lowered_lex_482
  if803_end1809:
    .return ($P5033) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_250_1431289891.89934") :anon :lex :outer("cuid_232_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1795
    .const 'Sub' $P5011 = 'cuid_171_1431289891.89934' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_172_1431289891.89934' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_173_1431289891.89934' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_174_1431289891.89934' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_175_1431289891.89934' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_176_1431289891.89934' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_177_1431289891.89934' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_178_1431289891.89934' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_179_1431289891.89934' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_180_1431289891.89934' 
    capture_lex $P5011 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_171_1431289891.89934' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_172_1431289891.89934' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_173_1431289891.89934' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_174_1431289891.89934' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_175_1431289891.89934' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_176_1431289891.89934' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_177_1431289891.89934' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_178_1431289891.89934' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_179_1431289891.89934' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_180_1431289891.89934' 
    capture_lex $P5010
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_171_1431289891.89934") :anon :lex :outer("cuid_250_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1801
    .param pmc __lowered_lex_483 
    .param pmc __lowered_lex_484 
    .local pmc __lowered_lex_485 
.annotate 'line', 1802
    nqp_decontainerize $P5001, __lowered_lex_483
    $P5002 = $P5001."CREATE"()
    set __lowered_lex_485, $P5002
.annotate 'line', 1803
    __lowered_lex_485."BUILD"(__lowered_lex_484 :named("specs"))
    .return (__lowered_lex_485) 
.end
.HLL "nqp"
.namespace []
.sub "stop-after-first-arg" :subid("cuid_172_1431289891.89934") :anon :lex :outer("cuid_250_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1807
    .param pmc __lowered_lex_486 
    nqp_decontainerize $P5001, __lowered_lex_486
    nqp_get_sc_object $P5002, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 178
    box $P5003, 1
    repr_bind_attr_obj $P5001, $P5002, "$!stop-after-first-arg", 3, $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_173_1431289891.89934") :anon :lex :outer("cuid_250_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1811
    .param pmc __lowered_lex_488 
    .param pmc __lowered_lex_489 :named("specs") :optional 
    .param int haz_param_16 :opt_flag 
    .local pmc lowered_for_it__19 
    .local pmc __lowered_lex_487 
    if haz_param_16, default1826
    new $P5024, 'QRPA'
    set __lowered_lex_489, $P5024
  default1826:
    nqp_decontainerize $P5001, __lowered_lex_488
    nqp_get_sc_object $P5002, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 178
    new $P5003, 'QRPA'
    repr_bind_attr_obj $P5001, $P5002, "@!specs", 0, $P5003
    nqp_decontainerize $P5004, __lowered_lex_488
    nqp_get_sc_object $P5005, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 178
    new $P5006, 'Hash'
    repr_bind_attr_obj $P5004, $P5005, "%!options", 1, $P5006
    nqp_decontainerize $P5007, __lowered_lex_488
    nqp_get_sc_object $P5008, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 178
    new $P5009, 'Hash'
    repr_bind_attr_obj $P5007, $P5008, "%!stopper", 2, $P5009
    nqp_decontainerize $P5010, __lowered_lex_488
    nqp_get_sc_object $P5011, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 178
    repr_get_attr_obj $P5012, $P5010, $P5011, "%!stopper", 2
    box $P5013, 1
    set $P5012["--"], $P5013
    nqp_decontainerize $P5014, __lowered_lex_488
    nqp_get_sc_object $P5015, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 178
    box $P5016, 0
    repr_bind_attr_obj $P5014, $P5015, "$!stop-after-first-arg", 3, $P5016
    iter $P5017, __lowered_lex_489
    set lowered_for_it__19, $P5017
    new $P5022, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5022, while811_handlers1824
    push_eh $P5022
  while811_test1821:
    set $P5021, lowered_for_it__19
    unless lowered_for_it__19 goto while811_done1825 
  while811_redo1823:
    shift $P5018, lowered_for_it__19
    set __lowered_lex_487, $P5018
.annotate 'line', 1817
.annotate 'line', 1818
    nqp_decontainerize $P5019, __lowered_lex_488
    $P5020 = $P5019."add-spec"(__lowered_lex_487)
    set $P5021, $P5020
    goto while811_test1821 
  while811_handlers1824:
    .get_results ($P5022)
    pop_upto_eh $P5022
    getattribute $P5023, $P5022, 'type'
    eq $P5023, .CONTROL_LOOP_NEXT, while811_test1821
    eq $P5023, .CONTROL_LOOP_REDO, while811_redo1823
  while811_done1825:
    pop_eh 
    .return ($P5021) 
.end
.HLL "nqp"
.namespace []
.sub "add-stopper" :subid("cuid_174_1431289891.89934") :anon :lex :outer("cuid_250_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1821
    .param pmc __lowered_lex_490 
    .param pmc __lowered_lex_491 
    nqp_decontainerize $P5001, __lowered_lex_490
    nqp_get_sc_object $P5002, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 178
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!stopper", 2
    set $S5001, __lowered_lex_491
    box $P5004, 1
    set $P5003[$S5001], $P5004
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "split-option-aliases" :subid("cuid_175_1431289891.89934") :anon :lex :outer("cuid_250_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1825
    .param pmc __lowered_lex_492 
    .param pmc __lowered_lex_493 
    set $S5001, __lowered_lex_493
    split $P5001, "|", $S5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "add-spec" :subid("cuid_176_1431289891.89934") :anon :lex :outer("cuid_250_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1830
    .param pmc __lowered_lex_495 
    .param pmc __lowered_lex_496 
    .local pmc __lowered_lex_497 
    .local pmc __lowered_lex_498 
    .local pmc __lowered_lex_499 
    .local pmc lowered_for_it__20 
    .local pmc __lowered_lex_494 
    nqp_get_sc_object $P5001, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_498, $P5001
    new $P5002, 'QRPA'
    set __lowered_lex_499, $P5002
    set $S5001, __lowered_lex_496
    index $I5001, $S5001, "=", 0
    box $P5003, $I5001
    set __lowered_lex_497, $P5003
    set $N5001, __lowered_lex_497
    set $N5002, 0
    islt $I5002, $N5001, $N5002
    unless $I5002 goto if812_else1827 
.annotate 'line', 1834
    box $P5004, "b"
    set __lowered_lex_498, $P5004
.annotate 'line', 1836
    nqp_decontainerize $P5005, __lowered_lex_495
    $P5006 = $P5005."split-option-aliases"(__lowered_lex_496)
    set __lowered_lex_499, $P5006
    goto if812_end1828
  if812_else1827:
.annotate 'line', 1837
    set $S5003, __lowered_lex_496
    set $N5004, __lowered_lex_497
    set $N5005, 1
    add $N5003, $N5004, $N5005
    set $I5003, $N5003
    substr $S5002, $S5003, $I5003
    box $P5007, $S5002
    set __lowered_lex_498, $P5007
.annotate 'line', 1839
    nqp_decontainerize $P5008, __lowered_lex_495
    set $S5005, __lowered_lex_496
    set $I5004, __lowered_lex_497
    substr $S5004, $S5005, 0, $I5004
    $P5009 = $P5008."split-option-aliases"($S5004)
    set __lowered_lex_499, $P5009
  if812_end1828:
    iter $P5010, __lowered_lex_499
    set lowered_for_it__20, $P5010
    new $P5016, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5016, while813_handlers1832
    push_eh $P5016
  while813_test1829:
    set $P5015, lowered_for_it__20
    unless lowered_for_it__20 goto while813_done1833 
  while813_redo1831:
    shift $P5011, lowered_for_it__20
    set __lowered_lex_494, $P5011
.annotate 'line', 1841
    nqp_decontainerize $P5012, __lowered_lex_495
    nqp_get_sc_object $P5013, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 178
    repr_get_attr_obj $P5014, $P5012, $P5013, "%!options", 1
    set $S5006, __lowered_lex_494
    set $P5014[$S5006], __lowered_lex_498
    set $P5015, __lowered_lex_498
    goto while813_test1829 
  while813_handlers1832:
    .get_results ($P5016)
    pop_upto_eh $P5016
    getattribute $P5017, $P5016, 'type'
    eq $P5017, .CONTROL_LOOP_NEXT, while813_test1829
    eq $P5017, .CONTROL_LOOP_REDO, while813_redo1831
  while813_done1833:
    pop_eh 
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "is-option" :subid("cuid_177_1431289891.89934") :anon :lex :outer("cuid_250_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1847
    .param pmc __lowered_lex_500 
    .param pmc __lowered_lex_501 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_1834
    .lex "RETURN", $P101
    set $S5001, __lowered_lex_501
    iseq $I5001, $S5001, "-"
    set $I5003, $I5001
    if $I5001 goto unless815_end1839 
    set $S5002, __lowered_lex_501
    iseq $I5002, $S5002, "--"
    set $I5003, $I5002
  unless815_end1839:
    unless $I5003 goto if814_end1837 
    $P5001 = "RETURN"(0)
  if814_end1837:
    set $S5004, __lowered_lex_501
    substr $S5003, $S5004, 0, 1
    iseq $I5004, $S5003, "-"
    unless $I5004 goto if816_end1841 
    $P5002 = "RETURN"(1)
  if816_end1841:
    box $P5003, 0
    goto lexotic_1835
  lexotic_1834:
    .get_results ($P5003)
  lexotic_1835:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "wants-value" :subid("cuid_178_1431289891.89934") :anon :lex :outer("cuid_250_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1853
    .param pmc __lowered_lex_502 
    .param pmc __lowered_lex_503 
    .local pmc __lowered_lex_504 
    .local pmc fb_tmp_164 
    nqp_decontainerize $P5001, __lowered_lex_502
    nqp_get_sc_object $P5002, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 178
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!options", 1
    set fb_tmp_164, $P5003
    repr_defined $I5001, fb_tmp_164
    unless $I5001 goto if817_else1842 
    set $S5001, __lowered_lex_503
    set $P5004, fb_tmp_164[$S5001]
    set $P5006, $P5004
    goto if817_end1843
  if817_else1842:
    null $P5005
    set $P5006, $P5005
  if817_end1843:
    unless_null $P5006, vivi_8181844
    nqp_get_sc_object $P5007, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5006, $P5007
  vivi_8181844:
    set __lowered_lex_504, $P5006
    set $S5003, __lowered_lex_504
    substr $S5002, $S5003, 0, 1
    iseq $I5002, $S5002, "s"
    .return ($I5002) 
.end
.HLL "nqp"
.namespace []
.sub "optional-value" :subid("cuid_179_1431289891.89934") :anon :lex :outer("cuid_250_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1858
    .param pmc __lowered_lex_505 
    .param pmc __lowered_lex_506 
    .local pmc __lowered_lex_507 
    .local pmc fb_tmp_165 
    nqp_decontainerize $P5001, __lowered_lex_505
    nqp_get_sc_object $P5002, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 178
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!options", 1
    set fb_tmp_165, $P5003
    repr_defined $I5001, fb_tmp_165
    unless $I5001 goto if819_else1845 
    set $S5001, __lowered_lex_506
    set $P5004, fb_tmp_165[$S5001]
    set $P5006, $P5004
    goto if819_end1846
  if819_else1845:
    null $P5005
    set $P5006, $P5005
  if819_end1846:
    unless_null $P5006, vivi_8201847
    nqp_get_sc_object $P5007, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5006, $P5007
  vivi_8201847:
    set __lowered_lex_507, $P5006
    set $S5002, __lowered_lex_507
    iseq $I5002, $S5002, "s?"
    .return ($I5002) 
.end
.HLL "nqp"
.namespace []
.sub "parse" :subid("cuid_180_1431289891.89934") :anon :lex :outer("cuid_250_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1863
    .param pmc __lowered_lex_518 
    .param pmc _lex_param_0 
    .const 'Sub' $P5124 = 'cuid_251_1431289891.89934' 
    capture_lex $P5124 
    .const 'Sub' $P5124 = 'cuid_252_1431289891.89934' 
    capture_lex $P5124 
    .lex "$i", $I101 
    .lex "$arg-count", $I102 
    .lex "$result", $P101 
    .lex "&get-value", $P102 
    .lex "&slurp-rest", $P103 
    .lex "@args", _lex_param_0 
    .local pmc __lowered_lex_517 
    .local pmc fb_tmp_168 
    .local pmc __lowered_lex_509 
    .local pmc __lowered_lex_510 
    .local pmc __lowered_lex_511 
    .local pmc __lowered_lex_512 
    .local pmc fb_tmp_169 
    .local pmc fb_tmp_170 
    .local pmc fb_tmp_171 
    .local pmc __lowered_lex_515 
    .local pmc __lowered_lex_516 
    .local pmc fb_tmp_172 
    .local pmc fb_tmp_173 
    .local pmc __lowered_lex_514 
    .local pmc __lowered_lex_513 
    .local pmc fb_tmp_174 
    .local pmc tmp_8 
    .local pmc fb_tmp_175 
    .local int tmp_9 
    .const 'Sub' $P5001 = 'cuid_251_1431289891.89934' 
    capture_lex $P5001
    set $P102, $P5001
    .const 'Sub' $P5002 = 'cuid_252_1431289891.89934' 
    capture_lex $P5002
    set $P103, $P5002
    root_new $P104, ['parrot';'Continuation']
    set_label $P104, lexotic_1861
    .lex "RETURN", $P104
    set $I101, 0
    elements $I5001, _lex_param_0
    set $I102, $I5001
.annotate 'line', 1867
    nqp_get_sc_object $P5003, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 172
    $P5004 = $P5003."new"()
    set $P101, $P5004
.annotate 'line', 1868
    $P101."init"()
  while827_test1863:
    islt $I5002, $I101, $I102
    box $P5121, $I5002
    set $P5120, $P5121
    unless $I5002 goto while827_done1867 
  while827_redo1865:
.annotate 'line', 1890
    set fb_tmp_168, _lex_param_0
    repr_defined $I5003, fb_tmp_168
    unless $I5003 goto if828_else1868 
    set $P5005, fb_tmp_168[$I101]
    set $P5007, $P5005
    goto if828_end1869
  if828_else1868:
    null $P5006
    set $P5007, $P5006
  if828_end1869:
    unless_null $P5007, vivi_8291870
    nqp_get_sc_object $P5008, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5007, $P5008
  vivi_8291870:
    set __lowered_lex_517, $P5007
.annotate 'line', 1892
    nqp_decontainerize $P5009, __lowered_lex_518
    $P5010 = $P5009."is-option"(__lowered_lex_517)
    unless $P5010 goto if830_else1871 
    set $S5002, __lowered_lex_517
    substr $S5001, $S5002, 0, 2
    iseq $I5004, $S5001, "--"
    unless $I5004 goto if831_else1873 
.annotate 'line', 1893
    set fb_tmp_169, _lex_param_0
    repr_defined $I5005, fb_tmp_169
    unless $I5005 goto if832_else1875 
    set $P5011, fb_tmp_169[$I101]
    set $P5013, $P5011
    goto if832_end1876
  if832_else1875:
    null $P5012
    set $P5013, $P5012
  if832_end1876:
    unless_null $P5013, vivi_8331877
    nqp_get_sc_object $P5014, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5013, $P5014
  vivi_8331877:
    set $S5004, $P5013
    substr $S5003, $S5004, 2
    box $P5015, $S5003
    set __lowered_lex_509, $P5015
    set $S5005, __lowered_lex_509
    index $I5006, $S5005, "=", 0
    box $P5016, $I5006
    set __lowered_lex_510, $P5016
    box $P5017, 1
    set __lowered_lex_511, $P5017
    box $P5018, 0
    set __lowered_lex_512, $P5018
    set $N5001, __lowered_lex_510
    set $N5002, 0
    isge $I5007, $N5001, $N5002
    unless $I5007 goto if834_else1878 
.annotate 'line', 1900
    set $S5007, __lowered_lex_509
    set $N5004, __lowered_lex_510
    set $N5005, 1
    add $N5003, $N5004, $N5005
    set $I5008, $N5003
    substr $S5006, $S5007, $I5008
    box $P5019, $S5006
    set __lowered_lex_511, $P5019
    set $S5009, __lowered_lex_509
    set $I5009, __lowered_lex_510
    substr $S5008, $S5009, 0, $I5009
    box $P5020, $S5008
    set __lowered_lex_509, $P5020
    box $P5021, 1
    set __lowered_lex_512, $P5021
    goto if834_end1879
  if834_else1878:
.annotate 'line', 1904
    nqp_decontainerize $P5022, __lowered_lex_518
    $P5023 = $P5022."optional-value"(__lowered_lex_509)
    set $P5026, $P5023
    unless $P5023 goto if835_end1881 
    box $P5024, ""
    set __lowered_lex_511, $P5024
    box $P5025, 1
    set __lowered_lex_512, $P5025
    set $P5026, __lowered_lex_512
  if835_end1881:
  if834_end1879:
    nqp_decontainerize $P5027, __lowered_lex_518
    nqp_get_sc_object $P5028, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 178
    repr_get_attr_obj $P5029, $P5027, $P5028, "%!options", 1
    set $S5010, __lowered_lex_509
    exists $I5010, $P5029[$S5010]
    if $I5010 goto unless836_end1883 
    set $S5012, __lowered_lex_509
    concat $S5011, "Illegal option --", $S5012
    box $P5030, $S5011
    die $P5030
  unless836_end1883:
.annotate 'line', 1909
    nqp_decontainerize $P5031, __lowered_lex_518
    $P5032 = $P5031."wants-value"(__lowered_lex_509)
    isfalse $I5011, $P5032
    box $P5034, $I5011
    set $P5033, $P5034
    unless $I5011 goto if838_end1887 
    set $P5033, __lowered_lex_512
  if838_end1887:
    unless $P5033 goto if837_end1885 
    set $S5015, __lowered_lex_509
    concat $S5014, "Option --", $S5015
    concat $S5013, $S5014, " does not allow a value"
    box $P5035, $S5013
    die $P5035
  if837_end1885:
    isfalse $I5012, __lowered_lex_512
    box $P5039, $I5012
    set $P5038, $P5039
    unless $I5012 goto if840_end1891 
.annotate 'line', 1910
    nqp_decontainerize $P5036, __lowered_lex_518
    $P5037 = $P5036."wants-value"(__lowered_lex_509)
    set $P5038, $P5037
  if840_end1891:
    unless $P5038 goto if839_end1889 
.annotate 'line', 1911
    set $S5017, __lowered_lex_509
    concat $S5016, "--", $S5017
    $P5040 = "&get-value"($S5016)
    set __lowered_lex_511, $P5040
  if839_end1889:
.annotate 'line', 1913
    $P101."add-option"(__lowered_lex_509, __lowered_lex_511)
    nqp_decontainerize $P5041, __lowered_lex_518
    nqp_get_sc_object $P5042, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 178
    repr_get_attr_obj $P5043, $P5041, $P5042, "%!stopper", 2
    set fb_tmp_170, $P5043
    repr_defined $I5013, fb_tmp_170
    unless $I5013 goto if842_else1894 
    set $S5019, __lowered_lex_509
    concat $S5018, "--", $S5019
    set $P5044, fb_tmp_170[$S5018]
    set $P5046, $P5044
    goto if842_end1895
  if842_else1894:
    null $P5045
    set $P5046, $P5045
  if842_end1895:
    unless_null $P5046, vivi_8431896
    nqp_get_sc_object $P5047, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5046, $P5047
  vivi_8431896:
    set $P5057, $P5046
    unless $P5046 goto if841_end1893 
    find_lex $P5049, "$?PACKAGE"
    get_who $P5048, $P5049
    set fb_tmp_171, $P5048
    repr_defined $I5014, fb_tmp_171
    unless $I5014 goto if844_else1897 
    set $P5050, fb_tmp_171["slurp-rest"]
    set $P5052, $P5050
    goto if844_end1898
  if844_else1897:
    null $P5051
    set $P5052, $P5051
  if844_end1898:
    unless_null $P5052, vivi_8461900
    nqp_get_sc_object $P5055, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 0
    get_who $P5054, $P5055
    set $P5053, $P5054["slurp-rest"]
    unless_null $P5053, vivi_8451899
    nqp_get_sc_object $P5056, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5053, $P5056
  vivi_8451899:
    set $P5052, $P5053
  vivi_8461900:
    set $P5057, $P5052
  if841_end1893:
    set $P5105, $P5057
    goto if831_end1874
  if831_else1873:
.annotate 'line', 1915
    set $S5021, __lowered_lex_517
    substr $S5020, $S5021, 1
    box $P5058, $S5020
    set __lowered_lex_515, $P5058
    set $S5022, __lowered_lex_515
    length $I5015, $S5022
    box $P5059, $I5015
    set __lowered_lex_516, $P5059
    set $N5006, __lowered_lex_516
    set $N5007, 1
    iseq $I5016, $N5006, $N5007
    unless $I5016 goto if847_else1901 
.annotate 'line', 1918
    nqp_decontainerize $P5060, __lowered_lex_518
    nqp_get_sc_object $P5061, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 178
    repr_get_attr_obj $P5062, $P5060, $P5061, "%!options", 1
    set fb_tmp_172, $P5062
    repr_defined $I5017, fb_tmp_172
    unless $I5017 goto if849_else1905 
    set $S5023, __lowered_lex_515
    set $P5063, fb_tmp_172[$S5023]
    set $P5065, $P5063
    goto if849_end1906
  if849_else1905:
    null $P5064
    set $P5065, $P5064
  if849_end1906:
    unless_null $P5065, vivi_8501907
    nqp_get_sc_object $P5066, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5065, $P5066
  vivi_8501907:
    if $P5065 goto unless848_end1904 
    set $S5025, __lowered_lex_515
    concat $S5024, "No such option -", $S5025
    box $P5067, $S5024
    die $P5067
  unless848_end1904:
.annotate 'line', 1921
    nqp_decontainerize $P5068, __lowered_lex_518
    $P5069 = $P5068."wants-value"(__lowered_lex_515)
    unless $P5069 goto if851_else1908 
.annotate 'line', 1922
.annotate 'line', 1923
    set $S5027, __lowered_lex_515
    concat $S5026, "-", $S5027
    $P5070 = "&get-value"($S5026)
    $P5071 = $P101."add-option"(__lowered_lex_515, $P5070)
    goto if851_end1909
  if851_else1908:
.annotate 'line', 1924
.annotate 'line', 1925
    $P5072 = $P101."add-option"(__lowered_lex_515, 1)
  if851_end1909:
    nqp_decontainerize $P5073, __lowered_lex_518
    nqp_get_sc_object $P5074, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 178
    repr_get_attr_obj $P5075, $P5073, $P5074, "%!stopper", 2
    set fb_tmp_173, $P5075
    repr_defined $I5018, fb_tmp_173
    unless $I5018 goto if853_else1912 
    set $S5029, __lowered_lex_515
    concat $S5028, "-", $S5029
    set $P5076, fb_tmp_173[$S5028]
    set $P5078, $P5076
    goto if853_end1913
  if853_else1912:
    null $P5077
    set $P5078, $P5077
  if853_end1913:
    unless_null $P5078, vivi_8541914
    nqp_get_sc_object $P5079, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5078, $P5079
  vivi_8541914:
    set $P5081, $P5078
    unless $P5078 goto if852_end1911 
.annotate 'line', 1927
    $P5080 = "&slurp-rest"()
    set $P5081, $P5080
  if852_end1911:
    set $P5104, $P5081
    goto if847_end1902
  if847_else1901:
.annotate 'line', 1928
    box $P5082, 0
    set __lowered_lex_514, $P5082
    new $P5101, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5101, while855_handlers1918
    push_eh $P5101
  while855_test1915:
    set $N5008, __lowered_lex_514
    set $N5009, __lowered_lex_516
    islt $I5019, $N5008, $N5009
    box $P5102, $I5019
    set $P5100, $P5102
    unless $I5019 goto while855_done1919 
  while855_redo1917:
.annotate 'line', 1930
    set $S5031, __lowered_lex_515
    set $I5020, __lowered_lex_514
    substr $S5030, $S5031, $I5020, 1
    box $P5083, $S5030
    set __lowered_lex_513, $P5083
    nqp_decontainerize $P5084, __lowered_lex_518
    nqp_get_sc_object $P5085, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 178
    repr_get_attr_obj $P5086, $P5084, $P5085, "%!options", 1
    set fb_tmp_174, $P5086
    repr_defined $I5021, fb_tmp_174
    unless $I5021 goto if857_else1922 
    set $S5032, __lowered_lex_513
    set $P5087, fb_tmp_174[$S5032]
    set $P5089, $P5087
    goto if857_end1923
  if857_else1922:
    null $P5088
    set $P5089, $P5088
  if857_end1923:
    unless_null $P5089, vivi_8581924
    nqp_get_sc_object $P5090, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5089, $P5090
  vivi_8581924:
    unless $P5089 goto if856_else1920 
.annotate 'line', 1932
.annotate 'line', 1933
    nqp_decontainerize $P5091, __lowered_lex_518
    $P5092 = $P5091."wants-value"(__lowered_lex_513)
    unless $P5092 goto if859_else1925 
    set $N5011, __lowered_lex_514
    set $N5012, 1
    add $N5010, $N5011, $N5012
    set $N5013, __lowered_lex_516
    iseq $I5022, $N5010, $N5013
    unless $I5022 goto if860_else1927 
.annotate 'line', 1934
.annotate 'line', 1935
    set $S5034, __lowered_lex_513
    concat $S5033, "-", $S5034
    $P5093 = "&get-value"($S5033)
    $P5094 = $P101."add-option"(__lowered_lex_513, $P5093)
    goto if860_end1928
  if860_else1927:
.annotate 'line', 1936
.annotate 'line', 1937
    set $S5036, __lowered_lex_515
    set $N5015, __lowered_lex_514
    set $N5016, 1
    add $N5014, $N5015, $N5016
    set $I5023, $N5014
    substr $S5035, $S5036, $I5023
    $P5095 = $P101."add-option"(__lowered_lex_513, $S5035)
  if860_end1928:
    die 0, .CONTROL_LOOP_LAST
    box $P5098, 0
    set $P5097, $P5098
    goto if859_end1926
  if859_else1925:
.annotate 'line', 1941
.annotate 'line', 1942
    $P5096 = $P101."add-option"(__lowered_lex_513, 1)
    set $P5097, $P5096
  if859_end1926:
    goto if856_end1921
  if856_else1920:
.annotate 'line', 1945
    set $S5041, __lowered_lex_515
    concat $S5040, "Grouped options '-", $S5041
    concat $S5039, $S5040, "' contain '"
    set $S5042, __lowered_lex_513
    concat $S5038, $S5039, $S5042
    concat $S5037, $S5038, "', which is not a valid option"
    box $P5099, $S5037
    die $P5099
  if856_end1921:
    set tmp_8, __lowered_lex_514
    set $I5025, tmp_8
    add $I5024, $I5025, 1
    box $P5100, $I5024
    set __lowered_lex_514, $P5100
    set $P5100, tmp_8
    goto while855_test1915 
  while855_handlers1918:
    .get_results ($P5101)
    pop_upto_eh $P5101
    getattribute $P5103, $P5101, 'type'
    eq $P5103, .CONTROL_LOOP_NEXT, while855_test1915
    eq $P5103, .CONTROL_LOOP_REDO, while855_redo1917
  while855_done1919:
    pop_eh 
    set $P5104, $P5100
  if847_end1902:
    set $P5105, $P5104
  if831_end1874:
    goto if830_end1872
  if830_else1871:
    nqp_decontainerize $P5106, __lowered_lex_518
    nqp_get_sc_object $P5107, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 178
    repr_get_attr_obj $P5108, $P5106, $P5107, "%!stopper", 2
    set fb_tmp_175, $P5108
    repr_defined $I5024, fb_tmp_175
    unless $I5024 goto if862_else1931 
    set $S5043, __lowered_lex_517
    set $P5109, fb_tmp_175[$S5043]
    set $P5111, $P5109
    goto if862_end1932
  if862_else1931:
    null $P5110
    set $P5111, $P5110
  if862_end1932:
    unless_null $P5111, vivi_8631933
    nqp_get_sc_object $P5112, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5111, $P5112
  vivi_8631933:
    unless $P5111 goto if861_else1929 
.annotate 'line', 1952
.annotate 'line', 1953
    $P5113 = "&slurp-rest"()
    set $P5119, $P5113
    goto if861_end1930
  if861_else1929:
.annotate 'line', 1954
.annotate 'line', 1955
    $P101."add-argument"(__lowered_lex_517)
    nqp_decontainerize $P5114, __lowered_lex_518
    nqp_get_sc_object $P5115, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 178
    repr_get_attr_obj $P5116, $P5114, $P5115, "$!stop-after-first-arg", 3
    set $P5118, $P5116
    unless $P5116 goto if864_end1935 
.annotate 'line', 1956
    $P5117 = "&slurp-rest"()
    set $P5118, $P5117
  if864_end1935:
    set $P5119, $P5118
  if861_end1930:
  if830_end1872:
    set tmp_9, $I101
    add $I5025, tmp_9, 1
    set $I101, $I5025
    box $P5122, tmp_9
    set $P5120, $P5122
    goto while827_test1863 
  while827_done1867:
    $P5123 = "RETURN"($P101)
    goto lexotic_1862
  lexotic_1861:
    .get_results ($P5123)
  lexotic_1862:
    .return ($P5123) 
.end
.HLL "nqp"
.namespace []
.sub "get-value" :subid("cuid_251_1431289891.89934") :anon :lex :outer("cuid_180_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1871
    .param pmc __lowered_lex_508 
    .local int tmp_5 
    .local pmc fb_tmp_166 
    find_lex $I5002, "$i"
    find_lex $I5004, "$arg-count"
    sub $I5003, $I5004, 1
    iseq $I5001, $I5002, $I5003
    unless $I5001 goto if821_else1848 
.annotate 'line', 1872
    set $S5003, __lowered_lex_508
    concat $S5002, "Option ", $S5003
    concat $S5001, $S5002, " needs a value"
    box $P5001, $S5001
    die $P5001
    set $P5007, $P5001
    goto if821_end1849
  if821_else1848:
.annotate 'line', 1874
    find_lex $I5005, "$i"
    set tmp_5, $I5005
    add $I5006, tmp_5, 1
    store_lex "$i", $I5006
    find_lex $P5002, "@args"
    set fb_tmp_166, $P5002
    repr_defined $I5005, fb_tmp_166
    unless $I5005 goto if822_else1850 
    find_lex $I5006, "$i"
    set $P5003, fb_tmp_166[$I5006]
    set $P5005, $P5003
    goto if822_end1851
  if822_else1850:
    null $P5004
    set $P5005, $P5004
  if822_end1851:
    unless_null $P5005, vivi_8231852
    nqp_get_sc_object $P5006, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5005, $P5006
  vivi_8231852:
    set $P5007, $P5005
  if821_end1849:
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "slurp-rest" :subid("cuid_252_1431289891.89934") :anon :lex :outer("cuid_180_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1882
    .local int tmp_6 
    .local pmc fb_tmp_167 
    .local int tmp_7 
    find_lex $I5001, "$i"
    set tmp_6, $I5001
    add $I5002, tmp_6, 1
    store_lex "$i", $I5002
  while824_test1853:
    find_lex $I5002, "$i"
    find_lex $I5003, "$arg-count"
    islt $I5001, $I5002, $I5003
    box $P5008, $I5001
    set $P5007, $P5008
    unless $I5001 goto while824_done1857 
  while824_redo1855:
.annotate 'line', 1884
.annotate 'line', 1885
    find_lex $P5001, "$result"
    find_lex $P5002, "@args"
    set fb_tmp_167, $P5002
    repr_defined $I5004, fb_tmp_167
    unless $I5004 goto if825_else1858 
    find_lex $I5005, "$i"
    set $P5003, fb_tmp_167[$I5005]
    set $P5005, $P5003
    goto if825_end1859
  if825_else1858:
    null $P5004
    set $P5005, $P5004
  if825_end1859:
    unless_null $P5005, vivi_8261860
    nqp_get_sc_object $P5006, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5005, $P5006
  vivi_8261860:
    $P5001."add-argument"($P5005)
    find_lex $I5006, "$i"
    set tmp_7, $I5006
    add $I5007, tmp_7, 1
    store_lex "$i", $I5007
    box $P5009, tmp_7
    set $P5007, $P5009
    goto while824_test1853 
  while824_done1857:
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_253_1431289891.89934") :anon :lex :outer("cuid_232_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1986
    .const 'Sub' $P5013 = 'cuid_181_1431289891.89934' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_182_1431289891.89934' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_183_1431289891.89934' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_184_1431289891.89934' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_185_1431289891.89934' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_186_1431289891.89934' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_187_1431289891.89934' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_188_1431289891.89934' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_189_1431289891.89934' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_190_1431289891.89934' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_191_1431289891.89934' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_192_1431289891.89934' 
    capture_lex $P5013 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_181_1431289891.89934' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_182_1431289891.89934' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_183_1431289891.89934' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_184_1431289891.89934' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_185_1431289891.89934' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_186_1431289891.89934' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_187_1431289891.89934' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_188_1431289891.89934' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_189_1431289891.89934' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_190_1431289891.89934' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_191_1431289891.89934' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_192_1431289891.89934' 
    capture_lex $P5012
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_181_1431289891.89934") :anon :lex :outer("cuid_253_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2012
    .param pmc __lowered_lex_519 
    .param pmc __lowered_lex_520 :named("handle") 
    .param pmc __lowered_lex_521 :named("description") :optional 
    .param int haz_param_17 :opt_flag 
    .local pmc fb_tmp_176 
    .local pmc fb_tmp_177 
    .local pmc fb_tmp_178 
    .local pmc pkg_viv_tmp_16 
    if haz_param_17, default1947
    box $P5043, "<unknown>"
    set __lowered_lex_521, $P5043
  default1947:
    nqp_decontainerize $P5001, __lowered_lex_519
    nqp_get_sc_object $P5002, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 189
    set $S5001, __lowered_lex_520
    nqp_create_sc $P5003, $S5001
    repr_bind_attr_obj $P5001, $P5002, "$!sc", 0, $P5003
    nqp_decontainerize $P5004, __lowered_lex_519
    nqp_get_sc_object $P5005, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 189
    repr_bind_attr_obj $P5004, $P5005, "$!handle", 1, __lowered_lex_520
    nqp_decontainerize $P5006, __lowered_lex_519
    nqp_get_sc_object $P5007, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 189
    new $P5008, 'QRPA'
    repr_bind_attr_obj $P5006, $P5007, "@!fixup_tasks", 6, $P5008
    nqp_decontainerize $P5009, __lowered_lex_519
    nqp_get_sc_object $P5010, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 189
    new $P5011, 'QRPA'
    repr_bind_attr_obj $P5009, $P5010, "@!load_dependency_tasks", 5, $P5011
    nqp_decontainerize $P5012, __lowered_lex_519
    nqp_get_sc_object $P5013, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 189
    find_dynamic_lex $P5014, "%*COMPILING"
    unless_null $P5014, fallback1940
    nqp_get_sc_object $P5016, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 0
    get_who $P5015, $P5016
    set pkg_viv_tmp_16, $P5015
    set fb_tmp_178, pkg_viv_tmp_16
    repr_defined $I5003, fb_tmp_178
    unless $I5003 goto if867_else1941 
    set $P5017, fb_tmp_178["%COMPILING"]
    set $P5019, $P5017
    goto if867_end1942
  if867_else1941:
    null $P5018
    set $P5019, $P5018
  if867_end1942:
    unless_null $P5019, vivi_8681943
    new $P5020, 'Hash'
    set pkg_viv_tmp_16["%COMPILING"], $P5020
    set $P5019, $P5020
  vivi_8681943:
    unless_null $P5019, vivi_8691944
    die "Contextual %*COMPILING not found"
    box $P5021, "Contextual %*COMPILING not found"
    set $P5019, $P5021
  vivi_8691944:
    set $P5014, $P5019
  fallback1940:
    set fb_tmp_177, $P5014
    repr_defined $I5002, fb_tmp_177
    unless $I5002 goto if866_else1938 
    set $P5022, fb_tmp_177["%?OPTIONS"]
    set $P5024, $P5022
    goto if866_end1939
  if866_else1938:
    null $P5023
    set $P5024, $P5023
  if866_end1939:
    unless_null $P5024, vivi_8701945
    nqp_get_sc_object $P5025, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5024, $P5025
  vivi_8701945:
    set fb_tmp_176, $P5024
    repr_defined $I5001, fb_tmp_176
    unless $I5001 goto if865_else1936 
    set $P5026, fb_tmp_176["precomp"]
    set $P5028, $P5026
    goto if865_end1937
  if865_else1936:
    null $P5027
    set $P5028, $P5027
  if865_end1937:
    unless_null $P5028, vivi_8711946
    nqp_get_sc_object $P5029, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5028, $P5029
  vivi_8711946:
    repr_bind_attr_obj $P5012, $P5013, "$!precomp_mode", 2, $P5028
    nqp_decontainerize $P5030, __lowered_lex_519
    nqp_get_sc_object $P5031, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 189
    box $P5032, 0
    repr_bind_attr_obj $P5030, $P5031, "$!num_code_refs", 3, $P5032
    nqp_decontainerize $P5033, __lowered_lex_519
    nqp_get_sc_object $P5034, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 189
    new $P5035, 'QRPA'
    repr_bind_attr_obj $P5033, $P5034, "$!code_ref_blocks", 4, $P5035
    nqp_decontainerize $P5036, __lowered_lex_519
    nqp_get_sc_object $P5037, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 189
    repr_get_attr_obj $P5038, $P5036, $P5037, "$!sc", 0
    $P5039 = $P5038."set_description"(__lowered_lex_521)
    nqp_decontainerize $P5040, __lowered_lex_519
    nqp_get_sc_object $P5041, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 189
    repr_get_attr_obj $P5042, $P5040, $P5041, "$!sc", 0
    nqp_push_compiling_sc $P5042
    .return ($P5042) 
.end
.HLL "nqp"
.namespace []
.sub "add_object" :subid("cuid_182_1431289891.89934") :anon :lex :outer("cuid_253_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2028
    .param pmc __lowered_lex_522 
    .param pmc __lowered_lex_523 
    .local pmc __lowered_lex_524 
    nqp_decontainerize $P5001, __lowered_lex_522
    nqp_get_sc_object $P5002, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 189
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!sc", 0
    nqp_set_sc_for_object __lowered_lex_523, $P5003
    nqp_decontainerize $P5004, __lowered_lex_522
    nqp_get_sc_object $P5005, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 189
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!sc", 0
    $P5007 = $P5006."elems"()
    set __lowered_lex_524, $P5007
    nqp_decontainerize $P5008, __lowered_lex_522
    nqp_get_sc_object $P5009, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 189
    repr_get_attr_obj $P5010, $P5008, $P5009, "$!sc", 0
    set $I5001, __lowered_lex_524
    set $P5010[$I5001], __lowered_lex_523
    .return (__lowered_lex_524) 
.end
.HLL "nqp"
.namespace []
.sub "add_root_code_ref" :subid("cuid_183_1431289891.89934") :anon :lex :outer("cuid_253_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2036
    .param pmc __lowered_lex_525 
    .param pmc __lowered_lex_526 
    .param pmc __lowered_lex_527 
    .local pmc __lowered_lex_528 
    nqp_decontainerize $P5001, __lowered_lex_525
    nqp_get_sc_object $P5002, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 189
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!num_code_refs", 3
    set __lowered_lex_528, $P5003
    nqp_decontainerize $P5004, __lowered_lex_525
    nqp_get_sc_object $P5005, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 189
    nqp_decontainerize $P5006, __lowered_lex_525
    nqp_get_sc_object $P5007, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 189
    repr_get_attr_obj $P5008, $P5006, $P5007, "$!num_code_refs", 3
    set $N5002, $P5008
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5009, $N5001
    repr_bind_attr_obj $P5004, $P5005, "$!num_code_refs", 3, $P5009
.annotate 'line', 2039
    nqp_decontainerize $P5010, __lowered_lex_525
    nqp_get_sc_object $P5011, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 189
    repr_get_attr_obj $P5012, $P5010, $P5011, "$!code_ref_blocks", 4
    $P5012."push"(__lowered_lex_527)
    nqp_decontainerize $P5013, __lowered_lex_525
    nqp_get_sc_object $P5014, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 189
    repr_get_attr_obj $P5015, $P5013, $P5014, "$!sc", 0
    set $I5001, __lowered_lex_528
    nqp_add_code_ref_to_sc $P5015, $I5001, __lowered_lex_526
    .return (__lowered_lex_528) 
.end
.HLL "nqp"
.namespace []
.sub "update_root_code_ref" :subid("cuid_184_1431289891.89934") :anon :lex :outer("cuid_253_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2045
    .param pmc __lowered_lex_529 
    .param pmc __lowered_lex_530 
    .param pmc __lowered_lex_531 
    nqp_decontainerize $P5001, __lowered_lex_529
    nqp_get_sc_object $P5002, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 189
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!sc", 0
    set $I5001, __lowered_lex_530
    nqp_add_code_ref_to_sc $P5003, $I5001, __lowered_lex_531
    .return (__lowered_lex_531) 
.end
.HLL "nqp"
.namespace []
.sub "is_precompilation_mode" :subid("cuid_185_1431289891.89934") :anon :lex :outer("cuid_253_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2050
    .param pmc __lowered_lex_532 
    nqp_decontainerize $P5001, __lowered_lex_532
    nqp_get_sc_object $P5002, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 189
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!precomp_mode", 2
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "add_load_dependency_task" :subid("cuid_186_1431289891.89934") :anon :lex :outer("cuid_253_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2056
    .param pmc __lowered_lex_533 
    .param pmc __lowered_lex_534 :named("deserialize_ast") :optional 
    .param int haz_param_18 :opt_flag 
    .param pmc __lowered_lex_535 :named("fixup_ast") :optional 
    .param int haz_param_19 :opt_flag 
    if haz_param_18, default1954
    nqp_get_sc_object $P5015, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_534, $P5015
  default1954:
    if haz_param_19, default1955
    nqp_get_sc_object $P5016, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_535, $P5016
  default1955:
    nqp_decontainerize $P5001, __lowered_lex_533
    nqp_get_sc_object $P5002, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 189
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!precomp_mode", 2
    unless $P5003 goto if872_else1948 
.annotate 'line', 2057
    set $P5008, __lowered_lex_534
    unless __lowered_lex_534 goto if873_end1951 
.annotate 'line', 2058
    nqp_decontainerize $P5004, __lowered_lex_533
    nqp_get_sc_object $P5005, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 189
    repr_get_attr_obj $P5006, $P5004, $P5005, "@!load_dependency_tasks", 5
    $P5007 = $P5006."push"(__lowered_lex_534)
    set $P5008, $P5007
  if873_end1951:
    set $P5014, $P5008
    goto if872_end1949
  if872_else1948:
.annotate 'line', 2060
    set $P5013, __lowered_lex_535
    unless __lowered_lex_535 goto if874_end1953 
.annotate 'line', 2061
    nqp_decontainerize $P5009, __lowered_lex_533
    nqp_get_sc_object $P5010, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 189
    repr_get_attr_obj $P5011, $P5009, $P5010, "@!load_dependency_tasks", 5
    $P5012 = $P5011."push"(__lowered_lex_535)
    set $P5013, $P5012
  if874_end1953:
    set $P5014, $P5013
  if872_end1949:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "add_fixup_task" :subid("cuid_187_1431289891.89934") :anon :lex :outer("cuid_253_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2067
    .param pmc __lowered_lex_536 
    .param pmc __lowered_lex_537 :named("deserialize_ast") :optional 
    .param int haz_param_20 :opt_flag 
    .param pmc __lowered_lex_538 :named("fixup_ast") :optional 
    .param int haz_param_21 :opt_flag 
    if haz_param_20, default1962
    nqp_get_sc_object $P5015, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_537, $P5015
  default1962:
    if haz_param_21, default1963
    nqp_get_sc_object $P5016, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_538, $P5016
  default1963:
    nqp_decontainerize $P5001, __lowered_lex_536
    nqp_get_sc_object $P5002, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 189
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!precomp_mode", 2
    unless $P5003 goto if875_else1956 
.annotate 'line', 2068
    set $P5008, __lowered_lex_537
    unless __lowered_lex_537 goto if876_end1959 
.annotate 'line', 2069
    nqp_decontainerize $P5004, __lowered_lex_536
    nqp_get_sc_object $P5005, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 189
    repr_get_attr_obj $P5006, $P5004, $P5005, "@!fixup_tasks", 6
    $P5007 = $P5006."push"(__lowered_lex_537)
    set $P5008, $P5007
  if876_end1959:
    set $P5014, $P5008
    goto if875_end1957
  if875_else1956:
.annotate 'line', 2071
    set $P5013, __lowered_lex_538
    unless __lowered_lex_538 goto if877_end1961 
.annotate 'line', 2072
    nqp_decontainerize $P5009, __lowered_lex_536
    nqp_get_sc_object $P5010, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 189
    repr_get_attr_obj $P5011, $P5009, $P5010, "@!fixup_tasks", 6
    $P5012 = $P5011."push"(__lowered_lex_538)
    set $P5013, $P5012
  if877_end1961:
    set $P5014, $P5013
  if875_end1957:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "sc" :subid("cuid_188_1431289891.89934") :anon :lex :outer("cuid_253_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2077
    .param pmc __lowered_lex_539 
    nqp_decontainerize $P5001, __lowered_lex_539
    nqp_get_sc_object $P5002, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 189
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!sc", 0
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "handle" :subid("cuid_189_1431289891.89934") :anon :lex :outer("cuid_253_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2082
    .param pmc __lowered_lex_540 
    nqp_decontainerize $P5001, __lowered_lex_540
    nqp_get_sc_object $P5002, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 189
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!handle", 1
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "code_ref_blocks" :subid("cuid_190_1431289891.89934") :anon :lex :outer("cuid_253_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2086
    .param pmc __lowered_lex_541 
    nqp_decontainerize $P5001, __lowered_lex_541
    nqp_get_sc_object $P5002, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 189
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!code_ref_blocks", 4
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "load_dependency_tasks" :subid("cuid_191_1431289891.89934") :anon :lex :outer("cuid_253_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2091
    .param pmc __lowered_lex_542 
    nqp_decontainerize $P5001, __lowered_lex_542
    nqp_get_sc_object $P5002, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 189
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!load_dependency_tasks", 5
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "fixup_tasks" :subid("cuid_192_1431289891.89934") :anon :lex :outer("cuid_253_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2096
    .param pmc __lowered_lex_543 
    nqp_decontainerize $P5001, __lowered_lex_543
    nqp_get_sc_object $P5002, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 189
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!fixup_tasks", 6
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_254_1431289891.89934") :anon :lex :outer("cuid_232_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2102
    .const 'Sub' $P5016 = 'cuid_255_1431289891.89934' 
    capture_lex $P5016 
    .const 'Sub' $P5016 = 'cuid_256_1431289891.89934' 
    capture_lex $P5016 
    .const 'Sub' $P5016 = 'cuid_257_1431289891.89934' 
    capture_lex $P5016 
    .const 'Sub' $P5016 = 'cuid_258_1431289891.89934' 
    capture_lex $P5016 
    .const 'Sub' $P5016 = 'cuid_259_1431289891.89934' 
    capture_lex $P5016 
    .const 'Sub' $P5016 = 'cuid_275_1431289891.89934' 
    capture_lex $P5016 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .lex "@handlers", $P103 
    .lex "$assert_used_args", $P104 
    .lex "Syntax", $P105 
    .lex "Actions", $P106 
    .lex "$actions", $P107 
    .lex "&sprintf", $P108 
    .lex "Directives", $P109 
    .lex "$directives", $P110 
    .lex "&sprintfdirectives", $P111 
    .lex "&sprintfaddargumenthandler", $P112 
    new $P5001, 'QRPA'
    set $P103, $P5001
    nqp_get_sc_object $P5002, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P104, $P5002
    .const 'Sub' $P5003 = 'cuid_255_1431289891.89934' 
    capture_lex $P5003
    set $P108, $P5003
    .const 'Sub' $P5004 = 'cuid_256_1431289891.89934' 
    capture_lex $P5004
    set $P111, $P5004
    .const 'Sub' $P5005 = 'cuid_257_1431289891.89934' 
    capture_lex $P5005
    set $P112, $P5005
    .const 'Sub' $P5006 = 'cuid_258_1431289891.89934' 
    capture_lex $P5006
    $P5007 = $P5006()
    .const 'Sub' $P5008 = 'cuid_259_1431289891.89934' 
    capture_lex $P5008
    $P5009 = $P5008()
.annotate 'line', 2502
    nqp_get_sc_object $P5010, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 224
    $P5011 = $P5010."new"()
    set $P107, $P5011
    set_hll_global "sprintf", $P108
    .const 'Sub' $P5012 = 'cuid_275_1431289891.89934' 
    capture_lex $P5012
    $P5013 = $P5012()
.annotate 'line', 2524
    nqp_get_sc_object $P5014, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 242
    $P5015 = $P5014."new"()
    set $P110, $P5015
    set_hll_global "sprintfdirectives", $P111
    set_hll_global "sprintfaddargumenthandler", $P112
    .return ($P112) 
.end
.HLL "nqp"
.namespace []
.sub "sprintf" :subid("cuid_255_1431289891.89934") :anon :lex :outer("cuid_254_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2504
    .param pmc __lowered_lex_544 
    .param pmc __lowered_lex_545 
    .lex "@*ARGS_HAVE", $P101 
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_1964
    .lex "RETURN", $P102
    set $P101, __lowered_lex_545
    box $P5001, 1
    store_lex "$assert_used_args", $P5001
.annotate 'line', 2507
    nqp_get_sc_object $P5002, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 203
    find_lex $P5003, "$actions"
    $P5004 = $P5002."parse"(__lowered_lex_544, $P5003 :named("actions"))
    $P5005 = $P5004."made"()
    $P5006 = "RETURN"($P5005)
    goto lexotic_1965
  lexotic_1964:
    .get_results ($P5006)
  lexotic_1965:
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "sprintfdirectives" :subid("cuid_256_1431289891.89934") :anon :lex :outer("cuid_254_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2526
    .param pmc __lowered_lex_546 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_1966
    .lex "RETURN", $P101
.annotate 'line', 2527
    nqp_get_sc_object $P5001, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 203
    find_lex $P5002, "$directives"
    $P5003 = $P5001."parse"(__lowered_lex_546, $P5002 :named("actions"))
    $P5004 = $P5003."made"()
    $P5005 = "RETURN"($P5004)
    goto lexotic_1967
  lexotic_1966:
    .get_results ($P5005)
  lexotic_1967:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "sprintfaddargumenthandler" :subid("cuid_257_1431289891.89934") :anon :lex :outer("cuid_254_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2532
    .param pmc __lowered_lex_547 
.annotate 'line', 2533
    find_lex $P5001, "@handlers"
    $P5001."push"(__lowered_lex_547)
    .return ("Added!") 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_258_1431289891.89934") :anon :lex :outer("cuid_254_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2106
    .const 'Sub' $P5021 = 'cuid_193_1431289891.89934' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_194_1431289891.89934' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_195_1431289891.89934' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_196_1431289891.89934' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_197_1431289891.89934' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_198_1431289891.89934' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_199_1431289891.89934' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_200_1431289891.89934' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_201_1431289891.89934' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_202_1431289891.89934' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_203_1431289891.89934' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_204_1431289891.89934' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_205_1431289891.89934' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_206_1431289891.89934' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_207_1431289891.89934' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_208_1431289891.89934' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_209_1431289891.89934' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_210_1431289891.89934' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_211_1431289891.89934' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_212_1431289891.89934' 
    capture_lex $P5021 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_193_1431289891.89934' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_194_1431289891.89934' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_195_1431289891.89934' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_196_1431289891.89934' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_197_1431289891.89934' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_198_1431289891.89934' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_199_1431289891.89934' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_200_1431289891.89934' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_201_1431289891.89934' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_202_1431289891.89934' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_203_1431289891.89934' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_204_1431289891.89934' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_205_1431289891.89934' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_206_1431289891.89934' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_207_1431289891.89934' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_208_1431289891.89934' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_209_1431289891.89934' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_210_1431289891.89934' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_211_1431289891.89934' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_212_1431289891.89934' 
    capture_lex $P5020
    .return ($P5020) 
.end
.HLL "nqp"
.namespace []
.sub "TOP" :subid("cuid_193_1431289891.89934") :anon :lex :outer("cuid_258_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2107
    .param pmc _lex_param_0 
    .lex "$*ARGS_USED", $P101 
    .lex utf8:"$\x{a2}", $P102 
    .lex "$/", $P103 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx878_start
    .local string rx878_tgt
    .local int rx878_pos
    .local int rx878_off
    .local int rx878_eos
    .local int rx878_rep
    .local pmc rx878_cur
    .local pmc rx878_curclass
    .local pmc rx878_bstack
    .local pmc rx878_cstack
    rx878_start = self."!cursor_start_all"()
    set rx878_cur, rx878_start[0]
    set rx878_tgt, rx878_start[1]
    set rx878_pos, rx878_start[2]
    set rx878_curclass, rx878_start[3]
    set rx878_bstack, rx878_start[4]
    set $I19, rx878_start[5]
    store_lex unicode:"$\x{a2}", rx878_cur
    length rx878_eos, rx878_tgt
    eq $I19, 1, rx878_restart1970
    gt rx878_pos, rx878_eos, rx878_fail1971
    repr_bind_attr_int rx878_cur, rx878_curclass, "$!pos", rx878_pos
    store_lex unicode:"$\x{a2}", rx878_cur
    box $P5001, 0
    set $P101, $P5001
    ne rx878_pos, 0, rx878_fail1971
    nqp_rxmark rx878_bstack, rxquantr880_done1977, rx878_pos, 0
  rxquantr880_loop1976:
    repr_bind_attr_int rx878_cur, rx878_curclass, "$!pos", rx878_pos
    $P11 = rx878_cur."statement"()
    repr_get_attr_int $I11, $P11, rx878_curclass, "$!pos"
    lt $I11, 0, rx878_fail1971
    goto rxsubrule881_pass1978
  rxsubrule881_back1979:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx878_curclass, "$!pos"
    lt $I11, 0, rx878_fail1971
  rxsubrule881_pass1978:
    rx878_cstack = rx878_cur."!cursor_capture"($P11, "statement")
    set_addr $I11, rxsubrule881_back1979
    push rx878_bstack, $I11
    push rx878_bstack, 0
    push rx878_bstack, rx878_pos
    elements $I11, rx878_cstack
    push rx878_bstack, $I11
    repr_get_attr_int rx878_pos, $P11, rx878_curclass, "$!pos"
    nqp_rxpeek $I19, rx878_bstack, rxquantr880_done1977
    inc $I19
    inc $I19
    set rx878_rep, rx878_bstack[$I19]
    nqp_rxcommit rx878_bstack, rxquantr880_done1977
    inc rx878_rep
    nqp_rxmark rx878_bstack, rxquantr880_done1977, rx878_pos, rx878_rep
    goto rxquantr880_loop1976
  rxquantr880_done1977:
    lt rx878_pos, rx878_eos, rx878_fail1971
    rx878_cur."!cursor_pass"(rx878_pos, "TOP")
    .return (rx878_cur)
  rx878_restart1970:
    repr_get_attr_obj rx878_cstack, rx878_cur, rx878_curclass, "$!cstack"
  rx878_fail1971:
    unless rx878_bstack, rx878_done1969
    pop $I19, rx878_bstack
    if_null rx878_cstack, rx878_cstack_done1974
    unless rx878_cstack, rx878_cstack_done1974
    dec $I19
    set $P11, rx878_cstack[$I19]
  rx878_cstack_done1974:
    pop rx878_rep, rx878_bstack
    pop rx878_pos, rx878_bstack
    pop $I19, rx878_bstack
    lt rx878_pos, -1, rx878_done1969
    lt rx878_pos, 0, rx878_fail1971
    eq $I19, 0, rx878_fail1971
    nqp_islist $I20, rx878_cstack
    unless $I20, rx878_jump1972
    elements $I18, rx878_bstack
    le $I18, 0, rx878_cut1973
    dec $I18
    set $I18, rx878_bstack[$I18]
  rx878_cut1973:
    assign rx878_cstack, $I18
  rx878_jump1972:
    jump $I19
  rx878_done1969:
    rx878_cur."!cursor_fail"()
    .return (rx878_cur) 
.end
.HLL "nqp"
.namespace []
.sub "panic" :subid("cuid_194_1431289891.89934") :anon :lex :outer("cuid_258_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2112
    .param pmc __lowered_lex_548 
    .param pmc __lowered_lex_549 
    die __lowered_lex_549
    .return (__lowered_lex_549) 
.end
.HLL "nqp"
.namespace []
.sub "statement" :subid("cuid_195_1431289891.89934") :anon :lex :outer("cuid_258_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2114
    .param pmc __lowered_lex_550 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc self 
    .local pmc __lowered_lex_551 
    set self, __lowered_lex_550
    .local pmc rx883_start
    .local string rx883_tgt
    .local int rx883_pos
    .local int rx883_off
    .local int rx883_eos
    .local int rx883_rep
    .local pmc rx883_cur
    .local pmc rx883_curclass
    .local pmc rx883_bstack
    .local pmc rx883_cstack
    rx883_start = self."!cursor_start_all"()
    set rx883_cur, rx883_start[0]
    set rx883_tgt, rx883_start[1]
    set rx883_pos, rx883_start[2]
    set rx883_curclass, rx883_start[3]
    set rx883_bstack, rx883_start[4]
    set $I19, rx883_start[5]
    store_lex unicode:"$\x{a2}", rx883_cur
    length rx883_eos, rx883_tgt
    eq $I19, 1, rx883_restart1983
    gt rx883_pos, rx883_eos, rx883_fail1984
    repr_get_attr_int $I11, self, rx883_curclass, "$!from"
    ne $I11, -1, rxscan884_done1990
    goto rxscan884_scan1989
  rxscan884_loop1988:
    inc rx883_pos
    gt rx883_pos, rx883_eos, rx883_fail1984
    repr_bind_attr_int rx883_cur, rx883_curclass, "$!from", rx883_pos
  rxscan884_scan1989:
    nqp_rxmark rx883_bstack, rxscan884_loop1988, rx883_pos, 0
  rxscan884_done1990:
    new $P11, "ResizableIntegerArray"
    assign $P11, 2
    assign $P11, 0
    nqp_push_label $P11, alt885_01992
    nqp_push_label $P11, alt885_12002
    nqp_rxmark rx883_bstack, alt885_end1991, -1, 0
    rx883_cur."!alt"(rx883_pos, "alt_nfa__12_1431289895.57604", $P11)
    goto rx883_fail1984
  alt885_01992:
    ge rx883_pos, rx883_eos, rx883_fail1984
    substr $S11, rx883_tgt, rx883_pos, 1
    index $I11, ucs4:"%", $S11
    lt $I11, 0, rx883_fail1984
  alt886_01994:
    nqp_rxmark rx883_bstack, alt886_12000, rx883_pos, 0
    new $P11, "ResizableIntegerArray"
    assign $P11, 2
    assign $P11, 0
    nqp_push_label $P11, alt887_01996
    nqp_push_label $P11, alt887_11998
    nqp_rxmark rx883_bstack, alt887_end1995, -1, 0
    rx883_cur."!alt"(rx883_pos, "alt_nfa__11_1431289895.57581", $P11)
    goto rx883_fail1984
  alt887_01996:
    repr_bind_attr_int rx883_cur, rx883_curclass, "$!pos", rx883_pos
    $P11 = rx883_cur."directive"()
    repr_get_attr_int $I11, $P11, rx883_curclass, "$!pos"
    lt $I11, 0, rx883_fail1984
    nqp_rxmark rx883_bstack, rxsubrule888_pass1997, -1, 0
  rxsubrule888_pass1997:
    rx883_cstack = rx883_cur."!cursor_capture"($P11, "directive")
    repr_get_attr_int rx883_pos, $P11, rx883_curclass, "$!pos"
    goto alt887_end1995
  alt887_11998:
    repr_bind_attr_int rx883_cur, rx883_curclass, "$!pos", rx883_pos
    $P11 = rx883_cur."escape"()
    repr_get_attr_int $I11, $P11, rx883_curclass, "$!pos"
    lt $I11, 0, rx883_fail1984
    nqp_rxmark rx883_bstack, rxsubrule889_pass1999, -1, 0
  rxsubrule889_pass1999:
    rx883_cstack = rx883_cur."!cursor_capture"($P11, "escape")
    repr_get_attr_int rx883_pos, $P11, rx883_curclass, "$!pos"
    goto alt887_end1995
  alt887_end1995:
    nqp_rxcommit rx883_bstack, alt887_end1995
    goto alt886_end1993
  alt886_12000:
.annotate 'line', 2117
    nqp_decontainerize $P5001, __lowered_lex_550
    $P5002 = $P5001."orig"()
    set $S5006, $P5002
    substr $S5005, $S5006, 1
    concat $S5004, "'", $S5005
    concat $S5003, $S5004, "' is not valid in sprintf format sequence '"
    nqp_decontainerize $P5003, __lowered_lex_550
    $P5004 = $P5003."orig"()
    set $S5007, $P5004
    concat $S5002, $S5003, $S5007
    concat $S5001, $S5002, "'"
    repr_bind_attr_int rx883_cur, rx883_curclass, "$!pos", rx883_pos
    $P11 = rx883_cur."panic"($S5001)
    repr_get_attr_int $I11, $P11, rx883_curclass, "$!pos"
    lt $I11, 0, rx883_fail1984
    repr_get_attr_int rx883_pos, $P11, rx883_curclass, "$!pos"
  alt886_end1993:
    goto alt885_end1991
  alt885_12002:
    ge rx883_pos, rx883_eos, rx883_fail1984
    substr $S11, rx883_tgt, rx883_pos, 1
    index $I11, ucs4:"%", $S11
    ge $I11, 0, rx883_fail1984
    repr_bind_attr_int rx883_cur, rx883_curclass, "$!pos", rx883_pos
    $P11 = rx883_cur."literal"()
    repr_get_attr_int $I11, $P11, rx883_curclass, "$!pos"
    lt $I11, 0, rx883_fail1984
    nqp_rxmark rx883_bstack, rxsubrule891_pass2003, -1, 0
  rxsubrule891_pass2003:
    rx883_cstack = rx883_cur."!cursor_capture"($P11, "literal")
    repr_get_attr_int rx883_pos, $P11, rx883_curclass, "$!pos"
    goto alt885_end1991
  alt885_end1991:
    nqp_rxcommit rx883_bstack, alt885_end1991
    rx883_cur."!cursor_pass"(rx883_pos, "statement")
    .return (rx883_cur)
  rx883_restart1983:
    repr_get_attr_obj rx883_cstack, rx883_cur, rx883_curclass, "$!cstack"
  rx883_fail1984:
    unless rx883_bstack, rx883_done1982
    pop $I19, rx883_bstack
    if_null rx883_cstack, rx883_cstack_done1987
    unless rx883_cstack, rx883_cstack_done1987
    dec $I19
    set $P11, rx883_cstack[$I19]
  rx883_cstack_done1987:
    pop rx883_rep, rx883_bstack
    pop rx883_pos, rx883_bstack
    pop $I19, rx883_bstack
    lt rx883_pos, -1, rx883_done1982
    lt rx883_pos, 0, rx883_fail1984
    eq $I19, 0, rx883_fail1984
    nqp_islist $I20, rx883_cstack
    unless $I20, rx883_jump1985
    elements $I18, rx883_bstack
    le $I18, 0, rx883_cut1986
    dec $I18
    set $I18, rx883_bstack[$I18]
  rx883_cut1986:
    assign rx883_cstack, $I18
  rx883_jump1985:
    jump $I19
  rx883_done1982:
    rx883_cur."!cursor_fail"()
    .return (rx883_cur) 
.end
.HLL "nqp"
.namespace []
.sub "directive" :subid("cuid_196_1431289891.89934") :anon :lex :outer("cuid_258_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2122
    .param pmc self 
    $P5001 = self."!protoregex"("directive")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<b>" :subid("cuid_197_1431289891.89934") :anon :lex :outer("cuid_258_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2123
    .param pmc __lowered_lex_552 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc self 
    .local pmc __lowered_lex_553 
    set self, __lowered_lex_552
    .local pmc rx892_start
    .local string rx892_tgt
    .local int rx892_pos
    .local int rx892_off
    .local int rx892_eos
    .local int rx892_rep
    .local pmc rx892_cur
    .local pmc rx892_curclass
    .local pmc rx892_bstack
    .local pmc rx892_cstack
    rx892_start = self."!cursor_start_all"()
    set rx892_cur, rx892_start[0]
    set rx892_tgt, rx892_start[1]
    set rx892_pos, rx892_start[2]
    set rx892_curclass, rx892_start[3]
    set rx892_bstack, rx892_start[4]
    set $I19, rx892_start[5]
    store_lex unicode:"$\x{a2}", rx892_cur
    length rx892_eos, rx892_tgt
    eq $I19, 1, rx892_restart2006
    gt rx892_pos, rx892_eos, rx892_fail2007
    repr_get_attr_int $I11, self, rx892_curclass, "$!from"
    ne $I11, -1, rxscan893_done2013
    goto rxscan893_scan2012
  rxscan893_loop2011:
    inc rx892_pos
    index rx892_pos, rx892_tgt, ucs4:"%", rx892_pos
    eq rx892_pos, -1, rx892_fail2007
    repr_bind_attr_int rx892_cur, rx892_curclass, "$!from", rx892_pos
  rxscan893_scan2012:
    nqp_rxmark rx892_bstack, rxscan893_loop2011, rx892_pos, 0
  rxscan893_done2013:
    add $I11, rx892_pos, 1
    gt $I11, rx892_eos, rx892_fail2007
    ord $I11, rx892_tgt, rx892_pos
    ne $I11, 37, rx892_fail2007
    add rx892_pos, 1
    nqp_rxmark rx892_bstack, rxquantr894_done2015, rx892_pos, 0
  rxquantr894_loop2014:
    repr_bind_attr_int rx892_cur, rx892_curclass, "$!pos", rx892_pos
    $P11 = rx892_cur."idx"()
    repr_get_attr_int $I11, $P11, rx892_curclass, "$!pos"
    lt $I11, 0, rx892_fail2007
    goto rxsubrule895_pass2016
  rxsubrule895_back2017:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx892_curclass, "$!pos"
    lt $I11, 0, rx892_fail2007
  rxsubrule895_pass2016:
    rx892_cstack = rx892_cur."!cursor_capture"($P11, "idx")
    set_addr $I11, rxsubrule895_back2017
    push rx892_bstack, $I11
    push rx892_bstack, 0
    push rx892_bstack, rx892_pos
    elements $I11, rx892_cstack
    push rx892_bstack, $I11
    repr_get_attr_int rx892_pos, $P11, rx892_curclass, "$!pos"
    nqp_rxpeek $I19, rx892_bstack, rxquantr894_done2015
    inc $I19
    inc $I19
    set rx892_rep, rx892_bstack[$I19]
    nqp_rxcommit rx892_bstack, rxquantr894_done2015
    inc rx892_rep
  rxquantr894_done2015:
    nqp_rxmark rx892_bstack, rxquantr896_done2019, rx892_pos, 0
  rxquantr896_loop2018:
    repr_bind_attr_int rx892_cur, rx892_curclass, "$!pos", rx892_pos
    $P11 = rx892_cur."flags"()
    repr_get_attr_int $I11, $P11, rx892_curclass, "$!pos"
    lt $I11, 0, rx892_fail2007
    goto rxsubrule897_pass2020
  rxsubrule897_back2021:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx892_curclass, "$!pos"
    lt $I11, 0, rx892_fail2007
  rxsubrule897_pass2020:
    rx892_cstack = rx892_cur."!cursor_capture"($P11, "flags")
    set_addr $I11, rxsubrule897_back2021
    push rx892_bstack, $I11
    push rx892_bstack, 0
    push rx892_bstack, rx892_pos
    elements $I11, rx892_cstack
    push rx892_bstack, $I11
    repr_get_attr_int rx892_pos, $P11, rx892_curclass, "$!pos"
    nqp_rxpeek $I19, rx892_bstack, rxquantr896_done2019
    inc $I19
    inc $I19
    set rx892_rep, rx892_bstack[$I19]
    nqp_rxcommit rx892_bstack, rxquantr896_done2019
    inc rx892_rep
    nqp_rxmark rx892_bstack, rxquantr896_done2019, rx892_pos, rx892_rep
    goto rxquantr896_loop2018
  rxquantr896_done2019:
    nqp_rxmark rx892_bstack, rxquantr898_done2023, rx892_pos, 0
  rxquantr898_loop2022:
    repr_bind_attr_int rx892_cur, rx892_curclass, "$!pos", rx892_pos
    $P11 = rx892_cur."size"()
    repr_get_attr_int $I11, $P11, rx892_curclass, "$!pos"
    lt $I11, 0, rx892_fail2007
    goto rxsubrule899_pass2024
  rxsubrule899_back2025:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx892_curclass, "$!pos"
    lt $I11, 0, rx892_fail2007
  rxsubrule899_pass2024:
    rx892_cstack = rx892_cur."!cursor_capture"($P11, "size")
    set_addr $I11, rxsubrule899_back2025
    push rx892_bstack, $I11
    push rx892_bstack, 0
    push rx892_bstack, rx892_pos
    elements $I11, rx892_cstack
    push rx892_bstack, $I11
    repr_get_attr_int rx892_pos, $P11, rx892_curclass, "$!pos"
    nqp_rxpeek $I19, rx892_bstack, rxquantr898_done2023
    inc $I19
    inc $I19
    set rx892_rep, rx892_bstack[$I19]
    nqp_rxcommit rx892_bstack, rxquantr898_done2023
    inc rx892_rep
  rxquantr898_done2023:
    nqp_rxmark rx892_bstack, rxquantr900_done2027, rx892_pos, 0
  rxquantr900_loop2026:
    add $I11, rx892_pos, 1
    gt $I11, rx892_eos, rx892_fail2007
    ord $I11, rx892_tgt, rx892_pos
    ne $I11, 46, rx892_fail2007
    add rx892_pos, 1
    repr_bind_attr_int rx892_cur, rx892_curclass, "$!pos", rx892_pos
    $P11 = rx892_cur."size"()
    repr_get_attr_int $I11, $P11, rx892_curclass, "$!pos"
    lt $I11, 0, rx892_fail2007
    nqp_rxmark rx892_bstack, rxsubrule901_pass2028, -1, 0
  rxsubrule901_pass2028:
    rx892_cstack = rx892_cur."!cursor_capture"($P11, "precision")
    repr_get_attr_int rx892_pos, $P11, rx892_curclass, "$!pos"
    nqp_rxpeek $I19, rx892_bstack, rxquantr900_done2027
    inc $I19
    inc $I19
    set rx892_rep, rx892_bstack[$I19]
    nqp_rxcommit rx892_bstack, rxquantr900_done2027
    inc rx892_rep
  rxquantr900_done2027:
    nqp_rxmark rx892_bstack, rxcap902_fail2030, rx892_pos, 0
    ge rx892_pos, rx892_eos, rx892_fail2007
    substr $S11, rx892_tgt, rx892_pos, 1
    index $I11, ucs4:"bB", $S11
    lt $I11, 0, rx892_fail2007
    inc rx892_pos
    nqp_rxpeek $I19, rx892_bstack, rxcap902_fail2030
    inc $I19
    set $I11, rx892_bstack[$I19]
    repr_bind_attr_int rx892_cur, rx892_curclass, "$!pos", rx892_pos
    $P11 = rx892_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx892_pos)
    rx892_cstack = rx892_cur."!cursor_capture"($P11, "sym")
    goto rxcap902_done2029
  rxcap902_fail2030:
    goto rx892_fail2007
  rxcap902_done2029:
    rx892_cur."!cursor_pass"(rx892_pos, "directive:sym<b>")
    .return (rx892_cur)
  rx892_restart2006:
    repr_get_attr_obj rx892_cstack, rx892_cur, rx892_curclass, "$!cstack"
  rx892_fail2007:
    unless rx892_bstack, rx892_done2005
    pop $I19, rx892_bstack
    if_null rx892_cstack, rx892_cstack_done2010
    unless rx892_cstack, rx892_cstack_done2010
    dec $I19
    set $P11, rx892_cstack[$I19]
  rx892_cstack_done2010:
    pop rx892_rep, rx892_bstack
    pop rx892_pos, rx892_bstack
    pop $I19, rx892_bstack
    lt rx892_pos, -1, rx892_done2005
    lt rx892_pos, 0, rx892_fail2007
    eq $I19, 0, rx892_fail2007
    nqp_islist $I20, rx892_cstack
    unless $I20, rx892_jump2008
    elements $I18, rx892_bstack
    le $I18, 0, rx892_cut2009
    dec $I18
    set $I18, rx892_bstack[$I18]
  rx892_cut2009:
    assign rx892_cstack, $I18
  rx892_jump2008:
    jump $I19
  rx892_done2005:
    rx892_cur."!cursor_fail"()
    .return (rx892_cur) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<c>" :subid("cuid_198_1431289891.89934") :anon :lex :outer("cuid_258_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2124
    .param pmc __lowered_lex_554 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc self 
    .local pmc __lowered_lex_555 
    set self, __lowered_lex_554
    .local pmc rx903_start
    .local string rx903_tgt
    .local int rx903_pos
    .local int rx903_off
    .local int rx903_eos
    .local int rx903_rep
    .local pmc rx903_cur
    .local pmc rx903_curclass
    .local pmc rx903_bstack
    .local pmc rx903_cstack
    rx903_start = self."!cursor_start_all"()
    set rx903_cur, rx903_start[0]
    set rx903_tgt, rx903_start[1]
    set rx903_pos, rx903_start[2]
    set rx903_curclass, rx903_start[3]
    set rx903_bstack, rx903_start[4]
    set $I19, rx903_start[5]
    store_lex unicode:"$\x{a2}", rx903_cur
    length rx903_eos, rx903_tgt
    eq $I19, 1, rx903_restart2033
    gt rx903_pos, rx903_eos, rx903_fail2034
    repr_get_attr_int $I11, self, rx903_curclass, "$!from"
    ne $I11, -1, rxscan904_done2040
    goto rxscan904_scan2039
  rxscan904_loop2038:
    inc rx903_pos
    index rx903_pos, rx903_tgt, ucs4:"%", rx903_pos
    eq rx903_pos, -1, rx903_fail2034
    repr_bind_attr_int rx903_cur, rx903_curclass, "$!from", rx903_pos
  rxscan904_scan2039:
    nqp_rxmark rx903_bstack, rxscan904_loop2038, rx903_pos, 0
  rxscan904_done2040:
    add $I11, rx903_pos, 1
    gt $I11, rx903_eos, rx903_fail2034
    ord $I11, rx903_tgt, rx903_pos
    ne $I11, 37, rx903_fail2034
    add rx903_pos, 1
    nqp_rxmark rx903_bstack, rxquantr905_done2042, rx903_pos, 0
  rxquantr905_loop2041:
    repr_bind_attr_int rx903_cur, rx903_curclass, "$!pos", rx903_pos
    $P11 = rx903_cur."idx"()
    repr_get_attr_int $I11, $P11, rx903_curclass, "$!pos"
    lt $I11, 0, rx903_fail2034
    goto rxsubrule906_pass2043
  rxsubrule906_back2044:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx903_curclass, "$!pos"
    lt $I11, 0, rx903_fail2034
  rxsubrule906_pass2043:
    rx903_cstack = rx903_cur."!cursor_capture"($P11, "idx")
    set_addr $I11, rxsubrule906_back2044
    push rx903_bstack, $I11
    push rx903_bstack, 0
    push rx903_bstack, rx903_pos
    elements $I11, rx903_cstack
    push rx903_bstack, $I11
    repr_get_attr_int rx903_pos, $P11, rx903_curclass, "$!pos"
    nqp_rxpeek $I19, rx903_bstack, rxquantr905_done2042
    inc $I19
    inc $I19
    set rx903_rep, rx903_bstack[$I19]
    nqp_rxcommit rx903_bstack, rxquantr905_done2042
    inc rx903_rep
  rxquantr905_done2042:
    nqp_rxmark rx903_bstack, rxquantr907_done2046, rx903_pos, 0
  rxquantr907_loop2045:
    repr_bind_attr_int rx903_cur, rx903_curclass, "$!pos", rx903_pos
    $P11 = rx903_cur."flags"()
    repr_get_attr_int $I11, $P11, rx903_curclass, "$!pos"
    lt $I11, 0, rx903_fail2034
    goto rxsubrule908_pass2047
  rxsubrule908_back2048:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx903_curclass, "$!pos"
    lt $I11, 0, rx903_fail2034
  rxsubrule908_pass2047:
    rx903_cstack = rx903_cur."!cursor_capture"($P11, "flags")
    set_addr $I11, rxsubrule908_back2048
    push rx903_bstack, $I11
    push rx903_bstack, 0
    push rx903_bstack, rx903_pos
    elements $I11, rx903_cstack
    push rx903_bstack, $I11
    repr_get_attr_int rx903_pos, $P11, rx903_curclass, "$!pos"
    nqp_rxpeek $I19, rx903_bstack, rxquantr907_done2046
    inc $I19
    inc $I19
    set rx903_rep, rx903_bstack[$I19]
    nqp_rxcommit rx903_bstack, rxquantr907_done2046
    inc rx903_rep
    nqp_rxmark rx903_bstack, rxquantr907_done2046, rx903_pos, rx903_rep
    goto rxquantr907_loop2045
  rxquantr907_done2046:
    nqp_rxmark rx903_bstack, rxquantr909_done2050, rx903_pos, 0
  rxquantr909_loop2049:
    repr_bind_attr_int rx903_cur, rx903_curclass, "$!pos", rx903_pos
    $P11 = rx903_cur."size"()
    repr_get_attr_int $I11, $P11, rx903_curclass, "$!pos"
    lt $I11, 0, rx903_fail2034
    goto rxsubrule910_pass2051
  rxsubrule910_back2052:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx903_curclass, "$!pos"
    lt $I11, 0, rx903_fail2034
  rxsubrule910_pass2051:
    rx903_cstack = rx903_cur."!cursor_capture"($P11, "size")
    set_addr $I11, rxsubrule910_back2052
    push rx903_bstack, $I11
    push rx903_bstack, 0
    push rx903_bstack, rx903_pos
    elements $I11, rx903_cstack
    push rx903_bstack, $I11
    repr_get_attr_int rx903_pos, $P11, rx903_curclass, "$!pos"
    nqp_rxpeek $I19, rx903_bstack, rxquantr909_done2050
    inc $I19
    inc $I19
    set rx903_rep, rx903_bstack[$I19]
    nqp_rxcommit rx903_bstack, rxquantr909_done2050
    inc rx903_rep
  rxquantr909_done2050:
    nqp_rxmark rx903_bstack, rxcap911_fail2054, rx903_pos, 0
    add $I11, rx903_pos, 1
    gt $I11, rx903_eos, rx903_fail2034
    ord $I11, rx903_tgt, rx903_pos
    ne $I11, 99, rx903_fail2034
    add rx903_pos, 1
    nqp_rxpeek $I19, rx903_bstack, rxcap911_fail2054
    inc $I19
    set $I11, rx903_bstack[$I19]
    repr_bind_attr_int rx903_cur, rx903_curclass, "$!pos", rx903_pos
    $P11 = rx903_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx903_pos)
    rx903_cstack = rx903_cur."!cursor_capture"($P11, "sym")
    goto rxcap911_done2053
  rxcap911_fail2054:
    goto rx903_fail2034
  rxcap911_done2053:
    rx903_cur."!cursor_pass"(rx903_pos, "directive:sym<c>")
    .return (rx903_cur)
  rx903_restart2033:
    repr_get_attr_obj rx903_cstack, rx903_cur, rx903_curclass, "$!cstack"
  rx903_fail2034:
    unless rx903_bstack, rx903_done2032
    pop $I19, rx903_bstack
    if_null rx903_cstack, rx903_cstack_done2037
    unless rx903_cstack, rx903_cstack_done2037
    dec $I19
    set $P11, rx903_cstack[$I19]
  rx903_cstack_done2037:
    pop rx903_rep, rx903_bstack
    pop rx903_pos, rx903_bstack
    pop $I19, rx903_bstack
    lt rx903_pos, -1, rx903_done2032
    lt rx903_pos, 0, rx903_fail2034
    eq $I19, 0, rx903_fail2034
    nqp_islist $I20, rx903_cstack
    unless $I20, rx903_jump2035
    elements $I18, rx903_bstack
    le $I18, 0, rx903_cut2036
    dec $I18
    set $I18, rx903_bstack[$I18]
  rx903_cut2036:
    assign rx903_cstack, $I18
  rx903_jump2035:
    jump $I19
  rx903_done2032:
    rx903_cur."!cursor_fail"()
    .return (rx903_cur) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<d>" :subid("cuid_199_1431289891.89934") :anon :lex :outer("cuid_258_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2125
    .param pmc __lowered_lex_556 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc self 
    .local pmc __lowered_lex_557 
    set self, __lowered_lex_556
    .local pmc rx912_start
    .local string rx912_tgt
    .local int rx912_pos
    .local int rx912_off
    .local int rx912_eos
    .local int rx912_rep
    .local pmc rx912_cur
    .local pmc rx912_curclass
    .local pmc rx912_bstack
    .local pmc rx912_cstack
    rx912_start = self."!cursor_start_all"()
    set rx912_cur, rx912_start[0]
    set rx912_tgt, rx912_start[1]
    set rx912_pos, rx912_start[2]
    set rx912_curclass, rx912_start[3]
    set rx912_bstack, rx912_start[4]
    set $I19, rx912_start[5]
    store_lex unicode:"$\x{a2}", rx912_cur
    length rx912_eos, rx912_tgt
    eq $I19, 1, rx912_restart2057
    gt rx912_pos, rx912_eos, rx912_fail2058
    repr_get_attr_int $I11, self, rx912_curclass, "$!from"
    ne $I11, -1, rxscan913_done2064
    goto rxscan913_scan2063
  rxscan913_loop2062:
    inc rx912_pos
    index rx912_pos, rx912_tgt, ucs4:"%", rx912_pos
    eq rx912_pos, -1, rx912_fail2058
    repr_bind_attr_int rx912_cur, rx912_curclass, "$!from", rx912_pos
  rxscan913_scan2063:
    nqp_rxmark rx912_bstack, rxscan913_loop2062, rx912_pos, 0
  rxscan913_done2064:
    add $I11, rx912_pos, 1
    gt $I11, rx912_eos, rx912_fail2058
    ord $I11, rx912_tgt, rx912_pos
    ne $I11, 37, rx912_fail2058
    add rx912_pos, 1
    nqp_rxmark rx912_bstack, rxquantr914_done2066, rx912_pos, 0
  rxquantr914_loop2065:
    repr_bind_attr_int rx912_cur, rx912_curclass, "$!pos", rx912_pos
    $P11 = rx912_cur."idx"()
    repr_get_attr_int $I11, $P11, rx912_curclass, "$!pos"
    lt $I11, 0, rx912_fail2058
    goto rxsubrule915_pass2067
  rxsubrule915_back2068:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx912_curclass, "$!pos"
    lt $I11, 0, rx912_fail2058
  rxsubrule915_pass2067:
    rx912_cstack = rx912_cur."!cursor_capture"($P11, "idx")
    set_addr $I11, rxsubrule915_back2068
    push rx912_bstack, $I11
    push rx912_bstack, 0
    push rx912_bstack, rx912_pos
    elements $I11, rx912_cstack
    push rx912_bstack, $I11
    repr_get_attr_int rx912_pos, $P11, rx912_curclass, "$!pos"
    nqp_rxpeek $I19, rx912_bstack, rxquantr914_done2066
    inc $I19
    inc $I19
    set rx912_rep, rx912_bstack[$I19]
    nqp_rxcommit rx912_bstack, rxquantr914_done2066
    inc rx912_rep
  rxquantr914_done2066:
    nqp_rxmark rx912_bstack, rxquantr916_done2070, rx912_pos, 0
  rxquantr916_loop2069:
    repr_bind_attr_int rx912_cur, rx912_curclass, "$!pos", rx912_pos
    $P11 = rx912_cur."flags"()
    repr_get_attr_int $I11, $P11, rx912_curclass, "$!pos"
    lt $I11, 0, rx912_fail2058
    goto rxsubrule917_pass2071
  rxsubrule917_back2072:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx912_curclass, "$!pos"
    lt $I11, 0, rx912_fail2058
  rxsubrule917_pass2071:
    rx912_cstack = rx912_cur."!cursor_capture"($P11, "flags")
    set_addr $I11, rxsubrule917_back2072
    push rx912_bstack, $I11
    push rx912_bstack, 0
    push rx912_bstack, rx912_pos
    elements $I11, rx912_cstack
    push rx912_bstack, $I11
    repr_get_attr_int rx912_pos, $P11, rx912_curclass, "$!pos"
    nqp_rxpeek $I19, rx912_bstack, rxquantr916_done2070
    inc $I19
    inc $I19
    set rx912_rep, rx912_bstack[$I19]
    nqp_rxcommit rx912_bstack, rxquantr916_done2070
    inc rx912_rep
    nqp_rxmark rx912_bstack, rxquantr916_done2070, rx912_pos, rx912_rep
    goto rxquantr916_loop2069
  rxquantr916_done2070:
    nqp_rxmark rx912_bstack, rxquantr918_done2074, rx912_pos, 0
  rxquantr918_loop2073:
    repr_bind_attr_int rx912_cur, rx912_curclass, "$!pos", rx912_pos
    $P11 = rx912_cur."size"()
    repr_get_attr_int $I11, $P11, rx912_curclass, "$!pos"
    lt $I11, 0, rx912_fail2058
    goto rxsubrule919_pass2075
  rxsubrule919_back2076:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx912_curclass, "$!pos"
    lt $I11, 0, rx912_fail2058
  rxsubrule919_pass2075:
    rx912_cstack = rx912_cur."!cursor_capture"($P11, "size")
    set_addr $I11, rxsubrule919_back2076
    push rx912_bstack, $I11
    push rx912_bstack, 0
    push rx912_bstack, rx912_pos
    elements $I11, rx912_cstack
    push rx912_bstack, $I11
    repr_get_attr_int rx912_pos, $P11, rx912_curclass, "$!pos"
    nqp_rxpeek $I19, rx912_bstack, rxquantr918_done2074
    inc $I19
    inc $I19
    set rx912_rep, rx912_bstack[$I19]
    nqp_rxcommit rx912_bstack, rxquantr918_done2074
    inc rx912_rep
  rxquantr918_done2074:
    nqp_rxmark rx912_bstack, rxquantr920_done2078, rx912_pos, 0
  rxquantr920_loop2077:
    add $I11, rx912_pos, 1
    gt $I11, rx912_eos, rx912_fail2058
    ord $I11, rx912_tgt, rx912_pos
    ne $I11, 46, rx912_fail2058
    add rx912_pos, 1
    repr_bind_attr_int rx912_cur, rx912_curclass, "$!pos", rx912_pos
    $P11 = rx912_cur."size"()
    repr_get_attr_int $I11, $P11, rx912_curclass, "$!pos"
    lt $I11, 0, rx912_fail2058
    nqp_rxmark rx912_bstack, rxsubrule921_pass2079, -1, 0
  rxsubrule921_pass2079:
    rx912_cstack = rx912_cur."!cursor_capture"($P11, "precision")
    repr_get_attr_int rx912_pos, $P11, rx912_curclass, "$!pos"
    nqp_rxpeek $I19, rx912_bstack, rxquantr920_done2078
    inc $I19
    inc $I19
    set rx912_rep, rx912_bstack[$I19]
    nqp_rxcommit rx912_bstack, rxquantr920_done2078
    inc rx912_rep
  rxquantr920_done2078:
    nqp_rxmark rx912_bstack, rxcap922_fail2081, rx912_pos, 0
    ge rx912_pos, rx912_eos, rx912_fail2058
    substr $S11, rx912_tgt, rx912_pos, 1
    index $I11, ucs4:"di", $S11
    lt $I11, 0, rx912_fail2058
    inc rx912_pos
    nqp_rxpeek $I19, rx912_bstack, rxcap922_fail2081
    inc $I19
    set $I11, rx912_bstack[$I19]
    repr_bind_attr_int rx912_cur, rx912_curclass, "$!pos", rx912_pos
    $P11 = rx912_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx912_pos)
    rx912_cstack = rx912_cur."!cursor_capture"($P11, "sym")
    goto rxcap922_done2080
  rxcap922_fail2081:
    goto rx912_fail2058
  rxcap922_done2080:
    rx912_cur."!cursor_pass"(rx912_pos, "directive:sym<d>")
    .return (rx912_cur)
  rx912_restart2057:
    repr_get_attr_obj rx912_cstack, rx912_cur, rx912_curclass, "$!cstack"
  rx912_fail2058:
    unless rx912_bstack, rx912_done2056
    pop $I19, rx912_bstack
    if_null rx912_cstack, rx912_cstack_done2061
    unless rx912_cstack, rx912_cstack_done2061
    dec $I19
    set $P11, rx912_cstack[$I19]
  rx912_cstack_done2061:
    pop rx912_rep, rx912_bstack
    pop rx912_pos, rx912_bstack
    pop $I19, rx912_bstack
    lt rx912_pos, -1, rx912_done2056
    lt rx912_pos, 0, rx912_fail2058
    eq $I19, 0, rx912_fail2058
    nqp_islist $I20, rx912_cstack
    unless $I20, rx912_jump2059
    elements $I18, rx912_bstack
    le $I18, 0, rx912_cut2060
    dec $I18
    set $I18, rx912_bstack[$I18]
  rx912_cut2060:
    assign rx912_cstack, $I18
  rx912_jump2059:
    jump $I19
  rx912_done2056:
    rx912_cur."!cursor_fail"()
    .return (rx912_cur) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<e>" :subid("cuid_200_1431289891.89934") :anon :lex :outer("cuid_258_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2126
    .param pmc __lowered_lex_558 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc self 
    .local pmc __lowered_lex_559 
    set self, __lowered_lex_558
    .local pmc rx923_start
    .local string rx923_tgt
    .local int rx923_pos
    .local int rx923_off
    .local int rx923_eos
    .local int rx923_rep
    .local pmc rx923_cur
    .local pmc rx923_curclass
    .local pmc rx923_bstack
    .local pmc rx923_cstack
    rx923_start = self."!cursor_start_all"()
    set rx923_cur, rx923_start[0]
    set rx923_tgt, rx923_start[1]
    set rx923_pos, rx923_start[2]
    set rx923_curclass, rx923_start[3]
    set rx923_bstack, rx923_start[4]
    set $I19, rx923_start[5]
    store_lex unicode:"$\x{a2}", rx923_cur
    length rx923_eos, rx923_tgt
    eq $I19, 1, rx923_restart2084
    gt rx923_pos, rx923_eos, rx923_fail2085
    repr_get_attr_int $I11, self, rx923_curclass, "$!from"
    ne $I11, -1, rxscan924_done2091
    goto rxscan924_scan2090
  rxscan924_loop2089:
    inc rx923_pos
    index rx923_pos, rx923_tgt, ucs4:"%", rx923_pos
    eq rx923_pos, -1, rx923_fail2085
    repr_bind_attr_int rx923_cur, rx923_curclass, "$!from", rx923_pos
  rxscan924_scan2090:
    nqp_rxmark rx923_bstack, rxscan924_loop2089, rx923_pos, 0
  rxscan924_done2091:
    add $I11, rx923_pos, 1
    gt $I11, rx923_eos, rx923_fail2085
    ord $I11, rx923_tgt, rx923_pos
    ne $I11, 37, rx923_fail2085
    add rx923_pos, 1
    nqp_rxmark rx923_bstack, rxquantr925_done2093, rx923_pos, 0
  rxquantr925_loop2092:
    repr_bind_attr_int rx923_cur, rx923_curclass, "$!pos", rx923_pos
    $P11 = rx923_cur."idx"()
    repr_get_attr_int $I11, $P11, rx923_curclass, "$!pos"
    lt $I11, 0, rx923_fail2085
    goto rxsubrule926_pass2094
  rxsubrule926_back2095:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx923_curclass, "$!pos"
    lt $I11, 0, rx923_fail2085
  rxsubrule926_pass2094:
    rx923_cstack = rx923_cur."!cursor_capture"($P11, "idx")
    set_addr $I11, rxsubrule926_back2095
    push rx923_bstack, $I11
    push rx923_bstack, 0
    push rx923_bstack, rx923_pos
    elements $I11, rx923_cstack
    push rx923_bstack, $I11
    repr_get_attr_int rx923_pos, $P11, rx923_curclass, "$!pos"
    nqp_rxpeek $I19, rx923_bstack, rxquantr925_done2093
    inc $I19
    inc $I19
    set rx923_rep, rx923_bstack[$I19]
    nqp_rxcommit rx923_bstack, rxquantr925_done2093
    inc rx923_rep
  rxquantr925_done2093:
    nqp_rxmark rx923_bstack, rxquantr927_done2097, rx923_pos, 0
  rxquantr927_loop2096:
    repr_bind_attr_int rx923_cur, rx923_curclass, "$!pos", rx923_pos
    $P11 = rx923_cur."flags"()
    repr_get_attr_int $I11, $P11, rx923_curclass, "$!pos"
    lt $I11, 0, rx923_fail2085
    goto rxsubrule928_pass2098
  rxsubrule928_back2099:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx923_curclass, "$!pos"
    lt $I11, 0, rx923_fail2085
  rxsubrule928_pass2098:
    rx923_cstack = rx923_cur."!cursor_capture"($P11, "flags")
    set_addr $I11, rxsubrule928_back2099
    push rx923_bstack, $I11
    push rx923_bstack, 0
    push rx923_bstack, rx923_pos
    elements $I11, rx923_cstack
    push rx923_bstack, $I11
    repr_get_attr_int rx923_pos, $P11, rx923_curclass, "$!pos"
    nqp_rxpeek $I19, rx923_bstack, rxquantr927_done2097
    inc $I19
    inc $I19
    set rx923_rep, rx923_bstack[$I19]
    nqp_rxcommit rx923_bstack, rxquantr927_done2097
    inc rx923_rep
    nqp_rxmark rx923_bstack, rxquantr927_done2097, rx923_pos, rx923_rep
    goto rxquantr927_loop2096
  rxquantr927_done2097:
    nqp_rxmark rx923_bstack, rxquantr929_done2101, rx923_pos, 0
  rxquantr929_loop2100:
    repr_bind_attr_int rx923_cur, rx923_curclass, "$!pos", rx923_pos
    $P11 = rx923_cur."size"()
    repr_get_attr_int $I11, $P11, rx923_curclass, "$!pos"
    lt $I11, 0, rx923_fail2085
    goto rxsubrule930_pass2102
  rxsubrule930_back2103:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx923_curclass, "$!pos"
    lt $I11, 0, rx923_fail2085
  rxsubrule930_pass2102:
    rx923_cstack = rx923_cur."!cursor_capture"($P11, "size")
    set_addr $I11, rxsubrule930_back2103
    push rx923_bstack, $I11
    push rx923_bstack, 0
    push rx923_bstack, rx923_pos
    elements $I11, rx923_cstack
    push rx923_bstack, $I11
    repr_get_attr_int rx923_pos, $P11, rx923_curclass, "$!pos"
    nqp_rxpeek $I19, rx923_bstack, rxquantr929_done2101
    inc $I19
    inc $I19
    set rx923_rep, rx923_bstack[$I19]
    nqp_rxcommit rx923_bstack, rxquantr929_done2101
    inc rx923_rep
  rxquantr929_done2101:
    nqp_rxmark rx923_bstack, rxquantr931_done2105, rx923_pos, 0
  rxquantr931_loop2104:
    add $I11, rx923_pos, 1
    gt $I11, rx923_eos, rx923_fail2085
    ord $I11, rx923_tgt, rx923_pos
    ne $I11, 46, rx923_fail2085
    add rx923_pos, 1
    repr_bind_attr_int rx923_cur, rx923_curclass, "$!pos", rx923_pos
    $P11 = rx923_cur."size"()
    repr_get_attr_int $I11, $P11, rx923_curclass, "$!pos"
    lt $I11, 0, rx923_fail2085
    nqp_rxmark rx923_bstack, rxsubrule932_pass2106, -1, 0
  rxsubrule932_pass2106:
    rx923_cstack = rx923_cur."!cursor_capture"($P11, "precision")
    repr_get_attr_int rx923_pos, $P11, rx923_curclass, "$!pos"
    nqp_rxpeek $I19, rx923_bstack, rxquantr931_done2105
    inc $I19
    inc $I19
    set rx923_rep, rx923_bstack[$I19]
    nqp_rxcommit rx923_bstack, rxquantr931_done2105
    inc rx923_rep
  rxquantr931_done2105:
    nqp_rxmark rx923_bstack, rxcap933_fail2108, rx923_pos, 0
    ge rx923_pos, rx923_eos, rx923_fail2085
    substr $S11, rx923_tgt, rx923_pos, 1
    index $I11, ucs4:"eE", $S11
    lt $I11, 0, rx923_fail2085
    inc rx923_pos
    nqp_rxpeek $I19, rx923_bstack, rxcap933_fail2108
    inc $I19
    set $I11, rx923_bstack[$I19]
    repr_bind_attr_int rx923_cur, rx923_curclass, "$!pos", rx923_pos
    $P11 = rx923_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx923_pos)
    rx923_cstack = rx923_cur."!cursor_capture"($P11, "sym")
    goto rxcap933_done2107
  rxcap933_fail2108:
    goto rx923_fail2085
  rxcap933_done2107:
    rx923_cur."!cursor_pass"(rx923_pos, "directive:sym<e>")
    .return (rx923_cur)
  rx923_restart2084:
    repr_get_attr_obj rx923_cstack, rx923_cur, rx923_curclass, "$!cstack"
  rx923_fail2085:
    unless rx923_bstack, rx923_done2083
    pop $I19, rx923_bstack
    if_null rx923_cstack, rx923_cstack_done2088
    unless rx923_cstack, rx923_cstack_done2088
    dec $I19
    set $P11, rx923_cstack[$I19]
  rx923_cstack_done2088:
    pop rx923_rep, rx923_bstack
    pop rx923_pos, rx923_bstack
    pop $I19, rx923_bstack
    lt rx923_pos, -1, rx923_done2083
    lt rx923_pos, 0, rx923_fail2085
    eq $I19, 0, rx923_fail2085
    nqp_islist $I20, rx923_cstack
    unless $I20, rx923_jump2086
    elements $I18, rx923_bstack
    le $I18, 0, rx923_cut2087
    dec $I18
    set $I18, rx923_bstack[$I18]
  rx923_cut2087:
    assign rx923_cstack, $I18
  rx923_jump2086:
    jump $I19
  rx923_done2083:
    rx923_cur."!cursor_fail"()
    .return (rx923_cur) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<f>" :subid("cuid_201_1431289891.89934") :anon :lex :outer("cuid_258_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2127
    .param pmc __lowered_lex_560 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc self 
    .local pmc __lowered_lex_561 
    set self, __lowered_lex_560
    .local pmc rx934_start
    .local string rx934_tgt
    .local int rx934_pos
    .local int rx934_off
    .local int rx934_eos
    .local int rx934_rep
    .local pmc rx934_cur
    .local pmc rx934_curclass
    .local pmc rx934_bstack
    .local pmc rx934_cstack
    rx934_start = self."!cursor_start_all"()
    set rx934_cur, rx934_start[0]
    set rx934_tgt, rx934_start[1]
    set rx934_pos, rx934_start[2]
    set rx934_curclass, rx934_start[3]
    set rx934_bstack, rx934_start[4]
    set $I19, rx934_start[5]
    store_lex unicode:"$\x{a2}", rx934_cur
    length rx934_eos, rx934_tgt
    eq $I19, 1, rx934_restart2111
    gt rx934_pos, rx934_eos, rx934_fail2112
    repr_get_attr_int $I11, self, rx934_curclass, "$!from"
    ne $I11, -1, rxscan935_done2118
    goto rxscan935_scan2117
  rxscan935_loop2116:
    inc rx934_pos
    index rx934_pos, rx934_tgt, ucs4:"%", rx934_pos
    eq rx934_pos, -1, rx934_fail2112
    repr_bind_attr_int rx934_cur, rx934_curclass, "$!from", rx934_pos
  rxscan935_scan2117:
    nqp_rxmark rx934_bstack, rxscan935_loop2116, rx934_pos, 0
  rxscan935_done2118:
    add $I11, rx934_pos, 1
    gt $I11, rx934_eos, rx934_fail2112
    ord $I11, rx934_tgt, rx934_pos
    ne $I11, 37, rx934_fail2112
    add rx934_pos, 1
    nqp_rxmark rx934_bstack, rxquantr936_done2120, rx934_pos, 0
  rxquantr936_loop2119:
    repr_bind_attr_int rx934_cur, rx934_curclass, "$!pos", rx934_pos
    $P11 = rx934_cur."idx"()
    repr_get_attr_int $I11, $P11, rx934_curclass, "$!pos"
    lt $I11, 0, rx934_fail2112
    goto rxsubrule937_pass2121
  rxsubrule937_back2122:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx934_curclass, "$!pos"
    lt $I11, 0, rx934_fail2112
  rxsubrule937_pass2121:
    rx934_cstack = rx934_cur."!cursor_capture"($P11, "idx")
    set_addr $I11, rxsubrule937_back2122
    push rx934_bstack, $I11
    push rx934_bstack, 0
    push rx934_bstack, rx934_pos
    elements $I11, rx934_cstack
    push rx934_bstack, $I11
    repr_get_attr_int rx934_pos, $P11, rx934_curclass, "$!pos"
    nqp_rxpeek $I19, rx934_bstack, rxquantr936_done2120
    inc $I19
    inc $I19
    set rx934_rep, rx934_bstack[$I19]
    nqp_rxcommit rx934_bstack, rxquantr936_done2120
    inc rx934_rep
  rxquantr936_done2120:
    nqp_rxmark rx934_bstack, rxquantr938_done2124, rx934_pos, 0
  rxquantr938_loop2123:
    repr_bind_attr_int rx934_cur, rx934_curclass, "$!pos", rx934_pos
    $P11 = rx934_cur."flags"()
    repr_get_attr_int $I11, $P11, rx934_curclass, "$!pos"
    lt $I11, 0, rx934_fail2112
    goto rxsubrule939_pass2125
  rxsubrule939_back2126:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx934_curclass, "$!pos"
    lt $I11, 0, rx934_fail2112
  rxsubrule939_pass2125:
    rx934_cstack = rx934_cur."!cursor_capture"($P11, "flags")
    set_addr $I11, rxsubrule939_back2126
    push rx934_bstack, $I11
    push rx934_bstack, 0
    push rx934_bstack, rx934_pos
    elements $I11, rx934_cstack
    push rx934_bstack, $I11
    repr_get_attr_int rx934_pos, $P11, rx934_curclass, "$!pos"
    nqp_rxpeek $I19, rx934_bstack, rxquantr938_done2124
    inc $I19
    inc $I19
    set rx934_rep, rx934_bstack[$I19]
    nqp_rxcommit rx934_bstack, rxquantr938_done2124
    inc rx934_rep
    nqp_rxmark rx934_bstack, rxquantr938_done2124, rx934_pos, rx934_rep
    goto rxquantr938_loop2123
  rxquantr938_done2124:
    nqp_rxmark rx934_bstack, rxquantr940_done2128, rx934_pos, 0
  rxquantr940_loop2127:
    repr_bind_attr_int rx934_cur, rx934_curclass, "$!pos", rx934_pos
    $P11 = rx934_cur."size"()
    repr_get_attr_int $I11, $P11, rx934_curclass, "$!pos"
    lt $I11, 0, rx934_fail2112
    goto rxsubrule941_pass2129
  rxsubrule941_back2130:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx934_curclass, "$!pos"
    lt $I11, 0, rx934_fail2112
  rxsubrule941_pass2129:
    rx934_cstack = rx934_cur."!cursor_capture"($P11, "size")
    set_addr $I11, rxsubrule941_back2130
    push rx934_bstack, $I11
    push rx934_bstack, 0
    push rx934_bstack, rx934_pos
    elements $I11, rx934_cstack
    push rx934_bstack, $I11
    repr_get_attr_int rx934_pos, $P11, rx934_curclass, "$!pos"
    nqp_rxpeek $I19, rx934_bstack, rxquantr940_done2128
    inc $I19
    inc $I19
    set rx934_rep, rx934_bstack[$I19]
    nqp_rxcommit rx934_bstack, rxquantr940_done2128
    inc rx934_rep
  rxquantr940_done2128:
    nqp_rxmark rx934_bstack, rxquantr942_done2132, rx934_pos, 0
  rxquantr942_loop2131:
    add $I11, rx934_pos, 1
    gt $I11, rx934_eos, rx934_fail2112
    ord $I11, rx934_tgt, rx934_pos
    ne $I11, 46, rx934_fail2112
    add rx934_pos, 1
    repr_bind_attr_int rx934_cur, rx934_curclass, "$!pos", rx934_pos
    $P11 = rx934_cur."size"()
    repr_get_attr_int $I11, $P11, rx934_curclass, "$!pos"
    lt $I11, 0, rx934_fail2112
    nqp_rxmark rx934_bstack, rxsubrule943_pass2133, -1, 0
  rxsubrule943_pass2133:
    rx934_cstack = rx934_cur."!cursor_capture"($P11, "precision")
    repr_get_attr_int rx934_pos, $P11, rx934_curclass, "$!pos"
    nqp_rxpeek $I19, rx934_bstack, rxquantr942_done2132
    inc $I19
    inc $I19
    set rx934_rep, rx934_bstack[$I19]
    nqp_rxcommit rx934_bstack, rxquantr942_done2132
    inc rx934_rep
  rxquantr942_done2132:
    nqp_rxmark rx934_bstack, rxcap944_fail2135, rx934_pos, 0
    ge rx934_pos, rx934_eos, rx934_fail2112
    substr $S11, rx934_tgt, rx934_pos, 1
    index $I11, ucs4:"fF", $S11
    lt $I11, 0, rx934_fail2112
    inc rx934_pos
    nqp_rxpeek $I19, rx934_bstack, rxcap944_fail2135
    inc $I19
    set $I11, rx934_bstack[$I19]
    repr_bind_attr_int rx934_cur, rx934_curclass, "$!pos", rx934_pos
    $P11 = rx934_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx934_pos)
    rx934_cstack = rx934_cur."!cursor_capture"($P11, "sym")
    goto rxcap944_done2134
  rxcap944_fail2135:
    goto rx934_fail2112
  rxcap944_done2134:
    rx934_cur."!cursor_pass"(rx934_pos, "directive:sym<f>")
    .return (rx934_cur)
  rx934_restart2111:
    repr_get_attr_obj rx934_cstack, rx934_cur, rx934_curclass, "$!cstack"
  rx934_fail2112:
    unless rx934_bstack, rx934_done2110
    pop $I19, rx934_bstack
    if_null rx934_cstack, rx934_cstack_done2115
    unless rx934_cstack, rx934_cstack_done2115
    dec $I19
    set $P11, rx934_cstack[$I19]
  rx934_cstack_done2115:
    pop rx934_rep, rx934_bstack
    pop rx934_pos, rx934_bstack
    pop $I19, rx934_bstack
    lt rx934_pos, -1, rx934_done2110
    lt rx934_pos, 0, rx934_fail2112
    eq $I19, 0, rx934_fail2112
    nqp_islist $I20, rx934_cstack
    unless $I20, rx934_jump2113
    elements $I18, rx934_bstack
    le $I18, 0, rx934_cut2114
    dec $I18
    set $I18, rx934_bstack[$I18]
  rx934_cut2114:
    assign rx934_cstack, $I18
  rx934_jump2113:
    jump $I19
  rx934_done2110:
    rx934_cur."!cursor_fail"()
    .return (rx934_cur) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<g>" :subid("cuid_202_1431289891.89934") :anon :lex :outer("cuid_258_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2128
    .param pmc __lowered_lex_562 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc self 
    .local pmc __lowered_lex_563 
    set self, __lowered_lex_562
    .local pmc rx945_start
    .local string rx945_tgt
    .local int rx945_pos
    .local int rx945_off
    .local int rx945_eos
    .local int rx945_rep
    .local pmc rx945_cur
    .local pmc rx945_curclass
    .local pmc rx945_bstack
    .local pmc rx945_cstack
    rx945_start = self."!cursor_start_all"()
    set rx945_cur, rx945_start[0]
    set rx945_tgt, rx945_start[1]
    set rx945_pos, rx945_start[2]
    set rx945_curclass, rx945_start[3]
    set rx945_bstack, rx945_start[4]
    set $I19, rx945_start[5]
    store_lex unicode:"$\x{a2}", rx945_cur
    length rx945_eos, rx945_tgt
    eq $I19, 1, rx945_restart2138
    gt rx945_pos, rx945_eos, rx945_fail2139
    repr_get_attr_int $I11, self, rx945_curclass, "$!from"
    ne $I11, -1, rxscan946_done2145
    goto rxscan946_scan2144
  rxscan946_loop2143:
    inc rx945_pos
    index rx945_pos, rx945_tgt, ucs4:"%", rx945_pos
    eq rx945_pos, -1, rx945_fail2139
    repr_bind_attr_int rx945_cur, rx945_curclass, "$!from", rx945_pos
  rxscan946_scan2144:
    nqp_rxmark rx945_bstack, rxscan946_loop2143, rx945_pos, 0
  rxscan946_done2145:
    add $I11, rx945_pos, 1
    gt $I11, rx945_eos, rx945_fail2139
    ord $I11, rx945_tgt, rx945_pos
    ne $I11, 37, rx945_fail2139
    add rx945_pos, 1
    nqp_rxmark rx945_bstack, rxquantr947_done2147, rx945_pos, 0
  rxquantr947_loop2146:
    repr_bind_attr_int rx945_cur, rx945_curclass, "$!pos", rx945_pos
    $P11 = rx945_cur."idx"()
    repr_get_attr_int $I11, $P11, rx945_curclass, "$!pos"
    lt $I11, 0, rx945_fail2139
    goto rxsubrule948_pass2148
  rxsubrule948_back2149:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx945_curclass, "$!pos"
    lt $I11, 0, rx945_fail2139
  rxsubrule948_pass2148:
    rx945_cstack = rx945_cur."!cursor_capture"($P11, "idx")
    set_addr $I11, rxsubrule948_back2149
    push rx945_bstack, $I11
    push rx945_bstack, 0
    push rx945_bstack, rx945_pos
    elements $I11, rx945_cstack
    push rx945_bstack, $I11
    repr_get_attr_int rx945_pos, $P11, rx945_curclass, "$!pos"
    nqp_rxpeek $I19, rx945_bstack, rxquantr947_done2147
    inc $I19
    inc $I19
    set rx945_rep, rx945_bstack[$I19]
    nqp_rxcommit rx945_bstack, rxquantr947_done2147
    inc rx945_rep
  rxquantr947_done2147:
    nqp_rxmark rx945_bstack, rxquantr949_done2151, rx945_pos, 0
  rxquantr949_loop2150:
    repr_bind_attr_int rx945_cur, rx945_curclass, "$!pos", rx945_pos
    $P11 = rx945_cur."flags"()
    repr_get_attr_int $I11, $P11, rx945_curclass, "$!pos"
    lt $I11, 0, rx945_fail2139
    goto rxsubrule950_pass2152
  rxsubrule950_back2153:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx945_curclass, "$!pos"
    lt $I11, 0, rx945_fail2139
  rxsubrule950_pass2152:
    rx945_cstack = rx945_cur."!cursor_capture"($P11, "flags")
    set_addr $I11, rxsubrule950_back2153
    push rx945_bstack, $I11
    push rx945_bstack, 0
    push rx945_bstack, rx945_pos
    elements $I11, rx945_cstack
    push rx945_bstack, $I11
    repr_get_attr_int rx945_pos, $P11, rx945_curclass, "$!pos"
    nqp_rxpeek $I19, rx945_bstack, rxquantr949_done2151
    inc $I19
    inc $I19
    set rx945_rep, rx945_bstack[$I19]
    nqp_rxcommit rx945_bstack, rxquantr949_done2151
    inc rx945_rep
    nqp_rxmark rx945_bstack, rxquantr949_done2151, rx945_pos, rx945_rep
    goto rxquantr949_loop2150
  rxquantr949_done2151:
    nqp_rxmark rx945_bstack, rxquantr951_done2155, rx945_pos, 0
  rxquantr951_loop2154:
    repr_bind_attr_int rx945_cur, rx945_curclass, "$!pos", rx945_pos
    $P11 = rx945_cur."size"()
    repr_get_attr_int $I11, $P11, rx945_curclass, "$!pos"
    lt $I11, 0, rx945_fail2139
    goto rxsubrule952_pass2156
  rxsubrule952_back2157:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx945_curclass, "$!pos"
    lt $I11, 0, rx945_fail2139
  rxsubrule952_pass2156:
    rx945_cstack = rx945_cur."!cursor_capture"($P11, "size")
    set_addr $I11, rxsubrule952_back2157
    push rx945_bstack, $I11
    push rx945_bstack, 0
    push rx945_bstack, rx945_pos
    elements $I11, rx945_cstack
    push rx945_bstack, $I11
    repr_get_attr_int rx945_pos, $P11, rx945_curclass, "$!pos"
    nqp_rxpeek $I19, rx945_bstack, rxquantr951_done2155
    inc $I19
    inc $I19
    set rx945_rep, rx945_bstack[$I19]
    nqp_rxcommit rx945_bstack, rxquantr951_done2155
    inc rx945_rep
  rxquantr951_done2155:
    nqp_rxmark rx945_bstack, rxquantr953_done2159, rx945_pos, 0
  rxquantr953_loop2158:
    add $I11, rx945_pos, 1
    gt $I11, rx945_eos, rx945_fail2139
    ord $I11, rx945_tgt, rx945_pos
    ne $I11, 46, rx945_fail2139
    add rx945_pos, 1
    repr_bind_attr_int rx945_cur, rx945_curclass, "$!pos", rx945_pos
    $P11 = rx945_cur."size"()
    repr_get_attr_int $I11, $P11, rx945_curclass, "$!pos"
    lt $I11, 0, rx945_fail2139
    nqp_rxmark rx945_bstack, rxsubrule954_pass2160, -1, 0
  rxsubrule954_pass2160:
    rx945_cstack = rx945_cur."!cursor_capture"($P11, "precision")
    repr_get_attr_int rx945_pos, $P11, rx945_curclass, "$!pos"
    nqp_rxpeek $I19, rx945_bstack, rxquantr953_done2159
    inc $I19
    inc $I19
    set rx945_rep, rx945_bstack[$I19]
    nqp_rxcommit rx945_bstack, rxquantr953_done2159
    inc rx945_rep
  rxquantr953_done2159:
    nqp_rxmark rx945_bstack, rxcap955_fail2162, rx945_pos, 0
    ge rx945_pos, rx945_eos, rx945_fail2139
    substr $S11, rx945_tgt, rx945_pos, 1
    index $I11, ucs4:"gG", $S11
    lt $I11, 0, rx945_fail2139
    inc rx945_pos
    nqp_rxpeek $I19, rx945_bstack, rxcap955_fail2162
    inc $I19
    set $I11, rx945_bstack[$I19]
    repr_bind_attr_int rx945_cur, rx945_curclass, "$!pos", rx945_pos
    $P11 = rx945_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx945_pos)
    rx945_cstack = rx945_cur."!cursor_capture"($P11, "sym")
    goto rxcap955_done2161
  rxcap955_fail2162:
    goto rx945_fail2139
  rxcap955_done2161:
    rx945_cur."!cursor_pass"(rx945_pos, "directive:sym<g>")
    .return (rx945_cur)
  rx945_restart2138:
    repr_get_attr_obj rx945_cstack, rx945_cur, rx945_curclass, "$!cstack"
  rx945_fail2139:
    unless rx945_bstack, rx945_done2137
    pop $I19, rx945_bstack
    if_null rx945_cstack, rx945_cstack_done2142
    unless rx945_cstack, rx945_cstack_done2142
    dec $I19
    set $P11, rx945_cstack[$I19]
  rx945_cstack_done2142:
    pop rx945_rep, rx945_bstack
    pop rx945_pos, rx945_bstack
    pop $I19, rx945_bstack
    lt rx945_pos, -1, rx945_done2137
    lt rx945_pos, 0, rx945_fail2139
    eq $I19, 0, rx945_fail2139
    nqp_islist $I20, rx945_cstack
    unless $I20, rx945_jump2140
    elements $I18, rx945_bstack
    le $I18, 0, rx945_cut2141
    dec $I18
    set $I18, rx945_bstack[$I18]
  rx945_cut2141:
    assign rx945_cstack, $I18
  rx945_jump2140:
    jump $I19
  rx945_done2137:
    rx945_cur."!cursor_fail"()
    .return (rx945_cur) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<o>" :subid("cuid_203_1431289891.89934") :anon :lex :outer("cuid_258_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2129
    .param pmc __lowered_lex_564 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc self 
    .local pmc __lowered_lex_565 
    set self, __lowered_lex_564
    .local pmc rx956_start
    .local string rx956_tgt
    .local int rx956_pos
    .local int rx956_off
    .local int rx956_eos
    .local int rx956_rep
    .local pmc rx956_cur
    .local pmc rx956_curclass
    .local pmc rx956_bstack
    .local pmc rx956_cstack
    rx956_start = self."!cursor_start_all"()
    set rx956_cur, rx956_start[0]
    set rx956_tgt, rx956_start[1]
    set rx956_pos, rx956_start[2]
    set rx956_curclass, rx956_start[3]
    set rx956_bstack, rx956_start[4]
    set $I19, rx956_start[5]
    store_lex unicode:"$\x{a2}", rx956_cur
    length rx956_eos, rx956_tgt
    eq $I19, 1, rx956_restart2165
    gt rx956_pos, rx956_eos, rx956_fail2166
    repr_get_attr_int $I11, self, rx956_curclass, "$!from"
    ne $I11, -1, rxscan957_done2172
    goto rxscan957_scan2171
  rxscan957_loop2170:
    inc rx956_pos
    index rx956_pos, rx956_tgt, ucs4:"%", rx956_pos
    eq rx956_pos, -1, rx956_fail2166
    repr_bind_attr_int rx956_cur, rx956_curclass, "$!from", rx956_pos
  rxscan957_scan2171:
    nqp_rxmark rx956_bstack, rxscan957_loop2170, rx956_pos, 0
  rxscan957_done2172:
    add $I11, rx956_pos, 1
    gt $I11, rx956_eos, rx956_fail2166
    ord $I11, rx956_tgt, rx956_pos
    ne $I11, 37, rx956_fail2166
    add rx956_pos, 1
    nqp_rxmark rx956_bstack, rxquantr958_done2174, rx956_pos, 0
  rxquantr958_loop2173:
    repr_bind_attr_int rx956_cur, rx956_curclass, "$!pos", rx956_pos
    $P11 = rx956_cur."idx"()
    repr_get_attr_int $I11, $P11, rx956_curclass, "$!pos"
    lt $I11, 0, rx956_fail2166
    goto rxsubrule959_pass2175
  rxsubrule959_back2176:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx956_curclass, "$!pos"
    lt $I11, 0, rx956_fail2166
  rxsubrule959_pass2175:
    rx956_cstack = rx956_cur."!cursor_capture"($P11, "idx")
    set_addr $I11, rxsubrule959_back2176
    push rx956_bstack, $I11
    push rx956_bstack, 0
    push rx956_bstack, rx956_pos
    elements $I11, rx956_cstack
    push rx956_bstack, $I11
    repr_get_attr_int rx956_pos, $P11, rx956_curclass, "$!pos"
    nqp_rxpeek $I19, rx956_bstack, rxquantr958_done2174
    inc $I19
    inc $I19
    set rx956_rep, rx956_bstack[$I19]
    nqp_rxcommit rx956_bstack, rxquantr958_done2174
    inc rx956_rep
  rxquantr958_done2174:
    nqp_rxmark rx956_bstack, rxquantr960_done2178, rx956_pos, 0
  rxquantr960_loop2177:
    repr_bind_attr_int rx956_cur, rx956_curclass, "$!pos", rx956_pos
    $P11 = rx956_cur."flags"()
    repr_get_attr_int $I11, $P11, rx956_curclass, "$!pos"
    lt $I11, 0, rx956_fail2166
    goto rxsubrule961_pass2179
  rxsubrule961_back2180:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx956_curclass, "$!pos"
    lt $I11, 0, rx956_fail2166
  rxsubrule961_pass2179:
    rx956_cstack = rx956_cur."!cursor_capture"($P11, "flags")
    set_addr $I11, rxsubrule961_back2180
    push rx956_bstack, $I11
    push rx956_bstack, 0
    push rx956_bstack, rx956_pos
    elements $I11, rx956_cstack
    push rx956_bstack, $I11
    repr_get_attr_int rx956_pos, $P11, rx956_curclass, "$!pos"
    nqp_rxpeek $I19, rx956_bstack, rxquantr960_done2178
    inc $I19
    inc $I19
    set rx956_rep, rx956_bstack[$I19]
    nqp_rxcommit rx956_bstack, rxquantr960_done2178
    inc rx956_rep
    nqp_rxmark rx956_bstack, rxquantr960_done2178, rx956_pos, rx956_rep
    goto rxquantr960_loop2177
  rxquantr960_done2178:
    nqp_rxmark rx956_bstack, rxquantr962_done2182, rx956_pos, 0
  rxquantr962_loop2181:
    repr_bind_attr_int rx956_cur, rx956_curclass, "$!pos", rx956_pos
    $P11 = rx956_cur."size"()
    repr_get_attr_int $I11, $P11, rx956_curclass, "$!pos"
    lt $I11, 0, rx956_fail2166
    goto rxsubrule963_pass2183
  rxsubrule963_back2184:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx956_curclass, "$!pos"
    lt $I11, 0, rx956_fail2166
  rxsubrule963_pass2183:
    rx956_cstack = rx956_cur."!cursor_capture"($P11, "size")
    set_addr $I11, rxsubrule963_back2184
    push rx956_bstack, $I11
    push rx956_bstack, 0
    push rx956_bstack, rx956_pos
    elements $I11, rx956_cstack
    push rx956_bstack, $I11
    repr_get_attr_int rx956_pos, $P11, rx956_curclass, "$!pos"
    nqp_rxpeek $I19, rx956_bstack, rxquantr962_done2182
    inc $I19
    inc $I19
    set rx956_rep, rx956_bstack[$I19]
    nqp_rxcommit rx956_bstack, rxquantr962_done2182
    inc rx956_rep
  rxquantr962_done2182:
    nqp_rxmark rx956_bstack, rxquantr964_done2186, rx956_pos, 0
  rxquantr964_loop2185:
    add $I11, rx956_pos, 1
    gt $I11, rx956_eos, rx956_fail2166
    ord $I11, rx956_tgt, rx956_pos
    ne $I11, 46, rx956_fail2166
    add rx956_pos, 1
    repr_bind_attr_int rx956_cur, rx956_curclass, "$!pos", rx956_pos
    $P11 = rx956_cur."size"()
    repr_get_attr_int $I11, $P11, rx956_curclass, "$!pos"
    lt $I11, 0, rx956_fail2166
    nqp_rxmark rx956_bstack, rxsubrule965_pass2187, -1, 0
  rxsubrule965_pass2187:
    rx956_cstack = rx956_cur."!cursor_capture"($P11, "precision")
    repr_get_attr_int rx956_pos, $P11, rx956_curclass, "$!pos"
    nqp_rxpeek $I19, rx956_bstack, rxquantr964_done2186
    inc $I19
    inc $I19
    set rx956_rep, rx956_bstack[$I19]
    nqp_rxcommit rx956_bstack, rxquantr964_done2186
    inc rx956_rep
  rxquantr964_done2186:
    nqp_rxmark rx956_bstack, rxcap966_fail2189, rx956_pos, 0
    add $I11, rx956_pos, 1
    gt $I11, rx956_eos, rx956_fail2166
    ord $I11, rx956_tgt, rx956_pos
    ne $I11, 111, rx956_fail2166
    add rx956_pos, 1
    nqp_rxpeek $I19, rx956_bstack, rxcap966_fail2189
    inc $I19
    set $I11, rx956_bstack[$I19]
    repr_bind_attr_int rx956_cur, rx956_curclass, "$!pos", rx956_pos
    $P11 = rx956_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx956_pos)
    rx956_cstack = rx956_cur."!cursor_capture"($P11, "sym")
    goto rxcap966_done2188
  rxcap966_fail2189:
    goto rx956_fail2166
  rxcap966_done2188:
    rx956_cur."!cursor_pass"(rx956_pos, "directive:sym<o>")
    .return (rx956_cur)
  rx956_restart2165:
    repr_get_attr_obj rx956_cstack, rx956_cur, rx956_curclass, "$!cstack"
  rx956_fail2166:
    unless rx956_bstack, rx956_done2164
    pop $I19, rx956_bstack
    if_null rx956_cstack, rx956_cstack_done2169
    unless rx956_cstack, rx956_cstack_done2169
    dec $I19
    set $P11, rx956_cstack[$I19]
  rx956_cstack_done2169:
    pop rx956_rep, rx956_bstack
    pop rx956_pos, rx956_bstack
    pop $I19, rx956_bstack
    lt rx956_pos, -1, rx956_done2164
    lt rx956_pos, 0, rx956_fail2166
    eq $I19, 0, rx956_fail2166
    nqp_islist $I20, rx956_cstack
    unless $I20, rx956_jump2167
    elements $I18, rx956_bstack
    le $I18, 0, rx956_cut2168
    dec $I18
    set $I18, rx956_bstack[$I18]
  rx956_cut2168:
    assign rx956_cstack, $I18
  rx956_jump2167:
    jump $I19
  rx956_done2164:
    rx956_cur."!cursor_fail"()
    .return (rx956_cur) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<s>" :subid("cuid_204_1431289891.89934") :anon :lex :outer("cuid_258_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2130
    .param pmc __lowered_lex_566 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc self 
    .local pmc __lowered_lex_567 
    set self, __lowered_lex_566
    .local pmc rx967_start
    .local string rx967_tgt
    .local int rx967_pos
    .local int rx967_off
    .local int rx967_eos
    .local int rx967_rep
    .local pmc rx967_cur
    .local pmc rx967_curclass
    .local pmc rx967_bstack
    .local pmc rx967_cstack
    rx967_start = self."!cursor_start_all"()
    set rx967_cur, rx967_start[0]
    set rx967_tgt, rx967_start[1]
    set rx967_pos, rx967_start[2]
    set rx967_curclass, rx967_start[3]
    set rx967_bstack, rx967_start[4]
    set $I19, rx967_start[5]
    store_lex unicode:"$\x{a2}", rx967_cur
    length rx967_eos, rx967_tgt
    eq $I19, 1, rx967_restart2192
    gt rx967_pos, rx967_eos, rx967_fail2193
    repr_get_attr_int $I11, self, rx967_curclass, "$!from"
    ne $I11, -1, rxscan968_done2199
    goto rxscan968_scan2198
  rxscan968_loop2197:
    inc rx967_pos
    index rx967_pos, rx967_tgt, ucs4:"%", rx967_pos
    eq rx967_pos, -1, rx967_fail2193
    repr_bind_attr_int rx967_cur, rx967_curclass, "$!from", rx967_pos
  rxscan968_scan2198:
    nqp_rxmark rx967_bstack, rxscan968_loop2197, rx967_pos, 0
  rxscan968_done2199:
    add $I11, rx967_pos, 1
    gt $I11, rx967_eos, rx967_fail2193
    ord $I11, rx967_tgt, rx967_pos
    ne $I11, 37, rx967_fail2193
    add rx967_pos, 1
    nqp_rxmark rx967_bstack, rxquantr969_done2201, rx967_pos, 0
  rxquantr969_loop2200:
    repr_bind_attr_int rx967_cur, rx967_curclass, "$!pos", rx967_pos
    $P11 = rx967_cur."idx"()
    repr_get_attr_int $I11, $P11, rx967_curclass, "$!pos"
    lt $I11, 0, rx967_fail2193
    goto rxsubrule970_pass2202
  rxsubrule970_back2203:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx967_curclass, "$!pos"
    lt $I11, 0, rx967_fail2193
  rxsubrule970_pass2202:
    rx967_cstack = rx967_cur."!cursor_capture"($P11, "idx")
    set_addr $I11, rxsubrule970_back2203
    push rx967_bstack, $I11
    push rx967_bstack, 0
    push rx967_bstack, rx967_pos
    elements $I11, rx967_cstack
    push rx967_bstack, $I11
    repr_get_attr_int rx967_pos, $P11, rx967_curclass, "$!pos"
    nqp_rxpeek $I19, rx967_bstack, rxquantr969_done2201
    inc $I19
    inc $I19
    set rx967_rep, rx967_bstack[$I19]
    nqp_rxcommit rx967_bstack, rxquantr969_done2201
    inc rx967_rep
  rxquantr969_done2201:
    nqp_rxmark rx967_bstack, rxquantr971_done2205, rx967_pos, 0
  rxquantr971_loop2204:
    repr_bind_attr_int rx967_cur, rx967_curclass, "$!pos", rx967_pos
    $P11 = rx967_cur."flags"()
    repr_get_attr_int $I11, $P11, rx967_curclass, "$!pos"
    lt $I11, 0, rx967_fail2193
    goto rxsubrule972_pass2206
  rxsubrule972_back2207:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx967_curclass, "$!pos"
    lt $I11, 0, rx967_fail2193
  rxsubrule972_pass2206:
    rx967_cstack = rx967_cur."!cursor_capture"($P11, "flags")
    set_addr $I11, rxsubrule972_back2207
    push rx967_bstack, $I11
    push rx967_bstack, 0
    push rx967_bstack, rx967_pos
    elements $I11, rx967_cstack
    push rx967_bstack, $I11
    repr_get_attr_int rx967_pos, $P11, rx967_curclass, "$!pos"
    nqp_rxpeek $I19, rx967_bstack, rxquantr971_done2205
    inc $I19
    inc $I19
    set rx967_rep, rx967_bstack[$I19]
    nqp_rxcommit rx967_bstack, rxquantr971_done2205
    inc rx967_rep
    nqp_rxmark rx967_bstack, rxquantr971_done2205, rx967_pos, rx967_rep
    goto rxquantr971_loop2204
  rxquantr971_done2205:
    nqp_rxmark rx967_bstack, rxquantr973_done2209, rx967_pos, 0
  rxquantr973_loop2208:
    repr_bind_attr_int rx967_cur, rx967_curclass, "$!pos", rx967_pos
    $P11 = rx967_cur."size"()
    repr_get_attr_int $I11, $P11, rx967_curclass, "$!pos"
    lt $I11, 0, rx967_fail2193
    goto rxsubrule974_pass2210
  rxsubrule974_back2211:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx967_curclass, "$!pos"
    lt $I11, 0, rx967_fail2193
  rxsubrule974_pass2210:
    rx967_cstack = rx967_cur."!cursor_capture"($P11, "size")
    set_addr $I11, rxsubrule974_back2211
    push rx967_bstack, $I11
    push rx967_bstack, 0
    push rx967_bstack, rx967_pos
    elements $I11, rx967_cstack
    push rx967_bstack, $I11
    repr_get_attr_int rx967_pos, $P11, rx967_curclass, "$!pos"
    nqp_rxpeek $I19, rx967_bstack, rxquantr973_done2209
    inc $I19
    inc $I19
    set rx967_rep, rx967_bstack[$I19]
    nqp_rxcommit rx967_bstack, rxquantr973_done2209
    inc rx967_rep
  rxquantr973_done2209:
    nqp_rxmark rx967_bstack, rxquantr975_done2213, rx967_pos, 0
  rxquantr975_loop2212:
    add $I11, rx967_pos, 1
    gt $I11, rx967_eos, rx967_fail2193
    ord $I11, rx967_tgt, rx967_pos
    ne $I11, 46, rx967_fail2193
    add rx967_pos, 1
    repr_bind_attr_int rx967_cur, rx967_curclass, "$!pos", rx967_pos
    $P11 = rx967_cur."size"()
    repr_get_attr_int $I11, $P11, rx967_curclass, "$!pos"
    lt $I11, 0, rx967_fail2193
    nqp_rxmark rx967_bstack, rxsubrule976_pass2214, -1, 0
  rxsubrule976_pass2214:
    rx967_cstack = rx967_cur."!cursor_capture"($P11, "precision")
    repr_get_attr_int rx967_pos, $P11, rx967_curclass, "$!pos"
    nqp_rxpeek $I19, rx967_bstack, rxquantr975_done2213
    inc $I19
    inc $I19
    set rx967_rep, rx967_bstack[$I19]
    nqp_rxcommit rx967_bstack, rxquantr975_done2213
    inc rx967_rep
  rxquantr975_done2213:
    nqp_rxmark rx967_bstack, rxcap977_fail2216, rx967_pos, 0
    add $I11, rx967_pos, 1
    gt $I11, rx967_eos, rx967_fail2193
    ord $I11, rx967_tgt, rx967_pos
    ne $I11, 115, rx967_fail2193
    add rx967_pos, 1
    nqp_rxpeek $I19, rx967_bstack, rxcap977_fail2216
    inc $I19
    set $I11, rx967_bstack[$I19]
    repr_bind_attr_int rx967_cur, rx967_curclass, "$!pos", rx967_pos
    $P11 = rx967_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx967_pos)
    rx967_cstack = rx967_cur."!cursor_capture"($P11, "sym")
    goto rxcap977_done2215
  rxcap977_fail2216:
    goto rx967_fail2193
  rxcap977_done2215:
    rx967_cur."!cursor_pass"(rx967_pos, "directive:sym<s>")
    .return (rx967_cur)
  rx967_restart2192:
    repr_get_attr_obj rx967_cstack, rx967_cur, rx967_curclass, "$!cstack"
  rx967_fail2193:
    unless rx967_bstack, rx967_done2191
    pop $I19, rx967_bstack
    if_null rx967_cstack, rx967_cstack_done2196
    unless rx967_cstack, rx967_cstack_done2196
    dec $I19
    set $P11, rx967_cstack[$I19]
  rx967_cstack_done2196:
    pop rx967_rep, rx967_bstack
    pop rx967_pos, rx967_bstack
    pop $I19, rx967_bstack
    lt rx967_pos, -1, rx967_done2191
    lt rx967_pos, 0, rx967_fail2193
    eq $I19, 0, rx967_fail2193
    nqp_islist $I20, rx967_cstack
    unless $I20, rx967_jump2194
    elements $I18, rx967_bstack
    le $I18, 0, rx967_cut2195
    dec $I18
    set $I18, rx967_bstack[$I18]
  rx967_cut2195:
    assign rx967_cstack, $I18
  rx967_jump2194:
    jump $I19
  rx967_done2191:
    rx967_cur."!cursor_fail"()
    .return (rx967_cur) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<u>" :subid("cuid_205_1431289891.89934") :anon :lex :outer("cuid_258_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2131
    .param pmc __lowered_lex_568 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc self 
    .local pmc __lowered_lex_569 
    set self, __lowered_lex_568
    .local pmc rx978_start
    .local string rx978_tgt
    .local int rx978_pos
    .local int rx978_off
    .local int rx978_eos
    .local int rx978_rep
    .local pmc rx978_cur
    .local pmc rx978_curclass
    .local pmc rx978_bstack
    .local pmc rx978_cstack
    rx978_start = self."!cursor_start_all"()
    set rx978_cur, rx978_start[0]
    set rx978_tgt, rx978_start[1]
    set rx978_pos, rx978_start[2]
    set rx978_curclass, rx978_start[3]
    set rx978_bstack, rx978_start[4]
    set $I19, rx978_start[5]
    store_lex unicode:"$\x{a2}", rx978_cur
    length rx978_eos, rx978_tgt
    eq $I19, 1, rx978_restart2219
    gt rx978_pos, rx978_eos, rx978_fail2220
    repr_get_attr_int $I11, self, rx978_curclass, "$!from"
    ne $I11, -1, rxscan979_done2226
    goto rxscan979_scan2225
  rxscan979_loop2224:
    inc rx978_pos
    index rx978_pos, rx978_tgt, ucs4:"%", rx978_pos
    eq rx978_pos, -1, rx978_fail2220
    repr_bind_attr_int rx978_cur, rx978_curclass, "$!from", rx978_pos
  rxscan979_scan2225:
    nqp_rxmark rx978_bstack, rxscan979_loop2224, rx978_pos, 0
  rxscan979_done2226:
    add $I11, rx978_pos, 1
    gt $I11, rx978_eos, rx978_fail2220
    ord $I11, rx978_tgt, rx978_pos
    ne $I11, 37, rx978_fail2220
    add rx978_pos, 1
    nqp_rxmark rx978_bstack, rxquantr980_done2228, rx978_pos, 0
  rxquantr980_loop2227:
    repr_bind_attr_int rx978_cur, rx978_curclass, "$!pos", rx978_pos
    $P11 = rx978_cur."idx"()
    repr_get_attr_int $I11, $P11, rx978_curclass, "$!pos"
    lt $I11, 0, rx978_fail2220
    goto rxsubrule981_pass2229
  rxsubrule981_back2230:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx978_curclass, "$!pos"
    lt $I11, 0, rx978_fail2220
  rxsubrule981_pass2229:
    rx978_cstack = rx978_cur."!cursor_capture"($P11, "idx")
    set_addr $I11, rxsubrule981_back2230
    push rx978_bstack, $I11
    push rx978_bstack, 0
    push rx978_bstack, rx978_pos
    elements $I11, rx978_cstack
    push rx978_bstack, $I11
    repr_get_attr_int rx978_pos, $P11, rx978_curclass, "$!pos"
    nqp_rxpeek $I19, rx978_bstack, rxquantr980_done2228
    inc $I19
    inc $I19
    set rx978_rep, rx978_bstack[$I19]
    nqp_rxcommit rx978_bstack, rxquantr980_done2228
    inc rx978_rep
  rxquantr980_done2228:
    nqp_rxmark rx978_bstack, rxquantr982_done2232, rx978_pos, 0
  rxquantr982_loop2231:
    repr_bind_attr_int rx978_cur, rx978_curclass, "$!pos", rx978_pos
    $P11 = rx978_cur."flags"()
    repr_get_attr_int $I11, $P11, rx978_curclass, "$!pos"
    lt $I11, 0, rx978_fail2220
    goto rxsubrule983_pass2233
  rxsubrule983_back2234:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx978_curclass, "$!pos"
    lt $I11, 0, rx978_fail2220
  rxsubrule983_pass2233:
    rx978_cstack = rx978_cur."!cursor_capture"($P11, "flags")
    set_addr $I11, rxsubrule983_back2234
    push rx978_bstack, $I11
    push rx978_bstack, 0
    push rx978_bstack, rx978_pos
    elements $I11, rx978_cstack
    push rx978_bstack, $I11
    repr_get_attr_int rx978_pos, $P11, rx978_curclass, "$!pos"
    nqp_rxpeek $I19, rx978_bstack, rxquantr982_done2232
    inc $I19
    inc $I19
    set rx978_rep, rx978_bstack[$I19]
    nqp_rxcommit rx978_bstack, rxquantr982_done2232
    inc rx978_rep
    nqp_rxmark rx978_bstack, rxquantr982_done2232, rx978_pos, rx978_rep
    goto rxquantr982_loop2231
  rxquantr982_done2232:
    nqp_rxmark rx978_bstack, rxquantr984_done2236, rx978_pos, 0
  rxquantr984_loop2235:
    repr_bind_attr_int rx978_cur, rx978_curclass, "$!pos", rx978_pos
    $P11 = rx978_cur."size"()
    repr_get_attr_int $I11, $P11, rx978_curclass, "$!pos"
    lt $I11, 0, rx978_fail2220
    goto rxsubrule985_pass2237
  rxsubrule985_back2238:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx978_curclass, "$!pos"
    lt $I11, 0, rx978_fail2220
  rxsubrule985_pass2237:
    rx978_cstack = rx978_cur."!cursor_capture"($P11, "size")
    set_addr $I11, rxsubrule985_back2238
    push rx978_bstack, $I11
    push rx978_bstack, 0
    push rx978_bstack, rx978_pos
    elements $I11, rx978_cstack
    push rx978_bstack, $I11
    repr_get_attr_int rx978_pos, $P11, rx978_curclass, "$!pos"
    nqp_rxpeek $I19, rx978_bstack, rxquantr984_done2236
    inc $I19
    inc $I19
    set rx978_rep, rx978_bstack[$I19]
    nqp_rxcommit rx978_bstack, rxquantr984_done2236
    inc rx978_rep
  rxquantr984_done2236:
    nqp_rxmark rx978_bstack, rxcap986_fail2240, rx978_pos, 0
    add $I11, rx978_pos, 1
    gt $I11, rx978_eos, rx978_fail2220
    ord $I11, rx978_tgt, rx978_pos
    ne $I11, 117, rx978_fail2220
    add rx978_pos, 1
    nqp_rxpeek $I19, rx978_bstack, rxcap986_fail2240
    inc $I19
    set $I11, rx978_bstack[$I19]
    repr_bind_attr_int rx978_cur, rx978_curclass, "$!pos", rx978_pos
    $P11 = rx978_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx978_pos)
    rx978_cstack = rx978_cur."!cursor_capture"($P11, "sym")
    goto rxcap986_done2239
  rxcap986_fail2240:
    goto rx978_fail2220
  rxcap986_done2239:
    rx978_cur."!cursor_pass"(rx978_pos, "directive:sym<u>")
    .return (rx978_cur)
  rx978_restart2219:
    repr_get_attr_obj rx978_cstack, rx978_cur, rx978_curclass, "$!cstack"
  rx978_fail2220:
    unless rx978_bstack, rx978_done2218
    pop $I19, rx978_bstack
    if_null rx978_cstack, rx978_cstack_done2223
    unless rx978_cstack, rx978_cstack_done2223
    dec $I19
    set $P11, rx978_cstack[$I19]
  rx978_cstack_done2223:
    pop rx978_rep, rx978_bstack
    pop rx978_pos, rx978_bstack
    pop $I19, rx978_bstack
    lt rx978_pos, -1, rx978_done2218
    lt rx978_pos, 0, rx978_fail2220
    eq $I19, 0, rx978_fail2220
    nqp_islist $I20, rx978_cstack
    unless $I20, rx978_jump2221
    elements $I18, rx978_bstack
    le $I18, 0, rx978_cut2222
    dec $I18
    set $I18, rx978_bstack[$I18]
  rx978_cut2222:
    assign rx978_cstack, $I18
  rx978_jump2221:
    jump $I19
  rx978_done2218:
    rx978_cur."!cursor_fail"()
    .return (rx978_cur) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<x>" :subid("cuid_206_1431289891.89934") :anon :lex :outer("cuid_258_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2132
    .param pmc __lowered_lex_570 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc self 
    .local pmc __lowered_lex_571 
    set self, __lowered_lex_570
    .local pmc rx987_start
    .local string rx987_tgt
    .local int rx987_pos
    .local int rx987_off
    .local int rx987_eos
    .local int rx987_rep
    .local pmc rx987_cur
    .local pmc rx987_curclass
    .local pmc rx987_bstack
    .local pmc rx987_cstack
    rx987_start = self."!cursor_start_all"()
    set rx987_cur, rx987_start[0]
    set rx987_tgt, rx987_start[1]
    set rx987_pos, rx987_start[2]
    set rx987_curclass, rx987_start[3]
    set rx987_bstack, rx987_start[4]
    set $I19, rx987_start[5]
    store_lex unicode:"$\x{a2}", rx987_cur
    length rx987_eos, rx987_tgt
    eq $I19, 1, rx987_restart2243
    gt rx987_pos, rx987_eos, rx987_fail2244
    repr_get_attr_int $I11, self, rx987_curclass, "$!from"
    ne $I11, -1, rxscan988_done2250
    goto rxscan988_scan2249
  rxscan988_loop2248:
    inc rx987_pos
    index rx987_pos, rx987_tgt, ucs4:"%", rx987_pos
    eq rx987_pos, -1, rx987_fail2244
    repr_bind_attr_int rx987_cur, rx987_curclass, "$!from", rx987_pos
  rxscan988_scan2249:
    nqp_rxmark rx987_bstack, rxscan988_loop2248, rx987_pos, 0
  rxscan988_done2250:
    add $I11, rx987_pos, 1
    gt $I11, rx987_eos, rx987_fail2244
    ord $I11, rx987_tgt, rx987_pos
    ne $I11, 37, rx987_fail2244
    add rx987_pos, 1
    nqp_rxmark rx987_bstack, rxquantr989_done2252, rx987_pos, 0
  rxquantr989_loop2251:
    repr_bind_attr_int rx987_cur, rx987_curclass, "$!pos", rx987_pos
    $P11 = rx987_cur."idx"()
    repr_get_attr_int $I11, $P11, rx987_curclass, "$!pos"
    lt $I11, 0, rx987_fail2244
    goto rxsubrule990_pass2253
  rxsubrule990_back2254:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx987_curclass, "$!pos"
    lt $I11, 0, rx987_fail2244
  rxsubrule990_pass2253:
    rx987_cstack = rx987_cur."!cursor_capture"($P11, "idx")
    set_addr $I11, rxsubrule990_back2254
    push rx987_bstack, $I11
    push rx987_bstack, 0
    push rx987_bstack, rx987_pos
    elements $I11, rx987_cstack
    push rx987_bstack, $I11
    repr_get_attr_int rx987_pos, $P11, rx987_curclass, "$!pos"
    nqp_rxpeek $I19, rx987_bstack, rxquantr989_done2252
    inc $I19
    inc $I19
    set rx987_rep, rx987_bstack[$I19]
    nqp_rxcommit rx987_bstack, rxquantr989_done2252
    inc rx987_rep
  rxquantr989_done2252:
    nqp_rxmark rx987_bstack, rxquantr991_done2256, rx987_pos, 0
  rxquantr991_loop2255:
    repr_bind_attr_int rx987_cur, rx987_curclass, "$!pos", rx987_pos
    $P11 = rx987_cur."flags"()
    repr_get_attr_int $I11, $P11, rx987_curclass, "$!pos"
    lt $I11, 0, rx987_fail2244
    goto rxsubrule992_pass2257
  rxsubrule992_back2258:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx987_curclass, "$!pos"
    lt $I11, 0, rx987_fail2244
  rxsubrule992_pass2257:
    rx987_cstack = rx987_cur."!cursor_capture"($P11, "flags")
    set_addr $I11, rxsubrule992_back2258
    push rx987_bstack, $I11
    push rx987_bstack, 0
    push rx987_bstack, rx987_pos
    elements $I11, rx987_cstack
    push rx987_bstack, $I11
    repr_get_attr_int rx987_pos, $P11, rx987_curclass, "$!pos"
    nqp_rxpeek $I19, rx987_bstack, rxquantr991_done2256
    inc $I19
    inc $I19
    set rx987_rep, rx987_bstack[$I19]
    nqp_rxcommit rx987_bstack, rxquantr991_done2256
    inc rx987_rep
    nqp_rxmark rx987_bstack, rxquantr991_done2256, rx987_pos, rx987_rep
    goto rxquantr991_loop2255
  rxquantr991_done2256:
    nqp_rxmark rx987_bstack, rxquantr993_done2260, rx987_pos, 0
  rxquantr993_loop2259:
    repr_bind_attr_int rx987_cur, rx987_curclass, "$!pos", rx987_pos
    $P11 = rx987_cur."size"()
    repr_get_attr_int $I11, $P11, rx987_curclass, "$!pos"
    lt $I11, 0, rx987_fail2244
    goto rxsubrule994_pass2261
  rxsubrule994_back2262:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx987_curclass, "$!pos"
    lt $I11, 0, rx987_fail2244
  rxsubrule994_pass2261:
    rx987_cstack = rx987_cur."!cursor_capture"($P11, "size")
    set_addr $I11, rxsubrule994_back2262
    push rx987_bstack, $I11
    push rx987_bstack, 0
    push rx987_bstack, rx987_pos
    elements $I11, rx987_cstack
    push rx987_bstack, $I11
    repr_get_attr_int rx987_pos, $P11, rx987_curclass, "$!pos"
    nqp_rxpeek $I19, rx987_bstack, rxquantr993_done2260
    inc $I19
    inc $I19
    set rx987_rep, rx987_bstack[$I19]
    nqp_rxcommit rx987_bstack, rxquantr993_done2260
    inc rx987_rep
  rxquantr993_done2260:
    nqp_rxmark rx987_bstack, rxquantr995_done2264, rx987_pos, 0
  rxquantr995_loop2263:
    add $I11, rx987_pos, 1
    gt $I11, rx987_eos, rx987_fail2244
    ord $I11, rx987_tgt, rx987_pos
    ne $I11, 46, rx987_fail2244
    add rx987_pos, 1
    repr_bind_attr_int rx987_cur, rx987_curclass, "$!pos", rx987_pos
    $P11 = rx987_cur."size"()
    repr_get_attr_int $I11, $P11, rx987_curclass, "$!pos"
    lt $I11, 0, rx987_fail2244
    nqp_rxmark rx987_bstack, rxsubrule996_pass2265, -1, 0
  rxsubrule996_pass2265:
    rx987_cstack = rx987_cur."!cursor_capture"($P11, "precision")
    repr_get_attr_int rx987_pos, $P11, rx987_curclass, "$!pos"
    nqp_rxpeek $I19, rx987_bstack, rxquantr995_done2264
    inc $I19
    inc $I19
    set rx987_rep, rx987_bstack[$I19]
    nqp_rxcommit rx987_bstack, rxquantr995_done2264
    inc rx987_rep
  rxquantr995_done2264:
    nqp_rxmark rx987_bstack, rxcap997_fail2267, rx987_pos, 0
    ge rx987_pos, rx987_eos, rx987_fail2244
    substr $S11, rx987_tgt, rx987_pos, 1
    index $I11, ucs4:"xX", $S11
    lt $I11, 0, rx987_fail2244
    inc rx987_pos
    nqp_rxpeek $I19, rx987_bstack, rxcap997_fail2267
    inc $I19
    set $I11, rx987_bstack[$I19]
    repr_bind_attr_int rx987_cur, rx987_curclass, "$!pos", rx987_pos
    $P11 = rx987_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx987_pos)
    rx987_cstack = rx987_cur."!cursor_capture"($P11, "sym")
    goto rxcap997_done2266
  rxcap997_fail2267:
    goto rx987_fail2244
  rxcap997_done2266:
    rx987_cur."!cursor_pass"(rx987_pos, "directive:sym<x>")
    .return (rx987_cur)
  rx987_restart2243:
    repr_get_attr_obj rx987_cstack, rx987_cur, rx987_curclass, "$!cstack"
  rx987_fail2244:
    unless rx987_bstack, rx987_done2242
    pop $I19, rx987_bstack
    if_null rx987_cstack, rx987_cstack_done2247
    unless rx987_cstack, rx987_cstack_done2247
    dec $I19
    set $P11, rx987_cstack[$I19]
  rx987_cstack_done2247:
    pop rx987_rep, rx987_bstack
    pop rx987_pos, rx987_bstack
    pop $I19, rx987_bstack
    lt rx987_pos, -1, rx987_done2242
    lt rx987_pos, 0, rx987_fail2244
    eq $I19, 0, rx987_fail2244
    nqp_islist $I20, rx987_cstack
    unless $I20, rx987_jump2245
    elements $I18, rx987_bstack
    le $I18, 0, rx987_cut2246
    dec $I18
    set $I18, rx987_bstack[$I18]
  rx987_cut2246:
    assign rx987_cstack, $I18
  rx987_jump2245:
    jump $I19
  rx987_done2242:
    rx987_cur."!cursor_fail"()
    .return (rx987_cur) 
.end
.HLL "nqp"
.namespace []
.sub "escape" :subid("cuid_207_1431289891.89934") :anon :lex :outer("cuid_258_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2134
    .param pmc self 
    $P5001 = self."!protoregex"("escape")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "escape:sym<%>" :subid("cuid_208_1431289891.89934") :anon :lex :outer("cuid_258_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2135
    .param pmc __lowered_lex_572 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc self 
    .local pmc __lowered_lex_573 
    set self, __lowered_lex_572
    .local pmc rx998_start
    .local string rx998_tgt
    .local int rx998_pos
    .local int rx998_off
    .local int rx998_eos
    .local int rx998_rep
    .local pmc rx998_cur
    .local pmc rx998_curclass
    .local pmc rx998_bstack
    .local pmc rx998_cstack
    rx998_start = self."!cursor_start_all"()
    set rx998_cur, rx998_start[0]
    set rx998_tgt, rx998_start[1]
    set rx998_pos, rx998_start[2]
    set rx998_curclass, rx998_start[3]
    set rx998_bstack, rx998_start[4]
    set $I19, rx998_start[5]
    store_lex unicode:"$\x{a2}", rx998_cur
    length rx998_eos, rx998_tgt
    eq $I19, 1, rx998_restart2270
    gt rx998_pos, rx998_eos, rx998_fail2271
    repr_get_attr_int $I11, self, rx998_curclass, "$!from"
    ne $I11, -1, rxscan999_done2277
    goto rxscan999_scan2276
  rxscan999_loop2275:
    inc rx998_pos
    index rx998_pos, rx998_tgt, ucs4:"%", rx998_pos
    eq rx998_pos, -1, rx998_fail2271
    repr_bind_attr_int rx998_cur, rx998_curclass, "$!from", rx998_pos
  rxscan999_scan2276:
    nqp_rxmark rx998_bstack, rxscan999_loop2275, rx998_pos, 0
  rxscan999_done2277:
    add $I11, rx998_pos, 1
    gt $I11, rx998_eos, rx998_fail2271
    ord $I11, rx998_tgt, rx998_pos
    ne $I11, 37, rx998_fail2271
    add rx998_pos, 1
    nqp_rxmark rx998_bstack, rxquantr1000_done2279, rx998_pos, 0
  rxquantr1000_loop2278:
    repr_bind_attr_int rx998_cur, rx998_curclass, "$!pos", rx998_pos
    $P11 = rx998_cur."flags"()
    repr_get_attr_int $I11, $P11, rx998_curclass, "$!pos"
    lt $I11, 0, rx998_fail2271
    goto rxsubrule1001_pass2280
  rxsubrule1001_back2281:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx998_curclass, "$!pos"
    lt $I11, 0, rx998_fail2271
  rxsubrule1001_pass2280:
    rx998_cstack = rx998_cur."!cursor_capture"($P11, "flags")
    set_addr $I11, rxsubrule1001_back2281
    push rx998_bstack, $I11
    push rx998_bstack, 0
    push rx998_bstack, rx998_pos
    elements $I11, rx998_cstack
    push rx998_bstack, $I11
    repr_get_attr_int rx998_pos, $P11, rx998_curclass, "$!pos"
    nqp_rxpeek $I19, rx998_bstack, rxquantr1000_done2279
    inc $I19
    inc $I19
    set rx998_rep, rx998_bstack[$I19]
    nqp_rxcommit rx998_bstack, rxquantr1000_done2279
    inc rx998_rep
    nqp_rxmark rx998_bstack, rxquantr1000_done2279, rx998_pos, rx998_rep
    goto rxquantr1000_loop2278
  rxquantr1000_done2279:
    nqp_rxmark rx998_bstack, rxquantr1002_done2283, rx998_pos, 0
  rxquantr1002_loop2282:
    repr_bind_attr_int rx998_cur, rx998_curclass, "$!pos", rx998_pos
    $P11 = rx998_cur."size"()
    repr_get_attr_int $I11, $P11, rx998_curclass, "$!pos"
    lt $I11, 0, rx998_fail2271
    goto rxsubrule1003_pass2284
  rxsubrule1003_back2285:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx998_curclass, "$!pos"
    lt $I11, 0, rx998_fail2271
  rxsubrule1003_pass2284:
    rx998_cstack = rx998_cur."!cursor_capture"($P11, "size")
    set_addr $I11, rxsubrule1003_back2285
    push rx998_bstack, $I11
    push rx998_bstack, 0
    push rx998_bstack, rx998_pos
    elements $I11, rx998_cstack
    push rx998_bstack, $I11
    repr_get_attr_int rx998_pos, $P11, rx998_curclass, "$!pos"
    nqp_rxpeek $I19, rx998_bstack, rxquantr1002_done2283
    inc $I19
    inc $I19
    set rx998_rep, rx998_bstack[$I19]
    nqp_rxcommit rx998_bstack, rxquantr1002_done2283
    inc rx998_rep
  rxquantr1002_done2283:
    nqp_rxmark rx998_bstack, rxcap1004_fail2287, rx998_pos, 0
    add $I11, rx998_pos, 1
    gt $I11, rx998_eos, rx998_fail2271
    ord $I11, rx998_tgt, rx998_pos
    ne $I11, 37, rx998_fail2271
    add rx998_pos, 1
    nqp_rxpeek $I19, rx998_bstack, rxcap1004_fail2287
    inc $I19
    set $I11, rx998_bstack[$I19]
    repr_bind_attr_int rx998_cur, rx998_curclass, "$!pos", rx998_pos
    $P11 = rx998_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx998_pos)
    rx998_cstack = rx998_cur."!cursor_capture"($P11, "sym")
    goto rxcap1004_done2286
  rxcap1004_fail2287:
    goto rx998_fail2271
  rxcap1004_done2286:
    rx998_cur."!cursor_pass"(rx998_pos, "escape:sym<%>")
    .return (rx998_cur)
  rx998_restart2270:
    repr_get_attr_obj rx998_cstack, rx998_cur, rx998_curclass, "$!cstack"
  rx998_fail2271:
    unless rx998_bstack, rx998_done2269
    pop $I19, rx998_bstack
    if_null rx998_cstack, rx998_cstack_done2274
    unless rx998_cstack, rx998_cstack_done2274
    dec $I19
    set $P11, rx998_cstack[$I19]
  rx998_cstack_done2274:
    pop rx998_rep, rx998_bstack
    pop rx998_pos, rx998_bstack
    pop $I19, rx998_bstack
    lt rx998_pos, -1, rx998_done2269
    lt rx998_pos, 0, rx998_fail2271
    eq $I19, 0, rx998_fail2271
    nqp_islist $I20, rx998_cstack
    unless $I20, rx998_jump2272
    elements $I18, rx998_bstack
    le $I18, 0, rx998_cut2273
    dec $I18
    set $I18, rx998_bstack[$I18]
  rx998_cut2273:
    assign rx998_cstack, $I18
  rx998_jump2272:
    jump $I19
  rx998_done2269:
    rx998_cur."!cursor_fail"()
    .return (rx998_cur) 
.end
.HLL "nqp"
.namespace []
.sub "literal" :subid("cuid_209_1431289891.89934") :anon :lex :outer("cuid_258_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2137
    .param pmc __lowered_lex_574 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc self 
    .local pmc __lowered_lex_575 
    set self, __lowered_lex_574
    .local pmc rx1005_start
    .local string rx1005_tgt
    .local int rx1005_pos
    .local int rx1005_off
    .local int rx1005_eos
    .local int rx1005_rep
    .local pmc rx1005_cur
    .local pmc rx1005_curclass
    .local pmc rx1005_bstack
    .local pmc rx1005_cstack
    rx1005_start = self."!cursor_start_all"()
    set rx1005_cur, rx1005_start[0]
    set rx1005_tgt, rx1005_start[1]
    set rx1005_pos, rx1005_start[2]
    set rx1005_curclass, rx1005_start[3]
    set rx1005_bstack, rx1005_start[4]
    set $I19, rx1005_start[5]
    store_lex unicode:"$\x{a2}", rx1005_cur
    length rx1005_eos, rx1005_tgt
    eq $I19, 1, rx1005_restart2290
    gt rx1005_pos, rx1005_eos, rx1005_fail2291
    repr_get_attr_int $I11, self, rx1005_curclass, "$!from"
    ne $I11, -1, rxscan1006_done2297
    goto rxscan1006_scan2296
  rxscan1006_loop2295:
    inc rx1005_pos
    gt rx1005_pos, rx1005_eos, rx1005_fail2291
    repr_bind_attr_int rx1005_cur, rx1005_curclass, "$!from", rx1005_pos
  rxscan1006_scan2296:
    nqp_rxmark rx1005_bstack, rxscan1006_loop2295, rx1005_pos, 0
  rxscan1006_done2297:
    nqp_rxmark rx1005_bstack, rxquantr1007_done2299, -1, 0
  rxquantr1007_loop2298:
    ge rx1005_pos, rx1005_eos, rx1005_fail2291
    substr $S11, rx1005_tgt, rx1005_pos, 1
    index $I11, ucs4:"%", $S11
    ge $I11, 0, rx1005_fail2291
    inc rx1005_pos
    nqp_rxpeek $I19, rx1005_bstack, rxquantr1007_done2299
    inc $I19
    inc $I19
    set rx1005_rep, rx1005_bstack[$I19]
    nqp_rxcommit rx1005_bstack, rxquantr1007_done2299
    inc rx1005_rep
    nqp_rxmark rx1005_bstack, rxquantr1007_done2299, rx1005_pos, rx1005_rep
    goto rxquantr1007_loop2298
  rxquantr1007_done2299:
    rx1005_cur."!cursor_pass"(rx1005_pos, "literal")
    .return (rx1005_cur)
  rx1005_restart2290:
    repr_get_attr_obj rx1005_cstack, rx1005_cur, rx1005_curclass, "$!cstack"
  rx1005_fail2291:
    unless rx1005_bstack, rx1005_done2289
    pop $I19, rx1005_bstack
    if_null rx1005_cstack, rx1005_cstack_done2294
    unless rx1005_cstack, rx1005_cstack_done2294
    dec $I19
    set $P11, rx1005_cstack[$I19]
  rx1005_cstack_done2294:
    pop rx1005_rep, rx1005_bstack
    pop rx1005_pos, rx1005_bstack
    pop $I19, rx1005_bstack
    lt rx1005_pos, -1, rx1005_done2289
    lt rx1005_pos, 0, rx1005_fail2291
    eq $I19, 0, rx1005_fail2291
    nqp_islist $I20, rx1005_cstack
    unless $I20, rx1005_jump2292
    elements $I18, rx1005_bstack
    le $I18, 0, rx1005_cut2293
    dec $I18
    set $I18, rx1005_bstack[$I18]
  rx1005_cut2293:
    assign rx1005_cstack, $I18
  rx1005_jump2292:
    jump $I19
  rx1005_done2289:
    rx1005_cur."!cursor_fail"()
    .return (rx1005_cur) 
.end
.HLL "nqp"
.namespace []
.sub "idx" :subid("cuid_210_1431289891.89934") :anon :lex :outer("cuid_258_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2139
    .param pmc __lowered_lex_576 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc self 
    .local pmc __lowered_lex_577 
    set self, __lowered_lex_576
    .local pmc rx1008_start
    .local string rx1008_tgt
    .local int rx1008_pos
    .local int rx1008_off
    .local int rx1008_eos
    .local int rx1008_rep
    .local pmc rx1008_cur
    .local pmc rx1008_curclass
    .local pmc rx1008_bstack
    .local pmc rx1008_cstack
    rx1008_start = self."!cursor_start_all"()
    set rx1008_cur, rx1008_start[0]
    set rx1008_tgt, rx1008_start[1]
    set rx1008_pos, rx1008_start[2]
    set rx1008_curclass, rx1008_start[3]
    set rx1008_bstack, rx1008_start[4]
    set $I19, rx1008_start[5]
    store_lex unicode:"$\x{a2}", rx1008_cur
    length rx1008_eos, rx1008_tgt
    eq $I19, 1, rx1008_restart2302
    gt rx1008_pos, rx1008_eos, rx1008_fail2303
    repr_get_attr_int $I11, self, rx1008_curclass, "$!from"
    ne $I11, -1, rxscan1009_done2309
    goto rxscan1009_scan2308
  rxscan1009_loop2307:
    inc rx1008_pos
    gt rx1008_pos, rx1008_eos, rx1008_fail2303
    repr_bind_attr_int rx1008_cur, rx1008_curclass, "$!from", rx1008_pos
  rxscan1009_scan2308:
    nqp_rxmark rx1008_bstack, rxscan1009_loop2307, rx1008_pos, 0
  rxscan1009_done2309:
    nqp_rxmark rx1008_bstack, rxcap1010_fail2311, rx1008_pos, 0
    nqp_rxmark rx1008_bstack, rxquantr1011_done2313, -1, 0
  rxquantr1011_loop2312:
    ge rx1008_pos, rx1008_eos, rx1008_fail2303
    is_cclass $I11, .CCLASS_NUMERIC, rx1008_tgt, rx1008_pos
    unless $I11, rx1008_fail2303
    inc rx1008_pos
    nqp_rxpeek $I19, rx1008_bstack, rxquantr1011_done2313
    inc $I19
    inc $I19
    set rx1008_rep, rx1008_bstack[$I19]
    nqp_rxcommit rx1008_bstack, rxquantr1011_done2313
    inc rx1008_rep
    nqp_rxmark rx1008_bstack, rxquantr1011_done2313, rx1008_pos, rx1008_rep
    goto rxquantr1011_loop2312
  rxquantr1011_done2313:
    nqp_rxpeek $I19, rx1008_bstack, rxcap1010_fail2311
    inc $I19
    set $I11, rx1008_bstack[$I19]
    repr_bind_attr_int rx1008_cur, rx1008_curclass, "$!pos", rx1008_pos
    $P11 = rx1008_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx1008_pos)
    rx1008_cstack = rx1008_cur."!cursor_capture"($P11, "param_index")
    goto rxcap1010_done2310
  rxcap1010_fail2311:
    goto rx1008_fail2303
  rxcap1010_done2310:
    add $I11, rx1008_pos, 1
    gt $I11, rx1008_eos, rx1008_fail2303
    ord $I11, rx1008_tgt, rx1008_pos
    ne $I11, 36, rx1008_fail2303
    add rx1008_pos, 1
    rx1008_cur."!cursor_pass"(rx1008_pos, "idx")
    .return (rx1008_cur)
  rx1008_restart2302:
    repr_get_attr_obj rx1008_cstack, rx1008_cur, rx1008_curclass, "$!cstack"
  rx1008_fail2303:
    unless rx1008_bstack, rx1008_done2301
    pop $I19, rx1008_bstack
    if_null rx1008_cstack, rx1008_cstack_done2306
    unless rx1008_cstack, rx1008_cstack_done2306
    dec $I19
    set $P11, rx1008_cstack[$I19]
  rx1008_cstack_done2306:
    pop rx1008_rep, rx1008_bstack
    pop rx1008_pos, rx1008_bstack
    pop $I19, rx1008_bstack
    lt rx1008_pos, -1, rx1008_done2301
    lt rx1008_pos, 0, rx1008_fail2303
    eq $I19, 0, rx1008_fail2303
    nqp_islist $I20, rx1008_cstack
    unless $I20, rx1008_jump2304
    elements $I18, rx1008_bstack
    le $I18, 0, rx1008_cut2305
    dec $I18
    set $I18, rx1008_bstack[$I18]
  rx1008_cut2305:
    assign rx1008_cstack, $I18
  rx1008_jump2304:
    jump $I19
  rx1008_done2301:
    rx1008_cur."!cursor_fail"()
    .return (rx1008_cur) 
.end
.HLL "nqp"
.namespace []
.sub "flags" :subid("cuid_211_1431289891.89934") :anon :lex :outer("cuid_258_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2143
    .param pmc __lowered_lex_578 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc self 
    .local pmc __lowered_lex_579 
    set self, __lowered_lex_578
    .local pmc rx1012_start
    .local string rx1012_tgt
    .local int rx1012_pos
    .local int rx1012_off
    .local int rx1012_eos
    .local int rx1012_rep
    .local pmc rx1012_cur
    .local pmc rx1012_curclass
    .local pmc rx1012_bstack
    .local pmc rx1012_cstack
    rx1012_start = self."!cursor_start_all"()
    set rx1012_cur, rx1012_start[0]
    set rx1012_tgt, rx1012_start[1]
    set rx1012_pos, rx1012_start[2]
    set rx1012_curclass, rx1012_start[3]
    set rx1012_bstack, rx1012_start[4]
    set $I19, rx1012_start[5]
    store_lex unicode:"$\x{a2}", rx1012_cur
    length rx1012_eos, rx1012_tgt
    eq $I19, 1, rx1012_restart2316
    gt rx1012_pos, rx1012_eos, rx1012_fail2317
    repr_get_attr_int $I11, self, rx1012_curclass, "$!from"
    ne $I11, -1, rxscan1013_done2323
    goto rxscan1013_scan2322
  rxscan1013_loop2321:
    inc rx1012_pos
    gt rx1012_pos, rx1012_eos, rx1012_fail2317
    repr_bind_attr_int rx1012_cur, rx1012_curclass, "$!from", rx1012_pos
  rxscan1013_scan2322:
    nqp_rxmark rx1012_bstack, rxscan1013_loop2321, rx1012_pos, 0
  rxscan1013_done2323:
    new $P11, "ResizableIntegerArray"
    assign $P11, 5
    assign $P11, 0
    nqp_push_label $P11, alt1014_02325
    nqp_push_label $P11, alt1014_12328
    nqp_push_label $P11, alt1014_22331
    nqp_push_label $P11, alt1014_32334
    nqp_push_label $P11, alt1014_42337
    nqp_rxmark rx1012_bstack, alt1014_end2324, -1, 0
    rx1012_cur."!alt"(rx1012_pos, "alt_nfa__13_1431289895.69277", $P11)
    goto rx1012_fail2317
  alt1014_02325:
    nqp_rxmark rx1012_bstack, rxcap1015_fail2327, rx1012_pos, 0
    add $I11, rx1012_pos, 1
    gt $I11, rx1012_eos, rx1012_fail2317
    ord $I11, rx1012_tgt, rx1012_pos
    ne $I11, 32, rx1012_fail2317
    add rx1012_pos, 1
    nqp_rxpeek $I19, rx1012_bstack, rxcap1015_fail2327
    inc $I19
    set $I11, rx1012_bstack[$I19]
    repr_bind_attr_int rx1012_cur, rx1012_curclass, "$!pos", rx1012_pos
    $P11 = rx1012_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx1012_pos)
    rx1012_cstack = rx1012_cur."!cursor_capture"($P11, "space")
    goto rxcap1015_done2326
  rxcap1015_fail2327:
    goto rx1012_fail2317
  rxcap1015_done2326:
    goto alt1014_end2324
  alt1014_12328:
    nqp_rxmark rx1012_bstack, rxcap1016_fail2330, rx1012_pos, 0
    add $I11, rx1012_pos, 1
    gt $I11, rx1012_eos, rx1012_fail2317
    ord $I11, rx1012_tgt, rx1012_pos
    ne $I11, 43, rx1012_fail2317
    add rx1012_pos, 1
    nqp_rxpeek $I19, rx1012_bstack, rxcap1016_fail2330
    inc $I19
    set $I11, rx1012_bstack[$I19]
    repr_bind_attr_int rx1012_cur, rx1012_curclass, "$!pos", rx1012_pos
    $P11 = rx1012_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx1012_pos)
    rx1012_cstack = rx1012_cur."!cursor_capture"($P11, "plus")
    goto rxcap1016_done2329
  rxcap1016_fail2330:
    goto rx1012_fail2317
  rxcap1016_done2329:
    goto alt1014_end2324
  alt1014_22331:
    nqp_rxmark rx1012_bstack, rxcap1017_fail2333, rx1012_pos, 0
    add $I11, rx1012_pos, 1
    gt $I11, rx1012_eos, rx1012_fail2317
    ord $I11, rx1012_tgt, rx1012_pos
    ne $I11, 45, rx1012_fail2317
    add rx1012_pos, 1
    nqp_rxpeek $I19, rx1012_bstack, rxcap1017_fail2333
    inc $I19
    set $I11, rx1012_bstack[$I19]
    repr_bind_attr_int rx1012_cur, rx1012_curclass, "$!pos", rx1012_pos
    $P11 = rx1012_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx1012_pos)
    rx1012_cstack = rx1012_cur."!cursor_capture"($P11, "minus")
    goto rxcap1017_done2332
  rxcap1017_fail2333:
    goto rx1012_fail2317
  rxcap1017_done2332:
    goto alt1014_end2324
  alt1014_32334:
    nqp_rxmark rx1012_bstack, rxcap1018_fail2336, rx1012_pos, 0
    add $I11, rx1012_pos, 1
    gt $I11, rx1012_eos, rx1012_fail2317
    ord $I11, rx1012_tgt, rx1012_pos
    ne $I11, 48, rx1012_fail2317
    add rx1012_pos, 1
    nqp_rxpeek $I19, rx1012_bstack, rxcap1018_fail2336
    inc $I19
    set $I11, rx1012_bstack[$I19]
    repr_bind_attr_int rx1012_cur, rx1012_curclass, "$!pos", rx1012_pos
    $P11 = rx1012_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx1012_pos)
    rx1012_cstack = rx1012_cur."!cursor_capture"($P11, "zero")
    goto rxcap1018_done2335
  rxcap1018_fail2336:
    goto rx1012_fail2317
  rxcap1018_done2335:
    goto alt1014_end2324
  alt1014_42337:
    nqp_rxmark rx1012_bstack, rxcap1019_fail2339, rx1012_pos, 0
    add $I11, rx1012_pos, 1
    gt $I11, rx1012_eos, rx1012_fail2317
    ord $I11, rx1012_tgt, rx1012_pos
    ne $I11, 35, rx1012_fail2317
    add rx1012_pos, 1
    nqp_rxpeek $I19, rx1012_bstack, rxcap1019_fail2339
    inc $I19
    set $I11, rx1012_bstack[$I19]
    repr_bind_attr_int rx1012_cur, rx1012_curclass, "$!pos", rx1012_pos
    $P11 = rx1012_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx1012_pos)
    rx1012_cstack = rx1012_cur."!cursor_capture"($P11, "hash")
    goto rxcap1019_done2338
  rxcap1019_fail2339:
    goto rx1012_fail2317
  rxcap1019_done2338:
    goto alt1014_end2324
  alt1014_end2324:
    rx1012_cur."!cursor_pass"(rx1012_pos, "flags")
    .return (rx1012_cur)
  rx1012_restart2316:
    repr_get_attr_obj rx1012_cstack, rx1012_cur, rx1012_curclass, "$!cstack"
  rx1012_fail2317:
    unless rx1012_bstack, rx1012_done2315
    pop $I19, rx1012_bstack
    if_null rx1012_cstack, rx1012_cstack_done2320
    unless rx1012_cstack, rx1012_cstack_done2320
    dec $I19
    set $P11, rx1012_cstack[$I19]
  rx1012_cstack_done2320:
    pop rx1012_rep, rx1012_bstack
    pop rx1012_pos, rx1012_bstack
    pop $I19, rx1012_bstack
    lt rx1012_pos, -1, rx1012_done2315
    lt rx1012_pos, 0, rx1012_fail2317
    eq $I19, 0, rx1012_fail2317
    nqp_islist $I20, rx1012_cstack
    unless $I20, rx1012_jump2318
    elements $I18, rx1012_bstack
    le $I18, 0, rx1012_cut2319
    dec $I18
    set $I18, rx1012_bstack[$I18]
  rx1012_cut2319:
    assign rx1012_cstack, $I18
  rx1012_jump2318:
    jump $I19
  rx1012_done2315:
    rx1012_cur."!cursor_fail"()
    .return (rx1012_cur) 
.end
.HLL "nqp"
.namespace []
.sub "size" :subid("cuid_212_1431289891.89934") :anon :lex :outer("cuid_258_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2151
    .param pmc __lowered_lex_580 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc self 
    .local pmc __lowered_lex_581 
    set self, __lowered_lex_580
    .local pmc rx1020_start
    .local string rx1020_tgt
    .local int rx1020_pos
    .local int rx1020_off
    .local int rx1020_eos
    .local int rx1020_rep
    .local pmc rx1020_cur
    .local pmc rx1020_curclass
    .local pmc rx1020_bstack
    .local pmc rx1020_cstack
    rx1020_start = self."!cursor_start_all"()
    set rx1020_cur, rx1020_start[0]
    set rx1020_tgt, rx1020_start[1]
    set rx1020_pos, rx1020_start[2]
    set rx1020_curclass, rx1020_start[3]
    set rx1020_bstack, rx1020_start[4]
    set $I19, rx1020_start[5]
    store_lex unicode:"$\x{a2}", rx1020_cur
    length rx1020_eos, rx1020_tgt
    eq $I19, 1, rx1020_restart2342
    gt rx1020_pos, rx1020_eos, rx1020_fail2343
    repr_get_attr_int $I11, self, rx1020_curclass, "$!from"
    ne $I11, -1, rxscan1021_done2349
    goto rxscan1021_scan2348
  rxscan1021_loop2347:
    inc rx1020_pos
    gt rx1020_pos, rx1020_eos, rx1020_fail2343
    repr_bind_attr_int rx1020_cur, rx1020_curclass, "$!from", rx1020_pos
  rxscan1021_scan2348:
    nqp_rxmark rx1020_bstack, rxscan1021_loop2347, rx1020_pos, 0
  rxscan1021_done2349:
    new $P11, "ResizableIntegerArray"
    assign $P11, 2
    assign $P11, 0
    nqp_push_label $P11, alt1022_02351
    nqp_push_label $P11, alt1022_12354
    nqp_rxmark rx1020_bstack, alt1022_end2350, -1, 0
    rx1020_cur."!alt"(rx1020_pos, "alt_nfa__14_1431289895.69743", $P11)
    goto rx1020_fail2343
  alt1022_02351:
    nqp_rxmark rx1020_bstack, rxquantr1023_done2353, rx1020_pos, 0
  rxquantr1023_loop2352:
    ge rx1020_pos, rx1020_eos, rx1020_fail2343
    is_cclass $I11, .CCLASS_NUMERIC, rx1020_tgt, rx1020_pos
    unless $I11, rx1020_fail2343
    inc rx1020_pos
    nqp_rxpeek $I19, rx1020_bstack, rxquantr1023_done2353
    inc $I19
    inc $I19
    set rx1020_rep, rx1020_bstack[$I19]
    nqp_rxcommit rx1020_bstack, rxquantr1023_done2353
    inc rx1020_rep
    nqp_rxmark rx1020_bstack, rxquantr1023_done2353, rx1020_pos, rx1020_rep
    goto rxquantr1023_loop2352
  rxquantr1023_done2353:
    goto alt1022_end2350
  alt1022_12354:
    nqp_rxmark rx1020_bstack, rxcap1024_fail2356, rx1020_pos, 0
    add $I11, rx1020_pos, 1
    gt $I11, rx1020_eos, rx1020_fail2343
    ord $I11, rx1020_tgt, rx1020_pos
    ne $I11, 42, rx1020_fail2343
    add rx1020_pos, 1
    nqp_rxpeek $I19, rx1020_bstack, rxcap1024_fail2356
    inc $I19
    set $I11, rx1020_bstack[$I19]
    repr_bind_attr_int rx1020_cur, rx1020_curclass, "$!pos", rx1020_pos
    $P11 = rx1020_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx1020_pos)
    rx1020_cstack = rx1020_cur."!cursor_capture"($P11, "star")
    goto rxcap1024_done2355
  rxcap1024_fail2356:
    goto rx1020_fail2343
  rxcap1024_done2355:
    goto alt1022_end2350
  alt1022_end2350:
    rx1020_cur."!cursor_pass"(rx1020_pos, "size")
    .return (rx1020_cur)
  rx1020_restart2342:
    repr_get_attr_obj rx1020_cstack, rx1020_cur, rx1020_curclass, "$!cstack"
  rx1020_fail2343:
    unless rx1020_bstack, rx1020_done2341
    pop $I19, rx1020_bstack
    if_null rx1020_cstack, rx1020_cstack_done2346
    unless rx1020_cstack, rx1020_cstack_done2346
    dec $I19
    set $P11, rx1020_cstack[$I19]
  rx1020_cstack_done2346:
    pop rx1020_rep, rx1020_bstack
    pop rx1020_pos, rx1020_bstack
    pop $I19, rx1020_bstack
    lt rx1020_pos, -1, rx1020_done2341
    lt rx1020_pos, 0, rx1020_fail2343
    eq $I19, 0, rx1020_fail2343
    nqp_islist $I20, rx1020_cstack
    unless $I20, rx1020_jump2344
    elements $I18, rx1020_bstack
    le $I18, 0, rx1020_cut2345
    dec $I18
    set $I18, rx1020_bstack[$I18]
  rx1020_cut2345:
    assign rx1020_cstack, $I18
  rx1020_jump2344:
    jump $I19
  rx1020_done2341:
    rx1020_cur."!cursor_fail"()
    .return (rx1020_cur) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_259_1431289891.89934") :anon :lex :outer("cuid_254_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2156
    .const 'Sub' $P5032 = 'cuid_260_1431289891.89934' 
    capture_lex $P5032 
    .const 'Sub' $P5032 = 'cuid_261_1431289891.89934' 
    capture_lex $P5032 
    .const 'Sub' $P5032 = 'cuid_262_1431289891.89934' 
    capture_lex $P5032 
    .const 'Sub' $P5032 = 'cuid_263_1431289891.89934' 
    capture_lex $P5032 
    .const 'Sub' $P5032 = 'cuid_266_1431289891.89934' 
    capture_lex $P5032 
    .const 'Sub' $P5032 = 'cuid_267_1431289891.89934' 
    capture_lex $P5032 
    .const 'Sub' $P5032 = 'cuid_268_1431289891.89934' 
    capture_lex $P5032 
    .const 'Sub' $P5032 = 'cuid_269_1431289891.89934' 
    capture_lex $P5032 
    .const 'Sub' $P5032 = 'cuid_270_1431289891.89934' 
    capture_lex $P5032 
    .const 'Sub' $P5032 = 'cuid_271_1431289891.89934' 
    capture_lex $P5032 
    .const 'Sub' $P5032 = 'cuid_272_1431289891.89934' 
    capture_lex $P5032 
    .const 'Sub' $P5032 = 'cuid_273_1431289891.89934' 
    capture_lex $P5032 
    .const 'Sub' $P5032 = 'cuid_213_1431289891.89934' 
    capture_lex $P5032 
    .const 'Sub' $P5032 = 'cuid_215_1431289891.89934' 
    capture_lex $P5032 
    .const 'Sub' $P5032 = 'cuid_216_1431289891.89934' 
    capture_lex $P5032 
    .const 'Sub' $P5032 = 'cuid_217_1431289891.89934' 
    capture_lex $P5032 
    .const 'Sub' $P5032 = 'cuid_218_1431289891.89934' 
    capture_lex $P5032 
    .const 'Sub' $P5032 = 'cuid_219_1431289891.89934' 
    capture_lex $P5032 
    .const 'Sub' $P5032 = 'cuid_220_1431289891.89934' 
    capture_lex $P5032 
    .const 'Sub' $P5032 = 'cuid_221_1431289891.89934' 
    capture_lex $P5032 
    .const 'Sub' $P5032 = 'cuid_222_1431289891.89934' 
    capture_lex $P5032 
    .const 'Sub' $P5032 = 'cuid_223_1431289891.89934' 
    capture_lex $P5032 
    .const 'Sub' $P5032 = 'cuid_224_1431289891.89934' 
    capture_lex $P5032 
    .const 'Sub' $P5032 = 'cuid_225_1431289891.89934' 
    capture_lex $P5032 
    .const 'Sub' $P5032 = 'cuid_226_1431289891.89934' 
    capture_lex $P5032 
    .const 'Sub' $P5032 = 'cuid_227_1431289891.89934' 
    capture_lex $P5032 
    .const 'Sub' $P5032 = 'cuid_228_1431289891.89934' 
    capture_lex $P5032 
    .const 'Sub' $P5032 = 'cuid_229_1431289891.89934' 
    capture_lex $P5032 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .lex "$knowhow", $P103 
    .lex "$zero", $P104 
    .lex "&infix_x", $P105 
    .lex "&next_argument", $P106 
    .lex "&intify", $P107 
    .lex "&padding_char", $P108 
    .lex "&has_flag", $P109 
    .lex "&pad-with-sign", $P110 
    .lex "&normalize", $P111 
    .lex "&stringify-to-precision", $P112 
    .lex "&stringify-to-precision2", $P113 
    .lex "&fixed-point", $P114 
    .lex "&scientific", $P115 
    .lex "&shortest", $P116 
    .const 'Sub' $P5001 = 'cuid_260_1431289891.89934' 
    capture_lex $P5001
    set $P105, $P5001
    .const 'Sub' $P5002 = 'cuid_261_1431289891.89934' 
    capture_lex $P5002
    set $P106, $P5002
    .const 'Sub' $P5003 = 'cuid_262_1431289891.89934' 
    capture_lex $P5003
    set $P107, $P5003
    .const 'Sub' $P5004 = 'cuid_263_1431289891.89934' 
    capture_lex $P5004
    set $P108, $P5004
    .const 'Sub' $P5005 = 'cuid_266_1431289891.89934' 
    capture_lex $P5005
    set $P109, $P5005
    .const 'Sub' $P5006 = 'cuid_267_1431289891.89934' 
    capture_lex $P5006
    set $P110, $P5006
    .const 'Sub' $P5007 = 'cuid_268_1431289891.89934' 
    capture_lex $P5007
    set $P111, $P5007
    .const 'Sub' $P5008 = 'cuid_269_1431289891.89934' 
    capture_lex $P5008
    set $P112, $P5008
    .const 'Sub' $P5009 = 'cuid_270_1431289891.89934' 
    capture_lex $P5009
    set $P113, $P5009
    .const 'Sub' $P5010 = 'cuid_271_1431289891.89934' 
    capture_lex $P5010
    set $P114, $P5010
    .const 'Sub' $P5011 = 'cuid_272_1431289891.89934' 
    capture_lex $P5011
    set $P115, $P5011
    .const 'Sub' $P5012 = 'cuid_273_1431289891.89934' 
    capture_lex $P5012
    set $P116, $P5012
.annotate 'line', 2157
    get_knowhow $P5013
    $P5014 = $P5013."new_type"("P6bigint" :named("repr"))
    set $P103, $P5014
    repr_box_int $P5015, 0, $P103
    set $P104, $P5015
    .const 'Sub' $P5016 = 'cuid_213_1431289891.89934' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_215_1431289891.89934' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_216_1431289891.89934' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_217_1431289891.89934' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_218_1431289891.89934' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_219_1431289891.89934' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_220_1431289891.89934' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_221_1431289891.89934' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_222_1431289891.89934' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_223_1431289891.89934' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_224_1431289891.89934' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_225_1431289891.89934' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_226_1431289891.89934' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_227_1431289891.89934' 
    capture_lex $P5029
    .const 'Sub' $P5030 = 'cuid_228_1431289891.89934' 
    capture_lex $P5030
    .const 'Sub' $P5031 = 'cuid_229_1431289891.89934' 
    capture_lex $P5031
    .return ($P5031) 
.end
.HLL "nqp"
.namespace []
.sub "infix_x" :subid("cuid_260_1431289891.89934") :anon :lex :outer("cuid_259_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2175
    .param pmc __lowered_lex_582 
    .param pmc __lowered_lex_583 
    .local pmc __lowered_lex_584 
    .local int __lowered_lex_585 
    .local int tmp_10 
    new $P5001, 'QRPA'
    set __lowered_lex_584, $P5001
    set __lowered_lex_585, 0
    new $P5004, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5004, while1025_handlers2360
    push_eh $P5004
  while1025_test2357:
    set tmp_10, __lowered_lex_585
    add $I5002, tmp_10, 1
    set __lowered_lex_585, $I5002
    set $N5001, tmp_10
    set $N5002, __lowered_lex_583
    islt $I5001, $N5001, $N5002
    box $P5005, $I5001
    set $P5003, $P5005
    unless $I5001 goto while1025_done2361 
  while1025_redo2359:
.annotate 'line', 2178
    $P5002 = __lowered_lex_584."push"(__lowered_lex_582)
    set $P5003, $P5002
    goto while1025_test2357 
  while1025_handlers2360:
    .get_results ($P5004)
    pop_upto_eh $P5004
    getattribute $P5006, $P5004, 'type'
    eq $P5006, .CONTROL_LOOP_NEXT, while1025_test2357
    eq $P5006, .CONTROL_LOOP_REDO, while1025_redo2359
  while1025_done2361:
    pop_eh 
    join $S5001, "", __lowered_lex_584
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "next_argument" :subid("cuid_261_1431289891.89934") :anon :lex :outer("cuid_259_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2182
    .param pmc __lowered_lex_586 
    .local pmc fb_tmp_179 
    .local pmc fb_tmp_180 
    .local pmc fb_tmp_181 
    .local pmc pkg_viv_tmp_22 
    .local pmc fb_tmp_182 
    .local pmc fb_tmp_183 
    .local pmc fb_tmp_184 
    .local pmc pkg_viv_tmp_23 
    .local pmc tmp_11 
    .local pmc fb_tmp_185 
    unless_null __lowered_lex_586, fallback2366
    nqp_get_sc_object $P5001, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_586, $P5001
  fallback2366:
    set fb_tmp_179, __lowered_lex_586
    repr_defined $I5001, fb_tmp_179
    unless $I5001 goto if1027_else2364 
    set $P5002, fb_tmp_179["idx"]
    set $P5004, $P5002
    goto if1027_end2365
  if1027_else2364:
    null $P5003
    set $P5004, $P5003
  if1027_end2365:
    unless_null $P5004, vivi_10282367
    nqp_get_sc_object $P5005, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5004, $P5005
  vivi_10282367:
    unless $P5004 goto if1026_else2362 
.annotate 'line', 2183
    box $P5006, 0
    store_lex "$assert_used_args", $P5006
    find_dynamic_lex $P5007, "@*ARGS_HAVE"
    unless_null $P5007, fallback2370
    nqp_get_sc_object $P5009, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 0
    get_who $P5008, $P5009
    set pkg_viv_tmp_22, $P5008
    set fb_tmp_181, pkg_viv_tmp_22
    repr_defined $I5003, fb_tmp_181
    unless $I5003 goto if1030_else2371 
    set $P5010, fb_tmp_181["@ARGS_HAVE"]
    set $P5012, $P5010
    goto if1030_end2372
  if1030_else2371:
    null $P5011
    set $P5012, $P5011
  if1030_end2372:
    unless_null $P5012, vivi_10312373
    new $P5013, 'QRPA'
    set pkg_viv_tmp_22["@ARGS_HAVE"], $P5013
    set $P5012, $P5013
  vivi_10312373:
    unless_null $P5012, vivi_10322374
    die "Contextual @*ARGS_HAVE not found"
    box $P5014, "Contextual @*ARGS_HAVE not found"
    set $P5012, $P5014
  vivi_10322374:
    set $P5007, $P5012
  fallback2370:
    set fb_tmp_180, $P5007
    repr_defined $I5002, fb_tmp_180
    unless $I5002 goto if1029_else2368 
.annotate 'line', 2185
    unless_null __lowered_lex_586, fallback2377
    nqp_get_sc_object $P5016, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_586, $P5016
  fallback2377:
    set fb_tmp_182, __lowered_lex_586
    repr_defined $I5004, fb_tmp_182
    unless $I5004 goto if1033_else2375 
    set $P5017, fb_tmp_182["idx"]
    set $P5019, $P5017
    goto if1033_end2376
  if1033_else2375:
    null $P5018
    set $P5019, $P5018
  if1033_end2376:
    unless_null $P5019, vivi_10342378
    nqp_get_sc_object $P5020, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5019, $P5020
  vivi_10342378:
    $P5021 = $P5019."made"()
    set $I5005, $P5021
    set $P5015, fb_tmp_180[$I5005]
    set $P5023, $P5015
    goto if1029_end2369
  if1029_else2368:
    null $P5022
    set $P5023, $P5022
  if1029_end2369:
    unless_null $P5023, vivi_10352379
    nqp_get_sc_object $P5024, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5023, $P5024
  vivi_10352379:
    set $P5037, $P5023
    goto if1026_end2363
  if1026_else2362:
.annotate 'line', 2187
    find_dynamic_lex $P5025, "@*ARGS_HAVE"
    unless_null $P5025, fallback2382
    nqp_get_sc_object $P5027, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 0
    get_who $P5026, $P5027
    set pkg_viv_tmp_23, $P5026
    set fb_tmp_184, pkg_viv_tmp_23
    repr_defined $I5007, fb_tmp_184
    unless $I5007 goto if1037_else2383 
    set $P5028, fb_tmp_184["@ARGS_HAVE"]
    set $P5030, $P5028
    goto if1037_end2384
  if1037_else2383:
    null $P5029
    set $P5030, $P5029
  if1037_end2384:
    unless_null $P5030, vivi_10382385
    new $P5031, 'QRPA'
    set pkg_viv_tmp_23["@ARGS_HAVE"], $P5031
    set $P5030, $P5031
  vivi_10382385:
    unless_null $P5030, vivi_10392386
    die "Contextual @*ARGS_HAVE not found"
    box $P5032, "Contextual @*ARGS_HAVE not found"
    set $P5030, $P5032
  vivi_10392386:
    set $P5025, $P5030
  fallback2382:
    set fb_tmp_183, $P5025
    repr_defined $I5006, fb_tmp_183
    unless $I5006 goto if1036_else2380 
    find_dynamic_lex $P5034, "$*ARGS_USED"
    unless_null $P5034, fallback2387
    nqp_get_sc_object $P5036, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 0
    get_who $P5035, $P5036
    set fb_tmp_185, $P5035
    repr_defined $I5008, fb_tmp_185
    unless $I5008 goto if1040_else2388 
    set $P5037, fb_tmp_185["$ARGS_USED"]
    set $P5039, $P5037
    goto if1040_end2389
  if1040_else2388:
    null $P5038
    set $P5039, $P5038
  if1040_end2389:
    unless_null $P5039, vivi_10412390
    nqp_get_sc_object $P5040, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5039, $P5040
  vivi_10412390:
    unless_null $P5039, vivi_10422391
    die "Contextual $*ARGS_USED not found"
    box $P5041, "Contextual $*ARGS_USED not found"
    set $P5039, $P5041
  vivi_10422391:
    set $P5034, $P5039
  fallback2387:
    set tmp_11, $P5034
    set $I5010, tmp_11
    add $I5009, $I5010, 1
    box $P5042, $I5009
    store_dynamic_lex "$*ARGS_USED", $P5042
    set $I5008, tmp_11
    set $P5033, fb_tmp_183[$I5008]
    set $P5035, $P5033
    goto if1036_end2381
  if1036_else2380:
    null $P5034
    set $P5035, $P5034
  if1036_end2381:
    unless_null $P5035, vivi_10432392
    nqp_get_sc_object $P5036, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5035, $P5036
  vivi_10432392:
    set $P5037, $P5035
  if1026_end2363:
    .return ($P5037) 
.end
.HLL "nqp"
.namespace []
.sub "intify" :subid("cuid_262_1431289891.89934") :anon :lex :outer("cuid_259_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2192
    .param pmc __lowered_lex_588 
    .local pmc lowered_for_it__21 
    .local pmc __lowered_lex_587 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_2393
    .lex "RETURN", $P101
    get_id $I5002, __lowered_lex_588
    nqp_get_sc_object $P5001, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    get_id $I5003, $P5001
    iseq $I5001, $I5002, $I5003
    unless $I5001 goto if1044_end2396 
.annotate 'line', 2193
    find_lex $P5002, "$zero"
    $P5003 = "RETURN"($P5002)
  if1044_end2396:
    find_lex $P5005, "@handlers"
    iter $P5004, $P5005
    set lowered_for_it__21, $P5004
    new $P5012, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5012, while1045_handlers2400
    push_eh $P5012
  while1045_test2397:
    set $P5011, lowered_for_it__21
    unless lowered_for_it__21 goto while1045_done2401 
  while1045_redo2399:
.annotate 'line', 2196
    shift $P5006, lowered_for_it__21
    set __lowered_lex_587, $P5006
.annotate 'line', 2197
    $P5007 = __lowered_lex_587."mine"(__lowered_lex_588)
    set $P5010, $P5007
    unless $P5007 goto if1046_end2403 
.annotate 'line', 2198
    $P5008 = __lowered_lex_587."int"(__lowered_lex_588)
    $P5009 = "RETURN"($P5008)
    set $P5010, $P5009
  if1046_end2403:
    set $P5011, $P5010
    goto while1045_test2397 
  while1045_handlers2400:
    .get_results ($P5012)
    pop_upto_eh $P5012
    getattribute $P5013, $P5012, 'type'
    eq $P5013, .CONTROL_LOOP_NEXT, while1045_test2397
    eq $P5013, .CONTROL_LOOP_REDO, while1045_redo2399
  while1045_done2401:
    pop_eh 
    nqp_isint $I5004, __lowered_lex_588
    unless $I5004 goto if1047_else2404 
.annotate 'line', 2202
    set $I5005, __lowered_lex_588
    find_lex $P5015, "$knowhow"
    repr_box_int $P5014, $I5005, $P5015
    set $P5022, $P5014
    goto if1047_end2405
  if1047_else2404:
.annotate 'line', 2204
    nqp_isnum $I5006, __lowered_lex_588
    set $I5008, $I5006
    if $I5006 goto unless1049_end2409 
    nqp_isstr $I5007, __lowered_lex_588
    set $I5008, $I5007
  unless1049_end2409:
    unless $I5008 goto if1048_else2406 
.annotate 'line', 2206
    set $N5001, __lowered_lex_588
    set $N5002, 0
    isgt $I5009, $N5001, $N5002
    unless $I5009 goto if1050_else2410 
.annotate 'line', 2207
    set $N5004, __lowered_lex_588
    floor $N5003, $N5004
    find_lex $P5017, "$knowhow"
    nqp_bigint_from_num $P5016, $N5003, $P5017
    set $P5020, $P5016
    goto if1050_end2411
  if1050_else2410:
.annotate 'line', 2210
    set $N5006, __lowered_lex_588
    ceil $N5005, $N5006
    find_lex $P5019, "$knowhow"
    nqp_bigint_from_num $P5018, $N5005, $P5019
    set $P5020, $P5018
  if1050_end2411:
    set $P5021, $P5020
    goto if1048_end2407
  if1048_else2406:
.annotate 'line', 2213

    set $P5021, __lowered_lex_588
  if1048_end2407:
    set $P5022, $P5021
  if1047_end2405:
    goto lexotic_2394
  lexotic_2393:
    .get_results ($P5022)
  lexotic_2394:
    .return ($P5022) 
.end
.HLL "nqp"
.namespace []
.sub "padding_char" :subid("cuid_263_1431289891.89934") :anon :lex :outer("cuid_259_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2219
    .param pmc __lowered_lex_592 
    .const 'Sub' $P5036 = 'cuid_214_1431289891.89934' 
    capture_lex $P5036 
    .const 'Sub' $P5036 = 'cuid_264_1431289891.89934' 
    capture_lex $P5036 
    .lex "$padding_char", $P101 
    .local pmc fb_tmp_186 
    .local pmc fb_tmp_187 
    .local pmc fb_tmp_188 
    .local pmc fb_tmp_189 
    box $P5001, " "
    set $P101, $P5001
    set fb_tmp_186, __lowered_lex_592
    repr_defined $I5002, fb_tmp_186
    unless $I5002 goto if1054_else2418 
    set $P5002, fb_tmp_186["precision"]
    set $P5004, $P5002
    goto if1054_end2419
  if1054_else2418:
    null $P5003
    set $P5004, $P5003
  if1054_end2419:
    unless_null $P5004, vivi_10552420
    nqp_get_sc_object $P5005, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5004, $P5005
  vivi_10552420:
    isfalse $I5001, $P5004
    set $I5004, $I5001
    unless $I5001 goto if1053_end2417 
.annotate 'line', 2221
    $P5006 = "&has_flag"(__lowered_lex_592, "minus")
    isfalse $I5003, $P5006
    set $I5004, $I5003
  if1053_end2417:
    box $P5024, $I5004
    set $P5023, $P5024
    if $I5004 goto unless1052_end2415 
.annotate 'line', 2222
    find_lex $P5008, "$?PACKAGE"
    get_who $P5007, $P5008
    set fb_tmp_187, $P5007
    repr_defined $I5005, fb_tmp_187
    unless $I5005 goto if1056_else2421 
    set $P5009, fb_tmp_187["NQPRegex"]
    set $P5011, $P5009
    goto if1056_end2422
  if1056_else2421:
    null $P5010
    set $P5011, $P5010
  if1056_end2422:
    unless_null $P5011, vivi_10582424
    nqp_get_sc_object $P5014, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 0
    get_who $P5013, $P5014
    set $P5012, $P5013["NQPRegex"]
    unless_null $P5012, vivi_10572423
    nqp_get_sc_object $P5015, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5012, $P5015
  vivi_10572423:
    set $P5011, $P5012
  vivi_10582424:
    .const 'Sub' $P5016 = 'cuid_214_1431289891.89934' 
    capture_lex $P5016
    $P5017 = $P5011."new"($P5016)
    set fb_tmp_188, __lowered_lex_592
    repr_defined $I5006, fb_tmp_188
    unless $I5006 goto if1061_else2435 
    set $P5018, fb_tmp_188["sym"]
    set $P5020, $P5018
    goto if1061_end2436
  if1061_else2435:
    null $P5019
    set $P5020, $P5019
  if1061_end2436:
    unless_null $P5020, vivi_10622437
    nqp_get_sc_object $P5021, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5020, $P5021
  vivi_10622437:
    $P5022 = $P5017."ACCEPTS"($P5020)
    set $P5023, $P5022
  unless1052_end2415:
    unless $P5023 goto if1051_end2413 
    set fb_tmp_189, __lowered_lex_592
    repr_defined $I5007, fb_tmp_189
    unless $I5007 goto if1063_else2438 
    set $P5028, fb_tmp_189["flags"]
    set $P5030, $P5028
    goto if1063_end2439
  if1063_else2438:
    null $P5029
    set $P5030, $P5029
  if1063_end2439:
    unless_null $P5030, vivi_10642440
    nqp_get_sc_object $P5031, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5030, $P5031
  vivi_10642440:
    set $P5025, $P5030
    iter $P5027, $P5030
    new $P5033, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5033, for_handlers2446
    push_eh $P5033
  for_next2447:
    unless $P5027, for_done2449
    shift $P5034, $P5027
  for_redo2448:
    .const 'Sub' $P5032 = 'cuid_264_1431289891.89934' 
    capture_lex $P5032
    $P5025 = $P5032($P5034)
    goto for_next2447
  for_handlers2446:
    .get_results ($P5033)
    pop_upto_eh $P5033
    getattribute $P5035, $P5033, 'type'
    eq $P5035, .CONTROL_LOOP_NEXT, for_next2447
    eq $P5035, .CONTROL_LOOP_REDO, for_redo2448
  for_done2449:
    pop_eh 
  if1051_end2413:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_214_1431289891.89934") :anon :lex :outer("cuid_263_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2222
    .param pmc __lowered_lex_589 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc self 
    .local pmc __lowered_lex_590 
    set self, __lowered_lex_589
    .local pmc rx1059_start
    .local string rx1059_tgt
    .local int rx1059_pos
    .local int rx1059_off
    .local int rx1059_eos
    .local int rx1059_rep
    .local pmc rx1059_cur
    .local pmc rx1059_curclass
    .local pmc rx1059_bstack
    .local pmc rx1059_cstack
    rx1059_start = self."!cursor_start_all"()
    set rx1059_cur, rx1059_start[0]
    set rx1059_tgt, rx1059_start[1]
    set rx1059_pos, rx1059_start[2]
    set rx1059_curclass, rx1059_start[3]
    set rx1059_bstack, rx1059_start[4]
    set $I19, rx1059_start[5]
    store_lex unicode:"$\x{a2}", rx1059_cur
    length rx1059_eos, rx1059_tgt
    eq $I19, 1, rx1059_restart2427
    gt rx1059_pos, rx1059_eos, rx1059_fail2428
    repr_get_attr_int $I11, self, rx1059_curclass, "$!from"
    ne $I11, -1, rxscan1060_done2434
    goto rxscan1060_scan2433
  rxscan1060_loop2432:
    inc rx1059_pos
    gt rx1059_pos, rx1059_eos, rx1059_fail2428
    repr_bind_attr_int rx1059_cur, rx1059_curclass, "$!from", rx1059_pos
  rxscan1060_scan2433:
    nqp_rxmark rx1059_bstack, rxscan1060_loop2432, rx1059_pos, 0
  rxscan1060_done2434:
    ge rx1059_pos, rx1059_eos, rx1059_fail2428
    substr $S11, rx1059_tgt, rx1059_pos, 1
    index $I11, ucs4:"eEfFgG", $S11
    lt $I11, 0, rx1059_fail2428
    inc rx1059_pos
    rx1059_cur."!cursor_pass"(rx1059_pos, 'backtrack'=>1)
    .return (rx1059_cur)
  rx1059_restart2427:
    repr_get_attr_obj rx1059_cstack, rx1059_cur, rx1059_curclass, "$!cstack"
  rx1059_fail2428:
    unless rx1059_bstack, rx1059_done2426
    pop $I19, rx1059_bstack
    if_null rx1059_cstack, rx1059_cstack_done2431
    unless rx1059_cstack, rx1059_cstack_done2431
    dec $I19
    set $P11, rx1059_cstack[$I19]
  rx1059_cstack_done2431:
    pop rx1059_rep, rx1059_bstack
    pop rx1059_pos, rx1059_bstack
    pop $I19, rx1059_bstack
    lt rx1059_pos, -1, rx1059_done2426
    lt rx1059_pos, 0, rx1059_fail2428
    eq $I19, 0, rx1059_fail2428
    nqp_islist $I20, rx1059_cstack
    unless $I20, rx1059_jump2429
    elements $I18, rx1059_bstack
    le $I18, 0, rx1059_cut2430
    dec $I18
    set $I18, rx1059_bstack[$I18]
  rx1059_cut2430:
    assign rx1059_cstack, $I18
  rx1059_jump2429:
    jump $I19
  rx1059_done2426:
    rx1059_cur."!cursor_fail"()
    .return (rx1059_cur) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_264_1431289891.89934") :anon :lex :outer("cuid_263_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
    .param pmc __lowered_lex_591 
    .local pmc fb_tmp_190 
    set fb_tmp_190, __lowered_lex_591
    repr_defined $I5001, fb_tmp_190
    unless $I5001 goto if1066_else2443 
    set $P5001, fb_tmp_190["zero"]
    set $P5003, $P5001
    goto if1066_end2444
  if1066_else2443:
    null $P5002
    set $P5003, $P5002
  if1066_end2444:
    unless_null $P5003, vivi_10672445
    nqp_get_sc_object $P5004, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5003, $P5004
  vivi_10672445:
    set $P5006, $P5003
    unless $P5003 goto if1065_end2442 
    box $P5005, "0"
    store_lex "$padding_char", $P5005
    set $P5006, $P5005
  if1065_end2442:
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "has_flag" :subid("cuid_266_1431289891.89934") :anon :lex :outer("cuid_259_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2228
    .param pmc __lowered_lex_594 
    .param pmc _lex_param_0 
    .const 'Sub' $P5017 = 'cuid_265_1431289891.89934' 
    capture_lex $P5017 
    .lex "$ok", $P101 
    .lex "$key", _lex_param_0 
    .local pmc fb_tmp_191 
    .local pmc fb_tmp_192 
    box $P5001, 0
    set $P101, $P5001
    set fb_tmp_191, __lowered_lex_594
    repr_defined $I5001, fb_tmp_191
    unless $I5001 goto if1069_else2452 
    set $P5002, fb_tmp_191["flags"]
    set $P5004, $P5002
    goto if1069_end2453
  if1069_else2452:
    null $P5003
    set $P5004, $P5003
  if1069_end2453:
    unless_null $P5004, vivi_10702454
    nqp_get_sc_object $P5005, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5004, $P5005
  vivi_10702454:
    unless $P5004 goto if1068_end2451 
.annotate 'line', 2230
    set fb_tmp_192, __lowered_lex_594
    repr_defined $I5002, fb_tmp_192
    unless $I5002 goto if1071_else2455 
    set $P5009, fb_tmp_192["flags"]
    set $P5011, $P5009
    goto if1071_end2456
  if1071_else2455:
    null $P5010
    set $P5011, $P5010
  if1071_end2456:
    unless_null $P5011, vivi_10722457
    nqp_get_sc_object $P5012, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5011, $P5012
  vivi_10722457:
    set $P5006, $P5011
    iter $P5008, $P5011
    new $P5014, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5014, for_handlers2463
    push_eh $P5014
  for_next2464:
    unless $P5008, for_done2466
    shift $P5015, $P5008
  for_redo2465:
    .const 'Sub' $P5013 = 'cuid_265_1431289891.89934' 
    capture_lex $P5013
    $P5006 = $P5013($P5015)
    goto for_next2464
  for_handlers2463:
    .get_results ($P5014)
    pop_upto_eh $P5014
    getattribute $P5016, $P5014, 'type'
    eq $P5016, .CONTROL_LOOP_NEXT, for_next2464
    eq $P5016, .CONTROL_LOOP_REDO, for_redo2465
  for_done2466:
    pop_eh 
  if1068_end2451:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_265_1431289891.89934") :anon :lex :outer("cuid_266_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
    .param pmc __lowered_lex_593 
    .local pmc fb_tmp_193 
    set fb_tmp_193, __lowered_lex_593
    repr_defined $I5001, fb_tmp_193
    unless $I5001 goto if1074_else2460 
    find_lex $P5002, "$key"
    set $S5001, $P5002
    set $P5001, fb_tmp_193[$S5001]
    set $P5004, $P5001
    goto if1074_end2461
  if1074_else2460:
    null $P5003
    set $P5004, $P5003
  if1074_end2461:
    unless_null $P5004, vivi_10752462
    nqp_get_sc_object $P5005, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5004, $P5005
  vivi_10752462:
    set $P5007, $P5004
    unless $P5004 goto if1073_end2459 
    box $P5006, 1
    store_lex "$ok", $P5006
    set $P5007, $P5006
  if1073_end2459:
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "pad-with-sign" :subid("cuid_267_1431289891.89934") :anon :lex :outer("cuid_259_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2284
    .param pmc __lowered_lex_595 
    .param pmc __lowered_lex_596 
    .param pmc __lowered_lex_597 
    .param pmc __lowered_lex_598 
    set $S5001, __lowered_lex_598
    isne $I5001, $S5001, " "
    box $P5002, $I5001
    set $P5001, $P5002
    unless $I5001 goto if1077_end2470 
    set $P5001, __lowered_lex_597
  if1077_end2470:
    unless $P5001 goto if1076_else2467 
.annotate 'line', 2285
    set $S5004, __lowered_lex_595
.annotate 'line', 2286
    set $N5003, __lowered_lex_597
    set $S5005, __lowered_lex_596
    length $I5002, $S5005
    set $N5004, $I5002
    sub $N5002, $N5003, $N5004
    set $N5005, 1
    sub $N5001, $N5002, $N5005
    $P5003 = "&infix_x"(__lowered_lex_598, $N5001)
    set $S5006, $P5003
    concat $S5003, $S5004, $S5006
    set $S5007, __lowered_lex_596
    concat $S5002, $S5003, $S5007
    set $S5011, $S5002
    goto if1076_end2468
  if1076_else2467:
.annotate 'line', 2287
    set $S5009, __lowered_lex_595
    set $S5010, __lowered_lex_596
    concat $S5008, $S5009, $S5010
    set $S5011, $S5008
  if1076_end2468:
    .return ($S5011) 
.end
.HLL "nqp"
.namespace []
.sub "normalize" :subid("cuid_268_1431289891.89934") :anon :lex :outer("cuid_259_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2292
    .param pmc __lowered_lex_599 
    .local pmc __lowered_lex_600 
    .local pmc __lowered_lex_601 
    .local pmc __lowered_lex_602 
    .local pmc __lowered_lex_603 
    .local pmc __lowered_lex_604 
    .local pmc __lowered_lex_605 
    .local pmc __lowered_lex_606 
    .local pmc fb_tmp_194 
    .local pmc fb_tmp_195 
    .local pmc fb_tmp_196 
    .local pmc fb_tmp_197 
    .local pmc fb_tmp_198 
    .local pmc fb_tmp_199 
    .local pmc fb_tmp_200 
    set $S5002, __lowered_lex_599
    downcase $S5001, $S5002
    split $P5001, "e", $S5001
    set __lowered_lex_600, $P5001
    box $P5002, ""
    set __lowered_lex_601, $P5002
    set fb_tmp_194, __lowered_lex_600
    repr_defined $I5002, fb_tmp_194
    unless $I5002 goto if1079_else2473 
    set $P5003, fb_tmp_194[0]
    set $P5005, $P5003
    goto if1079_end2474
  if1079_else2473:
    null $P5004
    set $P5005, $P5004
  if1079_end2474:
    unless_null $P5005, vivi_10802475
    nqp_get_sc_object $P5006, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5005, $P5006
  vivi_10802475:
    set $S5004, $P5005
    substr $S5003, $S5004, 0, 1
    iseq $I5001, $S5003, "-"
    unless $I5001 goto if1078_end2472 
.annotate 'line', 2295
    box $P5007, "-"
    set __lowered_lex_601, $P5007
    set fb_tmp_195, __lowered_lex_600
    repr_defined $I5003, fb_tmp_195
    unless $I5003 goto if1081_else2476 
    set $P5008, fb_tmp_195[0]
    set $P5010, $P5008
    goto if1081_end2477
  if1081_else2476:
    null $P5009
    set $P5010, $P5009
  if1081_end2477:
    unless_null $P5010, vivi_10822478
    nqp_get_sc_object $P5011, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5010, $P5011
  vivi_10822478:
    set $S5006, $P5010
    substr $S5005, $S5006, 1
    box $P5012, $S5005
    set __lowered_lex_600[0], $P5012
  if1078_end2472:
    set fb_tmp_196, __lowered_lex_600
    repr_defined $I5004, fb_tmp_196
    unless $I5004 goto if1083_else2479 
    set $P5014, fb_tmp_196[0]
    set $P5016, $P5014
    goto if1083_end2480
  if1083_else2479:
    null $P5015
    set $P5016, $P5015
  if1083_end2480:
    unless_null $P5016, vivi_10842481
    nqp_get_sc_object $P5017, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5016, $P5017
  vivi_10842481:
    set $S5007, $P5016
    split $P5013, ".", $S5007
    set __lowered_lex_602, $P5013
    set fb_tmp_197, __lowered_lex_602
    repr_defined $I5006, fb_tmp_197
    unless $I5006 goto if1085_else2482 
    set $P5018, fb_tmp_197[0]
    set $P5020, $P5018
    goto if1085_end2483
  if1085_else2482:
    null $P5019
    set $P5020, $P5019
  if1085_end2483:
    unless_null $P5020, vivi_10862484
    nqp_get_sc_object $P5021, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5020, $P5021
  vivi_10862484:
    set $S5008, $P5020
    length $I5005, $S5008
    box $P5022, $I5005
    set __lowered_lex_603, $P5022
    set $N5002, __lowered_lex_603
    set fb_tmp_198, __lowered_lex_600
    repr_defined $I5007, fb_tmp_198
    unless $I5007 goto if1087_else2485 
    set $P5023, fb_tmp_198[1]
    set $P5025, $P5023
    goto if1087_end2486
  if1087_else2485:
    null $P5024
    set $P5025, $P5024
  if1087_end2486:
    unless_null $P5025, vivi_10882487
    nqp_get_sc_object $P5026, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5025, $P5026
  vivi_10882487:
    set $N5003, $P5025
    add $N5001, $N5002, $N5003
    box $P5027, $N5001
    set __lowered_lex_604, $P5027
    set fb_tmp_199, __lowered_lex_602
    repr_defined $I5008, fb_tmp_199
    unless $I5008 goto if1089_else2488 
    set $P5028, fb_tmp_199[0]
    set $P5030, $P5028
    goto if1089_end2489
  if1089_else2488:
    null $P5029
    set $P5030, $P5029
  if1089_end2489:
    unless_null $P5030, vivi_10902490
    nqp_get_sc_object $P5031, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5030, $P5031
  vivi_10902490:
    set $S5010, $P5030
    set fb_tmp_200, __lowered_lex_602
    repr_defined $I5009, fb_tmp_200
    unless $I5009 goto if1091_else2491 
    set $P5032, fb_tmp_200[1]
    set $P5034, $P5032
    goto if1091_end2492
  if1091_else2491:
    null $P5033
    set $P5034, $P5033
  if1091_end2492:
    unless_null $P5034, vivi_10922493
    nqp_get_sc_object $P5035, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5034, $P5035
  vivi_10922493:
    set $S5011, $P5034
    concat $S5009, $S5010, $S5011
    box $P5036, $S5009
    set __lowered_lex_605, $P5036
    set $S5012, __lowered_lex_605
    length $I5010, $S5012
    box $P5037, $I5010
    set __lowered_lex_606, $P5037
    set $N5004, __lowered_lex_604
    set $N5005, __lowered_lex_606
    isgt $I5011, $N5004, $N5005
    unless $I5011 goto if1093_else2494 
.annotate 'line', 2307
    set $S5014, __lowered_lex_605
.annotate 'line', 2308
    set $N5007, __lowered_lex_604
    set $N5008, __lowered_lex_606
    sub $N5006, $N5007, $N5008
    $P5038 = "&infix_x"("0", $N5006)
    set $S5015, $P5038
    concat $S5013, $S5014, $S5015
    box $P5039, $S5013
    set __lowered_lex_605, $P5039
    goto if1093_end2495
  if1093_else2494:
    set $N5009, __lowered_lex_604
    set $N5010, 0
    islt $I5012, $N5009, $N5010
    unless $I5012 goto if1094_else2496 
.annotate 'line', 2309
.annotate 'line', 2310
    set $N5012, __lowered_lex_604
    abs $N5011, $N5012
    $P5040 = "&infix_x"("0", $N5011)
    set $S5018, $P5040
    concat $S5017, "0.", $S5018
    set $S5019, __lowered_lex_605
    concat $S5016, $S5017, $S5019
    box $P5041, $S5016
    set __lowered_lex_605, $P5041
    set $P5043, __lowered_lex_605
    goto if1094_end2497
  if1094_else2496:
.annotate 'line', 2311
    set $S5023, __lowered_lex_605
    set $I5013, __lowered_lex_604
    substr $S5022, $S5023, 0, $I5013
    concat $S5021, $S5022, "."
    set $S5025, __lowered_lex_605
    set $I5014, __lowered_lex_604
    substr $S5024, $S5025, $I5014
    concat $S5020, $S5021, $S5024
    box $P5042, $S5020
    set __lowered_lex_605, $P5042
    set $P5043, __lowered_lex_605
  if1094_end2497:
  if1093_end2495:
    set $S5027, __lowered_lex_601
    set $S5028, __lowered_lex_605
    concat $S5026, $S5027, $S5028
    .return ($S5026) 
.end
.HLL "nqp"
.namespace []
.sub "stringify-to-precision" :subid("cuid_269_1431289891.89934") :anon :lex :outer("cuid_259_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2317
    .param pmc __lowered_lex_607 
    .param pmc __lowered_lex_608 
    .local pmc __lowered_lex_609 
    .local pmc __lowered_lex_610 
    .local pmc __lowered_lex_611 
    .local pmc __lowered_lex_612 
    .local pmc __lowered_lex_613 
    .local pmc __lowered_lex_614 
    .local pmc __lowered_lex_615 
    .local pmc __lowered_lex_616 
    .local pmc __lowered_lex_617 
    .local pmc __lowered_lex_618 
    .local pmc __lowered_lex_619 
    .local pmc __lowered_lex_620 
    .local pmc fb_tmp_201 
    .local pmc fb_tmp_202 
    set $S5001, __lowered_lex_607
    index $I5001, $S5001, "e", 0
    set $I5003, $I5001
    if $I5001 goto unless1096_end2501 
    set $S5002, __lowered_lex_607
    index $I5002, $S5002, "E", 0
    set $I5003, $I5002
  unless1096_end2501:
    unless $I5003 goto if1095_end2499 
.annotate 'line', 2318
    $P5001 = "&normalize"(__lowered_lex_607)
    set __lowered_lex_607, $P5001
  if1095_end2499:
    set $S5003, __lowered_lex_607
    split $P5002, ".", $S5003
    set __lowered_lex_609, $P5002
    set fb_tmp_201, __lowered_lex_609
    repr_defined $I5004, fb_tmp_201
    unless $I5004 goto if1097_else2502 
    set $P5003, fb_tmp_201[0]
    set $P5005, $P5003
    goto if1097_end2503
  if1097_else2502:
    null $P5004
    set $P5005, $P5004
  if1097_end2503:
    unless_null $P5005, vivi_10982504
    nqp_get_sc_object $P5006, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5005, $P5006
  vivi_10982504:
    set __lowered_lex_610, $P5005
    set fb_tmp_202, __lowered_lex_609
    repr_defined $I5005, fb_tmp_202
    unless $I5005 goto if1099_else2505 
    set $P5007, fb_tmp_202[1]
    set $P5009, $P5007
    goto if1099_end2506
  if1099_else2505:
    null $P5008
    set $P5009, $P5008
  if1099_end2506:
    unless_null $P5009, vivi_11002507
    nqp_get_sc_object $P5010, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5009, $P5010
  vivi_11002507:
    set __lowered_lex_611, $P5009
    set $S5004, __lowered_lex_611
    length $I5006, $S5004
    box $P5011, $I5006
    set __lowered_lex_612, $P5011
.annotate 'line', 2327
    set $N5002, 1
    set $N5003, __lowered_lex_608
    set $N5004, __lowered_lex_612
    isgt $I5007, $N5003, $N5004
    unless $I5007 goto if1101_else2508 
    set $N5006, __lowered_lex_608
    set $N5007, __lowered_lex_612
    sub $N5005, $N5006, $N5007
    box $P5013, $N5005
    set $P5012, $P5013
    goto if1101_end2509
  if1101_else2508:
    box $P5014, 0
    set $P5012, $P5014
  if1101_end2509:
    set $N5008, $P5012
    add $N5001, $N5002, $N5008
    $P5015 = "&infix_x"("0", $N5001)
    set __lowered_lex_613, $P5015
    set $S5006, __lowered_lex_610
    substr $S5005, $S5006, 0, 1
    iseq $I5008, $S5005, "-"
    unless $I5008 goto if1102_end2511 
    set $S5008, __lowered_lex_610
    substr $S5007, $S5008, 1
    box $P5016, $S5007
    set __lowered_lex_610, $P5016
  if1102_end2511:
    set $S5009, __lowered_lex_610
    find_lex $P5018, "$knowhow"
    nqp_bigint_from_str $P5017, $S5009, $P5018
    set __lowered_lex_614, $P5017
    set $S5012, __lowered_lex_611
    concat $S5011, "1", $S5012
    set $S5013, __lowered_lex_613
    concat $S5010, $S5011, $S5013
    find_lex $P5020, "$knowhow"
    nqp_bigint_from_str $P5019, $S5010, $P5020
    set __lowered_lex_615, $P5019
    nqp_bigint_to_str $S5014, __lowered_lex_615
    length $I5009, $S5014
    box $P5021, $I5009
    set __lowered_lex_616, $P5021
    set $N5009, __lowered_lex_612
    set $N5010, __lowered_lex_608
    isgt $I5010, $N5009, $N5010
    unless $I5010 goto if1103_else2512 
    set $N5012, __lowered_lex_612
    set $N5013, __lowered_lex_608
    sub $N5011, $N5012, $N5013
    box $P5024, $N5011
    set $P5023, $P5024
    goto if1103_end2513
  if1103_else2512:
    box $P5025, 0
    set $P5023, $P5025
  if1103_end2513:
    set $N5014, $P5023
    find_lex $P5026, "$knowhow"
    nqp_bigint_from_num $P5022, $N5014, $P5026
    set __lowered_lex_617, $P5022
    set $N5015, 10
    find_lex $P5029, "$knowhow"
    nqp_bigint_from_num $P5028, $N5015, $P5029
    find_lex $P5030, "$knowhow"
    find_lex $P5031, "$knowhow"
    nqp_bigint_pow $P5027, $P5028, __lowered_lex_617, $P5030, $P5031
    set __lowered_lex_618, $P5027
    set $N5016, 5
    find_lex $P5034, "$knowhow"
    nqp_bigint_from_num $P5033, $N5016, $P5034
    find_lex $P5035, "$knowhow"
    nqp_bigint_mul $P5032, $P5033, __lowered_lex_618, $P5035
    set __lowered_lex_619, $P5032
    find_lex $P5037, "$knowhow"
    nqp_bigint_add $P5036, __lowered_lex_615, __lowered_lex_619, $P5037
    set __lowered_lex_615, $P5036
    nqp_bigint_to_str $S5015, __lowered_lex_615
    box $P5038, $S5015
    set __lowered_lex_611, $P5038
    set $S5017, __lowered_lex_611
    substr $S5016, $S5017, 0, 1
    isne $I5011, $S5016, "1"
    unless $I5011 goto if1104_end2515 
    set $N5017, 1
    find_lex $P5041, "$knowhow"
    nqp_bigint_from_num $P5040, $N5017, $P5041
    find_lex $P5042, "$knowhow"
    nqp_bigint_add $P5039, __lowered_lex_614, $P5040, $P5042
    set __lowered_lex_614, $P5039
  if1104_end2515:
    nqp_bigint_to_str $S5018, __lowered_lex_614
    box $P5043, $S5018
    set __lowered_lex_610, $P5043
    set $S5020, __lowered_lex_611
    set $I5012, __lowered_lex_608
    substr $S5019, $S5020, 1, $I5012
    box $P5044, $S5019
    set __lowered_lex_611, $P5044
    set __lowered_lex_620, __lowered_lex_610
    set $S5021, __lowered_lex_611
    isne $I5013, $S5021, ""
    unless $I5013 goto if1105_end2517 
    set $S5024, __lowered_lex_620
    concat $S5023, $S5024, "."
    set $S5025, __lowered_lex_611
    concat $S5022, $S5023, $S5025
    box $P5045, $S5022
    set __lowered_lex_620, $P5045
  if1105_end2517:
    .return (__lowered_lex_620) 
.end
.HLL "nqp"
.namespace []
.sub "stringify-to-precision2" :subid("cuid_270_1431289891.89934") :anon :lex :outer("cuid_259_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2352
    .param pmc __lowered_lex_621 
    .param pmc __lowered_lex_622 
    .local pmc __lowered_lex_623 
    set $N5001, __lowered_lex_621
    iseq $I5001, $N5001, 0.0
    unless $I5001 goto if1106_else2518 
    box $P5002, 0
    set $P5001, $P5002
    goto if1106_end2519
  if1106_else2518:
    set $N5005, __lowered_lex_621
    ln $N5004, $N5005
    set $N5007, 10
    ln $N5006, $N5007
    div $N5003, $N5004, $N5006
    floor $N5002, $N5003
    box $P5003, $N5002
    set $P5001, $P5003
  if1106_end2519:
    set __lowered_lex_623, $P5001
    set $N5011, __lowered_lex_621
    abs $N5010, $N5011
    set $N5013, 10
    set $N5015, __lowered_lex_622
    set $N5017, __lowered_lex_623
    set $N5018, 1
    add $N5016, $N5017, $N5018
    sub $N5014, $N5015, $N5016
    pow $N5012, $N5013, $N5014
    mul $N5009, $N5010, $N5012
    add $N5008, $N5009, 0.5
    box $P5004, $N5008
    set __lowered_lex_621, $P5004
    set $N5020, __lowered_lex_621
    floor $N5019, $N5020
    box $P5005, $N5019
    set __lowered_lex_621, $P5005
    set $N5022, __lowered_lex_621
    set $N5024, 10
    set $N5026, __lowered_lex_622
    set $N5028, __lowered_lex_623
    set $N5029, 1
    add $N5027, $N5028, $N5029
    sub $N5025, $N5026, $N5027
    pow $N5023, $N5024, $N5025
    div $N5021, $N5022, $N5023
    box $P5006, $N5021
    set __lowered_lex_621, $P5006
    .return (__lowered_lex_621) 
.end
.HLL "nqp"
.namespace []
.sub "fixed-point" :subid("cuid_271_1431289891.89934") :anon :lex :outer("cuid_259_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2358
    .param pmc __lowered_lex_624 
    .param pmc __lowered_lex_625 
    .param pmc __lowered_lex_626 
    .param pmc __lowered_lex_627 
    .param pmc __lowered_lex_628 
    .local pmc __lowered_lex_629 
    set $N5001, __lowered_lex_624
    set $N5002, 0
    islt $I5001, $N5001, $N5002
    unless $I5001 goto if1107_else2520 
    set $S5003, "-"
    goto if1107_end2521
  if1107_else2520:
.annotate 'line', 2360
    $P5001 = "&has_flag"(__lowered_lex_628, "plus")
    unless $P5001 goto if1108_else2522 
    set $S5002, "+"
    goto if1108_end2523
  if1108_else2522:
.annotate 'line', 2361
    $P5002 = "&has_flag"(__lowered_lex_628, "space")
    unless $P5002 goto if1109_else2524 
    set $S5001, " "
    goto if1109_end2525
  if1109_else2524:
    set $S5001, ""
  if1109_end2525:
    set $S5002, $S5001
  if1108_end2523:
    set $S5003, $S5002
  if1107_end2521:
    box $P5003, $S5003
    set __lowered_lex_629, $P5003
    set $N5004, __lowered_lex_624
    abs $N5003, $N5004
    box $P5004, $N5003
    set __lowered_lex_624, $P5004
.annotate 'line', 2364
    $P5005 = "&stringify-to-precision"(__lowered_lex_624, __lowered_lex_625)
    set __lowered_lex_624, $P5005
.annotate 'line', 2365
    $P5006 = "&pad-with-sign"(__lowered_lex_629, __lowered_lex_624, __lowered_lex_626, __lowered_lex_627)
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "scientific" :subid("cuid_272_1431289891.89934") :anon :lex :outer("cuid_259_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2367
    .param pmc __lowered_lex_630 
    .param pmc __lowered_lex_631 
    .param pmc __lowered_lex_632 
    .param pmc __lowered_lex_633 
    .param pmc __lowered_lex_634 
    .param pmc __lowered_lex_635 
    .local pmc __lowered_lex_636 
    .local pmc __lowered_lex_637 
    set $N5001, __lowered_lex_630
    set $N5002, 0
    islt $I5001, $N5001, $N5002
    unless $I5001 goto if1110_else2526 
    set $S5003, "-"
    goto if1110_end2527
  if1110_else2526:
.annotate 'line', 2369
    $P5001 = "&has_flag"(__lowered_lex_635, "plus")
    unless $P5001 goto if1111_else2528 
    set $S5002, "+"
    goto if1111_end2529
  if1111_else2528:
.annotate 'line', 2370
    $P5002 = "&has_flag"(__lowered_lex_635, "space")
    unless $P5002 goto if1112_else2530 
    set $S5001, " "
    goto if1112_end2531
  if1112_else2530:
    set $S5001, ""
  if1112_end2531:
    set $S5002, $S5001
  if1111_end2529:
    set $S5003, $S5002
  if1110_end2527:
    box $P5003, $S5003
    set __lowered_lex_636, $P5003
    set $N5004, __lowered_lex_630
    abs $N5003, $N5004
    box $P5004, $N5003
    set __lowered_lex_630, $P5004
    set $N5005, __lowered_lex_630
    iseq $I5002, $N5005, 0.0
    unless $I5002 goto if1113_else2532 
    box $P5006, 0
    set $P5005, $P5006
    goto if1113_end2533
  if1113_else2532:
    set $N5009, __lowered_lex_630
    ln $N5008, $N5009
    set $N5011, 10
    ln $N5010, $N5011
    div $N5007, $N5008, $N5010
    floor $N5006, $N5007
    box $P5007, $N5006
    set $P5005, $P5007
  if1113_end2533:
    set __lowered_lex_637, $P5005
    set $N5013, __lowered_lex_630
    set $N5015, 10
    set $N5016, __lowered_lex_637
    pow $N5014, $N5015, $N5016
    div $N5012, $N5013, $N5014
    box $P5008, $N5012
    set __lowered_lex_630, $P5008
.annotate 'line', 2375
    $P5009 = "&stringify-to-precision"(__lowered_lex_630, __lowered_lex_632)
    set __lowered_lex_630, $P5009
    set $N5017, __lowered_lex_637
    set $N5018, 0
    islt $I5003, $N5017, $N5018
    unless $I5003 goto if1114_else2534 
.annotate 'line', 2376
    set $N5020, __lowered_lex_637
    neg $N5019, $N5020
    box $P5010, $N5019
    set __lowered_lex_637, $P5010
    set $S5008, __lowered_lex_630
    set $S5009, __lowered_lex_631
    concat $S5007, $S5008, $S5009
    concat $S5006, $S5007, "-"
    set $N5021, __lowered_lex_637
    set $N5022, 10
    islt $I5004, $N5021, $N5022
    unless $I5004 goto if1115_else2536 
    set $S5010, "0"
    goto if1115_end2537
  if1115_else2536:
    set $S5010, ""
  if1115_end2537:
    concat $S5005, $S5006, $S5010
    set $S5011, __lowered_lex_637
    concat $S5004, $S5005, $S5011
    box $P5011, $S5004
    set __lowered_lex_630, $P5011
    goto if1114_end2535
  if1114_else2534:
.annotate 'line', 2379
    set $S5016, __lowered_lex_630
    set $S5017, __lowered_lex_631
    concat $S5015, $S5016, $S5017
    concat $S5014, $S5015, "+"
    set $N5023, __lowered_lex_637
    set $N5024, 10
    islt $I5005, $N5023, $N5024
    unless $I5005 goto if1116_else2538 
    set $S5018, "0"
    goto if1116_end2539
  if1116_else2538:
    set $S5018, ""
  if1116_end2539:
    concat $S5013, $S5014, $S5018
    set $S5019, __lowered_lex_637
    concat $S5012, $S5013, $S5019
    box $P5012, $S5012
    set __lowered_lex_630, $P5012
  if1114_end2535:
.annotate 'line', 2382
    $P5013 = "&pad-with-sign"(__lowered_lex_636, __lowered_lex_630, __lowered_lex_633, __lowered_lex_634)
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "shortest" :subid("cuid_273_1431289891.89934") :anon :lex :outer("cuid_259_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2384
    .param pmc __lowered_lex_641 
    .param pmc __lowered_lex_642 
    .param pmc __lowered_lex_643 
    .param pmc __lowered_lex_644 
    .param pmc __lowered_lex_645 
    .param pmc __lowered_lex_646 
    .local pmc __lowered_lex_647 
    .local pmc __lowered_lex_648 
    .local pmc __lowered_lex_638 
    .local pmc __lowered_lex_639 
    .local pmc __lowered_lex_640 
    set $N5001, __lowered_lex_641
    set $N5002, 0
    islt $I5001, $N5001, $N5002
    unless $I5001 goto if1117_else2540 
    set $S5003, "-"
    goto if1117_end2541
  if1117_else2540:
.annotate 'line', 2386
    $P5001 = "&has_flag"(__lowered_lex_646, "plus")
    unless $P5001 goto if1118_else2542 
    set $S5002, "+"
    goto if1118_end2543
  if1118_else2542:
.annotate 'line', 2387
    $P5002 = "&has_flag"(__lowered_lex_646, "space")
    unless $P5002 goto if1119_else2544 
    set $S5001, " "
    goto if1119_end2545
  if1119_else2544:
    set $S5001, ""
  if1119_end2545:
    set $S5002, $S5001
  if1118_end2543:
    set $S5003, $S5002
  if1117_end2541:
    box $P5003, $S5003
    set __lowered_lex_647, $P5003
    set $N5004, __lowered_lex_641
    abs $N5003, $N5004
    box $P5004, $N5003
    set __lowered_lex_641, $P5004
    set $N5005, __lowered_lex_641
    iseq $I5002, $N5005, 0.0
    unless $I5002 goto if1120_else2546 
    box $P5006, 0
    set $P5005, $P5006
    goto if1120_end2547
  if1120_else2546:
    set $N5009, __lowered_lex_641
    ln $N5008, $N5009
    set $N5011, 10
    ln $N5010, $N5011
    div $N5007, $N5008, $N5010
    floor $N5006, $N5007
    box $P5007, $N5006
    set $P5005, $P5007
  if1120_end2547:
    set __lowered_lex_648, $P5005
    set $N5013, -2
    set $N5014, __lowered_lex_643
    sub $N5012, $N5013, $N5014
    set $N5015, __lowered_lex_648
    islt $I5003, $N5012, $N5015
    set $I5005, $I5003
    unless $I5003 goto if1122_end2551 
    set $N5016, __lowered_lex_648
    set $N5017, __lowered_lex_643
    islt $I5004, $N5016, $N5017
    set $I5005, $I5004
  if1122_end2551:
    unless $I5005 goto if1121_else2548 
.annotate 'line', 2393
    set $N5018, __lowered_lex_648
    set $N5019, __lowered_lex_643
    isgt $I5006, $N5018, $N5019
    unless $I5006 goto if1123_else2552 
    box $P5009, 0
    set $P5008, $P5009
    goto if1123_end2553
  if1123_else2552:
    set $N5021, __lowered_lex_643
    set $N5023, __lowered_lex_648
    set $N5024, 1
    add $N5022, $N5023, $N5024
    sub $N5020, $N5021, $N5022
    box $P5010, $N5020
    set $P5008, $P5010
  if1123_end2553:
    set __lowered_lex_638, $P5008
.annotate 'line', 2395
    $P5011 = "&stringify-to-precision2"(__lowered_lex_641, __lowered_lex_643)
    set __lowered_lex_639, $P5011
.annotate 'line', 2396
    $P5012 = "&pad-with-sign"(__lowered_lex_647, __lowered_lex_639, __lowered_lex_644, __lowered_lex_645)
    set $P5020, $P5012
    goto if1121_end2549
  if1121_else2548:
    nqp_get_sc_object $P5013, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_640, $P5013
.annotate 'line', 2397
    set $N5026, __lowered_lex_641
    set $N5028, 10
    set $N5029, __lowered_lex_648
    pow $N5027, $N5028, $N5029
    div $N5025, $N5026, $N5027
    box $P5014, $N5025
    set __lowered_lex_641, $P5014
.annotate 'line', 2399
    $P5015 = "&stringify-to-precision2"(__lowered_lex_641, __lowered_lex_643)
    set __lowered_lex_641, $P5015
    set $N5030, __lowered_lex_648
    set $N5031, 0
    islt $I5007, $N5030, $N5031
    unless $I5007 goto if1124_else2554 
.annotate 'line', 2401
    set $N5033, __lowered_lex_648
    neg $N5032, $N5033
    box $P5016, $N5032
    set __lowered_lex_648, $P5016
    set $S5008, __lowered_lex_641
    set $S5009, __lowered_lex_642
    concat $S5007, $S5008, $S5009
    concat $S5006, $S5007, "-"
    set $N5034, __lowered_lex_648
    set $N5035, 10
    islt $I5008, $N5034, $N5035
    unless $I5008 goto if1125_else2556 
    set $S5010, "0"
    goto if1125_end2557
  if1125_else2556:
    set $S5010, ""
  if1125_end2557:
    concat $S5005, $S5006, $S5010
    set $S5011, __lowered_lex_648
    concat $S5004, $S5005, $S5011
    box $P5017, $S5004
    set __lowered_lex_640, $P5017
    goto if1124_end2555
  if1124_else2554:
.annotate 'line', 2404
    set $S5016, __lowered_lex_641
    set $S5017, __lowered_lex_642
    concat $S5015, $S5016, $S5017
    concat $S5014, $S5015, "+"
    set $N5036, __lowered_lex_648
    set $N5037, 10
    islt $I5009, $N5036, $N5037
    unless $I5009 goto if1126_else2558 
    set $S5018, "0"
    goto if1126_end2559
  if1126_else2558:
    set $S5018, ""
  if1126_end2559:
    concat $S5013, $S5014, $S5018
    set $S5019, __lowered_lex_648
    concat $S5012, $S5013, $S5019
    box $P5018, $S5012
    set __lowered_lex_640, $P5018
  if1124_end2555:
.annotate 'line', 2408
    $P5019 = "&pad-with-sign"(__lowered_lex_647, __lowered_lex_640, __lowered_lex_644, __lowered_lex_645)
    set $P5020, $P5019
  if1121_end2549:
    .return ($P5020) 
.end
.HLL "nqp"
.namespace []
.sub "TOP" :subid("cuid_213_1431289891.89934") :anon :lex :outer("cuid_259_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2159
    .param pmc __lowered_lex_650 
    .param pmc __lowered_lex_651 
    .const 'Sub' $P5093 = 'cuid_274_1431289891.89934' 
    capture_lex $P5093 
    .lex "@statements", $P101 
    .local pmc fb_tmp_203 
    .local pmc fb_tmp_204 
    .local pmc fb_tmp_205 
    .local pmc pkg_viv_tmp_17 
    .local pmc fb_tmp_206 
    .local pmc fb_tmp_207 
    .local pmc pkg_viv_tmp_18 
    .local pmc fb_tmp_208 
    .local pmc fb_tmp_209 
    .local pmc fb_tmp_210 
    .local pmc pkg_viv_tmp_19 
    .local pmc fb_tmp_211 
    .local pmc pkg_viv_tmp_20 
    .local pmc fb_tmp_212 
    .local pmc pkg_viv_tmp_21 
    new $P5001, 'QRPA'
    set $P101, $P5001
    unless_null __lowered_lex_651, fallback2562
    nqp_get_sc_object $P5005, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_651, $P5005
  fallback2562:
    set fb_tmp_203, __lowered_lex_651
    repr_defined $I5001, fb_tmp_203
    unless $I5001 goto if1127_else2560 
    set $P5006, fb_tmp_203["statement"]
    set $P5008, $P5006
    goto if1127_end2561
  if1127_else2560:
    null $P5007
    set $P5008, $P5007
  if1127_end2561:
    unless_null $P5008, vivi_11282563
    nqp_get_sc_object $P5009, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5008, $P5009
  vivi_11282563:
    set $P5002, $P5008
    iter $P5004, $P5008
    new $P5011, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5011, for_handlers2564
    push_eh $P5011
  for_next2565:
    unless $P5004, for_done2567
    shift $P5012, $P5004
  for_redo2566:
    .const 'Sub' $P5010 = 'cuid_274_1431289891.89934' 
    capture_lex $P5010
    $P5002 = $P5010($P5012)
    goto for_next2565
  for_handlers2564:
    .get_results ($P5011)
    pop_upto_eh $P5011
    getattribute $P5013, $P5011, 'type'
    eq $P5013, .CONTROL_LOOP_NEXT, for_next2565
    eq $P5013, .CONTROL_LOOP_REDO, for_redo2566
  for_done2567:
    pop_eh 
    find_lex $P5014, "$assert_used_args"
    set $P5031, $P5014
    unless $P5014 goto if1131_end2573 
    find_dynamic_lex $P5015, "$*ARGS_USED"
    unless_null $P5015, fallback2574
    nqp_get_sc_object $P5017, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 0
    get_who $P5016, $P5017
    set fb_tmp_204, $P5016
    repr_defined $I5003, fb_tmp_204
    unless $I5003 goto if1132_else2575 
    set $P5018, fb_tmp_204["$ARGS_USED"]
    set $P5020, $P5018
    goto if1132_end2576
  if1132_else2575:
    null $P5019
    set $P5020, $P5019
  if1132_end2576:
    unless_null $P5020, vivi_11332577
    nqp_get_sc_object $P5021, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5020, $P5021
  vivi_11332577:
    unless_null $P5020, vivi_11342578
    die "Contextual $*ARGS_USED not found"
    box $P5022, "Contextual $*ARGS_USED not found"
    set $P5020, $P5022
  vivi_11342578:
    set $P5015, $P5020
  fallback2574:
    set $N5001, $P5015
    find_dynamic_lex $P5023, "@*ARGS_HAVE"
    unless_null $P5023, fallback2579
    nqp_get_sc_object $P5025, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 0
    get_who $P5024, $P5025
    set pkg_viv_tmp_17, $P5024
    set fb_tmp_205, pkg_viv_tmp_17
    repr_defined $I5004, fb_tmp_205
    unless $I5004 goto if1135_else2580 
    set $P5026, fb_tmp_205["@ARGS_HAVE"]
    set $P5028, $P5026
    goto if1135_end2581
  if1135_else2580:
    null $P5027
    set $P5028, $P5027
  if1135_end2581:
    unless_null $P5028, vivi_11362582
    new $P5029, 'QRPA'
    set pkg_viv_tmp_17["@ARGS_HAVE"], $P5029
    set $P5028, $P5029
  vivi_11362582:
    unless_null $P5028, vivi_11372583
    die "Contextual @*ARGS_HAVE not found"
    box $P5030, "Contextual @*ARGS_HAVE not found"
    set $P5028, $P5030
  vivi_11372583:
    set $P5023, $P5028
  fallback2579:
    set $N5002, $P5023
    islt $I5002, $N5001, $N5002
    box $P5032, $I5002
    set $P5031, $P5032
  if1131_end2573:
    set $P5049, $P5031
    if $P5031 goto unless1130_end2571 
    find_dynamic_lex $P5033, "$*ARGS_USED"
    unless_null $P5033, fallback2584
    nqp_get_sc_object $P5035, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 0
    get_who $P5034, $P5035
    set fb_tmp_206, $P5034
    repr_defined $I5006, fb_tmp_206
    unless $I5006 goto if1138_else2585 
    set $P5036, fb_tmp_206["$ARGS_USED"]
    set $P5038, $P5036
    goto if1138_end2586
  if1138_else2585:
    null $P5037
    set $P5038, $P5037
  if1138_end2586:
    unless_null $P5038, vivi_11392587
    nqp_get_sc_object $P5039, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5038, $P5039
  vivi_11392587:
    unless_null $P5038, vivi_11402588
    die "Contextual $*ARGS_USED not found"
    box $P5040, "Contextual $*ARGS_USED not found"
    set $P5038, $P5040
  vivi_11402588:
    set $P5033, $P5038
  fallback2584:
    set $N5003, $P5033
    find_dynamic_lex $P5041, "@*ARGS_HAVE"
    unless_null $P5041, fallback2589
    nqp_get_sc_object $P5043, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 0
    get_who $P5042, $P5043
    set pkg_viv_tmp_18, $P5042
    set fb_tmp_207, pkg_viv_tmp_18
    repr_defined $I5007, fb_tmp_207
    unless $I5007 goto if1141_else2590 
    set $P5044, fb_tmp_207["@ARGS_HAVE"]
    set $P5046, $P5044
    goto if1141_end2591
  if1141_else2590:
    null $P5045
    set $P5046, $P5045
  if1141_end2591:
    unless_null $P5046, vivi_11422592
    new $P5047, 'QRPA'
    set pkg_viv_tmp_18["@ARGS_HAVE"], $P5047
    set $P5046, $P5047
  vivi_11422592:
    unless_null $P5046, vivi_11432593
    die "Contextual @*ARGS_HAVE not found"
    box $P5048, "Contextual @*ARGS_HAVE not found"
    set $P5046, $P5048
  vivi_11432593:
    set $P5041, $P5046
  fallback2589:
    set $N5004, $P5041
    isgt $I5005, $N5003, $N5004
    box $P5050, $I5005
    set $P5049, $P5050
  unless1130_end2571:
    unless $P5049 goto if1129_end2569 
.annotate 'line', 2163
    find_dynamic_lex $P5051, "$*ARGS_USED"
    unless_null $P5051, fallback2596
    nqp_get_sc_object $P5053, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 0
    get_who $P5052, $P5053
    set fb_tmp_208, $P5052
    repr_defined $I5009, fb_tmp_208
    unless $I5009 goto if1145_else2597 
    set $P5054, fb_tmp_208["$ARGS_USED"]
    set $P5056, $P5054
    goto if1145_end2598
  if1145_else2597:
    null $P5055
    set $P5056, $P5055
  if1145_end2598:
    unless_null $P5056, vivi_11462599
    nqp_get_sc_object $P5057, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5056, $P5057
  vivi_11462599:
    unless_null $P5056, vivi_11472600
    die "Contextual $*ARGS_USED not found"
    box $P5058, "Contextual $*ARGS_USED not found"
    set $P5056, $P5058
  vivi_11472600:
    set $P5051, $P5056
  fallback2596:
    set $N5005, $P5051
    set $N5006, 1
    iseq $I5008, $N5005, $N5006
    unless $I5008 goto if1144_else2594 
    set $S5006, "1 argument, but "
    goto if1144_end2595
  if1144_else2594:
    find_dynamic_lex $P5059, "$*ARGS_USED"
    unless_null $P5059, fallback2601
    nqp_get_sc_object $P5061, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 0
    get_who $P5060, $P5061
    set fb_tmp_209, $P5060
    repr_defined $I5010, fb_tmp_209
    unless $I5010 goto if1148_else2602 
    set $P5062, fb_tmp_209["$ARGS_USED"]
    set $P5064, $P5062
    goto if1148_end2603
  if1148_else2602:
    null $P5063
    set $P5064, $P5063
  if1148_end2603:
    unless_null $P5064, vivi_11492604
    nqp_get_sc_object $P5065, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5064, $P5065
  vivi_11492604:
    unless_null $P5064, vivi_11502605
    die "Contextual $*ARGS_USED not found"
    box $P5066, "Contextual $*ARGS_USED not found"
    set $P5064, $P5066
  vivi_11502605:
    set $P5059, $P5064
  fallback2601:
    set $S5005, $P5059
    concat $S5004, $S5005, " arguments, but "
    set $S5006, $S5004
  if1144_end2595:
    concat $S5003, "Directives specify ", $S5006
    find_dynamic_lex $P5067, "@*ARGS_HAVE"
    unless_null $P5067, fallback2608
    nqp_get_sc_object $P5069, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 0
    get_who $P5068, $P5069
    set pkg_viv_tmp_19, $P5068
    set fb_tmp_210, pkg_viv_tmp_19
    repr_defined $I5012, fb_tmp_210
    unless $I5012 goto if1152_else2609 
    set $P5070, fb_tmp_210["@ARGS_HAVE"]
    set $P5072, $P5070
    goto if1152_end2610
  if1152_else2609:
    null $P5071
    set $P5072, $P5071
  if1152_end2610:
    unless_null $P5072, vivi_11532611
    new $P5073, 'QRPA'
    set pkg_viv_tmp_19["@ARGS_HAVE"], $P5073
    set $P5072, $P5073
  vivi_11532611:
    unless_null $P5072, vivi_11542612
    die "Contextual @*ARGS_HAVE not found"
    box $P5074, "Contextual @*ARGS_HAVE not found"
    set $P5072, $P5074
  vivi_11542612:
    set $P5067, $P5072
  fallback2608:
    set $N5007, $P5067
    set $I5013, $N5007
    islt $I5011, $I5013, 1
    unless $I5011 goto if1151_else2606 
    set $S5010, "no argument was"
    goto if1151_end2607
  if1151_else2606:
    find_dynamic_lex $P5075, "@*ARGS_HAVE"
    unless_null $P5075, fallback2615
    nqp_get_sc_object $P5077, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 0
    get_who $P5076, $P5077
    set pkg_viv_tmp_20, $P5076
    set fb_tmp_211, pkg_viv_tmp_20
    repr_defined $I5015, fb_tmp_211
    unless $I5015 goto if1156_else2616 
    set $P5078, fb_tmp_211["@ARGS_HAVE"]
    set $P5080, $P5078
    goto if1156_end2617
  if1156_else2616:
    null $P5079
    set $P5080, $P5079
  if1156_end2617:
    unless_null $P5080, vivi_11572618
    new $P5081, 'QRPA'
    set pkg_viv_tmp_20["@ARGS_HAVE"], $P5081
    set $P5080, $P5081
  vivi_11572618:
    unless_null $P5080, vivi_11582619
    die "Contextual @*ARGS_HAVE not found"
    box $P5082, "Contextual @*ARGS_HAVE not found"
    set $P5080, $P5082
  vivi_11582619:
    set $P5075, $P5080
  fallback2615:
    set $N5008, $P5075
    set $I5016, $N5008
    iseq $I5014, $I5016, 1
    unless $I5014 goto if1155_else2613 
    set $S5009, "1 argument was"
    goto if1155_end2614
  if1155_else2613:
    find_dynamic_lex $P5083, "@*ARGS_HAVE"
    unless_null $P5083, fallback2620
    nqp_get_sc_object $P5085, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 0
    get_who $P5084, $P5085
    set pkg_viv_tmp_21, $P5084
    set fb_tmp_212, pkg_viv_tmp_21
    repr_defined $I5017, fb_tmp_212
    unless $I5017 goto if1159_else2621 
    set $P5086, fb_tmp_212["@ARGS_HAVE"]
    set $P5088, $P5086
    goto if1159_end2622
  if1159_else2621:
    null $P5087
    set $P5088, $P5087
  if1159_end2622:
    unless_null $P5088, vivi_11602623
    new $P5089, 'QRPA'
    set pkg_viv_tmp_21["@ARGS_HAVE"], $P5089
    set $P5088, $P5089
  vivi_11602623:
    unless_null $P5088, vivi_11612624
    die "Contextual @*ARGS_HAVE not found"
    box $P5090, "Contextual @*ARGS_HAVE not found"
    set $P5088, $P5090
  vivi_11612624:
    set $P5083, $P5088
  fallback2620:
    set $N5009, $P5083
    set $S5008, $N5009
    concat $S5007, $S5008, " arguments were"
    set $S5009, $S5007
  if1155_end2614:
    set $S5010, $S5009
  if1151_end2607:
    concat $S5002, $S5003, $S5010
    concat $S5001, $S5002, " supplied"
    box $P5091, $S5001
    die $P5091
  if1129_end2569:
.annotate 'line', 2172
    join $S5011, "", $P101
    $P5092 = __lowered_lex_651."make"($S5011)
    .return ($P5092) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_274_1431289891.89934") :anon :lex :outer("cuid_213_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
    .param pmc __lowered_lex_649 
.annotate 'line', 2161
    find_lex $P5001, "@statements"
    $P5002 = __lowered_lex_649."made"()
    $P5003 = $P5001."push"($P5002)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "statement" :subid("cuid_215_1431289891.89934") :anon :lex :outer("cuid_259_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2236
    .param pmc __lowered_lex_652 
    .param pmc __lowered_lex_653 
    .local pmc __lowered_lex_654 
    .local pmc __lowered_lex_655 
    .local pmc fb_tmp_213 
    .local pmc fb_tmp_214 
    .local pmc fb_tmp_215 
    .local pmc fb_tmp_216 
    .local pmc fb_tmp_217 
    .local pmc fb_tmp_218 
    .local pmc fb_tmp_219 
    nqp_get_sc_object $P5001, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_654, $P5001
    new $P5002, 'QRPA'
    set __lowered_lex_655, $P5002
    unless_null __lowered_lex_653, fallback2629
    nqp_get_sc_object $P5003, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_653, $P5003
  fallback2629:
    set fb_tmp_213, __lowered_lex_653
    repr_defined $I5001, fb_tmp_213
    unless $I5001 goto if1163_else2627 
    set $P5004, fb_tmp_213["directive"]
    set $P5006, $P5004
    goto if1163_end2628
  if1163_else2627:
    null $P5005
    set $P5006, $P5005
  if1163_end2628:
    unless_null $P5006, vivi_11642630
    nqp_get_sc_object $P5007, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5006, $P5007
  vivi_11642630:
    unless $P5006 goto if1162_else2625 
.annotate 'line', 2238
    unless_null __lowered_lex_653, fallback2633
    nqp_get_sc_object $P5008, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_653, $P5008
  fallback2633:
    set fb_tmp_214, __lowered_lex_653
    repr_defined $I5002, fb_tmp_214
    unless $I5002 goto if1165_else2631 
    set $P5009, fb_tmp_214["directive"]
    set $P5011, $P5009
    goto if1165_end2632
  if1165_else2631:
    null $P5010
    set $P5011, $P5010
  if1165_end2632:
    unless_null $P5011, vivi_11662634
    nqp_get_sc_object $P5012, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5011, $P5012
  vivi_11662634:
    set __lowered_lex_654, $P5011
    goto if1162_end2626
  if1162_else2625:
    unless_null __lowered_lex_653, fallback2639
    nqp_get_sc_object $P5013, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_653, $P5013
  fallback2639:
    set fb_tmp_215, __lowered_lex_653
    repr_defined $I5003, fb_tmp_215
    unless $I5003 goto if1168_else2637 
    set $P5014, fb_tmp_215["escape"]
    set $P5016, $P5014
    goto if1168_end2638
  if1168_else2637:
    null $P5015
    set $P5016, $P5015
  if1168_end2638:
    unless_null $P5016, vivi_11692640
    nqp_get_sc_object $P5017, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5016, $P5017
  vivi_11692640:
    unless $P5016 goto if1167_else2635 
.annotate 'line', 2239
    unless_null __lowered_lex_653, fallback2643
    nqp_get_sc_object $P5018, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_653, $P5018
  fallback2643:
    set fb_tmp_216, __lowered_lex_653
    repr_defined $I5004, fb_tmp_216
    unless $I5004 goto if1170_else2641 
    set $P5019, fb_tmp_216["escape"]
    set $P5021, $P5019
    goto if1170_end2642
  if1170_else2641:
    null $P5020
    set $P5021, $P5020
  if1170_end2642:
    unless_null $P5021, vivi_11712644
    nqp_get_sc_object $P5022, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5021, $P5022
  vivi_11712644:
    set __lowered_lex_654, $P5021
    set $P5028, __lowered_lex_654
    goto if1167_end2636
  if1167_else2635:
.annotate 'line', 2240
    unless_null __lowered_lex_653, fallback2647
    nqp_get_sc_object $P5023, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_653, $P5023
  fallback2647:
    set fb_tmp_217, __lowered_lex_653
    repr_defined $I5005, fb_tmp_217
    unless $I5005 goto if1172_else2645 
    set $P5024, fb_tmp_217["literal"]
    set $P5026, $P5024
    goto if1172_end2646
  if1172_else2645:
    null $P5025
    set $P5026, $P5025
  if1172_end2646:
    unless_null $P5026, vivi_11732648
    nqp_get_sc_object $P5027, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5026, $P5027
  vivi_11732648:
    set __lowered_lex_654, $P5026
    set $P5028, __lowered_lex_654
  if1167_end2636:
  if1162_end2626:
    set fb_tmp_218, __lowered_lex_654
    repr_defined $I5006, fb_tmp_218
    unless $I5006 goto if1175_else2651 
    set $P5029, fb_tmp_218["size"]
    set $P5031, $P5029
    goto if1175_end2652
  if1175_else2651:
    null $P5030
    set $P5031, $P5030
  if1175_end2652:
    unless_null $P5031, vivi_11762653
    nqp_get_sc_object $P5032, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5031, $P5032
  vivi_11762653:
    unless $P5031 goto if1174_end2650 
.annotate 'line', 2242
    $P5033 = "&padding_char"(__lowered_lex_654)
    set fb_tmp_219, __lowered_lex_654
    repr_defined $I5007, fb_tmp_219
    unless $I5007 goto if1177_else2654 
    set $P5034, fb_tmp_219["size"]
    set $P5036, $P5034
    goto if1177_end2655
  if1177_else2654:
    null $P5035
    set $P5036, $P5035
  if1177_end2655:
    unless_null $P5036, vivi_11782656
    nqp_get_sc_object $P5037, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5036, $P5037
  vivi_11782656:
    $P5038 = $P5036."made"()
    set $N5002, $P5038
    $P5039 = __lowered_lex_654."made"()
    set $S5001, $P5039
    length $I5008, $S5001
    set $N5003, $I5008
    sub $N5001, $N5002, $N5003
    $P5040 = "&infix_x"($P5033, $N5001)
    $P5041 = __lowered_lex_655."push"($P5040)
  if1174_end2650:
.annotate 'line', 2243
    $P5042 = "&has_flag"(__lowered_lex_654, "minus")
    unless $P5042 goto if1179_else2657 
.annotate 'line', 2244
    $P5043 = __lowered_lex_654."made"()
    $P5044 = __lowered_lex_655."unshift"($P5043)
    goto if1179_end2658
  if1179_else2657:
.annotate 'line', 2245
    $P5045 = __lowered_lex_654."made"()
    $P5046 = __lowered_lex_655."push"($P5045)
  if1179_end2658:
.annotate 'line', 2246
    $P5047 = "&join"("", __lowered_lex_655)
    $P5048 = __lowered_lex_653."make"($P5047)
    .return ($P5048) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<b>" :subid("cuid_216_1431289891.89934") :anon :lex :outer("cuid_259_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2249
    .param pmc __lowered_lex_656 
    .param pmc __lowered_lex_657 
    .local pmc __lowered_lex_658 
    .local pmc __lowered_lex_659 
    .local pmc fb_tmp_220 
    .local pmc fb_tmp_221 
    .local pmc fb_tmp_222 
    .local pmc fb_tmp_223 
    nqp_get_sc_object $P5001, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_659, $P5001
.annotate 'line', 2250
    $P5002 = "&next_argument"(__lowered_lex_657)
    $P5003 = "&intify"($P5002)
    set __lowered_lex_658, $P5003
    set $I5001, 2
    nqp_bigint_to_str_base $S5001, __lowered_lex_658, $I5001
    box $P5004, $S5001
    set __lowered_lex_658, $P5004
    set $S5002, __lowered_lex_658
    isne $I5002, $S5002, "0"
    box $P5007, $I5002
    set $P5006, $P5007
    unless $I5002 goto if1181_end2662 
.annotate 'line', 2252
    $P5005 = "&has_flag"(__lowered_lex_657, "hash")
    set $P5006, $P5005
  if1181_end2662:
    unless $P5006 goto if1180_end2660 
    unless_null __lowered_lex_657, fallback2667
    nqp_get_sc_object $P5008, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_657, $P5008
  fallback2667:
    set fb_tmp_220, __lowered_lex_657
    repr_defined $I5004, fb_tmp_220
    unless $I5004 goto if1183_else2665 
    set $P5009, fb_tmp_220["sym"]
    set $P5011, $P5009
    goto if1183_end2666
  if1183_else2665:
    null $P5010
    set $P5011, $P5010
  if1183_end2666:
    unless_null $P5011, vivi_11842668
    nqp_get_sc_object $P5012, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5011, $P5012
  vivi_11842668:
    set $S5003, $P5011
    iseq $I5003, $S5003, "b"
    unless $I5003 goto if1182_else2663 
    set $S5004, "0b"
    goto if1182_end2664
  if1182_else2663:
    set $S5004, "0B"
  if1182_end2664:
    box $P5013, $S5004
    set __lowered_lex_659, $P5013
  if1180_end2660:
    unless_null __lowered_lex_657, fallback2673
    nqp_get_sc_object $P5014, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_657, $P5014
  fallback2673:
    set fb_tmp_221, __lowered_lex_657
    repr_defined $I5006, fb_tmp_221
    unless $I5006 goto if1186_else2671 
    set $P5015, fb_tmp_221["precision"]
    set $P5017, $P5015
    goto if1186_end2672
  if1186_else2671:
    null $P5016
    set $P5017, $P5016
  if1186_end2672:
    unless_null $P5017, vivi_11872674
    nqp_get_sc_object $P5018, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5017, $P5018
  vivi_11872674:
    set $S5005, $P5017
    length $I5005, $S5005
    unless $I5005 goto if1185_else2669 
.annotate 'line', 2253
.annotate 'line', 2254
    unless_null __lowered_lex_657, fallback2681
    nqp_get_sc_object $P5019, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_657, $P5019
  fallback2681:
    set fb_tmp_222, __lowered_lex_657
    repr_defined $I5008, fb_tmp_222
    unless $I5008 goto if1190_else2679 
    set $P5020, fb_tmp_222["precision"]
    set $P5022, $P5020
    goto if1190_end2680
  if1190_else2679:
    null $P5021
    set $P5022, $P5021
  if1190_end2680:
    unless_null $P5022, vivi_11912682
    nqp_get_sc_object $P5023, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5022, $P5023
  vivi_11912682:
    $P5024 = $P5022."made"()
    set $N5001, $P5024
    set $N5002, 0
    iseq $I5007, $N5001, $N5002
    set $I5010, $I5007
    unless $I5007 goto if1189_end2678 
    set $N5003, __lowered_lex_658
    set $N5004, 0
    iseq $I5009, $N5003, $N5004
    set $I5010, $I5009
  if1189_end2678:
    unless $I5010 goto if1188_end2676 
    box $P5025, ""
    set __lowered_lex_658, $P5025
  if1188_end2676:
    set $S5008, __lowered_lex_659
.annotate 'line', 2255
    unless_null __lowered_lex_657, fallback2685
    nqp_get_sc_object $P5026, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_657, $P5026
  fallback2685:
    set fb_tmp_223, __lowered_lex_657
    repr_defined $I5011, fb_tmp_223
    unless $I5011 goto if1192_else2683 
    set $P5027, fb_tmp_223["precision"]
    set $P5029, $P5027
    goto if1192_end2684
  if1192_else2683:
    null $P5028
    set $P5029, $P5028
  if1192_end2684:
    unless_null $P5029, vivi_11932686
    nqp_get_sc_object $P5030, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5029, $P5030
  vivi_11932686:
    $P5031 = $P5029."made"()
    set $N5006, $P5031
    set $S5009, __lowered_lex_658
    length $I5012, $S5009
    set $N5007, $I5012
    sub $N5005, $N5006, $N5007
    $P5032 = "&infix_x"("0", $N5005)
    set $S5010, $P5032
    concat $S5007, $S5008, $S5010
    set $S5011, __lowered_lex_658
    concat $S5006, $S5007, $S5011
    box $P5033, $S5006
    set __lowered_lex_658, $P5033
    goto if1185_end2670
  if1185_else2669:
.annotate 'line', 2257
    set $S5013, __lowered_lex_659
    set $S5014, __lowered_lex_658
    concat $S5012, $S5013, $S5014
    box $P5034, $S5012
    set __lowered_lex_658, $P5034
  if1185_end2670:
.annotate 'line', 2260
    $P5035 = __lowered_lex_657."make"(__lowered_lex_658)
    .return ($P5035) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<c>" :subid("cuid_217_1431289891.89934") :anon :lex :outer("cuid_259_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2262
    .param pmc __lowered_lex_660 
    .param pmc __lowered_lex_661 
.annotate 'line', 2263
    $P5001 = "&next_argument"(__lowered_lex_661)
    set $I5001, $P5001
    chr $S5001, $I5001
    $P5002 = __lowered_lex_661."make"($S5001)
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<d>" :subid("cuid_218_1431289891.89934") :anon :lex :outer("cuid_259_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2266
    .param pmc __lowered_lex_662 
    .param pmc __lowered_lex_663 
    .local pmc __lowered_lex_664 
    .local pmc __lowered_lex_665 
    .local pmc __lowered_lex_666 
    .local pmc fb_tmp_224 
    .local pmc fb_tmp_225 
    .local pmc fb_tmp_226 
    .local pmc fb_tmp_227 
.annotate 'line', 2267
    $P5001 = "&next_argument"(__lowered_lex_663)
    $P5002 = "&intify"($P5001)
    set __lowered_lex_664, $P5002
.annotate 'line', 2268
    $P5003 = "&padding_char"(__lowered_lex_663)
    set __lowered_lex_665, $P5003
    find_lex $P5004, "$zero"
    nqp_bigint_lt $I5001, __lowered_lex_664, $P5004
    unless $I5001 goto if1194_else2687 
    set $S5003, "-"
    goto if1194_end2688
  if1194_else2687:
.annotate 'line', 2270
    $P5005 = "&has_flag"(__lowered_lex_663, "plus")
    unless $P5005 goto if1195_else2689 
    set $S5002, "+"
    goto if1195_end2690
  if1195_else2689:
.annotate 'line', 2271
    $P5006 = "&has_flag"(__lowered_lex_663, "space")
    unless $P5006 goto if1196_else2691 
    set $S5001, " "
    goto if1196_end2692
  if1196_else2691:
    set $S5001, ""
  if1196_end2692:
    set $S5002, $S5001
  if1195_end2690:
    set $S5003, $S5002
  if1194_end2688:
    box $P5007, $S5003
    set __lowered_lex_666, $P5007
    find_lex $P5009, "$knowhow"
    nqp_bigint_abs $P5008, __lowered_lex_664, $P5009
    nqp_bigint_to_str $S5004, $P5008
    box $P5010, $S5004
    set __lowered_lex_664, $P5010
    unless_null __lowered_lex_663, fallback2697
    nqp_get_sc_object $P5011, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_663, $P5011
  fallback2697:
    set fb_tmp_224, __lowered_lex_663
    repr_defined $I5003, fb_tmp_224
    unless $I5003 goto if1198_else2695 
    set $P5012, fb_tmp_224["precision"]
    set $P5014, $P5012
    goto if1198_end2696
  if1198_else2695:
    null $P5013
    set $P5014, $P5013
  if1198_end2696:
    unless_null $P5014, vivi_11992698
    nqp_get_sc_object $P5015, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5014, $P5015
  vivi_11992698:
    set $S5005, $P5014
    length $I5002, $S5005
    unless $I5002 goto if1197_end2694 
    set $S5007, __lowered_lex_664
.annotate 'line', 2274
    unless_null __lowered_lex_663, fallback2701
    nqp_get_sc_object $P5016, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_663, $P5016
  fallback2701:
    set fb_tmp_225, __lowered_lex_663
    repr_defined $I5004, fb_tmp_225
    unless $I5004 goto if1200_else2699 
    set $P5017, fb_tmp_225["precision"]
    set $P5019, $P5017
    goto if1200_end2700
  if1200_else2699:
    null $P5018
    set $P5019, $P5018
  if1200_end2700:
    unless_null $P5019, vivi_12012702
    nqp_get_sc_object $P5020, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5019, $P5020
  vivi_12012702:
    $P5021 = $P5019."made"()
    set $I5005, $P5021
    substr $S5006, $S5007, 0, $I5005
    box $P5022, $S5006
    set __lowered_lex_664, $P5022
  if1197_end2694:
    set $S5008, __lowered_lex_665
    isne $I5006, $S5008, " "
    box $P5029, $I5006
    set $P5028, $P5029
    unless $I5006 goto if1203_end2706 
    unless_null __lowered_lex_663, fallback2709
    nqp_get_sc_object $P5023, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_663, $P5023
  fallback2709:
    set fb_tmp_226, __lowered_lex_663
    repr_defined $I5007, fb_tmp_226
    unless $I5007 goto if1204_else2707 
    set $P5024, fb_tmp_226["size"]
    set $P5026, $P5024
    goto if1204_end2708
  if1204_else2707:
    null $P5025
    set $P5026, $P5025
  if1204_end2708:
    unless_null $P5026, vivi_12052710
    nqp_get_sc_object $P5027, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5026, $P5027
  vivi_12052710:
    set $P5028, $P5026
  if1203_end2706:
    unless $P5028 goto if1202_else2703 
.annotate 'line', 2275
    set $S5011, __lowered_lex_666
.annotate 'line', 2276
    unless_null __lowered_lex_663, fallback2713
    nqp_get_sc_object $P5030, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_663, $P5030
  fallback2713:
    set fb_tmp_227, __lowered_lex_663
    repr_defined $I5008, fb_tmp_227
    unless $I5008 goto if1206_else2711 
    set $P5031, fb_tmp_227["size"]
    set $P5033, $P5031
    goto if1206_end2712
  if1206_else2711:
    null $P5032
    set $P5033, $P5032
  if1206_end2712:
    unless_null $P5033, vivi_12072714
    nqp_get_sc_object $P5034, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5033, $P5034
  vivi_12072714:
    $P5035 = $P5033."made"()
    set $N5003, $P5035
    set $S5012, __lowered_lex_664
    length $I5009, $S5012
    set $N5004, $I5009
    sub $N5002, $N5003, $N5004
    set $N5005, 1
    sub $N5001, $N5002, $N5005
    $P5036 = "&infix_x"(__lowered_lex_665, $N5001)
    set $S5013, $P5036
    concat $S5010, $S5011, $S5013
    set $S5014, __lowered_lex_664
    concat $S5009, $S5010, $S5014
    box $P5037, $S5009
    set __lowered_lex_664, $P5037
    goto if1202_end2704
  if1202_else2703:
.annotate 'line', 2278
    set $S5016, __lowered_lex_666
    set $S5017, __lowered_lex_664
    concat $S5015, $S5016, $S5017
    box $P5038, $S5015
    set __lowered_lex_664, $P5038
  if1202_end2704:
.annotate 'line', 2281
    $P5039 = __lowered_lex_663."make"(__lowered_lex_664)
    .return ($P5039) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<e>" :subid("cuid_219_1431289891.89934") :anon :lex :outer("cuid_259_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2412
    .param pmc __lowered_lex_667 
    .param pmc __lowered_lex_668 
    .local pmc __lowered_lex_669 
    .local pmc __lowered_lex_670 
    .local pmc __lowered_lex_671 
    .local pmc __lowered_lex_672 
    .local pmc fb_tmp_228 
    .local pmc fb_tmp_229 
    .local pmc fb_tmp_230 
    .local pmc fb_tmp_231 
    .local pmc fb_tmp_232 
.annotate 'line', 2413
    $P5001 = "&next_argument"(__lowered_lex_668)
    set __lowered_lex_669, $P5001
    unless_null __lowered_lex_668, fallback2719
    nqp_get_sc_object $P5002, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_668, $P5002
  fallback2719:
    set fb_tmp_228, __lowered_lex_668
    repr_defined $I5001, fb_tmp_228
    unless $I5001 goto if1209_else2717 
    set $P5003, fb_tmp_228["precision"]
    set $P5005, $P5003
    goto if1209_end2718
  if1209_else2717:
    null $P5004
    set $P5005, $P5004
  if1209_end2718:
    unless_null $P5005, vivi_12102720
    nqp_get_sc_object $P5006, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5005, $P5006
  vivi_12102720:
    unless $P5005 goto if1208_else2715 
.annotate 'line', 2414
    unless_null __lowered_lex_668, fallback2723
    nqp_get_sc_object $P5007, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_668, $P5007
  fallback2723:
    set fb_tmp_229, __lowered_lex_668
    repr_defined $I5002, fb_tmp_229
    unless $I5002 goto if1211_else2721 
    set $P5008, fb_tmp_229["precision"]
    set $P5010, $P5008
    goto if1211_end2722
  if1211_else2721:
    null $P5009
    set $P5010, $P5009
  if1211_end2722:
    unless_null $P5010, vivi_12122724
    nqp_get_sc_object $P5011, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5010, $P5011
  vivi_12122724:
    $P5012 = $P5010."made"()
    set $P5013, $P5012
    goto if1208_end2716
  if1208_else2715:
    box $P5014, 6
    set $P5013, $P5014
  if1208_end2716:
    set __lowered_lex_670, $P5013
.annotate 'line', 2415
    $P5015 = "&padding_char"(__lowered_lex_668)
    set __lowered_lex_671, $P5015
    unless_null __lowered_lex_668, fallback2729
    nqp_get_sc_object $P5016, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_668, $P5016
  fallback2729:
    set fb_tmp_230, __lowered_lex_668
    repr_defined $I5003, fb_tmp_230
    unless $I5003 goto if1214_else2727 
    set $P5017, fb_tmp_230["size"]
    set $P5019, $P5017
    goto if1214_end2728
  if1214_else2727:
    null $P5018
    set $P5019, $P5018
  if1214_end2728:
    unless_null $P5019, vivi_12152730
    nqp_get_sc_object $P5020, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5019, $P5020
  vivi_12152730:
    unless $P5019 goto if1213_else2725 
.annotate 'line', 2416
    unless_null __lowered_lex_668, fallback2733
    nqp_get_sc_object $P5021, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_668, $P5021
  fallback2733:
    set fb_tmp_231, __lowered_lex_668
    repr_defined $I5004, fb_tmp_231
    unless $I5004 goto if1216_else2731 
    set $P5022, fb_tmp_231["size"]
    set $P5024, $P5022
    goto if1216_end2732
  if1216_else2731:
    null $P5023
    set $P5024, $P5023
  if1216_end2732:
    unless_null $P5024, vivi_12172734
    nqp_get_sc_object $P5025, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5024, $P5025
  vivi_12172734:
    $P5026 = $P5024."made"()
    set $P5027, $P5026
    goto if1213_end2726
  if1213_else2725:
    box $P5028, 0
    set $P5027, $P5028
  if1213_end2726:
    set __lowered_lex_672, $P5027
.annotate 'line', 2417
    unless_null __lowered_lex_668, fallback2737
    nqp_get_sc_object $P5029, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_668, $P5029
  fallback2737:
    set fb_tmp_232, __lowered_lex_668
    repr_defined $I5005, fb_tmp_232
    unless $I5005 goto if1218_else2735 
    set $P5030, fb_tmp_232["sym"]
    set $P5032, $P5030
    goto if1218_end2736
  if1218_else2735:
    null $P5031
    set $P5032, $P5031
  if1218_end2736:
    unless_null $P5032, vivi_12192738
    nqp_get_sc_object $P5033, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5032, $P5033
  vivi_12192738:
    $P5034 = "&scientific"(__lowered_lex_669, $P5032, __lowered_lex_670, __lowered_lex_672, __lowered_lex_671, __lowered_lex_668)
    $P5035 = __lowered_lex_668."make"($P5034)
    .return ($P5035) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<f>" :subid("cuid_220_1431289891.89934") :anon :lex :outer("cuid_259_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2419
    .param pmc __lowered_lex_673 
    .param pmc __lowered_lex_674 
    .local pmc __lowered_lex_675 
    .local pmc __lowered_lex_676 
    .local pmc __lowered_lex_677 
    .local pmc __lowered_lex_678 
    .local pmc fb_tmp_233 
    .local pmc fb_tmp_234 
    .local pmc fb_tmp_235 
    .local pmc fb_tmp_236 
.annotate 'line', 2420
    $P5001 = "&next_argument"(__lowered_lex_674)
    set __lowered_lex_675, $P5001
    unless_null __lowered_lex_674, fallback2743
    nqp_get_sc_object $P5002, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_674, $P5002
  fallback2743:
    set fb_tmp_233, __lowered_lex_674
    repr_defined $I5001, fb_tmp_233
    unless $I5001 goto if1221_else2741 
    set $P5003, fb_tmp_233["precision"]
    set $P5005, $P5003
    goto if1221_end2742
  if1221_else2741:
    null $P5004
    set $P5005, $P5004
  if1221_end2742:
    unless_null $P5005, vivi_12222744
    nqp_get_sc_object $P5006, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5005, $P5006
  vivi_12222744:
    unless $P5005 goto if1220_else2739 
.annotate 'line', 2421
    unless_null __lowered_lex_674, fallback2747
    nqp_get_sc_object $P5007, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_674, $P5007
  fallback2747:
    set fb_tmp_234, __lowered_lex_674
    repr_defined $I5002, fb_tmp_234
    unless $I5002 goto if1223_else2745 
    set $P5008, fb_tmp_234["precision"]
    set $P5010, $P5008
    goto if1223_end2746
  if1223_else2745:
    null $P5009
    set $P5010, $P5009
  if1223_end2746:
    unless_null $P5010, vivi_12242748
    nqp_get_sc_object $P5011, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5010, $P5011
  vivi_12242748:
    $P5012 = $P5010."made"()
    set $P5013, $P5012
    goto if1220_end2740
  if1220_else2739:
    box $P5014, 6
    set $P5013, $P5014
  if1220_end2740:
    set __lowered_lex_676, $P5013
.annotate 'line', 2422
    $P5015 = "&padding_char"(__lowered_lex_674)
    set __lowered_lex_677, $P5015
    unless_null __lowered_lex_674, fallback2753
    nqp_get_sc_object $P5016, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_674, $P5016
  fallback2753:
    set fb_tmp_235, __lowered_lex_674
    repr_defined $I5003, fb_tmp_235
    unless $I5003 goto if1226_else2751 
    set $P5017, fb_tmp_235["size"]
    set $P5019, $P5017
    goto if1226_end2752
  if1226_else2751:
    null $P5018
    set $P5019, $P5018
  if1226_end2752:
    unless_null $P5019, vivi_12272754
    nqp_get_sc_object $P5020, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5019, $P5020
  vivi_12272754:
    unless $P5019 goto if1225_else2749 
.annotate 'line', 2423
    unless_null __lowered_lex_674, fallback2757
    nqp_get_sc_object $P5021, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_674, $P5021
  fallback2757:
    set fb_tmp_236, __lowered_lex_674
    repr_defined $I5004, fb_tmp_236
    unless $I5004 goto if1228_else2755 
    set $P5022, fb_tmp_236["size"]
    set $P5024, $P5022
    goto if1228_end2756
  if1228_else2755:
    null $P5023
    set $P5024, $P5023
  if1228_end2756:
    unless_null $P5024, vivi_12292758
    nqp_get_sc_object $P5025, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5024, $P5025
  vivi_12292758:
    $P5026 = $P5024."made"()
    set $P5027, $P5026
    goto if1225_end2750
  if1225_else2749:
    box $P5028, 0
    set $P5027, $P5028
  if1225_end2750:
    set __lowered_lex_678, $P5027
.annotate 'line', 2424
    $P5029 = "&fixed-point"(__lowered_lex_675, __lowered_lex_676, __lowered_lex_678, __lowered_lex_677, __lowered_lex_674)
    $P5030 = __lowered_lex_674."make"($P5029)
    .return ($P5030) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<g>" :subid("cuid_221_1431289891.89934") :anon :lex :outer("cuid_259_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2426
    .param pmc __lowered_lex_679 
    .param pmc __lowered_lex_680 
    .local pmc __lowered_lex_681 
    .local pmc __lowered_lex_682 
    .local pmc __lowered_lex_683 
    .local pmc __lowered_lex_684 
    .local pmc fb_tmp_237 
    .local pmc fb_tmp_238 
    .local pmc fb_tmp_239 
    .local pmc fb_tmp_240 
    .local pmc fb_tmp_241 
.annotate 'line', 2427
    $P5001 = "&next_argument"(__lowered_lex_680)
    set __lowered_lex_681, $P5001
    unless_null __lowered_lex_680, fallback2763
    nqp_get_sc_object $P5002, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_680, $P5002
  fallback2763:
    set fb_tmp_237, __lowered_lex_680
    repr_defined $I5001, fb_tmp_237
    unless $I5001 goto if1231_else2761 
    set $P5003, fb_tmp_237["precision"]
    set $P5005, $P5003
    goto if1231_end2762
  if1231_else2761:
    null $P5004
    set $P5005, $P5004
  if1231_end2762:
    unless_null $P5005, vivi_12322764
    nqp_get_sc_object $P5006, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5005, $P5006
  vivi_12322764:
    unless $P5005 goto if1230_else2759 
.annotate 'line', 2428
    unless_null __lowered_lex_680, fallback2767
    nqp_get_sc_object $P5007, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_680, $P5007
  fallback2767:
    set fb_tmp_238, __lowered_lex_680
    repr_defined $I5002, fb_tmp_238
    unless $I5002 goto if1233_else2765 
    set $P5008, fb_tmp_238["precision"]
    set $P5010, $P5008
    goto if1233_end2766
  if1233_else2765:
    null $P5009
    set $P5010, $P5009
  if1233_end2766:
    unless_null $P5010, vivi_12342768
    nqp_get_sc_object $P5011, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5010, $P5011
  vivi_12342768:
    $P5012 = $P5010."made"()
    set $P5013, $P5012
    goto if1230_end2760
  if1230_else2759:
    box $P5014, 6
    set $P5013, $P5014
  if1230_end2760:
    set __lowered_lex_682, $P5013
.annotate 'line', 2429
    $P5015 = "&padding_char"(__lowered_lex_680)
    set __lowered_lex_683, $P5015
    unless_null __lowered_lex_680, fallback2773
    nqp_get_sc_object $P5016, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_680, $P5016
  fallback2773:
    set fb_tmp_239, __lowered_lex_680
    repr_defined $I5003, fb_tmp_239
    unless $I5003 goto if1236_else2771 
    set $P5017, fb_tmp_239["size"]
    set $P5019, $P5017
    goto if1236_end2772
  if1236_else2771:
    null $P5018
    set $P5019, $P5018
  if1236_end2772:
    unless_null $P5019, vivi_12372774
    nqp_get_sc_object $P5020, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5019, $P5020
  vivi_12372774:
    unless $P5019 goto if1235_else2769 
.annotate 'line', 2430
    unless_null __lowered_lex_680, fallback2777
    nqp_get_sc_object $P5021, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_680, $P5021
  fallback2777:
    set fb_tmp_240, __lowered_lex_680
    repr_defined $I5004, fb_tmp_240
    unless $I5004 goto if1238_else2775 
    set $P5022, fb_tmp_240["size"]
    set $P5024, $P5022
    goto if1238_end2776
  if1238_else2775:
    null $P5023
    set $P5024, $P5023
  if1238_end2776:
    unless_null $P5024, vivi_12392778
    nqp_get_sc_object $P5025, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5024, $P5025
  vivi_12392778:
    $P5026 = $P5024."made"()
    set $P5027, $P5026
    goto if1235_end2770
  if1235_else2769:
    box $P5028, 0
    set $P5027, $P5028
  if1235_end2770:
    set __lowered_lex_684, $P5027
.annotate 'line', 2431
    unless_null __lowered_lex_680, fallback2783
    nqp_get_sc_object $P5029, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_680, $P5029
  fallback2783:
    set fb_tmp_241, __lowered_lex_680
    repr_defined $I5006, fb_tmp_241
    unless $I5006 goto if1241_else2781 
    set $P5030, fb_tmp_241["sym"]
    set $P5032, $P5030
    goto if1241_end2782
  if1241_else2781:
    null $P5031
    set $P5032, $P5031
  if1241_end2782:
    unless_null $P5032, vivi_12422784
    nqp_get_sc_object $P5033, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5032, $P5033
  vivi_12422784:
    set $S5001, $P5032
    iseq $I5005, $S5001, "G"
    unless $I5005 goto if1240_else2779 
    set $S5002, "E"
    goto if1240_end2780
  if1240_else2779:
    set $S5002, "e"
  if1240_end2780:
    $P5034 = "&shortest"(__lowered_lex_681, $S5002, __lowered_lex_682, __lowered_lex_684, __lowered_lex_683, __lowered_lex_680)
    $P5035 = __lowered_lex_680."make"($P5034)
    .return ($P5035) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<o>" :subid("cuid_222_1431289891.89934") :anon :lex :outer("cuid_259_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2433
    .param pmc __lowered_lex_685 
    .param pmc __lowered_lex_686 
    .local pmc __lowered_lex_687 
    .local pmc __lowered_lex_688 
    .local pmc fb_tmp_242 
    .local pmc fb_tmp_243 
    .local pmc fb_tmp_244 
    nqp_get_sc_object $P5001, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_688, $P5001
.annotate 'line', 2434
    $P5002 = "&next_argument"(__lowered_lex_686)
    $P5003 = "&intify"($P5002)
    set __lowered_lex_687, $P5003
    set $I5001, 8
    nqp_bigint_to_str_base $S5001, __lowered_lex_687, $I5001
    box $P5004, $S5001
    set __lowered_lex_687, $P5004
    set $S5002, __lowered_lex_687
    isne $I5002, $S5002, "0"
    box $P5007, $I5002
    set $P5006, $P5007
    unless $I5002 goto if1244_end2788 
.annotate 'line', 2436
    $P5005 = "&has_flag"(__lowered_lex_686, "hash")
    set $P5006, $P5005
  if1244_end2788:
    unless $P5006 goto if1243_end2786 
    box $P5008, "0"
    set __lowered_lex_688, $P5008
  if1243_end2786:
    unless_null __lowered_lex_686, fallback2793
    nqp_get_sc_object $P5009, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_686, $P5009
  fallback2793:
    set fb_tmp_242, __lowered_lex_686
    repr_defined $I5004, fb_tmp_242
    unless $I5004 goto if1246_else2791 
    set $P5010, fb_tmp_242["precision"]
    set $P5012, $P5010
    goto if1246_end2792
  if1246_else2791:
    null $P5011
    set $P5012, $P5011
  if1246_end2792:
    unless_null $P5012, vivi_12472794
    nqp_get_sc_object $P5013, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5012, $P5013
  vivi_12472794:
    set $S5003, $P5012
    length $I5003, $S5003
    unless $I5003 goto if1245_else2789 
.annotate 'line', 2437
.annotate 'line', 2438
    unless_null __lowered_lex_686, fallback2801
    nqp_get_sc_object $P5014, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_686, $P5014
  fallback2801:
    set fb_tmp_243, __lowered_lex_686
    repr_defined $I5006, fb_tmp_243
    unless $I5006 goto if1250_else2799 
    set $P5015, fb_tmp_243["precision"]
    set $P5017, $P5015
    goto if1250_end2800
  if1250_else2799:
    null $P5016
    set $P5017, $P5016
  if1250_end2800:
    unless_null $P5017, vivi_12512802
    nqp_get_sc_object $P5018, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5017, $P5018
  vivi_12512802:
    $P5019 = $P5017."made"()
    set $N5001, $P5019
    set $N5002, 0
    iseq $I5005, $N5001, $N5002
    set $I5008, $I5005
    unless $I5005 goto if1249_end2798 
    set $N5003, __lowered_lex_687
    set $N5004, 0
    iseq $I5007, $N5003, $N5004
    set $I5008, $I5007
  if1249_end2798:
    unless $I5008 goto if1248_end2796 
    box $P5020, ""
    set __lowered_lex_687, $P5020
  if1248_end2796:
    set $S5006, __lowered_lex_688
.annotate 'line', 2439
    unless_null __lowered_lex_686, fallback2805
    nqp_get_sc_object $P5021, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_686, $P5021
  fallback2805:
    set fb_tmp_244, __lowered_lex_686
    repr_defined $I5009, fb_tmp_244
    unless $I5009 goto if1252_else2803 
    set $P5022, fb_tmp_244["precision"]
    set $P5024, $P5022
    goto if1252_end2804
  if1252_else2803:
    null $P5023
    set $P5024, $P5023
  if1252_end2804:
    unless_null $P5024, vivi_12532806
    nqp_get_sc_object $P5025, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5024, $P5025
  vivi_12532806:
    $P5026 = $P5024."made"()
    $P5027 = "&intify"($P5026)
    set $N5006, $P5027
    set $S5007, __lowered_lex_687
    length $I5010, $S5007
    set $N5007, $I5010
    sub $N5005, $N5006, $N5007
    $P5028 = "&infix_x"("0", $N5005)
    set $S5008, $P5028
    concat $S5005, $S5006, $S5008
    set $S5009, __lowered_lex_687
    concat $S5004, $S5005, $S5009
    box $P5029, $S5004
    set __lowered_lex_687, $P5029
    goto if1245_end2790
  if1245_else2789:
.annotate 'line', 2441
    set $S5011, __lowered_lex_688
    set $S5012, __lowered_lex_687
    concat $S5010, $S5011, $S5012
    box $P5030, $S5010
    set __lowered_lex_687, $P5030
  if1245_end2790:
.annotate 'line', 2444
    $P5031 = __lowered_lex_686."make"(__lowered_lex_687)
    .return ($P5031) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<s>" :subid("cuid_223_1431289891.89934") :anon :lex :outer("cuid_259_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2447
    .param pmc __lowered_lex_689 
    .param pmc __lowered_lex_690 
    .local pmc __lowered_lex_691 
    .local pmc fb_tmp_245 
    .local pmc fb_tmp_246 
    .local pmc fb_tmp_247 
.annotate 'line', 2448
    $P5001 = "&next_argument"(__lowered_lex_690)
    set __lowered_lex_691, $P5001
    unless_null __lowered_lex_690, fallback2813
    nqp_get_sc_object $P5002, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_690, $P5002
  fallback2813:
    set fb_tmp_245, __lowered_lex_690
    repr_defined $I5002, fb_tmp_245
    unless $I5002 goto if1256_else2811 
    set $P5003, fb_tmp_245["precision"]
    set $P5005, $P5003
    goto if1256_end2812
  if1256_else2811:
    null $P5004
    set $P5005, $P5004
  if1256_end2812:
    unless_null $P5005, vivi_12572814
    nqp_get_sc_object $P5006, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5005, $P5006
  vivi_12572814:
    set $S5001, $P5005
    length $I5001, $S5001
    set $I5006, $I5001
    unless $I5001 goto if1255_end2810 
    set $S5002, __lowered_lex_691
    length $I5004, $S5002
    set $N5001, $I5004
.annotate 'line', 2449
    unless_null __lowered_lex_690, fallback2817
    nqp_get_sc_object $P5007, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_690, $P5007
  fallback2817:
    set fb_tmp_246, __lowered_lex_690
    repr_defined $I5005, fb_tmp_246
    unless $I5005 goto if1258_else2815 
    set $P5008, fb_tmp_246["precision"]
    set $P5010, $P5008
    goto if1258_end2816
  if1258_else2815:
    null $P5009
    set $P5010, $P5009
  if1258_end2816:
    unless_null $P5010, vivi_12592818
    nqp_get_sc_object $P5011, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5010, $P5011
  vivi_12592818:
    $P5012 = $P5010."made"()
    set $N5002, $P5012
    isgt $I5003, $N5001, $N5002
    set $I5006, $I5003
  if1255_end2810:
    unless $I5006 goto if1254_end2808 
    set $S5004, __lowered_lex_691
.annotate 'line', 2450
    unless_null __lowered_lex_690, fallback2821
    nqp_get_sc_object $P5013, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_690, $P5013
  fallback2821:
    set fb_tmp_247, __lowered_lex_690
    repr_defined $I5007, fb_tmp_247
    unless $I5007 goto if1260_else2819 
    set $P5014, fb_tmp_247["precision"]
    set $P5016, $P5014
    goto if1260_end2820
  if1260_else2819:
    null $P5015
    set $P5016, $P5015
  if1260_end2820:
    unless_null $P5016, vivi_12612822
    nqp_get_sc_object $P5017, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5016, $P5017
  vivi_12612822:
    $P5018 = $P5016."made"()
    set $I5008, $P5018
    substr $S5003, $S5004, 0, $I5008
    box $P5019, $S5003
    set __lowered_lex_691, $P5019
  if1254_end2808:
.annotate 'line', 2452
    $P5020 = __lowered_lex_690."make"(__lowered_lex_691)
    .return ($P5020) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<u>" :subid("cuid_224_1431289891.89934") :anon :lex :outer("cuid_259_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2456
    .param pmc __lowered_lex_693 
    .param pmc __lowered_lex_694 
    .local pmc __lowered_lex_695 
    .local pmc __lowered_lex_692 
.annotate 'line', 2457
    $P5001 = "&next_argument"(__lowered_lex_694)
    $P5002 = "&intify"($P5001)
    set __lowered_lex_695, $P5002
    find_lex $P5003, "$zero"
    nqp_bigint_lt $I5001, __lowered_lex_695, $P5003
    unless $I5001 goto if1262_end2824 
.annotate 'line', 2458
    getinterp $P5004
    $P5005 = $P5004."stderr_handle"()
    set __lowered_lex_692, $P5005
    set $S5003, __lowered_lex_695
    concat $S5002, "negative value '", $S5003
    concat $S5001, $S5002, "' for %u in sprintf"
    $P5006 = __lowered_lex_692."print"($S5001)
    box $P5007, 0
    set __lowered_lex_695, $P5007
  if1262_end2824:
.annotate 'line', 2467
    nqp_bigint_to_str $S5004, __lowered_lex_695
    $P5008 = __lowered_lex_694."make"($S5004)
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<x>" :subid("cuid_225_1431289891.89934") :anon :lex :outer("cuid_259_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2469
    .param pmc __lowered_lex_696 
    .param pmc __lowered_lex_697 
    .local pmc __lowered_lex_698 
    .local pmc __lowered_lex_699 
    .local pmc fb_tmp_248 
    .local pmc fb_tmp_249 
    .local pmc fb_tmp_250 
    .local pmc fb_tmp_251 
    nqp_get_sc_object $P5001, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_699, $P5001
.annotate 'line', 2470
    $P5002 = "&next_argument"(__lowered_lex_697)
    $P5003 = "&intify"($P5002)
    set __lowered_lex_698, $P5003
    set $I5001, 16
    nqp_bigint_to_str_base $S5001, __lowered_lex_698, $I5001
    box $P5004, $S5001
    set __lowered_lex_698, $P5004
    set $S5002, __lowered_lex_698
    isne $I5002, $S5002, "0"
    box $P5007, $I5002
    set $P5006, $P5007
    unless $I5002 goto if1264_end2828 
.annotate 'line', 2472
    $P5005 = "&has_flag"(__lowered_lex_697, "hash")
    set $P5006, $P5005
  if1264_end2828:
    unless $P5006 goto if1263_end2826 
    box $P5008, "0X"
    set __lowered_lex_699, $P5008
  if1263_end2826:
    unless_null __lowered_lex_697, fallback2833
    nqp_get_sc_object $P5009, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_697, $P5009
  fallback2833:
    set fb_tmp_248, __lowered_lex_697
    repr_defined $I5004, fb_tmp_248
    unless $I5004 goto if1266_else2831 
    set $P5010, fb_tmp_248["precision"]
    set $P5012, $P5010
    goto if1266_end2832
  if1266_else2831:
    null $P5011
    set $P5012, $P5011
  if1266_end2832:
    unless_null $P5012, vivi_12672834
    nqp_get_sc_object $P5013, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5012, $P5013
  vivi_12672834:
    set $S5003, $P5012
    length $I5003, $S5003
    unless $I5003 goto if1265_else2829 
.annotate 'line', 2473
.annotate 'line', 2474
    unless_null __lowered_lex_697, fallback2841
    nqp_get_sc_object $P5014, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_697, $P5014
  fallback2841:
    set fb_tmp_249, __lowered_lex_697
    repr_defined $I5006, fb_tmp_249
    unless $I5006 goto if1270_else2839 
    set $P5015, fb_tmp_249["precision"]
    set $P5017, $P5015
    goto if1270_end2840
  if1270_else2839:
    null $P5016
    set $P5017, $P5016
  if1270_end2840:
    unless_null $P5017, vivi_12712842
    nqp_get_sc_object $P5018, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5017, $P5018
  vivi_12712842:
    $P5019 = $P5017."made"()
    set $N5001, $P5019
    set $N5002, 0
    iseq $I5005, $N5001, $N5002
    set $I5008, $I5005
    unless $I5005 goto if1269_end2838 
    set $N5003, __lowered_lex_698
    set $N5004, 0
    iseq $I5007, $N5003, $N5004
    set $I5008, $I5007
  if1269_end2838:
    unless $I5008 goto if1268_end2836 
    box $P5020, ""
    set __lowered_lex_698, $P5020
  if1268_end2836:
    set $S5006, __lowered_lex_699
.annotate 'line', 2475
    unless_null __lowered_lex_697, fallback2845
    nqp_get_sc_object $P5021, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_697, $P5021
  fallback2845:
    set fb_tmp_250, __lowered_lex_697
    repr_defined $I5009, fb_tmp_250
    unless $I5009 goto if1272_else2843 
    set $P5022, fb_tmp_250["precision"]
    set $P5024, $P5022
    goto if1272_end2844
  if1272_else2843:
    null $P5023
    set $P5024, $P5023
  if1272_end2844:
    unless_null $P5024, vivi_12732846
    nqp_get_sc_object $P5025, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5024, $P5025
  vivi_12732846:
    $P5026 = $P5024."made"()
    set $N5006, $P5026
    set $S5007, __lowered_lex_698
    length $I5010, $S5007
    set $N5007, $I5010
    sub $N5005, $N5006, $N5007
    $P5027 = "&infix_x"("0", $N5005)
    set $S5008, $P5027
    concat $S5005, $S5006, $S5008
    set $S5009, __lowered_lex_698
    concat $S5004, $S5005, $S5009
    box $P5028, $S5004
    set __lowered_lex_698, $P5028
    goto if1265_end2830
  if1265_else2829:
.annotate 'line', 2477
    set $S5011, __lowered_lex_699
    set $S5012, __lowered_lex_698
    concat $S5010, $S5011, $S5012
    box $P5029, $S5010
    set __lowered_lex_698, $P5029
  if1265_end2830:
.annotate 'line', 2480
    unless_null __lowered_lex_697, fallback2851
    nqp_get_sc_object $P5030, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_697, $P5030
  fallback2851:
    set fb_tmp_251, __lowered_lex_697
    repr_defined $I5012, fb_tmp_251
    unless $I5012 goto if1275_else2849 
    set $P5031, fb_tmp_251["sym"]
    set $P5033, $P5031
    goto if1275_end2850
  if1275_else2849:
    null $P5032
    set $P5033, $P5032
  if1275_end2850:
    unless_null $P5033, vivi_12762852
    nqp_get_sc_object $P5034, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5033, $P5034
  vivi_12762852:
    set $S5013, $P5033
    iseq $I5011, $S5013, "x"
    unless $I5011 goto if1274_else2847 
    set $S5015, __lowered_lex_698
    downcase $S5014, $S5015
    box $P5036, $S5014
    set $P5035, $P5036
    goto if1274_end2848
  if1274_else2847:
    set $P5035, __lowered_lex_698
  if1274_end2848:
    $P5037 = __lowered_lex_697."make"($P5035)
    .return ($P5037) 
.end
.HLL "nqp"
.namespace []
.sub "escape:sym<%>" :subid("cuid_226_1431289891.89934") :anon :lex :outer("cuid_259_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2483
    .param pmc __lowered_lex_700 
    .param pmc __lowered_lex_701 
.annotate 'line', 2484
    $P5001 = __lowered_lex_701."make"("%")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "literal" :subid("cuid_227_1431289891.89934") :anon :lex :outer("cuid_259_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2487
    .param pmc __lowered_lex_702 
    .param pmc __lowered_lex_703 
.annotate 'line', 2488
    set $S5001, __lowered_lex_703
    $P5001 = __lowered_lex_703."make"($S5001)
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "idx" :subid("cuid_228_1431289891.89934") :anon :lex :outer("cuid_259_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2491
    .param pmc __lowered_lex_704 
    .param pmc __lowered_lex_705 
    .local pmc __lowered_lex_706 
    .local pmc fb_tmp_252 
    unless_null __lowered_lex_705, fallback2855
    nqp_get_sc_object $P5001, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_705, $P5001
  fallback2855:
    set fb_tmp_252, __lowered_lex_705
    repr_defined $I5001, fb_tmp_252
    unless $I5001 goto if1277_else2853 
    set $P5002, fb_tmp_252["param_index"]
    set $P5004, $P5002
    goto if1277_end2854
  if1277_else2853:
    null $P5003
    set $P5004, $P5003
  if1277_end2854:
    unless_null $P5004, vivi_12782856
    nqp_get_sc_object $P5005, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5004, $P5005
  vivi_12782856:
    set $N5002, $P5004
    set $N5003, 1
    sub $N5001, $N5002, $N5003
    box $P5006, $N5001
    set __lowered_lex_706, $P5006
    set $N5004, __lowered_lex_706
    set $N5005, 0
    islt $I5002, $N5004, $N5005
    unless $I5002 goto if1279_end2858 
    box $P5007, "Parameter index starts to count at 1 but 0 was passed"
    die $P5007
  if1279_end2858:
.annotate 'line', 2494
    $P5008 = __lowered_lex_705."make"(__lowered_lex_706)
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "size" :subid("cuid_229_1431289891.89934") :anon :lex :outer("cuid_259_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2497
    .param pmc __lowered_lex_707 
    .param pmc __lowered_lex_708 
    .local pmc fb_tmp_253 
.annotate 'line', 2498
    unless_null __lowered_lex_708, fallback2863
    nqp_get_sc_object $P5001, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_708, $P5001
  fallback2863:
    set fb_tmp_253, __lowered_lex_708
    repr_defined $I5001, fb_tmp_253
    unless $I5001 goto if1281_else2861 
    set $P5002, fb_tmp_253["star"]
    set $P5004, $P5002
    goto if1281_end2862
  if1281_else2861:
    null $P5003
    set $P5004, $P5003
  if1281_end2862:
    unless_null $P5004, vivi_12822864
    nqp_get_sc_object $P5005, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5004, $P5005
  vivi_12822864:
    unless $P5004 goto if1280_else2859 
    new $P5006, 'Hash'
    $P5007 = "&next_argument"($P5006)
    set $P5008, $P5007
    goto if1280_end2860
  if1280_else2859:
    set $S5001, __lowered_lex_708
    box $P5009, $S5001
    set $P5008, $P5009
  if1280_end2860:
    $P5010 = __lowered_lex_708."make"($P5008)
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_275_1431289891.89934") :anon :lex :outer("cuid_254_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2512
    .const 'Sub' $P5003 = 'cuid_230_1431289891.89934' 
    capture_lex $P5003 
    .const 'Sub' $P5003 = 'cuid_231_1431289891.89934' 
    capture_lex $P5003 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_230_1431289891.89934' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_231_1431289891.89934' 
    capture_lex $P5002
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "TOP" :subid("cuid_230_1431289891.89934") :anon :lex :outer("cuid_275_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2513
    .param pmc __lowered_lex_710 
    .param pmc __lowered_lex_711 
    .const 'Sub' $P5015 = 'cuid_276_1431289891.89934' 
    capture_lex $P5015 
    .lex "$count", $P101 
    .local pmc fb_tmp_254 
    box $P5001, 0
    set $P101, $P5001
    unless_null __lowered_lex_711, fallback2867
    nqp_get_sc_object $P5005, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_711, $P5005
  fallback2867:
    set fb_tmp_254, __lowered_lex_711
    repr_defined $I5001, fb_tmp_254
    unless $I5001 goto if1283_else2865 
    set $P5006, fb_tmp_254["statement"]
    set $P5008, $P5006
    goto if1283_end2866
  if1283_else2865:
    null $P5007
    set $P5008, $P5007
  if1283_end2866:
    unless_null $P5008, vivi_12842868
    nqp_get_sc_object $P5009, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5008, $P5009
  vivi_12842868:
    set $P5002, $P5008
    iter $P5004, $P5008
    new $P5011, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5011, for_handlers2869
    push_eh $P5011
  for_next2870:
    unless $P5004, for_done2872
    shift $P5012, $P5004
  for_redo2871:
    .const 'Sub' $P5010 = 'cuid_276_1431289891.89934' 
    capture_lex $P5010
    $P5002 = $P5010($P5012)
    goto for_next2870
  for_handlers2869:
    .get_results ($P5011)
    pop_upto_eh $P5011
    getattribute $P5013, $P5011, 'type'
    eq $P5013, .CONTROL_LOOP_NEXT, for_next2870
    eq $P5013, .CONTROL_LOOP_REDO, for_redo2871
  for_done2872:
    pop_eh 
.annotate 'line', 2516
    $P5014 = __lowered_lex_711."make"($P101)
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_276_1431289891.89934") :anon :lex :outer("cuid_230_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
    .param pmc __lowered_lex_709 
    find_lex $P5001, "$count"
    set $I5002, $P5001
.annotate 'line', 2515
    $P5002 = __lowered_lex_709."made"()
    set $I5003, $P5002
    add $I5001, $I5002, $I5003
    box $P5003, $I5001
    store_lex "$count", $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "statement" :subid("cuid_231_1431289891.89934") :anon :lex :outer("cuid_275_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2519
    .param pmc __lowered_lex_712 
    .param pmc __lowered_lex_713 
    .local pmc fb_tmp_255 
    .local pmc fb_tmp_256 
    .local pmc fb_tmp_257 
.annotate 'line', 2520
    unless_null __lowered_lex_713, fallback2879
    nqp_get_sc_object $P5001, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_713, $P5001
  fallback2879:
    set fb_tmp_255, __lowered_lex_713
    repr_defined $I5001, fb_tmp_255
    unless $I5001 goto if1287_else2877 
    set $P5002, fb_tmp_255["directive"]
    set $P5004, $P5002
    goto if1287_end2878
  if1287_else2877:
    null $P5003
    set $P5004, $P5003
  if1287_end2878:
    unless_null $P5004, vivi_12882880
    nqp_get_sc_object $P5005, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5004, $P5005
  vivi_12882880:
    set $P5015, $P5004
    unless $P5004 goto if1286_end2876 
    unless_null __lowered_lex_713, fallback2885
    nqp_get_sc_object $P5006, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_713, $P5006
  fallback2885:
    set fb_tmp_257, __lowered_lex_713
    repr_defined $I5004, fb_tmp_257
    unless $I5004 goto if1290_else2883 
    set $P5007, fb_tmp_257["directive"]
    set $P5009, $P5007
    goto if1290_end2884
  if1290_else2883:
    null $P5008
    set $P5009, $P5008
  if1290_end2884:
    unless_null $P5009, vivi_12912886
    nqp_get_sc_object $P5010, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5009, $P5010
  vivi_12912886:
    set fb_tmp_256, $P5009
    repr_defined $I5003, fb_tmp_256
    unless $I5003 goto if1289_else2881 
    set $P5011, fb_tmp_256["idx"]
    set $P5013, $P5011
    goto if1289_end2882
  if1289_else2881:
    null $P5012
    set $P5013, $P5012
  if1289_end2882:
    unless_null $P5013, vivi_12922887
    nqp_get_sc_object $P5014, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5013, $P5014
  vivi_12922887:
    isfalse $I5002, $P5013
    box $P5016, $I5002
    set $P5015, $P5016
  if1286_end2876:
    unless $P5015 goto if1285_else2873 
    set $I5005, 1
    goto if1285_end2874
  if1285_else2873:
    set $I5005, 0
  if1285_end2874:
    $P5017 = __lowered_lex_713."make"($I5005)
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_278_1431289891.89934") :load :init
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
    .const 'Sub' $P5461 = 'cuid_277_1431289891.89934' 
    capture_lex $P5461 
    .local pmc cur_sc 
    .local pmc conflicts 
    nqp_dynop_setup 
    nqp_bigint_setup 
    getinterp $P5001
    get_class $P5002, "LexPad"
    get_class $P5003, "NQPLexPad"
    $P5004 = $P5001."hll_map"($P5002, $P5003)
    load_bytecode "ModuleLoader.pbc"
    .const 'Sub' $P5001 = "cuid_232_1431289891.89934" 
    get_hll_global $P5002, "ModuleLoader"
    $P5003 = $P5002."load_setting"("NQPCORE")
    $P5004 = $P5001."set_outer_ctx"($P5003)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P5001, "ModuleLoader"
    $P5001."load_module"("QRegex")
    nqp_create_sc $P5001, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493"
    set cur_sc, $P5001
    $P5002 = cur_sc."set_description"("gen/parrot/stage2/NQPHLL.nqp")
    new $P5003, 'QRPA'
    set conflicts, $P5003
    new $P5004, 'ResizableStringArray'
    assign $P5004, 389
    assign $P5004, 0
    null $S5001
    push $P5004, $S5001
    push $P5004, "P6opaque"
    push $P5004, "HLL"
    push $P5004, "QAST"
    push $P5004, "QRegex"
    push $P5004, "NQPCursorRole"
    push $P5004, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999"
    push $P5004, "gen/parrot/stage2/QRegex.nqp"
    push $P5004, "NQPMatch"
    push $P5004, "NQPCursor"
    push $P5004, "NQPRegexMethod"
    push $P5004, "NQPRegex"
    push $P5004, "DEFAULT"
    push $P5004, "CREATE"
    push $P5004, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561"
    push $P5004, "gen/parrot/stage2/NQPCORE.setting"
    push $P5004, "bless"
    push $P5004, "BUILDALL"
    push $P5004, "new"
    push $P5004, "Str"
    push $P5004, "Numeric"
    push $P5004, "Int"
    push $P5004, "defined"
    push $P5004, "ACCEPTS"
    push $P5004, "isa"
    push $P5004, "apply_transcodings"
    push $P5004, "config"
    push $P5004, "force_gc"
    push $P5004, "name"
    push $P5004, "nqpevent"
    push $P5004, "run_profiled"
    push $P5004, "run_traced"
    push $P5004, "version_string"
    push $P5004, "vmstat"
    push $P5004, "stages"
    push $P5004, "is_precomp_stage"
    push $P5004, "is_textual_stage"
    push $P5004, "post"
    push $P5004, "pirbegin"
    push $P5004, "pir"
    push $P5004, "evalpmc"
    push $P5004, "is_compunit"
    push $P5004, "compunit_mainline"
    push $P5004, "compunit_coderefs"
    push $P5004, "recursion_limit"
    push $P5004, "Uninstantiable"
    push $P5004, "MATCH"
    push $P5004, "Bool"
    push $P5004, "parse"
    push $P5004, "!INTERPOLATE"
    push $P5004, "!INTERPOLATE_REGEX"
    push $P5004, "orig"
    push $P5004, "target"
    push $P5004, "from"
    push $P5004, "pos"
    push $P5004, "prune"
    push $P5004, "!APPEND_TO_ORIG"
    push $P5004, "CAPHASH"
    push $P5004, "!cursor_init"
    push $P5004, "!cursor_start_all"
    push $P5004, "!cursor_start"
    push $P5004, "!cursor_start_cur"
    push $P5004, "!cursor_start_fail"
    push $P5004, "!cursor_start_subcapture"
    push $P5004, "!cursor_capture"
    push $P5004, "!cursor_push_cstack"
    push $P5004, "!cursor_pass"
    push $P5004, "!cursor_fail"
    push $P5004, "!cursor_pos"
    push $P5004, "!cursor_next"
    push $P5004, "!cursor_more"
    push $P5004, "!reduce"
    push $P5004, "!reduce_with_match"
    push $P5004, "!shared"
    push $P5004, "!protoregex"
    push $P5004, "!protoregex_nfa"
    push $P5004, "!protoregex_table"
    push $P5004, "!alt"
    push $P5004, "!alt_nfa"
    push $P5004, "!precompute_nfas"
    push $P5004, "!dba"
    push $P5004, "!highwater"
    push $P5004, "!highexpect"
    push $P5004, "!fresh_highexpect"
    push $P5004, "!set_highexpect"
    push $P5004, "!clear_highwater"
    push $P5004, "!BACKREF"
    push $P5004, "!LITERAL"
    push $P5004, "!DYNQUANT_LIMITS"
    push $P5004, "!DELEGATE_ACCEPTS"
    push $P5004, "at"
    push $P5004, "before"
    push $P5004, "after"
    push $P5004, "ws"
    push $P5004, "ww"
    push $P5004, "wb"
    push $P5004, "ident"
    push $P5004, "alpha"
    push $P5004, "alnum"
    push $P5004, "upper"
    push $P5004, "lower"
    push $P5004, "digit"
    push $P5004, "xdigit"
    push $P5004, "space"
    push $P5004, "blank"
    push $P5004, "cntrl"
    push $P5004, "punct"
    push $P5004, "FAILGOAL"
    push $P5004, "throw_unrecog_backslash_seq"
    push $P5004, "termish"
    push $P5004, "term"
    push $P5004, "infix"
    push $P5004, "prefix"
    push $P5004, "postfix"
    push $P5004, "circumfix"
    push $P5004, "postcircumfix"
    push $P5004, "term:sym<circumfix>"
    push $P5004, "infixish"
    push $P5004, "prefixish"
    push $P5004, "postfixish"
    push $P5004, "nullterm"
    push $P5004, "nullterm_alt"
    push $P5004, "nulltermish"
    push $P5004, "quote_delimited"
    push $P5004, "quote_atom"
    push $P5004, "decint"
    push $P5004, "decints"
    push $P5004, "hexint"
    push $P5004, "hexints"
    push $P5004, "octint"
    push $P5004, "octints"
    push $P5004, "binint"
    push $P5004, "binints"
    push $P5004, "integer"
    push $P5004, "dec_number"
    push $P5004, "escale"
    push $P5004, "quote_escape"
    push $P5004, "quote_escape:sym<backslash>"
    push $P5004, "quote_escape:sym<stopper>"
    push $P5004, "quote_escape:sym<bs>"
    push $P5004, "quote_escape:sym<nl>"
    push $P5004, "quote_escape:sym<cr>"
    push $P5004, "quote_escape:sym<tab>"
    push $P5004, "quote_escape:sym<ff>"
    push $P5004, "quote_escape:sym<esc>"
    push $P5004, "quote_escape:sym<hex>"
    push $P5004, "quote_escape:sym<oct>"
    push $P5004, "quote_escape:sym<chr>"
    push $P5004, "quote_escape:sym<0>"
    push $P5004, "quote_escape:sym<misc>"
    push $P5004, "charname"
    push $P5004, "charnames"
    push $P5004, "charspec"
    push $P5004, "O"
    push $P5004, "panic"
    push $P5004, "peek_delimiters"
    push $P5004, "quote_EXPR"
    push $P5004, "quotemod_check"
    push $P5004, "starter"
    push $P5004, "stopper"
    push $P5004, "split_words"
    push $P5004, "EXPR"
    push $P5004, "EXPR_reduce"
    push $P5004, "EXPR_nonassoc"
    push $P5004, "ternary"
    push $P5004, "MARKER"
    push $P5004, "MARKED"
    push $P5004, "LANG"
    push $P5004, "$!shared"
    push $P5004, "$!from"
    push $P5004, "$!pos"
    push $P5004, "$!match"
    push $P5004, "$!name"
    push $P5004, "$!bstack"
    push $P5004, "$!cstack"
    push $P5004, "$!regexsub"
    push $P5004, "$!restart"
    push $P5004, "string_to_int"
    push $P5004, "ints_to_string"
    push $P5004, "CTXSAVE"
    push $P5004, "SET_BLOCK_OUTER_CTX"
    push $P5004, "BUILD"
    push $P5004, "backend"
    push $P5004, "language"
    push $P5004, "compiler"
    push $P5004, "autoprint"
    push $P5004, "readline"
    push $P5004, "context"
    push $P5004, "interactive"
    push $P5004, "interactive_result"
    push $P5004, "interactive_exception"
    push $P5004, "eval"
    push $P5004, "ctxsave"
    push $P5004, "parsegrammar"
    push $P5004, "parseactions"
    push $P5004, "interactive_banner"
    push $P5004, "interactive_prompt"
    push $P5004, "compiler_progname"
    push $P5004, "commandline_options"
    push $P5004, "command_line"
    push $P5004, "command_eval"
    push $P5004, "process_args"
    push $P5004, "evalfiles"
    push $P5004, "exists_stage"
    push $P5004, "compile"
    push $P5004, "start"
    push $P5004, "ast"
    push $P5004, "dumper"
    push $P5004, "usage"
    push $P5004, "version"
    push $P5004, "show-config"
    push $P5004, "verbose-config"
    push $P5004, "removestage"
    push $P5004, "addstage"
    push $P5004, "parse_name"
    push $P5004, "lineof"
    push $P5004, "user-progname"
    push $P5004, "cli-options"
    push $P5004, "cli-arguments"
    push $P5004, "default_backend"
    push $P5004, "@!stages"
    push $P5004, "$!parsegrammar"
    push $P5004, "$!parseactions"
    push $P5004, "@!cmdoptions"
    push $P5004, "$!compiler_progname"
    push $P5004, "$!language"
    push $P5004, "%!config"
    push $P5004, "$!user_progname"
    push $P5004, "@!cli-arguments"
    push $P5004, "%!cli-options"
    push $P5004, "$!backend"
    push $P5004, "$!save_ctx"
    push $P5004, "init"
    push $P5004, "arguments"
    push $P5004, "options"
    push $P5004, "add-argument"
    push $P5004, "add-option"
    push $P5004, "@!arguments"
    push $P5004, "%!options"
    push $P5004, "stop-after-first-arg"
    push $P5004, "add-stopper"
    push $P5004, "split-option-aliases"
    push $P5004, "add-spec"
    push $P5004, "is-option"
    push $P5004, "wants-value"
    push $P5004, "optional-value"
    push $P5004, "@!specs"
    push $P5004, "%!stopper"
    push $P5004, "$!stop-after-first-arg"
    push $P5004, "add_object"
    push $P5004, "add_root_code_ref"
    push $P5004, "update_root_code_ref"
    push $P5004, "is_precompilation_mode"
    push $P5004, "add_load_dependency_task"
    push $P5004, "add_fixup_task"
    push $P5004, "sc"
    push $P5004, "handle"
    push $P5004, "code_ref_blocks"
    push $P5004, "load_dependency_tasks"
    push $P5004, "fixup_tasks"
    push $P5004, "$!sc"
    push $P5004, "$!handle"
    push $P5004, "$!precomp_mode"
    push $P5004, "$!num_code_refs"
    push $P5004, "$!code_ref_blocks"
    push $P5004, "@!load_dependency_tasks"
    push $P5004, "@!fixup_tasks"
    push $P5004, "TOP"
    push $P5004, "statement"
    push $P5004, "directive"
    push $P5004, "directive:sym<b>"
    push $P5004, "directive:sym<c>"
    push $P5004, "directive:sym<d>"
    push $P5004, "directive:sym<e>"
    push $P5004, "directive:sym<f>"
    push $P5004, "directive:sym<g>"
    push $P5004, "directive:sym<o>"
    push $P5004, "directive:sym<s>"
    push $P5004, "directive:sym<u>"
    push $P5004, "directive:sym<x>"
    push $P5004, "escape"
    push $P5004, "escape:sym<%>"
    push $P5004, "literal"
    push $P5004, "idx"
    push $P5004, "flags"
    push $P5004, "size"
    push $P5004, "OPER"
    push $P5004, "alt_nfa__1_1431289892.34223"
    push $P5004, "alt_nfa__2_1431289892.36627"
    push $P5004, "alt_nfa__3_1431289892.38318"
    push $P5004, "VALUE"
    push $P5004, "alt_nfa__4_1431289892.46823"
    push $P5004, "alt_nfa__5_1431289892.46879"
    push $P5004, "coeff"
    push $P5004, "alt_nfa__6_1431289892.48349"
    push $P5004, "Ee"
    push $P5004, "+-"
    push $P5004, "\\"
    push $P5004, "alt_nfa__7_1431289892.5408"
    push $P5004, "alt_nfa__8_1431289892.55036"
    push $P5004, "sym"
    push $P5004, "textqq"
    push $P5004, "0"
    push $P5004, "textq"
    push $P5004, "alt_nfa__9_1431289892.57955"
    push $P5004, "],#"
    push $P5004, "control"
    push $P5004, "alt_nfa__10_1431289892.62078"
    push $P5004, "%"
    push $P5004, "alt_nfa__11_1431289895.57581"
    push $P5004, "alt_nfa__12_1431289895.57604"
    push $P5004, "precision"
    push $P5004, "bB"
    push $P5004, "di"
    push $P5004, "eE"
    push $P5004, "fF"
    push $P5004, "gG"
    push $P5004, "xX"
    push $P5004, "param_index"
    push $P5004, "plus"
    push $P5004, "minus"
    push $P5004, "zero"
    push $P5004, "hash"
    push $P5004, "alt_nfa__13_1431289895.69277"
    push $P5004, "star"
    push $P5004, "alt_nfa__14_1431289895.69743"
    push $P5004, "eEfFgG"
    push $P5004, "__6MODEL_CORE__"
    push $P5004, "GLOBALish"
    push $P5004, "EXPORT"
    push $P5004, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024"
    push $P5004, "gen/parrot/stage2/nqpmo.nqp"
    push $P5004, "HLL::Backend::Parrot"
    push $P5004, "HLL::Backend::Default"
    push $P5004, "HLL::Grammar"
    push $P5004, "shared"
    push $P5004, "match"
    push $P5004, "bstack"
    push $P5004, "cstack"
    push $P5004, "regexsub"
    push $P5004, "restart"
    push $P5004, "HLL::Actions"
    push $P5004, "HLL::Compiler"
    push $P5004, "HLL::CommandLine::Result"
    push $P5004, "HLL::CommandLine::Parser"
    push $P5004, "HLL::World"
    push $P5004, "sprintf"
    push $P5004, "Syntax"
    push $P5004, "Actions"
    push $P5004, "Directives"
    push $P5004, "Backend"
    push $P5004, "Grammar"
    push $P5004, "Compiler"
    push $P5004, "CommandLine"
    push $P5004, "World"
    push $P5004, "CompileTimeValue"
    push $P5004, "69262D203AA461F498C95CCF7FF3EA8AC3EE1FD5-1431289882.84207"
    push $P5004, "gen/parrot/stage2/QASTNode.nqp"
    push $P5004, "SpecialArg"
    push $P5004, "Children"
    push $P5004, "Node"
    push $P5004, "NodeList"
    push $P5004, "RegexCursorType"
    push $P5004, "Regex"
    push $P5004, "IVal"
    push $P5004, "NVal"
    push $P5004, "SVal"
    push $P5004, "BVal"
    push $P5004, "WVal"
    push $P5004, "Want"
    push $P5004, "Var"
    push $P5004, "VarWithFallback"
    push $P5004, "ParamTypeCheck"
    push $P5004, "Op"
    push $P5004, "VM"
    push $P5004, "Stmts"
    push $P5004, "Stmt"
    push $P5004, "Block"
    push $P5004, "Unquote"
    push $P5004, "CompUnit"
    push $P5004, "InlinePlaceholder"
    push $P5004, "NFA"
    push $P5004, "$?PACKAGE"
    push $P5004, "$?ROLE"
    push $P5004, "$?CLASS"
    push $P5004, "Parrot"
    push $P5004, "Default"
    push $P5004, "Result"
    push $P5004, "Parser"
    .const 'Sub' $P5005 = 'cuid_277_1431289891.89934' 
    capture_lex $P5005
    $P5006 = $P5005()
    nqp_deserialize_sc "BwAAAEAAAAAFAAAAaAAAABUAAABkAQAAWjAAADwBAAAaRAAAniIBAAEAAAC2IgEAAQAAAMYiAQD4IgEAAAAAAAYAAAAHAAAADgAAAA8AAABHAQAAAAAAAEoBAABLAQAAZAEAAGUBAAABAAAAAAAAAMYAAAABAAAAIgEAAIYBAAABAAAA4gEAADgCAAABAAAAlAIAAKIEAAAtAAAACgUAAGAFAAABAAAAYAUAABQNAAABAAAArA4AAH4RAAABAAAA5hEAAGYVAAABAAAAKhcAAGYYAAABAAAA/hgAAHIaAAABAAAARhsAAOQcAAAtAAAAIB4AAGweAAABAAAAbB4AAPAjAAABAAAAiCUAAF4nAAABAAAAxicAANgoAAABAAAAQCkAAOopAAABAAAARioAAOwrAAABAAAASCwAAKwsAAAtAAAACC0AAFotAAABAAAAWi0AAMwtAAABAAAAKC4AAJouAAAAAAAA9QAAAAAAAAAAAAAACgAIAAAAAgAAAAIAAAAAAPYAAAADAAAAAgAAAAAA9wAAAAQAAAACAAAAAAD4AAAABQAAAAIAAQAAACYAAAAIAAAAAgABAAAAYQAAAAkAAAACAAEAAABzAAAACgAAAAIAAQAAAHkAAAALAAAAAgABAAAAfgAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAAAAAAMA/////////////////////wAAAAD5AAAAAAAAAAEAAAAKAAEAAAAMAAAAAgAAAAAAAgAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAABAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAQAAAAMA/////////////////////wAAAAD6AAAAAAAAAAIAAAAKAAAAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAAAgAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAIAAAADAP////////////////////8AAAAA+wAAAAAAAAADAAAACgAAAAAACgAeAAAADQAAAAIAAgAAABsAAAAQAAAAAgACAAAAHAAAABEAAAACAAIAAAAdAAAAEgAAAAIAAgAAAB4AAAATAAAAAgACAAAAHwAAABQAAAACAAIAAAAiAAAAFQAAAAIAAgAAACQAAAAWAAAAAgACAAAAJgAAABcAAAACAAIAAAAnAAAAGAAAAAIAAgAAACkAAAAZAAAAAgAAAAAABAAAABoAAAACAAAAAAAFAAAAGwAAAAIAAAAAAAYAAAAcAAAAAgAAAAAABwAAAB0AAAACAAAAAAAIAAAAHgAAAAIAAAAAAAkAAAAfAAAAAgAAAAAACgAAACAAAAACAAAAAAALAAAAIQAAAAIAAAAAAAwAAAAiAAAAAgAAAAAADQAAACMAAAACAAAAAAAOAAAAJAAAAAIAAAAAAA8AAAAlAAAAAgAAAAAAEAAAACYAAAACAAAAAAARAAAAJwAAAAIAAAAAABIAAAAoAAAAAgAAAAAAEwAAACkAAAACAAAAAAAUAAAAKgAAAAIAAAAAABUAAAArAAAAAgAAAAAAFgAAACwAAAACAAAAAAAXAAAAAAAAAAAAAAACAAAAAAAAAAIAAAAAAAMAAAACAAIAAAAaAAAABAAAAAAAAAABAAAAAAAAAAUAAAAAAAAAAwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAACAAAAAAAAAAIAAgAAABoAAAADAAIAAAAAAAMAAAADAP////////////////////8AAAAA/AAAAAAAAAAYAAAACgAAAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAABgAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD9AAAAAAAAABsAAAAKAAAAAAAKAIQAAAANAAAAAgACAAAAGwAAABAAAAACAAIAAAAcAAAAEQAAAAIAAgAAAB0AAAASAAAAAgACAAAAHgAAABMAAAACAAIAAAAfAAAAFAAAAAIAAgAAACIAAAAVAAAAAgACAAAAJAAAABYAAAACAAIAAAAmAAAAFwAAAAIAAgAAACcAAAAYAAAAAgACAAAAKQAAAC4AAAACAAEAAAB0AAAALwAAAAIAAQAAAHUAAAAwAAAAAgABAAAAdgAAADEAAAACAAEAAAB3AAAAMgAAAAIAAQAAAHgAAAAzAAAAAgABAAAAiwAAADQAAAACAAEAAACMAAAANQAAAAIAAQAAAI0AAAA2AAAAAgABAAAAjgAAADcAAAACAAEAAACPAAAAOAAAAAIAAQAAAJAAAAA5AAAAAgABAAAAkQAAADoAAAACAAEAAACSAAAAOwAAAAIAAQAAAJMAAAA8AAAAAgABAAAAlAAAAD0AAAACAAEAAACVAAAAPgAAAAIAAQAAAJYAAAA/AAAAAgABAAAAlwAAAEAAAAACAAEAAACYAAAAQQAAAAIAAQAAAJkAAABCAAAAAgABAAAAmgAAAEMAAAACAAEAAACbAAAARAAAAAIAAQAAAJwAAABFAAAAAgABAAAAnQAAAEYAAAACAAEAAACeAAAARwAAAAIAAQAAAJ8AAABIAAAAAgABAAAAoAAAAEkAAAACAAEAAAChAAAASgAAAAIAAQAAAKIAAABLAAAAAgABAAAAowAAAEwAAAACAAEAAACkAAAATQAAAAIAAQAAAKUAAABOAAAAAgABAAAApgAAAE8AAAACAAEAAACnAAAAUAAAAAIAAQAAAKgAAABRAAAAAgABAAAAqQAAAFIAAAACAAEAAACqAAAAUwAAAAIAAQAAAKsAAABUAAAAAgABAAAArAAAAFUAAAACAAEAAACtAAAAVgAAAAIAAQAAAK4AAABXAAAAAgABAAAArwAAAFgAAAACAAEAAACwAAAAWQAAAAIAAQAAALEAAABaAAAAAgABAAAAsgAAAFsAAAACAAEAAACzAAAAXAAAAAIAAQAAALQAAABdAAAAAgABAAAAtQAAAF4AAAACAAEAAAC2AAAAXwAAAAIAAQAAALcAAABgAAAAAgABAAAAuAAAAGEAAAACAAEAAAC5AAAAYgAAAAIAAQAAALoAAABjAAAAAgABAAAAuwAAAGQAAAACAAEAAAC8AAAAZQAAAAIAAQAAAL0AAABmAAAAAgABAAAAvgAAAGcAAAACAAEAAAC/AAAAaAAAAAIAAQAAAMAAAABpAAAAAgABAAAAwQAAAGoAAAACAAEAAADCAAAAawAAAAIAAAAAAE4AAABsAAAAAgAAAAAAHAAAAG0AAAACAAAAAAAdAAAAbgAAAAIAAAAAAB4AAABvAAAAAgAAAAAAHwAAAHAAAAACAAAAAAAgAAAAcQAAAAIAAAAAACEAAAByAAAAAgAAAAAAIgAAAHMAAAACAAAAAAAjAAAAdAAAAAIAAAAAACQAAAB1AAAAAgAAAAAAJQAAAHYAAAACAAAAAAAmAAAAdwAAAAIAAAAAACcAAAB4AAAAAgAAAAAAKAAAAHkAAAACAAAAAAApAAAAegAAAAIAAAAAACoAAAB7AAAAAgAAAAAAKwAAAHwAAAACAAAAAAAsAAAAfQAAAAIAAAAAAC0AAAB+AAAAAgAAAAAALgAAAH8AAAACAAAAAAAvAAAAgAAAAAIAAAAAADAAAACBAAAAAgAAAAAAMQAAAIIAAAACAAAAAAAyAAAAgwAAAAIAAAAAADMAAACEAAAAAgAAAAAANAAAAIUAAAACAAAAAAA1AAAAhgAAAAIAAAAAADYAAACHAAAAAgAAAAAANwAAAIgAAAACAAAAAAA4AAAAiQAAAAIAAAAAADkAAACKAAAAAgAAAAAAOgAAAIsAAAACAAAAAAA7AAAAjAAAAAIAAAAAADwAAACNAAAAAgAAAAAAPQAAAI4AAAACAAAAAAA+AAAAjwAAAAIAAAAAAD8AAACQAAAAAgAAAAAAQAAAAJEAAAACAAAAAABBAAAAkgAAAAIAAAAAAEIAAACTAAAAAgAAAAAAQwAAAJQAAAACAAAAAABEAAAAlQAAAAIAAAAAAEUAAACWAAAAAgAAAAAASAAAAJcAAAACAAAAAABKAAAAmAAAAAIAAAAAAEsAAACZAAAAAgAAAAAATAAAAJoAAAACAAAAAABNAAAAmwAAAAIAAAAAAE8AAACcAAAAAgAAAAAAUAAAAJ0AAAACAAAAAABRAAAAngAAAAIAAAAAAFIAAACfAAAAAgAAAAAAUwAAAKAAAAACAAAAAABUAAAAoQAAAAIAAAAAAFUAAACiAAAAAgAAAAAAVgAAAKMAAAACAAAAAABXAAAApAAAAAIAAAAAAFgAAAClAAAAAgAAAAAAWQAAAKYAAAACAAAAAABaAAAApwAAAAIAAAAAAFsAAAAAAAAAAAAAAAMAAAAAAAAAAgAAAAAAGwAAAAIAAQAAAHMAAAACAAIAAAAaAAAABAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAgABAAAAdQAAAAAAAAAAAAAAAAAAAAAAAAAJAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAgAAAAEAAAAAAAAAAgAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgACAAAAGgAAAAEAAQACAAIAAAAaAAAAAgACAAAAGgAAAAIAAgAAABoAAAACAAIAAAAaAAAAAgACAAAAGgAAAAIAAgAAABoAAAD///////////////////////////////8AAAAAAAAAAAMAAAAAAAAAAgACAAAAGgAAAAMAAgABAAAAcwAAAAoACQAAAKgAAAAEAAAAAAAAAAAAqQAAAAQAAQAAAAAAAACqAAAABAACAAAAAAAAAKsAAAAEAAMAAAAAAAAArAAAAAQABAAAAAAAAACtAAAABAAFAAAAAAAAAK4AAAAEAAYAAAAAAAAArwAAAAQABwAAAAAAAACwAAAABAAIAAAAAAAAAAIAAAAAABsAAAADAP////////////////////8AAAAA/gAAAAAAAABcAAAACgAAAAAACgAsAAAADQAAAAIAAgAAABsAAAAQAAAAAgACAAAAHAAAABEAAAACAAIAAAAdAAAAEgAAAAIAAgAAAB4AAAATAAAAAgACAAAAHwAAABQAAAACAAIAAAAiAAAAFQAAAAIAAgAAACQAAAAWAAAAAgACAAAAJgAAABcAAAACAAIAAAAnAAAAGAAAAAIAAgAAACkAAACxAAAAAgAAAAAAXQAAALIAAAACAAAAAABeAAAAswAAAAIAAAAAAF8AAAC0AAAAAgAAAAAAYAAAAKEAAAACAAAAAABhAAAAdAAAAAIAAAAAAGIAAABtAAAAAgAAAAAAYwAAAHgAAAACAAAAAABkAAAAeQAAAAIAAAAAAGUAAACFAAAAAgAAAAAAZgAAAIYAAAACAAAAAABnAAAAfQAAAAIAAAAAAGgAAAB/AAAAAgAAAAAAaQAAAIEAAAACAAAAAABqAAAAgwAAAAIAAAAAAGsAAACcAAAAAgAAAAAAbAAAAHsAAAACAAAAAABtAAAAfAAAAAIAAAAAAG4AAACJAAAAAgAAAAAAbwAAAIoAAAACAAAAAABwAAAAiwAAAAIAAAAAAHEAAACMAAAAAgAAAAAAcgAAAI0AAAACAAAAAABzAAAAjgAAAAIAAAAAAHQAAACPAAAAAgAAAAAAdQAAAJAAAAACAAAAAAB2AAAAkQAAAAIAAAAAAHcAAACSAAAAAgAAAAAAeAAAAJMAAAACAAAAAAB5AAAAlAAAAAIAAAAAAHoAAACVAAAAAgAAAAAAewAAAJYAAAACAAAAAAB8AAAAlwAAAAIAAAAAAH0AAACYAAAAAgAAAAAAfgAAAAAAAAAAAAAAAgAAAAAAAAACAAAAAABcAAAAAgACAAAAGgAAAAQAAAAAAAAAAQAAAAAAAAAFAAAAAAAAAAMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAgAAAAAAAAACAAIAAAAaAAAAAwACAAAAAABcAAAAAwD/////////////////////AAAAAP8AAAAAAAAAfwAAAAoAAAAAAAoANwAAAA0AAAACAAIAAAAbAAAAEAAAAAIAAgAAABwAAAARAAAAAgACAAAAHQAAABIAAAACAAIAAAAeAAAAEwAAAAIAAgAAAB8AAAAUAAAAAgACAAAAIgAAABUAAAACAAIAAAAkAAAAFgAAAAIAAgAAACYAAAAXAAAAAgACAAAAJwAAABgAAAACAAIAAAApAAAAtQAAAAIAAAAAAIAAAAC2AAAAAgAAAAAAgQAAALcAAAACAAAAAACCAAAAuAAAAAIAAAAAAIMAAAAaAAAAAgAAAAAAhAAAALkAAAACAAAAAACFAAAAugAAAAIAAAAAAIYAAAC7AAAAAgAAAAAAhwAAALwAAAACAAAAAACIAAAAvQAAAAIAAAAAAIkAAAC+AAAAAgAAAAAAigAAAL8AAAACAAAAAACLAAAAwAAAAAIAAAAAAIwAAACaAAAAAgAAAAAAjQAAACIAAAACAAAAAACOAAAAwQAAAAIAAAAAAI8AAADCAAAAAgAAAAAAkAAAAMMAAAACAAAAAACRAAAAxAAAAAIAAAAAAJIAAADFAAAAAgAAAAAAkwAAAMYAAAACAAAAAACUAAAAxwAAAAIAAAAAAJUAAADIAAAAAgAAAAAAlgAAAMkAAAACAAAAAACXAAAAygAAAAIAAAAAAJgAAADLAAAAAgAAAAAAmQAAAMwAAAACAAAAAACaAAAAzQAAAAIAAAAAAJsAAAAwAAAAAgAAAAAAnAAAAM4AAAACAAAAAACdAAAAzwAAAAIAAAAAAJ4AAADQAAAAAgAAAAAAnwAAANEAAAACAAAAAACgAAAA0gAAAAIAAAAAAKEAAADTAAAAAgAAAAAAogAAAB0AAAACAAAAAACjAAAA1AAAAAIAAAAAAKQAAADVAAAAAgAAAAAApQAAANYAAAACAAAAAACmAAAA1wAAAAIAAAAAAKcAAADYAAAAAgAAAAAAqAAAANkAAAACAAAAAACpAAAA2gAAAAIAAAAAAKoAAAAsAAAAAgAAAAAAqwAAANsAAAACAAAAAAAAAQAAAAAAAAAAAAAEAAAAAAAAAAIAAAAAAH8AAAACAAIAAAAaAAAAAgAAAAAAGAAAAAIAAAAAAAEBAAAEAAAAAAAAAAEAAAAAAAAABQAAAAAAAAADAAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAABAAIAAgAAABoAAAACAAIAAAAaAAAAAQACAAIAAAAaAAAAAgACAAAAGgAAAAEAAgACAAAAGgAAAAEAAQACAAIAAAAaAAAAAgACAAAAGgAAAP///////////////////////////////wAAAAAAAAAAAgAAAAAAAAACAAIAAAAaAAAAAwACAAAAAAB/AAAACgAMAAAA3AAAAAQAAAAAAAAAAADdAAAABAABAAAAAAAAAN4AAAAEAAIAAAAAAAAA3wAAAAQAAwAAAAAAAADgAAAABAAEAAAAAAAAAOEAAAAEAAUAAAAAAAAA4gAAAAQABgAAAAAAAADjAAAABAAHAAAAAAAAAOQAAAAEAAgAAAAAAAAA5QAAAAQACQAAAAAAAADmAAAABAAKAAAAAAAAAOcAAAAEAAsAAAAAAAAA/////////////////////wAAAAACAQAAAAAAAKwAAAAKAAAAAAAKAA8AAAANAAAAAgACAAAAGwAAABAAAAACAAIAAAAcAAAAEQAAAAIAAgAAAB0AAAASAAAAAgACAAAAHgAAABMAAAACAAIAAAAfAAAAFAAAAAIAAgAAACIAAAAVAAAAAgACAAAAJAAAABYAAAACAAIAAAAmAAAAFwAAAAIAAgAAACcAAAAYAAAAAgACAAAAKQAAAOgAAAACAAAAAACtAAAA6QAAAAIAAAAAAK4AAADqAAAAAgAAAAAArwAAAOsAAAACAAAAAACwAAAA7AAAAAIAAAAAALEAAAAAAAAAAAAAAAIAAAAAAAAAAgAAAAAArAAAAAIAAgAAABoAAAAEAAAAAAAAAAEAAAAAAAAABQAAAAAAAAADAAAAAAAAAAAAAAAAAAAAAAACAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAACAAAAAAAAAAIAAgAAABoAAAADAAIAAAAAAKwAAAAKAAIAAADtAAAABAAAAAAAAAAAAO4AAAAEAAEAAAAAAAAA/////////////////////wAAAAADAQAAAAAAALIAAAAKAAAAAAAKABMAAAANAAAAAgACAAAAGwAAABAAAAACAAIAAAAcAAAAEQAAAAIAAgAAAB0AAAASAAAAAgAAAAAAswAAABMAAAACAAIAAAAfAAAAFAAAAAIAAgAAACIAAAAVAAAAAgACAAAAJAAAABYAAAACAAIAAAAmAAAAFwAAAAIAAgAAACcAAAAYAAAAAgACAAAAKQAAAO8AAAACAAAAAAC0AAAAtQAAAAIAAAAAALUAAADwAAAAAgAAAAAAtgAAAPEAAAACAAAAAAC3AAAA8gAAAAIAAAAAALgAAADzAAAAAgAAAAAAuQAAAPQAAAACAAAAAAC6AAAA9QAAAAIAAAAAALsAAAAwAAAAAgAAAAAAvAAAAAAAAAAAAAAAAgAAAAAAAAACAAAAAACyAAAAAgACAAAAGgAAAAQAAAAAAAAAAQAAAAAAAAAFAAAAAAAAAAMAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAQABAAEAAgACAAAAGgAAAP///////////////////////////////wAAAAAAAAAAAgAAAAAAAAACAAIAAAAaAAAAAwACAAAAAACyAAAACgAEAAAA9gAAAAQAAAAAAAAAAADuAAAABAABAAAAAAAAAPcAAAAEAAIAAAAAAAAA+AAAAAQAAwAAAAAAAAD/////////////////////AAAAAAQBAAAAAAAAvQAAAAoAAAAAAAoAFgAAAA0AAAACAAIAAAAbAAAAEAAAAAIAAgAAABwAAAARAAAAAgACAAAAHQAAABIAAAACAAIAAAAeAAAAEwAAAAIAAgAAAB8AAAAUAAAAAgACAAAAIgAAABUAAAACAAIAAAAkAAAAFgAAAAIAAgAAACYAAAAXAAAAAgACAAAAJwAAABgAAAACAAIAAAApAAAAtQAAAAIAAAAAAL4AAAD5AAAAAgAAAAAAvwAAAPoAAAACAAAAAADAAAAA+wAAAAIAAAAAAMEAAAD8AAAAAgAAAAAAwgAAAP0AAAACAAAAAADDAAAA/gAAAAIAAAAAAMQAAAD/AAAAAgAAAAAAxQAAAAABAAACAAAAAADGAAAAAQEAAAIAAAAAAMcAAAACAQAAAgAAAAAAyAAAAAMBAAACAAAAAADJAAAAAAAAAAAAAAACAAAAAAAAAAIAAAAAAL0AAAACAAIAAAAaAAAABAAAAAAAAAABAAAAAAAAAAUAAAAAAAAAAwAAAAAAAAAAAAAAAAAAAAAABwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAIAAAAaAAAAAgACAAAAGgAAAAIAAgAAABoAAAACAAIAAAAaAAAAAgACAAAAGgAAAAEAAQD///////////////////////////////8AAAAAAAAAAAIAAAAAAAAAAgACAAAAGgAAAAMAAgAAAAAAvQAAAAoABwAAAAQBAAAEAAAAAAAAAAAABQEAAAQAAQAAAAAAAAAGAQAABAACAAAAAAAAAAcBAAAEAAMAAAAAAAAACAEAAAQABAAAAAAAAAAJAQAABAAFAAAAAAAAAAoBAAAEAAYAAAAAAAAA/////////////////////wAAAAAFAQAAAAAAAMoAAAAKAAAAAAAKAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABgEAAAAAAADLAAAACgAAAAAACgBcAAAADQAAAAIAAgAAABsAAAAQAAAAAgACAAAAHAAAABEAAAACAAIAAAAdAAAAEgAAAAIAAgAAAB4AAAATAAAAAgACAAAAHwAAABQAAAACAAIAAAAiAAAAFQAAAAIAAgAAACQAAAAWAAAAAgACAAAAJgAAABcAAAACAAIAAAAnAAAAGAAAAAIAAgAAACkAAAAuAAAAAgABAAAAdAAAAC8AAAACAAEAAAB1AAAAMAAAAAIAAQAAAHYAAAAxAAAAAgABAAAAdwAAADIAAAACAAEAAAB4AAAAMwAAAAIAAQAAAIsAAAA0AAAAAgABAAAAjAAAADUAAAACAAEAAACNAAAANgAAAAIAAQAAAI4AAAA3AAAAAgABAAAAjwAAADgAAAACAAEAAACQAAAAOQAAAAIAAQAAAJEAAAA6AAAAAgABAAAAkgAAADsAAAACAAEAAACTAAAAPAAAAAIAAQAAAJQAAAA9AAAAAgABAAAAlQAAAD4AAAACAAEAAACWAAAAPwAAAAIAAQAAAJcAAABAAAAAAgABAAAAmAAAAEEAAAACAAEAAACZAAAAQgAAAAIAAQAAAJoAAABDAAAAAgABAAAAmwAAAEQAAAACAAEAAACcAAAARQAAAAIAAQAAAJ0AAABGAAAAAgABAAAAngAAAEcAAAACAAEAAACfAAAASAAAAAIAAQAAAKAAAABJAAAAAgABAAAAoQAAAEoAAAACAAEAAACiAAAASwAAAAIAAQAAAKMAAABMAAAAAgABAAAApAAAAE0AAAACAAEAAAClAAAATgAAAAIAAQAAAKYAAABPAAAAAgABAAAApwAAAFAAAAACAAEAAACoAAAAUQAAAAIAAQAAAKkAAABSAAAAAgABAAAAqgAAAFMAAAACAAEAAACrAAAAVAAAAAIAAQAAAKwAAABVAAAAAgABAAAArQAAAFYAAAACAAEAAACuAAAAVwAAAAIAAQAAAK8AAABYAAAAAgABAAAAsAAAAFkAAAACAAEAAACxAAAAWgAAAAIAAQAAALIAAABbAAAAAgABAAAAswAAAFwAAAACAAEAAAC0AAAAXQAAAAIAAQAAALUAAABeAAAAAgABAAAAtgAAAF8AAAACAAEAAAC3AAAAYAAAAAIAAQAAALgAAABhAAAAAgABAAAAuQAAAGIAAAACAAEAAAC6AAAAYwAAAAIAAQAAALsAAABkAAAAAgABAAAAvAAAAGUAAAACAAEAAAC9AAAAZgAAAAIAAQAAAL4AAABnAAAAAgABAAAAvwAAAGgAAAACAAEAAADAAAAAaQAAAAIAAQAAAMEAAABqAAAAAgABAAAAwgAAAGsAAAACAAEAAADDAAAACwEAAAIAAAAAAMwAAACaAAAAAgAAAAAAzQAAAAwBAAACAAAAAADOAAAADQEAAAIAAAAAAM8AAAAOAQAAAgAAAAAA0AAAAA8BAAACAAAAAADRAAAAEAEAAAIAAAAAANIAAAARAQAAAgAAAAAA0wAAABIBAAACAAAAAADUAAAAEwEAAAIAAAAAANUAAAAUAQAAAgAAAAAA1gAAABUBAAACAAAAAADXAAAAFgEAAAIAAAAAANgAAAAXAQAAAgAAAAAA2QAAABgBAAACAAAAAADaAAAAGQEAAAIAAAAAANsAAAAaAQAAAgAAAAAA3AAAABsBAAACAAAAAADdAAAAHAEAAAIAAAAAAN4AAAAdAQAAAgAAAAAA3wAAAAAAAAAAAAAAAwAAAAAAAAACAAAAAADLAAAAAgABAAAAcwAAAAIAAgAAABoAAAAEAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAACAAEAAAB1AAAAAAAAAAAAAAAAAAAAAAAAAAkAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAACAAAAAQAAAAAAAAACAAAAAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAIAAAAaAAAAAQABAAIAAgAAABoAAAACAAIAAAAaAAAAAgACAAAAGgAAAAIAAgAAABoAAAACAAIAAAAaAAAAAgACAAAAGgAAAP///////////////////////////////wAAAAAAAAAAAwAAAAAAAAACAAIAAAAaAAAAAwACAAEAAABzAAAACgAJAAAAqAAAAAQAAAAAAAAAAACpAAAABAABAAAAAAAAAKoAAAAEAAIAAAAAAAAAqwAAAAQAAwAAAAAAAACsAAAABAAEAAAAAAAAAK0AAAAEAAUAAAAAAAAArgAAAAQABgAAAAAAAACvAAAABAAHAAAAAAAAALAAAAAEAAgAAAAAAAAAAgAAAAAAywAAAAMA/////////////////////wAAAAAHAQAAAAAAAOAAAAAKAAAAAAAKABoAAAANAAAAAgACAAAAGwAAABAAAAACAAIAAAAcAAAAEQAAAAIAAgAAAB0AAAASAAAAAgACAAAAHgAAABMAAAACAAIAAAAfAAAAFAAAAAIAAgAAACIAAAAVAAAAAgACAAAAJAAAABYAAAACAAIAAAAmAAAAFwAAAAIAAgAAACcAAAAYAAAAAgACAAAAKQAAAAsBAAACAAAAAADhAAAADAEAAAIAAAAAAOMAAAAOAQAAAgAAAAAA5AAAAA8BAAACAAAAAADlAAAAEAEAAAIAAAAAAOYAAAARAQAAAgAAAAAA5wAAABIBAAACAAAAAADoAAAAEwEAAAIAAAAAAOkAAAAUAQAAAgAAAAAA6gAAABUBAAACAAAAAADrAAAAFgEAAAIAAAAAAOwAAAAXAQAAAgAAAAAA7QAAABkBAAACAAAAAADuAAAAGgEAAAIAAAAAAO8AAAAbAQAAAgAAAAAA8AAAAB0BAAACAAAAAADxAAAAAAAAAAAAAAACAAAAAAAAAAIAAAAAAOAAAAACAAIAAAAaAAAABAAAAAAAAAABAAAAAAAAAAUAAAAAAAAAAwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAACAAAAAAAAAAIAAgAAABoAAAADAAIAAAAAAOAAAAADAP////////////////////8AAAAACAEAAAAAAADyAAAACgAAAAAACgAMAAAADQAAAAIAAgAAABsAAAAQAAAAAgACAAAAHAAAABEAAAACAAIAAAAdAAAAEgAAAAIAAgAAAB4AAAATAAAAAgACAAAAHwAAABQAAAACAAIAAAAiAAAAFQAAAAIAAgAAACQAAAAWAAAAAgACAAAAJgAAABcAAAACAAIAAAAnAAAAGAAAAAIAAgAAACkAAAALAQAAAgAAAAAA8wAAAAwBAAACAAAAAAD0AAAAAAAAAAAAAAACAAAAAAAAAAIAAAAAAPIAAAACAAIAAAAaAAAABAAAAAAAAAABAAAAAAAAAAUAAAAAAAAAAwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAACAAAAAAAAAAIAAgAAABoAAAADAAIAAAAAAPIAAAADAP////////////////////8AAAAANAEAAAAAAAD2AAAACgAGAAAAXgEAAAIAAAAAADUBAABfAQAAAgAAAAAAGwAAAFwBAAACAAAAAABcAAAAYAEAAAIAAAAAAH8AAABhAQAAAgAAAAAANgEAAGIBAAACAAAAAAC9AAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAPYAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAD2AAAAAwD/////////////////////AAAAADcBAAAAAAAA9wAAAAoAGAAAAGMBAAACAAUAAAADAAAAZgEAAAIABQAAAAkAAABnAQAAAgAFAAAADQAAAGgBAAACAAUAAAAXAAAAaQEAAAIABQAAAC0AAABqAQAAAgAFAAAALwAAAGsBAAACAAUAAAAzAAAAbAEAAAIABQAAAD8AAABtAQAAAgAFAAAARgAAAG4BAAACAAUAAABNAAAAbwEAAAIABQAAAFQAAABwAQAAAgAFAAAAWQAAAHEBAAACAAUAAABgAAAAcgEAAAIABQAAAGcAAABzAQAAAgAFAAAAcwAAAHQBAAACAAUAAAB1AAAAdQEAAAIABQAAAHcAAAB2AQAAAgAFAAAAgQAAAHcBAAACAAUAAACGAAAAeAEAAAIABQAAAI0AAAB5AQAAAgAFAAAAlAAAAHoBAAACAAUAAAChAAAAewEAAAIABQAAAKUAAAB8AQAAAgAFAAAAsAAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAD3AAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAA9wAAAAMA/////////////////////wAAAAA4AQAAAAAAAPgAAAAKAAEAAAB9AQAAAgABAAAAAwAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAD4AAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAA+AAAAAMA/////////////////////wAAAAA5AQAAAAAAAAEBAAADAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAABAQAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAOgEAAAAAAAA1AQAACgACAAAAgQEAAAIAAAAAAAMAAACCAQAAAgAAAAAAGAAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAA1AQAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAANQEAAAMA/////////////////////wAAAAA7AQAAAAAAADYBAAAKAAIAAACDAQAAAgAAAAAArAAAAIQBAAACAAAAAACyAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAADYBAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAA2AQAAAwD/////////////////////AAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAgAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAAAAAAIAAAAFAAAAAAAAAAEAAAACAAAABQAAABQAAAABAAAAAgAAAAUAAAAoAAAAAQAAAAIAAAAFAAAAPAAAAAEAAAACAAAABQAAAFAAAAABAAAAAgAAAAUAAABkAAAAAQAAAAIAAAAFAAAAeAAAAAEAAAACAAAABQAAAIwAAAABAAAAAgAAAAUAAACgAAAAAQAAAAIAAAAFAAAAtAAAAAEAAAACAAAABQAAAMgAAAABAAAAAgAAAAUAAADcAAAAAQAAAAIAAAAFAAAA8AAAAAEAAAACAAAABQAAAAQBAAABAAAAAgAAAAUAAAAYAQAAAQAAAAIAAAAFAAAALAEAAAEAAAACAAAABQAAAEABAAABAAAAAgAAAAUAAABUAQAAAQAAAAIAAAAFAAAAaAEAAAEAAAACAAAABQAAAHwBAAABAAAAAAAAAAQAAACQAQAAAAAAAAIAAAAFAAAAkAEAAAEAAAACAAAABQAAAKQBAAABAAAAAAAAAAUAAAC4AQAAAAAAAAIAAAAFAAAAuAEAAAEAAAACAAAABwAAAMwBAAABAAAAAgAAAAcAAAC2AgAAAQAAAAIAAAAHAAAAzAIAAAEAAAACAAAABwAAAOICAAABAAAAAgAAAAcAAAD4AgAAAQAAAAIAAAAHAAAADgMAAAEAAAACAAAABwAAACQDAAABAAAAAgAAAAcAAAA6AwAAAQAAAAIAAAAHAAAAjAMAAAEAAAACAAAABwAAAOwDAAABAAAAAgAAAAcAAABwBAAAAQAAAAIAAAAHAAAAXgUAAAEAAAACAAAABwAAAKYFAAABAAAAAgAAAAUAAAD4BQAAAQAAAAIAAAAHAAAADAYAAAEAAAACAAAABwAAANgGAAABAAAAAgAAAAcAAACMCAAAAQAAAAIAAAAHAAAAoAkAAAEAAAACAAAABwAAAFwKAAABAAAAAgAAAAcAAACqDAAAAQAAAAIAAAAHAAAAZg0AAAEAAAACAAAABwAAAIoOAAABAAAAAgAAAAcAAABGDwAAAQAAAAIAAAAHAAAAahAAAAEAAAACAAAABwAAACYRAAABAAAAAgAAAAcAAAB+FQAAAQAAAAIAAAAHAAAA3BoAAAEAAAACAAAABwAAAOgbAAABAAAAAgAAAAcAAAD+GwAAAQAAAAIAAAAHAAAAphwAAAEAAAACAAAABwAAADwdAAABAAAAAgAAAAcAAADoHQAAAQAAAAIAAAAHAAAAlB4AAAEAAAACAAAABwAAAEAfAAABAAAAAgAAAAcAAADsHwAAAQAAAAIAAAAHAAAAmCAAAAEAAAACAAAABwAAAEQhAAABAAAAAgAAAAcAAAC6IgAAAQAAAAIAAAAHAAAAMCQAAAEAAAACAAAABwAAAOokAAABAAAAAgAAAAcAAACkJQAAAQAAAAIAAAAHAAAA4CYAAAEAAAACAAAABwAAACgnAAABAAAAAgAAAAcAAABwJwAAAQAAAAIAAAAHAAAAricAAAEAAAACAAAABwAAADQoAAABAAAAAgAAAAcAAADwKAAAAQAAAAIAAAAFAAAAOC0AAAEAAAACAAAABQAAAEwtAAABAAAAAgAAAAUAAABgLQAAAQAAAAIAAAAFAAAAdC0AAAEAAAACAAAABwAAAIgtAAABAAAAAgAAAAcAAABKLgAAAQAAAAIAAAAFAAAAki4AAAEAAAACAAAABQAAAKYuAAABAAAAAgAAAAUAAAC6LgAAAQAAAAIAAAAFAAAAzi4AAAEAAAACAAAABQAAAOIuAAABAAAAAgAAAAUAAAD2LgAAAQAAAAIAAAAFAAAACi8AAAEAAAACAAAABQAAAB4vAAABAAAAAgAAAAUAAAAyLwAAAQAAAAIAAAAFAAAARi8AAAEAAAAAAAAABgAAAFovAAAAAAAAAgAAAAUAAABaLwAAAQAAAAIAAAAFAAAAbi8AAAEAAAACAAAABQAAAIIvAAABAAAAAgAAAAUAAACWLwAAAQAAAAIAAAAFAAAAqi8AAAEAAAACAAAABQAAAL4vAAABAAAAAgAAAAUAAADSLwAAAQAAAAIAAAAFAAAA5i8AAAEAAAACAAAABQAAAPovAAABAAAAAgAAAAUAAAAOMAAAAQAAAAIAAAAFAAAAIjAAAAEAAAACAAAABQAAADYwAAABAAAAAgAAAAUAAABKMAAAAQAAAAIAAAAFAAAAXjAAAAEAAAACAAAABQAAAHIwAAABAAAAAgAAAAUAAACGMAAAAQAAAAIAAAAFAAAAmjAAAAEAAAACAAAABQAAAK4wAAABAAAAAgAAAAUAAADCMAAAAQAAAAIAAAAFAAAA1jAAAAEAAAACAAAABQAAAOowAAABAAAAAgAAAAUAAAD+MAAAAQAAAAIAAAAFAAAAEjEAAAEAAAACAAAABQAAACYxAAABAAAAAgAAAAUAAAA6MQAAAQAAAAIAAAAFAAAATjEAAAEAAAACAAAABQAAAGIxAAABAAAAAgAAAAUAAAB2MQAAAQAAAAIAAAAFAAAAijEAAAEAAAACAAAABQAAAJ4xAAABAAAAAgAAAAUAAACyMQAAAQAAAAIAAAAFAAAAxjEAAAEAAAACAAAABQAAANoxAAABAAAAAgAAAAUAAADuMQAAAQAAAAAAAAAHAAAAAjIAAAAAAAACAAAABQAAAAIyAAABAAAAAgAAAAUAAAAWMgAAAQAAAAIAAAAFAAAAKjIAAAEAAAACAAAABQAAAD4yAAABAAAAAgAAAAUAAABSMgAAAQAAAAIAAAAFAAAAZjIAAAEAAAACAAAABQAAAHoyAAABAAAAAgAAAAUAAACOMgAAAQAAAAIAAAAFAAAAojIAAAEAAAACAAAABQAAALYyAAABAAAAAgAAAAUAAADKMgAAAQAAAAIAAAAFAAAA3jIAAAEAAAACAAAABQAAAPIyAAABAAAAAgAAAAUAAAAGMwAAAQAAAAIAAAAFAAAAGjMAAAEAAAACAAAABQAAAC4zAAABAAAAAgAAAAUAAABCMwAAAQAAAAIAAAAFAAAAVjMAAAEAAAACAAAABQAAAGozAAABAAAAAgAAAAUAAAB+MwAAAQAAAAIAAAAFAAAAkjMAAAEAAAACAAAABQAAAKYzAAABAAAAAgAAAAUAAAC6MwAAAQAAAAIAAAAFAAAAzjMAAAEAAAACAAAABQAAAOIzAAABAAAAAgAAAAUAAAD2MwAAAQAAAAIAAAAFAAAACjQAAAEAAAACAAAABQAAAB40AAABAAAAAgAAAAUAAAAyNAAAAQAAAAIAAAAFAAAARjQAAAEAAAACAAAABQAAAFo0AAABAAAAAgAAAAUAAABuNAAAAQAAAAIAAAAFAAAAgjQAAAEAAAACAAAABQAAAJY0AAABAAAAAgAAAAUAAACqNAAAAQAAAAIAAAAFAAAAvjQAAAEAAAACAAAABQAAANI0AAABAAAAAgAAAAUAAADmNAAAAQAAAAIAAAAFAAAA+jQAAAEAAAACAAAABQAAAA41AAABAAAAAgAAAAUAAAAiNQAAAQAAAAIAAAAFAAAANjUAAAEAAAACAAAABQAAAEo1AAABAAAAAgAAAAUAAABeNQAAAQAAAAAAAAAIAAAAcjUAAAAAAAACAAAABQAAAHI1AAABAAAAAgAAAAUAAACGNQAAAQAAAAIAAAAFAAAAmjUAAAEAAAACAAAABQAAAK41AAABAAAAAgAAAAUAAADCNQAAAQAAAAAAAAAJAAAA1jUAAAAAAAACAAAABQAAANY1AAABAAAAAgAAAAUAAADqNQAAAQAAAAIAAAAFAAAA/jUAAAEAAAACAAAABQAAABI2AAABAAAAAgAAAAUAAAAmNgAAAQAAAAIAAAAFAAAAOjYAAAEAAAACAAAABQAAAE42AAABAAAAAgAAAAUAAABiNgAAAQAAAAIAAAAFAAAAdjYAAAEAAAACAAAABQAAAIo2AAABAAAAAAAAAAoAAACeNgAAAAAAAAIAAAAFAAAAnjYAAAEAAAACAAAABQAAALI2AAABAAAAAgAAAAUAAADGNgAAAQAAAAIAAAAFAAAA2jYAAAEAAAACAAAABQAAAO42AAABAAAAAgAAAAUAAAACNwAAAQAAAAIAAAAFAAAAFjcAAAEAAAACAAAABQAAACo3AAABAAAAAgAAAAUAAAA+NwAAAQAAAAIAAAAFAAAAUjcAAAEAAAACAAAABQAAAGY3AAABAAAAAgAAAAUAAAB6NwAAAQAAAAAAAAALAAAAjjcAAAAAAAAAAAAADAAAAI43AAAAAAAAAgAAAAcAAACONwAAAQAAAAIAAAAFAAAAajgAAAEAAAACAAAABwAAAH44AAABAAAAAgAAAAcAAAB4OgAAAQAAAAIAAAAHAAAAjjoAAAEAAAACAAAABwAAAFg8AAABAAAAAgAAAAcAAAC2PQAAAQAAAAIAAAAHAAAAgD8AAAEAAAACAAAABwAAAEpBAAABAAAAAgAAAAcAAAAUQwAAAQAAAAIAAAAHAAAA3kQAAAEAAAACAAAABwAAAKxGAAABAAAAAgAAAAcAAAB6SAAAAQAAAAIAAAAHAAAA2EkAAAEAAAACAAAABwAAAKJLAAABAAAAAgAAAAcAAAC4SwAAAQAAAAIAAAAHAAAAykwAAAEAAAACAAAABwAAAHRNAAABAAAAAgAAAAcAAAAwTgAAAQAAAAIAAAAHAAAANFAAAAEAAAAAAAAADQAAAFJRAAAAAAAAAgAAAAUAAABSUQAAAQAAAAIAAAAHAAAAZlEAAAEAAAACAAAABQAAAKpRAAABAAAAAgAAAAUAAAC+UQAAAQAAAAIAAAAFAAAA0lEAAAEAAAACAAAABQAAAOZRAAABAAAAAgAAAAUAAAD6UQAAAQAAAAIAAAAFAAAADlIAAAEAAAACAAAABQAAACJSAAABAAAAAgAAAAUAAAA2UgAAAQAAAAIAAAAFAAAASlIAAAEAAAACAAAABQAAAF5SAAABAAAAAgAAAAUAAAByUgAAAQAAAAIAAAAFAAAAhlIAAAEAAAACAAAABQAAAJpSAAABAAAAAgAAAAUAAACuUgAAAQAAAAIAAAAFAAAAwlIAAAEAAAAAAAAADgAAANZSAAAAAAAAAgAAAAUAAADWUgAAAQAAAAIAAAAFAAAA6lIAAAEAAAADAAAAAAAAAP5SAAABAAAAAAAAAA8AAAAOUwAAAAAAAAAAAAAQAAAADlMAAAAAAAAAAAAAEQAAAA5TAAAAAAAAAwAAAAAAAAAOUwAAAQAAAAMAAAAAAAAAHlMAAAEAAAAEAAAABwAAAC5TAAABAAAABAAAAAYAAAC+VQAAAQAAAAQAAAAHAAAA/lUAAAEAAAAEAAAABwAAAOReAAABAAAABAAAAAcAAADEYgAAAQAAAAIAAAAFAAAAdmgAAAEAAAAAAAAAEgAAAIpoAAAAAAAABAAAAAcAAACKaAAAAQAAAAQAAAAHAAAAXmoAAAEAAAAEAAAABwAAAFpsAAABAAAABAAAAAoAAACkbgAAAQAAAAQAAAAHAAAAtG4AAAEAAAAEAAAABwAAAFxzAAABAAAABAAAAAcAAACMdQAAAQAAAAEAAAADAAAAbHYAAAEAAAABAAAAAwAAANR2AAABAAAAAQAAAAMAAACMfAAAAQAAAAEAAAADAAAAJn0AAAEAAAABAAAAAwAAAD6BAAABAAAAAQAAAAMAAACmggAAAQAAAAEAAAADAAAA8IYAAAEAAAABAAAAAwAAAPyLAAABAAAAAQAAAAMAAAA0kAAAAQAAAAEAAAADAAAAkJIAAAEAAAABAAAAAwAAALCUAAABAAAAAQAAAAMAAACSlQAAAQAAAAQAAAAJAAAAOJgAAAEAAAAEAAAACQAAAFyYAAABAAAABAAAAAkAAACImAAAAQAAAAQAAAAJAAAAtJgAAAEAAAAEAAAACQAAANiYAAABAAAABAAAAAkAAAAEmQAAAQAAAAQAAAAJAAAAMJkAAAEAAAAEAAAACQAAAFSZAAABAAAABAAAAAkAAACAmQAAAQAAAAQAAAAJAAAApJkAAAEAAAAEAAAACQAAAMiZAAABAAAABAAAAAkAAAD0mQAAAQAAAAQAAAAJAAAAIJoAAAEAAAAEAAAACQAAAESaAAABAAAABAAAAAkAAABomgAAAQAAAAQAAAAJAAAAjJoAAAEAAAAEAAAACQAAALCaAAABAAAABAAAAAkAAADUmgAAAQAAAAQAAAAJAAAAAJsAAAEAAAAEAAAACQAAACybAAABAAAABAAAAAkAAABYmwAAAQAAAAQAAAAJAAAAhJsAAAEAAAAEAAAACQAAALCbAAABAAAABAAAAAkAAADcmwAAAQAAAAQAAAAJAAAAAJwAAAEAAAABAAAAAwAAACScAAABAAAAAQAAAAMAAADquQAAAQAAAAEAAAADAAAAGrwAAAEAAAABAAAAAwAAACraAAABAAAAAQAAAAMAAAAE2wAAAQAAAAEAAAADAAAA6NwAAAEAAAADAAAAAAAAAOjdAAABAAAAAAAAABMAAAD43QAAAAAAAAAAAAAUAAAA+N0AAAAAAAADAAAAAAAAAPjdAAABAAAAAwAAAAAAAAAI3gAAAQAAAAQAAAADAAAAGN4AAAEAAAADAAAAAAAAAGTeAAABAAAAAwAAAAAAAAB03gAAAQAAAAsAAAAAAAAAAAABAAEAAQABAAMACwAAAAAAAQAAAAEAAQABAAEAAwALAAAAAAACAAAAAQABAAEAAQADAAsAAAAAAAMAAAABAAEAAQABAAMACwAAAAAABAAAAAEAAQABAAEAAwALAAAAAAAFAAAAAQABAAEAAQADAAsAAAAAAAYAAAABAAEAAQABAAMACwAAAAAABwAAAAEAAQABAAEAAwALAAAAAAAIAAAAAQABAAEAAQADAAsAAAAAAAkAAAABAAEAAQABAAMACwAAAAAACgAAAAEAAQABAAEAAwALAAAAAAALAAAAAQABAAEAAQADAAsAAAAAAAwAAAABAAEAAQABAAMACwAAAAAADQAAAAEAAQABAAEAAwALAAAAAAAOAAAAAQABAAEAAQADAAsAAAAAAA8AAAABAAEAAQABAAMACwAAAAAAEAAAAAEAAQABAAEAAwALAAAAAAARAAAAAQABAAEAAQADAAsAAAAAABIAAAABAAEAAQABAAMACwAAAAAAEwAAAAEAAQABAAEAAwALAAAAAAAUAAAAAQABAAEAAQADAAsAAAAAABUAAAABAAEAAQABAAMACwAAAAAAFgAAAAEAAQABAAEAAwALAAAAAAAXAAAACgADAAAAdgAAAAUAAAAAAAAAAEBuAAAABQAAAAAAAADwP3cAAAAFAAAAAAAAAABABwAEAAAABwAAAAAABwAGAAAABAAIAAAAAAAAAAYAdgAAAAQAAQAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBuAAAABAADAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAHcAAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAAAYAAAAAQABAAEAAQABAAMACwAAAAAAGQAAAAEAAQABAAEAAQADAAsAAAAAABoAAAABAAEAAQABAAEAAwALAAAAAAAbAAAAAQABAAEAAQABAAMACwAAAAAAHAAAAAEAAQABAAEAAQADAAsAAAAAAB0AAAABAAEAAQABAAEAAwALAAAAAAAeAAAACgABAAAAcgAAAAUAAAAAAAAA8D8HAAIAAAAHAAAAAAAHAAMAAAAEAAgAAAAAAAAABgByAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAHwAAAAoAAgAAAB4BAAAFAAAAAAAAAPA/bwAAAAUAAAAAAAAA8D8HAAIAAAAHAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBvAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAIAAAAAoAAgAAAB4BAAAFAAAAAAAAAPA/cAAAAAUAAAAAAAAA8D8HAAMAAAAHAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBwAAAABAACAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAIQAAAAoAAwAAAB4BAAAEAAEAAAAAAAAAcQAAAAQAAQAAAAAAAABzAAAABAABAAAAAAAAAAcAAgAAAAcAAAAAAAcABgAAAAQACAAAAAAAAAAGAHEAAAAEAAAAAAAAAAAABAAIAAAAAAAAAAYAcwAAAAQAAAAAAAAAAAAKAAEAAAAfAQAABwACAAAABwACAAAABwAAAAAABwADAAAABAAIAAAAAAAAAAYAcQAAAAQAAAAAAAAAAAAHAAIAAAAHAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBzAAAABAAAAAAAAAAAAAEAAQADAAsAAAAAACIAAAAKAAAAAAAHAAIAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAACMAAAAKAAEAAABuAAAABQAAAAAAAADwPwcAAgAAAAcAAAAAAAcAAwAAAAQACAAAAAAAAAAGAHgAAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAAAkAAAAAQABAAEAAQADAAsAAAAAACUAAAAKAAMAAACeAAAABQAAAAAAAADwP3wAAAAFAAAAAAAAAABAnwAAAAUAAAAAAAAA8D8HAAQAAAAHAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCeAAAABAACAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAHwAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAnwAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAACYAAAAKAAQAAACIAAAABQAAAAAAAADwP54AAAAFAAAAAAAAAPA/fAAAAAUAAAAAAAAAAECfAAAABQAAAAAAAADwPwQAAAAAAAAAAAAKAAEAAAAgAQAABwADAAAABwACAAAABwAAAAAABwADAAAABAAIAAAAAAAAAAYAiAAAAAQAAAAAAAAAAAAHAAQAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAQAAAAHAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCeAAAABAACAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAHwAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAnwAAAAQAAAAAAAAAAAABAAEAAwALAAAAAAAnAAAACgAAAAAABwAGAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAAUAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAAAQABAAEAAwALAAAAAAAoAAAACgABAAAAfQAAAAUAAAAAAAAAAEAHAAQAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABAAsAAAAAAAAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAACkAAAAKAAAAAAAHAAYAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABABfAAAAAAAAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAkAAAAFAAAAAAAAAChABwACAAAABAAwAAAAAAAAAAQAOQAAAAAAAAAEAAUAAAAAAAAABQAAAAAAAAAoQAcAAgAAAAQAYQAAAAAAAAAEAGYAAAAAAAAABAAFAAAAAAAAAAUAAAAAAAAAKEAHAAIAAAAEAEEAAAAAAAAABABGAAAAAAAAAAQABQAAAAAAAAAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAKAAEAAAAhAQAABwADAAAABwACAAAABwAAAAAABwADAAAABQAAAAAAAAAoQAcAAgAAAAQAMAAAAAAAAAAEADkAAAAAAAAABAAAAAAAAAAAAAcAAgAAAAcAAAAAAAcAAwAAAAUAAAAAAAAAKEAHAAIAAAAEAGEAAAAAAAAABABmAAAAAAAAAAQAAAAAAAAAAAAHAAIAAAAHAAAAAAAHAAMAAAAFAAAAAAAAAChABwACAAAABABBAAAAAAAAAAQARgAAAAAAAAAEAAAAAAAAAAAAAQABAAMACwAAAAAAKgAAAAoAAQAAAH8AAAAFAAAAAAAAAABABwAEAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAGAAAABAACAAAAAAAAAAQALAAAAAAAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAAArAAAACgAAAAAABwAGAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABQAAAAAAAAAoQAcAAgAAAAQAMAAAAAAAAAAEADcAAAAAAAAABAAFAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAEAAQABAAMACwAAAAAALAAAAAoAAQAAAIEAAAAFAAAAAAAAAABABwAEAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAGAAAABAACAAAAAAAAAAQALAAAAAAAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAAAtAAAACgAAAAAABwAGAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABQAAAAAAAAAoQAcAAgAAAAQAMAAAAAAAAAAEADEAAAAAAAAABAAFAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAEAAQABAAMACwAAAAAALgAAAAoAAQAAAIMAAAAFAAAAAAAAAABABwAEAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAGAAAABAACAAAAAAAAAAQALAAAAAAAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAAAvAAAACgAFAAAAIgEAAAUAAAAAAAAA8D+DAAAABQAAAAAAAADwP4EAAAAFAAAAAAAAAPA/fwAAAAUAAAAAAAAA8D99AAAABQAAAAAAAADwPwcABwAAAAcAAAAAAAcABgAAAAQADgAAAAAAAAAEADAAAAAAAAAABAACAAAAAAAAAAQACAAAAAAAAAAGAH0AAAAEAAAAAAAAAAAABwAMAAAABAAOAAAAAAAAAAQAYgAAAAAAAAAEAAMAAAAAAAAABAAOAAAAAAAAAAQAbwAAAAAAAAAEAAQAAAAAAAAABAAOAAAAAAAAAAQAeAAAAAAAAAAEAAUAAAAAAAAABAAOAAAAAAAAAAQAZAAAAAAAAAAEAAYAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAgwAAAAQAAAAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCBAAAABAAAAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAH8AAAAEAAAAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAfQAAAAQAAAAAAAAAAAAKAAIAAAAjAQAABwAEAAAABwADAAAABwAAAAAABwADAAAABAAOAAAAAAAAAAQAYgAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAgwAAAAQAAAAAAAAAAAAHAAMAAAAHAAAAAAAHAAMAAAAEAA4AAAAAAAAABABvAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCBAAAABAAAAAAAAAAAAAcAAwAAAAcAAAAAAAcAAwAAAAQADgAAAAAAAAAEAHgAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAH8AAAAEAAAAAAAAAAAABwADAAAABwAAAAAABwADAAAABAAOAAAAAAAAAAQAZAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAfQAAAAQAAAAAAAAAAAAkAQAABwACAAAABwAHAAAABwAAAAAABwADAAAABAAOAAAAAAAAAAQAMAAAAAAAAAAEAAIAAAAAAAAABwAMAAAABAAOAAAAAAAAAAQAYgAAAAAAAAAEAAMAAAAAAAAABAAOAAAAAAAAAAQAbwAAAAAAAAAEAAQAAAAAAAAABAAOAAAAAAAAAAQAeAAAAAAAAAAEAAUAAAAAAAAABAAOAAAAAAAAAAQAZAAAAAAAAAAEAAYAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAgwAAAAQAAAAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCBAAAABAAAAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAH8AAAAEAAAAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAfQAAAAQAAAAAAAAAAAAHAAIAAAAHAAAAAAAHAAMAAAAEAAgAAAAAAAAABgB9AAAABAAAAAAAAAAAAAEAAQADAAsAAAAAADAAAAAKAAIAAAAlAQAABAABAAAAAAAAAIcAAAAEAAEAAAAAAAAABwAMAAAABwAAAAAABwAJAAAABAACAAAAAAAAAAQALgAAAAAAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAUAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAoAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAAQAAAAAAAAABwAJAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABAAIAAAAAAAAAAYAhwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQABgAAAAAAAAAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABQAAAAAAAAAEAAIAAAAAAAAABAAuAAAAAAAAAAQABwAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQACAAAAAAAAAAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQACQAAAAAAAAAHAAkAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQACAAAAAAAAAAEAAgAAAAAAAAABgCHAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAALAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAKAAAAAAAAAAQACAAAAAAAAAAGAIcAAAAEAAAAAAAAAAAACgABAAAAJgEAAAcAAwAAAAcABQAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAC4AAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAAEAAAAAAAAAAcACQAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAQACAAAAAAAAAAGAIcAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAHAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAAMAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABAACAAAAAAAAAAQALgAAAAAAAAAEAAQAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAUAAAAAAAAABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAAYAAAAAAAAABwAJAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAUAAAAAAAAABAAIAAAAAAAAAAYAhwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAQAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQAAwAAAAAAAAAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAEAAgAAAAAAAAABgCHAAAABAAAAAAAAAAAAAEAAQADAAsAAAAAADEAAAAKAAAAAAAHAAYAAAAHAAAAAAAHAAMAAAAFAAAAAAAAABhABgAnAQAABAACAAAAAAAAAAcABgAAAAUAAAAAAAAAGEAGACgBAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAAUAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAAAyAAAAAQABAAEAAQABAAMACwAAAAAAMwAAAAoAAAAAAAcABQAAAAcAAAAAAAcAAwAAAAUAAAAAAAAAGEAGACkBAAAEAAIAAAAAAAAABwADAAAABQAAAAAAAAAYQAYAKQEAAAQAAwAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCdAAAABAAEAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAANAAAAAoAAQAAAJ8AAAAFAAAAAAAAAPA/BwAEAAAABwAAAAAABwADAAAABQAAAAAAAAAYQAYAKQEAAAQAAgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCdAAAABAADAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAANQAAAAoAAAAAAAcABQAAAAcAAAAAAAcAAwAAAAUAAAAAAAAAGEAGACkBAAAEAAIAAAAAAAAABwADAAAABAACAAAAAAAAAAQAYgAAAAAAAAAEAAMAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAnQAAAAQABAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAADYAAAAKAAAAAAAHAAUAAAAHAAAAAAAHAAMAAAAFAAAAAAAAABhABgApAQAABAACAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAG4AAAAAAAAABAADAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAJ0AAAAEAAQAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAAA3AAAACgAAAAAABwAFAAAABwAAAAAABwADAAAABQAAAAAAAAAYQAYAKQEAAAQAAgAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABAByAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCdAAAABAAEAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAOAAAAAoAAAAAAAcABQAAAAcAAAAAAAcAAwAAAAUAAAAAAAAAGEAGACkBAAAEAAIAAAAAAAAABwADAAAABAACAAAAAAAAAAQAdAAAAAAAAAAEAAMAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAnQAAAAQABAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAADkAAAAKAAAAAAAHAAUAAAAHAAAAAAAHAAMAAAAFAAAAAAAAABhABgApAQAABAACAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAGYAAAAAAAAABAADAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAJ0AAAAEAAQAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAAA6AAAACgAAAAAABwAFAAAABwAAAAAABwADAAAABQAAAAAAAAAYQAYAKQEAAAQAAgAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABlAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCdAAAABAAEAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAOwAAAAoAAgAAAH8AAAAFAAAAAAAAAPA/gAAAAAUAAAAAAAAA8D8HAAUAAAAHAAAAAAAHAAMAAAAFAAAAAAAAABhABgApAQAABAACAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAHgAAAAAAAAABAADAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAJ0AAAAEAAQAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAACgABAAAAKgEAAAcAAgAAAAcAAgAAAAcAAAAAAAcAAwAAAAQACAAAAAAAAAAGAH8AAAAEAAAAAAAAAAAABwAEAAAABwAAAAAABwADAAAABAAOAAAAAAAAAAQAWwAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAgAAAAAQAAwAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABdAAAAAAAAAAQAAAAAAAAAAAABAAEAAwALAAAAAAA8AAAACgACAAAAgQAAAAUAAAAAAAAA8D+CAAAABQAAAAAAAADwPwcABQAAAAcAAAAAAAcAAwAAAAUAAAAAAAAAGEAGACkBAAAEAAIAAAAAAAAABwADAAAABAACAAAAAAAAAAQAbwAAAAAAAAAEAAMAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAnQAAAAQABAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAKAAEAAAArAQAABwACAAAABwACAAAABwAAAAAABwADAAAABAAIAAAAAAAAAAYAgQAAAAQAAAAAAAAAAAAHAAQAAAAHAAAAAAAHAAMAAAAEAA4AAAAAAAAABABbAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCCAAAABAADAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAF0AAAAAAAAABAAAAAAAAAAAAAEAAQADAAsAAAAAAD0AAAAKAAEAAACYAAAABQAAAAAAAADwPwcABQAAAAcAAAAAAAcAAwAAAAUAAAAAAAAAGEAGACkBAAAEAAIAAAAAAAAABwADAAAABAACAAAAAAAAAAQAYwAAAAAAAAAEAAMAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAnQAAAAQABAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAAD4AAAAKAAEAAAAsAQAABQAAAAAAAADwPwcABQAAAAcAAAAAAAcAAwAAAAUAAAAAAAAAGEAGACkBAAAEAAIAAAAAAAAABwADAAAABAACAAAAAAAAAAQAMAAAAAAAAAAEAAMAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAnQAAAAQABAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAAD8AAAAKAAMAAAAtAQAABQAAAAAAAADwPy4BAAAFAAAAAAAAAPA/LwEAAAUAAAAAAAAA8D8HAAMAAAAHAAAAAAAHAAMAAAAFAAAAAAAAABhABgApAQAABAACAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAoAAQAAADABAAAHAAIAAAAHAAIAAAAHAAAAAAAHAAMAAAAFAAAAAAAAABRABAAAIAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAHAAAAAAAHAAMAAAAFAAAAAAAAABBABAAAIAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAcAAgAAAAIAAAAAAEYAAAACAAAAAABHAAAAAwALAAAAAABAAAAACgAAAAAABwACAAAABwAAAAAABwADAAAABQAAAAAAAAAUQAQAACAAAAAAAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAABBAAAACgAAAAAABwACAAAABwAAAAAABwADAAAABQAAAAAAAAAQQAQAACAAAAAAAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAABCAAAACgABAAAAhQAAAAQAAQAAAAAAAAAEAAAAAAAAAAAAAQABAAcAAQAAAAIAAAAAAEkAAAADAAsAAAAAAEMAAAAKAAAAAAAHAAMAAAAHAAAAAAAHAAYAAAAFAAAAAAAAABBABAAgAAAAAAAAAAQAAQAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAFAAAAAAAAABhABgAxAQAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAARAAAAAoAAQAAAJYAAAAFAAAAAAAAAABABwAEAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAGAAAABAACAAAAAAAAAAQALAAAAAAAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAABFAAAACgACAAAAlwAAAAUAAAAAAAAA8D8yAQAABQAAAAAAAADwPwcACQAAAAcAAAAAAAcADAAAAAQADgAAAAAAAAAEAFsAAAAAAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAUAAAAAAAAAKEAHAAIAAAAEAD8AAAAAAAAABABaAAAAAAAAAAQAAAAAAAAAAAAEAAgAAAAAAAAABgCaAAAABAAAAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAJcAAAAEAAMAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXQAAAAAAAAAEAAAAAAAAAAAABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAAUAAAAAAAAABwAJAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABAACAAAAAAAAAAQAXwAAAAAAAAAEAAYAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAcAAAAAAAAABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAAgAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAcAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAUAAAAAAAAACgABAAAAMwEAAAcABAAAAAcABAAAAAcAAAAAAAcAAwAAAAQADgAAAAAAAAAEAFsAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAJcAAAAEAAMAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXQAAAAAAAAAEAAAAAAAAAAAABwAHAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAAMAAAAAAAAABwAJAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABAACAAAAAAAAAAQAXwAAAAAAAAAEAAQAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAUAAAAAAAAABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAAYAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAUAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABwACAAAABwAAAAAABwADAAAABQAAAAAAAAAoQAcAAgAAAAQAPwAAAAAAAAAEAFoAAAAAAAAABAAAAAAAAAAAAAcAAgAAAAcAAAAAAAcAAwAAAAQACAAAAAAAAAAGAJoAAAAEAAAAAAAAAAAAAQABAAMACwAAAAAARgAAAAEAAQABAAEAAwALAAAAAABHAAAAAQABAAEAAQADAAsAAAAAAEgAAAABAAEAAQABAAMACwAAAAAASQAAAAEAAQABAAEAAwALAAAAAABKAAAACgABAAAAewAAAAUAAAAAAAAA8D8HAAUAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAAEsAAAAKAAAAAAAHAAIAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAAEwAAAABAAEAAQABAAMACwAAAAAATQAAAAEAAQABAAEAAwALAAAAAABOAAAAAQABAAEAAQADAAsAAAAAAE8AAAABAAEAAQABAAMACwAAAAAAUAAAAAEAAQABAAEAAwALAAAAAABRAAAAAQABAAEAAQADAAsAAAAAAFIAAAABAAEAAQABAAMACwAAAAAAUwAAAAEAAQABAAEAAwALAAAAAABUAAAAAQABAAEAAQADAAsAAAAAAFUAAAABAAEAAQABAAMACwAAAAAAVgAAAAEAAQABAAEAAwALAAAAAABXAAAAAQABAAEAAQADAAsAAAAAAFgAAAABAAEAAQABAAMACwAAAAAAWQAAAAEAAQABAAEAAwALAAAAAABaAAAAAQABAAEAAQADAAsAAAAAAFsAAAABAAEAAQABAAMACwAAAAAAXAAAAAEAAQABAAEAAwALAAAAAABdAAAAAQABAAEAAQADAAsAAAAAAF4AAAABAAEAAQABAAMACwAAAAAAXwAAAAEAAQABAAEAAwALAAAAAABgAAAAAQABAAEAAQADAAsAAAAAAGEAAAABAAEAAQABAAMACwAAAAAAYgAAAAEAAQABAAEAAwALAAAAAABjAAAAAQABAAEAAQADAAsAAAAAAGQAAAABAAEAAQABAAMACwAAAAAAZQAAAAEAAQABAAEAAwALAAAAAABmAAAAAQABAAEAAQADAAsAAAAAAGcAAAABAAEAAQABAAMACwAAAAAAaAAAAAEAAQABAAEAAwALAAAAAABpAAAAAQABAAEAAQADAAsAAAAAAGoAAAABAAEAAQABAAMACwAAAAAAawAAAAEAAQABAAEAAwALAAAAAABsAAAAAQABAAEAAQADAAsAAAAAAG0AAAABAAEAAQABAAMACwAAAAAAbgAAAAEAAQABAAEAAwALAAAAAABvAAAAAQABAAEAAQADAAsAAAAAAHAAAAABAAEAAQABAAMACwAAAAAAcQAAAAEAAQABAAEAAwALAAAAAAByAAAAAQABAAEAAQADAAsAAAAAAHMAAAABAAEAAQABAAMACwAAAAAAdAAAAAEAAQABAAEAAwALAAAAAAB1AAAAAQABAAEAAQADAAsAAAAAAHYAAAABAAEAAQABAAMACwAAAAAAdwAAAAEAAQABAAEAAwALAAAAAAB4AAAAAQABAAEAAQADAAsAAAAAAHkAAAABAAEAAQABAAMACwAAAAAAegAAAAEAAQABAAEAAwALAAAAAAB7AAAAAQABAAEAAQADAAsAAAAAAHwAAAABAAEAAQABAAMACwAAAAAAfQAAAAEAAQABAAEAAwALAAAAAAB+AAAAAQABAAEAAQADAAsAAAAAAH8AAAABAAEAAQABAAMACwAAAAAAgAAAAAEAAQABAAEAAwALAAAAAACBAAAAAQABAAEAAQADAAsAAAAAAIIAAAABAAEAAQABAAMACwAAAAAAgwAAAAEAAQABAAEAAwALAAAAAACEAAAAAQABAAEAAQADAAsAAAAAAIUAAAABAAEAAQABAAMACwAAAAAAhgAAAAEAAQABAAEAAwALAAAAAACHAAAAAQABAAEAAQADAAsAAAAAAIgAAAABAAEAAQABAAMACwAAAAAAiQAAAAEAAQABAAEAAwALAAAAAACKAAAAAQABAAEAAQADAAsAAAAAAIsAAAABAAEAAQABAAMACwAAAAAAjAAAAAEAAQABAAEAAwALAAAAAACNAAAAAQABAAEAAQADAAsAAAAAAI4AAAABAAEAAQABAAMACwAAAAAAjwAAAAEAAQABAAEAAwALAAAAAACQAAAAAQABAAEAAQADAAsAAAAAAJEAAAABAAEAAQABAAMACwAAAAAAkgAAAAEAAQABAAEAAwALAAAAAACTAAAAAQABAAEAAQADAAsAAAAAAJQAAAABAAEAAQABAAMACwAAAAAAlQAAAAEAAQABAAEAAwALAAAAAACWAAAAAQABAAEAAQADAAsAAAAAAJcAAAABAAEAAQABAAMACwAAAAAAmAAAAAEAAQABAAEAAwALAAAAAACZAAAAAQABAAEAAQADAAsAAAAAAJoAAAABAAEAAQABAAMACwAAAAAAmwAAAAEAAQABAAEAAwALAAAAAACcAAAAAQABAAEAAQADAAsAAAAAAJ0AAAABAAEAAQABAAMACwAAAAAAngAAAAEAAQABAAEAAwALAAAAAACfAAAAAQABAAEAAQADAAsAAAAAAKAAAAABAAEAAQABAAMACwAAAAAAoQAAAAEAAQABAAEAAwALAAAAAACiAAAAAQABAAEAAQADAAsAAAAAAKMAAAABAAEAAQABAAMACwAAAAAApAAAAAEAAQABAAEAAwALAAAAAAClAAAAAQABAAEAAQADAAsAAAAAAKYAAAABAAEAAQABAAMACwAAAAAApwAAAAEAAQABAAEAAwALAAAAAACoAAAAAQABAAEAAQADAAsAAAAAAKkAAAABAAEAAQABAAMACwAAAAAAqgAAAAEAAQABAAEAAwALAAAAAACrAAAAAQABAAEAAQADAAsAAAAAAKwAAAABAAEAAQABAAMACwAAAAAArQAAAAEAAQABAAEAAwALAAAAAACuAAAAAQABAAEAAQADAAsAAAAAAK8AAAABAAEAAQABAAMACwAAAAAAsAAAAAEAAQABAAEAAwALAAAAAACxAAAAAQABAAEAAQADAAsAAAAAALIAAAABAAEAAQABAAMACwAAAAAAswAAAAEAAQABAAEAAwALAAAAAAC0AAAAAQABAAEAAQADAAsAAAAAALUAAAABAAEAAQABAAMACwAAAAAAtgAAAAEAAQABAAEAAwALAAAAAAC3AAAAAQABAAEAAQADAAsAAAAAALgAAAABAAEAAQABAAMACwAAAAAAuQAAAAEAAQABAAEAAwALAAAAAAC6AAAAAQABAAEAAQADAAsAAAAAALsAAAABAAEAAQABAAMACwAAAAAAvAAAAAEAAQABAAEAAwALAAAAAAC9AAAAAQABAAEAAQADAAsAAAAAAL4AAAABAAEAAQABAAMACwAAAAAAvwAAAAoAAQAAAAwBAAAFAAAAAAAAAABABwAFAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYADAEAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAAMAAAAABAAEAAQABAAMACwAAAAAAwQAAAAoAAwAAAA0BAAAFAAAAAAAAAPA/GAEAAAUAAAAAAAAA8D8aAQAABQAAAAAAAADwPwcABAAAAAcAAAAAAAcABgAAAAUAAAAAAAAAGEAGADQBAAAEAAIAAAAAAAAABQAAAAAAAAAcQAYANAEAAAQAAwAAAAAAAAAHAAYAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAgAAAAAAAAABgAaAQAABAAAAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAoAAgAAADUBAAAHAAIAAAAHAAIAAAAHAAAAAAAHAAMAAAAEAAgAAAAAAAAABgANAQAABAAAAAAAAAAAAAcAAgAAAAcAAAAAAAcAAwAAAAQACAAAAAAAAAAGABgBAAAEAAAAAAAAAAAANgEAAAcAAgAAAAcAAwAAAAcAAAAAAAcAAwAAAAUAAAAAAAAAGEAGADQBAAAEAAIAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABwAAAAAABwADAAAABQAAAAAAAAAcQAYANAEAAAQAAgAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAwALAAAAAADCAAAAAQABAAEAAQABAAMACwAAAAAAwwAAAAoABQAAABsBAAAFAAAAAAAAAPA/HAEAAAUAAAAAAAAAAEAdAQAABQAAAAAAAADwPzcBAAAFAAAAAAAAAPA/LAEAAAUAAAAAAAAA8D8HAAgAAAAHAAAAAAAHAAMAAAAEAA4AAAAAAAAABAAlAAAAAAAAAAQAAgAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgAbAQAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGABwBAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAHQEAAAQABQAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABQAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABAAuAAAAAAAAAAQABgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABwAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgAdAQAABAAHAAAAAAAAAAcAAwAAAAUAAAAAAAAAGEAGADgBAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAADEAAAACgAEAAAAGwEAAAUAAAAAAAAA8D8cAQAABQAAAAAAAAAAQB0BAAAFAAAAAAAAAPA/LAEAAAUAAAAAAAAA8D8HAAYAAAAHAAAAAAAHAAMAAAAEAA4AAAAAAAAABAAlAAAAAAAAAAQAAgAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgAbAQAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGABwBAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAHQEAAAQABQAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABQAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABjAAAAAAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAAMUAAAAKAAUAAAAbAQAABQAAAAAAAADwPxwBAAAFAAAAAAAAAABAHQEAAAUAAAAAAAAA8D83AQAABQAAAAAAAADwPywBAAAFAAAAAAAAAPA/BwAIAAAABwAAAAAABwADAAAABAAOAAAAAAAAAAQAJQAAAAAAAAAEAAIAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAGwEAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgAcAQAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAB0BAAAEAAUAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAUAAAAAAAAABwAGAAAABAACAAAAAAAAAAQALgAAAAAAAAAEAAYAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAcAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAHQEAAAQABwAAAAAAAAAHAAMAAAAFAAAAAAAAABhABgA5AQAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAxgAAAAoABQAAABsBAAAFAAAAAAAAAPA/HAEAAAUAAAAAAAAAAEAdAQAABQAAAAAAAADwPzcBAAAFAAAAAAAAAPA/LAEAAAUAAAAAAAAA8D8HAAgAAAAHAAAAAAAHAAMAAAAEAA4AAAAAAAAABAAlAAAAAAAAAAQAAgAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgAbAQAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGABwBAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAHQEAAAQABQAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABQAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABAAuAAAAAAAAAAQABgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABwAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgAdAQAABAAHAAAAAAAAAAcAAwAAAAUAAAAAAAAAGEAGADoBAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAADHAAAACgAFAAAAGwEAAAUAAAAAAAAA8D8cAQAABQAAAAAAAAAAQB0BAAAFAAAAAAAAAPA/NwEAAAUAAAAAAAAA8D8sAQAABQAAAAAAAADwPwcACAAAAAcAAAAAAAcAAwAAAAQADgAAAAAAAAAEACUAAAAAAAAABAACAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGABsBAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAHAEAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgAdAQAABAAFAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAFAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEAC4AAAAAAAAABAAGAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAHAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAB0BAAAEAAcAAAAAAAAABwADAAAABQAAAAAAAAAYQAYAOwEAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAAMgAAAAKAAUAAAAbAQAABQAAAAAAAADwPxwBAAAFAAAAAAAAAABAHQEAAAUAAAAAAAAA8D83AQAABQAAAAAAAADwPywBAAAFAAAAAAAAAPA/BwAIAAAABwAAAAAABwADAAAABAAOAAAAAAAAAAQAJQAAAAAAAAAEAAIAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAGwEAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgAcAQAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAB0BAAAEAAUAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAUAAAAAAAAABwAGAAAABAACAAAAAAAAAAQALgAAAAAAAAAEAAYAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAcAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAHQEAAAQABwAAAAAAAAAHAAMAAAAFAAAAAAAAABhABgA8AQAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAyQAAAAoABQAAABsBAAAFAAAAAAAAAPA/HAEAAAUAAAAAAAAAAEAdAQAABQAAAAAAAADwPzcBAAAFAAAAAAAAAPA/LAEAAAUAAAAAAAAA8D8HAAgAAAAHAAAAAAAHAAMAAAAEAA4AAAAAAAAABAAlAAAAAAAAAAQAAgAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgAbAQAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGABwBAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAHQEAAAQABQAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABQAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABAAuAAAAAAAAAAQABgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABwAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgAdAQAABAAHAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAG8AAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAygAAAAoABQAAABsBAAAFAAAAAAAAAPA/HAEAAAUAAAAAAAAAAEAdAQAABQAAAAAAAADwPzcBAAAFAAAAAAAAAPA/LAEAAAUAAAAAAAAA8D8HAAgAAAAHAAAAAAAHAAMAAAAEAA4AAAAAAAAABAAlAAAAAAAAAAQAAgAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgAbAQAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGABwBAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAHQEAAAQABQAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABQAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABAAuAAAAAAAAAAQABgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABwAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgAdAQAABAAHAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAHMAAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAywAAAAoABAAAABsBAAAFAAAAAAAAAPA/HAEAAAUAAAAAAAAAAEAdAQAABQAAAAAAAADwPywBAAAFAAAAAAAAAPA/BwAGAAAABwAAAAAABwADAAAABAAOAAAAAAAAAAQAJQAAAAAAAAAEAAIAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAGwEAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgAcAQAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAB0BAAAEAAUAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAUAAAAAAAAABwADAAAABAACAAAAAAAAAAQAdQAAAAAAAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAADMAAAACgAFAAAAGwEAAAUAAAAAAAAA8D8cAQAABQAAAAAAAAAAQB0BAAAFAAAAAAAAAPA/NwEAAAUAAAAAAAAA8D8sAQAABQAAAAAAAADwPwcACAAAAAcAAAAAAAcAAwAAAAQADgAAAAAAAAAEACUAAAAAAAAABAACAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGABsBAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAHAEAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgAdAQAABAAFAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAFAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEAC4AAAAAAAAABAAGAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAHAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAB0BAAAEAAcAAAAAAAAABwADAAAABQAAAAAAAAAYQAYAPQEAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAAM0AAAABAAEAAQABAAEAAwALAAAAAADOAAAACgADAAAAHAEAAAUAAAAAAAAAAEAdAQAABQAAAAAAAADwPywBAAAFAAAAAAAAAPA/BwAFAAAABwAAAAAABwADAAAABAAOAAAAAAAAAAQAJQAAAAAAAAAEAAIAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAHAEAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgAdAQAABAAEAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEACUAAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAzwAAAAoAAAAAAAcABAAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAUAAAAAAAAAHEAGADQBAAAEAAMAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAADQAAAACgABAAAAPgEAAAUAAAAAAAAA8D8HAAQAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQAAwAAAAAAAAAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAEAAIAAAAAAAAABAAkAAAAAAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAANEAAAAKAAUAAABnAAAABAABAAAAAAAAAD8BAAAEAAEAAAAAAAAAQAEAAAQAAQAAAAAAAABBAQAABAABAAAAAAAAAEIBAAAEAAEAAAAAAAAABwACAAAABwAAAAAABwAPAAAABAACAAAAAAAAAAQAIAAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAQAKwAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAQALQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAQAMAAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAQAIwAAAAAAAAAEAAAAAAAAAAAACgABAAAAQwEAAAcABQAAAAcAAgAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEACAAAAAAAAAABAAAAAAAAAAAAAcAAgAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEACsAAAAAAAAABAAAAAAAAAAAAAcAAgAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAC0AAAAAAAAABAAAAAAAAAAAAAcAAgAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEADAAAAAAAAAABAAAAAAAAAAAAAcAAgAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEACMAAAAAAAAABAAAAAAAAAAAAAEAAQADAAsAAAAAANIAAAAKAAEAAABEAQAABAABAAAAAAAAAAcAAgAAAAcAAAAAAAcACQAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAABAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAEACoAAAAAAAAABAAAAAAAAAAAAAoAAQAAAEUBAAAHAAIAAAAHAAIAAAAHAAAAAAAHAAYAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQAAQAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAIAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABAAqAAAAAAAAAAQAAAAAAAAAAAABAAEAAwALAAAAAADTAAAAAQABAAEAAQADAAsAAAAAANQAAAAKAAAAAAAHAAIAAAAHAAAAAAAHAAMAAAAFAAAAAAAAABhABgBGAQAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAA1QAAAAEAAQABAAEAAwALAAAAAADWAAAAAQABAAEAAQADAAsAAAAAANcAAAABAAEAAQABAAMACwAAAAAA2AAAAAEAAQABAAEAAwALAAAAAADZAAAAAQABAAEAAQADAAsAAAAAANoAAAABAAEAAQABAAMACwAAAAAA2wAAAAEAAQABAAEAAwALAAAAAADcAAAAAQABAAEAAQADAAsAAAAAAN0AAAABAAEAAQABAAMACwAAAAAA3gAAAAEAAQABAAEAAwALAAAAAADfAAAAAQABAAEAAQADAAsAAAAAAOAAAAABAAEAAQABAAMACwAAAAAA4QAAAAEAAQABAAEAAwALAAAAAADiAAAAAQABAAEAAQADAAsAAAAAAOMAAAABAAEAAQABAAMACwAAAAAA5AAAAAEAAQABAAEAAwALAAAAAADlAAAAAQABAAEAAQADAEgBAAAHAAAAAAAKAAAAAABJAQAABwAAAAAACgAAAAAADAAAAAcAAAAAAAoAAAAAAAYATAEAAAcAAAAAAAoAFAAAABkAAAACAAAAAAAEAAAAGgAAAAIAAAAAAAUAAAAbAAAAAgAAAAAABgAAABwAAAACAAAAAAAHAAAAHQAAAAIAAAAAAAgAAAAeAAAAAgAAAAAACQAAAB8AAAACAAAAAAAKAAAAIAAAAAIAAAAAAAsAAAAhAAAAAgAAAAAADAAAACIAAAACAAAAAAANAAAAIwAAAAIAAAAAAA4AAAAkAAAAAgAAAAAADwAAACUAAAACAAAAAAAQAAAAJgAAAAIAAAAAABEAAAAnAAAAAgAAAAAAEgAAACgAAAACAAAAAAATAAAAKQAAAAIAAAAAABQAAAAqAAAAAgAAAAAAFQAAACsAAAACAAAAAAAWAAAALAAAAAIAAAAAABcAAAAHABQAAAACAAAAAAAEAAAAAgAAAAAABQAAAAIAAAAAAAYAAAACAAAAAAAHAAAAAgAAAAAACAAAAAIAAAAAAAkAAAACAAAAAAAKAAAAAgAAAAAACwAAAAIAAAAAAAwAAAACAAAAAAANAAAAAgAAAAAADgAAAAIAAAAAAA8AAAACAAAAAAAQAAAAAgAAAAAAEQAAAAIAAAAAABIAAAACAAAAAAATAAAAAgAAAAAAFAAAAAIAAAAAABUAAAACAAAAAAAWAAAAAgAAAAAAFwAAAAcAAAAAAAcAAQAAAAIAAgAAABoAAAAHAAAAAAACAAIAAAAaAAAABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAgAAAAIAAAAAAAMAAAACAAIAAAAaAAAABwAAAAAAAQAEAAAAAAAAAAAACgAAAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAcAAAAAAAcAAAAAAAEABgBNAQAABwAAAAAACgABAAAA2wAAAAIAAAAAABkAAAAHAAAAAAAHAAAAAAAEAAEAAAAAAAAAAgAAAAAAGgAAAAYATgEAAAcAAAAAAAoAPQAAAGwAAAACAAAAAAAcAAAAbQAAAAIAAAAAAB0AAABuAAAAAgAAAAAAHgAAAG8AAAACAAAAAAAfAAAAcAAAAAIAAAAAACAAAABxAAAAAgAAAAAAIQAAAHIAAAACAAAAAAAiAAAAcwAAAAIAAAAAACMAAAB0AAAAAgAAAAAAJAAAAHUAAAACAAAAAAAlAAAAdgAAAAIAAAAAACYAAAB3AAAAAgAAAAAAJwAAAHgAAAACAAAAAAAoAAAAeQAAAAIAAAAAACkAAAB6AAAAAgAAAAAAKgAAAHsAAAACAAAAAAArAAAAfAAAAAIAAAAAACwAAAB9AAAAAgAAAAAALQAAAH4AAAACAAAAAAAuAAAAfwAAAAIAAAAAAC8AAACAAAAAAgAAAAAAMAAAAIEAAAACAAAAAAAxAAAAggAAAAIAAAAAADIAAACDAAAAAgAAAAAAMwAAAIQAAAACAAAAAAA0AAAAhQAAAAIAAAAAADUAAACGAAAAAgAAAAAANgAAAIcAAAACAAAAAAA3AAAAiAAAAAIAAAAAADgAAACJAAAAAgAAAAAAOQAAAIoAAAACAAAAAAA6AAAAiwAAAAIAAAAAADsAAACMAAAAAgAAAAAAPAAAAI0AAAACAAAAAAA9AAAAjgAAAAIAAAAAAD4AAACPAAAAAgAAAAAAPwAAAJAAAAACAAAAAABAAAAAkQAAAAIAAAAAAEEAAACSAAAAAgAAAAAAQgAAAJMAAAACAAAAAABDAAAAlAAAAAIAAAAAAEQAAACVAAAAAgAAAAAARQAAAJYAAAACAAAAAABIAAAAlwAAAAIAAAAAAEoAAACYAAAAAgAAAAAASwAAAJkAAAACAAAAAABMAAAAmgAAAAIAAAAAAE0AAABrAAAAAgAAAAAATgAAAJsAAAACAAAAAABPAAAAnAAAAAIAAAAAAFAAAACdAAAAAgAAAAAAUQAAAJ4AAAACAAAAAABSAAAAnwAAAAIAAAAAAFMAAACgAAAAAgAAAAAAVAAAAKEAAAACAAAAAABVAAAAogAAAAIAAAAAAFYAAACjAAAAAgAAAAAAVwAAAKQAAAACAAAAAABYAAAApQAAAAIAAAAAAFkAAACmAAAAAgAAAAAAWgAAAKcAAAACAAAAAABbAAAABwA9AAAAAgAAAAAAHAAAAAIAAAAAAB0AAAACAAAAAAAeAAAAAgAAAAAAHwAAAAIAAAAAACAAAAACAAAAAAAhAAAAAgAAAAAAIgAAAAIAAAAAACMAAAACAAAAAAAkAAAAAgAAAAAAJQAAAAIAAAAAACYAAAACAAAAAAAnAAAAAgAAAAAAKAAAAAIAAAAAACkAAAACAAAAAAAqAAAAAgAAAAAAKwAAAAIAAAAAACwAAAACAAAAAAAtAAAAAgAAAAAALgAAAAIAAAAAAC8AAAACAAAAAAAwAAAAAgAAAAAAMQAAAAIAAAAAADIAAAACAAAAAAAzAAAAAgAAAAAANAAAAAIAAAAAADUAAAACAAAAAAA2AAAAAgAAAAAANwAAAAIAAAAAADgAAAACAAAAAAA5AAAAAgAAAAAAOgAAAAIAAAAAADsAAAACAAAAAAA8AAAAAgAAAAAAPQAAAAIAAAAAAD4AAAACAAAAAAA/AAAAAgAAAAAAQAAAAAIAAAAAAEEAAAACAAAAAABCAAAAAgAAAAAAQwAAAAIAAAAAAEQAAAACAAAAAABFAAAAAgAAAAAASAAAAAIAAAAAAEoAAAACAAAAAABLAAAAAgAAAAAATAAAAAIAAAAAAE0AAAACAAAAAABOAAAAAgAAAAAATwAAAAIAAAAAAFAAAAACAAAAAABRAAAAAgAAAAAAUgAAAAIAAAAAAFMAAAACAAAAAABUAAAAAgAAAAAAVQAAAAIAAAAAAFYAAAACAAAAAABXAAAAAgAAAAAAWAAAAAIAAAAAAFkAAAACAAAAAABaAAAAAgAAAAAAWwAAAAcAAAAAAAcAAQAAAAIAAQAAAHMAAAAHAAAAAAACAAEAAABzAAAABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAwAAAAIAAAAAABsAAAACAAEAAABzAAAAAgACAAAAGgAAAAcAAAAAAAoADQAAAEwAAAAKAAIAAABuAAAABwABAAAABgB0AAAAiAAAAAcADQAAAAYAiQAAAAYAigAAAAYAiwAAAAYAjAAAAAYAjQAAAAYAjgAAAAYAjwAAAAYAkAAAAAYAkQAAAAYAkgAAAAYAkwAAAAYAlAAAAAYAlQAAAG4AAAACAAAAAAAJAQAAiAAAAAIAAAAAAAoBAAAfAQAAAgAAAAAACwEAACABAAACAAAAAAAMAQAAIQEAAAIAAAAAAA0BAAAjAQAAAgAAAAAADgEAACQBAAACAAAAAAAPAQAAJgEAAAIAAAAAABABAAAqAQAAAgAAAAAAEQEAACsBAAACAAAAAAASAQAAMAEAAAIAAAAAABMBAAAzAQAAAgAAAAAAFAEAAAQAAAAAAAAAAAAKAAAAAAAKAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEABwAJAAAABwAEAAAABAABAAAAAAAAAAIAAQAAAHMAAAAGAE8BAAAGAKgAAAAHAAQAAAAEAAEAAAAAAAAAAgABAAAAcwAAAAYANQAAAAYAqQAAAAcABAAAAAQAAQAAAAAAAAACAAEAAABzAAAABgA2AAAABgCqAAAABwAEAAAABAABAAAAAAAAAAIAAQAAAHMAAAAGAFABAAAGAKsAAAAHAAQAAAAEAAEAAAAAAAAAAgABAAAAcwAAAAYAHAAAAAYArAAAAAcABAAAAAQAAQAAAAAAAAACAAEAAABzAAAABgBRAQAABgCtAAAABwAEAAAABAABAAAAAAAAAAIAAQAAAHMAAAAGAFIBAAAGAK4AAAAHAAQAAAAEAAEAAAAAAAAAAgABAAAAcwAAAAYAUwEAAAYArwAAAAcABAAAAAQAAQAAAAAAAAACAAEAAABzAAAABgBUAQAABgCwAAAABwAAAAAAAQAGAFUBAAAHAAAAAAAKACIAAACxAAAAAgAAAAAAXQAAALIAAAACAAAAAABeAAAAswAAAAIAAAAAAF8AAAC0AAAAAgAAAAAAYAAAAKEAAAACAAAAAABhAAAAdAAAAAIAAAAAAGIAAABtAAAAAgAAAAAAYwAAAHgAAAACAAAAAABkAAAAeQAAAAIAAAAAAGUAAACFAAAAAgAAAAAAZgAAAIYAAAACAAAAAABnAAAAfQAAAAIAAAAAAGgAAAB/AAAAAgAAAAAAaQAAAIEAAAACAAAAAABqAAAAgwAAAAIAAAAAAGsAAACcAAAAAgAAAAAAbAAAAHsAAAACAAAAAABtAAAAfAAAAAIAAAAAAG4AAACJAAAAAgAAAAAAbwAAAIoAAAACAAAAAABwAAAAiwAAAAIAAAAAAHEAAACMAAAAAgAAAAAAcgAAAI0AAAACAAAAAABzAAAAjgAAAAIAAAAAAHQAAACPAAAAAgAAAAAAdQAAAJAAAAACAAAAAAB2AAAAkQAAAAIAAAAAAHcAAACSAAAAAgAAAAAAeAAAAJMAAAACAAAAAAB5AAAAlAAAAAIAAAAAAHoAAACVAAAAAgAAAAAAewAAAJYAAAACAAAAAAB8AAAAlwAAAAIAAAAAAH0AAACYAAAAAgAAAAAAfgAAAAcAIgAAAAIAAAAAAF0AAAACAAAAAABeAAAAAgAAAAAAXwAAAAIAAAAAAGAAAAACAAAAAABhAAAAAgAAAAAAYgAAAAIAAAAAAGMAAAACAAAAAABkAAAAAgAAAAAAZQAAAAIAAAAAAGYAAAACAAAAAABnAAAAAgAAAAAAaAAAAAIAAAAAAGkAAAACAAAAAABqAAAAAgAAAAAAawAAAAIAAAAAAGwAAAACAAAAAABtAAAAAgAAAAAAbgAAAAIAAAAAAG8AAAACAAAAAABwAAAAAgAAAAAAcQAAAAIAAAAAAHIAAAACAAAAAABzAAAAAgAAAAAAdAAAAAIAAAAAAHUAAAACAAAAAAB2AAAAAgAAAAAAdwAAAAIAAAAAAHgAAAACAAAAAAB5AAAAAgAAAAAAegAAAAIAAAAAAHsAAAACAAAAAAB8AAAAAgAAAAAAfQAAAAIAAAAAAH4AAAAHAAAAAAAHAAEAAAACAAIAAAAaAAAABwAAAAAAAgACAAAAGgAAAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAIAAAACAAAAAABcAAAAAgACAAAAGgAAAAcAAAAAAAEABAAAAAAAAAAAAAoAAAAAAAoAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQAHAAAAAAAHAAAAAAABAAYAVgEAAAcADAAAAAIAAAAAABUBAAACAAAAAAAWAQAAAgAAAAAAFwEAAAIAAAAAABgBAAACAAAAAAAZAQAAAgAAAAAAGgEAAAIAAAAAABsBAAACAAAAAAAcAQAAAgAAAAAAHQEAAAIAAAAAAB4BAAACAAAAAAAfAQAAAgAAAAAAIAEAAAoALQAAALUAAAACAAAAAACAAAAAtgAAAAIAAAAAAIEAAAC3AAAAAgAAAAAAggAAALgAAAACAAAAAACDAAAAGgAAAAIAAAAAAIQAAAC5AAAAAgAAAAAAhQAAALoAAAACAAAAAACGAAAAuwAAAAIAAAAAAIcAAAC8AAAAAgAAAAAAiAAAAL0AAAACAAAAAACJAAAAvgAAAAIAAAAAAIoAAAC/AAAAAgAAAAAAiwAAAMAAAAACAAAAAACMAAAAmgAAAAIAAAAAAI0AAAAiAAAAAgAAAAAAjgAAAMEAAAACAAAAAACPAAAAwgAAAAIAAAAAAJAAAADDAAAAAgAAAAAAkQAAAMQAAAACAAAAAACSAAAAxQAAAAIAAAAAAJMAAADGAAAAAgAAAAAAlAAAAMcAAAACAAAAAACVAAAAyAAAAAIAAAAAAJYAAADJAAAAAgAAAAAAlwAAAMoAAAACAAAAAACYAAAAywAAAAIAAAAAAJkAAADMAAAAAgAAAAAAmgAAAM0AAAACAAAAAACbAAAAMAAAAAIAAAAAAJwAAADOAAAAAgAAAAAAnQAAAM8AAAACAAAAAACeAAAA0AAAAAIAAAAAAJ8AAADRAAAAAgAAAAAAoAAAANIAAAACAAAAAAChAAAA0wAAAAIAAAAAAKIAAAAdAAAAAgAAAAAAowAAANQAAAACAAAAAACkAAAA1QAAAAIAAAAAAKUAAADWAAAAAgAAAAAApgAAANcAAAACAAAAAACnAAAA2AAAAAIAAAAAAKgAAADZAAAAAgAAAAAAqQAAANoAAAACAAAAAACqAAAALAAAAAIAAAAAAKsAAADbAAAAAgAAAAAAAAEAAAcALQAAAAIAAAAAAIAAAAACAAAAAACBAAAAAgAAAAAAggAAAAIAAAAAAIMAAAACAAAAAACEAAAAAgAAAAAAhQAAAAIAAAAAAIYAAAACAAAAAACHAAAAAgAAAAAAiAAAAAIAAAAAAIkAAAACAAAAAACKAAAAAgAAAAAAiwAAAAIAAAAAAIwAAAACAAAAAACNAAAAAgAAAAAAjgAAAAIAAAAAAI8AAAACAAAAAACQAAAAAgAAAAAAkQAAAAIAAAAAAJIAAAACAAAAAACTAAAAAgAAAAAAlAAAAAIAAAAAAJUAAAACAAAAAACWAAAAAgAAAAAAlwAAAAIAAAAAAJgAAAACAAAAAACZAAAAAgAAAAAAmgAAAAIAAAAAAJsAAAACAAAAAACcAAAAAgAAAAAAnQAAAAIAAAAAAJ4AAAACAAAAAACfAAAAAgAAAAAAoAAAAAIAAAAAAKEAAAACAAAAAACiAAAAAgAAAAAAowAAAAIAAAAAAKQAAAACAAAAAAClAAAAAgAAAAAApgAAAAIAAAAAAKcAAAACAAAAAACoAAAAAgAAAAAAqQAAAAIAAAAAAKoAAAACAAAAAACrAAAAAgAAAAAAAAEAAAcAAAAAAAcAAQAAAAIAAgAAABoAAAAHAAEAAAACAAAAAAAYAAAAAgACAAAAGgAAAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAIAAAACAAAAAAB/AAAAAgACAAAAGgAAAAcAAgAAAAIAAAAAABgAAAACAAAAAAABAQAAAQAEAAAAAAAAAAAACgAAAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAcAAQAAAAcAAgAAAAQAAAAAAAAAAAACAAAAAACAAAAABwABAAAABwACAAAABAAAAAAAAAAAAAIAAAAAAIAAAAABAAwAAAAAAOYAAAABAAEAAQABAAMABgBXAQAABwACAAAAAgAAAAAAIQEAAAIAAAAAACIBAAAKAAUAAADoAAAAAgAAAAAArQAAAOkAAAACAAAAAACuAAAA6gAAAAIAAAAAAK8AAADrAAAAAgAAAAAAsAAAAOwAAAACAAAAAACxAAAABwAFAAAAAgAAAAAArQAAAAIAAAAAAK4AAAACAAAAAACvAAAAAgAAAAAAsAAAAAIAAAAAALEAAAAHAAAAAAAHAAEAAAACAAIAAAAaAAAABwAAAAAAAgACAAAAGgAAAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAIAAAACAAAAAACsAAAAAgACAAAAGgAAAAcAAAAAAAEABAAAAAAAAAAAAAoAAAAAAAoAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQAHAAIAAAAHAAQAAAAEAAIAAAAAAAAAAgAAAAAArAAAAAYA6QAAAAYA7QAAAAcABAAAAAQAAwAAAAAAAAACAAAAAACsAAAABgDqAAAABgDuAAAABwACAAAABwAEAAAABAACAAAAAAAAAAIAAAAAAKwAAAAGAOkAAAAGAO0AAAAHAAQAAAAEAAMAAAAAAAAAAgAAAAAArAAAAAYA6gAAAAYA7gAAAAEABgBYAQAABwAEAAAAAgAAAAAAIwEAAAIAAAAAACQBAAACAAAAAAAlAQAAAgAAAAAAJgEAAAoACgAAABIAAAACAAAAAACzAAAA7wAAAAIAAAAAALQAAAC1AAAAAgAAAAAAtQAAAPAAAAACAAAAAAC2AAAA8QAAAAIAAAAAALcAAADyAAAAAgAAAAAAuAAAAPMAAAACAAAAAAC5AAAA9AAAAAIAAAAAALoAAAD1AAAAAgAAAAAAuwAAADAAAAACAAAAAAC8AAAABwAKAAAAAgAAAAAAswAAAAIAAAAAALQAAAACAAAAAAC1AAAAAgAAAAAAtgAAAAIAAAAAALcAAAACAAAAAAC4AAAAAgAAAAAAuQAAAAIAAAAAALoAAAACAAAAAAC7AAAAAgAAAAAAvAAAAAcAAAAAAAcAAQAAAAIAAgAAABoAAAAHAAAAAAACAAIAAAAaAAAABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAgAAAAIAAAAAALIAAAACAAIAAAAaAAAABwAAAAAAAQAEAAAAAAAAAAAACgAAAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAcAAQAAAAcAAgAAAAQAAAAAAAAAAAACAAAAAAC1AAAABwABAAAABwACAAAABAAAAAAAAAAAAAIAAAAAALUAAAABAAYAWQEAAAcABwAAAAIAAAAAACcBAAACAAAAAAAoAQAAAgAAAAAAKQEAAAIAAAAAACoBAAACAAAAAAArAQAAAgAAAAAALAEAAAIAAAAAAC0BAAAKAAwAAAC1AAAAAgAAAAAAvgAAAPkAAAACAAAAAAC/AAAA+gAAAAIAAAAAAMAAAAD7AAAAAgAAAAAAwQAAAPwAAAACAAAAAADCAAAA/QAAAAIAAAAAAMMAAAD+AAAAAgAAAAAAxAAAAP8AAAACAAAAAADFAAAAAAEAAAIAAAAAAMYAAAABAQAAAgAAAAAAxwAAAAIBAAACAAAAAADIAAAAAwEAAAIAAAAAAMkAAAAHAAwAAAACAAAAAAC+AAAAAgAAAAAAvwAAAAIAAAAAAMAAAAACAAAAAADBAAAAAgAAAAAAwgAAAAIAAAAAAMMAAAACAAAAAADEAAAAAgAAAAAAxQAAAAIAAAAAAMYAAAACAAAAAADHAAAAAgAAAAAAyAAAAAIAAAAAAMkAAAAHAAAAAAAHAAEAAAACAAIAAAAaAAAABwAAAAAAAgACAAAAGgAAAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAIAAAACAAAAAAC9AAAAAgACAAAAGgAAAAcAAAAAAAEABAAAAAAAAAAAAAoAAAAAAAoAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQAHAAEAAAAHAAIAAAAEAAAAAAAAAAAAAgAAAAAAvgAAAAcAAQAAAAcAAgAAAAQAAAAAAAAAAAACAAAAAAC+AAAAAQAGAFoBAAAEAAEAAAAAAAAABgBbAQAABwAAAAAACgAUAAAACwEAAAIAAAAAAMwAAACaAAAAAgAAAAAAzQAAAAwBAAACAAAAAADOAAAADQEAAAIAAAAAAM8AAAAOAQAAAgAAAAAA0AAAAA8BAAACAAAAAADRAAAAEAEAAAIAAAAAANIAAAARAQAAAgAAAAAA0wAAABIBAAACAAAAAADUAAAAEwEAAAIAAAAAANUAAAAUAQAAAgAAAAAA1gAAABUBAAACAAAAAADXAAAAFgEAAAIAAAAAANgAAAAXAQAAAgAAAAAA2QAAABgBAAACAAAAAADaAAAAGQEAAAIAAAAAANsAAAAaAQAAAgAAAAAA3AAAABsBAAACAAAAAADdAAAAHAEAAAIAAAAAAN4AAAAdAQAAAgAAAAAA3wAAAAcAFAAAAAIAAAAAAMwAAAACAAAAAADNAAAAAgAAAAAAzgAAAAIAAAAAAM8AAAACAAAAAADQAAAAAgAAAAAA0QAAAAIAAAAAANIAAAACAAAAAADTAAAAAgAAAAAA1AAAAAIAAAAAANUAAAACAAAAAADWAAAAAgAAAAAA1wAAAAIAAAAAANgAAAACAAAAAADZAAAAAgAAAAAA2gAAAAIAAAAAANsAAAACAAAAAADcAAAAAgAAAAAA3QAAAAIAAAAAAN4AAAACAAAAAADfAAAABwAAAAAABwABAAAAAgABAAAAcwAAAAcAAAAAAAIAAQAAAHMAAAAHAAAAAAAKAAAAAAAEAAEAAAAAAAAABwADAAAAAgAAAAAAywAAAAIAAQAAAHMAAAACAAIAAAAaAAAABwAAAAAACgAHAAAATAAAAAoAAgAAAA0BAAAHAAoAAAAGAA4BAAAGAA8BAAAGABABAAAGABEBAAAGABIBAAAGABMBAAAGABQBAAAGABUBAAAGABYBAAAGABcBAAAYAQAABwABAAAABgAZAQAADQEAAAIAAAAAAC4BAAAYAQAAAgAAAAAALwEAADUBAAACAAAAAAAwAQAANgEAAAIAAAAAADEBAABDAQAAAgAAAAAAMgEAAEUBAAACAAAAAAAzAQAABAAAAAAAAAAAAAoAAAAAAAoAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQAHAAkAAAAHAAQAAAAEAAEAAAAAAAAAAgABAAAAcwAAAAYATwEAAAYAqAAAAAcABAAAAAQAAQAAAAAAAAACAAEAAABzAAAABgA1AAAABgCpAAAABwAEAAAABAABAAAAAAAAAAIAAQAAAHMAAAAGADYAAAAGAKoAAAAHAAQAAAAEAAEAAAAAAAAAAgABAAAAcwAAAAYAUAEAAAYAqwAAAAcABAAAAAQAAQAAAAAAAAACAAEAAABzAAAABgAcAAAABgCsAAAABwAEAAAABAABAAAAAAAAAAIAAQAAAHMAAAAGAFEBAAAGAK0AAAAHAAQAAAAEAAEAAAAAAAAAAgABAAAAcwAAAAYAUgEAAAYArgAAAAcABAAAAAQAAQAAAAAAAAACAAEAAABzAAAABgBTAQAABgCvAAAABwAEAAAABAABAAAAAAAAAAIAAQAAAHMAAAAGAFQBAAAGALAAAAAHAAAAAAABAAYAXAEAAAcAAAAAAAoAEAAAAAsBAAACAAAAAADhAAAADAEAAAIAAAAAAOMAAAAOAQAAAgAAAAAA5AAAAA8BAAACAAAAAADlAAAAEAEAAAIAAAAAAOYAAAARAQAAAgAAAAAA5wAAABIBAAACAAAAAADoAAAAEwEAAAIAAAAAAOkAAAAUAQAAAgAAAAAA6gAAABUBAAACAAAAAADrAAAAFgEAAAIAAAAAAOwAAAAXAQAAAgAAAAAA7QAAABkBAAACAAAAAADuAAAAGgEAAAIAAAAAAO8AAAAbAQAAAgAAAAAA8AAAAB0BAAACAAAAAADxAAAABwAQAAAAAgAAAAAA4QAAAAIAAAAAAOMAAAACAAAAAADkAAAAAgAAAAAA5QAAAAIAAAAAAOYAAAACAAAAAADnAAAAAgAAAAAA6AAAAAIAAAAAAOkAAAACAAAAAADqAAAAAgAAAAAA6wAAAAIAAAAAAOwAAAACAAAAAADtAAAAAgAAAAAA7gAAAAIAAAAAAO8AAAACAAAAAADwAAAAAgAAAAAA8QAAAAcAAAAAAAcAAQAAAAIAAgAAABoAAAAHAAAAAAACAAIAAAAaAAAABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAgAAAAIAAAAAAOAAAAACAAIAAAAaAAAABwAAAAAAAQAEAAAAAAAAAAAACgAAAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAcAAAAAAAcAAAAAAAEABgBdAQAABwAAAAAACgACAAAACwEAAAIAAAAAAPMAAAAMAQAAAgAAAAAA9AAAAAcAAgAAAAIAAAAAAPMAAAACAAAAAAD0AAAABwAAAAAABwABAAAAAgACAAAAGgAAAAcAAAAAAAIAAgAAABoAAAAHAAAAAAAKAAAAAAAEAAEAAAAAAAAABwACAAAAAgAAAAAA8gAAAAIAAgAAABoAAAAHAAAAAAABAAQAAAAAAAAAAAAKAAAAAAAKAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEABwAAAAAABwAAAAAAAQAHAAIAAAAHAAIAAAADAAYAdAAAAAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAAAAAAAAAAAAEABAAAAAAAAAAAAAcAAgAAAAMABAADAAAAAAAAAAcAGgAAAAcADgAAAAMABgCJAAAABgCKAAAABgCLAAAABgCMAAAABgCNAAAABgCOAAAABgCPAAAABgCQAAAABgCRAAAABgCSAAAABgCTAAAABgCUAAAABgCVAAAABwAnAAAABQAAAAAAAAAYQAYAKQEAAAQAAwAAAAAAAAAFAAAAAAAAABhABgApAQAABAAEAAAAAAAAAAUAAAAAAAAAGEAGACkBAAAEAAYAAAAAAAAABQAAAAAAAAAYQAYAKQEAAAQACAAAAAAAAAAFAAAAAAAAABhABgApAQAABAAKAAAAAAAAAAUAAAAAAAAAGEAGACkBAAAEAAwAAAAAAAAABQAAAAAAAAAYQAYAKQEAAAQADgAAAAAAAAAFAAAAAAAAABhABgApAQAABAAQAAAAAAAAAAUAAAAAAAAAGEAGACkBAAAEABIAAAAAAAAABQAAAAAAAAAYQAYAKQEAAAQAFAAAAAAAAAAFAAAAAAAAABhABgApAQAABAAWAAAAAAAAAAUAAAAAAAAAGEAGACkBAAAEABgAAAAAAAAABQAAAAAAAAAYQAYAKQEAAAQAGQAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAFAAAAAAAAABhABgApAQAABAACAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAGIAAAAAAAAABAAFAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAG4AAAAAAAAABAAHAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAUAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAHIAAAAAAAAABAAJAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAYAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAHQAAAAAAAAABAALAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAcAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAGYAAAAAAAAABAANAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAgAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAGUAAAAAAAAABAAPAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAkAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAHgAAAAAAAAABAARAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAoAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAG8AAAAAAAAABAATAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAsAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAGMAAAAAAAAABAAVAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAwAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEADAAAAAAAAAABAAXAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAA0AAAAAAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAAAAAAAAAAAAEABAAAAAAAAAAAAAcADgAAAAMABAACAAAAAAAAAAQACQAAAAAAAAAEAA8AAAAAAAAABAAWAAAAAAAAAAQAHQAAAAAAAAAEACQAAAAAAAAABAArAAAAAAAAAAQAMgAAAAAAAAAEADkAAAAAAAAABABAAAAAAAAAAAQARwAAAAAAAAAEAE4AAAAAAAAABABVAAAAAAAAAAcAAgAAAAcAAgAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABwAGAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAABAAAAAAAAAAAAAAAAAAAAAQAEAAAAAAAAAAAABwACAAAABAADAAAAAAAAAAQABQAAAAAAAAAHABEAAAAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAgAAAAAAAAAHAAkAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHACcAAAAFAAAAAAAAABhABgApAQAABAAEAAAAAAAAAAUAAAAAAAAAGEAGACkBAAAEAAIAAAAAAAAABQAAAAAAAAAYQAYAKQEAAAQABQAAAAAAAAAFAAAAAAAAABhABgApAQAABAAGAAAAAAAAAAUAAAAAAAAAGEAGACkBAAAEAAcAAAAAAAAABQAAAAAAAAAYQAYAKQEAAAQACAAAAAAAAAAFAAAAAAAAABhABgApAQAABAAJAAAAAAAAAAUAAAAAAAAAGEAGACkBAAAEAAoAAAAAAAAABQAAAAAAAAAYQAYAKQEAAAQACwAAAAAAAAAFAAAAAAAAABhABgApAQAABAAMAAAAAAAAAAUAAAAAAAAAGEAGACkBAAAEAA0AAAAAAAAABQAAAAAAAAAYQAYAKQEAAAQADgAAAAAAAAAFAAAAAAAAABhABgApAQAABAACAAAAAAAAAAcAAwAAAAUAAAAAAAAAGEAGACkBAAAEAAIAAAAAAAAABwADAAAABAACAAAAAAAAAAQAYgAAAAAAAAAEAAIAAAAAAAAABwADAAAABAACAAAAAAAAAAQAbgAAAAAAAAAEAAIAAAAAAAAABwADAAAABAACAAAAAAAAAAQAcgAAAAAAAAAEAAIAAAAAAAAABwADAAAABAACAAAAAAAAAAQAdAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAACAAAAAAAAAAQAZgAAAAAAAAAEAAIAAAAAAAAABwADAAAABAACAAAAAAAAAAQAZQAAAAAAAAAEAAIAAAAAAAAABwADAAAABAACAAAAAAAAAAQAeAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAACAAAAAAAAAAQAbwAAAAAAAAAEAAIAAAAAAAAABwADAAAABAACAAAAAAAAAAQAYwAAAAAAAAAEAAIAAAAAAAAABwADAAAABAACAAAAAAAAAAQAMAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAEAAAAAAAAAAAABAABAAAAAAAAAAAAAAAAAAAAAQAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXAAAAAAAAAAEAGEAAAAAAAAABwAFAAAABwADAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAIAAAAAAAAABwAJAAAABQAAAAAAAAAoQAcAAgAAAAQAMAAAAAAAAAAEADkAAAAAAAAABAACAAAAAAAAAAUAAAAAAAAAKEAHAAIAAAAEAGEAAAAAAAAABABmAAAAAAAAAAQAAwAAAAAAAAAFAAAAAAAAAChABwACAAAABABBAAAAAAAAAAQARgAAAAAAAAAEAAQAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAEAAAAAAAAAAAABAABAAAAAAAAAAAAAAAAAAAAAQAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQABAAAAAAAAAAEAAYAAAAAAAAABwAOAAAABwAEAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAIAAAAAAAAABAADAAAAAAAAAAcADAAAAAUAAAAA+f//z8EEAGIAAAAAAAAABAADAAAAAAAAAAUAAAAAef//z8EEAG8AAAAAAAAABAAGAAAAAAAAAAUAAAAA+f7/z8EEAHgAAAAAAAAABAAJAAAAAAAAAAUAAAAAef7/z8EEAGQAAAAAAAAABAAMAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABAADAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAUAAAAAAAAAKEAHAAIAAAAEADAAAAAAAAAABAAxAAAAAAAAAAQABAAAAAAAAAAHAAYAAAAFAAAAAAAAAChABwACAAAABAAwAAAAAAAAAAQAMQAAAAAAAAAEAAQAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAEAAYAAAAAAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABwADAAAABQAAAAAAAAAoQAcAAgAAAAQAMAAAAAAAAAAEADcAAAAAAAAABAAHAAAAAAAAAAcABgAAAAUAAAAAAAAAKEAHAAIAAAAEADAAAAAAAAAABAA3AAAAAAAAAAQABwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABQAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABABfAAAAAAAAAAQACQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAQAAAAAAAAAAAAHAAkAAAAFAAAAAAAAAChABwACAAAABAAwAAAAAAAAAAQAOQAAAAAAAAAEAAoAAAAAAAAABQAAAAAAAAAoQAcAAgAAAAQAYQAAAAAAAAAEAGYAAAAAAAAABAAKAAAAAAAAAAUAAAAAAAAAKEAHAAIAAAAEAEEAAAAAAAAABABGAAAAAAAAAAQACgAAAAAAAAAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQACQAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQACAAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABABfAAAAAAAAAAQADAAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQADQAAAAAAAAAHAAYAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQADQAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQACwAAAAAAAAAEAAEAAAAAAAAAAAAAAAAAAAABAAQAAAAAAAAAAAAHAAQAAAAEAAIAAAAAAAAABAALAAAAAAAAAAQAFAAAAAAAAAAEAB0AAAAAAAAABwASAAAABwACAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAHAAYAAAAFAAAAAPn//8/BBAAwAAAAAAAAAAQAAgAAAAAAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQAEQAAAAAAAAAHAAwAAAAFAAAAAPn//8/BBABiAAAAAAAAAAQABAAAAAAAAAAFAAAAAPn//8/BBABvAAAAAAAAAAQABwAAAAAAAAAFAAAAAPn//8/BBAB4AAAAAAAAAAQACgAAAAAAAAAFAAAAAPn//8/BBABkAAAAAAAAAAQADQAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABABfAAAAAAAAAAQABAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAFAAAAAAAAAChABwACAAAABAAwAAAAAAAAAAQAMQAAAAAAAAAEAAUAAAAAAAAABwAGAAAABQAAAAAAAAAoQAcAAgAAAAQAMAAAAAAAAAAEADEAAAAAAAAABAAFAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABAAHAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAUAAAAAAAAAKEAHAAIAAAAEADAAAAAAAAAABAA3AAAAAAAAAAQACAAAAAAAAAAHAAYAAAAFAAAAAAAAAChABwACAAAABAAwAAAAAAAAAAQANwAAAAAAAAAEAAgAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAYAAAAAAAAABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAEAAoAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAJAAAABQAAAAAAAAAoQAcAAgAAAAQAMAAAAAAAAAAEADkAAAAAAAAABAALAAAAAAAAAAUAAAAAAAAAKEAHAAIAAAAEAGEAAAAAAAAABABmAAAAAAAAAAQACwAAAAAAAAAFAAAAAAAAAChABwACAAAABABBAAAAAAAAAAQARgAAAAAAAAAEAAsAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAoAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAkAAAAAAAAABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAEAA0AAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAA4AAAAAAAAABwAGAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAA4AAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAwAAAAAAAAABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAEABAAAAAAAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEABEAAAAAAAAABwAGAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEABEAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAA8AAAAAAAAABAABAAAAAAAAAAAAAAAAAAAAAQAEAAAAAAAAAAAABwACAAAABAACAAAAAAAAAAQAIQAAAAAAAAAHABEAAAAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAgAAAAAAAAAHAAkAAAAEAAIAAAAAAAAABAAuAAAAAAAAAAQAAgAAAAAAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQABwAAAAAAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQADQAAAAAAAAAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQAAwAAAAAAAAAHAAkAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQAAwAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABhABgAnAQAABAAEAAAAAAAAAAcABgAAAAUAAAAAAAAAGEAGACgBAAAEAAUAAAAAAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAAYAAAAAAAAABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAAYAAAAAAAAABwAGAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAAYAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAGAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAAcAAAAAAAAABAACAAAAAAAAAAQALgAAAAAAAAAEAAgAAAAAAAAABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAAkAAAAAAAAABwAJAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAAkAAAAAAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAYQAYAJwEAAAQACgAAAAAAAAAHAAYAAAAFAAAAAAAAABhABgAoAQAABAALAAAAAAAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAAMAAAAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAAMAAAAAAAAAAcABgAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAAMAAAAAAAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcABgAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAANAAAAAAAAAAUAAAAAAAAAGEAGACcBAAAEAA4AAAAAAAAABwAGAAAABQAAAAAAAAAYQAYAKAEAAAQADwAAAAAAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQAEAAAAAAAAAAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQAEAAAAAAAAAAHAAYAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQAEAAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAQAAAAAAAAAAAAEAAEAAAAAAAAAAAAAAAAAAAABAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABAANAAAAAAAAAAQAGgAAAAAAAAAHAAkAAAAHAAIAAAAEAAAAAAAAAAAABAABAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAUAAAAAef//z8EEAFsAAAAAAAAABAAHAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABAADAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcACQAAAAUAAAAAAAAAKEAHAAIAAAAEADAAAAAAAAAABAA5AAAAAAAAAAQABAAAAAAAAAAFAAAAAAAAAChABwACAAAABABhAAAAAAAAAAQAZgAAAAAAAAAEAAQAAAAAAAAABQAAAAAAAAAoQAcAAgAAAAQAQQAAAAAAAAAEAEYAAAAAAAAABAAEAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAF0AAAAAAAAABAAFAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAGAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEACwAAAAAAAAABAAHAAAAAAAAAAQAAgAAAAAAAAAEAF0AAAAAAAAABAAFAAAAAAAAAAQAAQAAAAAAAAAAAAAAAAAAAAEABAAAAAAAAAAAAAcAAgAAAAQAAgAAAAAAAAAEAAoAAAAAAAAABwAJAAAABwACAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAHAAYAAAAFAAAAAAAAAChABwACAAAABAAwAAAAAAAAAAQANwAAAAAAAAAEAAQAAAAAAAAABQAAAAB5///PwQQAWwAAAAAAAAAEAAcAAAAAAAAABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAEAAMAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABQAAAAAAAAAoQAcAAgAAAAQAMAAAAAAAAAAEADcAAAAAAAAABAAEAAAAAAAAAAcABgAAAAUAAAAAAAAAKEAHAAIAAAAEADAAAAAAAAAABAA3AAAAAAAAAAQABAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABdAAAAAAAAAAQABQAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQABgAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABAAsAAAAAAAAAAQABwAAAAAAAAAEAAIAAAAAAAAABABdAAAAAAAAAAQABQAAAAAAAAAEAAEAAAAAAAAAAAAAAAAAAAABAAQAAAAAAAAAAAAHAAIAAAAEAAIAAAAAAAAABAAKAAAAAAAAAAcABAAAAAcAAgAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABwAGAAAABQAAAAAAAAAUQAQAACAAAAAAAAAEAAIAAAAAAAAABQAAAAAAAAAQQAQAACAAAAAAAAAEAAMAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAABAAAAAAAAAAAAAAAAAAAAAQAEAAAAAAAAAAAABwACAAAABAACAAAAAAAAAAQABAAAAAAAAAAHAAoAAAAHAAQAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAgAAAAAAAAAEAAMAAAAAAAAABwAMAAAABQAAAAD5///PwQQAWwAAAAAAAAAEAAQAAAAAAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAAYAAAAAAAAABQAAAAAAAAAoQAcAAgAAAAQAPwAAAAAAAAAEAFoAAAAAAAAABAAJAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAF0AAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEACwAAAAAAAAABAAEAAAAAAAAAAQAAgAAAAAAAAAEAF0AAAAAAAAABAACAAAAAAAAAAcACQAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAAGAAAAAAAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABAAHAAAAAAAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAAIAAAAAAAAAAcABgAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAAIAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAGAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAAAAAAAAAAAAEABAAAAAAAAAAAAAcABAAAAAQAAgAAAAAAAAAEAAoAAAAAAAAABAARAAAAAAAAAAQAFAAAAAAAAAAGANwAAAADAAQAAAAAAAAAAAADAAMABAAAAAAAAAAAAAEAAQAGAN0AAAADAAQAAAAAAAAAAAADAAIAAgAAABoAAAAEAAEAAAAAAAAAAQABAAYA3gAAAAMABAAAAAAAAAAAAAMAAgACAAAAGgAAAAQAAQAAAAAAAAABAAEABgDfAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAABAAEABgDgAAAAAwAEAAAAAAAAAAAAAwACAAIAAAAaAAAABAABAAAAAAAAAAEAAQAGAOEAAAADAAQAAAAAAAAAAAADAAIAAgAAABoAAAAEAAEAAAAAAAAAAQABAAYA4gAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAAAQABAAYA4wAAAAMABAAAAAAAAAAAAAMAAgACAAAAGgAAAAQAAQAAAAAAAAABAAEABgDkAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAABAAEABgDlAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAABAAEABgDmAAAAAwAEAAAAAAAAAAAAAwACAAIAAAAaAAAABAABAAAAAAAAAAEAAQAGAOcAAAADAAQAAAAAAAAAAAADAAIAAgAAABoAAAAEAAEAAAAAAAAAAQABAAYA7QAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAAAQABAAYA7gAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAAAQABAAYA9gAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAAAQABAAYA7gAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAAAQABAAYA9wAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAAAQABAAYA+AAAAAMABAAAAAAAAAAAAAMAAgACAAAAGgAAAAQAAQAAAAAAAAABAAEABgAEAQAAAwAEAAAAAAAAAAAAAwACAAIAAAAaAAAABAABAAAAAAAAAAEAAQAGAAUBAAADAAQAAAAAAAAAAAADAAIAAgAAABoAAAAEAAEAAAAAAAAAAQABAAYABgEAAAMABAAAAAAAAAAAAAMAAgACAAAAGgAAAAQAAQAAAAAAAAABAAEABgAHAQAAAwAEAAAAAAAAAAAAAwACAAIAAAAaAAAABAABAAAAAAAAAAEAAQAGAAgBAAADAAQAAAAAAAAAAAADAAIAAgAAABoAAAAEAAEAAAAAAAAAAQABAAYACQEAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAAAQABAAYACgEAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAAAQABAAcAYgAAAAcACwAAAAMABgAOAQAABgAPAQAABgAQAQAABgARAQAABgASAQAABgATAQAABgAUAQAABgAVAQAABgAWAQAABgAXAQAABwAeAAAABQAAAAB5///PwQQAJQAAAAAAAAAEAAMAAAAAAAAABQAAAAD5/v/PwQQAJQAAAAAAAAAEAA0AAAAAAAAABQAAAAB5/v/PwQQAJQAAAAAAAAAEABUAAAAAAAAABQAAAAD5/f/PwQQAJQAAAAAAAAAEAB8AAAAAAAAABQAAAAB5/f/PwQQAJQAAAAAAAAAEACkAAAAAAAAABQAAAAD5/P/PwQQAJQAAAAAAAAAEADMAAAAAAAAABQAAAAB5/P/PwQQAJQAAAAAAAAAEAD0AAAAAAAAABQAAAAD5+//PwQQAJQAAAAAAAAAEAEcAAAAAAAAABQAAAAB5+//PwQQAJQAAAAAAAAAEAFEAAAAAAAAABQAAAAD5+v/PwQQAJQAAAAAAAAAEAFkAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAAgAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAUAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAkAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAYAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAoAAAAAAAAABwAGAAAABAACAAAAAAAAAAQALgAAAAAAAAAEAAsAAAAAAAAABQAAAAAAAAAYQAYAOAEAAAQAAgAAAAAAAAAHAAMAAAAFAAAAAAAAABhABgA4AQAABAACAAAAAAAAAAcABgAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAAIAAAAAAAAAAQAAgAAAAAAAAAEACQAAAAAAAAABAAEAAAAAAAAAAcADwAAAAQAAgAAAAAAAAAEACAAAAAAAAAABAAEAAAAAAAAAAQAAgAAAAAAAAAEACsAAAAAAAAABAAEAAAAAAAAAAQAAgAAAAAAAAAEAC0AAAAAAAAABAAEAAAAAAAAAAQAAgAAAAAAAAAEADAAAAAAAAAABAAEAAAAAAAAAAQAAgAAAAAAAAAEACMAAAAAAAAABAAEAAAAAAAAAAcACQAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAAKAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAGAAAAAAAAAAQAAgAAAAAAAAAEACoAAAAAAAAABAAGAAAAAAAAAAcACQAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAALAAAAAAAAAAUAAAAAAAAAGEAGADgBAAAEAAIAAAAAAAAABAACAAAAAAAAAAQAKgAAAAAAAAAEAAcAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAEAAAAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAA4AAAAAAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEABEAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAA8AAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEABIAAAAAAAAABwAGAAAABAACAAAAAAAAAAQAYwAAAAAAAAAEAAwAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEABMAAAAAAAAABwADAAAABAACAAAAAAAAAAQAYwAAAAAAAAAEAAwAAAAAAAAABwAGAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEABEAAAAAAAAABAACAAAAAAAAAAQAJAAAAAAAAAAEAA4AAAAAAAAABwAPAAAABAACAAAAAAAAAAQAIAAAAAAAAAAEAA4AAAAAAAAABAACAAAAAAAAAAQAKwAAAAAAAAAEAA4AAAAAAAAABAACAAAAAAAAAAQALQAAAAAAAAAEAA4AAAAAAAAABAACAAAAAAAAAAQAMAAAAAAAAAAEAA4AAAAAAAAABAACAAAAAAAAAAQAIwAAAAAAAAAEAA4AAAAAAAAABwAJAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEABMAAAAAAAAABAACAAAAAAAAAAQAYwAAAAAAAAAEAAwAAAAAAAAABAACAAAAAAAAAAQAKgAAAAAAAAAEABAAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAEAAAAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEABYAAAAAAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEABoAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEABcAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEABsAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEABgAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEABwAAAAAAAAABwAGAAAABAACAAAAAAAAAAQALgAAAAAAAAAEAB0AAAAAAAAABQAAAAAAAAAYQAYAOQEAAAQAFAAAAAAAAAAHAAMAAAAFAAAAAAAAABhABgA5AQAABAAUAAAAAAAAAAcABgAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAAaAAAAAAAAAAQAAgAAAAAAAAAEACQAAAAAAAAABAAWAAAAAAAAAAcADwAAAAQAAgAAAAAAAAAEACAAAAAAAAAABAAWAAAAAAAAAAQAAgAAAAAAAAAEACsAAAAAAAAABAAWAAAAAAAAAAQAAgAAAAAAAAAEAC0AAAAAAAAABAAWAAAAAAAAAAQAAgAAAAAAAAAEADAAAAAAAAAABAAWAAAAAAAAAAQAAgAAAAAAAAAEACMAAAAAAAAABAAWAAAAAAAAAAcACQAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAAcAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAYAAAAAAAAAAQAAgAAAAAAAAAEACoAAAAAAAAABAAYAAAAAAAAAAcACQAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAAdAAAAAAAAAAUAAAAAAAAAGEAGADkBAAAEABQAAAAAAAAABAACAAAAAAAAAAQAKgAAAAAAAAAEABkAAAAAAAAABwADAAAABAAAAAAAAAAAAAQABAAAAAAAAAAEAAAAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEACAAAAAAAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEACQAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEACEAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEACUAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEACIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEACYAAAAAAAAABwAGAAAABAACAAAAAAAAAAQALgAAAAAAAAAEACcAAAAAAAAABQAAAAAAAAAYQAYAOgEAAAQAHgAAAAAAAAAHAAMAAAAFAAAAAAAAABhABgA6AQAABAAeAAAAAAAAAAcABgAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAAkAAAAAAAAAAQAAgAAAAAAAAAEACQAAAAAAAAABAAgAAAAAAAAAAcADwAAAAQAAgAAAAAAAAAEACAAAAAAAAAABAAgAAAAAAAAAAQAAgAAAAAAAAAEACsAAAAAAAAABAAgAAAAAAAAAAQAAgAAAAAAAAAEAC0AAAAAAAAABAAgAAAAAAAAAAQAAgAAAAAAAAAEADAAAAAAAAAABAAgAAAAAAAAAAQAAgAAAAAAAAAEACMAAAAAAAAABAAgAAAAAAAAAAcACQAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAAmAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAiAAAAAAAAAAQAAgAAAAAAAAAEACoAAAAAAAAABAAiAAAAAAAAAAcACQAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAAnAAAAAAAAAAUAAAAAAAAAGEAGADoBAAAEAB4AAAAAAAAABAACAAAAAAAAAAQAKgAAAAAAAAAEACMAAAAAAAAABwADAAAABAAAAAAAAAAAAAQABQAAAAAAAAAEAAAAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEACoAAAAAAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAC4AAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEACsAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAC8AAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEACwAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEADAAAAAAAAAABwAGAAAABAACAAAAAAAAAAQALgAAAAAAAAAEADEAAAAAAAAABQAAAAAAAAAYQAYAOwEAAAQAKAAAAAAAAAAHAAMAAAAFAAAAAAAAABhABgA7AQAABAAoAAAAAAAAAAcABgAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAAuAAAAAAAAAAQAAgAAAAAAAAAEACQAAAAAAAAABAAqAAAAAAAAAAcADwAAAAQAAgAAAAAAAAAEACAAAAAAAAAABAAqAAAAAAAAAAQAAgAAAAAAAAAEACsAAAAAAAAABAAqAAAAAAAAAAQAAgAAAAAAAAAEAC0AAAAAAAAABAAqAAAAAAAAAAQAAgAAAAAAAAAEADAAAAAAAAAABAAqAAAAAAAAAAQAAgAAAAAAAAAEACMAAAAAAAAABAAqAAAAAAAAAAcACQAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAAwAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAsAAAAAAAAAAQAAgAAAAAAAAAEACoAAAAAAAAABAAsAAAAAAAAAAcACQAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAAxAAAAAAAAAAUAAAAAAAAAGEAGADsBAAAEACgAAAAAAAAABAACAAAAAAAAAAQAKgAAAAAAAAAEAC0AAAAAAAAABwADAAAABAAAAAAAAAAAAAQABgAAAAAAAAAEAAAAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEADQAAAAAAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEADgAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEADUAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEADkAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEADYAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEADoAAAAAAAAABwAGAAAABAACAAAAAAAAAAQALgAAAAAAAAAEADsAAAAAAAAABQAAAAAAAAAYQAYAPAEAAAQAMgAAAAAAAAAHAAMAAAAFAAAAAAAAABhABgA8AQAABAAyAAAAAAAAAAcABgAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAA4AAAAAAAAAAQAAgAAAAAAAAAEACQAAAAAAAAABAA0AAAAAAAAAAcADwAAAAQAAgAAAAAAAAAEACAAAAAAAAAABAA0AAAAAAAAAAQAAgAAAAAAAAAEACsAAAAAAAAABAA0AAAAAAAAAAQAAgAAAAAAAAAEAC0AAAAAAAAABAA0AAAAAAAAAAQAAgAAAAAAAAAEADAAAAAAAAAABAA0AAAAAAAAAAQAAgAAAAAAAAAEACMAAAAAAAAABAA0AAAAAAAAAAcACQAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAA6AAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAA2AAAAAAAAAAQAAgAAAAAAAAAEACoAAAAAAAAABAA2AAAAAAAAAAcACQAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAA7AAAAAAAAAAUAAAAAAAAAGEAGADwBAAAEADIAAAAAAAAABAACAAAAAAAAAAQAKgAAAAAAAAAEADcAAAAAAAAABwADAAAABAAAAAAAAAAAAAQABwAAAAAAAAAEAAAAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAD4AAAAAAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAEIAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAD8AAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAEMAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAEAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAEQAAAAAAAAABwAGAAAABAACAAAAAAAAAAQALgAAAAAAAAAEAEUAAAAAAAAABAACAAAAAAAAAAQAbwAAAAAAAAAEADwAAAAAAAAABwADAAAABAACAAAAAAAAAAQAbwAAAAAAAAAEADwAAAAAAAAABwAGAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAEIAAAAAAAAABAACAAAAAAAAAAQAJAAAAAAAAAAEAD4AAAAAAAAABwAPAAAABAACAAAAAAAAAAQAIAAAAAAAAAAEAD4AAAAAAAAABAACAAAAAAAAAAQAKwAAAAAAAAAEAD4AAAAAAAAABAACAAAAAAAAAAQALQAAAAAAAAAEAD4AAAAAAAAABAACAAAAAAAAAAQAMAAAAAAAAAAEAD4AAAAAAAAABAACAAAAAAAAAAQAIwAAAAAAAAAEAD4AAAAAAAAABwAJAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAEQAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAEAAAAAAAAAABAACAAAAAAAAAAQAKgAAAAAAAAAEAEAAAAAAAAAABwAJAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAEUAAAAAAAAABAACAAAAAAAAAAQAbwAAAAAAAAAEADwAAAAAAAAABAACAAAAAAAAAAQAKgAAAAAAAAAEAEEAAAAAAAAABwADAAAABAAAAAAAAAAAAAQACAAAAAAAAAAEAAAAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAEgAAAAAAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAEwAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAEkAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAE0AAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAEoAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAE4AAAAAAAAABwAGAAAABAACAAAAAAAAAAQALgAAAAAAAAAEAE8AAAAAAAAABAACAAAAAAAAAAQAcwAAAAAAAAAEAEYAAAAAAAAABwADAAAABAACAAAAAAAAAAQAcwAAAAAAAAAEAEYAAAAAAAAABwAGAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAEwAAAAAAAAABAACAAAAAAAAAAQAJAAAAAAAAAAEAEgAAAAAAAAABwAPAAAABAACAAAAAAAAAAQAIAAAAAAAAAAEAEgAAAAAAAAABAACAAAAAAAAAAQAKwAAAAAAAAAEAEgAAAAAAAAABAACAAAAAAAAAAQALQAAAAAAAAAEAEgAAAAAAAAABAACAAAAAAAAAAQAMAAAAAAAAAAEAEgAAAAAAAAABAACAAAAAAAAAAQAIwAAAAAAAAAEAEgAAAAAAAAABwAJAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAE4AAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAEoAAAAAAAAABAACAAAAAAAAAAQAKgAAAAAAAAAEAEoAAAAAAAAABwAJAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAE8AAAAAAAAABAACAAAAAAAAAAQAcwAAAAAAAAAEAEYAAAAAAAAABAACAAAAAAAAAAQAKgAAAAAAAAAEAEsAAAAAAAAABwADAAAABAAAAAAAAAAAAAQACQAAAAAAAAAEAAAAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAFIAAAAAAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAFUAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAFMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAFYAAAAAAAAABwAGAAAABAACAAAAAAAAAAQAdQAAAAAAAAAEAFAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAFcAAAAAAAAABwADAAAABAACAAAAAAAAAAQAdQAAAAAAAAAEAFAAAAAAAAAABwAGAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAFUAAAAAAAAABAACAAAAAAAAAAQAJAAAAAAAAAAEAFIAAAAAAAAABwAPAAAABAACAAAAAAAAAAQAIAAAAAAAAAAEAFIAAAAAAAAABAACAAAAAAAAAAQAKwAAAAAAAAAEAFIAAAAAAAAABAACAAAAAAAAAAQALQAAAAAAAAAEAFIAAAAAAAAABAACAAAAAAAAAAQAMAAAAAAAAAAEAFIAAAAAAAAABAACAAAAAAAAAAQAIwAAAAAAAAAEAFIAAAAAAAAABwAJAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAFcAAAAAAAAABAACAAAAAAAAAAQAdQAAAAAAAAAEAFAAAAAAAAAABAACAAAAAAAAAAQAKgAAAAAAAAAEAFQAAAAAAAAABwADAAAABAAAAAAAAAAAAAQACgAAAAAAAAAEAAAAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAFoAAAAAAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAF4AAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAFsAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAF8AAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAFwAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAGAAAAAAAAAABwAGAAAABAACAAAAAAAAAAQALgAAAAAAAAAEAGEAAAAAAAAABQAAAAAAAAAYQAYAPQEAAAQAWAAAAAAAAAAHAAMAAAAFAAAAAAAAABhABgA9AQAABABYAAAAAAAAAAcABgAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABABeAAAAAAAAAAQAAgAAAAAAAAAEACQAAAAAAAAABABaAAAAAAAAAAcADwAAAAQAAgAAAAAAAAAEACAAAAAAAAAABABaAAAAAAAAAAQAAgAAAAAAAAAEACsAAAAAAAAABABaAAAAAAAAAAQAAgAAAAAAAAAEAC0AAAAAAAAABABaAAAAAAAAAAQAAgAAAAAAAAAEADAAAAAAAAAABABaAAAAAAAAAAQAAgAAAAAAAAAEACMAAAAAAAAABABaAAAAAAAAAAcACQAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABABgAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABcAAAAAAAAAAQAAgAAAAAAAAAEACoAAAAAAAAABABcAAAAAAAAAAcACQAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABABhAAAAAAAAAAUAAAAAAAAAGEAGAD0BAAAEAFgAAAAAAAAABAACAAAAAAAAAAQAKgAAAAAAAAAEAF0AAAAAAAAABAABAAAAAAAAAAAAAAAAAAAAAQAEAAAAAAAAAAAABwALAAAAAwAEAAIAAAAAAAAABAAUAAAAAAAAAAQAIgAAAAAAAAAEADQAAAAAAAAABABGAAAAAAAAAAQAWAAAAAAAAAAEAGoAAAAAAAAABAB8AAAAAAAAAAQAjgAAAAAAAAAEAJwAAAAAAAAABwAIAAAABwACAAAAAwAGABkBAAAHAAMAAAAFAAAAAHn//8/BBAAlAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABgAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABAAlAAAAAAAAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABwAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABAAlAAAAAAAAAAQAAgAAAAAAAAAHAA8AAAAEAAIAAAAAAAAABAAgAAAAAAAAAAQAAwAAAAAAAAAEAAIAAAAAAAAABAArAAAAAAAAAAQAAwAAAAAAAAAEAAIAAAAAAAAABAAtAAAAAAAAAAQAAwAAAAAAAAAEAAIAAAAAAAAABAAwAAAAAAAAAAQAAwAAAAAAAAAEAAIAAAAAAAAABAAjAAAAAAAAAAQAAwAAAAAAAAAHAAkAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQABwAAAAAAAAAEAAIAAAAAAAAABAAlAAAAAAAAAAQAAgAAAAAAAAAEAAIAAAAAAAAABAAqAAAAAAAAAAQABQAAAAAAAAAEAAEAAAAAAAAAAAAAAAAAAAABAAQAAAAAAAAAAAAHAAIAAAADAAQAAgAAAAAAAAAHAGAAAAAHAAIAAAAEAAAAAAAAAAAABAABAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAUAAAAAef//z8EEACUAAAAAAAAABABbAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAHgAAAAUAAAAA+f//z8EEACUAAAAAAAAABAAEAAAAAAAAAAUAAAAA+f//z8EEACUAAAAAAAAABAANAAAAAAAAAAUAAAAA+f//z8EEACUAAAAAAAAABAAUAAAAAAAAAAUAAAAA+f//z8EEACUAAAAAAAAABAAdAAAAAAAAAAUAAAAA+f//z8EEACUAAAAAAAAABAAmAAAAAAAAAAUAAAAA+f//z8EEACUAAAAAAAAABAAvAAAAAAAAAAUAAAAA+f//z8EEACUAAAAAAAAABAA4AAAAAAAAAAUAAAAA+f//z8EEACUAAAAAAAAABABBAAAAAAAAAAUAAAAA+f//z8EEACUAAAAAAAAABABKAAAAAAAAAAUAAAAA+f//z8EEACUAAAAAAAAABABRAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAFAAAAAAAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAAJAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAGAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAKAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAHAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAALAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEAC4AAAAAAAAABAAMAAAAAAAAAAUAAAAAAAAAGEAGADgBAAAEAAIAAAAAAAAABwADAAAABQAAAAAAAAAYQAYAOAEAAAQAAgAAAAAAAAAHAAYAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQACQAAAAAAAAAEAAIAAAAAAAAABAAkAAAAAAAAAAQABQAAAAAAAAAHAA8AAAAEAAIAAAAAAAAABAAgAAAAAAAAAAQABQAAAAAAAAAEAAIAAAAAAAAABAArAAAAAAAAAAQABQAAAAAAAAAEAAIAAAAAAAAABAAtAAAAAAAAAAQABQAAAAAAAAAEAAIAAAAAAAAABAAwAAAAAAAAAAQABQAAAAAAAAAEAAIAAAAAAAAABAAjAAAAAAAAAAQABQAAAAAAAAAHAAkAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQACwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABwAAAAAAAAAEAAIAAAAAAAAABAAqAAAAAAAAAAQABwAAAAAAAAAHAAkAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQADAAAAAAAAAAFAAAAAAAAABhABgA4AQAABAACAAAAAAAAAAQAAgAAAAAAAAAEACoAAAAAAAAABAAIAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAOAAAAAAAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAARAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAPAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAASAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEAGMAAAAAAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAATAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAGMAAAAAAAAABAACAAAAAAAAAAcABgAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAARAAAAAAAAAAQAAgAAAAAAAAAEACQAAAAAAAAABAAOAAAAAAAAAAcADwAAAAQAAgAAAAAAAAAEACAAAAAAAAAABAAOAAAAAAAAAAQAAgAAAAAAAAAEACsAAAAAAAAABAAOAAAAAAAAAAQAAgAAAAAAAAAEAC0AAAAAAAAABAAOAAAAAAAAAAQAAgAAAAAAAAAEADAAAAAAAAAABAAOAAAAAAAAAAQAAgAAAAAAAAAEACMAAAAAAAAABAAOAAAAAAAAAAcACQAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAATAAAAAAAAAAQAAgAAAAAAAAAEAGMAAAAAAAAABAACAAAAAAAAAAQAAgAAAAAAAAAEACoAAAAAAAAABAAQAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAVAAAAAAAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAAZAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAWAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAaAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAXAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAbAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEAC4AAAAAAAAABAAcAAAAAAAAAAUAAAAAAAAAGEAGADkBAAAEAAIAAAAAAAAABwADAAAABQAAAAAAAAAYQAYAOQEAAAQAAgAAAAAAAAAHAAYAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQAGQAAAAAAAAAEAAIAAAAAAAAABAAkAAAAAAAAAAQAFQAAAAAAAAAHAA8AAAAEAAIAAAAAAAAABAAgAAAAAAAAAAQAFQAAAAAAAAAEAAIAAAAAAAAABAArAAAAAAAAAAQAFQAAAAAAAAAEAAIAAAAAAAAABAAtAAAAAAAAAAQAFQAAAAAAAAAEAAIAAAAAAAAABAAwAAAAAAAAAAQAFQAAAAAAAAAEAAIAAAAAAAAABAAjAAAAAAAAAAQAFQAAAAAAAAAHAAkAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQAGwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAFwAAAAAAAAAEAAIAAAAAAAAABAAqAAAAAAAAAAQAFwAAAAAAAAAHAAkAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQAHAAAAAAAAAAFAAAAAAAAABhABgA5AQAABAACAAAAAAAAAAQAAgAAAAAAAAAEACoAAAAAAAAABAAYAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAeAAAAAAAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAAiAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAfAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAjAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAgAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAkAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEAC4AAAAAAAAABAAlAAAAAAAAAAUAAAAAAAAAGEAGADoBAAAEAAIAAAAAAAAABwADAAAABQAAAAAAAAAYQAYAOgEAAAQAAgAAAAAAAAAHAAYAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQAIgAAAAAAAAAEAAIAAAAAAAAABAAkAAAAAAAAAAQAHgAAAAAAAAAHAA8AAAAEAAIAAAAAAAAABAAgAAAAAAAAAAQAHgAAAAAAAAAEAAIAAAAAAAAABAArAAAAAAAAAAQAHgAAAAAAAAAEAAIAAAAAAAAABAAtAAAAAAAAAAQAHgAAAAAAAAAEAAIAAAAAAAAABAAwAAAAAAAAAAQAHgAAAAAAAAAEAAIAAAAAAAAABAAjAAAAAAAAAAQAHgAAAAAAAAAHAAkAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQAJAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAIAAAAAAAAAAEAAIAAAAAAAAABAAqAAAAAAAAAAQAIAAAAAAAAAAHAAkAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQAJQAAAAAAAAAFAAAAAAAAABhABgA6AQAABAACAAAAAAAAAAQAAgAAAAAAAAAEACoAAAAAAAAABAAhAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAnAAAAAAAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAArAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAoAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAsAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAApAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAtAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEAC4AAAAAAAAABAAuAAAAAAAAAAUAAAAAAAAAGEAGADsBAAAEAAIAAAAAAAAABwADAAAABQAAAAAAAAAYQAYAOwEAAAQAAgAAAAAAAAAHAAYAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQAKwAAAAAAAAAEAAIAAAAAAAAABAAkAAAAAAAAAAQAJwAAAAAAAAAHAA8AAAAEAAIAAAAAAAAABAAgAAAAAAAAAAQAJwAAAAAAAAAEAAIAAAAAAAAABAArAAAAAAAAAAQAJwAAAAAAAAAEAAIAAAAAAAAABAAtAAAAAAAAAAQAJwAAAAAAAAAEAAIAAAAAAAAABAAwAAAAAAAAAAQAJwAAAAAAAAAEAAIAAAAAAAAABAAjAAAAAAAAAAQAJwAAAAAAAAAHAAkAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQALQAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAKQAAAAAAAAAEAAIAAAAAAAAABAAqAAAAAAAAAAQAKQAAAAAAAAAHAAkAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQALgAAAAAAAAAFAAAAAAAAABhABgA7AQAABAACAAAAAAAAAAQAAgAAAAAAAAAEACoAAAAAAAAABAAqAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAwAAAAAAAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAA0AAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAxAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAA1AAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAyAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAA2AAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEAC4AAAAAAAAABAA3AAAAAAAAAAUAAAAAAAAAGEAGADwBAAAEAAIAAAAAAAAABwADAAAABQAAAAAAAAAYQAYAPAEAAAQAAgAAAAAAAAAHAAYAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQANAAAAAAAAAAEAAIAAAAAAAAABAAkAAAAAAAAAAQAMAAAAAAAAAAHAA8AAAAEAAIAAAAAAAAABAAgAAAAAAAAAAQAMAAAAAAAAAAEAAIAAAAAAAAABAArAAAAAAAAAAQAMAAAAAAAAAAEAAIAAAAAAAAABAAtAAAAAAAAAAQAMAAAAAAAAAAEAAIAAAAAAAAABAAwAAAAAAAAAAQAMAAAAAAAAAAEAAIAAAAAAAAABAAjAAAAAAAAAAQAMAAAAAAAAAAHAAkAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQANgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAMgAAAAAAAAAEAAIAAAAAAAAABAAqAAAAAAAAAAQAMgAAAAAAAAAHAAkAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQANwAAAAAAAAAFAAAAAAAAABhABgA8AQAABAACAAAAAAAAAAQAAgAAAAAAAAAEACoAAAAAAAAABAAzAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAA5AAAAAAAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAA9AAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAA6AAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAA+AAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAA7AAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAA/AAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEAC4AAAAAAAAABABAAAAAAAAAAAQAAgAAAAAAAAAEAG8AAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAG8AAAAAAAAABAACAAAAAAAAAAcABgAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAA9AAAAAAAAAAQAAgAAAAAAAAAEACQAAAAAAAAABAA5AAAAAAAAAAcADwAAAAQAAgAAAAAAAAAEACAAAAAAAAAABAA5AAAAAAAAAAQAAgAAAAAAAAAEACsAAAAAAAAABAA5AAAAAAAAAAQAAgAAAAAAAAAEAC0AAAAAAAAABAA5AAAAAAAAAAQAAgAAAAAAAAAEADAAAAAAAAAABAA5AAAAAAAAAAQAAgAAAAAAAAAEACMAAAAAAAAABAA5AAAAAAAAAAcACQAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAA/AAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAA7AAAAAAAAAAQAAgAAAAAAAAAEACoAAAAAAAAABAA7AAAAAAAAAAcACQAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABABAAAAAAAAAAAQAAgAAAAAAAAAEAG8AAAAAAAAABAACAAAAAAAAAAQAAgAAAAAAAAAEACoAAAAAAAAABAA8AAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABCAAAAAAAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABABGAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABDAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABHAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABEAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABIAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEAC4AAAAAAAAABABJAAAAAAAAAAQAAgAAAAAAAAAEAHMAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAHMAAAAAAAAABAACAAAAAAAAAAcABgAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABABGAAAAAAAAAAQAAgAAAAAAAAAEACQAAAAAAAAABABCAAAAAAAAAAcADwAAAAQAAgAAAAAAAAAEACAAAAAAAAAABABCAAAAAAAAAAQAAgAAAAAAAAAEACsAAAAAAAAABABCAAAAAAAAAAQAAgAAAAAAAAAEAC0AAAAAAAAABABCAAAAAAAAAAQAAgAAAAAAAAAEADAAAAAAAAAABABCAAAAAAAAAAQAAgAAAAAAAAAEACMAAAAAAAAABABCAAAAAAAAAAcACQAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABABIAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABEAAAAAAAAAAQAAgAAAAAAAAAEACoAAAAAAAAABABEAAAAAAAAAAcACQAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABABJAAAAAAAAAAQAAgAAAAAAAAAEAHMAAAAAAAAABAACAAAAAAAAAAQAAgAAAAAAAAAEACoAAAAAAAAABABFAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABLAAAAAAAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABABOAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABMAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABPAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEAHUAAAAAAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABQAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAHUAAAAAAAAABAACAAAAAAAAAAcABgAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABABOAAAAAAAAAAQAAgAAAAAAAAAEACQAAAAAAAAABABLAAAAAAAAAAcADwAAAAQAAgAAAAAAAAAEACAAAAAAAAAABABLAAAAAAAAAAQAAgAAAAAAAAAEACsAAAAAAAAABABLAAAAAAAAAAQAAgAAAAAAAAAEAC0AAAAAAAAABABLAAAAAAAAAAQAAgAAAAAAAAAEADAAAAAAAAAABABLAAAAAAAAAAQAAgAAAAAAAAAEACMAAAAAAAAABABLAAAAAAAAAAcACQAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABABQAAAAAAAAAAQAAgAAAAAAAAAEAHUAAAAAAAAABAACAAAAAAAAAAQAAgAAAAAAAAAEACoAAAAAAAAABABNAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABSAAAAAAAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABABWAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABTAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABXAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABUAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABYAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEAC4AAAAAAAAABABZAAAAAAAAAAUAAAAAAAAAGEAGAD0BAAAEAAIAAAAAAAAABwADAAAABQAAAAAAAAAYQAYAPQEAAAQAAgAAAAAAAAAHAAYAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQAVgAAAAAAAAAEAAIAAAAAAAAABAAkAAAAAAAAAAQAUgAAAAAAAAAHAA8AAAAEAAIAAAAAAAAABAAgAAAAAAAAAAQAUgAAAAAAAAAEAAIAAAAAAAAABAArAAAAAAAAAAQAUgAAAAAAAAAEAAIAAAAAAAAABAAtAAAAAAAAAAQAUgAAAAAAAAAEAAIAAAAAAAAABAAwAAAAAAAAAAQAUgAAAAAAAAAEAAIAAAAAAAAABAAjAAAAAAAAAAQAUgAAAAAAAAAHAAkAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQAWAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAVAAAAAAAAAAEAAIAAAAAAAAABAAqAAAAAAAAAAQAVAAAAAAAAAAHAAkAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQAWQAAAAAAAAAFAAAAAAAAABhABgA9AQAABAACAAAAAAAAAAQAAgAAAAAAAAAEACoAAAAAAAAABABVAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABcAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABeAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEACUAAAAAAAAABABaAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABfAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEACUAAAAAAAAABABaAAAAAAAAAAcADwAAAAQAAgAAAAAAAAAEACAAAAAAAAAABABbAAAAAAAAAAQAAgAAAAAAAAAEACsAAAAAAAAABABbAAAAAAAAAAQAAgAAAAAAAAAEAC0AAAAAAAAABABbAAAAAAAAAAQAAgAAAAAAAAAEADAAAAAAAAAABABbAAAAAAAAAAQAAgAAAAAAAAAEACMAAAAAAAAABABbAAAAAAAAAAcACQAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABABfAAAAAAAAAAQAAgAAAAAAAAAEACUAAAAAAAAABABaAAAAAAAAAAQAAgAAAAAAAAAEACoAAAAAAAAABABdAAAAAAAAAAQAAQAAAAAAAAAAAAAAAAAAAAEABAAAAAAAAAAAAAcAAgAAAAQAAgAAAAAAAAAEALIAAAAAAAAABwAEAAAABwACAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAHAAYAAAAFAAAAAAAAABhABgA0AQAABAACAAAAAAAAAAUAAAAAAAAAHEAGADQBAAAEAAMAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAABAAAAAAAAAAAAAAAAAAAAAQAEAAAAAAAAAAAABwACAAAABAACAAAAAAAAAAQABQAAAAAAAAAHAAcAAAAHAAUAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAgAAAAAAAAAEAAMAAAAAAAAABAAEAAAAAAAAAAcADwAAAAQAAgAAAAAAAAAEACAAAAAAAAAABAACAAAAAAAAAAQAAgAAAAAAAAAEACsAAAAAAAAABAADAAAAAAAAAAQAAgAAAAAAAAAEAC0AAAAAAAAABAAEAAAAAAAAAAQAAgAAAAAAAAAEADAAAAAAAAAABAAFAAAAAAAAAAQAAgAAAAAAAAAEACMAAAAAAAAABAAGAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAAAAAAAAAAAAEABAAAAAAAAAAAAAcABQAAAAQAAgAAAAAAAAAEAAQAAAAAAAAABAAGAAAAAAAAAAQACAAAAAAAAAAEAAoAAAAAAAAABwAEAAAABwACAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAEAAIAAAAAAAAABAAqAAAAAAAAAAQAAwAAAAAAAAAHAAYAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQAAgAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAEAAAAAAAAAAAAAAAAAAAABAAQAAAAAAAAAAAAHAAIAAAAEAAIAAAAAAAAABAAEAAAAAAAAAAIAAAAHAAAAAAAKAAAAAAADAAAABwAAAAAACgAAAAAABAAAAAcAAAAAAAoAAAAAAAYATQEAAAIAAAAAABgAAAAHAAAAAAAKAAEAAADbAAAAAgAAAAAAAAEAAAcAAAAAAAcAAAAAAAcAAAAAAAcAAAAAAAQAAQAAAAAAAABeAQAABwAAAAAACgAAAAAAYQEAAAcAAAAAAAoAAAAAAAAAAAAUAAAAAQAAAAEAAAAAAAAAAAEAAAAAAAAVAAAAAAAAAAAAAAADAAAAAAAAAH4BAAACAAAAAAAYAAAAfwEAAAIAAAAAABgAAACAAQAAAgAAAAAAfwAAAA==", cur_sc, $P5004, $P5006, conflicts
    unless conflicts goto if1293_end2889 
    die "Repossession conflicts occurred during deserialization"
  if1293_end2889:
    .const 'Sub' $P5001 = "cuid_1_1431289891.89934" 
    nqp_get_sc_object $P5002, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 4
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5003 = "cuid_2_1431289891.89934" 
    nqp_get_sc_object $P5004, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 5
    set_sub_code_object $P5003, $P5004
    .const 'Sub' $P5005 = "cuid_3_1431289891.89934" 
    nqp_get_sc_object $P5006, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 6
    set_sub_code_object $P5005, $P5006
    .const 'Sub' $P5007 = "cuid_4_1431289891.89934" 
    nqp_get_sc_object $P5008, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 7
    set_sub_code_object $P5007, $P5008
    .const 'Sub' $P5009 = "cuid_5_1431289891.89934" 
    nqp_get_sc_object $P5010, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 8
    set_sub_code_object $P5009, $P5010
    .const 'Sub' $P5011 = "cuid_6_1431289891.89934" 
    nqp_get_sc_object $P5012, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 9
    set_sub_code_object $P5011, $P5012
    .const 'Sub' $P5013 = "cuid_7_1431289891.89934" 
    nqp_get_sc_object $P5014, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 10
    set_sub_code_object $P5013, $P5014
    .const 'Sub' $P5015 = "cuid_8_1431289891.89934" 
    nqp_get_sc_object $P5016, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 11
    set_sub_code_object $P5015, $P5016
    .const 'Sub' $P5017 = "cuid_9_1431289891.89934" 
    nqp_get_sc_object $P5018, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 12
    set_sub_code_object $P5017, $P5018
    .const 'Sub' $P5019 = "cuid_10_1431289891.89934" 
    nqp_get_sc_object $P5020, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 13
    set_sub_code_object $P5019, $P5020
    .const 'Sub' $P5021 = "cuid_11_1431289891.89934" 
    nqp_get_sc_object $P5022, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 14
    set_sub_code_object $P5021, $P5022
    .const 'Sub' $P5023 = "cuid_12_1431289891.89934" 
    nqp_get_sc_object $P5024, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 15
    set_sub_code_object $P5023, $P5024
    .const 'Sub' $P5025 = "cuid_13_1431289891.89934" 
    nqp_get_sc_object $P5026, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 16
    set_sub_code_object $P5025, $P5026
    .const 'Sub' $P5027 = "cuid_14_1431289891.89934" 
    nqp_get_sc_object $P5028, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 17
    set_sub_code_object $P5027, $P5028
    .const 'Sub' $P5029 = "cuid_15_1431289891.89934" 
    nqp_get_sc_object $P5030, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 18
    set_sub_code_object $P5029, $P5030
    .const 'Sub' $P5031 = "cuid_16_1431289891.89934" 
    nqp_get_sc_object $P5032, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 19
    set_sub_code_object $P5031, $P5032
    .const 'Sub' $P5033 = "cuid_17_1431289891.89934" 
    nqp_get_sc_object $P5034, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 20
    set_sub_code_object $P5033, $P5034
    .const 'Sub' $P5035 = "cuid_18_1431289891.89934" 
    nqp_get_sc_object $P5036, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 21
    set_sub_code_object $P5035, $P5036
    .const 'Sub' $P5037 = "cuid_19_1431289891.89934" 
    nqp_get_sc_object $P5038, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 22
    set_sub_code_object $P5037, $P5038
    .const 'Sub' $P5039 = "cuid_20_1431289891.89934" 
    nqp_get_sc_object $P5040, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 23
    set_sub_code_object $P5039, $P5040
    .const 'Sub' $P5041 = "cuid_21_1431289891.89934" 
    nqp_get_sc_object $P5042, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 25
    set_sub_code_object $P5041, $P5042
    .const 'Sub' $P5043 = "cuid_22_1431289891.89934" 
    nqp_get_sc_object $P5044, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 26
    set_sub_code_object $P5043, $P5044
    .const 'Sub' $P5045 = "cuid_23_1431289891.89934" 
    nqp_get_sc_object $P5046, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 28
    set_sub_code_object $P5045, $P5046
    .const 'Sub' $P5047 = "cuid_24_1431289891.89934" 
    nqp_get_sc_object $P5048, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 29
    set_sub_code_object $P5047, $P5048
    .const 'Sub' $P5049 = "cuid_25_1431289891.89934" 
    nqp_get_sc_object $P5050, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 30
    set_sub_code_object $P5049, $P5050
    .const 'Sub' $P5051 = "cuid_26_1431289891.89934" 
    nqp_get_sc_object $P5052, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 31
    set_sub_code_object $P5051, $P5052
    .const 'Sub' $P5053 = "cuid_27_1431289891.89934" 
    nqp_get_sc_object $P5054, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 32
    set_sub_code_object $P5053, $P5054
    .const 'Sub' $P5055 = "cuid_28_1431289891.89934" 
    nqp_get_sc_object $P5056, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 33
    set_sub_code_object $P5055, $P5056
    .const 'Sub' $P5057 = "cuid_29_1431289891.89934" 
    nqp_get_sc_object $P5058, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 34
    set_sub_code_object $P5057, $P5058
    .const 'Sub' $P5059 = "cuid_30_1431289891.89934" 
    nqp_get_sc_object $P5060, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 35
    set_sub_code_object $P5059, $P5060
    .const 'Sub' $P5061 = "cuid_31_1431289891.89934" 
    nqp_get_sc_object $P5062, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 36
    set_sub_code_object $P5061, $P5062
    .const 'Sub' $P5063 = "cuid_32_1431289891.89934" 
    nqp_get_sc_object $P5064, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 37
    set_sub_code_object $P5063, $P5064
    .const 'Sub' $P5065 = "cuid_33_1431289891.89934" 
    nqp_get_sc_object $P5066, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 38
    set_sub_code_object $P5065, $P5066
    .const 'Sub' $P5067 = "cuid_34_1431289891.89934" 
    nqp_get_sc_object $P5068, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 39
    set_sub_code_object $P5067, $P5068
    .const 'Sub' $P5069 = "cuid_35_1431289891.89934" 
    nqp_get_sc_object $P5070, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 40
    set_sub_code_object $P5069, $P5070
    .const 'Sub' $P5071 = "cuid_36_1431289891.89934" 
    nqp_get_sc_object $P5072, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 41
    set_sub_code_object $P5071, $P5072
    .const 'Sub' $P5073 = "cuid_37_1431289891.89934" 
    nqp_get_sc_object $P5074, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 42
    set_sub_code_object $P5073, $P5074
    .const 'Sub' $P5075 = "cuid_38_1431289891.89934" 
    nqp_get_sc_object $P5076, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 43
    set_sub_code_object $P5075, $P5076
    .const 'Sub' $P5077 = "cuid_39_1431289891.89934" 
    nqp_get_sc_object $P5078, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 44
    set_sub_code_object $P5077, $P5078
    .const 'Sub' $P5079 = "cuid_40_1431289891.89934" 
    nqp_get_sc_object $P5080, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 45
    set_sub_code_object $P5079, $P5080
    .const 'Sub' $P5081 = "cuid_41_1431289891.89934" 
    nqp_get_sc_object $P5082, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 46
    set_sub_code_object $P5081, $P5082
    .const 'Sub' $P5083 = "cuid_42_1431289891.89934" 
    nqp_get_sc_object $P5084, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 47
    set_sub_code_object $P5083, $P5084
    .const 'Sub' $P5085 = "cuid_43_1431289891.89934" 
    nqp_get_sc_object $P5086, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 48
    set_sub_code_object $P5085, $P5086
    .const 'Sub' $P5087 = "cuid_44_1431289891.89934" 
    nqp_get_sc_object $P5088, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 49
    set_sub_code_object $P5087, $P5088
    .const 'Sub' $P5089 = "cuid_45_1431289891.89934" 
    nqp_get_sc_object $P5090, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 50
    set_sub_code_object $P5089, $P5090
    .const 'Sub' $P5091 = "cuid_46_1431289891.89934" 
    nqp_get_sc_object $P5092, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 51
    set_sub_code_object $P5091, $P5092
    .const 'Sub' $P5093 = "cuid_47_1431289891.89934" 
    nqp_get_sc_object $P5094, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 52
    set_sub_code_object $P5093, $P5094
    .const 'Sub' $P5095 = "cuid_48_1431289891.89934" 
    nqp_get_sc_object $P5096, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 53
    set_sub_code_object $P5095, $P5096
    .const 'Sub' $P5097 = "cuid_49_1431289891.89934" 
    nqp_get_sc_object $P5098, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 54
    set_sub_code_object $P5097, $P5098
    .const 'Sub' $P5099 = "cuid_50_1431289891.89934" 
    nqp_get_sc_object $P5100, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 55
    set_sub_code_object $P5099, $P5100
    .const 'Sub' $P5101 = "cuid_51_1431289891.89934" 
    nqp_get_sc_object $P5102, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 56
    set_sub_code_object $P5101, $P5102
    .const 'Sub' $P5103 = "cuid_52_1431289891.89934" 
    nqp_get_sc_object $P5104, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 57
    set_sub_code_object $P5103, $P5104
    .const 'Sub' $P5105 = "cuid_53_1431289891.89934" 
    nqp_get_sc_object $P5106, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 58
    set_sub_code_object $P5105, $P5106
    .const 'Sub' $P5107 = "cuid_54_1431289891.89934" 
    nqp_get_sc_object $P5108, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 59
    set_sub_code_object $P5107, $P5108
    .const 'Sub' $P5109 = "cuid_55_1431289891.89934" 
    nqp_get_sc_object $P5110, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 60
    set_sub_code_object $P5109, $P5110
    .const 'Sub' $P5111 = "cuid_56_1431289891.89934" 
    nqp_get_sc_object $P5112, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 61
    set_sub_code_object $P5111, $P5112
    .const 'Sub' $P5113 = "cuid_57_1431289891.89934" 
    nqp_get_sc_object $P5114, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 62
    set_sub_code_object $P5113, $P5114
    .const 'Sub' $P5115 = "cuid_58_1431289891.89934" 
    nqp_get_sc_object $P5116, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 63
    set_sub_code_object $P5115, $P5116
    .const 'Sub' $P5117 = "cuid_59_1431289891.89934" 
    nqp_get_sc_object $P5118, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 64
    set_sub_code_object $P5117, $P5118
    .const 'Sub' $P5119 = "cuid_60_1431289891.89934" 
    nqp_get_sc_object $P5120, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 65
    set_sub_code_object $P5119, $P5120
    .const 'Sub' $P5121 = "cuid_61_1431289891.89934" 
    nqp_get_sc_object $P5122, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 66
    set_sub_code_object $P5121, $P5122
    .const 'Sub' $P5123 = "cuid_62_1431289891.89934" 
    nqp_get_sc_object $P5124, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 67
    set_sub_code_object $P5123, $P5124
    .const 'Sub' $P5125 = "cuid_63_1431289891.89934" 
    nqp_get_sc_object $P5126, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 68
    set_sub_code_object $P5125, $P5126
    .const 'Sub' $P5127 = "cuid_64_1431289891.89934" 
    nqp_get_sc_object $P5128, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 69
    set_sub_code_object $P5127, $P5128
    .const 'Sub' $P5129 = "cuid_65_1431289891.89934" 
    nqp_get_sc_object $P5130, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 70
    set_sub_code_object $P5129, $P5130
    .const 'Sub' $P5131 = "cuid_66_1431289891.89934" 
    nqp_get_sc_object $P5132, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 71
    set_sub_code_object $P5131, $P5132
    .const 'Sub' $P5133 = "cuid_67_1431289891.89934" 
    nqp_get_sc_object $P5134, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 72
    set_sub_code_object $P5133, $P5134
    .const 'Sub' $P5135 = "cuid_68_1431289891.89934" 
    nqp_get_sc_object $P5136, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 73
    set_sub_code_object $P5135, $P5136
    .const 'Sub' $P5137 = "cuid_69_1431289891.89934" 
    nqp_get_sc_object $P5138, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 74
    set_sub_code_object $P5137, $P5138
    .const 'Sub' $P5139 = "cuid_70_1431289891.89934" 
    nqp_get_sc_object $P5140, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 75
    set_sub_code_object $P5139, $P5140
    .const 'Sub' $P5141 = "cuid_71_1431289891.89934" 
    nqp_get_sc_object $P5142, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 76
    set_sub_code_object $P5141, $P5142
    .const 'Sub' $P5143 = "cuid_72_1431289891.89934" 
    nqp_get_sc_object $P5144, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 77
    set_sub_code_object $P5143, $P5144
    .const 'Sub' $P5145 = "cuid_73_1431289891.89934" 
    nqp_get_sc_object $P5146, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 78
    set_sub_code_object $P5145, $P5146
    .const 'Sub' $P5147 = "cuid_74_1431289891.89934" 
    nqp_get_sc_object $P5148, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 79
    set_sub_code_object $P5147, $P5148
    .const 'Sub' $P5149 = "cuid_75_1431289891.89934" 
    nqp_get_sc_object $P5150, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 80
    set_sub_code_object $P5149, $P5150
    .const 'Sub' $P5151 = "cuid_76_1431289891.89934" 
    nqp_get_sc_object $P5152, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 81
    set_sub_code_object $P5151, $P5152
    .const 'Sub' $P5153 = "cuid_77_1431289891.89934" 
    nqp_get_sc_object $P5154, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 82
    set_sub_code_object $P5153, $P5154
    .const 'Sub' $P5155 = "cuid_78_1431289891.89934" 
    nqp_get_sc_object $P5156, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 83
    set_sub_code_object $P5155, $P5156
    .const 'Sub' $P5157 = "cuid_79_1431289891.89934" 
    nqp_get_sc_object $P5158, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 84
    set_sub_code_object $P5157, $P5158
    .const 'Sub' $P5159 = "cuid_80_1431289891.89934" 
    nqp_get_sc_object $P5160, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 85
    set_sub_code_object $P5159, $P5160
    .const 'Sub' $P5161 = "cuid_81_1431289891.89934" 
    nqp_get_sc_object $P5162, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 86
    set_sub_code_object $P5161, $P5162
    .const 'Sub' $P5163 = "cuid_82_1431289891.89934" 
    nqp_get_sc_object $P5164, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 87
    set_sub_code_object $P5163, $P5164
    .const 'Sub' $P5165 = "cuid_83_1431289891.89934" 
    nqp_get_sc_object $P5166, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 88
    set_sub_code_object $P5165, $P5166
    .const 'Sub' $P5167 = "cuid_84_1431289891.89934" 
    nqp_get_sc_object $P5168, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 89
    set_sub_code_object $P5167, $P5168
    .const 'Sub' $P5169 = "cuid_85_1431289891.89934" 
    nqp_get_sc_object $P5170, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 90
    set_sub_code_object $P5169, $P5170
    .const 'Sub' $P5171 = "cuid_86_1431289891.89934" 
    nqp_get_sc_object $P5172, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 91
    set_sub_code_object $P5171, $P5172
    .const 'Sub' $P5173 = "cuid_87_1431289891.89934" 
    nqp_get_sc_object $P5174, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 93
    set_sub_code_object $P5173, $P5174
    .const 'Sub' $P5175 = "cuid_88_1431289891.89934" 
    nqp_get_sc_object $P5176, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 94
    set_sub_code_object $P5175, $P5176
    .const 'Sub' $P5177 = "cuid_89_1431289891.89934" 
    nqp_get_sc_object $P5178, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 95
    set_sub_code_object $P5177, $P5178
    .const 'Sub' $P5179 = "cuid_90_1431289891.89934" 
    nqp_get_sc_object $P5180, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 96
    set_sub_code_object $P5179, $P5180
    .const 'Sub' $P5181 = "cuid_91_1431289891.89934" 
    nqp_get_sc_object $P5182, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 97
    set_sub_code_object $P5181, $P5182
    .const 'Sub' $P5183 = "cuid_92_1431289891.89934" 
    nqp_get_sc_object $P5184, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 98
    set_sub_code_object $P5183, $P5184
    .const 'Sub' $P5185 = "cuid_93_1431289891.89934" 
    nqp_get_sc_object $P5186, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 99
    set_sub_code_object $P5185, $P5186
    .const 'Sub' $P5187 = "cuid_94_1431289891.89934" 
    nqp_get_sc_object $P5188, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 100
    set_sub_code_object $P5187, $P5188
    .const 'Sub' $P5189 = "cuid_95_1431289891.89934" 
    nqp_get_sc_object $P5190, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 101
    set_sub_code_object $P5189, $P5190
    .const 'Sub' $P5191 = "cuid_96_1431289891.89934" 
    nqp_get_sc_object $P5192, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 102
    set_sub_code_object $P5191, $P5192
    .const 'Sub' $P5193 = "cuid_97_1431289891.89934" 
    nqp_get_sc_object $P5194, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 103
    set_sub_code_object $P5193, $P5194
    .const 'Sub' $P5195 = "cuid_98_1431289891.89934" 
    nqp_get_sc_object $P5196, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 104
    set_sub_code_object $P5195, $P5196
    .const 'Sub' $P5197 = "cuid_99_1431289891.89934" 
    nqp_get_sc_object $P5198, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 105
    set_sub_code_object $P5197, $P5198
    .const 'Sub' $P5199 = "cuid_100_1431289891.89934" 
    nqp_get_sc_object $P5200, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 106
    set_sub_code_object $P5199, $P5200
    .const 'Sub' $P5201 = "cuid_101_1431289891.89934" 
    nqp_get_sc_object $P5202, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 107
    set_sub_code_object $P5201, $P5202
    .const 'Sub' $P5203 = "cuid_102_1431289891.89934" 
    nqp_get_sc_object $P5204, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 108
    set_sub_code_object $P5203, $P5204
    .const 'Sub' $P5205 = "cuid_103_1431289891.89934" 
    nqp_get_sc_object $P5206, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 109
    set_sub_code_object $P5205, $P5206
    .const 'Sub' $P5207 = "cuid_104_1431289891.89934" 
    nqp_get_sc_object $P5208, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 110
    set_sub_code_object $P5207, $P5208
    .const 'Sub' $P5209 = "cuid_105_1431289891.89934" 
    nqp_get_sc_object $P5210, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 111
    set_sub_code_object $P5209, $P5210
    .const 'Sub' $P5211 = "cuid_106_1431289891.89934" 
    nqp_get_sc_object $P5212, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 112
    set_sub_code_object $P5211, $P5212
    .const 'Sub' $P5213 = "cuid_107_1431289891.89934" 
    nqp_get_sc_object $P5214, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 113
    set_sub_code_object $P5213, $P5214
    .const 'Sub' $P5215 = "cuid_108_1431289891.89934" 
    nqp_get_sc_object $P5216, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 114
    set_sub_code_object $P5215, $P5216
    .const 'Sub' $P5217 = "cuid_109_1431289891.89934" 
    nqp_get_sc_object $P5218, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 115
    set_sub_code_object $P5217, $P5218
    .const 'Sub' $P5219 = "cuid_110_1431289891.89934" 
    nqp_get_sc_object $P5220, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 116
    set_sub_code_object $P5219, $P5220
    .const 'Sub' $P5221 = "cuid_111_1431289891.89934" 
    nqp_get_sc_object $P5222, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 117
    set_sub_code_object $P5221, $P5222
    .const 'Sub' $P5223 = "cuid_112_1431289891.89934" 
    nqp_get_sc_object $P5224, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 118
    set_sub_code_object $P5223, $P5224
    .const 'Sub' $P5225 = "cuid_113_1431289891.89934" 
    nqp_get_sc_object $P5226, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 119
    set_sub_code_object $P5225, $P5226
    .const 'Sub' $P5227 = "cuid_114_1431289891.89934" 
    nqp_get_sc_object $P5228, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 120
    set_sub_code_object $P5227, $P5228
    .const 'Sub' $P5229 = "cuid_115_1431289891.89934" 
    nqp_get_sc_object $P5230, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 121
    set_sub_code_object $P5229, $P5230
    .const 'Sub' $P5231 = "cuid_116_1431289891.89934" 
    nqp_get_sc_object $P5232, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 122
    set_sub_code_object $P5231, $P5232
    .const 'Sub' $P5233 = "cuid_117_1431289891.89934" 
    nqp_get_sc_object $P5234, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 123
    set_sub_code_object $P5233, $P5234
    .const 'Sub' $P5235 = "cuid_118_1431289891.89934" 
    nqp_get_sc_object $P5236, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 124
    set_sub_code_object $P5235, $P5236
    .const 'Sub' $P5237 = "cuid_119_1431289891.89934" 
    nqp_get_sc_object $P5238, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 125
    set_sub_code_object $P5237, $P5238
    .const 'Sub' $P5239 = "cuid_120_1431289891.89934" 
    nqp_get_sc_object $P5240, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 126
    set_sub_code_object $P5239, $P5240
    .const 'Sub' $P5241 = "cuid_121_1431289891.89934" 
    nqp_get_sc_object $P5242, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 128
    set_sub_code_object $P5241, $P5242
    .const 'Sub' $P5243 = "cuid_122_1431289891.89934" 
    nqp_get_sc_object $P5244, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 129
    set_sub_code_object $P5243, $P5244
    .const 'Sub' $P5245 = "cuid_123_1431289891.89934" 
    nqp_get_sc_object $P5246, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 130
    set_sub_code_object $P5245, $P5246
    .const 'Sub' $P5247 = "cuid_124_1431289891.89934" 
    nqp_get_sc_object $P5248, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 131
    set_sub_code_object $P5247, $P5248
    .const 'Sub' $P5249 = "cuid_125_1431289891.89934" 
    nqp_get_sc_object $P5250, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 132
    set_sub_code_object $P5249, $P5250
    .const 'Sub' $P5251 = "cuid_126_1431289891.89934" 
    nqp_get_sc_object $P5252, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 133
    set_sub_code_object $P5251, $P5252
    .const 'Sub' $P5253 = "cuid_127_1431289891.89934" 
    nqp_get_sc_object $P5254, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 134
    set_sub_code_object $P5253, $P5254
    .const 'Sub' $P5255 = "cuid_128_1431289891.89934" 
    nqp_get_sc_object $P5256, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 135
    set_sub_code_object $P5255, $P5256
    .const 'Sub' $P5257 = "cuid_129_1431289891.89934" 
    nqp_get_sc_object $P5258, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 136
    set_sub_code_object $P5257, $P5258
    .const 'Sub' $P5259 = "cuid_130_1431289891.89934" 
    nqp_get_sc_object $P5260, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 137
    set_sub_code_object $P5259, $P5260
    .const 'Sub' $P5261 = "cuid_131_1431289891.89934" 
    nqp_get_sc_object $P5262, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 138
    set_sub_code_object $P5261, $P5262
    .const 'Sub' $P5263 = "cuid_132_1431289891.89934" 
    nqp_get_sc_object $P5264, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 139
    set_sub_code_object $P5263, $P5264
    .const 'Sub' $P5265 = "cuid_133_1431289891.89934" 
    nqp_get_sc_object $P5266, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 140
    set_sub_code_object $P5265, $P5266
    .const 'Sub' $P5267 = "cuid_134_1431289891.89934" 
    nqp_get_sc_object $P5268, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 141
    set_sub_code_object $P5267, $P5268
    .const 'Sub' $P5269 = "cuid_135_1431289891.89934" 
    nqp_get_sc_object $P5270, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 142
    set_sub_code_object $P5269, $P5270
    .const 'Sub' $P5271 = "cuid_136_1431289891.89934" 
    nqp_get_sc_object $P5272, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 143
    set_sub_code_object $P5271, $P5272
    .const 'Sub' $P5273 = "cuid_137_1431289891.89934" 
    nqp_get_sc_object $P5274, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 144
    set_sub_code_object $P5273, $P5274
    .const 'Sub' $P5275 = "cuid_138_1431289891.89934" 
    nqp_get_sc_object $P5276, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 145
    set_sub_code_object $P5275, $P5276
    .const 'Sub' $P5277 = "cuid_139_1431289891.89934" 
    nqp_get_sc_object $P5278, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 146
    set_sub_code_object $P5277, $P5278
    .const 'Sub' $P5279 = "cuid_140_1431289891.89934" 
    nqp_get_sc_object $P5280, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 147
    set_sub_code_object $P5279, $P5280
    .const 'Sub' $P5281 = "cuid_141_1431289891.89934" 
    nqp_get_sc_object $P5282, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 148
    set_sub_code_object $P5281, $P5282
    .const 'Sub' $P5283 = "cuid_142_1431289891.89934" 
    nqp_get_sc_object $P5284, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 149
    set_sub_code_object $P5283, $P5284
    .const 'Sub' $P5285 = "cuid_143_1431289891.89934" 
    nqp_get_sc_object $P5286, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 150
    set_sub_code_object $P5285, $P5286
    .const 'Sub' $P5287 = "cuid_144_1431289891.89934" 
    nqp_get_sc_object $P5288, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 151
    set_sub_code_object $P5287, $P5288
    .const 'Sub' $P5289 = "cuid_145_1431289891.89934" 
    nqp_get_sc_object $P5290, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 152
    set_sub_code_object $P5289, $P5290
    .const 'Sub' $P5291 = "cuid_146_1431289891.89934" 
    nqp_get_sc_object $P5292, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 153
    set_sub_code_object $P5291, $P5292
    .const 'Sub' $P5293 = "cuid_147_1431289891.89934" 
    nqp_get_sc_object $P5294, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 154
    set_sub_code_object $P5293, $P5294
    .const 'Sub' $P5295 = "cuid_148_1431289891.89934" 
    nqp_get_sc_object $P5296, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 155
    set_sub_code_object $P5295, $P5296
    .const 'Sub' $P5297 = "cuid_149_1431289891.89934" 
    nqp_get_sc_object $P5298, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 156
    set_sub_code_object $P5297, $P5298
    .const 'Sub' $P5299 = "cuid_150_1431289891.89934" 
    nqp_get_sc_object $P5300, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 157
    set_sub_code_object $P5299, $P5300
    .const 'Sub' $P5301 = "cuid_151_1431289891.89934" 
    nqp_get_sc_object $P5302, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 158
    set_sub_code_object $P5301, $P5302
    .const 'Sub' $P5303 = "cuid_152_1431289891.89934" 
    nqp_get_sc_object $P5304, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 159
    set_sub_code_object $P5303, $P5304
    .const 'Sub' $P5305 = "cuid_153_1431289891.89934" 
    nqp_get_sc_object $P5306, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 160
    set_sub_code_object $P5305, $P5306
    .const 'Sub' $P5307 = "cuid_154_1431289891.89934" 
    nqp_get_sc_object $P5308, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 161
    set_sub_code_object $P5307, $P5308
    .const 'Sub' $P5309 = "cuid_155_1431289891.89934" 
    nqp_get_sc_object $P5310, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 162
    set_sub_code_object $P5309, $P5310
    .const 'Sub' $P5311 = "cuid_156_1431289891.89934" 
    nqp_get_sc_object $P5312, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 163
    set_sub_code_object $P5311, $P5312
    .const 'Sub' $P5313 = "cuid_157_1431289891.89934" 
    nqp_get_sc_object $P5314, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 164
    set_sub_code_object $P5313, $P5314
    .const 'Sub' $P5315 = "cuid_158_1431289891.89934" 
    nqp_get_sc_object $P5316, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 165
    set_sub_code_object $P5315, $P5316
    .const 'Sub' $P5317 = "cuid_159_1431289891.89934" 
    nqp_get_sc_object $P5318, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 166
    set_sub_code_object $P5317, $P5318
    .const 'Sub' $P5319 = "cuid_160_1431289891.89934" 
    nqp_get_sc_object $P5320, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 167
    set_sub_code_object $P5319, $P5320
    .const 'Sub' $P5321 = "cuid_161_1431289891.89934" 
    nqp_get_sc_object $P5322, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 168
    set_sub_code_object $P5321, $P5322
    .const 'Sub' $P5323 = "cuid_162_1431289891.89934" 
    nqp_get_sc_object $P5324, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 169
    set_sub_code_object $P5323, $P5324
    .const 'Sub' $P5325 = "cuid_163_1431289891.89934" 
    nqp_get_sc_object $P5326, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 170
    set_sub_code_object $P5325, $P5326
    .const 'Sub' $P5327 = "cuid_164_1431289891.89934" 
    nqp_get_sc_object $P5328, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 171
    set_sub_code_object $P5327, $P5328
    .const 'Sub' $P5329 = "cuid_166_1431289891.89934" 
    nqp_get_sc_object $P5330, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 173
    set_sub_code_object $P5329, $P5330
    .const 'Sub' $P5331 = "cuid_167_1431289891.89934" 
    nqp_get_sc_object $P5332, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 174
    set_sub_code_object $P5331, $P5332
    .const 'Sub' $P5333 = "cuid_168_1431289891.89934" 
    nqp_get_sc_object $P5334, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 175
    set_sub_code_object $P5333, $P5334
    .const 'Sub' $P5335 = "cuid_169_1431289891.89934" 
    nqp_get_sc_object $P5336, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 176
    set_sub_code_object $P5335, $P5336
    .const 'Sub' $P5337 = "cuid_170_1431289891.89934" 
    nqp_get_sc_object $P5338, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 177
    set_sub_code_object $P5337, $P5338
    .const 'Sub' $P5339 = "cuid_171_1431289891.89934" 
    nqp_get_sc_object $P5340, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 179
    set_sub_code_object $P5339, $P5340
    .const 'Sub' $P5341 = "cuid_172_1431289891.89934" 
    nqp_get_sc_object $P5342, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 180
    set_sub_code_object $P5341, $P5342
    .const 'Sub' $P5343 = "cuid_173_1431289891.89934" 
    nqp_get_sc_object $P5344, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 181
    set_sub_code_object $P5343, $P5344
    .const 'Sub' $P5345 = "cuid_174_1431289891.89934" 
    nqp_get_sc_object $P5346, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 182
    set_sub_code_object $P5345, $P5346
    .const 'Sub' $P5347 = "cuid_175_1431289891.89934" 
    nqp_get_sc_object $P5348, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 183
    set_sub_code_object $P5347, $P5348
    .const 'Sub' $P5349 = "cuid_176_1431289891.89934" 
    nqp_get_sc_object $P5350, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 184
    set_sub_code_object $P5349, $P5350
    .const 'Sub' $P5351 = "cuid_177_1431289891.89934" 
    nqp_get_sc_object $P5352, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 185
    set_sub_code_object $P5351, $P5352
    .const 'Sub' $P5353 = "cuid_178_1431289891.89934" 
    nqp_get_sc_object $P5354, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 186
    set_sub_code_object $P5353, $P5354
    .const 'Sub' $P5355 = "cuid_179_1431289891.89934" 
    nqp_get_sc_object $P5356, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 187
    set_sub_code_object $P5355, $P5356
    .const 'Sub' $P5357 = "cuid_180_1431289891.89934" 
    nqp_get_sc_object $P5358, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 188
    set_sub_code_object $P5357, $P5358
    .const 'Sub' $P5359 = "cuid_181_1431289891.89934" 
    nqp_get_sc_object $P5360, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 190
    set_sub_code_object $P5359, $P5360
    .const 'Sub' $P5361 = "cuid_182_1431289891.89934" 
    nqp_get_sc_object $P5362, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 191
    set_sub_code_object $P5361, $P5362
    .const 'Sub' $P5363 = "cuid_183_1431289891.89934" 
    nqp_get_sc_object $P5364, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 192
    set_sub_code_object $P5363, $P5364
    .const 'Sub' $P5365 = "cuid_184_1431289891.89934" 
    nqp_get_sc_object $P5366, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 193
    set_sub_code_object $P5365, $P5366
    .const 'Sub' $P5367 = "cuid_185_1431289891.89934" 
    nqp_get_sc_object $P5368, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 194
    set_sub_code_object $P5367, $P5368
    .const 'Sub' $P5369 = "cuid_186_1431289891.89934" 
    nqp_get_sc_object $P5370, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 195
    set_sub_code_object $P5369, $P5370
    .const 'Sub' $P5371 = "cuid_187_1431289891.89934" 
    nqp_get_sc_object $P5372, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 196
    set_sub_code_object $P5371, $P5372
    .const 'Sub' $P5373 = "cuid_188_1431289891.89934" 
    nqp_get_sc_object $P5374, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 197
    set_sub_code_object $P5373, $P5374
    .const 'Sub' $P5375 = "cuid_189_1431289891.89934" 
    nqp_get_sc_object $P5376, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 198
    set_sub_code_object $P5375, $P5376
    .const 'Sub' $P5377 = "cuid_190_1431289891.89934" 
    nqp_get_sc_object $P5378, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 199
    set_sub_code_object $P5377, $P5378
    .const 'Sub' $P5379 = "cuid_191_1431289891.89934" 
    nqp_get_sc_object $P5380, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 200
    set_sub_code_object $P5379, $P5380
    .const 'Sub' $P5381 = "cuid_192_1431289891.89934" 
    nqp_get_sc_object $P5382, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 201
    set_sub_code_object $P5381, $P5382
    .const 'Sub' $P5383 = "cuid_193_1431289891.89934" 
    nqp_get_sc_object $P5384, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 204
    set_sub_code_object $P5383, $P5384
    .const 'Sub' $P5385 = "cuid_194_1431289891.89934" 
    nqp_get_sc_object $P5386, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 205
    set_sub_code_object $P5385, $P5386
    .const 'Sub' $P5387 = "cuid_195_1431289891.89934" 
    nqp_get_sc_object $P5388, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 206
    set_sub_code_object $P5387, $P5388
    .const 'Sub' $P5389 = "cuid_196_1431289891.89934" 
    nqp_get_sc_object $P5390, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 207
    set_sub_code_object $P5389, $P5390
    .const 'Sub' $P5391 = "cuid_197_1431289891.89934" 
    nqp_get_sc_object $P5392, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 208
    set_sub_code_object $P5391, $P5392
    .const 'Sub' $P5393 = "cuid_198_1431289891.89934" 
    nqp_get_sc_object $P5394, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 209
    set_sub_code_object $P5393, $P5394
    .const 'Sub' $P5395 = "cuid_199_1431289891.89934" 
    nqp_get_sc_object $P5396, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 210
    set_sub_code_object $P5395, $P5396
    .const 'Sub' $P5397 = "cuid_200_1431289891.89934" 
    nqp_get_sc_object $P5398, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 211
    set_sub_code_object $P5397, $P5398
    .const 'Sub' $P5399 = "cuid_201_1431289891.89934" 
    nqp_get_sc_object $P5400, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 212
    set_sub_code_object $P5399, $P5400
    .const 'Sub' $P5401 = "cuid_202_1431289891.89934" 
    nqp_get_sc_object $P5402, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 213
    set_sub_code_object $P5401, $P5402
    .const 'Sub' $P5403 = "cuid_203_1431289891.89934" 
    nqp_get_sc_object $P5404, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 214
    set_sub_code_object $P5403, $P5404
    .const 'Sub' $P5405 = "cuid_204_1431289891.89934" 
    nqp_get_sc_object $P5406, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 215
    set_sub_code_object $P5405, $P5406
    .const 'Sub' $P5407 = "cuid_205_1431289891.89934" 
    nqp_get_sc_object $P5408, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 216
    set_sub_code_object $P5407, $P5408
    .const 'Sub' $P5409 = "cuid_206_1431289891.89934" 
    nqp_get_sc_object $P5410, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 217
    set_sub_code_object $P5409, $P5410
    .const 'Sub' $P5411 = "cuid_207_1431289891.89934" 
    nqp_get_sc_object $P5412, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 218
    set_sub_code_object $P5411, $P5412
    .const 'Sub' $P5413 = "cuid_208_1431289891.89934" 
    nqp_get_sc_object $P5414, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 219
    set_sub_code_object $P5413, $P5414
    .const 'Sub' $P5415 = "cuid_209_1431289891.89934" 
    nqp_get_sc_object $P5416, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 220
    set_sub_code_object $P5415, $P5416
    .const 'Sub' $P5417 = "cuid_210_1431289891.89934" 
    nqp_get_sc_object $P5418, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 221
    set_sub_code_object $P5417, $P5418
    .const 'Sub' $P5419 = "cuid_211_1431289891.89934" 
    nqp_get_sc_object $P5420, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 222
    set_sub_code_object $P5419, $P5420
    .const 'Sub' $P5421 = "cuid_212_1431289891.89934" 
    nqp_get_sc_object $P5422, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 223
    set_sub_code_object $P5421, $P5422
    .const 'Sub' $P5423 = "cuid_213_1431289891.89934" 
    nqp_get_sc_object $P5424, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 225
    set_sub_code_object $P5423, $P5424
    .const 'Sub' $P5425 = "cuid_214_1431289891.89934" 
    nqp_get_sc_object $P5426, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 226
    set_sub_code_object $P5425, $P5426
    .const 'Sub' $P5427 = "cuid_215_1431289891.89934" 
    nqp_get_sc_object $P5428, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 227
    set_sub_code_object $P5427, $P5428
    .const 'Sub' $P5429 = "cuid_216_1431289891.89934" 
    nqp_get_sc_object $P5430, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 228
    set_sub_code_object $P5429, $P5430
    .const 'Sub' $P5431 = "cuid_217_1431289891.89934" 
    nqp_get_sc_object $P5432, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 229
    set_sub_code_object $P5431, $P5432
    .const 'Sub' $P5433 = "cuid_218_1431289891.89934" 
    nqp_get_sc_object $P5434, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 230
    set_sub_code_object $P5433, $P5434
    .const 'Sub' $P5435 = "cuid_219_1431289891.89934" 
    nqp_get_sc_object $P5436, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 231
    set_sub_code_object $P5435, $P5436
    .const 'Sub' $P5437 = "cuid_220_1431289891.89934" 
    nqp_get_sc_object $P5438, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 232
    set_sub_code_object $P5437, $P5438
    .const 'Sub' $P5439 = "cuid_221_1431289891.89934" 
    nqp_get_sc_object $P5440, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 233
    set_sub_code_object $P5439, $P5440
    .const 'Sub' $P5441 = "cuid_222_1431289891.89934" 
    nqp_get_sc_object $P5442, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 234
    set_sub_code_object $P5441, $P5442
    .const 'Sub' $P5443 = "cuid_223_1431289891.89934" 
    nqp_get_sc_object $P5444, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 235
    set_sub_code_object $P5443, $P5444
    .const 'Sub' $P5445 = "cuid_224_1431289891.89934" 
    nqp_get_sc_object $P5446, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 236
    set_sub_code_object $P5445, $P5446
    .const 'Sub' $P5447 = "cuid_225_1431289891.89934" 
    nqp_get_sc_object $P5448, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 237
    set_sub_code_object $P5447, $P5448
    .const 'Sub' $P5449 = "cuid_226_1431289891.89934" 
    nqp_get_sc_object $P5450, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 238
    set_sub_code_object $P5449, $P5450
    .const 'Sub' $P5451 = "cuid_227_1431289891.89934" 
    nqp_get_sc_object $P5452, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 239
    set_sub_code_object $P5451, $P5452
    .const 'Sub' $P5453 = "cuid_228_1431289891.89934" 
    nqp_get_sc_object $P5454, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 240
    set_sub_code_object $P5453, $P5454
    .const 'Sub' $P5455 = "cuid_229_1431289891.89934" 
    nqp_get_sc_object $P5456, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 241
    set_sub_code_object $P5455, $P5456
    .const 'Sub' $P5457 = "cuid_230_1431289891.89934" 
    nqp_get_sc_object $P5458, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 243
    set_sub_code_object $P5457, $P5458
    .const 'Sub' $P5459 = "cuid_231_1431289891.89934" 
    nqp_get_sc_object $P5460, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 244
    set_sub_code_object $P5459, $P5460
    nqp_get_sc_object $P5462, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 27
    get_who $P5461, $P5462
    .const 'Sub' $P5463 = "cuid_79_1431289891.89934" 
    set $P5461["split_words"], $P5463
    .const "LexInfo" $P5461 = "cuid_232_1431289891.89934"
    new $P5462, 'ResizableStringArray'
    assign $P5462, 6
    assign $P5462, 0
    push $P5462, "GLOBALish"
    push $P5462, "$?PACKAGE"
    push $P5462, "EXPORT"
    push $P5462, "ParseShared"
    push $P5462, "NQPCursorRole"
    push $P5462, "sprintf"
    new $P5463, 'QRPA'
    assign $P5463, 6
    assign $P5463, 0
    nqp_get_sc_object $P5464, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 0
    push $P5463, $P5464
    nqp_get_sc_object $P5465, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 0
    push $P5463, $P5465
    nqp_get_sc_object $P5466, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 1
    push $P5463, $P5466
    nqp_get_sc_object $P5467, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    push $P5463, $P5467
    nqp_get_sc_object $P5468, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 38
    push $P5463, $P5468
    nqp_get_sc_object $P5469, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 202
    push $P5463, $P5469
    new $P5470, 'ResizableIntegerArray'
    assign $P5470, 6
    $P5461."setup_static_lexpad"($P5462, $P5463, $P5470)
    .const "LexInfo" $P5461 = "cuid_233_1431289891.89934"
    new $P5462, 'ResizableStringArray'
    assign $P5462, 2
    assign $P5462, 0
    push $P5462, "$?PACKAGE"
    push $P5462, "$?CLASS"
    new $P5463, 'QRPA'
    assign $P5463, 2
    assign $P5463, 0
    nqp_get_sc_object $P5464, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 3
    push $P5463, $P5464
    nqp_get_sc_object $P5465, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 3
    push $P5463, $P5465
    new $P5466, 'ResizableIntegerArray'
    assign $P5466, 2
    $P5461."setup_static_lexpad"($P5462, $P5463, $P5466)
    .const "LexInfo" $P5461 = "cuid_22_1431289891.89934"
    new $P5462, 'ResizableStringArray'
    assign $P5462, 2
    assign $P5462, 0
    push $P5462, "$?PACKAGE"
    push $P5462, "$?ROLE"
    new $P5463, 'QRPA'
    assign $P5463, 2
    assign $P5463, 0
    nqp_get_sc_object $P5464, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 24
    push $P5463, $P5464
    nqp_get_sc_object $P5465, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 24
    push $P5463, $P5465
    new $P5466, 'ResizableIntegerArray'
    assign $P5466, 2
    $P5461."setup_static_lexpad"($P5462, $P5463, $P5466)
    .const "LexInfo" $P5461 = "cuid_234_1431289891.89934"
    new $P5462, 'ResizableStringArray'
    assign $P5462, 2
    assign $P5462, 0
    push $P5462, "$?PACKAGE"
    push $P5462, "$?CLASS"
    new $P5463, 'QRPA'
    assign $P5463, 2
    assign $P5463, 0
    nqp_get_sc_object $P5464, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 27
    push $P5463, $P5464
    nqp_get_sc_object $P5465, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 27
    push $P5463, $P5465
    new $P5466, 'ResizableIntegerArray'
    assign $P5466, 2
    $P5461."setup_static_lexpad"($P5462, $P5463, $P5466)
    .const "LexInfo" $P5461 = "cuid_235_1431289891.89934"
    new $P5462, 'ResizableStringArray'
    assign $P5462, 2
    assign $P5462, 0
    push $P5462, "$?PACKAGE"
    push $P5462, "$?CLASS"
    new $P5463, 'QRPA'
    assign $P5463, 2
    assign $P5463, 0
    nqp_get_sc_object $P5464, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 92
    push $P5463, $P5464
    nqp_get_sc_object $P5465, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 92
    push $P5463, $P5465
    new $P5466, 'ResizableIntegerArray'
    assign $P5466, 2
    $P5461."setup_static_lexpad"($P5462, $P5463, $P5466)
    .const "LexInfo" $P5461 = "cuid_236_1431289891.89934"
    new $P5462, 'ResizableStringArray'
    assign $P5462, 2
    assign $P5462, 0
    push $P5462, "$?PACKAGE"
    push $P5462, "$?CLASS"
    new $P5463, 'QRPA'
    assign $P5463, 2
    assign $P5463, 0
    nqp_get_sc_object $P5464, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 127
    push $P5463, $P5464
    nqp_get_sc_object $P5465, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 127
    push $P5463, $P5465
    new $P5466, 'ResizableIntegerArray'
    assign $P5466, 2
    $P5461."setup_static_lexpad"($P5462, $P5463, $P5466)
    .const "LexInfo" $P5461 = "cuid_249_1431289891.89934"
    new $P5462, 'ResizableStringArray'
    assign $P5462, 2
    assign $P5462, 0
    push $P5462, "$?PACKAGE"
    push $P5462, "$?CLASS"
    new $P5463, 'QRPA'
    assign $P5463, 2
    assign $P5463, 0
    nqp_get_sc_object $P5464, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 172
    push $P5463, $P5464
    nqp_get_sc_object $P5465, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 172
    push $P5463, $P5465
    new $P5466, 'ResizableIntegerArray'
    assign $P5466, 2
    $P5461."setup_static_lexpad"($P5462, $P5463, $P5466)
    .const "LexInfo" $P5461 = "cuid_250_1431289891.89934"
    new $P5462, 'ResizableStringArray'
    assign $P5462, 2
    assign $P5462, 0
    push $P5462, "$?PACKAGE"
    push $P5462, "$?CLASS"
    new $P5463, 'QRPA'
    assign $P5463, 2
    assign $P5463, 0
    nqp_get_sc_object $P5464, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 178
    push $P5463, $P5464
    nqp_get_sc_object $P5465, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 178
    push $P5463, $P5465
    new $P5466, 'ResizableIntegerArray'
    assign $P5466, 2
    $P5461."setup_static_lexpad"($P5462, $P5463, $P5466)
    .const "LexInfo" $P5461 = "cuid_253_1431289891.89934"
    new $P5462, 'ResizableStringArray'
    assign $P5462, 2
    assign $P5462, 0
    push $P5462, "$?PACKAGE"
    push $P5462, "$?CLASS"
    new $P5463, 'QRPA'
    assign $P5463, 2
    assign $P5463, 0
    nqp_get_sc_object $P5464, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 189
    push $P5463, $P5464
    nqp_get_sc_object $P5465, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 189
    push $P5463, $P5465
    new $P5466, 'ResizableIntegerArray'
    assign $P5466, 2
    $P5461."setup_static_lexpad"($P5462, $P5463, $P5466)
    .const "LexInfo" $P5461 = "cuid_254_1431289891.89934"
    new $P5462, 'ResizableStringArray'
    assign $P5462, 5
    assign $P5462, 0
    push $P5462, "$?PACKAGE"
    push $P5462, "$?CLASS"
    push $P5462, "Syntax"
    push $P5462, "Actions"
    push $P5462, "Directives"
    new $P5463, 'QRPA'
    assign $P5463, 5
    assign $P5463, 0
    nqp_get_sc_object $P5464, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 202
    push $P5463, $P5464
    nqp_get_sc_object $P5465, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 202
    push $P5463, $P5465
    nqp_get_sc_object $P5466, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 203
    push $P5463, $P5466
    nqp_get_sc_object $P5467, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 224
    push $P5463, $P5467
    nqp_get_sc_object $P5468, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 242
    push $P5463, $P5468
    new $P5469, 'ResizableIntegerArray'
    assign $P5469, 5
    $P5461."setup_static_lexpad"($P5462, $P5463, $P5469)
    .const "LexInfo" $P5461 = "cuid_258_1431289891.89934"
    new $P5462, 'ResizableStringArray'
    assign $P5462, 2
    assign $P5462, 0
    push $P5462, "$?PACKAGE"
    push $P5462, "$?CLASS"
    new $P5463, 'QRPA'
    assign $P5463, 2
    assign $P5463, 0
    nqp_get_sc_object $P5464, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 203
    push $P5463, $P5464
    nqp_get_sc_object $P5465, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 203
    push $P5463, $P5465
    new $P5466, 'ResizableIntegerArray'
    assign $P5466, 2
    $P5461."setup_static_lexpad"($P5462, $P5463, $P5466)
    .const "LexInfo" $P5461 = "cuid_259_1431289891.89934"
    new $P5462, 'ResizableStringArray'
    assign $P5462, 2
    assign $P5462, 0
    push $P5462, "$?PACKAGE"
    push $P5462, "$?CLASS"
    new $P5463, 'QRPA'
    assign $P5463, 2
    assign $P5463, 0
    nqp_get_sc_object $P5464, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 224
    push $P5463, $P5464
    nqp_get_sc_object $P5465, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 224
    push $P5463, $P5465
    new $P5466, 'ResizableIntegerArray'
    assign $P5466, 2
    $P5461."setup_static_lexpad"($P5462, $P5463, $P5466)
    .const "LexInfo" $P5461 = "cuid_275_1431289891.89934"
    new $P5462, 'ResizableStringArray'
    assign $P5462, 2
    assign $P5462, 0
    push $P5462, "$?PACKAGE"
    push $P5462, "$?CLASS"
    new $P5463, 'QRPA'
    assign $P5463, 2
    assign $P5463, 0
    nqp_get_sc_object $P5464, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 242
    push $P5463, $P5464
    nqp_get_sc_object $P5465, "D699855F0B99D418906D23C314640A779281D00E-1431289891.9493", 242
    push $P5463, $P5465
    new $P5466, 'ResizableIntegerArray'
    assign $P5466, 2
    $P5467 = $P5461."setup_static_lexpad"($P5462, $P5463, $P5466)
    .return ($P5467) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_277_1431289891.89934") :anon :lex :outer("cuid_278_1431289891.89934")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
    new $P5001, 'ResizablePMCArray'
    assign $P5001, 230
    assign $P5001, 0
    .const 'Sub' $P5002 = "cuid_1_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_2_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_3_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_4_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_5_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_6_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_7_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_8_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_9_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_10_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_11_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_12_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_13_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_14_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_15_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_16_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_17_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_18_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_19_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_20_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_21_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_22_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_23_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_24_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_25_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_26_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_27_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_28_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_29_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_30_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_31_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_32_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_33_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_34_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_35_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_36_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_37_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_38_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_39_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_40_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_41_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_42_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_43_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_44_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_45_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_46_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_47_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_48_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_49_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_50_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_51_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_52_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_53_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_54_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_55_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_56_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_57_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_58_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_59_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_60_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_61_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_62_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_63_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_64_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_65_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_66_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_67_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_68_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_69_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_70_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_71_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_72_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_73_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_74_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_75_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_76_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_77_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_78_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_79_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_80_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_81_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_82_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_83_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_84_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_85_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_86_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_87_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_88_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_89_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_90_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_91_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_92_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_93_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_94_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_95_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_96_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_97_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_98_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_99_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_100_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_101_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_102_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_103_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_104_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_105_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_106_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_107_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_108_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_109_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_110_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_111_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_112_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_113_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_114_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_115_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_116_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_117_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_118_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_119_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_120_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_121_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_122_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_123_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_124_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_125_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_126_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_127_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_128_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_129_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_130_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_131_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_132_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_133_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_134_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_135_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_136_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_137_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_138_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_139_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_140_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_141_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_142_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_143_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_144_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_145_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_146_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_147_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_148_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_149_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_150_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_151_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_152_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_153_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_154_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_155_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_156_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_157_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_158_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_159_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_160_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_161_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_162_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_163_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_164_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_166_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_167_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_168_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_169_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_170_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_171_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_172_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_173_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_174_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_175_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_176_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_177_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_178_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_179_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_180_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_181_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_182_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_183_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_184_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_185_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_186_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_187_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_188_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_189_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_190_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_191_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_192_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_193_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_194_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_195_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_196_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_197_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_198_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_199_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_200_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_201_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_202_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_203_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_204_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_205_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_206_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_207_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_208_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_209_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_210_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_211_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_212_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_213_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_214_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_215_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_216_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_217_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_218_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_219_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_220_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_221_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_222_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_223_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_224_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_225_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_226_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_227_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_228_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_229_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_230_1431289891.89934" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_231_1431289891.89934" 
    push $P5001, $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_279_1431289891.89934") :load
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
    .const 'Sub' $P5001 = "cuid_232_1431289891.89934" 
    $P5002 = $P5001()
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_280_1431289891.89934") :main
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
    .param pmc ARGS :slurpy 
    .const 'Sub' $P5001 = "cuid_232_1431289891.89934" 
    $P5002 = $P5001(ARGS :flat)
    .return ($P5002) 
.end